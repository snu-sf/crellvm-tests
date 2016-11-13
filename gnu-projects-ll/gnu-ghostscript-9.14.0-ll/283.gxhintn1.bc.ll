; ModuleID = './gxhintn1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t1_hinter_s = type { %struct.fraction_matrix, %struct.fraction_matrix, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [110 x %struct.t1_pole_s], %struct.t1_pole_s*, [30 x %struct.t1_hint_s], %struct.t1_hint_s*, [6 x %struct.t1_zone_s], %struct.t1_zone_s*, [10 x i32], i32*, [10 x i32], i32*, [2 x [13 x i32]], [2 x i32*], [13 x i32], i32*, [30 x %struct.t1_hint_range_s], %struct.t1_hint_range_s*, [120 x %struct.t1_hint_applying_s], %struct.t1_hint_applying_s*, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gx_path_s*, %struct.gs_memory_s* }
%struct.fraction_matrix = type { i32, i32, i32, i32, i32, i32 }
%struct.t1_pole_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.t1_hint_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32 }
%struct.t1_zone_s = type { i32, i32, i32, i32, i32 }
%struct.t1_hint_range_s = type { i16, i16, i32 }
%struct.t1_hint_applying_s = type { i32, i32, i32 }
%struct.gx_path_s = type { %struct.gx_path_segments_s, %struct.gs_memory_s*, i32, %struct.gx_path_segments_s*, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.segment_s*, i8, i8, i8, i8, i8, i32, i32, %struct.gs_fixed_point_s, %struct.gx_path_procs_s* }
%struct.gx_path_segments_s = type { %struct.rc_header_s, %struct.psc_ }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.psc_ = type { %struct.subpath_s*, %struct.subpath_s* }
%struct.subpath_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.segment_s*, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.subpath_s* }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gx_path_procs_s = type { i32 (%struct.gx_path_s*, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32)*, i8 (%struct.gx_path_s*, i8)* }
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
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.curve_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }

; Function Attrs: nounwind uwtable
define void @t1_hinter__fix_contour_signs(%struct.t1_hinter_s* %self) #0 {
entry:
  %self.addr = alloca %struct.t1_hinter_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %first_contour = alloca i32, align 4
  %last_contour = alloca i32, align 4
  store %struct.t1_hinter_s* %self, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %subglyph_count = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %1, i32 0, i32 57
  %2 = load i32, i32* %subglyph_count, align 4, !tbaa !5
  %cmp = icmp sge i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.12

if.end:                                           ; preds = %entry
  store i32 1, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !tbaa !11
  %4 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %subglyph_count1 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %4, i32 0, i32 57
  %5 = load i32, i32* %subglyph_count1, align 4, !tbaa !5
  %cmp2 = icmp sle i32 %3, %5
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = bitcast i32* %first_contour to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %i, align 4, !tbaa !11
  %sub = sub nsw i32 %7, 1
  %idxprom = sext i32 %sub to i64
  %8 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %subglyph = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %8, i32 0, i32 44
  %9 = load i32*, i32** %subglyph, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4, !tbaa !11
  store i32 %10, i32* %first_contour, align 4, !tbaa !11
  %11 = bitcast i32* %last_contour to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom3 = sext i32 %12 to i64
  %13 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %subglyph4 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %13, i32 0, i32 44
  %14 = load i32*, i32** %subglyph4, align 8, !tbaa !12
  %arrayidx5 = getelementptr inbounds i32, i32* %14, i64 %idxprom3
  %15 = load i32, i32* %arrayidx5, align 4, !tbaa !11
  %sub6 = sub nsw i32 %15, 1
  store i32 %sub6, i32* %last_contour, align 4, !tbaa !11
  %16 = load i32, i32* %last_contour, align 4, !tbaa !11
  %17 = load i32, i32* %first_contour, align 4, !tbaa !11
  %sub7 = sub nsw i32 %16, %17
  %cmp8 = icmp sge i32 %sub7, 5
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.body
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %for.body
  %18 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %19 = load i32, i32* %first_contour, align 4, !tbaa !11
  %20 = load i32, i32* %last_contour, align 4, !tbaa !11
  call void @t1_hinter__fix_subglyph_contour_signs(%struct.t1_hinter_s* %18, i32 %19, i32 %20) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.9
  %21 = bitcast i32* %last_contour to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i32* %first_contour to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %23 = load i32, i32* %i, align 4, !tbaa !11
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.12

cleanup.12:                                       ; preds = %for.end, %if.then
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %cleanup.dest.13 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.13, label %unreachable [
    i32 0, label %cleanup.cont.14
    i32 1, label %cleanup.cont.14
  ]

cleanup.cont.14:                                  ; preds = %cleanup.12, %cleanup.12
  ret void

unreachable:                                      ; preds = %cleanup.12, %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @t1_hinter__fix_subglyph_contour_signs(%struct.t1_hinter_s* %self, i32 %first_contour, i32 %last_contour) #0 {
entry:
  %self.addr = alloca %struct.t1_hinter_s*, align 8
  %first_contour.addr = alloca i32, align 4
  %last_contour.addr = alloca i32, align 4
  %area = alloca [5 x double], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %a = alloca double, align 8
  %inside = alloca [5 x [5 x i8]], align 16
  %nesting = alloca [5 x i32], align 16
  %bbox = alloca [5 x %struct.gs_rect_s], align 16
  %isolated = alloca [5 x i8], align 1
  %nesting_sum = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %b = alloca i32, align 4
  %e = alloca i32, align 4
  %x27 = alloca i32, align 4
  %y32 = alloca i32, align 4
  %c = alloca i32, align 4
  %b191 = alloca i32, align 4
  %e195 = alloca i32, align 4
  %b314 = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.t1_hinter_s* %self, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  store i32 %first_contour, i32* %first_contour.addr, align 4, !tbaa !11
  store i32 %last_contour, i32* %last_contour.addr, align 4, !tbaa !11
  %0 = bitcast [5 x double]* %area to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast double* %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store double 0.000000e+00, double* %a, align 8, !tbaa !13
  %7 = bitcast [5 x [5 x i8]]* %inside to i8*
  call void @llvm.lifetime.start(i64 25, i8* %7) #1
  %8 = bitcast [5 x i32]* %nesting to i8*
  call void @llvm.lifetime.start(i64 20, i8* %8) #1
  %9 = bitcast [5 x %struct.gs_rect_s]* %bbox to i8*
  call void @llvm.lifetime.start(i64 160, i8* %9) #1
  %10 = bitcast [5 x i8]* %isolated to i8*
  call void @llvm.lifetime.start(i64 5, i8* %10) #1
  %11 = bitcast i32* %nesting_sum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %first_contour.addr, align 4, !tbaa !11
  %13 = load i32, i32* %last_contour.addr, align 4, !tbaa !11
  %cmp = icmp eq i32 %12, %13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.503

if.end:                                           ; preds = %entry
  store i32 0, i32* %k, align 4, !tbaa !11
  %14 = load i32, i32* %first_contour.addr, align 4, !tbaa !11
  store i32 %14, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc.94, %if.end
  %15 = load i32, i32* %i, align 4, !tbaa !11
  %16 = load i32, i32* %last_contour.addr, align 4, !tbaa !11
  %cmp1 = icmp sle i32 %15, %16
  br i1 %cmp1, label %for.body, label %for.end.96

for.body:                                         ; preds = %for.cond
  %17 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %contour = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %19, i32 0, i32 42
  %20 = load i32*, i32** %contour, align 8, !tbaa !14
  %arrayidx = getelementptr inbounds i32, i32* %20, i64 %idxprom
  %21 = load i32, i32* %arrayidx, align 4, !tbaa !11
  store i32 %21, i32* %b, align 4, !tbaa !11
  %22 = bitcast i32* %e to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load i32, i32* %i, align 4, !tbaa !11
  %add = add nsw i32 %23, 1
  %idxprom2 = sext i32 %add to i64
  %24 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %contour3 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %24, i32 0, i32 42
  %25 = load i32*, i32** %contour3, align 8, !tbaa !14
  %arrayidx4 = getelementptr inbounds i32, i32* %25, i64 %idxprom2
  %26 = load i32, i32* %arrayidx4, align 4, !tbaa !11
  %sub = sub nsw i32 %26, 1
  store i32 %sub, i32* %e, align 4, !tbaa !11
  %27 = load i32, i32* %b, align 4, !tbaa !11
  %idxprom5 = sext i32 %27 to i64
  %28 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %28, i32 0, i32 36
  %29 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole, align 8, !tbaa !15
  %arrayidx6 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %29, i64 %idxprom5
  %gx = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx6, i32 0, i32 0
  %30 = load i32, i32* %gx, align 4, !tbaa !16
  %conv = sitofp i32 %30 to double
  %31 = load i32, i32* %k, align 4, !tbaa !11
  %idxprom7 = sext i32 %31 to i64
  %arrayidx8 = getelementptr inbounds [5 x %struct.gs_rect_s], [5 x %struct.gs_rect_s]* %bbox, i32 0, i64 %idxprom7
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %arrayidx8, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  store double %conv, double* %x, align 8, !tbaa !18
  %32 = load i32, i32* %k, align 4, !tbaa !11
  %idxprom9 = sext i32 %32 to i64
  %arrayidx10 = getelementptr inbounds [5 x %struct.gs_rect_s], [5 x %struct.gs_rect_s]* %bbox, i32 0, i64 %idxprom9
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %arrayidx10, i32 0, i32 0
  %x11 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  store double %conv, double* %x11, align 8, !tbaa !21
  %33 = load i32, i32* %b, align 4, !tbaa !11
  %idxprom12 = sext i32 %33 to i64
  %34 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole13 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %34, i32 0, i32 36
  %35 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole13, align 8, !tbaa !15
  %arrayidx14 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %35, i64 %idxprom12
  %gy = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx14, i32 0, i32 1
  %36 = load i32, i32* %gy, align 4, !tbaa !22
  %conv15 = sitofp i32 %36 to double
  %37 = load i32, i32* %k, align 4, !tbaa !11
  %idxprom16 = sext i32 %37 to i64
  %arrayidx17 = getelementptr inbounds [5 x %struct.gs_rect_s], [5 x %struct.gs_rect_s]* %bbox, i32 0, i64 %idxprom16
  %q18 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %arrayidx17, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q18, i32 0, i32 1
  store double %conv15, double* %y, align 8, !tbaa !23
  %38 = load i32, i32* %k, align 4, !tbaa !11
  %idxprom19 = sext i32 %38 to i64
  %arrayidx20 = getelementptr inbounds [5 x %struct.gs_rect_s], [5 x %struct.gs_rect_s]* %bbox, i32 0, i64 %idxprom19
  %p21 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %arrayidx20, i32 0, i32 0
  %y22 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p21, i32 0, i32 1
  store double %conv15, double* %y22, align 8, !tbaa !24
  %39 = load i32, i32* %b, align 4, !tbaa !11
  store i32 %39, i32* %j, align 4, !tbaa !11
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc, %for.body
  %40 = load i32, i32* %j, align 4, !tbaa !11
  %41 = load i32, i32* %e, align 4, !tbaa !11
  %cmp24 = icmp slt i32 %40, %41
  br i1 %cmp24, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.23
  %42 = bitcast i32* %x27 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = load i32, i32* %j, align 4, !tbaa !11
  %idxprom28 = sext i32 %43 to i64
  %44 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole29 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %44, i32 0, i32 36
  %45 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole29, align 8, !tbaa !15
  %arrayidx30 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %45, i64 %idxprom28
  %gx31 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx30, i32 0, i32 0
  %46 = load i32, i32* %gx31, align 4, !tbaa !16
  store i32 %46, i32* %x27, align 4, !tbaa !11
  %47 = bitcast i32* %y32 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = load i32, i32* %j, align 4, !tbaa !11
  %idxprom33 = sext i32 %48 to i64
  %49 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole34 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %49, i32 0, i32 36
  %50 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole34, align 8, !tbaa !15
  %arrayidx35 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %50, i64 %idxprom33
  %gy36 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx35, i32 0, i32 1
  %51 = load i32, i32* %gy36, align 4, !tbaa !22
  store i32 %51, i32* %y32, align 4, !tbaa !11
  %52 = load i32, i32* %k, align 4, !tbaa !11
  %idxprom37 = sext i32 %52 to i64
  %arrayidx38 = getelementptr inbounds [5 x %struct.gs_rect_s], [5 x %struct.gs_rect_s]* %bbox, i32 0, i64 %idxprom37
  %p39 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %arrayidx38, i32 0, i32 0
  %x40 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p39, i32 0, i32 0
  %53 = load double, double* %x40, align 8, !tbaa !21
  %54 = load i32, i32* %x27, align 4, !tbaa !11
  %conv41 = sitofp i32 %54 to double
  %cmp42 = fcmp ogt double %53, %conv41
  br i1 %cmp42, label %if.then.44, label %if.end.50

if.then.44:                                       ; preds = %for.body.26
  %55 = load i32, i32* %x27, align 4, !tbaa !11
  %conv45 = sitofp i32 %55 to double
  %56 = load i32, i32* %k, align 4, !tbaa !11
  %idxprom46 = sext i32 %56 to i64
  %arrayidx47 = getelementptr inbounds [5 x %struct.gs_rect_s], [5 x %struct.gs_rect_s]* %bbox, i32 0, i64 %idxprom46
  %p48 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %arrayidx47, i32 0, i32 0
  %x49 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p48, i32 0, i32 0
  store double %conv45, double* %x49, align 8, !tbaa !21
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.44, %for.body.26
  %57 = load i32, i32* %k, align 4, !tbaa !11
  %idxprom51 = sext i32 %57 to i64
  %arrayidx52 = getelementptr inbounds [5 x %struct.gs_rect_s], [5 x %struct.gs_rect_s]* %bbox, i32 0, i64 %idxprom51
  %q53 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %arrayidx52, i32 0, i32 1
  %x54 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q53, i32 0, i32 0
  %58 = load double, double* %x54, align 8, !tbaa !18
  %59 = load i32, i32* %x27, align 4, !tbaa !11
  %conv55 = sitofp i32 %59 to double
  %cmp56 = fcmp olt double %58, %conv55
  br i1 %cmp56, label %if.then.58, label %if.end.64

if.then.58:                                       ; preds = %if.end.50
  %60 = load i32, i32* %x27, align 4, !tbaa !11
  %conv59 = sitofp i32 %60 to double
  %61 = load i32, i32* %k, align 4, !tbaa !11
  %idxprom60 = sext i32 %61 to i64
  %arrayidx61 = getelementptr inbounds [5 x %struct.gs_rect_s], [5 x %struct.gs_rect_s]* %bbox, i32 0, i64 %idxprom60
  %q62 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %arrayidx61, i32 0, i32 1
  %x63 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q62, i32 0, i32 0
  store double %conv59, double* %x63, align 8, !tbaa !18
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.58, %if.end.50
  %62 = load i32, i32* %k, align 4, !tbaa !11
  %idxprom65 = sext i32 %62 to i64
  %arrayidx66 = getelementptr inbounds [5 x %struct.gs_rect_s], [5 x %struct.gs_rect_s]* %bbox, i32 0, i64 %idxprom65
  %p67 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %arrayidx66, i32 0, i32 0
  %y68 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p67, i32 0, i32 1
  %63 = load double, double* %y68, align 8, !tbaa !24
  %64 = load i32, i32* %y32, align 4, !tbaa !11
  %conv69 = sitofp i32 %64 to double
  %cmp70 = fcmp ogt double %63, %conv69
  br i1 %cmp70, label %if.then.72, label %if.end.78

if.then.72:                                       ; preds = %if.end.64
  %65 = load i32, i32* %y32, align 4, !tbaa !11
  %conv73 = sitofp i32 %65 to double
  %66 = load i32, i32* %k, align 4, !tbaa !11
  %idxprom74 = sext i32 %66 to i64
  %arrayidx75 = getelementptr inbounds [5 x %struct.gs_rect_s], [5 x %struct.gs_rect_s]* %bbox, i32 0, i64 %idxprom74
  %p76 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %arrayidx75, i32 0, i32 0
  %y77 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p76, i32 0, i32 1
  store double %conv73, double* %y77, align 8, !tbaa !24
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.72, %if.end.64
  %67 = load i32, i32* %k, align 4, !tbaa !11
  %idxprom79 = sext i32 %67 to i64
  %arrayidx80 = getelementptr inbounds [5 x %struct.gs_rect_s], [5 x %struct.gs_rect_s]* %bbox, i32 0, i64 %idxprom79
  %q81 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %arrayidx80, i32 0, i32 1
  %y82 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q81, i32 0, i32 1
  %68 = load double, double* %y82, align 8, !tbaa !23
  %69 = load i32, i32* %y32, align 4, !tbaa !11
  %conv83 = sitofp i32 %69 to double
  %cmp84 = fcmp olt double %68, %conv83
  br i1 %cmp84, label %if.then.86, label %if.end.92

if.then.86:                                       ; preds = %if.end.78
  %70 = load i32, i32* %y32, align 4, !tbaa !11
  %conv87 = sitofp i32 %70 to double
  %71 = load i32, i32* %k, align 4, !tbaa !11
  %idxprom88 = sext i32 %71 to i64
  %arrayidx89 = getelementptr inbounds [5 x %struct.gs_rect_s], [5 x %struct.gs_rect_s]* %bbox, i32 0, i64 %idxprom88
  %q90 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %arrayidx89, i32 0, i32 1
  %y91 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q90, i32 0, i32 1
  store double %conv87, double* %y91, align 8, !tbaa !23
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.86, %if.end.78
  %72 = bitcast i32* %y32 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i32* %x27 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.92
  %74 = load i32, i32* %j, align 4, !tbaa !11
  %inc = add nsw i32 %74, 1
  store i32 %inc, i32* %j, align 4, !tbaa !11
  br label %for.cond.23

for.end:                                          ; preds = %for.cond.23
  %75 = load i32, i32* %k, align 4, !tbaa !11
  %inc93 = add nsw i32 %75, 1
  store i32 %inc93, i32* %k, align 4, !tbaa !11
  %76 = bitcast i32* %e to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.end
  %78 = load i32, i32* %i, align 4, !tbaa !11
  %inc95 = add nsw i32 %78, 1
  store i32 %inc95, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.end.96:                                       ; preds = %for.cond
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %isolated, i32 0, i32 0
  %call = call i8* @memset(i8* %arraydecay, i32 0, i64 5) #6
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.161, %for.end.96
  %79 = load i32, i32* %i, align 4, !tbaa !11
  %80 = load i32, i32* %k, align 4, !tbaa !11
  %cmp98 = icmp slt i32 %79, %80
  br i1 %cmp98, label %for.body.100, label %for.end.163

for.body.100:                                     ; preds = %for.cond.97
  %81 = load i32, i32* %i, align 4, !tbaa !11
  %add101 = add nsw i32 %81, 1
  store i32 %add101, i32* %j, align 4, !tbaa !11
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.158, %for.body.100
  %82 = load i32, i32* %j, align 4, !tbaa !11
  %83 = load i32, i32* %k, align 4, !tbaa !11
  %cmp103 = icmp slt i32 %82, %83
  br i1 %cmp103, label %for.body.105, label %for.end.160

for.body.105:                                     ; preds = %for.cond.102
  %84 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom106 = sext i32 %84 to i64
  %arrayidx107 = getelementptr inbounds [5 x %struct.gs_rect_s], [5 x %struct.gs_rect_s]* %bbox, i32 0, i64 %idxprom106
  %p108 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %arrayidx107, i32 0, i32 0
  %x109 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p108, i32 0, i32 0
  %85 = load double, double* %x109, align 8, !tbaa !21
  %86 = load i32, i32* %j, align 4, !tbaa !11
  %idxprom110 = sext i32 %86 to i64
  %arrayidx111 = getelementptr inbounds [5 x %struct.gs_rect_s], [5 x %struct.gs_rect_s]* %bbox, i32 0, i64 %idxprom110
  %q112 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %arrayidx111, i32 0, i32 1
  %x113 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q112, i32 0, i32 0
  %87 = load double, double* %x113, align 8, !tbaa !18
  %cmp114 = fcmp ogt double %85, %87
  br i1 %cmp114, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %for.body.105
  br label %for.inc.158

if.end.117:                                       ; preds = %for.body.105
  %88 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom118 = sext i32 %88 to i64
  %arrayidx119 = getelementptr inbounds [5 x %struct.gs_rect_s], [5 x %struct.gs_rect_s]* %bbox, i32 0, i64 %idxprom118
  %q120 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %arrayidx119, i32 0, i32 1
  %x121 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q120, i32 0, i32 0
  %89 = load double, double* %x121, align 8, !tbaa !18
  %90 = load i32, i32* %j, align 4, !tbaa !11
  %idxprom122 = sext i32 %90 to i64
  %arrayidx123 = getelementptr inbounds [5 x %struct.gs_rect_s], [5 x %struct.gs_rect_s]* %bbox, i32 0, i64 %idxprom122
  %p124 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %arrayidx123, i32 0, i32 0
  %x125 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p124, i32 0, i32 0
  %91 = load double, double* %x125, align 8, !tbaa !21
  %cmp126 = fcmp olt double %89, %91
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.end.117
  br label %for.inc.158

if.end.129:                                       ; preds = %if.end.117
  %92 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom130 = sext i32 %92 to i64
  %arrayidx131 = getelementptr inbounds [5 x %struct.gs_rect_s], [5 x %struct.gs_rect_s]* %bbox, i32 0, i64 %idxprom130
  %p132 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %arrayidx131, i32 0, i32 0
  %y133 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p132, i32 0, i32 1
  %93 = load double, double* %y133, align 8, !tbaa !24
  %94 = load i32, i32* %j, align 4, !tbaa !11
  %idxprom134 = sext i32 %94 to i64
  %arrayidx135 = getelementptr inbounds [5 x %struct.gs_rect_s], [5 x %struct.gs_rect_s]* %bbox, i32 0, i64 %idxprom134
  %q136 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %arrayidx135, i32 0, i32 1
  %y137 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q136, i32 0, i32 1
  %95 = load double, double* %y137, align 8, !tbaa !23
  %cmp138 = fcmp ogt double %93, %95
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %if.end.129
  br label %for.inc.158

if.end.141:                                       ; preds = %if.end.129
  %96 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom142 = sext i32 %96 to i64
  %arrayidx143 = getelementptr inbounds [5 x %struct.gs_rect_s], [5 x %struct.gs_rect_s]* %bbox, i32 0, i64 %idxprom142
  %q144 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %arrayidx143, i32 0, i32 1
  %y145 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q144, i32 0, i32 1
  %97 = load double, double* %y145, align 8, !tbaa !23
  %98 = load i32, i32* %j, align 4, !tbaa !11
  %idxprom146 = sext i32 %98 to i64
  %arrayidx147 = getelementptr inbounds [5 x %struct.gs_rect_s], [5 x %struct.gs_rect_s]* %bbox, i32 0, i64 %idxprom146
  %p148 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %arrayidx147, i32 0, i32 0
  %y149 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p148, i32 0, i32 1
  %99 = load double, double* %y149, align 8, !tbaa !24
  %cmp150 = fcmp olt double %97, %99
  br i1 %cmp150, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %if.end.141
  br label %for.inc.158

if.end.153:                                       ; preds = %if.end.141
  %100 = load i32, i32* %j, align 4, !tbaa !11
  %idxprom154 = sext i32 %100 to i64
  %arrayidx155 = getelementptr inbounds [5 x i8], [5 x i8]* %isolated, i32 0, i64 %idxprom154
  store i8 1, i8* %arrayidx155, align 1, !tbaa !25
  %101 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom156 = sext i32 %101 to i64
  %arrayidx157 = getelementptr inbounds [5 x i8], [5 x i8]* %isolated, i32 0, i64 %idxprom156
  store i8 1, i8* %arrayidx157, align 1, !tbaa !25
  br label %for.inc.158

for.inc.158:                                      ; preds = %if.end.153, %if.then.152, %if.then.140, %if.then.128, %if.then.116
  %102 = load i32, i32* %j, align 4, !tbaa !11
  %inc159 = add nsw i32 %102, 1
  store i32 %inc159, i32* %j, align 4, !tbaa !11
  br label %for.cond.102

for.end.160:                                      ; preds = %for.cond.102
  br label %for.inc.161

for.inc.161:                                      ; preds = %for.end.160
  %103 = load i32, i32* %i, align 4, !tbaa !11
  %inc162 = add nsw i32 %103, 1
  store i32 %inc162, i32* %i, align 4, !tbaa !11
  br label %for.cond.97

for.end.163:                                      ; preds = %for.cond.97
  store i32 0, i32* %j, align 4, !tbaa !11
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond.164

for.cond.164:                                     ; preds = %for.inc.177, %for.end.163
  %104 = load i32, i32* %i, align 4, !tbaa !11
  %105 = load i32, i32* %k, align 4, !tbaa !11
  %cmp165 = icmp slt i32 %104, %105
  br i1 %cmp165, label %for.body.167, label %for.end.179

for.body.167:                                     ; preds = %for.cond.164
  %106 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom168 = sext i32 %106 to i64
  %arrayidx169 = getelementptr inbounds [5 x i8], [5 x i8]* %isolated, i32 0, i64 %idxprom168
  %107 = load i8, i8* %arrayidx169, align 1, !tbaa !25
  %tobool = icmp ne i8 %107, 0
  br i1 %tobool, label %if.then.170, label %if.end.176

if.then.170:                                      ; preds = %for.body.167
  %108 = load i32, i32* %first_contour.addr, align 4, !tbaa !11
  %109 = load i32, i32* %i, align 4, !tbaa !11
  %add171 = add nsw i32 %108, %109
  %conv172 = trunc i32 %add171 to i8
  %110 = load i32, i32* %j, align 4, !tbaa !11
  %idxprom173 = sext i32 %110 to i64
  %arrayidx174 = getelementptr inbounds [5 x i8], [5 x i8]* %isolated, i32 0, i64 %idxprom173
  store i8 %conv172, i8* %arrayidx174, align 1, !tbaa !25
  %111 = load i32, i32* %j, align 4, !tbaa !11
  %inc175 = add nsw i32 %111, 1
  store i32 %inc175, i32* %j, align 4, !tbaa !11
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.170, %for.body.167
  br label %for.inc.177

for.inc.177:                                      ; preds = %if.end.176
  %112 = load i32, i32* %i, align 4, !tbaa !11
  %inc178 = add nsw i32 %112, 1
  store i32 %inc178, i32* %i, align 4, !tbaa !11
  br label %for.cond.164

for.end.179:                                      ; preds = %for.cond.164
  %113 = load i32, i32* %j, align 4, !tbaa !11
  store i32 %113, i32* %k, align 4, !tbaa !11
  %114 = load i32, i32* %k, align 4, !tbaa !11
  %cmp180 = icmp sle i32 %114, 1
  br i1 %cmp180, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %for.end.179
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.503

if.end.183:                                       ; preds = %for.end.179
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond.184

for.cond.184:                                     ; preds = %for.inc.282, %if.end.183
  %115 = load i32, i32* %i, align 4, !tbaa !11
  %116 = load i32, i32* %k, align 4, !tbaa !11
  %cmp185 = icmp slt i32 %115, %116
  br i1 %cmp185, label %for.body.187, label %for.end.284

for.body.187:                                     ; preds = %for.cond.184
  %117 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %117) #1
  %118 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom188 = sext i32 %118 to i64
  %arrayidx189 = getelementptr inbounds [5 x i8], [5 x i8]* %isolated, i32 0, i64 %idxprom188
  %119 = load i8, i8* %arrayidx189, align 1, !tbaa !25
  %conv190 = zext i8 %119 to i32
  store i32 %conv190, i32* %c, align 4, !tbaa !11
  %120 = bitcast i32* %b191 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %120) #1
  %121 = load i32, i32* %c, align 4, !tbaa !11
  %idxprom192 = sext i32 %121 to i64
  %122 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %contour193 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %122, i32 0, i32 42
  %123 = load i32*, i32** %contour193, align 8, !tbaa !14
  %arrayidx194 = getelementptr inbounds i32, i32* %123, i64 %idxprom192
  %124 = load i32, i32* %arrayidx194, align 4, !tbaa !11
  store i32 %124, i32* %b191, align 4, !tbaa !11
  %125 = bitcast i32* %e195 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %125) #1
  %126 = load i32, i32* %c, align 4, !tbaa !11
  %add196 = add nsw i32 %126, 1
  %idxprom197 = sext i32 %add196 to i64
  %127 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %contour198 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %127, i32 0, i32 42
  %128 = load i32*, i32** %contour198, align 8, !tbaa !14
  %arrayidx199 = getelementptr inbounds i32, i32* %128, i64 %idxprom197
  %129 = load i32, i32* %arrayidx199, align 4, !tbaa !11
  %sub200 = sub nsw i32 %129, 1
  store i32 %sub200, i32* %e195, align 4, !tbaa !11
  store double 0.000000e+00, double* %a, align 8, !tbaa !13
  %130 = load i32, i32* %b191, align 4, !tbaa !11
  store i32 %130, i32* %j, align 4, !tbaa !11
  br label %for.cond.201

for.cond.201:                                     ; preds = %if.end.278, %for.body.187
  %131 = load i32, i32* %j, align 4, !tbaa !11
  %132 = load i32, i32* %e195, align 4, !tbaa !11
  %cmp202 = icmp slt i32 %131, %132
  br i1 %cmp202, label %for.body.204, label %for.end.279

for.body.204:                                     ; preds = %for.cond.201
  %133 = load i32, i32* %j, align 4, !tbaa !11
  %add205 = add nsw i32 %133, 1
  %idxprom206 = sext i32 %add205 to i64
  %134 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole207 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %134, i32 0, i32 36
  %135 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole207, align 8, !tbaa !15
  %arrayidx208 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %135, i64 %idxprom206
  %type = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx208, i32 0, i32 6
  %136 = load i32, i32* %type, align 4, !tbaa !26
  %cmp209 = icmp ne i32 %136, 0
  br i1 %cmp209, label %if.then.211, label %if.else

