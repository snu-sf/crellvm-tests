; ModuleID = './MultiSource.Benchmarks.MallocBench/74.gs.gxht.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_ht_cache_s = type { i8*, i32, %struct.ht_bit_s*, i32, i32, [25 x %struct.bit_tile_s] }
%struct.ht_bit_s = type { i16, i16 }
%struct.bit_tile_s = type { i32, %struct.gx_bitmap_s }
%struct.gx_bitmap_s = type { i8*, i32, i32, i32 }
%struct.gx_device_color_s = type { i64, i64, i32, %struct.gx_bitmap_s* }
%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type opaque
%struct.line_params_s = type opaque
%struct.halftone_s = type { float, float, i32, i32, %struct.ht_bit_s*, i32 }
%struct.gs_color_s = type { i16, i16, i16, i16, i8, i8 }
%struct.gs_font_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type { %struct.gx_device_s*, i32, i64, i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }

@single_bits8 = global [32 x i8] c"\80\00@\00 \00\10\00\08\00\04\00\02\00\01\00\00\80\00@\00 \00\10\00\08\00\04\00\02\00\01", align 16
@mb1 = global [2 x i8] c"\FF\FF", align 1
@mb2 = global [4 x i8] c"\AA\AAUU", align 1
@mb3 = global [6 x i8] c"\92II$$\92", align 1
@mb4 = global [8 x i8] c"\88\88DD\22\22\11\11", align 1
@mb5 = global [10 x i8] c"\84!B\10!\08\10\84\08B", align 1
@mb6 = global [12 x i8] c"\82\08A\04 \82\10A\08 \04\10", align 1
@mb7 = global [14 x i8] c"\81\02@\81 @\10 \08\10\04\08\02\04", align 1
@mb8 = global [16 x i8] c"\80\80@@  \10\10\08\08\04\04\02\02\01\01", align 16
@multi_bits = global [9 x i16*] [i16* null, i16* bitcast ([2 x i8]* @mb1 to i16*), i16* bitcast ([4 x i8]* @mb2 to i16*), i16* bitcast ([6 x i8]* @mb3 to i16*), i16* bitcast ([8 x i8]* @mb4 to i16*), i16* bitcast ([10 x i8]* @mb5 to i16*), i16* bitcast ([12 x i8]* @mb6 to i16*), i16* bitcast ([14 x i8]* @mb7 to i16*), i16* bitcast ([16 x i8]* @mb8 to i16*)], align 16
@cache = common global %struct.gx_ht_cache_s zeroinitializer, align 8
@cache_bits = common global [1000 x i8] zeroinitializer, align 16
@init_ht.up_to_16 = internal global [9 x i32] [i32 0, i32 16, i32 16, i32 15, i32 16, i32 15, i32 12, i32 14, i32 16], align 16

