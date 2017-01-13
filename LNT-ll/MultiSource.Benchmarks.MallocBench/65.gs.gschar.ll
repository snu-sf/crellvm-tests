; ModuleID = './MultiSource.Benchmarks.MallocBench/65.gs.gschar.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32, %struct.gs_matrix_s, i32, i8*, i8**, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32, i32, i8* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_bitmap_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gs_show_enum_s = type { %struct.gs_state_s*, i8*, i32, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gx_device_memory_s, %struct.device_s, i32, i32, %struct.gs_fixed_point_s, %struct.cached_char_s*, %struct.gs_point_s, i32, i32, i32 (%struct.gs_show_enum_s*)* }
%struct.device_s = type { %struct.gx_device_s*, i32, i64, i64 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.cached_char_s = type { %struct.cached_char_s*, i32, %struct.cached_fm_pair_s*, i16, i16, i16, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i8* }
%struct.cached_fm_pair_s = type { %struct.gs_font_s*, float, float, float, float, i32 }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_font_dir_s*, i8*, %struct.gs_matrix_s, i32, float, float, float, float, i32, i64, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i32, i8*)*, i8* }
%struct.gs_font_dir_s = type opaque
%struct.gs_point_s = type { float, float }
%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type { %struct.gs_memory_procs, %struct.gs_fixed_rect_s, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.subpath*, %struct.subpath*, i32, i32, i32, %struct.gs_fixed_point_s, i8, i8, i8 }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.subpath = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s, %struct.segment_s*, i32, i32, i8 }
%struct.line_params_s = type opaque
%struct.halftone_s = type opaque
%struct.gs_color_s = type { i16, i16, i16, i16, i8, i8 }
%struct.gx_device_color_s = type { i64, i64, i32, %struct.gx_bitmap_s* }

@gs_show_enum_sizeof = global i32 368, align 4
@mem_mono_device = external global %struct.gx_device_memory_s, align 8

; Function Attrs: nounwind uwtable
define i32 @gs_show_init(%struct.gs_show_enum_s* %penum, %struct.gs_state_s* %pgs, i8* %str) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %str.addr = alloca i8*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %conv = trunc i64 %call to i32
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %size = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 2
  store i32 %conv, i32* %size, align 4
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %slow_show = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %2, i32 0, i32 10
  store i32 0, i32* %slow_show, align 4
  %3 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %5 = load i8*, i8** %str.addr, align 8
  %call1 = call i32 @show_setup(%struct.gs_show_enum_s* %3, %struct.gs_state_s* %4, i8* %5)
  ret i32 %call1
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @show_setup(%struct.gs_show_enum_s* %penum, %struct.gs_state_s* %pgs, i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %str.addr = alloca i8*, align 8
  %code = alloca i32, align 4
  %cbox = alloca %struct.gs_fixed_rect_s, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %pgs1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 0
  store %struct.gs_state_s* %0, %struct.gs_state_s** %pgs1, align 8
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %str2 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %3, i32 0, i32 1
  store i8* %2, i8** %str2, align 8
  %4 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %chr = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %4, i32 0, i32 5
  store i32 256, i32* %chr, align 4
  %5 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %add = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %5, i32 0, i32 8
  store i32 0, i32* %add, align 4
  %6 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %do_kern = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %6, i32 0, i32 9
  store i32 0, i32* %do_kern, align 4
  %7 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %charpath_flag = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %7, i32 0, i32 11
  store i32 0, i32* %charpath_flag, align 4
  %8 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %dev_cache_set = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %8, i32 0, i32 19
  store i32 0, i32* %dev_cache_set, align 4
  %9 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %index = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %9, i32 0, i32 20
  store i32 0, i32* %index, align 4
  %10 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %continue_proc = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %10, i32 0, i32 26
  store i32 (%struct.gs_show_enum_s*)* @continue_show, i32 (%struct.gs_show_enum_s*)** %continue_proc, align 8
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %char_tm_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 18
  %12 = load i32, i32* %char_tm_valid, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.end.6, label %if.then

if.then:                                          ; preds = %entry
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %char_tm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 17
  call void @gs_make_identity(%struct.gs_matrix_s* %char_tm)
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 16
  %15 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8
  %matrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %15, i32 0, i32 5
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %16, i32 0, i32 2
  %17 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %char_tm3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 17
  %call = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %matrix, %struct.gs_matrix_s* %17, %struct.gs_matrix_s* %char_tm3)
  store i32 %call, i32* %code, align 4
  %19 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %19, 0
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %20 = load i32, i32* %code, align 4
  store i32 %20, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %char_tm_valid5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %21, i32 0, i32 18
  store i32 1, i32* %char_tm_valid5, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %char_tm7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 17
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %char_tm7, i32 0, i32 2
  %23 = bitcast float* %xy to i64*
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %char_tm8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %25, i32 0, i32 17
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %char_tm8, i32 0, i32 4
  %26 = bitcast float* %yx to i64*
  %27 = load i64, i64* %26, align 8
  %or = or i64 %24, %27
  %shl = shl i64 %or, 1
  %cmp9 = icmp eq i64 %shl, 0
  br i1 %cmp9, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.6
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %char_tm10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %28, i32 0, i32 17
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %char_tm10, i32 0, i32 0
  %29 = bitcast float* %xx to i64*
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %char_tm11 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %31, i32 0, i32 17
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %char_tm11, i32 0, i32 6
  %32 = bitcast float* %yy to i64*
  %33 = load i64, i64* %32, align 8
  %or12 = or i64 %30, %33
  %shl13 = shl i64 %or12, 1
  %cmp14 = icmp eq i64 %shl13, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.6
  %34 = phi i1 [ true, %if.end.6 ], [ %cmp14, %lor.rhs ]
  %lor.ext = zext i1 %34 to i32
  %35 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %can_cache = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %35, i32 0, i32 12
  store i32 %lor.ext, i32* %can_cache, align 4
  br i1 %34, label %if.then.15, label %if.end.29