if.then.211:                                      ; preds = %for.body.204
  %137 = load i32, i32* %j, align 4, !tbaa !11
  %add212 = add nsw i32 %137, 0
  %idxprom213 = sext i32 %add212 to i64
  %138 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole214 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %138, i32 0, i32 36
  %139 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole214, align 8, !tbaa !15
  %arrayidx215 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %139, i64 %idxprom213
  %gx216 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx215, i32 0, i32 0
  %140 = load i32, i32* %gx216, align 4, !tbaa !16
  %141 = load i32, i32* %j, align 4, !tbaa !11
  %add217 = add nsw i32 %141, 0
  %idxprom218 = sext i32 %add217 to i64
  %142 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole219 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %142, i32 0, i32 36
  %143 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole219, align 8, !tbaa !15
  %arrayidx220 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %143, i64 %idxprom218
  %gy221 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx220, i32 0, i32 1
  %144 = load i32, i32* %gy221, align 4, !tbaa !22
  %145 = load i32, i32* %j, align 4, !tbaa !11
  %add222 = add nsw i32 %145, 1
  %idxprom223 = sext i32 %add222 to i64
  %146 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole224 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %146, i32 0, i32 36
  %147 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole224, align 8, !tbaa !15
  %arrayidx225 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %147, i64 %idxprom223
  %gx226 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx225, i32 0, i32 0
  %148 = load i32, i32* %gx226, align 4, !tbaa !16
  %149 = load i32, i32* %j, align 4, !tbaa !11
  %add227 = add nsw i32 %149, 1
  %idxprom228 = sext i32 %add227 to i64
  %150 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole229 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %150, i32 0, i32 36
  %151 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole229, align 8, !tbaa !15
  %arrayidx230 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %151, i64 %idxprom228
  %gy231 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx230, i32 0, i32 1
  %152 = load i32, i32* %gy231, align 4, !tbaa !22
  %call232 = call double @line_area_2(i32 %140, i32 %144, i32 %148, i32 %152) #5
  %153 = load double, double* %a, align 8, !tbaa !13
  %add233 = fadd double %153, %call232
  store double %add233, double* %a, align 8, !tbaa !13
  %154 = load i32, i32* %j, align 4, !tbaa !11
  %inc234 = add nsw i32 %154, 1
  store i32 %inc234, i32* %j, align 4, !tbaa !11
  br label %if.end.278

if.else:                                          ; preds = %for.body.204
  %155 = load i32, i32* %j, align 4, !tbaa !11
  %add235 = add nsw i32 %155, 0
  %idxprom236 = sext i32 %add235 to i64
  %156 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole237 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %156, i32 0, i32 36
  %157 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole237, align 8, !tbaa !15
  %arrayidx238 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %157, i64 %idxprom236
  %gx239 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx238, i32 0, i32 0
  %158 = load i32, i32* %gx239, align 4, !tbaa !16
  %159 = load i32, i32* %j, align 4, !tbaa !11
  %add240 = add nsw i32 %159, 0
  %idxprom241 = sext i32 %add240 to i64
  %160 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole242 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %160, i32 0, i32 36
  %161 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole242, align 8, !tbaa !15
  %arrayidx243 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %161, i64 %idxprom241
  %gy244 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx243, i32 0, i32 1
  %162 = load i32, i32* %gy244, align 4, !tbaa !22
  %163 = load i32, i32* %j, align 4, !tbaa !11
  %add245 = add nsw i32 %163, 1
  %idxprom246 = sext i32 %add245 to i64
  %164 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole247 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %164, i32 0, i32 36
  %165 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole247, align 8, !tbaa !15
  %arrayidx248 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %165, i64 %idxprom246
  %gx249 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx248, i32 0, i32 0
  %166 = load i32, i32* %gx249, align 4, !tbaa !16
  %167 = load i32, i32* %j, align 4, !tbaa !11
  %add250 = add nsw i32 %167, 1
  %idxprom251 = sext i32 %add250 to i64
  %168 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole252 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %168, i32 0, i32 36
  %169 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole252, align 8, !tbaa !15
  %arrayidx253 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %169, i64 %idxprom251
  %gy254 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx253, i32 0, i32 1
  %170 = load i32, i32* %gy254, align 4, !tbaa !22
  %171 = load i32, i32* %j, align 4, !tbaa !11
  %add255 = add nsw i32 %171, 2
  %idxprom256 = sext i32 %add255 to i64
  %172 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole257 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %172, i32 0, i32 36
  %173 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole257, align 8, !tbaa !15
  %arrayidx258 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %173, i64 %idxprom256
  %gx259 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx258, i32 0, i32 0
  %174 = load i32, i32* %gx259, align 4, !tbaa !16
  %175 = load i32, i32* %j, align 4, !tbaa !11
  %add260 = add nsw i32 %175, 2
  %idxprom261 = sext i32 %add260 to i64
  %176 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole262 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %176, i32 0, i32 36
  %177 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole262, align 8, !tbaa !15
  %arrayidx263 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %177, i64 %idxprom261
  %gy264 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx263, i32 0, i32 1
  %178 = load i32, i32* %gy264, align 4, !tbaa !22
  %179 = load i32, i32* %j, align 4, !tbaa !11
  %add265 = add nsw i32 %179, 3
  %idxprom266 = sext i32 %add265 to i64
  %180 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole267 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %180, i32 0, i32 36
  %181 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole267, align 8, !tbaa !15
  %arrayidx268 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %181, i64 %idxprom266
  %gx269 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx268, i32 0, i32 0
  %182 = load i32, i32* %gx269, align 4, !tbaa !16
  %183 = load i32, i32* %j, align 4, !tbaa !11
  %add270 = add nsw i32 %183, 3
  %idxprom271 = sext i32 %add270 to i64
  %184 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole272 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %184, i32 0, i32 36
  %185 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole272, align 8, !tbaa !15
  %arrayidx273 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %185, i64 %idxprom271
  %gy274 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx273, i32 0, i32 1
  %186 = load i32, i32* %gy274, align 4, !tbaa !22
  %call275 = call double @bezier_area_2(i32 %158, i32 %162, i32 %166, i32 %170, i32 %174, i32 %178, i32 %182, i32 %186) #5
  %187 = load double, double* %a, align 8, !tbaa !13
  %add276 = fadd double %187, %call275
  store double %add276, double* %a, align 8, !tbaa !13
  %188 = load i32, i32* %j, align 4, !tbaa !11
  %add277 = add nsw i32 %188, 3
  store i32 %add277, i32* %j, align 4, !tbaa !11
  br label %if.end.278

if.end.278:                                       ; preds = %if.else, %if.then.211
  br label %for.cond.201

for.end.279:                                      ; preds = %for.cond.201
  %189 = load double, double* %a, align 8, !tbaa !13
  %190 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom280 = sext i32 %190 to i64
  %arrayidx281 = getelementptr inbounds [5 x double], [5 x double]* %area, i32 0, i64 %idxprom280
  store double %189, double* %arrayidx281, align 8, !tbaa !13
  %191 = bitcast i32* %e195 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #1
  %192 = bitcast i32* %b191 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  br label %for.inc.282

for.inc.282:                                      ; preds = %for.end.279
  %194 = load i32, i32* %i, align 4, !tbaa !11
  %inc283 = add nsw i32 %194, 1
  store i32 %inc283, i32* %i, align 4, !tbaa !11
  br label %for.cond.184

for.end.284:                                      ; preds = %for.cond.184
  store i32 1, i32* %i, align 4, !tbaa !11
  br label %for.cond.285

for.cond.285:                                     ; preds = %for.inc.296, %for.end.284
  %195 = load i32, i32* %i, align 4, !tbaa !11
  %196 = load i32, i32* %k, align 4, !tbaa !11
  %cmp286 = icmp slt i32 %195, %196
  br i1 %cmp286, label %for.body.288, label %for.end.298

for.body.288:                                     ; preds = %for.cond.285
  %arrayidx289 = getelementptr inbounds [5 x double], [5 x double]* %area, i32 0, i64 0
  %197 = load double, double* %arrayidx289, align 8, !tbaa !13
  %198 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom290 = sext i32 %198 to i64
  %arrayidx291 = getelementptr inbounds [5 x double], [5 x double]* %area, i32 0, i64 %idxprom290
  %199 = load double, double* %arrayidx291, align 8, !tbaa !13
  %mul = fmul double %197, %199
  %cmp292 = fcmp olt double %mul, 0.000000e+00
  br i1 %cmp292, label %if.then.294, label %if.end.295

if.then.294:                                      ; preds = %for.body.288
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.503

if.end.295:                                       ; preds = %for.body.288
  br label %for.inc.296

for.inc.296:                                      ; preds = %if.end.295
  %200 = load i32, i32* %i, align 4, !tbaa !11
  %inc297 = add nsw i32 %200, 1
  store i32 %inc297, i32* %i, align 4, !tbaa !11
  br label %for.cond.285

for.end.298:                                      ; preds = %for.cond.285
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond.299

for.cond.299:                                     ; preds = %for.inc.356, %for.end.298
  %201 = load i32, i32* %i, align 4, !tbaa !11
  %202 = load i32, i32* %k, align 4, !tbaa !11
  %cmp300 = icmp slt i32 %201, %202
  br i1 %cmp300, label %for.body.302, label %for.end.358

for.body.302:                                     ; preds = %for.cond.299
  %203 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom303 = sext i32 %203 to i64
  %204 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom304 = sext i32 %204 to i64
  %arrayidx305 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %inside, i32 0, i64 %idxprom304
  %arrayidx306 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx305, i32 0, i64 %idxprom303
  store i8 0, i8* %arrayidx306, align 1, !tbaa !25
  store i32 0, i32* %j, align 4, !tbaa !11
  br label %for.cond.307

for.cond.307:                                     ; preds = %for.inc.353, %for.body.302
  %205 = load i32, i32* %j, align 4, !tbaa !11
  %206 = load i32, i32* %k, align 4, !tbaa !11
  %cmp308 = icmp slt i32 %205, %206
  br i1 %cmp308, label %for.body.310, label %for.end.355

for.body.310:                                     ; preds = %for.cond.307
  %207 = load i32, i32* %i, align 4, !tbaa !11
  %208 = load i32, i32* %j, align 4, !tbaa !11
  %cmp311 = icmp ne i32 %207, %208
  br i1 %cmp311, label %if.then.313, label %if.end.352

if.then.313:                                      ; preds = %for.body.310
  %209 = bitcast i32* %b314 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %209) #1
  %210 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom315 = sext i32 %210 to i64
  %arrayidx316 = getelementptr inbounds [5 x i8], [5 x i8]* %isolated, i32 0, i64 %idxprom315
  %211 = load i8, i8* %arrayidx316, align 1, !tbaa !25
  %idxprom317 = zext i8 %211 to i64
  %212 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %contour318 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %212, i32 0, i32 42
  %213 = load i32*, i32** %contour318, align 8, !tbaa !14
  %arrayidx319 = getelementptr inbounds i32, i32* %213, i64 %idxprom317
  %214 = load i32, i32* %arrayidx319, align 4, !tbaa !11
  store i32 %214, i32* %b314, align 4, !tbaa !11
  %215 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %215) #1
  %216 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %217 = load i32, i32* %b314, align 4, !tbaa !11
  %idxprom320 = sext i32 %217 to i64
  %218 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole321 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %218, i32 0, i32 36
  %219 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole321, align 8, !tbaa !15
  %arrayidx322 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %219, i64 %idxprom320
  %gx323 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx322, i32 0, i32 0
  %220 = load i32, i32* %gx323, align 4, !tbaa !16
  %221 = load i32, i32* %b314, align 4, !tbaa !11
  %idxprom324 = sext i32 %221 to i64
  %222 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole325 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %222, i32 0, i32 36
  %223 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole325, align 8, !tbaa !15
  %arrayidx326 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %223, i64 %idxprom324
  %gy327 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx326, i32 0, i32 1
  %224 = load i32, i32* %gy327, align 4, !tbaa !22
  %225 = load i32, i32* %j, align 4, !tbaa !11
  %idxprom328 = sext i32 %225 to i64
  %arrayidx329 = getelementptr inbounds [5 x i8], [5 x i8]* %isolated, i32 0, i64 %idxprom328
  %226 = load i8, i8* %arrayidx329, align 1, !tbaa !25
  %conv330 = zext i8 %226 to i32
  %call331 = call i32 @t1_hinter__is_inside(%struct.t1_hinter_s* %216, i32 %220, i32 %224, i32 %conv330) #5
  store i32 %call331, i32* %code, align 4, !tbaa !11
  %227 = load i32, i32* %code, align 4, !tbaa !11
  %cmp332 = icmp slt i32 %227, 0
  br i1 %cmp332, label %if.then.334, label %if.end.335

if.then.334:                                      ; preds = %if.then.313
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.335:                                       ; preds = %if.then.313
  %228 = load i32, i32* %code, align 4, !tbaa !11
  %conv336 = trunc i32 %228 to i8
  %229 = load i32, i32* %j, align 4, !tbaa !11
  %idxprom337 = sext i32 %229 to i64
  %230 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom338 = sext i32 %230 to i64
  %arrayidx339 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %inside, i32 0, i64 %idxprom338
  %arrayidx340 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx339, i32 0, i64 %idxprom337
  store i8 %conv336, i8* %arrayidx340, align 1, !tbaa !25
  %231 = load i32, i32* %i, align 4, !tbaa !11
  %232 = load i32, i32* %j, align 4, !tbaa !11
  %cmp341 = icmp sgt i32 %231, %232
  br i1 %cmp341, label %land.lhs.true, label %if.end.350

land.lhs.true:                                    ; preds = %if.end.335
  %233 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom343 = sext i32 %233 to i64
  %234 = load i32, i32* %j, align 4, !tbaa !11
  %idxprom344 = sext i32 %234 to i64
  %arrayidx345 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %inside, i32 0, i64 %idxprom344
  %arrayidx346 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx345, i32 0, i64 %idxprom343
  %235 = load i8, i8* %arrayidx346, align 1, !tbaa !25
  %conv347 = zext i8 %235 to i32
  %tobool348 = icmp ne i32 %conv347, 0
  br i1 %tobool348, label %if.then.349, label %if.end.350

if.then.349:                                      ; preds = %land.lhs.true
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.350:                                       ; preds = %land.lhs.true, %if.end.335
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.350, %if.then.349, %if.then.334
  %236 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %236) #1
  %237 = bitcast i32* %b314 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %237) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.503 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.352

if.end.352:                                       ; preds = %cleanup.cont, %for.body.310
  br label %for.inc.353

for.inc.353:                                      ; preds = %if.end.352
  %238 = load i32, i32* %j, align 4, !tbaa !11
  %inc354 = add nsw i32 %238, 1
  store i32 %inc354, i32* %j, align 4, !tbaa !11
  br label %for.cond.307

for.end.355:                                      ; preds = %for.cond.307
  br label %for.inc.356

for.inc.356:                                      ; preds = %for.end.355
  %239 = load i32, i32* %i, align 4, !tbaa !11
  %inc357 = add nsw i32 %239, 1
  store i32 %inc357, i32* %i, align 4, !tbaa !11
  br label %for.cond.299

for.end.358:                                      ; preds = %for.cond.299
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end.358
  store i32 0, i32* %m, align 4, !tbaa !11
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond.359

for.cond.359:                                     ; preds = %for.inc.417, %do.body
  %240 = load i32, i32* %i, align 4, !tbaa !11
  %241 = load i32, i32* %k, align 4, !tbaa !11
  %cmp360 = icmp slt i32 %240, %241
  br i1 %cmp360, label %for.body.362, label %for.end.419

for.body.362:                                     ; preds = %for.cond.359
  store i32 0, i32* %j, align 4, !tbaa !11
  br label %for.cond.363

for.cond.363:                                     ; preds = %for.inc.414, %for.body.362
  %242 = load i32, i32* %j, align 4, !tbaa !11
  %243 = load i32, i32* %k, align 4, !tbaa !11
  %cmp364 = icmp slt i32 %242, %243
  br i1 %cmp364, label %for.body.366, label %for.end.416

for.body.366:                                     ; preds = %for.cond.363
  %244 = load i32, i32* %i, align 4, !tbaa !11
  %245 = load i32, i32* %j, align 4, !tbaa !11
  %cmp367 = icmp ne i32 %244, %245
  br i1 %cmp367, label %if.then.369, label %if.end.413

if.then.369:                                      ; preds = %for.body.366
  store i32 0, i32* %l, align 4, !tbaa !11
  br label %for.cond.370

for.cond.370:                                     ; preds = %for.inc.410, %if.then.369
  %246 = load i32, i32* %l, align 4, !tbaa !11
  %247 = load i32, i32* %k, align 4, !tbaa !11
  %cmp371 = icmp slt i32 %246, %247
  br i1 %cmp371, label %for.body.373, label %for.end.412

for.body.373:                                     ; preds = %for.cond.370
  %248 = load i32, i32* %j, align 4, !tbaa !11
  %249 = load i32, i32* %l, align 4, !tbaa !11
  %cmp374 = icmp ne i32 %248, %249
  br i1 %cmp374, label %land.lhs.true.376, label %if.end.409

land.lhs.true.376:                                ; preds = %for.body.373
  %250 = load i32, i32* %j, align 4, !tbaa !11
  %idxprom377 = sext i32 %250 to i64
  %251 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom378 = sext i32 %251 to i64
  %arrayidx379 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %inside, i32 0, i64 %idxprom378
  %arrayidx380 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx379, i32 0, i64 %idxprom377
  %252 = load i8, i8* %arrayidx380, align 1, !tbaa !25
  %conv381 = zext i8 %252 to i32
  %tobool382 = icmp ne i32 %conv381, 0
  br i1 %tobool382, label %land.lhs.true.383, label %if.end.409

land.lhs.true.383:                                ; preds = %land.lhs.true.376
  %253 = load i32, i32* %l, align 4, !tbaa !11
  %idxprom384 = sext i32 %253 to i64
  %254 = load i32, i32* %j, align 4, !tbaa !11
  %idxprom385 = sext i32 %254 to i64
  %arrayidx386 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %inside, i32 0, i64 %idxprom385
  %arrayidx387 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx386, i32 0, i64 %idxprom384
  %255 = load i8, i8* %arrayidx387, align 1, !tbaa !25
  %conv388 = zext i8 %255 to i32
  %tobool389 = icmp ne i32 %conv388, 0
  br i1 %tobool389, label %if.then.390, label %if.end.409

if.then.390:                                      ; preds = %land.lhs.true.383
  %256 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom391 = sext i32 %256 to i64
  %257 = load i32, i32* %l, align 4, !tbaa !11
  %idxprom392 = sext i32 %257 to i64
  %arrayidx393 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %inside, i32 0, i64 %idxprom392
  %arrayidx394 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx393, i32 0, i64 %idxprom391
  %258 = load i8, i8* %arrayidx394, align 1, !tbaa !25
  %tobool395 = icmp ne i8 %258, 0
  br i1 %tobool395, label %if.then.396, label %if.end.397

if.then.396:                                      ; preds = %if.then.390
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.503

if.end.397:                                       ; preds = %if.then.390
  %259 = load i32, i32* %l, align 4, !tbaa !11
  %idxprom398 = sext i32 %259 to i64
  %260 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom399 = sext i32 %260 to i64
  %arrayidx400 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %inside, i32 0, i64 %idxprom399
  %arrayidx401 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx400, i32 0, i64 %idxprom398
  %261 = load i8, i8* %arrayidx401, align 1, !tbaa !25
  %tobool402 = icmp ne i8 %261, 0
  br i1 %tobool402, label %if.end.404, label %if.then.403

if.then.403:                                      ; preds = %if.end.397
  store i32 1, i32* %m, align 4, !tbaa !11
  br label %if.end.404

if.end.404:                                       ; preds = %if.then.403, %if.end.397
  %262 = load i32, i32* %l, align 4, !tbaa !11
  %idxprom405 = sext i32 %262 to i64
  %263 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom406 = sext i32 %263 to i64
  %arrayidx407 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %inside, i32 0, i64 %idxprom406
  %arrayidx408 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx407, i32 0, i64 %idxprom405
  store i8 1, i8* %arrayidx408, align 1, !tbaa !25
  br label %if.end.409

if.end.409:                                       ; preds = %if.end.404, %land.lhs.true.383, %land.lhs.true.376, %for.body.373
  br label %for.inc.410

for.inc.410:                                      ; preds = %if.end.409
  %264 = load i32, i32* %l, align 4, !tbaa !11
  %inc411 = add nsw i32 %264, 1
  store i32 %inc411, i32* %l, align 4, !tbaa !11
  br label %for.cond.370

for.end.412:                                      ; preds = %for.cond.370
  br label %if.end.413

if.end.413:                                       ; preds = %for.end.412, %for.body.366
  br label %for.inc.414

for.inc.414:                                      ; preds = %if.end.413
  %265 = load i32, i32* %j, align 4, !tbaa !11
  %inc415 = add nsw i32 %265, 1
  store i32 %inc415, i32* %j, align 4, !tbaa !11
  br label %for.cond.363

for.end.416:                                      ; preds = %for.cond.363
  br label %for.inc.417

for.inc.417:                                      ; preds = %for.end.416
  %266 = load i32, i32* %i, align 4, !tbaa !11
  %inc418 = add nsw i32 %266, 1
  store i32 %inc418, i32* %i, align 4, !tbaa !11
  br label %for.cond.359

for.end.419:                                      ; preds = %for.cond.359
  br label %do.cond

do.cond:                                          ; preds = %for.end.419
  %267 = load i32, i32* %m, align 4, !tbaa !11
  %tobool420 = icmp ne i32 %267, 0
  br i1 %tobool420, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %nesting_sum, align 4, !tbaa !11
  %arraydecay421 = getelementptr inbounds [5 x i32], [5 x i32]* %nesting, i32 0, i32 0
  %268 = bitcast i32* %arraydecay421 to i8*
  %call422 = call i8* @memset(i8* %268, i32 0, i64 20) #6
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond.423

for.cond.423:                                     ; preds = %for.inc.445, %do.end
  %269 = load i32, i32* %i, align 4, !tbaa !11
  %270 = load i32, i32* %k, align 4, !tbaa !11
  %cmp424 = icmp slt i32 %269, %270
  br i1 %cmp424, label %for.body.426, label %for.end.447

for.body.426:                                     ; preds = %for.cond.423
  store i32 0, i32* %j, align 4, !tbaa !11
  br label %for.cond.427

for.cond.427:                                     ; preds = %for.inc.442, %for.body.426
  %271 = load i32, i32* %j, align 4, !tbaa !11
  %272 = load i32, i32* %k, align 4, !tbaa !11
  %cmp428 = icmp slt i32 %271, %272
  br i1 %cmp428, label %for.body.430, label %for.end.444

for.body.430:                                     ; preds = %for.cond.427
  %273 = load i32, i32* %j, align 4, !tbaa !11
  %idxprom431 = sext i32 %273 to i64
  %274 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom432 = sext i32 %274 to i64
  %arrayidx433 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %inside, i32 0, i64 %idxprom432
  %arrayidx434 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx433, i32 0, i64 %idxprom431
  %275 = load i8, i8* %arrayidx434, align 1, !tbaa !25
  %tobool435 = icmp ne i8 %275, 0
  br i1 %tobool435, label %if.then.436, label %if.end.441

if.then.436:                                      ; preds = %for.body.430
  %276 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom437 = sext i32 %276 to i64
  %arrayidx438 = getelementptr inbounds [5 x i32], [5 x i32]* %nesting, i32 0, i64 %idxprom437
  %277 = load i32, i32* %arrayidx438, align 4, !tbaa !11
  %inc439 = add nsw i32 %277, 1
  store i32 %inc439, i32* %arrayidx438, align 4, !tbaa !11
  %278 = load i32, i32* %nesting_sum, align 4, !tbaa !11
  %inc440 = add nsw i32 %278, 1
  store i32 %inc440, i32* %nesting_sum, align 4, !tbaa !11
  br label %if.end.441

if.end.441:                                       ; preds = %if.then.436, %for.body.430
  br label %for.inc.442

for.inc.442:                                      ; preds = %if.end.441
  %279 = load i32, i32* %j, align 4, !tbaa !11
  %inc443 = add nsw i32 %279, 1
  store i32 %inc443, i32* %j, align 4, !tbaa !11
  br label %for.cond.427

for.end.444:                                      ; preds = %for.cond.427
  br label %for.inc.445

for.inc.445:                                      ; preds = %for.end.444
  %280 = load i32, i32* %i, align 4, !tbaa !11
  %inc446 = add nsw i32 %280, 1
  store i32 %inc446, i32* %i, align 4, !tbaa !11
  br label %for.cond.423

for.end.447:                                      ; preds = %for.cond.423
  %281 = load i32, i32* %nesting_sum, align 4, !tbaa !11
  %cmp448 = icmp eq i32 %281, 0
  br i1 %cmp448, label %if.then.450, label %if.end.451

if.then.450:                                      ; preds = %for.end.447
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.503

if.end.451:                                       ; preds = %for.end.447
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond.452

for.cond.452:                                     ; preds = %for.inc.480, %if.end.451
  %282 = load i32, i32* %i, align 4, !tbaa !11
  %283 = load i32, i32* %k, align 4, !tbaa !11
  %cmp453 = icmp slt i32 %282, %283
  br i1 %cmp453, label %for.body.455, label %for.end.482

for.body.455:                                     ; preds = %for.cond.452
  store i32 0, i32* %j, align 4, !tbaa !11
  br label %for.cond.456

for.cond.456:                                     ; preds = %for.inc.477, %for.body.455
  %284 = load i32, i32* %j, align 4, !tbaa !11
  %285 = load i32, i32* %k, align 4, !tbaa !11
  %cmp457 = icmp slt i32 %284, %285
  br i1 %cmp457, label %for.body.459, label %for.end.479

for.body.459:                                     ; preds = %for.cond.456
  %286 = load i32, i32* %j, align 4, !tbaa !11
  %idxprom460 = sext i32 %286 to i64
  %287 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom461 = sext i32 %287 to i64
  %arrayidx462 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %inside, i32 0, i64 %idxprom461
  %arrayidx463 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx462, i32 0, i64 %idxprom460
  %288 = load i8, i8* %arrayidx463, align 1, !tbaa !25
  %tobool464 = icmp ne i8 %288, 0
  br i1 %tobool464, label %if.then.465, label %if.end.476

if.then.465:                                      ; preds = %for.body.459
  %289 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %290 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom466 = sext i32 %290 to i64
  %arrayidx467 = getelementptr inbounds [5 x i8], [5 x i8]* %isolated, i32 0, i64 %idxprom466
  %291 = load i8, i8* %arrayidx467, align 1, !tbaa !25
  %conv468 = zext i8 %291 to i32
  %292 = load i32, i32* %j, align 4, !tbaa !11
  %idxprom469 = sext i32 %292 to i64
  %arrayidx470 = getelementptr inbounds [5 x i8], [5 x i8]* %isolated, i32 0, i64 %idxprom469
  %293 = load i8, i8* %arrayidx470, align 1, !tbaa !25
  %conv471 = zext i8 %293 to i32
  %call472 = call i32 @t1_hinter__contour_intersection(%struct.t1_hinter_s* %289, i32 %conv468, i32 %conv471) #5
  %tobool473 = icmp ne i32 %call472, 0
  br i1 %tobool473, label %if.then.474, label %if.end.475

if.then.474:                                      ; preds = %if.then.465
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.503

if.end.475:                                       ; preds = %if.then.465
  br label %if.end.476

if.end.476:                                       ; preds = %if.end.475, %for.body.459
  br label %for.inc.477

for.inc.477:                                      ; preds = %if.end.476
  %294 = load i32, i32* %j, align 4, !tbaa !11
  %inc478 = add nsw i32 %294, 1
  store i32 %inc478, i32* %j, align 4, !tbaa !11
  br label %for.cond.456

for.end.479:                                      ; preds = %for.cond.456
  br label %for.inc.480

for.inc.480:                                      ; preds = %for.end.479
  %295 = load i32, i32* %i, align 4, !tbaa !11
  %inc481 = add nsw i32 %295, 1
  store i32 %inc481, i32* %i, align 4, !tbaa !11
  br label %for.cond.452

for.end.482:                                      ; preds = %for.cond.452
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond.483

for.cond.483:                                     ; preds = %for.inc.500, %for.end.482
  %296 = load i32, i32* %i, align 4, !tbaa !11
  %297 = load i32, i32* %k, align 4, !tbaa !11
  %cmp484 = icmp slt i32 %296, %297
  br i1 %cmp484, label %for.body.486, label %for.end.502

for.body.486:                                     ; preds = %for.cond.483
  %298 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom487 = sext i32 %298 to i64
  %arrayidx488 = getelementptr inbounds [5 x i32], [5 x i32]* %nesting, i32 0, i64 %idxprom487
  %299 = load i32, i32* %arrayidx488, align 4, !tbaa !11
  %and = and i32 %299, 1
  %300 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom489 = sext i32 %300 to i64
  %arrayidx490 = getelementptr inbounds [5 x double], [5 x double]* %area, i32 0, i64 %idxprom489
  %301 = load double, double* %arrayidx490, align 8, !tbaa !13
  %cmp491 = fcmp olt double %301, 0.000000e+00
  %conv492 = zext i1 %cmp491 to i32
  %cmp493 = icmp ne i32 %and, %conv492
  br i1 %cmp493, label %if.then.495, label %if.end.499

if.then.495:                                      ; preds = %for.body.486
  %302 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %303 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom496 = sext i32 %303 to i64
  %arrayidx497 = getelementptr inbounds [5 x i8], [5 x i8]* %isolated, i32 0, i64 %idxprom496
  %304 = load i8, i8* %arrayidx497, align 1, !tbaa !25
  %conv498 = zext i8 %304 to i32
  call void @t1_hinter__reverse_contour(%struct.t1_hinter_s* %302, i32 %conv498) #5
  br label %if.end.499

if.end.499:                                       ; preds = %if.then.495, %for.body.486
  br label %for.inc.500

for.inc.500:                                      ; preds = %if.end.499
  %305 = load i32, i32* %i, align 4, !tbaa !11
  %inc501 = add nsw i32 %305, 1
  store i32 %inc501, i32* %i, align 4, !tbaa !11
  br label %for.cond.483

for.end.502:                                      ; preds = %for.cond.483
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.503

