; ModuleID = './gxpflat.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curve_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gx_flattened_iterator_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gx_path_s = type { %struct.gx_path_segments_s, %struct.gs_memory_s*, i32, %struct.gx_path_segments_s*, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.segment_s*, i8, i8, i8, i8, i8, i32, i32, %struct.gs_fixed_point_s, %struct.gx_path_procs_s* }
%struct.gx_path_segments_s = type { %struct.rc_header_s, %struct.psc_ }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.psc_ = type { %struct.subpath_s*, %struct.subpath_s* }
%struct.subpath_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.segment_s*, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.subpath_s* }
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
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_path_procs_s = type { i32 (%struct.gx_path_s*, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32)*, i8 (%struct.gx_path_s*, i8)* }

; Function Attrs: nounwind uwtable
define i32 @gx_curve_log2_samples(i32 %x0, i32 %y0, %struct.curve_segment* %pc, i32 %fixed_flat) #0 {
entry:
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %pc.addr = alloca %struct.curve_segment*, align 8
  %fixed_flat.addr = alloca i32, align 4
  %x03 = alloca i32, align 4
  %y03 = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %x12 = alloca i32, align 4
  %y12 = alloca i32, align 4
  %dx0 = alloca i32, align 4
  %dy0 = alloca i32, align 4
  %dx1 = alloca i32, align 4
  %dy1 = alloca i32, align 4
  %adx0 = alloca i32, align 4
  %ady0 = alloca i32, align 4
  %adx1 = alloca i32, align 4
  %ady1 = alloca i32, align 4
  %d = alloca i32, align 4
  %qtmp = alloca i32, align 4
  %q = alloca i32, align 4
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !1
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !1
  store %struct.curve_segment* %pc, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  store i32 %fixed_flat, i32* %fixed_flat.addr, align 4, !tbaa !1
  %0 = bitcast i32* %x03 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %pt = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %1, i32 0, i32 4
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !7
  %3 = load i32, i32* %x0.addr, align 4, !tbaa !1
  %sub = sub nsw i32 %2, %3
  store i32 %sub, i32* %x03, align 4, !tbaa !1
  %4 = bitcast i32* %y03 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %pt1 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %5, i32 0, i32 4
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt1, i32 0, i32 1
  %6 = load i32, i32* %y, align 4, !tbaa !11
  %7 = load i32, i32* %y0.addr, align 4, !tbaa !1
  %sub2 = sub nsw i32 %6, %7
  store i32 %sub2, i32* %y03, align 4, !tbaa !1
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %x03, align 4, !tbaa !1
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %x03, align 4, !tbaa !1
  %sub3 = sub nsw i32 0, %10
  store i32 %sub3, i32* %x03, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %y03, align 4, !tbaa !1
  %cmp4 = icmp slt i32 %11, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %12 = load i32, i32* %y03, align 4, !tbaa !1
  %sub6 = sub nsw i32 0, %12
  store i32 %sub6, i32* %y03, align 4, !tbaa !1
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %13 = load i32, i32* %x03, align 4, !tbaa !1
  %14 = load i32, i32* %y03, align 4, !tbaa !1
  %or = or i32 %13, %14
  %cmp8 = icmp slt i32 %or, 4096
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  %15 = load i32, i32* %fixed_flat.addr, align 4, !tbaa !1
  %shr = ashr i32 %15, 1
  store i32 %shr, i32* %fixed_flat.addr, align 4, !tbaa !1
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.7
  %16 = load i32, i32* %fixed_flat.addr, align 4, !tbaa !1
  %cmp11 = icmp eq i32 %16, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.10
  %17 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load i32, i32* %x03, align 4, !tbaa !1
  %19 = load i32, i32* %y03, align 4, !tbaa !1
  %cmp13 = icmp sgt i32 %18, %19
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.12
  %20 = load i32, i32* %x03, align 4, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %if.then.12
  %21 = load i32, i32* %y03, align 4, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %20, %cond.true ], [ %21, %cond.false ]
  store i32 %cond, i32* %m, align 4, !tbaa !1
  store i32 1, i32* %k, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.body, %cond.end
  %22 = load i32, i32* %m, align 4, !tbaa !1
  %conv = sext i32 %22 to i64
  %cmp14 = icmp sgt i64 %conv, 256
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %k, align 4, !tbaa !1
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %k, align 4, !tbaa !1
  %24 = load i32, i32* %m, align 4, !tbaa !1
  %shr16 = ashr i32 %24, 1
  store i32 %shr16, i32* %m, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  br label %if.end.103

if.else:                                          ; preds = %if.end.10
  %26 = bitcast i32* %x12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p1 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %27, i32 0, i32 5
  %x17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  %28 = load i32, i32* %x17, align 4, !tbaa !12
  %29 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p2 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %29, i32 0, i32 6
  %x18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 0
  %30 = load i32, i32* %x18, align 4, !tbaa !13
  %sub19 = sub nsw i32 %28, %30
  store i32 %sub19, i32* %x12, align 4, !tbaa !1
  %31 = bitcast i32* %y12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p120 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %32, i32 0, i32 5
  %y21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p120, i32 0, i32 1
  %33 = load i32, i32* %y21, align 4, !tbaa !14
  %34 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p222 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %34, i32 0, i32 6
  %y23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p222, i32 0, i32 1
  %35 = load i32, i32* %y23, align 4, !tbaa !15
  %sub24 = sub nsw i32 %33, %35
  store i32 %sub24, i32* %y12, align 4, !tbaa !1
  %36 = bitcast i32* %dx0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load i32, i32* %x0.addr, align 4, !tbaa !1
  %38 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p125 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %38, i32 0, i32 5
  %x26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p125, i32 0, i32 0
  %39 = load i32, i32* %x26, align 4, !tbaa !12
  %sub27 = sub nsw i32 %37, %39
  %40 = load i32, i32* %x12, align 4, !tbaa !1
  %sub28 = sub nsw i32 %sub27, %40
  store i32 %sub28, i32* %dx0, align 4, !tbaa !1
  %41 = bitcast i32* %dy0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = load i32, i32* %y0.addr, align 4, !tbaa !1
  %43 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p129 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %43, i32 0, i32 5
  %y30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p129, i32 0, i32 1
  %44 = load i32, i32* %y30, align 4, !tbaa !14
  %sub31 = sub nsw i32 %42, %44
  %45 = load i32, i32* %y12, align 4, !tbaa !1
  %sub32 = sub nsw i32 %sub31, %45
  store i32 %sub32, i32* %dy0, align 4, !tbaa !1
  %46 = bitcast i32* %dx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load i32, i32* %x12, align 4, !tbaa !1
  %48 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p233 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %48, i32 0, i32 6
  %x34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p233, i32 0, i32 0
  %49 = load i32, i32* %x34, align 4, !tbaa !13
  %sub35 = sub nsw i32 %47, %49
  %50 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %pt36 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %50, i32 0, i32 4
  %x37 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt36, i32 0, i32 0
  %51 = load i32, i32* %x37, align 4, !tbaa !7
  %add = add nsw i32 %sub35, %51
  store i32 %add, i32* %dx1, align 4, !tbaa !1
  %52 = bitcast i32* %dy1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  %53 = load i32, i32* %y12, align 4, !tbaa !1
  %54 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p238 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %54, i32 0, i32 6
  %y39 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p238, i32 0, i32 1
  %55 = load i32, i32* %y39, align 4, !tbaa !15
  %sub40 = sub nsw i32 %53, %55
  %56 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %pt41 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %56, i32 0, i32 4
  %y42 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt41, i32 0, i32 1
  %57 = load i32, i32* %y42, align 4, !tbaa !11
  %add43 = add nsw i32 %sub40, %57
  store i32 %add43, i32* %dy1, align 4, !tbaa !1
  %58 = bitcast i32* %adx0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = load i32, i32* %dx0, align 4, !tbaa !1
  %cmp44 = icmp slt i32 %59, 0
  br i1 %cmp44, label %cond.true.46, label %cond.false.48

cond.true.46:                                     ; preds = %if.else
  %60 = load i32, i32* %dx0, align 4, !tbaa !1
  %sub47 = sub nsw i32 0, %60
  br label %cond.end.49

cond.false.48:                                    ; preds = %if.else
  %61 = load i32, i32* %dx0, align 4, !tbaa !1
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.48, %cond.true.46
  %cond50 = phi i32 [ %sub47, %cond.true.46 ], [ %61, %cond.false.48 ]
  store i32 %cond50, i32* %adx0, align 4, !tbaa !1
  %62 = bitcast i32* %ady0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  %63 = load i32, i32* %dy0, align 4, !tbaa !1
  %cmp51 = icmp slt i32 %63, 0
  br i1 %cmp51, label %cond.true.53, label %cond.false.55

cond.true.53:                                     ; preds = %cond.end.49
  %64 = load i32, i32* %dy0, align 4, !tbaa !1
  %sub54 = sub nsw i32 0, %64
  br label %cond.end.56

cond.false.55:                                    ; preds = %cond.end.49
  %65 = load i32, i32* %dy0, align 4, !tbaa !1
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.55, %cond.true.53
  %cond57 = phi i32 [ %sub54, %cond.true.53 ], [ %65, %cond.false.55 ]
  store i32 %cond57, i32* %ady0, align 4, !tbaa !1
  %66 = bitcast i32* %adx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #1
  %67 = load i32, i32* %dx1, align 4, !tbaa !1
  %cmp58 = icmp slt i32 %67, 0
  br i1 %cmp58, label %cond.true.60, label %cond.false.62

cond.true.60:                                     ; preds = %cond.end.56
  %68 = load i32, i32* %dx1, align 4, !tbaa !1
  %sub61 = sub nsw i32 0, %68
  br label %cond.end.63

cond.false.62:                                    ; preds = %cond.end.56
  %69 = load i32, i32* %dx1, align 4, !tbaa !1
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.62, %cond.true.60
  %cond64 = phi i32 [ %sub61, %cond.true.60 ], [ %69, %cond.false.62 ]
  store i32 %cond64, i32* %adx1, align 4, !tbaa !1
  %70 = bitcast i32* %ady1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  %71 = load i32, i32* %dy1, align 4, !tbaa !1
  %cmp65 = icmp slt i32 %71, 0
  br i1 %cmp65, label %cond.true.67, label %cond.false.69

cond.true.67:                                     ; preds = %cond.end.63
  %72 = load i32, i32* %dy1, align 4, !tbaa !1
  %sub68 = sub nsw i32 0, %72
  br label %cond.end.70

cond.false.69:                                    ; preds = %cond.end.63
  %73 = load i32, i32* %dy1, align 4, !tbaa !1
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.69, %cond.true.67
  %cond71 = phi i32 [ %sub68, %cond.true.67 ], [ %73, %cond.false.69 ]
  store i32 %cond71, i32* %ady1, align 4, !tbaa !1
  %74 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #1
  %75 = load i32, i32* %adx0, align 4, !tbaa !1
  %76 = load i32, i32* %adx1, align 4, !tbaa !1
  %cmp72 = icmp sgt i32 %75, %76
  br i1 %cmp72, label %cond.true.74, label %cond.false.75

cond.true.74:                                     ; preds = %cond.end.70
  %77 = load i32, i32* %adx0, align 4, !tbaa !1
  br label %cond.end.76

cond.false.75:                                    ; preds = %cond.end.70
  %78 = load i32, i32* %adx1, align 4, !tbaa !1
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.75, %cond.true.74
  %cond77 = phi i32 [ %77, %cond.true.74 ], [ %78, %cond.false.75 ]
  %79 = load i32, i32* %ady0, align 4, !tbaa !1
  %80 = load i32, i32* %ady1, align 4, !tbaa !1
  %cmp78 = icmp sgt i32 %79, %80
  br i1 %cmp78, label %cond.true.80, label %cond.false.81

cond.true.80:                                     ; preds = %cond.end.76
  %81 = load i32, i32* %ady0, align 4, !tbaa !1
  br label %cond.end.82

cond.false.81:                                    ; preds = %cond.end.76
  %82 = load i32, i32* %ady1, align 4, !tbaa !1
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.81, %cond.true.80
  %cond83 = phi i32 [ %81, %cond.true.80 ], [ %82, %cond.false.81 ]
  %add84 = add nsw i32 %cond77, %cond83
  store i32 %add84, i32* %d, align 4, !tbaa !1
  %83 = bitcast i32* %qtmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  %84 = load i32, i32* %d, align 4, !tbaa !1
  %85 = load i32, i32* %d, align 4, !tbaa !1
  %shr85 = ashr i32 %85, 2
  %sub86 = sub nsw i32 %84, %shr85
  %86 = load i32, i32* %fixed_flat.addr, align 4, !tbaa !1
  %add87 = add nsw i32 %sub86, %86
  %sub88 = sub nsw i32 %add87, 1
  store i32 %sub88, i32* %qtmp, align 4, !tbaa !1
  %87 = bitcast i32* %q to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #1
  %88 = load i32, i32* %qtmp, align 4, !tbaa !1
  %89 = load i32, i32* %fixed_flat.addr, align 4, !tbaa !1
  %div = udiv i32 %88, %89
  store i32 %div, i32* %q, align 4, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %cond.end.82
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.89

do.body.89:                                       ; preds = %do.end
  br label %do.cond.90

do.cond.90:                                       ; preds = %do.body.89
  br label %do.end.91

do.end.91:                                        ; preds = %do.cond.90
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.body.95, %do.end.91
  %90 = load i32, i32* %q, align 4, !tbaa !1
  %cmp93 = icmp ugt i32 %90, 1
  br i1 %cmp93, label %for.body.95, label %for.end.99

for.body.95:                                      ; preds = %for.cond.92
  %91 = load i32, i32* %k, align 4, !tbaa !1
  %inc96 = add nsw i32 %91, 1
  store i32 %inc96, i32* %k, align 4, !tbaa !1
  %92 = load i32, i32* %q, align 4, !tbaa !1
  %add97 = add i32 %92, 3
  %shr98 = lshr i32 %add97, 2
  store i32 %shr98, i32* %q, align 4, !tbaa !1
  br label %for.cond.92

for.end.99:                                       ; preds = %for.cond.92
  br label %do.body.100

do.body.100:                                      ; preds = %for.end.99
  br label %do.cond.101

do.cond.101:                                      ; preds = %do.body.100
  br label %do.end.102

do.end.102:                                       ; preds = %do.cond.101
  %93 = bitcast i32* %q to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i32* %qtmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %ady1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32* %adx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i32* %ady0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i32* %adx0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %dy1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i32* %dx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i32* %dy0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %dx0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %y12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %x12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  br label %if.end.103