if.then.15:                                       ; preds = %lor.end
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %36, i32 0, i32 8
  %37 = load %struct.gx_path_s*, %struct.gx_path_s** %clip_path, align 8
  %call16 = call i32 @gx_cpath_box_for_check(%struct.gx_path_s* %37, %struct.gs_fixed_rect_s* %cbox)
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %38 = load i64, i64* %x, align 8
  %add17 = add nsw i64 %38, 4095
  %shr = ashr i64 %add17, 12
  %conv = trunc i64 %shr to i32
  %39 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %cxmin = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %39, i32 0, i32 13
  store i32 %conv, i32* %cxmin, align 4
  %p18 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p18, i32 0, i32 1
  %40 = load i64, i64* %y, align 8
  %add19 = add nsw i64 %40, 4095
  %shr20 = ashr i64 %add19, 12
  %conv21 = trunc i64 %shr20 to i32
  %41 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %cymin = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %41, i32 0, i32 14
  store i32 %conv21, i32* %cymin, align 4
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %x22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %42 = load i64, i64* %x22, align 8
  %shr23 = ashr i64 %42, 12
  %conv24 = trunc i64 %shr23 to i32
  %43 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %cxmax = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %43, i32 0, i32 15
  store i32 %conv24, i32* %cxmax, align 4
  %q25 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 1
  %y26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q25, i32 0, i32 1
  %44 = load i64, i64* %y26, align 8
  %shr27 = ashr i64 %44, 12
  %conv28 = trunc i64 %shr27 to i32
  %45 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %cymax = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %45, i32 0, i32 16
  store i32 %conv28, i32* %cymax, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.15, %lor.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.4
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define i32 @gs_show_n_init(%struct.gs_show_enum_s* %penum, %struct.gs_state_s* %pgs, i8* %str, i32 %size) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %size1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 2
  store i32 %0, i32* %size1, align 4
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %slow_show = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %2, i32 0, i32 10
  store i32 0, i32* %slow_show, align 4
  %3 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %5 = load i8*, i8** %str.addr, align 8
  %call = call i32 @show_setup(%struct.gs_show_enum_s* %3, %struct.gs_state_s* %4, i8* %5)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_ashow_init(%struct.gs_show_enum_s* %penum, %struct.gs_state_s* %pgs, double %ax, double %ay, i8* %str) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ax.addr = alloca double, align 8
  %ay.addr = alloca double, align 8
  %str.addr = alloca i8*, align 8
  %code = alloca i32, align 4
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %ax, double* %ax.addr, align 8
  store double %ay, double* %ay.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %conv = trunc i64 %call to i32
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %size = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 2
  store i32 %conv, i32* %size, align 4
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %4 = load i8*, i8** %str.addr, align 8
  %call1 = call i32 @show_setup(%struct.gs_show_enum_s* %2, %struct.gs_state_s* %3, i8* %4)
  store i32 %call1, i32* %code, align 4
  %5 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %add = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %5, i32 0, i32 8
  store i32 1, i32* %add, align 4
  %6 = load double, double* %ax.addr, align 8
  %conv2 = fptrunc double %6 to float
  %7 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %ax3 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %7, i32 0, i32 6
  store float %conv2, float* %ax3, align 4
  %8 = load double, double* %ay.addr, align 8
  %conv4 = fptrunc double %8 to float
  %9 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %ay5 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %9, i32 0, i32 7
  store float %conv4, float* %ay5, align 4
  %10 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %slow_show = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %10, i32 0, i32 10
  store i32 1, i32* %slow_show, align 4
  %11 = load i32, i32* %code, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @gs_ashow_n_init(%struct.gs_show_enum_s* %penum, %struct.gs_state_s* %pgs, double %ax, double %ay, i8* %str, i32 %size) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ax.addr = alloca double, align 8
  %ay.addr = alloca double, align 8
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %ax, double* %ax.addr, align 8
  store double %ay, double* %ay.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %size1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 2
  store i32 %0, i32* %size1, align 4
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %4 = load i8*, i8** %str.addr, align 8
  %call = call i32 @show_setup(%struct.gs_show_enum_s* %2, %struct.gs_state_s* %3, i8* %4)
  store i32 %call, i32* %code, align 4
  %5 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %add = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %5, i32 0, i32 8
  store i32 1, i32* %add, align 4
  %6 = load double, double* %ax.addr, align 8
  %conv = fptrunc double %6 to float
  %7 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %ax2 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %7, i32 0, i32 6
  store float %conv, float* %ax2, align 4
  %8 = load double, double* %ay.addr, align 8
  %conv3 = fptrunc double %8 to float
  %9 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %ay4 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %9, i32 0, i32 7
  store float %conv3, float* %ay4, align 4
  %10 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %slow_show = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %10, i32 0, i32 10
  store i32 1, i32* %slow_show, align 4
  %11 = load i32, i32* %code, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @gs_widthshow_init(%struct.gs_show_enum_s* %penum, %struct.gs_state_s* %pgs, double %cx, double %cy, i8 signext %chr, i8* %str) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %cx.addr = alloca double, align 8
  %cy.addr = alloca double, align 8
  %chr.addr = alloca i8, align 1
  %str.addr = alloca i8*, align 8
  %code = alloca i32, align 4
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %cx, double* %cx.addr, align 8
  store double %cy, double* %cy.addr, align 8
  store i8 %chr, i8* %chr.addr, align 1
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %conv = trunc i64 %call to i32
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %size = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 2
  store i32 %conv, i32* %size, align 4
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %4 = load i8*, i8** %str.addr, align 8
  %call1 = call i32 @show_setup(%struct.gs_show_enum_s* %2, %struct.gs_state_s* %3, i8* %4)
  store i32 %call1, i32* %code, align 4
  %5 = load i8, i8* %chr.addr, align 1
  %conv2 = sext i8 %5 to i32
  %6 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %chr3 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %6, i32 0, i32 5
  store i32 %conv2, i32* %chr3, align 4
  %7 = load double, double* %cx.addr, align 8
  %conv4 = fptrunc double %7 to float
  %8 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %cx5 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %8, i32 0, i32 3
  store float %conv4, float* %cx5, align 4
  %9 = load double, double* %cy.addr, align 8
  %conv6 = fptrunc double %9 to float
  %10 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %cy7 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %10, i32 0, i32 4
  store float %conv6, float* %cy7, align 4
  %11 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %slow_show = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %11, i32 0, i32 10
  store i32 1, i32* %slow_show, align 4
  %12 = load i32, i32* %code, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @gs_widthshow_n_init(%struct.gs_show_enum_s* %penum, %struct.gs_state_s* %pgs, double %cx, double %cy, i8 signext %chr, i8* %str, i32 %size) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %cx.addr = alloca double, align 8
  %cy.addr = alloca double, align 8
  %chr.addr = alloca i8, align 1
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %cx, double* %cx.addr, align 8
  store double %cy, double* %cy.addr, align 8
  store i8 %chr, i8* %chr.addr, align 1
  store i8* %str, i8** %str.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %size1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 2
  store i32 %0, i32* %size1, align 4
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %4 = load i8*, i8** %str.addr, align 8
  %call = call i32 @show_setup(%struct.gs_show_enum_s* %2, %struct.gs_state_s* %3, i8* %4)
  store i32 %call, i32* %code, align 4
  %5 = load i8, i8* %chr.addr, align 1
  %conv = sext i8 %5 to i32
  %6 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %chr2 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %6, i32 0, i32 5
  store i32 %conv, i32* %chr2, align 4
  %7 = load double, double* %cx.addr, align 8
  %conv3 = fptrunc double %7 to float
  %8 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %cx4 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %8, i32 0, i32 3
  store float %conv3, float* %cx4, align 4
  %9 = load double, double* %cy.addr, align 8
  %conv5 = fptrunc double %9 to float
  %10 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %cy6 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %10, i32 0, i32 4
  store float %conv5, float* %cy6, align 4
  %11 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %slow_show = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %11, i32 0, i32 10
  store i32 1, i32* %slow_show, align 4
  %12 = load i32, i32* %code, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @gs_awidthshow_init(%struct.gs_show_enum_s* %penum, %struct.gs_state_s* %pgs, double %cx, double %cy, i8 signext %chr, double %ax, double %ay, i8* %str) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %cx.addr = alloca double, align 8
  %cy.addr = alloca double, align 8
  %chr.addr = alloca i8, align 1
  %ax.addr = alloca double, align 8
  %ay.addr = alloca double, align 8
  %str.addr = alloca i8*, align 8
  %code = alloca i32, align 4
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %cx, double* %cx.addr, align 8
  store double %cy, double* %cy.addr, align 8
  store i8 %chr, i8* %chr.addr, align 1
  store double %ax, double* %ax.addr, align 8
  store double %ay, double* %ay.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %conv = trunc i64 %call to i32
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %size = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 2
  store i32 %conv, i32* %size, align 4
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %4 = load i8*, i8** %str.addr, align 8
  %call1 = call i32 @show_setup(%struct.gs_show_enum_s* %2, %struct.gs_state_s* %3, i8* %4)
  store i32 %call1, i32* %code, align 4
  %5 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %add = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %5, i32 0, i32 8
  store i32 1, i32* %add, align 4
  %6 = load double, double* %ax.addr, align 8
  %conv2 = fptrunc double %6 to float
  %7 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %ax3 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %7, i32 0, i32 6
  store float %conv2, float* %ax3, align 4
  %8 = load double, double* %ay.addr, align 8
  %conv4 = fptrunc double %8 to float
  %9 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %ay5 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %9, i32 0, i32 7
  store float %conv4, float* %ay5, align 4
  %10 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %slow_show = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %10, i32 0, i32 10
  store i32 1, i32* %slow_show, align 4
  %11 = load i8, i8* %chr.addr, align 1
  %conv6 = sext i8 %11 to i32
  %12 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %chr7 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %12, i32 0, i32 5
  store i32 %conv6, i32* %chr7, align 4
  %13 = load double, double* %cx.addr, align 8
  %conv8 = fptrunc double %13 to float
  %14 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %cx9 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %14, i32 0, i32 3
  store float %conv8, float* %cx9, align 4
  %15 = load double, double* %cy.addr, align 8
  %conv10 = fptrunc double %15 to float
  %16 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %cy11 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %16, i32 0, i32 4
  store float %conv10, float* %cy11, align 4
  %17 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %slow_show12 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %17, i32 0, i32 10
  store i32 1, i32* %slow_show12, align 4
  %18 = load i32, i32* %code, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @gs_awidthshow_n_init(%struct.gs_show_enum_s* %penum, %struct.gs_state_s* %pgs, double %cx, double %cy, i8 signext %chr, double %ax, double %ay, i8* %str, i32 %size) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %cx.addr = alloca double, align 8
  %cy.addr = alloca double, align 8
  %chr.addr = alloca i8, align 1
  %ax.addr = alloca double, align 8
  %ay.addr = alloca double, align 8
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store double %cx, double* %cx.addr, align 8
  store double %cy, double* %cy.addr, align 8
  store i8 %chr, i8* %chr.addr, align 1
  store double %ax, double* %ax.addr, align 8
  store double %ay, double* %ay.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %size1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 2
  store i32 %0, i32* %size1, align 4
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %4 = load i8*, i8** %str.addr, align 8
  %call = call i32 @show_setup(%struct.gs_show_enum_s* %2, %struct.gs_state_s* %3, i8* %4)
  store i32 %call, i32* %code, align 4
  %5 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %add = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %5, i32 0, i32 8
  store i32 1, i32* %add, align 4
  %6 = load double, double* %ax.addr, align 8
  %conv = fptrunc double %6 to float
  %7 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %ax2 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %7, i32 0, i32 6
  store float %conv, float* %ax2, align 4
  %8 = load double, double* %ay.addr, align 8
  %conv3 = fptrunc double %8 to float
  %9 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %ay4 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %9, i32 0, i32 7
  store float %conv3, float* %ay4, align 4
  %10 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %slow_show = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %10, i32 0, i32 10
  store i32 1, i32* %slow_show, align 4
  %11 = load i8, i8* %chr.addr, align 1
  %conv5 = sext i8 %11 to i32
  %12 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %chr6 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %12, i32 0, i32 5
  store i32 %conv5, i32* %chr6, align 4
  %13 = load double, double* %cx.addr, align 8
  %conv7 = fptrunc double %13 to float
  %14 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %cx8 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %14, i32 0, i32 3
  store float %conv7, float* %cx8, align 4
  %15 = load double, double* %cy.addr, align 8
  %conv9 = fptrunc double %15 to float
  %16 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %cy10 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %16, i32 0, i32 4
  store float %conv9, float* %cy10, align 4
  %17 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %slow_show11 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %17, i32 0, i32 10
  store i32 1, i32* %slow_show11, align 4
  %18 = load i32, i32* %code, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @gs_kshow_init(%struct.gs_show_enum_s* %penum, %struct.gs_state_s* %pgs, i8* %str) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %str.addr = alloca i8*, align 8
  %code = alloca i32, align 4
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %conv = trunc i64 %call to i32
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %size = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 2
  store i32 %conv, i32* %size, align 4
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %4 = load i8*, i8** %str.addr, align 8
  %call1 = call i32 @show_setup(%struct.gs_show_enum_s* %2, %struct.gs_state_s* %3, i8* %4)
  store i32 %call1, i32* %code, align 4
  %5 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %slow_show = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %5, i32 0, i32 10
  store i32 1, i32* %slow_show, align 4
  %6 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %do_kern = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %6, i32 0, i32 9
  store i32 1, i32* %do_kern, align 4
  %7 = load i32, i32* %code, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gs_kshow_n_init(%struct.gs_show_enum_s* %penum, %struct.gs_state_s* %pgs, i8* %str, i32 %size) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %size1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 2
  store i32 %0, i32* %size1, align 4
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %4 = load i8*, i8** %str.addr, align 8
  %call = call i32 @show_setup(%struct.gs_show_enum_s* %2, %struct.gs_state_s* %3, i8* %4)
  store i32 %call, i32* %code, align 4
  %5 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %slow_show = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %5, i32 0, i32 10
  store i32 1, i32* %slow_show, align 4
  %6 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %do_kern = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %6, i32 0, i32 9
  store i32 1, i32* %do_kern, align 4
  %7 = load i32, i32* %code, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gs_stringwidth_init(%struct.gs_show_enum_s* %penum, %struct.gs_state_s* %pgs, i8* %str) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %str.addr = alloca i8*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %conv = trunc i64 %call to i32
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %size = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 2
  store i32 %conv, i32* %size, align 4
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %4 = load i8*, i8** %str.addr, align 8
  %call1 = call i32 @stringwidth_setup(%struct.gs_show_enum_s* %2, %struct.gs_state_s* %3, i8* %4)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @stringwidth_setup(%struct.gs_show_enum_s* %penum, %struct.gs_state_s* %pgs, i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %str.addr = alloca i8*, align 8
  %code = alloca i32, align 4
  %pt = alloca %struct.gs_fixed_point_s, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %2 = load i8*, i8** %str.addr, align 8
  %call = call i32 @show_setup(%struct.gs_show_enum_s* %0, %struct.gs_state_s* %1, i8* %2)
  store i32 %call, i32* %code, align 4
  %3 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4
  store i32 %4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %continue_proc = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %5, i32 0, i32 26
  store i32 (%struct.gs_show_enum_s*)* @continue_stringwidth, i32 (%struct.gs_show_enum_s*)** %continue_proc, align 8
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call1 = call i32 @gs_gsave(%struct.gs_state_s* %6)
  store i32 %call1, i32* %code, align 4
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %7 = load i32, i32* %code, align 4
  store i32 %7, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call5 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_device_no_output to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* %8)
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 7
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %call6 = call i32 @gx_path_current_point(%struct.gx_path_s* %10, %struct.gs_fixed_point_s* %pt)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end.4
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %path9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 7
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %path9, align 8
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 2
  %tx_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 12
  %14 = load i64, i64* %tx_fixed, align 8
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ctm10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 2
  %ty_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm10, i32 0, i32 13
  %16 = load i64, i64* %ty_fixed, align 8
  %call11 = call i32 @gx_path_add_point(%struct.gx_path_s* %12, i64 %14, i64 %16)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end.4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.3, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @gs_stringwidth_n_init(%struct.gs_show_enum_s* %penum, %struct.gs_state_s* %pgs, i8* %str, i32 %size) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %size1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 2
  store i32 %0, i32* %size1, align 4
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %4 = load i8*, i8** %str.addr, align 8
  %call = call i32 @stringwidth_setup(%struct.gs_show_enum_s* %2, %struct.gs_state_s* %3, i8* %4)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @continue_stringwidth(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %call = call i32 @stringwidth_proceed(%struct.gs_show_enum_s* %0)
  ret i32 %call
}

