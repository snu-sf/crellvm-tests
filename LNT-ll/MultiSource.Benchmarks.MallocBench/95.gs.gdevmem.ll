; ModuleID = './MultiSource.Benchmarks.MallocBench/95.gs.gdevmem.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gx_bitmap_s = type { i8*, i32, i32, i32 }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32, %struct.gs_matrix_s, i32, i8*, i8**, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32, i32, i8* }

@.str = private unnamed_addr constant [7 x i8] c"image(\00", align 1
@mem_mono_procs = global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @mem_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @mem_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @gx_default_close_device, i64 (%struct.gx_device_s*, i16, i16, i16)* @gx_default_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @mem_mono_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)* @mem_mono_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)* @mem_mono_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* @gx_default_tile_trapezoid }, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"image(mono)\00", align 1
@mem_mono_device = global %struct.gx_device_memory_s { i32 200, %struct.gx_device_procs_s* @mem_mono_procs, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 0, i32 0, float 1.000000e+00, float 1.000000e+00, i32 0, i16 1, i32 1, i32 0, %struct.gs_matrix_s { float 1.000000e+00, i64 0, float 0.000000e+00, i64 0, float 0.000000e+00, i64 0, float 1.000000e+00, i64 0, float 0.000000e+00, i64 0, float 0.000000e+00, i64 0 }, i32 0, i8* null, i8** null, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)* @mem_no_fault_proc, i32 0, i32 0, i8* null }, align 8
@mem_mapped_procs = global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @mem_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @mem_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @gx_default_close_device, i64 (%struct.gx_device_s*, i16, i16, i16)* @mem_mapped_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @mem_mapped_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @mem_mapped_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)* @mem_mapped_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)* @mem_mapped_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* @gx_default_tile_trapezoid }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"image(8)\00", align 1
@mem_mapped_color_device = global %struct.gx_device_memory_s { i32 200, %struct.gx_device_procs_s* @mem_mapped_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 0, i32 0, float 1.000000e+00, float 1.000000e+00, i32 1, i16 255, i32 8, i32 0, %struct.gs_matrix_s { float 1.000000e+00, i64 0, float 0.000000e+00, i64 0, float 0.000000e+00, i64 0, float 1.000000e+00, i64 0, float 0.000000e+00, i64 0, float 0.000000e+00, i64 0 }, i32 0, i8* null, i8** null, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)* @mem_no_fault_proc, i32 0, i32 0, i8* null }, align 8
@mem_true24_procs = global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @mem_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @mem_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @gx_default_close_device, i64 (%struct.gx_device_s*, i16, i16, i16)* @mem_true_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @mem_true_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @mem_true24_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)* @mem_true24_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)* @mem_true24_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* @gx_default_tile_trapezoid }, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"image(24)\00", align 1
@mem_true24_color_device = global %struct.gx_device_memory_s { i32 200, %struct.gx_device_procs_s* @mem_true24_procs, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 0, i32 0, float 1.000000e+00, float 1.000000e+00, i32 1, i16 255, i32 24, i32 0, %struct.gs_matrix_s { float 1.000000e+00, i64 0, float 0.000000e+00, i64 0, float 0.000000e+00, i64 0, float 1.000000e+00, i64 0, float 0.000000e+00, i64 0, float 0.000000e+00, i64 0 }, i32 0, i8* null, i8** null, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)* @mem_no_fault_proc, i32 0, i32 0, i8* null }, align 8
@mem_true32_procs = global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @mem_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @mem_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @gx_default_close_device, i64 (%struct.gx_device_s*, i16, i16, i16)* @mem_true_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @mem_true_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @mem_true32_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)* @mem_true32_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)* @mem_true32_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* @gx_default_tile_trapezoid }, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"image(32)\00", align 1
@mem_true32_color_device = global %struct.gx_device_memory_s { i32 200, %struct.gx_device_procs_s* @mem_true32_procs, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 0, float 1.000000e+00, float 1.000000e+00, i32 1, i16 255, i32 32, i32 0, %struct.gs_matrix_s { float 1.000000e+00, i64 0, float 0.000000e+00, i64 0, float 0.000000e+00, i64 0, float 1.000000e+00, i64 0, float 0.000000e+00, i64 0, float 0.000000e+00, i64 0 }, i32 0, i8* null, i8** null, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)* @mem_no_fault_proc, i32 0, i32 0, i8* null }, align 8

; Function Attrs: nounwind uwtable
define i64 @gx_device_memory_bitmap_size(%struct.gx_device_memory_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_memory_s*, align 8
  %raster = alloca i32, align 4
  store %struct.gx_device_memory_s* %dev, %struct.gx_device_memory_s** %dev.addr, align 8
  %0 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %0, i32 0, i32 3
  %1 = load i32, i32* %width, align 4
  %2 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8
  %bits_per_color_pixel = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %2, i32 0, i32 9
  %3 = load i32, i32* %bits_per_color_pixel, align 4
  %mul = mul nsw i32 %1, %3
  %add = add nsw i32 %mul, 31
  %shr = ashr i32 %add, 5
  %shl = shl i32 %shr, 2
  store i32 %shl, i32* %raster, align 4
  %4 = load i32, i32* %raster, align 4
  %5 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8
  %raster1 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %5, i32 0, i32 12
  store i32 %4, i32* %raster1, align 4
  %6 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %6, i32 0, i32 4
  %7 = load i32, i32* %height, align 4
  %conv = sext i32 %7 to i64
  %8 = load i32, i32* %raster, align 4
  %conv2 = zext i32 %8 to i64
  %add3 = add i64 %conv2, 8
  %mul4 = mul i64 %conv, %add3
  ret i64 %mul4
}

; Function Attrs: nounwind uwtable
define i32 @mem_open(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %scan_line = alloca i8*, align 8
  %pptr = alloca i8**, align 8
  %pend = alloca i8**, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %1 = bitcast %struct.gx_device_s* %0 to %struct.gx_device_memory_s*
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i32 0, i32 13
  %2 = load i8*, i8** %base, align 8
  store i8* %2, i8** %scan_line, align 8
  %3 = load i8*, i8** %scan_line, align 8
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_memory_s*
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %5, i32 0, i32 4
  %6 = load i32, i32* %height, align 4
  %conv = sext i32 %6 to i64
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %8 = bitcast %struct.gx_device_s* %7 to %struct.gx_device_memory_s*
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %8, i32 0, i32 12
  %9 = load i32, i32* %raster, align 4
  %conv1 = sext i32 %9 to i64
  %mul = mul i64 %conv, %conv1
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %mul
  %10 = bitcast i8* %add.ptr to i8**
  store i8** %10, i8*** %pptr, align 8
  %11 = load i8**, i8*** %pptr, align 8
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %13 = bitcast %struct.gx_device_s* %12 to %struct.gx_device_memory_s*
  %height2 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %13, i32 0, i32 4
  %14 = load i32, i32* %height2, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr3 = getelementptr inbounds i8*, i8** %11, i64 %idx.ext
  store i8** %add.ptr3, i8*** %pend, align 8
  %15 = load i8**, i8*** %pptr, align 8
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %17 = bitcast %struct.gx_device_s* %16 to %struct.gx_device_memory_s*
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %17, i32 0, i32 14
  store i8** %15, i8*** %line_ptrs, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %18 = load i8**, i8*** %pptr, align 8
  %19 = load i8**, i8*** %pend, align 8
  %cmp = icmp ne i8** %18, %19
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i8*, i8** %scan_line, align 8
  %21 = load i8**, i8*** %pptr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %21, i32 1
  store i8** %incdec.ptr, i8*** %pptr, align 8
  store i8* %20, i8** %21, align 8
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %23 = bitcast %struct.gx_device_s* %22 to %struct.gx_device_memory_s*
  %raster5 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %23, i32 0, i32 12
  %24 = load i32, i32* %raster5, align 4
  %25 = load i8*, i8** %scan_line, align 8
  %idx.ext6 = sext i32 %24 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %25, i64 %idx.ext6
  store i8* %add.ptr7, i8** %scan_line, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @mem_get_initial_matrix(%struct.gx_device_s* %dev, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8
  %0 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  %initial_matrix = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %2, i32 0, i32 11
  %3 = bitcast %struct.gs_matrix_s* %0 to i8*
  %4 = bitcast %struct.gs_matrix_s* %initial_matrix to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 96, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @gs_device_is_memory(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %name = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %name1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 2
  %1 = load i8*, i8** %name1, align 8
  store i8* %1, i8** %name, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %name, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %6 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [7 x i8], [7 x i8]* @.str, i32 0, i64 %idxprom2
  %7 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %7 to i32
  %cmp5 = icmp ne i32 %conv, %conv4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @mem_bytes_per_scan_line(%struct.gx_device_memory_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_memory_s*, align 8
  store %struct.gx_device_memory_s* %dev, %struct.gx_device_memory_s** %dev.addr, align 8
  %0 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %0, i32 0, i32 3
  %1 = load i32, i32* %width, align 4
  %2 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8
  %bits_per_color_pixel = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %2, i32 0, i32 9
  %3 = load i32, i32* %bits_per_color_pixel, align 4
  %mul = mul nsw i32 %1, %3
  %add = add nsw i32 %mul, 7
  %shr = ashr i32 %add, 3
  ret i32 %shr
}

; Function Attrs: nounwind uwtable
define i32 @mem_copy_scan_lines(%struct.gx_device_memory_s* %dev, i32 %start_y, i8* %str, i32 %size) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_memory_s*, align 8
  %start_y.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %src_line = alloca i8**, align 8
  %src = alloca i8*, align 8
  %offset = alloca i32, align 4
  %bytes_per_line = alloca i32, align 4
  %dest = alloca i8*, align 8
  %y = alloca i32, align 4
  %count = alloca i32, align 4
  %part = alloca i32, align 4
  %part_size = alloca i32, align 4
  store %struct.gx_device_memory_s* %dev, %struct.gx_device_memory_s** %dev.addr, align 8
  store i32 %start_y, i32* %start_y.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8
  %call = call i32 @mem_bytes_per_scan_line(%struct.gx_device_memory_s* %0)
  store i32 %call, i32* %bytes_per_line, align 4
  %1 = load i8*, i8** %str.addr, align 8
  store i8* %1, i8** %dest, align 8
  %2 = load i32, i32* %start_y.addr, align 4
  store i32 %2, i32* %y, align 4
  %3 = load i32, i32* %size.addr, align 4
  %4 = load i32, i32* %bytes_per_line, align 4
  %div = udiv i32 %3, %4
  %5 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %5, i32 0, i32 4
  %6 = load i32, i32* %height, align 4
  %7 = load i32, i32* %y, align 4
  %sub = sub nsw i32 %6, %7
  %cmp = icmp ult i32 %div, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load i32, i32* %size.addr, align 4
  %9 = load i32, i32* %bytes_per_line, align 4
  %div1 = udiv i32 %8, %9
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8
  %height2 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %10, i32 0, i32 4
  %11 = load i32, i32* %height2, align 4
  %12 = load i32, i32* %y, align 4
  %sub3 = sub nsw i32 %11, %12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div1, %cond.true ], [ %sub3, %cond.false ]
  store i32 %cond, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %13 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8
  %bring_in_proc = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %13, i32 0, i32 15
  %14 = load i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)** %bring_in_proc, align 8
  %15 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8
  %16 = load i32, i32* %y, align 4
  %17 = load i32, i32* %bytes_per_line, align 4
  %18 = load i32, i32* %count, align 4
  %call4 = call i32 %14(%struct.gx_device_memory_s* %15, i32 0, i32 %16, i32 %17, i32 %18, i32 0)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i32, i32* %count, align 4
  %shr = lshr i32 %19, 1
  store i32 %shr, i32* %part, align 4
  %20 = load i32, i32* %part, align 4
  %21 = load i32, i32* %bytes_per_line, align 4
  %mul = mul i32 %20, %21
  store i32 %mul, i32* %part_size, align 4
  %22 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8
  %23 = load i32, i32* %y, align 4
  %24 = load i8*, i8** %dest, align 8
  %25 = load i32, i32* %part_size, align 4
  %call6 = call i32 @mem_copy_scan_lines(%struct.gx_device_memory_s* %22, i32 %23, i8* %24, i32 %25)
  %26 = load i32, i32* %part_size, align 4
  %27 = load i8*, i8** %dest, align 8
  %idx.ext = zext i32 %26 to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8
  %28 = load i32, i32* %part, align 4
  %29 = load i32, i32* %y, align 4
  %add = add i32 %29, %28
  store i32 %add, i32* %y, align 4
  %30 = load i32, i32* %part, align 4
  %31 = load i32, i32* %count, align 4
  %sub7 = sub i32 %31, %30
  store i32 %sub7, i32* %count, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %32 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %32, i32 0, i32 14
  %33 = load i8**, i8*** %line_ptrs, align 8
  %34 = load i32, i32* %y, align 4
  %idx.ext8 = sext i32 %34 to i64
  %add.ptr9 = getelementptr inbounds i8*, i8** %33, i64 %idx.ext8
  store i8** %add.ptr9, i8*** %src_line, align 8
  %35 = load i8**, i8*** %src_line, align 8
  %36 = load i8*, i8** %35, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %36, i64 0
  store i8* %add.ptr10, i8** %src, align 8
  br label %while.cond.11

while.cond.11:                                    ; preds = %while.body.13, %while.end
  %37 = load i32, i32* %count, align 4
  %dec = add i32 %37, -1
  store i32 %dec, i32* %count, align 4
  %cmp12 = icmp ne i32 %37, 0
  br i1 %cmp12, label %while.body.13, label %while.end.17

while.body.13:                                    ; preds = %while.cond.11
  %38 = load i8*, i8** %dest, align 8
  %39 = load i8*, i8** %src, align 8
  %40 = load i32, i32* %bytes_per_line, align 4
  %conv = zext i32 %40 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 %conv, i32 1, i1 false)
  %41 = load i8**, i8*** %src_line, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %41, i32 1
  store i8** %incdec.ptr, i8*** %src_line, align 8
  %42 = load i8**, i8*** %src_line, align 8
  %43 = load i8*, i8** %42, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %43, i64 0
  store i8* %add.ptr14, i8** %src, align 8
  %44 = load i32, i32* %bytes_per_line, align 4
  %45 = load i8*, i8** %dest, align 8
  %idx.ext15 = zext i32 %44 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %45, i64 %idx.ext15
  store i8* %add.ptr16, i8** %dest, align 8
  %46 = load i32, i32* %y, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %y, align 4
  br label %while.cond.11

while.end.17:                                     ; preds = %while.cond.11
  %47 = load i32, i32* %y, align 4
  %48 = load i32, i32* %start_y.addr, align 4
  %sub18 = sub nsw i32 %47, %48
  ret i32 %sub18
}

