; ModuleID = './MultiSource.Benchmarks.MallocBench/57.gs.gxcache.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_char_s = type { %struct.cached_char_s*, i32, %struct.cached_fm_pair_s*, i16, i16, i16, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i8* }
%struct.cached_fm_pair_s = type { %struct.gs_font_s*, float, float, float, float, i32 }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_font_dir_s*, i8*, %struct.gs_matrix_s, i32, float, float, float, float, i32, i64, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i32, i8*)*, i8* }
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gs_show_enum_s = type { %struct.gs_state_s*, i8*, i32, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gx_device_memory_s, %struct.device_s, i32, i32, %struct.gs_fixed_point_s, %struct.cached_char_s*, %struct.gs_point_s, i32, i32, i32 (%struct.gs_show_enum_s*)* }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32, %struct.gs_matrix_s, i32, i8*, i8**, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32, i32, i8* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_bitmap_s = type opaque
%struct.device_s = type { %struct.gx_device_s*, i32, i64, i64 }
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
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_font_dir_s = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)*, i64, %struct.gs_font_s*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x %struct.cached_char_s*], i8*, i32, %struct.cached_fm_pair_s*, i32, %struct.cached_char_s*, i32 }

@cached_char_sizeof = global i32 72, align 4
@cached_fm_pair_sizeof = global i32 32, align 4

; Function Attrs: nounwind uwtable
define %struct.cached_char_s* @gx_alloc_char_bits(%struct.gs_font_dir_s* %dir, %struct.gx_device_memory_s* %dev, i16 zeroext %iwidth, i16 zeroext %iheight) #0 {
entry:
  %retval = alloca %struct.cached_char_s*, align 8
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  %dev.addr = alloca %struct.gx_device_memory_s*, align 8
  %iwidth.addr = alloca i16, align 2
  %iheight.addr = alloca i16, align 2
  %isize = alloca i64, align 8
  %cc = alloca %struct.cached_char_s*, align 8
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8
  store %struct.gx_device_memory_s* %dev, %struct.gx_device_memory_s** %dev.addr, align 8
  store i16 %iwidth, i16* %iwidth.addr, align 2
  store i16 %iheight, i16* %iheight.addr, align 2
  %0 = load i16, i16* %iwidth.addr, align 2
  %conv = zext i16 %0 to i32
  %1 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i32 0, i32 3
  store i32 %conv, i32* %width, align 4
  %2 = load i16, i16* %iheight.addr, align 2
  %conv1 = zext i16 %2 to i32
  %3 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %3, i32 0, i32 4
  store i32 %conv1, i32* %height, align 4
  %4 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8
  %call = call i64 @gx_device_memory_bitmap_size(%struct.gx_device_memory_s* %4)
  store i64 %call, i64* %isize, align 8
  %5 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %5, i32 0, i32 12
  %6 = load i32, i32* %raster, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load i16, i16* %iheight.addr, align 2
  %conv3 = zext i16 %7 to i32
  %8 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8
  %upper = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %8, i32 0, i32 13
  %9 = load i32, i32* %upper, align 4
  %10 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8
  %raster4 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %10, i32 0, i32 12
  %11 = load i32, i32* %raster4, align 4
  %div = udiv i32 %9, %11
  %cmp5 = icmp ugt i32 %conv3, %div
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct.cached_char_s* null, %struct.cached_char_s** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %12 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8
  %csize = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %12, i32 0, i32 10
  %13 = load i32, i32* %csize, align 4
  %14 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8
  %cmax = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %14, i32 0, i32 11
  %15 = load i32, i32* %cmax, align 4
  %cmp7 = icmp uge i32 %13, %15
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %16 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8
  %bmax = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %16, i32 0, i32 7
  %17 = load i32, i32* %bmax, align 4
  %18 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8
  %bsize = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %18, i32 0, i32 6
  %19 = load i32, i32* %bsize, align 4
  %sub = sub i32 %17, %19
  %conv9 = zext i32 %sub to i64
  %20 = load i64, i64* %isize, align 8
  %cmp10 = icmp ult i64 %conv9, %20
  br i1 %cmp10, label %if.then.12, label %if.end.23

