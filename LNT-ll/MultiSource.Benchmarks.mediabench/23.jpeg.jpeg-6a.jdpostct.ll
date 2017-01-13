; ModuleID = './MultiSource.Benchmarks.mediabench/23.jpeg.jpeg-6a.jdpostct.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_source_mgr*, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, i32, i32, i32, [64 x i32]*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], i32, %struct.jpeg_component_info*, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, i8*, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, %struct.jpeg_decomp_master*, %struct.jpeg_d_main_controller*, %struct.jpeg_d_coef_controller*, %struct.jpeg_d_post_controller*, %struct.jpeg_input_controller*, %struct.jpeg_marker_reader*, %struct.jpeg_entropy_decoder*, %struct.jpeg_inverse_dct*, %struct.jpeg_upsampler*, %struct.jpeg_color_deconverter*, %struct.jpeg_color_quantizer* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_source_mgr = type { i8*, i64, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*)* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.jpeg_decomp_master = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 }
%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
%struct.jpeg_d_coef_controller = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
%struct.jpeg_input_controller = type { i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32, i32 }
%struct.jpeg_marker_reader = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, [16 x i32 (%struct.jpeg_decompress_struct*)*], i32, i32, i32, i32 }
%struct.jpeg_entropy_decoder = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* }
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
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i32 %need_full_buffer, i32* %need_full_buffer.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_decompress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 48)
  %5 = bitcast i8* %call to %struct.my_post_controller*
  store %struct.my_post_controller* %5, %struct.my_post_controller** %post, align 8
  %6 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %7 = bitcast %struct.my_post_controller* %6 to %struct.jpeg_d_post_controller*
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %post1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 76
  store %struct.jpeg_d_post_controller* %7, %struct.jpeg_d_post_controller** %post1, align 8
  %9 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %pub = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %9, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %pub, i32 0, i32 0
  store void (%struct.jpeg_decompress_struct*, i32)* @start_pass_dpost, void (%struct.jpeg_decompress_struct*, i32)** %start_pass, align 8
  %10 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %whole_image = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i32 0, i32 1
  store %struct.jvirt_sarray_control* null, %struct.jvirt_sarray_control** %whole_image, align 8
  %11 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %buffer = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %11, i32 0, i32 2
  store i8** null, i8*** %buffer, align 8
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 19
  %13 = load i32, i32* %quantize_colors, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 58
  %15 = load i32, i32* %max_v_samp_factor, align 4
  %16 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %strip_height = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %16, i32 0, i32 3
  store i32 %15, i32* %strip_height, align 4
  %17 = load i32, i32* %need_full_buffer.addr, align 4
  %tobool2 = icmp ne i32 %17, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 1
  %19 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem4, align 8
  %request_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %19, i32 0, i32 4
  %20 = load %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)** %request_virt_sarray, align 8
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %22 = bitcast %struct.jpeg_decompress_struct* %21 to %struct.jpeg_common_struct*
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 26
  %24 = load i32, i32* %output_width, align 4
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 28
  %26 = load i32, i32* %out_color_components, align 4
  %mul = mul i32 %24, %26
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 27
  %28 = load i32, i32* %output_height, align 4
  %conv = zext i32 %28 to i64
  %29 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %strip_height5 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %29, i32 0, i32 3
  %30 = load i32, i32* %strip_height5, align 4
  %conv6 = zext i32 %30 to i64
  %call7 = call i64 @jround_up(i64 %conv, i64 %conv6)
  %conv8 = trunc i64 %call7 to i32
  %31 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %strip_height9 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %31, i32 0, i32 3
  %32 = load i32, i32* %strip_height9, align 4
  %call10 = call %struct.jvirt_sarray_control* %20(%struct.jpeg_common_struct* %22, i32 1, i32 0, i32 %mul, i32 %conv8, i32 %32)
  %33 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %whole_image11 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %33, i32 0, i32 1
  store %struct.jvirt_sarray_control* %call10, %struct.jvirt_sarray_control** %whole_image11, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 1
  %35 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem12, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %35, i32 0, i32 2
  %36 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %38 = bitcast %struct.jpeg_decompress_struct* %37 to %struct.jpeg_common_struct*
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 26
  %40 = load i32, i32* %output_width13, align 4
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 28
  %42 = load i32, i32* %out_color_components14, align 4
  %mul15 = mul i32 %40, %42
  %43 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %strip_height16 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %43, i32 0, i32 3
  %44 = load i32, i32* %strip_height16, align 4
  %call17 = call i8** %36(%struct.jpeg_common_struct* %38, i32 1, i32 %mul15, i32 %44)
  %45 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %buffer18 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %45, i32 0, i32 2
  store i8** %call17, i8*** %buffer18, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_dpost(%struct.jpeg_decompress_struct* %cinfo, i32 %pass_mode) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %pass_mode.addr = alloca i32, align 4
  %post = alloca %struct.my_post_controller*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i32 %pass_mode, i32* %pass_mode.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %post1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 76
  %1 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %post1, align 8
  %2 = bitcast %struct.jpeg_d_post_controller* %1 to %struct.my_post_controller*
  store %struct.my_post_controller* %2, %struct.my_post_controller** %post, align 8
  %3 = load i32, i32* %pass_mode.addr, align 4
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 3, label %sw.bb.8
    i32 2, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 19
  %5 = load i32, i32* %quantize_colors, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %6 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %pub = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %6, i32 0, i32 0
  %post_process_data = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %pub, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* @post_process_1pass, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %post_process_data, align 8
  %7 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %buffer = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %7, i32 0, i32 2
  %8 = load i8**, i8*** %buffer, align 8
  %cmp = icmp eq i8** %8, null
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 1
  %10 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %10, i32 0, i32 7
  %11 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %access_virt_sarray, align 8
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %13 = bitcast %struct.jpeg_decompress_struct* %12 to %struct.jpeg_common_struct*
  %14 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %whole_image = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %14, i32 0, i32 1
  %15 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %whole_image, align 8
  %16 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %strip_height = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %16, i32 0, i32 3
  %17 = load i32, i32* %strip_height, align 4
  %call = call i8** %11(%struct.jpeg_common_struct* %13, %struct.jvirt_sarray_control* %15, i32 0, i32 %17, i32 1)
  %18 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %buffer3 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %18, i32 0, i32 2
  store i8** %call, i8*** %buffer3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.7