; Function Attrs: nounwind uwtable
define i32 @gx_ht_construct_order(%struct.ht_bit_s* %order, i32 %width, i32 %height) #0 {
entry:
  %retval = alloca i32, align 4
  %order.addr = alloca %struct.ht_bit_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %padding = alloca i32, align 4
  %pix = alloca i32, align 4
  store %struct.ht_bit_s* %order, %struct.ht_bit_s** %order.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i32, i32* %width.addr, align 4
  %1 = load i32, i32* %height.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %size, align 4
  %2 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 0, %2
  %and = and i32 %sub, 31
  store i32 %and, i32* %padding, align 4
  %3 = load i32, i32* %width.addr, align 4
  %4 = load i32, i32* %padding, align 4
  %add = add nsw i32 %3, %4
  %div = sdiv i32 %add, 8
  %5 = load i32, i32* %height.addr, align 4
  %mul1 = mul nsw i32 %div, %5
  %cmp = icmp sgt i32 %mul1, 1000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -13, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct.ht_bit_s* null, %struct.ht_bit_s** getelementptr inbounds (%struct.gx_ht_cache_s, %struct.gx_ht_cache_s* @cache, i32 0, i32 2), align 8
  store i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @cache_bits, i32 0, i32 0), i8** getelementptr inbounds (%struct.gx_ht_cache_s, %struct.gx_ht_cache_s* @cache, i32 0, i32 0), align 8
  store i32 1000, i32* getelementptr inbounds (%struct.gx_ht_cache_s, %struct.gx_ht_cache_s* @cache, i32 0, i32 1), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %size, align 4
  %cmp2 = icmp ult i32 %6, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = zext i32 %8 to i64
  %9 = load %struct.ht_bit_s*, %struct.ht_bit_s** %order.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %9, i64 %idxprom
  %offset = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %arrayidx, i32 0, i32 0
  %10 = load i16, i16* %offset, align 2
  %conv = zext i16 %10 to i32
  store i32 %conv, i32* %pix, align 4
  %11 = load i32, i32* %pix, align 4
  %12 = load i32, i32* %width.addr, align 4
  %div3 = sdiv i32 %11, %12
  %13 = load i32, i32* %padding, align 4
  %mul4 = mul nsw i32 %div3, %13
  %14 = load i32, i32* %pix, align 4
  %add5 = add nsw i32 %14, %mul4
  store i32 %add5, i32* %pix, align 4
  %15 = load i32, i32* %pix, align 4
  %shr = ashr i32 %15, 4
  %shl = shl i32 %shr, 1
  %conv6 = trunc i32 %shl to i16
  %16 = load i32, i32* %i, align 4
  %idxprom7 = zext i32 %16 to i64
  %17 = load %struct.ht_bit_s*, %struct.ht_bit_s** %order.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %17, i64 %idxprom7
  %offset9 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %arrayidx8, i32 0, i32 0
  store i16 %conv6, i16* %offset9, align 2
  %18 = load i32, i32* %width.addr, align 4
  %cmp10 = icmp sle i32 %18, 8
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %19 = load i32, i32* %pix, align 4
  %and12 = and i32 %19, 15
  %idxprom13 = sext i32 %and12 to i64
  %20 = load i32, i32* %width.addr, align 4
  %idxprom14 = sext i32 %20 to i64
  %arrayidx15 = getelementptr inbounds [9 x i16*], [9 x i16*]* @multi_bits, i32 0, i64 %idxprom14
  %21 = load i16*, i16** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds i16, i16* %21, i64 %idxprom13
  %22 = load i16, i16* %arrayidx16, align 2
  %conv17 = zext i16 %22 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %23 = load i32, i32* %pix, align 4
  %and18 = and i32 %23, 15
  %idxprom19 = sext i32 %and18 to i64
  %arrayidx20 = getelementptr inbounds i16, i16* bitcast ([32 x i8]* @single_bits8 to i16*), i64 %idxprom19
  %24 = load i16, i16* %arrayidx20, align 2
  %conv21 = zext i16 %24 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv17, %cond.true ], [ %conv21, %cond.false ]
  %conv22 = trunc i32 %cond to i16
  %25 = load i32, i32* %i, align 4
  %idxprom23 = zext i32 %25 to i64
  %26 = load %struct.ht_bit_s*, %struct.ht_bit_s** %order.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %26, i64 %idxprom23
  %mask = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %arrayidx24, i32 0, i32 1
  store i16 %conv22, i16* %mask, align 2
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %27 = load i32, i32* %i, align 4
  %inc = add i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define void @gx_color_load(%struct.gx_device_color_s* %pdevc, %struct.gs_state_s* %pgs) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %level = alloca i32, align 4
  %pht = alloca %struct.halftone_s*, align 8
  %bt = alloca %struct.bit_tile_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %halftone_level = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 2
  %1 = load i32, i32* %halftone_level, align 4
  store i32 %1, i32* %level, align 4
  %2 = load i32, i32* %level, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %halftone = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 11
  %4 = load %struct.halftone_s*, %struct.halftone_s** %halftone, align 8
  store %struct.halftone_s* %4, %struct.halftone_s** %pht, align 8
  %5 = load %struct.ht_bit_s*, %struct.ht_bit_s** getelementptr inbounds (%struct.gx_ht_cache_s, %struct.gx_ht_cache_s* @cache, i32 0, i32 2), align 8
  %6 = load %struct.halftone_s*, %struct.halftone_s** %pht, align 8
  %order = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %6, i32 0, i32 4
  %7 = load %struct.ht_bit_s*, %struct.ht_bit_s** %order, align 8
  %cmp1 = icmp ne %struct.ht_bit_s* %5, %7
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %8 = load %struct.halftone_s*, %struct.halftone_s** %pht, align 8
  call void @init_ht(%struct.gx_ht_cache_s* @cache, %struct.halftone_s* %8)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %9 = load i32, i32* %level, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.gx_ht_cache_s, %struct.gx_ht_cache_s* @cache, i32 0, i32 4), align 4
  %div = sdiv i32 %9, %10
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds [25 x %struct.bit_tile_s], [25 x %struct.bit_tile_s]* getelementptr inbounds (%struct.gx_ht_cache_s, %struct.gx_ht_cache_s* @cache, i32 0, i32 5), i32 0, i64 %idxprom
  store %struct.bit_tile_s* %arrayidx, %struct.bit_tile_s** %bt, align 8
  %11 = load %struct.bit_tile_s*, %struct.bit_tile_s** %bt, align 8
  %level4 = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %11, i32 0, i32 0
  %12 = load i32, i32* %level4, align 4
  %13 = load i32, i32* %level, align 4
  %cmp5 = icmp ne i32 %12, %13
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  %14 = load %struct.bit_tile_s*, %struct.bit_tile_s** %bt, align 8
  %15 = load i32, i32* %level, align 4
  %16 = load %struct.halftone_s*, %struct.halftone_s** %pht, align 8
  call void @render_ht(%struct.bit_tile_s* %14, i32 %15, %struct.halftone_s* %16)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.3
  %17 = load %struct.bit_tile_s*, %struct.bit_tile_s** %bt, align 8
  %tile = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %17, i32 0, i32 1
  %18 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %tile8 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %18, i32 0, i32 3
  store %struct.gx_bitmap_s* %tile, %struct.gx_bitmap_s** %tile8, align 8
  br label %return

