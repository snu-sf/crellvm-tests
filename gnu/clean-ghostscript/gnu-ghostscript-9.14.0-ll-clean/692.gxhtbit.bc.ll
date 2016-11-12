; ModuleID = './gxhtbit.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_ht_order_procs_s = type { i32, i32 (%struct.gx_ht_order_s*, i8*)*, i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)*, i32 (%struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s*)*, i32 (%struct.gx_ht_order_s*, i16, i8*, i32, i32, i32, i32, i32)* }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.gx_ht_order_procs_s*, %struct.gs_memory_s*, i32*, i8*, %struct.gx_ht_cache_s*, %struct.gx_transfer_map_s*, %struct.gx_ht_order_screen_params_s, i8*, i32 }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type opaque
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_gc_root_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gx_ht_cache_s = type opaque
%struct.gx_transfer_map_s = type opaque
%struct.gx_ht_order_screen_params_s = type { %struct.gs_matrix_s, i64 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_ht_tile_s = type { %struct.gx_strip_bitmap_s, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gx_device_halftone_resource_s = type { i8*, i32, i32, i32, i32, i32*, i8*, i32 }
%struct.gx_ht_bit_s = type { i32, i32 }

@ht_order_procs_table = constant [2 x %struct.gx_ht_order_procs_s] [%struct.gx_ht_order_procs_s { i32 8, i32 (%struct.gx_ht_order_s*, i8*)* @construct_ht_order_default, i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)* @ht_bit_index_default, i32 (%struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s*)* @render_ht_default, i32 (%struct.gx_ht_order_s*, i16, i8*, i32, i32, i32, i32, i32)* null }, %struct.gx_ht_order_procs_s { i32 2, i32 (%struct.gx_ht_order_s*, i8*)* @construct_ht_order_short, i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)* @ht_bit_index_short, i32 (%struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s*)* @render_ht_short, i32 (%struct.gx_ht_order_s*, i16, i8*, i32, i32, i32, i32, i32)* null }], align 16
@gx_device_halftone_list = external constant [0 x %struct.gx_device_halftone_resource_s** ()*], align 8
@.str = private unnamed_addr constant [35 x i8] c"construct_ht_order_short(bit_data)\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"construct_ht_order_short(levels)\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @construct_ht_order_default(%struct.gx_ht_order_s* %porder, i8* %thresholds) #0 {
entry:
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %thresholds.addr = alloca i8*, align 8
  %bits = alloca %struct.gx_ht_bit_s*, align 8
  %i = alloca i32, align 4
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  store i8* %thresholds, i8** %thresholds.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_ht_bit_s** %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %bit_data = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %1, i32 0, i32 13
  %2 = load i8*, i8** %bit_data, align 8, !tbaa !5
  %3 = bitcast i8* %2 to %struct.gx_ht_bit_s*
  store %struct.gx_ht_bit_s* %3, %struct.gx_ht_bit_s** %bits, align 8, !tbaa !1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !14
  %6 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %num_bits = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %6, i32 0, i32 9
  %7 = load i32, i32* %num_bits, align 4, !tbaa !15
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom = zext i32 %8 to i64
  %9 = load i8*, i8** %thresholds.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !16
  %conv = zext i8 %10 to i32
  %cmp1 = icmp sgt i32 1, %conv
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom3 = zext i32 %11 to i64
  %12 = load i8*, i8** %thresholds.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 %idxprom3
  %13 = load i8, i8* %arrayidx4, align 1, !tbaa !16
  %conv5 = zext i8 %13 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %conv5, %cond.false ]
  %14 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom6 = zext i32 %14 to i64
  %15 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %bits, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %15, i64 %idxprom6
  %mask = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx7, i32 0, i32 1
  store i32 %cond, i32* %mask, align 4, !tbaa !17
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %16 = load i32, i32* %i, align 4, !tbaa !14
  %inc = add i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  call void @gx_ht_complete_threshold_order(%struct.gx_ht_order_s* %17) #5
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast %struct.gx_ht_bit_s** %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @ht_bit_index_default(%struct.gx_ht_order_s* %porder, i32 %index, %struct.gs_int_point_s* %ppt) #0 {
entry:
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %index.addr = alloca i32, align 4
  %ppt.addr = alloca %struct.gs_int_point_s*, align 8
  %phtb = alloca %struct.gx_ht_bit_s*, align 8
  %offset = alloca i32, align 4
  %bit = alloca i32, align 4
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !14
  store %struct.gs_int_point_s* %ppt, %struct.gs_int_point_s** %ppt.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_ht_bit_s** %phtb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %index.addr, align 4, !tbaa !14
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %bit_data = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %2, i32 0, i32 13
  %3 = load i8*, i8** %bit_data, align 8, !tbaa !5
  %4 = bitcast i8* %3 to %struct.gx_ht_bit_s*
  %arrayidx = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %4, i64 %idxprom
  store %struct.gx_ht_bit_s* %arrayidx, %struct.gx_ht_bit_s** %phtb, align 8, !tbaa !1
  %5 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %phtb, align 8, !tbaa !1
  %offset1 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %6, i32 0, i32 0
  %7 = load i32, i32* %offset1, align 4, !tbaa !19
  store i32 %7, i32* %offset, align 4, !tbaa !14
  %8 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %bit, align 4, !tbaa !14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %9 = load i32, i32* %bit, align 4, !tbaa !14
  %shr = ashr i32 %9, 3
  %idxprom2 = sext i32 %shr to i64
  %10 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %phtb, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %10, i32 0, i32 1
  %11 = bitcast i32* %mask to i8*
  %arrayidx3 = getelementptr inbounds i8, i8* %11, i64 %idxprom2
  %12 = load i8, i8* %arrayidx3, align 1, !tbaa !16
  %conv = zext i8 %12 to i32
  %13 = load i32, i32* %bit, align 4, !tbaa !14
  %and = and i32 %13, 7
  %shr4 = ashr i32 128, %and
  %and5 = and i32 %conv, %shr4
  %tobool = icmp ne i32 %and5, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32, i32* %bit, align 4, !tbaa !14
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %bit, align 4, !tbaa !14
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i32, i32* %offset, align 4, !tbaa !14
  %16 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %16, i32 0, i32 3
  %17 = load i16, i16* %raster, align 2, !tbaa !20
  %conv6 = zext i16 %17 to i32
  %rem = urem i32 %15, %conv6
  %mul = mul i32 %rem, 8
  %18 = load i32, i32* %bit, align 4, !tbaa !14
  %add = add i32 %mul, %18
  %19 = load %struct.gs_int_point_s*, %struct.gs_int_point_s** %ppt.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %19, i32 0, i32 0
  store i32 %add, i32* %x, align 4, !tbaa !21
  %20 = load i32, i32* %offset, align 4, !tbaa !14
  %21 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %raster7 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %21, i32 0, i32 3
  %22 = load i16, i16* %raster7, align 2, !tbaa !20
  %conv8 = zext i16 %22 to i32
  %div = udiv i32 %20, %conv8
  %23 = load %struct.gs_int_point_s*, %struct.gs_int_point_s** %ppt.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %23, i32 0, i32 1
  store i32 %div, i32* %y, align 4, !tbaa !23
  %24 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast %struct.gx_ht_bit_s** %phtb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @render_ht_default(%struct.gx_ht_tile_s* %pbt, i32 %level, %struct.gx_ht_order_s* %porder) #0 {
entry:
  %pbt.addr = alloca %struct.gx_ht_tile_s*, align 8
  %level.addr = alloca i32, align 4
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %old_level = alloca i32, align 4
  %p = alloca %struct.gx_ht_bit_s*, align 8
  %data = alloca i8*, align 8
  %dp = alloca i32*, align 8
  %dp6 = alloca i32*, align 8
  %dp17 = alloca i32*, align 8
  %dp28 = alloca i32*, align 8
  %dp40 = alloca i32*, align 8
  %dp51 = alloca i32*, align 8
  %dp62 = alloca i32*, align 8
  %dp73 = alloca i32*, align 8
  %dp86 = alloca i32*, align 8
  %dp98 = alloca i32*, align 8
  %dp110 = alloca i32*, align 8
  %dp122 = alloca i32*, align 8
  %dp134 = alloca i32*, align 8
  %dp146 = alloca i32*, align 8
  %dp158 = alloca i32*, align 8
  %dp170 = alloca i32*, align 8
  %dp182 = alloca i32*, align 8
  %dp194 = alloca i32*, align 8
  %dp206 = alloca i32*, align 8
  %dp218 = alloca i32*, align 8
  %dp230 = alloca i32*, align 8
  %dp242 = alloca i32*, align 8
  store %struct.gx_ht_tile_s* %pbt, %struct.gx_ht_tile_s** %pbt.addr, align 8, !tbaa !1
  store i32 %level, i32* %level.addr, align 4, !tbaa !14
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %0 = bitcast i32* %old_level to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %pbt.addr, align 8, !tbaa !1
  %level1 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %1, i32 0, i32 1
  %2 = load i32, i32* %level1, align 4, !tbaa !24
  store i32 %2, i32* %old_level, align 4, !tbaa !14
  %3 = bitcast %struct.gx_ht_bit_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %bit_data = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %4, i32 0, i32 13
  %5 = load i8*, i8** %bit_data, align 8, !tbaa !5
  %6 = bitcast i8* %5 to %struct.gx_ht_bit_s*
  %7 = load i32, i32* %old_level, align 4, !tbaa !14
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %6, i64 %idx.ext
  store %struct.gx_ht_bit_s* %add.ptr, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %8 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %pbt.addr, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %9, i32 0, i32 0
  %data2 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 0
  %10 = load i8*, i8** %data2, align 8, !tbaa !27
  store i8* %10, i8** %data, align 8, !tbaa !1
  br label %sw

sw:                                               ; preds = %if.end, %entry
  %11 = load i32, i32* %level.addr, align 4, !tbaa !14
  %12 = load i32, i32* %old_level, align 4, !tbaa !14
  %sub = sub nsw i32 %11, %12
  switch i32 %sub, label %sw.default [
    i32 7, label %sw.bb
    i32 6, label %sw.bb.96
    i32 5, label %sw.bb.108
    i32 4, label %sw.bb.120
    i32 3, label %sw.bb.132
    i32 2, label %sw.bb.144
    i32 1, label %sw.bb.156
    i32 0, label %sw.epilog
    i32 -7, label %sw.bb.168
    i32 -6, label %sw.bb.180
    i32 -5, label %sw.bb.192
    i32 -4, label %sw.bb.204
    i32 -3, label %sw.bb.216
    i32 -2, label %sw.bb.228
    i32 -1, label %sw.bb.240
  ]

sw.default:                                       ; preds = %sw
  %13 = load i32, i32* %level.addr, align 4, !tbaa !14
  %14 = load i32, i32* %old_level, align 4, !tbaa !14
  %cmp = icmp sgt i32 %13, %14
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  br label %do.body

do.body:                                          ; preds = %if.then
  %15 = bitcast i32** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %16, i64 0
  %offset = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx, i32 0, i32 0
  %17 = load i32, i32* %offset, align 4, !tbaa !19
  %idxprom = zext i32 %17 to i64
  %18 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %18, i64 %idxprom
  %19 = bitcast i8* %arrayidx3 to i32*
  store i32* %19, i32** %dp, align 8, !tbaa !1
  %20 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %20, i64 0
  %mask = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx4, i32 0, i32 1
  %21 = load i32, i32* %mask, align 4, !tbaa !17
  %22 = load i32*, i32** %dp, align 8, !tbaa !1
  %23 = load i32, i32* %22, align 4, !tbaa !14
  %xor = xor i32 %23, %21
  store i32 %xor, i32* %22, align 4, !tbaa !14
  %24 = bitcast i32** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %25 = bitcast i32** %dp6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %26, i64 1
  %offset8 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx7, i32 0, i32 0
  %27 = load i32, i32* %offset8, align 4, !tbaa !19
  %idxprom9 = zext i32 %27 to i64
  %28 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %28, i64 %idxprom9
  %29 = bitcast i8* %arrayidx10 to i32*
  store i32* %29, i32** %dp6, align 8, !tbaa !1
  %30 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %30, i64 1
  %mask12 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx11, i32 0, i32 1
  %31 = load i32, i32* %mask12, align 4, !tbaa !17
  %32 = load i32*, i32** %dp6, align 8, !tbaa !1
  %33 = load i32, i32* %32, align 4, !tbaa !14
  %xor13 = xor i32 %33, %31
  store i32 %xor13, i32* %32, align 4, !tbaa !14
  %34 = bitcast i32** %dp6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  br label %do.cond.14

do.cond.14:                                       ; preds = %do.body.5
  br label %do.end.15