declare i32 @gs_gsave(%struct.gs_state_s*) #2

declare i32 @gx_device_no_output(...) #2

declare i32 @gx_path_current_point(%struct.gx_path_s*, %struct.gs_fixed_point_s*) #2

declare i32 @gx_path_add_point(%struct.gx_path_s*, i64, i64) #2

; Function Attrs: nounwind uwtable
define i32 @gs_charpath_init(%struct.gs_show_enum_s* %penum, %struct.gs_state_s* %pgs, i8* %str, i32 %bool) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %str.addr = alloca i8*, align 8
  %bool.addr = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %bool, i32* %bool.addr, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %conv = trunc i64 %call to i32
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %size = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 2
  store i32 %conv, i32* %size, align 4
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %4 = load i8*, i8** %str.addr, align 8
  %call1 = call i32 @show_setup(%struct.gs_show_enum_s* %2, %struct.gs_state_s* %3, i8* %4)
  store i32 %call1, i32* %code, align 4
  %5 = load i32, i32* %bool.addr, align 4
  %tobool = icmp ne i32 %5, 0
  %cond = select i1 %tobool, i32 2, i32 1
  %6 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %charpath_flag = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %6, i32 0, i32 11
  store i32 %cond, i32* %charpath_flag, align 4
  %7 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %can_cache = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %7, i32 0, i32 12
  store i32 0, i32* %can_cache, align 4
  %8 = load i32, i32* %code, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @gs_charpath_n_init(%struct.gs_show_enum_s* %penum, %struct.gs_state_s* %pgs, i8* %str, i32 %size, i32 %bool) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %bool.addr = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %bool, i32* %bool.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %size1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 2
  store i32 %0, i32* %size1, align 4
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %4 = load i8*, i8** %str.addr, align 8
  %call = call i32 @show_setup(%struct.gs_show_enum_s* %2, %struct.gs_state_s* %3, i8* %4)
  store i32 %call, i32* %code, align 4
  %5 = load i32, i32* %bool.addr, align 4
  %tobool = icmp ne i32 %5, 0
  %cond = select i1 %tobool, i32 2, i32 1
  %6 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %charpath_flag = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %6, i32 0, i32 11
  store i32 %cond, i32* %charpath_flag, align 4
  %7 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %can_cache = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %7, i32 0, i32 12
  store i32 0, i32* %can_cache, align 4
  %8 = load i32, i32* %code, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @gs_setcachedevice(%struct.gs_show_enum_s* %penum, double %wx, double %wy, double %llx, double %lly, double %urx, double %ury) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %wx.addr = alloca double, align 8
  %wy.addr = alloca double, align 8
  %llx.addr = alloca double, align 8
  %lly.addr = alloca double, align 8
  %urx.addr = alloca double, align 8
  %ury.addr = alloca double, align 8
  %code = alloca i32, align 4
  %pgs = alloca %struct.gs_state_s*, align 8
  %dir = alloca %struct.gs_font_dir_s*, align 8
  %cbox_ll = alloca %struct.gs_fixed_point_s, align 8
  %cbox_ur = alloca %struct.gs_fixed_point_s, align 8
  %cdim = alloca %struct.gs_fixed_point_s, align 8
  %iwidth = alloca i64, align 8
  %iheight = alloca i64, align 8
  %cc = alloca %struct.cached_char_s*, align 8
  %dev = alloca %struct.device_s*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  store double %wx, double* %wx.addr, align 8
  store double %wy, double* %wy.addr, align 8
  store double %llx, double* %llx.addr, align 8
  store double %lly, double* %lly.addr, align 8
  store double %urx, double* %urx.addr, align 8
  store double %ury, double* %ury.addr, align 8
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %1 = load double, double* %wx.addr, align 8
  %2 = load double, double* %wy.addr, align 8
  %call = call i32 @gs_setcharwidth(%struct.gs_show_enum_s* %0, double %1, double %2)
  store i32 %call, i32* %code, align 4
  %3 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %pgs1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %3, i32 0, i32 0
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8
  store %struct.gs_state_s* %4, %struct.gs_state_s** %pgs, align 8
  %5 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4
  store i32 %6, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %in_cachedevice = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 19
  %8 = load i8, i8* %in_cachedevice, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %in_cachedevice4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 19
  store i8 1, i8* %in_cachedevice4, align 1
  %10 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %can_cache = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %10, i32 0, i32 12
  %11 = load i32, i32* %can_cache, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %lor.lhs.false, label %if.then.11

lor.lhs.false:                                    ; preds = %if.end.3
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %char_tm_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %12, i32 0, i32 18
  %13 = load i32, i32* %char_tm_valid, align 4
  %tobool6 = icmp ne i32 %13, 0
  br i1 %tobool6, label %lor.lhs.false.7, label %if.then.11

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %14 = load double, double* %llx.addr, align 8
  %15 = load double, double* %urx.addr, align 8
  %cmp8 = fcmp ogt double %14, %15
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.7
  %16 = load double, double* %lly.addr, align 8
  %17 = load double, double* %ury.addr, align 8
  %cmp10 = fcmp ogt double %16, %17
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false.9, %lor.lhs.false.7, %lor.lhs.false, %if.end.3
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %lor.lhs.false.9
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %18, i32 0, i32 16
  %19 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8
  %dir13 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %19, i32 0, i32 3
  %20 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir13, align 8
  store %struct.gs_font_dir_s* %20, %struct.gs_font_dir_s** %dir, align 8
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %21, i32 0, i32 2
  %22 = load double, double* %llx.addr, align 8
  %23 = load double, double* %lly.addr, align 8
  %call14 = call i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* %ctm, double %22, double %23, %struct.gs_fixed_point_s* %cbox_ll)
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %ctm15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 2
  %25 = load double, double* %urx.addr, align 8
  %26 = load double, double* %ury.addr, align 8
  %call16 = call i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* %ctm15, double %25, double %26, %struct.gs_fixed_point_s* %cbox_ur)
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cbox_ur, i32 0, i32 0
  %27 = load i64, i64* %x, align 8
  %x17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cbox_ll, i32 0, i32 0
  %28 = load i64, i64* %x17, align 8
  %sub = sub nsw i64 %27, %28
  %x18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdim, i32 0, i32 0
  store i64 %sub, i64* %x18, align 8
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cbox_ur, i32 0, i32 1
  %29 = load i64, i64* %y, align 8
  %y19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cbox_ll, i32 0, i32 1
  %30 = load i64, i64* %y19, align 8
  %sub20 = sub nsw i64 %29, %30
  %y21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdim, i32 0, i32 1
  store i64 %sub20, i64* %y21, align 8
  %x22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdim, i32 0, i32 0
  %31 = load i64, i64* %x22, align 8
  %cmp23 = icmp slt i64 %31, 0
  br i1 %cmp23, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %if.end.12
  %x25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdim, i32 0, i32 0
  %32 = load i64, i64* %x25, align 8
  %sub26 = sub nsw i64 0, %32
  %x27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdim, i32 0, i32 0
  store i64 %sub26, i64* %x27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.24, %if.end.12
  %y29 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdim, i32 0, i32 1
  %33 = load i64, i64* %y29, align 8
  %cmp30 = icmp slt i64 %33, 0
  br i1 %cmp30, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %if.end.28
  %y32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdim, i32 0, i32 1
  %34 = load i64, i64* %y32, align 8
  %sub33 = sub nsw i64 0, %34
  %y34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdim, i32 0, i32 1
  store i64 %sub33, i64* %y34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.31, %if.end.28
  %x36 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdim, i32 0, i32 0
  %35 = load i64, i64* %x36, align 8
  %shr = ashr i64 %35, 12
  %add = add nsw i64 %shr, 2
  store i64 %add, i64* %iwidth, align 8
  %y37 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cdim, i32 0, i32 1
  %36 = load i64, i64* %y37, align 8
  %shr38 = ashr i64 %36, 12
  %add39 = add nsw i64 %shr38, 2
  store i64 %add39, i64* %iheight, align 8
  %37 = load i64, i64* %iwidth, align 8
  %38 = load i64, i64* %iwidth, align 8
  %conv = trunc i64 %38 to i16
  %conv40 = zext i16 %conv to i64
  %cmp41 = icmp ne i64 %37, %conv40
  br i1 %cmp41, label %if.then.48, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %if.end.35
  %39 = load i64, i64* %iheight, align 8
  %40 = load i64, i64* %iheight, align 8
  %conv44 = trunc i64 %40 to i16
  %conv45 = zext i16 %conv44 to i64
  %cmp46 = icmp ne i64 %39, %conv45
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %lor.lhs.false.43, %if.end.35
  store i32 0, i32* %retval
  br label %return