if.end.103:                                       ; preds = %do.end.102, %for.end
  %106 = load i32, i32* %k, align 4, !tbaa !1
  %107 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %y03 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %x03 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  ret i32 %106
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @curve_coeffs_ranged(i32 %x0, i32 %x1, i32 %x2, i32 %x3, i32 %y0, i32 %y1, i32 %y2, i32 %y3, i32* %ax, i32* %bx, i32* %cx, i32* %ay, i32* %by, i32* %cy, i32 %k) #0 {
entry:
  %retval = alloca i32, align 4
  %x0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %x3.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %y3.addr = alloca i32, align 4
  %ax.addr = alloca i32*, align 8
  %bx.addr = alloca i32*, align 8
  %cx.addr = alloca i32*, align 8
  %ay.addr = alloca i32*, align 8
  %by.addr = alloca i32*, align 8
  %cy.addr = alloca i32*, align 8
  %k.addr = alloca i32, align 4
  %x01 = alloca i32, align 4
  %x12 = alloca i32, align 4
  %y01 = alloca i32, align 4
  %y12 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !1
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !1
  store i32 %x2, i32* %x2.addr, align 4, !tbaa !1
  store i32 %x3, i32* %x3.addr, align 4, !tbaa !1
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !1
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !1
  store i32 %y2, i32* %y2.addr, align 4, !tbaa !1
  store i32 %y3, i32* %y3.addr, align 4, !tbaa !1
  store i32* %ax, i32** %ax.addr, align 8, !tbaa !5
  store i32* %bx, i32** %bx.addr, align 8, !tbaa !5
  store i32* %cx, i32** %cx.addr, align 8, !tbaa !5
  store i32* %ay, i32** %ay.addr, align 8, !tbaa !5
  store i32* %by, i32** %by.addr, align 8, !tbaa !5
  store i32* %cy, i32** %cy.addr, align 8, !tbaa !5
  store i32 %k, i32* %k.addr, align 4, !tbaa !1
  %0 = bitcast i32* %x01 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %x12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %y01 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %y12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %x1.addr, align 4, !tbaa !1
  %5 = load i32, i32* %x0.addr, align 4, !tbaa !1
  %sub = sub nsw i32 %4, %5
  store i32 %sub, i32* %x01, align 4, !tbaa !1
  %6 = load i32, i32* %x01, align 4, !tbaa !1
  %shl = shl i32 %6, 1
  %7 = load i32, i32* %x01, align 4, !tbaa !1
  %add = add nsw i32 %shl, %7
  %8 = load i32*, i32** %cx.addr, align 8, !tbaa !5
  store i32 %add, i32* %8, align 4, !tbaa !1
  %9 = load i32, i32* %x2.addr, align 4, !tbaa !1
  %10 = load i32, i32* %x1.addr, align 4, !tbaa !1
  %sub1 = sub nsw i32 %9, %10
  store i32 %sub1, i32* %x12, align 4, !tbaa !1
  %11 = load i32, i32* %x12, align 4, !tbaa !1
  %shl2 = shl i32 %11, 1
  %12 = load i32, i32* %x12, align 4, !tbaa !1
  %add3 = add nsw i32 %shl2, %12
  %13 = load i32*, i32** %cx.addr, align 8, !tbaa !5
  %14 = load i32, i32* %13, align 4, !tbaa !1
  %sub4 = sub nsw i32 %add3, %14
  %15 = load i32*, i32** %bx.addr, align 8, !tbaa !5
  store i32 %sub4, i32* %15, align 4, !tbaa !1
  %16 = load i32, i32* %x3.addr, align 4, !tbaa !1
  %17 = load i32*, i32** %bx.addr, align 8, !tbaa !5
  %18 = load i32, i32* %17, align 4, !tbaa !1
  %sub5 = sub nsw i32 %16, %18
  %19 = load i32*, i32** %cx.addr, align 8, !tbaa !5
  %20 = load i32, i32* %19, align 4, !tbaa !1
  %sub6 = sub nsw i32 %sub5, %20
  %21 = load i32, i32* %x0.addr, align 4, !tbaa !1
  %sub7 = sub nsw i32 %sub6, %21
  %22 = load i32*, i32** %ax.addr, align 8, !tbaa !5
  store i32 %sub7, i32* %22, align 4, !tbaa !1
  %23 = load i32, i32* %y1.addr, align 4, !tbaa !1
  %24 = load i32, i32* %y0.addr, align 4, !tbaa !1
  %sub8 = sub nsw i32 %23, %24
  store i32 %sub8, i32* %y01, align 4, !tbaa !1
  %25 = load i32, i32* %y01, align 4, !tbaa !1
  %shl9 = shl i32 %25, 1
  %26 = load i32, i32* %y01, align 4, !tbaa !1
  %add10 = add nsw i32 %shl9, %26
  %27 = load i32*, i32** %cy.addr, align 8, !tbaa !5
  store i32 %add10, i32* %27, align 4, !tbaa !1
  %28 = load i32, i32* %y2.addr, align 4, !tbaa !1
  %29 = load i32, i32* %y1.addr, align 4, !tbaa !1
  %sub11 = sub nsw i32 %28, %29
  store i32 %sub11, i32* %y12, align 4, !tbaa !1
  %30 = load i32, i32* %y12, align 4, !tbaa !1
  %shl12 = shl i32 %30, 1
  %31 = load i32, i32* %y12, align 4, !tbaa !1
  %add13 = add nsw i32 %shl12, %31
  %32 = load i32*, i32** %cy.addr, align 8, !tbaa !5
  %33 = load i32, i32* %32, align 4, !tbaa !1
  %sub14 = sub nsw i32 %add13, %33
  %34 = load i32*, i32** %by.addr, align 8, !tbaa !5
  store i32 %sub14, i32* %34, align 4, !tbaa !1
  %35 = load i32, i32* %y3.addr, align 4, !tbaa !1
  %36 = load i32*, i32** %by.addr, align 8, !tbaa !5
  %37 = load i32, i32* %36, align 4, !tbaa !1
  %sub15 = sub nsw i32 %35, %37
  %38 = load i32*, i32** %cy.addr, align 8, !tbaa !5
  %39 = load i32, i32* %38, align 4, !tbaa !1
  %sub16 = sub nsw i32 %sub15, %39
  %40 = load i32, i32* %y0.addr, align 4, !tbaa !1
  %sub17 = sub nsw i32 %sub16, %40
  %41 = load i32*, i32** %ay.addr, align 8, !tbaa !5
  store i32 %sub17, i32* %41, align 4, !tbaa !1
  %42 = load i32, i32* %k.addr, align 4, !tbaa !1
  %cmp = icmp sgt i32 %42, 10
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %43 = load i32*, i32** %ax.addr, align 8, !tbaa !5
  %44 = load i32, i32* %43, align 4, !tbaa !1
  %cmp18 = icmp slt i32 %44, 357913941
  br i1 %cmp18, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %lor.lhs.false
  %45 = load i32*, i32** %ax.addr, align 8, !tbaa !5
  %46 = load i32, i32* %45, align 4, !tbaa !1
  %cmp19 = icmp sgt i32 %46, -357913941
  br i1 %cmp19, label %lor.lhs.false.20, label %if.then

lor.lhs.false.20:                                 ; preds = %land.lhs.true
  %47 = load i32*, i32** %ay.addr, align 8, !tbaa !5
  %48 = load i32, i32* %47, align 4, !tbaa !1
  %cmp21 = icmp slt i32 %48, 357913941
  br i1 %cmp21, label %land.lhs.true.22, label %if.then

land.lhs.true.22:                                 ; preds = %lor.lhs.false.20
  %49 = load i32*, i32** %ay.addr, align 8, !tbaa !5
  %50 = load i32, i32* %49, align 4, !tbaa !1
  %cmp23 = icmp sgt i32 %50, -357913941
  br i1 %cmp23, label %lor.lhs.false.24, label %if.then

lor.lhs.false.24:                                 ; preds = %land.lhs.true.22
  %51 = load i32*, i32** %bx.addr, align 8, !tbaa !5
  %52 = load i32, i32* %51, align 4, !tbaa !1
  %cmp25 = icmp slt i32 %52, 357913941
  br i1 %cmp25, label %land.lhs.true.26, label %if.then

land.lhs.true.26:                                 ; preds = %lor.lhs.false.24
  %53 = load i32*, i32** %bx.addr, align 8, !tbaa !5
  %54 = load i32, i32* %53, align 4, !tbaa !1
  %cmp27 = icmp sgt i32 %54, -357913941
  br i1 %cmp27, label %lor.lhs.false.28, label %if.then

lor.lhs.false.28:                                 ; preds = %land.lhs.true.26
  %55 = load i32*, i32** %by.addr, align 8, !tbaa !5
  %56 = load i32, i32* %55, align 4, !tbaa !1
  %cmp29 = icmp slt i32 %56, 357913941
  br i1 %cmp29, label %land.lhs.true.30, label %if.then

land.lhs.true.30:                                 ; preds = %lor.lhs.false.28
  %57 = load i32*, i32** %by.addr, align 8, !tbaa !5
  %58 = load i32, i32* %57, align 4, !tbaa !1
  %cmp31 = icmp sgt i32 %58, -357913941
  br i1 %cmp31, label %lor.lhs.false.32, label %if.then

lor.lhs.false.32:                                 ; preds = %land.lhs.true.30
  %59 = load i32*, i32** %cx.addr, align 8, !tbaa !5
  %60 = load i32, i32* %59, align 4, !tbaa !1
  %cmp33 = icmp slt i32 %60, 357913941
  br i1 %cmp33, label %land.lhs.true.34, label %if.then

land.lhs.true.34:                                 ; preds = %lor.lhs.false.32
  %61 = load i32*, i32** %cx.addr, align 8, !tbaa !5
  %62 = load i32, i32* %61, align 4, !tbaa !1
  %cmp35 = icmp sgt i32 %62, -357913941
  br i1 %cmp35, label %lor.lhs.false.36, label %if.then

lor.lhs.false.36:                                 ; preds = %land.lhs.true.34
  %63 = load i32*, i32** %cy.addr, align 8, !tbaa !5
  %64 = load i32, i32* %63, align 4, !tbaa !1
  %cmp37 = icmp slt i32 %64, 357913941
  br i1 %cmp37, label %land.lhs.true.38, label %if.then

land.lhs.true.38:                                 ; preds = %lor.lhs.false.36
  %65 = load i32*, i32** %cy.addr, align 8, !tbaa !5
  %66 = load i32, i32* %65, align 4, !tbaa !1
  %cmp39 = icmp sgt i32 %66, -357913941
  br i1 %cmp39, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.38, %lor.lhs.false.36, %land.lhs.true.34, %lor.lhs.false.32, %land.lhs.true.30, %lor.lhs.false.28, %land.lhs.true.26, %lor.lhs.false.24, %land.lhs.true.22, %lor.lhs.false.20, %land.lhs.true, %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.38
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %67 = bitcast i32* %y12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %y01 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %x12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i32* %x01 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = load i32, i32* %retval
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define i32 @gx_flattened_iterator__init(%struct.gx_flattened_iterator_s* %self, i32 %x0, i32 %y0, %struct.curve_segment* %pc, i32 %k) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.gx_flattened_iterator_s*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %pc.addr = alloca %struct.curve_segment*, align 8
  %k.addr = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %k2 = alloca i32, align 4
  %k3 = alloca i32, align 4
  %bx2 = alloca i32, align 4
  %by2 = alloca i32, align 4
  %ax6 = alloca i32, align 4
  %ay6 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_flattened_iterator_s* %self, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !1
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !1
  store %struct.curve_segment* %pc, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  store i32 %k, i32* %k.addr, align 4, !tbaa !1
  %0 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %x2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %y2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %k2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %k.addr, align 4, !tbaa !1
  %shl = shl i32 %5, 1
  store i32 %shl, i32* %k2, align 4, !tbaa !1
  %6 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %k2, align 4, !tbaa !1
  %8 = load i32, i32* %k.addr, align 4, !tbaa !1
  %add = add nsw i32 %7, %8
  store i32 %add, i32* %k3, align 4, !tbaa !1
  %9 = bitcast i32* %bx2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %by2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %ax6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %ay6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p1 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %13, i32 0, i32 5
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  %14 = load i32, i32* %x, align 4, !tbaa !12
  store i32 %14, i32* %x1, align 4, !tbaa !1
  %15 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p11 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %15, i32 0, i32 5
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p11, i32 0, i32 1
  %16 = load i32, i32* %y, align 4, !tbaa !14
  store i32 %16, i32* %y1, align 4, !tbaa !1
  %17 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p2 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %17, i32 0, i32 6
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 0
  %18 = load i32, i32* %x3, align 4, !tbaa !13
  store i32 %18, i32* %x2, align 4, !tbaa !1
  %19 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p24 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %19, i32 0, i32 6
  %y5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p24, i32 0, i32 1
  %20 = load i32, i32* %y5, align 4, !tbaa !15
  store i32 %20, i32* %y2, align 4, !tbaa !1
  %21 = load i32, i32* %x0.addr, align 4, !tbaa !1
  %22 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %lx1 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %22, i32 0, i32 32
  store i32 %21, i32* %lx1, align 4, !tbaa !16
  %23 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %lx0 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %23, i32 0, i32 30
  store i32 %21, i32* %lx0, align 4, !tbaa !18
  %24 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %x06 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %24, i32 0, i32 0
  store i32 %21, i32* %x06, align 4, !tbaa !19
  %25 = load i32, i32* %y0.addr, align 4, !tbaa !1
  %26 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ly1 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %26, i32 0, i32 33
  store i32 %25, i32* %ly1, align 4, !tbaa !20
  %27 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ly0 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %27, i32 0, i32 31
  store i32 %25, i32* %ly0, align 4, !tbaa !21
  %28 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %y07 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %28, i32 0, i32 1
  store i32 %25, i32* %y07, align 4, !tbaa !22
  %29 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %pt = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %29, i32 0, i32 4
  %x8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %30 = load i32, i32* %x8, align 4, !tbaa !7
  %31 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %x39 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %31, i32 0, i32 2
  store i32 %30, i32* %x39, align 4, !tbaa !23
  %32 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %pt10 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %32, i32 0, i32 4
  %y11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt10, i32 0, i32 1
  %33 = load i32, i32* %y11, align 4, !tbaa !11
  %34 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %y3 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %34, i32 0, i32 3
  store i32 %33, i32* %y3, align 4, !tbaa !24
  %35 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %x012 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %35, i32 0, i32 0
  %36 = load i32, i32* %x012, align 4, !tbaa !19
  %37 = load i32, i32* %x1, align 4, !tbaa !1
  %38 = load i32, i32* %x2, align 4, !tbaa !1
  %39 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %x313 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %39, i32 0, i32 2
  %40 = load i32, i32* %x313, align 4, !tbaa !23
  %41 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %y014 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %41, i32 0, i32 1
  %42 = load i32, i32* %y014, align 4, !tbaa !22
  %43 = load i32, i32* %y1, align 4, !tbaa !1
  %44 = load i32, i32* %y2, align 4, !tbaa !1
  %45 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %y315 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %45, i32 0, i32 3
  %46 = load i32, i32* %y315, align 4, !tbaa !24
  %47 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ax = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %47, i32 0, i32 6
  %48 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %bx = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %48, i32 0, i32 5
  %49 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %cx = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %49, i32 0, i32 4
  %50 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ay = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %50, i32 0, i32 9
  %51 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %by = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %51, i32 0, i32 8
  %52 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %cy = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %52, i32 0, i32 7
  %53 = load i32, i32* %k.addr, align 4, !tbaa !1
  %call = call i32 @curve_coeffs_ranged(i32 %36, i32 %37, i32 %38, i32 %40, i32 %42, i32 %43, i32 %44, i32 %46, i32* %ax, i32* %bx, i32* %cx, i32* %ay, i32* %by, i32* %cy, i32 %53) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %54 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %curve = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %54, i32 0, i32 29
  store i32 1, i32* %curve, align 4, !tbaa !25
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %55 = load i32, i32* %k.addr, align 4, !tbaa !1
  %56 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %k16 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %56, i32 0, i32 13
  store i32 %55, i32* %k16, align 4, !tbaa !26
  %57 = load i32, i32* %k.addr, align 4, !tbaa !1
  %cmp = icmp eq i32 %57, -1
  br i1 %cmp, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %do.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %do.end
  %58 = load i32, i32* %k3, align 4, !tbaa !1
  %shl19 = shl i32 1, %58
  %sub = sub nsw i32 %shl19, 1
  %59 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %59, i32 0, i32 14
  store i32 %sub, i32* %rmask, align 4, !tbaa !27
  %60 = load i32, i32* %k.addr, align 4, !tbaa !1
  %shl20 = shl i32 1, %60
  %61 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %i = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %61, i32 0, i32 12
  store i32 %shl20, i32* %i, align 4, !tbaa !28
  %62 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ry = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %62, i32 0, i32 22
  store i32 0, i32* %ry, align 4, !tbaa !29
  %63 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rx = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %63, i32 0, i32 21
  store i32 0, i32* %rx, align 4, !tbaa !30
  br label %do.body.21

do.body.21:                                       ; preds = %if.end.18
  br label %do.cond.22

do.cond.22:                                       ; preds = %do.body.21
  br label %do.end.23