do.end.15:                                        ; preds = %do.cond.14
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.15
  %35 = bitcast i32** %dp17 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %36 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %36, i64 2
  %offset19 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx18, i32 0, i32 0
  %37 = load i32, i32* %offset19, align 4, !tbaa !19
  %idxprom20 = zext i32 %37 to i64
  %38 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8, i8* %38, i64 %idxprom20
  %39 = bitcast i8* %arrayidx21 to i32*
  store i32* %39, i32** %dp17, align 8, !tbaa !1
  %40 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %40, i64 2
  %mask23 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx22, i32 0, i32 1
  %41 = load i32, i32* %mask23, align 4, !tbaa !17
  %42 = load i32*, i32** %dp17, align 8, !tbaa !1
  %43 = load i32, i32* %42, align 4, !tbaa !14
  %xor24 = xor i32 %43, %41
  store i32 %xor24, i32* %42, align 4, !tbaa !14
  %44 = bitcast i32** %dp17 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  br label %do.cond.25

do.cond.25:                                       ; preds = %do.body.16
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %45 = bitcast i32** %dp28 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  %46 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %46, i64 3
  %offset30 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx29, i32 0, i32 0
  %47 = load i32, i32* %offset30, align 4, !tbaa !19
  %idxprom31 = zext i32 %47 to i64
  %48 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %48, i64 %idxprom31
  %49 = bitcast i8* %arrayidx32 to i32*
  store i32* %49, i32** %dp28, align 8, !tbaa !1
  %50 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %50, i64 3
  %mask34 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx33, i32 0, i32 1
  %51 = load i32, i32* %mask34, align 4, !tbaa !17
  %52 = load i32*, i32** %dp28, align 8, !tbaa !1
  %53 = load i32, i32* %52, align 4, !tbaa !14
  %xor35 = xor i32 %53, %51
  store i32 %xor35, i32* %52, align 4, !tbaa !14
  %54 = bitcast i32** %dp28 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  br label %do.cond.36

do.cond.36:                                       ; preds = %do.body.27
  br label %do.end.37

do.end.37:                                        ; preds = %do.cond.36
  %55 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %add.ptr38 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %55, i64 4
  store %struct.gx_ht_bit_s* %add.ptr38, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %56 = load i32, i32* %old_level, align 4, !tbaa !14
  %add = add nsw i32 %56, 4
  store i32 %add, i32* %old_level, align 4, !tbaa !14
  br label %if.end

if.else:                                          ; preds = %sw.default
  br label %do.body.39

do.body.39:                                       ; preds = %if.else
  %57 = bitcast i32** %dp40 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  %58 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %58, i64 -1
  %offset42 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx41, i32 0, i32 0
  %59 = load i32, i32* %offset42, align 4, !tbaa !19
  %idxprom43 = zext i32 %59 to i64
  %60 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %60, i64 %idxprom43
  %61 = bitcast i8* %arrayidx44 to i32*
  store i32* %61, i32** %dp40, align 8, !tbaa !1
  %62 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %62, i64 -1
  %mask46 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx45, i32 0, i32 1
  %63 = load i32, i32* %mask46, align 4, !tbaa !17
  %64 = load i32*, i32** %dp40, align 8, !tbaa !1
  %65 = load i32, i32* %64, align 4, !tbaa !14
  %xor47 = xor i32 %65, %63
  store i32 %xor47, i32* %64, align 4, !tbaa !14
  %66 = bitcast i32** %dp40 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  br label %do.cond.48

do.cond.48:                                       ; preds = %do.body.39
  br label %do.end.49

do.end.49:                                        ; preds = %do.cond.48
  br label %do.body.50

do.body.50:                                       ; preds = %do.end.49
  %67 = bitcast i32** %dp51 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #1
  %68 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %68, i64 -2
  %offset53 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx52, i32 0, i32 0
  %69 = load i32, i32* %offset53, align 4, !tbaa !19
  %idxprom54 = zext i32 %69 to i64
  %70 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i8, i8* %70, i64 %idxprom54
  %71 = bitcast i8* %arrayidx55 to i32*
  store i32* %71, i32** %dp51, align 8, !tbaa !1
  %72 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %72, i64 -2
  %mask57 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx56, i32 0, i32 1
  %73 = load i32, i32* %mask57, align 4, !tbaa !17
  %74 = load i32*, i32** %dp51, align 8, !tbaa !1
  %75 = load i32, i32* %74, align 4, !tbaa !14
  %xor58 = xor i32 %75, %73
  store i32 %xor58, i32* %74, align 4, !tbaa !14
  %76 = bitcast i32** %dp51 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  br label %do.cond.59

do.cond.59:                                       ; preds = %do.body.50
  br label %do.end.60

do.end.60:                                        ; preds = %do.cond.59
  br label %do.body.61

do.body.61:                                       ; preds = %do.end.60
  %77 = bitcast i32** %dp62 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #1
  %78 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %78, i64 -3
  %offset64 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx63, i32 0, i32 0
  %79 = load i32, i32* %offset64, align 4, !tbaa !19
  %idxprom65 = zext i32 %79 to i64
  %80 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds i8, i8* %80, i64 %idxprom65
  %81 = bitcast i8* %arrayidx66 to i32*
  store i32* %81, i32** %dp62, align 8, !tbaa !1
  %82 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %82, i64 -3
  %mask68 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx67, i32 0, i32 1
  %83 = load i32, i32* %mask68, align 4, !tbaa !17
  %84 = load i32*, i32** %dp62, align 8, !tbaa !1
  %85 = load i32, i32* %84, align 4, !tbaa !14
  %xor69 = xor i32 %85, %83
  store i32 %xor69, i32* %84, align 4, !tbaa !14
  %86 = bitcast i32** %dp62 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  br label %do.cond.70

do.cond.70:                                       ; preds = %do.body.61
  br label %do.end.71

do.end.71:                                        ; preds = %do.cond.70
  br label %do.body.72

do.body.72:                                       ; preds = %do.end.71
  %87 = bitcast i32** %dp73 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %87) #1
  %88 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %88, i64 -4
  %offset75 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx74, i32 0, i32 0
  %89 = load i32, i32* %offset75, align 4, !tbaa !19
  %idxprom76 = zext i32 %89 to i64
  %90 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds i8, i8* %90, i64 %idxprom76
  %91 = bitcast i8* %arrayidx77 to i32*
  store i32* %91, i32** %dp73, align 8, !tbaa !1
  %92 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %92, i64 -4
  %mask79 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx78, i32 0, i32 1
  %93 = load i32, i32* %mask79, align 4, !tbaa !17
  %94 = load i32*, i32** %dp73, align 8, !tbaa !1
  %95 = load i32, i32* %94, align 4, !tbaa !14
  %xor80 = xor i32 %95, %93
  store i32 %xor80, i32* %94, align 4, !tbaa !14
  %96 = bitcast i32** %dp73 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  br label %do.cond.81

do.cond.81:                                       ; preds = %do.body.72
  br label %do.end.82

do.end.82:                                        ; preds = %do.cond.81
  %97 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %add.ptr83 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %97, i64 -4
  store %struct.gx_ht_bit_s* %add.ptr83, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %98 = load i32, i32* %old_level, align 4, !tbaa !14
  %sub84 = sub nsw i32 %98, 4
  store i32 %sub84, i32* %old_level, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %do.end.82, %do.end.37
  br label %sw

sw.bb:                                            ; preds = %sw
  br label %do.body.85

do.body.85:                                       ; preds = %sw.bb
  %99 = bitcast i32** %dp86 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %99) #1
  %100 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %100, i64 6
  %offset88 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx87, i32 0, i32 0
  %101 = load i32, i32* %offset88, align 4, !tbaa !19
  %idxprom89 = zext i32 %101 to i64
  %102 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds i8, i8* %102, i64 %idxprom89
  %103 = bitcast i8* %arrayidx90 to i32*
  store i32* %103, i32** %dp86, align 8, !tbaa !1
  %104 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %104, i64 6
  %mask92 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx91, i32 0, i32 1
  %105 = load i32, i32* %mask92, align 4, !tbaa !17
  %106 = load i32*, i32** %dp86, align 8, !tbaa !1
  %107 = load i32, i32* %106, align 4, !tbaa !14
  %xor93 = xor i32 %107, %105
  store i32 %xor93, i32* %106, align 4, !tbaa !14
  %108 = bitcast i32** %dp86 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  br label %do.cond.94

do.cond.94:                                       ; preds = %do.body.85
  br label %do.end.95

do.end.95:                                        ; preds = %do.cond.94
  br label %sw.bb.96

sw.bb.96:                                         ; preds = %sw, %do.end.95
  br label %do.body.97

do.body.97:                                       ; preds = %sw.bb.96
  %109 = bitcast i32** %dp98 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %109) #1
  %110 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %110, i64 5
  %offset100 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx99, i32 0, i32 0
  %111 = load i32, i32* %offset100, align 4, !tbaa !19
  %idxprom101 = zext i32 %111 to i64
  %112 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx102 = getelementptr inbounds i8, i8* %112, i64 %idxprom101
  %113 = bitcast i8* %arrayidx102 to i32*
  store i32* %113, i32** %dp98, align 8, !tbaa !1
  %114 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %114, i64 5
  %mask104 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx103, i32 0, i32 1
  %115 = load i32, i32* %mask104, align 4, !tbaa !17
  %116 = load i32*, i32** %dp98, align 8, !tbaa !1
  %117 = load i32, i32* %116, align 4, !tbaa !14
  %xor105 = xor i32 %117, %115
  store i32 %xor105, i32* %116, align 4, !tbaa !14
  %118 = bitcast i32** %dp98 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  br label %do.cond.106

do.cond.106:                                      ; preds = %do.body.97
  br label %do.end.107

do.end.107:                                       ; preds = %do.cond.106
  br label %sw.bb.108

sw.bb.108:                                        ; preds = %sw, %do.end.107
  br label %do.body.109

do.body.109:                                      ; preds = %sw.bb.108
  %119 = bitcast i32** %dp110 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %119) #1
  %120 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %120, i64 4
  %offset112 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx111, i32 0, i32 0
  %121 = load i32, i32* %offset112, align 4, !tbaa !19
  %idxprom113 = zext i32 %121 to i64
  %122 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx114 = getelementptr inbounds i8, i8* %122, i64 %idxprom113
  %123 = bitcast i8* %arrayidx114 to i32*
  store i32* %123, i32** %dp110, align 8, !tbaa !1
  %124 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %124, i64 4
  %mask116 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx115, i32 0, i32 1
  %125 = load i32, i32* %mask116, align 4, !tbaa !17
  %126 = load i32*, i32** %dp110, align 8, !tbaa !1
  %127 = load i32, i32* %126, align 4, !tbaa !14
  %xor117 = xor i32 %127, %125
  store i32 %xor117, i32* %126, align 4, !tbaa !14
  %128 = bitcast i32** %dp110 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  br label %do.cond.118

do.cond.118:                                      ; preds = %do.body.109
  br label %do.end.119

do.end.119:                                       ; preds = %do.cond.118
  br label %sw.bb.120

sw.bb.120:                                        ; preds = %sw, %do.end.119
  br label %do.body.121

do.body.121:                                      ; preds = %sw.bb.120
  %129 = bitcast i32** %dp122 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %129) #1
  %130 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx123 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %130, i64 3
  %offset124 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx123, i32 0, i32 0
  %131 = load i32, i32* %offset124, align 4, !tbaa !19
  %idxprom125 = zext i32 %131 to i64
  %132 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds i8, i8* %132, i64 %idxprom125
  %133 = bitcast i8* %arrayidx126 to i32*
  store i32* %133, i32** %dp122, align 8, !tbaa !1
  %134 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx127 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %134, i64 3
  %mask128 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx127, i32 0, i32 1
  %135 = load i32, i32* %mask128, align 4, !tbaa !17
  %136 = load i32*, i32** %dp122, align 8, !tbaa !1
  %137 = load i32, i32* %136, align 4, !tbaa !14
  %xor129 = xor i32 %137, %135
  store i32 %xor129, i32* %136, align 4, !tbaa !14
  %138 = bitcast i32** %dp122 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  br label %do.cond.130

do.cond.130:                                      ; preds = %do.body.121
  br label %do.end.131

do.end.131:                                       ; preds = %do.cond.130
  br label %sw.bb.132

sw.bb.132:                                        ; preds = %sw, %do.end.131
  br label %do.body.133

do.body.133:                                      ; preds = %sw.bb.132
  %139 = bitcast i32** %dp134 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %139) #1
  %140 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx135 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %140, i64 2
  %offset136 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx135, i32 0, i32 0
  %141 = load i32, i32* %offset136, align 4, !tbaa !19
  %idxprom137 = zext i32 %141 to i64
  %142 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx138 = getelementptr inbounds i8, i8* %142, i64 %idxprom137
  %143 = bitcast i8* %arrayidx138 to i32*
  store i32* %143, i32** %dp134, align 8, !tbaa !1
  %144 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx139 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %144, i64 2
  %mask140 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx139, i32 0, i32 1
  %145 = load i32, i32* %mask140, align 4, !tbaa !17
  %146 = load i32*, i32** %dp134, align 8, !tbaa !1
  %147 = load i32, i32* %146, align 4, !tbaa !14
  %xor141 = xor i32 %147, %145
  store i32 %xor141, i32* %146, align 4, !tbaa !14
  %148 = bitcast i32** %dp134 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  br label %do.cond.142