if.then.12:                                       ; preds = %lor.lhs.false, %if.end
  %21 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8
  %cmax13 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %21, i32 0, i32 11
  %22 = load i32, i32* %cmax13, align 4
  %cmp14 = icmp eq i32 %22, 0
  br i1 %cmp14, label %if.then.21, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %if.then.12
  %23 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8
  %bmax17 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %23, i32 0, i32 7
  %24 = load i32, i32* %bmax17, align 4
  %conv18 = zext i32 %24 to i64
  %25 = load i64, i64* %isize, align 8
  %cmp19 = icmp ult i64 %conv18, %25
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %lor.lhs.false.16, %if.then.12
  store %struct.cached_char_s* null, %struct.cached_char_s** %retval
  br label %return

if.end.22:                                        ; preds = %lor.lhs.false.16
  %26 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8
  call void @zap_cache(%struct.gs_font_dir_s* %26)
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %lor.lhs.false
  %27 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8
  %cnext = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %27, i32 0, i32 20
  %28 = load i32, i32* %cnext, align 4
  %inc = add i32 %28, 1
  store i32 %inc, i32* %cnext, align 4
  %idxprom = zext i32 %28 to i64
  %29 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8
  %cdata = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %29, i32 0, i32 19
  %30 = load %struct.cached_char_s*, %struct.cached_char_s** %cdata, align 8
  %arrayidx = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %30, i64 %idxprom
  store %struct.cached_char_s* %arrayidx, %struct.cached_char_s** %cc, align 8
  %31 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8
  %bnext = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %31, i32 0, i32 16
  %32 = load i32, i32* %bnext, align 4
  %idxprom24 = zext i32 %32 to i64
  %33 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8
  %bdata = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %33, i32 0, i32 15
  %34 = load i8*, i8** %bdata, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %34, i64 %idxprom24
  %35 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  %bits = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %35, i32 0, i32 8
  store i8* %arrayidx25, i8** %bits, align 8
  %36 = load i64, i64* %isize, align 8
  %37 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8
  %bnext26 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %37, i32 0, i32 16
  %38 = load i32, i32* %bnext26, align 4
  %conv27 = zext i32 %38 to i64
  %add = add i64 %conv27, %36
  %conv28 = trunc i64 %add to i32
  store i32 %conv28, i32* %bnext26, align 4
  %39 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  %bits29 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %39, i32 0, i32 8
  %40 = load i8*, i8** %bits29, align 8
  %41 = load i64, i64* %isize, align 8
  %conv30 = trunc i64 %41 to i32
  %conv31 = zext i32 %conv30 to i64
  call void @llvm.memset.p0i8.i64(i8* %40, i8 0, i64 %conv31, i32 1, i1 false)
  %42 = load i16, i16* %iwidth.addr, align 2
  %43 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  %width32 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %43, i32 0, i32 5
  store i16 %42, i16* %width32, align 2
  %44 = load i16, i16* %iheight.addr, align 2
  %45 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  %height33 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %45, i32 0, i32 4
  store i16 %44, i16* %height33, align 2
  %46 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8
  %raster34 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %46, i32 0, i32 12
  %47 = load i32, i32* %raster34, align 4
  %conv35 = trunc i32 %47 to i16
  %48 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  %raster36 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %48, i32 0, i32 3
  store i16 %conv35, i16* %raster36, align 2
  %49 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  %bits37 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %49, i32 0, i32 8
  %50 = load i8*, i8** %bits37, align 8
  %51 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %51, i32 0, i32 13
  store i8* %50, i8** %base, align 8
  %52 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %52, i32 0, i32 1
  %53 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs, align 8
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %53, i32 0, i32 0
  %54 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device, align 8
  %55 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8
  %56 = bitcast %struct.gx_device_memory_s* %55 to %struct.gx_device_s*
  %call38 = call i32 %54(%struct.gx_device_s* %56)
  %57 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8
  %csize39 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %57, i32 0, i32 10
  %58 = load i32, i32* %csize39, align 4
  %inc40 = add i32 %58, 1
  store i32 %inc40, i32* %csize39, align 4
  %59 = load i64, i64* %isize, align 8
  %60 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8
  %bsize41 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %60, i32 0, i32 6
  %61 = load i32, i32* %bsize41, align 4
  %conv42 = zext i32 %61 to i64
  %add43 = add i64 %conv42, %59
  %conv44 = trunc i64 %add43 to i32
  store i32 %conv44, i32* %bsize41, align 4
  %62 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  store %struct.cached_char_s* %62, %struct.cached_char_s** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.21, %if.then
  %63 = load %struct.cached_char_s*, %struct.cached_char_s** %retval
  ret %struct.cached_char_s* %63
}