; Function Attrs: nounwind uwtable
define i32 @mem_no_fault_proc(%struct.gx_device_memory_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i32 %writing) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_memory_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %writing.addr = alloca i32, align 4
  store %struct.gx_device_memory_s* %dev, %struct.gx_device_memory_s** %dev.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i32 %writing, i32* %writing.addr, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @mem_fill_recover(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color, i32 %fault) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %fault.addr = alloca i32, align 4
  %nx = alloca i32, align 4
  %nw = alloca i32, align 4
  %ny = alloca i32, align 4
  %nh = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i64 %color, i64* %color.addr, align 8
  store i32 %fault, i32* %fault.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  store i32 %0, i32* %nx, align 4
  %1 = load i32, i32* %w.addr, align 4
  store i32 %1, i32* %nw, align 4
  %2 = load i32, i32* %y.addr, align 4
  store i32 %2, i32* %ny, align 4
  %3 = load i32, i32* %h.addr, align 4
  store i32 %3, i32* %nh, align 4
  %4 = load i32, i32* %fault.addr, align 4
  switch i32 %4, label %sw.default [
    i32 -1, label %sw.bb
    i32 -2, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %5 = load i32, i32* %nw, align 4
  %shr = ashr i32 %5, 1
  store i32 %shr, i32* %nw, align 4
  %6 = load i32, i32* %nx, align 4
  %add = add nsw i32 %6, %shr
  store i32 %add, i32* %nx, align 4
  %7 = load i32, i32* %nw, align 4
  %8 = load i32, i32* %w.addr, align 4
  %sub = sub nsw i32 %8, %7
  store i32 %sub, i32* %w.addr, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %9 = load i32, i32* %nh, align 4
  %shr2 = ashr i32 %9, 1
  store i32 %shr2, i32* %nh, align 4
  %10 = load i32, i32* %ny, align 4
  %add3 = add nsw i32 %10, %shr2
  store i32 %add3, i32* %ny, align 4
  %11 = load i32, i32* %nh, align 4
  %12 = load i32, i32* %h.addr, align 4
  %sub4 = sub nsw i32 %12, %11
  store i32 %sub4, i32* %h.addr, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %13 = load i32, i32* %fault.addr, align 4
  store i32 %13, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.1, %sw.bb
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 1
  %15 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs, align 8
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %15, i32 0, i32 7
  %16 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %18 = load i32, i32* %x.addr, align 4
  %19 = load i32, i32* %y.addr, align 4
  %20 = load i32, i32* %w.addr, align 4
  %21 = load i32, i32* %h.addr, align 4
  %22 = load i64, i64* %color.addr, align 8
  %call = call i32 %16(%struct.gx_device_s* %17, i32 %18, i32 %19, i32 %20, i32 %21, i64 %22)
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %procs5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 1
  %24 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs5, align 8
  %fill_rectangle6 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %24, i32 0, i32 7
  %25 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle6, align 8
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %27 = load i32, i32* %nx, align 4
  %28 = load i32, i32* %ny, align 4
  %29 = load i32, i32* %nw, align 4
  %30 = load i32, i32* %nh, align 4
  %31 = load i64, i64* %color.addr, align 8
  %call7 = call i32 %25(%struct.gx_device_s* %26, i32 %27, i32 %28, i32 %29, i32 %30, i64 %31)
  store i32 %call7, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define i32 @mem_copy_mono_recover(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %raster, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one, i32 %fault) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %zero.addr = alloca i64, align 8
  %one.addr = alloca i64, align 8
  %fault.addr = alloca i32, align 4
  %nx = alloca i32, align 4
  %nw = alloca i32, align 4
  %ny = alloca i32, align 4
  %nh = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i8* %base, i8** %base.addr, align 8
  store i32 %sourcex, i32* %sourcex.addr, align 4
  store i32 %raster, i32* %raster.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i64 %zero, i64* %zero.addr, align 8
  store i64 %one, i64* %one.addr, align 8
  store i32 %fault, i32* %fault.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  store i32 %0, i32* %nx, align 4
  %1 = load i32, i32* %w.addr, align 4
  store i32 %1, i32* %nw, align 4
  %2 = load i32, i32* %y.addr, align 4
  store i32 %2, i32* %ny, align 4
  %3 = load i32, i32* %h.addr, align 4
  store i32 %3, i32* %nh, align 4
  %4 = load i32, i32* %fault.addr, align 4
  switch i32 %4, label %sw.default [
    i32 -1, label %sw.bb
    i32 -2, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %5 = load i32, i32* %nw, align 4
  %shr = ashr i32 %5, 1
  store i32 %shr, i32* %nw, align 4
  %6 = load i32, i32* %nx, align 4
  %add = add nsw i32 %6, %shr
  store i32 %add, i32* %nx, align 4
  %7 = load i32, i32* %nw, align 4
  %8 = load i32, i32* %w.addr, align 4
  %sub = sub nsw i32 %8, %7
  store i32 %sub, i32* %w.addr, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %9 = load i32, i32* %nh, align 4
  %shr2 = ashr i32 %9, 1
  store i32 %shr2, i32* %nh, align 4
  %10 = load i32, i32* %ny, align 4
  %add3 = add nsw i32 %10, %shr2
  store i32 %add3, i32* %ny, align 4
  %11 = load i32, i32* %nh, align 4
  %12 = load i32, i32* %h.addr, align 4
  %sub4 = sub nsw i32 %12, %11
  store i32 %sub4, i32* %h.addr, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %13 = load i32, i32* %fault.addr, align 4
  store i32 %13, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.1, %sw.bb
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 1
  %15 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs, align 8
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %15, i32 0, i32 9
  %16 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %18 = load i8*, i8** %base.addr, align 8
  %19 = load i32, i32* %sourcex.addr, align 4
  %20 = load i32, i32* %raster.addr, align 4
  %21 = load i32, i32* %x.addr, align 4
  %22 = load i32, i32* %y.addr, align 4
  %23 = load i32, i32* %w.addr, align 4
  %24 = load i32, i32* %h.addr, align 4
  %25 = load i64, i64* %zero.addr, align 8
  %26 = load i64, i64* %one.addr, align 8
  %call = call i32 %16(%struct.gx_device_s* %17, i8* %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i64 %25, i64 %26)
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %procs5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 1
  %28 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs5, align 8
  %copy_mono6 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %28, i32 0, i32 9
  %29 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)** %copy_mono6, align 8
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %31 = load i8*, i8** %base.addr, align 8
  %32 = load i32, i32* %sourcex.addr, align 4
  %33 = load i32, i32* %raster.addr, align 4
  %34 = load i32, i32* %nx, align 4
  %35 = load i32, i32* %ny, align 4
  %36 = load i32, i32* %nw, align 4
  %37 = load i32, i32* %nh, align 4
  %38 = load i64, i64* %zero.addr, align 8
  %39 = load i64, i64* %one.addr, align 8
  %call7 = call i32 %29(%struct.gx_device_s* %30, i8* %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i64 %38, i64 %39)
  store i32 %call7, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define i32 @mem_copy_color_recover(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %raster, i32 %x, i32 %y, i32 %w, i32 %h, i32 %fault) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fault.addr = alloca i32, align 4
  %nx = alloca i32, align 4
  %nw = alloca i32, align 4
  %ny = alloca i32, align 4
  %nh = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i8* %base, i8** %base.addr, align 8
  store i32 %sourcex, i32* %sourcex.addr, align 4
  store i32 %raster, i32* %raster.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i32 %fault, i32* %fault.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  store i32 %0, i32* %nx, align 4
  %1 = load i32, i32* %w.addr, align 4
  store i32 %1, i32* %nw, align 4
  %2 = load i32, i32* %y.addr, align 4
  store i32 %2, i32* %ny, align 4
  %3 = load i32, i32* %h.addr, align 4
  store i32 %3, i32* %nh, align 4
  %4 = load i32, i32* %fault.addr, align 4
  switch i32 %4, label %sw.default [
    i32 -1, label %sw.bb
    i32 -2, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %5 = load i32, i32* %nw, align 4
  %shr = ashr i32 %5, 1
  store i32 %shr, i32* %nw, align 4
  %6 = load i32, i32* %nx, align 4
  %add = add nsw i32 %6, %shr
  store i32 %add, i32* %nx, align 4
  %7 = load i32, i32* %nw, align 4
  %8 = load i32, i32* %w.addr, align 4
  %sub = sub nsw i32 %8, %7
  store i32 %sub, i32* %w.addr, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %9 = load i32, i32* %nh, align 4
  %shr2 = ashr i32 %9, 1
  store i32 %shr2, i32* %nh, align 4
  %10 = load i32, i32* %ny, align 4
  %add3 = add nsw i32 %10, %shr2
  store i32 %add3, i32* %ny, align 4
  %11 = load i32, i32* %nh, align 4
  %12 = load i32, i32* %h.addr, align 4
  %sub4 = sub nsw i32 %12, %11
  store i32 %sub4, i32* %h.addr, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %13 = load i32, i32* %fault.addr, align 4
  store i32 %13, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.1, %sw.bb
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 1
  %15 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs, align 8
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %15, i32 0, i32 10
  %16 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)** %copy_color, align 8
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %18 = load i8*, i8** %base.addr, align 8
  %19 = load i32, i32* %sourcex.addr, align 4
  %20 = load i32, i32* %raster.addr, align 4
  %21 = load i32, i32* %x.addr, align 4
  %22 = load i32, i32* %y.addr, align 4
  %23 = load i32, i32* %w.addr, align 4
  %24 = load i32, i32* %h.addr, align 4
  %call = call i32 %16(%struct.gx_device_s* %17, i8* %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24)
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %procs5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 1
  %26 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs5, align 8
  %copy_color6 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %26, i32 0, i32 10
  %27 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)** %copy_color6, align 8
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %29 = load i8*, i8** %base.addr, align 8
  %30 = load i32, i32* %sourcex.addr, align 4
  %31 = load i32, i32* %raster.addr, align 4
  %32 = load i32, i32* %nx, align 4
  %33 = load i32, i32* %ny, align 4
  %34 = load i32, i32* %nw, align 4
  %35 = load i32, i32* %nh, align 4
  %call7 = call i32 %27(%struct.gx_device_s* %28, i8* %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35)
  store i32 %call7, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare i32 @gx_default_sync_output(%struct.gx_device_s*) #2

declare i32 @gx_default_output_page(%struct.gx_device_s*) #2

declare i32 @gx_default_close_device(%struct.gx_device_s*) #2

declare i64 @gx_default_map_rgb_color(%struct.gx_device_s*, i16 zeroext, i16 zeroext, i16 zeroext) #2

declare i32 @gx_default_map_color_rgb(%struct.gx_device_s*, i64, i16*) #2

; Function Attrs: nounwind uwtable
define i32 @mem_mono_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %bit = alloca i32, align 4
  %right_mask = alloca i8, align 1
  %fill = alloca i8, align 1
  %dest_line = alloca i8**, align 8
  %dest = alloca i8*, align 8
  %offset = alloca i32, align 4
  %fault = alloca i32, align 4
  %byte_count = alloca i32, align 4
  %mask = alloca i8, align 1
  %line_count = alloca i32, align 4
  %ptr_line = alloca i8**, align 8
  %ptr = alloca i8*, align 8
  %line_count55 = alloca i32, align 4
  %ptr_line56 = alloca i8**, align 8
  %ptr57 = alloca i8*, align 8
  %line_count86 = alloca i32, align 4
  %ptr_line87 = alloca i8**, align 8
  %ptr88 = alloca i8*, align 8
  %line_count108 = alloca i32, align 4
  %ptr_line109 = alloca i8**, align 8
  %ptr110 = alloca i8*, align 8
  %line_count126 = alloca i32, align 4
  %ptr_line127 = alloca i8**, align 8
  %ptr128 = alloca i8*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i64 %color, i64* %color.addr, align 8
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %1 = bitcast %struct.gx_device_s* %0 to %struct.gx_device_memory_s*
  %bring_in_proc = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i32 0, i32 15
  %2 = load i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)** %bring_in_proc, align 8
  %cmp = icmp ne i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)* %2, @mem_no_fault_proc
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %4 = bitcast %struct.gx_device_s* %3 to %struct.gx_device_memory_s*
  %bring_in_proc1 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %4, i32 0, i32 15
  %5 = load i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)** %bring_in_proc1, align 8
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %7 = bitcast %struct.gx_device_s* %6 to %struct.gx_device_memory_s*
  %8 = load i32, i32* %x.addr, align 4
  %shr = ashr i32 %8, 3
  %9 = load i32, i32* %y.addr, align 4
  %10 = load i32, i32* %x.addr, align 4
  %11 = load i32, i32* %w.addr, align 4
  %add = add nsw i32 %10, %11
  %add2 = add nsw i32 %add, 7
  %shr3 = ashr i32 %add2, 3
  %12 = load i32, i32* %x.addr, align 4
  %shr4 = ashr i32 %12, 3
  %sub = sub nsw i32 %shr3, %shr4
  %13 = load i32, i32* %h.addr, align 4
  %call = call i32 %5(%struct.gx_device_memory_s* %7, i32 %shr, i32 %9, i32 %sub, i32 %13, i32 1)
  store i32 %call, i32* %fault, align 4
  %14 = load i32, i32* %fault, align 4
  %cmp5 = icmp slt i32 %14, 0
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %16 = load i32, i32* %x.addr, align 4
  %17 = load i32, i32* %y.addr, align 4
  %18 = load i32, i32* %w.addr, align 4
  %19 = load i32, i32* %h.addr, align 4
  %20 = load i64, i64* %color.addr, align 8
  %21 = load i32, i32* %fault, align 4
  %call7 = call i32 @mem_fill_recover(%struct.gx_device_s* %15, i32 %16, i32 %17, i32 %18, i32 %19, i64 %20, i32 %21)
  store i32 %call7, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %22 = load i32, i32* %w.addr, align 4
  %cmp9 = icmp sle i32 %22, 0
  br i1 %cmp9, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.8
  %23 = load i32, i32* %h.addr, align 4
  %cmp10 = icmp sle i32 %23, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false, %if.end.8
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %lor.lhs.false
  %24 = load i32, i32* %x.addr, align 4
  %cmp13 = icmp slt i32 %24, 0
  br i1 %cmp13, label %if.then.22, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %if.end.12
  %25 = load i32, i32* %x.addr, align 4
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %27 = bitcast %struct.gx_device_s* %26 to %struct.gx_device_memory_s*
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %27, i32 0, i32 3
  %28 = load i32, i32* %width, align 4
  %29 = load i32, i32* %w.addr, align 4
  %sub15 = sub nsw i32 %28, %29
  %cmp16 = icmp sgt i32 %25, %sub15
  br i1 %cmp16, label %if.then.22, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.14
  %30 = load i32, i32* %y.addr, align 4
  %cmp18 = icmp slt i32 %30, 0
  br i1 %cmp18, label %if.then.22, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.17
  %31 = load i32, i32* %y.addr, align 4
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %33 = bitcast %struct.gx_device_s* %32 to %struct.gx_device_memory_s*
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %33, i32 0, i32 4
  %34 = load i32, i32* %height, align 4
  %35 = load i32, i32* %h.addr, align 4
  %sub20 = sub nsw i32 %34, %35
  %cmp21 = icmp sgt i32 %31, %sub20
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %lor.lhs.false.19, %lor.lhs.false.17, %lor.lhs.false.14, %if.end.12
  store i32 -1, i32* %retval
  br label %return

if.end.23:                                        ; preds = %lor.lhs.false.19
  %36 = load i32, i32* %x.addr, align 4
  %shr24 = ashr i32 %36, 3
  %conv = sext i32 %shr24 to i64
  %conv25 = trunc i64 %conv to i32
  store i32 %conv25, i32* %offset, align 4
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %38 = bitcast %struct.gx_device_s* %37 to %struct.gx_device_memory_s*
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %38, i32 0, i32 14
  %39 = load i8**, i8*** %line_ptrs, align 8
  %40 = load i32, i32* %y.addr, align 4
  %idx.ext = sext i32 %40 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %39, i64 %idx.ext
  store i8** %add.ptr, i8*** %dest_line, align 8
  %41 = load i8**, i8*** %dest_line, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* %offset, align 4
  %idx.ext26 = sext i32 %43 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %42, i64 %idx.ext26
  store i8* %add.ptr27, i8** %dest, align 8
  %44 = load i64, i64* %color.addr, align 8
  switch i64 %44, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb.29
    i64 -1, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %if.end.23
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %46 = bitcast %struct.gx_device_s* %45 to %struct.gx_device_memory_s*
  %invert = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %46, i32 0, i32 16
  %47 = load i32, i32* %invert, align 4
  %conv28 = trunc i32 %47 to i8
  store i8 %conv28, i8* %fill, align 1
  br label %sw.epilog

sw.bb.29:                                         ; preds = %if.end.23
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %49 = bitcast %struct.gx_device_s* %48 to %struct.gx_device_memory_s*
  %invert30 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %49, i32 0, i32 16
  %50 = load i32, i32* %invert30, align 4
  %neg = xor i32 %50, -1
  %conv31 = trunc i32 %neg to i8
  store i8 %conv31, i8* %fill, align 1
  br label %sw.epilog

sw.bb.32:                                         ; preds = %if.end.23
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end.23
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.29, %sw.bb
  %51 = load i32, i32* %x.addr, align 4
  %and = and i32 %51, 7
  store i32 %and, i32* %bit, align 4
  %52 = load i32, i32* %bit, align 4
  %53 = load i32, i32* %w.addr, align 4
  %add33 = add i32 %52, %53
  %cmp34 = icmp ule i32 %add33, 8
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %sw.epilog
  %54 = load i32, i32* %w.addr, align 4
  %shr37 = ashr i32 255, %54
  %sub38 = sub nsw i32 255, %shr37
  %55 = load i32, i32* %bit, align 4
  %shr39 = ashr i32 %sub38, %55
  %conv40 = trunc i32 %shr39 to i8
  store i8 %conv40, i8* %right_mask, align 1
  br label %if.end.103

if.else:                                          ; preds = %sw.epilog
  %56 = load i32, i32* %bit, align 4
  %tobool = icmp ne i32 %56, 0
  br i1 %tobool, label %if.then.41, label %if.end.77

if.then.41:                                       ; preds = %if.else
  %57 = load i32, i32* %bit, align 4
  %shr42 = ashr i32 255, %57
  %conv43 = trunc i32 %shr42 to i8
  store i8 %conv43, i8* %mask, align 1
  %58 = load i8, i8* %fill, align 1
  %tobool44 = icmp ne i8 %58, 0
  br i1 %tobool44, label %if.then.45, label %if.else.54