if.else:                                          ; preds = %sw.bb
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %upsample = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 81
  %20 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample, align 8
  %upsample4 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %20, i32 0, i32 1
  %21 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %upsample4, align 8
  %22 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %pub5 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %22, i32 0, i32 0
  %post_process_data6 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %pub5, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* %21, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %post_process_data6, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.end
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %23 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %whole_image9 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %23, i32 0, i32 1
  %24 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %whole_image9, align 8
  %cmp10 = icmp eq %struct.jvirt_sarray_control* %24, null
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %sw.bb.8
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i32 0, i32 5
  store i32 4, i32* %msg_code, align 4
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err12, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 0
  %29 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %31 = bitcast %struct.jpeg_decompress_struct* %30 to %struct.jpeg_common_struct*
  call void %29(%struct.jpeg_common_struct* %31)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %sw.bb.8
  %32 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %pub14 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %32, i32 0, i32 0
  %post_process_data15 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %pub14, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* @post_process_prepass, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %post_process_data15, align 8
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %33 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %whole_image17 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %33, i32 0, i32 1
  %34 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %whole_image17, align 8
  %cmp18 = icmp eq %struct.jvirt_sarray_control* %34, null
  br i1 %cmp18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %sw.bb.16
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 0
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err20, align 8
  %msg_code21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %36, i32 0, i32 5
  store i32 4, i32* %msg_code21, align 4
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 0
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err22, align 8
  %error_exit23 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %38, i32 0, i32 0
  %39 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit23, align 8
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %41 = bitcast %struct.jpeg_decompress_struct* %40 to %struct.jpeg_common_struct*
  call void %39(%struct.jpeg_common_struct* %41)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.19, %sw.bb.16
  %42 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %pub25 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %42, i32 0, i32 0
  %post_process_data26 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %pub25, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* @post_process_2pass, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %post_process_data26, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err27, align 8
  %msg_code28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i32 0, i32 5
  store i32 4, i32* %msg_code28, align 4
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 0
  %46 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err29, align 8
  %error_exit30 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %46, i32 0, i32 0
  %47 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit30, align 8
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %49 = bitcast %struct.jpeg_decompress_struct* %48 to %struct.jpeg_common_struct*
  call void %47(%struct.jpeg_common_struct* %49)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.24, %if.end.13, %if.end.7
  %50 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %next_row = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %50, i32 0, i32 5
  store i32 0, i32* %next_row, align 4
  %51 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %starting_row = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %51, i32 0, i32 4
  store i32 0, i32* %starting_row, align 4
  ret void
}