return:                                           ; preds = %if.end.7, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_ht(%struct.gx_ht_cache_s* %pcache, %struct.halftone_s* %pht) #0 {
entry:
  %pcache.addr = alloca %struct.gx_ht_cache_s*, align 8
  %pht.addr = alloca %struct.halftone_s*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %size = alloca i32, align 4
  %width_unit = alloca i32, align 4
  %raster = alloca i32, align 4
  %tile_bytes = alloca i32, align 4
  %num_cached = alloca i32, align 4
  %i = alloca i32, align 4
  %tbits = alloca i8*, align 8
  %bt = alloca %struct.bit_tile_s*, align 8
  store %struct.gx_ht_cache_s* %pcache, %struct.gx_ht_cache_s** %pcache.addr, align 8
  store %struct.halftone_s* %pht, %struct.halftone_s** %pht.addr, align 8
  %0 = load %struct.halftone_s*, %struct.halftone_s** %pht.addr, align 8
  %width1 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %0, i32 0, i32 2
  %1 = load i32, i32* %width1, align 4
  store i32 %1, i32* %width, align 4
  %2 = load %struct.halftone_s*, %struct.halftone_s** %pht.addr, align 8
  %height2 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %2, i32 0, i32 3
  %3 = load i32, i32* %height2, align 4
  store i32 %3, i32* %height, align 4
  %4 = load i32, i32* %width, align 4
  %5 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %4, %5
  store i32 %mul, i32* %size, align 4
  %6 = load i32, i32* %width, align 4
  %cmp = icmp sle i32 %6, 8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* %width, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [9 x i32], [9 x i32]* @init_ht.up_to_16, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %width, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, i32* %width_unit, align 4
  %10 = load i32, i32* %width, align 4
  %add = add nsw i32 %10, 31
  %shr = ashr i32 %add, 5
  %shl = shl i32 %shr, 2
  store i32 %shl, i32* %raster, align 4
  %11 = load i32, i32* %raster, align 4
  %12 = load i32, i32* %height, align 4
  %mul3 = mul i32 %11, %12
  store i32 %mul3, i32* %tile_bytes, align 4
  %13 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8
  %bits = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %13, i32 0, i32 0
  %14 = load i8*, i8** %bits, align 8
  store i8* %14, i8** %tbits, align 8
  %15 = load i32, i32* %tile_bytes, align 4
  %div = udiv i32 1000, %15
  store i32 %div, i32* %num_cached, align 4
  %16 = load i32, i32* %num_cached, align 4
  %17 = load i32, i32* %size, align 4
  %cmp4 = icmp sgt i32 %16, %17
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %18 = load i32, i32* %size, align 4
  store i32 %18, i32* %num_cached, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %19 = load i32, i32* %num_cached, align 4
  %cmp5 = icmp sgt i32 %19, 25
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 25, i32* %num_cached, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %num_cached, align 4
  %cmp8 = icmp slt i32 %20, %21
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %22 to i64
  %23 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8
  %tiles = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %23, i32 0, i32 5
  %arrayidx10 = getelementptr inbounds [25 x %struct.bit_tile_s], [25 x %struct.bit_tile_s]* %tiles, i32 0, i64 %idxprom9
  store %struct.bit_tile_s* %arrayidx10, %struct.bit_tile_s** %bt, align 8
  %24 = load %struct.bit_tile_s*, %struct.bit_tile_s** %bt, align 8
  %level = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %24, i32 0, i32 0
  store i32 -1, i32* %level, align 4
  %25 = load i8*, i8** %tbits, align 8
  %26 = load %struct.bit_tile_s*, %struct.bit_tile_s** %bt, align 8
  %tile = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %26, i32 0, i32 1
  %data = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %tile, i32 0, i32 0
  store i8* %25, i8** %data, align 8
  %27 = load i32, i32* %raster, align 4
  %28 = load %struct.bit_tile_s*, %struct.bit_tile_s** %bt, align 8
  %tile11 = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %28, i32 0, i32 1
  %raster12 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %tile11, i32 0, i32 1
  store i32 %27, i32* %raster12, align 4
  %29 = load i32, i32* %width_unit, align 4
  %30 = load %struct.bit_tile_s*, %struct.bit_tile_s** %bt, align 8
  %tile13 = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %30, i32 0, i32 1
  %width14 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %tile13, i32 0, i32 2
  store i32 %29, i32* %width14, align 4
  %31 = load i32, i32* %height, align 4
  %32 = load %struct.bit_tile_s*, %struct.bit_tile_s** %bt, align 8
  %tile15 = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %32, i32 0, i32 1
  %height16 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %tile15, i32 0, i32 3
  store i32 %31, i32* %height16, align 4
  %33 = load i32, i32* %tile_bytes, align 4
  %34 = load i8*, i8** %tbits, align 8
  %idx.ext = zext i32 %33 to i64
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %idx.ext
  store i8* %add.ptr, i8** %tbits, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct.halftone_s*, %struct.halftone_s** %pht.addr, align 8
  %order = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %36, i32 0, i32 4
  %37 = load %struct.ht_bit_s*, %struct.ht_bit_s** %order, align 8
  %38 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8
  %order17 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %38, i32 0, i32 2
  store %struct.ht_bit_s* %37, %struct.ht_bit_s** %order17, align 8
  %39 = load i32, i32* %num_cached, align 4
  %40 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8
  %num_cached18 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %40, i32 0, i32 3
  store i32 %39, i32* %num_cached18, align 4
  %41 = load i32, i32* %size, align 4
  %42 = load i32, i32* %num_cached, align 4
  %add19 = add nsw i32 %41, %42
  %sub = sub nsw i32 %add19, 1
  %43 = load i32, i32* %num_cached, align 4
  %div20 = sdiv i32 %sub, %43
  %44 = load %struct.gx_ht_cache_s*, %struct.gx_ht_cache_s** %pcache.addr, align 8
  %levels_per_tile = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %44, i32 0, i32 4
  store i32 %div20, i32* %levels_per_tile, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @render_ht(%struct.bit_tile_s* %pbt, i32 %level, %struct.halftone_s* %pht) #0 {
