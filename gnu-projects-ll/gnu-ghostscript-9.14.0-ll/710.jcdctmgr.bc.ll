; ModuleID = './jcdctmgr.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32, %struct.jpeg_destination_mgr*, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, %struct.jpeg_component_info*, [4 x %struct.JQUANT_TBL*], [4 x i32], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], [16 x i8], [16 x i8], [16 x i8], i32, %struct.jpeg_scan_info*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32*, i32, %struct.jpeg_comp_master*, %struct.jpeg_c_main_controller*, %struct.jpeg_c_prep_controller*, %struct.jpeg_c_coef_controller*, %struct.jpeg_marker_writer*, %struct.jpeg_color_converter*, %struct.jpeg_downsampler*, %struct.jpeg_forward_dct*, %struct.jpeg_entropy_encoder*, %struct.jpeg_scan_info*, i32 }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_destination_mgr = type { i8*, i64, {}*, i32 (%struct.jpeg_compress_struct*)*, {}* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_comp_master = type { {}*, {}*, {}*, i32, i32 }
%struct.jpeg_c_main_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)* }
%struct.jpeg_c_prep_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* }
%struct.jpeg_c_coef_controller = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, i8***)* }
%struct.jpeg_marker_writer = type { {}*, {}*, {}*, {}*, {}*, void (%struct.jpeg_compress_struct*, i32, i32)*, void (%struct.jpeg_compress_struct*, i32)* }
%struct.jpeg_color_converter = type { {}*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* }
%struct.jpeg_downsampler = type { {}*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, i32 }
%struct.jpeg_forward_dct = type { {}*, [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)*] }
%struct.jpeg_entropy_encoder = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, {}* }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.my_fdct_controller = type { %struct.jpeg_forward_dct, [10 x void (i32*, i8**, i32)*] }