declare i64 @jround_up(i64, i64) #1

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
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i8*** %input_buf, i8**** %input_buf.addr, align 8
  store i32* %in_row_group_ctr, i32** %in_row_group_ctr.addr, align 8
  store i32 %in_row_groups_avail, i32* %in_row_groups_avail.addr, align 4
  store i8** %output_buf, i8*** %output_buf.addr, align 8
  store i32* %out_row_ctr, i32** %out_row_ctr.addr, align 8
  store i32 %out_rows_avail, i32* %out_rows_avail.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %post1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 76
  %1 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %post1, align 8
  %2 = bitcast %struct.jpeg_d_post_controller* %1 to %struct.my_post_controller*
  store %struct.my_post_controller* %2, %struct.my_post_controller** %post, align 8
  %3 = load i32, i32* %out_rows_avail.addr, align 4
  %4 = load i32*, i32** %out_row_ctr.addr, align 8
  %5 = load i32, i32* %4, align 4
  %sub = sub i32 %3, %5
  store i32 %sub, i32* %max_rows, align 4
  %6 = load i32, i32* %max_rows, align 4
  %7 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %strip_height = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %7, i32 0, i32 3
  %8 = load i32, i32* %strip_height, align 4
  %cmp = icmp ugt i32 %6, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %strip_height2 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %9, i32 0, i32 3
  %10 = load i32, i32* %strip_height2, align 4
  store i32 %10, i32* %max_rows, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %num_rows, align 4
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %upsample = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 81
  %12 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample, align 8
  %upsample3 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %12, i32 0, i32 1
  %13 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %upsample3, align 8
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %15 = load i8***, i8**** %input_buf.addr, align 8
  %16 = load i32*, i32** %in_row_group_ctr.addr, align 8
  %17 = load i32, i32* %in_row_groups_avail.addr, align 4
  %18 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %buffer = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %18, i32 0, i32 2
  %19 = load i8**, i8*** %buffer, align 8
  %20 = load i32, i32* %max_rows, align 4
  call void %13(%struct.jpeg_decompress_struct* %14, i8*** %15, i32* %16, i32 %17, i8** %19, i32* %num_rows, i32 %20)
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 83
  %22 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize, align 8
  %color_quantize = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %22, i32 0, i32 1
  %23 = load void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %color_quantize, align 8
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %25 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %buffer4 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %25, i32 0, i32 2
  %26 = load i8**, i8*** %buffer4, align 8
  %27 = load i8**, i8*** %output_buf.addr, align 8
  %28 = load i32*, i32** %out_row_ctr.addr, align 8
  %29 = load i32, i32* %28, align 4
  %idx.ext = zext i32 %29 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %27, i64 %idx.ext
  %30 = load i32, i32* %num_rows, align 4
  call void %23(%struct.jpeg_decompress_struct* %24, i8** %26, i8** %add.ptr, i32 %30)
  %31 = load i32, i32* %num_rows, align 4
  %32 = load i32*, i32** %out_row_ctr.addr, align 8
  %33 = load i32, i32* %32, align 4
  %add = add i32 %33, %31
  store i32 %add, i32* %32, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @post_process_prepass(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32* %in_row_group_ctr, i32 %in_row_groups_avail, i8** %output_buf, i32* %out_row_ctr, i32 %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %in_row_group_ctr.addr = alloca i32*, align 8
  %in_row_groups_avail.addr = alloca i32, align 4
  %output_buf.addr = alloca i8**, align 8
  %out_row_ctr.addr = alloca i32*, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %post = alloca %struct.my_post_controller*, align 8
  %old_next_row = alloca i32, align 4
  %num_rows = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i8*** %input_buf, i8**** %input_buf.addr, align 8
  store i32* %in_row_group_ctr, i32** %in_row_group_ctr.addr, align 8
  store i32 %in_row_groups_avail, i32* %in_row_groups_avail.addr, align 4
  store i8** %output_buf, i8*** %output_buf.addr, align 8
  store i32* %out_row_ctr, i32** %out_row_ctr.addr, align 8
  store i32 %out_rows_avail, i32* %out_rows_avail.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %post1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 76
  %1 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %post1, align 8
  %2 = bitcast %struct.jpeg_d_post_controller* %1 to %struct.my_post_controller*
  store %struct.my_post_controller* %2, %struct.my_post_controller** %post, align 8
  %3 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %next_row = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %3, i32 0, i32 5
  %4 = load i32, i32* %next_row, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 1
  %6 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %6, i32 0, i32 7
  %7 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %access_virt_sarray, align 8
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %9 = bitcast %struct.jpeg_decompress_struct* %8 to %struct.jpeg_common_struct*
  %10 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %whole_image = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i32 0, i32 1
  %11 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %whole_image, align 8
  %12 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %starting_row = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %12, i32 0, i32 4
  %13 = load i32, i32* %starting_row, align 4
  %14 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %strip_height = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %14, i32 0, i32 3
  %15 = load i32, i32* %strip_height, align 4
  %call = call i8** %7(%struct.jpeg_common_struct* %9, %struct.jvirt_sarray_control* %11, i32 %13, i32 %15, i32 1)
  %16 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %buffer = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %16, i32 0, i32 2
  store i8** %call, i8*** %buffer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %next_row2 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %17, i32 0, i32 5
  %18 = load i32, i32* %next_row2, align 4
  store i32 %18, i32* %old_next_row, align 4
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %upsample = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 81
  %20 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample, align 8
  %upsample3 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %20, i32 0, i32 1
  %21 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %upsample3, align 8
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %23 = load i8***, i8**** %input_buf.addr, align 8
  %24 = load i32*, i32** %in_row_group_ctr.addr, align 8
  %25 = load i32, i32* %in_row_groups_avail.addr, align 4
  %26 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %buffer4 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %26, i32 0, i32 2
  %27 = load i8**, i8*** %buffer4, align 8
  %28 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %next_row5 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %28, i32 0, i32 5
  %29 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %strip_height6 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %29, i32 0, i32 3
  %30 = load i32, i32* %strip_height6, align 4
  call void %21(%struct.jpeg_decompress_struct* %22, i8*** %23, i32* %24, i32 %25, i8** %27, i32* %next_row5, i32 %30)
  %31 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %next_row7 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %31, i32 0, i32 5
  %32 = load i32, i32* %next_row7, align 4
  %33 = load i32, i32* %old_next_row, align 4
  %cmp8 = icmp ugt i32 %32, %33
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end
  %34 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %next_row10 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %34, i32 0, i32 5
  %35 = load i32, i32* %next_row10, align 4
  %36 = load i32, i32* %old_next_row, align 4
  %sub = sub i32 %35, %36
  store i32 %sub, i32* %num_rows, align 4
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 83
  %38 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize, align 8
  %color_quantize = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %38, i32 0, i32 1
  %39 = load void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %color_quantize, align 8
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %41 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %buffer11 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %41, i32 0, i32 2
  %42 = load i8**, i8*** %buffer11, align 8
  %43 = load i32, i32* %old_next_row, align 4
  %idx.ext = zext i32 %43 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %42, i64 %idx.ext
  %44 = load i32, i32* %num_rows, align 4
  call void %39(%struct.jpeg_decompress_struct* %40, i8** %add.ptr, i8** null, i32 %44)
  %45 = load i32, i32* %num_rows, align 4
  %46 = load i32*, i32** %out_row_ctr.addr, align 8
  %47 = load i32, i32* %46, align 4
  %add = add i32 %47, %45
  store i32 %add, i32* %46, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end
  %48 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %next_row13 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %48, i32 0, i32 5
  %49 = load i32, i32* %next_row13, align 4
  %50 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %strip_height14 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %50, i32 0, i32 3
  %51 = load i32, i32* %strip_height14, align 4
  %cmp15 = icmp uge i32 %49, %51
  br i1 %cmp15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.end.12
  %52 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %strip_height17 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %52, i32 0, i32 3
  %53 = load i32, i32* %strip_height17, align 4
  %54 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %starting_row18 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %54, i32 0, i32 4
  %55 = load i32, i32* %starting_row18, align 4
  %add19 = add i32 %55, %53
  store i32 %add19, i32* %starting_row18, align 4
  %56 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %next_row20 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %56, i32 0, i32 5
  store i32 0, i32* %next_row20, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %if.end.12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @post_process_2pass(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32* %in_row_group_ctr, i32 %in_row_groups_avail, i8** %output_buf, i32* %out_row_ctr, i32 %out_rows_avail) #0 {
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
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i8*** %input_buf, i8**** %input_buf.addr, align 8
  store i32* %in_row_group_ctr, i32** %in_row_group_ctr.addr, align 8
  store i32 %in_row_groups_avail, i32* %in_row_groups_avail.addr, align 4
  store i8** %output_buf, i8*** %output_buf.addr, align 8
  store i32* %out_row_ctr, i32** %out_row_ctr.addr, align 8
  store i32 %out_rows_avail, i32* %out_rows_avail.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %post1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 76
  %1 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %post1, align 8
  %2 = bitcast %struct.jpeg_d_post_controller* %1 to %struct.my_post_controller*
  store %struct.my_post_controller* %2, %struct.my_post_controller** %post, align 8
  %3 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %next_row = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %3, i32 0, i32 5
  %4 = load i32, i32* %next_row, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 1
  %6 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %6, i32 0, i32 7
  %7 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %access_virt_sarray, align 8
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %9 = bitcast %struct.jpeg_decompress_struct* %8 to %struct.jpeg_common_struct*
  %10 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %whole_image = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i32 0, i32 1
  %11 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %whole_image, align 8
  %12 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %starting_row = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %12, i32 0, i32 4
  %13 = load i32, i32* %starting_row, align 4
  %14 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %strip_height = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %14, i32 0, i32 3
  %15 = load i32, i32* %strip_height, align 4
  %call = call i8** %7(%struct.jpeg_common_struct* %9, %struct.jvirt_sarray_control* %11, i32 %13, i32 %15, i32 0)
  %16 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %buffer = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %16, i32 0, i32 2
  store i8** %call, i8*** %buffer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %strip_height2 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %17, i32 0, i32 3
  %18 = load i32, i32* %strip_height2, align 4
  %19 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %next_row3 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %19, i32 0, i32 5
  %20 = load i32, i32* %next_row3, align 4
  %sub = sub i32 %18, %20
  store i32 %sub, i32* %num_rows, align 4
  %21 = load i32, i32* %out_rows_avail.addr, align 4
  %22 = load i32*, i32** %out_row_ctr.addr, align 8
  %23 = load i32, i32* %22, align 4
  %sub4 = sub i32 %21, %23
  store i32 %sub4, i32* %max_rows, align 4
  %24 = load i32, i32* %num_rows, align 4
  %25 = load i32, i32* %max_rows, align 4
  %cmp5 = icmp ugt i32 %24, %25
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %26 = load i32, i32* %max_rows, align 4
  store i32 %26, i32* %num_rows, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 27
  %28 = load i32, i32* %output_height, align 4
  %29 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %starting_row8 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %29, i32 0, i32 4
  %30 = load i32, i32* %starting_row8, align 4
  %sub9 = sub i32 %28, %30
  store i32 %sub9, i32* %max_rows, align 4
  %31 = load i32, i32* %num_rows, align 4
  %32 = load i32, i32* %max_rows, align 4
  %cmp10 = icmp ugt i32 %31, %32
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  %33 = load i32, i32* %max_rows, align 4
  store i32 %33, i32* %num_rows, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.7
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 83
  %35 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize, align 8
  %color_quantize = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %35, i32 0, i32 1
  %36 = load void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %color_quantize, align 8
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %38 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %buffer13 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %38, i32 0, i32 2
  %39 = load i8**, i8*** %buffer13, align 8
  %40 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %next_row14 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %40, i32 0, i32 5
  %41 = load i32, i32* %next_row14, align 4
  %idx.ext = zext i32 %41 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %39, i64 %idx.ext
  %42 = load i8**, i8*** %output_buf.addr, align 8
  %43 = load i32*, i32** %out_row_ctr.addr, align 8
  %44 = load i32, i32* %43, align 4
  %idx.ext15 = zext i32 %44 to i64
  %add.ptr16 = getelementptr inbounds i8*, i8** %42, i64 %idx.ext15
  %45 = load i32, i32* %num_rows, align 4
  call void %36(%struct.jpeg_decompress_struct* %37, i8** %add.ptr, i8** %add.ptr16, i32 %45)
  %46 = load i32, i32* %num_rows, align 4
  %47 = load i32*, i32** %out_row_ctr.addr, align 8
  %48 = load i32, i32* %47, align 4
  %add = add i32 %48, %46
  store i32 %add, i32* %47, align 4
  %49 = load i32, i32* %num_rows, align 4
  %50 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %next_row17 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %50, i32 0, i32 5
  %51 = load i32, i32* %next_row17, align 4
  %add18 = add i32 %51, %49
  store i32 %add18, i32* %next_row17, align 4
  %52 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %next_row19 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %52, i32 0, i32 5
  %53 = load i32, i32* %next_row19, align 4
  %54 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %strip_height20 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %54, i32 0, i32 3
  %55 = load i32, i32* %strip_height20, align 4
  %cmp21 = icmp uge i32 %53, %55
  br i1 %cmp21, label %if.then.22, label %if.end.27

if.then.22:                                       ; preds = %if.end.12
  %56 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %strip_height23 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %56, i32 0, i32 3
  %57 = load i32, i32* %strip_height23, align 4
  %58 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %starting_row24 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %58, i32 0, i32 4
  %59 = load i32, i32* %starting_row24, align 4
  %add25 = add i32 %59, %57
  store i32 %add25, i32* %starting_row24, align 4
  %60 = load %struct.my_post_controller*, %struct.my_post_controller** %post, align 8
  %next_row26 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %60, i32 0, i32 5
  store i32 0, i32* %next_row26, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.22, %if.end.12
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