cleanup.503:                                      ; preds = %for.end.502, %if.then.474, %if.then.450, %if.then.396, %cleanup, %if.then.294, %if.then.182, %if.then
  %306 = bitcast i32* %nesting_sum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %306) #1
  %307 = bitcast [5 x i8]* %isolated to i8*
  call void @llvm.lifetime.end(i64 5, i8* %307) #1
  %308 = bitcast [5 x %struct.gs_rect_s]* %bbox to i8*
  call void @llvm.lifetime.end(i64 160, i8* %308) #1
  %309 = bitcast [5 x i32]* %nesting to i8*
  call void @llvm.lifetime.end(i64 20, i8* %309) #1
  %310 = bitcast [5 x [5 x i8]]* %inside to i8*
  call void @llvm.lifetime.end(i64 25, i8* %310) #1
  %311 = bitcast double* %a to i8*
  call void @llvm.lifetime.end(i64 8, i8* %311) #1
  %312 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %312) #1
  %313 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %313) #1
  %314 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %314) #1
  %315 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %315) #1
  %316 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %316) #1
  %317 = bitcast [5 x double]* %area to i8*
  call void @llvm.lifetime.end(i64 40, i8* %317) #1
  %cleanup.dest.515 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.515, label %unreachable [
    i32 0, label %cleanup.cont.516
    i32 1, label %cleanup.cont.516
  ]

cleanup.cont.516:                                 ; preds = %cleanup.503, %cleanup.503
  ret void

unreachable:                                      ; preds = %cleanup.503
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: inlinehint nounwind uwtable
define internal double @line_area_2(i32 %p0x, i32 %p0y, i32 %p1x, i32 %p1y) #3 {
entry:
  %p0x.addr = alloca i32, align 4
  %p0y.addr = alloca i32, align 4
  %p1x.addr = alloca i32, align 4
  %p1y.addr = alloca i32, align 4
  store i32 %p0x, i32* %p0x.addr, align 4, !tbaa !11
  store i32 %p0y, i32* %p0y.addr, align 4, !tbaa !11
  store i32 %p1x, i32* %p1x.addr, align 4, !tbaa !11
  store i32 %p1y, i32* %p1y.addr, align 4, !tbaa !11
  %0 = load i32, i32* %p0x.addr, align 4, !tbaa !11
  %conv = sitofp i32 %0 to double
  %1 = load i32, i32* %p1y.addr, align 4, !tbaa !11
  %conv1 = sitofp i32 %1 to double
  %mul = fmul double %conv, %conv1
  %2 = load i32, i32* %p0y.addr, align 4, !tbaa !11
  %conv2 = sitofp i32 %2 to double
  %3 = load i32, i32* %p1x.addr, align 4, !tbaa !11
  %conv3 = sitofp i32 %3 to double
  %mul4 = fmul double %conv2, %conv3
  %sub = fsub double %mul, %mul4
  ret double %sub
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @bezier_area_2(i32 %p0x, i32 %p0y, i32 %p1x, i32 %p1y, i32 %p2x, i32 %p2y, i32 %p3x, i32 %p3y) #3 {
entry:
  %p0x.addr = alloca i32, align 4
  %p0y.addr = alloca i32, align 4
  %p1x.addr = alloca i32, align 4
  %p1y.addr = alloca i32, align 4
  %p2x.addr = alloca i32, align 4
  %p2y.addr = alloca i32, align 4
  %p3x.addr = alloca i32, align 4
  %p3y.addr = alloca i32, align 4
  store i32 %p0x, i32* %p0x.addr, align 4, !tbaa !11
  store i32 %p0y, i32* %p0y.addr, align 4, !tbaa !11
  store i32 %p1x, i32* %p1x.addr, align 4, !tbaa !11
  store i32 %p1y, i32* %p1y.addr, align 4, !tbaa !11
  store i32 %p2x, i32* %p2x.addr, align 4, !tbaa !11
  store i32 %p2y, i32* %p2y.addr, align 4, !tbaa !11
  store i32 %p3x, i32* %p3x.addr, align 4, !tbaa !11
  store i32 %p3y, i32* %p3y.addr, align 4, !tbaa !11
  %0 = load i32, i32* %p0y.addr, align 4, !tbaa !11
  %conv = sitofp i32 %0 to double
  %1 = load i32, i32* %p1x.addr, align 4, !tbaa !11
  %conv1 = sitofp i32 %1 to double
  %mul = fmul double 6.000000e+00, %conv1
  %2 = load i32, i32* %p2x.addr, align 4, !tbaa !11
  %conv2 = sitofp i32 %2 to double
  %mul3 = fmul double 3.000000e+00, %conv2
  %add = fadd double %mul, %mul3
  %3 = load i32, i32* %p3x.addr, align 4, !tbaa !11
  %conv4 = sitofp i32 %3 to double
  %add5 = fadd double %add, %conv4
  %mul6 = fmul double %conv, %add5
  %sub = fsub double -0.000000e+00, %mul6
  %4 = load i32, i32* %p0x.addr, align 4, !tbaa !11
  %conv7 = sitofp i32 %4 to double
  %5 = load i32, i32* %p1y.addr, align 4, !tbaa !11
  %conv8 = sitofp i32 %5 to double
  %mul9 = fmul double 6.000000e+00, %conv8
  %6 = load i32, i32* %p2y.addr, align 4, !tbaa !11
  %conv10 = sitofp i32 %6 to double
  %mul11 = fmul double 3.000000e+00, %conv10
  %add12 = fadd double %mul9, %mul11
  %7 = load i32, i32* %p3y.addr, align 4, !tbaa !11
  %conv13 = sitofp i32 %7 to double
  %add14 = fadd double %add12, %conv13
  %mul15 = fmul double %conv7, %add14
  %add16 = fadd double %sub, %mul15
  %8 = load i32, i32* %p1y.addr, align 4, !tbaa !11
  %conv17 = sitofp i32 %8 to double
  %9 = load i32, i32* %p2x.addr, align 4, !tbaa !11
  %conv18 = sitofp i32 %9 to double
  %mul19 = fmul double %conv17, %conv18
  %10 = load i32, i32* %p1y.addr, align 4, !tbaa !11
  %conv20 = sitofp i32 %10 to double
  %11 = load i32, i32* %p3x.addr, align 4, !tbaa !11
  %conv21 = sitofp i32 %11 to double
  %mul22 = fmul double %conv20, %conv21
  %add23 = fadd double %mul19, %mul22
  %12 = load i32, i32* %p2y.addr, align 4, !tbaa !11
  %conv24 = sitofp i32 %12 to double
  %mul25 = fmul double 2.000000e+00, %conv24
  %13 = load i32, i32* %p3x.addr, align 4, !tbaa !11
  %conv26 = sitofp i32 %13 to double
  %mul27 = fmul double %mul25, %conv26
  %add28 = fadd double %add23, %mul27
  %14 = load i32, i32* %p2x.addr, align 4, !tbaa !11
  %conv29 = sitofp i32 %14 to double
  %mul30 = fmul double 2.000000e+00, %conv29
  %15 = load i32, i32* %p3y.addr, align 4, !tbaa !11
  %conv31 = sitofp i32 %15 to double
  %mul32 = fmul double %mul30, %conv31
  %sub33 = fsub double %add28, %mul32
  %16 = load i32, i32* %p1x.addr, align 4, !tbaa !11
  %conv34 = sitofp i32 %16 to double
  %17 = load i32, i32* %p2y.addr, align 4, !tbaa !11
  %18 = load i32, i32* %p3y.addr, align 4, !tbaa !11
  %add35 = add nsw i32 %17, %18
  %conv36 = sitofp i32 %add35 to double
  %mul37 = fmul double %conv34, %conv36
  %sub38 = fsub double %sub33, %mul37
  %mul39 = fmul double 3.000000e+00, %sub38
  %sub40 = fsub double %add16, %mul39
  %div = fdiv double %sub40, 1.000000e+01
  ret double %div
}

; Function Attrs: nounwind uwtable
define internal i32 @t1_hinter__is_inside(%struct.t1_hinter_s* %self, i32 %gx, i32 %gy, i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.t1_hinter_s*, align 8
  %gx.addr = alloca i32, align 4
  %gy.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %b = alloca i32, align 4
  %e = alloca i32, align 4
  %a = alloca double, align 8
  %A = alloca double, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.t1_hinter_s* %self, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  store i32 %gx, i32* %gx.addr, align 4, !tbaa !11
  store i32 %gy, i32* %gy.addr, align 4, !tbaa !11
  store i32 %c, i32* %c.addr, align 4, !tbaa !11
  %0 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %c.addr, align 4, !tbaa !11
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %contour = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %2, i32 0, i32 42
  %3 = load i32*, i32** %contour, align 8, !tbaa !14
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4, !tbaa !11
  store i32 %4, i32* %b, align 4, !tbaa !11
  %5 = bitcast i32* %e to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %c.addr, align 4, !tbaa !11
  %add = add nsw i32 %6, 1
  %idxprom1 = sext i32 %add to i64
  %7 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %contour2 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %7, i32 0, i32 42
  %8 = load i32*, i32** %contour2, align 8, !tbaa !14
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 %idxprom1
  %9 = load i32, i32* %arrayidx3, align 4, !tbaa !11
  %sub = sub nsw i32 %9, 1
  store i32 %sub, i32* %e, align 4, !tbaa !11
  %10 = bitcast double* %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store double 0.000000e+00, double* %a, align 8, !tbaa !13
  %11 = bitcast double* %A to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i32, i32* %b, align 4, !tbaa !11
  store i32 %13, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %if.end.84, %entry
  %14 = load i32, i32* %i, align 4, !tbaa !11
  %15 = load i32, i32* %e, align 4, !tbaa !11
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !tbaa !11
  %add4 = add nsw i32 %16, 1
  %idxprom5 = sext i32 %add4 to i64
  %17 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %17, i32 0, i32 36
  %18 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole, align 8, !tbaa !15
  %arrayidx6 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %18, i64 %idxprom5
  %type = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx6, i32 0, i32 6
  %19 = load i32, i32* %type, align 4, !tbaa !26
  %cmp7 = icmp ne i32 %19, 0
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !tbaa !11
  %add8 = add nsw i32 %20, 0
  %idxprom9 = sext i32 %add8 to i64
  %21 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole10 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %21, i32 0, i32 36
  %22 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole10, align 8, !tbaa !15
  %arrayidx11 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %22, i64 %idxprom9
  %gx12 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx11, i32 0, i32 0
  %23 = load i32, i32* %gx12, align 4, !tbaa !16
  %24 = load i32, i32* %gx.addr, align 4, !tbaa !11
  %sub13 = sub nsw i32 %23, %24
  %25 = load i32, i32* %i, align 4, !tbaa !11
  %add14 = add nsw i32 %25, 0
  %idxprom15 = sext i32 %add14 to i64
  %26 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole16 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %26, i32 0, i32 36
  %27 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole16, align 8, !tbaa !15
  %arrayidx17 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %27, i64 %idxprom15
  %gy18 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx17, i32 0, i32 1
  %28 = load i32, i32* %gy18, align 4, !tbaa !22
  %29 = load i32, i32* %gy.addr, align 4, !tbaa !11
  %sub19 = sub nsw i32 %28, %29
  %30 = load i32, i32* %i, align 4, !tbaa !11
  %add20 = add nsw i32 %30, 1
  %idxprom21 = sext i32 %add20 to i64
  %31 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole22 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %31, i32 0, i32 36
  %32 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole22, align 8, !tbaa !15
  %arrayidx23 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %32, i64 %idxprom21
  %gx24 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx23, i32 0, i32 0
  %33 = load i32, i32* %gx24, align 4, !tbaa !16
  %34 = load i32, i32* %gx.addr, align 4, !tbaa !11
  %sub25 = sub nsw i32 %33, %34
  %35 = load i32, i32* %i, align 4, !tbaa !11
  %add26 = add nsw i32 %35, 1
  %idxprom27 = sext i32 %add26 to i64
  %36 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole28 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %36, i32 0, i32 36
  %37 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole28, align 8, !tbaa !15
  %arrayidx29 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %37, i64 %idxprom27
  %gy30 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx29, i32 0, i32 1
  %38 = load i32, i32* %gy30, align 4, !tbaa !22
  %39 = load i32, i32* %gy.addr, align 4, !tbaa !11
  %sub31 = sub nsw i32 %38, %39
  %call = call double @bar_winding_angle(i32 %sub13, i32 %sub19, i32 %sub25, i32 %sub31) #5
  store double %call, double* %A, align 8, !tbaa !13
  %40 = load i32, i32* %i, align 4, !tbaa !11
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4, !tbaa !11
  br label %if.end

if.else:                                          ; preds = %for.body
  %41 = load i32, i32* %i, align 4, !tbaa !11
  %add32 = add nsw i32 %41, 0
  %idxprom33 = sext i32 %add32 to i64
  %42 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole34 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %42, i32 0, i32 36
  %43 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole34, align 8, !tbaa !15
  %arrayidx35 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %43, i64 %idxprom33
  %gx36 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx35, i32 0, i32 0
  %44 = load i32, i32* %gx36, align 4, !tbaa !16
  %45 = load i32, i32* %gx.addr, align 4, !tbaa !11
  %sub37 = sub nsw i32 %44, %45
  %46 = load i32, i32* %i, align 4, !tbaa !11
  %add38 = add nsw i32 %46, 0
  %idxprom39 = sext i32 %add38 to i64
  %47 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole40 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %47, i32 0, i32 36
  %48 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole40, align 8, !tbaa !15
  %arrayidx41 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %48, i64 %idxprom39
  %gy42 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx41, i32 0, i32 1
  %49 = load i32, i32* %gy42, align 4, !tbaa !22
  %50 = load i32, i32* %gy.addr, align 4, !tbaa !11
  %sub43 = sub nsw i32 %49, %50
  %51 = load i32, i32* %i, align 4, !tbaa !11
  %add44 = add nsw i32 %51, 1
  %idxprom45 = sext i32 %add44 to i64
  %52 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole46 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %52, i32 0, i32 36
  %53 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole46, align 8, !tbaa !15
  %arrayidx47 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %53, i64 %idxprom45
  %gx48 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx47, i32 0, i32 0
  %54 = load i32, i32* %gx48, align 4, !tbaa !16
  %55 = load i32, i32* %gx.addr, align 4, !tbaa !11
  %sub49 = sub nsw i32 %54, %55
  %56 = load i32, i32* %i, align 4, !tbaa !11
  %add50 = add nsw i32 %56, 1
  %idxprom51 = sext i32 %add50 to i64
  %57 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole52 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %57, i32 0, i32 36
  %58 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole52, align 8, !tbaa !15
  %arrayidx53 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %58, i64 %idxprom51
  %gy54 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx53, i32 0, i32 1
  %59 = load i32, i32* %gy54, align 4, !tbaa !22
  %60 = load i32, i32* %gy.addr, align 4, !tbaa !11
  %sub55 = sub nsw i32 %59, %60
  %61 = load i32, i32* %i, align 4, !tbaa !11
  %add56 = add nsw i32 %61, 2
  %idxprom57 = sext i32 %add56 to i64
  %62 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole58 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %62, i32 0, i32 36
  %63 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole58, align 8, !tbaa !15
  %arrayidx59 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %63, i64 %idxprom57
  %gx60 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx59, i32 0, i32 0
  %64 = load i32, i32* %gx60, align 4, !tbaa !16
  %65 = load i32, i32* %gx.addr, align 4, !tbaa !11
  %sub61 = sub nsw i32 %64, %65
  %66 = load i32, i32* %i, align 4, !tbaa !11
  %add62 = add nsw i32 %66, 2
  %idxprom63 = sext i32 %add62 to i64
  %67 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole64 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %67, i32 0, i32 36
  %68 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole64, align 8, !tbaa !15
  %arrayidx65 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %68, i64 %idxprom63
  %gy66 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx65, i32 0, i32 1
  %69 = load i32, i32* %gy66, align 4, !tbaa !22
  %70 = load i32, i32* %gy.addr, align 4, !tbaa !11
  %sub67 = sub nsw i32 %69, %70
  %71 = load i32, i32* %i, align 4, !tbaa !11
  %add68 = add nsw i32 %71, 3
  %idxprom69 = sext i32 %add68 to i64
  %72 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole70 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %72, i32 0, i32 36
  %73 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole70, align 8, !tbaa !15
  %arrayidx71 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %73, i64 %idxprom69
  %gx72 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx71, i32 0, i32 0
  %74 = load i32, i32* %gx72, align 4, !tbaa !16
  %75 = load i32, i32* %gx.addr, align 4, !tbaa !11
  %sub73 = sub nsw i32 %74, %75
  %76 = load i32, i32* %i, align 4, !tbaa !11
  %add74 = add nsw i32 %76, 3
  %idxprom75 = sext i32 %add74 to i64
  %77 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole76 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %77, i32 0, i32 36
  %78 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole76, align 8, !tbaa !15
  %arrayidx77 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %78, i64 %idxprom75
  %gy78 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx77, i32 0, i32 1
  %79 = load i32, i32* %gy78, align 4, !tbaa !22
  %80 = load i32, i32* %gy.addr, align 4, !tbaa !11
  %sub79 = sub nsw i32 %79, %80
  %call80 = call double @curve_winding_angle(i32 %sub37, i32 %sub43, i32 %sub49, i32 %sub55, i32 %sub61, i32 %sub67, i32 %sub73, i32 %sub79) #5
  store double %call80, double* %A, align 8, !tbaa !13
  %81 = load i32, i32* %i, align 4, !tbaa !11
  %add81 = add nsw i32 %81, 3
  store i32 %add81, i32* %i, align 4, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %82 = load double, double* %A, align 8, !tbaa !13
  %cmp82 = fcmp oeq double %82, -1.000000e+05
  br i1 %cmp82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.84:                                        ; preds = %if.end
  %83 = load double, double* %A, align 8, !tbaa !13
  %84 = load double, double* %a, align 8, !tbaa !13
  %add85 = fadd double %84, %83
  store double %add85, double* %a, align 8, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %85 = load double, double* %a, align 8, !tbaa !13
  %cmp86 = fcmp olt double %85, 0.000000e+00
  br i1 %cmp86, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %86 = load double, double* %a, align 8, !tbaa !13
  %sub87 = fsub double -0.000000e+00, %86
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %87 = load double, double* %a, align 8, !tbaa !13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub87, %cond.true ], [ %87, %cond.false ]
  %cmp88 = fcmp olt double %cond, 1.000000e-01
  br i1 %cmp88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.90:                                        ; preds = %cond.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.90, %if.then.89, %if.then.83
  %88 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast double* %A to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = bitcast double* %a to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  %91 = bitcast i32* %e to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = load i32, i32* %retval
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define internal i32 @t1_hinter__contour_intersection(%struct.t1_hinter_s* %self, i32 %c0, i32 %c1) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.t1_hinter_s*, align 8
  %c0.addr = alloca i32, align 4
  %c1.addr = alloca i32, align 4
  %b0 = alloca i32, align 4
  %e0 = alloca i32, align 4
  %b1 = alloca i32, align 4
  %e1 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.t1_hinter_s* %self, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  store i32 %c0, i32* %c0.addr, align 4, !tbaa !11
  store i32 %c1, i32* %c1.addr, align 4, !tbaa !11
  %0 = bitcast i32* %b0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %c0.addr, align 4, !tbaa !11
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %contour = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %2, i32 0, i32 42
  %3 = load i32*, i32** %contour, align 8, !tbaa !14
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4, !tbaa !11
  store i32 %4, i32* %b0, align 4, !tbaa !11
  %5 = bitcast i32* %e0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %c0.addr, align 4, !tbaa !11
  %add = add nsw i32 %6, 1
  %idxprom1 = sext i32 %add to i64
  %7 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %contour2 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %7, i32 0, i32 42
  %8 = load i32*, i32** %contour2, align 8, !tbaa !14
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 %idxprom1
  %9 = load i32, i32* %arrayidx3, align 4, !tbaa !11
  %sub = sub nsw i32 %9, 1
  store i32 %sub, i32* %e0, align 4, !tbaa !11
  %10 = bitcast i32* %b1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %c1.addr, align 4, !tbaa !11
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %contour5 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %12, i32 0, i32 42
  %13 = load i32*, i32** %contour5, align 8, !tbaa !14
  %arrayidx6 = getelementptr inbounds i32, i32* %13, i64 %idxprom4
  %14 = load i32, i32* %arrayidx6, align 4, !tbaa !11
  store i32 %14, i32* %b1, align 4, !tbaa !11
  %15 = bitcast i32* %e1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %c1.addr, align 4, !tbaa !11
  %add7 = add nsw i32 %16, 1
  %idxprom8 = sext i32 %add7 to i64
  %17 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %contour9 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %17, i32 0, i32 42
  %18 = load i32*, i32** %contour9, align 8, !tbaa !14
  %arrayidx10 = getelementptr inbounds i32, i32* %18, i64 %idxprom8
  %19 = load i32, i32* %arrayidx10, align 4, !tbaa !11
  %sub11 = sub nsw i32 %19, 1
  store i32 %sub11, i32* %e1, align 4, !tbaa !11
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load i32, i32* %b0, align 4, !tbaa !11
  store i32 %22, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %if.end.59, %entry
  %23 = load i32, i32* %i, align 4, !tbaa !11
  %24 = load i32, i32* %e0, align 4, !tbaa !11
  %cmp = icmp slt i32 %23, %24
  br i1 %cmp, label %for.body, label %for.end.60

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %i, align 4, !tbaa !11
  %add12 = add nsw i32 %25, 1
  %idxprom13 = sext i32 %add12 to i64
  %26 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %26, i32 0, i32 36
  %27 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole, align 8, !tbaa !15
  %arrayidx14 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %27, i64 %idxprom13
  %type = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx14, i32 0, i32 6
  %28 = load i32, i32* %type, align 4, !tbaa !26
  %cmp15 = icmp ne i32 %28, 0
  br i1 %cmp15, label %if.then, label %if.else.34

if.then:                                          ; preds = %for.body
  %29 = load i32, i32* %b1, align 4, !tbaa !11
  store i32 %29, i32* %j, align 4, !tbaa !11
  br label %for.cond.16

for.cond.16:                                      ; preds = %if.end.32, %if.then
  %30 = load i32, i32* %j, align 4, !tbaa !11
  %31 = load i32, i32* %e1, align 4, !tbaa !11
  %cmp17 = icmp slt i32 %30, %31
  br i1 %cmp17, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.16
  %32 = load i32, i32* %j, align 4, !tbaa !11
  %add19 = add nsw i32 %32, 1
  %idxprom20 = sext i32 %add19 to i64
  %33 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole21 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %33, i32 0, i32 36
  %34 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole21, align 8, !tbaa !15
  %arrayidx22 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %34, i64 %idxprom20
  %type23 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx22, i32 0, i32 6
  %35 = load i32, i32* %type23, align 4, !tbaa !26
  %cmp24 = icmp ne i32 %35, 0
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %for.body.18
  %36 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %37 = load i32, i32* %i, align 4, !tbaa !11
  %38 = load i32, i32* %j, align 4, !tbaa !11
  %call = call i32 @t1_hinter__intersect_bar_bar(%struct.t1_hinter_s* %36, i32 %37, i32 %38) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %if.then.25
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.25
  %39 = load i32, i32* %j, align 4, !tbaa !11
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %j, align 4, !tbaa !11
  br label %if.end.32

if.else:                                          ; preds = %for.body.18
  %40 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %41 = load i32, i32* %j, align 4, !tbaa !11
  %42 = load i32, i32* %i, align 4, !tbaa !11
  %call27 = call i32 @t1_hinter__intersect_curve_bar(%struct.t1_hinter_s* %40, i32 %41, i32 %42) #5
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.else
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.else
  %43 = load i32, i32* %j, align 4, !tbaa !11
  %add31 = add nsw i32 %43, 3
  store i32 %add31, i32* %j, align 4, !tbaa !11
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.30, %if.end
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  %44 = load i32, i32* %i, align 4, !tbaa !11
  %inc33 = add nsw i32 %44, 1
  store i32 %inc33, i32* %i, align 4, !tbaa !11
  br label %if.end.59

if.else.34:                                       ; preds = %for.body
  %45 = load i32, i32* %b1, align 4, !tbaa !11
  store i32 %45, i32* %j, align 4, !tbaa !11
  br label %for.cond.35

for.cond.35:                                      ; preds = %if.end.56, %if.else.34
  %46 = load i32, i32* %j, align 4, !tbaa !11
  %47 = load i32, i32* %e1, align 4, !tbaa !11
  %cmp36 = icmp slt i32 %46, %47
  br i1 %cmp36, label %for.body.37, label %for.end.57

for.body.37:                                      ; preds = %for.cond.35
  %48 = load i32, i32* %j, align 4, !tbaa !11
  %add38 = add nsw i32 %48, 1
  %idxprom39 = sext i32 %add38 to i64
  %49 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole40 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %49, i32 0, i32 36
  %50 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole40, align 8, !tbaa !15
  %arrayidx41 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %50, i64 %idxprom39
  %type42 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx41, i32 0, i32 6
  %51 = load i32, i32* %type42, align 4, !tbaa !26
  %cmp43 = icmp ne i32 %51, 0
  br i1 %cmp43, label %if.then.44, label %if.else.50

if.then.44:                                       ; preds = %for.body.37
  %52 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %53 = load i32, i32* %i, align 4, !tbaa !11
  %54 = load i32, i32* %j, align 4, !tbaa !11
  %call45 = call i32 @t1_hinter__intersect_curve_bar(%struct.t1_hinter_s* %52, i32 %53, i32 %54) #5
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.then.44
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %if.then.44
  %55 = load i32, i32* %j, align 4, !tbaa !11
  %inc49 = add nsw i32 %55, 1
  store i32 %inc49, i32* %j, align 4, !tbaa !11
  br label %if.end.56

if.else.50:                                       ; preds = %for.body.37
  %56 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %57 = load i32, i32* %j, align 4, !tbaa !11
  %58 = load i32, i32* %i, align 4, !tbaa !11
  %call51 = call i32 @t1_hinter__intersect_curve_curve(%struct.t1_hinter_s* %56, i32 %57, i32 %58) #5
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.else.50
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.54:                                        ; preds = %if.else.50
  %59 = load i32, i32* %j, align 4, !tbaa !11
  %add55 = add nsw i32 %59, 3
  store i32 %add55, i32* %j, align 4, !tbaa !11
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.54, %if.end.48
  br label %for.cond.35

for.end.57:                                       ; preds = %for.cond.35
  %60 = load i32, i32* %i, align 4, !tbaa !11
  %add58 = add nsw i32 %60, 3
  store i32 %add58, i32* %i, align 4, !tbaa !11
  br label %if.end.59

if.end.59:                                        ; preds = %for.end.57, %for.end
  br label %for.cond

for.end.60:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.60, %if.then.53, %if.then.47, %if.then.29, %if.then.26
  %61 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %e1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %b1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %e0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %b0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = load i32, i32* %retval
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define internal void @t1_hinter__reverse_contour(%struct.t1_hinter_s* %self, i32 %c) #0 {
entry:
  %self.addr = alloca %struct.t1_hinter_s*, align 8
  %c.addr = alloca i32, align 4
  %b = alloca i32, align 4
  %e = alloca i32, align 4
  %e2 = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca %struct.t1_pole_s, align 4
  %j = alloca i32, align 4
  store %struct.t1_hinter_s* %self, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  store i32 %c, i32* %c.addr, align 4, !tbaa !11
  %0 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %c.addr, align 4, !tbaa !11
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %contour = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %2, i32 0, i32 42
  %3 = load i32*, i32** %contour, align 8, !tbaa !14
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4, !tbaa !11
  store i32 %4, i32* %b, align 4, !tbaa !11
  %5 = bitcast i32* %e to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %c.addr, align 4, !tbaa !11
  %add = add nsw i32 %6, 1
  %idxprom1 = sext i32 %add to i64
  %7 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %contour2 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %7, i32 0, i32 42
  %8 = load i32*, i32** %contour2, align 8, !tbaa !14
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 %idxprom1
  %9 = load i32, i32* %arrayidx3, align 4, !tbaa !11
  %sub = sub nsw i32 %9, 1
  store i32 %sub, i32* %e, align 4, !tbaa !11
  %10 = bitcast i32* %e2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %b, align 4, !tbaa !11
  %12 = load i32, i32* %e, align 4, !tbaa !11
  %add4 = add nsw i32 %11, %12
  %add5 = add nsw i32 %add4, 1
  %div = sdiv i32 %add5, 2
  store i32 %div, i32* %e2, align 4, !tbaa !11
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast %struct.t1_pole_s* %p to i8*
  call void @llvm.lifetime.start(i64 48, i8* %14) #1
  %15 = load i32, i32* %b, align 4, !tbaa !11
  %add6 = add nsw i32 %15, 1
  store i32 %add6, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %i, align 4, !tbaa !11
  %17 = load i32, i32* %e2, align 4, !tbaa !11
  %cmp = icmp slt i32 %16, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32, i32* %e, align 4, !tbaa !11
  %20 = load i32, i32* %i, align 4, !tbaa !11
  %21 = load i32, i32* %b, align 4, !tbaa !11
  %sub7 = sub nsw i32 %20, %21
  %sub8 = sub nsw i32 %19, %sub7
  store i32 %sub8, i32* %j, align 4, !tbaa !11
  %22 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom9 = sext i32 %22 to i64
  %23 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %23, i32 0, i32 36
  %24 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole, align 8, !tbaa !15
  %arrayidx10 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %24, i64 %idxprom9
  %25 = bitcast %struct.t1_pole_s* %p to i8*
  %26 = bitcast %struct.t1_pole_s* %arrayidx10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 48, i32 4, i1 false), !tbaa.struct !27
  %27 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom11 = sext i32 %27 to i64
  %28 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole12 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %28, i32 0, i32 36
  %29 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole12, align 8, !tbaa !15
  %arrayidx13 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %29, i64 %idxprom11
  %30 = load i32, i32* %j, align 4, !tbaa !11
  %idxprom14 = sext i32 %30 to i64
  %31 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole15 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %31, i32 0, i32 36
  %32 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole15, align 8, !tbaa !15
  %arrayidx16 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %32, i64 %idxprom14
  %33 = bitcast %struct.t1_pole_s* %arrayidx13 to i8*
  %34 = bitcast %struct.t1_pole_s* %arrayidx16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 48, i32 4, i1 false), !tbaa.struct !27
  %35 = load i32, i32* %j, align 4, !tbaa !11
  %idxprom17 = sext i32 %35 to i64
  %36 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole18 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %36, i32 0, i32 36
  %37 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole18, align 8, !tbaa !15
  %arrayidx19 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %37, i64 %idxprom17
  %38 = bitcast %struct.t1_pole_s* %arrayidx19 to i8*
  %39 = bitcast %struct.t1_pole_s* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 48, i32 4, i1 false), !tbaa.struct !27
  %40 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %i, align 4, !tbaa !11
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = bitcast %struct.t1_pole_s* %p to i8*
  call void @llvm.lifetime.end(i64 48, i8* %42) #1
  %43 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %e2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %e to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @bar_winding_angle(i32 %x0, i32 %y0, i32 %x1, i32 %y1) #3 {