; Function Attrs: nounwind uwtable
define void @jinit_forward_dct(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %fdct = alloca %struct.my_fdct_controller*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_fdct_controller** %fdct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 1
  %4 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !5
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %4, i32 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !10
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %7 = bitcast %struct.jpeg_compress_struct* %6 to %struct.jpeg_common_struct*
  %call = call i8* %5(%struct.jpeg_common_struct* %7, i32 1, i64 168) #3
  %8 = bitcast i8* %call to %struct.my_fdct_controller*
  store %struct.my_fdct_controller* %8, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %9 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %9, i32 0, i32 0
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %fdct1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 73
  store %struct.jpeg_forward_dct* %pub, %struct.jpeg_forward_dct** %fdct1, align 8, !tbaa !13
  %11 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %pub2 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %11, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_forward_dct, %struct.jpeg_forward_dct* %pub2, i32 0, i32 0
  %start_pass3 = bitcast {}** %start_pass to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @start_pass_fdctmgr, void (%struct.jpeg_compress_struct*)** %start_pass3, align 8, !tbaa !14
  store i32 0, i32* %ci, align 4, !tbaa !17
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 19
  %13 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !18
  store %struct.jpeg_component_info* %13, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %ci, align 4, !tbaa !17
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 17
  %16 = load i32, i32* %num_components, align 4, !tbaa !19
  %cmp = icmp slt i32 %14, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 1
  %18 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem4, align 8, !tbaa !5
  %alloc_small5 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %18, i32 0, i32 0
  %19 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small5, align 8, !tbaa !10
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %21 = bitcast %struct.jpeg_compress_struct* %20 to %struct.jpeg_common_struct*
  %call6 = call i8* %19(%struct.jpeg_common_struct* %21, i32 1, i64 256) #3
  %22 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %22, i32 0, i32 21
  store i8* %call6, i8** %dct_table, align 8, !tbaa !20
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %ci, align 4, !tbaa !17
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !17
  %24 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %24, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast %struct.my_fdct_controller** %fdct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_fdctmgr(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %fdct = alloca %struct.my_fdct_controller*, align 8
  %ci = alloca i32, align 4
  %qtblno = alloca i32, align 4
  %i = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %method = alloca i32, align 4
  %qtbl = alloca %struct.JQUANT_TBL*, align 8
  %dtbl = alloca i32*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_fdct_controller** %fdct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %fdct1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 73
  %2 = load %struct.jpeg_forward_dct*, %struct.jpeg_forward_dct** %fdct1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_forward_dct* %2 to %struct.my_fdct_controller*
  store %struct.my_fdct_controller* %3, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %qtblno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %method to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %method, align 4, !tbaa !17
  %9 = bitcast %struct.JQUANT_TBL** %qtbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32** %dtbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32 0, i32* %ci, align 4, !tbaa !17
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 19
  %12 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !18
  store %struct.jpeg_component_info* %12, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.177, %entry
  %13 = load i32, i32* %ci, align 4, !tbaa !17
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 17
  %15 = load i32, i32* %num_components, align 4, !tbaa !19
  %cmp = icmp slt i32 %13, %15
  br i1 %cmp, label %for.body, label %for.end.179

for.body:                                         ; preds = %for.cond
  %16 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_h_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %16, i32 0, i32 9
  %17 = load i32, i32* %DCT_h_scaled_size, align 4, !tbaa !22
  %shl = shl i32 %17, 8
  %18 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %18, i32 0, i32 10
  %19 = load i32, i32* %DCT_v_scaled_size, align 4, !tbaa !23
  %add = add nsw i32 %shl, %19
  switch i32 %add, label %sw.default.128 [
    i32 257, label %sw.bb
    i32 514, label %sw.bb.2
    i32 771, label %sw.bb.6
    i32 1028, label %sw.bb.10
    i32 1285, label %sw.bb.14
    i32 1542, label %sw.bb.18
    i32 1799, label %sw.bb.22
    i32 2313, label %sw.bb.26
    i32 2570, label %sw.bb.30
    i32 2827, label %sw.bb.34
    i32 3084, label %sw.bb.38
    i32 3341, label %sw.bb.42
    i32 3598, label %sw.bb.46
    i32 3855, label %sw.bb.50
    i32 4112, label %sw.bb.54
    i32 4104, label %sw.bb.58
    i32 3591, label %sw.bb.62
    i32 3078, label %sw.bb.66
    i32 2565, label %sw.bb.70
    i32 2052, label %sw.bb.74
    i32 1539, label %sw.bb.78
    i32 1026, label %sw.bb.82
    i32 513, label %sw.bb.86
    i32 2064, label %sw.bb.90
    i32 1806, label %sw.bb.94
    i32 1548, label %sw.bb.98
    i32 1290, label %sw.bb.102
    i32 1032, label %sw.bb.106
    i32 774, label %sw.bb.110
    i32 516, label %sw.bb.114
    i32 258, label %sw.bb.118
    i32 2056, label %sw.bb.122
  ]

sw.bb:                                            ; preds = %for.body
  %20 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %21, i32 0, i32 1
  %arrayidx = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct, i32 0, i64 %idxprom
  store void (i32*, i8**, i32)* @jpeg_fdct_1x1, void (i32*, i8**, i32)** %arrayidx, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.2:                                          ; preds = %for.body
  %22 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom3 = sext i32 %22 to i64
  %23 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct4 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %23, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct4, i32 0, i64 %idxprom3
  store void (i32*, i8**, i32)* @jpeg_fdct_2x2, void (i32*, i8**, i32)** %arrayidx5, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.6:                                          ; preds = %for.body
  %24 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom7 = sext i32 %24 to i64
  %25 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct8 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %25, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct8, i32 0, i64 %idxprom7
  store void (i32*, i8**, i32)* @jpeg_fdct_3x3, void (i32*, i8**, i32)** %arrayidx9, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.10:                                         ; preds = %for.body
  %26 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom11 = sext i32 %26 to i64
  %27 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct12 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %27, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct12, i32 0, i64 %idxprom11
  store void (i32*, i8**, i32)* @jpeg_fdct_4x4, void (i32*, i8**, i32)** %arrayidx13, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.14:                                         ; preds = %for.body
  %28 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom15 = sext i32 %28 to i64
  %29 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct16 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %29, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct16, i32 0, i64 %idxprom15
  store void (i32*, i8**, i32)* @jpeg_fdct_5x5, void (i32*, i8**, i32)** %arrayidx17, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.18:                                         ; preds = %for.body
  %30 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom19 = sext i32 %30 to i64
  %31 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct20 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %31, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct20, i32 0, i64 %idxprom19
  store void (i32*, i8**, i32)* @jpeg_fdct_6x6, void (i32*, i8**, i32)** %arrayidx21, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.22:                                         ; preds = %for.body
  %32 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom23 = sext i32 %32 to i64
  %33 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct24 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %33, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct24, i32 0, i64 %idxprom23
  store void (i32*, i8**, i32)* @jpeg_fdct_7x7, void (i32*, i8**, i32)** %arrayidx25, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.26:                                         ; preds = %for.body
  %34 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom27 = sext i32 %34 to i64
  %35 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct28 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %35, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct28, i32 0, i64 %idxprom27
  store void (i32*, i8**, i32)* @jpeg_fdct_9x9, void (i32*, i8**, i32)** %arrayidx29, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.30:                                         ; preds = %for.body
  %36 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom31 = sext i32 %36 to i64
  %37 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct32 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %37, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct32, i32 0, i64 %idxprom31
  store void (i32*, i8**, i32)* @jpeg_fdct_10x10, void (i32*, i8**, i32)** %arrayidx33, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.34:                                         ; preds = %for.body
  %38 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom35 = sext i32 %38 to i64
  %39 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct36 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %39, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct36, i32 0, i64 %idxprom35
  store void (i32*, i8**, i32)* @jpeg_fdct_11x11, void (i32*, i8**, i32)** %arrayidx37, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.38:                                         ; preds = %for.body
  %40 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom39 = sext i32 %40 to i64
  %41 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct40 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %41, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct40, i32 0, i64 %idxprom39
  store void (i32*, i8**, i32)* @jpeg_fdct_12x12, void (i32*, i8**, i32)** %arrayidx41, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.42:                                         ; preds = %for.body
  %42 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom43 = sext i32 %42 to i64
  %43 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct44 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %43, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct44, i32 0, i64 %idxprom43
  store void (i32*, i8**, i32)* @jpeg_fdct_13x13, void (i32*, i8**, i32)** %arrayidx45, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.46:                                         ; preds = %for.body
  %44 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom47 = sext i32 %44 to i64
  %45 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct48 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %45, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct48, i32 0, i64 %idxprom47
  store void (i32*, i8**, i32)* @jpeg_fdct_14x14, void (i32*, i8**, i32)** %arrayidx49, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.50:                                         ; preds = %for.body
  %46 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom51 = sext i32 %46 to i64
  %47 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct52 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %47, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct52, i32 0, i64 %idxprom51
  store void (i32*, i8**, i32)* @jpeg_fdct_15x15, void (i32*, i8**, i32)** %arrayidx53, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.54:                                         ; preds = %for.body
  %48 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom55 = sext i32 %48 to i64
  %49 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct56 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %49, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct56, i32 0, i64 %idxprom55
  store void (i32*, i8**, i32)* @jpeg_fdct_16x16, void (i32*, i8**, i32)** %arrayidx57, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.58:                                         ; preds = %for.body
  %50 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom59 = sext i32 %50 to i64
  %51 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct60 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %51, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct60, i32 0, i64 %idxprom59
  store void (i32*, i8**, i32)* @jpeg_fdct_16x8, void (i32*, i8**, i32)** %arrayidx61, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.62:                                         ; preds = %for.body
  %52 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom63 = sext i32 %52 to i64
  %53 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct64 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %53, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct64, i32 0, i64 %idxprom63
  store void (i32*, i8**, i32)* @jpeg_fdct_14x7, void (i32*, i8**, i32)** %arrayidx65, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.66:                                         ; preds = %for.body
  %54 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom67 = sext i32 %54 to i64
  %55 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct68 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %55, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct68, i32 0, i64 %idxprom67
  store void (i32*, i8**, i32)* @jpeg_fdct_12x6, void (i32*, i8**, i32)** %arrayidx69, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.70:                                         ; preds = %for.body
  %56 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom71 = sext i32 %56 to i64
  %57 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct72 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %57, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct72, i32 0, i64 %idxprom71
  store void (i32*, i8**, i32)* @jpeg_fdct_10x5, void (i32*, i8**, i32)** %arrayidx73, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.74:                                         ; preds = %for.body
  %58 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom75 = sext i32 %58 to i64
  %59 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct76 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %59, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct76, i32 0, i64 %idxprom75
  store void (i32*, i8**, i32)* @jpeg_fdct_8x4, void (i32*, i8**, i32)** %arrayidx77, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.78:                                         ; preds = %for.body
  %60 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom79 = sext i32 %60 to i64
  %61 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct80 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %61, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct80, i32 0, i64 %idxprom79
  store void (i32*, i8**, i32)* @jpeg_fdct_6x3, void (i32*, i8**, i32)** %arrayidx81, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.82:                                         ; preds = %for.body
  %62 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom83 = sext i32 %62 to i64
  %63 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct84 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %63, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct84, i32 0, i64 %idxprom83
  store void (i32*, i8**, i32)* @jpeg_fdct_4x2, void (i32*, i8**, i32)** %arrayidx85, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.86:                                         ; preds = %for.body
  %64 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom87 = sext i32 %64 to i64
  %65 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct88 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %65, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct88, i32 0, i64 %idxprom87
  store void (i32*, i8**, i32)* @jpeg_fdct_2x1, void (i32*, i8**, i32)** %arrayidx89, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.90:                                         ; preds = %for.body
  %66 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom91 = sext i32 %66 to i64
  %67 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct92 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %67, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct92, i32 0, i64 %idxprom91
  store void (i32*, i8**, i32)* @jpeg_fdct_8x16, void (i32*, i8**, i32)** %arrayidx93, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.94:                                         ; preds = %for.body
  %68 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom95 = sext i32 %68 to i64
  %69 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct96 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %69, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct96, i32 0, i64 %idxprom95
  store void (i32*, i8**, i32)* @jpeg_fdct_7x14, void (i32*, i8**, i32)** %arrayidx97, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.98:                                         ; preds = %for.body
  %70 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom99 = sext i32 %70 to i64
  %71 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct100 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %71, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct100, i32 0, i64 %idxprom99
  store void (i32*, i8**, i32)* @jpeg_fdct_6x12, void (i32*, i8**, i32)** %arrayidx101, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.102:                                        ; preds = %for.body
  %72 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom103 = sext i32 %72 to i64
  %73 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct104 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %73, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct104, i32 0, i64 %idxprom103
  store void (i32*, i8**, i32)* @jpeg_fdct_5x10, void (i32*, i8**, i32)** %arrayidx105, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.106:                                        ; preds = %for.body
  %74 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom107 = sext i32 %74 to i64
  %75 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct108 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %75, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct108, i32 0, i64 %idxprom107
  store void (i32*, i8**, i32)* @jpeg_fdct_4x8, void (i32*, i8**, i32)** %arrayidx109, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.110:                                        ; preds = %for.body
  %76 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom111 = sext i32 %76 to i64
  %77 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct112 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %77, i32 0, i32 1
  %arrayidx113 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct112, i32 0, i64 %idxprom111
  store void (i32*, i8**, i32)* @jpeg_fdct_3x6, void (i32*, i8**, i32)** %arrayidx113, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.114:                                        ; preds = %for.body
  %78 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom115 = sext i32 %78 to i64
  %79 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct116 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %79, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct116, i32 0, i64 %idxprom115
  store void (i32*, i8**, i32)* @jpeg_fdct_2x4, void (i32*, i8**, i32)** %arrayidx117, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.118:                                        ; preds = %for.body
  %80 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom119 = sext i32 %80 to i64
  %81 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct120 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %81, i32 0, i32 1
  %arrayidx121 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct120, i32 0, i64 %idxprom119
  store void (i32*, i8**, i32)* @jpeg_fdct_1x2, void (i32*, i8**, i32)** %arrayidx121, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog.142

sw.bb.122:                                        ; preds = %for.body
  %82 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %dct_method = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %82, i32 0, i32 35
  %83 = load i32, i32* %dct_method, align 4, !tbaa !24
  switch i32 %83, label %sw.default [
    i32 0, label %sw.bb.123
  ]

sw.bb.123:                                        ; preds = %sw.bb.122
  %84 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom124 = sext i32 %84 to i64
  %85 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct125 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %85, i32 0, i32 1
  %arrayidx126 = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct125, i32 0, i64 %idxprom124
  store void (i32*, i8**, i32)* @jpeg_fdct_islow, void (i32*, i8**, i32)** %arrayidx126, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.122
  %86 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %86, i32 0, i32 0
  %87 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !25
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %87, i32 0, i32 5
  store i32 49, i32* %msg_code, align 4, !tbaa !26
  %88 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err127 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %88, i32 0, i32 0
  %89 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err127, align 8, !tbaa !25
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %89, i32 0, i32 0
  %90 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !28
  %91 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %92 = bitcast %struct.jpeg_compress_struct* %91 to %struct.jpeg_common_struct*
  call void %90(%struct.jpeg_common_struct* %92) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.123
  br label %sw.epilog.142

sw.default.128:                                   ; preds = %for.body
  %93 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err129 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %93, i32 0, i32 0
  %94 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err129, align 8, !tbaa !25
  %msg_code130 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %94, i32 0, i32 5
  store i32 7, i32* %msg_code130, align 4, !tbaa !26
  %95 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_h_scaled_size131 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %95, i32 0, i32 9
  %96 = load i32, i32* %DCT_h_scaled_size131, align 4, !tbaa !22
  %97 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err132 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %97, i32 0, i32 0
  %98 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err132, align 8, !tbaa !25
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %98, i32 0, i32 6
  %i133 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx134 = getelementptr inbounds [8 x i32], [8 x i32]* %i133, i32 0, i64 0
  store i32 %96, i32* %arrayidx134, align 4, !tbaa !17
  %99 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_v_scaled_size135 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %99, i32 0, i32 10
  %100 = load i32, i32* %DCT_v_scaled_size135, align 4, !tbaa !23
  %101 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err136 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %101, i32 0, i32 0
  %102 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err136, align 8, !tbaa !25
  %msg_parm137 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %102, i32 0, i32 6
  %i138 = bitcast %union.anon* %msg_parm137 to [8 x i32]*
  %arrayidx139 = getelementptr inbounds [8 x i32], [8 x i32]* %i138, i32 0, i64 1
  store i32 %100, i32* %arrayidx139, align 4, !tbaa !17
  %103 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err140 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %103, i32 0, i32 0
  %104 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err140, align 8, !tbaa !25
  %error_exit141 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %104, i32 0, i32 0
  %105 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit141, align 8, !tbaa !28
  %106 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %107 = bitcast %struct.jpeg_compress_struct* %106 to %struct.jpeg_common_struct*
  call void %105(%struct.jpeg_common_struct* %107) #3
  br label %sw.epilog.142

sw.epilog.142:                                    ; preds = %sw.default.128, %sw.epilog, %sw.bb.118, %sw.bb.114, %sw.bb.110, %sw.bb.106, %sw.bb.102, %sw.bb.98, %sw.bb.94, %sw.bb.90, %sw.bb.86, %sw.bb.82, %sw.bb.78, %sw.bb.74, %sw.bb.70, %sw.bb.66, %sw.bb.62, %sw.bb.58, %sw.bb.54, %sw.bb.50, %sw.bb.46, %sw.bb.42, %sw.bb.38, %sw.bb.34, %sw.bb.30, %sw.bb.26, %sw.bb.22, %sw.bb.18, %sw.bb.14, %sw.bb.10, %sw.bb.6, %sw.bb.2, %sw.bb
  %108 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %108, i32 0, i32 4
  %109 = load i32, i32* %quant_tbl_no, align 4, !tbaa !29
  store i32 %109, i32* %qtblno, align 4, !tbaa !17
  %110 = load i32, i32* %qtblno, align 4, !tbaa !17
  %cmp143 = icmp slt i32 %110, 0
  br i1 %cmp143, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog.142
  %111 = load i32, i32* %qtblno, align 4, !tbaa !17
  %cmp144 = icmp sge i32 %111, 4
  br i1 %cmp144, label %if.then, label %lor.lhs.false.145

lor.lhs.false.145:                                ; preds = %lor.lhs.false
  %112 = load i32, i32* %qtblno, align 4, !tbaa !17
  %idxprom146 = sext i32 %112 to i64
  %113 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %113, i32 0, i32 20
  %arrayidx147 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs, i32 0, i64 %idxprom146
  %114 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx147, align 8, !tbaa !1
  %cmp148 = icmp eq %struct.JQUANT_TBL* %114, null
  br i1 %cmp148, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.145, %lor.lhs.false, %sw.epilog.142
  %115 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err149 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %115, i32 0, i32 0
  %116 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err149, align 8, !tbaa !25
  %msg_code150 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %116, i32 0, i32 5
  store i32 54, i32* %msg_code150, align 4, !tbaa !26
  %117 = load i32, i32* %qtblno, align 4, !tbaa !17
  %118 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err151 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %118, i32 0, i32 0
  %119 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err151, align 8, !tbaa !25
  %msg_parm152 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %119, i32 0, i32 6
  %i153 = bitcast %union.anon* %msg_parm152 to [8 x i32]*
  %arrayidx154 = getelementptr inbounds [8 x i32], [8 x i32]* %i153, i32 0, i64 0
  store i32 %117, i32* %arrayidx154, align 4, !tbaa !17
  %120 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err155 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %120, i32 0, i32 0
  %121 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err155, align 8, !tbaa !25
  %error_exit156 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %121, i32 0, i32 0
  %122 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit156, align 8, !tbaa !28
  %123 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %124 = bitcast %struct.jpeg_compress_struct* %123 to %struct.jpeg_common_struct*
  call void %122(%struct.jpeg_common_struct* %124) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.145
  %125 = load i32, i32* %qtblno, align 4, !tbaa !17
  %idxprom157 = sext i32 %125 to i64
  %126 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %quant_tbl_ptrs158 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %126, i32 0, i32 20
  %arrayidx159 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs158, i32 0, i64 %idxprom157
  %127 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx159, align 8, !tbaa !1
  store %struct.JQUANT_TBL* %127, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !1
  %128 = load i32, i32* %method, align 4, !tbaa !17
  switch i32 %128, label %sw.default.171 [
    i32 0, label %sw.bb.160
  ]

sw.bb.160:                                        ; preds = %if.end
  %129 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %129, i32 0, i32 21
  %130 = load i8*, i8** %dct_table, align 8, !tbaa !20
  %131 = bitcast i8* %130 to i32*
  store i32* %131, i32** %dtbl, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond.161

for.cond.161:                                     ; preds = %for.inc, %sw.bb.160
  %132 = load i32, i32* %i, align 4, !tbaa !17
  %cmp162 = icmp slt i32 %132, 64
  br i1 %cmp162, label %for.body.163, label %for.end

for.body.163:                                     ; preds = %for.cond.161
  %133 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom164 = sext i32 %133 to i64
  %134 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !1
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %134, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval, i32 0, i64 %idxprom164
  %135 = load i16, i16* %arrayidx165, align 2, !tbaa !30
  %conv = zext i16 %135 to i32
  %136 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %136, i32 0, i32 13
  %137 = load i32, i32* %component_needed, align 4, !tbaa !31
  %tobool = icmp ne i32 %137, 0
  %cond = select i1 %tobool, i32 4, i32 3
  %shl166 = shl i32 %conv, %cond
  %138 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom167 = sext i32 %138 to i64
  %139 = load i32*, i32** %dtbl, align 8, !tbaa !1
  %arrayidx168 = getelementptr inbounds i32, i32* %139, i64 %idxprom167
  store i32 %shl166, i32* %arrayidx168, align 4, !tbaa !17
  br label %for.inc

for.inc:                                          ; preds = %for.body.163
  %140 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %140, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond.161

for.end:                                          ; preds = %for.cond.161
  %141 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom169 = sext i32 %141 to i64
  %142 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %142, i32 0, i32 0
  %forward_DCT = getelementptr inbounds %struct.jpeg_forward_dct, %struct.jpeg_forward_dct* %pub, i32 0, i32 1
  %arrayidx170 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)*]* %forward_DCT, i32 0, i64 %idxprom169
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* @forward_DCT, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)** %arrayidx170, align 8, !tbaa !1
  br label %sw.epilog.176