do.end.23:                                        ; preds = %do.cond.22
  %64 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %bx24 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %64, i32 0, i32 5
  %65 = load i32, i32* %bx24, align 4, !tbaa !31
  %shl25 = shl i32 %65, 1
  store i32 %shl25, i32* %bx2, align 4, !tbaa !1
  %66 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %by26 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %66, i32 0, i32 8
  %67 = load i32, i32* %by26, align 4, !tbaa !32
  %shl27 = shl i32 %67, 1
  store i32 %shl27, i32* %by2, align 4, !tbaa !1
  %68 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ax28 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %68, i32 0, i32 6
  %69 = load i32, i32* %ax28, align 4, !tbaa !33
  %shl29 = shl i32 %69, 1
  %70 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ax30 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %70, i32 0, i32 6
  %71 = load i32, i32* %ax30, align 4, !tbaa !33
  %add31 = add nsw i32 %shl29, %71
  %shl32 = shl i32 %add31, 1
  store i32 %shl32, i32* %ax6, align 4, !tbaa !1
  %72 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ay33 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %72, i32 0, i32 9
  %73 = load i32, i32* %ay33, align 4, !tbaa !34
  %shl34 = shl i32 %73, 1
  %74 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ay35 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %74, i32 0, i32 9
  %75 = load i32, i32* %ay35, align 4, !tbaa !34
  %add36 = add nsw i32 %shl34, %75
  %shl37 = shl i32 %add36, 1
  store i32 %shl37, i32* %ay6, align 4, !tbaa !1
  %76 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %cx38 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %76, i32 0, i32 4
  %77 = load i32, i32* %cx38, align 4, !tbaa !35
  %78 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %k39 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %78, i32 0, i32 13
  %79 = load i32, i32* %k39, align 4, !tbaa !26
  %shr = ashr i32 %77, %79
  %80 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %idx = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %80, i32 0, i32 15
  store i32 %shr, i32* %idx, align 4, !tbaa !36
  %81 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %cy40 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %81, i32 0, i32 7
  %82 = load i32, i32* %cy40, align 4, !tbaa !37
  %83 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %k41 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %83, i32 0, i32 13
  %84 = load i32, i32* %k41, align 4, !tbaa !26
  %shr42 = ashr i32 %82, %84
  %85 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %idy = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %85, i32 0, i32 16
  store i32 %shr42, i32* %idy, align 4, !tbaa !38
  %86 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %cx43 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %86, i32 0, i32 4
  %87 = load i32, i32* %cx43, align 4, !tbaa !35
  %88 = load i32, i32* %k2, align 4, !tbaa !1
  %shl44 = shl i32 %87, %88
  %89 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask45 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %89, i32 0, i32 14
  %90 = load i32, i32* %rmask45, align 4, !tbaa !27
  %and = and i32 %shl44, %90
  %91 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdx = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %91, i32 0, i32 23
  store i32 %and, i32* %rdx, align 4, !tbaa !39
  %92 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %cy46 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %92, i32 0, i32 7
  %93 = load i32, i32* %cy46, align 4, !tbaa !37
  %94 = load i32, i32* %k2, align 4, !tbaa !1
  %shl47 = shl i32 %93, %94
  %95 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask48 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %95, i32 0, i32 14
  %96 = load i32, i32* %rmask48, align 4, !tbaa !27
  %and49 = and i32 %shl47, %96
  %97 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdy = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %97, i32 0, i32 24
  store i32 %and49, i32* %rdy, align 4, !tbaa !40
  %98 = load i32, i32* %bx2, align 4, !tbaa !1
  %99 = load i32, i32* %k2, align 4, !tbaa !1
  %shr50 = ashr i32 %98, %99
  %100 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id2x = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %100, i32 0, i32 17
  store i32 %shr50, i32* %id2x, align 4, !tbaa !41
  %101 = load i32, i32* %by2, align 4, !tbaa !1
  %102 = load i32, i32* %k2, align 4, !tbaa !1
  %shr51 = ashr i32 %101, %102
  %103 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id2y = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %103, i32 0, i32 18
  store i32 %shr51, i32* %id2y, align 4, !tbaa !42
  %104 = load i32, i32* %bx2, align 4, !tbaa !1
  %105 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %k52 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %105, i32 0, i32 13
  %106 = load i32, i32* %k52, align 4, !tbaa !26
  %shl53 = shl i32 %104, %106
  %107 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask54 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %107, i32 0, i32 14
  %108 = load i32, i32* %rmask54, align 4, !tbaa !27
  %and55 = and i32 %shl53, %108
  %109 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd2x = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %109, i32 0, i32 25
  store i32 %and55, i32* %rd2x, align 4, !tbaa !43
  %110 = load i32, i32* %by2, align 4, !tbaa !1
  %111 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %k56 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %111, i32 0, i32 13
  %112 = load i32, i32* %k56, align 4, !tbaa !26
  %shl57 = shl i32 %110, %112
  %113 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask58 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %113, i32 0, i32 14
  %114 = load i32, i32* %rmask58, align 4, !tbaa !27
  %and59 = and i32 %shl57, %114
  %115 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd2y = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %115, i32 0, i32 26
  store i32 %and59, i32* %rd2y, align 4, !tbaa !44
  %116 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id2x60 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %116, i32 0, i32 17
  %117 = load i32, i32* %id2x60, align 4, !tbaa !41
  %shr61 = ashr i32 %117, 1
  %118 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %idx62 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %118, i32 0, i32 15
  %119 = load i32, i32* %idx62, align 4, !tbaa !36
  %add63 = add nsw i32 %119, %shr61
  store i32 %add63, i32* %idx62, align 4, !tbaa !36
  %120 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id2y64 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %120, i32 0, i32 18
  %121 = load i32, i32* %id2y64, align 4, !tbaa !42
  %shr65 = ashr i32 %121, 1
  %122 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %idy66 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %122, i32 0, i32 16
  %123 = load i32, i32* %idy66, align 4, !tbaa !38
  %add67 = add nsw i32 %123, %shr65
  store i32 %add67, i32* %idy66, align 4, !tbaa !38
  %124 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %bx68 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %124, i32 0, i32 5
  %125 = load i32, i32* %bx68, align 4, !tbaa !31
  %126 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %k69 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %126, i32 0, i32 13
  %127 = load i32, i32* %k69, align 4, !tbaa !26
  %shl70 = shl i32 %125, %127
  %128 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask71 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %128, i32 0, i32 14
  %129 = load i32, i32* %rmask71, align 4, !tbaa !27
  %and72 = and i32 %shl70, %129
  %130 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdx73 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %130, i32 0, i32 23
  %131 = load i32, i32* %rdx73, align 4, !tbaa !39
  %add74 = add i32 %131, %and72
  store i32 %add74, i32* %rdx73, align 4, !tbaa !39
  %132 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %by75 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %132, i32 0, i32 8
  %133 = load i32, i32* %by75, align 4, !tbaa !32
  %134 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %k76 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %134, i32 0, i32 13
  %135 = load i32, i32* %k76, align 4, !tbaa !26
  %shl77 = shl i32 %133, %135
  %136 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask78 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %136, i32 0, i32 14
  %137 = load i32, i32* %rmask78, align 4, !tbaa !27
  %and79 = and i32 %shl77, %137
  %138 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdy80 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %138, i32 0, i32 24
  %139 = load i32, i32* %rdy80, align 4, !tbaa !40
  %add81 = add i32 %139, %and79
  store i32 %add81, i32* %rdy80, align 4, !tbaa !40
  %140 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdx82 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %140, i32 0, i32 23
  %141 = load i32, i32* %rdx82, align 4, !tbaa !39
  %142 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask83 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %142, i32 0, i32 14
  %143 = load i32, i32* %rmask83, align 4, !tbaa !27
  %cmp84 = icmp ugt i32 %141, %143
  br i1 %cmp84, label %if.then.85, label %if.end.90

if.then.85:                                       ; preds = %do.end.23
  %144 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %idx86 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %144, i32 0, i32 15
  %145 = load i32, i32* %idx86, align 4, !tbaa !36
  %inc = add nsw i32 %145, 1
  store i32 %inc, i32* %idx86, align 4, !tbaa !36
  %146 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask87 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %146, i32 0, i32 14
  %147 = load i32, i32* %rmask87, align 4, !tbaa !27
  %148 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdx88 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %148, i32 0, i32 23
  %149 = load i32, i32* %rdx88, align 4, !tbaa !39
  %and89 = and i32 %149, %147
  store i32 %and89, i32* %rdx88, align 4, !tbaa !39
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.85, %do.end.23
  %150 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdy91 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %150, i32 0, i32 24
  %151 = load i32, i32* %rdy91, align 4, !tbaa !40
  %152 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask92 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %152, i32 0, i32 14
  %153 = load i32, i32* %rmask92, align 4, !tbaa !27
  %cmp93 = icmp ugt i32 %151, %153
  br i1 %cmp93, label %if.then.94, label %if.end.100

if.then.94:                                       ; preds = %if.end.90
  %154 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %idy95 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %154, i32 0, i32 16
  %155 = load i32, i32* %idy95, align 4, !tbaa !38
  %inc96 = add nsw i32 %155, 1
  store i32 %inc96, i32* %idy95, align 4, !tbaa !38
  %156 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask97 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %156, i32 0, i32 14
  %157 = load i32, i32* %rmask97, align 4, !tbaa !27
  %158 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdy98 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %158, i32 0, i32 24
  %159 = load i32, i32* %rdy98, align 4, !tbaa !40
  %and99 = and i32 %159, %157
  store i32 %and99, i32* %rdy98, align 4, !tbaa !40
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.94, %if.end.90
  %160 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ax101 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %160, i32 0, i32 6
  %161 = load i32, i32* %ax101, align 4, !tbaa !33
  %162 = load i32, i32* %k3, align 4, !tbaa !1
  %shr102 = ashr i32 %161, %162
  %163 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %idx103 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %163, i32 0, i32 15
  %164 = load i32, i32* %idx103, align 4, !tbaa !36
  %add104 = add nsw i32 %164, %shr102
  store i32 %add104, i32* %idx103, align 4, !tbaa !36
  %165 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ay105 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %165, i32 0, i32 9
  %166 = load i32, i32* %ay105, align 4, !tbaa !34
  %167 = load i32, i32* %k3, align 4, !tbaa !1
  %shr106 = ashr i32 %166, %167
  %168 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %idy107 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %168, i32 0, i32 16
  %169 = load i32, i32* %idy107, align 4, !tbaa !38
  %add108 = add nsw i32 %169, %shr106
  store i32 %add108, i32* %idy107, align 4, !tbaa !38
  %170 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ax109 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %170, i32 0, i32 6
  %171 = load i32, i32* %ax109, align 4, !tbaa !33
  %172 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask110 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %172, i32 0, i32 14
  %173 = load i32, i32* %rmask110, align 4, !tbaa !27
  %and111 = and i32 %171, %173
  %174 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdx112 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %174, i32 0, i32 23
  %175 = load i32, i32* %rdx112, align 4, !tbaa !39
  %add113 = add i32 %175, %and111
  store i32 %add113, i32* %rdx112, align 4, !tbaa !39
  %176 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ay114 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %176, i32 0, i32 9
  %177 = load i32, i32* %ay114, align 4, !tbaa !34
  %178 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask115 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %178, i32 0, i32 14
  %179 = load i32, i32* %rmask115, align 4, !tbaa !27
  %and116 = and i32 %177, %179
  %180 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdy117 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %180, i32 0, i32 24
  %181 = load i32, i32* %rdy117, align 4, !tbaa !40
  %add118 = add i32 %181, %and116
  store i32 %add118, i32* %rdy117, align 4, !tbaa !40
  %182 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdx119 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %182, i32 0, i32 23
  %183 = load i32, i32* %rdx119, align 4, !tbaa !39
  %184 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask120 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %184, i32 0, i32 14
  %185 = load i32, i32* %rmask120, align 4, !tbaa !27
  %cmp121 = icmp ugt i32 %183, %185
  br i1 %cmp121, label %if.then.122, label %if.end.128

if.then.122:                                      ; preds = %if.end.100
  %186 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %idx123 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %186, i32 0, i32 15
  %187 = load i32, i32* %idx123, align 4, !tbaa !36
  %inc124 = add nsw i32 %187, 1
  store i32 %inc124, i32* %idx123, align 4, !tbaa !36
  %188 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask125 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %188, i32 0, i32 14
  %189 = load i32, i32* %rmask125, align 4, !tbaa !27
  %190 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdx126 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %190, i32 0, i32 23
  %191 = load i32, i32* %rdx126, align 4, !tbaa !39
  %and127 = and i32 %191, %189
  store i32 %and127, i32* %rdx126, align 4, !tbaa !39
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.122, %if.end.100
  %192 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdy129 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %192, i32 0, i32 24
  %193 = load i32, i32* %rdy129, align 4, !tbaa !40
  %194 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask130 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %194, i32 0, i32 14
  %195 = load i32, i32* %rmask130, align 4, !tbaa !27
  %cmp131 = icmp ugt i32 %193, %195
  br i1 %cmp131, label %if.then.132, label %if.end.138

if.then.132:                                      ; preds = %if.end.128
  %196 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %idy133 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %196, i32 0, i32 16
  %197 = load i32, i32* %idy133, align 4, !tbaa !38
  %inc134 = add nsw i32 %197, 1
  store i32 %inc134, i32* %idy133, align 4, !tbaa !38
  %198 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask135 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %198, i32 0, i32 14
  %199 = load i32, i32* %rmask135, align 4, !tbaa !27
  %200 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdy136 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %200, i32 0, i32 24
  %201 = load i32, i32* %rdy136, align 4, !tbaa !40
  %and137 = and i32 %201, %199
  store i32 %and137, i32* %rdy136, align 4, !tbaa !40
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.132, %if.end.128
  %202 = load i32, i32* %ax6, align 4, !tbaa !1
  %203 = load i32, i32* %k3, align 4, !tbaa !1
  %shr139 = ashr i32 %202, %203
  %204 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id3x = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %204, i32 0, i32 19
  store i32 %shr139, i32* %id3x, align 4, !tbaa !45
  %205 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id2x140 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %205, i32 0, i32 17
  %206 = load i32, i32* %id2x140, align 4, !tbaa !41
  %add141 = add nsw i32 %206, %shr139
  store i32 %add141, i32* %id2x140, align 4, !tbaa !41
  %207 = load i32, i32* %ay6, align 4, !tbaa !1
  %208 = load i32, i32* %k3, align 4, !tbaa !1
  %shr142 = ashr i32 %207, %208
  %209 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id3y = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %209, i32 0, i32 20
  store i32 %shr142, i32* %id3y, align 4, !tbaa !46
  %210 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id2y143 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %210, i32 0, i32 18
  %211 = load i32, i32* %id2y143, align 4, !tbaa !42
  %add144 = add nsw i32 %211, %shr142
  store i32 %add144, i32* %id2y143, align 4, !tbaa !42
  %212 = load i32, i32* %ax6, align 4, !tbaa !1
  %213 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask145 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %213, i32 0, i32 14
  %214 = load i32, i32* %rmask145, align 4, !tbaa !27
  %and146 = and i32 %212, %214
  %215 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd3x = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %215, i32 0, i32 27
  store i32 %and146, i32* %rd3x, align 4, !tbaa !47
  %216 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd2x147 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %216, i32 0, i32 25
  %217 = load i32, i32* %rd2x147, align 4, !tbaa !43
  %add148 = add i32 %217, %and146
  store i32 %add148, i32* %rd2x147, align 4, !tbaa !43
  %218 = load i32, i32* %ay6, align 4, !tbaa !1
  %219 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask149 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %219, i32 0, i32 14
  %220 = load i32, i32* %rmask149, align 4, !tbaa !27
  %and150 = and i32 %218, %220
  %221 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd3y = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %221, i32 0, i32 28
  store i32 %and150, i32* %rd3y, align 4, !tbaa !48
  %222 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd2y151 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %222, i32 0, i32 26
  %223 = load i32, i32* %rd2y151, align 4, !tbaa !44
  %add152 = add i32 %223, %and150
  store i32 %add152, i32* %rd2y151, align 4, !tbaa !44
  %224 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd2x153 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %224, i32 0, i32 25
  %225 = load i32, i32* %rd2x153, align 4, !tbaa !43
  %226 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask154 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %226, i32 0, i32 14
  %227 = load i32, i32* %rmask154, align 4, !tbaa !27
  %cmp155 = icmp ugt i32 %225, %227
  br i1 %cmp155, label %if.then.156, label %if.end.162

if.then.156:                                      ; preds = %if.end.138
  %228 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id2x157 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %228, i32 0, i32 17
  %229 = load i32, i32* %id2x157, align 4, !tbaa !41
  %inc158 = add nsw i32 %229, 1
  store i32 %inc158, i32* %id2x157, align 4, !tbaa !41
  %230 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask159 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %230, i32 0, i32 14
  %231 = load i32, i32* %rmask159, align 4, !tbaa !27
  %232 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd2x160 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %232, i32 0, i32 25
  %233 = load i32, i32* %rd2x160, align 4, !tbaa !43
  %and161 = and i32 %233, %231
  store i32 %and161, i32* %rd2x160, align 4, !tbaa !43
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.156, %if.end.138
  %234 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd2y163 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %234, i32 0, i32 26
  %235 = load i32, i32* %rd2y163, align 4, !tbaa !44
  %236 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask164 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %236, i32 0, i32 14
  %237 = load i32, i32* %rmask164, align 4, !tbaa !27
  %cmp165 = icmp ugt i32 %235, %237
  br i1 %cmp165, label %if.then.166, label %if.end.172

if.then.166:                                      ; preds = %if.end.162
  %238 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id2y167 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %238, i32 0, i32 18
  %239 = load i32, i32* %id2y167, align 4, !tbaa !42
  %inc168 = add nsw i32 %239, 1
  store i32 %inc168, i32* %id2y167, align 4, !tbaa !42
  %240 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask169 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %240, i32 0, i32 14
  %241 = load i32, i32* %rmask169, align 4, !tbaa !27
  %242 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd2y170 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %242, i32 0, i32 26
  %243 = load i32, i32* %rd2y170, align 4, !tbaa !44
  %and171 = and i32 %243, %241
  store i32 %and171, i32* %rd2y170, align 4, !tbaa !44
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.166, %if.end.162
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.172, %if.then.17, %if.then
  %244 = bitcast i32* %ay6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #1
  %245 = bitcast i32* %ax6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %245) #1
  %246 = bitcast i32* %by2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %246) #1
  %247 = bitcast i32* %bx2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %247) #1
  %248 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %248) #1
  %249 = bitcast i32* %k2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %249) #1
  %250 = bitcast i32* %y2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %250) #1
  %251 = bitcast i32* %x2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %251) #1
  %252 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %252) #1
  %253 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %253) #1
  %254 = load i32, i32* %retval
  ret i32 %254
}