if.end.49:                                        ; preds = %lor.lhs.false.43
  %41 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %dev_cache_set = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %41, i32 0, i32 19
  %42 = load i32, i32* %dev_cache_set, align 4
  %tobool50 = icmp ne i32 %42, 0
  br i1 %tobool50, label %if.end.54, label %if.then.51

if.then.51:                                       ; preds = %if.end.49
  %43 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %dev_cache_dev = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %43, i32 0, i32 18
  store %struct.device_s* %dev_cache_dev, %struct.device_s** %dev, align 8
  %44 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %dev_cache_info = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %44, i32 0, i32 17
  %45 = bitcast %struct.gx_device_memory_s* %dev_cache_info to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* bitcast (%struct.gx_device_memory_s* @mem_mono_device to i8*), i64 200, i32 8, i1 false)
  %46 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %dev_cache_info52 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %46, i32 0, i32 17
  %47 = bitcast %struct.gx_device_memory_s* %dev_cache_info52 to %struct.gx_device_s*
  %48 = load %struct.device_s*, %struct.device_s** %dev, align 8
  %info = getelementptr inbounds %struct.device_s, %struct.device_s* %48, i32 0, i32 0
  store %struct.gx_device_s* %47, %struct.gx_device_s** %info, align 8
  %49 = load %struct.device_s*, %struct.device_s** %dev, align 8
  %is_band_device = getelementptr inbounds %struct.device_s, %struct.device_s* %49, i32 0, i32 1
  store i32 0, i32* %is_band_device, align 4
  %50 = load %struct.device_s*, %struct.device_s** %dev, align 8
  %white = getelementptr inbounds %struct.device_s, %struct.device_s* %50, i32 0, i32 2
  store i64 1, i64* %white, align 8
  %51 = load %struct.device_s*, %struct.device_s** %dev, align 8
  %black = getelementptr inbounds %struct.device_s, %struct.device_s* %51, i32 0, i32 3
  store i64 1, i64* %black, align 8
  %52 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %dev_cache_set53 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %52, i32 0, i32 19
  store i32 1, i32* %dev_cache_set53, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.51, %if.end.49
  %53 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8
  %54 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %dev_cache_info55 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %54, i32 0, i32 17
  %55 = load i64, i64* %iwidth, align 8
  %conv56 = trunc i64 %55 to i16
  %56 = load i64, i64* %iheight, align 8
  %conv57 = trunc i64 %56 to i16
  %call58 = call %struct.cached_char_s* @gx_alloc_char_bits(%struct.gs_font_dir_s* %53, %struct.gx_device_memory_s* %dev_cache_info55, i16 zeroext %conv56, i16 zeroext %conv57)
  store %struct.cached_char_s* %call58, %struct.cached_char_s** %cc, align 8
  %cmp59 = icmp eq %struct.cached_char_s* %call58, null
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.54
  store i32 0, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.end.54
  %x63 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cbox_ll, i32 0, i32 0
  %57 = load i64, i64* %x63, align 8
  %x64 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cbox_ur, i32 0, i32 0
  %58 = load i64, i64* %x64, align 8
  %cmp65 = icmp slt i64 %57, %58
  br i1 %cmp65, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.62
  %x67 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cbox_ll, i32 0, i32 0
  %59 = load i64, i64* %x67, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.62
  %x68 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cbox_ur, i32 0, i32 0
  %60 = load i64, i64* %x68, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %59, %cond.true ], [ %60, %cond.false ]
  %sub69 = sub nsw i64 0, %cond
  %add70 = add nsw i64 %sub69, 2048
  %and = and i64 %add70, -4096
  %61 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  %offset = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %61, i32 0, i32 7
  %x71 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %offset, i32 0, i32 0
  store i64 %and, i64* %x71, align 8
  %y72 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cbox_ll, i32 0, i32 1
  %62 = load i64, i64* %y72, align 8
  %y73 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cbox_ur, i32 0, i32 1
  %63 = load i64, i64* %y73, align 8
  %cmp74 = icmp slt i64 %62, %63
  br i1 %cmp74, label %cond.true.76, label %cond.false.78

cond.true.76:                                     ; preds = %cond.end
  %y77 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cbox_ll, i32 0, i32 1
  %64 = load i64, i64* %y77, align 8
  br label %cond.end.80

cond.false.78:                                    ; preds = %cond.end
  %y79 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cbox_ur, i32 0, i32 1
  %65 = load i64, i64* %y79, align 8
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.78, %cond.true.76
  %cond81 = phi i64 [ %64, %cond.true.76 ], [ %65, %cond.false.78 ]
  %sub82 = sub nsw i64 0, %cond81
  %add83 = add nsw i64 %sub82, 2048
  %and84 = and i64 %add83, -4096
  %66 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  %offset85 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %66, i32 0, i32 7
  %y86 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %offset85, i32 0, i32 1
  store i64 %and84, i64* %y86, align 8
  %67 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %67, i32 0, i32 13
  %68 = load %struct.gs_color_s*, %struct.gs_color_s** %color, align 8
  %69 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %dev_color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %69, i32 0, i32 14
  %70 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8
  %71 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call87 = call i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_color_render to i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...)*)(%struct.gs_color_s* %68, %struct.gx_device_color_s* %70, %struct.gs_state_s* %71)
  %72 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %dev_color88 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %72, i32 0, i32 14
  %73 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color88, align 8
  %halftone_level = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %73, i32 0, i32 2
  %74 = load i32, i32* %halftone_level, align 4
  %cmp89 = icmp eq i32 %74, 0
  br i1 %cmp89, label %if.end.92, label %if.then.91

if.then.91:                                       ; preds = %cond.end.80
  %75 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8
  %76 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  call void @gx_unalloc_cached_char(%struct.gs_font_dir_s* %75, %struct.cached_char_s* %76)
  %77 = load i32, i32* %code, align 4
  store i32 %77, i32* %retval
  br label %return

if.end.92:                                        ; preds = %cond.end.80
  %78 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call93 = call i32 @gs_gsave(%struct.gs_state_s* %78)
  store i32 %call93, i32* %code, align 4
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.92
  %79 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8
  %80 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  call void @gx_unalloc_cached_char(%struct.gs_font_dir_s* %79, %struct.cached_char_s* %80)
  %81 = load i32, i32* %code, align 4
  store i32 %81, i32* %retval
  br label %return

if.end.97:                                        ; preds = %if.end.92
  %82 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  %83 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %cc98 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %83, i32 0, i32 22
  store %struct.cached_char_s* %82, %struct.cached_char_s** %cc98, align 8
  %84 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %call99 = call zeroext i8 @gs_show_current_char(%struct.gs_show_enum_s* %84)
  %conv100 = zext i8 %call99 to i32
  %85 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  %code101 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %85, i32 0, i32 1
  store i32 %conv100, i32* %code101, align 4
  %86 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  %wxy = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %86, i32 0, i32 6
  %87 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %wxy102 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %87, i32 0, i32 21
  %88 = bitcast %struct.gs_fixed_point_s* %wxy to i8*
  %89 = bitcast %struct.gs_fixed_point_s* %wxy102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %89, i64 16, i32 8, i1 false)
  %90 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %dev_cache_dev103 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %90, i32 0, i32 18
  %91 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %91, i32 0, i32 22
  store %struct.device_s* %dev_cache_dev103, %struct.device_s** %device, align 8
  %92 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %device_is_shared = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %92, i32 0, i32 23
  store i32 1, i32* %device_is_shared, align 4
  %93 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %94 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  %offset104 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %94, i32 0, i32 7
  %x105 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %offset104, i32 0, i32 0
  %95 = load i64, i64* %x105, align 8
  %96 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  %offset106 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %96, i32 0, i32 7
  %y107 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %offset106, i32 0, i32 1
  %97 = load i64, i64* %y107, align 8
  %call108 = call i32 (%struct.gs_state_s*, i64, i64, ...) bitcast (i32 (...)* @gs_translate_to_fixed to i32 (%struct.gs_state_s*, i64, i64, ...)*)(%struct.gs_state_s* %93, i64 %95, i64 %97)
  %98 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %99 = load i64, i64* %iwidth, align 8
  %shl = shl i64 %99, 12
  %100 = load i64, i64* %iheight, align 8
  %shl109 = shl i64 %100, 12
  %call110 = call i32 (%struct.gs_state_s*, i64, i64, i64, i64, ...) bitcast (i32 (...)* @gx_clip_to_rectangle to i32 (%struct.gs_state_s*, i64, i64, i64, i64, ...)*)(%struct.gs_state_s* %98, i64 0, i64 0, i64 %shl, i64 %shl109)
  store i32 %call110, i32* %code, align 4
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %if.end.97
  %101 = load i32, i32* %code, align 4
  store i32 %101, i32* %retval
  br label %return

