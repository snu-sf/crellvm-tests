; ModuleID = './jdmaster.bc'
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
%struct.my_decomp_master = type { %struct.jpeg_decomp_master, i32, i32, %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer* }

; Function Attrs: nounwind uwtable
define void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 5
  %1 = load i32, i32* %global_state, align 4, !tbaa !5
  %cmp = icmp ne i32 %1, 202
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 0
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !10
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 5
  store i32 21, i32* %msg_code, align 4, !tbaa !11
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 5
  %5 = load i32, i32* %global_state1, align 4, !tbaa !5
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !10
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %5, i32* %arrayidx, align 4, !tbaa !14
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !10
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 0
  %10 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !15
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %12 = bitcast %struct.jpeg_decompress_struct* %11 to %struct.jpeg_common_struct*
  call void %10(%struct.jpeg_common_struct* %12) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jpeg_core_output_dimensions(%struct.jpeg_decompress_struct* %13) #4
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 11
  %15 = load i32, i32* %out_color_space, align 4, !tbaa !16
  switch i32 %15, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
    i32 6, label %sw.bb.4
    i32 3, label %sw.bb.6
    i32 7, label %sw.bb.6
    i32 4, label %sw.bb.8
    i32 5, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %if.end
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 29
  store i32 1, i32* %out_color_components, align 4, !tbaa !17
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end, %if.end
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %out_color_components5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 29
  store i32 3, i32* %out_color_components5, align 4, !tbaa !17
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end, %if.end
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %out_color_components7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 29
  store i32 3, i32* %out_color_components7, align 4, !tbaa !17
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.end, %if.end
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %out_color_components9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 29
  store i32 4, i32* %out_color_components9, align 4, !tbaa !17
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 9
  %21 = load i32, i32* %num_components, align 4, !tbaa !18
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %out_color_components10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 29
  store i32 %21, i32* %out_color_components10, align 4, !tbaa !17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.8, %sw.bb.6, %sw.bb.4, %sw.bb
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 20
  %24 = load i32, i32* %quantize_colors, align 4, !tbaa !19
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %out_color_components11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 29
  %26 = load i32, i32* %out_color_components11, align 4, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %26, %cond.false ]
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 30
  store i32 %cond, i32* %output_components, align 4, !tbaa !20
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 @use_merged_upsample(%struct.jpeg_decompress_struct* %28) #4
  %tobool12 = icmp ne i32 %call, 0
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %cond.end
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 64
  %30 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !21
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %rec_outbuf_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 31
  store i32 %30, i32* %rec_outbuf_height, align 4, !tbaa !22
  br label %if.end.15

if.else:                                          ; preds = %cond.end
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %rec_outbuf_height14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 31
  store i32 1, i32* %rec_outbuf_height14, align 4, !tbaa !22
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.13
  ret void
}

declare void @jpeg_core_output_dimensions(%struct.jpeg_decompress_struct*) #1