; Function Attrs: nounwind uwtable
define i32 @gx_check_fixed_diff_overflow(i32 %v0, i32 %v1) #0 {
entry:
  %v0.addr = alloca i32, align 4
  %v1.addr = alloca i32, align 4
  store i32 %v0, i32* %v0.addr, align 4, !tbaa !1
  store i32 %v1, i32* %v1.addr, align 4, !tbaa !1
  %0 = load i32, i32* %v0.addr, align 4, !tbaa !1
  %1 = load i32, i32* %v1.addr, align 4, !tbaa !1
  %call = call i32 @check_diff_overflow(i32 %0, i32 %1) #5
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @check_diff_overflow(i32 %v0, i32 %v1) #2 {
entry:
  %retval = alloca i32, align 4
  %v0.addr = alloca i32, align 4
  %v1.addr = alloca i32, align 4
  store i32 %v0, i32* %v0.addr, align 4, !tbaa !1
  store i32 %v1, i32* %v1.addr, align 4, !tbaa !1
  %0 = load i32, i32* %v0.addr, align 4, !tbaa !1
  %1 = load i32, i32* %v1.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %v1.addr, align 4, !tbaa !1
  %3 = load i32, i32* %v0.addr, align 4, !tbaa !1
  %sub = sub nsw i32 %2, %3
  %cmp1 = icmp slt i32 %sub, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.7

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %v0.addr, align 4, !tbaa !1
  %5 = load i32, i32* %v1.addr, align 4, !tbaa !1
  %sub3 = sub nsw i32 %4, %5
  %cmp4 = icmp slt i32 %sub3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.5, %if.then.2
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gx_check_fixed_sum_overflow(i32 %v0, i32 %v1) #0 {
entry:
  %v0.addr = alloca i32, align 4
  %v1.addr = alloca i32, align 4
  store i32 %v0, i32* %v0.addr, align 4, !tbaa !1
  store i32 %v1, i32* %v1.addr, align 4, !tbaa !1
  %0 = load i32, i32* %v0.addr, align 4, !tbaa !1
  %1 = load i32, i32* %v1.addr, align 4, !tbaa !1
  %sub = sub nsw i32 0, %1
  %call = call i32 @check_diff_overflow(i32 %0, i32 %sub) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_flattened_iterator__init_line(%struct.gx_flattened_iterator_s* %self, i32 %x0, i32 %y0, i32 %x1, i32 %y1) #0 {
entry:
  %self.addr = alloca %struct.gx_flattened_iterator_s*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %ox = alloca i32, align 4
  %oy = alloca i32, align 4
  store %struct.gx_flattened_iterator_s* %self, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !1
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !1
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !1
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !1
  %0 = bitcast i32* %ox to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %x0.addr, align 4, !tbaa !1
  %2 = load i32, i32* %x1.addr, align 4, !tbaa !1
  %call = call i32 @check_diff_overflow(i32 %1, i32 %2) #5
  store i32 %call, i32* %ox, align 4, !tbaa !1
  %3 = bitcast i32* %oy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %y0.addr, align 4, !tbaa !1
  %5 = load i32, i32* %y1.addr, align 4, !tbaa !1
  %call1 = call i32 @check_diff_overflow(i32 %4, i32 %5) #5
  store i32 %call1, i32* %oy, align 4, !tbaa !1
  %6 = load i32, i32* %x0.addr, align 4, !tbaa !1
  %7 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %lx1 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %7, i32 0, i32 32
  store i32 %6, i32* %lx1, align 4, !tbaa !16
  %8 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %lx0 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %8, i32 0, i32 30
  store i32 %6, i32* %lx0, align 4, !tbaa !18
  %9 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %x02 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %9, i32 0, i32 0
  store i32 %6, i32* %x02, align 4, !tbaa !19
  %10 = load i32, i32* %y0.addr, align 4, !tbaa !1
  %11 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ly1 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %11, i32 0, i32 33
  store i32 %10, i32* %ly1, align 4, !tbaa !20
  %12 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ly0 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %12, i32 0, i32 31
  store i32 %10, i32* %ly0, align 4, !tbaa !21
  %13 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %y03 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %13, i32 0, i32 1
  store i32 %10, i32* %y03, align 4, !tbaa !22
  %14 = load i32, i32* %x1.addr, align 4, !tbaa !1
  %15 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %x3 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %15, i32 0, i32 2
  store i32 %14, i32* %x3, align 4, !tbaa !23
  %16 = load i32, i32* %y1.addr, align 4, !tbaa !1
  %17 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %y3 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %17, i32 0, i32 3
  store i32 %16, i32* %y3, align 4, !tbaa !24
  %18 = load i32, i32* %ox, align 4, !tbaa !1
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %19 = load i32, i32* %oy, align 4, !tbaa !1
  %tobool4 = icmp ne i32 %19, 0
  br i1 %tobool4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %20 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %bx = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %20, i32 0, i32 5
  store i32 0, i32* %bx, align 4, !tbaa !31
  %21 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ax = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %21, i32 0, i32 6
  store i32 0, i32* %ax, align 4, !tbaa !33
  %22 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %by = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %22, i32 0, i32 8
  store i32 0, i32* %by, align 4, !tbaa !32
  %23 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ay = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %23, i32 0, i32 9
  store i32 0, i32* %ay, align 4, !tbaa !34
  %24 = load i32, i32* %ox, align 4, !tbaa !1
  %tobool5 = icmp ne i32 %24, 0
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %25 = load i32, i32* %x1.addr, align 4, !tbaa !1
  %shr = ashr i32 %25, 1
  %26 = load i32, i32* %x0.addr, align 4, !tbaa !1
  %shr6 = ashr i32 %26, 1
  %sub = sub nsw i32 %shr, %shr6
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %27 = load i32, i32* %x1.addr, align 4, !tbaa !1
  %28 = load i32, i32* %x0.addr, align 4, !tbaa !1
  %sub7 = sub nsw i32 %27, %28
  %shr8 = ashr i32 %sub7, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %shr8, %cond.false ]
  %add = add nsw i32 %cond, 1
  %shr9 = ashr i32 %add, 1
  %29 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %cx = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %29, i32 0, i32 4
  store i32 %shr9, i32* %cx, align 4, !tbaa !35
  %30 = load i32, i32* %oy, align 4, !tbaa !1
  %tobool10 = icmp ne i32 %30, 0
  br i1 %tobool10, label %cond.true.11, label %cond.false.15

cond.true.11:                                     ; preds = %cond.end
  %31 = load i32, i32* %y1.addr, align 4, !tbaa !1
  %shr12 = ashr i32 %31, 1
  %32 = load i32, i32* %y0.addr, align 4, !tbaa !1
  %shr13 = ashr i32 %32, 1
  %sub14 = sub nsw i32 %shr12, %shr13
  br label %cond.end.18