entry:
  %retval = alloca double, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %vp = alloca double, align 8
  %sp = alloca double, align 8
  %A = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !11
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !11
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !11
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !11
  %0 = bitcast double* %vp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %x0.addr, align 4, !tbaa !11
  %conv = sitofp i32 %1 to double
  %2 = load i32, i32* %y1.addr, align 4, !tbaa !11
  %conv1 = sitofp i32 %2 to double
  %mul = fmul double %conv, %conv1
  %3 = load i32, i32* %y0.addr, align 4, !tbaa !11
  %conv2 = sitofp i32 %3 to double
  %4 = load i32, i32* %x1.addr, align 4, !tbaa !11
  %conv3 = sitofp i32 %4 to double
  %mul4 = fmul double %conv2, %conv3
  %sub = fsub double %mul, %mul4
  store double %sub, double* %vp, align 8, !tbaa !13
  %5 = bitcast double* %sp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i32, i32* %x0.addr, align 4, !tbaa !11
  %conv5 = sitofp i32 %6 to double
  %7 = load i32, i32* %x1.addr, align 4, !tbaa !11
  %conv6 = sitofp i32 %7 to double
  %mul7 = fmul double %conv5, %conv6
  %8 = load i32, i32* %y0.addr, align 4, !tbaa !11
  %conv8 = sitofp i32 %8 to double
  %9 = load i32, i32* %y1.addr, align 4, !tbaa !11
  %conv9 = sitofp i32 %9 to double
  %mul10 = fmul double %conv8, %conv9
  %add = fadd double %mul7, %mul10
  store double %add, double* %sp, align 8, !tbaa !13
  %10 = bitcast double* %A to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load double, double* %sp, align 8, !tbaa !13
  %cmp = fcmp oeq double %11, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load double, double* %vp, align 8, !tbaa !13
  %cmp12 = fcmp oeq double %12, 0.000000e+00
  br i1 %cmp12, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.then
  store double -1.000000e+05, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store double 0x3FF921FB54442D18, double* %A, align 8, !tbaa !13
  %13 = load double, double* %vp, align 8, !tbaa !13
  %cmp15 = fcmp olt double %13, 0.000000e+00
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end
  %14 = load double, double* %A, align 8, !tbaa !13
  %sub18 = fsub double -0.000000e+00, %14
  store double %sub18, double* %A, align 8, !tbaa !13
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end
  br label %if.end.20

if.else:                                          ; preds = %entry
  %15 = load double, double* %vp, align 8, !tbaa !13
  %16 = load double, double* %sp, align 8, !tbaa !13
  %call = call double @atan2(double %15, double %16) #6
  store double %call, double* %A, align 8, !tbaa !13
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.end.19
  %17 = load double, double* %A, align 8, !tbaa !13
  store double %17, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.14
  %18 = bitcast double* %A to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast double* %sp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast double* %vp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = load double, double* %retval
  ret double %21
}

; Function Attrs: nounwind uwtable
define internal double @curve_winding_angle(i32 %x0, i32 %y0, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i32 %x3, i32 %y3) #0 {
entry:
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %x3.addr = alloca i32, align 4
  %y3.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !11
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !11
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !11
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !11
  store i32 %x2, i32* %x2.addr, align 4, !tbaa !11
  store i32 %y2, i32* %y2.addr, align 4, !tbaa !11
  store i32 %x3, i32* %x3.addr, align 4, !tbaa !11
  store i32 %y3, i32* %y3.addr, align 4, !tbaa !11
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %x0.addr, align 4, !tbaa !11
  %2 = load i32, i32* %y0.addr, align 4, !tbaa !11
  %3 = load i32, i32* %x1.addr, align 4, !tbaa !11
  %4 = load i32, i32* %y1.addr, align 4, !tbaa !11
  %5 = load i32, i32* %x2.addr, align 4, !tbaa !11
  %6 = load i32, i32* %y2.addr, align 4, !tbaa !11
  %7 = load i32, i32* %x3.addr, align 4, !tbaa !11
  %8 = load i32, i32* %y3.addr, align 4, !tbaa !11
  %call = call i32 @curve_log2_samples(i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #5
  store i32 %call, i32* %k, align 4, !tbaa !11
  %9 = load i32, i32* %k, align 4, !tbaa !11
  %10 = load i32, i32* %x0.addr, align 4, !tbaa !11
  %11 = load i32, i32* %y0.addr, align 4, !tbaa !11
  %12 = load i32, i32* %x1.addr, align 4, !tbaa !11
  %13 = load i32, i32* %y1.addr, align 4, !tbaa !11
  %14 = load i32, i32* %x2.addr, align 4, !tbaa !11
  %15 = load i32, i32* %y2.addr, align 4, !tbaa !11
  %16 = load i32, i32* %x3.addr, align 4, !tbaa !11
  %17 = load i32, i32* %y3.addr, align 4, !tbaa !11
  %call1 = call double @curve_winding_angle_rec(i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17) #5
  %18 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  ret double %call1
}

; Function Attrs: nounwind
declare double @atan2(double, double) #2

; Function Attrs: nounwind uwtable
define internal i32 @curve_log2_samples(i32 %x0, i32 %y0, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i32 %x3, i32 %y3) #0 {
entry:
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %x3.addr = alloca i32, align 4
  %y3.addr = alloca i32, align 4
  %s = alloca %struct.curve_segment, align 8
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !11
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !11
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !11
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !11
  store i32 %x2, i32* %x2.addr, align 4, !tbaa !11
  store i32 %y2, i32* %y2.addr, align 4, !tbaa !11
  store i32 %x3, i32* %x3.addr, align 4, !tbaa !11
  store i32 %y3, i32* %y3.addr, align 4, !tbaa !11
  %0 = bitcast %struct.curve_segment* %s to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #1
  %1 = load i32, i32* %x1.addr, align 4, !tbaa !11
  %p1 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %s, i32 0, i32 5
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  store i32 %1, i32* %x, align 4, !tbaa !28
  %2 = load i32, i32* %y1.addr, align 4, !tbaa !11
  %p11 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %s, i32 0, i32 5
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p11, i32 0, i32 1
  store i32 %2, i32* %y, align 4, !tbaa !32
  %3 = load i32, i32* %x2.addr, align 4, !tbaa !11
  %p2 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %s, i32 0, i32 6
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 0
  store i32 %3, i32* %x4, align 4, !tbaa !33
  %4 = load i32, i32* %y2.addr, align 4, !tbaa !11
  %p25 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %s, i32 0, i32 6
  %y6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p25, i32 0, i32 1
  store i32 %4, i32* %y6, align 4, !tbaa !34
  %5 = load i32, i32* %x3.addr, align 4, !tbaa !11
  %pt = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %s, i32 0, i32 4
  %x7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  store i32 %5, i32* %x7, align 4, !tbaa !35
  %6 = load i32, i32* %y3.addr, align 4, !tbaa !11
  %pt8 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %s, i32 0, i32 4
  %y9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt8, i32 0, i32 1
  store i32 %6, i32* %y9, align 4, !tbaa !36
  %7 = load i32, i32* %x0.addr, align 4, !tbaa !11
  %8 = load i32, i32* %y0.addr, align 4, !tbaa !11
  %call = call i32 @gx_curve_log2_samples(i32 %7, i32 %8, %struct.curve_segment* %s, i32 256) #5
  %9 = bitcast %struct.curve_segment* %s to i8*
  call void @llvm.lifetime.end(i64 48, i8* %9) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal double @curve_winding_angle_rec(i32 %k, i32 %x0, i32 %y0, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i32 %x3, i32 %y3) #0 {
entry:
  %retval = alloca double, align 8
  %k.addr = alloca i32, align 4
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %x3.addr = alloca i32, align 4
  %y3.addr = alloca i32, align 4
  %a0 = alloca double, align 8
  %a1 = alloca double, align 8
  %a2 = alloca double, align 8
  %a3 = alloca double, align 8
  %a = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  %x01 = alloca i32, align 4
  %y01 = alloca i32, align 4
  %x12 = alloca i32, align 4
  %y12 = alloca i32, align 4
  %x23 = alloca i32, align 4
  %y23 = alloca i32, align 4
  %x012 = alloca i32, align 4
  %y012 = alloca i32, align 4
  %x123 = alloca i32, align 4
  %y123 = alloca i32, align 4
  %x0123 = alloca i32, align 4
  %y0123 = alloca i32, align 4
  %A0 = alloca double, align 8
  %A1 = alloca double, align 8
  store i32 %k, i32* %k.addr, align 4, !tbaa !11
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !11
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !11
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !11
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !11
  store i32 %x2, i32* %x2.addr, align 4, !tbaa !11
  store i32 %y2, i32* %y2.addr, align 4, !tbaa !11
  store i32 %x3, i32* %x3.addr, align 4, !tbaa !11
  store i32 %y3, i32* %y3.addr, align 4, !tbaa !11
  %0 = load i32, i32* %k.addr, align 4, !tbaa !11
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %x0.addr, align 4, !tbaa !11
  %2 = load i32, i32* %y0.addr, align 4, !tbaa !11
  %3 = load i32, i32* %x3.addr, align 4, !tbaa !11
  %4 = load i32, i32* %y3.addr, align 4, !tbaa !11
  %call = call double @bar_winding_angle(i32 %1, i32 %2, i32 %3, i32 %4) #5
  store double %call, double* %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = bitcast double* %a0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i32, i32* %x0.addr, align 4, !tbaa !11
  %7 = load i32, i32* %y0.addr, align 4, !tbaa !11
  %8 = load i32, i32* %x1.addr, align 4, !tbaa !11
  %9 = load i32, i32* %y1.addr, align 4, !tbaa !11
  %call1 = call double @bar_winding_angle(i32 %6, i32 %7, i32 %8, i32 %9) #5
  store double %call1, double* %a0, align 8, !tbaa !13
  %10 = bitcast double* %a1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i32, i32* %x1.addr, align 4, !tbaa !11
  %12 = load i32, i32* %y1.addr, align 4, !tbaa !11
  %13 = load i32, i32* %x2.addr, align 4, !tbaa !11
  %14 = load i32, i32* %y2.addr, align 4, !tbaa !11
  %call2 = call double @bar_winding_angle(i32 %11, i32 %12, i32 %13, i32 %14) #5
  store double %call2, double* %a1, align 8, !tbaa !13
  %15 = bitcast double* %a2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load i32, i32* %x2.addr, align 4, !tbaa !11
  %17 = load i32, i32* %y2.addr, align 4, !tbaa !11
  %18 = load i32, i32* %x3.addr, align 4, !tbaa !11
  %19 = load i32, i32* %y3.addr, align 4, !tbaa !11
  %call3 = call double @bar_winding_angle(i32 %16, i32 %17, i32 %18, i32 %19) #5
  store double %call3, double* %a2, align 8, !tbaa !13
  %20 = bitcast double* %a3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load i32, i32* %x3.addr, align 4, !tbaa !11
  %22 = load i32, i32* %y3.addr, align 4, !tbaa !11
  %23 = load i32, i32* %x0.addr, align 4, !tbaa !11
  %24 = load i32, i32* %y0.addr, align 4, !tbaa !11
  %call4 = call double @bar_winding_angle(i32 %21, i32 %22, i32 %23, i32 %24) #5
  store double %call4, double* %a3, align 8, !tbaa !13
  %25 = bitcast double* %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load double, double* %a0, align 8, !tbaa !13
  %27 = load double, double* %a1, align 8, !tbaa !13
  %add = fadd double %26, %27
  %28 = load double, double* %a2, align 8, !tbaa !13
  %add5 = fadd double %add, %28
  %29 = load double, double* %a3, align 8, !tbaa !13
  %add6 = fadd double %add5, %29
  store double %add6, double* %a, align 8, !tbaa !13
  %30 = load double, double* %a, align 8, !tbaa !13
  %cmp7 = fcmp olt double %30, 0.000000e+00
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %31 = load double, double* %a, align 8, !tbaa !13
  %sub = fsub double -0.000000e+00, %31
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %32 = load double, double* %a, align 8, !tbaa !13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub, %cond.true ], [ %32, %cond.false ]
  %cmp8 = fcmp olt double %cond, 1.000000e-01
  br i1 %cmp8, label %land.lhs.true, label %if.else.18

land.lhs.true:                                    ; preds = %cond.end
  %33 = load double, double* %a0, align 8, !tbaa !13
  %cmp9 = fcmp une double %33, -1.000000e+05
  br i1 %cmp9, label %land.lhs.true.10, label %if.else.18

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %34 = load double, double* %a1, align 8, !tbaa !13
  %cmp11 = fcmp une double %34, -1.000000e+05
  br i1 %cmp11, label %land.lhs.true.12, label %if.else.18

land.lhs.true.12:                                 ; preds = %land.lhs.true.10
  %35 = load double, double* %a2, align 8, !tbaa !13
  %cmp13 = fcmp une double %35, -1.000000e+05
  br i1 %cmp13, label %land.lhs.true.14, label %if.else.18

land.lhs.true.14:                                 ; preds = %land.lhs.true.12
  %36 = load double, double* %a3, align 8, !tbaa !13
  %cmp15 = fcmp une double %36, -1.000000e+05
  br i1 %cmp15, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %land.lhs.true.14
  %37 = load double, double* %a3, align 8, !tbaa !13
  %sub17 = fsub double -0.000000e+00, %37
  store double %sub17, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.65

if.else.18:                                       ; preds = %land.lhs.true.14, %land.lhs.true.12, %land.lhs.true.10, %land.lhs.true, %cond.end
  %38 = bitcast i32* %x01 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = load i32, i32* %x0.addr, align 4, !tbaa !11
  %40 = load i32, i32* %x1.addr, align 4, !tbaa !11
  %add19 = add nsw i32 %39, %40
  %div = sdiv i32 %add19, 2
  store i32 %div, i32* %x01, align 4, !tbaa !11
  %41 = bitcast i32* %y01 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = load i32, i32* %y0.addr, align 4, !tbaa !11
  %43 = load i32, i32* %y1.addr, align 4, !tbaa !11
  %add20 = add nsw i32 %42, %43
  %div21 = sdiv i32 %add20, 2
  store i32 %div21, i32* %y01, align 4, !tbaa !11
  %44 = bitcast i32* %x12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = load i32, i32* %x1.addr, align 4, !tbaa !11
  %46 = load i32, i32* %x2.addr, align 4, !tbaa !11
  %add22 = add nsw i32 %45, %46
  %div23 = sdiv i32 %add22, 2
  store i32 %div23, i32* %x12, align 4, !tbaa !11
  %47 = bitcast i32* %y12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = load i32, i32* %y1.addr, align 4, !tbaa !11
  %49 = load i32, i32* %y2.addr, align 4, !tbaa !11
  %add24 = add nsw i32 %48, %49
  %div25 = sdiv i32 %add24, 2
  store i32 %div25, i32* %y12, align 4, !tbaa !11
  %50 = bitcast i32* %x23 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = load i32, i32* %x2.addr, align 4, !tbaa !11
  %52 = load i32, i32* %x3.addr, align 4, !tbaa !11
  %add26 = add nsw i32 %51, %52
  %div27 = sdiv i32 %add26, 2
  store i32 %div27, i32* %x23, align 4, !tbaa !11
  %53 = bitcast i32* %y23 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  %54 = load i32, i32* %y2.addr, align 4, !tbaa !11
  %55 = load i32, i32* %y3.addr, align 4, !tbaa !11
  %add28 = add nsw i32 %54, %55
  %div29 = sdiv i32 %add28, 2
  store i32 %div29, i32* %y23, align 4, !tbaa !11
  %56 = bitcast i32* %x012 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  %57 = load i32, i32* %x01, align 4, !tbaa !11
  %58 = load i32, i32* %x12, align 4, !tbaa !11
  %add30 = add nsw i32 %57, %58
  %div31 = sdiv i32 %add30, 2
  store i32 %div31, i32* %x012, align 4, !tbaa !11
  %59 = bitcast i32* %y012 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = load i32, i32* %y01, align 4, !tbaa !11
  %61 = load i32, i32* %y12, align 4, !tbaa !11
  %add32 = add nsw i32 %60, %61
  %div33 = sdiv i32 %add32, 2
  store i32 %div33, i32* %y012, align 4, !tbaa !11
  %62 = bitcast i32* %x123 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  %63 = load i32, i32* %x12, align 4, !tbaa !11
  %64 = load i32, i32* %x23, align 4, !tbaa !11
  %add34 = add nsw i32 %63, %64
  %div35 = sdiv i32 %add34, 2
  store i32 %div35, i32* %x123, align 4, !tbaa !11
  %65 = bitcast i32* %y123 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #1
  %66 = load i32, i32* %y12, align 4, !tbaa !11
  %67 = load i32, i32* %y23, align 4, !tbaa !11
  %add36 = add nsw i32 %66, %67
  %div37 = sdiv i32 %add36, 2
  store i32 %div37, i32* %y123, align 4, !tbaa !11
  %68 = bitcast i32* %x0123 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %69 = load i32, i32* %x012, align 4, !tbaa !11
  %70 = load i32, i32* %x123, align 4, !tbaa !11
  %add38 = add nsw i32 %69, %70
  %div39 = sdiv i32 %add38, 2
  store i32 %div39, i32* %x0123, align 4, !tbaa !11
  %71 = bitcast i32* %y0123 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  %72 = load i32, i32* %y012, align 4, !tbaa !11
  %73 = load i32, i32* %y123, align 4, !tbaa !11
  %add40 = add nsw i32 %72, %73
  %div41 = sdiv i32 %add40, 2
  store i32 %div41, i32* %y0123, align 4, !tbaa !11
  %74 = bitcast double* %A0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  %75 = bitcast double* %A1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #1
  %76 = load i32, i32* %k.addr, align 4, !tbaa !11
  %sub42 = sub nsw i32 %76, 1
  %77 = load i32, i32* %x0.addr, align 4, !tbaa !11
  %78 = load i32, i32* %y0.addr, align 4, !tbaa !11
  %79 = load i32, i32* %x01, align 4, !tbaa !11
  %80 = load i32, i32* %y01, align 4, !tbaa !11
  %81 = load i32, i32* %x012, align 4, !tbaa !11
  %82 = load i32, i32* %y012, align 4, !tbaa !11
  %83 = load i32, i32* %x0123, align 4, !tbaa !11
  %84 = load i32, i32* %y0123, align 4, !tbaa !11
  %call43 = call double @curve_winding_angle_rec(i32 %sub42, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84) #5
  store double %call43, double* %A0, align 8, !tbaa !13
  %85 = load double, double* %A0, align 8, !tbaa !13
  %cmp44 = fcmp oeq double %85, -1.000000e+05
  br i1 %cmp44, label %if.then.45, label %if.end

if.then.45:                                       ; preds = %if.else.18
  store double -1.000000e+05, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else.18
  %86 = load i32, i32* %k.addr, align 4, !tbaa !11
  %sub46 = sub nsw i32 %86, 1
  %87 = load i32, i32* %x0123, align 4, !tbaa !11
  %88 = load i32, i32* %y0123, align 4, !tbaa !11
  %89 = load i32, i32* %x123, align 4, !tbaa !11
  %90 = load i32, i32* %y123, align 4, !tbaa !11
  %91 = load i32, i32* %x23, align 4, !tbaa !11
  %92 = load i32, i32* %y23, align 4, !tbaa !11
  %93 = load i32, i32* %x3.addr, align 4, !tbaa !11
  %94 = load i32, i32* %y3.addr, align 4, !tbaa !11
  %call47 = call double @curve_winding_angle_rec(i32 %sub46, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94) #5
  store double %call47, double* %A1, align 8, !tbaa !13
  %95 = load double, double* %A1, align 8, !tbaa !13
  %cmp48 = fcmp oeq double %95, -1.000000e+05
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end
  store double -1.000000e+05, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.50:                                        ; preds = %if.end
  %96 = load double, double* %A0, align 8, !tbaa !13
  %97 = load double, double* %A1, align 8, !tbaa !13
  %add51 = fadd double %96, %97
  store double %add51, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.50, %if.then.49, %if.then.45
  %98 = bitcast double* %A1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast double* %A0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast i32* %y0123 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i32* %x0123 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i32* %y123 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %x123 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %y012 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %x012 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %y23 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %x23 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %y12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %x12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i32* %y01 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast i32* %x01 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  br label %cleanup.65

cleanup.65:                                       ; preds = %cleanup, %if.then.16
  %112 = bitcast double* %a to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast double* %a3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast double* %a2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast double* %a1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = bitcast double* %a0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  br label %return

return:                                           ; preds = %cleanup.65, %if.then
  %117 = load double, double* %retval
  ret double %117
}

declare i32 @gx_curve_log2_samples(i32, i32, %struct.curve_segment*, i32) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @t1_hinter__intersect_bar_bar(%struct.t1_hinter_s* %self, i32 %i, i32 %j) #3 {
entry:
  %self.addr = alloca %struct.t1_hinter_s*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %q0x = alloca i32, align 4
  %q0y = alloca i32, align 4
  %q1x = alloca i32, align 4
  %q1y = alloca i32, align 4
  %q2x = alloca i32, align 4
  %q2y = alloca i32, align 4
  %q3x = alloca i32, align 4
  %q3y = alloca i32, align 4
  store %struct.t1_hinter_s* %self, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !11
  store i32 %j, i32* %j.addr, align 4, !tbaa !11
  %0 = bitcast i32* %q0x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %i.addr, align 4, !tbaa !11
  %add = add nsw i32 %1, 0
  %idxprom = sext i32 %add to i64
  %2 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %2, i32 0, i32 36
  %3 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole, align 8, !tbaa !15
  %arrayidx = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %3, i64 %idxprom
  %gx = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx, i32 0, i32 0
  %4 = load i32, i32* %gx, align 4, !tbaa !16
  store i32 %4, i32* %q0x, align 4, !tbaa !11
  %5 = bitcast i32* %q0y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %i.addr, align 4, !tbaa !11
  %add1 = add nsw i32 %6, 0
  %idxprom2 = sext i32 %add1 to i64
  %7 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole3 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %7, i32 0, i32 36
  %8 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole3, align 8, !tbaa !15
  %arrayidx4 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %8, i64 %idxprom2
  %gy = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx4, i32 0, i32 1
  %9 = load i32, i32* %gy, align 4, !tbaa !22
  store i32 %9, i32* %q0y, align 4, !tbaa !11
  %10 = bitcast i32* %q1x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %i.addr, align 4, !tbaa !11
  %add5 = add nsw i32 %11, 1
  %idxprom6 = sext i32 %add5 to i64
  %12 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole7 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %12, i32 0, i32 36
  %13 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole7, align 8, !tbaa !15
  %arrayidx8 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %13, i64 %idxprom6
  %gx9 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx8, i32 0, i32 0
  %14 = load i32, i32* %gx9, align 4, !tbaa !16
  store i32 %14, i32* %q1x, align 4, !tbaa !11
  %15 = bitcast i32* %q1y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %i.addr, align 4, !tbaa !11
  %add10 = add nsw i32 %16, 1
  %idxprom11 = sext i32 %add10 to i64
  %17 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole12 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %17, i32 0, i32 36
  %18 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole12, align 8, !tbaa !15
  %arrayidx13 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %18, i64 %idxprom11
  %gy14 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx13, i32 0, i32 1
  %19 = load i32, i32* %gy14, align 4, !tbaa !22
  store i32 %19, i32* %q1y, align 4, !tbaa !11
  %20 = bitcast i32* %q2x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load i32, i32* %j.addr, align 4, !tbaa !11
  %add15 = add nsw i32 %21, 0
  %idxprom16 = sext i32 %add15 to i64
  %22 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole17 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %22, i32 0, i32 36
  %23 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole17, align 8, !tbaa !15
  %arrayidx18 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %23, i64 %idxprom16
  %gx19 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx18, i32 0, i32 0
  %24 = load i32, i32* %gx19, align 4, !tbaa !16
  store i32 %24, i32* %q2x, align 4, !tbaa !11
  %25 = bitcast i32* %q2y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load i32, i32* %j.addr, align 4, !tbaa !11
  %add20 = add nsw i32 %26, 0
  %idxprom21 = sext i32 %add20 to i64
  %27 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole22 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %27, i32 0, i32 36
  %28 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole22, align 8, !tbaa !15
  %arrayidx23 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %28, i64 %idxprom21
  %gy24 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx23, i32 0, i32 1
  %29 = load i32, i32* %gy24, align 4, !tbaa !22
  store i32 %29, i32* %q2y, align 4, !tbaa !11
  %30 = bitcast i32* %q3x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load i32, i32* %j.addr, align 4, !tbaa !11
  %add25 = add nsw i32 %31, 1
  %idxprom26 = sext i32 %add25 to i64
  %32 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole27 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %32, i32 0, i32 36
  %33 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole27, align 8, !tbaa !15
  %arrayidx28 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %33, i64 %idxprom26
  %gx29 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx28, i32 0, i32 0
  %34 = load i32, i32* %gx29, align 4, !tbaa !16
  store i32 %34, i32* %q3x, align 4, !tbaa !11
  %35 = bitcast i32* %q3y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load i32, i32* %j.addr, align 4, !tbaa !11
  %add30 = add nsw i32 %36, 1
  %idxprom31 = sext i32 %add30 to i64
  %37 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole32 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %37, i32 0, i32 36
  %38 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole32, align 8, !tbaa !15
  %arrayidx33 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %38, i64 %idxprom31
  %gy34 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx33, i32 0, i32 1
  %39 = load i32, i32* %gy34, align 4, !tbaa !22
  store i32 %39, i32* %q3y, align 4, !tbaa !11
  %40 = load i32, i32* %q0x, align 4, !tbaa !11
  %41 = load i32, i32* %q0y, align 4, !tbaa !11
  %42 = load i32, i32* %q1x, align 4, !tbaa !11
  %43 = load i32, i32* %q1y, align 4, !tbaa !11
  %44 = load i32, i32* %q2x, align 4, !tbaa !11
  %45 = load i32, i32* %q2y, align 4, !tbaa !11
  %46 = load i32, i32* %q3x, align 4, !tbaa !11
  %47 = load i32, i32* %q3y, align 4, !tbaa !11
  %call = call i32 @intersect_bar_bar(i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47) #5
  %48 = bitcast i32* %q3y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %q3x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %q2y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i32* %q2x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %q1y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %q1x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %q0y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i32* %q0x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @t1_hinter__intersect_curve_bar(%struct.t1_hinter_s* %self, i32 %i, i32 %j) #0 {