declare i64 @gx_device_memory_bitmap_size(%struct.gx_device_memory_s*) #1

; Function Attrs: nounwind uwtable
define void @zap_cache(%struct.gs_font_dir_s* %dir) #0 {
entry:
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8
  %0 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8
  %bsize = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i32 0, i32 6
  store i32 0, i32* %bsize, align 4
  %1 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8
  %msize = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %1, i32 0, i32 8
  store i32 0, i32* %msize, align 4
  %2 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8
  %csize = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %2, i32 0, i32 10
  store i32 0, i32* %csize, align 4
  %3 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8
  %bnext = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %3, i32 0, i32 16
  store i32 0, i32* %bnext, align 4
  %4 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8
  %mnext = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %4, i32 0, i32 18
  store i32 0, i32* %mnext, align 4
  %5 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8
  %cnext = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %5, i32 0, i32 20
  store i32 0, i32* %cnext, align 4
  %6 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8
  %chars = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %6, i32 0, i32 14
  %arraydecay = getelementptr inbounds [128 x %struct.cached_char_s*], [128 x %struct.cached_char_s*]* %chars, i32 0, i32 0
  %7 = bitcast %struct.cached_char_s** %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 1024, i32 1, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @gx_unalloc_cached_char(%struct.gs_font_dir_s* %dir, %struct.cached_char_s* %cc) #0 {
