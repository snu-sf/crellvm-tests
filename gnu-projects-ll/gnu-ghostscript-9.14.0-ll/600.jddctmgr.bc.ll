; ModuleID = './jddctmgr.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32, %struct.jpeg_source_mgr*, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, i32, i32, i32, [64 x i32]*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], i32, %struct.jpeg_component_info*, i32, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i8, i8, i16, i16, i32, i8, i32, i32, %struct.jpeg_marker_struct*, i32, i32, i32, i32, i32, i8*, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [64 x i32], i32, i32, i32, i32, i32, i32*, i32, i32, %struct.jpeg_decomp_master*, %struct.jpeg_d_main_controller*, %struct.jpeg_d_coef_controller*, %struct.jpeg_d_post_controller*, %struct.jpeg_input_controller*, %struct.jpeg_marker_reader*, %struct.jpeg_entropy_decoder*, %struct.jpeg_inverse_dct*, %struct.jpeg_upsampler*, %struct.jpeg_color_deconverter*, %struct.jpeg_color_quantizer* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_source_mgr = type { i8*, i64, {}*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, {}* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.jpeg_marker_struct = type { %struct.jpeg_marker_struct*, i8, i32, i32, i8* }
%struct.jpeg_decomp_master = type { {}*, {}*, i32 }
%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
%struct.jpeg_d_coef_controller = type { {}*, i32 (%struct.jpeg_decompress_struct*)*, {}*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
%struct.jpeg_input_controller = type { i32 (%struct.jpeg_decompress_struct*)*, {}*, {}*, {}*, i32, i32 }
%struct.jpeg_marker_reader = type { {}*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32, i32, i32, i32 }
%struct.jpeg_entropy_decoder = type { {}*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)*, {}* }
%struct.jpeg_inverse_dct = type { {}*, [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*] }
%struct.jpeg_upsampler = type { {}*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, i32 }
%struct.jpeg_color_deconverter = type { {}*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* }
%struct.jpeg_color_quantizer = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, {}*, {}* }
%struct.my_idct_controller = type { %struct.jpeg_inverse_dct, [10 x i32] }