entry:
  %self.addr = alloca %struct.t1_hinter_s*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %X0 = alloca i32, align 4
  %Y0 = alloca i32, align 4
  %X1 = alloca i32, align 4
  %Y1 = alloca i32, align 4
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %x3 = alloca i32, align 4
  %y3 = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  store %struct.t1_hinter_s* %self, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !11
  store i32 %j, i32* %j.addr, align 4, !tbaa !11
  %0 = bitcast i32* %X0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %j.addr, align 4, !tbaa !11
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %2, i32 0, i32 36
  %3 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole, align 8, !tbaa !15
  %arrayidx = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %3, i64 %idxprom
  %gx = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx, i32 0, i32 0
  %4 = load i32, i32* %gx, align 4, !tbaa !16
  store i32 %4, i32* %X0, align 4, !tbaa !11
  %5 = bitcast i32* %Y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %j.addr, align 4, !tbaa !11
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole2 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %7, i32 0, i32 36
  %8 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole2, align 8, !tbaa !15
  %arrayidx3 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %8, i64 %idxprom1
  %gy = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx3, i32 0, i32 1
  %9 = load i32, i32* %gy, align 4, !tbaa !22
  store i32 %9, i32* %Y0, align 4, !tbaa !11
  %10 = bitcast i32* %X1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %j.addr, align 4, !tbaa !11
  %add = add nsw i32 %11, 1
  %idxprom4 = sext i32 %add to i64
  %12 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole5 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %12, i32 0, i32 36
  %13 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole5, align 8, !tbaa !15
  %arrayidx6 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %13, i64 %idxprom4
  %gx7 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx6, i32 0, i32 0
  %14 = load i32, i32* %gx7, align 4, !tbaa !16
  %15 = load i32, i32* %X0, align 4, !tbaa !11
  %sub = sub nsw i32 %14, %15
  store i32 %sub, i32* %X1, align 4, !tbaa !11
  %16 = bitcast i32* %Y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32, i32* %j.addr, align 4, !tbaa !11
  %add8 = add nsw i32 %17, 1
  %idxprom9 = sext i32 %add8 to i64
  %18 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole10 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %18, i32 0, i32 36
  %19 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole10, align 8, !tbaa !15
  %arrayidx11 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %19, i64 %idxprom9
  %gy12 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx11, i32 0, i32 1
  %20 = load i32, i32* %gy12, align 4, !tbaa !22
  %21 = load i32, i32* %Y0, align 4, !tbaa !11
  %sub13 = sub nsw i32 %20, %21
  store i32 %sub13, i32* %Y1, align 4, !tbaa !11
  %22 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load i32, i32* %i.addr, align 4, !tbaa !11
  %idxprom14 = sext i32 %23 to i64
  %24 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole15 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %24, i32 0, i32 36
  %25 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole15, align 8, !tbaa !15
  %arrayidx16 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %25, i64 %idxprom14
  %gx17 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx16, i32 0, i32 0
  %26 = load i32, i32* %gx17, align 4, !tbaa !16
  %27 = load i32, i32* %X0, align 4, !tbaa !11
  %sub18 = sub nsw i32 %26, %27
  store i32 %sub18, i32* %x0, align 4, !tbaa !11
  %28 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = load i32, i32* %i.addr, align 4, !tbaa !11
  %idxprom19 = sext i32 %29 to i64
  %30 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole20 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %30, i32 0, i32 36
  %31 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole20, align 8, !tbaa !15
  %arrayidx21 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %31, i64 %idxprom19
  %gy22 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx21, i32 0, i32 1
  %32 = load i32, i32* %gy22, align 4, !tbaa !22
  %33 = load i32, i32* %Y0, align 4, !tbaa !11
  %sub23 = sub nsw i32 %32, %33
  store i32 %sub23, i32* %y0, align 4, !tbaa !11
  %34 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load i32, i32* %i.addr, align 4, !tbaa !11
  %add24 = add nsw i32 %35, 1
  %idxprom25 = sext i32 %add24 to i64
  %36 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole26 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %36, i32 0, i32 36
  %37 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole26, align 8, !tbaa !15
  %arrayidx27 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %37, i64 %idxprom25
  %gx28 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx27, i32 0, i32 0
  %38 = load i32, i32* %gx28, align 4, !tbaa !16
  %39 = load i32, i32* %X0, align 4, !tbaa !11
  %sub29 = sub nsw i32 %38, %39
  store i32 %sub29, i32* %x1, align 4, !tbaa !11
  %40 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load i32, i32* %i.addr, align 4, !tbaa !11
  %add30 = add nsw i32 %41, 1
  %idxprom31 = sext i32 %add30 to i64
  %42 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole32 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %42, i32 0, i32 36
  %43 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole32, align 8, !tbaa !15
  %arrayidx33 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %43, i64 %idxprom31
  %gy34 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx33, i32 0, i32 1
  %44 = load i32, i32* %gy34, align 4, !tbaa !22
  %45 = load i32, i32* %Y0, align 4, !tbaa !11
  %sub35 = sub nsw i32 %44, %45
  store i32 %sub35, i32* %y1, align 4, !tbaa !11
  %46 = bitcast i32* %x2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load i32, i32* %i.addr, align 4, !tbaa !11
  %add36 = add nsw i32 %47, 2
  %idxprom37 = sext i32 %add36 to i64
  %48 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole38 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %48, i32 0, i32 36
  %49 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole38, align 8, !tbaa !15
  %arrayidx39 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %49, i64 %idxprom37
  %gx40 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx39, i32 0, i32 0
  %50 = load i32, i32* %gx40, align 4, !tbaa !16
  %51 = load i32, i32* %X0, align 4, !tbaa !11
  %sub41 = sub nsw i32 %50, %51
  store i32 %sub41, i32* %x2, align 4, !tbaa !11
  %52 = bitcast i32* %y2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  %53 = load i32, i32* %i.addr, align 4, !tbaa !11
  %add42 = add nsw i32 %53, 2
  %idxprom43 = sext i32 %add42 to i64
  %54 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole44 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %54, i32 0, i32 36
  %55 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole44, align 8, !tbaa !15
  %arrayidx45 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %55, i64 %idxprom43
  %gy46 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx45, i32 0, i32 1
  %56 = load i32, i32* %gy46, align 4, !tbaa !22
  %57 = load i32, i32* %Y0, align 4, !tbaa !11
  %sub47 = sub nsw i32 %56, %57
  store i32 %sub47, i32* %y2, align 4, !tbaa !11
  %58 = bitcast i32* %x3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = load i32, i32* %i.addr, align 4, !tbaa !11
  %add48 = add nsw i32 %59, 3
  %idxprom49 = sext i32 %add48 to i64
  %60 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole50 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %60, i32 0, i32 36
  %61 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole50, align 8, !tbaa !15
  %arrayidx51 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %61, i64 %idxprom49
  %gx52 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx51, i32 0, i32 0
  %62 = load i32, i32* %gx52, align 4, !tbaa !16
  %63 = load i32, i32* %X0, align 4, !tbaa !11
  %sub53 = sub nsw i32 %62, %63
  store i32 %sub53, i32* %x3, align 4, !tbaa !11
  %64 = bitcast i32* %y3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #1
  %65 = load i32, i32* %i.addr, align 4, !tbaa !11
  %add54 = add nsw i32 %65, 3
  %idxprom55 = sext i32 %add54 to i64
  %66 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole56 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %66, i32 0, i32 36
  %67 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole56, align 8, !tbaa !15
  %arrayidx57 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %67, i64 %idxprom55
  %gy58 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx57, i32 0, i32 1
  %68 = load i32, i32* %gy58, align 4, !tbaa !22
  %69 = load i32, i32* %Y0, align 4, !tbaa !11
  %sub59 = sub nsw i32 %68, %69
  store i32 %sub59, i32* %y3, align 4, !tbaa !11
  %70 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  %71 = load i32, i32* %x1, align 4, !tbaa !11
  %72 = load i32, i32* %y1, align 4, !tbaa !11
  %73 = load i32, i32* %x2, align 4, !tbaa !11
  %74 = load i32, i32* %y2, align 4, !tbaa !11
  %75 = load i32, i32* %x3, align 4, !tbaa !11
  %76 = load i32, i32* %y3, align 4, !tbaa !11
  %call = call i32 @curve_log2_samples(i32 0, i32 0, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76) #5
  store i32 %call, i32* %k, align 4, !tbaa !11
  %77 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %77) #1
  %78 = load i32, i32* %X1, align 4, !tbaa !11
  %79 = load i32, i32* %Y1, align 4, !tbaa !11
  %call60 = call i32 @bar_samples(i32 %78, i32 %79) #5
  store i32 %call60, i32* %m, align 4, !tbaa !11
  %80 = load i32, i32* %m, align 4, !tbaa !11
  %81 = load i32, i32* %k, align 4, !tbaa !11
  %82 = load i32, i32* %X1, align 4, !tbaa !11
  %83 = load i32, i32* %Y1, align 4, !tbaa !11
  %84 = load i32, i32* %x0, align 4, !tbaa !11
  %85 = load i32, i32* %y0, align 4, !tbaa !11
  %86 = load i32, i32* %x1, align 4, !tbaa !11
  %87 = load i32, i32* %y1, align 4, !tbaa !11
  %88 = load i32, i32* %x2, align 4, !tbaa !11
  %89 = load i32, i32* %y2, align 4, !tbaa !11
  %90 = load i32, i32* %x3, align 4, !tbaa !11
  %91 = load i32, i32* %y3, align 4, !tbaa !11
  %call61 = call i32 @intersect_curve_bar_rec(i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91) #5
  %92 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i32* %y3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %x3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %y2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32* %x2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i32* %Y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %X1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %Y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %X0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  ret i32 %call61
}

; Function Attrs: nounwind uwtable
define internal i32 @t1_hinter__intersect_curve_curve(%struct.t1_hinter_s* %self, i32 %i, i32 %j) #0 {
entry:
  %self.addr = alloca %struct.t1_hinter_s*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %ax0 = alloca i32, align 4
  %ay0 = alloca i32, align 4
  %ax1 = alloca i32, align 4
  %ay1 = alloca i32, align 4
  %ax2 = alloca i32, align 4
  %ay2 = alloca i32, align 4
  %ax3 = alloca i32, align 4
  %ay3 = alloca i32, align 4
  %bx0 = alloca i32, align 4
  %by0 = alloca i32, align 4
  %bx1 = alloca i32, align 4
  %by1 = alloca i32, align 4
  %bx2 = alloca i32, align 4
  %by2 = alloca i32, align 4
  %bx3 = alloca i32, align 4
  %by3 = alloca i32, align 4
  %ka = alloca i32, align 4
  %kb = alloca i32, align 4
  store %struct.t1_hinter_s* %self, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !11
  store i32 %j, i32* %j.addr, align 4, !tbaa !11
  %0 = bitcast i32* %ax0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %i.addr, align 4, !tbaa !11
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %2, i32 0, i32 36
  %3 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole, align 8, !tbaa !15
  %arrayidx = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %3, i64 %idxprom
  %gx = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx, i32 0, i32 0
  %4 = load i32, i32* %gx, align 4, !tbaa !16
  store i32 %4, i32* %ax0, align 4, !tbaa !11
  %5 = bitcast i32* %ay0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %i.addr, align 4, !tbaa !11
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole2 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %7, i32 0, i32 36
  %8 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole2, align 8, !tbaa !15
  %arrayidx3 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %8, i64 %idxprom1
  %gy = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx3, i32 0, i32 1
  %9 = load i32, i32* %gy, align 4, !tbaa !22
  store i32 %9, i32* %ay0, align 4, !tbaa !11
  %10 = bitcast i32* %ax1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %i.addr, align 4, !tbaa !11
  %add = add nsw i32 %11, 1
  %idxprom4 = sext i32 %add to i64
  %12 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole5 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %12, i32 0, i32 36
  %13 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole5, align 8, !tbaa !15
  %arrayidx6 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %13, i64 %idxprom4
  %gx7 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx6, i32 0, i32 0
  %14 = load i32, i32* %gx7, align 4, !tbaa !16
  store i32 %14, i32* %ax1, align 4, !tbaa !11
  %15 = bitcast i32* %ay1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %i.addr, align 4, !tbaa !11
  %add8 = add nsw i32 %16, 1
  %idxprom9 = sext i32 %add8 to i64
  %17 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole10 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %17, i32 0, i32 36
  %18 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole10, align 8, !tbaa !15
  %arrayidx11 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %18, i64 %idxprom9
  %gy12 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx11, i32 0, i32 1
  %19 = load i32, i32* %gy12, align 4, !tbaa !22
  store i32 %19, i32* %ay1, align 4, !tbaa !11
  %20 = bitcast i32* %ax2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load i32, i32* %i.addr, align 4, !tbaa !11
  %add13 = add nsw i32 %21, 2
  %idxprom14 = sext i32 %add13 to i64
  %22 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole15 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %22, i32 0, i32 36
  %23 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole15, align 8, !tbaa !15
  %arrayidx16 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %23, i64 %idxprom14
  %gx17 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx16, i32 0, i32 0
  %24 = load i32, i32* %gx17, align 4, !tbaa !16
  store i32 %24, i32* %ax2, align 4, !tbaa !11
  %25 = bitcast i32* %ay2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load i32, i32* %i.addr, align 4, !tbaa !11
  %add18 = add nsw i32 %26, 2
  %idxprom19 = sext i32 %add18 to i64
  %27 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole20 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %27, i32 0, i32 36
  %28 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole20, align 8, !tbaa !15
  %arrayidx21 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %28, i64 %idxprom19
  %gy22 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx21, i32 0, i32 1
  %29 = load i32, i32* %gy22, align 4, !tbaa !22
  store i32 %29, i32* %ay2, align 4, !tbaa !11
  %30 = bitcast i32* %ax3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load i32, i32* %i.addr, align 4, !tbaa !11
  %add23 = add nsw i32 %31, 3
  %idxprom24 = sext i32 %add23 to i64
  %32 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole25 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %32, i32 0, i32 36
  %33 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole25, align 8, !tbaa !15
  %arrayidx26 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %33, i64 %idxprom24
  %gx27 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx26, i32 0, i32 0
  %34 = load i32, i32* %gx27, align 4, !tbaa !16
  store i32 %34, i32* %ax3, align 4, !tbaa !11
  %35 = bitcast i32* %ay3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load i32, i32* %i.addr, align 4, !tbaa !11
  %add28 = add nsw i32 %36, 3
  %idxprom29 = sext i32 %add28 to i64
  %37 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole30 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %37, i32 0, i32 36
  %38 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole30, align 8, !tbaa !15
  %arrayidx31 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %38, i64 %idxprom29
  %gy32 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx31, i32 0, i32 1
  %39 = load i32, i32* %gy32, align 4, !tbaa !22
  store i32 %39, i32* %ay3, align 4, !tbaa !11
  %40 = bitcast i32* %bx0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load i32, i32* %j.addr, align 4, !tbaa !11
  %idxprom33 = sext i32 %41 to i64
  %42 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole34 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %42, i32 0, i32 36
  %43 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole34, align 8, !tbaa !15
  %arrayidx35 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %43, i64 %idxprom33
  %gx36 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx35, i32 0, i32 0
  %44 = load i32, i32* %gx36, align 4, !tbaa !16
  store i32 %44, i32* %bx0, align 4, !tbaa !11
  %45 = bitcast i32* %by0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = load i32, i32* %j.addr, align 4, !tbaa !11
  %idxprom37 = sext i32 %46 to i64
  %47 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole38 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %47, i32 0, i32 36
  %48 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole38, align 8, !tbaa !15
  %arrayidx39 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %48, i64 %idxprom37
  %gy40 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx39, i32 0, i32 1
  %49 = load i32, i32* %gy40, align 4, !tbaa !22
  store i32 %49, i32* %by0, align 4, !tbaa !11
  %50 = bitcast i32* %bx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = load i32, i32* %j.addr, align 4, !tbaa !11
  %add41 = add nsw i32 %51, 1
  %idxprom42 = sext i32 %add41 to i64
  %52 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole43 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %52, i32 0, i32 36
  %53 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole43, align 8, !tbaa !15
  %arrayidx44 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %53, i64 %idxprom42
  %gx45 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx44, i32 0, i32 0
  %54 = load i32, i32* %gx45, align 4, !tbaa !16
  store i32 %54, i32* %bx1, align 4, !tbaa !11
  %55 = bitcast i32* %by1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  %56 = load i32, i32* %j.addr, align 4, !tbaa !11
  %add46 = add nsw i32 %56, 1
  %idxprom47 = sext i32 %add46 to i64
  %57 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole48 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %57, i32 0, i32 36
  %58 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole48, align 8, !tbaa !15
  %arrayidx49 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %58, i64 %idxprom47
  %gy50 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx49, i32 0, i32 1
  %59 = load i32, i32* %gy50, align 4, !tbaa !22
  store i32 %59, i32* %by1, align 4, !tbaa !11
  %60 = bitcast i32* %bx2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  %61 = load i32, i32* %j.addr, align 4, !tbaa !11
  %add51 = add nsw i32 %61, 2
  %idxprom52 = sext i32 %add51 to i64
  %62 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole53 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %62, i32 0, i32 36
  %63 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole53, align 8, !tbaa !15
  %arrayidx54 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %63, i64 %idxprom52
  %gx55 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx54, i32 0, i32 0
  %64 = load i32, i32* %gx55, align 4, !tbaa !16
  store i32 %64, i32* %bx2, align 4, !tbaa !11
  %65 = bitcast i32* %by2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #1
  %66 = load i32, i32* %j.addr, align 4, !tbaa !11
  %add56 = add nsw i32 %66, 2
  %idxprom57 = sext i32 %add56 to i64
  %67 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole58 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %67, i32 0, i32 36
  %68 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole58, align 8, !tbaa !15
  %arrayidx59 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %68, i64 %idxprom57
  %gy60 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx59, i32 0, i32 1
  %69 = load i32, i32* %gy60, align 4, !tbaa !22
  store i32 %69, i32* %by2, align 4, !tbaa !11
  %70 = bitcast i32* %bx3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  %71 = load i32, i32* %j.addr, align 4, !tbaa !11
  %add61 = add nsw i32 %71, 3
  %idxprom62 = sext i32 %add61 to i64
  %72 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole63 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %72, i32 0, i32 36
  %73 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole63, align 8, !tbaa !15
  %arrayidx64 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %73, i64 %idxprom62
  %gx65 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx64, i32 0, i32 0
  %74 = load i32, i32* %gx65, align 4, !tbaa !16
  store i32 %74, i32* %bx3, align 4, !tbaa !11
  %75 = bitcast i32* %by3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #1
  %76 = load i32, i32* %j.addr, align 4, !tbaa !11
  %add66 = add nsw i32 %76, 3
  %idxprom67 = sext i32 %add66 to i64
  %77 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %self.addr, align 8, !tbaa !1
  %pole68 = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %77, i32 0, i32 36
  %78 = load %struct.t1_pole_s*, %struct.t1_pole_s** %pole68, align 8, !tbaa !15
  %arrayidx69 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %78, i64 %idxprom67
  %gy70 = getelementptr inbounds %struct.t1_pole_s, %struct.t1_pole_s* %arrayidx69, i32 0, i32 1
  %79 = load i32, i32* %gy70, align 4, !tbaa !22
  store i32 %79, i32* %by3, align 4, !tbaa !11
  %80 = bitcast i32* %ka to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #1
  %81 = load i32, i32* %ax0, align 4, !tbaa !11
  %82 = load i32, i32* %ay0, align 4, !tbaa !11
  %83 = load i32, i32* %ax1, align 4, !tbaa !11
  %84 = load i32, i32* %ay1, align 4, !tbaa !11
  %85 = load i32, i32* %ax2, align 4, !tbaa !11
  %86 = load i32, i32* %ay2, align 4, !tbaa !11
  %87 = load i32, i32* %ax3, align 4, !tbaa !11
  %88 = load i32, i32* %ay3, align 4, !tbaa !11
  %call = call i32 @curve_log2_samples(i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88) #5
  store i32 %call, i32* %ka, align 4, !tbaa !11
  %89 = bitcast i32* %kb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #1
  %90 = load i32, i32* %bx0, align 4, !tbaa !11
  %91 = load i32, i32* %by0, align 4, !tbaa !11
  %92 = load i32, i32* %bx1, align 4, !tbaa !11
  %93 = load i32, i32* %by1, align 4, !tbaa !11
  %94 = load i32, i32* %bx2, align 4, !tbaa !11
  %95 = load i32, i32* %by2, align 4, !tbaa !11
  %96 = load i32, i32* %bx3, align 4, !tbaa !11
  %97 = load i32, i32* %by3, align 4, !tbaa !11
  %call71 = call i32 @curve_log2_samples(i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 %97) #5
  store i32 %call71, i32* %kb, align 4, !tbaa !11
  %98 = load i32, i32* %ka, align 4, !tbaa !11
  %99 = load i32, i32* %kb, align 4, !tbaa !11
  %100 = load i32, i32* %ax0, align 4, !tbaa !11
  %101 = load i32, i32* %ay0, align 4, !tbaa !11
  %102 = load i32, i32* %ax1, align 4, !tbaa !11
  %103 = load i32, i32* %ay1, align 4, !tbaa !11
  %104 = load i32, i32* %ax2, align 4, !tbaa !11
  %105 = load i32, i32* %ay2, align 4, !tbaa !11
  %106 = load i32, i32* %ax3, align 4, !tbaa !11
  %107 = load i32, i32* %ay3, align 4, !tbaa !11
  %108 = load i32, i32* %bx0, align 4, !tbaa !11
  %109 = load i32, i32* %by0, align 4, !tbaa !11
  %110 = load i32, i32* %bx1, align 4, !tbaa !11
  %111 = load i32, i32* %by1, align 4, !tbaa !11
  %112 = load i32, i32* %bx2, align 4, !tbaa !11
  %113 = load i32, i32* %by2, align 4, !tbaa !11
  %114 = load i32, i32* %bx3, align 4, !tbaa !11
  %115 = load i32, i32* %by3, align 4, !tbaa !11
  %call72 = call i32 @intersect_curve_curve_rec(i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115) #5
  %116 = bitcast i32* %kb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast i32* %ka to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i32* %by3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i32* %bx3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = bitcast i32* %by2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast i32* %bx2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast i32* %by1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %123 = bitcast i32* %bx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast i32* %by0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast i32* %bx0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i32* %ay3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i32* %ax3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = bitcast i32* %ay2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast i32* %ax2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %130 = bitcast i32* %ay1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast i32* %ax1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %132 = bitcast i32* %ay0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #1
  %133 = bitcast i32* %ax0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  ret i32 %call72
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @intersect_bar_bar(i32 %q0x, i32 %q0y, i32 %q1x, i32 %q1y, i32 %q2x, i32 %q2y, i32 %q3x, i32 %q3y) #3 {
entry:
  %retval = alloca i32, align 4
  %q0x.addr = alloca i32, align 4
  %q0y.addr = alloca i32, align 4
  %q1x.addr = alloca i32, align 4
  %q1y.addr = alloca i32, align 4
  %q2x.addr = alloca i32, align 4
  %q2y.addr = alloca i32, align 4
  %q3x.addr = alloca i32, align 4
  %q3y.addr = alloca i32, align 4
  %dx1 = alloca i32, align 4
  %dy1 = alloca i32, align 4
  %dx2 = alloca i32, align 4
  %dy2 = alloca i32, align 4
  %dx3 = alloca i32, align 4
  %dy3 = alloca i32, align 4
  %dx1a = alloca i32, align 4
  %dy1a = alloca i32, align 4
  %dx2a = alloca i32, align 4
  %dy2a = alloca i32, align 4
  %dx3a = alloca i32, align 4
  %dy3a = alloca i32, align 4
  %d = alloca i32, align 4
  %ry = alloca i32, align 4
  %ey = alloca i32, align 4
  store i32 %q0x, i32* %q0x.addr, align 4, !tbaa !11
  store i32 %q0y, i32* %q0y.addr, align 4, !tbaa !11
  store i32 %q1x, i32* %q1x.addr, align 4, !tbaa !11
  store i32 %q1y, i32* %q1y.addr, align 4, !tbaa !11
  store i32 %q2x, i32* %q2x.addr, align 4, !tbaa !11
  store i32 %q2y, i32* %q2y.addr, align 4, !tbaa !11
  store i32 %q3x, i32* %q3x.addr, align 4, !tbaa !11
  store i32 %q3y, i32* %q3y.addr, align 4, !tbaa !11
  %0 = load i32, i32* %q1x.addr, align 4, !tbaa !11
  %1 = load i32, i32* %q0x.addr, align 4, !tbaa !11
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %q1y.addr, align 4, !tbaa !11
  %3 = load i32, i32* %q0y.addr, align 4, !tbaa !11
  %cmp1 = icmp eq i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, i32* %q1x.addr, align 4, !tbaa !11
  %5 = load i32, i32* %q2x.addr, align 4, !tbaa !11
  %cmp2 = icmp eq i32 %4, %5
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.6

land.lhs.true.3:                                  ; preds = %if.end
  %6 = load i32, i32* %q1y.addr, align 4, !tbaa !11
  %7 = load i32, i32* %q2y.addr, align 4, !tbaa !11
  %cmp4 = icmp eq i32 %6, %7
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %land.lhs.true.3
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %land.lhs.true.3, %if.end
  %8 = load i32, i32* %q0x.addr, align 4, !tbaa !11
  %9 = load i32, i32* %q2x.addr, align 4, !tbaa !11
  %cmp7 = icmp eq i32 %8, %9
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.11

land.lhs.true.8:                                  ; preds = %if.end.6
  %10 = load i32, i32* %q0y.addr, align 4, !tbaa !11
  %11 = load i32, i32* %q2y.addr, align 4, !tbaa !11
  %cmp9 = icmp eq i32 %10, %11
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true.8
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true.8, %if.end.6
  %12 = load i32, i32* %q0x.addr, align 4, !tbaa !11
  %13 = load i32, i32* %q3x.addr, align 4, !tbaa !11
  %cmp12 = icmp eq i32 %12, %13
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.16

land.lhs.true.13:                                 ; preds = %if.end.11
  %14 = load i32, i32* %q0y.addr, align 4, !tbaa !11
  %15 = load i32, i32* %q3y.addr, align 4, !tbaa !11
  %cmp14 = icmp eq i32 %14, %15
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true.13
  store i32 1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true.13, %if.end.11
  %16 = load i32, i32* %q1x.addr, align 4, !tbaa !11
  %17 = load i32, i32* %q2x.addr, align 4, !tbaa !11
  %cmp17 = icmp eq i32 %16, %17
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.21

land.lhs.true.18:                                 ; preds = %if.end.16
  %18 = load i32, i32* %q1y.addr, align 4, !tbaa !11
  %19 = load i32, i32* %q2y.addr, align 4, !tbaa !11
  %cmp19 = icmp eq i32 %18, %19
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true.18
  store i32 1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %land.lhs.true.18, %if.end.16
  %20 = load i32, i32* %q1x.addr, align 4, !tbaa !11
  %21 = load i32, i32* %q3x.addr, align 4, !tbaa !11
  %cmp22 = icmp eq i32 %20, %21
  br i1 %cmp22, label %land.lhs.true.23, label %if.else

land.lhs.true.23:                                 ; preds = %if.end.21
  %22 = load i32, i32* %q1y.addr, align 4, !tbaa !11
  %23 = load i32, i32* %q3y.addr, align 4, !tbaa !11
  %cmp24 = icmp eq i32 %22, %23
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %land.lhs.true.23
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.23, %if.end.21
  %24 = bitcast i32* %dx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load i32, i32* %q1x.addr, align 4, !tbaa !11
  %26 = load i32, i32* %q0x.addr, align 4, !tbaa !11
  %sub = sub nsw i32 %25, %26
  store i32 %sub, i32* %dx1, align 4, !tbaa !11
  %27 = bitcast i32* %dy1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i32, i32* %q1y.addr, align 4, !tbaa !11
  %29 = load i32, i32* %q0y.addr, align 4, !tbaa !11
  %sub26 = sub nsw i32 %28, %29
  store i32 %sub26, i32* %dy1, align 4, !tbaa !11
  %30 = bitcast i32* %dx2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load i32, i32* %q2x.addr, align 4, !tbaa !11
  %32 = load i32, i32* %q0x.addr, align 4, !tbaa !11
  %sub27 = sub nsw i32 %31, %32
  store i32 %sub27, i32* %dx2, align 4, !tbaa !11
  %33 = bitcast i32* %dy2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load i32, i32* %q2y.addr, align 4, !tbaa !11
  %35 = load i32, i32* %q0y.addr, align 4, !tbaa !11
  %sub28 = sub nsw i32 %34, %35
  store i32 %sub28, i32* %dy2, align 4, !tbaa !11
  %36 = bitcast i32* %dx3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load i32, i32* %q3x.addr, align 4, !tbaa !11
  %38 = load i32, i32* %q0x.addr, align 4, !tbaa !11
  %sub29 = sub nsw i32 %37, %38
  store i32 %sub29, i32* %dx3, align 4, !tbaa !11
  %39 = bitcast i32* %dy3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = load i32, i32* %q3y.addr, align 4, !tbaa !11
  %41 = load i32, i32* %q0y.addr, align 4, !tbaa !11
  %sub30 = sub nsw i32 %40, %41
  store i32 %sub30, i32* %dy3, align 4, !tbaa !11
  %42 = bitcast i32* %dx1a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = load i32, i32* %dx1, align 4, !tbaa !11
  %cmp31 = icmp slt i32 %43, 0
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %44 = load i32, i32* %dx1, align 4, !tbaa !11
  %sub32 = sub nsw i32 0, %44
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %45 = load i32, i32* %dx1, align 4, !tbaa !11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub32, %cond.true ], [ %45, %cond.false ]
  store i32 %cond, i32* %dx1a, align 4, !tbaa !11
  %46 = bitcast i32* %dy1a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load i32, i32* %dy1, align 4, !tbaa !11
  %cmp33 = icmp slt i32 %47, 0
  br i1 %cmp33, label %cond.true.34, label %cond.false.36

cond.true.34:                                     ; preds = %cond.end
  %48 = load i32, i32* %dy1, align 4, !tbaa !11
  %sub35 = sub nsw i32 0, %48
  br label %cond.end.37

cond.false.36:                                    ; preds = %cond.end
  %49 = load i32, i32* %dy1, align 4, !tbaa !11
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.34
  %cond38 = phi i32 [ %sub35, %cond.true.34 ], [ %49, %cond.false.36 ]
  store i32 %cond38, i32* %dy1a, align 4, !tbaa !11
  %50 = bitcast i32* %dx2a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = load i32, i32* %dx2, align 4, !tbaa !11
  %cmp39 = icmp slt i32 %51, 0
  br i1 %cmp39, label %cond.true.40, label %cond.false.42

cond.true.40:                                     ; preds = %cond.end.37
  %52 = load i32, i32* %dx2, align 4, !tbaa !11
  %sub41 = sub nsw i32 0, %52
  br label %cond.end.43

cond.false.42:                                    ; preds = %cond.end.37
  %53 = load i32, i32* %dx2, align 4, !tbaa !11
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.40
  %cond44 = phi i32 [ %sub41, %cond.true.40 ], [ %53, %cond.false.42 ]
  store i32 %cond44, i32* %dx2a, align 4, !tbaa !11
  %54 = bitcast i32* %dy2a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  %55 = load i32, i32* %dy2, align 4, !tbaa !11
  %cmp45 = icmp slt i32 %55, 0
  br i1 %cmp45, label %cond.true.46, label %cond.false.48

cond.true.46:                                     ; preds = %cond.end.43
  %56 = load i32, i32* %dy2, align 4, !tbaa !11
  %sub47 = sub nsw i32 0, %56
  br label %cond.end.49

cond.false.48:                                    ; preds = %cond.end.43
  %57 = load i32, i32* %dy2, align 4, !tbaa !11
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.48, %cond.true.46
  %cond50 = phi i32 [ %sub47, %cond.true.46 ], [ %57, %cond.false.48 ]
  store i32 %cond50, i32* %dy2a, align 4, !tbaa !11
  %58 = bitcast i32* %dx3a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = load i32, i32* %dx3, align 4, !tbaa !11
  %cmp51 = icmp slt i32 %59, 0
  br i1 %cmp51, label %cond.true.52, label %cond.false.54

cond.true.52:                                     ; preds = %cond.end.49
  %60 = load i32, i32* %dx3, align 4, !tbaa !11
  %sub53 = sub nsw i32 0, %60
  br label %cond.end.55

cond.false.54:                                    ; preds = %cond.end.49
  %61 = load i32, i32* %dx3, align 4, !tbaa !11
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.54, %cond.true.52
  %cond56 = phi i32 [ %sub53, %cond.true.52 ], [ %61, %cond.false.54 ]
  store i32 %cond56, i32* %dx3a, align 4, !tbaa !11
  %62 = bitcast i32* %dy3a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  %63 = load i32, i32* %dy3, align 4, !tbaa !11
  %cmp57 = icmp slt i32 %63, 0
  br i1 %cmp57, label %cond.true.58, label %cond.false.60

cond.true.58:                                     ; preds = %cond.end.55
  %64 = load i32, i32* %dy3, align 4, !tbaa !11
  %sub59 = sub nsw i32 0, %64
  br label %cond.end.61