entry:
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  %cc.addr = alloca %struct.cached_char_s*, align 8
  %isize = alloca i32, align 4
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8
  store %struct.cached_char_s* %cc, %struct.cached_char_s** %cc.addr, align 8
  %0 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8
  %raster = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %0, i32 0, i32 3
  %1 = load i16, i16* %raster, align 2
  %conv = zext i16 %1 to i32
  %2 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8
  %height = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %2, i32 0, i32 4
  %3 = load i16, i16* %height, align 2
  %conv1 = zext i16 %3 to i32
  %mul = mul nsw i32 %conv, %conv1
  store i32 %mul, i32* %isize, align 4
  %4 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8
  %cnext = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %4, i32 0, i32 20
  %5 = load i32, i32* %cnext, align 4
  %dec = add i32 %5, -1
  store i32 %dec, i32* %cnext, align 4
  %6 = load i32, i32* %isize, align 4
  %7 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8
  %bnext = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %7, i32 0, i32 16
  %8 = load i32, i32* %bnext, align 4
  %sub = sub i32 %8, %6
  store i32 %sub, i32* %bnext, align 4
  %9 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8
  %csize = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %9, i32 0, i32 10
  %10 = load i32, i32* %csize, align 4
  %dec2 = add i32 %10, -1
  store i32 %dec2, i32* %csize, align 4
  %11 = load i32, i32* %isize, align 4
  %12 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8
  %bsize = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %12, i32 0, i32 6
  %13 = load i32, i32* %bsize, align 4
  %sub3 = sub i32 %13, %11
  store i32 %sub3, i32* %bsize, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.cached_fm_pair_s* @gx_lookup_fm_pair(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca %struct.cached_fm_pair_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %mxx = alloca float, align 4
  %mxy = alloca float, align 4
  %myx = alloca float, align 4
  %myy = alloca float, align 4
  %font = alloca %struct.gs_font_s*, align 8
  %dir = alloca %struct.gs_font_dir_s*, align 8
  %pair = alloca %struct.cached_fm_pair_s*, align 8
  %count = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %char_tm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 17
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %char_tm, i32 0, i32 0
  %1 = load float, float* %xx, align 4
  store float %1, float* %mxx, align 4
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %char_tm1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 17
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %char_tm1, i32 0, i32 2
  %3 = load float, float* %xy, align 4
  store float %3, float* %mxy, align 4
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %char_tm2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 17
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %char_tm2, i32 0, i32 4
  %5 = load float, float* %yx, align 4
  store float %5, float* %myx, align 4
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %char_tm3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 17
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %char_tm3, i32 0, i32 6
  %7 = load float, float* %yy, align 4
  store float %7, float* %myy, align 4
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %font4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 16
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %font4, align 8
  store %struct.gs_font_s* %9, %struct.gs_font_s** %font, align 8
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8
  %dir5 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %10, i32 0, i32 3
  %11 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir5, align 8
  store %struct.gs_font_dir_s* %11, %struct.gs_font_dir_s** %dir, align 8
  %12 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8
  %mdata = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %12, i32 0, i32 17
  %13 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata, align 8
  %14 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8
  %mnext = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %14, i32 0, i32 18
  %15 = load i32, i32* %mnext, align 4
  %idx.ext = zext i32 %15 to i64
  %add.ptr = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %13, i64 %idx.ext
  store %struct.cached_fm_pair_s* %add.ptr, %struct.cached_fm_pair_s** %pair, align 8
  %16 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8
  %msize = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %16, i32 0, i32 8
  %17 = load i32, i32* %msize, align 4
  store i32 %17, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.23, %entry
  %18 = load i32, i32* %count, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %count, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8
  %20 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8
  %mdata6 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %20, i32 0, i32 17
  %21 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata6, align 8
  %cmp = icmp eq %struct.cached_fm_pair_s* %19, %21
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %22 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8
  %mmax = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %22, i32 0, i32 9
  %23 = load i32, i32* %mmax, align 4
  %24 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8
  %idx.ext7 = zext i32 %23 to i64
  %add.ptr8 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %24, i64 %idx.ext7
  store %struct.cached_fm_pair_s* %add.ptr8, %struct.cached_fm_pair_s** %pair, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %25 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8
  %incdec.ptr = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %25, i32 -1
  store %struct.cached_fm_pair_s* %incdec.ptr, %struct.cached_fm_pair_s** %pair, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %26 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8
  %font9 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %26, i32 0, i32 0
  %27 = load %struct.gs_font_s*, %struct.gs_font_s** %font9, align 8
  %28 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8
  %cmp10 = icmp eq %struct.gs_font_s* %27, %28
  br i1 %cmp10, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.end
  %29 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8
  %mxx11 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %29, i32 0, i32 1
  %30 = load float, float* %mxx11, align 4
  %31 = load float, float* %mxx, align 4
  %cmp12 = fcmp oeq float %30, %31
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.23

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %32 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8
  %mxy14 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %32, i32 0, i32 2
  %33 = load float, float* %mxy14, align 4
  %34 = load float, float* %mxy, align 4
  %cmp15 = fcmp oeq float %33, %34
  br i1 %cmp15, label %land.lhs.true.16, label %if.end.23

land.lhs.true.16:                                 ; preds = %land.lhs.true.13
  %35 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8
  %myx17 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %35, i32 0, i32 3
  %36 = load float, float* %myx17, align 4
  %37 = load float, float* %myx, align 4
  %cmp18 = fcmp oeq float %36, %37
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.23

land.lhs.true.19:                                 ; preds = %land.lhs.true.16
  %38 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8
  %myy20 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %38, i32 0, i32 4
  %39 = load float, float* %myy20, align 4
  %40 = load float, float* %myy, align 4
  %cmp21 = fcmp oeq float %39, %40
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %land.lhs.true.19
  %41 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8
  store %struct.cached_fm_pair_s* %41, %struct.cached_fm_pair_s** %retval
  br label %return

if.end.23:                                        ; preds = %land.lhs.true.19, %land.lhs.true.16, %land.lhs.true.13, %land.lhs.true, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %42 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8
  %msize24 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %42, i32 0, i32 8
  %43 = load i32, i32* %msize24, align 4
  %44 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8
  %mmax25 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %44, i32 0, i32 9
  %45 = load i32, i32* %mmax25, align 4
  %cmp26 = icmp eq i32 %43, %45
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %while.end
  %46 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8
  call void @zap_cache(%struct.gs_font_dir_s* %46)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %while.end
  %47 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8
  %msize29 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %47, i32 0, i32 8
  %48 = load i32, i32* %msize29, align 4
  %inc = add i32 %48, 1
  store i32 %inc, i32* %msize29, align 4
  %49 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8
  %mdata30 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %49, i32 0, i32 17
  %50 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata30, align 8
  %51 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8
  %mnext31 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %51, i32 0, i32 18
  %52 = load i32, i32* %mnext31, align 4
  %idx.ext32 = zext i32 %52 to i64
  %add.ptr33 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %50, i64 %idx.ext32
  store %struct.cached_fm_pair_s* %add.ptr33, %struct.cached_fm_pair_s** %pair, align 8
  %53 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8
  %mnext34 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %53, i32 0, i32 18
  %54 = load i32, i32* %mnext34, align 4
  %inc35 = add i32 %54, 1
  store i32 %inc35, i32* %mnext34, align 4
  %55 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8
  %mmax36 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %55, i32 0, i32 9
  %56 = load i32, i32* %mmax36, align 4
  %cmp37 = icmp eq i32 %inc35, %56
  br i1 %cmp37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.28
  %57 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8
  %mnext39 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %57, i32 0, i32 18
  store i32 0, i32* %mnext39, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.end.28
  %58 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8
  %59 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8
  %font41 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %59, i32 0, i32 0
  store %struct.gs_font_s* %58, %struct.gs_font_s** %font41, align 8
  %60 = load float, float* %mxx, align 4
  %61 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8
  %mxx42 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %61, i32 0, i32 1
  store float %60, float* %mxx42, align 4
  %62 = load float, float* %mxy, align 4
  %63 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8
  %mxy43 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %63, i32 0, i32 2
  store float %62, float* %mxy43, align 4
  %64 = load float, float* %myx, align 4
  %65 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8
  %myx44 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %65, i32 0, i32 3
  store float %64, float* %myx44, align 4
  %66 = load float, float* %myy, align 4
  %67 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8
  %myy45 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %67, i32 0, i32 4
  store float %66, float* %myy45, align 4
  %68 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8
  %num_chars = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %68, i32 0, i32 5
  store i32 0, i32* %num_chars, align 4
  %69 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8
  store %struct.cached_fm_pair_s* %69, %struct.cached_fm_pair_s** %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.then.22
  %70 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %retval
  ret %struct.cached_fm_pair_s* %70
}