; Function Attrs: nounwind uwtable
define void @jinit_inverse_dct(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %idct = alloca %struct.my_idct_controller*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_idct_controller** %idct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 1
  %4 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !5
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %4, i32 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !10
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %7 = bitcast %struct.jpeg_decompress_struct* %6 to %struct.jpeg_common_struct*
  %call = call i8* %5(%struct.jpeg_common_struct* %7, i32 1, i64 128) #4
  %8 = bitcast i8* %call to %struct.my_idct_controller*
  store %struct.my_idct_controller* %8, %struct.my_idct_controller** %idct, align 8, !tbaa !1
  %9 = load %struct.my_idct_controller*, %struct.my_idct_controller** %idct, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_idct_controller, %struct.my_idct_controller* %9, i32 0, i32 0
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %idct1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 90
  store %struct.jpeg_inverse_dct* %pub, %struct.jpeg_inverse_dct** %idct1, align 8, !tbaa !13
  %11 = load %struct.my_idct_controller*, %struct.my_idct_controller** %idct, align 8, !tbaa !1
  %pub2 = getelementptr inbounds %struct.my_idct_controller, %struct.my_idct_controller* %11, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_inverse_dct, %struct.jpeg_inverse_dct* %pub2, i32 0, i32 0
  %start_pass3 = bitcast {}** %start_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @start_pass, void (%struct.jpeg_decompress_struct*)** %start_pass3, align 8, !tbaa !14
  store i32 0, i32* %ci, align 4, !tbaa !17
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 44
  %13 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !18
  store %struct.jpeg_component_info* %13, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %ci, align 4, !tbaa !17
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 9
  %16 = load i32, i32* %num_components, align 4, !tbaa !19
  %cmp = icmp slt i32 %14, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 1
  %18 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem4, align 8, !tbaa !5
  %alloc_small5 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %18, i32 0, i32 0
  %19 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small5, align 8, !tbaa !10
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %21 = bitcast %struct.jpeg_decompress_struct* %20 to %struct.jpeg_common_struct*
  %call6 = call i8* %19(%struct.jpeg_common_struct* %21, i32 1, i64 256) #4
  %22 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %22, i32 0, i32 21
  store i8* %call6, i8** %dct_table, align 8, !tbaa !20
  %23 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dct_table7 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %23, i32 0, i32 21
  %24 = load i8*, i8** %dct_table7, align 8, !tbaa !20
  %call8 = call i8* @memset(i8* %24, i32 0, i64 256) #5
  %25 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom = sext i32 %25 to i64
  %26 = load %struct.my_idct_controller*, %struct.my_idct_controller** %idct, align 8, !tbaa !1
  %cur_method = getelementptr inbounds %struct.my_idct_controller, %struct.my_idct_controller* %26, i32 0, i32 1
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %cur_method, i32 0, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4, !tbaa !17
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %ci, align 4, !tbaa !17
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !17
  %28 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %28, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast %struct.my_idct_controller** %idct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %idct = alloca %struct.my_idct_controller*, align 8
  %ci = alloca i32, align 4
  %i = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %method = alloca i32, align 4
  %method_ptr = alloca void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, align 8
  %qtbl = alloca %struct.JQUANT_TBL*, align 8
  %ismtbl = alloca i32*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_idct_controller** %idct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %idct1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 90
  %2 = load %struct.jpeg_inverse_dct*, %struct.jpeg_inverse_dct** %idct1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_inverse_dct* %2 to %struct.my_idct_controller*
  store %struct.my_idct_controller* %3, %struct.my_idct_controller** %idct, align 8, !tbaa !1
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %method to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %method, align 4, !tbaa !17
  %8 = bitcast void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %method_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* null, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %method_ptr, align 8, !tbaa !1
  %9 = bitcast %struct.JQUANT_TBL** %qtbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32 0, i32* %ci, align 4, !tbaa !17
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 44
  %11 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !18
  store %struct.jpeg_component_info* %11, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.42, %entry
  %12 = load i32, i32* %ci, align 4, !tbaa !17
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 9
  %14 = load i32, i32* %num_components, align 4, !tbaa !19
  %cmp = icmp slt i32 %12, %14
  br i1 %cmp, label %for.body, label %for.end.44

for.body:                                         ; preds = %for.cond
  %15 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_h_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %15, i32 0, i32 9
  %16 = load i32, i32* %DCT_h_scaled_size, align 4, !tbaa !22
  %shl = shl i32 %16, 8
  %17 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %17, i32 0, i32 10
  %18 = load i32, i32* %DCT_v_scaled_size, align 4, !tbaa !23
  %add = add nsw i32 %shl, %18
  switch i32 %add, label %sw.default.4 [
    i32 2056, label %sw.bb
  ]

sw.bb:                                            ; preds = %for.body
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %dct_method = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 17
  %20 = load i32, i32* %dct_method, align 4, !tbaa !24
  switch i32 %20, label %sw.default [
    i32 0, label %sw.bb.2
  ]

sw.bb.2:                                          ; preds = %sw.bb
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* @jpeg_idct_islow, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %method_ptr, align 8, !tbaa !1
  store i32 0, i32* %method, align 4, !tbaa !17
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !25
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i32 0, i32 5
  store i32 49, i32* %msg_code, align 4, !tbaa !26
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !25
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i32 0, i32 0
  %25 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !28
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %27 = bitcast %struct.jpeg_decompress_struct* %26 to %struct.jpeg_common_struct*
  call void %25(%struct.jpeg_common_struct* %27) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.2
  br label %sw.epilog.17

sw.default.4:                                     ; preds = %for.body
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err5, align 8, !tbaa !25
  %msg_code6 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 5
  store i32 7, i32* %msg_code6, align 4, !tbaa !26
  %30 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_h_scaled_size7 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %30, i32 0, i32 9
  %31 = load i32, i32* %DCT_h_scaled_size7, align 4, !tbaa !22
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8, !tbaa !25
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 6
  %i9 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i9, i32 0, i64 0
  store i32 %31, i32* %arrayidx, align 4, !tbaa !17
  %34 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_v_scaled_size10 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %34, i32 0, i32 10
  %35 = load i32, i32* %DCT_v_scaled_size10, align 4, !tbaa !23
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err11, align 8, !tbaa !25
  %msg_parm12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 6
  %i13 = bitcast %union.anon* %msg_parm12 to [8 x i32]*
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* %i13, i32 0, i64 1
  store i32 %35, i32* %arrayidx14, align 4, !tbaa !17
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err15, align 8, !tbaa !25
  %error_exit16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %39, i32 0, i32 0
  %40 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit16, align 8, !tbaa !28
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %42 = bitcast %struct.jpeg_decompress_struct* %41 to %struct.jpeg_common_struct*
  call void %40(%struct.jpeg_common_struct* %42) #4
  br label %sw.epilog.17

sw.epilog.17:                                     ; preds = %sw.default.4, %sw.epilog
  %43 = load void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %method_ptr, align 8, !tbaa !1
  %44 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom = sext i32 %44 to i64
  %45 = load %struct.my_idct_controller*, %struct.my_idct_controller** %idct, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_idct_controller, %struct.my_idct_controller* %45, i32 0, i32 0
  %inverse_DCT = getelementptr inbounds %struct.jpeg_inverse_dct, %struct.jpeg_inverse_dct* %pub, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*]* %inverse_DCT, i32 0, i64 %idxprom
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* %43, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %arrayidx18, align 8, !tbaa !1
  %46 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %46, i32 0, i32 13
  %47 = load i32, i32* %component_needed, align 4, !tbaa !29
  %tobool = icmp ne i32 %47, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %sw.epilog.17
  %48 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom19 = sext i32 %48 to i64
  %49 = load %struct.my_idct_controller*, %struct.my_idct_controller** %idct, align 8, !tbaa !1
  %cur_method = getelementptr inbounds %struct.my_idct_controller, %struct.my_idct_controller* %49, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [10 x i32], [10 x i32]* %cur_method, i32 0, i64 %idxprom19
  %50 = load i32, i32* %arrayidx20, align 4, !tbaa !17
  %51 = load i32, i32* %method, align 4, !tbaa !17
  %cmp21 = icmp eq i32 %50, %51
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.epilog.17
  br label %for.inc.42