if.then.45:                                       ; preds = %if.then.41
  %59 = load i32, i32* %h.addr, align 4
  store i32 %59, i32* %line_count, align 4
  %60 = load i8**, i8*** %dest_line, align 8
  store i8** %60, i8*** %ptr_line, align 8
  %61 = load i8**, i8*** %ptr_line, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %offset, align 4
  %idx.ext46 = sext i32 %63 to i64
  %add.ptr47 = getelementptr inbounds i8, i8* %62, i64 %idx.ext46
  store i8* %add.ptr47, i8** %ptr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.45
  %64 = load i8, i8* %mask, align 1
  %conv48 = zext i8 %64 to i32
  %65 = load i8*, i8** %ptr, align 8
  %66 = load i8, i8* %65, align 1
  %conv49 = zext i8 %66 to i32
  %or = or i32 %conv49, %conv48
  %conv50 = trunc i32 %or to i8
  store i8 %conv50, i8* %65, align 1
  %67 = load i8**, i8*** %ptr_line, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %67, i32 1
  store i8** %incdec.ptr, i8*** %ptr_line, align 8
  %68 = load i8**, i8*** %ptr_line, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* %offset, align 4
  %idx.ext51 = sext i32 %70 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %69, i64 %idx.ext51
  store i8* %add.ptr52, i8** %ptr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %71 = load i32, i32* %line_count, align 4
  %dec = add nsw i32 %71, -1
  store i32 %dec, i32* %line_count, align 4
  %tobool53 = icmp ne i32 %dec, 0
  br i1 %tobool53, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.73

if.else.54:                                       ; preds = %if.then.41
  %72 = load i32, i32* %h.addr, align 4
  store i32 %72, i32* %line_count55, align 4
  %73 = load i8**, i8*** %dest_line, align 8
  store i8** %73, i8*** %ptr_line56, align 8
  %74 = load i8**, i8*** %ptr_line56, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %offset, align 4
  %idx.ext58 = sext i32 %76 to i64
  %add.ptr59 = getelementptr inbounds i8, i8* %75, i64 %idx.ext58
  store i8* %add.ptr59, i8** %ptr57, align 8
  br label %do.body.60

do.body.60:                                       ; preds = %do.cond.69, %if.else.54
  %77 = load i8, i8* %mask, align 1
  %conv61 = zext i8 %77 to i32
  %neg62 = xor i32 %conv61, -1
  %78 = load i8*, i8** %ptr57, align 8
  %79 = load i8, i8* %78, align 1
  %conv63 = zext i8 %79 to i32
  %and64 = and i32 %conv63, %neg62
  %conv65 = trunc i32 %and64 to i8
  store i8 %conv65, i8* %78, align 1
  %80 = load i8**, i8*** %ptr_line56, align 8
  %incdec.ptr66 = getelementptr inbounds i8*, i8** %80, i32 1
  store i8** %incdec.ptr66, i8*** %ptr_line56, align 8
  %81 = load i8**, i8*** %ptr_line56, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %offset, align 4
  %idx.ext67 = sext i32 %83 to i64
  %add.ptr68 = getelementptr inbounds i8, i8* %82, i64 %idx.ext67
  store i8* %add.ptr68, i8** %ptr57, align 8
  br label %do.cond.69

do.cond.69:                                       ; preds = %do.body.60
  %84 = load i32, i32* %line_count55, align 4
  %dec70 = add nsw i32 %84, -1
  store i32 %dec70, i32* %line_count55, align 4
  %tobool71 = icmp ne i32 %dec70, 0
  br i1 %tobool71, label %do.body.60, label %do.end.72

do.end.72:                                        ; preds = %do.cond.69
  br label %if.end.73

if.end.73:                                        ; preds = %do.end.72, %do.end
  %85 = load i32, i32* %offset, align 4
  %add74 = add nsw i32 %85, 1
  store i32 %add74, i32* %offset, align 4
  %86 = load i32, i32* %bit, align 4
  %sub75 = sub i32 %86, 8
  %87 = load i32, i32* %w.addr, align 4
  %add76 = add i32 %87, %sub75
  store i32 %add76, i32* %w.addr, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.73, %if.else
  %88 = load i32, i32* %w.addr, align 4
  %and78 = and i32 %88, 7
  %shr79 = ashr i32 255, %and78
  %sub80 = sub nsw i32 255, %shr79
  %conv81 = trunc i32 %sub80 to i8
  store i8 %conv81, i8* %right_mask, align 1
  %89 = load i32, i32* %w.addr, align 4
  %shr82 = ashr i32 %89, 3
  store i32 %shr82, i32* %byte_count, align 4
  %cmp83 = icmp ne i32 %shr82, 0
  br i1 %cmp83, label %if.then.85, label %if.end.102

if.then.85:                                       ; preds = %if.end.77
  %90 = load i32, i32* %h.addr, align 4
  store i32 %90, i32* %line_count86, align 4
  %91 = load i8**, i8*** %dest_line, align 8
  store i8** %91, i8*** %ptr_line87, align 8
  %92 = load i8**, i8*** %ptr_line87, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* %offset, align 4
  %idx.ext89 = sext i32 %94 to i64
  %add.ptr90 = getelementptr inbounds i8, i8* %93, i64 %idx.ext89
  store i8* %add.ptr90, i8** %ptr88, align 8
  br label %do.body.91

do.body.91:                                       ; preds = %do.cond.97, %if.then.85
  %95 = load i8*, i8** %ptr88, align 8
  %96 = load i8, i8* %fill, align 1
  %conv92 = zext i8 %96 to i32
  %97 = trunc i32 %conv92 to i8
  %98 = load i32, i32* %byte_count, align 4
  %conv93 = sext i32 %98 to i64
  call void @llvm.memset.p0i8.i64(i8* %95, i8 %97, i64 %conv93, i32 1, i1 false)
  %99 = load i8**, i8*** %ptr_line87, align 8
  %incdec.ptr94 = getelementptr inbounds i8*, i8** %99, i32 1
  store i8** %incdec.ptr94, i8*** %ptr_line87, align 8
  %100 = load i8**, i8*** %ptr_line87, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = load i32, i32* %offset, align 4
  %idx.ext95 = sext i32 %102 to i64
  %add.ptr96 = getelementptr inbounds i8, i8* %101, i64 %idx.ext95
  store i8* %add.ptr96, i8** %ptr88, align 8
  br label %do.cond.97

do.cond.97:                                       ; preds = %do.body.91
  %103 = load i32, i32* %line_count86, align 4
  %dec98 = add nsw i32 %103, -1
  store i32 %dec98, i32* %line_count86, align 4
  %tobool99 = icmp ne i32 %dec98, 0
  br i1 %tobool99, label %do.body.91, label %do.end.100

do.end.100:                                       ; preds = %do.cond.97
  %104 = load i32, i32* %byte_count, align 4
  %105 = load i32, i32* %offset, align 4
  %add101 = add nsw i32 %105, %104
  store i32 %add101, i32* %offset, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %do.end.100, %if.end.77
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.then.36
  %106 = load i8, i8* %right_mask, align 1
  %tobool104 = icmp ne i8 %106, 0
  br i1 %tobool104, label %if.then.105, label %if.end.145

if.then.105:                                      ; preds = %if.end.103
  %107 = load i8, i8* %fill, align 1
  %tobool106 = icmp ne i8 %107, 0
  br i1 %tobool106, label %if.then.107, label %if.else.125

if.then.107:                                      ; preds = %if.then.105
  %108 = load i32, i32* %h.addr, align 4
  store i32 %108, i32* %line_count108, align 4
  %109 = load i8**, i8*** %dest_line, align 8
  store i8** %109, i8*** %ptr_line109, align 8
  %110 = load i8**, i8*** %ptr_line109, align 8
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* %offset, align 4
  %idx.ext111 = sext i32 %112 to i64
  %add.ptr112 = getelementptr inbounds i8, i8* %111, i64 %idx.ext111
  store i8* %add.ptr112, i8** %ptr110, align 8
  br label %do.body.113

do.body.113:                                      ; preds = %do.cond.121, %if.then.107
  %113 = load i8, i8* %right_mask, align 1
  %conv114 = zext i8 %113 to i32
  %114 = load i8*, i8** %ptr110, align 8
  %115 = load i8, i8* %114, align 1
  %conv115 = zext i8 %115 to i32
  %or116 = or i32 %conv115, %conv114
  %conv117 = trunc i32 %or116 to i8
  store i8 %conv117, i8* %114, align 1
  %116 = load i8**, i8*** %ptr_line109, align 8
  %incdec.ptr118 = getelementptr inbounds i8*, i8** %116, i32 1
  store i8** %incdec.ptr118, i8*** %ptr_line109, align 8
  %117 = load i8**, i8*** %ptr_line109, align 8
  %118 = load i8*, i8** %117, align 8
  %119 = load i32, i32* %offset, align 4
  %idx.ext119 = sext i32 %119 to i64
  %add.ptr120 = getelementptr inbounds i8, i8* %118, i64 %idx.ext119
  store i8* %add.ptr120, i8** %ptr110, align 8
  br label %do.cond.121

do.cond.121:                                      ; preds = %do.body.113
  %120 = load i32, i32* %line_count108, align 4
  %dec122 = add nsw i32 %120, -1
  store i32 %dec122, i32* %line_count108, align 4
  %tobool123 = icmp ne i32 %dec122, 0
  br i1 %tobool123, label %do.body.113, label %do.end.124

do.end.124:                                       ; preds = %do.cond.121
  br label %if.end.144

if.else.125:                                      ; preds = %if.then.105
  %121 = load i32, i32* %h.addr, align 4
  store i32 %121, i32* %line_count126, align 4
  %122 = load i8**, i8*** %dest_line, align 8
  store i8** %122, i8*** %ptr_line127, align 8
  %123 = load i8**, i8*** %ptr_line127, align 8
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* %offset, align 4
  %idx.ext129 = sext i32 %125 to i64
  %add.ptr130 = getelementptr inbounds i8, i8* %124, i64 %idx.ext129
  store i8* %add.ptr130, i8** %ptr128, align 8
  br label %do.body.131

do.body.131:                                      ; preds = %do.cond.140, %if.else.125
  %126 = load i8, i8* %right_mask, align 1
  %conv132 = zext i8 %126 to i32
  %neg133 = xor i32 %conv132, -1
  %127 = load i8*, i8** %ptr128, align 8
  %128 = load i8, i8* %127, align 1
  %conv134 = zext i8 %128 to i32
  %and135 = and i32 %conv134, %neg133
  %conv136 = trunc i32 %and135 to i8
  store i8 %conv136, i8* %127, align 1
  %129 = load i8**, i8*** %ptr_line127, align 8
  %incdec.ptr137 = getelementptr inbounds i8*, i8** %129, i32 1
  store i8** %incdec.ptr137, i8*** %ptr_line127, align 8
  %130 = load i8**, i8*** %ptr_line127, align 8
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* %offset, align 4
  %idx.ext138 = sext i32 %132 to i64
  %add.ptr139 = getelementptr inbounds i8, i8* %131, i64 %idx.ext138
  store i8* %add.ptr139, i8** %ptr128, align 8
  br label %do.cond.140

do.cond.140:                                      ; preds = %do.body.131
  %133 = load i32, i32* %line_count126, align 4
  %dec141 = add nsw i32 %133, -1
  store i32 %dec141, i32* %line_count126, align 4
  %tobool142 = icmp ne i32 %dec141, 0
  br i1 %tobool142, label %do.body.131, label %do.end.143

do.end.143:                                       ; preds = %do.cond.140
  br label %if.end.144

if.end.144:                                       ; preds = %do.end.143, %do.end.124
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.end.103
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.145, %sw.default, %sw.bb.32, %if.then.22, %if.then.11, %if.then.6
  %134 = load i32, i32* %retval
  ret i32 %134
}

declare i32 @gx_default_tile_rectangle(%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64) #2

; Function Attrs: nounwind uwtable
define i32 @mem_mono_copy_mono(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %raster, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %zero.addr = alloca i64, align 8
  %one.addr = alloca i64, align 8
  %line = alloca i8*, align 8
  %sleft = alloca i32, align 4
  %dleft = alloca i32, align 4
  %mask = alloca i32, align 4
  %rmask = alloca i32, align 4
  %invert = alloca i32, align 4
  %zmask = alloca i32, align 4
  %omask = alloca i32, align 4
  %dest_line = alloca i8**, align 8
  %dest = alloca i8*, align 8
  %offset = alloca i32, align 4
  %fault = alloca i32, align 4
  %bptr = alloca i8*, align 8
  %count = alloca i32, align 4
  %optr = alloca i8*, align 8
  %bits = alloca i32, align 4
  %skew = alloca i32, align 4
  %cskew = alloca i32, align 4
  %bptr160 = alloca i8*, align 8
  %count161 = alloca i32, align 4
  %optr162 = alloca i8*, align 8
  %bits163 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i8* %base, i8** %base.addr, align 8
  store i32 %sourcex, i32* %sourcex.addr, align 4
  store i32 %raster, i32* %raster.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i64 %zero, i64* %zero.addr, align 8
  store i64 %one, i64* %one.addr, align 8
  %0 = load i64, i64* %one.addr, align 8
  %conv = trunc i64 %0 to i32
  %1 = load i64, i64* %zero.addr, align 8
  %conv1 = trunc i64 %1 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %3 = load i32, i32* %x.addr, align 4
  %4 = load i32, i32* %y.addr, align 4
  %5 = load i32, i32* %w.addr, align 4
  %6 = load i32, i32* %h.addr, align 4
  %7 = load i64, i64* %zero.addr, align 8
  %call = call i32 @mem_mono_fill_rectangle(%struct.gx_device_s* %2, i32 %3, i32 %4, i32 %5, i32 %6, i64 %7)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %9 = bitcast %struct.gx_device_s* %8 to %struct.gx_device_memory_s*
  %bring_in_proc = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %9, i32 0, i32 15
  %10 = load i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)** %bring_in_proc, align 8
  %cmp3 = icmp ne i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)* %10, @mem_no_fault_proc
  br i1 %cmp3, label %if.then.5, label %if.end.16