do.cond.142:                                      ; preds = %do.body.133
  br label %do.end.143

do.end.143:                                       ; preds = %do.cond.142
  br label %sw.bb.144

sw.bb.144:                                        ; preds = %sw, %do.end.143
  br label %do.body.145

do.body.145:                                      ; preds = %sw.bb.144
  %149 = bitcast i32** %dp146 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %149) #1
  %150 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %150, i64 1
  %offset148 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx147, i32 0, i32 0
  %151 = load i32, i32* %offset148, align 4, !tbaa !19
  %idxprom149 = zext i32 %151 to i64
  %152 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds i8, i8* %152, i64 %idxprom149
  %153 = bitcast i8* %arrayidx150 to i32*
  store i32* %153, i32** %dp146, align 8, !tbaa !1
  %154 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx151 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %154, i64 1
  %mask152 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx151, i32 0, i32 1
  %155 = load i32, i32* %mask152, align 4, !tbaa !17
  %156 = load i32*, i32** %dp146, align 8, !tbaa !1
  %157 = load i32, i32* %156, align 4, !tbaa !14
  %xor153 = xor i32 %157, %155
  store i32 %xor153, i32* %156, align 4, !tbaa !14
  %158 = bitcast i32** %dp146 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #1
  br label %do.cond.154

do.cond.154:                                      ; preds = %do.body.145
  br label %do.end.155

do.end.155:                                       ; preds = %do.cond.154
  br label %sw.bb.156

sw.bb.156:                                        ; preds = %sw, %do.end.155
  br label %do.body.157

do.body.157:                                      ; preds = %sw.bb.156
  %159 = bitcast i32** %dp158 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %159) #1
  %160 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx159 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %160, i64 0
  %offset160 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx159, i32 0, i32 0
  %161 = load i32, i32* %offset160, align 4, !tbaa !19
  %idxprom161 = zext i32 %161 to i64
  %162 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx162 = getelementptr inbounds i8, i8* %162, i64 %idxprom161
  %163 = bitcast i8* %arrayidx162 to i32*
  store i32* %163, i32** %dp158, align 8, !tbaa !1
  %164 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %164, i64 0
  %mask164 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx163, i32 0, i32 1
  %165 = load i32, i32* %mask164, align 4, !tbaa !17
  %166 = load i32*, i32** %dp158, align 8, !tbaa !1
  %167 = load i32, i32* %166, align 4, !tbaa !14
  %xor165 = xor i32 %167, %165
  store i32 %xor165, i32* %166, align 4, !tbaa !14
  %168 = bitcast i32** %dp158 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #1
  br label %do.cond.166

do.cond.166:                                      ; preds = %do.body.157
  br label %do.end.167

do.end.167:                                       ; preds = %do.cond.166
  br label %sw.epilog

sw.bb.168:                                        ; preds = %sw
  br label %do.body.169

do.body.169:                                      ; preds = %sw.bb.168
  %169 = bitcast i32** %dp170 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %169) #1
  %170 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx171 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %170, i64 -7
  %offset172 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx171, i32 0, i32 0
  %171 = load i32, i32* %offset172, align 4, !tbaa !19
  %idxprom173 = zext i32 %171 to i64
  %172 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx174 = getelementptr inbounds i8, i8* %172, i64 %idxprom173
  %173 = bitcast i8* %arrayidx174 to i32*
  store i32* %173, i32** %dp170, align 8, !tbaa !1
  %174 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx175 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %174, i64 -7
  %mask176 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx175, i32 0, i32 1
  %175 = load i32, i32* %mask176, align 4, !tbaa !17
  %176 = load i32*, i32** %dp170, align 8, !tbaa !1
  %177 = load i32, i32* %176, align 4, !tbaa !14
  %xor177 = xor i32 %177, %175
  store i32 %xor177, i32* %176, align 4, !tbaa !14
  %178 = bitcast i32** %dp170 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #1
  br label %do.cond.178

do.cond.178:                                      ; preds = %do.body.169
  br label %do.end.179

do.end.179:                                       ; preds = %do.cond.178
  br label %sw.bb.180

sw.bb.180:                                        ; preds = %sw, %do.end.179
  br label %do.body.181

do.body.181:                                      ; preds = %sw.bb.180
  %179 = bitcast i32** %dp182 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %179) #1
  %180 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx183 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %180, i64 -6
  %offset184 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx183, i32 0, i32 0
  %181 = load i32, i32* %offset184, align 4, !tbaa !19
  %idxprom185 = zext i32 %181 to i64
  %182 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx186 = getelementptr inbounds i8, i8* %182, i64 %idxprom185
  %183 = bitcast i8* %arrayidx186 to i32*
  store i32* %183, i32** %dp182, align 8, !tbaa !1
  %184 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx187 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %184, i64 -6
  %mask188 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx187, i32 0, i32 1
  %185 = load i32, i32* %mask188, align 4, !tbaa !17
  %186 = load i32*, i32** %dp182, align 8, !tbaa !1
  %187 = load i32, i32* %186, align 4, !tbaa !14
  %xor189 = xor i32 %187, %185
  store i32 %xor189, i32* %186, align 4, !tbaa !14
  %188 = bitcast i32** %dp182 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %188) #1
  br label %do.cond.190

do.cond.190:                                      ; preds = %do.body.181
  br label %do.end.191

do.end.191:                                       ; preds = %do.cond.190
  br label %sw.bb.192

sw.bb.192:                                        ; preds = %sw, %do.end.191
  br label %do.body.193

do.body.193:                                      ; preds = %sw.bb.192
  %189 = bitcast i32** %dp194 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %189) #1
  %190 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx195 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %190, i64 -5
  %offset196 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx195, i32 0, i32 0
  %191 = load i32, i32* %offset196, align 4, !tbaa !19
  %idxprom197 = zext i32 %191 to i64
  %192 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx198 = getelementptr inbounds i8, i8* %192, i64 %idxprom197
  %193 = bitcast i8* %arrayidx198 to i32*
  store i32* %193, i32** %dp194, align 8, !tbaa !1
  %194 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %194, i64 -5
  %mask200 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx199, i32 0, i32 1
  %195 = load i32, i32* %mask200, align 4, !tbaa !17
  %196 = load i32*, i32** %dp194, align 8, !tbaa !1
  %197 = load i32, i32* %196, align 4, !tbaa !14
  %xor201 = xor i32 %197, %195
  store i32 %xor201, i32* %196, align 4, !tbaa !14
  %198 = bitcast i32** %dp194 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %198) #1
  br label %do.cond.202

do.cond.202:                                      ; preds = %do.body.193
  br label %do.end.203

do.end.203:                                       ; preds = %do.cond.202
  br label %sw.bb.204

sw.bb.204:                                        ; preds = %sw, %do.end.203
  br label %do.body.205

do.body.205:                                      ; preds = %sw.bb.204
  %199 = bitcast i32** %dp206 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %199) #1
  %200 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx207 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %200, i64 -4
  %offset208 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx207, i32 0, i32 0
  %201 = load i32, i32* %offset208, align 4, !tbaa !19
  %idxprom209 = zext i32 %201 to i64
  %202 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx210 = getelementptr inbounds i8, i8* %202, i64 %idxprom209
  %203 = bitcast i8* %arrayidx210 to i32*
  store i32* %203, i32** %dp206, align 8, !tbaa !1
  %204 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx211 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %204, i64 -4
  %mask212 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx211, i32 0, i32 1
  %205 = load i32, i32* %mask212, align 4, !tbaa !17
  %206 = load i32*, i32** %dp206, align 8, !tbaa !1
  %207 = load i32, i32* %206, align 4, !tbaa !14
  %xor213 = xor i32 %207, %205
  store i32 %xor213, i32* %206, align 4, !tbaa !14
  %208 = bitcast i32** %dp206 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #1
  br label %do.cond.214

do.cond.214:                                      ; preds = %do.body.205
  br label %do.end.215

do.end.215:                                       ; preds = %do.cond.214
  br label %sw.bb.216

sw.bb.216:                                        ; preds = %sw, %do.end.215
  br label %do.body.217

do.body.217:                                      ; preds = %sw.bb.216
  %209 = bitcast i32** %dp218 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %209) #1
  %210 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx219 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %210, i64 -3
  %offset220 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx219, i32 0, i32 0
  %211 = load i32, i32* %offset220, align 4, !tbaa !19
  %idxprom221 = zext i32 %211 to i64
  %212 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx222 = getelementptr inbounds i8, i8* %212, i64 %idxprom221
  %213 = bitcast i8* %arrayidx222 to i32*
  store i32* %213, i32** %dp218, align 8, !tbaa !1
  %214 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx223 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %214, i64 -3
  %mask224 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx223, i32 0, i32 1
  %215 = load i32, i32* %mask224, align 4, !tbaa !17
  %216 = load i32*, i32** %dp218, align 8, !tbaa !1
  %217 = load i32, i32* %216, align 4, !tbaa !14
  %xor225 = xor i32 %217, %215
  store i32 %xor225, i32* %216, align 4, !tbaa !14
  %218 = bitcast i32** %dp218 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #1
  br label %do.cond.226

do.cond.226:                                      ; preds = %do.body.217
  br label %do.end.227

do.end.227:                                       ; preds = %do.cond.226
  br label %sw.bb.228

sw.bb.228:                                        ; preds = %sw, %do.end.227
  br label %do.body.229

do.body.229:                                      ; preds = %sw.bb.228
  %219 = bitcast i32** %dp230 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %219) #1
  %220 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx231 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %220, i64 -2
  %offset232 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx231, i32 0, i32 0
  %221 = load i32, i32* %offset232, align 4, !tbaa !19
  %idxprom233 = zext i32 %221 to i64
  %222 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx234 = getelementptr inbounds i8, i8* %222, i64 %idxprom233
  %223 = bitcast i8* %arrayidx234 to i32*
  store i32* %223, i32** %dp230, align 8, !tbaa !1
  %224 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx235 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %224, i64 -2
  %mask236 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx235, i32 0, i32 1
  %225 = load i32, i32* %mask236, align 4, !tbaa !17
  %226 = load i32*, i32** %dp230, align 8, !tbaa !1
  %227 = load i32, i32* %226, align 4, !tbaa !14
  %xor237 = xor i32 %227, %225
  store i32 %xor237, i32* %226, align 4, !tbaa !14
  %228 = bitcast i32** %dp230 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %228) #1
  br label %do.cond.238

do.cond.238:                                      ; preds = %do.body.229
  br label %do.end.239

do.end.239:                                       ; preds = %do.cond.238
  br label %sw.bb.240

sw.bb.240:                                        ; preds = %sw, %do.end.239
  br label %do.body.241

do.body.241:                                      ; preds = %sw.bb.240
  %229 = bitcast i32** %dp242 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %229) #1
  %230 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx243 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %230, i64 -1
  %offset244 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx243, i32 0, i32 0
  %231 = load i32, i32* %offset244, align 4, !tbaa !19
  %idxprom245 = zext i32 %231 to i64
  %232 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx246 = getelementptr inbounds i8, i8* %232, i64 %idxprom245
  %233 = bitcast i8* %arrayidx246 to i32*
  store i32* %233, i32** %dp242, align 8, !tbaa !1
  %234 = load %struct.gx_ht_bit_s*, %struct.gx_ht_bit_s** %p, align 8, !tbaa !1
  %arrayidx247 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %234, i64 -1
  %mask248 = getelementptr inbounds %struct.gx_ht_bit_s, %struct.gx_ht_bit_s* %arrayidx247, i32 0, i32 1
  %235 = load i32, i32* %mask248, align 4, !tbaa !17
  %236 = load i32*, i32** %dp242, align 8, !tbaa !1
  %237 = load i32, i32* %236, align 4, !tbaa !14
  %xor249 = xor i32 %237, %235
  store i32 %xor249, i32* %236, align 4, !tbaa !14
  %238 = bitcast i32** %dp242 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %238) #1
  br label %do.cond.250

do.cond.250:                                      ; preds = %do.body.241
  br label %do.end.251

do.end.251:                                       ; preds = %do.cond.250
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.251, %sw, %do.end.167
  %239 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %239) #1
  %240 = bitcast %struct.gx_ht_bit_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %240) #1
  %241 = bitcast i32* %old_level to i8*
  call void @llvm.lifetime.end(i64 4, i8* %241) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @construct_ht_order_short(%struct.gx_ht_order_s* %porder, i8* %thresholds) #0 {