cond.false.15:                                    ; preds = %cond.end
  %33 = load i32, i32* %y1.addr, align 4, !tbaa !1
  %34 = load i32, i32* %y0.addr, align 4, !tbaa !1
  %sub16 = sub nsw i32 %33, %34
  %shr17 = ashr i32 %sub16, 1
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.15, %cond.true.11
  %cond19 = phi i32 [ %sub14, %cond.true.11 ], [ %shr17, %cond.false.15 ]
  %add20 = add nsw i32 %cond19, 1
  %shr21 = ashr i32 %add20, 1
  %35 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %cy = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %35, i32 0, i32 7
  store i32 %shr21, i32* %cy, align 4, !tbaa !37
  %36 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id3y = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %36, i32 0, i32 20
  store i32 0, i32* %id3y, align 4, !tbaa !46
  %37 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id3x = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %37, i32 0, i32 19
  store i32 0, i32* %id3x, align 4, !tbaa !45
  %38 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd3y = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %38, i32 0, i32 28
  store i32 0, i32* %rd3y, align 4, !tbaa !48
  %39 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd3x = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %39, i32 0, i32 27
  store i32 0, i32* %rd3x, align 4, !tbaa !47
  %40 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id2y = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %40, i32 0, i32 18
  store i32 0, i32* %id2y, align 4, !tbaa !42
  %41 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id2x = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %41, i32 0, i32 17
  store i32 0, i32* %id2x, align 4, !tbaa !41
  %42 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd2y = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %42, i32 0, i32 26
  store i32 0, i32* %rd2y, align 4, !tbaa !44
  %43 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd2x = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %43, i32 0, i32 25
  store i32 0, i32* %rd2x, align 4, !tbaa !43
  %44 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %cx22 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %44, i32 0, i32 4
  %45 = load i32, i32* %cx22, align 4, !tbaa !35
  %46 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %idx = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %46, i32 0, i32 15
  store i32 %45, i32* %idx, align 4, !tbaa !36
  %47 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %cy23 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %47, i32 0, i32 7
  %48 = load i32, i32* %cy23, align 4, !tbaa !37
  %49 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %idy = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %49, i32 0, i32 16
  store i32 %48, i32* %idy, align 4, !tbaa !38
  %50 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdy = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %50, i32 0, i32 24
  store i32 0, i32* %rdy, align 4, !tbaa !40
  %51 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdx = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %51, i32 0, i32 23
  store i32 0, i32* %rdx, align 4, !tbaa !39
  %52 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ry = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %52, i32 0, i32 22
  store i32 0, i32* %ry, align 4, !tbaa !29
  %53 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rx = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %53, i32 0, i32 21
  store i32 0, i32* %rx, align 4, !tbaa !30
  %54 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %54, i32 0, i32 14
  store i32 0, i32* %rmask, align 4, !tbaa !27
  %55 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %k = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %55, i32 0, i32 13
  store i32 2, i32* %k, align 4, !tbaa !26
  %56 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %i = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %56, i32 0, i32 12
  store i32 4, i32* %i, align 4, !tbaa !28
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %57 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %k24 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %57, i32 0, i32 13
  store i32 0, i32* %k24, align 4, !tbaa !26
  %58 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %i25 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %58, i32 0, i32 12
  store i32 1, i32* %i25, align 4, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.18
  %59 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %curve = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %59, i32 0, i32 29
  store i32 0, i32* %curve, align 4, !tbaa !25
  %60 = bitcast i32* %oy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %ox to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @gx_flattened_iterator__next(%struct.gx_flattened_iterator_s* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.gx_flattened_iterator_s*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_flattened_iterator_s* %self, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %lx1 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %1, i32 0, i32 32
  %2 = load i32, i32* %lx1, align 4, !tbaa !16
  store i32 %2, i32* %x, align 4, !tbaa !1
  %3 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ly1 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %4, i32 0, i32 33
  %5 = load i32, i32* %ly1, align 4, !tbaa !20
  store i32 %5, i32* %y, align 4, !tbaa !1
  %6 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %i = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %6, i32 0, i32 12
  %7 = load i32, i32* %i, align 4, !tbaa !28
  %cmp = icmp ule i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %lx11 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %8, i32 0, i32 32
  %9 = load i32, i32* %lx11, align 4, !tbaa !16
  %10 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %lx0 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %10, i32 0, i32 30
  store i32 %9, i32* %lx0, align 4, !tbaa !18
  %11 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ly12 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %11, i32 0, i32 33
  %12 = load i32, i32* %ly12, align 4, !tbaa !20
  %13 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ly0 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %13, i32 0, i32 31
  store i32 %12, i32* %ly0, align 4, !tbaa !21
  %14 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %k = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %14, i32 0, i32 13
  %15 = load i32, i32* %k, align 4, !tbaa !26
  %cmp3 = icmp ule i32 %15, 1
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %16 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %i5 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %16, i32 0, i32 12
  %17 = load i32, i32* %i5, align 4, !tbaa !28
  %dec = add i32 %17, -1
  store i32 %dec, i32* %i5, align 4, !tbaa !28
  %18 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %i6 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %18, i32 0, i32 12
  %19 = load i32, i32* %i6, align 4, !tbaa !28
  %cmp7 = icmp eq i32 %19, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.4
  br label %last

if.end.9:                                         ; preds = %if.then.4
  %20 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ax = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %20, i32 0, i32 6
  %21 = load i32, i32* %ax, align 4, !tbaa !33
  %shr = ashr i32 %21, 1
  %22 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %bx = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %22, i32 0, i32 5
  %23 = load i32, i32* %bx, align 4, !tbaa !31
  %add = add nsw i32 %shr, %23
  %shr10 = ashr i32 %add, 1
  %24 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %cx = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %24, i32 0, i32 4
  %25 = load i32, i32* %cx, align 4, !tbaa !35
  %add11 = add nsw i32 %shr10, %25
  %shr12 = ashr i32 %add11, 1
  %26 = load i32, i32* %x, align 4, !tbaa !1
  %add13 = add nsw i32 %26, %shr12
  store i32 %add13, i32* %x, align 4, !tbaa !1
  %27 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ay = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %27, i32 0, i32 9
  %28 = load i32, i32* %ay, align 4, !tbaa !34
  %shr14 = ashr i32 %28, 1
  %29 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %by = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %29, i32 0, i32 8
  %30 = load i32, i32* %by, align 4, !tbaa !32
  %add15 = add nsw i32 %shr14, %30
  %shr16 = ashr i32 %add15, 1
  %31 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %cy = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %31, i32 0, i32 7
  %32 = load i32, i32* %cy, align 4, !tbaa !37
  %add17 = add nsw i32 %shr16, %32
  %shr18 = ashr i32 %add17, 1
  %33 = load i32, i32* %y, align 4, !tbaa !1
  %add19 = add nsw i32 %33, %shr18
  store i32 %add19, i32* %y, align 4, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.end.9
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.20

do.body.20:                                       ; preds = %do.end
  br label %do.cond.21

do.cond.21:                                       ; preds = %do.body.20
  br label %do.end.22

do.end.22:                                        ; preds = %do.cond.21
  %34 = load i32, i32* %x, align 4, !tbaa !1
  %35 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %lx123 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %35, i32 0, i32 32
  store i32 %34, i32* %lx123, align 4, !tbaa !16
  %36 = load i32, i32* %y, align 4, !tbaa !1
  %37 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ly124 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %37, i32 0, i32 33
  store i32 %36, i32* %ly124, align 4, !tbaa !20
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.22
  br label %do.cond.26

do.cond.26:                                       ; preds = %do.body.25
  br label %do.end.27

do.end.27:                                        ; preds = %do.cond.26
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end
  %38 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %i28 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %38, i32 0, i32 12
  %39 = load i32, i32* %i28, align 4, !tbaa !28
  %dec29 = add i32 %39, -1
  store i32 %dec29, i32* %i28, align 4, !tbaa !28
  %40 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %i30 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %40, i32 0, i32 12
  %41 = load i32, i32* %i30, align 4, !tbaa !28
  %cmp31 = icmp eq i32 %41, 0
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.else
  br label %last

if.end.33:                                        ; preds = %if.else
  %42 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdx = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %42, i32 0, i32 23
  %43 = load i32, i32* %rdx, align 4, !tbaa !39
  %44 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rx = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %44, i32 0, i32 21
  %45 = load i32, i32* %rx, align 4, !tbaa !30
  %add34 = add i32 %45, %43
  store i32 %add34, i32* %rx, align 4, !tbaa !30
  %46 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %46, i32 0, i32 14
  %47 = load i32, i32* %rmask, align 4, !tbaa !27
  %cmp35 = icmp ugt i32 %add34, %47
  br i1 %cmp35, label %if.then.36, label %if.else.41

if.then.36:                                       ; preds = %if.end.33
  %48 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask37 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %48, i32 0, i32 14
  %49 = load i32, i32* %rmask37, align 4, !tbaa !27
  %50 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rx38 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %50, i32 0, i32 21
  %51 = load i32, i32* %rx38, align 4, !tbaa !30
  %and = and i32 %51, %49
  store i32 %and, i32* %rx38, align 4, !tbaa !30
  %52 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %idx = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %52, i32 0, i32 15
  %53 = load i32, i32* %idx, align 4, !tbaa !36
  %add39 = add nsw i32 %53, 1
  %54 = load i32, i32* %x, align 4, !tbaa !1
  %add40 = add nsw i32 %54, %add39
  store i32 %add40, i32* %x, align 4, !tbaa !1
  br label %if.end.44

if.else.41:                                       ; preds = %if.end.33
  %55 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %idx42 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %55, i32 0, i32 15
  %56 = load i32, i32* %idx42, align 4, !tbaa !36
  %57 = load i32, i32* %x, align 4, !tbaa !1
  %add43 = add nsw i32 %57, %56
  store i32 %add43, i32* %x, align 4, !tbaa !1
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.then.36
  %58 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdy = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %58, i32 0, i32 24
  %59 = load i32, i32* %rdy, align 4, !tbaa !40
  %60 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ry = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %60, i32 0, i32 22
  %61 = load i32, i32* %ry, align 4, !tbaa !29
  %add45 = add i32 %61, %59
  store i32 %add45, i32* %ry, align 4, !tbaa !29
  %62 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask46 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %62, i32 0, i32 14
  %63 = load i32, i32* %rmask46, align 4, !tbaa !27
  %cmp47 = icmp ugt i32 %add45, %63
  br i1 %cmp47, label %if.then.48, label %if.else.54

if.then.48:                                       ; preds = %if.end.44
  %64 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask49 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %64, i32 0, i32 14
  %65 = load i32, i32* %rmask49, align 4, !tbaa !27
  %66 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ry50 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %66, i32 0, i32 22
  %67 = load i32, i32* %ry50, align 4, !tbaa !29
  %and51 = and i32 %67, %65
  store i32 %and51, i32* %ry50, align 4, !tbaa !29
  %68 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %idy = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %68, i32 0, i32 16
  %69 = load i32, i32* %idy, align 4, !tbaa !38
  %add52 = add nsw i32 %69, 1
  %70 = load i32, i32* %y, align 4, !tbaa !1
  %add53 = add nsw i32 %70, %add52
  store i32 %add53, i32* %y, align 4, !tbaa !1
  br label %if.end.57

if.else.54:                                       ; preds = %if.end.44
  %71 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %idy55 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %71, i32 0, i32 16
  %72 = load i32, i32* %idy55, align 4, !tbaa !38
  %73 = load i32, i32* %y, align 4, !tbaa !1
  %add56 = add nsw i32 %73, %72
  store i32 %add56, i32* %y, align 4, !tbaa !1
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.48
  %74 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd2x = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %74, i32 0, i32 25
  %75 = load i32, i32* %rd2x, align 4, !tbaa !43
  %76 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdx58 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %76, i32 0, i32 23
  %77 = load i32, i32* %rdx58, align 4, !tbaa !39
  %add59 = add i32 %77, %75
  store i32 %add59, i32* %rdx58, align 4, !tbaa !39
  %78 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask60 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %78, i32 0, i32 14
  %79 = load i32, i32* %rmask60, align 4, !tbaa !27
  %cmp61 = icmp ugt i32 %add59, %79
  br i1 %cmp61, label %if.then.62, label %if.else.69

if.then.62:                                       ; preds = %if.end.57
  %80 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask63 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %80, i32 0, i32 14
  %81 = load i32, i32* %rmask63, align 4, !tbaa !27
  %82 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdx64 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %82, i32 0, i32 23
  %83 = load i32, i32* %rdx64, align 4, !tbaa !39
  %and65 = and i32 %83, %81
  store i32 %and65, i32* %rdx64, align 4, !tbaa !39
  %84 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id2x = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %84, i32 0, i32 17
  %85 = load i32, i32* %id2x, align 4, !tbaa !41
  %add66 = add nsw i32 %85, 1
  %86 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %idx67 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %86, i32 0, i32 15
  %87 = load i32, i32* %idx67, align 4, !tbaa !36
  %add68 = add nsw i32 %87, %add66
  store i32 %add68, i32* %idx67, align 4, !tbaa !36
  br label %if.end.73

if.else.69:                                       ; preds = %if.end.57
  %88 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id2x70 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %88, i32 0, i32 17
  %89 = load i32, i32* %id2x70, align 4, !tbaa !41
  %90 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %idx71 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %90, i32 0, i32 15
  %91 = load i32, i32* %idx71, align 4, !tbaa !36
  %add72 = add nsw i32 %91, %89
  store i32 %add72, i32* %idx71, align 4, !tbaa !36
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.69, %if.then.62
  %92 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd2y = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %92, i32 0, i32 26
  %93 = load i32, i32* %rd2y, align 4, !tbaa !44
  %94 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdy74 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %94, i32 0, i32 24
  %95 = load i32, i32* %rdy74, align 4, !tbaa !40
  %add75 = add i32 %95, %93
  store i32 %add75, i32* %rdy74, align 4, !tbaa !40
  %96 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask76 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %96, i32 0, i32 14
  %97 = load i32, i32* %rmask76, align 4, !tbaa !27
  %cmp77 = icmp ugt i32 %add75, %97
  br i1 %cmp77, label %if.then.78, label %if.else.85

if.then.78:                                       ; preds = %if.end.73
  %98 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask79 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %98, i32 0, i32 14
  %99 = load i32, i32* %rmask79, align 4, !tbaa !27
  %100 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdy80 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %100, i32 0, i32 24
  %101 = load i32, i32* %rdy80, align 4, !tbaa !40
  %and81 = and i32 %101, %99
  store i32 %and81, i32* %rdy80, align 4, !tbaa !40
  %102 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id2y = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %102, i32 0, i32 18
  %103 = load i32, i32* %id2y, align 4, !tbaa !42
  %add82 = add nsw i32 %103, 1
  %104 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %idy83 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %104, i32 0, i32 16
  %105 = load i32, i32* %idy83, align 4, !tbaa !38
  %add84 = add nsw i32 %105, %add82
  store i32 %add84, i32* %idy83, align 4, !tbaa !38
  br label %if.end.89

if.else.85:                                       ; preds = %if.end.73
  %106 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id2y86 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %106, i32 0, i32 18
  %107 = load i32, i32* %id2y86, align 4, !tbaa !42
  %108 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %idy87 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %108, i32 0, i32 16
  %109 = load i32, i32* %idy87, align 4, !tbaa !38
  %add88 = add nsw i32 %109, %107
  store i32 %add88, i32* %idy87, align 4, !tbaa !38
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.85, %if.then.78
  %110 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd3x = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %110, i32 0, i32 27
  %111 = load i32, i32* %rd3x, align 4, !tbaa !47
  %112 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd2x90 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %112, i32 0, i32 25
  %113 = load i32, i32* %rd2x90, align 4, !tbaa !43
  %add91 = add i32 %113, %111
  store i32 %add91, i32* %rd2x90, align 4, !tbaa !43
  %114 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask92 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %114, i32 0, i32 14
  %115 = load i32, i32* %rmask92, align 4, !tbaa !27
  %cmp93 = icmp ugt i32 %add91, %115
  br i1 %cmp93, label %if.then.94, label %if.else.101

if.then.94:                                       ; preds = %if.end.89
  %116 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask95 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %116, i32 0, i32 14
  %117 = load i32, i32* %rmask95, align 4, !tbaa !27
  %118 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd2x96 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %118, i32 0, i32 25
  %119 = load i32, i32* %rd2x96, align 4, !tbaa !43
  %and97 = and i32 %119, %117
  store i32 %and97, i32* %rd2x96, align 4, !tbaa !43
  %120 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id3x = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %120, i32 0, i32 19
  %121 = load i32, i32* %id3x, align 4, !tbaa !45
  %add98 = add nsw i32 %121, 1
  %122 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id2x99 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %122, i32 0, i32 17
  %123 = load i32, i32* %id2x99, align 4, !tbaa !41
  %add100 = add nsw i32 %123, %add98
  store i32 %add100, i32* %id2x99, align 4, !tbaa !41
  br label %if.end.105

if.else.101:                                      ; preds = %if.end.89
  %124 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id3x102 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %124, i32 0, i32 19
  %125 = load i32, i32* %id3x102, align 4, !tbaa !45
  %126 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id2x103 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %126, i32 0, i32 17
  %127 = load i32, i32* %id2x103, align 4, !tbaa !41
  %add104 = add nsw i32 %127, %125
  store i32 %add104, i32* %id2x103, align 4, !tbaa !41
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.101, %if.then.94
  %128 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd3y = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %128, i32 0, i32 28
  %129 = load i32, i32* %rd3y, align 4, !tbaa !48
  %130 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd2y106 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %130, i32 0, i32 26
  %131 = load i32, i32* %rd2y106, align 4, !tbaa !44
  %add107 = add i32 %131, %129
  store i32 %add107, i32* %rd2y106, align 4, !tbaa !44
  %132 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask108 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %132, i32 0, i32 14
  %133 = load i32, i32* %rmask108, align 4, !tbaa !27
  %cmp109 = icmp ugt i32 %add107, %133
  br i1 %cmp109, label %if.then.110, label %if.else.117

if.then.110:                                      ; preds = %if.end.105
  %134 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask111 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %134, i32 0, i32 14
  %135 = load i32, i32* %rmask111, align 4, !tbaa !27
  %136 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd2y112 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %136, i32 0, i32 26
  %137 = load i32, i32* %rd2y112, align 4, !tbaa !44
  %and113 = and i32 %137, %135
  store i32 %and113, i32* %rd2y112, align 4, !tbaa !44
  %138 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id3y = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %138, i32 0, i32 20
  %139 = load i32, i32* %id3y, align 4, !tbaa !46
  %add114 = add nsw i32 %139, 1
  %140 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id2y115 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %140, i32 0, i32 18
  %141 = load i32, i32* %id2y115, align 4, !tbaa !42
  %add116 = add nsw i32 %141, %add114
  store i32 %add116, i32* %id2y115, align 4, !tbaa !42
  br label %if.end.121

if.else.117:                                      ; preds = %if.end.105
  %142 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id3y118 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %142, i32 0, i32 20
  %143 = load i32, i32* %id3y118, align 4, !tbaa !46
  %144 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id2y119 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %144, i32 0, i32 18
  %145 = load i32, i32* %id2y119, align 4, !tbaa !42
  %add120 = add nsw i32 %145, %143
  store i32 %add120, i32* %id2y119, align 4, !tbaa !42
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.117, %if.then.110
  br label %do.body.122

do.body.122:                                      ; preds = %if.end.121
  br label %do.cond.123

do.cond.123:                                      ; preds = %do.body.122
  br label %do.end.124

do.end.124:                                       ; preds = %do.cond.123
  %146 = load i32, i32* %x, align 4, !tbaa !1
  %147 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %x125 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %147, i32 0, i32 10
  store i32 %146, i32* %x125, align 4, !tbaa !49
  %148 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %lx1126 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %148, i32 0, i32 32
  store i32 %146, i32* %lx1126, align 4, !tbaa !16
  %149 = load i32, i32* %y, align 4, !tbaa !1
  %150 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %y127 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %150, i32 0, i32 11
  store i32 %149, i32* %y127, align 4, !tbaa !50
  %151 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ly1128 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %151, i32 0, i32 33
  store i32 %149, i32* %ly1128, align 4, !tbaa !20
  br label %do.body.129

do.body.129:                                      ; preds = %do.end.124
  br label %do.cond.130

do.cond.130:                                      ; preds = %do.body.129
  br label %do.end.131

do.end.131:                                       ; preds = %do.cond.130
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

last:                                             ; preds = %if.then.32, %if.then.8
  %152 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %x3 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %152, i32 0, i32 2
  %153 = load i32, i32* %x3, align 4, !tbaa !23
  %154 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %lx1132 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %154, i32 0, i32 32
  store i32 %153, i32* %lx1132, align 4, !tbaa !16
  %155 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %y3 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %155, i32 0, i32 3
  %156 = load i32, i32* %y3, align 4, !tbaa !24
  %157 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ly1133 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %157, i32 0, i32 33
  store i32 %156, i32* %ly1133, align 4, !tbaa !20
  br label %do.body.134

do.body.134:                                      ; preds = %last
  br label %do.cond.135

do.cond.135:                                      ; preds = %do.body.134
  br label %do.end.136

do.end.136:                                       ; preds = %do.cond.135
  br label %do.body.137

do.body.137:                                      ; preds = %do.end.136
  br label %do.cond.138

do.cond.138:                                      ; preds = %do.body.137
  br label %do.end.139

do.end.139:                                       ; preds = %do.cond.138
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.139, %do.end.131, %do.end.27, %if.then
  %158 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %159 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #1
  %160 = load i32, i32* %retval
  ret i32 %160
}