if.then.5:                                        ; preds = %if.end
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %12 = bitcast %struct.gx_device_s* %11 to %struct.gx_device_memory_s*
  %bring_in_proc6 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %12, i32 0, i32 15
  %13 = load i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)** %bring_in_proc6, align 8
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %15 = bitcast %struct.gx_device_s* %14 to %struct.gx_device_memory_s*
  %16 = load i32, i32* %x.addr, align 4
  %shr = ashr i32 %16, 3
  %17 = load i32, i32* %y.addr, align 4
  %18 = load i32, i32* %x.addr, align 4
  %19 = load i32, i32* %w.addr, align 4
  %add = add nsw i32 %18, %19
  %add7 = add nsw i32 %add, 7
  %shr8 = ashr i32 %add7, 3
  %20 = load i32, i32* %x.addr, align 4
  %shr9 = ashr i32 %20, 3
  %sub = sub nsw i32 %shr8, %shr9
  %21 = load i32, i32* %h.addr, align 4
  %call10 = call i32 %13(%struct.gx_device_memory_s* %15, i32 %shr, i32 %17, i32 %sub, i32 %21, i32 1)
  store i32 %call10, i32* %fault, align 4
  %22 = load i32, i32* %fault, align 4
  %cmp11 = icmp slt i32 %22, 0
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.then.5
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %24 = load i8*, i8** %base.addr, align 8
  %25 = load i32, i32* %sourcex.addr, align 4
  %26 = load i32, i32* %raster.addr, align 4
  %27 = load i32, i32* %x.addr, align 4
  %28 = load i32, i32* %y.addr, align 4
  %29 = load i32, i32* %w.addr, align 4
  %30 = load i32, i32* %h.addr, align 4
  %31 = load i64, i64* %zero.addr, align 8
  %32 = load i64, i64* %one.addr, align 8
  %33 = load i32, i32* %fault, align 4
  %call14 = call i32 @mem_copy_mono_recover(%struct.gx_device_s* %23, i8* %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i64 %31, i64 %32, i32 %33)
  store i32 %call14, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.5
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end
  %34 = load i32, i32* %w.addr, align 4
  %cmp17 = icmp sle i32 %34, 0
  br i1 %cmp17, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.16
  %35 = load i32, i32* %h.addr, align 4
  %cmp19 = icmp sle i32 %35, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %lor.lhs.false, %if.end.16
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %lor.lhs.false
  %36 = load i32, i32* %x.addr, align 4
  %cmp23 = icmp slt i32 %36, 0
  br i1 %cmp23, label %if.then.36, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %if.end.22
  %37 = load i32, i32* %x.addr, align 4
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %39 = bitcast %struct.gx_device_s* %38 to %struct.gx_device_memory_s*
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %39, i32 0, i32 3
  %40 = load i32, i32* %width, align 4
  %41 = load i32, i32* %w.addr, align 4
  %sub26 = sub nsw i32 %40, %41
  %cmp27 = icmp sgt i32 %37, %sub26
  br i1 %cmp27, label %if.then.36, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false.25
  %42 = load i32, i32* %y.addr, align 4
  %cmp30 = icmp slt i32 %42, 0
  br i1 %cmp30, label %if.then.36, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.29
  %43 = load i32, i32* %y.addr, align 4
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %45 = bitcast %struct.gx_device_s* %44 to %struct.gx_device_memory_s*
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %45, i32 0, i32 4
  %46 = load i32, i32* %height, align 4
  %47 = load i32, i32* %h.addr, align 4
  %sub33 = sub nsw i32 %46, %47
  %cmp34 = icmp sgt i32 %43, %sub33
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %lor.lhs.false.32, %lor.lhs.false.29, %lor.lhs.false.25, %if.end.22
  store i32 -1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %lor.lhs.false.32
  %48 = load i32, i32* %x.addr, align 4
  %shr38 = ashr i32 %48, 3
  %conv39 = sext i32 %shr38 to i64
  %conv40 = trunc i64 %conv39 to i32
  store i32 %conv40, i32* %offset, align 4
  %49 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %50 = bitcast %struct.gx_device_s* %49 to %struct.gx_device_memory_s*
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %50, i32 0, i32 14
  %51 = load i8**, i8*** %line_ptrs, align 8
  %52 = load i32, i32* %y.addr, align 4
  %idx.ext = sext i32 %52 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %51, i64 %idx.ext
  store i8** %add.ptr, i8*** %dest_line, align 8
  %53 = load i8**, i8*** %dest_line, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %offset, align 4
  %idx.ext41 = sext i32 %55 to i64
  %add.ptr42 = getelementptr inbounds i8, i8* %54, i64 %idx.ext41
  store i8* %add.ptr42, i8** %dest, align 8
  %56 = load i8*, i8** %base.addr, align 8
  %57 = load i32, i32* %sourcex.addr, align 4
  %shr43 = ashr i32 %57, 3
  %idx.ext44 = sext i32 %shr43 to i64
  %add.ptr45 = getelementptr inbounds i8, i8* %56, i64 %idx.ext44
  store i8* %add.ptr45, i8** %line, align 8
  %58 = load i32, i32* %sourcex.addr, align 4
  %and = and i32 %58, 7
  %sub46 = sub nsw i32 8, %and
  store i32 %sub46, i32* %sleft, align 4
  %59 = load i32, i32* %x.addr, align 4
  %and47 = and i32 %59, 7
  %sub48 = sub nsw i32 8, %and47
  store i32 %sub48, i32* %dleft, align 4
  %60 = load i32, i32* %dleft, align 4
  %sub49 = sub nsw i32 8, %60
  %shr50 = ashr i32 255, %sub49
  store i32 %shr50, i32* %mask, align 4
  %61 = load i32, i32* %w.addr, align 4
  %62 = load i32, i32* %dleft, align 4
  %cmp51 = icmp slt i32 %61, %62
  br i1 %cmp51, label %if.then.53, label %if.else

if.then.53:                                       ; preds = %if.end.37
  %63 = load i32, i32* %mask, align 4
  %64 = load i32, i32* %w.addr, align 4
  %shr54 = lshr i32 %63, %64
  %65 = load i32, i32* %mask, align 4
  %sub55 = sub i32 %65, %shr54
  store i32 %sub55, i32* %mask, align 4
  br label %if.end.60

if.else:                                          ; preds = %if.end.37
  %66 = load i32, i32* %w.addr, align 4
  %67 = load i32, i32* %dleft, align 4
  %sub56 = sub nsw i32 %66, %67
  %and57 = and i32 %sub56, 7
  %shr58 = ashr i32 255, %and57
  %sub59 = sub nsw i32 255, %shr58
  store i32 %sub59, i32* %rmask, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else, %if.then.53
  %68 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %69 = bitcast %struct.gx_device_s* %68 to %struct.gx_device_memory_s*
  %invert61 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %69, i32 0, i32 16
  %70 = load i32, i32* %invert61, align 4
  %tobool = icmp ne i32 %70, 0
  br i1 %tobool, label %if.then.62, label %if.end.74

if.then.62:                                       ; preds = %if.end.60
  %71 = load i64, i64* %zero.addr, align 8
  %conv63 = trunc i64 %71 to i32
  %cmp64 = icmp ne i32 %conv63, -1
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.then.62
  %72 = load i64, i64* %zero.addr, align 8
  %xor = xor i64 %72, 1
  store i64 %xor, i64* %zero.addr, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.then.62
  %73 = load i64, i64* %one.addr, align 8
  %conv68 = trunc i64 %73 to i32
  %cmp69 = icmp ne i32 %conv68, -1
  br i1 %cmp69, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %if.end.67
  %74 = load i64, i64* %one.addr, align 8
  %xor72 = xor i64 %74, 1
  store i64 %xor72, i64* %one.addr, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %if.end.67
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.60
  %75 = load i64, i64* %zero.addr, align 8
  %conv75 = trunc i64 %75 to i32
  %cmp76 = icmp eq i32 %conv75, 1
  br i1 %cmp76, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.74
  %76 = load i64, i64* %one.addr, align 8
  %conv78 = trunc i64 %76 to i32
  %cmp79 = icmp eq i32 %conv78, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.74
  %77 = phi i1 [ true, %if.end.74 ], [ %cmp79, %lor.rhs ]
  %cond = select i1 %77, i32 -1, i32 0
  store i32 %cond, i32* %invert, align 4
  %78 = load i64, i64* %zero.addr, align 8
  %conv81 = trunc i64 %78 to i32
  %cmp82 = icmp eq i32 %conv81, 0
  br i1 %cmp82, label %lor.end.88, label %lor.rhs.84

lor.rhs.84:                                       ; preds = %lor.end
  %79 = load i64, i64* %one.addr, align 8
  %conv85 = trunc i64 %79 to i32
  %cmp86 = icmp eq i32 %conv85, 0
  br label %lor.end.88

lor.end.88:                                       ; preds = %lor.rhs.84, %lor.end
  %80 = phi i1 [ true, %lor.end ], [ %cmp86, %lor.rhs.84 ]
  %cond89 = select i1 %80, i32 0, i32 -1
  store i32 %cond89, i32* %zmask, align 4
  %81 = load i64, i64* %zero.addr, align 8
  %conv90 = trunc i64 %81 to i32
  %cmp91 = icmp eq i32 %conv90, 1
  br i1 %cmp91, label %lor.end.97, label %lor.rhs.93

lor.rhs.93:                                       ; preds = %lor.end.88
  %82 = load i64, i64* %one.addr, align 8
  %conv94 = trunc i64 %82 to i32
  %cmp95 = icmp eq i32 %conv94, 1
  br label %lor.end.97

lor.end.97:                                       ; preds = %lor.rhs.93, %lor.end.88
  %83 = phi i1 [ true, %lor.end.88 ], [ %cmp95, %lor.rhs.93 ]
  %cond98 = select i1 %83, i32 -1, i32 0
  store i32 %cond98, i32* %omask, align 4
  %84 = load i32, i32* %sleft, align 4
  %85 = load i32, i32* %dleft, align 4
  %cmp99 = icmp eq i32 %84, %85
  br i1 %cmp99, label %if.then.101, label %if.else.151

if.then.101:                                      ; preds = %lor.end.97
  %86 = load i32, i32* %dleft, align 4
  %87 = load i32, i32* %w.addr, align 4
  %sub102 = sub nsw i32 %87, %86
  store i32 %sub102, i32* %w.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.144, %if.then.101
  %88 = load i32, i32* %h.addr, align 4
  %dec = add nsw i32 %88, -1
  store i32 %dec, i32* %h.addr, align 4
  %cmp103 = icmp sge i32 %dec, 0
  br i1 %cmp103, label %while.body, label %while.end.150

while.body:                                       ; preds = %while.cond
  %89 = load i8*, i8** %line, align 8
  store i8* %89, i8** %bptr, align 8
  %90 = load i32, i32* %w.addr, align 4
  store i32 %90, i32* %count, align 4
  %91 = load i8*, i8** %dest, align 8
  store i8* %91, i8** %optr, align 8
  %92 = load i8*, i8** %bptr, align 8
  %93 = load i8, i8* %92, align 1
  %conv105 = zext i8 %93 to i32
  %94 = load i32, i32* %invert, align 4
  %xor106 = xor i32 %conv105, %94
  store i32 %xor106, i32* %bits, align 4
  %95 = load i32, i32* %bits, align 4
  %96 = load i32, i32* %mask, align 4
  %neg = xor i32 %96, -1
  %or = or i32 %95, %neg
  %97 = load i32, i32* %zmask, align 4
  %or107 = or i32 %or, %97
  %98 = load i8*, i8** %optr, align 8
  %99 = load i8, i8* %98, align 1
  %conv108 = zext i8 %99 to i32
  %and109 = and i32 %or107, %conv108
  %100 = load i32, i32* %bits, align 4
  %101 = load i32, i32* %mask, align 4
  %and110 = and i32 %100, %101
  %102 = load i32, i32* %omask, align 4
  %and111 = and i32 %and110, %102
  %or112 = or i32 %and109, %and111
  %conv113 = trunc i32 %or112 to i8
  %103 = load i8*, i8** %optr, align 8
  store i8 %conv113, i8* %103, align 1
  br label %while.cond.114

while.cond.114:                                   ; preds = %while.body.118, %while.body
  %104 = load i32, i32* %count, align 4
  %sub115 = sub nsw i32 %104, 8
  store i32 %sub115, i32* %count, align 4
  %cmp116 = icmp sge i32 %sub115, 0
  br i1 %cmp116, label %while.body.118, label %while.end

while.body.118:                                   ; preds = %while.cond.114
  %105 = load i8*, i8** %bptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %incdec.ptr, i8** %bptr, align 8
  %106 = load i8, i8* %incdec.ptr, align 1
  %conv119 = zext i8 %106 to i32
  %107 = load i32, i32* %invert, align 4
  %xor120 = xor i32 %conv119, %107
  store i32 %xor120, i32* %bits, align 4
  %108 = load i8*, i8** %optr, align 8
  %incdec.ptr121 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %incdec.ptr121, i8** %optr, align 8
  %109 = load i32, i32* %bits, align 4
  %110 = load i32, i32* %zmask, align 4
  %or122 = or i32 %109, %110
  %111 = load i8*, i8** %optr, align 8
  %112 = load i8, i8* %111, align 1
  %conv123 = zext i8 %112 to i32
  %and124 = and i32 %or122, %conv123
  %113 = load i32, i32* %bits, align 4
  %114 = load i32, i32* %omask, align 4
  %and125 = and i32 %113, %114
  %or126 = or i32 %and124, %and125
  %conv127 = trunc i32 %or126 to i8
  %115 = load i8*, i8** %optr, align 8
  store i8 %conv127, i8* %115, align 1
  br label %while.cond.114

while.end:                                        ; preds = %while.cond.114
  %116 = load i32, i32* %count, align 4
  %cmp128 = icmp sgt i32 %116, -8
  br i1 %cmp128, label %if.then.130, label %if.end.144

if.then.130:                                      ; preds = %while.end
  %117 = load i8*, i8** %bptr, align 8
  %incdec.ptr131 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %incdec.ptr131, i8** %bptr, align 8
  %118 = load i8, i8* %incdec.ptr131, align 1
  %conv132 = zext i8 %118 to i32
  %119 = load i32, i32* %invert, align 4
  %xor133 = xor i32 %conv132, %119
  store i32 %xor133, i32* %bits, align 4
  %120 = load i8*, i8** %optr, align 8
  %incdec.ptr134 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %incdec.ptr134, i8** %optr, align 8
  %121 = load i32, i32* %bits, align 4
  %122 = load i32, i32* %rmask, align 4
  %neg135 = xor i32 %122, -1
  %or136 = or i32 %121, %neg135
  %123 = load i32, i32* %zmask, align 4
  %or137 = or i32 %or136, %123
  %124 = load i8*, i8** %optr, align 8
  %125 = load i8, i8* %124, align 1
  %conv138 = zext i8 %125 to i32
  %and139 = and i32 %or137, %conv138
  %126 = load i32, i32* %bits, align 4
  %127 = load i32, i32* %rmask, align 4
  %and140 = and i32 %126, %127
  %128 = load i32, i32* %omask, align 4
  %and141 = and i32 %and140, %128
  %or142 = or i32 %and139, %and141
  %conv143 = trunc i32 %or142 to i8
  %129 = load i8*, i8** %optr, align 8
  store i8 %conv143, i8* %129, align 1
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.130, %while.end
  %130 = load i8**, i8*** %dest_line, align 8
  %incdec.ptr145 = getelementptr inbounds i8*, i8** %130, i32 1
  store i8** %incdec.ptr145, i8*** %dest_line, align 8
  %131 = load i8**, i8*** %dest_line, align 8
  %132 = load i8*, i8** %131, align 8
  %133 = load i32, i32* %offset, align 4
  %idx.ext146 = sext i32 %133 to i64
  %add.ptr147 = getelementptr inbounds i8, i8* %132, i64 %idx.ext146
  store i8* %add.ptr147, i8** %dest, align 8
  %134 = load i8*, i8** %line, align 8
  %135 = load i32, i32* %raster.addr, align 4
  %idx.ext148 = sext i32 %135 to i64
  %add.ptr149 = getelementptr inbounds i8, i8* %134, i64 %idx.ext148
  store i8* %add.ptr149, i8** %line, align 8
  br label %while.cond

while.end.150:                                    ; preds = %while.cond
  br label %if.end.242

if.else.151:                                      ; preds = %lor.end.97
  %136 = load i32, i32* %sleft, align 4
  %137 = load i32, i32* %dleft, align 4
  %sub152 = sub nsw i32 %136, %137
  %and153 = and i32 %sub152, 7
  store i32 %and153, i32* %skew, align 4
  %138 = load i32, i32* %skew, align 4
  %sub154 = sub nsw i32 8, %138
  store i32 %sub154, i32* %cskew, align 4
  br label %while.cond.155

while.cond.155:                                   ; preds = %if.end.235, %if.else.151
  %139 = load i32, i32* %h.addr, align 4
  %dec156 = add nsw i32 %139, -1
  store i32 %dec156, i32* %h.addr, align 4
  %cmp157 = icmp sge i32 %dec156, 0
  br i1 %cmp157, label %while.body.159, label %while.end.241

while.body.159:                                   ; preds = %while.cond.155
  %140 = load i8*, i8** %line, align 8
  store i8* %140, i8** %bptr160, align 8
  %141 = load i32, i32* %w.addr, align 4
  store i32 %141, i32* %count161, align 4
  %142 = load i8*, i8** %dest, align 8
  store i8* %142, i8** %optr162, align 8
  %143 = load i32, i32* %sleft, align 4
  %144 = load i32, i32* %dleft, align 4
  %cmp164 = icmp sge i32 %143, %144
  br i1 %cmp164, label %if.then.166, label %if.else.169

if.then.166:                                      ; preds = %while.body.159
  %145 = load i8*, i8** %bptr160, align 8
  %146 = load i8, i8* %145, align 1
  %conv167 = zext i8 %146 to i32
  %147 = load i32, i32* %skew, align 4
  %shr168 = ashr i32 %conv167, %147
  store i32 %shr168, i32* %bits163, align 4
  br label %if.end.179

if.else.169:                                      ; preds = %while.body.159
  %148 = load i8*, i8** %bptr160, align 8
  %incdec.ptr170 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %incdec.ptr170, i8** %bptr160, align 8
  %149 = load i8, i8* %148, align 1
  %conv171 = zext i8 %149 to i32
  %150 = load i32, i32* %cskew, align 4
  %shl = shl i32 %conv171, %150
  store i32 %shl, i32* %bits163, align 4
  %151 = load i32, i32* %count161, align 4
  %152 = load i32, i32* %sleft, align 4
  %cmp172 = icmp sgt i32 %151, %152
  br i1 %cmp172, label %if.then.174, label %if.end.178