cond.false.60:                                    ; preds = %cond.end.55
  %65 = load i32, i32* %dy3, align 4, !tbaa !11
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.60, %cond.true.58
  %cond62 = phi i32 [ %sub59, %cond.true.58 ], [ %65, %cond.false.60 ]
  store i32 %cond62, i32* %dy3a, align 4, !tbaa !11
  %66 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #1
  %67 = load i32, i32* %dx1a, align 4, !tbaa !11
  %68 = load i32, i32* %dy1a, align 4, !tbaa !11
  %or = or i32 %67, %68
  %69 = load i32, i32* %dx2a, align 4, !tbaa !11
  %or63 = or i32 %or, %69
  %70 = load i32, i32* %dy2a, align 4, !tbaa !11
  %or64 = or i32 %or63, %70
  %71 = load i32, i32* %dx3a, align 4, !tbaa !11
  %or65 = or i32 %or64, %71
  %72 = load i32, i32* %dy3a, align 4, !tbaa !11
  %or66 = or i32 %or65, %72
  store i32 %or66, i32* %d, align 4, !tbaa !11
  %73 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  %74 = bitcast i32* %ey to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end.61
  %75 = load i32, i32* %d, align 4, !tbaa !11
  %cmp67 = icmp sge i32 %75, 1048576
  br i1 %cmp67, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %76 = load i32, i32* %d, align 4, !tbaa !11
  %shr = ashr i32 %76, 1
  store i32 %shr, i32* %d, align 4, !tbaa !11
  %77 = load i32, i32* %dx1, align 4, !tbaa !11
  %add = add nsw i32 %77, 1
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %dx1, align 4, !tbaa !11
  %78 = load i32, i32* %dy1, align 4, !tbaa !11
  %add68 = add nsw i32 %78, 1
  %div69 = sdiv i32 %add68, 2
  store i32 %div69, i32* %dy1, align 4, !tbaa !11
  %79 = load i32, i32* %dy2, align 4, !tbaa !11
  %add70 = add nsw i32 %79, 1
  %div71 = sdiv i32 %add70, 2
  store i32 %div71, i32* %dx2, align 4, !tbaa !11
  %80 = load i32, i32* %dy2, align 4, !tbaa !11
  %add72 = add nsw i32 %80, 1
  %div73 = sdiv i32 %add72, 2
  store i32 %div73, i32* %dy2, align 4, !tbaa !11
  %81 = load i32, i32* %dy3, align 4, !tbaa !11
  %add74 = add nsw i32 %81, 1
  %div75 = sdiv i32 %add74, 2
  store i32 %div75, i32* %dx3, align 4, !tbaa !11
  %82 = load i32, i32* %dy3, align 4, !tbaa !11
  %add76 = add nsw i32 %82, 1
  %div77 = sdiv i32 %add76, 2
  store i32 %div77, i32* %dy3, align 4, !tbaa !11
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %83 = load i32, i32* %dx1, align 4, !tbaa !11
  %84 = load i32, i32* %dy1, align 4, !tbaa !11
  %85 = load i32, i32* %dx2, align 4, !tbaa !11
  %86 = load i32, i32* %dy2, align 4, !tbaa !11
  %87 = load i32, i32* %dx3, align 4, !tbaa !11
  %88 = load i32, i32* %dy3, align 4, !tbaa !11
  %call = call i32 @gx_intersect_small_bars(i32 0, i32 0, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32* %ry, i32* %ey) #5
  store i32 %call, i32* %retval
  %89 = bitcast i32* %ey to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %dy3a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i32* %dx3a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i32* %dy2a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %dx2a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %dy1a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32* %dx1a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i32* %dy3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i32* %dx3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %dy2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i32* %dx2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i32* %dy1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %dx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  br label %return

return:                                           ; preds = %while.end, %if.then.25, %if.then.20, %if.then.15, %if.then.10, %if.then.5, %if.then
  %104 = load i32, i32* %retval
  ret i32 %104
}

declare i32 @gx_intersect_small_bars(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*) #4

; Function Attrs: nounwind uwtable
define internal i32 @bar_samples(i32 %dx, i32 %dy) #0 {
entry:
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !11
  store i32 %dy, i32* %dy.addr, align 4, !tbaa !11
  %0 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %dx.addr, align 4, !tbaa !11
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %dx.addr, align 4, !tbaa !11
  %sub = sub nsw i32 0, %2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %dx.addr, align 4, !tbaa !11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %3, %cond.false ]
  %4 = load i32, i32* %dy.addr, align 4, !tbaa !11
  %cmp1 = icmp slt i32 %4, 0
  br i1 %cmp1, label %cond.true.2, label %cond.false.4

cond.true.2:                                      ; preds = %cond.end
  %5 = load i32, i32* %dy.addr, align 4, !tbaa !11
  %sub3 = sub nsw i32 0, %5
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  %6 = load i32, i32* %dy.addr, align 4, !tbaa !11
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.2
  %cond6 = phi i32 [ %sub3, %cond.true.2 ], [ %6, %cond.false.4 ]
  %or = or i32 %cond, %cond6
  %conv = sext i32 %or to i64
  %div = sdiv i64 %conv, 256
  %conv7 = trunc i64 %div to i32
  store i32 %conv7, i32* %l, align 4, !tbaa !11
  %7 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %m, align 4, !tbaa !11
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end.5
  %8 = load i32, i32* %l, align 4, !tbaa !11
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* %l, align 4, !tbaa !11
  %shr = ashr i32 %9, 1
  store i32 %shr, i32* %l, align 4, !tbaa !11
  %10 = load i32, i32* %m, align 4, !tbaa !11
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %m, align 4, !tbaa !11
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %m, align 4, !tbaa !11
  %12 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @intersect_curve_bar_rec(i32 %m, i32 %k, i32 %X1, i32 %Y1, i32 %x0, i32 %y0, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i32 %x3, i32 %y3) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %X1.addr = alloca i32, align 4
  %Y1.addr = alloca i32, align 4
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %x3.addr = alloca i32, align 4
  %y3.addr = alloca i32, align 4
  %box0 = alloca %struct.gs_rect_s, align 8
  %box1 = alloca %struct.gs_rect_s, align 8
  %cleanup.dest.slot = alloca i32
  %x01 = alloca i32, align 4
  %y01 = alloca i32, align 4
  %x12 = alloca i32, align 4
  %y12 = alloca i32, align 4
  %x23 = alloca i32, align 4
  %y23197 = alloca i32, align 4
  %x012 = alloca i32, align 4
  %y012 = alloca i32, align 4
  %x123204 = alloca i32, align 4
  %y123 = alloca i32, align 4
  %x0123 = alloca i32, align 4
  %y0123 = alloca i32, align 4
  %X01 = alloca i32, align 4
  %Y01 = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4, !tbaa !11
  store i32 %k, i32* %k.addr, align 4, !tbaa !11
  store i32 %X1, i32* %X1.addr, align 4, !tbaa !11
  store i32 %Y1, i32* %Y1.addr, align 4, !tbaa !11
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !11
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !11
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !11
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !11
  store i32 %x2, i32* %x2.addr, align 4, !tbaa !11
  store i32 %y2, i32* %y2.addr, align 4, !tbaa !11
  store i32 %x3, i32* %x3.addr, align 4, !tbaa !11
  store i32 %y3, i32* %y3.addr, align 4, !tbaa !11
  %0 = load i32, i32* %m.addr, align 4, !tbaa !11
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %X1.addr, align 4, !tbaa !11
  %2 = load i32, i32* %Y1.addr, align 4, !tbaa !11
  %3 = load i32, i32* %x0.addr, align 4, !tbaa !11
  %4 = load i32, i32* %y0.addr, align 4, !tbaa !11
  %5 = load i32, i32* %x3.addr, align 4, !tbaa !11
  %6 = load i32, i32* %y3.addr, align 4, !tbaa !11
  %call = call i32 @intersect_bar_bar(i32 0, i32 0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #5
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %7 = bitcast %struct.gs_rect_s* %box0 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #1
  %8 = bitcast %struct.gs_rect_s* %box1 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %8) #1
  %9 = load i32, i32* %X1.addr, align 4, !tbaa !11
  %cmp1 = icmp slt i32 %9, 0
  br i1 %cmp1, label %if.then.2, label %if.else.5

if.then.2:                                        ; preds = %if.else
  %10 = load i32, i32* %X1.addr, align 4, !tbaa !11
  %conv = sitofp i32 %10 to double
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  store double %conv, double* %x, align 8, !tbaa !21
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 1
  %x4 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  store double 0.000000e+00, double* %x4, align 8, !tbaa !18
  br label %if.end

if.else.5:                                        ; preds = %if.else
  %p6 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 0
  %x7 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p6, i32 0, i32 0
  store double 0.000000e+00, double* %x7, align 8, !tbaa !21
  %11 = load i32, i32* %X1.addr, align 4, !tbaa !11
  %conv8 = sitofp i32 %11 to double
  %q9 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 1
  %x10 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q9, i32 0, i32 0
  store double %conv8, double* %x10, align 8, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.2
  %12 = load i32, i32* %Y1.addr, align 4, !tbaa !11
  %cmp11 = icmp slt i32 %12, 0
  br i1 %cmp11, label %if.then.13, label %if.else.18

if.then.13:                                       ; preds = %if.end
  %13 = load i32, i32* %Y1.addr, align 4, !tbaa !11
  %conv14 = sitofp i32 %13 to double
  %p15 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p15, i32 0, i32 1
  store double %conv14, double* %y, align 8, !tbaa !24
  %q16 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 1
  %y17 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q16, i32 0, i32 1
  store double 0.000000e+00, double* %y17, align 8, !tbaa !23
  br label %if.end.24

if.else.18:                                       ; preds = %if.end
  %p19 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 0
  %y20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p19, i32 0, i32 1
  store double 0.000000e+00, double* %y20, align 8, !tbaa !24
  %14 = load i32, i32* %Y1.addr, align 4, !tbaa !11
  %conv21 = sitofp i32 %14 to double
  %q22 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 1
  %y23 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q22, i32 0, i32 1
  store double %conv21, double* %y23, align 8, !tbaa !23
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.18, %if.then.13
  %15 = load i32, i32* %x0.addr, align 4, !tbaa !11
  %conv25 = sitofp i32 %15 to double
  %q26 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %x27 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q26, i32 0, i32 0
  store double %conv25, double* %x27, align 8, !tbaa !18
  %p28 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %x29 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p28, i32 0, i32 0
  store double %conv25, double* %x29, align 8, !tbaa !21
  %16 = load i32, i32* %y0.addr, align 4, !tbaa !11
  %conv30 = sitofp i32 %16 to double
  %q31 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %y32 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q31, i32 0, i32 1
  store double %conv30, double* %y32, align 8, !tbaa !23
  %p33 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %y34 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p33, i32 0, i32 1
  store double %conv30, double* %y34, align 8, !tbaa !24
  %p35 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %x36 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p35, i32 0, i32 0
  %17 = load double, double* %x36, align 8, !tbaa !21
  %18 = load i32, i32* %x1.addr, align 4, !tbaa !11
  %conv37 = sitofp i32 %18 to double
  %cmp38 = fcmp ogt double %17, %conv37
  br i1 %cmp38, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %if.end.24
  %19 = load i32, i32* %x1.addr, align 4, !tbaa !11
  %conv41 = sitofp i32 %19 to double
  %p42 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %x43 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p42, i32 0, i32 0
  store double %conv41, double* %x43, align 8, !tbaa !21
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.40, %if.end.24
  %q45 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %x46 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q45, i32 0, i32 0
  %20 = load double, double* %x46, align 8, !tbaa !18
  %21 = load i32, i32* %x1.addr, align 4, !tbaa !11
  %conv47 = sitofp i32 %21 to double
  %cmp48 = fcmp olt double %20, %conv47
  br i1 %cmp48, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %if.end.44
  %22 = load i32, i32* %x1.addr, align 4, !tbaa !11
  %conv51 = sitofp i32 %22 to double
  %q52 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %x53 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q52, i32 0, i32 0
  store double %conv51, double* %x53, align 8, !tbaa !18
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.50, %if.end.44
  %p55 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %y56 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p55, i32 0, i32 1
  %23 = load double, double* %y56, align 8, !tbaa !24
  %24 = load i32, i32* %y1.addr, align 4, !tbaa !11
  %conv57 = sitofp i32 %24 to double
  %cmp58 = fcmp ogt double %23, %conv57
  br i1 %cmp58, label %if.then.60, label %if.end.64

if.then.60:                                       ; preds = %if.end.54
  %25 = load i32, i32* %y1.addr, align 4, !tbaa !11
  %conv61 = sitofp i32 %25 to double
  %p62 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %y63 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p62, i32 0, i32 1
  store double %conv61, double* %y63, align 8, !tbaa !24
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.60, %if.end.54
  %q65 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %y66 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q65, i32 0, i32 1
  %26 = load double, double* %y66, align 8, !tbaa !23
  %27 = load i32, i32* %y1.addr, align 4, !tbaa !11
  %conv67 = sitofp i32 %27 to double
  %cmp68 = fcmp olt double %26, %conv67
  br i1 %cmp68, label %if.then.70, label %if.end.74

if.then.70:                                       ; preds = %if.end.64
  %28 = load i32, i32* %y1.addr, align 4, !tbaa !11
  %conv71 = sitofp i32 %28 to double
  %q72 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %y73 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q72, i32 0, i32 1
  store double %conv71, double* %y73, align 8, !tbaa !23
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.70, %if.end.64
  %p75 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %x76 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p75, i32 0, i32 0
  %29 = load double, double* %x76, align 8, !tbaa !21
  %30 = load i32, i32* %x2.addr, align 4, !tbaa !11
  %conv77 = sitofp i32 %30 to double
  %cmp78 = fcmp ogt double %29, %conv77
  br i1 %cmp78, label %if.then.80, label %if.end.84

if.then.80:                                       ; preds = %if.end.74
  %31 = load i32, i32* %x2.addr, align 4, !tbaa !11
  %conv81 = sitofp i32 %31 to double
  %p82 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %x83 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p82, i32 0, i32 0
  store double %conv81, double* %x83, align 8, !tbaa !21
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.80, %if.end.74
  %q85 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %x86 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q85, i32 0, i32 0
  %32 = load double, double* %x86, align 8, !tbaa !18
  %33 = load i32, i32* %x2.addr, align 4, !tbaa !11
  %conv87 = sitofp i32 %33 to double
  %cmp88 = fcmp olt double %32, %conv87
  br i1 %cmp88, label %if.then.90, label %if.end.94

if.then.90:                                       ; preds = %if.end.84
  %34 = load i32, i32* %x2.addr, align 4, !tbaa !11
  %conv91 = sitofp i32 %34 to double
  %q92 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %x93 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q92, i32 0, i32 0
  store double %conv91, double* %x93, align 8, !tbaa !18
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.90, %if.end.84
  %p95 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %y96 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p95, i32 0, i32 1
  %35 = load double, double* %y96, align 8, !tbaa !24
  %36 = load i32, i32* %y2.addr, align 4, !tbaa !11
  %conv97 = sitofp i32 %36 to double
  %cmp98 = fcmp ogt double %35, %conv97
  br i1 %cmp98, label %if.then.100, label %if.end.104

if.then.100:                                      ; preds = %if.end.94
  %37 = load i32, i32* %y2.addr, align 4, !tbaa !11
  %conv101 = sitofp i32 %37 to double
  %p102 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %y103 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p102, i32 0, i32 1
  store double %conv101, double* %y103, align 8, !tbaa !24
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.100, %if.end.94
  %q105 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %y106 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q105, i32 0, i32 1
  %38 = load double, double* %y106, align 8, !tbaa !23
  %39 = load i32, i32* %y2.addr, align 4, !tbaa !11
  %conv107 = sitofp i32 %39 to double
  %cmp108 = fcmp olt double %38, %conv107
  br i1 %cmp108, label %if.then.110, label %if.end.114

if.then.110:                                      ; preds = %if.end.104
  %40 = load i32, i32* %y2.addr, align 4, !tbaa !11
  %conv111 = sitofp i32 %40 to double
  %q112 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %y113 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q112, i32 0, i32 1
  store double %conv111, double* %y113, align 8, !tbaa !23
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.110, %if.end.104
  %p115 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %x116 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p115, i32 0, i32 0
  %41 = load double, double* %x116, align 8, !tbaa !21
  %42 = load i32, i32* %x3.addr, align 4, !tbaa !11
  %conv117 = sitofp i32 %42 to double
  %cmp118 = fcmp ogt double %41, %conv117
  br i1 %cmp118, label %if.then.120, label %if.end.124

if.then.120:                                      ; preds = %if.end.114
  %43 = load i32, i32* %x3.addr, align 4, !tbaa !11
  %conv121 = sitofp i32 %43 to double
  %p122 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %x123 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p122, i32 0, i32 0
  store double %conv121, double* %x123, align 8, !tbaa !21
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.120, %if.end.114
  %q125 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %x126 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q125, i32 0, i32 0
  %44 = load double, double* %x126, align 8, !tbaa !18
  %45 = load i32, i32* %x3.addr, align 4, !tbaa !11
  %conv127 = sitofp i32 %45 to double
  %cmp128 = fcmp olt double %44, %conv127
  br i1 %cmp128, label %if.then.130, label %if.end.134

if.then.130:                                      ; preds = %if.end.124
  %46 = load i32, i32* %x3.addr, align 4, !tbaa !11
  %conv131 = sitofp i32 %46 to double
  %q132 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %x133 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q132, i32 0, i32 0
  store double %conv131, double* %x133, align 8, !tbaa !18
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.130, %if.end.124
  %p135 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %y136 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p135, i32 0, i32 1
  %47 = load double, double* %y136, align 8, !tbaa !24
  %48 = load i32, i32* %y3.addr, align 4, !tbaa !11
  %conv137 = sitofp i32 %48 to double
  %cmp138 = fcmp ogt double %47, %conv137
  br i1 %cmp138, label %if.then.140, label %if.end.144

if.then.140:                                      ; preds = %if.end.134
  %49 = load i32, i32* %y3.addr, align 4, !tbaa !11
  %conv141 = sitofp i32 %49 to double
  %p142 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %y143 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p142, i32 0, i32 1
  store double %conv141, double* %y143, align 8, !tbaa !24
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.140, %if.end.134
  %q145 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %y146 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q145, i32 0, i32 1
  %50 = load double, double* %y146, align 8, !tbaa !23
  %51 = load i32, i32* %y3.addr, align 4, !tbaa !11
  %conv147 = sitofp i32 %51 to double
  %cmp148 = fcmp olt double %50, %conv147
  br i1 %cmp148, label %if.then.150, label %if.end.154

if.then.150:                                      ; preds = %if.end.144
  %52 = load i32, i32* %y3.addr, align 4, !tbaa !11
  %conv151 = sitofp i32 %52 to double
  %q152 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %y153 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q152, i32 0, i32 1
  store double %conv151, double* %y153, align 8, !tbaa !23
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.150, %if.end.144
  %p155 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 0
  %x156 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p155, i32 0, i32 0
  %53 = load double, double* %x156, align 8, !tbaa !21
  %q157 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %x158 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q157, i32 0, i32 0
  %54 = load double, double* %x158, align 8, !tbaa !18
  %cmp159 = fcmp ogt double %53, %54
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %if.end.154
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.162:                                       ; preds = %if.end.154
  %q163 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 1
  %x164 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q163, i32 0, i32 0
  %55 = load double, double* %x164, align 8, !tbaa !18
  %p165 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %x166 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p165, i32 0, i32 0
  %56 = load double, double* %x166, align 8, !tbaa !21
  %cmp167 = fcmp olt double %55, %56
  br i1 %cmp167, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %if.end.162
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.170:                                       ; preds = %if.end.162
  %p171 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 0
  %y172 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p171, i32 0, i32 1
  %57 = load double, double* %y172, align 8, !tbaa !24
  %q173 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %y174 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q173, i32 0, i32 1
  %58 = load double, double* %y174, align 8, !tbaa !23
  %cmp175 = fcmp ogt double %57, %58
  br i1 %cmp175, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %if.end.170
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.178:                                       ; preds = %if.end.170
  %q179 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 1
  %y180 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q179, i32 0, i32 1
  %59 = load double, double* %y180, align 8, !tbaa !23
  %p181 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %y182 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p181, i32 0, i32 1
  %60 = load double, double* %y182, align 8, !tbaa !24
  %cmp183 = fcmp olt double %59, %60
  br i1 %cmp183, label %if.then.185, label %if.end.186

if.then.185:                                      ; preds = %if.end.178
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.186:                                       ; preds = %if.end.178
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.186, %if.then.185, %if.then.177, %if.then.169, %if.then.161
  %61 = bitcast %struct.gs_rect_s* %box1 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %61) #1
  %62 = bitcast %struct.gs_rect_s* %box0 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %62) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.188

if.end.188:                                       ; preds = %cleanup.cont
  %63 = bitcast i32* %x01 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #1
  %64 = load i32, i32* %x0.addr, align 4, !tbaa !11
  %65 = load i32, i32* %x1.addr, align 4, !tbaa !11
  %add = add nsw i32 %64, %65
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %x01, align 4, !tbaa !11
  %66 = bitcast i32* %y01 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #1
  %67 = load i32, i32* %y0.addr, align 4, !tbaa !11
  %68 = load i32, i32* %y1.addr, align 4, !tbaa !11
  %add189 = add nsw i32 %67, %68
  %div190 = sdiv i32 %add189, 2
  store i32 %div190, i32* %y01, align 4, !tbaa !11
  %69 = bitcast i32* %x12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  %70 = load i32, i32* %x1.addr, align 4, !tbaa !11
  %71 = load i32, i32* %x2.addr, align 4, !tbaa !11
  %add191 = add nsw i32 %70, %71
  %div192 = sdiv i32 %add191, 2
  store i32 %div192, i32* %x12, align 4, !tbaa !11
  %72 = bitcast i32* %y12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #1
  %73 = load i32, i32* %y1.addr, align 4, !tbaa !11
  %74 = load i32, i32* %y2.addr, align 4, !tbaa !11
  %add193 = add nsw i32 %73, %74
  %div194 = sdiv i32 %add193, 2
  store i32 %div194, i32* %y12, align 4, !tbaa !11
  %75 = bitcast i32* %x23 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #1
  %76 = load i32, i32* %x2.addr, align 4, !tbaa !11
  %77 = load i32, i32* %x3.addr, align 4, !tbaa !11
  %add195 = add nsw i32 %76, %77
  %div196 = sdiv i32 %add195, 2
  store i32 %div196, i32* %x23, align 4, !tbaa !11
  %78 = bitcast i32* %y23197 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #1
  %79 = load i32, i32* %y2.addr, align 4, !tbaa !11
  %80 = load i32, i32* %y3.addr, align 4, !tbaa !11
  %add198 = add nsw i32 %79, %80
  %div199 = sdiv i32 %add198, 2
  store i32 %div199, i32* %y23197, align 4, !tbaa !11
  %81 = bitcast i32* %x012 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #1
  %82 = load i32, i32* %x01, align 4, !tbaa !11
  %83 = load i32, i32* %x12, align 4, !tbaa !11
  %add200 = add nsw i32 %82, %83
  %div201 = sdiv i32 %add200, 2
  store i32 %div201, i32* %x012, align 4, !tbaa !11
  %84 = bitcast i32* %y012 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  %85 = load i32, i32* %y01, align 4, !tbaa !11
  %86 = load i32, i32* %y12, align 4, !tbaa !11
  %add202 = add nsw i32 %85, %86
  %div203 = sdiv i32 %add202, 2
  store i32 %div203, i32* %y012, align 4, !tbaa !11
  %87 = bitcast i32* %x123204 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #1
  %88 = load i32, i32* %x12, align 4, !tbaa !11
  %89 = load i32, i32* %x23, align 4, !tbaa !11
  %add205 = add nsw i32 %88, %89
  %div206 = sdiv i32 %add205, 2
  store i32 %div206, i32* %x123204, align 4, !tbaa !11
  %90 = bitcast i32* %y123 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %90) #1
  %91 = load i32, i32* %y12, align 4, !tbaa !11
  %92 = load i32, i32* %y23197, align 4, !tbaa !11
  %add207 = add nsw i32 %91, %92
  %div208 = sdiv i32 %add207, 2
  store i32 %div208, i32* %y123, align 4, !tbaa !11
  %93 = bitcast i32* %x0123 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %93) #1
  %94 = load i32, i32* %x012, align 4, !tbaa !11
  %95 = load i32, i32* %x123204, align 4, !tbaa !11
  %add209 = add nsw i32 %94, %95
  %div210 = sdiv i32 %add209, 2
  store i32 %div210, i32* %x0123, align 4, !tbaa !11
  %96 = bitcast i32* %y0123 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %96) #1
  %97 = load i32, i32* %y012, align 4, !tbaa !11
  %98 = load i32, i32* %y123, align 4, !tbaa !11
  %add211 = add nsw i32 %97, %98
  %div212 = sdiv i32 %add211, 2
  store i32 %div212, i32* %y0123, align 4, !tbaa !11
  %99 = load i32, i32* %k.addr, align 4, !tbaa !11
  %cmp213 = icmp sle i32 %99, 1
  br i1 %cmp213, label %if.then.215, label %if.else.224

if.then.215:                                      ; preds = %if.end.188
  %100 = load i32, i32* %m.addr, align 4, !tbaa !11
  %sub = sub nsw i32 %100, 1
  %101 = load i32, i32* %k.addr, align 4, !tbaa !11
  %102 = load i32, i32* %X1.addr, align 4, !tbaa !11
  %103 = load i32, i32* %Y1.addr, align 4, !tbaa !11
  %104 = load i32, i32* %x0.addr, align 4, !tbaa !11
  %105 = load i32, i32* %y0.addr, align 4, !tbaa !11
  %106 = load i32, i32* %x01, align 4, !tbaa !11
  %107 = load i32, i32* %y01, align 4, !tbaa !11
  %108 = load i32, i32* %x012, align 4, !tbaa !11
  %109 = load i32, i32* %y012, align 4, !tbaa !11
  %110 = load i32, i32* %x0123, align 4, !tbaa !11
  %111 = load i32, i32* %y0123, align 4, !tbaa !11
  %call216 = call i32 @intersect_curve_bar_rec(i32 %sub, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 %110, i32 %111) #5
  %tobool = icmp ne i32 %call216, 0
  br i1 %tobool, label %if.then.217, label %if.end.218

if.then.217:                                      ; preds = %if.then.215
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.276

if.end.218:                                       ; preds = %if.then.215
  %112 = load i32, i32* %m.addr, align 4, !tbaa !11
  %sub219 = sub nsw i32 %112, 1
  %113 = load i32, i32* %k.addr, align 4, !tbaa !11
  %114 = load i32, i32* %X1.addr, align 4, !tbaa !11
  %115 = load i32, i32* %Y1.addr, align 4, !tbaa !11
  %116 = load i32, i32* %x0123, align 4, !tbaa !11
  %117 = load i32, i32* %y0123, align 4, !tbaa !11
  %118 = load i32, i32* %x123204, align 4, !tbaa !11
  %119 = load i32, i32* %y123, align 4, !tbaa !11
  %120 = load i32, i32* %x23, align 4, !tbaa !11
  %121 = load i32, i32* %y23197, align 4, !tbaa !11
  %122 = load i32, i32* %x3.addr, align 4, !tbaa !11
  %123 = load i32, i32* %y3.addr, align 4, !tbaa !11
  %call220 = call i32 @intersect_curve_bar_rec(i32 %sub219, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121, i32 %122, i32 %123) #5
  %tobool221 = icmp ne i32 %call220, 0
  br i1 %tobool221, label %if.then.222, label %if.end.223

if.then.222:                                      ; preds = %if.end.218
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.276

if.end.223:                                       ; preds = %if.end.218
  br label %if.end.275

if.else.224:                                      ; preds = %if.end.188
  %124 = bitcast i32* %X01 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %124) #1
  %125 = load i32, i32* %X1.addr, align 4, !tbaa !11
  %div225 = sdiv i32 %125, 2
  store i32 %div225, i32* %X01, align 4, !tbaa !11
  %126 = bitcast i32* %Y01 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %126) #1
  %127 = load i32, i32* %Y1.addr, align 4, !tbaa !11
  %div226 = sdiv i32 %127, 2
  store i32 %div226, i32* %Y01, align 4, !tbaa !11
  %128 = load i32, i32* %m.addr, align 4, !tbaa !11
  %sub227 = sub nsw i32 %128, 1
  %129 = load i32, i32* %k.addr, align 4, !tbaa !11
  %sub228 = sub nsw i32 %129, 1
  %130 = load i32, i32* %X01, align 4, !tbaa !11
  %131 = load i32, i32* %Y01, align 4, !tbaa !11
  %132 = load i32, i32* %x0.addr, align 4, !tbaa !11
  %133 = load i32, i32* %y0.addr, align 4, !tbaa !11
  %134 = load i32, i32* %x01, align 4, !tbaa !11
  %135 = load i32, i32* %y01, align 4, !tbaa !11
  %136 = load i32, i32* %x012, align 4, !tbaa !11
  %137 = load i32, i32* %y012, align 4, !tbaa !11
  %138 = load i32, i32* %x0123, align 4, !tbaa !11
  %139 = load i32, i32* %y0123, align 4, !tbaa !11
  %call229 = call i32 @intersect_curve_bar_rec(i32 %sub227, i32 %sub228, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139) #5
  %tobool230 = icmp ne i32 %call229, 0
  br i1 %tobool230, label %if.then.231, label %if.end.232

if.then.231:                                      ; preds = %if.else.224
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.271

if.end.232:                                       ; preds = %if.else.224
  %140 = load i32, i32* %m.addr, align 4, !tbaa !11
  %sub233 = sub nsw i32 %140, 1
  %141 = load i32, i32* %k.addr, align 4, !tbaa !11
  %sub234 = sub nsw i32 %141, 1
  %142 = load i32, i32* %X01, align 4, !tbaa !11
  %143 = load i32, i32* %Y01, align 4, !tbaa !11
  %144 = load i32, i32* %x0123, align 4, !tbaa !11
  %145 = load i32, i32* %y0123, align 4, !tbaa !11
  %146 = load i32, i32* %x123204, align 4, !tbaa !11
  %147 = load i32, i32* %y123, align 4, !tbaa !11
  %148 = load i32, i32* %x23, align 4, !tbaa !11
  %149 = load i32, i32* %y23197, align 4, !tbaa !11
  %150 = load i32, i32* %x3.addr, align 4, !tbaa !11
  %151 = load i32, i32* %y3.addr, align 4, !tbaa !11
  %call235 = call i32 @intersect_curve_bar_rec(i32 %sub233, i32 %sub234, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151) #5
  %tobool236 = icmp ne i32 %call235, 0
  br i1 %tobool236, label %if.then.237, label %if.end.238

if.then.237:                                      ; preds = %if.end.232
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.271