if.end:                                           ; preds = %lor.lhs.false
  %52 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %52, i32 0, i32 20
  %53 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_table, align 8, !tbaa !30
  store %struct.JQUANT_TBL* %53, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !1
  %54 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !1
  %cmp22 = icmp eq %struct.JQUANT_TBL* %54, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end
  br label %for.inc.42

if.end.24:                                        ; preds = %if.end
  %55 = load i32, i32* %method, align 4, !tbaa !17
  %56 = load i32, i32* %ci, align 4, !tbaa !17
  %idxprom25 = sext i32 %56 to i64
  %57 = load %struct.my_idct_controller*, %struct.my_idct_controller** %idct, align 8, !tbaa !1
  %cur_method26 = getelementptr inbounds %struct.my_idct_controller, %struct.my_idct_controller* %57, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [10 x i32], [10 x i32]* %cur_method26, i32 0, i64 %idxprom25
  store i32 %55, i32* %arrayidx27, align 4, !tbaa !17
  %58 = load i32, i32* %method, align 4, !tbaa !17
  switch i32 %58, label %sw.default.36 [
    i32 0, label %sw.bb.28
  ]

sw.bb.28:                                         ; preds = %if.end.24
  %59 = bitcast i32** %ismtbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %59) #1
  %60 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %60, i32 0, i32 21
  %61 = load i8*, i8** %dct_table, align 8, !tbaa !20
  %62 = bitcast i8* %61 to i32*
  store i32* %62, i32** %ismtbl, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc, %sw.bb.28
  %63 = load i32, i32* %i, align 4, !tbaa !17
  %cmp30 = icmp slt i32 %63, 64
  br i1 %cmp30, label %for.body.31, label %for.end

for.body.31:                                      ; preds = %for.cond.29
  %64 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom32 = sext i32 %64 to i64
  %65 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !1
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %65, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval, i32 0, i64 %idxprom32
  %66 = load i16, i16* %arrayidx33, align 2, !tbaa !31
  %conv = zext i16 %66 to i32
  %67 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom34 = sext i32 %67 to i64
  %68 = load i32*, i32** %ismtbl, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i32, i32* %68, i64 %idxprom34
  store i32 %conv, i32* %arrayidx35, align 4, !tbaa !17
  br label %for.inc

for.inc:                                          ; preds = %for.body.31
  %69 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond.29

for.end:                                          ; preds = %for.cond.29
  %70 = bitcast i32** %ismtbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  br label %sw.epilog.41