if.then.174:                                      ; preds = %if.else.169
  %153 = load i8*, i8** %bptr160, align 8
  %154 = load i8, i8* %153, align 1
  %conv175 = zext i8 %154 to i32
  %155 = load i32, i32* %skew, align 4
  %shr176 = ashr i32 %conv175, %155
  %156 = load i32, i32* %bits163, align 4
  %add177 = add nsw i32 %156, %shr176
  store i32 %add177, i32* %bits163, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.174, %if.else.169
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %if.then.166
  %157 = load i32, i32* %invert, align 4
  %158 = load i32, i32* %bits163, align 4
  %xor180 = xor i32 %158, %157
  store i32 %xor180, i32* %bits163, align 4
  %159 = load i32, i32* %bits163, align 4
  %160 = load i32, i32* %mask, align 4
  %neg181 = xor i32 %160, -1
  %or182 = or i32 %159, %neg181
  %161 = load i32, i32* %zmask, align 4
  %or183 = or i32 %or182, %161
  %162 = load i8*, i8** %optr162, align 8
  %163 = load i8, i8* %162, align 1
  %conv184 = zext i8 %163 to i32
  %and185 = and i32 %or183, %conv184
  %164 = load i32, i32* %bits163, align 4
  %165 = load i32, i32* %mask, align 4
  %and186 = and i32 %164, %165
  %166 = load i32, i32* %omask, align 4
  %and187 = and i32 %and186, %166
  %or188 = or i32 %and185, %and187
  %conv189 = trunc i32 %or188 to i8
  %167 = load i8*, i8** %optr162, align 8
  store i8 %conv189, i8* %167, align 1
  %168 = load i32, i32* %dleft, align 4
  %169 = load i32, i32* %count161, align 4
  %sub190 = sub nsw i32 %169, %168
  store i32 %sub190, i32* %count161, align 4
  %170 = load i8*, i8** %optr162, align 8
  %incdec.ptr191 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %incdec.ptr191, i8** %optr162, align 8
  br label %while.cond.192

while.cond.192:                                   ; preds = %while.body.195, %if.end.179
  %171 = load i32, i32* %count161, align 4
  %cmp193 = icmp sge i32 %171, 8
  br i1 %cmp193, label %while.body.195, label %while.end.211

while.body.195:                                   ; preds = %while.cond.192
  %172 = load i8*, i8** %bptr160, align 8
  %incdec.ptr196 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %incdec.ptr196, i8** %bptr160, align 8
  %173 = load i8, i8* %172, align 1
  %conv197 = zext i8 %173 to i32
  %174 = load i32, i32* %cskew, align 4
  %shl198 = shl i32 %conv197, %174
  store i32 %shl198, i32* %bits163, align 4
  %175 = load i8*, i8** %bptr160, align 8
  %176 = load i8, i8* %175, align 1
  %conv199 = zext i8 %176 to i32
  %177 = load i32, i32* %skew, align 4
  %shr200 = ashr i32 %conv199, %177
  %178 = load i32, i32* %bits163, align 4
  %add201 = add nsw i32 %178, %shr200
  store i32 %add201, i32* %bits163, align 4
  %179 = load i32, i32* %invert, align 4
  %180 = load i32, i32* %bits163, align 4
  %xor202 = xor i32 %180, %179
  store i32 %xor202, i32* %bits163, align 4
  %181 = load i32, i32* %bits163, align 4
  %182 = load i32, i32* %zmask, align 4
  %or203 = or i32 %181, %182
  %183 = load i8*, i8** %optr162, align 8
  %184 = load i8, i8* %183, align 1
  %conv204 = zext i8 %184 to i32
  %and205 = and i32 %or203, %conv204
  %185 = load i32, i32* %bits163, align 4
  %186 = load i32, i32* %omask, align 4
  %and206 = and i32 %185, %186
  %or207 = or i32 %and205, %and206
  %conv208 = trunc i32 %or207 to i8
  %187 = load i8*, i8** %optr162, align 8
  store i8 %conv208, i8* %187, align 1
  %188 = load i32, i32* %count161, align 4
  %sub209 = sub nsw i32 %188, 8
  store i32 %sub209, i32* %count161, align 4
  %189 = load i8*, i8** %optr162, align 8
  %incdec.ptr210 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %incdec.ptr210, i8** %optr162, align 8
  br label %while.cond.192

while.end.211:                                    ; preds = %while.cond.192
  %190 = load i32, i32* %count161, align 4
  %cmp212 = icmp sgt i32 %190, 0
  br i1 %cmp212, label %if.then.214, label %if.end.235

if.then.214:                                      ; preds = %while.end.211
  %191 = load i8*, i8** %bptr160, align 8
  %incdec.ptr215 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %incdec.ptr215, i8** %bptr160, align 8
  %192 = load i8, i8* %191, align 1
  %conv216 = zext i8 %192 to i32
  %193 = load i32, i32* %cskew, align 4
  %shl217 = shl i32 %conv216, %193
  store i32 %shl217, i32* %bits163, align 4
  %194 = load i32, i32* %count161, align 4
  %195 = load i32, i32* %skew, align 4
  %cmp218 = icmp sgt i32 %194, %195
  br i1 %cmp218, label %if.then.220, label %if.end.224

if.then.220:                                      ; preds = %if.then.214
  %196 = load i8*, i8** %bptr160, align 8
  %197 = load i8, i8* %196, align 1
  %conv221 = zext i8 %197 to i32
  %198 = load i32, i32* %skew, align 4
  %shr222 = ashr i32 %conv221, %198
  %199 = load i32, i32* %bits163, align 4
  %add223 = add nsw i32 %199, %shr222
  store i32 %add223, i32* %bits163, align 4
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.220, %if.then.214
  %200 = load i32, i32* %invert, align 4
  %201 = load i32, i32* %bits163, align 4
  %xor225 = xor i32 %201, %200
  store i32 %xor225, i32* %bits163, align 4
  %202 = load i32, i32* %bits163, align 4
  %203 = load i32, i32* %rmask, align 4
  %neg226 = xor i32 %203, -1
  %or227 = or i32 %202, %neg226
  %204 = load i32, i32* %zmask, align 4
  %or228 = or i32 %or227, %204
  %205 = load i8*, i8** %optr162, align 8
  %206 = load i8, i8* %205, align 1
  %conv229 = zext i8 %206 to i32
  %and230 = and i32 %or228, %conv229
  %207 = load i32, i32* %bits163, align 4
  %208 = load i32, i32* %rmask, align 4
  %and231 = and i32 %207, %208
  %209 = load i32, i32* %omask, align 4
  %and232 = and i32 %and231, %209
  %or233 = or i32 %and230, %and232
  %conv234 = trunc i32 %or233 to i8
  %210 = load i8*, i8** %optr162, align 8
  store i8 %conv234, i8* %210, align 1
  br label %if.end.235

if.end.235:                                       ; preds = %if.end.224, %while.end.211
  %211 = load i8**, i8*** %dest_line, align 8
  %incdec.ptr236 = getelementptr inbounds i8*, i8** %211, i32 1
  store i8** %incdec.ptr236, i8*** %dest_line, align 8
  %212 = load i8**, i8*** %dest_line, align 8
  %213 = load i8*, i8** %212, align 8
  %214 = load i32, i32* %offset, align 4
  %idx.ext237 = sext i32 %214 to i64
  %add.ptr238 = getelementptr inbounds i8, i8* %213, i64 %idx.ext237
  store i8* %add.ptr238, i8** %dest, align 8
  %215 = load i8*, i8** %line, align 8
  %216 = load i32, i32* %raster.addr, align 4
  %idx.ext239 = sext i32 %216 to i64
  %add.ptr240 = getelementptr inbounds i8, i8* %215, i64 %idx.ext239
  store i8* %add.ptr240, i8** %line, align 8
  br label %while.cond.155

while.end.241:                                    ; preds = %while.cond.155
  br label %if.end.242

if.end.242:                                       ; preds = %while.end.241, %while.end.150
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.242, %if.then.36, %if.then.21, %if.then.13, %if.then
  %217 = load i32, i32* %retval
  ret i32 %217
}

; Function Attrs: nounwind uwtable
define i32 @mem_mono_copy_color(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %raster, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i8* %base, i8** %base.addr, align 8
  store i32 %sourcex, i32* %sourcex.addr, align 4
  store i32 %raster, i32* %raster.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %1 = load i8*, i8** %base.addr, align 8
  %2 = load i32, i32* %sourcex.addr, align 4
  %3 = load i32, i32* %raster.addr, align 4
  %4 = load i32, i32* %x.addr, align 4
  %5 = load i32, i32* %y.addr, align 4
  %6 = load i32, i32* %w.addr, align 4
  %7 = load i32, i32* %h.addr, align 4
  %call = call i32 @mem_mono_copy_mono(%struct.gx_device_s* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i64 0, i64 1)
  ret i32 %call
}

declare i32 @gx_default_draw_line(%struct.gx_device_s*, i32, i32, i32, i32, i64) #2

declare i32 @gx_default_fill_trapezoid(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64) #2

declare i32 @gx_default_tile_trapezoid(%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @copy_byte_rect(%struct.gx_device_s* %dev, i8* %source, i32 %sraster, i32 %offset, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %source.addr = alloca i8*, align 8
  %sraster.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dest_line = alloca i8**, align 8
  %dest = alloca i8*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i8* %source, i8** %source.addr, align 8
  store i32 %sraster, i32* %sraster.addr, align 4
  store i32 %offset, i32* %offset.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %1 = bitcast %struct.gx_device_s* %0 to %struct.gx_device_memory_s*
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i32 0, i32 14
  %2 = load i8**, i8*** %line_ptrs, align 8
  %3 = load i32, i32* %y.addr, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %2, i64 %idx.ext
  store i8** %add.ptr, i8*** %dest_line, align 8
  %4 = load i8**, i8*** %dest_line, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i32, i32* %offset.addr, align 4
  %idx.ext1 = sext i32 %6 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %5, i64 %idx.ext1
  store i8* %add.ptr2, i8** %dest, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %7 = load i32, i32* %h.addr, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %h.addr, align 4
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %dest, align 8
  %9 = load i8*, i8** %source.addr, align 8
  %10 = load i32, i32* %w.addr, align 4
  %conv = sext i32 %10 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 %conv, i32 1, i1 false)
  %11 = load i32, i32* %sraster.addr, align 4
  %12 = load i8*, i8** %source.addr, align 8
  %idx.ext3 = sext i32 %11 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %12, i64 %idx.ext3
  store i8* %add.ptr4, i8** %source.addr, align 8
  %13 = load i8**, i8*** %dest_line, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %13, i32 1
  store i8** %incdec.ptr, i8*** %dest_line, align 8
  %14 = load i8**, i8*** %dest_line, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* %offset.addr, align 4
  %idx.ext5 = sext i32 %16 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %15, i64 %idx.ext5
  store i8* %add.ptr6, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i64 @mem_mapped_map_rgb_color(%struct.gx_device_s* %dev, i16 zeroext %r, i16 zeroext %g, i16 zeroext %b) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %pptr = alloca i8*, align 8
  %cnt = alloca i32, align 4
  %which = alloca i8*, align 8
  %best = alloca i32, align 4
  %diff = alloca i32, align 4
  %dg = alloca i32, align 4
  %db = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i16 %r, i16* %r.addr, align 2
  store i16 %g, i16* %g.addr, align 2
  store i16 %b, i16* %b.addr, align 2
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %1 = bitcast %struct.gx_device_s* %0 to %struct.gx_device_memory_s*
  %palette = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i32 0, i32 18
  %2 = load i8*, i8** %palette, align 8
  store i8* %2, i8** %pptr, align 8
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %4 = bitcast %struct.gx_device_s* %3 to %struct.gx_device_memory_s*
  %palette_size = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %4, i32 0, i32 17
  %5 = load i32, i32* %palette_size, align 4
  store i32 %5, i32* %cnt, align 4
  store i32 768, i32* %best, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.34, %entry
  %6 = load i32, i32* %cnt, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %cnt, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %pptr, align 8
  %8 = load i8, i8* %7, align 1
  %conv = zext i8 %8 to i32
  %9 = load i16, i16* %r.addr, align 2
  %conv1 = zext i16 %9 to i32
  %sub = sub nsw i32 %conv, %conv1
  store i32 %sub, i32* %diff, align 4
  %10 = load i32, i32* %diff, align 4
  %cmp2 = icmp slt i32 %10, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %11 = load i32, i32* %diff, align 4
  %sub4 = sub nsw i32 0, %11
  store i32 %sub4, i32* %diff, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %12 = load i32, i32* %diff, align 4
  %13 = load i32, i32* %best, align 4
  %cmp5 = icmp slt i32 %12, %13
  br i1 %cmp5, label %if.then.7, label %if.end.34

if.then.7:                                        ; preds = %if.end
  %14 = load i8*, i8** %pptr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx, align 1
  %conv8 = zext i8 %15 to i32
  %16 = load i16, i16* %g.addr, align 2
  %conv9 = zext i16 %16 to i32
  %sub10 = sub nsw i32 %conv8, %conv9
  store i32 %sub10, i32* %dg, align 4
  %17 = load i32, i32* %dg, align 4
  %cmp11 = icmp slt i32 %17, 0
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.then.7
  %18 = load i32, i32* %dg, align 4
  %sub14 = sub nsw i32 0, %18
  store i32 %sub14, i32* %dg, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.7
  %19 = load i32, i32* %dg, align 4
  %20 = load i32, i32* %diff, align 4
  %add = add nsw i32 %20, %19
  store i32 %add, i32* %diff, align 4
  %21 = load i32, i32* %best, align 4
  %cmp16 = icmp slt i32 %add, %21
  br i1 %cmp16, label %if.then.18, label %if.end.33

if.then.18:                                       ; preds = %if.end.15
  %22 = load i8*, i8** %pptr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %22, i64 2
  %23 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %23 to i32
  %24 = load i16, i16* %b.addr, align 2
  %conv21 = zext i16 %24 to i32
  %sub22 = sub nsw i32 %conv20, %conv21
  store i32 %sub22, i32* %db, align 4
  %25 = load i32, i32* %db, align 4
  %cmp23 = icmp slt i32 %25, 0
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.then.18
  %26 = load i32, i32* %db, align 4
  %sub26 = sub nsw i32 0, %26
  store i32 %sub26, i32* %db, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.then.18
  %27 = load i32, i32* %db, align 4
  %28 = load i32, i32* %diff, align 4
  %add28 = add nsw i32 %28, %27
  store i32 %add28, i32* %diff, align 4
  %29 = load i32, i32* %best, align 4
  %cmp29 = icmp slt i32 %add28, %29
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.27
  %30 = load i8*, i8** %pptr, align 8
  store i8* %30, i8** %which, align 8
  %31 = load i32, i32* %diff, align 4
  store i32 %31, i32* %best, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.27
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.15
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end
  %32 = load i8*, i8** %pptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 3
  store i8* %add.ptr, i8** %pptr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %33 = load i8*, i8** %which, align 8
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %35 = bitcast %struct.gx_device_s* %34 to %struct.gx_device_memory_s*
  %palette35 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %35, i32 0, i32 18
  %36 = load i8*, i8** %palette35, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %33 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %36 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %div = sdiv i64 %sub.ptr.sub, 3
  ret i64 %div
}