; Function Attrs: nounwind uwtable
define void @gx_add_cached_char(%struct.gs_font_dir_s* %dir, %struct.cached_char_s* %cc, %struct.cached_fm_pair_s* %pair) #0 {
entry:
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  %cc.addr = alloca %struct.cached_char_s*, align 8
  %pair.addr = alloca %struct.cached_fm_pair_s*, align 8
  %head = alloca %struct.cached_char_s**, align 8
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8
  store %struct.cached_char_s* %cc, %struct.cached_char_s** %cc.addr, align 8
  store %struct.cached_fm_pair_s* %pair, %struct.cached_fm_pair_s** %pair.addr, align 8
  %0 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8
  %code = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %0, i32 0, i32 1
  %1 = load i32, i32* %code, align 4
  %and = and i32 %1, 127
  %idxprom = sext i32 %and to i64
  %2 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8
  %chars = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %2, i32 0, i32 14
  %arrayidx = getelementptr inbounds [128 x %struct.cached_char_s*], [128 x %struct.cached_char_s*]* %chars, i32 0, i64 %idxprom
  store %struct.cached_char_s** %arrayidx, %struct.cached_char_s*** %head, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load %struct.cached_char_s**, %struct.cached_char_s*** %head, align 8
  %4 = load %struct.cached_char_s*, %struct.cached_char_s** %3, align 8
  %cmp = icmp ne %struct.cached_char_s* %4, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.cached_char_s**, %struct.cached_char_s*** %head, align 8
  %6 = load %struct.cached_char_s*, %struct.cached_char_s** %5, align 8
  %next = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %6, i32 0, i32 0
  store %struct.cached_char_s** %next, %struct.cached_char_s*** %head, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8
  %8 = load %struct.cached_char_s**, %struct.cached_char_s*** %head, align 8
  store %struct.cached_char_s* %7, %struct.cached_char_s** %8, align 8
  %9 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8
  %next1 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %9, i32 0, i32 0
  store %struct.cached_char_s* null, %struct.cached_char_s** %next1, align 8
  %10 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8
  %11 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8
  %pair2 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %11, i32 0, i32 2
  store %struct.cached_fm_pair_s* %10, %struct.cached_fm_pair_s** %pair2, align 8
  %12 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8
  %num_chars = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %12, i32 0, i32 5
  %13 = load i32, i32* %num_chars, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %num_chars, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.cached_char_s* @gx_lookup_cached_char(%struct.gs_state_s* %pgs, %struct.cached_fm_pair_s* %pair, i32 %ccode) #0 {