entry:
  %pbt.addr = alloca %struct.bit_tile_s*, align 8
  %level.addr = alloca i32, align 4
  %pht.addr = alloca %struct.halftone_s*, align 8
  %order = alloca %struct.ht_bit_s*, align 8
  %p = alloca %struct.ht_bit_s*, align 8
  %endp = alloca %struct.ht_bit_s*, align 8
  %bits = alloca i8*, align 8
  %old_level = alloca i32, align 4
  %tile_bytes = alloca i32, align 4
  store %struct.bit_tile_s* %pbt, %struct.bit_tile_s** %pbt.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store %struct.halftone_s* %pht, %struct.halftone_s** %pht.addr, align 8
  %0 = load %struct.halftone_s*, %struct.halftone_s** %pht.addr, align 8
  %order1 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %0, i32 0, i32 4
  %1 = load %struct.ht_bit_s*, %struct.ht_bit_s** %order1, align 8
  store %struct.ht_bit_s* %1, %struct.ht_bit_s** %order, align 8
  %2 = load %struct.bit_tile_s*, %struct.bit_tile_s** %pbt.addr, align 8
  %tile = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %2, i32 0, i32 1
  %data = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %tile, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  store i8* %3, i8** %bits, align 8
  %4 = load %struct.bit_tile_s*, %struct.bit_tile_s** %pbt.addr, align 8
  %level2 = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %4, i32 0, i32 0
  %5 = load i32, i32* %level2, align 4
  store i32 %5, i32* %old_level, align 4
  %6 = load i32, i32* %old_level, align 4
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %7 = load %struct.bit_tile_s*, %struct.bit_tile_s** %pbt.addr, align 8
  %tile3 = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %7, i32 0, i32 1
  %raster = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %tile3, i32 0, i32 1
  %8 = load i32, i32* %raster, align 4
  %9 = load %struct.bit_tile_s*, %struct.bit_tile_s** %pbt.addr, align 8
  %tile4 = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %9, i32 0, i32 1
  %height = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %tile4, i32 0, i32 3
  %10 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %8, %10
  store i32 %mul, i32* %tile_bytes, align 4
  %11 = load i32, i32* %level.addr, align 4
  %12 = load %struct.halftone_s*, %struct.halftone_s** %pht.addr, align 8
  %order_size = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %12, i32 0, i32 5
  %13 = load i32, i32* %order_size, align 4
  %shr = ashr i32 %13, 1
  %cmp5 = icmp sge i32 %11, %shr
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %14 = load %struct.halftone_s*, %struct.halftone_s** %pht.addr, align 8
  %order_size7 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %14, i32 0, i32 5
  %15 = load i32, i32* %order_size7, align 4
  store i32 %15, i32* %old_level, align 4
  %16 = load i8*, i8** %bits, align 8
  %17 = load i32, i32* %tile_bytes, align 4
  %conv = zext i32 %17 to i64
  call void @llvm.memset.p0i8.i64(i8* %16, i8 -1, i64 %conv, i32 1, i1 false)
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %old_level, align 4
  %18 = load i8*, i8** %bits, align 8
  %19 = load i32, i32* %tile_bytes, align 4
  %conv8 = zext i32 %19 to i64
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 %conv8, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %20 = load i32, i32* %level.addr, align 4
  %21 = load i32, i32* %old_level, align 4
  %cmp10 = icmp sgt i32 %20, %21
  br i1 %cmp10, label %if.then.12, label %if.else.15