sw.default.171:                                   ; preds = %if.end
  %143 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err172 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %143, i32 0, i32 0
  %144 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err172, align 8, !tbaa !25
  %msg_code173 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %144, i32 0, i32 5
  store i32 49, i32* %msg_code173, align 4, !tbaa !26
  %145 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err174 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %145, i32 0, i32 0
  %146 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err174, align 8, !tbaa !25
  %error_exit175 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %146, i32 0, i32 0
  %147 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit175, align 8, !tbaa !28
  %148 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %149 = bitcast %struct.jpeg_compress_struct* %148 to %struct.jpeg_common_struct*
  call void %147(%struct.jpeg_common_struct* %149) #3
  br label %sw.epilog.176

sw.epilog.176:                                    ; preds = %sw.default.171, %for.end
  br label %for.inc.177

for.inc.177:                                      ; preds = %sw.epilog.176
  %150 = load i32, i32* %ci, align 4, !tbaa !17
  %inc178 = add nsw i32 %150, 1
  store i32 %inc178, i32* %ci, align 4, !tbaa !17
  %151 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %151, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.end.179:                                      ; preds = %for.cond
  %152 = bitcast i32** %dtbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = bitcast %struct.JQUANT_TBL** %qtbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %154 = bitcast i32* %method to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #1
  %155 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %156 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  %157 = bitcast i32* %qtblno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  %158 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %159 = bitcast %struct.my_fdct_controller** %fdct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @jpeg_fdct_1x1(i32*, i8**, i32) #2