; Function Attrs: nounwind uwtable
define i32 @gx_flattened_iterator__prev(%struct.gx_flattened_iterator_s* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.gx_flattened_iterator_s*, align 8
  %last = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_flattened_iterator_s* %self, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %0 = bitcast i32* %last to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %i = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %1, i32 0, i32 12
  %2 = load i32, i32* %i, align 4, !tbaa !28
  %3 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %k = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %3, i32 0, i32 13
  %4 = load i32, i32* %k, align 4, !tbaa !26
  %shl = shl i32 1, %4
  %cmp = icmp uge i32 %2, %shl
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %lx0 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %5, i32 0, i32 30
  %6 = load i32, i32* %lx0, align 4, !tbaa !18
  %7 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %lx1 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %7, i32 0, i32 32
  store i32 %6, i32* %lx1, align 4, !tbaa !16
  %8 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ly0 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %8, i32 0, i32 31
  %9 = load i32, i32* %ly0, align 4, !tbaa !21
  %10 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ly1 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %10, i32 0, i32 33
  store i32 %9, i32* %ly1, align 4, !tbaa !20
  %11 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %k1 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %11, i32 0, i32 13
  %12 = load i32, i32* %k1, align 4, !tbaa !26
  %cmp2 = icmp ule i32 %12, 1
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  %13 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %i4 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %13, i32 0, i32 12
  %14 = load i32, i32* %i4, align 4, !tbaa !28
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i4, align 4, !tbaa !28
  %15 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %x0 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %15, i32 0, i32 0
  %16 = load i32, i32* %x0, align 4, !tbaa !19
  %17 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %lx05 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %17, i32 0, i32 30
  store i32 %16, i32* %lx05, align 4, !tbaa !18
  %18 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %y0 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %18, i32 0, i32 1
  %19 = load i32, i32* %y0, align 4, !tbaa !22
  %20 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ly06 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %20, i32 0, i32 31
  store i32 %19, i32* %ly06, align 4, !tbaa !21
  br label %do.body

do.body:                                          ; preds = %if.then.3
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %21 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  call void @gx_flattened_iterator__unaccum(%struct.gx_flattened_iterator_s* %21) #5
  %22 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %i8 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %22, i32 0, i32 12
  %23 = load i32, i32* %i8, align 4, !tbaa !28
  %inc9 = add i32 %23, 1
  store i32 %inc9, i32* %i8, align 4, !tbaa !28
  %24 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %i10 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %24, i32 0, i32 12
  %25 = load i32, i32* %i10, align 4, !tbaa !28
  %26 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %k11 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %26, i32 0, i32 13
  %27 = load i32, i32* %k11, align 4, !tbaa !26
  %shl12 = shl i32 1, %27
  %sub = sub nsw i32 %shl12, 1
  %cmp13 = icmp eq i32 %25, %sub
  %conv = zext i1 %cmp13 to i32
  store i32 %conv, i32* %last, align 4, !tbaa !1
  %28 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %x = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %28, i32 0, i32 10
  %29 = load i32, i32* %x, align 4, !tbaa !49
  %30 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %lx014 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %30, i32 0, i32 30
  store i32 %29, i32* %lx014, align 4, !tbaa !18
  %31 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %y = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %31, i32 0, i32 11
  %32 = load i32, i32* %y, align 4, !tbaa !50
  %33 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ly015 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %33, i32 0, i32 31
  store i32 %32, i32* %ly015, align 4, !tbaa !21
  br label %do.body.16

do.body.16:                                       ; preds = %if.end.7
  br label %do.cond.17

do.cond.17:                                       ; preds = %do.body.16
  br label %do.end.18

do.end.18:                                        ; preds = %do.cond.17
  %34 = load i32, i32* %last, align 4, !tbaa !1
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %if.then.19, label %if.end.30

if.then.19:                                       ; preds = %do.end.18
  %35 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %lx020 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %35, i32 0, i32 30
  %36 = load i32, i32* %lx020, align 4, !tbaa !18
  %37 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %x021 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %37, i32 0, i32 0
  %38 = load i32, i32* %x021, align 4, !tbaa !19
  %cmp22 = icmp ne i32 %36, %38
  br i1 %cmp22, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.19
  %39 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ly024 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %39, i32 0, i32 31
  %40 = load i32, i32* %ly024, align 4, !tbaa !21
  %41 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %y025 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %41, i32 0, i32 1
  %42 = load i32, i32* %y025, align 4, !tbaa !22
  %cmp26 = icmp ne i32 %40, %42
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %lor.lhs.false, %if.then.19
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %lor.lhs.false
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %do.end.18
  %43 = load i32, i32* %last, align 4, !tbaa !1
  %tobool31 = icmp ne i32 %43, 0
  %lnot = xor i1 %tobool31, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.30, %if.then.28, %do.end, %if.then
  %44 = bitcast i32* %last to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @gx_flattened_iterator__unaccum(%struct.gx_flattened_iterator_s* %self) #2 {
entry:
  %self.addr = alloca %struct.gx_flattened_iterator_s*, align 8
  store %struct.gx_flattened_iterator_s* %self, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %0 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd2x = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %0, i32 0, i32 25
  %1 = load i32, i32* %rd2x, align 4, !tbaa !43
  %2 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd3x = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %2, i32 0, i32 27
  %3 = load i32, i32* %rd3x, align 4, !tbaa !47
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %4, i32 0, i32 14
  %5 = load i32, i32* %rmask, align 4, !tbaa !27
  %add = add i32 %5, 1
  %6 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd3x1 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %6, i32 0, i32 27
  %7 = load i32, i32* %rd3x1, align 4, !tbaa !47
  %sub = sub i32 %add, %7
  %8 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd2x2 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %8, i32 0, i32 25
  %9 = load i32, i32* %rd2x2, align 4, !tbaa !43
  %add3 = add i32 %9, %sub
  store i32 %add3, i32* %rd2x2, align 4, !tbaa !43
  %10 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id3x = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %10, i32 0, i32 19
  %11 = load i32, i32* %id3x, align 4, !tbaa !45
  %add4 = add nsw i32 %11, 1
  %12 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id2x = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %12, i32 0, i32 17
  %13 = load i32, i32* %id2x, align 4, !tbaa !41
  %sub5 = sub nsw i32 %13, %add4
  store i32 %sub5, i32* %id2x, align 4, !tbaa !41
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd3x6 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %14, i32 0, i32 27
  %15 = load i32, i32* %rd3x6, align 4, !tbaa !47
  %16 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd2x7 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %16, i32 0, i32 25
  %17 = load i32, i32* %rd2x7, align 4, !tbaa !43
  %sub8 = sub i32 %17, %15
  store i32 %sub8, i32* %rd2x7, align 4, !tbaa !43
  %18 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id3x9 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %18, i32 0, i32 19
  %19 = load i32, i32* %id3x9, align 4, !tbaa !45
  %20 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id2x10 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %20, i32 0, i32 17
  %21 = load i32, i32* %id2x10, align 4, !tbaa !41
  %sub11 = sub nsw i32 %21, %19
  store i32 %sub11, i32* %id2x10, align 4, !tbaa !41
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd2y = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %22, i32 0, i32 26
  %23 = load i32, i32* %rd2y, align 4, !tbaa !44
  %24 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd3y = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %24, i32 0, i32 28
  %25 = load i32, i32* %rd3y, align 4, !tbaa !48
  %cmp12 = icmp ult i32 %23, %25
  br i1 %cmp12, label %if.then.13, label %if.else.22

if.then.13:                                       ; preds = %if.end
  %26 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask14 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %26, i32 0, i32 14
  %27 = load i32, i32* %rmask14, align 4, !tbaa !27
  %add15 = add i32 %27, 1
  %28 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd3y16 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %28, i32 0, i32 28
  %29 = load i32, i32* %rd3y16, align 4, !tbaa !48
  %sub17 = sub i32 %add15, %29
  %30 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd2y18 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %30, i32 0, i32 26
  %31 = load i32, i32* %rd2y18, align 4, !tbaa !44
  %add19 = add i32 %31, %sub17
  store i32 %add19, i32* %rd2y18, align 4, !tbaa !44
  %32 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id3y = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %32, i32 0, i32 20
  %33 = load i32, i32* %id3y, align 4, !tbaa !46
  %add20 = add nsw i32 %33, 1
  %34 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id2y = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %34, i32 0, i32 18
  %35 = load i32, i32* %id2y, align 4, !tbaa !42
  %sub21 = sub nsw i32 %35, %add20
  store i32 %sub21, i32* %id2y, align 4, !tbaa !42
  br label %if.end.29

if.else.22:                                       ; preds = %if.end
  %36 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd3y23 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %36, i32 0, i32 28
  %37 = load i32, i32* %rd3y23, align 4, !tbaa !48
  %38 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd2y24 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %38, i32 0, i32 26
  %39 = load i32, i32* %rd2y24, align 4, !tbaa !44
  %sub25 = sub i32 %39, %37
  store i32 %sub25, i32* %rd2y24, align 4, !tbaa !44
  %40 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id3y26 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %40, i32 0, i32 20
  %41 = load i32, i32* %id3y26, align 4, !tbaa !46
  %42 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id2y27 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %42, i32 0, i32 18
  %43 = load i32, i32* %id2y27, align 4, !tbaa !42
  %sub28 = sub nsw i32 %43, %41
  store i32 %sub28, i32* %id2y27, align 4, !tbaa !42
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.22, %if.then.13
  %44 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdx = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %44, i32 0, i32 23
  %45 = load i32, i32* %rdx, align 4, !tbaa !39
  %46 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd2x30 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %46, i32 0, i32 25
  %47 = load i32, i32* %rd2x30, align 4, !tbaa !43
  %cmp31 = icmp ult i32 %45, %47
  br i1 %cmp31, label %if.then.32, label %if.else.42

if.then.32:                                       ; preds = %if.end.29
  %48 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask33 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %48, i32 0, i32 14
  %49 = load i32, i32* %rmask33, align 4, !tbaa !27
  %add34 = add i32 %49, 1
  %50 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd2x35 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %50, i32 0, i32 25
  %51 = load i32, i32* %rd2x35, align 4, !tbaa !43
  %sub36 = sub i32 %add34, %51
  %52 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdx37 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %52, i32 0, i32 23
  %53 = load i32, i32* %rdx37, align 4, !tbaa !39
  %add38 = add i32 %53, %sub36
  store i32 %add38, i32* %rdx37, align 4, !tbaa !39
  %54 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id2x39 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %54, i32 0, i32 17
  %55 = load i32, i32* %id2x39, align 4, !tbaa !41
  %add40 = add nsw i32 %55, 1
  %56 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %idx = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %56, i32 0, i32 15
  %57 = load i32, i32* %idx, align 4, !tbaa !36
  %sub41 = sub nsw i32 %57, %add40
  store i32 %sub41, i32* %idx, align 4, !tbaa !36
  br label %if.end.49

if.else.42:                                       ; preds = %if.end.29
  %58 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd2x43 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %58, i32 0, i32 25
  %59 = load i32, i32* %rd2x43, align 4, !tbaa !43
  %60 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdx44 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %60, i32 0, i32 23
  %61 = load i32, i32* %rdx44, align 4, !tbaa !39
  %sub45 = sub i32 %61, %59
  store i32 %sub45, i32* %rdx44, align 4, !tbaa !39
  %62 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id2x46 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %62, i32 0, i32 17
  %63 = load i32, i32* %id2x46, align 4, !tbaa !41
  %64 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %idx47 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %64, i32 0, i32 15
  %65 = load i32, i32* %idx47, align 4, !tbaa !36
  %sub48 = sub nsw i32 %65, %63
  store i32 %sub48, i32* %idx47, align 4, !tbaa !36
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.42, %if.then.32
  %66 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdy = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %66, i32 0, i32 24
  %67 = load i32, i32* %rdy, align 4, !tbaa !40
  %68 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd2y50 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %68, i32 0, i32 26
  %69 = load i32, i32* %rd2y50, align 4, !tbaa !44
  %cmp51 = icmp ult i32 %67, %69
  br i1 %cmp51, label %if.then.52, label %if.else.62

if.then.52:                                       ; preds = %if.end.49
  %70 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask53 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %70, i32 0, i32 14
  %71 = load i32, i32* %rmask53, align 4, !tbaa !27
  %add54 = add i32 %71, 1
  %72 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd2y55 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %72, i32 0, i32 26
  %73 = load i32, i32* %rd2y55, align 4, !tbaa !44
  %sub56 = sub i32 %add54, %73
  %74 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdy57 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %74, i32 0, i32 24
  %75 = load i32, i32* %rdy57, align 4, !tbaa !40
  %add58 = add i32 %75, %sub56
  store i32 %add58, i32* %rdy57, align 4, !tbaa !40
  %76 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id2y59 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %76, i32 0, i32 18
  %77 = load i32, i32* %id2y59, align 4, !tbaa !42
  %add60 = add nsw i32 %77, 1
  %78 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %idy = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %78, i32 0, i32 16
  %79 = load i32, i32* %idy, align 4, !tbaa !38
  %sub61 = sub nsw i32 %79, %add60
  store i32 %sub61, i32* %idy, align 4, !tbaa !38
  br label %if.end.69

if.else.62:                                       ; preds = %if.end.49
  %80 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rd2y63 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %80, i32 0, i32 26
  %81 = load i32, i32* %rd2y63, align 4, !tbaa !44
  %82 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdy64 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %82, i32 0, i32 24
  %83 = load i32, i32* %rdy64, align 4, !tbaa !40
  %sub65 = sub i32 %83, %81
  store i32 %sub65, i32* %rdy64, align 4, !tbaa !40
  %84 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %id2y66 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %84, i32 0, i32 18
  %85 = load i32, i32* %id2y66, align 4, !tbaa !42
  %86 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %idy67 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %86, i32 0, i32 16
  %87 = load i32, i32* %idy67, align 4, !tbaa !38
  %sub68 = sub nsw i32 %87, %85
  store i32 %sub68, i32* %idy67, align 4, !tbaa !38
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.62, %if.then.52
  %88 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rx = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %88, i32 0, i32 21
  %89 = load i32, i32* %rx, align 4, !tbaa !30
  %90 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdx70 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %90, i32 0, i32 23
  %91 = load i32, i32* %rdx70, align 4, !tbaa !39
  %cmp71 = icmp ult i32 %89, %91
  br i1 %cmp71, label %if.then.72, label %if.else.82

if.then.72:                                       ; preds = %if.end.69
  %92 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask73 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %92, i32 0, i32 14
  %93 = load i32, i32* %rmask73, align 4, !tbaa !27
  %add74 = add i32 %93, 1
  %94 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdx75 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %94, i32 0, i32 23
  %95 = load i32, i32* %rdx75, align 4, !tbaa !39
  %sub76 = sub i32 %add74, %95
  %96 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rx77 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %96, i32 0, i32 21
  %97 = load i32, i32* %rx77, align 4, !tbaa !30
  %add78 = add i32 %97, %sub76
  store i32 %add78, i32* %rx77, align 4, !tbaa !30
  %98 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %idx79 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %98, i32 0, i32 15
  %99 = load i32, i32* %idx79, align 4, !tbaa !36
  %add80 = add nsw i32 %99, 1
  %100 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %x = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %100, i32 0, i32 10
  %101 = load i32, i32* %x, align 4, !tbaa !49
  %sub81 = sub nsw i32 %101, %add80
  store i32 %sub81, i32* %x, align 4, !tbaa !49
  br label %if.end.89

if.else.82:                                       ; preds = %if.end.69
  %102 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdx83 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %102, i32 0, i32 23
  %103 = load i32, i32* %rdx83, align 4, !tbaa !39
  %104 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rx84 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %104, i32 0, i32 21
  %105 = load i32, i32* %rx84, align 4, !tbaa !30
  %sub85 = sub i32 %105, %103
  store i32 %sub85, i32* %rx84, align 4, !tbaa !30
  %106 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %idx86 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %106, i32 0, i32 15
  %107 = load i32, i32* %idx86, align 4, !tbaa !36
  %108 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %x87 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %108, i32 0, i32 10
  %109 = load i32, i32* %x87, align 4, !tbaa !49
  %sub88 = sub nsw i32 %109, %107
  store i32 %sub88, i32* %x87, align 4, !tbaa !49
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.82, %if.then.72
  %110 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ry = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %110, i32 0, i32 22
  %111 = load i32, i32* %ry, align 4, !tbaa !29
  %112 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdy90 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %112, i32 0, i32 24
  %113 = load i32, i32* %rdy90, align 4, !tbaa !40
  %cmp91 = icmp ult i32 %111, %113
  br i1 %cmp91, label %if.then.92, label %if.else.102

if.then.92:                                       ; preds = %if.end.89
  %114 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rmask93 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %114, i32 0, i32 14
  %115 = load i32, i32* %rmask93, align 4, !tbaa !27
  %add94 = add i32 %115, 1
  %116 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdy95 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %116, i32 0, i32 24
  %117 = load i32, i32* %rdy95, align 4, !tbaa !40
  %sub96 = sub i32 %add94, %117
  %118 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ry97 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %118, i32 0, i32 22
  %119 = load i32, i32* %ry97, align 4, !tbaa !29
  %add98 = add i32 %119, %sub96
  store i32 %add98, i32* %ry97, align 4, !tbaa !29
  %120 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %idy99 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %120, i32 0, i32 16
  %121 = load i32, i32* %idy99, align 4, !tbaa !38
  %add100 = add nsw i32 %121, 1
  %122 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %y = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %122, i32 0, i32 11
  %123 = load i32, i32* %y, align 4, !tbaa !50
  %sub101 = sub nsw i32 %123, %add100
  store i32 %sub101, i32* %y, align 4, !tbaa !50
  br label %if.end.109

if.else.102:                                      ; preds = %if.end.89
  %124 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %rdy103 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %124, i32 0, i32 24
  %125 = load i32, i32* %rdy103, align 4, !tbaa !40
  %126 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ry104 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %126, i32 0, i32 22
  %127 = load i32, i32* %ry104, align 4, !tbaa !29
  %sub105 = sub i32 %127, %125
  store i32 %sub105, i32* %ry104, align 4, !tbaa !29
  %128 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %idy106 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %128, i32 0, i32 16
  %129 = load i32, i32* %idy106, align 4, !tbaa !38
  %130 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %y107 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %130, i32 0, i32 11
  %131 = load i32, i32* %y107, align 4, !tbaa !50
  %sub108 = sub nsw i32 %131, %129
  store i32 %sub108, i32* %y107, align 4, !tbaa !50
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.102, %if.then.92
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_flattened_iterator__switch_to_backscan(%struct.gx_flattened_iterator_s* %self, i32 %not_first) #0 {
entry:
  %self.addr = alloca %struct.gx_flattened_iterator_s*, align 8
  %not_first.addr = alloca i32, align 4
  store %struct.gx_flattened_iterator_s* %self, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  store i32 %not_first, i32* %not_first.addr, align 4, !tbaa !1
  %0 = load i32, i32* %not_first.addr, align 4, !tbaa !1
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %i = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %1, i32 0, i32 12
  %2 = load i32, i32* %i, align 4, !tbaa !28
  %cmp = icmp ugt i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %3 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %k = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %3, i32 0, i32 13
  %4 = load i32, i32* %k, align 4, !tbaa !26
  %cmp1 = icmp ne i32 %4, 1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %land.lhs.true
  %5 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  call void @gx_flattened_iterator__unaccum(%struct.gx_flattened_iterator_s* %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then.2, %land.lhs.true, %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_subdivide_curve(%struct.gx_path_s* %ppath, i32 %k, %struct.curve_segment* %pc, i32 %notes) #0 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %k.addr = alloca i32, align 4
  %pc.addr = alloca %struct.curve_segment*, align 8
  %notes.addr = alloca i32, align 4
  %points = alloca [51 x %struct.gs_fixed_point_s], align 16
  %iter = alloca %struct.gx_flattened_iterator_s, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !5
  store i32 %k, i32* %k.addr, align 4, !tbaa !1
  store %struct.curve_segment* %pc, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  store i32 %notes, i32* %notes.addr, align 4, !tbaa !51
  %0 = bitcast [51 x %struct.gs_fixed_point_s]* %points to i8*
  call void @llvm.lifetime.start(i64 408, i8* %0) #1
  %1 = bitcast %struct.gx_flattened_iterator_s* %iter to i8*
  call void @llvm.lifetime.start(i64 136, i8* %1) #1
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !5
  %3 = load i32, i32* %k.addr, align 4, !tbaa !1
  %4 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %5 = load i32, i32* %notes.addr, align 4, !tbaa !51
  %arraydecay = getelementptr inbounds [51 x %struct.gs_fixed_point_s], [51 x %struct.gs_fixed_point_s]* %points, i32 0, i32 0
  %call = call i32 @gx_subdivide_curve_rec(%struct.gx_flattened_iterator_s* %iter, %struct.gx_path_s* %2, i32 %3, %struct.curve_segment* %4, i32 %5, %struct.gs_fixed_point_s* %arraydecay) #5
  %6 = bitcast %struct.gx_flattened_iterator_s* %iter to i8*
  call void @llvm.lifetime.end(i64 136, i8* %6) #1
  %7 = bitcast [51 x %struct.gs_fixed_point_s]* %points to i8*
  call void @llvm.lifetime.end(i64 408, i8* %7) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_subdivide_curve_rec(%struct.gx_flattened_iterator_s* %self, %struct.gx_path_s* %ppath, i32 %k, %struct.curve_segment* %pc, i32 %notes, %struct.gs_fixed_point_s* %points) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.gx_flattened_iterator_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %k.addr = alloca i32, align 4
  %pc.addr = alloca %struct.curve_segment*, align 8
  %notes.addr = alloca i32, align 4
  %points.addr = alloca %struct.gs_fixed_point_s*, align 8
  %code = alloca i32, align 4
  %cseg = alloca %struct.curve_segment, align 8
  %cleanup.dest.slot = alloca i32
  %ppt = alloca %struct.gs_fixed_point_s*, align 8
  %more = alloca i32, align 4
  %pe = alloca %struct.gs_fixed_point_s*, align 8
  store %struct.gx_flattened_iterator_s* %self, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !5
  store i32 %k, i32* %k.addr, align 4, !tbaa !1
  store %struct.curve_segment* %pc, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  store i32 %notes, i32* %notes.addr, align 4, !tbaa !51
  store %struct.gs_fixed_point_s* %points, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  br label %top

top:                                              ; preds = %cleanup, %entry
  %1 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !5
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 14
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  %3 = load i32, i32* %x, align 4, !tbaa !52
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !5
  %position1 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %4, i32 0, i32 14
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position1, i32 0, i32 1
  %5 = load i32, i32* %y, align 4, !tbaa !59
  %6 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %7 = load i32, i32* %k.addr, align 4, !tbaa !1
  %call = call i32 @gx_flattened_iterator__init(%struct.gx_flattened_iterator_s* %1, i32 %3, i32 %5, %struct.curve_segment* %6, i32 %7) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %top
  %8 = bitcast %struct.curve_segment* %cseg to i8*
  call void @llvm.lifetime.start(i64 48, i8* %8) #1
  %9 = load i32, i32* %k.addr, align 4, !tbaa !1
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %k.addr, align 4, !tbaa !1
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !5
  %position2 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %10, i32 0, i32 14
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position2, i32 0, i32 0
  %11 = load i32, i32* %x3, align 4, !tbaa !52
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !5
  %position4 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %12, i32 0, i32 14
  %y5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position4, i32 0, i32 1
  %13 = load i32, i32* %y5, align 4, !tbaa !59
  %14 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %15 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  call void @split_curve_midpoint(i32 %11, i32 %13, %struct.curve_segment* %14, %struct.curve_segment* %cseg, %struct.curve_segment* %15) #5
  %16 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %17 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !5
  %18 = load i32, i32* %k.addr, align 4, !tbaa !1
  %19 = load i32, i32* %notes.addr, align 4, !tbaa !51
  %20 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !5
  %call6 = call i32 @gx_subdivide_curve_rec(%struct.gx_flattened_iterator_s* %16, %struct.gx_path_s* %17, i32 %18, %struct.curve_segment* %cseg, i32 %19, %struct.gs_fixed_point_s* %20) #5
  store i32 %call6, i32* %code, align 4, !tbaa !1
  %21 = load i32, i32* %code, align 4, !tbaa !1
  %cmp = icmp slt i32 %21, 0
  br i1 %cmp, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %22 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %23 = load i32, i32* %notes.addr, align 4, !tbaa !51
  %or = or i32 %23, 1
  store i32 %or, i32* %notes.addr, align 4, !tbaa !51
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.7
  %24 = bitcast %struct.curve_segment* %cseg to i8*
  call void @llvm.lifetime.end(i64 48, i8* %24) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.54 [
    i32 2, label %top
  ]

if.else:                                          ; preds = %top
  %25 = load i32, i32* %k.addr, align 4, !tbaa !1
  %cmp8 = icmp eq i32 %25, -1
  br i1 %cmp8, label %if.then.9, label %if.else.20

if.then.9:                                        ; preds = %if.else
  %26 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !5
  %27 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p1 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %27, i32 0, i32 5
  %x10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  %28 = load i32, i32* %x10, align 4, !tbaa !12
  %29 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p111 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %29, i32 0, i32 5
  %y12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p111, i32 0, i32 1
  %30 = load i32, i32* %y12, align 4, !tbaa !14
  %31 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p2 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %31, i32 0, i32 6
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 0
  %32 = load i32, i32* %x13, align 4, !tbaa !13
  %33 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p214 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %33, i32 0, i32 6
  %y15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p214, i32 0, i32 1
  %34 = load i32, i32* %y15, align 4, !tbaa !15
  %35 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %pt = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %35, i32 0, i32 4
  %x16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %36 = load i32, i32* %x16, align 4, !tbaa !7
  %37 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %pt17 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %37, i32 0, i32 4
  %y18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt17, i32 0, i32 1
  %38 = load i32, i32* %y18, align 4, !tbaa !11
  %39 = load i32, i32* %notes.addr, align 4, !tbaa !51
  %call19 = call i32 @gx_path_add_curve_notes(%struct.gx_path_s* %26, i32 %28, i32 %30, i32 %32, i32 %34, i32 %36, i32 %38, i32 %39) #5
  store i32 %call19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.54

if.else.20:                                       ; preds = %if.else
  %40 = bitcast %struct.gs_fixed_point_s** %ppt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !5
  store %struct.gs_fixed_point_s* %41, %struct.gs_fixed_point_s** %ppt, align 8, !tbaa !5
  %42 = bitcast i32* %more to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  br label %for.cond

for.cond:                                         ; preds = %if.end.51, %if.else.20
  %43 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %call21 = call i32 @gx_flattened_iterator__next(%struct.gx_flattened_iterator_s* %43) #5
  store i32 %call21, i32* %code, align 4, !tbaa !1
  %44 = load i32, i32* %code, align 4, !tbaa !1
  %cmp22 = icmp slt i32 %44, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %for.cond
  %45 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.52

if.end.24:                                        ; preds = %for.cond
  %46 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %46, i32* %more, align 4, !tbaa !1
  %47 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %lx1 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %47, i32 0, i32 32
  %48 = load i32, i32* %lx1, align 4, !tbaa !16
  %49 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt, align 8, !tbaa !5
  %x25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %49, i32 0, i32 0
  store i32 %48, i32* %x25, align 4, !tbaa !60
  %50 = load %struct.gx_flattened_iterator_s*, %struct.gx_flattened_iterator_s** %self.addr, align 8, !tbaa !5
  %ly1 = getelementptr inbounds %struct.gx_flattened_iterator_s, %struct.gx_flattened_iterator_s* %50, i32 0, i32 33
  %51 = load i32, i32* %ly1, align 4, !tbaa !20
  %52 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt, align 8, !tbaa !5
  %y26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %52, i32 0, i32 1
  store i32 %51, i32* %y26, align 4, !tbaa !61
  %53 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %53, i32 1
  store %struct.gs_fixed_point_s* %incdec.ptr, %struct.gs_fixed_point_s** %ppt, align 8, !tbaa !5
  %54 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt, align 8, !tbaa !5
  %55 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %55, i64 50
  %cmp27 = icmp eq %struct.gs_fixed_point_s* %54, %arrayidx
  br i1 %cmp27, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.24
  %56 = load i32, i32* %more, align 4, !tbaa !1
  %tobool28 = icmp ne i32 %56, 0
  br i1 %tobool28, label %if.end.51, label %if.then.29

if.then.29:                                       ; preds = %lor.lhs.false, %if.end.24
  %57 = bitcast %struct.gs_fixed_point_s** %pe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  %58 = load i32, i32* %more, align 4, !tbaa !1
  %tobool30 = icmp ne i32 %58, 0
  br i1 %tobool30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.29
  %59 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %59, i64 -2
  br label %cond.end

cond.false:                                       ; preds = %if.then.29
  %60 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt, align 8, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_fixed_point_s* [ %add.ptr, %cond.true ], [ %60, %cond.false ]
  store %struct.gs_fixed_point_s* %cond, %struct.gs_fixed_point_s** %pe, align 8, !tbaa !5
  %61 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !5
  %62 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !5
  %63 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pe, align 8, !tbaa !5
  %64 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint %struct.gs_fixed_point_s* %63 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.gs_fixed_point_s* %64 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv = trunc i64 %sub.ptr.div to i32
  %65 = load i32, i32* %notes.addr, align 4, !tbaa !51
  %call31 = call i32 @generate_segments(%struct.gx_path_s* %61, %struct.gs_fixed_point_s* %62, i32 %conv, i32 %65) #5
  store i32 %call31, i32* %code, align 4, !tbaa !1
  %66 = load i32, i32* %code, align 4, !tbaa !1
  %cmp32 = icmp slt i32 %66, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %cond.end
  %67 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

if.end.35:                                        ; preds = %cond.end
  %68 = load i32, i32* %more, align 4, !tbaa !1
  %tobool36 = icmp ne i32 %68, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.end.35
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

if.end.38:                                        ; preds = %if.end.35
  %69 = load i32, i32* %notes.addr, align 4, !tbaa !51
  %or39 = or i32 %69, 1
  store i32 %or39, i32* %notes.addr, align 4, !tbaa !51
  %70 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !5
  %71 = bitcast %struct.gs_fixed_point_s* %70 to i8*
  %72 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pe, align 8, !tbaa !5
  %73 = bitcast %struct.gs_fixed_point_s* %72 to i8*
  %74 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt, align 8, !tbaa !5
  %75 = bitcast %struct.gs_fixed_point_s* %74 to i8*
  %76 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pe, align 8, !tbaa !5
  %77 = bitcast %struct.gs_fixed_point_s* %76 to i8*
  %sub.ptr.lhs.cast40 = ptrtoint i8* %75 to i64
  %sub.ptr.rhs.cast41 = ptrtoint i8* %77 to i64
  %sub.ptr.sub42 = sub i64 %sub.ptr.lhs.cast40, %sub.ptr.rhs.cast41
  %call43 = call i8* @memcpy(i8* %71, i8* %73, i64 %sub.ptr.sub42) #6
  %78 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !5
  %79 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt, align 8, !tbaa !5
  %80 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pe, align 8, !tbaa !5
  %sub.ptr.lhs.cast44 = ptrtoint %struct.gs_fixed_point_s* %79 to i64
  %sub.ptr.rhs.cast45 = ptrtoint %struct.gs_fixed_point_s* %80 to i64
  %sub.ptr.sub46 = sub i64 %sub.ptr.lhs.cast44, %sub.ptr.rhs.cast45
  %sub.ptr.div47 = sdiv exact i64 %sub.ptr.sub46, 8
  %add.ptr48 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %78, i64 %sub.ptr.div47
  store %struct.gs_fixed_point_s* %add.ptr48, %struct.gs_fixed_point_s** %ppt, align 8, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.49

cleanup.49:                                       ; preds = %if.end.38, %if.then.37, %if.then.34
  %81 = bitcast %struct.gs_fixed_point_s** %pe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %cleanup.dest.50 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.50, label %cleanup.52 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.49
  br label %if.end.51

if.end.51:                                        ; preds = %cleanup.cont, %lor.lhs.false
  br label %for.cond

cleanup.52:                                       ; preds = %cleanup.49, %if.then.23
  %82 = bitcast i32* %more to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast %struct.gs_fixed_point_s** %ppt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  br label %cleanup.54

cleanup.54:                                       ; preds = %cleanup.52, %if.then.9, %cleanup
  %84 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = load i32, i32* %retval
  ret i32 %85
}

; Function Attrs: nounwind uwtable
define internal void @split_curve_midpoint(i32 %x0, i32 %y0, %struct.curve_segment* %pc, %struct.curve_segment* %pc1, %struct.curve_segment* %pc2) #0 {
entry:
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %pc.addr = alloca %struct.curve_segment*, align 8
  %pc1.addr = alloca %struct.curve_segment*, align 8
  %pc2.addr = alloca %struct.curve_segment*, align 8
  %x12 = alloca i32, align 4
  %y12 = alloca i32, align 4
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !1
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !1
  store %struct.curve_segment* %pc, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  store %struct.curve_segment* %pc1, %struct.curve_segment** %pc1.addr, align 8, !tbaa !5
  store %struct.curve_segment* %pc2, %struct.curve_segment** %pc2.addr, align 8, !tbaa !5
  %0 = bitcast i32* %x12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p1 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %1, i32 0, i32 5
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !12
  %shr = ashr i32 %2, 1
  %3 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p2 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %3, i32 0, i32 6
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 0
  %4 = load i32, i32* %x1, align 4, !tbaa !13
  %shr2 = ashr i32 %4, 1
  %add = add nsw i32 %shr, %shr2
  %5 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p13 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %5, i32 0, i32 5
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p13, i32 0, i32 0
  %6 = load i32, i32* %x4, align 4, !tbaa !12
  %7 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p25 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %7, i32 0, i32 6
  %x6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p25, i32 0, i32 0
  %8 = load i32, i32* %x6, align 4, !tbaa !13
  %or = or i32 %6, %8
  %and = and i32 %or, 1
  %add7 = add nsw i32 %add, %and
  store i32 %add7, i32* %x12, align 4, !tbaa !1
  %9 = bitcast i32* %y12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p18 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %10, i32 0, i32 5
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p18, i32 0, i32 1
  %11 = load i32, i32* %y, align 4, !tbaa !14
  %shr9 = ashr i32 %11, 1
  %12 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p210 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %12, i32 0, i32 6
  %y11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p210, i32 0, i32 1
  %13 = load i32, i32* %y11, align 4, !tbaa !15
  %shr12 = ashr i32 %13, 1
  %add13 = add nsw i32 %shr9, %shr12
  %14 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p114 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %14, i32 0, i32 5
  %y15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p114, i32 0, i32 1
  %15 = load i32, i32* %y15, align 4, !tbaa !14
  %16 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p216 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %16, i32 0, i32 6
  %y17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p216, i32 0, i32 1
  %17 = load i32, i32* %y17, align 4, !tbaa !15
  %or18 = or i32 %15, %17
  %and19 = and i32 %or18, 1
  %add20 = add nsw i32 %add13, %and19
  store i32 %add20, i32* %y12, align 4, !tbaa !1
  %18 = load i32, i32* %x0.addr, align 4, !tbaa !1
  %shr21 = ashr i32 %18, 1
  %19 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p122 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %19, i32 0, i32 5
  %x23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p122, i32 0, i32 0
  %20 = load i32, i32* %x23, align 4, !tbaa !12
  %shr24 = ashr i32 %20, 1
  %add25 = add nsw i32 %shr21, %shr24
  %21 = load i32, i32* %x0.addr, align 4, !tbaa !1
  %22 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p126 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %22, i32 0, i32 5
  %x27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p126, i32 0, i32 0
  %23 = load i32, i32* %x27, align 4, !tbaa !12
  %or28 = or i32 %21, %23
  %and29 = and i32 %or28, 1
  %add30 = add nsw i32 %add25, %and29
  %24 = load %struct.curve_segment*, %struct.curve_segment** %pc1.addr, align 8, !tbaa !5
  %p131 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %24, i32 0, i32 5
  %x32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p131, i32 0, i32 0
  store i32 %add30, i32* %x32, align 4, !tbaa !12
  %25 = load i32, i32* %y0.addr, align 4, !tbaa !1
  %shr33 = ashr i32 %25, 1
  %26 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p134 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %26, i32 0, i32 5
  %y35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p134, i32 0, i32 1
  %27 = load i32, i32* %y35, align 4, !tbaa !14
  %shr36 = ashr i32 %27, 1
  %add37 = add nsw i32 %shr33, %shr36
  %28 = load i32, i32* %y0.addr, align 4, !tbaa !1
  %29 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p138 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %29, i32 0, i32 5
  %y39 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p138, i32 0, i32 1
  %30 = load i32, i32* %y39, align 4, !tbaa !14
  %or40 = or i32 %28, %30
  %and41 = and i32 %or40, 1
  %add42 = add nsw i32 %add37, %and41
  %31 = load %struct.curve_segment*, %struct.curve_segment** %pc1.addr, align 8, !tbaa !5
  %p143 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %31, i32 0, i32 5
  %y44 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p143, i32 0, i32 1
  store i32 %add42, i32* %y44, align 4, !tbaa !14
  %32 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p245 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %32, i32 0, i32 6
  %x46 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p245, i32 0, i32 0
  %33 = load i32, i32* %x46, align 4, !tbaa !13
  %shr47 = ashr i32 %33, 1
  %34 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %pt = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %34, i32 0, i32 4
  %x48 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %35 = load i32, i32* %x48, align 4, !tbaa !7
  %shr49 = ashr i32 %35, 1
  %add50 = add nsw i32 %shr47, %shr49
  %36 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p251 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %36, i32 0, i32 6
  %x52 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p251, i32 0, i32 0
  %37 = load i32, i32* %x52, align 4, !tbaa !13
  %38 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %pt53 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %38, i32 0, i32 4
  %x54 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt53, i32 0, i32 0
  %39 = load i32, i32* %x54, align 4, !tbaa !7
  %or55 = or i32 %37, %39
  %and56 = and i32 %or55, 1
  %add57 = add nsw i32 %add50, %and56
  %40 = load %struct.curve_segment*, %struct.curve_segment** %pc2.addr, align 8, !tbaa !5
  %p258 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %40, i32 0, i32 6
  %x59 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p258, i32 0, i32 0
  store i32 %add57, i32* %x59, align 4, !tbaa !13
  %41 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p260 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %41, i32 0, i32 6
  %y61 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p260, i32 0, i32 1
  %42 = load i32, i32* %y61, align 4, !tbaa !15
  %shr62 = ashr i32 %42, 1
  %43 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %pt63 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %43, i32 0, i32 4
  %y64 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt63, i32 0, i32 1
  %44 = load i32, i32* %y64, align 4, !tbaa !11
  %shr65 = ashr i32 %44, 1
  %add66 = add nsw i32 %shr62, %shr65
  %45 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %p267 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %45, i32 0, i32 6
  %y68 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p267, i32 0, i32 1
  %46 = load i32, i32* %y68, align 4, !tbaa !15
  %47 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %pt69 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %47, i32 0, i32 4
  %y70 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt69, i32 0, i32 1
  %48 = load i32, i32* %y70, align 4, !tbaa !11
  %or71 = or i32 %46, %48
  %and72 = and i32 %or71, 1
  %add73 = add nsw i32 %add66, %and72
  %49 = load %struct.curve_segment*, %struct.curve_segment** %pc2.addr, align 8, !tbaa !5
  %p274 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %49, i32 0, i32 6
  %y75 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p274, i32 0, i32 1
  store i32 %add73, i32* %y75, align 4, !tbaa !15
  %50 = load %struct.curve_segment*, %struct.curve_segment** %pc1.addr, align 8, !tbaa !5
  %p176 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %50, i32 0, i32 5
  %x77 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p176, i32 0, i32 0
  %51 = load i32, i32* %x77, align 4, !tbaa !12
  %shr78 = ashr i32 %51, 1
  %52 = load i32, i32* %x12, align 4, !tbaa !1
  %shr79 = ashr i32 %52, 1
  %add80 = add nsw i32 %shr78, %shr79
  %53 = load %struct.curve_segment*, %struct.curve_segment** %pc1.addr, align 8, !tbaa !5
  %p181 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %53, i32 0, i32 5
  %x82 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p181, i32 0, i32 0
  %54 = load i32, i32* %x82, align 4, !tbaa !12
  %55 = load i32, i32* %x12, align 4, !tbaa !1
  %or83 = or i32 %54, %55
  %and84 = and i32 %or83, 1
  %add85 = add nsw i32 %add80, %and84
  %56 = load %struct.curve_segment*, %struct.curve_segment** %pc1.addr, align 8, !tbaa !5
  %p286 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %56, i32 0, i32 6
  %x87 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p286, i32 0, i32 0
  store i32 %add85, i32* %x87, align 4, !tbaa !13
  %57 = load %struct.curve_segment*, %struct.curve_segment** %pc1.addr, align 8, !tbaa !5
  %p188 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %57, i32 0, i32 5
  %y89 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p188, i32 0, i32 1
  %58 = load i32, i32* %y89, align 4, !tbaa !14
  %shr90 = ashr i32 %58, 1
  %59 = load i32, i32* %y12, align 4, !tbaa !1
  %shr91 = ashr i32 %59, 1
  %add92 = add nsw i32 %shr90, %shr91
  %60 = load %struct.curve_segment*, %struct.curve_segment** %pc1.addr, align 8, !tbaa !5
  %p193 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %60, i32 0, i32 5
  %y94 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p193, i32 0, i32 1
  %61 = load i32, i32* %y94, align 4, !tbaa !14
  %62 = load i32, i32* %y12, align 4, !tbaa !1
  %or95 = or i32 %61, %62
  %and96 = and i32 %or95, 1
  %add97 = add nsw i32 %add92, %and96
  %63 = load %struct.curve_segment*, %struct.curve_segment** %pc1.addr, align 8, !tbaa !5
  %p298 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %63, i32 0, i32 6
  %y99 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p298, i32 0, i32 1
  store i32 %add97, i32* %y99, align 4, !tbaa !15
  %64 = load i32, i32* %x12, align 4, !tbaa !1
  %shr100 = ashr i32 %64, 1
  %65 = load %struct.curve_segment*, %struct.curve_segment** %pc2.addr, align 8, !tbaa !5
  %p2101 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %65, i32 0, i32 6
  %x102 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2101, i32 0, i32 0
  %66 = load i32, i32* %x102, align 4, !tbaa !13
  %shr103 = ashr i32 %66, 1
  %add104 = add nsw i32 %shr100, %shr103
  %67 = load i32, i32* %x12, align 4, !tbaa !1
  %68 = load %struct.curve_segment*, %struct.curve_segment** %pc2.addr, align 8, !tbaa !5
  %p2105 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %68, i32 0, i32 6
  %x106 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2105, i32 0, i32 0
  %69 = load i32, i32* %x106, align 4, !tbaa !13
  %or107 = or i32 %67, %69
  %and108 = and i32 %or107, 1
  %add109 = add nsw i32 %add104, %and108
  %70 = load %struct.curve_segment*, %struct.curve_segment** %pc2.addr, align 8, !tbaa !5
  %p1110 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %70, i32 0, i32 5
  %x111 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1110, i32 0, i32 0
  store i32 %add109, i32* %x111, align 4, !tbaa !12
  %71 = load i32, i32* %y12, align 4, !tbaa !1
  %shr112 = ashr i32 %71, 1
  %72 = load %struct.curve_segment*, %struct.curve_segment** %pc2.addr, align 8, !tbaa !5
  %p2113 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %72, i32 0, i32 6
  %y114 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2113, i32 0, i32 1
  %73 = load i32, i32* %y114, align 4, !tbaa !15
  %shr115 = ashr i32 %73, 1
  %add116 = add nsw i32 %shr112, %shr115
  %74 = load i32, i32* %y12, align 4, !tbaa !1
  %75 = load %struct.curve_segment*, %struct.curve_segment** %pc2.addr, align 8, !tbaa !5
  %p2117 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %75, i32 0, i32 6
  %y118 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2117, i32 0, i32 1
  %76 = load i32, i32* %y118, align 4, !tbaa !15
  %or119 = or i32 %74, %76
  %and120 = and i32 %or119, 1
  %add121 = add nsw i32 %add116, %and120
  %77 = load %struct.curve_segment*, %struct.curve_segment** %pc2.addr, align 8, !tbaa !5
  %p1122 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %77, i32 0, i32 5
  %y123 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1122, i32 0, i32 1
  store i32 %add121, i32* %y123, align 4, !tbaa !14
  %78 = load %struct.curve_segment*, %struct.curve_segment** %pc2.addr, align 8, !tbaa !5
  %79 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct.curve_segment* %78, %79
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %80 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %pt124 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %80, i32 0, i32 4
  %x125 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt124, i32 0, i32 0
  %81 = load i32, i32* %x125, align 4, !tbaa !7
  %82 = load %struct.curve_segment*, %struct.curve_segment** %pc2.addr, align 8, !tbaa !5
  %pt126 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %82, i32 0, i32 4
  %x127 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt126, i32 0, i32 0
  store i32 %81, i32* %x127, align 4, !tbaa !7
  %83 = load %struct.curve_segment*, %struct.curve_segment** %pc.addr, align 8, !tbaa !5
  %pt128 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %83, i32 0, i32 4
  %y129 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt128, i32 0, i32 1
  %84 = load i32, i32* %y129, align 4, !tbaa !11
  %85 = load %struct.curve_segment*, %struct.curve_segment** %pc2.addr, align 8, !tbaa !5
  %pt130 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %85, i32 0, i32 4
  %y131 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt130, i32 0, i32 1
  store i32 %84, i32* %y131, align 4, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %86 = load %struct.curve_segment*, %struct.curve_segment** %pc1.addr, align 8, !tbaa !5
  %p2132 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %86, i32 0, i32 6
  %x133 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2132, i32 0, i32 0
  %87 = load i32, i32* %x133, align 4, !tbaa !13
  %shr134 = ashr i32 %87, 1
  %88 = load %struct.curve_segment*, %struct.curve_segment** %pc2.addr, align 8, !tbaa !5
  %p1135 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %88, i32 0, i32 5
  %x136 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1135, i32 0, i32 0
  %89 = load i32, i32* %x136, align 4, !tbaa !12
  %shr137 = ashr i32 %89, 1
  %add138 = add nsw i32 %shr134, %shr137
  %90 = load %struct.curve_segment*, %struct.curve_segment** %pc1.addr, align 8, !tbaa !5
  %p2139 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %90, i32 0, i32 6
  %x140 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2139, i32 0, i32 0
  %91 = load i32, i32* %x140, align 4, !tbaa !13
  %92 = load %struct.curve_segment*, %struct.curve_segment** %pc2.addr, align 8, !tbaa !5
  %p1141 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %92, i32 0, i32 5
  %x142 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1141, i32 0, i32 0
  %93 = load i32, i32* %x142, align 4, !tbaa !12
  %or143 = or i32 %91, %93
  %and144 = and i32 %or143, 1
  %add145 = add nsw i32 %add138, %and144
  %94 = load %struct.curve_segment*, %struct.curve_segment** %pc1.addr, align 8, !tbaa !5
  %pt146 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %94, i32 0, i32 4
  %x147 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt146, i32 0, i32 0
  store i32 %add145, i32* %x147, align 4, !tbaa !7
  %95 = load %struct.curve_segment*, %struct.curve_segment** %pc1.addr, align 8, !tbaa !5
  %p2148 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %95, i32 0, i32 6
  %y149 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2148, i32 0, i32 1
  %96 = load i32, i32* %y149, align 4, !tbaa !15
  %shr150 = ashr i32 %96, 1
  %97 = load %struct.curve_segment*, %struct.curve_segment** %pc2.addr, align 8, !tbaa !5
  %p1151 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %97, i32 0, i32 5
  %y152 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1151, i32 0, i32 1
  %98 = load i32, i32* %y152, align 4, !tbaa !14
  %shr153 = ashr i32 %98, 1
  %add154 = add nsw i32 %shr150, %shr153
  %99 = load %struct.curve_segment*, %struct.curve_segment** %pc1.addr, align 8, !tbaa !5
  %p2155 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %99, i32 0, i32 6
  %y156 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2155, i32 0, i32 1
  %100 = load i32, i32* %y156, align 4, !tbaa !15
  %101 = load %struct.curve_segment*, %struct.curve_segment** %pc2.addr, align 8, !tbaa !5
  %p1157 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %101, i32 0, i32 5
  %y158 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1157, i32 0, i32 1
  %102 = load i32, i32* %y158, align 4, !tbaa !14
  %or159 = or i32 %100, %102
  %and160 = and i32 %or159, 1
  %add161 = add nsw i32 %add154, %and160
  %103 = load %struct.curve_segment*, %struct.curve_segment** %pc1.addr, align 8, !tbaa !5
  %pt162 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %103, i32 0, i32 4
  %y163 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt162, i32 0, i32 1
  store i32 %add161, i32* %y163, align 4, !tbaa !11
  %104 = bitcast i32* %y12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %x12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  ret void
}