if.then.12:                                       ; preds = %if.end.9
  %22 = load i32, i32* %old_level, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load %struct.ht_bit_s*, %struct.ht_bit_s** %order, align 8
  %arrayidx = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %23, i64 %idxprom
  store %struct.ht_bit_s* %arrayidx, %struct.ht_bit_s** %p, align 8
  %24 = load i32, i32* %level.addr, align 4
  %idxprom13 = sext i32 %24 to i64
  %25 = load %struct.ht_bit_s*, %struct.ht_bit_s** %order, align 8
  %arrayidx14 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %25, i64 %idxprom13
  store %struct.ht_bit_s* %arrayidx14, %struct.ht_bit_s** %endp, align 8
  br label %if.end.20

if.else.15:                                       ; preds = %if.end.9
  %26 = load i32, i32* %level.addr, align 4
  %idxprom16 = sext i32 %26 to i64
  %27 = load %struct.ht_bit_s*, %struct.ht_bit_s** %order, align 8
  %arrayidx17 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %27, i64 %idxprom16
  store %struct.ht_bit_s* %arrayidx17, %struct.ht_bit_s** %p, align 8
  %28 = load i32, i32* %old_level, align 4
  %idxprom18 = sext i32 %28 to i64
  %29 = load %struct.ht_bit_s*, %struct.ht_bit_s** %order, align 8
  %arrayidx19 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %29, i64 %idxprom18
  store %struct.ht_bit_s* %arrayidx19, %struct.ht_bit_s** %endp, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.15, %if.then.12
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.20
  %30 = load %struct.ht_bit_s*, %struct.ht_bit_s** %p, align 8
  %mask = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %30, i32 0, i32 1
  %31 = load i16, i16* %mask, align 2
  %conv21 = zext i16 %31 to i32
  %32 = load %struct.ht_bit_s*, %struct.ht_bit_s** %p, align 8
  %offset = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %32, i32 0, i32 0
  %33 = load i16, i16* %offset, align 2
  %idxprom22 = zext i16 %33 to i64
  %34 = load i8*, i8** %bits, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %34, i64 %idxprom22
  %35 = bitcast i8* %arrayidx23 to i16*
  %36 = load i16, i16* %35, align 2
  %conv24 = zext i16 %36 to i32
  %xor = xor i32 %conv24, %conv21
  %conv25 = trunc i32 %xor to i16
  store i16 %conv25, i16* %35, align 2
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %37 = load %struct.ht_bit_s*, %struct.ht_bit_s** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %37, i32 1
  store %struct.ht_bit_s* %incdec.ptr, %struct.ht_bit_s** %p, align 8
  %38 = load %struct.ht_bit_s*, %struct.ht_bit_s** %endp, align 8
  %cmp26 = icmp ult %struct.ht_bit_s* %incdec.ptr, %38
  br i1 %cmp26, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %39 = load i32, i32* %level.addr, align 4
  %40 = load %struct.bit_tile_s*, %struct.bit_tile_s** %pbt.addr, align 8
  %level28 = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %40, i32 0, i32 0
  store i32 %39, i32* %level28, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