if.end.238:                                       ; preds = %if.end.232
  %152 = load i32, i32* %m.addr, align 4, !tbaa !11
  %sub239 = sub nsw i32 %152, 1
  %153 = load i32, i32* %k.addr, align 4, !tbaa !11
  %sub240 = sub nsw i32 %153, 1
  %154 = load i32, i32* %X1.addr, align 4, !tbaa !11
  %155 = load i32, i32* %X01, align 4, !tbaa !11
  %sub241 = sub nsw i32 %154, %155
  %156 = load i32, i32* %Y1.addr, align 4, !tbaa !11
  %157 = load i32, i32* %Y01, align 4, !tbaa !11
  %sub242 = sub nsw i32 %156, %157
  %158 = load i32, i32* %x0.addr, align 4, !tbaa !11
  %159 = load i32, i32* %X01, align 4, !tbaa !11
  %sub243 = sub nsw i32 %158, %159
  %160 = load i32, i32* %y0.addr, align 4, !tbaa !11
  %161 = load i32, i32* %Y01, align 4, !tbaa !11
  %sub244 = sub nsw i32 %160, %161
  %162 = load i32, i32* %x01, align 4, !tbaa !11
  %163 = load i32, i32* %X01, align 4, !tbaa !11
  %sub245 = sub nsw i32 %162, %163
  %164 = load i32, i32* %y01, align 4, !tbaa !11
  %165 = load i32, i32* %Y01, align 4, !tbaa !11
  %sub246 = sub nsw i32 %164, %165
  %166 = load i32, i32* %x012, align 4, !tbaa !11
  %167 = load i32, i32* %X01, align 4, !tbaa !11
  %sub247 = sub nsw i32 %166, %167
  %168 = load i32, i32* %y012, align 4, !tbaa !11
  %169 = load i32, i32* %Y01, align 4, !tbaa !11
  %sub248 = sub nsw i32 %168, %169
  %170 = load i32, i32* %x0123, align 4, !tbaa !11
  %171 = load i32, i32* %X01, align 4, !tbaa !11
  %sub249 = sub nsw i32 %170, %171
  %172 = load i32, i32* %y0123, align 4, !tbaa !11
  %173 = load i32, i32* %Y01, align 4, !tbaa !11
  %sub250 = sub nsw i32 %172, %173
  %call251 = call i32 @intersect_curve_bar_rec(i32 %sub239, i32 %sub240, i32 %sub241, i32 %sub242, i32 %sub243, i32 %sub244, i32 %sub245, i32 %sub246, i32 %sub247, i32 %sub248, i32 %sub249, i32 %sub250) #5
  %tobool252 = icmp ne i32 %call251, 0
  br i1 %tobool252, label %if.then.253, label %if.end.254

if.then.253:                                      ; preds = %if.end.238
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.271

if.end.254:                                       ; preds = %if.end.238
  %174 = load i32, i32* %m.addr, align 4, !tbaa !11
  %sub255 = sub nsw i32 %174, 1
  %175 = load i32, i32* %k.addr, align 4, !tbaa !11
  %sub256 = sub nsw i32 %175, 1
  %176 = load i32, i32* %X1.addr, align 4, !tbaa !11
  %177 = load i32, i32* %X01, align 4, !tbaa !11
  %sub257 = sub nsw i32 %176, %177
  %178 = load i32, i32* %Y1.addr, align 4, !tbaa !11
  %179 = load i32, i32* %Y01, align 4, !tbaa !11
  %sub258 = sub nsw i32 %178, %179
  %180 = load i32, i32* %x0123, align 4, !tbaa !11
  %181 = load i32, i32* %X01, align 4, !tbaa !11
  %sub259 = sub nsw i32 %180, %181
  %182 = load i32, i32* %y0123, align 4, !tbaa !11
  %183 = load i32, i32* %Y01, align 4, !tbaa !11
  %sub260 = sub nsw i32 %182, %183
  %184 = load i32, i32* %x123204, align 4, !tbaa !11
  %185 = load i32, i32* %X01, align 4, !tbaa !11
  %sub261 = sub nsw i32 %184, %185
  %186 = load i32, i32* %y123, align 4, !tbaa !11
  %187 = load i32, i32* %Y01, align 4, !tbaa !11
  %sub262 = sub nsw i32 %186, %187
  %188 = load i32, i32* %x23, align 4, !tbaa !11
  %189 = load i32, i32* %X01, align 4, !tbaa !11
  %sub263 = sub nsw i32 %188, %189
  %190 = load i32, i32* %y23197, align 4, !tbaa !11
  %191 = load i32, i32* %Y01, align 4, !tbaa !11
  %sub264 = sub nsw i32 %190, %191
  %192 = load i32, i32* %x3.addr, align 4, !tbaa !11
  %193 = load i32, i32* %X01, align 4, !tbaa !11
  %sub265 = sub nsw i32 %192, %193
  %194 = load i32, i32* %y3.addr, align 4, !tbaa !11
  %195 = load i32, i32* %Y01, align 4, !tbaa !11
  %sub266 = sub nsw i32 %194, %195
  %call267 = call i32 @intersect_curve_bar_rec(i32 %sub255, i32 %sub256, i32 %sub257, i32 %sub258, i32 %sub259, i32 %sub260, i32 %sub261, i32 %sub262, i32 %sub263, i32 %sub264, i32 %sub265, i32 %sub266) #5
  %tobool268 = icmp ne i32 %call267, 0
  br i1 %tobool268, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %if.end.254
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.271

if.end.270:                                       ; preds = %if.end.254
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.271

cleanup.271:                                      ; preds = %if.end.270, %if.then.269, %if.then.253, %if.then.237, %if.then.231
  %196 = bitcast i32* %Y01 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast i32* %X01 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %cleanup.dest.273 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.273, label %cleanup.276 [
    i32 0, label %cleanup.cont.274
  ]

cleanup.cont.274:                                 ; preds = %cleanup.271
  br label %if.end.275

if.end.275:                                       ; preds = %cleanup.cont.274, %if.end.223
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.276

cleanup.276:                                      ; preds = %if.end.275, %cleanup.271, %if.then.222, %if.then.217
  %198 = bitcast i32* %y0123 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i32* %x0123 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %200 = bitcast i32* %y123 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast i32* %x123204 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast i32* %y012 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = bitcast i32* %x012 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  %204 = bitcast i32* %y23197 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #1
  %205 = bitcast i32* %x23 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  %206 = bitcast i32* %y12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast i32* %x12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #1
  %208 = bitcast i32* %y01 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #1
  %209 = bitcast i32* %x01 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #1
  %cleanup.dest.288 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.288, label %unreachable [
    i32 0, label %cleanup.cont.289
    i32 1, label %return
  ]

cleanup.cont.289:                                 ; preds = %cleanup.276
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %cleanup.cont.289, %cleanup.276, %cleanup, %if.then
  %210 = load i32, i32* %retval
  ret i32 %210

unreachable:                                      ; preds = %cleanup.276, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @intersect_curve_curve_rec(i32 %ka, i32 %kb, i32 %ax0, i32 %ay0, i32 %ax1, i32 %ay1, i32 %ax2, i32 %ay2, i32 %ax3, i32 %ay3, i32 %bx0, i32 %by0, i32 %bx1, i32 %by1, i32 %bx2, i32 %by2, i32 %bx3, i32 %by3) #0 {
entry:
  %retval = alloca i32, align 4
  %ka.addr = alloca i32, align 4
  %kb.addr = alloca i32, align 4
  %ax0.addr = alloca i32, align 4
  %ay0.addr = alloca i32, align 4
  %ax1.addr = alloca i32, align 4
  %ay1.addr = alloca i32, align 4
  %ax2.addr = alloca i32, align 4
  %ay2.addr = alloca i32, align 4
  %ax3.addr = alloca i32, align 4
  %ay3.addr = alloca i32, align 4
  %bx0.addr = alloca i32, align 4
  %by0.addr = alloca i32, align 4
  %bx1.addr = alloca i32, align 4
  %by1.addr = alloca i32, align 4
  %bx2.addr = alloca i32, align 4
  %by2.addr = alloca i32, align 4
  %bx3.addr = alloca i32, align 4
  %by3.addr = alloca i32, align 4
  %m = alloca i32, align 4
  %m20 = alloca i32, align 4
  %box0 = alloca %struct.gs_rect_s, align 8
  %box1 = alloca %struct.gs_rect_s, align 8
  %cleanup.dest.slot = alloca i32
  %ax01 = alloca i32, align 4
  %ay01 = alloca i32, align 4
  %ax12 = alloca i32, align 4
  %ay12 = alloca i32, align 4
  %ax23 = alloca i32, align 4
  %ay23 = alloca i32, align 4
  %ax012 = alloca i32, align 4
  %ay012 = alloca i32, align 4
  %ax123 = alloca i32, align 4
  %ay123 = alloca i32, align 4
  %ax0123 = alloca i32, align 4
  %ay0123 = alloca i32, align 4
  %bx01 = alloca i32, align 4
  %by01 = alloca i32, align 4
  %bx12 = alloca i32, align 4
  %by12 = alloca i32, align 4
  %bx23 = alloca i32, align 4
  %by23 = alloca i32, align 4
  %bx012 = alloca i32, align 4
  %by012 = alloca i32, align 4
  %bx123 = alloca i32, align 4
  %by123 = alloca i32, align 4
  %bx0123 = alloca i32, align 4
  %by0123 = alloca i32, align 4
  store i32 %ka, i32* %ka.addr, align 4, !tbaa !11
  store i32 %kb, i32* %kb.addr, align 4, !tbaa !11
  store i32 %ax0, i32* %ax0.addr, align 4, !tbaa !11
  store i32 %ay0, i32* %ay0.addr, align 4, !tbaa !11
  store i32 %ax1, i32* %ax1.addr, align 4, !tbaa !11
  store i32 %ay1, i32* %ay1.addr, align 4, !tbaa !11
  store i32 %ax2, i32* %ax2.addr, align 4, !tbaa !11
  store i32 %ay2, i32* %ay2.addr, align 4, !tbaa !11
  store i32 %ax3, i32* %ax3.addr, align 4, !tbaa !11
  store i32 %ay3, i32* %ay3.addr, align 4, !tbaa !11
  store i32 %bx0, i32* %bx0.addr, align 4, !tbaa !11
  store i32 %by0, i32* %by0.addr, align 4, !tbaa !11
  store i32 %bx1, i32* %bx1.addr, align 4, !tbaa !11
  store i32 %by1, i32* %by1.addr, align 4, !tbaa !11
  store i32 %bx2, i32* %bx2.addr, align 4, !tbaa !11
  store i32 %by2, i32* %by2.addr, align 4, !tbaa !11
  store i32 %bx3, i32* %bx3.addr, align 4, !tbaa !11
  store i32 %by3, i32* %by3.addr, align 4, !tbaa !11
  %0 = load i32, i32* %ka.addr, align 4, !tbaa !11
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %kb.addr, align 4, !tbaa !11
  %cmp1 = icmp sle i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %ax0.addr, align 4, !tbaa !11
  %3 = load i32, i32* %ay0.addr, align 4, !tbaa !11
  %4 = load i32, i32* %ax3.addr, align 4, !tbaa !11
  %5 = load i32, i32* %ay3.addr, align 4, !tbaa !11
  %6 = load i32, i32* %bx0.addr, align 4, !tbaa !11
  %7 = load i32, i32* %by0.addr, align 4, !tbaa !11
  %8 = load i32, i32* %bx3.addr, align 4, !tbaa !11
  %9 = load i32, i32* %by3.addr, align 4, !tbaa !11
  %call = call i32 @intersect_bar_bar(i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #5
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %10 = load i32, i32* %ka.addr, align 4, !tbaa !11
  %cmp2 = icmp sle i32 %10, 1
  br i1 %cmp2, label %if.then.3, label %if.else.17

if.then.3:                                        ; preds = %if.else
  %11 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %ax3.addr, align 4, !tbaa !11
  %13 = load i32, i32* %ax0.addr, align 4, !tbaa !11
  %sub = sub nsw i32 %12, %13
  %14 = load i32, i32* %ay3.addr, align 4, !tbaa !11
  %15 = load i32, i32* %ay0.addr, align 4, !tbaa !11
  %sub4 = sub nsw i32 %14, %15
  %call5 = call i32 @bar_samples(i32 %sub, i32 %sub4) #5
  store i32 %call5, i32* %m, align 4, !tbaa !11
  %16 = load i32, i32* %m, align 4, !tbaa !11
  %17 = load i32, i32* %kb.addr, align 4, !tbaa !11
  %18 = load i32, i32* %ax3.addr, align 4, !tbaa !11
  %19 = load i32, i32* %ax0.addr, align 4, !tbaa !11
  %sub6 = sub nsw i32 %18, %19
  %20 = load i32, i32* %ay3.addr, align 4, !tbaa !11
  %21 = load i32, i32* %ay0.addr, align 4, !tbaa !11
  %sub7 = sub nsw i32 %20, %21
  %22 = load i32, i32* %bx0.addr, align 4, !tbaa !11
  %23 = load i32, i32* %ax0.addr, align 4, !tbaa !11
  %sub8 = sub nsw i32 %22, %23
  %24 = load i32, i32* %by0.addr, align 4, !tbaa !11
  %25 = load i32, i32* %ay0.addr, align 4, !tbaa !11
  %sub9 = sub nsw i32 %24, %25
  %26 = load i32, i32* %bx1.addr, align 4, !tbaa !11
  %27 = load i32, i32* %ax0.addr, align 4, !tbaa !11
  %sub10 = sub nsw i32 %26, %27
  %28 = load i32, i32* %by1.addr, align 4, !tbaa !11
  %29 = load i32, i32* %ay0.addr, align 4, !tbaa !11
  %sub11 = sub nsw i32 %28, %29
  %30 = load i32, i32* %bx2.addr, align 4, !tbaa !11
  %31 = load i32, i32* %ax0.addr, align 4, !tbaa !11
  %sub12 = sub nsw i32 %30, %31
  %32 = load i32, i32* %by2.addr, align 4, !tbaa !11
  %33 = load i32, i32* %ay0.addr, align 4, !tbaa !11
  %sub13 = sub nsw i32 %32, %33
  %34 = load i32, i32* %bx3.addr, align 4, !tbaa !11
  %35 = load i32, i32* %ax0.addr, align 4, !tbaa !11
  %sub14 = sub nsw i32 %34, %35
  %36 = load i32, i32* %by3.addr, align 4, !tbaa !11
  %37 = load i32, i32* %ay0.addr, align 4, !tbaa !11
  %sub15 = sub nsw i32 %36, %37
  %call16 = call i32 @intersect_curve_bar_rec(i32 %16, i32 %17, i32 %sub6, i32 %sub7, i32 %sub8, i32 %sub9, i32 %sub10, i32 %sub11, i32 %sub12, i32 %sub13, i32 %sub14, i32 %sub15) #5
  store i32 %call16, i32* %retval
  %38 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  br label %return

if.else.17:                                       ; preds = %if.else
  %39 = load i32, i32* %kb.addr, align 4, !tbaa !11
  %cmp18 = icmp sle i32 %39, 1
  br i1 %cmp18, label %if.then.19, label %if.else.35

if.then.19:                                       ; preds = %if.else.17
  %40 = bitcast i32* %m20 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load i32, i32* %bx3.addr, align 4, !tbaa !11
  %42 = load i32, i32* %bx0.addr, align 4, !tbaa !11
  %sub21 = sub nsw i32 %41, %42
  %43 = load i32, i32* %by3.addr, align 4, !tbaa !11
  %44 = load i32, i32* %by0.addr, align 4, !tbaa !11
  %sub22 = sub nsw i32 %43, %44
  %call23 = call i32 @bar_samples(i32 %sub21, i32 %sub22) #5
  store i32 %call23, i32* %m20, align 4, !tbaa !11
  %45 = load i32, i32* %m20, align 4, !tbaa !11
  %46 = load i32, i32* %ka.addr, align 4, !tbaa !11
  %47 = load i32, i32* %bx3.addr, align 4, !tbaa !11
  %48 = load i32, i32* %bx0.addr, align 4, !tbaa !11
  %sub24 = sub nsw i32 %47, %48
  %49 = load i32, i32* %by3.addr, align 4, !tbaa !11
  %50 = load i32, i32* %by0.addr, align 4, !tbaa !11
  %sub25 = sub nsw i32 %49, %50
  %51 = load i32, i32* %ax0.addr, align 4, !tbaa !11
  %52 = load i32, i32* %bx0.addr, align 4, !tbaa !11
  %sub26 = sub nsw i32 %51, %52
  %53 = load i32, i32* %ay0.addr, align 4, !tbaa !11
  %54 = load i32, i32* %by0.addr, align 4, !tbaa !11
  %sub27 = sub nsw i32 %53, %54
  %55 = load i32, i32* %ax1.addr, align 4, !tbaa !11
  %56 = load i32, i32* %bx0.addr, align 4, !tbaa !11
  %sub28 = sub nsw i32 %55, %56
  %57 = load i32, i32* %ay1.addr, align 4, !tbaa !11
  %58 = load i32, i32* %by0.addr, align 4, !tbaa !11
  %sub29 = sub nsw i32 %57, %58
  %59 = load i32, i32* %ax2.addr, align 4, !tbaa !11
  %60 = load i32, i32* %bx0.addr, align 4, !tbaa !11
  %sub30 = sub nsw i32 %59, %60
  %61 = load i32, i32* %ay2.addr, align 4, !tbaa !11
  %62 = load i32, i32* %by0.addr, align 4, !tbaa !11
  %sub31 = sub nsw i32 %61, %62
  %63 = load i32, i32* %ax3.addr, align 4, !tbaa !11
  %64 = load i32, i32* %bx0.addr, align 4, !tbaa !11
  %sub32 = sub nsw i32 %63, %64
  %65 = load i32, i32* %ay3.addr, align 4, !tbaa !11
  %66 = load i32, i32* %by0.addr, align 4, !tbaa !11
  %sub33 = sub nsw i32 %65, %66
  %call34 = call i32 @intersect_curve_bar_rec(i32 %45, i32 %46, i32 %sub24, i32 %sub25, i32 %sub26, i32 %sub27, i32 %sub28, i32 %sub29, i32 %sub30, i32 %sub31, i32 %sub32, i32 %sub33) #5
  store i32 %call34, i32* %retval
  %67 = bitcast i32* %m20 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  br label %return

if.else.35:                                       ; preds = %if.else.17
  %68 = bitcast %struct.gs_rect_s* %box0 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %68) #1
  %69 = bitcast %struct.gs_rect_s* %box1 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %69) #1
  %70 = load i32, i32* %ax0.addr, align 4, !tbaa !11
  %conv = sitofp i32 %70 to double
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  store double %conv, double* %x, align 8, !tbaa !18
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 0
  %x36 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  store double %conv, double* %x36, align 8, !tbaa !21
  %71 = load i32, i32* %ay0.addr, align 4, !tbaa !11
  %conv37 = sitofp i32 %71 to double
  %q38 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q38, i32 0, i32 1
  store double %conv37, double* %y, align 8, !tbaa !23
  %p39 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 0
  %y40 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p39, i32 0, i32 1
  store double %conv37, double* %y40, align 8, !tbaa !24
  %p41 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 0
  %x42 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p41, i32 0, i32 0
  %72 = load double, double* %x42, align 8, !tbaa !21
  %73 = load i32, i32* %ax1.addr, align 4, !tbaa !11
  %conv43 = sitofp i32 %73 to double
  %cmp44 = fcmp ogt double %72, %conv43
  br i1 %cmp44, label %if.then.46, label %if.end

if.then.46:                                       ; preds = %if.else.35
  %74 = load i32, i32* %ax1.addr, align 4, !tbaa !11
  %conv47 = sitofp i32 %74 to double
  %p48 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 0
  %x49 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p48, i32 0, i32 0
  store double %conv47, double* %x49, align 8, !tbaa !21
  br label %if.end

if.end:                                           ; preds = %if.then.46, %if.else.35
  %q50 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 1
  %x51 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q50, i32 0, i32 0
  %75 = load double, double* %x51, align 8, !tbaa !18
  %76 = load i32, i32* %ax1.addr, align 4, !tbaa !11
  %conv52 = sitofp i32 %76 to double
  %cmp53 = fcmp olt double %75, %conv52
  br i1 %cmp53, label %if.then.55, label %if.end.59

if.then.55:                                       ; preds = %if.end
  %77 = load i32, i32* %ax1.addr, align 4, !tbaa !11
  %conv56 = sitofp i32 %77 to double
  %q57 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 1
  %x58 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q57, i32 0, i32 0
  store double %conv56, double* %x58, align 8, !tbaa !18
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.55, %if.end
  %p60 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 0
  %y61 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p60, i32 0, i32 1
  %78 = load double, double* %y61, align 8, !tbaa !24
  %79 = load i32, i32* %ay1.addr, align 4, !tbaa !11
  %conv62 = sitofp i32 %79 to double
  %cmp63 = fcmp ogt double %78, %conv62
  br i1 %cmp63, label %if.then.65, label %if.end.69

if.then.65:                                       ; preds = %if.end.59
  %80 = load i32, i32* %ay1.addr, align 4, !tbaa !11
  %conv66 = sitofp i32 %80 to double
  %p67 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 0
  %y68 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p67, i32 0, i32 1
  store double %conv66, double* %y68, align 8, !tbaa !24
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.65, %if.end.59
  %q70 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 1
  %y71 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q70, i32 0, i32 1
  %81 = load double, double* %y71, align 8, !tbaa !23
  %82 = load i32, i32* %ay1.addr, align 4, !tbaa !11
  %conv72 = sitofp i32 %82 to double
  %cmp73 = fcmp olt double %81, %conv72
  br i1 %cmp73, label %if.then.75, label %if.end.79

if.then.75:                                       ; preds = %if.end.69
  %83 = load i32, i32* %ay1.addr, align 4, !tbaa !11
  %conv76 = sitofp i32 %83 to double
  %q77 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 1
  %y78 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q77, i32 0, i32 1
  store double %conv76, double* %y78, align 8, !tbaa !23
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.75, %if.end.69
  %p80 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 0
  %x81 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p80, i32 0, i32 0
  %84 = load double, double* %x81, align 8, !tbaa !21
  %85 = load i32, i32* %ax2.addr, align 4, !tbaa !11
  %conv82 = sitofp i32 %85 to double
  %cmp83 = fcmp ogt double %84, %conv82
  br i1 %cmp83, label %if.then.85, label %if.end.89

if.then.85:                                       ; preds = %if.end.79
  %86 = load i32, i32* %ax2.addr, align 4, !tbaa !11
  %conv86 = sitofp i32 %86 to double
  %p87 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 0
  %x88 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p87, i32 0, i32 0
  store double %conv86, double* %x88, align 8, !tbaa !21
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.85, %if.end.79
  %q90 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 1
  %x91 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q90, i32 0, i32 0
  %87 = load double, double* %x91, align 8, !tbaa !18
  %88 = load i32, i32* %ax2.addr, align 4, !tbaa !11
  %conv92 = sitofp i32 %88 to double
  %cmp93 = fcmp olt double %87, %conv92
  br i1 %cmp93, label %if.then.95, label %if.end.99

if.then.95:                                       ; preds = %if.end.89
  %89 = load i32, i32* %ax2.addr, align 4, !tbaa !11
  %conv96 = sitofp i32 %89 to double
  %q97 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 1
  %x98 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q97, i32 0, i32 0
  store double %conv96, double* %x98, align 8, !tbaa !18
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.95, %if.end.89
  %p100 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 0
  %y101 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p100, i32 0, i32 1
  %90 = load double, double* %y101, align 8, !tbaa !24
  %91 = load i32, i32* %ay2.addr, align 4, !tbaa !11
  %conv102 = sitofp i32 %91 to double
  %cmp103 = fcmp ogt double %90, %conv102
  br i1 %cmp103, label %if.then.105, label %if.end.109

if.then.105:                                      ; preds = %if.end.99
  %92 = load i32, i32* %ay2.addr, align 4, !tbaa !11
  %conv106 = sitofp i32 %92 to double
  %p107 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 0
  %y108 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p107, i32 0, i32 1
  store double %conv106, double* %y108, align 8, !tbaa !24
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.105, %if.end.99
  %q110 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 1
  %y111 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q110, i32 0, i32 1
  %93 = load double, double* %y111, align 8, !tbaa !23
  %94 = load i32, i32* %ay2.addr, align 4, !tbaa !11
  %conv112 = sitofp i32 %94 to double
  %cmp113 = fcmp olt double %93, %conv112
  br i1 %cmp113, label %if.then.115, label %if.end.119

if.then.115:                                      ; preds = %if.end.109
  %95 = load i32, i32* %ay2.addr, align 4, !tbaa !11
  %conv116 = sitofp i32 %95 to double
  %q117 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 1
  %y118 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q117, i32 0, i32 1
  store double %conv116, double* %y118, align 8, !tbaa !23
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.115, %if.end.109
  %p120 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 0
  %x121 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p120, i32 0, i32 0
  %96 = load double, double* %x121, align 8, !tbaa !21
  %97 = load i32, i32* %ax3.addr, align 4, !tbaa !11
  %conv122 = sitofp i32 %97 to double
  %cmp123 = fcmp ogt double %96, %conv122
  br i1 %cmp123, label %if.then.125, label %if.end.129

if.then.125:                                      ; preds = %if.end.119
  %98 = load i32, i32* %ax3.addr, align 4, !tbaa !11
  %conv126 = sitofp i32 %98 to double
  %p127 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 0
  %x128 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p127, i32 0, i32 0
  store double %conv126, double* %x128, align 8, !tbaa !21
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.125, %if.end.119
  %q130 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 1
  %x131 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q130, i32 0, i32 0
  %99 = load double, double* %x131, align 8, !tbaa !18
  %100 = load i32, i32* %ax3.addr, align 4, !tbaa !11
  %conv132 = sitofp i32 %100 to double
  %cmp133 = fcmp olt double %99, %conv132
  br i1 %cmp133, label %if.then.135, label %if.end.139

if.then.135:                                      ; preds = %if.end.129
  %101 = load i32, i32* %ax3.addr, align 4, !tbaa !11
  %conv136 = sitofp i32 %101 to double
  %q137 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 1
  %x138 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q137, i32 0, i32 0
  store double %conv136, double* %x138, align 8, !tbaa !18
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.135, %if.end.129
  %p140 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 0
  %y141 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p140, i32 0, i32 1
  %102 = load double, double* %y141, align 8, !tbaa !24
  %103 = load i32, i32* %ay3.addr, align 4, !tbaa !11
  %conv142 = sitofp i32 %103 to double
  %cmp143 = fcmp ogt double %102, %conv142
  br i1 %cmp143, label %if.then.145, label %if.end.149

if.then.145:                                      ; preds = %if.end.139
  %104 = load i32, i32* %ay3.addr, align 4, !tbaa !11
  %conv146 = sitofp i32 %104 to double
  %p147 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 0
  %y148 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p147, i32 0, i32 1
  store double %conv146, double* %y148, align 8, !tbaa !24
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.145, %if.end.139
  %q150 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 1
  %y151 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q150, i32 0, i32 1
  %105 = load double, double* %y151, align 8, !tbaa !23
  %106 = load i32, i32* %ay3.addr, align 4, !tbaa !11
  %conv152 = sitofp i32 %106 to double
  %cmp153 = fcmp olt double %105, %conv152
  br i1 %cmp153, label %if.then.155, label %if.end.159

if.then.155:                                      ; preds = %if.end.149
  %107 = load i32, i32* %ay3.addr, align 4, !tbaa !11
  %conv156 = sitofp i32 %107 to double
  %q157 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 1
  %y158 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q157, i32 0, i32 1
  store double %conv156, double* %y158, align 8, !tbaa !23
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.155, %if.end.149
  %108 = load i32, i32* %bx0.addr, align 4, !tbaa !11
  %conv160 = sitofp i32 %108 to double
  %q161 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %x162 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q161, i32 0, i32 0
  store double %conv160, double* %x162, align 8, !tbaa !18
  %p163 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %x164 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p163, i32 0, i32 0
  store double %conv160, double* %x164, align 8, !tbaa !21
  %109 = load i32, i32* %by0.addr, align 4, !tbaa !11
  %conv165 = sitofp i32 %109 to double
  %q166 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %y167 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q166, i32 0, i32 1
  store double %conv165, double* %y167, align 8, !tbaa !23
  %p168 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %y169 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p168, i32 0, i32 1
  store double %conv165, double* %y169, align 8, !tbaa !24
  %p170 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %x171 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p170, i32 0, i32 0
  %110 = load double, double* %x171, align 8, !tbaa !21
  %111 = load i32, i32* %bx1.addr, align 4, !tbaa !11
  %conv172 = sitofp i32 %111 to double
  %cmp173 = fcmp ogt double %110, %conv172
  br i1 %cmp173, label %if.then.175, label %if.end.179

if.then.175:                                      ; preds = %if.end.159
  %112 = load i32, i32* %bx1.addr, align 4, !tbaa !11
  %conv176 = sitofp i32 %112 to double
  %p177 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %x178 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p177, i32 0, i32 0
  store double %conv176, double* %x178, align 8, !tbaa !21
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.175, %if.end.159
  %q180 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %x181 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q180, i32 0, i32 0
  %113 = load double, double* %x181, align 8, !tbaa !18
  %114 = load i32, i32* %bx1.addr, align 4, !tbaa !11
  %conv182 = sitofp i32 %114 to double
  %cmp183 = fcmp olt double %113, %conv182
  br i1 %cmp183, label %if.then.185, label %if.end.189

if.then.185:                                      ; preds = %if.end.179
  %115 = load i32, i32* %bx1.addr, align 4, !tbaa !11
  %conv186 = sitofp i32 %115 to double
  %q187 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %x188 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q187, i32 0, i32 0
  store double %conv186, double* %x188, align 8, !tbaa !18
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.185, %if.end.179
  %p190 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %y191 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p190, i32 0, i32 1
  %116 = load double, double* %y191, align 8, !tbaa !24
  %117 = load i32, i32* %by1.addr, align 4, !tbaa !11
  %conv192 = sitofp i32 %117 to double
  %cmp193 = fcmp ogt double %116, %conv192
  br i1 %cmp193, label %if.then.195, label %if.end.199

if.then.195:                                      ; preds = %if.end.189
  %118 = load i32, i32* %by1.addr, align 4, !tbaa !11
  %conv196 = sitofp i32 %118 to double
  %p197 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %y198 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p197, i32 0, i32 1
  store double %conv196, double* %y198, align 8, !tbaa !24
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.195, %if.end.189
  %q200 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %y201 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q200, i32 0, i32 1
  %119 = load double, double* %y201, align 8, !tbaa !23
  %120 = load i32, i32* %by1.addr, align 4, !tbaa !11
  %conv202 = sitofp i32 %120 to double
  %cmp203 = fcmp olt double %119, %conv202
  br i1 %cmp203, label %if.then.205, label %if.end.209