declare void @jpeg_fdct_2x2(i32*, i8**, i32) #2

declare void @jpeg_fdct_3x3(i32*, i8**, i32) #2

declare void @jpeg_fdct_4x4(i32*, i8**, i32) #2

declare void @jpeg_fdct_5x5(i32*, i8**, i32) #2

declare void @jpeg_fdct_6x6(i32*, i8**, i32) #2

declare void @jpeg_fdct_7x7(i32*, i8**, i32) #2

declare void @jpeg_fdct_9x9(i32*, i8**, i32) #2

declare void @jpeg_fdct_10x10(i32*, i8**, i32) #2

declare void @jpeg_fdct_11x11(i32*, i8**, i32) #2

declare void @jpeg_fdct_12x12(i32*, i8**, i32) #2

declare void @jpeg_fdct_13x13(i32*, i8**, i32) #2

declare void @jpeg_fdct_14x14(i32*, i8**, i32) #2

declare void @jpeg_fdct_15x15(i32*, i8**, i32) #2

declare void @jpeg_fdct_16x16(i32*, i8**, i32) #2

declare void @jpeg_fdct_16x8(i32*, i8**, i32) #2

declare void @jpeg_fdct_14x7(i32*, i8**, i32) #2

declare void @jpeg_fdct_12x6(i32*, i8**, i32) #2

