; ModuleID = './jdpostct.bc'
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
%struct.jpeg_source_mgr = type { i8*, i64, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*)* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.jpeg_marker_struct = type { %struct.jpeg_marker_struct*, i8, i32, i32, i8* }
%struct.jpeg_decomp_master = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 }
%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
%struct.jpeg_d_coef_controller = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
%struct.jpeg_input_controller = type { i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32, i32 }
%struct.jpeg_marker_reader = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32, i32, i32, i32 }
%struct.jpeg_entropy_decoder = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)*, void (%struct.jpeg_decompress_struct*)* }
%struct.jpeg_inverse_dct = type { void (%struct.jpeg_decompress_struct*)*, [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*] }
%struct.jpeg_upsampler = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, i32 }
%struct.jpeg_color_deconverter = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* }
%struct.jpeg_color_quantizer = type { {}*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)* }
%struct.my_post_controller = type { %struct.jpeg_d_post_controller, %struct.jvirt_sarray_control*, i8**, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define void @jinit_d_post_controller(%struct.jpeg_decompress_struct* %cinfo, i32 %need_full_buffer) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %need_full_buffer.addr = alloca i32, align 4
  %post = alloca %struct.my_post_controller*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %need_full_buffer, i32* %need_full_buffer.addr, align 4, !tbaa !5
  %0 = bitcast %struct.my_post_controller** %post to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %2, i32 0, i32 0
  %3 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %5 = bitcast %struct.jpeg_decompress_struct* %4 to %struct.jpeg_common_struct*
  %call = call i8* %3(%struct.jpeg_common_struct* %5, i32 1, i64 48) #2
  %6 = bitcast i8* %call to %struct.my_post_controller*
  store %struct.my_post_controller* %6, %struct.my_post_controller** %post, align 8, !tbaa !1
  %7 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !1
  %8 = bitcast %struct.my_post_controller* %7 to %struct.jpeg_d_post_controller*
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %post1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 86
  store %struct.jpeg_d_post_controller* %8, %struct.jpeg_d_post_controller** %post1, align 8, !tbaa !14
  %10 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %pub, i32 0, i32 0
  store void (%struct.jpeg_decompress_struct*, i32)* @start_pass_dpost, void (%struct.jpeg_decompress_struct*, i32)** %start_pass, align 8, !tbaa !15
  %11 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !1
  %whole_image = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %11, i32 0, i32 1
  store %struct.jvirt_sarray_control* null, %struct.jvirt_sarray_control** %whole_image, align 8, !tbaa !18
  %12 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %12, i32 0, i32 2
  store i8** null, i8*** %buffer, align 8, !tbaa !19
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 20
  %14 = load i32, i32* %quantize_colors, align 4, !tbaa !20
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 64
  %16 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !21
  %17 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !1
  %strip_height = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %17, i32 0, i32 3
  store i32 %16, i32* %strip_height, align 4, !tbaa !22
  %18 = load i32, i32* %need_full_buffer.addr, align 4, !tbaa !5
  %tobool2 = icmp ne i32 %18, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !23
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 5
  store i32 3, i32* %msg_code, align 4, !tbaa !24
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !23
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i32 0, i32 0
  %23 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !26
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %25 = bitcast %struct.jpeg_decompress_struct* %24 to %struct.jpeg_common_struct*
  call void %23(%struct.jpeg_common_struct* %25) #2
  br label %if.end

if.else:                                          ; preds = %if.then
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 1
  %27 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem5, align 8, !tbaa !6
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %27, i32 0, i32 2
  %28 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8, !tbaa !27
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %30 = bitcast %struct.jpeg_decompress_struct* %29 to %struct.jpeg_common_struct*
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 27
  %32 = load i32, i32* %output_width, align 4, !tbaa !28
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 29
  %34 = load i32, i32* %out_color_components, align 4, !tbaa !29
  %mul = mul i32 %32, %34
  %35 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !1
  %strip_height6 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %35, i32 0, i32 3
  %36 = load i32, i32* %strip_height6, align 4, !tbaa !22
  %call7 = call i8** %28(%struct.jpeg_common_struct* %30, i32 1, i32 %mul, i32 %36) #2
  %37 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !1
  %buffer8 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %37, i32 0, i32 2
  store i8** %call7, i8*** %buffer8, align 8, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %38 = bitcast %struct.my_post_controller** %post to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_dpost(%struct.jpeg_decompress_struct* %cinfo, i32 %pass_mode) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %pass_mode.addr = alloca i32, align 4
  %post = alloca %struct.my_post_controller*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %pass_mode, i32* %pass_mode.addr, align 4, !tbaa !5
  %0 = bitcast %struct.my_post_controller** %post to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %post1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 86
  %2 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %post1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_d_post_controller* %2 to %struct.my_post_controller*
  store %struct.my_post_controller* %3, %struct.my_post_controller** %post, align 8, !tbaa !1
  %4 = load i32, i32* %pass_mode.addr, align 4, !tbaa !5
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 20
  %6 = load i32, i32* %quantize_colors, align 4, !tbaa !20
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %7 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %7, i32 0, i32 0
  %post_process_data = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %pub, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* @post_process_1pass, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %post_process_data, align 8, !tbaa !30
  %8 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %8, i32 0, i32 2
  %9 = load i8**, i8*** %buffer, align 8, !tbaa !19
  %cmp = icmp eq i8** %9, null
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 1
  %11 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %11, i32 0, i32 7
  %12 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %access_virt_sarray, align 8, !tbaa !31
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %14 = bitcast %struct.jpeg_decompress_struct* %13 to %struct.jpeg_common_struct*
  %15 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !1
  %whole_image = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %15, i32 0, i32 1
  %16 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %whole_image, align 8, !tbaa !18
  %17 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !1
  %strip_height = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %17, i32 0, i32 3
  %18 = load i32, i32* %strip_height, align 4, !tbaa !22
  %call = call i8** %12(%struct.jpeg_common_struct* %14, %struct.jvirt_sarray_control* %16, i32 0, i32 %18, i32 1) #2
  %19 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !1
  %buffer3 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %19, i32 0, i32 2
  store i8** %call, i8*** %buffer3, align 8, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.7

if.else:                                          ; preds = %sw.bb
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %upsample = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 91
  %21 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample, align 8, !tbaa !32
  %upsample4 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %21, i32 0, i32 1
  %22 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %upsample4, align 8, !tbaa !33
  %23 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !1
  %pub5 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %23, i32 0, i32 0
  %post_process_data6 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %pub5, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* %22, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %post_process_data6, align 8, !tbaa !30
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.end
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 0
  %25 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !23
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %25, i32 0, i32 5
  store i32 3, i32* %msg_code, align 4, !tbaa !24
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 0
  %27 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8, !tbaa !23
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %27, i32 0, i32 0
  %28 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !26
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %30 = bitcast %struct.jpeg_decompress_struct* %29 to %struct.jpeg_common_struct*
  call void %28(%struct.jpeg_common_struct* %30) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.7
  %31 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !1
  %next_row = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %31, i32 0, i32 5
  store i32 0, i32* %next_row, align 4, !tbaa !35
  %32 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !1
  %starting_row = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %32, i32 0, i32 4
  store i32 0, i32* %starting_row, align 4, !tbaa !36
  %33 = bitcast %struct.my_post_controller** %post to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @post_process_1pass(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32* %in_row_group_ctr, i32 %in_row_groups_avail, i8** %output_buf, i32* %out_row_ctr, i32 %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %in_row_group_ctr.addr = alloca i32*, align 8
  %in_row_groups_avail.addr = alloca i32, align 4
  %output_buf.addr = alloca i8**, align 8
  %out_row_ctr.addr = alloca i32*, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %post = alloca %struct.my_post_controller*, align 8
  %num_rows = alloca i32, align 4
  %max_rows = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !1
  store i32* %in_row_group_ctr, i32** %in_row_group_ctr.addr, align 8, !tbaa !1
  store i32 %in_row_groups_avail, i32* %in_row_groups_avail.addr, align 4, !tbaa !37
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !1
  store i32* %out_row_ctr, i32** %out_row_ctr.addr, align 8, !tbaa !1
  store i32 %out_rows_avail, i32* %out_rows_avail.addr, align 4, !tbaa !37
  %0 = bitcast %struct.my_post_controller** %post to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %post1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 86
  %2 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %post1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_d_post_controller* %2 to %struct.my_post_controller*
  store %struct.my_post_controller* %3, %struct.my_post_controller** %post, align 8, !tbaa !1
  %4 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %max_rows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %out_rows_avail.addr, align 4, !tbaa !37
  %7 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !1
  %8 = load i32, i32* %7, align 4, !tbaa !37
  %sub = sub i32 %6, %8
  store i32 %sub, i32* %max_rows, align 4, !tbaa !37
  %9 = load i32, i32* %max_rows, align 4, !tbaa !37
  %10 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !1
  %strip_height = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i32 0, i32 3
  %11 = load i32, i32* %strip_height, align 4, !tbaa !22
  %cmp = icmp ugt i32 %9, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !1
  %strip_height2 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %12, i32 0, i32 3
  %13 = load i32, i32* %strip_height2, align 4, !tbaa !22
  store i32 %13, i32* %max_rows, align 4, !tbaa !37
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %num_rows, align 4, !tbaa !37
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %upsample = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 91
  %15 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample, align 8, !tbaa !32
  %upsample3 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %15, i32 0, i32 1
  %16 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %upsample3, align 8, !tbaa !33
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %18 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !1
  %19 = load i32*, i32** %in_row_group_ctr.addr, align 8, !tbaa !1
  %20 = load i32, i32* %in_row_groups_avail.addr, align 4, !tbaa !37
  %21 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %21, i32 0, i32 2
  %22 = load i8**, i8*** %buffer, align 8, !tbaa !19
  %23 = load i32, i32* %max_rows, align 4, !tbaa !37
  call void %16(%struct.jpeg_decompress_struct* %17, i8*** %18, i32* %19, i32 %20, i8** %22, i32* %num_rows, i32 %23) #2
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 93
  %25 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize, align 8, !tbaa !38
  %color_quantize = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %25, i32 0, i32 1
  %26 = load void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %color_quantize, align 8, !tbaa !39
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %28 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8, !tbaa !1
  %buffer4 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %28, i32 0, i32 2
  %29 = load i8**, i8*** %buffer4, align 8, !tbaa !19
  %30 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !1
  %31 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !1
  %32 = load i32, i32* %31, align 4, !tbaa !37
  %idx.ext = zext i32 %32 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %30, i64 %idx.ext
  %33 = load i32, i32* %num_rows, align 4, !tbaa !37
  call void %26(%struct.jpeg_decompress_struct* %27, i8** %29, i8** %add.ptr, i32 %33) #2
  %34 = load i32, i32* %num_rows, align 4, !tbaa !37
  %35 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !1
  %36 = load i32, i32* %35, align 4, !tbaa !37
  %add = add i32 %36, %34
  store i32 %add, i32* %35, align 4, !tbaa !37
  %37 = bitcast i32* %max_rows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast %struct.my_post_controller** %post to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !2, i64 8}
!7 = !{!"jpeg_decompress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !8, i64 36, !2, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !3, i64 60, !3, i64 64, !8, i64 68, !8, i64 72, !9, i64 80, !3, i64 88, !3, i64 92, !3, i64 96, !3, i64 100, !3, i64 104, !3, i64 108, !3, i64 112, !3, i64 116, !8, i64 120, !3, i64 124, !3, i64 128, !3, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !2, i64 160, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !2, i64 192, !3, i64 200, !3, i64 232, !3, i64 264, !8, i64 296, !2, i64 304, !3, i64 312, !3, i64 316, !3, i64 320, !3, i64 324, !3, i64 340, !3, i64 356, !8, i64 372, !3, i64 376, !3, i64 380, !3, i64 381, !3, i64 382, !10, i64 384, !10, i64 386, !3, i64 388, !3, i64 392, !3, i64 396, !3, i64 400, !2, i64 408, !8, i64 416, !8, i64 420, !8, i64 424, !8, i64 428, !8, i64 432, !2, i64 440, !8, i64 448, !3, i64 456, !8, i64 488, !8, i64 492, !8, i64 496, !3, i64 500, !8, i64 756, !8, i64 760, !8, i64 764, !8, i64 768, !8, i64 772, !2, i64 776, !8, i64 784, !8, i64 788, !2, i64 792, !2, i64 800, !2, i64 808, !2, i64 816, !2, i64 824, !2, i64 832, !2, i64 840, !2, i64 848, !2, i64 856, !2, i64 864, !2, i64 872}
!8 = !{!"int", !3, i64 0}
!9 = !{!"double", !3, i64 0}
!10 = !{!"short", !3, i64 0}
!11 = !{!12, !2, i64 0}
!12 = !{!"jpeg_memory_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !13, i64 88, !13, i64 96}
!13 = !{!"long", !3, i64 0}
!14 = !{!7, !2, i64 816}
!15 = !{!16, !2, i64 0}
!16 = !{!"", !17, i64 0, !2, i64 16, !2, i64 24, !8, i64 32, !8, i64 36, !8, i64 40}
!17 = !{!"jpeg_d_post_controller", !2, i64 0, !2, i64 8}
!18 = !{!16, !2, i64 16}
!19 = !{!16, !2, i64 24}
!20 = !{!7, !3, i64 108}
!21 = !{!7, !8, i64 420}
!22 = !{!16, !8, i64 32}
!23 = !{!7, !2, i64 0}
!24 = !{!25, !8, i64 40}
!25 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !3, i64 44, !8, i64 124, !13, i64 128, !2, i64 136, !8, i64 144, !2, i64 152, !8, i64 160, !8, i64 164}
!26 = !{!25, !2, i64 0}
!27 = !{!12, !2, i64 16}
!28 = !{!7, !8, i64 136}
!29 = !{!7, !8, i64 144}
!30 = !{!16, !2, i64 8}
!31 = !{!12, !2, i64 56}
!32 = !{!7, !2, i64 856}
!33 = !{!34, !2, i64 8}
!34 = !{!"jpeg_upsampler", !2, i64 0, !2, i64 8, !3, i64 16}
!35 = !{!16, !8, i64 40}
!36 = !{!16, !8, i64 36}
!37 = !{!8, !8, i64 0}
!38 = !{!7, !2, i64 872}
!39 = !{!40, !2, i64 8}
!40 = !{!"jpeg_color_quantizer", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