entry:
  %retval = alloca i32, align 4
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %thresholds.addr = alloca i8*, align 8
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  %bits = alloca i16*, align 8
  %levels = alloca i32*, align 8
  %num_levels = alloca i32, align 4
  %value = alloca i32, align 4
  %width = alloca i32, align 4
  %padding = alloca i32, align 4
  %value37 = alloca i32, align 4
  %phtrp = alloca %struct.gx_device_halftone_resource_s** ()**, align 8
  %pphtr = alloca %struct.gx_device_halftone_resource_s**, align 8
  %phtr = alloca %struct.gx_device_halftone_resource_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  store i8* %thresholds, i8** %thresholds.addr, align 8, !tbaa !1
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %num_bits = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %1, i32 0, i32 9
  %2 = load i32, i32* %num_bits, align 4, !tbaa !15
  store i32 %2, i32* %size, align 4, !tbaa !14
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i16** %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %bit_data = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %5, i32 0, i32 13
  %6 = load i8*, i8** %bit_data, align 8, !tbaa !5
  %7 = bitcast i8* %6 to i16*
  store i16* %7, i16** %bits, align 8, !tbaa !1
  %8 = bitcast i32** %levels to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %levels1 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %9, i32 0, i32 12
  %10 = load i32*, i32** %levels1, align 8, !tbaa !28
  store i32* %10, i32** %levels, align 8, !tbaa !1
  %11 = bitcast i32* %num_levels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %num_levels2 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %12, i32 0, i32 8
  %13 = load i32, i32* %num_levels2, align 4, !tbaa !29
  store i32 %13, i32* %num_levels, align 4, !tbaa !14
  %14 = load i32*, i32** %levels, align 8, !tbaa !1
  %15 = bitcast i32* %14 to i8*
  %16 = load i32, i32* %num_levels, align 4, !tbaa !14
  %conv = zext i32 %16 to i64
  %mul = mul i64 %conv, 4
  %call = call i8* @memset(i8* %15, i32 0, i64 %mul) #6
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %17 = load i32, i32* %i, align 4, !tbaa !14
  %18 = load i32, i32* %size, align 4, !tbaa !14
  %cmp = icmp ult i32 %17, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom = zext i32 %20 to i64
  %21 = load i8*, i8** %thresholds.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 %idxprom
  %22 = load i8, i8* %arrayidx, align 1, !tbaa !16
  %conv4 = zext i8 %22 to i32
  %cmp5 = icmp sgt i32 1, %conv4
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom7 = zext i32 %23 to i64
  %24 = load i8*, i8** %thresholds.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %24, i64 %idxprom7
  %25 = load i8, i8* %arrayidx8, align 1, !tbaa !16
  %conv9 = zext i8 %25 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %conv9, %cond.false ]
  store i32 %cond, i32* %value, align 4, !tbaa !14
  %26 = load i32, i32* %value, align 4, !tbaa !14
  %add = add i32 %26, 1
  %27 = load i32, i32* %num_levels, align 4, !tbaa !14
  %cmp10 = icmp ult i32 %add, %27
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %28 = load i32, i32* %value, align 4, !tbaa !14
  %add12 = add i32 %28, 1
  %idxprom13 = zext i32 %add12 to i64
  %29 = load i32*, i32** %levels, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i32, i32* %29, i64 %idxprom13
  %30 = load i32, i32* %arrayidx14, align 4, !tbaa !14
  %inc = add i32 %30, 1
  store i32 %inc, i32* %arrayidx14, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %31 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %32 = load i32, i32* %i, align 4, !tbaa !14
  %inc15 = add i32 %32, 1
  store i32 %inc15, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 2, i32* %i, align 4, !tbaa !14
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.25, %for.end
  %33 = load i32, i32* %i, align 4, !tbaa !14
  %34 = load i32, i32* %num_levels, align 4, !tbaa !14
  %cmp17 = icmp ult i32 %33, %34
  br i1 %cmp17, label %for.body.19, label %for.end.27

for.body.19:                                      ; preds = %for.cond.16
  %35 = load i32, i32* %i, align 4, !tbaa !14
  %sub = sub i32 %35, 1
  %idxprom20 = zext i32 %sub to i64
  %36 = load i32*, i32** %levels, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i32, i32* %36, i64 %idxprom20
  %37 = load i32, i32* %arrayidx21, align 4, !tbaa !14
  %38 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom22 = zext i32 %38 to i64
  %39 = load i32*, i32** %levels, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i32, i32* %39, i64 %idxprom22
  %40 = load i32, i32* %arrayidx23, align 4, !tbaa !14
  %add24 = add i32 %40, %37
  store i32 %add24, i32* %arrayidx23, align 4, !tbaa !14
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.19
  %41 = load i32, i32* %i, align 4, !tbaa !14
  %inc26 = add i32 %41, 1
  store i32 %inc26, i32* %i, align 4, !tbaa !14
  br label %for.cond.16

for.end.27:                                       ; preds = %for.cond.16
  %42 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %width28 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %43, i32 0, i32 1
  %44 = load i16, i16* %width28, align 2, !tbaa !30
  %conv29 = zext i16 %44 to i32
  store i32 %conv29, i32* %width, align 4, !tbaa !14
  %45 = bitcast i32* %padding to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = load i32, i32* %width, align 4, !tbaa !14
  %add30 = add i32 %46, 63
  %shr = lshr i32 %add30, 6
  %shl = shl i32 %shr, 3
  %mul31 = mul i32 %shl, 8
  %47 = load i32, i32* %width, align 4, !tbaa !14
  %sub32 = sub i32 %mul31, %47
  store i32 %sub32, i32* %padding, align 4, !tbaa !14
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.58, %for.end.27
  %48 = load i32, i32* %i, align 4, !tbaa !14
  %49 = load i32, i32* %size, align 4, !tbaa !14
  %cmp34 = icmp ult i32 %48, %49
  br i1 %cmp34, label %for.body.36, label %for.end.60

for.body.36:                                      ; preds = %for.cond.33
  %50 = bitcast i32* %value37 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom38 = zext i32 %51 to i64
  %52 = load i8*, i8** %thresholds.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i8, i8* %52, i64 %idxprom38
  %53 = load i8, i8* %arrayidx39, align 1, !tbaa !16
  %conv40 = zext i8 %53 to i32
  %cmp41 = icmp sgt i32 1, %conv40
  br i1 %cmp41, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %for.body.36
  br label %cond.end.48

cond.false.44:                                    ; preds = %for.body.36
  %54 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom45 = zext i32 %54 to i64
  %55 = load i8*, i8** %thresholds.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i8, i8* %55, i64 %idxprom45
  %56 = load i8, i8* %arrayidx46, align 1, !tbaa !16
  %conv47 = zext i8 %56 to i32
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.44, %cond.true.43
  %cond49 = phi i32 [ 1, %cond.true.43 ], [ %conv47, %cond.false.44 ]
  store i32 %cond49, i32* %value37, align 4, !tbaa !14
  %57 = load i32, i32* %i, align 4, !tbaa !14
  %58 = load i32, i32* %i, align 4, !tbaa !14
  %59 = load i32, i32* %width, align 4, !tbaa !14
  %div = udiv i32 %58, %59
  %60 = load i32, i32* %padding, align 4, !tbaa !14
  %mul50 = mul i32 %div, %60
  %add51 = add i32 %57, %mul50
  %conv52 = trunc i32 %add51 to i16
  %61 = load i32, i32* %value37, align 4, !tbaa !14
  %idxprom53 = zext i32 %61 to i64
  %62 = load i32*, i32** %levels, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i32, i32* %62, i64 %idxprom53
  %63 = load i32, i32* %arrayidx54, align 4, !tbaa !14
  %inc55 = add i32 %63, 1
  store i32 %inc55, i32* %arrayidx54, align 4, !tbaa !14
  %idxprom56 = zext i32 %63 to i64
  %64 = load i16*, i16** %bits, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i16, i16* %64, i64 %idxprom56
  store i16 %conv52, i16* %arrayidx57, align 2, !tbaa !31
  %65 = bitcast i32* %value37 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  br label %for.inc.58

for.inc.58:                                       ; preds = %cond.end.48
  %66 = load i32, i32* %i, align 4, !tbaa !14
  %inc59 = add i32 %66, 1
  store i32 %inc59, i32* %i, align 4, !tbaa !14
  br label %for.cond.33

for.end.60:                                       ; preds = %for.cond.33
  %67 = bitcast i32* %padding to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast %struct.gx_device_halftone_resource_s** ()*** %phtrp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %69) #1
  store %struct.gx_device_halftone_resource_s** ()** getelementptr inbounds ([0 x %struct.gx_device_halftone_resource_s** ()*], [0 x %struct.gx_device_halftone_resource_s** ()*]* @gx_device_halftone_list, i32 0, i32 0), %struct.gx_device_halftone_resource_s** ()*** %phtrp, align 8, !tbaa !1
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.110, %for.end.60
  %70 = load %struct.gx_device_halftone_resource_s** ()**, %struct.gx_device_halftone_resource_s** ()*** %phtrp, align 8, !tbaa !1
  %71 = load %struct.gx_device_halftone_resource_s** ()*, %struct.gx_device_halftone_resource_s** ()** %70, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_halftone_resource_s** ()* %71, null
  br i1 %tobool, label %for.body.62, label %for.end.112

for.body.62:                                      ; preds = %for.cond.61
  %72 = bitcast %struct.gx_device_halftone_resource_s*** %pphtr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %72) #1
  %73 = load %struct.gx_device_halftone_resource_s** ()**, %struct.gx_device_halftone_resource_s** ()*** %phtrp, align 8, !tbaa !1
  %74 = load %struct.gx_device_halftone_resource_s** ()*, %struct.gx_device_halftone_resource_s** ()** %73, align 8, !tbaa !1
  %call63 = call %struct.gx_device_halftone_resource_s** %74() #5
  store %struct.gx_device_halftone_resource_s** %call63, %struct.gx_device_halftone_resource_s*** %pphtr, align 8, !tbaa !1
  %75 = bitcast %struct.gx_device_halftone_resource_s** %phtr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #1
  br label %while.cond

while.cond:                                       ; preds = %if.end.108, %for.body.62
  %76 = load %struct.gx_device_halftone_resource_s**, %struct.gx_device_halftone_resource_s*** %pphtr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gx_device_halftone_resource_s*, %struct.gx_device_halftone_resource_s** %76, i32 1
  store %struct.gx_device_halftone_resource_s** %incdec.ptr, %struct.gx_device_halftone_resource_s*** %pphtr, align 8, !tbaa !1
  %77 = load %struct.gx_device_halftone_resource_s*, %struct.gx_device_halftone_resource_s** %76, align 8, !tbaa !1
  store %struct.gx_device_halftone_resource_s* %77, %struct.gx_device_halftone_resource_s** %phtr, align 8, !tbaa !1
  %cmp64 = icmp ne %struct.gx_device_halftone_resource_s* %77, null
  br i1 %cmp64, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %78 = load %struct.gx_device_halftone_resource_s*, %struct.gx_device_halftone_resource_s** %phtr, align 8, !tbaa !1
  %Width = getelementptr inbounds %struct.gx_device_halftone_resource_s, %struct.gx_device_halftone_resource_s* %78, i32 0, i32 2
  %79 = load i32, i32* %Width, align 4, !tbaa !32
  %80 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %width66 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %80, i32 0, i32 1
  %81 = load i16, i16* %width66, align 2, !tbaa !30
  %conv67 = zext i16 %81 to i32
  %cmp68 = icmp eq i32 %79, %conv67
  br i1 %cmp68, label %land.lhs.true, label %if.end.108

land.lhs.true:                                    ; preds = %while.body
  %82 = load %struct.gx_device_halftone_resource_s*, %struct.gx_device_halftone_resource_s** %phtr, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gx_device_halftone_resource_s, %struct.gx_device_halftone_resource_s* %82, i32 0, i32 3
  %83 = load i32, i32* %Height, align 4, !tbaa !34
  %84 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %84, i32 0, i32 2
  %85 = load i16, i16* %height, align 2, !tbaa !35
  %conv70 = zext i16 %85 to i32
  %cmp71 = icmp eq i32 %83, %conv70
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.108

land.lhs.true.73:                                 ; preds = %land.lhs.true
  %86 = load %struct.gx_device_halftone_resource_s*, %struct.gx_device_halftone_resource_s** %phtr, align 8, !tbaa !1
  %elt_size = getelementptr inbounds %struct.gx_device_halftone_resource_s, %struct.gx_device_halftone_resource_s* %86, i32 0, i32 7
  %87 = load i32, i32* %elt_size, align 4, !tbaa !36
  %conv74 = sext i32 %87 to i64
  %cmp75 = icmp eq i64 %conv74, 2
  br i1 %cmp75, label %land.lhs.true.77, label %if.end.108

land.lhs.true.77:                                 ; preds = %land.lhs.true.73
  %88 = load %struct.gx_device_halftone_resource_s*, %struct.gx_device_halftone_resource_s** %phtr, align 8, !tbaa !1
  %levels78 = getelementptr inbounds %struct.gx_device_halftone_resource_s, %struct.gx_device_halftone_resource_s* %88, i32 0, i32 5
  %89 = load i32*, i32** %levels78, align 8, !tbaa !37
  %90 = bitcast i32* %89 to i8*
  %91 = load i32*, i32** %levels, align 8, !tbaa !1
  %92 = bitcast i32* %91 to i8*
  %93 = load i32, i32* %num_levels, align 4, !tbaa !14
  %conv79 = zext i32 %93 to i64
  %mul80 = mul i64 %conv79, 4
  %call81 = call i32 @memcmp(i8* %90, i8* %92, i64 %mul80) #7
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.end.108, label %land.lhs.true.83