declare void @jpeg_fdct_10x5(i32*, i8**, i32) #2

declare void @jpeg_fdct_8x4(i32*, i8**, i32) #2

declare void @jpeg_fdct_6x3(i32*, i8**, i32) #2

declare void @jpeg_fdct_4x2(i32*, i8**, i32) #2

declare void @jpeg_fdct_2x1(i32*, i8**, i32) #2

declare void @jpeg_fdct_8x16(i32*, i8**, i32) #2

declare void @jpeg_fdct_7x14(i32*, i8**, i32) #2

declare void @jpeg_fdct_6x12(i32*, i8**, i32) #2

declare void @jpeg_fdct_5x10(i32*, i8**, i32) #2

declare void @jpeg_fdct_4x8(i32*, i8**, i32) #2

declare void @jpeg_fdct_3x6(i32*, i8**, i32) #2

declare void @jpeg_fdct_2x4(i32*, i8**, i32) #2

declare void @jpeg_fdct_1x2(i32*, i8**, i32) #2

declare void @jpeg_fdct_islow(i32*, i8**, i32) #2

; Function Attrs: nounwind uwtable
define internal void @forward_DCT(%struct.jpeg_compress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %sample_data, [64 x i16]* %coef_blocks, i32 %start_row, i32 %start_col, i32 %num_blocks) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %sample_data.addr = alloca i8**, align 8
  %coef_blocks.addr = alloca [64 x i16]*, align 8
  %start_row.addr = alloca i32, align 4
  %start_col.addr = alloca i32, align 4
  %num_blocks.addr = alloca i32, align 4
  %fdct = alloca %struct.my_fdct_controller*, align 8
  %do_dct = alloca void (i32*, i8**, i32)*, align 8
  %divisors = alloca i32*, align 8
  %workspace = alloca [64 x i32], align 16
  %bi = alloca i32, align 4
  %temp = alloca i32, align 4
  %qval = alloca i32, align 4
  %i = alloca i32, align 4
  %output_ptr = alloca i16*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !1
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !1
  store [64 x i16]* %coef_blocks, [64 x i16]** %coef_blocks.addr, align 8, !tbaa !1
  store i32 %start_row, i32* %start_row.addr, align 4, !tbaa !17
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !17
  store i32 %num_blocks, i32* %num_blocks.addr, align 4, !tbaa !17
  %0 = bitcast %struct.my_fdct_controller** %fdct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %fdct1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 73
  %2 = load %struct.jpeg_forward_dct*, %struct.jpeg_forward_dct** %fdct1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_forward_dct* %2 to %struct.my_fdct_controller*
  store %struct.my_fdct_controller* %3, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %4 = bitcast void (i32*, i8**, i32)** %do_dct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !1
  %component_index = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %5, i32 0, i32 1
  %6 = load i32, i32* %component_index, align 4, !tbaa !32
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !1
  %do_dct2 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [10 x void (i32*, i8**, i32)*], [10 x void (i32*, i8**, i32)*]* %do_dct2, i32 0, i64 %idxprom
  %8 = load void (i32*, i8**, i32)*, void (i32*, i8**, i32)** %arrayidx, align 8, !tbaa !1
  store void (i32*, i8**, i32)* %8, void (i32*, i8**, i32)** %do_dct, align 8, !tbaa !1
  %9 = bitcast i32** %divisors to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !1
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %10, i32 0, i32 21
  %11 = load i8*, i8** %dct_table, align 8, !tbaa !20
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %divisors, align 8, !tbaa !1
  %13 = bitcast [64 x i32]* %workspace to i8*
  call void @llvm.lifetime.start(i64 256, i8* %13) #1
  %14 = bitcast i32* %bi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %start_row.addr, align 4, !tbaa !17
  %16 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %idx.ext = zext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %16, i64 %idx.ext
  store i8** %add.ptr, i8*** %sample_data.addr, align 8, !tbaa !1
  store i32 0, i32* %bi, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc.28, %entry
  %17 = load i32, i32* %bi, align 4, !tbaa !17
  %18 = load i32, i32* %num_blocks.addr, align 4, !tbaa !17
  %cmp = icmp ult i32 %17, %18
  br i1 %cmp, label %for.body, label %for.end.31