if.then.205:                                      ; preds = %if.end.199
  %121 = load i32, i32* %by1.addr, align 4, !tbaa !11
  %conv206 = sitofp i32 %121 to double
  %q207 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %y208 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q207, i32 0, i32 1
  store double %conv206, double* %y208, align 8, !tbaa !23
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.205, %if.end.199
  %p210 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %x211 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p210, i32 0, i32 0
  %122 = load double, double* %x211, align 8, !tbaa !21
  %123 = load i32, i32* %bx2.addr, align 4, !tbaa !11
  %conv212 = sitofp i32 %123 to double
  %cmp213 = fcmp ogt double %122, %conv212
  br i1 %cmp213, label %if.then.215, label %if.end.219

if.then.215:                                      ; preds = %if.end.209
  %124 = load i32, i32* %bx2.addr, align 4, !tbaa !11
  %conv216 = sitofp i32 %124 to double
  %p217 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %x218 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p217, i32 0, i32 0
  store double %conv216, double* %x218, align 8, !tbaa !21
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.215, %if.end.209
  %q220 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %x221 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q220, i32 0, i32 0
  %125 = load double, double* %x221, align 8, !tbaa !18
  %126 = load i32, i32* %bx2.addr, align 4, !tbaa !11
  %conv222 = sitofp i32 %126 to double
  %cmp223 = fcmp olt double %125, %conv222
  br i1 %cmp223, label %if.then.225, label %if.end.229

if.then.225:                                      ; preds = %if.end.219
  %127 = load i32, i32* %bx2.addr, align 4, !tbaa !11
  %conv226 = sitofp i32 %127 to double
  %q227 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %x228 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q227, i32 0, i32 0
  store double %conv226, double* %x228, align 8, !tbaa !18
  br label %if.end.229

if.end.229:                                       ; preds = %if.then.225, %if.end.219
  %p230 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %y231 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p230, i32 0, i32 1
  %128 = load double, double* %y231, align 8, !tbaa !24
  %129 = load i32, i32* %by2.addr, align 4, !tbaa !11
  %conv232 = sitofp i32 %129 to double
  %cmp233 = fcmp ogt double %128, %conv232
  br i1 %cmp233, label %if.then.235, label %if.end.239

if.then.235:                                      ; preds = %if.end.229
  %130 = load i32, i32* %by2.addr, align 4, !tbaa !11
  %conv236 = sitofp i32 %130 to double
  %p237 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %y238 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p237, i32 0, i32 1
  store double %conv236, double* %y238, align 8, !tbaa !24
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.235, %if.end.229
  %q240 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %y241 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q240, i32 0, i32 1
  %131 = load double, double* %y241, align 8, !tbaa !23
  %132 = load i32, i32* %by2.addr, align 4, !tbaa !11
  %conv242 = sitofp i32 %132 to double
  %cmp243 = fcmp olt double %131, %conv242
  br i1 %cmp243, label %if.then.245, label %if.end.249

if.then.245:                                      ; preds = %if.end.239
  %133 = load i32, i32* %by2.addr, align 4, !tbaa !11
  %conv246 = sitofp i32 %133 to double
  %q247 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %y248 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q247, i32 0, i32 1
  store double %conv246, double* %y248, align 8, !tbaa !23
  br label %if.end.249

if.end.249:                                       ; preds = %if.then.245, %if.end.239
  %p250 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %x251 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p250, i32 0, i32 0
  %134 = load double, double* %x251, align 8, !tbaa !21
  %135 = load i32, i32* %bx3.addr, align 4, !tbaa !11
  %conv252 = sitofp i32 %135 to double
  %cmp253 = fcmp ogt double %134, %conv252
  br i1 %cmp253, label %if.then.255, label %if.end.259

if.then.255:                                      ; preds = %if.end.249
  %136 = load i32, i32* %bx3.addr, align 4, !tbaa !11
  %conv256 = sitofp i32 %136 to double
  %p257 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %x258 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p257, i32 0, i32 0
  store double %conv256, double* %x258, align 8, !tbaa !21
  br label %if.end.259

if.end.259:                                       ; preds = %if.then.255, %if.end.249
  %q260 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %x261 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q260, i32 0, i32 0
  %137 = load double, double* %x261, align 8, !tbaa !18
  %138 = load i32, i32* %bx3.addr, align 4, !tbaa !11
  %conv262 = sitofp i32 %138 to double
  %cmp263 = fcmp olt double %137, %conv262
  br i1 %cmp263, label %if.then.265, label %if.end.269

if.then.265:                                      ; preds = %if.end.259
  %139 = load i32, i32* %bx3.addr, align 4, !tbaa !11
  %conv266 = sitofp i32 %139 to double
  %q267 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %x268 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q267, i32 0, i32 0
  store double %conv266, double* %x268, align 8, !tbaa !18
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.265, %if.end.259
  %p270 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %y271 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p270, i32 0, i32 1
  %140 = load double, double* %y271, align 8, !tbaa !24
  %141 = load i32, i32* %by3.addr, align 4, !tbaa !11
  %conv272 = sitofp i32 %141 to double
  %cmp273 = fcmp ogt double %140, %conv272
  br i1 %cmp273, label %if.then.275, label %if.end.279

if.then.275:                                      ; preds = %if.end.269
  %142 = load i32, i32* %by3.addr, align 4, !tbaa !11
  %conv276 = sitofp i32 %142 to double
  %p277 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %y278 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p277, i32 0, i32 1
  store double %conv276, double* %y278, align 8, !tbaa !24
  br label %if.end.279

if.end.279:                                       ; preds = %if.then.275, %if.end.269
  %q280 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %y281 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q280, i32 0, i32 1
  %143 = load double, double* %y281, align 8, !tbaa !23
  %144 = load i32, i32* %by3.addr, align 4, !tbaa !11
  %conv282 = sitofp i32 %144 to double
  %cmp283 = fcmp olt double %143, %conv282
  br i1 %cmp283, label %if.then.285, label %if.end.289

if.then.285:                                      ; preds = %if.end.279
  %145 = load i32, i32* %by3.addr, align 4, !tbaa !11
  %conv286 = sitofp i32 %145 to double
  %q287 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %y288 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q287, i32 0, i32 1
  store double %conv286, double* %y288, align 8, !tbaa !23
  br label %if.end.289

if.end.289:                                       ; preds = %if.then.285, %if.end.279
  %p290 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 0
  %x291 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p290, i32 0, i32 0
  %146 = load double, double* %x291, align 8, !tbaa !21
  %q292 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %x293 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q292, i32 0, i32 0
  %147 = load double, double* %x293, align 8, !tbaa !18
  %cmp294 = fcmp ogt double %146, %147
  br i1 %cmp294, label %if.then.296, label %if.end.297

if.then.296:                                      ; preds = %if.end.289
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.297:                                       ; preds = %if.end.289
  %q298 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 1
  %x299 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q298, i32 0, i32 0
  %148 = load double, double* %x299, align 8, !tbaa !18
  %p300 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %x301 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p300, i32 0, i32 0
  %149 = load double, double* %x301, align 8, !tbaa !21
  %cmp302 = fcmp olt double %148, %149
  br i1 %cmp302, label %if.then.304, label %if.end.305

if.then.304:                                      ; preds = %if.end.297
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.305:                                       ; preds = %if.end.297
  %p306 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 0
  %y307 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p306, i32 0, i32 1
  %150 = load double, double* %y307, align 8, !tbaa !24
  %q308 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 1
  %y309 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q308, i32 0, i32 1
  %151 = load double, double* %y309, align 8, !tbaa !23
  %cmp310 = fcmp ogt double %150, %151
  br i1 %cmp310, label %if.then.312, label %if.end.313

if.then.312:                                      ; preds = %if.end.305
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.313:                                       ; preds = %if.end.305
  %q314 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box0, i32 0, i32 1
  %y315 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q314, i32 0, i32 1
  %152 = load double, double* %y315, align 8, !tbaa !23
  %p316 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box1, i32 0, i32 0
  %y317 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p316, i32 0, i32 1
  %153 = load double, double* %y317, align 8, !tbaa !24
  %cmp318 = fcmp olt double %152, %153
  br i1 %cmp318, label %if.then.320, label %if.end.321

if.then.320:                                      ; preds = %if.end.313
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.321:                                       ; preds = %if.end.313
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.321, %if.then.320, %if.then.312, %if.then.304, %if.then.296
  %154 = bitcast %struct.gs_rect_s* %box1 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %154) #1
  %155 = bitcast %struct.gs_rect_s* %box0 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %155) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.323

if.end.323:                                       ; preds = %cleanup.cont
  br label %if.end.324

if.end.324:                                       ; preds = %if.end.323
  br label %if.end.325

if.end.325:                                       ; preds = %if.end.324
  %156 = bitcast i32* %ax01 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %156) #1
  %157 = load i32, i32* %ax0.addr, align 4, !tbaa !11
  %158 = load i32, i32* %ax1.addr, align 4, !tbaa !11
  %add = add nsw i32 %157, %158
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %ax01, align 4, !tbaa !11
  %159 = bitcast i32* %ay01 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %159) #1
  %160 = load i32, i32* %ay0.addr, align 4, !tbaa !11
  %161 = load i32, i32* %ay1.addr, align 4, !tbaa !11
  %add326 = add nsw i32 %160, %161
  %div327 = sdiv i32 %add326, 2
  store i32 %div327, i32* %ay01, align 4, !tbaa !11
  %162 = bitcast i32* %ax12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %162) #1
  %163 = load i32, i32* %ax1.addr, align 4, !tbaa !11
  %164 = load i32, i32* %ax2.addr, align 4, !tbaa !11
  %add328 = add nsw i32 %163, %164
  %div329 = sdiv i32 %add328, 2
  store i32 %div329, i32* %ax12, align 4, !tbaa !11
  %165 = bitcast i32* %ay12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %165) #1
  %166 = load i32, i32* %ay1.addr, align 4, !tbaa !11
  %167 = load i32, i32* %ay2.addr, align 4, !tbaa !11
  %add330 = add nsw i32 %166, %167
  %div331 = sdiv i32 %add330, 2
  store i32 %div331, i32* %ay12, align 4, !tbaa !11
  %168 = bitcast i32* %ax23 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %168) #1
  %169 = load i32, i32* %ax2.addr, align 4, !tbaa !11
  %170 = load i32, i32* %ax3.addr, align 4, !tbaa !11
  %add332 = add nsw i32 %169, %170
  %div333 = sdiv i32 %add332, 2
  store i32 %div333, i32* %ax23, align 4, !tbaa !11
  %171 = bitcast i32* %ay23 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %171) #1
  %172 = load i32, i32* %ay2.addr, align 4, !tbaa !11
  %173 = load i32, i32* %ay3.addr, align 4, !tbaa !11
  %add334 = add nsw i32 %172, %173
  %div335 = sdiv i32 %add334, 2
  store i32 %div335, i32* %ay23, align 4, !tbaa !11
  %174 = bitcast i32* %ax012 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %174) #1
  %175 = load i32, i32* %ax01, align 4, !tbaa !11
  %176 = load i32, i32* %ax12, align 4, !tbaa !11
  %add336 = add nsw i32 %175, %176
  %div337 = sdiv i32 %add336, 2
  store i32 %div337, i32* %ax012, align 4, !tbaa !11
  %177 = bitcast i32* %ay012 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %177) #1
  %178 = load i32, i32* %ay01, align 4, !tbaa !11
  %179 = load i32, i32* %ay12, align 4, !tbaa !11
  %add338 = add nsw i32 %178, %179
  %div339 = sdiv i32 %add338, 2
  store i32 %div339, i32* %ay012, align 4, !tbaa !11
  %180 = bitcast i32* %ax123 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %180) #1
  %181 = load i32, i32* %ax12, align 4, !tbaa !11
  %182 = load i32, i32* %ax23, align 4, !tbaa !11
  %add340 = add nsw i32 %181, %182
  %div341 = sdiv i32 %add340, 2
  store i32 %div341, i32* %ax123, align 4, !tbaa !11
  %183 = bitcast i32* %ay123 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %183) #1
  %184 = load i32, i32* %ay12, align 4, !tbaa !11
  %185 = load i32, i32* %ay23, align 4, !tbaa !11
  %add342 = add nsw i32 %184, %185
  %div343 = sdiv i32 %add342, 2
  store i32 %div343, i32* %ay123, align 4, !tbaa !11
  %186 = bitcast i32* %ax0123 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %186) #1
  %187 = load i32, i32* %ax012, align 4, !tbaa !11
  %188 = load i32, i32* %ax123, align 4, !tbaa !11
  %add344 = add nsw i32 %187, %188
  %div345 = sdiv i32 %add344, 2
  store i32 %div345, i32* %ax0123, align 4, !tbaa !11
  %189 = bitcast i32* %ay0123 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %189) #1
  %190 = load i32, i32* %ay012, align 4, !tbaa !11
  %191 = load i32, i32* %ay123, align 4, !tbaa !11
  %add346 = add nsw i32 %190, %191
  %div347 = sdiv i32 %add346, 2
  store i32 %div347, i32* %ay0123, align 4, !tbaa !11
  %192 = bitcast i32* %bx01 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %192) #1
  %193 = load i32, i32* %bx0.addr, align 4, !tbaa !11
  %194 = load i32, i32* %bx1.addr, align 4, !tbaa !11
  %add348 = add nsw i32 %193, %194
  %div349 = sdiv i32 %add348, 2
  store i32 %div349, i32* %bx01, align 4, !tbaa !11
  %195 = bitcast i32* %by01 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %195) #1
  %196 = load i32, i32* %by0.addr, align 4, !tbaa !11
  %197 = load i32, i32* %by1.addr, align 4, !tbaa !11
  %add350 = add nsw i32 %196, %197
  %div351 = sdiv i32 %add350, 2
  store i32 %div351, i32* %by01, align 4, !tbaa !11
  %198 = bitcast i32* %bx12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %198) #1
  %199 = load i32, i32* %bx1.addr, align 4, !tbaa !11
  %200 = load i32, i32* %bx2.addr, align 4, !tbaa !11
  %add352 = add nsw i32 %199, %200
  %div353 = sdiv i32 %add352, 2
  store i32 %div353, i32* %bx12, align 4, !tbaa !11
  %201 = bitcast i32* %by12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %201) #1
  %202 = load i32, i32* %by1.addr, align 4, !tbaa !11
  %203 = load i32, i32* %by2.addr, align 4, !tbaa !11
  %add354 = add nsw i32 %202, %203
  %div355 = sdiv i32 %add354, 2
  store i32 %div355, i32* %by12, align 4, !tbaa !11
  %204 = bitcast i32* %bx23 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %204) #1
  %205 = load i32, i32* %bx2.addr, align 4, !tbaa !11
  %206 = load i32, i32* %bx3.addr, align 4, !tbaa !11
  %add356 = add nsw i32 %205, %206
  %div357 = sdiv i32 %add356, 2
  store i32 %div357, i32* %bx23, align 4, !tbaa !11
  %207 = bitcast i32* %by23 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %207) #1
  %208 = load i32, i32* %by2.addr, align 4, !tbaa !11
  %209 = load i32, i32* %by3.addr, align 4, !tbaa !11
  %add358 = add nsw i32 %208, %209
  %div359 = sdiv i32 %add358, 2
  store i32 %div359, i32* %by23, align 4, !tbaa !11
  %210 = bitcast i32* %bx012 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %210) #1
  %211 = load i32, i32* %bx01, align 4, !tbaa !11
  %212 = load i32, i32* %bx12, align 4, !tbaa !11
  %add360 = add nsw i32 %211, %212
  %div361 = sdiv i32 %add360, 2
  store i32 %div361, i32* %bx012, align 4, !tbaa !11
  %213 = bitcast i32* %by012 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %213) #1
  %214 = load i32, i32* %by01, align 4, !tbaa !11
  %215 = load i32, i32* %by12, align 4, !tbaa !11
  %add362 = add nsw i32 %214, %215
  %div363 = sdiv i32 %add362, 2
  store i32 %div363, i32* %by012, align 4, !tbaa !11
  %216 = bitcast i32* %bx123 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %216) #1
  %217 = load i32, i32* %bx12, align 4, !tbaa !11
  %218 = load i32, i32* %bx23, align 4, !tbaa !11
  %add364 = add nsw i32 %217, %218
  %div365 = sdiv i32 %add364, 2
  store i32 %div365, i32* %bx123, align 4, !tbaa !11
  %219 = bitcast i32* %by123 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %219) #1
  %220 = load i32, i32* %by12, align 4, !tbaa !11
  %221 = load i32, i32* %by23, align 4, !tbaa !11
  %add366 = add nsw i32 %220, %221
  %div367 = sdiv i32 %add366, 2
  store i32 %div367, i32* %by123, align 4, !tbaa !11
  %222 = bitcast i32* %bx0123 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %222) #1
  %223 = load i32, i32* %bx012, align 4, !tbaa !11
  %224 = load i32, i32* %bx123, align 4, !tbaa !11
  %add368 = add nsw i32 %223, %224
  %div369 = sdiv i32 %add368, 2
  store i32 %div369, i32* %bx0123, align 4, !tbaa !11
  %225 = bitcast i32* %by0123 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %225) #1
  %226 = load i32, i32* %by012, align 4, !tbaa !11
  %227 = load i32, i32* %by123, align 4, !tbaa !11
  %add370 = add nsw i32 %226, %227
  %div371 = sdiv i32 %add370, 2
  store i32 %div371, i32* %by0123, align 4, !tbaa !11
  %228 = load i32, i32* %ka.addr, align 4, !tbaa !11
  %sub372 = sub nsw i32 %228, 1
  %229 = load i32, i32* %kb.addr, align 4, !tbaa !11
  %sub373 = sub nsw i32 %229, 1
  %230 = load i32, i32* %ax0.addr, align 4, !tbaa !11
  %231 = load i32, i32* %ay0.addr, align 4, !tbaa !11
  %232 = load i32, i32* %ax01, align 4, !tbaa !11
  %233 = load i32, i32* %ay01, align 4, !tbaa !11
  %234 = load i32, i32* %ax012, align 4, !tbaa !11
  %235 = load i32, i32* %ay012, align 4, !tbaa !11
  %236 = load i32, i32* %ax0123, align 4, !tbaa !11
  %237 = load i32, i32* %ay0123, align 4, !tbaa !11
  %238 = load i32, i32* %bx0.addr, align 4, !tbaa !11
  %239 = load i32, i32* %by0.addr, align 4, !tbaa !11
  %240 = load i32, i32* %bx01, align 4, !tbaa !11
  %241 = load i32, i32* %by01, align 4, !tbaa !11
  %242 = load i32, i32* %bx012, align 4, !tbaa !11
  %243 = load i32, i32* %by012, align 4, !tbaa !11
  %244 = load i32, i32* %bx0123, align 4, !tbaa !11
  %245 = load i32, i32* %by0123, align 4, !tbaa !11
  %call374 = call i32 @intersect_curve_curve_rec(i32 %sub372, i32 %sub373, i32 %230, i32 %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236, i32 %237, i32 %238, i32 %239, i32 %240, i32 %241, i32 %242, i32 %243, i32 %244, i32 %245) #5
  %tobool = icmp ne i32 %call374, 0
  br i1 %tobool, label %if.then.375, label %if.end.376

if.then.375:                                      ; preds = %if.end.325
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.395

if.end.376:                                       ; preds = %if.end.325
  %246 = load i32, i32* %ka.addr, align 4, !tbaa !11
  %sub377 = sub nsw i32 %246, 1
  %247 = load i32, i32* %kb.addr, align 4, !tbaa !11
  %sub378 = sub nsw i32 %247, 1
  %248 = load i32, i32* %ax0.addr, align 4, !tbaa !11
  %249 = load i32, i32* %ay0.addr, align 4, !tbaa !11
  %250 = load i32, i32* %ax01, align 4, !tbaa !11
  %251 = load i32, i32* %ay01, align 4, !tbaa !11
  %252 = load i32, i32* %ax012, align 4, !tbaa !11
  %253 = load i32, i32* %ay012, align 4, !tbaa !11
  %254 = load i32, i32* %ax0123, align 4, !tbaa !11
  %255 = load i32, i32* %ay0123, align 4, !tbaa !11
  %256 = load i32, i32* %bx0123, align 4, !tbaa !11
  %257 = load i32, i32* %by0123, align 4, !tbaa !11
  %258 = load i32, i32* %bx123, align 4, !tbaa !11
  %259 = load i32, i32* %by123, align 4, !tbaa !11
  %260 = load i32, i32* %bx23, align 4, !tbaa !11
  %261 = load i32, i32* %by23, align 4, !tbaa !11
  %262 = load i32, i32* %bx3.addr, align 4, !tbaa !11
  %263 = load i32, i32* %by3.addr, align 4, !tbaa !11
  %call379 = call i32 @intersect_curve_curve_rec(i32 %sub377, i32 %sub378, i32 %248, i32 %249, i32 %250, i32 %251, i32 %252, i32 %253, i32 %254, i32 %255, i32 %256, i32 %257, i32 %258, i32 %259, i32 %260, i32 %261, i32 %262, i32 %263) #5
  %tobool380 = icmp ne i32 %call379, 0
  br i1 %tobool380, label %if.then.381, label %if.end.382

if.then.381:                                      ; preds = %if.end.376
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.395

if.end.382:                                       ; preds = %if.end.376
  %264 = load i32, i32* %ka.addr, align 4, !tbaa !11
  %sub383 = sub nsw i32 %264, 1
  %265 = load i32, i32* %kb.addr, align 4, !tbaa !11
  %sub384 = sub nsw i32 %265, 1
  %266 = load i32, i32* %ax0123, align 4, !tbaa !11
  %267 = load i32, i32* %ay0123, align 4, !tbaa !11
  %268 = load i32, i32* %ax123, align 4, !tbaa !11
  %269 = load i32, i32* %ay123, align 4, !tbaa !11
  %270 = load i32, i32* %ax23, align 4, !tbaa !11
  %271 = load i32, i32* %ay23, align 4, !tbaa !11
  %272 = load i32, i32* %ax3.addr, align 4, !tbaa !11
  %273 = load i32, i32* %ay3.addr, align 4, !tbaa !11
  %274 = load i32, i32* %bx0.addr, align 4, !tbaa !11
  %275 = load i32, i32* %by0.addr, align 4, !tbaa !11
  %276 = load i32, i32* %bx01, align 4, !tbaa !11
  %277 = load i32, i32* %by01, align 4, !tbaa !11
  %278 = load i32, i32* %bx012, align 4, !tbaa !11
  %279 = load i32, i32* %by012, align 4, !tbaa !11
  %280 = load i32, i32* %bx0123, align 4, !tbaa !11
  %281 = load i32, i32* %by0123, align 4, !tbaa !11
  %call385 = call i32 @intersect_curve_curve_rec(i32 %sub383, i32 %sub384, i32 %266, i32 %267, i32 %268, i32 %269, i32 %270, i32 %271, i32 %272, i32 %273, i32 %274, i32 %275, i32 %276, i32 %277, i32 %278, i32 %279, i32 %280, i32 %281) #5
  %tobool386 = icmp ne i32 %call385, 0
  br i1 %tobool386, label %if.then.387, label %if.end.388

if.then.387:                                      ; preds = %if.end.382
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.395

if.end.388:                                       ; preds = %if.end.382
  %282 = load i32, i32* %ka.addr, align 4, !tbaa !11
  %sub389 = sub nsw i32 %282, 1
  %283 = load i32, i32* %kb.addr, align 4, !tbaa !11
  %sub390 = sub nsw i32 %283, 1
  %284 = load i32, i32* %ax0123, align 4, !tbaa !11
  %285 = load i32, i32* %ay0123, align 4, !tbaa !11
  %286 = load i32, i32* %ax123, align 4, !tbaa !11
  %287 = load i32, i32* %ay123, align 4, !tbaa !11
  %288 = load i32, i32* %ax23, align 4, !tbaa !11
  %289 = load i32, i32* %ay23, align 4, !tbaa !11
  %290 = load i32, i32* %ax3.addr, align 4, !tbaa !11
  %291 = load i32, i32* %ay3.addr, align 4, !tbaa !11
  %292 = load i32, i32* %bx0123, align 4, !tbaa !11
  %293 = load i32, i32* %by0123, align 4, !tbaa !11
  %294 = load i32, i32* %bx123, align 4, !tbaa !11
  %295 = load i32, i32* %by123, align 4, !tbaa !11
  %296 = load i32, i32* %bx23, align 4, !tbaa !11
  %297 = load i32, i32* %by23, align 4, !tbaa !11
  %298 = load i32, i32* %bx3.addr, align 4, !tbaa !11
  %299 = load i32, i32* %by3.addr, align 4, !tbaa !11
  %call391 = call i32 @intersect_curve_curve_rec(i32 %sub389, i32 %sub390, i32 %284, i32 %285, i32 %286, i32 %287, i32 %288, i32 %289, i32 %290, i32 %291, i32 %292, i32 %293, i32 %294, i32 %295, i32 %296, i32 %297, i32 %298, i32 %299) #5
  %tobool392 = icmp ne i32 %call391, 0
  br i1 %tobool392, label %if.then.393, label %if.end.394

if.then.393:                                      ; preds = %if.end.388
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.395

if.end.394:                                       ; preds = %if.end.388
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.395

cleanup.395:                                      ; preds = %if.end.394, %if.then.393, %if.then.387, %if.then.381, %if.then.375
  %300 = bitcast i32* %by0123 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %300) #1
  %301 = bitcast i32* %bx0123 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %301) #1
  %302 = bitcast i32* %by123 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %302) #1
  %303 = bitcast i32* %bx123 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %303) #1
  %304 = bitcast i32* %by012 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %304) #1
  %305 = bitcast i32* %bx012 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %305) #1
  %306 = bitcast i32* %by23 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %306) #1
  %307 = bitcast i32* %bx23 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %307) #1
  %308 = bitcast i32* %by12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %308) #1
  %309 = bitcast i32* %bx12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %309) #1
  %310 = bitcast i32* %by01 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %310) #1
  %311 = bitcast i32* %bx01 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %311) #1
  %312 = bitcast i32* %ay0123 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %312) #1
  %313 = bitcast i32* %ax0123 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %313) #1
  %314 = bitcast i32* %ay123 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %314) #1
  %315 = bitcast i32* %ax123 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %315) #1
  %316 = bitcast i32* %ay012 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %316) #1
  %317 = bitcast i32* %ax012 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %317) #1
  %318 = bitcast i32* %ay23 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %318) #1
  %319 = bitcast i32* %ax23 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %319) #1
  %320 = bitcast i32* %ay12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %320) #1
  %321 = bitcast i32* %ax12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %321) #1
  %322 = bitcast i32* %ay01 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %322) #1
  %323 = bitcast i32* %ax01 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %323) #1
  %cleanup.dest.419 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.419, label %unreachable [
    i32 0, label %cleanup.cont.420
    i32 1, label %return
  ]

cleanup.cont.420:                                 ; preds = %cleanup.395
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %cleanup.cont.420, %cleanup.395, %cleanup, %if.then.19, %if.then.3, %if.then
  %324 = load i32, i32* %retval
  ret i32 %324

unreachable:                                      ; preds = %cleanup.395, %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !8, i64 9656}
!6 = !{!"t1_hinter_s", !7, i64 0, !7, i64 24, !8, i64 48, !9, i64 56, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !3, i64 188, !2, i64 5472, !3, i64 5480, !2, i64 7520, !3, i64 7528, !2, i64 7648, !3, i64 7656, !2, i64 7696, !3, i64 7704, !2, i64 7744, !3, i64 7752, !3, i64 7856, !3, i64 7872, !2, i64 7928, !3, i64 7936, !2, i64 8176, !3, i64 8184, !2, i64 9624, !3, i64 9632, !3, i64 9640, !8, i64 9648, !8, i64 9652, !8, i64 9656, !8, i64 9660, !8, i64 9664, !8, i64 9668, !8, i64 9672, !8, i64 9676, !8, i64 9680, !8, i64 9684, !8, i64 9688, !8, i64 9692, !8, i64 9696, !8, i64 9700, !8, i64 9704, !8, i64 9708, !8, i64 9712, !8, i64 9716, !8, i64 9720, !8, i64 9724, !8, i64 9728, !8, i64 9732, !8, i64 9736, !10, i64 9744, !10, i64 9752, !10, i64 9760, !10, i64 9768, !10, i64 9776, !10, i64 9784, !8, i64 9792, !8, i64 9796, !8, i64 9800, !8, i64 9804, !8, i64 9808, !8, i64 9812, !8, i64 9816, !8, i64 9820, !8, i64 9824, !8, i64 9828, !8, i64 9832, !8, i64 9836, !2, i64 9840, !2, i64 9848}
!7 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20}
!8 = !{!"int", !3, i64 0}
!9 = !{!"long", !3, i64 0}
!10 = !{!"double", !3, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{!6, !2, i64 7744}
!13 = !{!10, !10, i64 0}
!14 = !{!6, !2, i64 7696}
!15 = !{!6, !2, i64 5472}
!16 = !{!17, !8, i64 0}
!17 = !{!"t1_pole_s", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !3, i64 24, !8, i64 28, !3, i64 32, !3, i64 36, !8, i64 40, !8, i64 44}
!18 = !{!19, !10, i64 16}
!19 = !{!"gs_rect_s", !20, i64 0, !20, i64 16}
!20 = !{!"gs_point_s", !10, i64 0, !10, i64 8}
!21 = !{!19, !10, i64 0}
!22 = !{!17, !8, i64 4}
!23 = !{!19, !10, i64 24}
!24 = !{!19, !10, i64 8}
!25 = !{!3, !3, i64 0}
!26 = !{!17, !3, i64 24}
!27 = !{i64 0, i64 4, !11, i64 4, i64 4, !11, i64 8, i64 4, !11, i64 12, i64 4, !11, i64 16, i64 4, !11, i64 20, i64 4, !11, i64 24, i64 4, !25, i64 28, i64 4, !11, i64 32, i64 4, !25, i64 36, i64 4, !25, i64 40, i64 4, !11, i64 44, i64 4, !11}
!28 = !{!29, !8, i64 28}
!29 = !{!"", !2, i64 0, !2, i64 8, !30, i64 16, !30, i64 18, !31, i64 20, !31, i64 28, !31, i64 36}
!30 = !{!"short", !3, i64 0}
!31 = !{!"gs_fixed_point_s", !8, i64 0, !8, i64 4}
!32 = !{!29, !8, i64 32}
!33 = !{!29, !8, i64 36}
!34 = !{!29, !8, i64 40}
!35 = !{!29, !8, i64 20}
!36 = !{!29, !8, i64 24}