land.lhs.true.83:                                 ; preds = %land.lhs.true.77
  %94 = load %struct.gx_device_halftone_resource_s*, %struct.gx_device_halftone_resource_s** %phtr, align 8, !tbaa !1
  %bit_data84 = getelementptr inbounds %struct.gx_device_halftone_resource_s, %struct.gx_device_halftone_resource_s* %94, i32 0, i32 6
  %95 = load i8*, i8** %bit_data84, align 8, !tbaa !38
  %96 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %bit_data85 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %96, i32 0, i32 13
  %97 = load i8*, i8** %bit_data85, align 8, !tbaa !5
  %98 = load i32, i32* %size, align 4, !tbaa !14
  %99 = load %struct.gx_device_halftone_resource_s*, %struct.gx_device_halftone_resource_s** %phtr, align 8, !tbaa !1
  %elt_size86 = getelementptr inbounds %struct.gx_device_halftone_resource_s, %struct.gx_device_halftone_resource_s* %99, i32 0, i32 7
  %100 = load i32, i32* %elt_size86, align 4, !tbaa !36
  %mul87 = mul i32 %98, %100
  %conv88 = zext i32 %mul87 to i64
  %call89 = call i32 @memcmp(i8* %95, i8* %97, i64 %conv88) #7
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.end.108, label %if.then.91

if.then.91:                                       ; preds = %land.lhs.true.83
  %101 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %data_memory = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %101, i32 0, i32 11
  %102 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory, align 8, !tbaa !39
  %tobool92 = icmp ne %struct.gs_memory_s* %102, null
  br i1 %tobool92, label %if.then.93, label %if.end.102

if.then.93:                                       ; preds = %if.then.91
  %103 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %data_memory94 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %103, i32 0, i32 11
  %104 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory94, align 8, !tbaa !39
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %104, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %105 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !40
  %106 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %data_memory95 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %106, i32 0, i32 11
  %107 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory95, align 8, !tbaa !39
  %108 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %bit_data96 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %108, i32 0, i32 13
  %109 = load i8*, i8** %bit_data96, align 8, !tbaa !5
  call void %105(%struct.gs_memory_s* %107, i8* %109, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0)) #5
  %110 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %data_memory97 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %110, i32 0, i32 11
  %111 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory97, align 8, !tbaa !39
  %procs98 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %111, i32 0, i32 1
  %free_object99 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs98, i32 0, i32 2
  %112 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object99, align 8, !tbaa !40
  %113 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %data_memory100 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %113, i32 0, i32 11
  %114 = load %struct.gs_memory_s*, %struct.gs_memory_s** %data_memory100, align 8, !tbaa !39
  %115 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %levels101 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %115, i32 0, i32 12
  %116 = load i32*, i32** %levels101, align 8, !tbaa !28
  %117 = bitcast i32* %116 to i8*
  call void %112(%struct.gs_memory_s* %114, i8* %117, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0)) #5
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.93, %if.then.91
  %118 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %data_memory103 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %118, i32 0, i32 11
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %data_memory103, align 8, !tbaa !39
  %119 = load %struct.gx_device_halftone_resource_s*, %struct.gx_device_halftone_resource_s** %phtr, align 8, !tbaa !1
  %levels104 = getelementptr inbounds %struct.gx_device_halftone_resource_s, %struct.gx_device_halftone_resource_s* %119, i32 0, i32 5
  %120 = load i32*, i32** %levels104, align 8, !tbaa !37
  %121 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %levels105 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %121, i32 0, i32 12
  store i32* %120, i32** %levels105, align 8, !tbaa !28
  %122 = load %struct.gx_device_halftone_resource_s*, %struct.gx_device_halftone_resource_s** %phtr, align 8, !tbaa !1
  %bit_data106 = getelementptr inbounds %struct.gx_device_halftone_resource_s, %struct.gx_device_halftone_resource_s* %122, i32 0, i32 6
  %123 = load i8*, i8** %bit_data106, align 8, !tbaa !38
  %124 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %bit_data107 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %124, i32 0, i32 13
  store i8* %123, i8** %bit_data107, align 8, !tbaa !5
  store i32 16, i32* %cleanup.dest.slot
  br label %cleanup

if.end.108:                                       ; preds = %land.lhs.true.83, %land.lhs.true.77, %land.lhs.true.73, %land.lhs.true, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.102, %while.end
  %125 = bitcast %struct.gx_device_halftone_resource_s** %phtr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %126 = bitcast %struct.gx_device_halftone_resource_s*** %pphtr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.113 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.110

for.inc.110:                                      ; preds = %cleanup.cont
  %127 = load %struct.gx_device_halftone_resource_s** ()**, %struct.gx_device_halftone_resource_s** ()*** %phtrp, align 8, !tbaa !1
  %incdec.ptr111 = getelementptr inbounds %struct.gx_device_halftone_resource_s** ()*, %struct.gx_device_halftone_resource_s** ()** %127, i32 1
  store %struct.gx_device_halftone_resource_s** ()** %incdec.ptr111, %struct.gx_device_halftone_resource_s** ()*** %phtrp, align 8, !tbaa !1
  br label %for.cond.61

for.end.112:                                      ; preds = %for.cond.61
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.113

cleanup.113:                                      ; preds = %for.end.112, %cleanup
  %128 = bitcast %struct.gx_device_halftone_resource_s** ()*** %phtrp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %cleanup.dest.114 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.114, label %cleanup.116 [
    i32 0, label %cleanup.cont.115
    i32 16, label %out
  ]

cleanup.cont.115:                                 ; preds = %cleanup.113
  br label %out

out:                                              ; preds = %cleanup.cont.115, %cleanup.113
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.116

cleanup.116:                                      ; preds = %out, %cleanup.113
  %129 = bitcast i32* %num_levels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %130 = bitcast i32** %levels to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #1
  %131 = bitcast i16** %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #1
  %133 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = load i32, i32* %retval
  ret i32 %134
}

; Function Attrs: nounwind uwtable
define internal i32 @ht_bit_index_short(%struct.gx_ht_order_s* %porder, i32 %index, %struct.gs_int_point_s* %ppt) #0 {
entry:
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %index.addr = alloca i32, align 4
  %ppt.addr = alloca %struct.gs_int_point_s*, align 8
  %bit_index = alloca i32, align 4
  %bit_raster = alloca i32, align 4
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !14
  store %struct.gs_int_point_s* %ppt, %struct.gs_int_point_s** %ppt.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bit_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %index.addr, align 4, !tbaa !14
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %bit_data = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %2, i32 0, i32 13
  %3 = load i8*, i8** %bit_data, align 8, !tbaa !5
  %4 = bitcast i8* %3 to i16*
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2, !tbaa !31
  %conv = zext i16 %5 to i32
  store i32 %conv, i32* %bit_index, align 4, !tbaa !14
  %6 = bitcast i32* %bit_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %7, i32 0, i32 3
  %8 = load i16, i16* %raster, align 2, !tbaa !20
  %conv1 = zext i16 %8 to i32
  %mul = mul nsw i32 %conv1, 8
  store i32 %mul, i32* %bit_raster, align 4, !tbaa !14
  %9 = load i32, i32* %bit_index, align 4, !tbaa !14
  %10 = load i32, i32* %bit_raster, align 4, !tbaa !14
  %rem = urem i32 %9, %10
  %11 = load %struct.gs_int_point_s*, %struct.gs_int_point_s** %ppt.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %11, i32 0, i32 0
  store i32 %rem, i32* %x, align 4, !tbaa !21
  %12 = load i32, i32* %bit_index, align 4, !tbaa !14
  %13 = load i32, i32* %bit_raster, align 4, !tbaa !14
  %div = udiv i32 %12, %13
  %14 = load %struct.gs_int_point_s*, %struct.gs_int_point_s** %ppt.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %14, i32 0, i32 1
  store i32 %div, i32* %y, align 4, !tbaa !23
  %15 = bitcast i32* %bit_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast i32* %bit_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @render_ht_short(%struct.gx_ht_tile_s* %pbt, i32 %level, %struct.gx_ht_order_s* %porder) #0 {
entry:
  %pbt.addr = alloca %struct.gx_ht_tile_s*, align 8
  %level.addr = alloca i32, align 4
  %porder.addr = alloca %struct.gx_ht_order_s*, align 8
  %old_level = alloca i32, align 4
  %p = alloca i16*, align 8
  %data = alloca i8*, align 8
  %bit_index = alloca i32, align 4
  %dp = alloca i8*, align 8
  %bit_index8 = alloca i32, align 4
  %dp11 = alloca i8*, align 8
  %bit_index23 = alloca i32, align 4
  %dp26 = alloca i8*, align 8
  %bit_index38 = alloca i32, align 4
  %dp41 = alloca i8*, align 8
  %bit_index54 = alloca i32, align 4
  %dp57 = alloca i8*, align 8
  %bit_index69 = alloca i32, align 4
  %dp72 = alloca i8*, align 8
  %bit_index84 = alloca i32, align 4
  %dp87 = alloca i8*, align 8
  %bit_index99 = alloca i32, align 4
  %dp102 = alloca i8*, align 8
  %bit_index116 = alloca i32, align 4
  %dp119 = alloca i8*, align 8
  %bit_index132 = alloca i32, align 4
  %dp135 = alloca i8*, align 8
  %bit_index148 = alloca i32, align 4
  %dp151 = alloca i8*, align 8
  %bit_index164 = alloca i32, align 4
  %dp167 = alloca i8*, align 8
  %bit_index180 = alloca i32, align 4
  %dp183 = alloca i8*, align 8
  %bit_index196 = alloca i32, align 4
  %dp199 = alloca i8*, align 8
  %bit_index212 = alloca i32, align 4
  %dp215 = alloca i8*, align 8
  %bit_index228 = alloca i32, align 4
  %dp231 = alloca i8*, align 8
  %bit_index244 = alloca i32, align 4
  %dp247 = alloca i8*, align 8
  %bit_index260 = alloca i32, align 4
  %dp263 = alloca i8*, align 8
  %bit_index276 = alloca i32, align 4
  %dp279 = alloca i8*, align 8
  %bit_index292 = alloca i32, align 4
  %dp295 = alloca i8*, align 8
  %bit_index308 = alloca i32, align 4
  %dp311 = alloca i8*, align 8
  %bit_index324 = alloca i32, align 4
  %dp327 = alloca i8*, align 8
  store %struct.gx_ht_tile_s* %pbt, %struct.gx_ht_tile_s** %pbt.addr, align 8, !tbaa !1
  store i32 %level, i32* %level.addr, align 4, !tbaa !14
  store %struct.gx_ht_order_s* %porder, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %0 = bitcast i32* %old_level to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %pbt.addr, align 8, !tbaa !1
  %level1 = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %1, i32 0, i32 1
  %2 = load i32, i32* %level1, align 4, !tbaa !24
  store i32 %2, i32* %old_level, align 4, !tbaa !14
  %3 = bitcast i16** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %porder.addr, align 8, !tbaa !1
  %bit_data = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %4, i32 0, i32 13
  %5 = load i8*, i8** %bit_data, align 8, !tbaa !5
  %6 = bitcast i8* %5 to i16*
  %7 = load i32, i32* %old_level, align 4, !tbaa !14
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i16, i16* %6, i64 %idx.ext
  store i16* %add.ptr, i16** %p, align 8, !tbaa !1
  %8 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gx_ht_tile_s*, %struct.gx_ht_tile_s** %pbt.addr, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.gx_ht_tile_s, %struct.gx_ht_tile_s* %9, i32 0, i32 0
  %data2 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 0
  %10 = load i8*, i8** %data2, align 8, !tbaa !27
  store i8* %10, i8** %data, align 8, !tbaa !1
  br label %sw

sw:                                               ; preds = %if.end, %entry
  %11 = load i32, i32* %level.addr, align 4, !tbaa !14
  %12 = load i32, i32* %old_level, align 4, !tbaa !14
  %sub = sub nsw i32 %11, %12
  switch i32 %sub, label %sw.default [
    i32 7, label %sw.bb
    i32 6, label %sw.bb.130
    i32 5, label %sw.bb.146
    i32 4, label %sw.bb.162
    i32 3, label %sw.bb.178
    i32 2, label %sw.bb.194
    i32 1, label %sw.bb.210
    i32 0, label %sw.epilog
    i32 -7, label %sw.bb.226
    i32 -6, label %sw.bb.242
    i32 -5, label %sw.bb.258
    i32 -4, label %sw.bb.274
    i32 -3, label %sw.bb.290
    i32 -2, label %sw.bb.306
    i32 -1, label %sw.bb.322
  ]

sw.default:                                       ; preds = %sw
  %13 = load i32, i32* %level.addr, align 4, !tbaa !14
  %14 = load i32, i32* %old_level, align 4, !tbaa !14
  %cmp = icmp sgt i32 %13, %14
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  br label %do.body