declare i32 @gx_path_add_curve_notes(%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @generate_segments(%struct.gx_path_s* %ppath, %struct.gs_fixed_point_s* %points, i32 %count, i32 %notes) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %points.addr = alloca %struct.gs_fixed_point_s*, align 8
  %count.addr = alloca i32, align 4
  %notes.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !5
  store %struct.gs_fixed_point_s* %points, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !5
  store i32 %count, i32* %count.addr, align 4, !tbaa !1
  store i32 %notes, i32* %notes.addr, align 4, !tbaa !51
  %0 = load i32, i32* %notes.addr, align 4, !tbaa !51
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !5
  %2 = load i32, i32* %count.addr, align 4, !tbaa !1
  call void @print_points(%struct.gs_fixed_point_s* %1, i32 %2) #5
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !5
  %4 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !5
  %5 = load i32, i32* %count.addr, align 4, !tbaa !1
  %6 = load i32, i32* %notes.addr, align 4, !tbaa !51
  %call = call i32 @gx_path_add_lines_notes(%struct.gx_path_s* %3, %struct.gs_fixed_point_s* %4, i32 %5, i32 %6) #5
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !5
  call void @print_points(%struct.gs_fixed_point_s* %8, i32 1) #5
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !5
  %10 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %10, i64 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx, i32 0, i32 0
  %11 = load i32, i32* %x, align 4, !tbaa !60
  %12 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !5
  %arrayidx1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %12, i64 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx1, i32 0, i32 1
  %13 = load i32, i32* %y, align 4, !tbaa !61
  %14 = load i32, i32* %notes.addr, align 4, !tbaa !51
  %call2 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %9, i32 %11, i32 %13, i32 %14) #5
  store i32 %call2, i32* %code, align 4, !tbaa !1
  %15 = load i32, i32* %code, align 4, !tbaa !1
  %cmp = icmp slt i32 %15, 0
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %16 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  %17 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %17, i64 1
  %18 = load i32, i32* %count.addr, align 4, !tbaa !1
  %sub = sub nsw i32 %18, 1
  call void @print_points(%struct.gs_fixed_point_s* %add.ptr, i32 %sub) #5
  %19 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !5
  %20 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !5
  %add.ptr4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %20, i64 1
  %21 = load i32, i32* %count.addr, align 4, !tbaa !1
  %sub5 = sub nsw i32 %21, 1
  %22 = load i32, i32* %notes.addr, align 4, !tbaa !51
  %or = or i32 %22, 1
  %call6 = call i32 @gx_path_add_lines_notes(%struct.gx_path_s* %19, %struct.gs_fixed_point_s* %add.ptr4, i32 %sub5, i32 %or) #5
  store i32 %call6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.3
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @print_points(%struct.gs_fixed_point_s* %points, i32 %count) #2 {
entry:
  %points.addr = alloca %struct.gs_fixed_point_s*, align 8
  %count.addr = alloca i32, align 4
  store %struct.gs_fixed_point_s* %points, %struct.gs_fixed_point_s** %points.addr, align 8, !tbaa !5
  store i32 %count, i32* %count.addr, align 4, !tbaa !1
  ret void
}