for.body:                                         ; preds = %for.cond
  %19 = load void (i32*, i8**, i32)*, void (i32*, i8**, i32)** %do_dct, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [64 x i32], [64 x i32]* %workspace, i32 0, i32 0
  %20 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !1
  %21 = load i32, i32* %start_col.addr, align 4, !tbaa !17
  call void %19(i32* %arraydecay, i8** %20, i32 %21) #3
  %22 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i32* %qval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast i16** %output_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load i32, i32* %bi, align 4, !tbaa !17
  %idxprom3 = zext i32 %26 to i64
  %27 = load [64 x i16]*, [64 x i16]** %coef_blocks.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds [64 x i16], [64 x i16]* %27, i64 %idxprom3
  %arraydecay5 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx4, i32 0, i32 0
  store i16* %arraydecay5, i16** %output_ptr, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %28 = load i32, i32* %i, align 4, !tbaa !17
  %cmp7 = icmp slt i32 %28, 64
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %29 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom9 = sext i32 %29 to i64
  %30 = load i32*, i32** %divisors, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i32, i32* %30, i64 %idxprom9
  %31 = load i32, i32* %arrayidx10, align 4, !tbaa !17
  store i32 %31, i32* %qval, align 4, !tbaa !17
  %32 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom11 = sext i32 %32 to i64
  %arrayidx12 = getelementptr inbounds [64 x i32], [64 x i32]* %workspace, i32 0, i64 %idxprom11
  %33 = load i32, i32* %arrayidx12, align 4, !tbaa !17
  store i32 %33, i32* %temp, align 4, !tbaa !17
  %34 = load i32, i32* %temp, align 4, !tbaa !17
  %cmp13 = icmp slt i32 %34, 0
  br i1 %cmp13, label %if.then, label %if.else.17