do.body:                                          ; preds = %if.then
  %15 = bitcast i32* %bit_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %16, i64 0
  %17 = load i16, i16* %arrayidx, align 2, !tbaa !31
  %conv = zext i16 %17 to i32
  store i32 %conv, i32* %bit_index, align 4, !tbaa !14
  %18 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load i32, i32* %bit_index, align 4, !tbaa !14
  %shr = lshr i32 %19, 3
  %idxprom = zext i32 %shr to i64
  %20 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %20, i64 %idxprom
  store i8* %arrayidx3, i8** %dp, align 8, !tbaa !1
  %21 = load i32, i32* %bit_index, align 4, !tbaa !14
  %and = and i32 %21, 7
  %shr4 = ashr i32 128, %and
  %22 = load i8*, i8** %dp, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !16
  %conv5 = zext i8 %23 to i32
  %xor = xor i32 %conv5, %shr4
  %conv6 = trunc i32 %xor to i8
  store i8 %conv6, i8* %22, align 1, !tbaa !16
  %24 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i32* %bit_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.7

do.body.7:                                        ; preds = %do.end
  %26 = bitcast i32* %bit_index8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i16, i16* %27, i64 1
  %28 = load i16, i16* %arrayidx9, align 2, !tbaa !31
  %conv10 = zext i16 %28 to i32
  store i32 %conv10, i32* %bit_index8, align 4, !tbaa !14
  %29 = bitcast i8** %dp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = load i32, i32* %bit_index8, align 4, !tbaa !14
  %shr12 = lshr i32 %30, 3
  %idxprom13 = zext i32 %shr12 to i64
  %31 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %31, i64 %idxprom13
  store i8* %arrayidx14, i8** %dp11, align 8, !tbaa !1
  %32 = load i32, i32* %bit_index8, align 4, !tbaa !14
  %and15 = and i32 %32, 7
  %shr16 = ashr i32 128, %and15
  %33 = load i8*, i8** %dp11, align 8, !tbaa !1
  %34 = load i8, i8* %33, align 1, !tbaa !16
  %conv17 = zext i8 %34 to i32
  %xor18 = xor i32 %conv17, %shr16
  %conv19 = trunc i32 %xor18 to i8
  store i8 %conv19, i8* %33, align 1, !tbaa !16
  %35 = bitcast i8** %dp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i32* %bit_index8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  br label %do.cond.20

do.cond.20:                                       ; preds = %do.body.7
  br label %do.end.21

do.end.21:                                        ; preds = %do.cond.20
  br label %do.body.22

do.body.22:                                       ; preds = %do.end.21
  %37 = bitcast i32* %bit_index23 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i16, i16* %38, i64 2
  %39 = load i16, i16* %arrayidx24, align 2, !tbaa !31
  %conv25 = zext i16 %39 to i32
  store i32 %conv25, i32* %bit_index23, align 4, !tbaa !14
  %40 = bitcast i8** %dp26 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load i32, i32* %bit_index23, align 4, !tbaa !14
  %shr27 = lshr i32 %41, 3
  %idxprom28 = zext i32 %shr27 to i64
  %42 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %42, i64 %idxprom28
  store i8* %arrayidx29, i8** %dp26, align 8, !tbaa !1
  %43 = load i32, i32* %bit_index23, align 4, !tbaa !14
  %and30 = and i32 %43, 7
  %shr31 = ashr i32 128, %and30
  %44 = load i8*, i8** %dp26, align 8, !tbaa !1
  %45 = load i8, i8* %44, align 1, !tbaa !16
  %conv32 = zext i8 %45 to i32
  %xor33 = xor i32 %conv32, %shr31
  %conv34 = trunc i32 %xor33 to i8
  store i8 %conv34, i8* %44, align 1, !tbaa !16
  %46 = bitcast i8** %dp26 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i32* %bit_index23 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  br label %do.cond.35

do.cond.35:                                       ; preds = %do.body.22
  br label %do.end.36

do.end.36:                                        ; preds = %do.cond.35
  br label %do.body.37

do.body.37:                                       ; preds = %do.end.36
  %48 = bitcast i32* %bit_index38 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i16, i16* %49, i64 3
  %50 = load i16, i16* %arrayidx39, align 2, !tbaa !31
  %conv40 = zext i16 %50 to i32
  store i32 %conv40, i32* %bit_index38, align 4, !tbaa !14
  %51 = bitcast i8** %dp41 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = load i32, i32* %bit_index38, align 4, !tbaa !14
  %shr42 = lshr i32 %52, 3
  %idxprom43 = zext i32 %shr42 to i64
  %53 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %53, i64 %idxprom43
  store i8* %arrayidx44, i8** %dp41, align 8, !tbaa !1
  %54 = load i32, i32* %bit_index38, align 4, !tbaa !14
  %and45 = and i32 %54, 7
  %shr46 = ashr i32 128, %and45
  %55 = load i8*, i8** %dp41, align 8, !tbaa !1
  %56 = load i8, i8* %55, align 1, !tbaa !16
  %conv47 = zext i8 %56 to i32
  %xor48 = xor i32 %conv47, %shr46
  %conv49 = trunc i32 %xor48 to i8
  store i8 %conv49, i8* %55, align 1, !tbaa !16
  %57 = bitcast i8** %dp41 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast i32* %bit_index38 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  br label %do.cond.50

do.cond.50:                                       ; preds = %do.body.37
  br label %do.end.51

do.end.51:                                        ; preds = %do.cond.50
  %59 = load i16*, i16** %p, align 8, !tbaa !1
  %add.ptr52 = getelementptr inbounds i16, i16* %59, i64 4
  store i16* %add.ptr52, i16** %p, align 8, !tbaa !1
  %60 = load i32, i32* %old_level, align 4, !tbaa !14
  %add = add nsw i32 %60, 4
  store i32 %add, i32* %old_level, align 4, !tbaa !14
  br label %if.end

if.else:                                          ; preds = %sw.default
  br label %do.body.53

do.body.53:                                       ; preds = %if.else
  %61 = bitcast i32* %bit_index54 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  %62 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i16, i16* %62, i64 -1
  %63 = load i16, i16* %arrayidx55, align 2, !tbaa !31
  %conv56 = zext i16 %63 to i32
  store i32 %conv56, i32* %bit_index54, align 4, !tbaa !14
  %64 = bitcast i8** %dp57 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #1
  %65 = load i32, i32* %bit_index54, align 4, !tbaa !14
  %shr58 = lshr i32 %65, 3
  %idxprom59 = zext i32 %shr58 to i64
  %66 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i8, i8* %66, i64 %idxprom59
  store i8* %arrayidx60, i8** %dp57, align 8, !tbaa !1
  %67 = load i32, i32* %bit_index54, align 4, !tbaa !14
  %and61 = and i32 %67, 7
  %shr62 = ashr i32 128, %and61
  %68 = load i8*, i8** %dp57, align 8, !tbaa !1
  %69 = load i8, i8* %68, align 1, !tbaa !16
  %conv63 = zext i8 %69 to i32
  %xor64 = xor i32 %conv63, %shr62
  %conv65 = trunc i32 %xor64 to i8
  store i8 %conv65, i8* %68, align 1, !tbaa !16
  %70 = bitcast i8** %dp57 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i32* %bit_index54 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  br label %do.cond.66

do.cond.66:                                       ; preds = %do.body.53
  br label %do.end.67

do.end.67:                                        ; preds = %do.cond.66
  br label %do.body.68

do.body.68:                                       ; preds = %do.end.67
  %72 = bitcast i32* %bit_index69 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #1
  %73 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds i16, i16* %73, i64 -2
  %74 = load i16, i16* %arrayidx70, align 2, !tbaa !31
  %conv71 = zext i16 %74 to i32
  store i32 %conv71, i32* %bit_index69, align 4, !tbaa !14
  %75 = bitcast i8** %dp72 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #1
  %76 = load i32, i32* %bit_index69, align 4, !tbaa !14
  %shr73 = lshr i32 %76, 3
  %idxprom74 = zext i32 %shr73 to i64
  %77 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i8, i8* %77, i64 %idxprom74
  store i8* %arrayidx75, i8** %dp72, align 8, !tbaa !1
  %78 = load i32, i32* %bit_index69, align 4, !tbaa !14
  %and76 = and i32 %78, 7
  %shr77 = ashr i32 128, %and76
  %79 = load i8*, i8** %dp72, align 8, !tbaa !1
  %80 = load i8, i8* %79, align 1, !tbaa !16
  %conv78 = zext i8 %80 to i32
  %xor79 = xor i32 %conv78, %shr77
  %conv80 = trunc i32 %xor79 to i8
  store i8 %conv80, i8* %79, align 1, !tbaa !16
  %81 = bitcast i8** %dp72 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i32* %bit_index69 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  br label %do.cond.81

do.cond.81:                                       ; preds = %do.body.68
  br label %do.end.82

do.end.82:                                        ; preds = %do.cond.81
  br label %do.body.83

do.body.83:                                       ; preds = %do.end.82
  %83 = bitcast i32* %bit_index84 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  %84 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx85 = getelementptr inbounds i16, i16* %84, i64 -3
  %85 = load i16, i16* %arrayidx85, align 2, !tbaa !31
  %conv86 = zext i16 %85 to i32
  store i32 %conv86, i32* %bit_index84, align 4, !tbaa !14
  %86 = bitcast i8** %dp87 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %86) #1
  %87 = load i32, i32* %bit_index84, align 4, !tbaa !14
  %shr88 = lshr i32 %87, 3
  %idxprom89 = zext i32 %shr88 to i64
  %88 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds i8, i8* %88, i64 %idxprom89
  store i8* %arrayidx90, i8** %dp87, align 8, !tbaa !1
  %89 = load i32, i32* %bit_index84, align 4, !tbaa !14
  %and91 = and i32 %89, 7
  %shr92 = ashr i32 128, %and91
  %90 = load i8*, i8** %dp87, align 8, !tbaa !1
  %91 = load i8, i8* %90, align 1, !tbaa !16
  %conv93 = zext i8 %91 to i32
  %xor94 = xor i32 %conv93, %shr92
  %conv95 = trunc i32 %xor94 to i8
  store i8 %conv95, i8* %90, align 1, !tbaa !16
  %92 = bitcast i8** %dp87 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast i32* %bit_index84 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  br label %do.cond.96

do.cond.96:                                       ; preds = %do.body.83
  br label %do.end.97

do.end.97:                                        ; preds = %do.cond.96
  br label %do.body.98

do.body.98:                                       ; preds = %do.end.97
  %94 = bitcast i32* %bit_index99 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %94) #1
  %95 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds i16, i16* %95, i64 -4
  %96 = load i16, i16* %arrayidx100, align 2, !tbaa !31
  %conv101 = zext i16 %96 to i32
  store i32 %conv101, i32* %bit_index99, align 4, !tbaa !14
  %97 = bitcast i8** %dp102 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %97) #1
  %98 = load i32, i32* %bit_index99, align 4, !tbaa !14
  %shr103 = lshr i32 %98, 3
  %idxprom104 = zext i32 %shr103 to i64
  %99 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx105 = getelementptr inbounds i8, i8* %99, i64 %idxprom104
  store i8* %arrayidx105, i8** %dp102, align 8, !tbaa !1
  %100 = load i32, i32* %bit_index99, align 4, !tbaa !14
  %and106 = and i32 %100, 7
  %shr107 = ashr i32 128, %and106
  %101 = load i8*, i8** %dp102, align 8, !tbaa !1
  %102 = load i8, i8* %101, align 1, !tbaa !16
  %conv108 = zext i8 %102 to i32
  %xor109 = xor i32 %conv108, %shr107
  %conv110 = trunc i32 %xor109 to i8
  store i8 %conv110, i8* %101, align 1, !tbaa !16
  %103 = bitcast i8** %dp102 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast i32* %bit_index99 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  br label %do.cond.111

do.cond.111:                                      ; preds = %do.body.98
  br label %do.end.112

do.end.112:                                       ; preds = %do.cond.111
  %105 = load i16*, i16** %p, align 8, !tbaa !1
  %add.ptr113 = getelementptr inbounds i16, i16* %105, i64 -4
  store i16* %add.ptr113, i16** %p, align 8, !tbaa !1
  %106 = load i32, i32* %old_level, align 4, !tbaa !14
  %sub114 = sub nsw i32 %106, 4
  store i32 %sub114, i32* %old_level, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %do.end.112, %do.end.51
  br label %sw

sw.bb:                                            ; preds = %sw
  br label %do.body.115

do.body.115:                                      ; preds = %sw.bb
  %107 = bitcast i32* %bit_index116 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %107) #1
  %108 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds i16, i16* %108, i64 6
  %109 = load i16, i16* %arrayidx117, align 2, !tbaa !31
  %conv118 = zext i16 %109 to i32
  store i32 %conv118, i32* %bit_index116, align 4, !tbaa !14
  %110 = bitcast i8** %dp119 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %110) #1
  %111 = load i32, i32* %bit_index116, align 4, !tbaa !14
  %shr120 = lshr i32 %111, 3
  %idxprom121 = zext i32 %shr120 to i64
  %112 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds i8, i8* %112, i64 %idxprom121
  store i8* %arrayidx122, i8** %dp119, align 8, !tbaa !1
  %113 = load i32, i32* %bit_index116, align 4, !tbaa !14
  %and123 = and i32 %113, 7
  %shr124 = ashr i32 128, %and123
  %114 = load i8*, i8** %dp119, align 8, !tbaa !1
  %115 = load i8, i8* %114, align 1, !tbaa !16
  %conv125 = zext i8 %115 to i32
  %xor126 = xor i32 %conv125, %shr124
  %conv127 = trunc i32 %xor126 to i8
  store i8 %conv127, i8* %114, align 1, !tbaa !16
  %116 = bitcast i8** %dp119 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = bitcast i32* %bit_index116 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  br label %do.cond.128

