; ModuleID = './MultiSource.Benchmarks.mediabench/15.jpeg.jpeg-6a.jdmainct.bc'
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
%struct.my_main_controller = type { %struct.jpeg_d_main_controller, [10 x i8**], i32, i32, [2 x i8***], i32, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define void @jinit_d_main_controller(%struct.jpeg_decompress_struct* %cinfo, i32 %need_full_buffer) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %need_full_buffer.addr = alloca i32, align 4
  %main = alloca %struct.my_main_controller*, align 8
  %ci = alloca i32, align 4
  %rgroup = alloca i32, align 4
  %ngroups = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i32 %need_full_buffer, i32* %need_full_buffer.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_decompress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 136)
  %5 = bitcast i8* %call to %struct.my_main_controller*
  store %struct.my_main_controller* %5, %struct.my_main_controller** %main, align 8
  %6 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %7 = bitcast %struct.my_main_controller* %6 to %struct.jpeg_d_main_controller*
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 74
  store %struct.jpeg_d_main_controller* %7, %struct.jpeg_d_main_controller** %main1, align 8
  %9 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %pub = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %9, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %pub, i32 0, i32 0
  store void (%struct.jpeg_decompress_struct*, i32)* @start_pass_main, void (%struct.jpeg_decompress_struct*, i32)** %start_pass, align 8
  %10 = load i32, i32* %need_full_buffer.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 5
  store i32 4, i32* %msg_code, align 4
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 0
  %15 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %17 = bitcast %struct.jpeg_decompress_struct* %16 to %struct.jpeg_common_struct*
  call void %15(%struct.jpeg_common_struct* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %upsample = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 81
  %19 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample, align 8
  %need_context_rows = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %19, i32 0, i32 2
  %20 = load i32, i32* %need_context_rows, align 4
  %tobool3 = icmp ne i32 %20, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 59
  %22 = load i32, i32* %min_DCT_scaled_size, align 4
  %cmp = icmp slt i32 %22, 2
  br i1 %cmp, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.then.4
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8
  %msg_code7 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i32 0, i32 5
  store i32 46, i32* %msg_code7, align 4
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8
  %error_exit9 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i32 0, i32 0
  %27 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit9, align 8
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %29 = bitcast %struct.jpeg_decompress_struct* %28 to %struct.jpeg_common_struct*
  call void %27(%struct.jpeg_common_struct* %29)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.5, %if.then.4
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @alloc_funny_pointers(%struct.jpeg_decompress_struct* %30)
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 59
  %32 = load i32, i32* %min_DCT_scaled_size11, align 4
  %add = add nsw i32 %32, 2
  store i32 %add, i32* %ngroups, align 4
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 59
  %34 = load i32, i32* %min_DCT_scaled_size12, align 4
  store i32 %34, i32* %ngroups, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.end.10
  store i32 0, i32* %ci, align 4
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 43
  %36 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %36, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %37 = load i32, i32* %ci, align 4
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 8
  %39 = load i32, i32* %num_components, align 4
  %cmp14 = icmp slt i32 %37, %39
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %40, i32 0, i32 3
  %41 = load i32, i32* %v_samp_factor, align 4
  %42 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %42, i32 0, i32 9
  %43 = load i32, i32* %DCT_scaled_size, align 4
  %mul = mul nsw i32 %41, %43
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 59
  %45 = load i32, i32* %min_DCT_scaled_size15, align 4
  %div = sdiv i32 %mul, %45
  store i32 %div, i32* %rgroup, align 4
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 1
  %47 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem16, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %47, i32 0, i32 2
  %48 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %50 = bitcast %struct.jpeg_decompress_struct* %49 to %struct.jpeg_common_struct*
  %51 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %51, i32 0, i32 7
  %52 = load i32, i32* %width_in_blocks, align 4
  %53 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %DCT_scaled_size17 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %53, i32 0, i32 9
  %54 = load i32, i32* %DCT_scaled_size17, align 4
  %mul18 = mul i32 %52, %54
  %55 = load i32, i32* %rgroup, align 4
  %56 = load i32, i32* %ngroups, align 4
  %mul19 = mul nsw i32 %55, %56
  %call20 = call i8** %48(%struct.jpeg_common_struct* %50, i32 1, i32 %mul18, i32 %mul19)
  %57 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %57 to i64
  %58 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %buffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %58, i32 0, i32 1
  %arrayidx = getelementptr inbounds [10 x i8**], [10 x i8**]* %buffer, i32 0, i64 %idxprom
  store i8** %call20, i8*** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %59 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %ci, align 4
  %60 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %60, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_main(%struct.jpeg_decompress_struct* %cinfo, i32 %pass_mode) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %pass_mode.addr = alloca i32, align 4
  %main = alloca %struct.my_main_controller*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i32 %pass_mode, i32* %pass_mode.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 74
  %1 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %main1, align 8
  %2 = bitcast %struct.jpeg_d_main_controller* %1 to %struct.my_main_controller*
  store %struct.my_main_controller* %2, %struct.my_main_controller** %main, align 8
  %3 = load i32, i32* %pass_mode.addr, align 4
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %upsample = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 81
  %5 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample, align 8
  %need_context_rows = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %5, i32 0, i32 2
  %6 = load i32, i32* %need_context_rows, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %7 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %pub = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i32 0, i32 0
  %process_data = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %pub, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* @process_data_context_main, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)** %process_data, align 8
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @make_funny_pointers(%struct.jpeg_decompress_struct* %8)
  %9 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %whichptr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %9, i32 0, i32 5
  store i32 0, i32* %whichptr, align 4
  %10 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %context_state = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %10, i32 0, i32 6
  store i32 0, i32* %context_state, align 4
  %11 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %iMCU_row_ctr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %11, i32 0, i32 8
  store i32 0, i32* %iMCU_row_ctr, align 4
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %12 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %pub2 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %12, i32 0, i32 0
  %process_data3 = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %pub2, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* @process_data_simple_main, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)** %process_data3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %buffer_full = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %13, i32 0, i32 2
  store i32 0, i32* %buffer_full, align 4
  %14 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %14, i32 0, i32 3
  store i32 0, i32* %rowgroup_ctr, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %15 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %pub5 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %15, i32 0, i32 0
  %process_data6 = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %pub5, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* @process_data_crank_post, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)** %process_data6, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 5
  store i32 4, i32* %msg_code, align 4
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 0
  %20 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %22 = bitcast %struct.jpeg_decompress_struct* %21 to %struct.jpeg_common_struct*
  call void %20(%struct.jpeg_common_struct* %22)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.4, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @alloc_funny_pointers(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %main = alloca %struct.my_main_controller*, align 8
  %ci = alloca i32, align 4
  %rgroup = alloca i32, align 4
  %M = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %xbuf = alloca i8**, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 74
  %1 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %main1, align 8
  %2 = bitcast %struct.jpeg_d_main_controller* %1 to %struct.my_main_controller*
  store %struct.my_main_controller* %2, %struct.my_main_controller** %main, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 59
  %4 = load i32, i32* %min_DCT_scaled_size, align 4
  store i32 %4, i32* %M, align 4
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 1
  %6 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %6, i32 0, i32 0
  %7 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %9 = bitcast %struct.jpeg_decompress_struct* %8 to %struct.jpeg_common_struct*
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 8
  %11 = load i32, i32* %num_components, align 4
  %mul = mul nsw i32 %11, 2
  %conv = sext i32 %mul to i64
  %mul2 = mul i64 %conv, 8
  %call = call i8* %7(%struct.jpeg_common_struct* %9, i32 1, i64 %mul2)
  %12 = bitcast i8* %call to i8***
  %13 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %xbuffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %13, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer, i32 0, i64 0
  store i8*** %12, i8**** %arrayidx, align 8
  %14 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %xbuffer3 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %14, i32 0, i32 4
  %arrayidx4 = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer3, i32 0, i64 0
  %15 = load i8***, i8**** %arrayidx4, align 8
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 8
  %17 = load i32, i32* %num_components5, align 4
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8**, i8*** %15, i64 %idx.ext
  %18 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %xbuffer6 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %18, i32 0, i32 4
  %arrayidx7 = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer6, i32 0, i64 1
  store i8*** %add.ptr, i8**** %arrayidx7, align 8
  store i32 0, i32* %ci, align 4
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 43
  %20 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %20, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %21 = load i32, i32* %ci, align 4
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 8
  %23 = load i32, i32* %num_components8, align 4
  %cmp = icmp slt i32 %21, %23
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %24, i32 0, i32 3
  %25 = load i32, i32* %v_samp_factor, align 4
  %26 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %26, i32 0, i32 9
  %27 = load i32, i32* %DCT_scaled_size, align 4
  %mul10 = mul nsw i32 %25, %27
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 59
  %29 = load i32, i32* %min_DCT_scaled_size11, align 4
  %div = sdiv i32 %mul10, %29
  store i32 %div, i32* %rgroup, align 4
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 1
  %31 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem12, align 8
  %alloc_small13 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %31, i32 0, i32 0
  %32 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small13, align 8
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %34 = bitcast %struct.jpeg_decompress_struct* %33 to %struct.jpeg_common_struct*
  %35 = load i32, i32* %rgroup, align 4
  %36 = load i32, i32* %M, align 4
  %add = add nsw i32 %36, 4
  %mul14 = mul nsw i32 %35, %add
  %mul15 = mul nsw i32 2, %mul14
  %conv16 = sext i32 %mul15 to i64
  %mul17 = mul i64 %conv16, 8
  %call18 = call i8* %32(%struct.jpeg_common_struct* %34, i32 1, i64 %mul17)
  %37 = bitcast i8* %call18 to i8**
  store i8** %37, i8*** %xbuf, align 8
  %38 = load i32, i32* %rgroup, align 4
  %39 = load i8**, i8*** %xbuf, align 8
  %idx.ext19 = sext i32 %38 to i64
  %add.ptr20 = getelementptr inbounds i8*, i8** %39, i64 %idx.ext19
  store i8** %add.ptr20, i8*** %xbuf, align 8
  %40 = load i8**, i8*** %xbuf, align 8
  %41 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %41 to i64
  %42 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %xbuffer21 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %42, i32 0, i32 4
  %arrayidx22 = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer21, i32 0, i64 0
  %43 = load i8***, i8**** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i8**, i8*** %43, i64 %idxprom
  store i8** %40, i8*** %arrayidx23, align 8
  %44 = load i32, i32* %rgroup, align 4
  %45 = load i32, i32* %M, align 4
  %add24 = add nsw i32 %45, 4
  %mul25 = mul nsw i32 %44, %add24
  %46 = load i8**, i8*** %xbuf, align 8
  %idx.ext26 = sext i32 %mul25 to i64
  %add.ptr27 = getelementptr inbounds i8*, i8** %46, i64 %idx.ext26
  store i8** %add.ptr27, i8*** %xbuf, align 8
  %47 = load i8**, i8*** %xbuf, align 8
  %48 = load i32, i32* %ci, align 4
  %idxprom28 = sext i32 %48 to i64
  %49 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %xbuffer29 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %49, i32 0, i32 4
  %arrayidx30 = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer29, i32 0, i64 1
  %50 = load i8***, i8**** %arrayidx30, align 8
  %arrayidx31 = getelementptr inbounds i8**, i8*** %50, i64 %idxprom28
  store i8** %47, i8*** %arrayidx31, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %ci, align 4
  %52 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %52, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @process_data_context_main(%struct.jpeg_decompress_struct* %cinfo, i8** %output_buf, i32* %out_row_ctr, i32 %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %output_buf.addr = alloca i8**, align 8
  %out_row_ctr.addr = alloca i32*, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %main = alloca %struct.my_main_controller*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i8** %output_buf, i8*** %output_buf.addr, align 8
  store i32* %out_row_ctr, i32** %out_row_ctr.addr, align 8
  store i32 %out_rows_avail, i32* %out_rows_avail.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 74
  %1 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %main1, align 8
  %2 = bitcast %struct.jpeg_d_main_controller* %1 to %struct.my_main_controller*
  store %struct.my_main_controller* %2, %struct.my_main_controller** %main, align 8
  %3 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %buffer_full = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %3, i32 0, i32 2
  %4 = load i32, i32* %buffer_full, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end.5, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 75
  %6 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef, align 8
  %decompress_data = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %6, i32 0, i32 3
  %7 = load i32 (%struct.jpeg_decompress_struct*, i8***)*, i32 (%struct.jpeg_decompress_struct*, i8***)** %decompress_data, align 8
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %9 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %whichptr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %9, i32 0, i32 5
  %10 = load i32, i32* %whichptr, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %xbuffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %11, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer, i32 0, i64 %idxprom
  %12 = load i8***, i8**** %arrayidx, align 8
  %call = call i32 %7(%struct.jpeg_decompress_struct* %8, i8*** %12)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  %13 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %buffer_full4 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %13, i32 0, i32 2
  store i32 1, i32* %buffer_full4, align 4
  %14 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %iMCU_row_ctr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %14, i32 0, i32 8
  %15 = load i32, i32* %iMCU_row_ctr, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %iMCU_row_ctr, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %16 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %context_state = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %16, i32 0, i32 6
  %17 = load i32, i32* %context_state, align 4
  switch i32 %17, label %sw.epilog [
    i32 2, label %sw.bb
    i32 0, label %sw.bb.18
    i32 1, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %if.end.5
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %post = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 76
  %19 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %post, align 8
  %post_process_data = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %19, i32 0, i32 1
  %20 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %post_process_data, align 8
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %22 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %whichptr6 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %22, i32 0, i32 5
  %23 = load i32, i32* %whichptr6, align 4
  %idxprom7 = sext i32 %23 to i64
  %24 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %xbuffer8 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %24, i32 0, i32 4
  %arrayidx9 = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer8, i32 0, i64 %idxprom7
  %25 = load i8***, i8**** %arrayidx9, align 8
  %26 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %26, i32 0, i32 3
  %27 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %rowgroups_avail = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %27, i32 0, i32 7
  %28 = load i32, i32* %rowgroups_avail, align 4
  %29 = load i8**, i8*** %output_buf.addr, align 8
  %30 = load i32*, i32** %out_row_ctr.addr, align 8
  %31 = load i32, i32* %out_rows_avail.addr, align 4
  call void %20(%struct.jpeg_decompress_struct* %21, i8*** %25, i32* %rowgroup_ctr, i32 %28, i8** %29, i32* %30, i32 %31)
  %32 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %rowgroup_ctr10 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %32, i32 0, i32 3
  %33 = load i32, i32* %rowgroup_ctr10, align 4
  %34 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %rowgroups_avail11 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %34, i32 0, i32 7
  %35 = load i32, i32* %rowgroups_avail11, align 4
  %cmp = icmp ult i32 %33, %35
  br i1 %cmp, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %sw.bb
  br label %sw.epilog

if.end.13:                                        ; preds = %sw.bb
  %36 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %context_state14 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %36, i32 0, i32 6
  store i32 0, i32* %context_state14, align 4
  %37 = load i32*, i32** %out_row_ctr.addr, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %out_rows_avail.addr, align 4
  %cmp15 = icmp uge i32 %38, %39
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  br label %sw.epilog

if.end.17:                                        ; preds = %if.end.13
  br label %sw.bb.18

sw.bb.18:                                         ; preds = %if.end.5, %if.end.17
  %40 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %rowgroup_ctr19 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %40, i32 0, i32 3
  store i32 0, i32* %rowgroup_ctr19, align 4
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 59
  %42 = load i32, i32* %min_DCT_scaled_size, align 4
  %sub = sub nsw i32 %42, 1
  %43 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %rowgroups_avail20 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %43, i32 0, i32 7
  store i32 %sub, i32* %rowgroups_avail20, align 4
  %44 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %iMCU_row_ctr21 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %44, i32 0, i32 8
  %45 = load i32, i32* %iMCU_row_ctr21, align 4
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 60
  %47 = load i32, i32* %total_iMCU_rows, align 4
  %cmp22 = icmp eq i32 %45, %47
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %sw.bb.18
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @set_bottom_pointers(%struct.jpeg_decompress_struct* %48)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %sw.bb.18
  %49 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %context_state25 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %49, i32 0, i32 6
  store i32 1, i32* %context_state25, align 4
  br label %sw.bb.26

sw.bb.26:                                         ; preds = %if.end.5, %if.end.24
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %post27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 76
  %51 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %post27, align 8
  %post_process_data28 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %51, i32 0, i32 1
  %52 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %post_process_data28, align 8
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %54 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %whichptr29 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %54, i32 0, i32 5
  %55 = load i32, i32* %whichptr29, align 4
  %idxprom30 = sext i32 %55 to i64
  %56 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %xbuffer31 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %56, i32 0, i32 4
  %arrayidx32 = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer31, i32 0, i64 %idxprom30
  %57 = load i8***, i8**** %arrayidx32, align 8
  %58 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %rowgroup_ctr33 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %58, i32 0, i32 3
  %59 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %rowgroups_avail34 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %59, i32 0, i32 7
  %60 = load i32, i32* %rowgroups_avail34, align 4
  %61 = load i8**, i8*** %output_buf.addr, align 8
  %62 = load i32*, i32** %out_row_ctr.addr, align 8
  %63 = load i32, i32* %out_rows_avail.addr, align 4
  call void %52(%struct.jpeg_decompress_struct* %53, i8*** %57, i32* %rowgroup_ctr33, i32 %60, i8** %61, i32* %62, i32 %63)
  %64 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %rowgroup_ctr35 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %64, i32 0, i32 3
  %65 = load i32, i32* %rowgroup_ctr35, align 4
  %66 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %rowgroups_avail36 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %66, i32 0, i32 7
  %67 = load i32, i32* %rowgroups_avail36, align 4
  %cmp37 = icmp ult i32 %65, %67
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %sw.bb.26
  br label %sw.epilog

if.end.39:                                        ; preds = %sw.bb.26
  %68 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %iMCU_row_ctr40 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %68, i32 0, i32 8
  %69 = load i32, i32* %iMCU_row_ctr40, align 4
  %cmp41 = icmp eq i32 %69, 1
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.39
  %70 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @set_wraparound_pointers(%struct.jpeg_decompress_struct* %70)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.end.39
  %71 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %whichptr44 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %71, i32 0, i32 5
  %72 = load i32, i32* %whichptr44, align 4
  %xor = xor i32 %72, 1
  store i32 %xor, i32* %whichptr44, align 4
  %73 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %buffer_full45 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %73, i32 0, i32 2
  store i32 0, i32* %buffer_full45, align 4
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %74, i32 0, i32 59
  %75 = load i32, i32* %min_DCT_scaled_size46, align 4
  %add = add nsw i32 %75, 1
  %76 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %rowgroup_ctr47 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %76, i32 0, i32 3
  store i32 %add, i32* %rowgroup_ctr47, align 4
  %77 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %77, i32 0, i32 59
  %78 = load i32, i32* %min_DCT_scaled_size48, align 4
  %add49 = add nsw i32 %78, 2
  %79 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %rowgroups_avail50 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %79, i32 0, i32 7
  store i32 %add49, i32* %rowgroups_avail50, align 4
  %80 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %context_state51 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %80, i32 0, i32 6
  store i32 2, i32* %context_state51, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.3, %if.then.12, %if.then.16, %if.then.38, %if.end.43, %if.end.5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @make_funny_pointers(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %main = alloca %struct.my_main_controller*, align 8
  %ci = alloca i32, align 4
  %i = alloca i32, align 4
  %rgroup = alloca i32, align 4
  %M = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %buf = alloca i8**, align 8
  %xbuf0 = alloca i8**, align 8
  %xbuf1 = alloca i8**, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 74
  %1 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %main1, align 8
  %2 = bitcast %struct.jpeg_d_main_controller* %1 to %struct.my_main_controller*
  store %struct.my_main_controller* %2, %struct.my_main_controller** %main, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 59
  %4 = load i32, i32* %min_DCT_scaled_size, align 4
  store i32 %4, i32* %M, align 4
  store i32 0, i32* %ci, align 4
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 43
  %6 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %6, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.54, %entry
  %7 = load i32, i32* %ci, align 4
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 8
  %9 = load i32, i32* %num_components, align 4
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end.56

for.body:                                         ; preds = %for.cond
  %10 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %10, i32 0, i32 3
  %11 = load i32, i32* %v_samp_factor, align 4
  %12 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %12, i32 0, i32 9
  %13 = load i32, i32* %DCT_scaled_size, align 4
  %mul = mul nsw i32 %11, %13
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 59
  %15 = load i32, i32* %min_DCT_scaled_size2, align 4
  %div = sdiv i32 %mul, %15
  store i32 %div, i32* %rgroup, align 4
  %16 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %xbuffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %17, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer, i32 0, i64 0
  %18 = load i8***, i8**** %arrayidx, align 8
  %arrayidx3 = getelementptr inbounds i8**, i8*** %18, i64 %idxprom
  %19 = load i8**, i8*** %arrayidx3, align 8
  store i8** %19, i8*** %xbuf0, align 8
  %20 = load i32, i32* %ci, align 4
  %idxprom4 = sext i32 %20 to i64
  %21 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %xbuffer5 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %21, i32 0, i32 4
  %arrayidx6 = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer5, i32 0, i64 1
  %22 = load i8***, i8**** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i8**, i8*** %22, i64 %idxprom4
  %23 = load i8**, i8*** %arrayidx7, align 8
  store i8** %23, i8*** %xbuf1, align 8
  %24 = load i32, i32* %ci, align 4
  %idxprom8 = sext i32 %24 to i64
  %25 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %buffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %25, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [10 x i8**], [10 x i8**]* %buffer, i32 0, i64 %idxprom8
  %26 = load i8**, i8*** %arrayidx9, align 8
  store i8** %26, i8*** %buf, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %rgroup, align 4
  %29 = load i32, i32* %M, align 4
  %add = add nsw i32 %29, 2
  %mul11 = mul nsw i32 %28, %add
  %cmp12 = icmp slt i32 %27, %mul11
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.10
  %30 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %30 to i64
  %31 = load i8**, i8*** %buf, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %31, i64 %idxprom14
  %32 = load i8*, i8** %arrayidx15, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %33 to i64
  %34 = load i8**, i8*** %xbuf1, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %34, i64 %idxprom16
  store i8* %32, i8** %arrayidx17, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %35 to i64
  %36 = load i8**, i8*** %xbuf0, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %36, i64 %idxprom18
  store i8* %32, i8** %arrayidx19, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.13
  %37 = load i32, i32* %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  store i32 0, i32* %i, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.41, %for.end
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %rgroup, align 4
  %mul21 = mul nsw i32 %39, 2
  %cmp22 = icmp slt i32 %38, %mul21
  br i1 %cmp22, label %for.body.23, label %for.end.43

for.body.23:                                      ; preds = %for.cond.20
  %40 = load i32, i32* %rgroup, align 4
  %41 = load i32, i32* %M, align 4
  %mul24 = mul nsw i32 %40, %41
  %42 = load i32, i32* %i, align 4
  %add25 = add nsw i32 %mul24, %42
  %idxprom26 = sext i32 %add25 to i64
  %43 = load i8**, i8*** %buf, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %43, i64 %idxprom26
  %44 = load i8*, i8** %arrayidx27, align 8
  %45 = load i32, i32* %rgroup, align 4
  %46 = load i32, i32* %M, align 4
  %sub = sub nsw i32 %46, 2
  %mul28 = mul nsw i32 %45, %sub
  %47 = load i32, i32* %i, align 4
  %add29 = add nsw i32 %mul28, %47
  %idxprom30 = sext i32 %add29 to i64
  %48 = load i8**, i8*** %xbuf1, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %48, i64 %idxprom30
  store i8* %44, i8** %arrayidx31, align 8
  %49 = load i32, i32* %rgroup, align 4
  %50 = load i32, i32* %M, align 4
  %sub32 = sub nsw i32 %50, 2
  %mul33 = mul nsw i32 %49, %sub32
  %51 = load i32, i32* %i, align 4
  %add34 = add nsw i32 %mul33, %51
  %idxprom35 = sext i32 %add34 to i64
  %52 = load i8**, i8*** %buf, align 8
  %arrayidx36 = getelementptr inbounds i8*, i8** %52, i64 %idxprom35
  %53 = load i8*, i8** %arrayidx36, align 8
  %54 = load i32, i32* %rgroup, align 4
  %55 = load i32, i32* %M, align 4
  %mul37 = mul nsw i32 %54, %55
  %56 = load i32, i32* %i, align 4
  %add38 = add nsw i32 %mul37, %56
  %idxprom39 = sext i32 %add38 to i64
  %57 = load i8**, i8*** %xbuf1, align 8
  %arrayidx40 = getelementptr inbounds i8*, i8** %57, i64 %idxprom39
  store i8* %53, i8** %arrayidx40, align 8
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.23
  %58 = load i32, i32* %i, align 4
  %inc42 = add nsw i32 %58, 1
  store i32 %inc42, i32* %i, align 4
  br label %for.cond.20

for.end.43:                                       ; preds = %for.cond.20
  store i32 0, i32* %i, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.51, %for.end.43
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* %rgroup, align 4
  %cmp45 = icmp slt i32 %59, %60
  br i1 %cmp45, label %for.body.46, label %for.end.53

for.body.46:                                      ; preds = %for.cond.44
  %61 = load i8**, i8*** %xbuf0, align 8
  %arrayidx47 = getelementptr inbounds i8*, i8** %61, i64 0
  %62 = load i8*, i8** %arrayidx47, align 8
  %63 = load i32, i32* %i, align 4
  %64 = load i32, i32* %rgroup, align 4
  %sub48 = sub nsw i32 %63, %64
  %idxprom49 = sext i32 %sub48 to i64
  %65 = load i8**, i8*** %xbuf0, align 8
  %arrayidx50 = getelementptr inbounds i8*, i8** %65, i64 %idxprom49
  store i8* %62, i8** %arrayidx50, align 8
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.46
  %66 = load i32, i32* %i, align 4
  %inc52 = add nsw i32 %66, 1
  store i32 %inc52, i32* %i, align 4
  br label %for.cond.44

for.end.53:                                       ; preds = %for.cond.44
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.end.53
  %67 = load i32, i32* %ci, align 4
  %inc55 = add nsw i32 %67, 1
  store i32 %inc55, i32* %ci, align 4
  %68 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %68, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.end.56:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @process_data_simple_main(%struct.jpeg_decompress_struct* %cinfo, i8** %output_buf, i32* %out_row_ctr, i32 %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %output_buf.addr = alloca i8**, align 8
  %out_row_ctr.addr = alloca i32*, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %main = alloca %struct.my_main_controller*, align 8
  %rowgroups_avail = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i8** %output_buf, i8*** %output_buf.addr, align 8
  store i32* %out_row_ctr, i32** %out_row_ctr.addr, align 8
  store i32 %out_rows_avail, i32* %out_rows_avail.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 74
  %1 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %main1, align 8
  %2 = bitcast %struct.jpeg_d_main_controller* %1 to %struct.my_main_controller*
  store %struct.my_main_controller* %2, %struct.my_main_controller** %main, align 8
  %3 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %buffer_full = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %3, i32 0, i32 2
  %4 = load i32, i32* %buffer_full, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end.5, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 75
  %6 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef, align 8
  %decompress_data = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %6, i32 0, i32 3
  %7 = load i32 (%struct.jpeg_decompress_struct*, i8***)*, i32 (%struct.jpeg_decompress_struct*, i8***)** %decompress_data, align 8
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %9 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %buffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %9, i32 0, i32 1
  %arraydecay = getelementptr inbounds [10 x i8**], [10 x i8**]* %buffer, i32 0, i32 0
  %call = call i32 %7(%struct.jpeg_decompress_struct* %8, i8*** %arraydecay)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  br label %if.end.12

if.end:                                           ; preds = %if.then
  %10 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %buffer_full4 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %10, i32 0, i32 2
  store i32 1, i32* %buffer_full4, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 59
  %12 = load i32, i32* %min_DCT_scaled_size, align 4
  store i32 %12, i32* %rowgroups_avail, align 4
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %post = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 76
  %14 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %post, align 8
  %post_process_data = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %14, i32 0, i32 1
  %15 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %post_process_data, align 8
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %17 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %buffer6 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %17, i32 0, i32 1
  %arraydecay7 = getelementptr inbounds [10 x i8**], [10 x i8**]* %buffer6, i32 0, i32 0
  %18 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %rowgroup_ctr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %18, i32 0, i32 3
  %19 = load i32, i32* %rowgroups_avail, align 4
  %20 = load i8**, i8*** %output_buf.addr, align 8
  %21 = load i32*, i32** %out_row_ctr.addr, align 8
  %22 = load i32, i32* %out_rows_avail.addr, align 4
  call void %15(%struct.jpeg_decompress_struct* %16, i8*** %arraydecay7, i32* %rowgroup_ctr, i32 %19, i8** %20, i32* %21, i32 %22)
  %23 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %rowgroup_ctr8 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %23, i32 0, i32 3
  %24 = load i32, i32* %rowgroup_ctr8, align 4
  %25 = load i32, i32* %rowgroups_avail, align 4
  %cmp = icmp uge i32 %24, %25
  br i1 %cmp, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end.5
  %26 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %buffer_full10 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %26, i32 0, i32 2
  store i32 0, i32* %buffer_full10, align 4
  %27 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %rowgroup_ctr11 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %27, i32 0, i32 3
  store i32 0, i32* %rowgroup_ctr11, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.3, %if.then.9, %if.end.5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @process_data_crank_post(%struct.jpeg_decompress_struct* %cinfo, i8** %output_buf, i32* %out_row_ctr, i32 %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %output_buf.addr = alloca i8**, align 8
  %out_row_ctr.addr = alloca i32*, align 8
  %out_rows_avail.addr = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i8** %output_buf, i8*** %output_buf.addr, align 8
  store i32* %out_row_ctr, i32** %out_row_ctr.addr, align 8
  store i32 %out_rows_avail, i32* %out_rows_avail.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %post = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 76
  %1 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %post, align 8
  %post_process_data = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %1, i32 0, i32 1
  %2 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %post_process_data, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %4 = load i8**, i8*** %output_buf.addr, align 8
  %5 = load i32*, i32** %out_row_ctr.addr, align 8
  %6 = load i32, i32* %out_rows_avail.addr, align 4
  call void %2(%struct.jpeg_decompress_struct* %3, i8*** null, i32* null, i32 0, i8** %4, i32* %5, i32 %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_bottom_pointers(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %main = alloca %struct.my_main_controller*, align 8
  %ci = alloca i32, align 4
  %i = alloca i32, align 4
  %rgroup = alloca i32, align 4
  %iMCUheight = alloca i32, align 4
  %rows_left = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %xbuf = alloca i8**, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 74
  %1 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %main1, align 8
  %2 = bitcast %struct.jpeg_d_main_controller* %1 to %struct.my_main_controller*
  store %struct.my_main_controller* %2, %struct.my_main_controller** %main, align 8
  store i32 0, i32* %ci, align 4
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 43
  %4 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %4, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %entry
  %5 = load i32, i32* %ci, align 4
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 8
  %7 = load i32, i32* %num_components, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  %8 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %8, i32 0, i32 3
  %9 = load i32, i32* %v_samp_factor, align 4
  %10 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %10, i32 0, i32 9
  %11 = load i32, i32* %DCT_scaled_size, align 4
  %mul = mul nsw i32 %9, %11
  store i32 %mul, i32* %iMCUheight, align 4
  %12 = load i32, i32* %iMCUheight, align 4
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 59
  %14 = load i32, i32* %min_DCT_scaled_size, align 4
  %div = sdiv i32 %12, %14
  store i32 %div, i32* %rgroup, align 4
  %15 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %downsampled_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %15, i32 0, i32 11
  %16 = load i32, i32* %downsampled_height, align 4
  %17 = load i32, i32* %iMCUheight, align 4
  %rem = urem i32 %16, %17
  store i32 %rem, i32* %rows_left, align 4
  %18 = load i32, i32* %rows_left, align 4
  %cmp2 = icmp eq i32 %18, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %19 = load i32, i32* %iMCUheight, align 4
  store i32 %19, i32* %rows_left, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %20 = load i32, i32* %ci, align 4
  %cmp3 = icmp eq i32 %20, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %21 = load i32, i32* %rows_left, align 4
  %sub = sub nsw i32 %21, 1
  %22 = load i32, i32* %rgroup, align 4
  %div5 = sdiv i32 %sub, %22
  %add = add nsw i32 %div5, 1
  %23 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %rowgroups_avail = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %23, i32 0, i32 7
  store i32 %add, i32* %rowgroups_avail, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %24 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %whichptr = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %25, i32 0, i32 5
  %26 = load i32, i32* %whichptr, align 4
  %idxprom7 = sext i32 %26 to i64
  %27 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %xbuffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %27, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer, i32 0, i64 %idxprom7
  %28 = load i8***, i8**** %arrayidx, align 8
  %arrayidx8 = getelementptr inbounds i8**, i8*** %28, i64 %idxprom
  %29 = load i8**, i8*** %arrayidx8, align 8
  store i8** %29, i8*** %xbuf, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %if.end.6
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %rgroup, align 4
  %mul10 = mul nsw i32 %31, 2
  %cmp11 = icmp slt i32 %30, %mul10
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.9
  %32 = load i32, i32* %rows_left, align 4
  %sub13 = sub nsw i32 %32, 1
  %idxprom14 = sext i32 %sub13 to i64
  %33 = load i8**, i8*** %xbuf, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %33, i64 %idxprom14
  %34 = load i8*, i8** %arrayidx15, align 8
  %35 = load i32, i32* %rows_left, align 4
  %36 = load i32, i32* %i, align 4
  %add16 = add nsw i32 %35, %36
  %idxprom17 = sext i32 %add16 to i64
  %37 = load i8**, i8*** %xbuf, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %37, i64 %idxprom17
  store i8* %34, i8** %arrayidx18, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end
  %39 = load i32, i32* %ci, align 4
  %inc20 = add nsw i32 %39, 1
  store i32 %inc20, i32* %ci, align 4
  %40 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %40, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_wraparound_pointers(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %main = alloca %struct.my_main_controller*, align 8
  %ci = alloca i32, align 4
  %i = alloca i32, align 4
  %rgroup = alloca i32, align 4
  %M = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %xbuf0 = alloca i8**, align 8
  %xbuf1 = alloca i8**, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %main1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 74
  %1 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %main1, align 8
  %2 = bitcast %struct.jpeg_d_main_controller* %1 to %struct.my_main_controller*
  store %struct.my_main_controller* %2, %struct.my_main_controller** %main, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 59
  %4 = load i32, i32* %min_DCT_scaled_size, align 4
  store i32 %4, i32* %M, align 4
  store i32 0, i32* %ci, align 4
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 43
  %6 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %6, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.39, %entry
  %7 = load i32, i32* %ci, align 4
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 8
  %9 = load i32, i32* %num_components, align 4
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end.41

for.body:                                         ; preds = %for.cond
  %10 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %10, i32 0, i32 3
  %11 = load i32, i32* %v_samp_factor, align 4
  %12 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %12, i32 0, i32 9
  %13 = load i32, i32* %DCT_scaled_size, align 4
  %mul = mul nsw i32 %11, %13
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 59
  %15 = load i32, i32* %min_DCT_scaled_size2, align 4
  %div = sdiv i32 %mul, %15
  store i32 %div, i32* %rgroup, align 4
  %16 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %xbuffer = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %17, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer, i32 0, i64 0
  %18 = load i8***, i8**** %arrayidx, align 8
  %arrayidx3 = getelementptr inbounds i8**, i8*** %18, i64 %idxprom
  %19 = load i8**, i8*** %arrayidx3, align 8
  store i8** %19, i8*** %xbuf0, align 8
  %20 = load i32, i32* %ci, align 4
  %idxprom4 = sext i32 %20 to i64
  %21 = load %struct.my_main_controller*, %struct.my_main_controller** %main, align 8
  %xbuffer5 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %21, i32 0, i32 4
  %arrayidx6 = getelementptr inbounds [2 x i8***], [2 x i8***]* %xbuffer5, i32 0, i64 1
  %22 = load i8***, i8**** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i8**, i8*** %22, i64 %idxprom4
  %23 = load i8**, i8*** %arrayidx7, align 8
  store i8** %23, i8*** %xbuf1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %rgroup, align 4
  %cmp9 = icmp slt i32 %24, %25
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %26 = load i32, i32* %rgroup, align 4
  %27 = load i32, i32* %M, align 4
  %add = add nsw i32 %27, 1
  %mul11 = mul nsw i32 %26, %add
  %28 = load i32, i32* %i, align 4
  %add12 = add nsw i32 %mul11, %28
  %idxprom13 = sext i32 %add12 to i64
  %29 = load i8**, i8*** %xbuf0, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %29, i64 %idxprom13
  %30 = load i8*, i8** %arrayidx14, align 8
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %rgroup, align 4
  %sub = sub nsw i32 %31, %32
  %idxprom15 = sext i32 %sub to i64
  %33 = load i8**, i8*** %xbuf0, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %33, i64 %idxprom15
  store i8* %30, i8** %arrayidx16, align 8
  %34 = load i32, i32* %rgroup, align 4
  %35 = load i32, i32* %M, align 4
  %add17 = add nsw i32 %35, 1
  %mul18 = mul nsw i32 %34, %add17
  %36 = load i32, i32* %i, align 4
  %add19 = add nsw i32 %mul18, %36
  %idxprom20 = sext i32 %add19 to i64
  %37 = load i8**, i8*** %xbuf1, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %37, i64 %idxprom20
  %38 = load i8*, i8** %arrayidx21, align 8
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %rgroup, align 4
  %sub22 = sub nsw i32 %39, %40
  %idxprom23 = sext i32 %sub22 to i64
  %41 = load i8**, i8*** %xbuf1, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %41, i64 %idxprom23
  store i8* %38, i8** %arrayidx24, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %42 to i64
  %43 = load i8**, i8*** %xbuf0, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %43, i64 %idxprom25
  %44 = load i8*, i8** %arrayidx26, align 8
  %45 = load i32, i32* %rgroup, align 4
  %46 = load i32, i32* %M, align 4
  %add27 = add nsw i32 %46, 2
  %mul28 = mul nsw i32 %45, %add27
  %47 = load i32, i32* %i, align 4
  %add29 = add nsw i32 %mul28, %47
  %idxprom30 = sext i32 %add29 to i64
  %48 = load i8**, i8*** %xbuf0, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %48, i64 %idxprom30
  store i8* %44, i8** %arrayidx31, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %49 to i64
  %50 = load i8**, i8*** %xbuf1, align 8
  %arrayidx33 = getelementptr inbounds i8*, i8** %50, i64 %idxprom32
  %51 = load i8*, i8** %arrayidx33, align 8
  %52 = load i32, i32* %rgroup, align 4
  %53 = load i32, i32* %M, align 4
  %add34 = add nsw i32 %53, 2
  %mul35 = mul nsw i32 %52, %add34
  %54 = load i32, i32* %i, align 4
  %add36 = add nsw i32 %mul35, %54
  %idxprom37 = sext i32 %add36 to i64
  %55 = load i8**, i8*** %xbuf1, align 8
  %arrayidx38 = getelementptr inbounds i8*, i8** %55, i64 %idxprom37
  store i8* %51, i8** %arrayidx38, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %56 = load i32, i32* %i, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.end
  %57 = load i32, i32* %ci, align 4
  %inc40 = add nsw i32 %57, 1
  store i32 %inc40, i32* %ci, align 4
  %58 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %58, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.end.41:                                       ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