if.end.114:                                       ; preds = %if.end.97
  %102 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %in_cachedevice115 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %102, i32 0, i32 19
  store i8 0, i8* %in_cachedevice115, align 1
  %103 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call116 = call i32 @gs_setgray(%struct.gs_state_s* %103, double 0.000000e+00)
  %104 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %in_cachedevice117 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %104, i32 0, i32 19
  store i8 1, i8* %in_cachedevice117, align 1
  %105 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %width_set = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %105, i32 0, i32 24
  store i32 1, i32* %width_set, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.114, %if.then.113, %if.then.96, %if.then.91, %if.then.61, %if.then.48, %if.then.11, %if.then.2, %if.then
  %106 = load i32, i32* %retval
  ret i32 %106
}

; Function Attrs: nounwind uwtable
define i32 @gs_setcharwidth(%struct.gs_show_enum_s* %penum, double %wx, double %wy) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %wx.addr = alloca double, align 8
  %wy.addr = alloca double, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  store double %wx, double* %wx.addr, align 8
  store double %wy, double* %wy.addr, align 8
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %width_set = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i32 0, i32 24
  %1 = load i32, i32* %width_set, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -21, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %pgs = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %2, i32 0, i32 0
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 2
  %4 = load double, double* %wx.addr, align 8
  %5 = load double, double* %wy.addr, align 8
  %6 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %wxy = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %6, i32 0, i32 21
  %call = call i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* %ctm, double %4, double %5, %struct.gs_fixed_point_s* %wxy)
  %7 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %width_set1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %7, i32 0, i32 24
  store i32 2, i32* %width_set1, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s*, double, double, %struct.gs_fixed_point_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare %struct.cached_char_s* @gx_alloc_char_bits(%struct.gs_font_dir_s*, %struct.gx_device_memory_s*, i16 zeroext, i16 zeroext) #2

declare i32 @gx_color_render(...) #2

declare void @gx_unalloc_cached_char(%struct.gs_font_dir_s*, %struct.cached_char_s*) #2

; Function Attrs: nounwind uwtable
define zeroext i8 @gs_show_current_char(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %index = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i32 0, i32 20
  %1 = load i32, i32* %index, align 4
  %sub = sub i32 %1, 1
  %idxprom = zext i32 %sub to i64
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %str = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %2, i32 0, i32 1
  %3 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  ret i8 %4
}

declare i32 @gs_translate_to_fixed(...) #2

declare i32 @gx_clip_to_rectangle(...) #2

declare i32 @gs_setgray(%struct.gs_state_s*, double) #2

