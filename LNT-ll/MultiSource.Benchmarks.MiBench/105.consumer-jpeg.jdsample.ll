; ModuleID = './MultiSource.Benchmarks.MiBench/105.consumer-jpeg.jdsample.bc'
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
%struct.jpeg_source_mgr = type { i8*, i64, {}*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, {}* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.jpeg_decomp_master = type { {}*, {}*, i32 }
%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
%struct.jpeg_d_coef_controller = type { {}*, i32 (%struct.jpeg_decompress_struct*)*, {}*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
%struct.jpeg_input_controller = type { i32 (%struct.jpeg_decompress_struct*)*, {}*, {}*, {}*, i32, i32 }
%struct.jpeg_marker_reader = type { {}*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, [16 x i32 (%struct.jpeg_decompress_struct*)*], i32, i32, i32, i32 }
%struct.jpeg_entropy_decoder = type { {}*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* }
%struct.jpeg_inverse_dct = type { {}*, [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*] }
%struct.jpeg_upsampler = type { {}*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, i32 }
%struct.jpeg_color_deconverter = type { {}*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* }
%struct.jpeg_color_quantizer = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, {}*, {}* }
%struct.my_upsampler = type { %struct.jpeg_upsampler, [10 x i8**], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], i32, i32, [10 x i32], [10 x i8], [10 x i8] }