if.then:                                          ; preds = %for.body.8
  %35 = load i32, i32* %temp, align 4, !tbaa !17
  %sub = sub nsw i32 0, %35
  store i32 %sub, i32* %temp, align 4, !tbaa !17
  %36 = load i32, i32* %qval, align 4, !tbaa !17
  %shr = ashr i32 %36, 1
  %37 = load i32, i32* %temp, align 4, !tbaa !17
  %add = add nsw i32 %37, %shr
  store i32 %add, i32* %temp, align 4, !tbaa !17
  %38 = load i32, i32* %temp, align 4, !tbaa !17
  %39 = load i32, i32* %qval, align 4, !tbaa !17
  %cmp14 = icmp sge i32 %38, %39
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then
  %40 = load i32, i32* %qval, align 4, !tbaa !17
  %41 = load i32, i32* %temp, align 4, !tbaa !17
  %div = sdiv i32 %41, %40
  store i32 %div, i32* %temp, align 4, !tbaa !17
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %temp, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.15
  %42 = load i32, i32* %temp, align 4, !tbaa !17
  %sub16 = sub nsw i32 0, %42
  store i32 %sub16, i32* %temp, align 4, !tbaa !17
  br label %if.end.25

if.else.17:                                       ; preds = %for.body.8
  %43 = load i32, i32* %qval, align 4, !tbaa !17
  %shr18 = ashr i32 %43, 1
  %44 = load i32, i32* %temp, align 4, !tbaa !17
  %add19 = add nsw i32 %44, %shr18
  store i32 %add19, i32* %temp, align 4, !tbaa !17
  %45 = load i32, i32* %temp, align 4, !tbaa !17
  %46 = load i32, i32* %qval, align 4, !tbaa !17
  %cmp20 = icmp sge i32 %45, %46
  br i1 %cmp20, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.else.17
  %47 = load i32, i32* %qval, align 4, !tbaa !17
  %48 = load i32, i32* %temp, align 4, !tbaa !17
  %div22 = sdiv i32 %48, %47
  store i32 %div22, i32* %temp, align 4, !tbaa !17
  br label %if.end.24