do.cond.128:                                      ; preds = %do.body.115
  br label %do.end.129

do.end.129:                                       ; preds = %do.cond.128
  br label %sw.bb.130

sw.bb.130:                                        ; preds = %sw, %do.end.129
  br label %do.body.131

do.body.131:                                      ; preds = %sw.bb.130
  %118 = bitcast i32* %bit_index132 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %118) #1
  %119 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx133 = getelementptr inbounds i16, i16* %119, i64 5
  %120 = load i16, i16* %arrayidx133, align 2, !tbaa !31
  %conv134 = zext i16 %120 to i32
  store i32 %conv134, i32* %bit_index132, align 4, !tbaa !14
  %121 = bitcast i8** %dp135 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %121) #1
  %122 = load i32, i32* %bit_index132, align 4, !tbaa !14
  %shr136 = lshr i32 %122, 3
  %idxprom137 = zext i32 %shr136 to i64
  %123 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx138 = getelementptr inbounds i8, i8* %123, i64 %idxprom137
  store i8* %arrayidx138, i8** %dp135, align 8, !tbaa !1
  %124 = load i32, i32* %bit_index132, align 4, !tbaa !14
  %and139 = and i32 %124, 7
  %shr140 = ashr i32 128, %and139
  %125 = load i8*, i8** %dp135, align 8, !tbaa !1
  %126 = load i8, i8* %125, align 1, !tbaa !16
  %conv141 = zext i8 %126 to i32
  %xor142 = xor i32 %conv141, %shr140
  %conv143 = trunc i32 %xor142 to i8
  store i8 %conv143, i8* %125, align 1, !tbaa !16
  %127 = bitcast i8** %dp135 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast i32* %bit_index132 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  br label %do.cond.144

do.cond.144:                                      ; preds = %do.body.131
  br label %do.end.145

do.end.145:                                       ; preds = %do.cond.144
  br label %sw.bb.146

sw.bb.146:                                        ; preds = %sw, %do.end.145
  br label %do.body.147

do.body.147:                                      ; preds = %sw.bb.146
  %129 = bitcast i32* %bit_index148 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %129) #1
  %130 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx149 = getelementptr inbounds i16, i16* %130, i64 4
  %131 = load i16, i16* %arrayidx149, align 2, !tbaa !31
  %conv150 = zext i16 %131 to i32
  store i32 %conv150, i32* %bit_index148, align 4, !tbaa !14
  %132 = bitcast i8** %dp151 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %132) #1
  %133 = load i32, i32* %bit_index148, align 4, !tbaa !14
  %shr152 = lshr i32 %133, 3
  %idxprom153 = zext i32 %shr152 to i64
  %134 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx154 = getelementptr inbounds i8, i8* %134, i64 %idxprom153
  store i8* %arrayidx154, i8** %dp151, align 8, !tbaa !1
  %135 = load i32, i32* %bit_index148, align 4, !tbaa !14
  %and155 = and i32 %135, 7
  %shr156 = ashr i32 128, %and155
  %136 = load i8*, i8** %dp151, align 8, !tbaa !1
  %137 = load i8, i8* %136, align 1, !tbaa !16
  %conv157 = zext i8 %137 to i32
  %xor158 = xor i32 %conv157, %shr156
  %conv159 = trunc i32 %xor158 to i8
  store i8 %conv159, i8* %136, align 1, !tbaa !16
  %138 = bitcast i8** %dp151 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %139 = bitcast i32* %bit_index148 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  br label %do.cond.160

do.cond.160:                                      ; preds = %do.body.147
  br label %do.end.161

do.end.161:                                       ; preds = %do.cond.160
  br label %sw.bb.162

sw.bb.162:                                        ; preds = %sw, %do.end.161
  br label %do.body.163

do.body.163:                                      ; preds = %sw.bb.162
  %140 = bitcast i32* %bit_index164 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %140) #1
  %141 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx165 = getelementptr inbounds i16, i16* %141, i64 3
  %142 = load i16, i16* %arrayidx165, align 2, !tbaa !31
  %conv166 = zext i16 %142 to i32
  store i32 %conv166, i32* %bit_index164, align 4, !tbaa !14
  %143 = bitcast i8** %dp167 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %143) #1
  %144 = load i32, i32* %bit_index164, align 4, !tbaa !14
  %shr168 = lshr i32 %144, 3
  %idxprom169 = zext i32 %shr168 to i64
  %145 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx170 = getelementptr inbounds i8, i8* %145, i64 %idxprom169
  store i8* %arrayidx170, i8** %dp167, align 8, !tbaa !1
  %146 = load i32, i32* %bit_index164, align 4, !tbaa !14
  %and171 = and i32 %146, 7
  %shr172 = ashr i32 128, %and171
  %147 = load i8*, i8** %dp167, align 8, !tbaa !1
  %148 = load i8, i8* %147, align 1, !tbaa !16
  %conv173 = zext i8 %148 to i32
  %xor174 = xor i32 %conv173, %shr172
  %conv175 = trunc i32 %xor174 to i8
  store i8 %conv175, i8* %147, align 1, !tbaa !16
  %149 = bitcast i8** %dp167 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %150 = bitcast i32* %bit_index164 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  br label %do.cond.176

do.cond.176:                                      ; preds = %do.body.163
  br label %do.end.177

do.end.177:                                       ; preds = %do.cond.176
  br label %sw.bb.178

sw.bb.178:                                        ; preds = %sw, %do.end.177
  br label %do.body.179

do.body.179:                                      ; preds = %sw.bb.178
  %151 = bitcast i32* %bit_index180 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %151) #1
  %152 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx181 = getelementptr inbounds i16, i16* %152, i64 2
  %153 = load i16, i16* %arrayidx181, align 2, !tbaa !31
  %conv182 = zext i16 %153 to i32
  store i32 %conv182, i32* %bit_index180, align 4, !tbaa !14
  %154 = bitcast i8** %dp183 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %154) #1
  %155 = load i32, i32* %bit_index180, align 4, !tbaa !14
  %shr184 = lshr i32 %155, 3
  %idxprom185 = zext i32 %shr184 to i64
  %156 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx186 = getelementptr inbounds i8, i8* %156, i64 %idxprom185
  store i8* %arrayidx186, i8** %dp183, align 8, !tbaa !1
  %157 = load i32, i32* %bit_index180, align 4, !tbaa !14
  %and187 = and i32 %157, 7
  %shr188 = ashr i32 128, %and187
  %158 = load i8*, i8** %dp183, align 8, !tbaa !1
  %159 = load i8, i8* %158, align 1, !tbaa !16
  %conv189 = zext i8 %159 to i32
  %xor190 = xor i32 %conv189, %shr188
  %conv191 = trunc i32 %xor190 to i8
  store i8 %conv191, i8* %158, align 1, !tbaa !16
  %160 = bitcast i8** %dp183 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #1
  %161 = bitcast i32* %bit_index180 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  br label %do.cond.192

do.cond.192:                                      ; preds = %do.body.179
  br label %do.end.193

do.end.193:                                       ; preds = %do.cond.192
  br label %sw.bb.194

sw.bb.194:                                        ; preds = %sw, %do.end.193
  br label %do.body.195

do.body.195:                                      ; preds = %sw.bb.194
  %162 = bitcast i32* %bit_index196 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %162) #1
  %163 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx197 = getelementptr inbounds i16, i16* %163, i64 1
  %164 = load i16, i16* %arrayidx197, align 2, !tbaa !31
  %conv198 = zext i16 %164 to i32
  store i32 %conv198, i32* %bit_index196, align 4, !tbaa !14
  %165 = bitcast i8** %dp199 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %165) #1
  %166 = load i32, i32* %bit_index196, align 4, !tbaa !14
  %shr200 = lshr i32 %166, 3
  %idxprom201 = zext i32 %shr200 to i64
  %167 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx202 = getelementptr inbounds i8, i8* %167, i64 %idxprom201
  store i8* %arrayidx202, i8** %dp199, align 8, !tbaa !1
  %168 = load i32, i32* %bit_index196, align 4, !tbaa !14
  %and203 = and i32 %168, 7
  %shr204 = ashr i32 128, %and203
  %169 = load i8*, i8** %dp199, align 8, !tbaa !1
  %170 = load i8, i8* %169, align 1, !tbaa !16
  %conv205 = zext i8 %170 to i32
  %xor206 = xor i32 %conv205, %shr204
  %conv207 = trunc i32 %xor206 to i8
  store i8 %conv207, i8* %169, align 1, !tbaa !16
  %171 = bitcast i8** %dp199 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  %172 = bitcast i32* %bit_index196 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  br label %do.cond.208

do.cond.208:                                      ; preds = %do.body.195
  br label %do.end.209

do.end.209:                                       ; preds = %do.cond.208
  br label %sw.bb.210

sw.bb.210:                                        ; preds = %sw, %do.end.209
  br label %do.body.211

do.body.211:                                      ; preds = %sw.bb.210
  %173 = bitcast i32* %bit_index212 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %173) #1
  %174 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx213 = getelementptr inbounds i16, i16* %174, i64 0
  %175 = load i16, i16* %arrayidx213, align 2, !tbaa !31
  %conv214 = zext i16 %175 to i32
  store i32 %conv214, i32* %bit_index212, align 4, !tbaa !14
  %176 = bitcast i8** %dp215 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %176) #1
  %177 = load i32, i32* %bit_index212, align 4, !tbaa !14
  %shr216 = lshr i32 %177, 3
  %idxprom217 = zext i32 %shr216 to i64
  %178 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx218 = getelementptr inbounds i8, i8* %178, i64 %idxprom217
  store i8* %arrayidx218, i8** %dp215, align 8, !tbaa !1
  %179 = load i32, i32* %bit_index212, align 4, !tbaa !14
  %and219 = and i32 %179, 7
  %shr220 = ashr i32 128, %and219
  %180 = load i8*, i8** %dp215, align 8, !tbaa !1
  %181 = load i8, i8* %180, align 1, !tbaa !16
  %conv221 = zext i8 %181 to i32
  %xor222 = xor i32 %conv221, %shr220
  %conv223 = trunc i32 %xor222 to i8
  store i8 %conv223, i8* %180, align 1, !tbaa !16
  %182 = bitcast i8** %dp215 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #1
  %183 = bitcast i32* %bit_index212 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #1
  br label %do.cond.224

do.cond.224:                                      ; preds = %do.body.211
  br label %do.end.225

do.end.225:                                       ; preds = %do.cond.224
  br label %sw.epilog

sw.bb.226:                                        ; preds = %sw
  br label %do.body.227

do.body.227:                                      ; preds = %sw.bb.226
  %184 = bitcast i32* %bit_index228 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %184) #1
  %185 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx229 = getelementptr inbounds i16, i16* %185, i64 -7
  %186 = load i16, i16* %arrayidx229, align 2, !tbaa !31
  %conv230 = zext i16 %186 to i32
  store i32 %conv230, i32* %bit_index228, align 4, !tbaa !14
  %187 = bitcast i8** %dp231 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %187) #1
  %188 = load i32, i32* %bit_index228, align 4, !tbaa !14
  %shr232 = lshr i32 %188, 3
  %idxprom233 = zext i32 %shr232 to i64
  %189 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx234 = getelementptr inbounds i8, i8* %189, i64 %idxprom233
  store i8* %arrayidx234, i8** %dp231, align 8, !tbaa !1
  %190 = load i32, i32* %bit_index228, align 4, !tbaa !14
  %and235 = and i32 %190, 7
  %shr236 = ashr i32 128, %and235
  %191 = load i8*, i8** %dp231, align 8, !tbaa !1
  %192 = load i8, i8* %191, align 1, !tbaa !16
  %conv237 = zext i8 %192 to i32
  %xor238 = xor i32 %conv237, %shr236
  %conv239 = trunc i32 %xor238 to i8
  store i8 %conv239, i8* %191, align 1, !tbaa !16
  %193 = bitcast i8** %dp231 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #1
  %194 = bitcast i32* %bit_index228 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  br label %do.cond.240

do.cond.240:                                      ; preds = %do.body.227
  br label %do.end.241

do.end.241:                                       ; preds = %do.cond.240
  br label %sw.bb.242

sw.bb.242:                                        ; preds = %sw, %do.end.241
  br label %do.body.243