; Function Attrs: nounwind uwtable
define void @jinit_upsampler(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %upsample = alloca %struct.my_upsampler*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %need_buffer = alloca i32, align 4
  %do_fancy = alloca i32, align 4
  %h_in_group = alloca i32, align 4
  %v_in_group = alloca i32, align 4
  %h_out_group = alloca i32, align 4
  %v_out_group = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_decompress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 256)
  %5 = bitcast i8* %call to %struct.my_upsampler*
  store %struct.my_upsampler* %5, %struct.my_upsampler** %upsample, align 8
  %6 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %7 = bitcast %struct.my_upsampler* %6 to %struct.jpeg_upsampler*
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 81
  store %struct.jpeg_upsampler* %7, %struct.jpeg_upsampler** %upsample1, align 8
  %9 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %pub = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %9, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %pub, i32 0, i32 0
  %start_pass2 = bitcast {}** %start_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @start_pass_upsample, void (%struct.jpeg_decompress_struct*)** %start_pass2, align 8
  %10 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %pub3 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %10, i32 0, i32 0
  %upsample4 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %pub3, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* @sep_upsample, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %upsample4, align 8
  %11 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %pub5 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %11, i32 0, i32 0
  %need_context_rows = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %pub5, i32 0, i32 2
  store i32 0, i32* %need_context_rows, align 4
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %CCIR601_sampling = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 56
  %13 = load i32, i32* %CCIR601_sampling, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 5
  store i32 23, i32* %msg_code, align 4
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 0
  %18 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %20 = bitcast %struct.jpeg_decompress_struct* %19 to %struct.jpeg_common_struct*
  call void %18(%struct.jpeg_common_struct* %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %do_fancy_upsampling = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 17
  %22 = load i32, i32* %do_fancy_upsampling, align 4
  %tobool7 = icmp ne i32 %22, 0
  br i1 %tobool7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 59
  %24 = load i32, i32* %min_DCT_scaled_size, align 4
  %cmp = icmp sgt i32 %24, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %25 = phi i1 [ false, %if.end ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %25 to i32
  store i32 %land.ext, i32* %do_fancy, align 4
  store i32 0, i32* %ci, align 4
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 43
  %27 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %27, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end
  %28 = load i32, i32* %ci, align 4
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 8
  %30 = load i32, i32* %num_components, align 4
  %cmp8 = icmp slt i32 %28, %30
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %31, i32 0, i32 2
  %32 = load i32, i32* %h_samp_factor, align 4
  %33 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %33, i32 0, i32 9
  %34 = load i32, i32* %DCT_scaled_size, align 4
  %mul = mul nsw i32 %32, %34
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 59
  %36 = load i32, i32* %min_DCT_scaled_size9, align 4
  %div = sdiv i32 %mul, %36
  store i32 %div, i32* %h_in_group, align 4
  %37 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %37, i32 0, i32 3
  %38 = load i32, i32* %v_samp_factor, align 4
  %39 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %DCT_scaled_size10 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %39, i32 0, i32 9
  %40 = load i32, i32* %DCT_scaled_size10, align 4
  %mul11 = mul nsw i32 %38, %40
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 59
  %42 = load i32, i32* %min_DCT_scaled_size12, align 4
  %div13 = sdiv i32 %mul11, %42
  store i32 %div13, i32* %v_in_group, align 4
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 57
  %44 = load i32, i32* %max_h_samp_factor, align 4
  store i32 %44, i32* %h_out_group, align 4
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 58
  %46 = load i32, i32* %max_v_samp_factor, align 4
  store i32 %46, i32* %v_out_group, align 4
  %47 = load i32, i32* %v_in_group, align 4
  %48 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %48 to i64
  %49 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %rowgroup_height = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %49, i32 0, i32 5
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %rowgroup_height, i32 0, i64 %idxprom
  store i32 %47, i32* %arrayidx, align 4
  store i32 1, i32* %need_buffer, align 4
  %50 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %50, i32 0, i32 12
  %51 = load i32, i32* %component_needed, align 4
  %tobool14 = icmp ne i32 %51, 0
  br i1 %tobool14, label %if.else, label %if.then.15

if.then.15:                                       ; preds = %for.body
  %52 = load i32, i32* %ci, align 4
  %idxprom16 = sext i32 %52 to i64
  %53 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %methods = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %53, i32 0, i32 2
  %arrayidx17 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %methods, i32 0, i64 %idxprom16
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @noop_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %arrayidx17, align 8
  store i32 0, i32* %need_buffer, align 4
  br label %if.end.89

if.else:                                          ; preds = %for.body
  %54 = load i32, i32* %h_in_group, align 4
  %55 = load i32, i32* %h_out_group, align 4
  %cmp18 = icmp eq i32 %54, %55
  br i1 %cmp18, label %land.lhs.true, label %if.else.24

land.lhs.true:                                    ; preds = %if.else
  %56 = load i32, i32* %v_in_group, align 4
  %57 = load i32, i32* %v_out_group, align 4
  %cmp19 = icmp eq i32 %56, %57
  br i1 %cmp19, label %if.then.20, label %if.else.24

if.then.20:                                       ; preds = %land.lhs.true
  %58 = load i32, i32* %ci, align 4
  %idxprom21 = sext i32 %58 to i64
  %59 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %methods22 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %59, i32 0, i32 2
  %arrayidx23 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %methods22, i32 0, i64 %idxprom21
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @fullsize_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %arrayidx23, align 8
  store i32 0, i32* %need_buffer, align 4
  br label %if.end.88

if.else.24:                                       ; preds = %land.lhs.true, %if.else
  %60 = load i32, i32* %h_in_group, align 4
  %mul25 = mul nsw i32 %60, 2
  %61 = load i32, i32* %h_out_group, align 4
  %cmp26 = icmp eq i32 %mul25, %61
  br i1 %cmp26, label %land.lhs.true.27, label %if.else.42

land.lhs.true.27:                                 ; preds = %if.else.24
  %62 = load i32, i32* %v_in_group, align 4
  %63 = load i32, i32* %v_out_group, align 4
  %cmp28 = icmp eq i32 %62, %63
  br i1 %cmp28, label %if.then.29, label %if.else.42

if.then.29:                                       ; preds = %land.lhs.true.27
  %64 = load i32, i32* %do_fancy, align 4
  %tobool30 = icmp ne i32 %64, 0
  br i1 %tobool30, label %land.lhs.true.31, label %if.else.37

land.lhs.true.31:                                 ; preds = %if.then.29
  %65 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %downsampled_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %65, i32 0, i32 10
  %66 = load i32, i32* %downsampled_width, align 4
  %cmp32 = icmp ugt i32 %66, 2
  br i1 %cmp32, label %if.then.33, label %if.else.37

if.then.33:                                       ; preds = %land.lhs.true.31
  %67 = load i32, i32* %ci, align 4
  %idxprom34 = sext i32 %67 to i64
  %68 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %methods35 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %68, i32 0, i32 2
  %arrayidx36 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %methods35, i32 0, i64 %idxprom34
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @h2v1_fancy_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %arrayidx36, align 8
  br label %if.end.41

if.else.37:                                       ; preds = %land.lhs.true.31, %if.then.29
  %69 = load i32, i32* %ci, align 4
  %idxprom38 = sext i32 %69 to i64
  %70 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %methods39 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %70, i32 0, i32 2
  %arrayidx40 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %methods39, i32 0, i64 %idxprom38
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @h2v1_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %arrayidx40, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.37, %if.then.33
  br label %if.end.87

if.else.42:                                       ; preds = %land.lhs.true.27, %if.else.24
  %71 = load i32, i32* %h_in_group, align 4
  %mul43 = mul nsw i32 %71, 2
  %72 = load i32, i32* %h_out_group, align 4
  %cmp44 = icmp eq i32 %mul43, %72
  br i1 %cmp44, label %land.lhs.true.45, label %if.else.64

land.lhs.true.45:                                 ; preds = %if.else.42
  %73 = load i32, i32* %v_in_group, align 4
  %mul46 = mul nsw i32 %73, 2
  %74 = load i32, i32* %v_out_group, align 4
  %cmp47 = icmp eq i32 %mul46, %74
  br i1 %cmp47, label %if.then.48, label %if.else.64

if.then.48:                                       ; preds = %land.lhs.true.45
  %75 = load i32, i32* %do_fancy, align 4
  %tobool49 = icmp ne i32 %75, 0
  br i1 %tobool49, label %land.lhs.true.50, label %if.else.59

land.lhs.true.50:                                 ; preds = %if.then.48
  %76 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %downsampled_width51 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %76, i32 0, i32 10
  %77 = load i32, i32* %downsampled_width51, align 4
  %cmp52 = icmp ugt i32 %77, 2
  br i1 %cmp52, label %if.then.53, label %if.else.59

if.then.53:                                       ; preds = %land.lhs.true.50
  %78 = load i32, i32* %ci, align 4
  %idxprom54 = sext i32 %78 to i64
  %79 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %methods55 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %79, i32 0, i32 2
  %arrayidx56 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %methods55, i32 0, i64 %idxprom54
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @h2v2_fancy_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %arrayidx56, align 8
  %80 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %pub57 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %80, i32 0, i32 0
  %need_context_rows58 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %pub57, i32 0, i32 2
  store i32 1, i32* %need_context_rows58, align 4
  br label %if.end.63

if.else.59:                                       ; preds = %land.lhs.true.50, %if.then.48
  %81 = load i32, i32* %ci, align 4
  %idxprom60 = sext i32 %81 to i64
  %82 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %methods61 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %82, i32 0, i32 2
  %arrayidx62 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %methods61, i32 0, i64 %idxprom60
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @h2v2_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %arrayidx62, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.59, %if.then.53
  br label %if.end.86

if.else.64:                                       ; preds = %land.lhs.true.45, %if.else.42
  %83 = load i32, i32* %h_out_group, align 4
  %84 = load i32, i32* %h_in_group, align 4
  %rem = srem i32 %83, %84
  %cmp65 = icmp eq i32 %rem, 0
  br i1 %cmp65, label %land.lhs.true.66, label %if.else.80

land.lhs.true.66:                                 ; preds = %if.else.64
  %85 = load i32, i32* %v_out_group, align 4
  %86 = load i32, i32* %v_in_group, align 4
  %rem67 = srem i32 %85, %86
  %cmp68 = icmp eq i32 %rem67, 0
  br i1 %cmp68, label %if.then.69, label %if.else.80

if.then.69:                                       ; preds = %land.lhs.true.66
  %87 = load i32, i32* %ci, align 4
  %idxprom70 = sext i32 %87 to i64
  %88 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %methods71 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %88, i32 0, i32 2
  %arrayidx72 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %methods71, i32 0, i64 %idxprom70
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @int_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %arrayidx72, align 8
  %89 = load i32, i32* %h_out_group, align 4
  %90 = load i32, i32* %h_in_group, align 4
  %div73 = sdiv i32 %89, %90
  %conv = trunc i32 %div73 to i8
  %91 = load i32, i32* %ci, align 4
  %idxprom74 = sext i32 %91 to i64
  %92 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %h_expand = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %92, i32 0, i32 6
  %arrayidx75 = getelementptr inbounds [10 x i8], [10 x i8]* %h_expand, i32 0, i64 %idxprom74
  store i8 %conv, i8* %arrayidx75, align 1
  %93 = load i32, i32* %v_out_group, align 4
  %94 = load i32, i32* %v_in_group, align 4
  %div76 = sdiv i32 %93, %94
  %conv77 = trunc i32 %div76 to i8
  %95 = load i32, i32* %ci, align 4
  %idxprom78 = sext i32 %95 to i64
  %96 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %v_expand = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %96, i32 0, i32 7
  %arrayidx79 = getelementptr inbounds [10 x i8], [10 x i8]* %v_expand, i32 0, i64 %idxprom78
  store i8 %conv77, i8* %arrayidx79, align 1
  br label %if.end.85

if.else.80:                                       ; preds = %land.lhs.true.66, %if.else.64
  %97 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err81 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %97, i32 0, i32 0
  %98 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err81, align 8
  %msg_code82 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %98, i32 0, i32 5
  store i32 37, i32* %msg_code82, align 4
  %99 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err83 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %99, i32 0, i32 0
  %100 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err83, align 8
  %error_exit84 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %100, i32 0, i32 0
  %101 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit84, align 8
  %102 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %103 = bitcast %struct.jpeg_decompress_struct* %102 to %struct.jpeg_common_struct*
  call void %101(%struct.jpeg_common_struct* %103)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.80, %if.then.69
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end.63
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.end.41
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.then.20
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.15
  %104 = load i32, i32* %need_buffer, align 4
  %tobool90 = icmp ne i32 %104, 0
  br i1 %tobool90, label %if.then.91, label %if.end.102

if.then.91:                                       ; preds = %if.end.89
  %105 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem92 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %105, i32 0, i32 1
  %106 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem92, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %106, i32 0, i32 2
  %107 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8
  %108 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %109 = bitcast %struct.jpeg_decompress_struct* %108 to %struct.jpeg_common_struct*
  %110 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %110, i32 0, i32 26
  %111 = load i32, i32* %output_width, align 4
  %conv93 = zext i32 %111 to i64
  %112 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_h_samp_factor94 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %112, i32 0, i32 57
  %113 = load i32, i32* %max_h_samp_factor94, align 4
  %conv95 = sext i32 %113 to i64
  %call96 = call i64 @jround_up(i64 %conv93, i64 %conv95)
  %conv97 = trunc i64 %call96 to i32
  %114 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_v_samp_factor98 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %114, i32 0, i32 58
  %115 = load i32, i32* %max_v_samp_factor98, align 4
  %call99 = call i8** %107(%struct.jpeg_common_struct* %109, i32 1, i32 %conv97, i32 %115)
  %116 = load i32, i32* %ci, align 4
  %idxprom100 = sext i32 %116 to i64
  %117 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %color_buf = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %117, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf, i32 0, i64 %idxprom100
  store i8** %call99, i8*** %arrayidx101, align 8
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.91, %if.end.89
  br label %for.inc

for.inc:                                          ; preds = %if.end.102
  %118 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %118, 1
  store i32 %inc, i32* %ci, align 4
  %119 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %119, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_upsample(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %upsample = alloca %struct.my_upsampler*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 81
  %1 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample1, align 8
  %2 = bitcast %struct.jpeg_upsampler* %1 to %struct.my_upsampler*
  store %struct.my_upsampler* %2, %struct.my_upsampler** %upsample, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 58
  %4 = load i32, i32* %max_v_samp_factor, align 4
  %5 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %next_row_out = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %5, i32 0, i32 3
  store i32 %4, i32* %next_row_out, align 4
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 27
  %7 = load i32, i32* %output_height, align 4
  %8 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %rows_to_go = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %8, i32 0, i32 4
  store i32 %7, i32* %rows_to_go, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sep_upsample(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32* %in_row_group_ctr, i32 %in_row_groups_avail, i8** %output_buf, i32* %out_row_ctr, i32 %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %in_row_group_ctr.addr = alloca i32*, align 8
  %in_row_groups_avail.addr = alloca i32, align 4
  %output_buf.addr = alloca i8**, align 8
  %out_row_ctr.addr = alloca i32*, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %upsample = alloca %struct.my_upsampler*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %num_rows = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i8*** %input_buf, i8**** %input_buf.addr, align 8
  store i32* %in_row_group_ctr, i32** %in_row_group_ctr.addr, align 8
  store i32 %in_row_groups_avail, i32* %in_row_groups_avail.addr, align 4
  store i8** %output_buf, i8*** %output_buf.addr, align 8
  store i32* %out_row_ctr, i32** %out_row_ctr.addr, align 8
  store i32 %out_rows_avail, i32* %out_rows_avail.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 81
  %1 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample1, align 8
  %2 = bitcast %struct.jpeg_upsampler* %1 to %struct.my_upsampler*
  store %struct.my_upsampler* %2, %struct.my_upsampler** %upsample, align 8
  %3 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %next_row_out = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %3, i32 0, i32 3
  %4 = load i32, i32* %next_row_out, align 4
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 58
  %6 = load i32, i32* %max_v_samp_factor, align 4
  %cmp = icmp sge i32 %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %ci, align 4
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 43
  %8 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %8, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, i32* %ci, align 4
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 8
  %11 = load i32, i32* %num_components, align 4
  %cmp2 = icmp slt i32 %9, %11
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %methods = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %13, i32 0, i32 2
  %arrayidx = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %methods, i32 0, i64 %idxprom
  %14 = load void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %arrayidx, align 8
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %16 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %17 = load i32, i32* %ci, align 4
  %idxprom3 = sext i32 %17 to i64
  %18 = load i8***, i8**** %input_buf.addr, align 8
  %arrayidx4 = getelementptr inbounds i8**, i8*** %18, i64 %idxprom3
  %19 = load i8**, i8*** %arrayidx4, align 8
  %20 = load i32*, i32** %in_row_group_ctr.addr, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %ci, align 4
  %idxprom5 = sext i32 %22 to i64
  %23 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %rowgroup_height = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %23, i32 0, i32 5
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %rowgroup_height, i32 0, i64 %idxprom5
  %24 = load i32, i32* %arrayidx6, align 4
  %mul = mul i32 %21, %24
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8*, i8** %19, i64 %idx.ext
  %25 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %color_buf = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %25, i32 0, i32 1
  %arraydecay = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf, i32 0, i32 0
  %26 = load i32, i32* %ci, align 4
  %idx.ext7 = sext i32 %26 to i64
  %add.ptr8 = getelementptr inbounds i8**, i8*** %arraydecay, i64 %idx.ext7
  call void %14(%struct.jpeg_decompress_struct* %15, %struct.jpeg_component_info* %16, i8** %add.ptr, i8*** %add.ptr8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %ci, align 4
  %28 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %28, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %next_row_out9 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %29, i32 0, i32 3
  store i32 0, i32* %next_row_out9, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_v_samp_factor10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 58
  %31 = load i32, i32* %max_v_samp_factor10, align 4
  %32 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %next_row_out11 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %32, i32 0, i32 3
  %33 = load i32, i32* %next_row_out11, align 4
  %sub = sub nsw i32 %31, %33
  store i32 %sub, i32* %num_rows, align 4
  %34 = load i32, i32* %num_rows, align 4
  %35 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %rows_to_go = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %35, i32 0, i32 4
  %36 = load i32, i32* %rows_to_go, align 4
  %cmp12 = icmp ugt i32 %34, %36
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end
  %37 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %rows_to_go14 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %37, i32 0, i32 4
  %38 = load i32, i32* %rows_to_go14, align 4
  store i32 %38, i32* %num_rows, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end
  %39 = load i32*, i32** %out_row_ctr.addr, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %out_rows_avail.addr, align 4
  %sub16 = sub i32 %41, %40
  store i32 %sub16, i32* %out_rows_avail.addr, align 4
  %42 = load i32, i32* %num_rows, align 4
  %43 = load i32, i32* %out_rows_avail.addr, align 4
  %cmp17 = icmp ugt i32 %42, %43
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  %44 = load i32, i32* %out_rows_avail.addr, align 4
  store i32 %44, i32* %num_rows, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.15
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cconvert = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 82
  %46 = load %struct.jpeg_color_deconverter*, %struct.jpeg_color_deconverter** %cconvert, align 8
  %color_convert = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %46, i32 0, i32 1
  %47 = load void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %color_convert, align 8
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %49 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %color_buf20 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %49, i32 0, i32 1
  %arraydecay21 = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf20, i32 0, i32 0
  %50 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %next_row_out22 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %50, i32 0, i32 3
  %51 = load i32, i32* %next_row_out22, align 4
  %52 = load i8**, i8*** %output_buf.addr, align 8
  %53 = load i32*, i32** %out_row_ctr.addr, align 8
  %54 = load i32, i32* %53, align 4
  %idx.ext23 = zext i32 %54 to i64
  %add.ptr24 = getelementptr inbounds i8*, i8** %52, i64 %idx.ext23
  %55 = load i32, i32* %num_rows, align 4
  call void %47(%struct.jpeg_decompress_struct* %48, i8*** %arraydecay21, i32 %51, i8** %add.ptr24, i32 %55)
  %56 = load i32, i32* %num_rows, align 4
  %57 = load i32*, i32** %out_row_ctr.addr, align 8
  %58 = load i32, i32* %57, align 4
  %add = add i32 %58, %56
  store i32 %add, i32* %57, align 4
  %59 = load i32, i32* %num_rows, align 4
  %60 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %rows_to_go25 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %60, i32 0, i32 4
  %61 = load i32, i32* %rows_to_go25, align 4
  %sub26 = sub i32 %61, %59
  store i32 %sub26, i32* %rows_to_go25, align 4
  %62 = load i32, i32* %num_rows, align 4
  %63 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %next_row_out27 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %63, i32 0, i32 3
  %64 = load i32, i32* %next_row_out27, align 4
  %add28 = add i32 %64, %62
  store i32 %add28, i32* %next_row_out27, align 4
  %65 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %next_row_out29 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %65, i32 0, i32 3
  %66 = load i32, i32* %next_row_out29, align 4
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_v_samp_factor30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %67, i32 0, i32 58
  %68 = load i32, i32* %max_v_samp_factor30, align 4
  %cmp31 = icmp sge i32 %66, %68
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.19
  %69 = load i32*, i32** %in_row_group_ctr.addr, align 8
  %70 = load i32, i32* %69, align 4
  %inc33 = add i32 %70, 1
  store i32 %inc33, i32* %69, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end.19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @noop_upsample(%struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8*** %output_data_ptr) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data_ptr.addr = alloca i8***, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8
  store i8** %input_data, i8*** %input_data.addr, align 8
  store i8*** %output_data_ptr, i8**** %output_data_ptr.addr, align 8
  %0 = load i8***, i8**** %output_data_ptr.addr, align 8
  store i8** null, i8*** %0, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fullsize_upsample(%struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8*** %output_data_ptr) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data_ptr.addr = alloca i8***, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8
  store i8** %input_data, i8*** %input_data.addr, align 8
  store i8*** %output_data_ptr, i8**** %output_data_ptr.addr, align 8
  %0 = load i8**, i8*** %input_data.addr, align 8
  %1 = load i8***, i8**** %output_data_ptr.addr, align 8
  store i8** %0, i8*** %1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @h2v1_fancy_upsample(%struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8*** %output_data_ptr) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data_ptr.addr = alloca i8***, align 8
  %output_data = alloca i8**, align 8
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %invalue = alloca i32, align 4
  %colctr = alloca i32, align 4
  %inrow = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8
  store i8** %input_data, i8*** %input_data.addr, align 8
  store i8*** %output_data_ptr, i8**** %output_data_ptr.addr, align 8
  %0 = load i8***, i8**** %output_data_ptr.addr, align 8
  %1 = load i8**, i8*** %0, align 8
  store i8** %1, i8*** %output_data, align 8
  store i32 0, i32* %inrow, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.40, %entry
  %2 = load i32, i32* %inrow, align 4
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 58
  %4 = load i32, i32* %max_v_samp_factor, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end.41

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %inrow, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8**, i8*** %input_data.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  store i8* %7, i8** %inptr, align 8
  %8 = load i32, i32* %inrow, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load i8**, i8*** %output_data, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %9, i64 %idxprom1
  %10 = load i8*, i8** %arrayidx2, align 8
  store i8* %10, i8** %outptr, align 8
  %11 = load i8*, i8** %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %inptr, align 8
  %12 = load i8, i8* %11, align 1
  %conv = zext i8 %12 to i32
  store i32 %conv, i32* %invalue, align 4
  %13 = load i32, i32* %invalue, align 4
  %conv3 = trunc i32 %13 to i8
  %14 = load i8*, i8** %outptr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr4, i8** %outptr, align 8
  store i8 %conv3, i8* %14, align 1
  %15 = load i32, i32* %invalue, align 4
  %mul = mul nsw i32 %15, 3
  %16 = load i8*, i8** %inptr, align 8
  %17 = load i8, i8* %16, align 1
  %conv5 = zext i8 %17 to i32
  %add = add nsw i32 %mul, %conv5
  %add6 = add nsw i32 %add, 2
  %shr = ashr i32 %add6, 2
  %conv7 = trunc i32 %shr to i8
  %18 = load i8*, i8** %outptr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr8, i8** %outptr, align 8
  store i8 %conv7, i8* %18, align 1
  %19 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8
  %downsampled_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %19, i32 0, i32 10
  %20 = load i32, i32* %downsampled_width, align 4
  %sub = sub i32 %20, 2
  store i32 %sub, i32* %colctr, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %21 = load i32, i32* %colctr, align 4
  %cmp10 = icmp ugt i32 %21, 0
  br i1 %cmp10, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.9
  %22 = load i8*, i8** %inptr, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr13, i8** %inptr, align 8
  %23 = load i8, i8* %22, align 1
  %conv14 = zext i8 %23 to i32
  %mul15 = mul nsw i32 %conv14, 3
  store i32 %mul15, i32* %invalue, align 4
  %24 = load i32, i32* %invalue, align 4
  %25 = load i8*, i8** %inptr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %25, i64 -2
  %26 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %26 to i32
  %add18 = add nsw i32 %24, %conv17
  %add19 = add nsw i32 %add18, 1
  %shr20 = ashr i32 %add19, 2
  %conv21 = trunc i32 %shr20 to i8
  %27 = load i8*, i8** %outptr, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr22, i8** %outptr, align 8
  store i8 %conv21, i8* %27, align 1
  %28 = load i32, i32* %invalue, align 4
  %29 = load i8*, i8** %inptr, align 8
  %30 = load i8, i8* %29, align 1
  %conv23 = zext i8 %30 to i32
  %add24 = add nsw i32 %28, %conv23
  %add25 = add nsw i32 %add24, 2
  %shr26 = ashr i32 %add25, 2
  %conv27 = trunc i32 %shr26 to i8
  %31 = load i8*, i8** %outptr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr28, i8** %outptr, align 8
  store i8 %conv27, i8* %31, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %32 = load i32, i32* %colctr, align 4
  %dec = add i32 %32, -1
  store i32 %dec, i32* %colctr, align 4
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %33 = load i8*, i8** %inptr, align 8
  %34 = load i8, i8* %33, align 1
  %conv29 = zext i8 %34 to i32
  store i32 %conv29, i32* %invalue, align 4
  %35 = load i32, i32* %invalue, align 4
  %mul30 = mul nsw i32 %35, 3
  %36 = load i8*, i8** %inptr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %36, i64 -1
  %37 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %37 to i32
  %add33 = add nsw i32 %mul30, %conv32
  %add34 = add nsw i32 %add33, 1
  %shr35 = ashr i32 %add34, 2
  %conv36 = trunc i32 %shr35 to i8
  %38 = load i8*, i8** %outptr, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr37, i8** %outptr, align 8
  store i8 %conv36, i8* %38, align 1
  %39 = load i32, i32* %invalue, align 4
  %conv38 = trunc i32 %39 to i8
  %40 = load i8*, i8** %outptr, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr39, i8** %outptr, align 8
  store i8 %conv38, i8* %40, align 1
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.end
  %41 = load i32, i32* %inrow, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %inrow, align 4
  br label %for.cond

for.end.41:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @h2v1_upsample(%struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8*** %output_data_ptr) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data_ptr.addr = alloca i8***, align 8
  %output_data = alloca i8**, align 8
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %invalue = alloca i8, align 1
  %outend = alloca i8*, align 8
  %inrow = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8
  store i8** %input_data, i8*** %input_data.addr, align 8
  store i8*** %output_data_ptr, i8**** %output_data_ptr.addr, align 8
  %0 = load i8***, i8**** %output_data_ptr.addr, align 8
  %1 = load i8**, i8*** %0, align 8
  store i8** %1, i8*** %output_data, align 8
  store i32 0, i32* %inrow, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %inrow, align 4
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 58
  %4 = load i32, i32* %max_v_samp_factor, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %inrow, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8**, i8*** %input_data.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  store i8* %7, i8** %inptr, align 8
  %8 = load i32, i32* %inrow, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load i8**, i8*** %output_data, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %9, i64 %idxprom1
  %10 = load i8*, i8** %arrayidx2, align 8
  store i8* %10, i8** %outptr, align 8
  %11 = load i8*, i8** %outptr, align 8
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 26
  %13 = load i32, i32* %output_width, align 4
  %idx.ext = zext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr, i8** %outend, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %14 = load i8*, i8** %outptr, align 8
  %15 = load i8*, i8** %outend, align 8
  %cmp3 = icmp ult i8* %14, %15
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i8*, i8** %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %inptr, align 8
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %invalue, align 1
  %18 = load i8, i8* %invalue, align 1
  %19 = load i8*, i8** %outptr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr4, i8** %outptr, align 8
  store i8 %18, i8* %19, align 1
  %20 = load i8, i8* %invalue, align 1
  %21 = load i8*, i8** %outptr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr5, i8** %outptr, align 8
  store i8 %20, i8* %21, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %22 = load i32, i32* %inrow, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %inrow, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @h2v2_fancy_upsample(%struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8*** %output_data_ptr) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data_ptr.addr = alloca i8***, align 8
  %output_data = alloca i8**, align 8
  %inptr0 = alloca i8*, align 8
  %inptr1 = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %thiscolsum = alloca i32, align 4
  %lastcolsum = alloca i32, align 4
  %nextcolsum = alloca i32, align 4
  %colctr = alloca i32, align 4
  %inrow = alloca i32, align 4
  %outrow = alloca i32, align 4
  %v = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8
  store i8** %input_data, i8*** %input_data.addr, align 8
  store i8*** %output_data_ptr, i8**** %output_data_ptr.addr, align 8
  %0 = load i8***, i8**** %output_data_ptr.addr, align 8
  %1 = load i8**, i8*** %0, align 8
  store i8** %1, i8*** %output_data, align 8
  store i32 0, i32* %outrow, align 4
  store i32 0, i32* %inrow, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.64, %entry
  %2 = load i32, i32* %outrow, align 4
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 58
  %4 = load i32, i32* %max_v_samp_factor, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %v, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.62, %while.body
  %5 = load i32, i32* %v, align 4
  %cmp1 = icmp slt i32 %5, 2
  br i1 %cmp1, label %for.body, label %for.end.64

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %inrow, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8**, i8*** %input_data.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  store i8* %8, i8** %inptr0, align 8
  %9 = load i32, i32* %v, align 4
  %cmp2 = icmp eq i32 %9, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %inrow, align 4
  %sub = sub nsw i32 %10, 1
  %idxprom3 = sext i32 %sub to i64
  %11 = load i8**, i8*** %input_data.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %11, i64 %idxprom3
  %12 = load i8*, i8** %arrayidx4, align 8
  store i8* %12, i8** %inptr1, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %13 = load i32, i32* %inrow, align 4
  %add = add nsw i32 %13, 1
  %idxprom5 = sext i32 %add to i64
  %14 = load i8**, i8*** %input_data.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %14, i64 %idxprom5
  %15 = load i8*, i8** %arrayidx6, align 8
  store i8* %15, i8** %inptr1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load i32, i32* %outrow, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %outrow, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = load i8**, i8*** %output_data, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %17, i64 %idxprom7
  %18 = load i8*, i8** %arrayidx8, align 8
  store i8* %18, i8** %outptr, align 8
  %19 = load i8*, i8** %inptr0, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %inptr0, align 8
  %20 = load i8, i8* %19, align 1
  %conv = zext i8 %20 to i32
  %mul = mul nsw i32 %conv, 3
  %21 = load i8*, i8** %inptr1, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr9, i8** %inptr1, align 8
  %22 = load i8, i8* %21, align 1
  %conv10 = zext i8 %22 to i32
  %add11 = add nsw i32 %mul, %conv10
  store i32 %add11, i32* %thiscolsum, align 4
  %23 = load i8*, i8** %inptr0, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr12, i8** %inptr0, align 8
  %24 = load i8, i8* %23, align 1
  %conv13 = zext i8 %24 to i32
  %mul14 = mul nsw i32 %conv13, 3
  %25 = load i8*, i8** %inptr1, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr15, i8** %inptr1, align 8
  %26 = load i8, i8* %25, align 1
  %conv16 = zext i8 %26 to i32
  %add17 = add nsw i32 %mul14, %conv16
  store i32 %add17, i32* %nextcolsum, align 4
  %27 = load i32, i32* %thiscolsum, align 4
  %mul18 = mul nsw i32 %27, 4
  %add19 = add nsw i32 %mul18, 8
  %shr = ashr i32 %add19, 4
  %conv20 = trunc i32 %shr to i8
  %28 = load i8*, i8** %outptr, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr21, i8** %outptr, align 8
  store i8 %conv20, i8* %28, align 1
  %29 = load i32, i32* %thiscolsum, align 4
  %mul22 = mul nsw i32 %29, 3
  %30 = load i32, i32* %nextcolsum, align 4
  %add23 = add nsw i32 %mul22, %30
  %add24 = add nsw i32 %add23, 7
  %shr25 = ashr i32 %add24, 4
  %conv26 = trunc i32 %shr25 to i8
  %31 = load i8*, i8** %outptr, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr27, i8** %outptr, align 8
  store i8 %conv26, i8* %31, align 1
  %32 = load i32, i32* %thiscolsum, align 4
  store i32 %32, i32* %lastcolsum, align 4
  %33 = load i32, i32* %nextcolsum, align 4
  store i32 %33, i32* %thiscolsum, align 4
  %34 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8
  %downsampled_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %34, i32 0, i32 10
  %35 = load i32, i32* %downsampled_width, align 4
  %sub28 = sub i32 %35, 2
  store i32 %sub28, i32* %colctr, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc, %if.end
  %36 = load i32, i32* %colctr, align 4
  %cmp30 = icmp ugt i32 %36, 0
  br i1 %cmp30, label %for.body.32, label %for.end

for.body.32:                                      ; preds = %for.cond.29
  %37 = load i8*, i8** %inptr0, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr33, i8** %inptr0, align 8
  %38 = load i8, i8* %37, align 1
  %conv34 = zext i8 %38 to i32
  %mul35 = mul nsw i32 %conv34, 3
  %39 = load i8*, i8** %inptr1, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr36, i8** %inptr1, align 8
  %40 = load i8, i8* %39, align 1
  %conv37 = zext i8 %40 to i32
  %add38 = add nsw i32 %mul35, %conv37
  store i32 %add38, i32* %nextcolsum, align 4
  %41 = load i32, i32* %thiscolsum, align 4
  %mul39 = mul nsw i32 %41, 3
  %42 = load i32, i32* %lastcolsum, align 4
  %add40 = add nsw i32 %mul39, %42
  %add41 = add nsw i32 %add40, 8
  %shr42 = ashr i32 %add41, 4
  %conv43 = trunc i32 %shr42 to i8
  %43 = load i8*, i8** %outptr, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr44, i8** %outptr, align 8
  store i8 %conv43, i8* %43, align 1
  %44 = load i32, i32* %thiscolsum, align 4
  %mul45 = mul nsw i32 %44, 3
  %45 = load i32, i32* %nextcolsum, align 4
  %add46 = add nsw i32 %mul45, %45
  %add47 = add nsw i32 %add46, 7
  %shr48 = ashr i32 %add47, 4
  %conv49 = trunc i32 %shr48 to i8
  %46 = load i8*, i8** %outptr, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr50, i8** %outptr, align 8
  store i8 %conv49, i8* %46, align 1
  %47 = load i32, i32* %thiscolsum, align 4
  store i32 %47, i32* %lastcolsum, align 4
  %48 = load i32, i32* %nextcolsum, align 4
  store i32 %48, i32* %thiscolsum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.32
  %49 = load i32, i32* %colctr, align 4
  %dec = add i32 %49, -1
  store i32 %dec, i32* %colctr, align 4
  br label %for.cond.29

for.end:                                          ; preds = %for.cond.29
  %50 = load i32, i32* %thiscolsum, align 4
  %mul51 = mul nsw i32 %50, 3
  %51 = load i32, i32* %lastcolsum, align 4
  %add52 = add nsw i32 %mul51, %51
  %add53 = add nsw i32 %add52, 8
  %shr54 = ashr i32 %add53, 4
  %conv55 = trunc i32 %shr54 to i8
  %52 = load i8*, i8** %outptr, align 8
  %incdec.ptr56 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr56, i8** %outptr, align 8
  store i8 %conv55, i8* %52, align 1
  %53 = load i32, i32* %thiscolsum, align 4
  %mul57 = mul nsw i32 %53, 4
  %add58 = add nsw i32 %mul57, 7
  %shr59 = ashr i32 %add58, 4
  %conv60 = trunc i32 %shr59 to i8
  %54 = load i8*, i8** %outptr, align 8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr61, i8** %outptr, align 8
  store i8 %conv60, i8* %54, align 1
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.end
  %55 = load i32, i32* %v, align 4
  %inc63 = add nsw i32 %55, 1
  store i32 %inc63, i32* %v, align 4
  br label %for.cond

for.end.64:                                       ; preds = %for.cond
  %56 = load i32, i32* %inrow, align 4
  %inc65 = add nsw i32 %56, 1
  store i32 %inc65, i32* %inrow, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @h2v2_upsample(%struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8*** %output_data_ptr) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data_ptr.addr = alloca i8***, align 8
  %output_data = alloca i8**, align 8
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %invalue = alloca i8, align 1
  %outend = alloca i8*, align 8
  %inrow = alloca i32, align 4
  %outrow = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8
  store i8** %input_data, i8*** %input_data.addr, align 8
  store i8*** %output_data_ptr, i8**** %output_data_ptr.addr, align 8
  %0 = load i8***, i8**** %output_data_ptr.addr, align 8
  %1 = load i8**, i8*** %0, align 8
  store i8** %1, i8*** %output_data, align 8
  store i32 0, i32* %outrow, align 4
  store i32 0, i32* %inrow, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %2 = load i32, i32* %outrow, align 4
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 58
  %4 = load i32, i32* %max_v_samp_factor, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %while.body, label %while.end.10

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %inrow, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8**, i8*** %input_data.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  store i8* %7, i8** %inptr, align 8
  %8 = load i32, i32* %outrow, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load i8**, i8*** %output_data, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %9, i64 %idxprom1
  %10 = load i8*, i8** %arrayidx2, align 8
  store i8* %10, i8** %outptr, align 8
  %11 = load i8*, i8** %outptr, align 8
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 26
  %13 = load i32, i32* %output_width, align 4
  %idx.ext = zext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr, i8** %outend, align 8
  br label %while.cond.3

while.cond.3:                                     ; preds = %while.body.5, %while.body
  %14 = load i8*, i8** %outptr, align 8
  %15 = load i8*, i8** %outend, align 8
  %cmp4 = icmp ult i8* %14, %15
  br i1 %cmp4, label %while.body.5, label %while.end

while.body.5:                                     ; preds = %while.cond.3
  %16 = load i8*, i8** %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %inptr, align 8
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %invalue, align 1
  %18 = load i8, i8* %invalue, align 1
  %19 = load i8*, i8** %outptr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr6, i8** %outptr, align 8
  store i8 %18, i8* %19, align 1
  %20 = load i8, i8* %invalue, align 1
  %21 = load i8*, i8** %outptr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr7, i8** %outptr, align 8
  store i8 %20, i8* %21, align 1
  br label %while.cond.3

while.end:                                        ; preds = %while.cond.3
  %22 = load i8**, i8*** %output_data, align 8
  %23 = load i32, i32* %outrow, align 4
  %24 = load i8**, i8*** %output_data, align 8
  %25 = load i32, i32* %outrow, align 4
  %add = add nsw i32 %25, 1
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 26
  %27 = load i32, i32* %output_width8, align 4
  call void @jcopy_sample_rows(i8** %22, i32 %23, i8** %24, i32 %add, i32 1, i32 %27)
  %28 = load i32, i32* %inrow, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %inrow, align 4
  %29 = load i32, i32* %outrow, align 4
  %add9 = add nsw i32 %29, 2
  store i32 %add9, i32* %outrow, align 4
  br label %while.cond

while.end.10:                                     ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @int_upsample(%struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8*** %output_data_ptr) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data_ptr.addr = alloca i8***, align 8
  %upsample = alloca %struct.my_upsampler*, align 8
  %output_data = alloca i8**, align 8
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %invalue = alloca i8, align 1
  %h = alloca i32, align 4
  %outend = alloca i8*, align 8
  %h_expand = alloca i32, align 4
  %v_expand = alloca i32, align 4
  %inrow = alloca i32, align 4
  %outrow = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8
  store i8** %input_data, i8*** %input_data.addr, align 8
  store i8*** %output_data_ptr, i8**** %output_data_ptr.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 81
  %1 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample1, align 8
  %2 = bitcast %struct.jpeg_upsampler* %1 to %struct.my_upsampler*
  store %struct.my_upsampler* %2, %struct.my_upsampler** %upsample, align 8
  %3 = load i8***, i8**** %output_data_ptr.addr, align 8
  %4 = load i8**, i8*** %3, align 8
  store i8** %4, i8*** %output_data, align 8
  %5 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %5, i32 0, i32 1
  %6 = load i32, i32* %component_index, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %h_expand2 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %7, i32 0, i32 6
  %arrayidx = getelementptr inbounds [10 x i8], [10 x i8]* %h_expand2, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  store i32 %conv, i32* %h_expand, align 4
  %9 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8
  %component_index3 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %9, i32 0, i32 1
  %10 = load i32, i32* %component_index3, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8
  %v_expand5 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %11, i32 0, i32 7
  %arrayidx6 = getelementptr inbounds [10 x i8], [10 x i8]* %v_expand5, i32 0, i64 %idxprom4
  %12 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %12 to i32
  store i32 %conv7, i32* %v_expand, align 4
  store i32 0, i32* %outrow, align 4
  store i32 0, i32* %inrow, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %13 = load i32, i32* %outrow, align 4
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 58
  %15 = load i32, i32* %max_v_samp_factor, align 4
  %cmp = icmp slt i32 %13, %15
  br i1 %cmp, label %while.body, label %while.end.24

while.body:                                       ; preds = %while.cond
  %16 = load i32, i32* %inrow, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load i8**, i8*** %input_data.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %17, i64 %idxprom9
  %18 = load i8*, i8** %arrayidx10, align 8
  store i8* %18, i8** %inptr, align 8
  %19 = load i32, i32* %outrow, align 4
  %idxprom11 = sext i32 %19 to i64
  %20 = load i8**, i8*** %output_data, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %20, i64 %idxprom11
  %21 = load i8*, i8** %arrayidx12, align 8
  store i8* %21, i8** %outptr, align 8
  %22 = load i8*, i8** %outptr, align 8
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 26
  %24 = load i32, i32* %output_width, align 4
  %idx.ext = zext i32 %24 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr, i8** %outend, align 8
  br label %while.cond.13

while.cond.13:                                    ; preds = %for.end, %while.body
  %25 = load i8*, i8** %outptr, align 8
  %26 = load i8*, i8** %outend, align 8
  %cmp14 = icmp ult i8* %25, %26
  br i1 %cmp14, label %while.body.16, label %while.end

while.body.16:                                    ; preds = %while.cond.13
  %27 = load i8*, i8** %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %inptr, align 8
  %28 = load i8, i8* %27, align 1
  store i8 %28, i8* %invalue, align 1
  %29 = load i32, i32* %h_expand, align 4
  store i32 %29, i32* %h, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body.16
  %30 = load i32, i32* %h, align 4
  %cmp17 = icmp sgt i32 %30, 0
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i8, i8* %invalue, align 1
  %32 = load i8*, i8** %outptr, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr19, i8** %outptr, align 8
  store i8 %31, i8* %32, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %h, align 4
  %dec = add nsw i32 %33, -1
  store i32 %dec, i32* %h, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond.13

while.end:                                        ; preds = %while.cond.13
  %34 = load i32, i32* %v_expand, align 4
  %cmp20 = icmp sgt i32 %34, 1
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %35 = load i8**, i8*** %output_data, align 8
  %36 = load i32, i32* %outrow, align 4
  %37 = load i8**, i8*** %output_data, align 8
  %38 = load i32, i32* %outrow, align 4
  %add = add nsw i32 %38, 1
  %39 = load i32, i32* %v_expand, align 4
  %sub = sub nsw i32 %39, 1
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 26
  %41 = load i32, i32* %output_width22, align 4
  call void @jcopy_sample_rows(i8** %35, i32 %36, i8** %37, i32 %add, i32 %sub, i32 %41)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %42 = load i32, i32* %inrow, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %inrow, align 4
  %43 = load i32, i32* %v_expand, align 4
  %44 = load i32, i32* %outrow, align 4
  %add23 = add nsw i32 %44, %43
  store i32 %add23, i32* %outrow, align 4
  br label %while.cond

while.end.24:                                     ; preds = %while.cond
  ret void
}

declare i64 @jround_up(i64, i64) #1

declare void @jcopy_sample_rows(i8**, i32, i8**, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