entry:
  %retval = alloca %struct.cached_char_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pair.addr = alloca %struct.cached_fm_pair_s*, align 8
  %ccode.addr = alloca i32, align 4
  %cc = alloca %struct.cached_char_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store %struct.cached_fm_pair_s* %pair, %struct.cached_fm_pair_s** %pair.addr, align 8
  store i32 %ccode, i32* %ccode.addr, align 4
  %0 = load i32, i32* %ccode.addr, align 4
  %and = and i32 %0, 127
  %idxprom = sext i32 %and to i64
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 16
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8
  %dir = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %2, i32 0, i32 3
  %3 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8
  %chars = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %3, i32 0, i32 14
  %arrayidx = getelementptr inbounds [128 x %struct.cached_char_s*], [128 x %struct.cached_char_s*]* %chars, i32 0, i64 %idxprom
  %4 = load %struct.cached_char_s*, %struct.cached_char_s** %arrayidx, align 8
  store %struct.cached_char_s* %4, %struct.cached_char_s** %cc, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  %cmp = icmp ne %struct.cached_char_s* %5, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  %code = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %6, i32 0, i32 1
  %7 = load i32, i32* %code, align 4
  %8 = load i32, i32* %ccode.addr, align 4
  %cmp1 = icmp eq i32 %7, %8
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %9 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  %pair2 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %9, i32 0, i32 2
  %10 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair2, align 8
  %11 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair.addr, align 8
  %cmp3 = icmp eq %struct.cached_fm_pair_s* %10, %11
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  store %struct.cached_char_s* %12, %struct.cached_char_s** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.body
  %13 = load %struct.cached_char_s*, %struct.cached_char_s** %cc, align 8
  %next = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %13, i32 0, i32 0
  %14 = load %struct.cached_char_s*, %struct.cached_char_s** %next, align 8
  store %struct.cached_char_s* %14, %struct.cached_char_s** %cc, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct.cached_char_s* null, %struct.cached_char_s** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %15 = load %struct.cached_char_s*, %struct.cached_char_s** %retval
  ret %struct.cached_char_s* %15
}

; Function Attrs: nounwind uwtable
define i32 @gx_copy_cached_char(%struct.gs_show_enum_s* %penum, %struct.cached_char_s* %cc) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %cc.addr = alloca %struct.cached_char_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %code = alloca i32, align 4
  %pt = alloca %struct.gs_fixed_point_s, align 8
  %pdevc = alloca %struct.gx_device_color_s*, align 8
  %mat = alloca %struct.gs_matrix_s, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  store %struct.cached_char_s* %cc, %struct.cached_char_s** %cc.addr, align 8
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %pgs1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8
  store %struct.gs_state_s* %1, %struct.gs_state_s** %pgs, align 8
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 7
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  %position_valid = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %3, i32 0, i32 10
  %4 = load i8, i8* %position_valid, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %path2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 7
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %path2, align 8
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %6, i32 0, i32 9
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  %7 = load i64, i64* %x3, align 8
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  store i64 %7, i64* %x4, align 8
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %path5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 7
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %path5, align 8
  %position6 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %9, i32 0, i32 9
  %y7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position6, i32 0, i32 1
  %10 = load i64, i64* %y7, align 8
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  store i64 %10, i64* %y8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -14, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %code, align 4
  %11 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %12 = load i32, i32* %code, align 4
  store i32 %12, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %13 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %color_loaded = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %13, i32 0, i32 25
  %14 = load i32, i32* %color_loaded, align 4
  %tobool9 = icmp ne i32 %14, 0
  br i1 %tobool9, label %if.end.15, label %if.then.10