; Function Attrs: nounwind uwtable
define i32 @mem_mapped_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  %pptr = alloca i8*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i64 %color, i64* %color.addr, align 8
  store i16* %prgb, i16** %prgb.addr, align 8
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %1 = bitcast %struct.gx_device_s* %0 to %struct.gx_device_memory_s*
  %palette = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i32 0, i32 18
  %2 = load i8*, i8** %palette, align 8
  %3 = load i64, i64* %color.addr, align 8
  %conv = trunc i64 %3 to i32
  %mul = mul nsw i32 %conv, 3
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  store i8* %add.ptr, i8** %pptr, align 8
  %4 = load i8*, i8** %pptr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %5 to i16
  %6 = load i16*, i16** %prgb.addr, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %6, i64 0
  store i16 %conv1, i16* %arrayidx2, align 2
  %7 = load i8*, i8** %pptr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %8 to i16
  %9 = load i16*, i16** %prgb.addr, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %9, i64 1
  store i16 %conv4, i16* %arrayidx5, align 2
  %10 = load i8*, i8** %pptr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 2
  %11 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %11 to i16
  %12 = load i16*, i16** %prgb.addr, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %12, i64 2
  store i16 %conv7, i16* %arrayidx8, align 2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @mem_mapped_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %dest_line = alloca i8**, align 8
  %dest = alloca i8*, align 8
  %offset = alloca i32, align 4
  %fault = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i64 %color, i64* %color.addr, align 8
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %1 = bitcast %struct.gx_device_s* %0 to %struct.gx_device_memory_s*
  %bring_in_proc = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i32 0, i32 15
  %2 = load i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)** %bring_in_proc, align 8
  %cmp = icmp ne i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)* %2, @mem_no_fault_proc
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %4 = bitcast %struct.gx_device_s* %3 to %struct.gx_device_memory_s*
  %bring_in_proc1 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %4, i32 0, i32 15
  %5 = load i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)** %bring_in_proc1, align 8
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %7 = bitcast %struct.gx_device_s* %6 to %struct.gx_device_memory_s*
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %y.addr, align 4
  %10 = load i32, i32* %w.addr, align 4
  %11 = load i32, i32* %h.addr, align 4
  %call = call i32 %5(%struct.gx_device_memory_s* %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 1)
  store i32 %call, i32* %fault, align 4
  %12 = load i32, i32* %fault, align 4
  %cmp2 = icmp slt i32 %12, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %14 = load i32, i32* %x.addr, align 4
  %15 = load i32, i32* %y.addr, align 4
  %16 = load i32, i32* %w.addr, align 4
  %17 = load i32, i32* %h.addr, align 4
  %18 = load i64, i64* %color.addr, align 8
  %19 = load i32, i32* %fault, align 4
  %call4 = call i32 @mem_fill_recover(%struct.gx_device_s* %13, i32 %14, i32 %15, i32 %16, i32 %17, i64 %18, i32 %19)
  store i32 %call4, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %20 = load i32, i32* %x.addr, align 4
  %conv = sext i32 %20 to i64
  %conv6 = trunc i64 %conv to i32
  store i32 %conv6, i32* %offset, align 4
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %22 = bitcast %struct.gx_device_s* %21 to %struct.gx_device_memory_s*
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %22, i32 0, i32 14
  %23 = load i8**, i8*** %line_ptrs, align 8
  %24 = load i32, i32* %y.addr, align 4
  %idx.ext = sext i32 %24 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %23, i64 %idx.ext
  store i8** %add.ptr, i8*** %dest_line, align 8
  %25 = load i8**, i8*** %dest_line, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* %offset, align 4
  %idx.ext7 = sext i32 %27 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %26, i64 %idx.ext7
  store i8* %add.ptr8, i8** %dest, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.5
  %28 = load i32, i32* %h.addr, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %h.addr, align 4
  %cmp9 = icmp sgt i32 %28, 0
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load i8*, i8** %dest, align 8
  %30 = load i64, i64* %color.addr, align 8
  %conv11 = trunc i64 %30 to i8
  %conv12 = zext i8 %conv11 to i32
  %31 = trunc i32 %conv12 to i8
  %32 = load i32, i32* %w.addr, align 4
  %conv13 = sext i32 %32 to i64
  call void @llvm.memset.p0i8.i64(i8* %29, i8 %31, i64 %conv13, i32 1, i1 false)
  %33 = load i8**, i8*** %dest_line, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %incdec.ptr, i8*** %dest_line, align 8
  %34 = load i8**, i8*** %dest_line, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* %offset, align 4
  %idx.ext14 = sext i32 %36 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %35, i64 %idx.ext14
  store i8* %add.ptr15, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.3
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define i32 @mem_mapped_copy_mono(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %raster, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %zero.addr = alloca i64, align 8
  %one.addr = alloca i64, align 8
  %line = alloca i8*, align 8
  %first_bit = alloca i32, align 4
  %dest_line = alloca i8**, align 8
  %dest = alloca i8*, align 8
  %offset = alloca i32, align 4
  %fault = alloca i32, align 4
  %pptr = alloca i8*, align 8
  %sptr = alloca i8*, align 8
  %sbyte = alloca i32, align 4
  %bit = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i8* %base, i8** %base.addr, align 8
  store i32 %sourcex, i32* %sourcex.addr, align 4
  store i32 %raster, i32* %raster.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i64 %zero, i64* %zero.addr, align 8
  store i64 %one, i64* %one.addr, align 8
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %1 = bitcast %struct.gx_device_s* %0 to %struct.gx_device_memory_s*
  %bring_in_proc = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i32 0, i32 15
  %2 = load i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)** %bring_in_proc, align 8
  %cmp = icmp ne i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)* %2, @mem_no_fault_proc
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %4 = bitcast %struct.gx_device_s* %3 to %struct.gx_device_memory_s*
  %bring_in_proc1 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %4, i32 0, i32 15
  %5 = load i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)** %bring_in_proc1, align 8
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %7 = bitcast %struct.gx_device_s* %6 to %struct.gx_device_memory_s*
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %y.addr, align 4
  %10 = load i32, i32* %w.addr, align 4
  %11 = load i32, i32* %h.addr, align 4
  %call = call i32 %5(%struct.gx_device_memory_s* %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 1)
  store i32 %call, i32* %fault, align 4
  %12 = load i32, i32* %fault, align 4
  %cmp2 = icmp slt i32 %12, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %14 = load i8*, i8** %base.addr, align 8
  %15 = load i32, i32* %sourcex.addr, align 4
  %16 = load i32, i32* %raster.addr, align 4
  %17 = load i32, i32* %x.addr, align 4
  %18 = load i32, i32* %y.addr, align 4
  %19 = load i32, i32* %w.addr, align 4
  %20 = load i32, i32* %h.addr, align 4
  %21 = load i64, i64* %zero.addr, align 8
  %22 = load i64, i64* %one.addr, align 8
  %23 = load i32, i32* %fault, align 4
  %call4 = call i32 @mem_copy_mono_recover(%struct.gx_device_s* %13, i8* %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i64 %21, i64 %22, i32 %23)
  store i32 %call4, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %24 = load i32, i32* %x.addr, align 4
  %conv = sext i32 %24 to i64
  %conv6 = trunc i64 %conv to i32
  store i32 %conv6, i32* %offset, align 4
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %26 = bitcast %struct.gx_device_s* %25 to %struct.gx_device_memory_s*
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %26, i32 0, i32 14
  %27 = load i8**, i8*** %line_ptrs, align 8
  %28 = load i32, i32* %y.addr, align 4
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %27, i64 %idx.ext
  store i8** %add.ptr, i8*** %dest_line, align 8
  %29 = load i8**, i8*** %dest_line, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %offset, align 4
  %idx.ext7 = sext i32 %31 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %30, i64 %idx.ext7
  store i8* %add.ptr8, i8** %dest, align 8
  %32 = load i8*, i8** %base.addr, align 8
  %33 = load i32, i32* %sourcex.addr, align 4
  %shr = ashr i32 %33, 3
  %idx.ext9 = sext i32 %shr to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %32, i64 %idx.ext9
  store i8* %add.ptr10, i8** %line, align 8
  %34 = load i32, i32* %sourcex.addr, align 4
  %and = and i32 %34, 7
  %shr11 = ashr i32 128, %and
  store i32 %shr11, i32* %first_bit, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end, %if.end.5
  %35 = load i32, i32* %h.addr, align 4
  %dec = add nsw i32 %35, -1
  store i32 %dec, i32* %h.addr, align 4
  %cmp12 = icmp sgt i32 %35, 0
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %36 = load i8*, i8** %dest, align 8
  store i8* %36, i8** %pptr, align 8
  %37 = load i8*, i8** %line, align 8
  store i8* %37, i8** %sptr, align 8
  %38 = load i8*, i8** %sptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr, i8** %sptr, align 8
  %39 = load i8, i8* %38, align 1
  %conv14 = zext i8 %39 to i32
  store i32 %conv14, i32* %sbyte, align 4
  %40 = load i32, i32* %first_bit, align 4
  store i32 %40, i32* %bit, align 4
  %41 = load i32, i32* %w.addr, align 4
  store i32 %41, i32* %count, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.body
  %42 = load i32, i32* %sbyte, align 4
  %43 = load i32, i32* %bit, align 4
  %and15 = and i32 %42, %43
  %tobool = icmp ne i32 %and15, 0
  br i1 %tobool, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  %44 = load i64, i64* %one.addr, align 8
  %cmp17 = icmp ne i64 %44, -1
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.then.16
  %45 = load i64, i64* %one.addr, align 8
  %conv20 = trunc i64 %45 to i8
  %46 = load i8*, i8** %pptr, align 8
  store i8 %conv20, i8* %46, align 1
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.then.16
  br label %if.end.27