sw.default.36:                                    ; preds = %if.end.24
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 0
  %72 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err37, align 8, !tbaa !25
  %msg_code38 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %72, i32 0, i32 5
  store i32 49, i32* %msg_code38, align 4, !tbaa !26
  %73 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %73, i32 0, i32 0
  %74 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err39, align 8, !tbaa !25
  %error_exit40 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %74, i32 0, i32 0
  %75 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit40, align 8, !tbaa !28
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %77 = bitcast %struct.jpeg_decompress_struct* %76 to %struct.jpeg_common_struct*
  call void %75(%struct.jpeg_common_struct* %77) #4
  br label %sw.epilog.41

sw.epilog.41:                                     ; preds = %sw.default.36, %for.end
  br label %for.inc.42

for.inc.42:                                       ; preds = %sw.epilog.41, %if.then.23, %if.then
  %78 = load i32, i32* %ci, align 4, !tbaa !17
  %inc43 = add nsw i32 %78, 1
  store i32 %inc43, i32* %ci, align 4, !tbaa !17
  %79 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %79, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.end.44:                                       ; preds = %for.cond
  %80 = bitcast %struct.JQUANT_TBL** %qtbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %method_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i32* %method to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast %struct.my_idct_controller** %idct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @jpeg_idct_islow(%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 8}
!6 = !{!"jpeg_decompress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !7, i64 36, !2, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !3, i64 60, !3, i64 64, !7, i64 68, !7, i64 72, !8, i64 80, !3, i64 88, !3, i64 92, !3, i64 96, !3, i64 100, !3, i64 104, !3, i64 108, !3, i64 112, !3, i64 116, !7, i64 120, !3, i64 124, !3, i64 128, !3, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !2, i64 160, !7, i64 168, !7, i64 172, !7, i64 176, !7, i64 180, !7, i64 184, !2, i64 192, !3, i64 200, !3, i64 232, !3, i64 264, !7, i64 296, !2, i64 304, !3, i64 312, !3, i64 316, !3, i64 320, !3, i64 324, !3, i64 340, !3, i64 356, !7, i64 372, !3, i64 376, !3, i64 380, !3, i64 381, !3, i64 382, !9, i64 384, !9, i64 386, !3, i64 388, !3, i64 392, !3, i64 396, !3, i64 400, !2, i64 408, !7, i64 416, !7, i64 420, !7, i64 424, !7, i64 428, !7, i64 432, !2, i64 440, !7, i64 448, !3, i64 456, !7, i64 488, !7, i64 492, !7, i64 496, !3, i64 500, !7, i64 756, !7, i64 760, !7, i64 764, !7, i64 768, !7, i64 772, !2, i64 776, !7, i64 784, !7, i64 788, !2, i64 792, !2, i64 800, !2, i64 808, !2, i64 816, !2, i64 824, !2, i64 832, !2, i64 840, !2, i64 848, !2, i64 856, !2, i64 864, !2, i64 872}
!7 = !{!"int", !3, i64 0}
!8 = !{!"double", !3, i64 0}
!9 = !{!"short", !3, i64 0}
!10 = !{!11, !2, i64 0}
!11 = !{!"jpeg_memory_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !12, i64 88, !12, i64 96}
!12 = !{!"long", !3, i64 0}
!13 = !{!6, !2, i64 848}
!14 = !{!15, !2, i64 0}
!15 = !{!"", !16, i64 0, !3, i64 88}
!16 = !{!"jpeg_inverse_dct", !2, i64 0, !3, i64 8}
!17 = !{!7, !7, i64 0}
!18 = !{!6, !2, i64 304}
!19 = !{!6, !7, i64 56}
!20 = !{!21, !2, i64 88}
!21 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !3, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !2, i64 80, !2, i64 88}
!22 = !{!21, !7, i64 36}
!23 = !{!21, !7, i64 40}
!24 = !{!6, !3, i64 96}
!25 = !{!6, !2, i64 0}
!26 = !{!27, !7, i64 40}
!27 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !3, i64 44, !7, i64 124, !12, i64 128, !2, i64 136, !7, i64 144, !2, i64 152, !7, i64 160, !7, i64 164}
!28 = !{!27, !2, i64 0}
!29 = !{!21, !3, i64 52}
!30 = !{!21, !2, i64 80}
!31 = !{!9, !9, i64 0}