if.then.10:                                       ; preds = %if.end
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %dev_color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %15, i32 0, i32 14
  %16 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8
  store %struct.gx_device_color_s* %16, %struct.gx_device_color_s** %pdevc, align 8
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 13
  %18 = load %struct.gs_color_s*, %struct.gs_color_s** %color, align 8
  %19 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %call = call i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_color_render to i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...)*)(%struct.gs_color_s* %18, %struct.gx_device_color_s* %19, %struct.gs_state_s* %20)
  %21 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc, align 8
  %halftone_level = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %21, i32 0, i32 2
  %22 = load i32, i32* %halftone_level, align 4
  %cmp11 = icmp eq i32 %22, 0
  br i1 %cmp11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.then.10
  store i32 1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.10
  %23 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %color_loaded14 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %23, i32 0, i32 25
  store i32 1, i32* %color_loaded14, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.13, %if.end
  %24 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8
  %offset = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %24, i32 0, i32 7
  %x16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %offset, i32 0, i32 0
  %25 = load i64, i64* %x16, align 8
  %x17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %26 = load i64, i64* %x17, align 8
  %sub = sub nsw i64 %26, %25
  store i64 %sub, i64* %x17, align 8
  %x18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %27 = load i64, i64* %x18, align 8
  %add = add nsw i64 %27, 2048
  %shr = ashr i64 %add, 12
  %conv = trunc i64 %shr to i32
  store i32 %conv, i32* %x, align 4
  %28 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8
  %offset19 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %28, i32 0, i32 7
  %y20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %offset19, i32 0, i32 1
  %29 = load i64, i64* %y20, align 8
  %y21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %30 = load i64, i64* %y21, align 8
  %sub22 = sub nsw i64 %30, %29
  store i64 %sub22, i64* %y21, align 8
  %y23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %31 = load i64, i64* %y23, align 8
  %add24 = add nsw i64 %31, 2048
  %shr25 = ashr i64 %add24, 12
  %conv26 = trunc i64 %shr25 to i32
  store i32 %conv26, i32* %y, align 4
  %32 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8
  %width = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %32, i32 0, i32 5
  %33 = load i16, i16* %width, align 2
  %conv27 = zext i16 %33 to i32
  store i32 %conv27, i32* %w, align 4
  %34 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8
  %height = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %34, i32 0, i32 4
  %35 = load i16, i16* %height, align 2
  %conv28 = zext i16 %35 to i32
  store i32 %conv28, i32* %h, align 4
  %36 = load i32, i32* %x, align 4
  %37 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %cxmin = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %37, i32 0, i32 13
  %38 = load i32, i32* %cxmin, align 4
  %cmp29 = icmp slt i32 %36, %38
  br i1 %cmp29, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.15
  %39 = load i32, i32* %x, align 4
  %40 = load i32, i32* %w, align 4
  %add31 = add nsw i32 %39, %40
  %41 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %cxmax = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %41, i32 0, i32 15
  %42 = load i32, i32* %cxmax, align 4
  %cmp32 = icmp sgt i32 %add31, %42
  br i1 %cmp32, label %if.then.41, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %lor.lhs.false
  %43 = load i32, i32* %y, align 4
  %44 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %cymin = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %44, i32 0, i32 14
  %45 = load i32, i32* %cymin, align 4
  %cmp35 = icmp slt i32 %43, %45
  br i1 %cmp35, label %if.then.41, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.34
  %46 = load i32, i32* %y, align 4
  %47 = load i32, i32* %h, align 4
  %add38 = add nsw i32 %46, %47
  %48 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8
  %cymax = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %48, i32 0, i32 16
  %49 = load i32, i32* %cymax, align 4
  %cmp39 = icmp sgt i32 %add38, %49
  br i1 %cmp39, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %lor.lhs.false.37, %lor.lhs.false.34, %lor.lhs.false, %if.end.15
  %50 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %ctm = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %50, i32 0, i32 2
  %51 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %52 = bitcast %struct.gs_matrix_s* %mat to i8*
  %53 = bitcast %struct.gs_matrix_s* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 96, i32 8, i1 false)
  %x42 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %54 = load i64, i64* %x42, align 8
  %conv43 = sitofp i64 %54 to double
  %mul = fmul double %conv43, 0x3F30000000000000
  %conv44 = fptrunc double %mul to float
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 8
  %55 = load float, float* %tx, align 4
  %sub45 = fsub float %55, %conv44
  store float %sub45, float* %tx, align 4
  %y46 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %56 = load i64, i64* %y46, align 8
  %conv47 = sitofp i64 %56 to double
  %mul48 = fmul double %conv47, 0x3F30000000000000
  %conv49 = fptrunc double %mul48 to float
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 10
  %57 = load float, float* %ty, align 4
  %sub50 = fsub float %57, %conv49
  store float %sub50, float* %ty, align 4
  %58 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %59 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8
  %raster = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %59, i32 0, i32 3
  %60 = load i16, i16* %raster, align 2
  %conv51 = zext i16 %60 to i32
  %mul52 = mul nsw i32 %conv51, 8
  %61 = load i32, i32* %h, align 4
  %62 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8
  %bits = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %62, i32 0, i32 8
  %63 = load i8*, i8** %bits, align 8
  %call53 = call i32 @gs_imagemask(%struct.gs_state_s* %58, i32 %mul52, i32 %61, i32 1, %struct.gs_matrix_s* %mat, i8* %63)
  store i32 %call53, i32* %code, align 4
  br label %if.end.59