; Function Attrs: nounwind uwtable
define internal i32 @use_merged_upsample(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @jpeg_new_colormap(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %master = alloca %struct.my_decomp_master*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_decomp_master** %master to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %master1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 83
  %2 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %master1, align 8, !tbaa !23
  %3 = bitcast %struct.jpeg_decomp_master* %2 to %struct.my_decomp_master*
  store %struct.my_decomp_master* %3, %struct.my_decomp_master** %master, align 8, !tbaa !1
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 5
  %5 = load i32, i32* %global_state, align 4, !tbaa !5
  %cmp = icmp ne i32 %5, 207
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !10
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 5
  store i32 21, i32* %msg_code, align 4, !tbaa !11
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %global_state2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 5
  %9 = load i32, i32* %global_state2, align 4, !tbaa !5
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !10
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %9, i32* %arrayidx, align 4, !tbaa !14
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !10
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 0
  %14 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !15
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %16 = bitcast %struct.jpeg_decompress_struct* %15 to %struct.jpeg_common_struct*
  call void %14(%struct.jpeg_common_struct* %16) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 20
  %18 = load i32, i32* %quantize_colors, align 4, !tbaa !19
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %enable_external_quant = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 25
  %20 = load i32, i32* %enable_external_quant, align 4, !tbaa !24
  %tobool5 = icmp ne i32 %20, 0
  br i1 %tobool5, label %land.lhs.true.6, label %if.else

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 33
  %22 = load i8**, i8*** %colormap, align 8, !tbaa !25
  %cmp7 = icmp ne i8** %22, null
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %land.lhs.true.6
  %23 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !1
  %quantizer_2pass = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %23, i32 0, i32 4
  %24 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %quantizer_2pass, align 8, !tbaa !26
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 93
  store %struct.jpeg_color_quantizer* %24, %struct.jpeg_color_quantizer** %cquantize, align 8, !tbaa !29
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cquantize9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 93
  %27 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize9, align 8, !tbaa !29
  %new_color_map = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %27, i32 0, i32 3
  %new_color_map10 = bitcast {}** %new_color_map to void (%struct.jpeg_decompress_struct*)**
  %28 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %new_color_map10, align 8, !tbaa !30
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %28(%struct.jpeg_decompress_struct* %29) #4
  %30 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %30, i32 0, i32 0
  %is_dummy_pass = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub, i32 0, i32 2
  store i32 0, i32* %is_dummy_pass, align 4, !tbaa !32
  br label %if.end.15

if.else:                                          ; preds = %land.lhs.true.6, %land.lhs.true, %if.end
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 0
  %32 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err11, align 8, !tbaa !10
  %msg_code12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %32, i32 0, i32 5
  store i32 47, i32* %msg_code12, align 4, !tbaa !11
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8, !tbaa !10
  %error_exit14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 0
  %35 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit14, align 8, !tbaa !15
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %37 = bitcast %struct.jpeg_decompress_struct* %36 to %struct.jpeg_common_struct*
  call void %35(%struct.jpeg_common_struct* %37) #4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.8
  %38 = bitcast %struct.my_decomp_master** %master to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @jinit_master_decompress(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %master = alloca %struct.my_decomp_master*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_decomp_master** %master to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !33
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %2, i32 0, i32 0
  %3 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !34
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %5 = bitcast %struct.jpeg_decompress_struct* %4 to %struct.jpeg_common_struct*
  %call = call i8* %3(%struct.jpeg_common_struct* %5, i32 1, i64 48) #4
  %6 = bitcast i8* %call to %struct.my_decomp_master*
  store %struct.my_decomp_master* %6, %struct.my_decomp_master** %master, align 8, !tbaa !1
  %7 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %7, i32 0, i32 0
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %master1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 83
  store %struct.jpeg_decomp_master* %pub, %struct.jpeg_decomp_master** %master1, align 8, !tbaa !23
  %9 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !1
  %pub2 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %9, i32 0, i32 0
  %prepare_for_output_pass = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub2, i32 0, i32 0
  %prepare_for_output_pass3 = bitcast {}** %prepare_for_output_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @prepare_for_output_pass, void (%struct.jpeg_decompress_struct*)** %prepare_for_output_pass3, align 8, !tbaa !36
  %10 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !1
  %pub4 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %10, i32 0, i32 0
  %finish_output_pass = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub4, i32 0, i32 1
  %finish_output_pass5 = bitcast {}** %finish_output_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @finish_output_pass, void (%struct.jpeg_decompress_struct*)** %finish_output_pass5, align 8, !tbaa !37
  %11 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !1
  %pub6 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %11, i32 0, i32 0
  %is_dummy_pass = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub6, i32 0, i32 2
  store i32 0, i32* %is_dummy_pass, align 4, !tbaa !32
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @master_selection(%struct.jpeg_decompress_struct* %12) #4
  %13 = bitcast %struct.my_decomp_master** %master to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @prepare_for_output_pass(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %master = alloca %struct.my_decomp_master*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_decomp_master** %master to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %master1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 83
  %2 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %master1, align 8, !tbaa !23
  %3 = bitcast %struct.jpeg_decomp_master* %2 to %struct.my_decomp_master*
  store %struct.my_decomp_master* %3, %struct.my_decomp_master** %master, align 8, !tbaa !1
  %4 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %4, i32 0, i32 0
  %is_dummy_pass = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub, i32 0, i32 2
  %5 = load i32, i32* %is_dummy_pass, align 4, !tbaa !32
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !10
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 5
  store i32 49, i32* %msg_code, align 4, !tbaa !11
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !10
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 0
  %10 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !15
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %12 = bitcast %struct.jpeg_decompress_struct* %11 to %struct.jpeg_common_struct*
  call void %10(%struct.jpeg_common_struct* %12) #4
  br label %if.end.47

if.else:                                          ; preds = %entry
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 20
  %14 = load i32, i32* %quantize_colors, align 4, !tbaa !19
  %tobool3 = icmp ne i32 %14, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.else
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 33
  %16 = load i8**, i8*** %colormap, align 8, !tbaa !25
  %cmp = icmp eq i8** %16, null
  br i1 %cmp, label %if.then.4, label %if.end.21

if.then.4:                                        ; preds = %land.lhs.true
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %two_pass_quantize = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 22
  %18 = load i32, i32* %two_pass_quantize, align 4, !tbaa !38
  %tobool5 = icmp ne i32 %18, 0
  br i1 %tobool5, label %land.lhs.true.6, label %if.else.11

land.lhs.true.6:                                  ; preds = %if.then.4
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %enable_2pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 26
  %20 = load i32, i32* %enable_2pass_quant, align 4, !tbaa !39
  %tobool7 = icmp ne i32 %20, 0
  br i1 %tobool7, label %if.then.8, label %if.else.11

if.then.8:                                        ; preds = %land.lhs.true.6
  %21 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !1
  %quantizer_2pass = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %21, i32 0, i32 4
  %22 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %quantizer_2pass, align 8, !tbaa !26
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 93
  store %struct.jpeg_color_quantizer* %22, %struct.jpeg_color_quantizer** %cquantize, align 8, !tbaa !29
  %24 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !1
  %pub9 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %24, i32 0, i32 0
  %is_dummy_pass10 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub9, i32 0, i32 2
  store i32 1, i32* %is_dummy_pass10, align 4, !tbaa !32
  br label %if.end.20

if.else.11:                                       ; preds = %land.lhs.true.6, %if.then.4
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %enable_1pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 24
  %26 = load i32, i32* %enable_1pass_quant, align 4, !tbaa !40
  %tobool12 = icmp ne i32 %26, 0
  br i1 %tobool12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.else.11
  %27 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !1
  %quantizer_1pass = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %27, i32 0, i32 3
  %28 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %quantizer_1pass, align 8, !tbaa !41
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cquantize14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 93
  store %struct.jpeg_color_quantizer* %28, %struct.jpeg_color_quantizer** %cquantize14, align 8, !tbaa !29
  br label %if.end

if.else.15:                                       ; preds = %if.else.11
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err16, align 8, !tbaa !10
  %msg_code17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 5
  store i32 47, i32* %msg_code17, align 4, !tbaa !11
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err18, align 8, !tbaa !10
  %error_exit19 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 0
  %34 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit19, align 8, !tbaa !15
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %36 = bitcast %struct.jpeg_decompress_struct* %35 to %struct.jpeg_common_struct*
  call void %34(%struct.jpeg_common_struct* %36) #4
  br label %if.end

if.end:                                           ; preds = %if.else.15, %if.then.13
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %if.then.8
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %land.lhs.true, %if.else
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %idct = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 90
  %38 = load %struct.jpeg_inverse_dct*, %struct.jpeg_inverse_dct** %idct, align 8, !tbaa !42
  %start_pass = getelementptr inbounds %struct.jpeg_inverse_dct, %struct.jpeg_inverse_dct* %38, i32 0, i32 0
  %start_pass22 = bitcast {}** %start_pass to void (%struct.jpeg_decompress_struct*)**
  %39 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %start_pass22, align 8, !tbaa !43
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %39(%struct.jpeg_decompress_struct* %40) #4
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 85
  %42 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef, align 8, !tbaa !45
  %start_output_pass = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %42, i32 0, i32 2
  %start_output_pass23 = bitcast {}** %start_output_pass to void (%struct.jpeg_decompress_struct*)**
  %43 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %start_output_pass23, align 8, !tbaa !46
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %43(%struct.jpeg_decompress_struct* %44) #4
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %raw_data_out = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 16
  %46 = load i32, i32* %raw_data_out, align 4, !tbaa !48
  %tobool24 = icmp ne i32 %46, 0
  br i1 %tobool24, label %if.end.46, label %if.then.25

if.then.25:                                       ; preds = %if.end.21
  %47 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !1
  %using_merged_upsample = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %47, i32 0, i32 2
  %48 = load i32, i32* %using_merged_upsample, align 4, !tbaa !49
  %tobool26 = icmp ne i32 %48, 0
  br i1 %tobool26, label %if.end.30, label %if.then.27

if.then.27:                                       ; preds = %if.then.25
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cconvert = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 92
  %50 = load %struct.jpeg_color_deconverter*, %struct.jpeg_color_deconverter** %cconvert, align 8, !tbaa !50
  %start_pass28 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %50, i32 0, i32 0
  %start_pass29 = bitcast {}** %start_pass28 to void (%struct.jpeg_decompress_struct*)**
  %51 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %start_pass29, align 8, !tbaa !51
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %51(%struct.jpeg_decompress_struct* %52) #4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %if.then.25
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %upsample = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 91
  %54 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample, align 8, !tbaa !53
  %start_pass31 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %54, i32 0, i32 0
  %start_pass32 = bitcast {}** %start_pass31 to void (%struct.jpeg_decompress_struct*)**
  %55 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %start_pass32, align 8, !tbaa !54
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %55(%struct.jpeg_decompress_struct* %56) #4
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %quantize_colors33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %57, i32 0, i32 20
  %58 = load i32, i32* %quantize_colors33, align 4, !tbaa !19
  %tobool34 = icmp ne i32 %58, 0
  br i1 %tobool34, label %if.then.35, label %if.end.40

if.then.35:                                       ; preds = %if.end.30
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cquantize36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %59, i32 0, i32 93
  %60 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize36, align 8, !tbaa !29
  %start_pass37 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %60, i32 0, i32 0
  %61 = load void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i32)** %start_pass37, align 8, !tbaa !56
  %62 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %63 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !1
  %pub38 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %63, i32 0, i32 0
  %is_dummy_pass39 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub38, i32 0, i32 2
  %64 = load i32, i32* %is_dummy_pass39, align 4, !tbaa !32
  call void %61(%struct.jpeg_decompress_struct* %62, i32 %64) #4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.35, %if.end.30
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %post = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 86
  %66 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %post, align 8, !tbaa !57
  %start_pass41 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %66, i32 0, i32 0
  %67 = load void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i32)** %start_pass41, align 8, !tbaa !58
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %69 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !1
  %pub42 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %69, i32 0, i32 0
  %is_dummy_pass43 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub42, i32 0, i32 2
  %70 = load i32, i32* %is_dummy_pass43, align 4, !tbaa !32
  %tobool44 = icmp ne i32 %70, 0
  %cond = select i1 %tobool44, i32 3, i32 0
  call void %67(%struct.jpeg_decompress_struct* %68, i32 %cond) #4
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %main = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 84
  %72 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %main, align 8, !tbaa !60
  %start_pass45 = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %72, i32 0, i32 0
  %73 = load void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i32)** %start_pass45, align 8, !tbaa !61
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %73(%struct.jpeg_decompress_struct* %74, i32 0) #4
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.40, %if.end.21
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %75, i32 0, i32 2
  %76 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress, align 8, !tbaa !63
  %cmp48 = icmp ne %struct.jpeg_progress_mgr* %76, null
  br i1 %cmp48, label %if.then.49, label %if.end.68

if.then.49:                                       ; preds = %if.end.47
  %77 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !1
  %pass_number = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %77, i32 0, i32 1
  %78 = load i32, i32* %pass_number, align 4, !tbaa !64
  %79 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %progress50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %79, i32 0, i32 2
  %80 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress50, align 8, !tbaa !63
  %completed_passes = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %80, i32 0, i32 3
  store i32 %78, i32* %completed_passes, align 4, !tbaa !65
  %81 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !1
  %pass_number51 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %81, i32 0, i32 1
  %82 = load i32, i32* %pass_number51, align 4, !tbaa !64
  %83 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !1
  %pub52 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %83, i32 0, i32 0
  %is_dummy_pass53 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub52, i32 0, i32 2
  %84 = load i32, i32* %is_dummy_pass53, align 4, !tbaa !32
  %tobool54 = icmp ne i32 %84, 0
  %cond55 = select i1 %tobool54, i32 2, i32 1
  %add = add nsw i32 %82, %cond55
  %85 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %progress56 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %85, i32 0, i32 2
  %86 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress56, align 8, !tbaa !63
  %total_passes = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %86, i32 0, i32 4
  store i32 %add, i32* %total_passes, align 4, !tbaa !67
  %87 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %buffered_image = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %87, i32 0, i32 15
  %88 = load i32, i32* %buffered_image, align 4, !tbaa !68
  %tobool57 = icmp ne i32 %88, 0
  br i1 %tobool57, label %land.lhs.true.58, label %if.end.67

land.lhs.true.58:                                 ; preds = %if.then.49
  %89 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %89, i32 0, i32 87
  %90 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8, !tbaa !69
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %90, i32 0, i32 5
  %91 = load i32, i32* %eoi_reached, align 4, !tbaa !70
  %tobool59 = icmp ne i32 %91, 0
  br i1 %tobool59, label %if.end.67, label %if.then.60

if.then.60:                                       ; preds = %land.lhs.true.58
  %92 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %enable_2pass_quant61 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %92, i32 0, i32 26
  %93 = load i32, i32* %enable_2pass_quant61, align 4, !tbaa !39
  %tobool62 = icmp ne i32 %93, 0
  %cond63 = select i1 %tobool62, i32 2, i32 1
  %94 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %progress64 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %94, i32 0, i32 2
  %95 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress64, align 8, !tbaa !63
  %total_passes65 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %95, i32 0, i32 4
  %96 = load i32, i32* %total_passes65, align 4, !tbaa !67
  %add66 = add nsw i32 %96, %cond63
  store i32 %add66, i32* %total_passes65, align 4, !tbaa !67
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.60, %land.lhs.true.58, %if.then.49
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end.47
  %97 = bitcast %struct.my_decomp_master** %master to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_output_pass(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %master = alloca %struct.my_decomp_master*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_decomp_master** %master to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %master1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 83
  %2 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %master1, align 8, !tbaa !23
  %3 = bitcast %struct.jpeg_decomp_master* %2 to %struct.my_decomp_master*
  store %struct.my_decomp_master* %3, %struct.my_decomp_master** %master, align 8, !tbaa !1
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 20
  %5 = load i32, i32* %quantize_colors, align 4, !tbaa !19
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 93
  %7 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize, align 8, !tbaa !29
  %finish_pass = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %7, i32 0, i32 2
  %finish_pass2 = bitcast {}** %finish_pass to void (%struct.jpeg_decompress_struct*)**
  %8 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %finish_pass2, align 8, !tbaa !72
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %8(%struct.jpeg_decompress_struct* %9) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !1
  %pass_number = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %10, i32 0, i32 1
  %11 = load i32, i32* %pass_number, align 4, !tbaa !64
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %pass_number, align 4, !tbaa !64
  %12 = bitcast %struct.my_decomp_master** %master to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @master_selection(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %master = alloca %struct.my_decomp_master*, align 8
  %use_c_buffer = alloca i32, align 4
  %samplesperrow = alloca i64, align 8
  %jd_samplesperrow = alloca i32, align 4
  %nscans = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_decomp_master** %master to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %master1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 83
  %2 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %master1, align 8, !tbaa !23
  %3 = bitcast %struct.jpeg_decomp_master* %2 to %struct.my_decomp_master*
  store %struct.my_decomp_master* %3, %struct.my_decomp_master** %master, align 8, !tbaa !1
  %4 = bitcast i32* %use_c_buffer to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i64* %samplesperrow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i32* %jd_samplesperrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %data_precision = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 43
  %8 = load i32, i32* %data_precision, align 4, !tbaa !73
  %cmp = icmp ne i32 %8, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !10
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 5
  store i32 16, i32* %msg_code, align 4, !tbaa !11
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %data_precision2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 43
  %12 = load i32, i32* %data_precision2, align 4, !tbaa !73
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !10
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %12, i32* %arrayidx, align 4, !tbaa !14
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !10
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 0
  %17 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !15
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %19 = bitcast %struct.jpeg_decompress_struct* %18 to %struct.jpeg_common_struct*
  call void %17(%struct.jpeg_common_struct* %19) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct* %20) #4
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @prepare_range_limit_table(%struct.jpeg_decompress_struct* %21) #4
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 28
  %23 = load i32, i32* %output_height, align 4, !tbaa !74
  %cmp5 = icmp ule i32 %23, 0
  br i1 %cmp5, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 27
  %25 = load i32, i32* %output_width, align 4, !tbaa !75
  %cmp6 = icmp ule i32 %25, 0
  br i1 %cmp6, label %if.then.9, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 29
  %27 = load i32, i32* %out_color_components, align 4, !tbaa !17
  %cmp8 = icmp sle i32 %27, 0
  br i1 %cmp8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %lor.lhs.false.7, %lor.lhs.false, %if.end
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8, !tbaa !10
  %msg_code11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 5
  store i32 33, i32* %msg_code11, align 4, !tbaa !11
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err12, align 8, !tbaa !10
  %error_exit13 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 0
  %32 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit13, align 8, !tbaa !15
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %34 = bitcast %struct.jpeg_decompress_struct* %33 to %struct.jpeg_common_struct*
  call void %32(%struct.jpeg_common_struct* %34) #4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.9, %lor.lhs.false.7
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_width15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 27
  %36 = load i32, i32* %output_width15, align 4, !tbaa !75
  %conv = zext i32 %36 to i64
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %out_color_components16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 29
  %38 = load i32, i32* %out_color_components16, align 4, !tbaa !17
  %conv17 = sext i32 %38 to i64
  %mul = mul nsw i64 %conv, %conv17
  store i64 %mul, i64* %samplesperrow, align 8, !tbaa !76
  %39 = load i64, i64* %samplesperrow, align 8, !tbaa !76
  %conv18 = trunc i64 %39 to i32
  store i32 %conv18, i32* %jd_samplesperrow, align 4, !tbaa !14
  %40 = load i32, i32* %jd_samplesperrow, align 4, !tbaa !14
  %conv19 = zext i32 %40 to i64
  %41 = load i64, i64* %samplesperrow, align 8, !tbaa !76
  %cmp20 = icmp ne i64 %conv19, %41
  br i1 %cmp20, label %if.then.22, label %if.end.27

if.then.22:                                       ; preds = %if.end.14
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 0
  %43 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err23, align 8, !tbaa !10
  %msg_code24 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %43, i32 0, i32 5
  store i32 72, i32* %msg_code24, align 4, !tbaa !11
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 0
  %45 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err25, align 8, !tbaa !10
  %error_exit26 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %45, i32 0, i32 0
  %46 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit26, align 8, !tbaa !15
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %48 = bitcast %struct.jpeg_decompress_struct* %47 to %struct.jpeg_common_struct*
  call void %46(%struct.jpeg_common_struct* %48) #4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.22, %if.end.14
  %49 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !1
  %pass_number = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %49, i32 0, i32 1
  store i32 0, i32* %pass_number, align 4, !tbaa !64
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 @use_merged_upsample(%struct.jpeg_decompress_struct* %50) #4
  %51 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !1
  %using_merged_upsample = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %51, i32 0, i32 2
  store i32 %call, i32* %using_merged_upsample, align 4, !tbaa !49
  %52 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !1
  %quantizer_1pass = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %52, i32 0, i32 3
  store %struct.jpeg_color_quantizer* null, %struct.jpeg_color_quantizer** %quantizer_1pass, align 8, !tbaa !41
  %53 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !1
  %quantizer_2pass = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %53, i32 0, i32 4
  store %struct.jpeg_color_quantizer* null, %struct.jpeg_color_quantizer** %quantizer_2pass, align 8, !tbaa !26
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %54, i32 0, i32 20
  %55 = load i32, i32* %quantize_colors, align 4, !tbaa !19
  %tobool = icmp ne i32 %55, 0
  br i1 %tobool, label %lor.lhs.false.28, label %if.then.30

lor.lhs.false.28:                                 ; preds = %if.end.27
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %buffered_image = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %56, i32 0, i32 15
  %57 = load i32, i32* %buffered_image, align 4, !tbaa !68
  %tobool29 = icmp ne i32 %57, 0
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %lor.lhs.false.28, %if.end.27
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %enable_1pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %58, i32 0, i32 24
  store i32 0, i32* %enable_1pass_quant, align 4, !tbaa !40
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %enable_external_quant = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %59, i32 0, i32 25
  store i32 0, i32* %enable_external_quant, align 4, !tbaa !24
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %enable_2pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %60, i32 0, i32 26
  store i32 0, i32* %enable_2pass_quant, align 4, !tbaa !39
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %lor.lhs.false.28
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %quantize_colors32 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %61, i32 0, i32 20
  %62 = load i32, i32* %quantize_colors32, align 4, !tbaa !19
  %tobool33 = icmp ne i32 %62, 0
  br i1 %tobool33, label %if.then.34, label %if.end.82

if.then.34:                                       ; preds = %if.end.31
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %raw_data_out = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %63, i32 0, i32 16
  %64 = load i32, i32* %raw_data_out, align 4, !tbaa !48
  %tobool35 = icmp ne i32 %64, 0
  br i1 %tobool35, label %if.then.36, label %if.end.41

if.then.36:                                       ; preds = %if.then.34
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 0
  %66 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err37, align 8, !tbaa !10
  %msg_code38 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %66, i32 0, i32 5
  store i32 48, i32* %msg_code38, align 4, !tbaa !11
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %67, i32 0, i32 0
  %68 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err39, align 8, !tbaa !10
  %error_exit40 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %68, i32 0, i32 0
  %69 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit40, align 8, !tbaa !15
  %70 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %71 = bitcast %struct.jpeg_decompress_struct* %70 to %struct.jpeg_common_struct*
  call void %69(%struct.jpeg_common_struct* %71) #4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.36, %if.then.34
  %72 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %out_color_components42 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %72, i32 0, i32 29
  %73 = load i32, i32* %out_color_components42, align 4, !tbaa !17
  %cmp43 = icmp ne i32 %73, 3
  br i1 %cmp43, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %if.end.41
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %enable_1pass_quant46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %74, i32 0, i32 24
  store i32 1, i32* %enable_1pass_quant46, align 4, !tbaa !40
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %enable_external_quant47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %75, i32 0, i32 25
  store i32 0, i32* %enable_external_quant47, align 4, !tbaa !24
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %enable_2pass_quant48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %76, i32 0, i32 26
  store i32 0, i32* %enable_2pass_quant48, align 4, !tbaa !39
  %77 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %77, i32 0, i32 33
  store i8** null, i8*** %colormap, align 8, !tbaa !25
  br label %if.end.62

if.else:                                          ; preds = %if.end.41
  %78 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %colormap49 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %78, i32 0, i32 33
  %79 = load i8**, i8*** %colormap49, align 8, !tbaa !25
  %cmp50 = icmp ne i8** %79, null
  br i1 %cmp50, label %if.then.52, label %if.else.54

if.then.52:                                       ; preds = %if.else
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %enable_external_quant53 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %80, i32 0, i32 25
  store i32 1, i32* %enable_external_quant53, align 4, !tbaa !24
  br label %if.end.61

if.else.54:                                       ; preds = %if.else
  %81 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %two_pass_quantize = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %81, i32 0, i32 22
  %82 = load i32, i32* %two_pass_quantize, align 4, !tbaa !38
  %tobool55 = icmp ne i32 %82, 0
  br i1 %tobool55, label %if.then.56, label %if.else.58

if.then.56:                                       ; preds = %if.else.54
  %83 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %enable_2pass_quant57 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %83, i32 0, i32 26
  store i32 1, i32* %enable_2pass_quant57, align 4, !tbaa !39
  br label %if.end.60

if.else.58:                                       ; preds = %if.else.54
  %84 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %enable_1pass_quant59 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %84, i32 0, i32 24
  store i32 1, i32* %enable_1pass_quant59, align 4, !tbaa !40
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.56
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.52
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.45
  %85 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %enable_1pass_quant63 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %85, i32 0, i32 24
  %86 = load i32, i32* %enable_1pass_quant63, align 4, !tbaa !40
  %tobool64 = icmp ne i32 %86, 0
  br i1 %tobool64, label %if.then.65, label %if.end.70

if.then.65:                                       ; preds = %if.end.62
  %87 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err66 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %87, i32 0, i32 0
  %88 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err66, align 8, !tbaa !10
  %msg_code67 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %88, i32 0, i32 5
  store i32 49, i32* %msg_code67, align 4, !tbaa !11
  %89 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %89, i32 0, i32 0
  %90 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err68, align 8, !tbaa !10
  %error_exit69 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %90, i32 0, i32 0
  %91 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit69, align 8, !tbaa !15
  %92 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %93 = bitcast %struct.jpeg_decompress_struct* %92 to %struct.jpeg_common_struct*
  call void %91(%struct.jpeg_common_struct* %93) #4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.65, %if.end.62
  %94 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %enable_2pass_quant71 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %94, i32 0, i32 26
  %95 = load i32, i32* %enable_2pass_quant71, align 4, !tbaa !39
  %tobool72 = icmp ne i32 %95, 0
  br i1 %tobool72, label %if.then.76, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %if.end.70
  %96 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %enable_external_quant74 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %96, i32 0, i32 25
  %97 = load i32, i32* %enable_external_quant74, align 4, !tbaa !24
  %tobool75 = icmp ne i32 %97, 0
  br i1 %tobool75, label %if.then.76, label %if.end.81

if.then.76:                                       ; preds = %lor.lhs.false.73, %if.end.70
  %98 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err77 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %98, i32 0, i32 0
  %99 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err77, align 8, !tbaa !10
  %msg_code78 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %99, i32 0, i32 5
  store i32 49, i32* %msg_code78, align 4, !tbaa !11
  %100 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err79 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %100, i32 0, i32 0
  %101 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err79, align 8, !tbaa !10
  %error_exit80 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %101, i32 0, i32 0
  %102 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit80, align 8, !tbaa !15
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %104 = bitcast %struct.jpeg_decompress_struct* %103 to %struct.jpeg_common_struct*
  call void %102(%struct.jpeg_common_struct* %104) #4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.76, %lor.lhs.false.73
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.31
  %105 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %raw_data_out83 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %105, i32 0, i32 16
  %106 = load i32, i32* %raw_data_out83, align 4, !tbaa !48
  %tobool84 = icmp ne i32 %106, 0
  br i1 %tobool84, label %if.end.96, label %if.then.85

if.then.85:                                       ; preds = %if.end.82
  %107 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !1
  %using_merged_upsample86 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %107, i32 0, i32 2
  %108 = load i32, i32* %using_merged_upsample86, align 4, !tbaa !49
  %tobool87 = icmp ne i32 %108, 0
  br i1 %tobool87, label %if.then.88, label %if.else.93

if.then.88:                                       ; preds = %if.then.85
  %109 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err89 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %109, i32 0, i32 0
  %110 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err89, align 8, !tbaa !10
  %msg_code90 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %110, i32 0, i32 5
  store i32 49, i32* %msg_code90, align 4, !tbaa !11
  %111 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err91 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %111, i32 0, i32 0
  %112 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err91, align 8, !tbaa !10
  %error_exit92 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %112, i32 0, i32 0
  %113 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit92, align 8, !tbaa !15
  %114 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %115 = bitcast %struct.jpeg_decompress_struct* %114 to %struct.jpeg_common_struct*
  call void %113(%struct.jpeg_common_struct* %115) #4
  br label %if.end.94

if.else.93:                                       ; preds = %if.then.85
  %116 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jinit_color_deconverter(%struct.jpeg_decompress_struct* %116) #4
  %117 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jinit_upsampler(%struct.jpeg_decompress_struct* %117) #4
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.93, %if.then.88
  %118 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %119 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %enable_2pass_quant95 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %119, i32 0, i32 26
  %120 = load i32, i32* %enable_2pass_quant95, align 4, !tbaa !39
  call void @jinit_d_post_controller(%struct.jpeg_decompress_struct* %118, i32 %120) #4
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.94, %if.end.82
  %121 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jinit_inverse_dct(%struct.jpeg_decompress_struct* %121) #4
  %122 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %arith_code = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %122, i32 0, i32 47
  %123 = load i32, i32* %arith_code, align 4, !tbaa !77
  %tobool97 = icmp ne i32 %123, 0
  br i1 %tobool97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %if.end.96
  %124 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jinit_arith_decoder(%struct.jpeg_decompress_struct* %124) #4
  br label %if.end.100

if.else.99:                                       ; preds = %if.end.96
  %125 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jinit_huff_decoder(%struct.jpeg_decompress_struct* %125) #4
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.99, %if.then.98
  %126 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %126, i32 0, i32 87
  %127 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8, !tbaa !69
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %127, i32 0, i32 4
  %128 = load i32, i32* %has_multiple_scans, align 4, !tbaa !78
  %tobool101 = icmp ne i32 %128, 0
  br i1 %tobool101, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.100
  %129 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %buffered_image102 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %129, i32 0, i32 15
  %130 = load i32, i32* %buffered_image102, align 4, !tbaa !68
  %tobool103 = icmp ne i32 %130, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.100
  %131 = phi i1 [ true, %if.end.100 ], [ %tobool103, %lor.rhs ]
  %lor.ext = zext i1 %131 to i32
  store i32 %lor.ext, i32* %use_c_buffer, align 4, !tbaa !79
  %132 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %133 = load i32, i32* %use_c_buffer, align 4, !tbaa !79
  call void @jinit_d_coef_controller(%struct.jpeg_decompress_struct* %132, i32 %133) #4
  %134 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %raw_data_out104 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %134, i32 0, i32 16
  %135 = load i32, i32* %raw_data_out104, align 4, !tbaa !48
  %tobool105 = icmp ne i32 %135, 0
  br i1 %tobool105, label %if.end.107, label %if.then.106

if.then.106:                                      ; preds = %lor.end
  %136 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @jinit_d_main_controller(%struct.jpeg_decompress_struct* %136, i32 0) #4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %lor.end
  %137 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %137, i32 0, i32 1
  %138 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !33
  %realize_virt_arrays = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %138, i32 0, i32 6
  %realize_virt_arrays108 = bitcast {}** %realize_virt_arrays to void (%struct.jpeg_common_struct*)**
  %139 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %realize_virt_arrays108, align 8, !tbaa !80
  %140 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %141 = bitcast %struct.jpeg_decompress_struct* %140 to %struct.jpeg_common_struct*
  call void %139(%struct.jpeg_common_struct* %141) #4
  %142 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %inputctl109 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %142, i32 0, i32 87
  %143 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl109, align 8, !tbaa !69
  %start_input_pass = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %143, i32 0, i32 2
  %start_input_pass110 = bitcast {}** %start_input_pass to void (%struct.jpeg_decompress_struct*)**
  %144 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %start_input_pass110, align 8, !tbaa !81
  %145 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %144(%struct.jpeg_decompress_struct* %145) #4
  %146 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %146, i32 0, i32 2
  %147 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress, align 8, !tbaa !63
  %cmp111 = icmp ne %struct.jpeg_progress_mgr* %147, null
  br i1 %cmp111, label %land.lhs.true, label %if.end.136

land.lhs.true:                                    ; preds = %if.end.107
  %148 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %buffered_image113 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %148, i32 0, i32 15
  %149 = load i32, i32* %buffered_image113, align 4, !tbaa !68
  %tobool114 = icmp ne i32 %149, 0
  br i1 %tobool114, label %if.end.136, label %land.lhs.true.115

land.lhs.true.115:                                ; preds = %land.lhs.true
  %150 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %inputctl116 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %150, i32 0, i32 87
  %151 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl116, align 8, !tbaa !69
  %has_multiple_scans117 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %151, i32 0, i32 4
  %152 = load i32, i32* %has_multiple_scans117, align 4, !tbaa !78
  %tobool118 = icmp ne i32 %152, 0
  br i1 %tobool118, label %if.then.119, label %if.end.136

if.then.119:                                      ; preds = %land.lhs.true.115
  %153 = bitcast i32* %nscans to i8*
  call void @llvm.lifetime.start(i64 4, i8* %153) #2
  %154 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %154, i32 0, i32 46
  %155 = load i32, i32* %progressive_mode, align 4, !tbaa !82
  %tobool120 = icmp ne i32 %155, 0
  br i1 %tobool120, label %if.then.121, label %if.else.123

if.then.121:                                      ; preds = %if.then.119
  %156 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %156, i32 0, i32 9
  %157 = load i32, i32* %num_components, align 4, !tbaa !18
  %mul122 = mul nsw i32 3, %157
  %add = add nsw i32 2, %mul122
  store i32 %add, i32* %nscans, align 4, !tbaa !14
  br label %if.end.125

if.else.123:                                      ; preds = %if.then.119
  %158 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components124 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %158, i32 0, i32 9
  %159 = load i32, i32* %num_components124, align 4, !tbaa !18
  store i32 %159, i32* %nscans, align 4, !tbaa !14
  br label %if.end.125

if.end.125:                                       ; preds = %if.else.123, %if.then.121
  %160 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %progress126 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %160, i32 0, i32 2
  %161 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress126, align 8, !tbaa !63
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %161, i32 0, i32 1
  store i64 0, i64* %pass_counter, align 8, !tbaa !83
  %162 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %162, i32 0, i32 67
  %163 = load i32, i32* %total_iMCU_rows, align 4, !tbaa !84
  %conv127 = zext i32 %163 to i64
  %164 = load i32, i32* %nscans, align 4, !tbaa !14
  %conv128 = sext i32 %164 to i64
  %mul129 = mul nsw i64 %conv127, %conv128
  %165 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %progress130 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %165, i32 0, i32 2
  %166 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress130, align 8, !tbaa !63
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %166, i32 0, i32 2
  store i64 %mul129, i64* %pass_limit, align 8, !tbaa !85
  %167 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %progress131 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %167, i32 0, i32 2
  %168 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress131, align 8, !tbaa !63
  %completed_passes = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %168, i32 0, i32 3
  store i32 0, i32* %completed_passes, align 4, !tbaa !65
  %169 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %enable_2pass_quant132 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %169, i32 0, i32 26
  %170 = load i32, i32* %enable_2pass_quant132, align 4, !tbaa !39
  %tobool133 = icmp ne i32 %170, 0
  %cond = select i1 %tobool133, i32 3, i32 2
  %171 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %progress134 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %171, i32 0, i32 2
  %172 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress134, align 8, !tbaa !63
  %total_passes = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %172, i32 0, i32 4
  store i32 %cond, i32* %total_passes, align 4, !tbaa !67
  %173 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8, !tbaa !1
  %pass_number135 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %173, i32 0, i32 1
  %174 = load i32, i32* %pass_number135, align 4, !tbaa !64
  %inc = add nsw i32 %174, 1
  store i32 %inc, i32* %pass_number135, align 4, !tbaa !64
  %175 = bitcast i32* %nscans to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #2
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.125, %land.lhs.true.115, %land.lhs.true, %if.end.107
  %176 = bitcast i32* %jd_samplesperrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #2
  %177 = bitcast i64* %samplesperrow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #2
  %178 = bitcast i32* %use_c_buffer to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #2
  %179 = bitcast %struct.my_decomp_master** %master to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @prepare_range_limit_table(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %table = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast i8** %table to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !33
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i32 0, i32 0
  %4 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !34
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %6 = bitcast %struct.jpeg_decompress_struct* %5 to %struct.jpeg_common_struct*
  %call = call i8* %4(%struct.jpeg_common_struct* %6, i32 1, i64 1280) #4
  store i8* %call, i8** %table, align 8, !tbaa !1
  %7 = load i8*, i8** %table, align 8, !tbaa !1
  %call1 = call i8* @memset(i8* %7, i32 0, i64 512) #5
  %8 = load i8*, i8** %table, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 512
  store i8* %add.ptr, i8** %table, align 8, !tbaa !1
  %9 = load i8*, i8** %table, align 8, !tbaa !1
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 68
  store i8* %9, i8** %sample_range_limit, align 8, !tbaa !86
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4, !tbaa !14
  %cmp = icmp sle i32 %11, 255
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !tbaa !14
  %conv = trunc i32 %12 to i8
  %13 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom = sext i32 %13 to i64
  %14 = load i8*, i8** %table, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !79
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !tbaa !14
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.8, %for.end
  %16 = load i32, i32* %i, align 4, !tbaa !14
  %cmp3 = icmp slt i32 %16, 768
  br i1 %cmp3, label %for.body.5, label %for.end.10

for.body.5:                                       ; preds = %for.cond.2
  %17 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom6 = sext i32 %17 to i64
  %18 = load i8*, i8** %table, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %18, i64 %idxprom6
  store i8 -1, i8* %arrayidx7, align 1, !tbaa !79
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.body.5
  %19 = load i32, i32* %i, align 4, !tbaa !14
  %inc9 = add nsw i32 %19, 1
  store i32 %inc9, i32* %i, align 4, !tbaa !14
  br label %for.cond.2

for.end.10:                                       ; preds = %for.cond.2
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = bitcast i8** %table to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  ret void
}

declare void @jinit_color_deconverter(%struct.jpeg_decompress_struct*) #1

declare void @jinit_upsampler(%struct.jpeg_decompress_struct*) #1

declare void @jinit_d_post_controller(%struct.jpeg_decompress_struct*, i32) #1

declare void @jinit_inverse_dct(%struct.jpeg_decompress_struct*) #1

declare void @jinit_arith_decoder(%struct.jpeg_decompress_struct*) #1

declare void @jinit_huff_decoder(%struct.jpeg_decompress_struct*) #1

declare void @jinit_d_coef_controller(%struct.jpeg_decompress_struct*, i32) #1

declare void @jinit_d_main_controller(%struct.jpeg_decompress_struct*, i32) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 36}
!6 = !{!"jpeg_decompress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !7, i64 36, !2, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !3, i64 60, !3, i64 64, !7, i64 68, !7, i64 72, !8, i64 80, !3, i64 88, !3, i64 92, !3, i64 96, !3, i64 100, !3, i64 104, !3, i64 108, !3, i64 112, !3, i64 116, !7, i64 120, !3, i64 124, !3, i64 128, !3, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !2, i64 160, !7, i64 168, !7, i64 172, !7, i64 176, !7, i64 180, !7, i64 184, !2, i64 192, !3, i64 200, !3, i64 232, !3, i64 264, !7, i64 296, !2, i64 304, !3, i64 312, !3, i64 316, !3, i64 320, !3, i64 324, !3, i64 340, !3, i64 356, !7, i64 372, !3, i64 376, !3, i64 380, !3, i64 381, !3, i64 382, !9, i64 384, !9, i64 386, !3, i64 388, !3, i64 392, !3, i64 396, !3, i64 400, !2, i64 408, !7, i64 416, !7, i64 420, !7, i64 424, !7, i64 428, !7, i64 432, !2, i64 440, !7, i64 448, !3, i64 456, !7, i64 488, !7, i64 492, !7, i64 496, !3, i64 500, !7, i64 756, !7, i64 760, !7, i64 764, !7, i64 768, !7, i64 772, !2, i64 776, !7, i64 784, !7, i64 788, !2, i64 792, !2, i64 800, !2, i64 808, !2, i64 816, !2, i64 824, !2, i64 832, !2, i64 840, !2, i64 848, !2, i64 856, !2, i64 864, !2, i64 872}
!7 = !{!"int", !3, i64 0}
!8 = !{!"double", !3, i64 0}
!9 = !{!"short", !3, i64 0}
!10 = !{!6, !2, i64 0}
!11 = !{!12, !7, i64 40}
!12 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !3, i64 44, !7, i64 124, !13, i64 128, !2, i64 136, !7, i64 144, !2, i64 152, !7, i64 160, !7, i64 164}
!13 = !{!"long", !3, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!12, !2, i64 0}
!16 = !{!6, !3, i64 64}
!17 = !{!6, !7, i64 144}
!18 = !{!6, !7, i64 56}
!19 = !{!6, !3, i64 108}
!20 = !{!6, !7, i64 148}
!21 = !{!6, !7, i64 420}
!22 = !{!6, !7, i64 152}
!23 = !{!6, !2, i64 792}
!24 = !{!6, !3, i64 128}
!25 = !{!6, !2, i64 160}
!26 = !{!27, !2, i64 40}
!27 = !{!"", !28, i64 0, !7, i64 24, !3, i64 28, !2, i64 32, !2, i64 40}
!28 = !{!"jpeg_decomp_master", !2, i64 0, !2, i64 8, !3, i64 16}
!29 = !{!6, !2, i64 872}
!30 = !{!31, !2, i64 24}
!31 = !{!"jpeg_color_quantizer", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!32 = !{!27, !3, i64 16}
!33 = !{!6, !2, i64 8}
!34 = !{!35, !2, i64 0}
!35 = !{!"jpeg_memory_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !13, i64 88, !13, i64 96}
!36 = !{!27, !2, i64 0}
!37 = !{!27, !2, i64 8}
!38 = !{!6, !3, i64 116}
!39 = !{!6, !3, i64 132}
!40 = !{!6, !3, i64 124}
!41 = !{!27, !2, i64 32}
!42 = !{!6, !2, i64 848}
!43 = !{!44, !2, i64 0}
!44 = !{!"jpeg_inverse_dct", !2, i64 0, !3, i64 8}
!45 = !{!6, !2, i64 808}
!46 = !{!47, !2, i64 16}
!47 = !{!"jpeg_d_coef_controller", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!48 = !{!6, !3, i64 92}
!49 = !{!27, !3, i64 28}
!50 = !{!6, !2, i64 864}
!51 = !{!52, !2, i64 0}
!52 = !{!"jpeg_color_deconverter", !2, i64 0, !2, i64 8}
!53 = !{!6, !2, i64 856}
!54 = !{!55, !2, i64 0}
!55 = !{!"jpeg_upsampler", !2, i64 0, !2, i64 8, !3, i64 16}
!56 = !{!31, !2, i64 0}
!57 = !{!6, !2, i64 816}
!58 = !{!59, !2, i64 0}
!59 = !{!"jpeg_d_post_controller", !2, i64 0, !2, i64 8}
!60 = !{!6, !2, i64 800}
!61 = !{!62, !2, i64 0}
!62 = !{!"jpeg_d_main_controller", !2, i64 0, !2, i64 8}
!63 = !{!6, !2, i64 16}
!64 = !{!27, !7, i64 24}
!65 = !{!66, !7, i64 24}
!66 = !{!"jpeg_progress_mgr", !2, i64 0, !13, i64 8, !13, i64 16, !7, i64 24, !7, i64 28}
!67 = !{!66, !7, i64 28}
!68 = !{!6, !3, i64 88}
!69 = !{!6, !2, i64 824}
!70 = !{!71, !3, i64 36}
!71 = !{!"jpeg_input_controller", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !3, i64 36}
!72 = !{!31, !2, i64 16}
!73 = !{!6, !7, i64 296}
!74 = !{!6, !7, i64 140}
!75 = !{!6, !7, i64 136}
!76 = !{!13, !13, i64 0}
!77 = !{!6, !3, i64 320}
!78 = !{!71, !3, i64 32}
!79 = !{!3, !3, i64 0}
!80 = !{!35, !2, i64 48}
!81 = !{!71, !2, i64 16}
!82 = !{!6, !3, i64 316}
!83 = !{!66, !13, i64 8}
!84 = !{!6, !7, i64 432}
!85 = !{!66, !13, i64 16}
!86 = !{!6, !2, i64 440}