if.else:                                          ; preds = %do.body
  %47 = load i64, i64* %zero.addr, align 8
  %cmp22 = icmp ne i64 %47, -1
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.else
  %48 = load i64, i64* %zero.addr, align 8
  %conv25 = trunc i64 %48 to i8
  %49 = load i8*, i8** %pptr, align 8
  store i8 %conv25, i8* %49, align 1
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.21
  %50 = load i32, i32* %bit, align 4
  %shr28 = ashr i32 %50, 1
  store i32 %shr28, i32* %bit, align 4
  %cmp29 = icmp eq i32 %shr28, 0
  br i1 %cmp29, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.end.27
  store i32 128, i32* %bit, align 4
  %51 = load i8*, i8** %sptr, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr32, i8** %sptr, align 8
  %52 = load i8, i8* %51, align 1
  %conv33 = zext i8 %52 to i32
  store i32 %conv33, i32* %sbyte, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.end.27
  %53 = load i8*, i8** %pptr, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr35, i8** %pptr, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.34
  %54 = load i32, i32* %count, align 4
  %dec36 = add nsw i32 %54, -1
  store i32 %dec36, i32* %count, align 4
  %cmp37 = icmp sgt i32 %dec36, 0
  br i1 %cmp37, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %55 = load i32, i32* %raster.addr, align 4
  %56 = load i8*, i8** %line, align 8
  %idx.ext39 = sext i32 %55 to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %56, i64 %idx.ext39
  store i8* %add.ptr40, i8** %line, align 8
  %57 = load i8**, i8*** %dest_line, align 8
  %incdec.ptr41 = getelementptr inbounds i8*, i8** %57, i32 1
  store i8** %incdec.ptr41, i8*** %dest_line, align 8
  %58 = load i8**, i8*** %dest_line, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* %offset, align 4
  %idx.ext42 = sext i32 %60 to i64
  %add.ptr43 = getelementptr inbounds i8, i8* %59, i64 %idx.ext42
  store i8* %add.ptr43, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.3
  %61 = load i32, i32* %retval
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define i32 @mem_mapped_copy_color(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %raster, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fault = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i8* %base, i8** %base.addr, align 8
  store i32 %sourcex, i32* %sourcex.addr, align 4
  store i32 %raster, i32* %raster.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %1 = bitcast %struct.gx_device_s* %0 to %struct.gx_device_memory_s*
  %bring_in_proc = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i32 0, i32 15
  %2 = load i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)** %bring_in_proc, align 8
  %cmp = icmp ne i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)* %2, @mem_no_fault_proc
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %4 = bitcast %struct.gx_device_s* %3 to %struct.gx_device_memory_s*
  %bring_in_proc1 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %4, i32 0, i32 15
  %5 = load i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)** %bring_in_proc1, align 8
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %7 = bitcast %struct.gx_device_s* %6 to %struct.gx_device_memory_s*
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %y.addr, align 4
  %10 = load i32, i32* %w.addr, align 4
  %11 = load i32, i32* %h.addr, align 4
  %call = call i32 %5(%struct.gx_device_memory_s* %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 1)
  store i32 %call, i32* %fault, align 4
  %12 = load i32, i32* %fault, align 4
  %cmp2 = icmp slt i32 %12, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %14 = load i8*, i8** %base.addr, align 8
  %15 = load i32, i32* %sourcex.addr, align 4
  %16 = load i32, i32* %raster.addr, align 4
  %17 = load i32, i32* %x.addr, align 4
  %18 = load i32, i32* %y.addr, align 4
  %19 = load i32, i32* %w.addr, align 4
  %20 = load i32, i32* %h.addr, align 4
  %21 = load i32, i32* %fault, align 4
  %call4 = call i32 @mem_copy_color_recover(%struct.gx_device_s* %13, i8* %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21)
  store i32 %call4, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %22 = load i32, i32* %w.addr, align 4
  %cmp6 = icmp sle i32 %22, 0
  br i1 %cmp6, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %23 = load i32, i32* %h.addr, align 4
  %cmp7 = icmp sle i32 %23, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end.5
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %lor.lhs.false
  %24 = load i32, i32* %x.addr, align 4
  %cmp10 = icmp slt i32 %24, 0
  br i1 %cmp10, label %if.then.18, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.end.9
  %25 = load i32, i32* %x.addr, align 4
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %27 = bitcast %struct.gx_device_s* %26 to %struct.gx_device_memory_s*
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %27, i32 0, i32 3
  %28 = load i32, i32* %width, align 4
  %29 = load i32, i32* %w.addr, align 4
  %sub = sub nsw i32 %28, %29
  %cmp12 = icmp sgt i32 %25, %sub
  br i1 %cmp12, label %if.then.18, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.11
  %30 = load i32, i32* %y.addr, align 4
  %cmp14 = icmp slt i32 %30, 0
  br i1 %cmp14, label %if.then.18, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.13
  %31 = load i32, i32* %y.addr, align 4
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %33 = bitcast %struct.gx_device_s* %32 to %struct.gx_device_memory_s*
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %33, i32 0, i32 4
  %34 = load i32, i32* %height, align 4
  %35 = load i32, i32* %h.addr, align 4
  %sub16 = sub nsw i32 %34, %35
  %cmp17 = icmp sgt i32 %31, %sub16
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false.15, %lor.lhs.false.13, %lor.lhs.false.11, %if.end.9
  store i32 -1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %lor.lhs.false.15
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %37 = load i8*, i8** %base.addr, align 8
  %38 = load i32, i32* %sourcex.addr, align 4
  %idx.ext = sext i32 %38 to i64
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %idx.ext
  %39 = load i32, i32* %raster.addr, align 4
  %40 = load i32, i32* %x.addr, align 4
  %41 = load i32, i32* %y.addr, align 4
  %42 = load i32, i32* %w.addr, align 4
  %43 = load i32, i32* %h.addr, align 4
  %call20 = call i32 @copy_byte_rect(%struct.gx_device_s* %36, i8* %add.ptr, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43)
  store i32 %call20, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.18, %if.then.8, %if.then.3
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define i64 @mem_true_map_rgb_color(%struct.gx_device_s* %dev, i16 zeroext %r, i16 zeroext %g, i16 zeroext %b) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %color = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i16 %r, i16* %r.addr, align 2
  store i16 %g, i16* %g.addr, align 2
  store i16 %b, i16* %b.addr, align 2
  store i64 0, i64* %color, align 8
  %0 = load i16, i16* %r.addr, align 2
  %conv = trunc i16 %0 to i8
  %1 = bitcast i64* %color to i8*
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 1
  store i8 %conv, i8* %arrayidx, align 1
  %2 = load i16, i16* %g.addr, align 2
  %conv1 = trunc i16 %2 to i8
  %3 = bitcast i64* %color to i8*
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 2
  store i8 %conv1, i8* %arrayidx2, align 1
  %4 = load i16, i16* %b.addr, align 2
  %conv3 = trunc i16 %4 to i8
  %5 = bitcast i64* %color to i8*
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 3
  store i8 %conv3, i8* %arrayidx4, align 1
  %6 = load i64, i64* %color, align 8
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define i32 @mem_true_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i64 %color, i64* %color.addr, align 8
  store i16* %prgb, i16** %prgb.addr, align 8
  %0 = bitcast i64* %color.addr to i8*
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 1
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i16
  %2 = load i16*, i16** %prgb.addr, align 8
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 0
  store i16 %conv, i16* %arrayidx1, align 2
  %3 = bitcast i64* %color.addr to i8*
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 2
  %4 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %4 to i16
  %5 = load i16*, i16** %prgb.addr, align 8
  %arrayidx4 = getelementptr inbounds i16, i16* %5, i64 1
  store i16 %conv3, i16* %arrayidx4, align 2
  %6 = bitcast i64* %color.addr to i8*
  %arrayidx5 = getelementptr inbounds i8, i8* %6, i64 3
  %7 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %7 to i16
  %8 = load i16*, i16** %prgb.addr, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %8, i64 2
  store i16 %conv6, i16* %arrayidx7, align 2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @mem_true24_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  %dest_line = alloca i8**, align 8
  %dest = alloca i8*, align 8
  %offset = alloca i32, align 4
  %fault = alloca i32, align 4
  %cnt = alloca i32, align 4
  %pptr = alloca i8*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i64 %color, i64* %color.addr, align 8
  %0 = bitcast i64* %color.addr to i8*
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 1
  %1 = load i8, i8* %arrayidx, align 1
  store i8 %1, i8* %r, align 1
  %2 = bitcast i64* %color.addr to i8*
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 2
  %3 = load i8, i8* %arrayidx1, align 1
  store i8 %3, i8* %g, align 1
  %4 = bitcast i64* %color.addr to i8*
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 3
  %5 = load i8, i8* %arrayidx2, align 1
  store i8 %5, i8* %b, align 1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %7 = bitcast %struct.gx_device_s* %6 to %struct.gx_device_memory_s*
  %bring_in_proc = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %7, i32 0, i32 15
  %8 = load i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)** %bring_in_proc, align 8
  %cmp = icmp ne i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)* %8, @mem_no_fault_proc
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %10 = bitcast %struct.gx_device_s* %9 to %struct.gx_device_memory_s*
  %bring_in_proc3 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %10, i32 0, i32 15
  %11 = load i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)** %bring_in_proc3, align 8
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %13 = bitcast %struct.gx_device_s* %12 to %struct.gx_device_memory_s*
  %14 = load i32, i32* %x.addr, align 4
  %mul = mul nsw i32 %14, 3
  %15 = load i32, i32* %y.addr, align 4
  %16 = load i32, i32* %w.addr, align 4
  %mul4 = mul nsw i32 %16, 3
  %17 = load i32, i32* %h.addr, align 4
  %call = call i32 %11(%struct.gx_device_memory_s* %13, i32 %mul, i32 %15, i32 %mul4, i32 %17, i32 1)
  store i32 %call, i32* %fault, align 4
  %18 = load i32, i32* %fault, align 4
  %cmp5 = icmp slt i32 %18, 0
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %20 = load i32, i32* %x.addr, align 4
  %21 = load i32, i32* %y.addr, align 4
  %22 = load i32, i32* %w.addr, align 4
  %23 = load i32, i32* %h.addr, align 4
  %24 = load i64, i64* %color.addr, align 8
  %25 = load i32, i32* %fault, align 4
  %call7 = call i32 @mem_fill_recover(%struct.gx_device_s* %19, i32 %20, i32 %21, i32 %22, i32 %23, i64 %24, i32 %25)
  store i32 %call7, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %26 = load i32, i32* %x.addr, align 4
  %mul9 = mul nsw i32 %26, 3
  %conv = sext i32 %mul9 to i64
  %conv10 = trunc i64 %conv to i32
  store i32 %conv10, i32* %offset, align 4
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %28 = bitcast %struct.gx_device_s* %27 to %struct.gx_device_memory_s*
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %28, i32 0, i32 14
  %29 = load i8**, i8*** %line_ptrs, align 8
  %30 = load i32, i32* %y.addr, align 4
  %idx.ext = sext i32 %30 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %29, i64 %idx.ext
  store i8** %add.ptr, i8*** %dest_line, align 8
  %31 = load i8**, i8*** %dest_line, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %offset, align 4
  %idx.ext11 = sext i32 %33 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %32, i64 %idx.ext11
  store i8* %add.ptr12, i8** %dest, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %if.end.8
  %34 = load i32, i32* %h.addr, align 4
  %dec = add nsw i32 %34, -1
  store i32 %dec, i32* %h.addr, align 4
  %cmp13 = icmp sgt i32 %34, 0
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %35 = load i32, i32* %w.addr, align 4
  store i32 %35, i32* %cnt, align 4
  %36 = load i8*, i8** %dest, align 8
  store i8* %36, i8** %pptr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.body
  %37 = load i8, i8* %r, align 1
  %38 = load i8*, i8** %pptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr, i8** %pptr, align 8
  store i8 %37, i8* %38, align 1
  %39 = load i8, i8* %g, align 1
  %40 = load i8*, i8** %pptr, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr15, i8** %pptr, align 8
  store i8 %39, i8* %40, align 1
  %41 = load i8, i8* %b, align 1
  %42 = load i8*, i8** %pptr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr16, i8** %pptr, align 8
  store i8 %41, i8* %42, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %43 = load i32, i32* %cnt, align 4
  %dec17 = add nsw i32 %43, -1
  store i32 %dec17, i32* %cnt, align 4
  %cmp18 = icmp sgt i32 %dec17, 0
  br i1 %cmp18, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %44 = load i8**, i8*** %dest_line, align 8
  %incdec.ptr20 = getelementptr inbounds i8*, i8** %44, i32 1
  store i8** %incdec.ptr20, i8*** %dest_line, align 8
  %45 = load i8**, i8*** %dest_line, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %offset, align 4
  %idx.ext21 = sext i32 %47 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %46, i64 %idx.ext21
  store i8* %add.ptr22, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.6
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define i32 @mem_true24_copy_mono(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %raster, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %zero.addr = alloca i64, align 8
  %one.addr = alloca i64, align 8
  %line = alloca i8*, align 8
  %first_bit = alloca i32, align 4
  %r0 = alloca i8, align 1
  %g0 = alloca i8, align 1
  %b0 = alloca i8, align 1
  %r1 = alloca i8, align 1
  %g1 = alloca i8, align 1
  %b1 = alloca i8, align 1
  %dest_line = alloca i8**, align 8
  %dest = alloca i8*, align 8
  %offset = alloca i32, align 4
  %fault = alloca i32, align 4
  %pptr = alloca i8*, align 8
  %sptr = alloca i8*, align 8
  %sbyte = alloca i32, align 4
  %bit = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i8* %base, i8** %base.addr, align 8
  store i32 %sourcex, i32* %sourcex.addr, align 4
  store i32 %raster, i32* %raster.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i64 %zero, i64* %zero.addr, align 8
  store i64 %one, i64* %one.addr, align 8
  %0 = bitcast i64* %zero.addr to i8*
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 1
  %1 = load i8, i8* %arrayidx, align 1
  store i8 %1, i8* %r0, align 1
  %2 = bitcast i64* %zero.addr to i8*
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 2
  %3 = load i8, i8* %arrayidx1, align 1
  store i8 %3, i8* %g0, align 1
  %4 = bitcast i64* %zero.addr to i8*
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 3
  %5 = load i8, i8* %arrayidx2, align 1
  store i8 %5, i8* %b0, align 1
  %6 = bitcast i64* %one.addr to i8*
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx3, align 1
  store i8 %7, i8* %r1, align 1
  %8 = bitcast i64* %one.addr to i8*
  %arrayidx4 = getelementptr inbounds i8, i8* %8, i64 2
  %9 = load i8, i8* %arrayidx4, align 1
  store i8 %9, i8* %g1, align 1
  %10 = bitcast i64* %one.addr to i8*
  %arrayidx5 = getelementptr inbounds i8, i8* %10, i64 3
  %11 = load i8, i8* %arrayidx5, align 1
  store i8 %11, i8* %b1, align 1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %13 = bitcast %struct.gx_device_s* %12 to %struct.gx_device_memory_s*
  %bring_in_proc = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %13, i32 0, i32 15
  %14 = load i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)** %bring_in_proc, align 8
  %cmp = icmp ne i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)* %14, @mem_no_fault_proc
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %16 = bitcast %struct.gx_device_s* %15 to %struct.gx_device_memory_s*
  %bring_in_proc6 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %16, i32 0, i32 15
  %17 = load i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)** %bring_in_proc6, align 8
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %19 = bitcast %struct.gx_device_s* %18 to %struct.gx_device_memory_s*
  %20 = load i32, i32* %x.addr, align 4
  %mul = mul nsw i32 %20, 3
  %21 = load i32, i32* %y.addr, align 4
  %22 = load i32, i32* %w.addr, align 4
  %mul7 = mul nsw i32 %22, 3
  %23 = load i32, i32* %h.addr, align 4
  %call = call i32 %17(%struct.gx_device_memory_s* %19, i32 %mul, i32 %21, i32 %mul7, i32 %23, i32 1)
  store i32 %call, i32* %fault, align 4
  %24 = load i32, i32* %fault, align 4
  %cmp8 = icmp slt i32 %24, 0
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %26 = load i8*, i8** %base.addr, align 8
  %27 = load i32, i32* %sourcex.addr, align 4
  %28 = load i32, i32* %raster.addr, align 4
  %29 = load i32, i32* %x.addr, align 4
  %30 = load i32, i32* %y.addr, align 4
  %31 = load i32, i32* %w.addr, align 4
  %32 = load i32, i32* %h.addr, align 4
  %33 = load i64, i64* %zero.addr, align 8
  %34 = load i64, i64* %one.addr, align 8
  %35 = load i32, i32* %fault, align 4
  %call10 = call i32 @mem_copy_mono_recover(%struct.gx_device_s* %25, i8* %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i64 %33, i64 %34, i32 %35)
  store i32 %call10, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  %36 = load i32, i32* %x.addr, align 4
  %mul12 = mul nsw i32 %36, 3
  %conv = sext i32 %mul12 to i64
  %conv13 = trunc i64 %conv to i32
  store i32 %conv13, i32* %offset, align 4
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %38 = bitcast %struct.gx_device_s* %37 to %struct.gx_device_memory_s*
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %38, i32 0, i32 14
  %39 = load i8**, i8*** %line_ptrs, align 8
  %40 = load i32, i32* %y.addr, align 4
  %idx.ext = sext i32 %40 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %39, i64 %idx.ext
  store i8** %add.ptr, i8*** %dest_line, align 8
  %41 = load i8**, i8*** %dest_line, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* %offset, align 4
  %idx.ext14 = sext i32 %43 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %42, i64 %idx.ext14
  store i8* %add.ptr15, i8** %dest, align 8
  %44 = load i8*, i8** %base.addr, align 8
  %45 = load i32, i32* %sourcex.addr, align 4
  %shr = ashr i32 %45, 3
  %idx.ext16 = sext i32 %shr to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %44, i64 %idx.ext16
  store i8* %add.ptr17, i8** %line, align 8
  %46 = load i32, i32* %sourcex.addr, align 4
  %and = and i32 %46, 7
  %shr18 = ashr i32 128, %and
  store i32 %shr18, i32* %first_bit, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end, %if.end.11
  %47 = load i32, i32* %h.addr, align 4
  %dec = add nsw i32 %47, -1
  store i32 %dec, i32* %h.addr, align 4
  %cmp19 = icmp sgt i32 %47, 0
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %48 = load i8*, i8** %dest, align 8
  store i8* %48, i8** %pptr, align 8
  %49 = load i8*, i8** %line, align 8
  store i8* %49, i8** %sptr, align 8
  %50 = load i8*, i8** %sptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr, i8** %sptr, align 8
  %51 = load i8, i8* %50, align 1
  %conv21 = zext i8 %51 to i32
  store i32 %conv21, i32* %sbyte, align 4
  %52 = load i32, i32* %first_bit, align 4
  store i32 %52, i32* %bit, align 4
  %53 = load i32, i32* %w.addr, align 4
  store i32 %53, i32* %count, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.body
  %54 = load i32, i32* %sbyte, align 4
  %55 = load i32, i32* %bit, align 4
  %and22 = and i32 %54, %55
  %tobool = icmp ne i32 %and22, 0
  br i1 %tobool, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %do.body
  %56 = load i64, i64* %one.addr, align 8
  %cmp24 = icmp ne i64 %56, -1
  br i1 %cmp24, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %if.then.23
  %57 = load i8, i8* %r1, align 1
  %58 = load i8*, i8** %pptr, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr27, i8** %pptr, align 8
  store i8 %57, i8* %58, align 1
  %59 = load i8, i8* %g1, align 1
  %60 = load i8*, i8** %pptr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr28, i8** %pptr, align 8
  store i8 %59, i8* %60, align 1
  %61 = load i8, i8* %b1, align 1
  %62 = load i8*, i8** %pptr, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr29, i8** %pptr, align 8
  store i8 %61, i8* %62, align 1
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.26, %if.then.23
  br label %if.end.38

if.else:                                          ; preds = %do.body
  %63 = load i64, i64* %zero.addr, align 8
  %cmp31 = icmp ne i64 %63, -1
  br i1 %cmp31, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %if.else
  %64 = load i8, i8* %r0, align 1
  %65 = load i8*, i8** %pptr, align 8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr34, i8** %pptr, align 8
  store i8 %64, i8* %65, align 1
  %66 = load i8, i8* %g0, align 1
  %67 = load i8*, i8** %pptr, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr35, i8** %pptr, align 8
  store i8 %66, i8* %67, align 1
  %68 = load i8, i8* %b0, align 1
  %69 = load i8*, i8** %pptr, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr36, i8** %pptr, align 8
  store i8 %68, i8* %69, align 1
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.33, %if.else
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.30
  %70 = load i32, i32* %bit, align 4
  %shr39 = ashr i32 %70, 1
  store i32 %shr39, i32* %bit, align 4
  %cmp40 = icmp eq i32 %shr39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %if.end.38
  store i32 128, i32* %bit, align 4
  %71 = load i8*, i8** %sptr, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr43, i8** %sptr, align 8
  %72 = load i8, i8* %71, align 1
  %conv44 = zext i8 %72 to i32
  store i32 %conv44, i32* %sbyte, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %if.end.38
  br label %do.cond

do.cond:                                          ; preds = %if.end.45
  %73 = load i32, i32* %count, align 4
  %dec46 = add nsw i32 %73, -1
  store i32 %dec46, i32* %count, align 4
  %cmp47 = icmp sgt i32 %dec46, 0
  br i1 %cmp47, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %74 = load i32, i32* %raster.addr, align 4
  %75 = load i8*, i8** %line, align 8
  %idx.ext49 = sext i32 %74 to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %75, i64 %idx.ext49
  store i8* %add.ptr50, i8** %line, align 8
  %76 = load i8**, i8*** %dest_line, align 8
  %incdec.ptr51 = getelementptr inbounds i8*, i8** %76, i32 1
  store i8** %incdec.ptr51, i8*** %dest_line, align 8
  %77 = load i8**, i8*** %dest_line, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %offset, align 4
  %idx.ext52 = sext i32 %79 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %78, i64 %idx.ext52
  store i8* %add.ptr53, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.9
  %80 = load i32, i32* %retval
  ret i32 %80
}