; Function Attrs: nounwind uwtable
define i32 @gs_show_next(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %continue_proc = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i32 0, i32 26
  %1 = load i32 (%struct.gs_show_enum_s*)*, i32 (%struct.gs_show_enum_s*)** %continue_proc, align 8
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %call = call i32 %1(%struct.gs_show_enum_s* %2)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @continue_show_update(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %call = call i32 @show_update(%struct.gs_show_enum_s* %0)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %call1 = call i32 @show_move(%struct.gs_show_enum_s* %3)
  store i32 %call1, i32* %code, align 4
  %4 = load i32, i32* %code, align 4
  %cmp2 = icmp ne i32 %4, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %5 = load i32, i32* %code, align 4
  store i32 %5, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %call5 = call i32 @show_proceed(%struct.gs_show_enum_s* %6)
  store i32 %call5, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @show_update(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %cc = alloca %struct.cached_char_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %pgs1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8
  store %struct.gs_state_s* %1, %struct.gs_state_s** %pgs, align 8
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %width_set = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %2, i32 0, i32 24
  %3 = load i32, i32* %width_set, align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  store i32 -23, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %cc3 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %4, i32 0, i32 22
  %5 = load %struct.cached_char_s*, %struct.cached_char_s** %cc3, align 8
  store %struct.cached_char_s* %5, %struct.cached_char_s** %cc, align 8
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 16
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8
  %dir = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %7, i32 0, i32 3
  %8 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8
  %9 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call = call %struct.cached_fm_pair_s* @gx_lookup_fm_pair(%struct.gs_state_s* %10)
  call void @gx_add_cached_char(%struct.gs_font_dir_s* %8, %struct.cached_char_s* %9, %struct.cached_fm_pair_s* %call)
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call4 = call i32 @gs_grestore(%struct.gs_state_s* %11)
  %12 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %color_loaded = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %12, i32 0, i32 25
  store i32 0, i32* %color_loaded, align 4
  %13 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %14 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  %call5 = call i32 @gx_copy_cached_char(%struct.gs_show_enum_s* %13, %struct.cached_char_s* %14)
  store i32 %call5, i32* %code, align 4
  %15 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %15, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  %16 = load i32, i32* %code, align 4
  store i32 %16, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.2
  br label %sw.bb.6

sw.bb.6:                                          ; preds = %entry, %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.6, %entry
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call7 = call i32 @gs_grestore(%struct.gs_state_s* %17)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then, %sw.bb
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @show_move(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %pgs1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8
  store %struct.gs_state_s* %1, %struct.gs_state_s** %pgs, align 8
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %add = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %2, i32 0, i32 8
  %3 = load i32, i32* %add, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %5 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %ax = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %5, i32 0, i32 6
  %6 = load float, float* %ax, align 4
  %conv = fpext float %6 to double
  %7 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %ay = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %7, i32 0, i32 7
  %8 = load float, float* %ay, align 4
  %conv2 = fpext float %8 to double
  %call = call i32 (%struct.gs_state_s*, double, double, ...) bitcast (i32 (...)* @gs_rmoveto to i32 (%struct.gs_state_s*, double, double, ...)*)(%struct.gs_state_s* %4, double %conv, double %conv2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %index = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %9, i32 0, i32 20
  %10 = load i32, i32* %index, align 4
  %sub = sub i32 %10, 1
  %idxprom = zext i32 %sub to i64
  %11 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %str = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %11, i32 0, i32 1
  %12 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1
  %conv3 = zext i8 %13 to i32
  %14 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %chr = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %14, i32 0, i32 5
  %15 = load i32, i32* %chr, align 4
  %cmp = icmp eq i32 %conv3, %15
  br i1 %cmp, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %17 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %cx = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %17, i32 0, i32 3
  %18 = load float, float* %cx, align 4
  %conv6 = fpext float %18 to double
  %19 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %cy = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %19, i32 0, i32 4
  %20 = load float, float* %cy, align 4
  %conv7 = fpext float %20 to double
  %call8 = call i32 (%struct.gs_state_s*, double, double, ...) bitcast (i32 (...)* @gs_rmoveto to i32 (%struct.gs_state_s*, double, double, ...)*)(%struct.gs_state_s* %16, double %conv6, double %conv7)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.5, %if.end
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %21, i32 0, i32 7
  %22 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %position_valid = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %22, i32 0, i32 10
  %23 = load i8, i8* %position_valid, align 1
  %tobool10 = icmp ne i8 %23, 0
  br i1 %tobool10, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.9
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  %24 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %wxy = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %24, i32 0, i32 21
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %wxy, i32 0, i32 0
  %25 = load i64, i64* %x, align 8
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %path11 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %26, i32 0, i32 7
  %27 = load %struct.gx_path_s*, %struct.gx_path_s** %path11, align 8
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %27, i32 0, i32 9
  %x12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  %28 = load i64, i64* %x12, align 8
  %add13 = add nsw i64 %28, %25
  store i64 %add13, i64* %x12, align 8
  %29 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %wxy14 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %29, i32 0, i32 21
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %wxy14, i32 0, i32 1
  %30 = load i64, i64* %y, align 8
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %path15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %31, i32 0, i32 7
  %32 = load %struct.gx_path_s*, %struct.gx_path_s** %path15, align 8
  %position16 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %32, i32 0, i32 9
  %y17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position16, i32 0, i32 1
  %33 = load i64, i64* %y17, align 8
  %add18 = add nsw i64 %33, %30
  store i64 %add18, i64* %y17, align 8
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %path19 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %34, i32 0, i32 7
  %35 = load %struct.gx_path_s*, %struct.gx_path_s** %path19, align 8
  %subpath_open = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %35, i32 0, i32 11
  store i8 0, i8* %subpath_open, align 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -14, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %code, align 4
  %36 = load i32, i32* %code, align 4
  %cmp20 = icmp slt i32 %36, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %cond.end
  %37 = load i32, i32* %code, align 4
  store i32 %37, i32* %retval
  br label %return

if.end.23:                                        ; preds = %cond.end
  %38 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %do_kern = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %38, i32 0, i32 9
  %39 = load i32, i32* %do_kern, align 4
  %tobool24 = icmp ne i32 %39, 0
  br i1 %tobool24, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %if.end.23
  %40 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %index25 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %40, i32 0, i32 20
  %41 = load i32, i32* %index25, align 4
  %42 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %size = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %42, i32 0, i32 2
  %43 = load i32, i32* %size, align 4
  %cmp26 = icmp ult i32 %41, %43
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true
  %44 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %continue_proc = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %44, i32 0, i32 26
  store i32 (%struct.gs_show_enum_s*)* @continue_show, i32 (%struct.gs_show_enum_s*)** %continue_proc, align 8
  store i32 2, i32* %retval
  br label %return

if.end.29:                                        ; preds = %land.lhs.true, %if.end.23
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.28, %if.then.22
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define i32 @show_proceed(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %str = alloca i8*, align 8
  %index = alloca i32, align 4
  %pair = alloca %struct.cached_fm_pair_s*, align 8
  %chr = alloca i8, align 1
  %code = alloca i32, align 4
  %cc = alloca %struct.cached_char_s*, align 8
  %cpt = alloca %struct.gs_fixed_point_s, align 8
  %ppath = alloca %struct.gx_path_s*, align 8
  %font = alloca %struct.gs_font_s*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %pgs1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8
  store %struct.gs_state_s* %1, %struct.gs_state_s** %pgs, align 8
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %str2 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %2, i32 0, i32 1
  %3 = load i8*, i8** %str2, align 8
  store i8* %3, i8** %str, align 8
  store %struct.cached_fm_pair_s* null, %struct.cached_fm_pair_s** %pair, align 8
  %4 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %color_loaded = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %4, i32 0, i32 25
  store i32 0, i32* %color_loaded, align 4
  br label %more

more:                                             ; preds = %if.end.125, %entry
  %5 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %can_cache = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %5, i32 0, i32 12
  %6 = load i32, i32* %can_cache, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else.39

if.then:                                          ; preds = %more
  %7 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8
  %cmp = icmp eq %struct.cached_fm_pair_s* %7, null
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call = call %struct.cached_fm_pair_s* @gx_lookup_fm_pair(%struct.gs_state_s* %8)
  store %struct.cached_fm_pair_s* %call, %struct.cached_fm_pair_s** %pair, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end.38, %if.end
  %9 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %index4 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %9, i32 0, i32 20
  %10 = load i32, i32* %index4, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %index4, align 4
  store i32 %10, i32* %index, align 4
  %11 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %size = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %11, i32 0, i32 2
  %12 = load i32, i32* %size, align 4
  %cmp5 = icmp ne i32 %10, %12
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i32, i32* %index, align 4
  %idxprom = zext i32 %13 to i64
  %14 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  %15 = load i8, i8* %arrayidx, align 1
  store i8 %15, i8* %chr, align 1
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %17 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8
  %18 = load i8, i8* %chr, align 1
  %conv = zext i8 %18 to i32
  %call6 = call %struct.cached_char_s* @gx_lookup_cached_char(%struct.gs_state_s* %16, %struct.cached_fm_pair_s* %17, i32 %conv)
  store %struct.cached_char_s* %call6, %struct.cached_char_s** %cc, align 8
  %19 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  %cmp7 = icmp eq %struct.cached_char_s* %19, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %while.body
  br label %no_cache

if.end.10:                                        ; preds = %while.body
  %20 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %21 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  %call11 = call i32 @gx_copy_cached_char(%struct.gs_show_enum_s* %20, %struct.cached_char_s* %21)
  store i32 %call11, i32* %code, align 4
  %22 = load i32, i32* %code, align 4
  %cmp12 = icmp slt i32 %22, 0
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.10
  %23 = load i32, i32* %code, align 4
  store i32 %23, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.10
  %24 = load i32, i32* %code, align 4
  %cmp15 = icmp sgt i32 %24, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else
  br label %no_cache

if.end.18:                                        ; preds = %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18
  %25 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %slow_show = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %25, i32 0, i32 10
  %26 = load i32, i32* %slow_show, align 4
  %tobool20 = icmp ne i32 %26, 0
  br i1 %tobool20, label %if.then.21, label %if.else.24

if.then.21:                                       ; preds = %if.end.19
  %27 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %wxy = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %27, i32 0, i32 21
  %28 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  %wxy22 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %28, i32 0, i32 6
  %29 = bitcast %struct.gs_fixed_point_s* %wxy to i8*
  %30 = bitcast %struct.gs_fixed_point_s* %wxy22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 8, i1 false)
  %31 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %call23 = call i32 @show_move(%struct.gs_show_enum_s* %31)
  store i32 %call23, i32* %code, align 4
  br label %if.end.35

if.else.24:                                       ; preds = %if.end.19
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %32, i32 0, i32 7
  %33 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %position_valid = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %33, i32 0, i32 10
  %34 = load i8, i8* %position_valid, align 1
  %tobool25 = icmp ne i8 %34, 0
  br i1 %tobool25, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.else.24
  br label %cond.end

cond.false:                                       ; preds = %if.else.24
  %35 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  %wxy26 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %35, i32 0, i32 6
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %wxy26, i32 0, i32 0
  %36 = load i64, i64* %x, align 8
  %37 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %path27 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %37, i32 0, i32 7
  %38 = load %struct.gx_path_s*, %struct.gx_path_s** %path27, align 8
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %38, i32 0, i32 9
  %x28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  %39 = load i64, i64* %x28, align 8
  %add = add nsw i64 %39, %36
  store i64 %add, i64* %x28, align 8
  %40 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  %wxy29 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %40, i32 0, i32 6
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %wxy29, i32 0, i32 1
  %41 = load i64, i64* %y, align 8
  %42 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %path30 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %42, i32 0, i32 7
  %43 = load %struct.gx_path_s*, %struct.gx_path_s** %path30, align 8
  %position31 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %43, i32 0, i32 9
  %y32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position31, i32 0, i32 1
  %44 = load i64, i64* %y32, align 8
  %add33 = add nsw i64 %44, %41
  store i64 %add33, i64* %y32, align 8
  %45 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %path34 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %45, i32 0, i32 7
  %46 = load %struct.gx_path_s*, %struct.gx_path_s** %path34, align 8
  %subpath_open = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %46, i32 0, i32 11
  store i8 0, i8* %subpath_open, align 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -14, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %code, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %cond.end, %if.then.21
  %47 = load i32, i32* %code, align 4
  %tobool36 = icmp ne i32 %47, 0
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.35
  %48 = load i32, i32* %code, align 4
  store i32 %48, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.end.35
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

if.else.39:                                       ; preds = %more
  %49 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %index40 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %49, i32 0, i32 20
  %50 = load i32, i32* %index40, align 4
  %inc41 = add i32 %50, 1
  store i32 %inc41, i32* %index40, align 4
  store i32 %50, i32* %index, align 4
  %51 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %size42 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %51, i32 0, i32 2
  %52 = load i32, i32* %size42, align 4
  %cmp43 = icmp eq i32 %50, %52
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.else.39
  store i32 0, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.else.39
  %53 = load i32, i32* %index, align 4
  %idxprom47 = zext i32 %53 to i64
  %54 = load i8*, i8** %str, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %54, i64 %idxprom47
  %55 = load i8, i8* %arrayidx48, align 1
  store i8 %55, i8* %chr, align 1
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.46
  br label %no_cache

no_cache:                                         ; preds = %if.end.49, %if.then.17, %if.then.9
  %56 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call50 = call i32 @gs_gsave(%struct.gs_state_s* %56)
  store i32 %call50, i32* %code, align 4
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %no_cache
  %57 = load i32, i32* %code, align 4
  store i32 %57, i32* %retval
  br label %return

if.end.54:                                        ; preds = %no_cache
  %58 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %charpath_flag = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %58, i32 0, i32 11
  %59 = load i32, i32* %charpath_flag, align 4
  %conv55 = trunc i32 %59 to i8
  %60 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %in_charpath = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %60, i32 0, i32 20
  store i8 %conv55, i8* %in_charpath, align 1
  %61 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %path56 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %61, i32 0, i32 7
  %62 = load %struct.gx_path_s*, %struct.gx_path_s** %path56, align 8
  store %struct.gx_path_s* %62, %struct.gx_path_s** %ppath, align 8
  %63 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %position_valid57 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %63, i32 0, i32 10
  %64 = load i8, i8* %position_valid57, align 1
  %tobool58 = icmp ne i8 %64, 0
  br i1 %tobool58, label %cond.false.60, label %cond.true.59

cond.true.59:                                     ; preds = %if.end.54
  br label %cond.end.67

cond.false.60:                                    ; preds = %if.end.54
  %65 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %position61 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %65, i32 0, i32 9
  %x62 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position61, i32 0, i32 0
  %66 = load i64, i64* %x62, align 8
  %x63 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 0
  store i64 %66, i64* %x63, align 8
  %67 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %position64 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %67, i32 0, i32 9
  %y65 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position64, i32 0, i32 1
  %68 = load i64, i64* %y65, align 8
  %y66 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 1
  store i64 %68, i64* %y66, align 8
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.60, %cond.true.59
  %cond68 = phi i32 [ -14, %cond.true.59 ], [ 0, %cond.false.60 ]
  store i32 %cond68, i32* %code, align 4
  %cmp69 = icmp slt i32 %cond68, 0
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %cond.end.67
  %69 = load i32, i32* %code, align 4
  store i32 %69, i32* %retval
  br label %return

if.end.72:                                        ; preds = %cond.end.67
  %70 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %call73 = call i32 @gx_path_is_void(%struct.gx_path_s* %70)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.end.82, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.72
  %71 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %charpath_flag75 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %71, i32 0, i32 11
  %72 = load i32, i32* %charpath_flag75, align 4
  %tobool76 = icmp ne i32 %72, 0
  br i1 %tobool76, label %if.end.82, label %if.then.77

if.then.77:                                       ; preds = %land.lhs.true
  %73 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call78 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_newpath to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* %73)
  %74 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %x79 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 0
  %75 = load i64, i64* %x79, align 8
  %y80 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 1
  %76 = load i64, i64* %y80, align 8
  %call81 = call i32 @gx_path_add_point(%struct.gx_path_s* %74, i64 %75, i64 %76)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.77, %land.lhs.true, %if.end.72
  %77 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %78 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %char_tm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %78, i32 0, i32 17
  %call83 = call i32 (%struct.gs_state_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @gs_setmatrix to i32 (%struct.gs_state_s*, %struct.gs_matrix_s*, ...)*)(%struct.gs_state_s* %77, %struct.gs_matrix_s* %char_tm)
  %79 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %x84 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 0
  %80 = load i64, i64* %x84, align 8
  %y85 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 1
  %81 = load i64, i64* %y85, align 8
  %call86 = call i32 (%struct.gs_state_s*, i64, i64, ...) bitcast (i32 (...)* @gs_translate_to_fixed to i32 (%struct.gs_state_s*, i64, i64, ...)*)(%struct.gs_state_s* %79, i64 %80, i64 %81)
  %82 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %82, i32 0, i32 2
  %tx_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm, i32 0, i32 12
  %83 = load i64, i64* %tx_fixed, align 8
  %add87 = add nsw i64 %83, 2048
  %and = and i64 %add87, -4096
  %84 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %ctm88 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %84, i32 0, i32 2
  %tx_fixed89 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm88, i32 0, i32 12
  store i64 %and, i64* %tx_fixed89, align 8
  %85 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %ctm90 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %85, i32 0, i32 2
  %tx_fixed91 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm90, i32 0, i32 12
  %86 = load i64, i64* %tx_fixed91, align 8
  %conv92 = sitofp i64 %86 to double
  %mul = fmul double %conv92, 0x3F30000000000000
  %conv93 = fptrunc double %mul to float
  %87 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %ctm94 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %87, i32 0, i32 2
  %tx = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm94, i32 0, i32 8
  store float %conv93, float* %tx, align 4
  %88 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %ctm95 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %88, i32 0, i32 2
  %ty_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm95, i32 0, i32 13
  %89 = load i64, i64* %ty_fixed, align 8
  %add96 = add nsw i64 %89, 2048
  %and97 = and i64 %add96, -4096
  %90 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %ctm98 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %90, i32 0, i32 2
  %ty_fixed99 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm98, i32 0, i32 13
  store i64 %and97, i64* %ty_fixed99, align 8
  %91 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %ctm100 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %91, i32 0, i32 2
  %ty_fixed101 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm100, i32 0, i32 13
  %92 = load i64, i64* %ty_fixed101, align 8
  %conv102 = sitofp i64 %92 to double
  %mul103 = fmul double %conv102, 0x3F30000000000000
  %conv104 = fptrunc double %mul103 to float
  %93 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %ctm105 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %93, i32 0, i32 2
  %ty = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm105, i32 0, i32 10
  store float %conv104, float* %ty, align 4
  %94 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %width_set = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %94, i32 0, i32 24
  store i32 0, i32* %width_set, align 4
  %95 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %continue_proc = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %95, i32 0, i32 26
  store i32 (%struct.gs_show_enum_s*)* @continue_show_update, i32 (%struct.gs_show_enum_s*)** %continue_proc, align 8
  %96 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %font106 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %96, i32 0, i32 16
  %97 = load %struct.gs_font_s*, %struct.gs_font_s** %font106, align 8
  store %struct.gs_font_s* %97, %struct.gs_font_s** %font, align 8
  %98 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8
  %build_char_proc = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %98, i32 0, i32 13
  %99 = load i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i32, i8*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i32, i8*)** %build_char_proc, align 8
  %100 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %101 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %102 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8
  %103 = load i8, i8* %chr, align 1
  %conv107 = zext i8 %103 to i32
  %104 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8
  %build_char_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %104, i32 0, i32 14
  %105 = load i8*, i8** %build_char_data, align 8
  %call108 = call i32 %99(%struct.gs_show_enum_s* %100, %struct.gs_state_s* %101, %struct.gs_font_s* %102, i32 %conv107, i8* %105)
  store i32 %call108, i32* %code, align 4
  %106 = load i32, i32* %code, align 4
  %cmp109 = icmp slt i32 %106, 0
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.end.82
  %107 = load i32, i32* %code, align 4
  store i32 %107, i32* %retval
  br label %return

if.end.112:                                       ; preds = %if.end.82
  %108 = load i32, i32* %code, align 4
  %cmp113 = icmp eq i32 %108, 0
  br i1 %cmp113, label %if.then.115, label %if.end.126

if.then.115:                                      ; preds = %if.end.112
  %109 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %call116 = call i32 @show_update(%struct.gs_show_enum_s* %109)
  store i32 %call116, i32* %code, align 4
  %110 = load i32, i32* %code, align 4
  %cmp117 = icmp slt i32 %110, 0
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.then.115
  %111 = load i32, i32* %code, align 4
  store i32 %111, i32* %retval
  br label %return

if.end.120:                                       ; preds = %if.then.115
  %112 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %color_loaded121 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %112, i32 0, i32 25
  store i32 0, i32* %color_loaded121, align 4
  %113 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %call122 = call i32 @show_move(%struct.gs_show_enum_s* %113)
  store i32 %call122, i32* %code, align 4
  %114 = load i32, i32* %code, align 4
  %tobool123 = icmp ne i32 %114, 0
  br i1 %tobool123, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.end.120
  %115 = load i32, i32* %code, align 4
  store i32 %115, i32* %retval
  br label %return

if.end.125:                                       ; preds = %if.end.120
  br label %more

if.end.126:                                       ; preds = %if.end.112
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.126, %if.then.124, %if.then.119, %if.then.111, %if.then.71, %if.then.53, %if.then.45, %while.end, %if.then.37, %if.then.14
  %116 = load i32, i32* %retval
  ret i32 %116
}

; Function Attrs: nounwind uwtable
define i32 @continue_show(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %call = call i32 @show_proceed(%struct.gs_show_enum_s* %0)
  ret i32 %call
}

declare void @gx_add_cached_char(%struct.gs_font_dir_s*, %struct.cached_char_s*, %struct.cached_fm_pair_s*) #2

declare %struct.cached_fm_pair_s* @gx_lookup_fm_pair(%struct.gs_state_s*) #2

declare i32 @gs_grestore(%struct.gs_state_s*) #2

declare i32 @gx_copy_cached_char(%struct.gs_show_enum_s*, %struct.cached_char_s*) #2

declare i32 @gs_rmoveto(...) #2

declare %struct.cached_char_s* @gx_lookup_cached_char(%struct.gs_state_s*, %struct.cached_fm_pair_s*, i32) #2

declare i32 @gx_path_is_void(%struct.gx_path_s*) #2

declare i32 @gs_newpath(...) #2

declare i32 @gs_setmatrix(...) #2

; Function Attrs: nounwind uwtable
define i32 @continue_stringwidth_update(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %call = call i32 @stringwidth_update(%struct.gs_show_enum_s* %0)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %call1 = call i32 @stringwidth_move(%struct.gs_show_enum_s* %3)
  store i32 %call1, i32* %code, align 4
  %4 = load i32, i32* %code, align 4
  %cmp2 = icmp ne i32 %4, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %5 = load i32, i32* %code, align 4
  store i32 %5, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %call5 = call i32 @stringwidth_proceed(%struct.gs_show_enum_s* %6)
  store i32 %call5, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @stringwidth_update(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %pgs1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8
  store %struct.gs_state_s* %1, %struct.gs_state_s** %pgs, align 8
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %width_set = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %2, i32 0, i32 24
  %3 = load i32, i32* %width_set, align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  store i32 -23, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 16
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8
  %dir = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %5, i32 0, i32 3
  %6 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8
  %7 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %cc = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %7, i32 0, i32 22
  %8 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call = call %struct.cached_fm_pair_s* @gx_lookup_fm_pair(%struct.gs_state_s* %9)
  call void @gx_add_cached_char(%struct.gs_font_dir_s* %6, %struct.cached_char_s* %8, %struct.cached_fm_pair_s* %call)
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call3 = call i32 @gs_grestore(%struct.gs_state_s* %10)
  br label %sw.bb.4

sw.bb.4:                                          ; preds = %entry, %sw.bb.2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.4, %entry
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call5 = call i32 @gs_grestore(%struct.gs_state_s* %11)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @stringwidth_move(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %pgs = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 7
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %position_valid = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 10
  %3 = load i8, i8* %position_valid, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %wxy = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %4, i32 0, i32 21
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %wxy, i32 0, i32 0
  %5 = load i64, i64* %x, align 8
  %6 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %pgs1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %6, i32 0, i32 0
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8
  %path2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %7, i32 0, i32 7
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %path2, align 8
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %8, i32 0, i32 9
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  %9 = load i64, i64* %x3, align 8
  %add = add nsw i64 %9, %5
  store i64 %add, i64* %x3, align 8
  %10 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %wxy4 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %10, i32 0, i32 21
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %wxy4, i32 0, i32 1
  %11 = load i64, i64* %y, align 8
  %12 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %pgs5 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %12, i32 0, i32 0
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs5, align 8
  %path6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 7
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %path6, align 8
  %position7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %14, i32 0, i32 9
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position7, i32 0, i32 1
  %15 = load i64, i64* %y8, align 8
  %add9 = add nsw i64 %15, %11
  store i64 %add9, i64* %y8, align 8
  %16 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %pgs10 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %16, i32 0, i32 0
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs10, align 8
  %path11 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 7
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %path11, align 8
  %subpath_open = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %18, i32 0, i32 11
  store i8 0, i8* %subpath_open, align 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -14, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @stringwidth_proceed(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %str = alloca i8*, align 8
  %index = alloca i32, align 4
  %pair = alloca %struct.cached_fm_pair_s*, align 8
  %chr = alloca i8, align 1
  %code = alloca i32, align 4
  %end_pt = alloca %struct.gs_point_s, align 4
  %start_pt = alloca %struct.gs_point_s, align 4
  %cc = alloca %struct.cached_char_s*, align 8
  %cpt = alloca %struct.gs_fixed_point_s, align 8
  %font = alloca %struct.gs_font_s*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %pgs1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8
  store %struct.gs_state_s* %1, %struct.gs_state_s** %pgs, align 8
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %str2 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %2, i32 0, i32 1
  %3 = load i8*, i8** %str2, align 8
  store i8* %3, i8** %str, align 8
  store %struct.cached_fm_pair_s* null, %struct.cached_fm_pair_s** %pair, align 8
  br label %more

more:                                             ; preds = %if.end.73, %if.end.30, %entry
  %4 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %index3 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %4, i32 0, i32 20
  %5 = load i32, i32* %index3, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %index3, align 4
  store i32 %5, i32* %index, align 4
  %6 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %size = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %6, i32 0, i32 2
  %7 = load i32, i32* %size, align 4
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %more
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call = call i32 (%struct.gs_state_s*, %struct.gs_point_s*, ...) bitcast (i32 (...)* @gs_currentpoint to i32 (%struct.gs_state_s*, %struct.gs_point_s*, ...)*)(%struct.gs_state_s* %8, %struct.gs_point_s* %end_pt)
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call4 = call i32 @gs_grestore(%struct.gs_state_s* %9)
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call5 = call i32 (%struct.gs_state_s*, %struct.gs_point_s*, ...) bitcast (i32 (...)* @gs_currentpoint to i32 (%struct.gs_state_s*, %struct.gs_point_s*, ...)*)(%struct.gs_state_s* %10, %struct.gs_point_s* %start_pt)
  %cmp6 = icmp eq i32 %call5, -14
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start_pt, i32 0, i32 0
  store float 0.000000e+00, float* %x, align 4
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start_pt, i32 0, i32 1
  store float 0.000000e+00, float* %y, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %x8 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end_pt, i32 0, i32 0
  %11 = load float, float* %x8, align 4
  %x9 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start_pt, i32 0, i32 0
  %12 = load float, float* %x9, align 4
  %sub = fsub float %11, %12
  %13 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %width = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %13, i32 0, i32 23
  %x10 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %width, i32 0, i32 0
  store float %sub, float* %x10, align 4
  %y11 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %end_pt, i32 0, i32 1
  %14 = load float, float* %y11, align 4
  %y12 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %start_pt, i32 0, i32 1
  %15 = load float, float* %y12, align 4
  %sub13 = fsub float %14, %15
  %16 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %width14 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %16, i32 0, i32 23
  %y15 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %width14, i32 0, i32 1
  store float %sub13, float* %y15, align 4
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %more
  %17 = load i32, i32* %index, align 4
  %idxprom = zext i32 %17 to i64
  %18 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 %idxprom
  %19 = load i8, i8* %arrayidx, align 1
  store i8 %19, i8* %chr, align 1
  %20 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %can_cache = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %20, i32 0, i32 12
  %21 = load i32, i32* %can_cache, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then.17, label %if.end.32

if.then.17:                                       ; preds = %if.end.16
  %22 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8
  %cmp18 = icmp eq %struct.cached_fm_pair_s* %22, null
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.then.17
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call20 = call %struct.cached_fm_pair_s* @gx_lookup_fm_pair(%struct.gs_state_s* %23)
  store %struct.cached_fm_pair_s* %call20, %struct.cached_fm_pair_s** %pair, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.then.17
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %25 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8
  %26 = load i8, i8* %chr, align 1
  %conv = zext i8 %26 to i32
  %call22 = call %struct.cached_char_s* @gx_lookup_cached_char(%struct.gs_state_s* %24, %struct.cached_fm_pair_s* %25, i32 %conv)
  store %struct.cached_char_s* %call22, %struct.cached_char_s** %cc, align 8
  %27 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  %cmp23 = icmp ne %struct.cached_char_s* %27, null
  br i1 %cmp23, label %if.then.25, label %if.end.31

if.then.25:                                       ; preds = %if.end.21
  %28 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %wxy = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %28, i32 0, i32 21
  %29 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  %wxy26 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %29, i32 0, i32 6
  %30 = bitcast %struct.gs_fixed_point_s* %wxy to i8*
  %31 = bitcast %struct.gs_fixed_point_s* %wxy26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 16, i32 8, i1 false)
  %32 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %width_set = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %32, i32 0, i32 24
  store i32 2, i32* %width_set, align 4
  %33 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %call27 = call i32 @stringwidth_move(%struct.gs_show_enum_s* %33)
  store i32 %call27, i32* %code, align 4
  %34 = load i32, i32* %code, align 4
  %tobool28 = icmp ne i32 %34, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.25
  %35 = load i32, i32* %code, align 4
  store i32 %35, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.then.25
  br label %more

if.end.31:                                        ; preds = %if.end.21
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.16
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call33 = call i32 @gs_gsave(%struct.gs_state_s* %36)
  store i32 %call33, i32* %code, align 4
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.32
  %37 = load i32, i32* %code, align 4
  store i32 %37, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.end.32
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %38, i32 0, i32 7
  %39 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %position_valid = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %39, i32 0, i32 10
  %40 = load i8, i8* %position_valid, align 1
  %tobool38 = icmp ne i8 %40, 0
  br i1 %tobool38, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.37
  br label %cond.end

cond.false:                                       ; preds = %if.end.37
  %41 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %path39 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %41, i32 0, i32 7
  %42 = load %struct.gx_path_s*, %struct.gx_path_s** %path39, align 8
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %42, i32 0, i32 9
  %x40 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  %43 = load i64, i64* %x40, align 8
  %x41 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 0
  store i64 %43, i64* %x41, align 8
  %44 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %path42 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %44, i32 0, i32 7
  %45 = load %struct.gx_path_s*, %struct.gx_path_s** %path42, align 8
  %position43 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %45, i32 0, i32 9
  %y44 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position43, i32 0, i32 1
  %46 = load i64, i64* %y44, align 8
  %y45 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 1
  store i64 %46, i64* %y45, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -14, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %code, align 4
  %cmp46 = icmp slt i32 %cond, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %cond.end
  %47 = load i32, i32* %code, align 4
  store i32 %47, i32* %retval
  br label %return

if.end.49:                                        ; preds = %cond.end
  %48 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %49 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %char_tm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %49, i32 0, i32 17
  %call50 = call i32 (%struct.gs_state_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @gs_setmatrix to i32 (%struct.gs_state_s*, %struct.gs_matrix_s*, ...)*)(%struct.gs_state_s* %48, %struct.gs_matrix_s* %char_tm)
  %50 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %x51 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 0
  %51 = load i64, i64* %x51, align 8
  %y52 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cpt, i32 0, i32 1
  %52 = load i64, i64* %y52, align 8
  %call53 = call i32 (%struct.gs_state_s*, i64, i64, ...) bitcast (i32 (...)* @gs_translate_to_fixed to i32 (%struct.gs_state_s*, i64, i64, ...)*)(%struct.gs_state_s* %50, i64 %51, i64 %52)
  %53 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %width_set54 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %53, i32 0, i32 24
  store i32 0, i32* %width_set54, align 4
  %54 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %continue_proc = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %54, i32 0, i32 26
  store i32 (%struct.gs_show_enum_s*)* @continue_stringwidth_update, i32 (%struct.gs_show_enum_s*)** %continue_proc, align 8
  %55 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %font55 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %55, i32 0, i32 16
  %56 = load %struct.gs_font_s*, %struct.gs_font_s** %font55, align 8
  store %struct.gs_font_s* %56, %struct.gs_font_s** %font, align 8
  %57 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8
  %build_char_proc = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %57, i32 0, i32 13
  %58 = load i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i32, i8*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i32, i8*)** %build_char_proc, align 8
  %59 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %60 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %61 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8
  %62 = load i8, i8* %chr, align 1
  %conv56 = zext i8 %62 to i32
  %63 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8
  %build_char_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %63, i32 0, i32 14
  %64 = load i8*, i8** %build_char_data, align 8
  %call57 = call i32 %58(%struct.gs_show_enum_s* %59, %struct.gs_state_s* %60, %struct.gs_font_s* %61, i32 %conv56, i8* %64)
  store i32 %call57, i32* %code, align 4
  %65 = load i32, i32* %code, align 4
  %cmp58 = icmp slt i32 %65, 0
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.49
  %66 = load i32, i32* %code, align 4
  store i32 %66, i32* %retval
  br label %return

if.end.61:                                        ; preds = %if.end.49
  %67 = load i32, i32* %code, align 4
  %cmp62 = icmp eq i32 %67, 0
  br i1 %cmp62, label %if.then.64, label %if.end.74

if.then.64:                                       ; preds = %if.end.61
  %68 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %call65 = call i32 @stringwidth_update(%struct.gs_show_enum_s* %68)
  store i32 %call65, i32* %code, align 4
  %69 = load i32, i32* %code, align 4
  %cmp66 = icmp slt i32 %69, 0
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.then.64
  %70 = load i32, i32* %code, align 4
  store i32 %70, i32* %retval
  br label %return

if.end.69:                                        ; preds = %if.then.64
  %71 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %call70 = call i32 @stringwidth_move(%struct.gs_show_enum_s* %71)
  store i32 %call70, i32* %code, align 4
  %72 = load i32, i32* %code, align 4
  %tobool71 = icmp ne i32 %72, 0
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.69
  %73 = load i32, i32* %code, align 4
  store i32 %73, i32* %retval
  br label %return

if.end.73:                                        ; preds = %if.end.69
  br label %more

if.end.74:                                        ; preds = %if.end.61
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.74, %if.then.72, %if.then.68, %if.then.60, %if.then.48, %if.then.36, %if.then.29, %if.end
  %74 = load i32, i32* %retval
  ret i32 %74
}

declare i32 @gs_currentpoint(...) #2

; Function Attrs: nounwind uwtable
define zeroext i8 @gs_kshow_previous_char(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %index = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i32 0, i32 20
  %1 = load i32, i32* %index, align 4
  %sub = sub i32 %1, 1
  %idxprom = zext i32 %sub to i64
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %str = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %2, i32 0, i32 1
  %3 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  ret i8 %4
}

; Function Attrs: nounwind uwtable
define zeroext i8 @gs_kshow_next_char(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %index = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i32 0, i32 20
  %1 = load i32, i32* %index, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %str = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %2, i32 0, i32 1
  %3 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  ret i8 %4
}

; Function Attrs: nounwind uwtable
define void @gs_show_width(%struct.gs_show_enum_s* %penum, %struct.gs_point_s* %ppt) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %ppt.addr = alloca %struct.gs_point_s*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  store %struct.gs_point_s* %ppt, %struct.gs_point_s** %ppt.addr, align 8
  %0 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %width = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 23
  %2 = bitcast %struct.gs_point_s* %0 to i8*
  %3 = bitcast %struct.gs_point_s* %width to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_show_in_charpath(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %charpath_flag = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i32 0, i32 11
  %1 = load i32, i32* %charpath_flag, align 4
  ret i32 %1
}

declare void @gs_make_identity(%struct.gs_matrix_s*) #2

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #2

declare i32 @gx_cpath_box_for_check(%struct.gx_path_s*, %struct.gs_fixed_rect_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