if.else.23:                                       ; preds = %if.else.17
  store i32 0, i32* %temp, align 4, !tbaa !17
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.23, %if.then.21
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end
  %49 = load i32, i32* %temp, align 4, !tbaa !17
  %conv = trunc i32 %49 to i16
  %50 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom26 = sext i32 %50 to i64
  %51 = load i16*, i16** %output_ptr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i16, i16* %51, i64 %idxprom26
  store i16 %conv, i16* %arrayidx27, align 2, !tbaa !30
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %52 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %53 = bitcast i16** %output_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i32* %qval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.end
  %57 = load i32, i32* %bi, align 4, !tbaa !17
  %inc29 = add i32 %57, 1
  store i32 %inc29, i32* %bi, align 4, !tbaa !17
  %58 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !1
  %DCT_h_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %58, i32 0, i32 9
  %59 = load i32, i32* %DCT_h_scaled_size, align 4, !tbaa !22
  %60 = load i32, i32* %start_col.addr, align 4, !tbaa !17
  %add30 = add i32 %60, %59
  store i32 %add30, i32* %start_col.addr, align 4, !tbaa !17
  br label %for.cond

for.end.31:                                       ; preds = %for.cond
  %61 = bitcast i32* %bi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast [64 x i32]* %workspace to i8*
  call void @llvm.lifetime.end(i64 256, i8* %62) #1
  %63 = bitcast i32** %divisors to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast void (i32*, i8**, i32)** %do_dct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast %struct.my_fdct_controller** %fdct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 8}
!6 = !{!"jpeg_compress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !7, i64 36, !2, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !3, i64 60, !8, i64 64, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !3, i64 96, !2, i64 104, !3, i64 112, !3, i64 144, !3, i64 160, !3, i64 192, !3, i64 224, !3, i64 240, !3, i64 256, !7, i64 272, !2, i64 280, !3, i64 288, !3, i64 292, !3, i64 296, !3, i64 300, !3, i64 304, !7, i64 308, !3, i64 312, !7, i64 316, !7, i64 320, !3, i64 324, !3, i64 328, !3, i64 329, !3, i64 330, !9, i64 332, !9, i64 334, !3, i64 336, !3, i64 340, !7, i64 344, !3, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !7, i64 368, !7, i64 372, !3, i64 376, !7, i64 408, !7, i64 412, !7, i64 416, !3, i64 420, !7, i64 460, !7, i64 464, !7, i64 468, !7, i64 472, !7, i64 476, !2, i64 480, !7, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !7, i64 576}
!7 = !{!"int", !3, i64 0}
!8 = !{!"double", !3, i64 0}
!9 = !{!"short", !3, i64 0}
!10 = !{!11, !2, i64 0}
!11 = !{!"jpeg_memory_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !12, i64 88, !12, i64 96}
!12 = !{!"long", !3, i64 0}
!13 = !{!6, !2, i64 552}
!14 = !{!15, !2, i64 0}
!15 = !{!"", !16, i64 0, !3, i64 88}
!16 = !{!"jpeg_forward_dct", !2, i64 0, !3, i64 8}
!17 = !{!7, !7, i64 0}
!18 = !{!6, !2, i64 104}
!19 = !{!6, !7, i64 92}
!20 = !{!21, !2, i64 88}
!21 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !3, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !2, i64 80, !2, i64 88}
!22 = !{!21, !7, i64 36}
!23 = !{!21, !7, i64 40}
!24 = !{!6, !3, i64 312}
!25 = !{!6, !2, i64 0}
!26 = !{!27, !7, i64 40}
!27 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !3, i64 44, !7, i64 124, !12, i64 128, !2, i64 136, !7, i64 144, !2, i64 152, !7, i64 160, !7, i64 164}
!28 = !{!27, !2, i64 0}
!29 = !{!21, !7, i64 16}
!30 = !{!9, !9, i64 0}
!31 = !{!21, !3, i64 52}
!32 = !{!21, !7, i64 4}