if.else:                                          ; preds = %lor.lhs.false.37
  %64 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %64, i32 0, i32 22
  %65 = load %struct.device_s*, %struct.device_s** %device, align 8
  %info = getelementptr inbounds %struct.device_s, %struct.device_s* %65, i32 0, i32 0
  %66 = load %struct.gx_device_s*, %struct.gx_device_s** %info, align 8
  store %struct.gx_device_s* %66, %struct.gx_device_s** %dev, align 8
  %67 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %67, i32 0, i32 1
  %68 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs, align 8
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %68, i32 0, i32 9
  %69 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8
  %70 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %71 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8
  %bits54 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %71, i32 0, i32 8
  %72 = load i8*, i8** %bits54, align 8
  %73 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8
  %raster55 = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %73, i32 0, i32 3
  %74 = load i16, i16* %raster55, align 2
  %conv56 = zext i16 %74 to i32
  %75 = load i32, i32* %x, align 4
  %76 = load i32, i32* %y, align 4
  %77 = load i32, i32* %w, align 4
  %78 = load i32, i32* %h, align 4
  %79 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8
  %dev_color57 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %79, i32 0, i32 14
  %80 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color57, align 8
  %color1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %80, i32 0, i32 0
  %81 = load i64, i64* %color1, align 8
  %call58 = call i32 %69(%struct.gx_device_s* %70, i8* %72, i32 0, i32 %conv56, i32 %75, i32 %76, i32 %77, i32 %78, i64 -1, i64 %81)
  store i32 %call58, i32* %code, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else, %if.then.41
  %82 = load i32, i32* %code, align 4
  %cmp60 = icmp slt i32 %82, 0
  br i1 %cmp60, label %cond.true.62, label %cond.false.63

cond.true.62:                                     ; preds = %if.end.59
  %83 = load i32, i32* %code, align 4
  br label %cond.end.64

cond.false.63:                                    ; preds = %if.end.59
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.63, %cond.true.62
  %cond65 = phi i32 [ %83, %cond.true.62 ], [ 0, %cond.false.63 ]
  store i32 %cond65, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.64, %if.then.12, %if.then
  %84 = load i32, i32* %retval
  ret i32 %84
}

declare i32 @gx_color_render(...) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @gs_imagemask(%struct.gs_state_s*, i32, i32, i32, %struct.gs_matrix_s*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