; Function Attrs: nounwind uwtable
define i32 @mem_true24_copy_color(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %raster, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fault = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i8* %base, i8** %base.addr, align 8
  store i32 %sourcex, i32* %sourcex.addr, align 4
  store i32 %raster, i32* %raster.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %1 = bitcast %struct.gx_device_s* %0 to %struct.gx_device_memory_s*
  %bring_in_proc = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i32 0, i32 15
  %2 = load i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)** %bring_in_proc, align 8
  %cmp = icmp ne i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)* %2, @mem_no_fault_proc
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %4 = bitcast %struct.gx_device_s* %3 to %struct.gx_device_memory_s*
  %bring_in_proc1 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %4, i32 0, i32 15
  %5 = load i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)** %bring_in_proc1, align 8
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %7 = bitcast %struct.gx_device_s* %6 to %struct.gx_device_memory_s*
  %8 = load i32, i32* %x.addr, align 4
  %mul = mul nsw i32 %8, 3
  %9 = load i32, i32* %y.addr, align 4
  %10 = load i32, i32* %w.addr, align 4
  %mul2 = mul nsw i32 %10, 3
  %11 = load i32, i32* %h.addr, align 4
  %call = call i32 %5(%struct.gx_device_memory_s* %7, i32 %mul, i32 %9, i32 %mul2, i32 %11, i32 1)
  store i32 %call, i32* %fault, align 4
  %12 = load i32, i32* %fault, align 4
  %cmp3 = icmp slt i32 %12, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %14 = load i8*, i8** %base.addr, align 8
  %15 = load i32, i32* %sourcex.addr, align 4
  %16 = load i32, i32* %raster.addr, align 4
  %17 = load i32, i32* %x.addr, align 4
  %18 = load i32, i32* %y.addr, align 4
  %19 = load i32, i32* %w.addr, align 4
  %20 = load i32, i32* %h.addr, align 4
  %21 = load i32, i32* %fault, align 4
  %call5 = call i32 @mem_copy_color_recover(%struct.gx_device_s* %13, i8* %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21)
  store i32 %call5, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %22 = load i32, i32* %w.addr, align 4
  %cmp7 = icmp sle i32 %22, 0
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %23 = load i32, i32* %h.addr, align 4
  %cmp8 = icmp sle i32 %23, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false, %if.end.6
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %lor.lhs.false
  %24 = load i32, i32* %x.addr, align 4
  %cmp11 = icmp slt i32 %24, 0
  br i1 %cmp11, label %if.then.19, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %if.end.10
  %25 = load i32, i32* %x.addr, align 4
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %27 = bitcast %struct.gx_device_s* %26 to %struct.gx_device_memory_s*
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %27, i32 0, i32 3
  %28 = load i32, i32* %width, align 4
  %29 = load i32, i32* %w.addr, align 4
  %sub = sub nsw i32 %28, %29
  %cmp13 = icmp sgt i32 %25, %sub
  br i1 %cmp13, label %if.then.19, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.12
  %30 = load i32, i32* %y.addr, align 4
  %cmp15 = icmp slt i32 %30, 0
  br i1 %cmp15, label %if.then.19, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.14
  %31 = load i32, i32* %y.addr, align 4
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %33 = bitcast %struct.gx_device_s* %32 to %struct.gx_device_memory_s*
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %33, i32 0, i32 4
  %34 = load i32, i32* %height, align 4
  %35 = load i32, i32* %h.addr, align 4
  %sub17 = sub nsw i32 %34, %35
  %cmp18 = icmp sgt i32 %31, %sub17
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false.16, %lor.lhs.false.14, %lor.lhs.false.12, %if.end.10
  store i32 -1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %lor.lhs.false.16
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %37 = load i8*, i8** %base.addr, align 8
  %38 = load i32, i32* %sourcex.addr, align 4
  %mul21 = mul nsw i32 %38, 3
  %idx.ext = sext i32 %mul21 to i64
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %idx.ext
  %39 = load i32, i32* %raster.addr, align 4
  %40 = load i32, i32* %x.addr, align 4
  %mul22 = mul nsw i32 %40, 3
  %41 = load i32, i32* %y.addr, align 4
  %42 = load i32, i32* %w.addr, align 4
  %mul23 = mul nsw i32 %42, 3
  %43 = load i32, i32* %h.addr, align 4
  %call24 = call i32 @copy_byte_rect(%struct.gx_device_s* %36, i8* %add.ptr, i32 %39, i32 %mul22, i32 %41, i32 %mul23, i32 %43)
  store i32 %call24, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.19, %if.then.9, %if.then.4
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define i32 @mem_true32_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %dest_line = alloca i8**, align 8
  %dest = alloca i8*, align 8
  %offset = alloca i32, align 4
  %fault = alloca i32, align 4
  %pptr = alloca i64*, align 8
  %cnt = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i64 %color, i64* %color.addr, align 8
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %1 = bitcast %struct.gx_device_s* %0 to %struct.gx_device_memory_s*
  %bring_in_proc = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i32 0, i32 15
  %2 = load i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)** %bring_in_proc, align 8
  %cmp = icmp ne i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)* %2, @mem_no_fault_proc
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %4 = bitcast %struct.gx_device_s* %3 to %struct.gx_device_memory_s*
  %bring_in_proc1 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %4, i32 0, i32 15
  %5 = load i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)** %bring_in_proc1, align 8
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %7 = bitcast %struct.gx_device_s* %6 to %struct.gx_device_memory_s*
  %8 = load i32, i32* %x.addr, align 4
  %shl = shl i32 %8, 2
  %9 = load i32, i32* %y.addr, align 4
  %10 = load i32, i32* %w.addr, align 4
  %shl2 = shl i32 %10, 2
  %11 = load i32, i32* %h.addr, align 4
  %call = call i32 %5(%struct.gx_device_memory_s* %7, i32 %shl, i32 %9, i32 %shl2, i32 %11, i32 1)
  store i32 %call, i32* %fault, align 4
  %12 = load i32, i32* %fault, align 4
  %cmp3 = icmp slt i32 %12, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %14 = load i32, i32* %x.addr, align 4
  %15 = load i32, i32* %y.addr, align 4
  %16 = load i32, i32* %w.addr, align 4
  %17 = load i32, i32* %h.addr, align 4
  %18 = load i64, i64* %color.addr, align 8
  %19 = load i32, i32* %fault, align 4
  %call5 = call i32 @mem_fill_recover(%struct.gx_device_s* %13, i32 %14, i32 %15, i32 %16, i32 %17, i64 %18, i32 %19)
  store i32 %call5, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %20 = load i32, i32* %x.addr, align 4
  %shl7 = shl i32 %20, 2
  %conv = sext i32 %shl7 to i64
  %conv8 = trunc i64 %conv to i32
  store i32 %conv8, i32* %offset, align 4
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %22 = bitcast %struct.gx_device_s* %21 to %struct.gx_device_memory_s*
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %22, i32 0, i32 14
  %23 = load i8**, i8*** %line_ptrs, align 8
  %24 = load i32, i32* %y.addr, align 4
  %idx.ext = sext i32 %24 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %23, i64 %idx.ext
  store i8** %add.ptr, i8*** %dest_line, align 8
  %25 = load i8**, i8*** %dest_line, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* %offset, align 4
  %idx.ext9 = sext i32 %27 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %26, i64 %idx.ext9
  store i8* %add.ptr10, i8** %dest, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %if.end.6
  %28 = load i32, i32* %h.addr, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %h.addr, align 4
  %cmp11 = icmp sgt i32 %28, 0
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load i8*, i8** %dest, align 8
  %30 = bitcast i8* %29 to i64*
  store i64* %30, i64** %pptr, align 8
  %31 = load i32, i32* %w.addr, align 4
  store i32 %31, i32* %cnt, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.body
  %32 = load i64, i64* %color.addr, align 8
  %33 = load i64*, i64** %pptr, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %incdec.ptr, i64** %pptr, align 8
  store i64 %32, i64* %33, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %34 = load i32, i32* %cnt, align 4
  %dec13 = add nsw i32 %34, -1
  store i32 %dec13, i32* %cnt, align 4
  %cmp14 = icmp sgt i32 %dec13, 0
  br i1 %cmp14, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %35 = load i8**, i8*** %dest_line, align 8
  %incdec.ptr16 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %incdec.ptr16, i8*** %dest_line, align 8
  %36 = load i8**, i8*** %dest_line, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %offset, align 4
  %idx.ext17 = sext i32 %38 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %37, i64 %idx.ext17
  store i8* %add.ptr18, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.4
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define i32 @mem_true32_copy_mono(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %raster, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %zero.addr = alloca i64, align 8
  %one.addr = alloca i64, align 8
  %line = alloca i8*, align 8
  %first_bit = alloca i32, align 4
  %dest_line = alloca i8**, align 8
  %dest = alloca i8*, align 8
  %offset = alloca i32, align 4
  %fault = alloca i32, align 4
  %pptr = alloca i64*, align 8
  %sptr = alloca i8*, align 8
  %sbyte = alloca i32, align 4
  %bit = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i8* %base, i8** %base.addr, align 8
  store i32 %sourcex, i32* %sourcex.addr, align 4
  store i32 %raster, i32* %raster.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i64 %zero, i64* %zero.addr, align 8
  store i64 %one, i64* %one.addr, align 8
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %1 = bitcast %struct.gx_device_s* %0 to %struct.gx_device_memory_s*
  %bring_in_proc = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i32 0, i32 15
  %2 = load i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)** %bring_in_proc, align 8
  %cmp = icmp ne i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)* %2, @mem_no_fault_proc
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %4 = bitcast %struct.gx_device_s* %3 to %struct.gx_device_memory_s*
  %bring_in_proc1 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %4, i32 0, i32 15
  %5 = load i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)** %bring_in_proc1, align 8
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %7 = bitcast %struct.gx_device_s* %6 to %struct.gx_device_memory_s*
  %8 = load i32, i32* %x.addr, align 4
  %shl = shl i32 %8, 2
  %9 = load i32, i32* %y.addr, align 4
  %10 = load i32, i32* %w.addr, align 4
  %shl2 = shl i32 %10, 2
  %11 = load i32, i32* %h.addr, align 4
  %call = call i32 %5(%struct.gx_device_memory_s* %7, i32 %shl, i32 %9, i32 %shl2, i32 %11, i32 1)
  store i32 %call, i32* %fault, align 4
  %12 = load i32, i32* %fault, align 4
  %cmp3 = icmp slt i32 %12, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %14 = load i8*, i8** %base.addr, align 8
  %15 = load i32, i32* %sourcex.addr, align 4
  %16 = load i32, i32* %raster.addr, align 4
  %17 = load i32, i32* %x.addr, align 4
  %18 = load i32, i32* %y.addr, align 4
  %19 = load i32, i32* %w.addr, align 4
  %20 = load i32, i32* %h.addr, align 4
  %21 = load i64, i64* %zero.addr, align 8
  %22 = load i64, i64* %one.addr, align 8
  %23 = load i32, i32* %fault, align 4
  %call5 = call i32 @mem_copy_mono_recover(%struct.gx_device_s* %13, i8* %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i64 %21, i64 %22, i32 %23)
  store i32 %call5, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %24 = load i32, i32* %x.addr, align 4
  %shl7 = shl i32 %24, 2
  %conv = sext i32 %shl7 to i64
  %conv8 = trunc i64 %conv to i32
  store i32 %conv8, i32* %offset, align 4
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %26 = bitcast %struct.gx_device_s* %25 to %struct.gx_device_memory_s*
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %26, i32 0, i32 14
  %27 = load i8**, i8*** %line_ptrs, align 8
  %28 = load i32, i32* %y.addr, align 4
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %27, i64 %idx.ext
  store i8** %add.ptr, i8*** %dest_line, align 8
  %29 = load i8**, i8*** %dest_line, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %offset, align 4
  %idx.ext9 = sext i32 %31 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %30, i64 %idx.ext9
  store i8* %add.ptr10, i8** %dest, align 8
  %32 = load i8*, i8** %base.addr, align 8
  %33 = load i32, i32* %sourcex.addr, align 4
  %shr = ashr i32 %33, 3
  %idx.ext11 = sext i32 %shr to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %32, i64 %idx.ext11
  store i8* %add.ptr12, i8** %line, align 8
  %34 = load i32, i32* %sourcex.addr, align 4
  %and = and i32 %34, 7
  %shr13 = ashr i32 128, %and
  store i32 %shr13, i32* %first_bit, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end, %if.end.6
  %35 = load i32, i32* %h.addr, align 4
  %dec = add nsw i32 %35, -1
  store i32 %dec, i32* %h.addr, align 4
  %cmp14 = icmp sgt i32 %35, 0
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %36 = load i8*, i8** %dest, align 8
  %37 = bitcast i8* %36 to i64*
  store i64* %37, i64** %pptr, align 8
  %38 = load i8*, i8** %line, align 8
  store i8* %38, i8** %sptr, align 8
  %39 = load i8*, i8** %sptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr, i8** %sptr, align 8
  %40 = load i8, i8* %39, align 1
  %conv16 = zext i8 %40 to i32
  store i32 %conv16, i32* %sbyte, align 4
  %41 = load i32, i32* %first_bit, align 4
  store i32 %41, i32* %bit, align 4
  %42 = load i32, i32* %w.addr, align 4
  store i32 %42, i32* %count, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.body
  %43 = load i32, i32* %sbyte, align 4
  %44 = load i32, i32* %bit, align 4
  %and17 = and i32 %43, %44
  %tobool = icmp ne i32 %and17, 0
  br i1 %tobool, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %do.body
  %45 = load i64, i64* %one.addr, align 8
  %cmp19 = icmp ne i64 %45, -1
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.18
  %46 = load i64, i64* %one.addr, align 8
  %47 = load i64*, i64** %pptr, align 8
  store i64 %46, i64* %47, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.then.18
  br label %if.end.27

if.else:                                          ; preds = %do.body
  %48 = load i64, i64* %zero.addr, align 8
  %cmp23 = icmp ne i64 %48, -1
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.else
  %49 = load i64, i64* %zero.addr, align 8
  %50 = load i64*, i64** %pptr, align 8
  store i64 %49, i64* %50, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.22
  %51 = load i32, i32* %bit, align 4
  %shr28 = ashr i32 %51, 1
  store i32 %shr28, i32* %bit, align 4
  %cmp29 = icmp eq i32 %shr28, 0
  br i1 %cmp29, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.end.27
  store i32 128, i32* %bit, align 4
  %52 = load i8*, i8** %sptr, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr32, i8** %sptr, align 8
  %53 = load i8, i8* %52, align 1
  %conv33 = zext i8 %53 to i32
  store i32 %conv33, i32* %sbyte, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.end.27
  %54 = load i64*, i64** %pptr, align 8
  %incdec.ptr35 = getelementptr inbounds i64, i64* %54, i32 1
  store i64* %incdec.ptr35, i64** %pptr, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.34
  %55 = load i32, i32* %count, align 4
  %dec36 = add nsw i32 %55, -1
  store i32 %dec36, i32* %count, align 4
  %cmp37 = icmp sgt i32 %dec36, 0
  br i1 %cmp37, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %56 = load i32, i32* %raster.addr, align 4
  %57 = load i8*, i8** %line, align 8
  %idx.ext39 = sext i32 %56 to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %57, i64 %idx.ext39
  store i8* %add.ptr40, i8** %line, align 8
  %58 = load i8**, i8*** %dest_line, align 8
  %incdec.ptr41 = getelementptr inbounds i8*, i8** %58, i32 1
  store i8** %incdec.ptr41, i8*** %dest_line, align 8
  %59 = load i8**, i8*** %dest_line, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %offset, align 4
  %idx.ext42 = sext i32 %61 to i64
  %add.ptr43 = getelementptr inbounds i8, i8* %60, i64 %idx.ext42
  store i8* %add.ptr43, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.4
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define i32 @mem_true32_copy_color(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %raster, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %fault = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i8* %base, i8** %base.addr, align 8
  store i32 %sourcex, i32* %sourcex.addr, align 4
  store i32 %raster, i32* %raster.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %1 = bitcast %struct.gx_device_s* %0 to %struct.gx_device_memory_s*
  %bring_in_proc = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i32 0, i32 15
  %2 = load i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)** %bring_in_proc, align 8
  %cmp = icmp ne i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)* %2, @mem_no_fault_proc
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %4 = bitcast %struct.gx_device_s* %3 to %struct.gx_device_memory_s*
  %bring_in_proc1 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %4, i32 0, i32 15
  %5 = load i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)** %bring_in_proc1, align 8
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %7 = bitcast %struct.gx_device_s* %6 to %struct.gx_device_memory_s*
  %8 = load i32, i32* %x.addr, align 4
  %shl = shl i32 %8, 2
  %9 = load i32, i32* %y.addr, align 4
  %10 = load i32, i32* %w.addr, align 4
  %shl2 = shl i32 %10, 2
  %11 = load i32, i32* %h.addr, align 4
  %call = call i32 %5(%struct.gx_device_memory_s* %7, i32 %shl, i32 %9, i32 %shl2, i32 %11, i32 1)
  store i32 %call, i32* %fault, align 4
  %12 = load i32, i32* %fault, align 4
  %cmp3 = icmp slt i32 %12, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %14 = load i8*, i8** %base.addr, align 8
  %15 = load i32, i32* %sourcex.addr, align 4
  %16 = load i32, i32* %raster.addr, align 4
  %17 = load i32, i32* %x.addr, align 4
  %18 = load i32, i32* %y.addr, align 4
  %19 = load i32, i32* %w.addr, align 4
  %20 = load i32, i32* %h.addr, align 4
  %21 = load i32, i32* %fault, align 4
  %call5 = call i32 @mem_copy_color_recover(%struct.gx_device_s* %13, i8* %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21)
  store i32 %call5, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %22 = load i32, i32* %w.addr, align 4
  %cmp7 = icmp sle i32 %22, 0
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %23 = load i32, i32* %h.addr, align 4
  %cmp8 = icmp sle i32 %23, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false, %if.end.6
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %lor.lhs.false
  %24 = load i32, i32* %x.addr, align 4
  %cmp11 = icmp slt i32 %24, 0
  br i1 %cmp11, label %if.then.19, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %if.end.10
  %25 = load i32, i32* %x.addr, align 4
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %27 = bitcast %struct.gx_device_s* %26 to %struct.gx_device_memory_s*
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %27, i32 0, i32 3
  %28 = load i32, i32* %width, align 4
  %29 = load i32, i32* %w.addr, align 4
  %sub = sub nsw i32 %28, %29
  %cmp13 = icmp sgt i32 %25, %sub
  br i1 %cmp13, label %if.then.19, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.12
  %30 = load i32, i32* %y.addr, align 4
  %cmp15 = icmp slt i32 %30, 0
  br i1 %cmp15, label %if.then.19, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.14
  %31 = load i32, i32* %y.addr, align 4
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %33 = bitcast %struct.gx_device_s* %32 to %struct.gx_device_memory_s*
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %33, i32 0, i32 4
  %34 = load i32, i32* %height, align 4
  %35 = load i32, i32* %h.addr, align 4
  %sub17 = sub nsw i32 %34, %35
  %cmp18 = icmp sgt i32 %31, %sub17
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false.16, %lor.lhs.false.14, %lor.lhs.false.12, %if.end.10
  store i32 -1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %lor.lhs.false.16
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %37 = load i8*, i8** %base.addr, align 8
  %38 = load i32, i32* %sourcex.addr, align 4
  %shl21 = shl i32 %38, 2
  %idx.ext = sext i32 %shl21 to i64
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %idx.ext
  %39 = load i32, i32* %raster.addr, align 4
  %40 = load i32, i32* %x.addr, align 4
  %shl22 = shl i32 %40, 2
  %41 = load i32, i32* %y.addr, align 4
  %42 = load i32, i32* %w.addr, align 4
  %shl23 = shl i32 %42, 2
  %43 = load i32, i32* %h.addr, align 4
  %call24 = call i32 @copy_byte_rect(%struct.gx_device_s* %36, i8* %add.ptr, i32 %39, i32 %shl22, i32 %41, i32 %shl23, i32 %43)
  store i32 %call24, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.19, %if.then.9, %if.then.4
  %44 = load i32, i32* %retval
  ret i32 %44
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