declare i32 @gx_path_add_lines_notes(%struct.gx_path_s*, %struct.gs_fixed_point_s*, i32, i32) #3

declare i32 @gx_path_add_line_notes(%struct.gx_path_s*, i32, i32, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !2, i64 20}
!8 = !{!"", !6, i64 0, !6, i64 8, !9, i64 16, !9, i64 18, !10, i64 20, !10, i64 28, !10, i64 36}
!9 = !{!"short", !3, i64 0}
!10 = !{!"gs_fixed_point_s", !2, i64 0, !2, i64 4}
!11 = !{!8, !2, i64 24}
!12 = !{!8, !2, i64 28}
!13 = !{!8, !2, i64 36}
!14 = !{!8, !2, i64 32}
!15 = !{!8, !2, i64 40}
!16 = !{!17, !2, i64 128}
!17 = !{!"gx_flattened_iterator_s", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !2, i64 24, !2, i64 28, !2, i64 32, !2, i64 36, !2, i64 40, !2, i64 44, !2, i64 48, !2, i64 52, !2, i64 56, !2, i64 60, !2, i64 64, !2, i64 68, !2, i64 72, !2, i64 76, !2, i64 80, !2, i64 84, !2, i64 88, !2, i64 92, !2, i64 96, !2, i64 100, !2, i64 104, !2, i64 108, !2, i64 112, !2, i64 116, !2, i64 120, !2, i64 124, !2, i64 128, !2, i64 132}
!18 = !{!17, !2, i64 120}
!19 = !{!17, !2, i64 0}
!20 = !{!17, !2, i64 132}
!21 = !{!17, !2, i64 124}
!22 = !{!17, !2, i64 4}
!23 = !{!17, !2, i64 8}
!24 = !{!17, !2, i64 12}
!25 = !{!17, !2, i64 116}
!26 = !{!17, !2, i64 52}
!27 = !{!17, !2, i64 56}
!28 = !{!17, !2, i64 48}
!29 = !{!17, !2, i64 88}
!30 = !{!17, !2, i64 84}
!31 = !{!17, !2, i64 20}
!32 = !{!17, !2, i64 32}
!33 = !{!17, !2, i64 24}
!34 = !{!17, !2, i64 36}
!35 = !{!17, !2, i64 16}
!36 = !{!17, !2, i64 60}
!37 = !{!17, !2, i64 28}
!38 = !{!17, !2, i64 64}
!39 = !{!17, !2, i64 92}
!40 = !{!17, !2, i64 96}
!41 = !{!17, !2, i64 68}
!42 = !{!17, !2, i64 72}
!43 = !{!17, !2, i64 100}
!44 = !{!17, !2, i64 104}
!45 = !{!17, !2, i64 76}
!46 = !{!17, !2, i64 80}
!47 = !{!17, !2, i64 108}
!48 = !{!17, !2, i64 112}
!49 = !{!17, !2, i64 40}
!50 = !{!17, !2, i64 44}
!51 = !{!3, !3, i64 0}
!52 = !{!53, !2, i64 112}
!53 = !{!"gx_path_s", !54, i64 0, !6, i64 40, !3, i64 48, !6, i64 56, !6, i64 64, !58, i64 72, !6, i64 88, !3, i64 96, !3, i64 97, !3, i64 98, !3, i64 99, !3, i64 100, !2, i64 104, !2, i64 108, !10, i64 112, !6, i64 120}
!54 = !{!"gx_path_segments_s", !55, i64 0, !57, i64 24}
!55 = !{!"rc_header_s", !56, i64 0, !6, i64 8, !6, i64 16}
!56 = !{!"long", !3, i64 0}
!57 = !{!"psc_", !6, i64 0, !6, i64 8}
!58 = !{!"gs_fixed_rect_s", !10, i64 0, !10, i64 8}
!59 = !{!53, !2, i64 116}
!60 = !{!10, !2, i64 0}
!61 = !{!10, !2, i64 4}
