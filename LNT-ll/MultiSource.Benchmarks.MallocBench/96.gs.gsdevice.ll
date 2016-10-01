; ModuleID = './MultiSource.Benchmarks.MallocBench/96.gs.gsdevice.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { {}*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, {}*, {}*, {}*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gx_bitmap_s = type { i8*, i32, i32, i32 }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32, %struct.gs_matrix_s, i32, i8*, i8**, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32, i32, i8* }
%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type opaque
%struct.line_params_s = type opaque
%struct.halftone_s = type opaque
%struct.gs_color_s = type opaque
%struct.gx_device_color_s = type opaque
%struct.gs_font_s = type opaque
%struct.device_s = type { %struct.gx_device_s*, i32, i64, i64 }

@null_procs = global { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* } { i32 (%struct.gx_device_s*)* @gx_default_open_device, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @gx_default_close_device, i64 (%struct.gx_device_s*, i16, i16, i16)* @gx_default_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @null_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)* @null_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)* @null_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)* @null_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @null_draw_line, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)* @null_fill_trapezoid, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* @null_tile_trapezoid }, align 8
@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@null_device = global %struct.gx_device_s { i32 32, %struct.gx_device_procs_s* bitcast ({ i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }* @null_procs to %struct.gx_device_procs_s*), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 16383, i32 16383, float 1.000000e+00, float 1.000000e+00, i32 0, i16 1, i32 1, i32 1 }, align 8
@gx_device_null_p = global %struct.gx_device_s* @null_device, align 8
@gx_device_list = external global [0 x %struct.gx_device_s*], align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"gs_makedevice\00", align 1
@mem_mapped_color_device = external global %struct.gx_device_memory_s, align 8
@mem_mono_device = external global %struct.gx_device_memory_s, align 8
@mem_true24_color_device = external global %struct.gx_device_memory_s, align 8
@mem_true32_color_device = external global %struct.gx_device_memory_s, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"gs_makeimagedevice(device)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"gs_makeimagedevice(bits)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gx_default_open_device(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @gx_default_get_initial_matrix(%struct.gx_device_s* %dev, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %x_pixels_per_inch = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 5
  %1 = load float, float* %x_pixels_per_inch, align 4
  %conv = fpext float %1 to double
  %div = fdiv double %conv, 7.200000e+01
  %conv1 = fptrunc double %div to float
  %2 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i32 0, i32 0
  store float %conv1, float* %xx, align 4
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %3, i32 0, i32 2
  store float 0.000000e+00, float* %xy, align 4
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %4, i32 0, i32 4
  store float 0.000000e+00, float* %yx, align 4
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %y_pixels_per_inch = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 6
  %6 = load float, float* %y_pixels_per_inch, align 4
  %conv2 = fpext float %6 to double
  %div3 = fdiv double %conv2, -7.200000e+01
  %conv4 = fptrunc double %div3 to float
  %7 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %7, i32 0, i32 6
  store float %conv4, float* %yy, align 4
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %8, i32 0, i32 8
  store float 0.000000e+00, float* %tx, align 4
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 4
  %10 = load i32, i32* %height, align 4
  %conv5 = sitofp i32 %10 to float
  %11 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %11, i32 0, i32 10
  store float %conv5, float* %ty, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_sync_output(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_output_page(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 1
  %1 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs, align 8
  %sync_output = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %1, i32 0, i32 2
  %sync_output1 = bitcast {}** %sync_output to i32 (%struct.gx_device_s*)**
  %2 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %sync_output1, align 8
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %call = call i32 %2(%struct.gx_device_s* %3)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_close_device(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i64 @gx_default_map_rgb_color(%struct.gx_device_s* %dev, i16 zeroext %r, i16 zeroext %g, i16 zeroext %b) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i16 %r, i16* %r.addr, align 2
  store i16 %g, i16* %g.addr, align 2
  store i16 %b, i16* %b.addr, align 2
  %0 = load i16, i16* %r.addr, align 2
  %conv = zext i16 %0 to i32
  %1 = load i16, i16* %g.addr, align 2
  %conv1 = zext i16 %1 to i32
  %cmp = icmp sgt i32 %conv, %conv1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i16, i16* %r.addr, align 2
  %conv3 = zext i16 %2 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i16, i16* %g.addr, align 2
  %conv4 = zext i16 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv3, %cond.true ], [ %conv4, %cond.false ]
  %4 = load i16, i16* %b.addr, align 2
  %conv5 = zext i16 %4 to i32
  %cmp6 = icmp sgt i32 %cond, %conv5
  br i1 %cmp6, label %cond.true.8, label %cond.false.19

cond.true.8:                                      ; preds = %cond.end
  %5 = load i16, i16* %r.addr, align 2
  %conv9 = zext i16 %5 to i32
  %6 = load i16, i16* %g.addr, align 2
  %conv10 = zext i16 %6 to i32
  %cmp11 = icmp sgt i32 %conv9, %conv10
  br i1 %cmp11, label %cond.true.13, label %cond.false.15

cond.true.13:                                     ; preds = %cond.true.8
  %7 = load i16, i16* %r.addr, align 2
  %conv14 = zext i16 %7 to i32
  br label %cond.end.17

cond.false.15:                                    ; preds = %cond.true.8
  %8 = load i16, i16* %g.addr, align 2
  %conv16 = zext i16 %8 to i32
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.15, %cond.true.13
  %cond18 = phi i32 [ %conv14, %cond.true.13 ], [ %conv16, %cond.false.15 ]
  br label %cond.end.21

cond.false.19:                                    ; preds = %cond.end
  %9 = load i16, i16* %b.addr, align 2
  %conv20 = zext i16 %9 to i32
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.19, %cond.end.17
  %cond22 = phi i32 [ %cond18, %cond.end.17 ], [ %conv20, %cond.false.19 ]
  %conv23 = sext i32 %cond22 to i64
  ret i64 %conv23
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i64 %color, i64* %color.addr, align 8
  store i16* %prgb, i16** %prgb.addr, align 8
  %0 = load i64, i64* %color.addr, align 8
  %conv = trunc i64 %0 to i16
  %1 = load i16*, i16** %prgb.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 2
  store i16 %conv, i16* %arrayidx, align 2
  %2 = load i16*, i16** %prgb.addr, align 8
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 1
  store i16 %conv, i16* %arrayidx1, align 2
  %3 = load i16*, i16** %prgb.addr, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %3, i64 0
  store i16 %conv, i16* %arrayidx2, align 2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @null_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i64 %color, i64* %color.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @null_tile_rectangle(%struct.gx_device_s* %dev, %struct.gx_bitmap_s* %tile, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tile.addr = alloca %struct.gx_bitmap_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %zero.addr = alloca i64, align 8
  %one.addr = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store %struct.gx_bitmap_s* %tile, %struct.gx_bitmap_s** %tile.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i64 %zero, i64* %zero.addr, align 8
  store i64 %one, i64* %one.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @null_copy_mono(%struct.gx_device_s* %dev, i8* %data, i32 %dx, i32 %raster, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %dx.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %zero.addr = alloca i64, align 8
  %one.addr = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %dx, i32* %dx.addr, align 4
  store i32 %raster, i32* %raster.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i64 %zero, i64* %zero.addr, align 8
  store i64 %one, i64* %one.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @null_copy_color(%struct.gx_device_s* %dev, i8* %data, i32 %dx, i32 %raster, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %dx.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %dx, i32* %dx.addr, align 4
  store i32 %raster, i32* %raster.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @null_draw_line(%struct.gx_device_s* %dev, i32 %x0, i32 %y0, i32 %x1, i32 %y1, i64 %color) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i32 %x0, i32* %x0.addr, align 4
  store i32 %y0, i32* %y0.addr, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i64 %color, i64* %color.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @null_fill_trapezoid(%struct.gx_device_s* %dev, i32 %x0, i32 %y0, i32 %w0, i32 %x1, i32 %y1, i32 %w1, i64 %color) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %w0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %w1.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i32 %x0, i32* %x0.addr, align 4
  store i32 %y0, i32* %y0.addr, align 4
  store i32 %w0, i32* %w0.addr, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %w1, i32* %w1.addr, align 4
  store i64 %color, i64* %color.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @null_tile_trapezoid(%struct.gx_device_s* %dev, %struct.gx_bitmap_s* %tile, i32 %x0, i32 %y0, i32 %w0, i32 %x1, i32 %y1, i32 %w1, i64 %color0, i64 %color1) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tile.addr = alloca %struct.gx_bitmap_s*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %w0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %w1.addr = alloca i32, align 4
  %color0.addr = alloca i64, align 8
  %color1.addr = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store %struct.gx_bitmap_s* %tile, %struct.gx_bitmap_s** %tile.addr, align 8
  store i32 %x0, i32* %x0.addr, align 4
  store i32 %y0, i32* %y0.addr, align 4
  store i32 %w0, i32* %w0.addr, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %w1, i32* %w1.addr, align 4
  store i64 %color0, i64* %color0.addr, align 8
  store i64 %color1, i64* %color1.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_flushpage(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 22
  %1 = load %struct.device_s*, %struct.device_s** %device, align 8
  %info = getelementptr inbounds %struct.device_s, %struct.device_s* %1, i32 0, i32 0
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %info, align 8
  store %struct.gx_device_s* %2, %struct.gx_device_s** %dev, align 8
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 1
  %4 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs, align 8
  %sync_output = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %4, i32 0, i32 2
  %sync_output1 = bitcast {}** %sync_output to i32 (%struct.gx_device_s*)**
  %5 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %sync_output1, align 8
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %call = call i32 %5(%struct.gx_device_s* %6)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_copypage(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 22
  %1 = load %struct.device_s*, %struct.device_s** %device, align 8
  %info = getelementptr inbounds %struct.device_s, %struct.device_s* %1, i32 0, i32 0
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %info, align 8
  store %struct.gx_device_s* %2, %struct.gx_device_s** %dev, align 8
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 1
  %4 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs, align 8
  %output_page = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %4, i32 0, i32 3
  %output_page1 = bitcast {}** %output_page to i32 (%struct.gx_device_s*)**
  %5 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %output_page1, align 8
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %call = call i32 %5(%struct.gx_device_s* %6)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_copyscanlines(%struct.gx_device_s* %dev, i32 %start_y, i8* %data, i32 %size, i32* %plines_copied, i32* %pbytes_copied) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %start_y.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %plines_copied.addr = alloca i32*, align 8
  %pbytes_copied.addr = alloca i32*, align 8
  %count = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i32 %start_y, i32* %start_y.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32* %plines_copied, i32** %plines_copied.addr, align 8
  store i32* %pbytes_copied, i32** %pbytes_copied.addr, align 8
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %call = call i32 @gs_device_is_memory(%struct.gx_device_s* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -21, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  %3 = load i32, i32* %start_y.addr, align 4
  %4 = load i8*, i8** %data.addr, align 8
  %5 = load i32, i32* %size.addr, align 4
  %call1 = call i32 @mem_copy_scan_lines(%struct.gx_device_memory_s* %2, i32 %3, i8* %4, i32 %5)
  store i32 %call1, i32* %count, align 4
  %6 = load i32*, i32** %plines_copied.addr, align 8
  %cmp = icmp ne i32* %6, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %7 = load i32, i32* %count, align 4
  %8 = load i32*, i32** %plines_copied.addr, align 8
  store i32 %7, i32* %8, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %9 = load i32*, i32** %pbytes_copied.addr, align 8
  %cmp4 = icmp ne i32* %9, null
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.3
  %10 = load i32, i32* %count, align 4
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %12 = bitcast %struct.gx_device_s* %11 to %struct.gx_device_memory_s*
  %call6 = call i32 @mem_bytes_per_scan_line(%struct.gx_device_memory_s* %12)
  %mul = mul nsw i32 %10, %call6
  %13 = load i32*, i32** %pbytes_copied.addr, align 8
  store i32 %mul, i32* %13, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end.3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i32 @gs_device_is_memory(%struct.gx_device_s*) #1

declare i32 @mem_copy_scan_lines(%struct.gx_device_memory_s*, i32, i8*, i32) #1

declare i32 @mem_bytes_per_scan_line(%struct.gx_device_memory_s*) #1

; Function Attrs: nounwind uwtable
define %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 22
  %1 = load %struct.device_s*, %struct.device_s** %device, align 8
  %info = getelementptr inbounds %struct.device_s, %struct.device_s* %1, i32 0, i32 0
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %info, align 8
  ret %struct.gx_device_s* %2
}

; Function Attrs: nounwind uwtable
define i8* @gs_devicename(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %name = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 2
  %1 = load i8*, i8** %name, align 8
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define void @gs_deviceparams(%struct.gx_device_s* %dev, %struct.gs_matrix_s* %pmat, i32* %pwidth, i32* %pheight) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pwidth.addr = alloca i32*, align 8
  %pheight.addr = alloca i32*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8
  store i32* %pwidth, i32** %pwidth.addr, align 8
  store i32* %pheight, i32** %pheight.addr, align 8
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 1
  %1 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs, align 8
  %get_initial_matrix = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %1, i32 0, i32 1
  %2 = load void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %get_initial_matrix, align 8
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  call void %2(%struct.gx_device_s* %3, %struct.gs_matrix_s* %4)
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 3
  %6 = load i32, i32* %width, align 4
  %7 = load i32*, i32** %pwidth.addr, align 8
  store i32 %6, i32* %7, align 4
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 4
  %9 = load i32, i32* %height, align 4
  %10 = load i32*, i32** %pheight.addr, align 8
  store i32 %9, i32* %10, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.gx_device_s* @gs_getdevice(i32 %index) #0 {
entry:
  %retval = alloca %struct.gx_device_s*, align 8
  %index.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %index, i32* %index.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.gx_device_s*], [0 x %struct.gx_device_s*]* @gx_device_list, i32 0, i64 %idxprom
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %arrayidx, align 8
  %cmp = icmp ne %struct.gx_device_s* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %index.addr, align 4
  %cmp1 = icmp eq i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [0 x %struct.gx_device_s*], [0 x %struct.gx_device_s*]* @gx_device_list, i32 0, i64 %idxprom2
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %arrayidx3, align 8
  store %struct.gx_device_s* %5, %struct.gx_device_s** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.gx_device_s* null, %struct.gx_device_s** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %retval
  ret %struct.gx_device_s* %7
}

; Function Attrs: nounwind uwtable
define i32 @gs_makedevice(%struct.gx_device_s** %pnew_dev, %struct.gx_device_s* %dev, %struct.gs_matrix_s* %pmat, i32 %width, i32 %height, i8* (i32, i32, i8*)* %palloc) #0 {
entry:
  %retval = alloca i32, align 4
  %pnew_dev.addr = alloca %struct.gx_device_s**, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %palloc.addr = alloca i8* (i32, i32, i8*)*, align 8
  %new_dev = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s** %pnew_dev, %struct.gx_device_s*** %pnew_dev.addr, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i8* (i32, i32, i8*)* %palloc, i8* (i32, i32, i8*)** %palloc.addr, align 8
  %0 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %palloc.addr, align 8
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %params_size = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 0
  %2 = load i32, i32* %params_size, align 4
  %call = call i8* %0(i32 1, i32 %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  %3 = bitcast i8* %call to %struct.gx_device_s*
  store %struct.gx_device_s* %3, %struct.gx_device_s** %new_dev, align 8
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8
  %cmp = icmp eq %struct.gx_device_s* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %width.addr, align 4
  %cmp1 = icmp ule i32 %5, 0
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, i32* %height.addr, align 4
  %cmp2 = icmp ule i32 %6, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -15, i32* %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8
  %8 = bitcast %struct.gx_device_s* %7 to i8*
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %10 = bitcast %struct.gx_device_s* %9 to i8*
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %params_size5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 0
  %12 = load i32, i32* %params_size5, align 4
  %conv = sext i32 %12 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %10, i64 %conv, i32 8, i1 false)
  %13 = load i32, i32* %width.addr, align 4
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8
  %width6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 3
  store i32 %13, i32* %width6, align 4
  %15 = load i32, i32* %height.addr, align 4
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8
  %height7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 4
  store i32 %15, i32* %height7, align 4
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 10
  store i32 0, i32* %is_open, align 4
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8
  %19 = load %struct.gx_device_s**, %struct.gx_device_s*** %pnew_dev.addr, align 8
  store %struct.gx_device_s* %18, %struct.gx_device_s** %19, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @gs_makeimagedevice(%struct.gx_device_s** %pnew_dev, %struct.gs_matrix_s* %pmat, i32 %width, i32 %height, float* %colors, i32 %num_colors, i8* (i32, i32, i8*)* %palloc) #0 {
entry:
  %retval = alloca i32, align 4
  %pnew_dev.addr = alloca %struct.gx_device_s**, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %colors.addr = alloca float*, align 8
  %num_colors.addr = alloca i32, align 4
  %palloc.addr = alloca i8* (i32, i32, i8*)*, align 8
  %old_dev = alloca %struct.gx_device_memory_s*, align 8
  %new_dev = alloca %struct.gx_device_memory_s*, align 8
  %bits = alloca i8*, align 8
  %palette_size = alloca i32, align 4
  %pcount = alloca i32, align 4
  %bits_per_pixel = alloca i32, align 4
  %bitmap_size = alloca i64, align 8
  %white = alloca i32, align 4
  %black = alloca i32, align 4
  %palette = alloca [768 x i8], align 16
  %has_color = alloca i32, align 4
  %p = alloca float*, align 8
  %q = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.gx_device_s** %pnew_dev, %struct.gx_device_s*** %pnew_dev.addr, align 8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store float* %colors, float** %colors.addr, align 8
  store i32 %num_colors, i32* %num_colors.addr, align 4
  store i8* (i32, i32, i8*)* %palloc, i8* (i32, i32, i8*)** %palloc.addr, align 8
  store %struct.gx_device_memory_s* @mem_mapped_color_device, %struct.gx_device_memory_s** %old_dev, align 8
  %0 = load i32, i32* %num_colors.addr, align 4
  store i32 %0, i32* %palette_size, align 4
  store i32 -1, i32* %white, align 4
  store i32 -1, i32* %black, align 4
  %1 = load i32, i32* %width.addr, align 4
  %cmp = icmp ule i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %height.addr, align 4
  %cmp1 = icmp ule i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* %num_colors.addr, align 4
  switch i32 %3, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb.2
    i32 16, label %sw.bb.2
    i32 256, label %sw.bb.3
    i32 -24, label %sw.bb.4
    i32 -32, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %if.end
  store i32 1, i32* %bits_per_pixel, align 4
  store %struct.gx_device_memory_s* @mem_mono_device, %struct.gx_device_memory_s** %old_dev, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.end, %if.end
  store i32 -15, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %if.end
  store i32 8, i32* %bits_per_pixel, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end
  store i32 24, i32* %bits_per_pixel, align 4
  store %struct.gx_device_memory_s* @mem_true24_color_device, %struct.gx_device_memory_s** %old_dev, align 8
  store i32 0, i32* %palette_size, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.end
  store i32 32, i32* %bits_per_pixel, align 4
  store %struct.gx_device_memory_s* @mem_true32_color_device, %struct.gx_device_memory_s** %old_dev, align 8
  store i32 0, i32* %palette_size, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 -15, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb
  %4 = load i32, i32* %palette_size, align 4
  %mul = mul nsw i32 %4, 3
  store i32 %mul, i32* %pcount, align 4
  %5 = load i32, i32* %bits_per_pixel, align 4
  %cmp6 = icmp sle i32 %5, 8
  br i1 %cmp6, label %if.then.7, label %if.else.55

if.then.7:                                        ; preds = %sw.epilog
  store i32 0, i32* %has_color, align 4
  store i32 0, i32* %i, align 4
  %6 = load float*, float** %colors.addr, align 8
  store float* %6, float** %p, align 8
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %palette, i32 0, i32 0
  store i8* %arraydecay, i8** %q, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.7
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %pcount, align 4
  %cmp8 = icmp slt i32 %7, %8
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load float*, float** %p, align 8
  %10 = load float, float* %9, align 4
  %conv = fpext float %10 to double
  %cmp9 = fcmp olt double %conv, -1.000000e-03
  br i1 %cmp9, label %if.then.15, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %for.body
  %11 = load float*, float** %p, align 8
  %12 = load float, float* %11, align 4
  %conv12 = fpext float %12 to double
  %cmp13 = fcmp ogt double %conv12, 1.001000e+00
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false.11, %for.body
  store i32 -15, i32* %retval
  br label %return

if.end.16:                                        ; preds = %lor.lhs.false.11
  %13 = load float*, float** %p, align 8
  %14 = load float, float* %13, align 4
  %mul17 = fmul float %14, 2.550000e+02
  %conv18 = fpext float %mul17 to double
  %add = fadd double %conv18, 5.000000e-01
  %conv19 = fptoui double %add to i8
  %15 = load i8*, i8** %q, align 8
  store i8 %conv19, i8* %15, align 1
  %16 = load i32, i32* %i, align 4
  %rem = srem i32 %16, 3
  %cmp20 = icmp eq i32 %rem, 2
  br i1 %cmp20, label %if.then.22, label %if.end.46

if.then.22:                                       ; preds = %if.end.16
  %17 = load i8*, i8** %q, align 8
  %18 = load i8, i8* %17, align 1
  %conv23 = zext i8 %18 to i32
  %19 = load i8*, i8** %q, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 -1
  %20 = load i8, i8* %arrayidx, align 1
  %conv24 = zext i8 %20 to i32
  %cmp25 = icmp eq i32 %conv23, %conv24
  br i1 %cmp25, label %land.lhs.true, label %if.else.44

land.lhs.true:                                    ; preds = %if.then.22
  %21 = load i8*, i8** %q, align 8
  %22 = load i8, i8* %21, align 1
  %conv27 = zext i8 %22 to i32
  %23 = load i8*, i8** %q, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %23, i64 -2
  %24 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %24 to i32
  %cmp30 = icmp eq i32 %conv27, %conv29
  br i1 %cmp30, label %if.then.32, label %if.else.44

if.then.32:                                       ; preds = %land.lhs.true
  %25 = load i8*, i8** %q, align 8
  %26 = load i8, i8* %25, align 1
  %conv33 = zext i8 %26 to i32
  %cmp34 = icmp eq i32 %conv33, 0
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %if.then.32
  %27 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %27, 2
  store i32 %sub, i32* %black, align 4
  br label %if.end.43

if.else:                                          ; preds = %if.then.32
  %28 = load i8*, i8** %q, align 8
  %29 = load i8, i8* %28, align 1
  %conv37 = zext i8 %29 to i32
  %cmp38 = icmp eq i32 %conv37, 255
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.else
  %30 = load i32, i32* %i, align 4
  %sub41 = sub nsw i32 %30, 2
  store i32 %sub41, i32* %white, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.else
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.36
  br label %if.end.45

if.else.44:                                       ; preds = %land.lhs.true, %if.then.22
  store i32 1, i32* %has_color, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.44, %if.end.43
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.16
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  %32 = load float*, float** %p, align 8
  %incdec.ptr = getelementptr inbounds float, float* %32, i32 1
  store float* %incdec.ptr, float** %p, align 8
  %33 = load i8*, i8** %q, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr47, i8** %q, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i32, i32* %white, align 4
  %cmp48 = icmp slt i32 %34, 0
  br i1 %cmp48, label %if.then.53, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %for.end
  %35 = load i32, i32* %black, align 4
  %cmp51 = icmp slt i32 %35, 0
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %lor.lhs.false.50, %for.end
  store i32 -15, i32* %retval
  br label %return

if.end.54:                                        ; preds = %lor.lhs.false.50
  br label %if.end.56

if.else.55:                                       ; preds = %sw.epilog
  store i32 1, i32* %has_color, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.55, %if.end.54
  %36 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %palloc.addr, align 8
  %37 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %old_dev, align 8
  %params_size = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %37, i32 0, i32 0
  %38 = load i32, i32* %params_size, align 4
  %call = call i8* %36(i32 1, i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  %39 = bitcast i8* %call to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %39, %struct.gx_device_memory_s** %new_dev, align 8
  %40 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev, align 8
  %cmp57 = icmp eq %struct.gx_device_memory_s* %40, null
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.56
  store i32 -25, i32* %retval
  br label %return

if.end.60:                                        ; preds = %if.end.56
  %41 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev, align 8
  %42 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %old_dev, align 8
  %43 = bitcast %struct.gx_device_memory_s* %41 to i8*
  %44 = bitcast %struct.gx_device_memory_s* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 200, i32 8, i1 false)
  %45 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev, align 8
  %initial_matrix = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %45, i32 0, i32 11
  %46 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %47 = bitcast %struct.gs_matrix_s* %initial_matrix to i8*
  %48 = bitcast %struct.gs_matrix_s* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 96, i32 8, i1 false)
  %49 = load i32, i32* %width.addr, align 4
  %50 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev, align 8
  %width61 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %50, i32 0, i32 3
  store i32 %49, i32* %width61, align 4
  %51 = load i32, i32* %height.addr, align 4
  %52 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev, align 8
  %height62 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %52, i32 0, i32 4
  store i32 %51, i32* %height62, align 4
  %53 = load i32, i32* %has_color, align 4
  %54 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev, align 8
  %has_color63 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %54, i32 0, i32 7
  store i32 %53, i32* %has_color63, align 4
  %55 = load i32, i32* %bits_per_pixel, align 4
  %56 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev, align 8
  %bits_per_color_pixel = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %56, i32 0, i32 9
  store i32 %55, i32* %bits_per_color_pixel, align 4
  %57 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev, align 8
  %call64 = call i64 @gx_device_memory_bitmap_size(%struct.gx_device_memory_s* %57)
  store i64 %call64, i64* %bitmap_size, align 8
  %58 = load i64, i64* %bitmap_size, align 8
  %cmp65 = icmp ugt i64 %58, 4294967295
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.60
  store i32 -13, i32* %retval
  br label %return

if.end.68:                                        ; preds = %if.end.60
  %59 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %palloc.addr, align 8
  %60 = load i64, i64* %bitmap_size, align 8
  %conv69 = trunc i64 %60 to i32
  %61 = load i32, i32* %pcount, align 4
  %add70 = add i32 %conv69, %61
  %call71 = call i8* %59(i32 1, i32 %add70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  store i8* %call71, i8** %bits, align 8
  %62 = load i8*, i8** %bits, align 8
  %cmp72 = icmp eq i8* %62, null
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.68
  store i32 -25, i32* %retval
  br label %return

if.end.75:                                        ; preds = %if.end.68
  %63 = load i8*, i8** %bits, align 8
  %64 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev, align 8
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %64, i32 0, i32 13
  store i8* %63, i8** %base, align 8
  %65 = load i32, i32* %black, align 4
  %cmp76 = icmp eq i32 %65, 0
  %cond = select i1 %cmp76, i32 0, i32 -1
  %66 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev, align 8
  %invert = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %66, i32 0, i32 16
  store i32 %cond, i32* %invert, align 4
  %67 = load i32, i32* %palette_size, align 4
  %68 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev, align 8
  %palette_size78 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %68, i32 0, i32 17
  store i32 %67, i32* %palette_size78, align 4
  %69 = load i8*, i8** %bits, align 8
  %70 = load i64, i64* %bitmap_size, align 8
  %add.ptr = getelementptr inbounds i8, i8* %69, i64 %70
  %71 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev, align 8
  %palette79 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %71, i32 0, i32 18
  store i8* %add.ptr, i8** %palette79, align 8
  %72 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev, align 8
  %palette80 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %72, i32 0, i32 18
  %73 = load i8*, i8** %palette80, align 8
  %74 = bitcast [768 x i8]* %palette to i8*
  %75 = load i32, i32* %pcount, align 4
  %conv81 = sext i32 %75 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 %conv81, i32 1, i1 false)
  %76 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev, align 8
  %is_open = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %76, i32 0, i32 10
  store i32 0, i32* %is_open, align 4
  %77 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %new_dev, align 8
  %78 = bitcast %struct.gx_device_memory_s* %77 to %struct.gx_device_s*
  %79 = load %struct.gx_device_s**, %struct.gx_device_s*** %pnew_dev.addr, align 8
  store %struct.gx_device_s* %78, %struct.gx_device_s** %79, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.75, %if.then.74, %if.then.67, %if.then.59, %if.then.53, %if.then.15, %sw.default, %sw.bb.2, %if.then
  %80 = load i32, i32* %retval
  ret i32 %80
}

declare i64 @gx_device_memory_bitmap_size(%struct.gx_device_memory_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_setdevice(%struct.gs_state_s* %pgs, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pdev = alloca %struct.device_s*, align 8
  %was_open = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 22
  %1 = load %struct.device_s*, %struct.device_s** %device, align 8
  store %struct.device_s* %1, %struct.device_s** %pdev, align 8
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 10
  %3 = load i32, i32* %is_open, align 4
  store i32 %3, i32* %was_open, align 4
  %4 = load i32, i32* %was_open, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end.4, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 1
  %6 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs, align 8
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %6, i32 0, i32 0
  %open_device1 = bitcast {}** %open_device to i32 (%struct.gx_device_s*)**
  %7 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device1, align 8
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %call = call i32 %7(%struct.gx_device_s* %8)
  store i32 %call, i32* %code, align 4
  %9 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %10 = load i32, i32* %code, align 4
  store i32 %10, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %is_open3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 10
  store i32 1, i32* %is_open3, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %procs5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 1
  %13 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs5, align 8
  %map_rgb_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %13, i32 0, i32 5
  %14 = load i64 (%struct.gx_device_s*, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16)** %map_rgb_color, align 8
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %call6 = call i64 %14(%struct.gx_device_s* %15, i16 zeroext 0, i16 zeroext 0, i16 zeroext 0)
  %16 = load %struct.device_s*, %struct.device_s** %pdev, align 8
  %black = getelementptr inbounds %struct.device_s, %struct.device_s* %16, i32 0, i32 3
  store i64 %call6, i64* %black, align 8
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %procs7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 1
  %18 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs7, align 8
  %map_rgb_color8 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %18, i32 0, i32 5
  %19 = load i64 (%struct.gx_device_s*, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16)** %map_rgb_color8, align 8
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %max_rgb_value = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 8
  %22 = load i16, i16* %max_rgb_value, align 2
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %max_rgb_value9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 8
  %24 = load i16, i16* %max_rgb_value9, align 2
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %max_rgb_value10 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 8
  %26 = load i16, i16* %max_rgb_value10, align 2
  %call11 = call i64 %19(%struct.gx_device_s* %20, i16 zeroext %22, i16 zeroext %24, i16 zeroext %26)
  %27 = load %struct.device_s*, %struct.device_s** %pdev, align 8
  %white = getelementptr inbounds %struct.device_s, %struct.device_s* %27, i32 0, i32 2
  store i64 %call11, i64* %white, align 8
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %29 = load %struct.device_s*, %struct.device_s** %pdev, align 8
  %info = getelementptr inbounds %struct.device_s, %struct.device_s* %29, i32 0, i32 0
  store %struct.gx_device_s* %28, %struct.gx_device_s** %info, align 8
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call12 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_initmatrix to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* %30)
  store i32 %call12, i32* %code, align 4
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call14 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_initclip to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* %31)
  store i32 %call14, i32* %code, align 4
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %lor.lhs.false, %if.end.4
  %32 = load i32, i32* %code, align 4
  store i32 %32, i32* %retval
  br label %return

if.end.17:                                        ; preds = %lor.lhs.false
  %33 = load i32, i32* %was_open, align 4
  %tobool18 = icmp ne i32 %33, 0
  br i1 %tobool18, label %if.end.24, label %if.then.19

if.then.19:                                       ; preds = %if.end.17
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call20 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_erasepage to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* %34)
  store i32 %call20, i32* %code, align 4
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.19
  %35 = load i32, i32* %code, align 4
  store i32 %35, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.then.19
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.17
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.22, %if.then.16, %if.then.2
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare i32 @gs_initmatrix(...) #1

declare i32 @gs_initclip(...) #1

declare i32 @gs_erasepage(...) #1

; Function Attrs: nounwind uwtable
define void @gs_nulldevice(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** @gx_device_null_p, align 8
  %call = call i32 @gs_setdevice(%struct.gs_state_s* %0, %struct.gx_device_s* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_device_no_output(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 22
  %1 = load %struct.device_s*, %struct.device_s** %device, align 8
  %info = getelementptr inbounds %struct.device_s, %struct.device_s* %1, i32 0, i32 0
  store %struct.gx_device_s* @null_device, %struct.gx_device_s** %info, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