do.body.243:                                      ; preds = %sw.bb.242
  %195 = bitcast i32* %bit_index244 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %195) #1
  %196 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx245 = getelementptr inbounds i16, i16* %196, i64 -6
  %197 = load i16, i16* %arrayidx245, align 2, !tbaa !31
  %conv246 = zext i16 %197 to i32
  store i32 %conv246, i32* %bit_index244, align 4, !tbaa !14
  %198 = bitcast i8** %dp247 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %198) #1
  %199 = load i32, i32* %bit_index244, align 4, !tbaa !14
  %shr248 = lshr i32 %199, 3
  %idxprom249 = zext i32 %shr248 to i64
  %200 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx250 = getelementptr inbounds i8, i8* %200, i64 %idxprom249
  store i8* %arrayidx250, i8** %dp247, align 8, !tbaa !1
  %201 = load i32, i32* %bit_index244, align 4, !tbaa !14
  %and251 = and i32 %201, 7
  %shr252 = ashr i32 128, %and251
  %202 = load i8*, i8** %dp247, align 8, !tbaa !1
  %203 = load i8, i8* %202, align 1, !tbaa !16
  %conv253 = zext i8 %203 to i32
  %xor254 = xor i32 %conv253, %shr252
  %conv255 = trunc i32 %xor254 to i8
  store i8 %conv255, i8* %202, align 1, !tbaa !16
  %204 = bitcast i8** %dp247 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %204) #1
  %205 = bitcast i32* %bit_index244 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  br label %do.cond.256

do.cond.256:                                      ; preds = %do.body.243
  br label %do.end.257

do.end.257:                                       ; preds = %do.cond.256
  br label %sw.bb.258

sw.bb.258:                                        ; preds = %sw, %do.end.257
  br label %do.body.259

do.body.259:                                      ; preds = %sw.bb.258
  %206 = bitcast i32* %bit_index260 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %206) #1
  %207 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx261 = getelementptr inbounds i16, i16* %207, i64 -5
  %208 = load i16, i16* %arrayidx261, align 2, !tbaa !31
  %conv262 = zext i16 %208 to i32
  store i32 %conv262, i32* %bit_index260, align 4, !tbaa !14
  %209 = bitcast i8** %dp263 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %209) #1
  %210 = load i32, i32* %bit_index260, align 4, !tbaa !14
  %shr264 = lshr i32 %210, 3
  %idxprom265 = zext i32 %shr264 to i64
  %211 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx266 = getelementptr inbounds i8, i8* %211, i64 %idxprom265
  store i8* %arrayidx266, i8** %dp263, align 8, !tbaa !1
  %212 = load i32, i32* %bit_index260, align 4, !tbaa !14
  %and267 = and i32 %212, 7
  %shr268 = ashr i32 128, %and267
  %213 = load i8*, i8** %dp263, align 8, !tbaa !1
  %214 = load i8, i8* %213, align 1, !tbaa !16
  %conv269 = zext i8 %214 to i32
  %xor270 = xor i32 %conv269, %shr268
  %conv271 = trunc i32 %xor270 to i8
  store i8 %conv271, i8* %213, align 1, !tbaa !16
  %215 = bitcast i8** %dp263 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %215) #1
  %216 = bitcast i32* %bit_index260 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  br label %do.cond.272

do.cond.272:                                      ; preds = %do.body.259
  br label %do.end.273

do.end.273:                                       ; preds = %do.cond.272
  br label %sw.bb.274

sw.bb.274:                                        ; preds = %sw, %do.end.273
  br label %do.body.275

do.body.275:                                      ; preds = %sw.bb.274
  %217 = bitcast i32* %bit_index276 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %217) #1
  %218 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx277 = getelementptr inbounds i16, i16* %218, i64 -4
  %219 = load i16, i16* %arrayidx277, align 2, !tbaa !31
  %conv278 = zext i16 %219 to i32
  store i32 %conv278, i32* %bit_index276, align 4, !tbaa !14
  %220 = bitcast i8** %dp279 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %220) #1
  %221 = load i32, i32* %bit_index276, align 4, !tbaa !14
  %shr280 = lshr i32 %221, 3
  %idxprom281 = zext i32 %shr280 to i64
  %222 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx282 = getelementptr inbounds i8, i8* %222, i64 %idxprom281
  store i8* %arrayidx282, i8** %dp279, align 8, !tbaa !1
  %223 = load i32, i32* %bit_index276, align 4, !tbaa !14
  %and283 = and i32 %223, 7
  %shr284 = ashr i32 128, %and283
  %224 = load i8*, i8** %dp279, align 8, !tbaa !1
  %225 = load i8, i8* %224, align 1, !tbaa !16
  %conv285 = zext i8 %225 to i32
  %xor286 = xor i32 %conv285, %shr284
  %conv287 = trunc i32 %xor286 to i8
  store i8 %conv287, i8* %224, align 1, !tbaa !16
  %226 = bitcast i8** %dp279 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %226) #1
  %227 = bitcast i32* %bit_index276 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %227) #1
  br label %do.cond.288

do.cond.288:                                      ; preds = %do.body.275
  br label %do.end.289

do.end.289:                                       ; preds = %do.cond.288
  br label %sw.bb.290

sw.bb.290:                                        ; preds = %sw, %do.end.289
  br label %do.body.291

do.body.291:                                      ; preds = %sw.bb.290
  %228 = bitcast i32* %bit_index292 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %228) #1
  %229 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx293 = getelementptr inbounds i16, i16* %229, i64 -3
  %230 = load i16, i16* %arrayidx293, align 2, !tbaa !31
  %conv294 = zext i16 %230 to i32
  store i32 %conv294, i32* %bit_index292, align 4, !tbaa !14
  %231 = bitcast i8** %dp295 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %231) #1
  %232 = load i32, i32* %bit_index292, align 4, !tbaa !14
  %shr296 = lshr i32 %232, 3
  %idxprom297 = zext i32 %shr296 to i64
  %233 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx298 = getelementptr inbounds i8, i8* %233, i64 %idxprom297
  store i8* %arrayidx298, i8** %dp295, align 8, !tbaa !1
  %234 = load i32, i32* %bit_index292, align 4, !tbaa !14
  %and299 = and i32 %234, 7
  %shr300 = ashr i32 128, %and299
  %235 = load i8*, i8** %dp295, align 8, !tbaa !1
  %236 = load i8, i8* %235, align 1, !tbaa !16
  %conv301 = zext i8 %236 to i32
  %xor302 = xor i32 %conv301, %shr300
  %conv303 = trunc i32 %xor302 to i8
  store i8 %conv303, i8* %235, align 1, !tbaa !16
  %237 = bitcast i8** %dp295 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %237) #1
  %238 = bitcast i32* %bit_index292 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %238) #1
  br label %do.cond.304

do.cond.304:                                      ; preds = %do.body.291
  br label %do.end.305

do.end.305:                                       ; preds = %do.cond.304
  br label %sw.bb.306

sw.bb.306:                                        ; preds = %sw, %do.end.305
  br label %do.body.307

do.body.307:                                      ; preds = %sw.bb.306
  %239 = bitcast i32* %bit_index308 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %239) #1
  %240 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx309 = getelementptr inbounds i16, i16* %240, i64 -2
  %241 = load i16, i16* %arrayidx309, align 2, !tbaa !31
  %conv310 = zext i16 %241 to i32
  store i32 %conv310, i32* %bit_index308, align 4, !tbaa !14
  %242 = bitcast i8** %dp311 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %242) #1
  %243 = load i32, i32* %bit_index308, align 4, !tbaa !14
  %shr312 = lshr i32 %243, 3
  %idxprom313 = zext i32 %shr312 to i64
  %244 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx314 = getelementptr inbounds i8, i8* %244, i64 %idxprom313
  store i8* %arrayidx314, i8** %dp311, align 8, !tbaa !1
  %245 = load i32, i32* %bit_index308, align 4, !tbaa !14
  %and315 = and i32 %245, 7
  %shr316 = ashr i32 128, %and315
  %246 = load i8*, i8** %dp311, align 8, !tbaa !1
  %247 = load i8, i8* %246, align 1, !tbaa !16
  %conv317 = zext i8 %247 to i32
  %xor318 = xor i32 %conv317, %shr316
  %conv319 = trunc i32 %xor318 to i8
  store i8 %conv319, i8* %246, align 1, !tbaa !16
  %248 = bitcast i8** %dp311 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %248) #1
  %249 = bitcast i32* %bit_index308 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %249) #1
  br label %do.cond.320

do.cond.320:                                      ; preds = %do.body.307
  br label %do.end.321

do.end.321:                                       ; preds = %do.cond.320
  br label %sw.bb.322

sw.bb.322:                                        ; preds = %sw, %do.end.321
  br label %do.body.323

do.body.323:                                      ; preds = %sw.bb.322
  %250 = bitcast i32* %bit_index324 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %250) #1
  %251 = load i16*, i16** %p, align 8, !tbaa !1
  %arrayidx325 = getelementptr inbounds i16, i16* %251, i64 -1
  %252 = load i16, i16* %arrayidx325, align 2, !tbaa !31
  %conv326 = zext i16 %252 to i32
  store i32 %conv326, i32* %bit_index324, align 4, !tbaa !14
  %253 = bitcast i8** %dp327 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %253) #1
  %254 = load i32, i32* %bit_index324, align 4, !tbaa !14
  %shr328 = lshr i32 %254, 3
  %idxprom329 = zext i32 %shr328 to i64
  %255 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx330 = getelementptr inbounds i8, i8* %255, i64 %idxprom329
  store i8* %arrayidx330, i8** %dp327, align 8, !tbaa !1
  %256 = load i32, i32* %bit_index324, align 4, !tbaa !14
  %and331 = and i32 %256, 7
  %shr332 = ashr i32 128, %and331
  %257 = load i8*, i8** %dp327, align 8, !tbaa !1
  %258 = load i8, i8* %257, align 1, !tbaa !16
  %conv333 = zext i8 %258 to i32
  %xor334 = xor i32 %conv333, %shr332
  %conv335 = trunc i32 %xor334 to i8
  store i8 %conv335, i8* %257, align 1, !tbaa !16
  %259 = bitcast i8** %dp327 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %259) #1
  %260 = bitcast i32* %bit_index324 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %260) #1
  br label %do.cond.336

do.cond.336:                                      ; preds = %do.body.323
  br label %do.end.337

do.end.337:                                       ; preds = %do.cond.336
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.337, %sw, %do.end.225
  %261 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %261) #1
  %262 = bitcast i16** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %262) #1
  %263 = bitcast i32* %old_level to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #1
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @gx_ht_complete_threshold_order(%struct.gx_ht_order_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 88}
!6 = !{!"gx_ht_order_s", !7, i64 0, !8, i64 40, !8, i64 42, !8, i64 44, !8, i64 46, !8, i64 48, !8, i64 50, !10, i64 52, !10, i64 56, !10, i64 60, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !11, i64 112, !2, i64 144, !10, i64 152}
!7 = !{!"gx_ht_cell_params_s", !8, i64 0, !8, i64 2, !8, i64 4, !8, i64 6, !8, i64 8, !8, i64 10, !9, i64 16, !8, i64 24, !8, i64 26, !10, i64 28, !10, i64 32, !10, i64 36}
!8 = !{!"short", !3, i64 0}
!9 = !{!"long", !3, i64 0}
!10 = !{!"int", !3, i64 0}
!11 = !{!"gx_ht_order_screen_params_s", !12, i64 0, !9, i64 24}
!12 = !{!"gs_matrix_s", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20}
!13 = !{!"float", !3, i64 0}
!14 = !{!10, !10, i64 0}
!15 = !{!6, !10, i64 60}
!16 = !{!3, !3, i64 0}
!17 = !{!18, !10, i64 4}
!18 = !{!"gx_ht_bit_s", !10, i64 0, !10, i64 4}
!19 = !{!18, !10, i64 0}
!20 = !{!6, !8, i64 44}
!21 = !{!22, !10, i64 0}
!22 = !{!"gs_int_point_s", !10, i64 0, !10, i64 4}
!23 = !{!22, !10, i64 4}
!24 = !{!25, !10, i64 48}
!25 = !{!"gx_ht_tile_s", !26, i64 0, !10, i64 48, !10, i64 52}
!26 = !{!"gx_strip_bitmap_s", !2, i64 0, !10, i64 8, !22, i64 12, !9, i64 24, !8, i64 32, !8, i64 34, !8, i64 36, !8, i64 38, !10, i64 40}
!27 = !{!25, !2, i64 0}
!28 = !{!6, !2, i64 80}
!29 = !{!6, !10, i64 56}
!30 = !{!6, !8, i64 40}
!31 = !{!8, !8, i64 0}
!32 = !{!33, !10, i64 12}
!33 = !{!"gx_device_halftone_resource_s", !2, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !2, i64 24, !2, i64 32, !10, i64 40}
!34 = !{!33, !10, i64 16}
!35 = !{!6, !8, i64 42}
!36 = !{!33, !10, i64 40}
!37 = !{!33, !2, i64 24}
!38 = !{!33, !2, i64 32}
!39 = !{!6, !2, i64 72}
!40 = !{!41, !2, i64 24}
!41 = !{!"gs_memory_s", !2, i64 0, !42, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!42 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
