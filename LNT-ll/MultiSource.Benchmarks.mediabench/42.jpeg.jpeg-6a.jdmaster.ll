; ModuleID = './MultiSource.Benchmarks.mediabench/42.jpeg.jpeg-6a.jdmaster.bc'
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
%struct.my_decomp_master = type { %struct.jpeg_decomp_master, i32, i32, %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer* }

; Function Attrs: nounwind uwtable
define void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %ssize = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 4
  %1 = load i32, i32* %global_state, align 4
  %cmp = icmp ne i32 %1, 202
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 0
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 5
  store i32 18, i32* %msg_code, align 4
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 4
  %5 = load i32, i32* %global_state1, align 4
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %5, i32* %arrayidx, align 4
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 0
  %10 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %12 = bitcast %struct.jpeg_decompress_struct* %11 to %struct.jpeg_common_struct*
  call void %10(%struct.jpeg_common_struct* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %scale_num = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 11
  %14 = load i32, i32* %scale_num, align 4
  %mul = mul i32 %14, 8
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %scale_denom = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 12
  %16 = load i32, i32* %scale_denom, align 4
  %cmp4 = icmp ule i32 %mul, %16
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 6
  %18 = load i32, i32* %image_width, align 4
  %conv = zext i32 %18 to i64
  %call = call i64 @jdiv_round_up(i64 %conv, i64 8)
  %conv6 = trunc i64 %call to i32
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 26
  store i32 %conv6, i32* %output_width, align 4
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 7
  %21 = load i32, i32* %image_height, align 4
  %conv7 = zext i32 %21 to i64
  %call8 = call i64 @jdiv_round_up(i64 %conv7, i64 8)
  %conv9 = trunc i64 %call8 to i32
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 27
  store i32 %conv9, i32* %output_height, align 4
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 59
  store i32 1, i32* %min_DCT_scaled_size, align 4
  br label %if.end.53

if.else:                                          ; preds = %if.end
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %scale_num10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 11
  %25 = load i32, i32* %scale_num10, align 4
  %mul11 = mul i32 %25, 4
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %scale_denom12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 12
  %27 = load i32, i32* %scale_denom12, align 4
  %cmp13 = icmp ule i32 %mul11, %27
  br i1 %cmp13, label %if.then.15, label %if.else.27

if.then.15:                                       ; preds = %if.else
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %image_width16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 6
  %29 = load i32, i32* %image_width16, align 4
  %conv17 = zext i32 %29 to i64
  %call18 = call i64 @jdiv_round_up(i64 %conv17, i64 4)
  %conv19 = trunc i64 %call18 to i32
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 26
  store i32 %conv19, i32* %output_width20, align 4
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %image_height21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 7
  %32 = load i32, i32* %image_height21, align 4
  %conv22 = zext i32 %32 to i64
  %call23 = call i64 @jdiv_round_up(i64 %conv22, i64 4)
  %conv24 = trunc i64 %call23 to i32
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_height25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 27
  store i32 %conv24, i32* %output_height25, align 4
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 59
  store i32 2, i32* %min_DCT_scaled_size26, align 4
  br label %if.end.52

if.else.27:                                       ; preds = %if.else
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %scale_num28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 11
  %36 = load i32, i32* %scale_num28, align 4
  %mul29 = mul i32 %36, 2
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %scale_denom30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 12
  %38 = load i32, i32* %scale_denom30, align 4
  %cmp31 = icmp ule i32 %mul29, %38
  br i1 %cmp31, label %if.then.33, label %if.else.45

if.then.33:                                       ; preds = %if.else.27
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %image_width34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 6
  %40 = load i32, i32* %image_width34, align 4
  %conv35 = zext i32 %40 to i64
  %call36 = call i64 @jdiv_round_up(i64 %conv35, i64 2)
  %conv37 = trunc i64 %call36 to i32
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 26
  store i32 %conv37, i32* %output_width38, align 4
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %image_height39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 7
  %43 = load i32, i32* %image_height39, align 4
  %conv40 = zext i32 %43 to i64
  %call41 = call i64 @jdiv_round_up(i64 %conv40, i64 2)
  %conv42 = trunc i64 %call41 to i32
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_height43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 27
  store i32 %conv42, i32* %output_height43, align 4
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 59
  store i32 4, i32* %min_DCT_scaled_size44, align 4
  br label %if.end.51

if.else.45:                                       ; preds = %if.else.27
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %image_width46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 6
  %47 = load i32, i32* %image_width46, align 4
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 26
  store i32 %47, i32* %output_width47, align 4
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %image_height48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 7
  %50 = load i32, i32* %image_height48, align 4
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_height49 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 27
  store i32 %50, i32* %output_height49, align 4
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %52, i32 0, i32 59
  store i32 8, i32* %min_DCT_scaled_size50, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.45, %if.then.33
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.15
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.5
  store i32 0, i32* %ci, align 4
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 43
  %54 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %54, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.53
  %55 = load i32, i32* %ci, align 4
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %56, i32 0, i32 8
  %57 = load i32, i32* %num_components, align 4
  %cmp54 = icmp slt i32 %55, %57
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size56 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %58, i32 0, i32 59
  %59 = load i32, i32* %min_DCT_scaled_size56, align 4
  store i32 %59, i32* %ssize, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %60 = load i32, i32* %ssize, align 4
  %cmp57 = icmp slt i32 %60, 8
  br i1 %cmp57, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %61 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %61, i32 0, i32 2
  %62 = load i32, i32* %h_samp_factor, align 4
  %63 = load i32, i32* %ssize, align 4
  %mul59 = mul nsw i32 %62, %63
  %mul60 = mul nsw i32 %mul59, 2
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 57
  %65 = load i32, i32* %max_h_samp_factor, align 4
  %66 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size61 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %66, i32 0, i32 59
  %67 = load i32, i32* %min_DCT_scaled_size61, align 4
  %mul62 = mul nsw i32 %65, %67
  %cmp63 = icmp sle i32 %mul60, %mul62
  br i1 %cmp63, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %68 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %68, i32 0, i32 3
  %69 = load i32, i32* %v_samp_factor, align 4
  %70 = load i32, i32* %ssize, align 4
  %mul65 = mul nsw i32 %69, %70
  %mul66 = mul nsw i32 %mul65, 2
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 58
  %72 = load i32, i32* %max_v_samp_factor, align 4
  %73 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size67 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %73, i32 0, i32 59
  %74 = load i32, i32* %min_DCT_scaled_size67, align 4
  %mul68 = mul nsw i32 %72, %74
  %cmp69 = icmp sle i32 %mul66, %mul68
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %75 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp69, %land.rhs ]
  br i1 %75, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %76 = load i32, i32* %ssize, align 4
  %mul71 = mul nsw i32 %76, 2
  store i32 %mul71, i32* %ssize, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %77 = load i32, i32* %ssize, align 4
  %78 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %78, i32 0, i32 9
  store i32 %77, i32* %DCT_scaled_size, align 4
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %79 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %79, 1
  store i32 %inc, i32* %ci, align 4
  %80 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %80, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %ci, align 4
  %81 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %81, i32 0, i32 43
  %82 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info72, align 8
  store %struct.jpeg_component_info* %82, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.102, %for.end
  %83 = load i32, i32* %ci, align 4
  %84 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components74 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %84, i32 0, i32 8
  %85 = load i32, i32* %num_components74, align 4
  %cmp75 = icmp slt i32 %83, %85
  br i1 %cmp75, label %for.body.77, label %for.end.105

for.body.77:                                      ; preds = %for.cond.73
  %86 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %image_width78 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %86, i32 0, i32 6
  %87 = load i32, i32* %image_width78, align 4
  %conv79 = zext i32 %87 to i64
  %88 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor80 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i32 0, i32 2
  %89 = load i32, i32* %h_samp_factor80, align 4
  %90 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %DCT_scaled_size81 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %90, i32 0, i32 9
  %91 = load i32, i32* %DCT_scaled_size81, align 4
  %mul82 = mul nsw i32 %89, %91
  %conv83 = sext i32 %mul82 to i64
  %mul84 = mul nsw i64 %conv79, %conv83
  %92 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_h_samp_factor85 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %92, i32 0, i32 57
  %93 = load i32, i32* %max_h_samp_factor85, align 4
  %mul86 = mul nsw i32 %93, 8
  %conv87 = sext i32 %mul86 to i64
  %call88 = call i64 @jdiv_round_up(i64 %mul84, i64 %conv87)
  %conv89 = trunc i64 %call88 to i32
  %94 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %downsampled_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %94, i32 0, i32 10
  store i32 %conv89, i32* %downsampled_width, align 4
  %95 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %image_height90 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %95, i32 0, i32 7
  %96 = load i32, i32* %image_height90, align 4
  %conv91 = zext i32 %96 to i64
  %97 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor92 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %97, i32 0, i32 3
  %98 = load i32, i32* %v_samp_factor92, align 4
  %99 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %DCT_scaled_size93 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %99, i32 0, i32 9
  %100 = load i32, i32* %DCT_scaled_size93, align 4
  %mul94 = mul nsw i32 %98, %100
  %conv95 = sext i32 %mul94 to i64
  %mul96 = mul nsw i64 %conv91, %conv95
  %101 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_v_samp_factor97 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %101, i32 0, i32 58
  %102 = load i32, i32* %max_v_samp_factor97, align 4
  %mul98 = mul nsw i32 %102, 8
  %conv99 = sext i32 %mul98 to i64
  %call100 = call i64 @jdiv_round_up(i64 %mul96, i64 %conv99)
  %conv101 = trunc i64 %call100 to i32
  %103 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %downsampled_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %103, i32 0, i32 11
  store i32 %conv101, i32* %downsampled_height, align 4
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.body.77
  %104 = load i32, i32* %ci, align 4
  %inc103 = add nsw i32 %104, 1
  store i32 %inc103, i32* %ci, align 4
  %105 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr104 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %105, i32 1
  store %struct.jpeg_component_info* %incdec.ptr104, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond.73

for.end.105:                                      ; preds = %for.cond.73
  %106 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %106, i32 0, i32 10
  %107 = load i32, i32* %out_color_space, align 4
  switch i32 %107, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.106
    i32 3, label %sw.bb.106
    i32 4, label %sw.bb.108
    i32 5, label %sw.bb.108
  ]

sw.bb:                                            ; preds = %for.end.105
  %108 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %108, i32 0, i32 28
  store i32 1, i32* %out_color_components, align 4
  br label %sw.epilog

sw.bb.106:                                        ; preds = %for.end.105, %for.end.105
  %109 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components107 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %109, i32 0, i32 28
  store i32 3, i32* %out_color_components107, align 4
  br label %sw.epilog

sw.bb.108:                                        ; preds = %for.end.105, %for.end.105
  %110 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components109 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %110, i32 0, i32 28
  store i32 4, i32* %out_color_components109, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.end.105
  %111 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components110 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %111, i32 0, i32 8
  %112 = load i32, i32* %num_components110, align 4
  %113 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components111 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %113, i32 0, i32 28
  store i32 %112, i32* %out_color_components111, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.108, %sw.bb.106, %sw.bb
  %114 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %114, i32 0, i32 19
  %115 = load i32, i32* %quantize_colors, align 4
  %tobool = icmp ne i32 %115, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog
  %116 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components112 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %116, i32 0, i32 28
  %117 = load i32, i32* %out_color_components112, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %117, %cond.false ]
  %118 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %118, i32 0, i32 29
  store i32 %cond, i32* %output_components, align 4
  %119 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call113 = call i32 @use_merged_upsample(%struct.jpeg_decompress_struct* %119)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.then.115, label %if.else.117

if.then.115:                                      ; preds = %cond.end
  %120 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_v_samp_factor116 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %120, i32 0, i32 58
  %121 = load i32, i32* %max_v_samp_factor116, align 4
  %122 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %rec_outbuf_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %122, i32 0, i32 30
  store i32 %121, i32* %rec_outbuf_height, align 4
  br label %if.end.119

if.else.117:                                      ; preds = %cond.end
  %123 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %rec_outbuf_height118 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %123, i32 0, i32 30
  store i32 1, i32* %rec_outbuf_height118, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.117, %if.then.115
  ret void
}

declare i64 @jdiv_round_up(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @use_merged_upsample(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %do_fancy_upsampling = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 17
  %1 = load i32, i32* %do_fancy_upsampling, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %CCIR601_sampling = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 56
  %3 = load i32, i32* %CCIR601_sampling, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 9
  %5 = load i32, i32* %jpeg_color_space, align 4
  %cmp = icmp ne i32 %5, 3
  br i1 %cmp, label %if.then.8, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %if.end
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 8
  %7 = load i32, i32* %num_components, align 4
  %cmp3 = icmp ne i32 %7, 3
  br i1 %cmp3, label %if.then.8, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 10
  %9 = load i32, i32* %out_color_space, align 4
  %cmp5 = icmp ne i32 %9, 2
  br i1 %cmp5, label %if.then.8, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.4
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 28
  %11 = load i32, i32* %out_color_components, align 4
  %cmp7 = icmp ne i32 %11, 3
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false.6, %lor.lhs.false.4, %lor.lhs.false.2, %if.end
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %lor.lhs.false.6
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 43
  %13 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  %arrayidx = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %13, i64 0
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx, i32 0, i32 2
  %14 = load i32, i32* %h_samp_factor, align 4
  %cmp10 = icmp ne i32 %14, 2
  br i1 %cmp10, label %if.then.35, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.end.9
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 43
  %16 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info12, align 8
  %arrayidx13 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %16, i64 1
  %h_samp_factor14 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx13, i32 0, i32 2
  %17 = load i32, i32* %h_samp_factor14, align 4
  %cmp15 = icmp ne i32 %17, 1
  br i1 %cmp15, label %if.then.35, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.11
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 43
  %19 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info17, align 8
  %arrayidx18 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %19, i64 2
  %h_samp_factor19 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx18, i32 0, i32 2
  %20 = load i32, i32* %h_samp_factor19, align 4
  %cmp20 = icmp ne i32 %20, 1
  br i1 %cmp20, label %if.then.35, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.16
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 43
  %22 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info22, align 8
  %arrayidx23 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %22, i64 0
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx23, i32 0, i32 3
  %23 = load i32, i32* %v_samp_factor, align 4
  %cmp24 = icmp sgt i32 %23, 2
  br i1 %cmp24, label %if.then.35, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.21
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 43
  %25 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info26, align 8
  %arrayidx27 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %25, i64 1
  %v_samp_factor28 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx27, i32 0, i32 3
  %26 = load i32, i32* %v_samp_factor28, align 4
  %cmp29 = icmp ne i32 %26, 1
  br i1 %cmp29, label %if.then.35, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false.25
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 43
  %28 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info31, align 8
  %arrayidx32 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %28, i64 2
  %v_samp_factor33 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx32, i32 0, i32 3
  %29 = load i32, i32* %v_samp_factor33, align 4
  %cmp34 = icmp ne i32 %29, 1
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %lor.lhs.false.30, %lor.lhs.false.25, %lor.lhs.false.21, %lor.lhs.false.16, %lor.lhs.false.11, %if.end.9
  store i32 0, i32* %retval
  br label %return

if.end.36:                                        ; preds = %lor.lhs.false.30
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 43
  %31 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info37, align 8
  %arrayidx38 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %31, i64 0
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx38, i32 0, i32 9
  %32 = load i32, i32* %DCT_scaled_size, align 4
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 59
  %34 = load i32, i32* %min_DCT_scaled_size, align 4
  %cmp39 = icmp ne i32 %32, %34
  br i1 %cmp39, label %if.then.52, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %if.end.36
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 43
  %36 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info41, align 8
  %arrayidx42 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %36, i64 1
  %DCT_scaled_size43 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx42, i32 0, i32 9
  %37 = load i32, i32* %DCT_scaled_size43, align 4
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 59
  %39 = load i32, i32* %min_DCT_scaled_size44, align 4
  %cmp45 = icmp ne i32 %37, %39
  br i1 %cmp45, label %if.then.52, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %lor.lhs.false.40
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 43
  %41 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info47, align 8
  %arrayidx48 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %41, i64 2
  %DCT_scaled_size49 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx48, i32 0, i32 9
  %42 = load i32, i32* %DCT_scaled_size49, align 4
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 59
  %44 = load i32, i32* %min_DCT_scaled_size50, align 4
  %cmp51 = icmp ne i32 %42, %44
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %lor.lhs.false.46, %lor.lhs.false.40, %if.end.36
  store i32 0, i32* %retval
  br label %return

if.end.53:                                        ; preds = %lor.lhs.false.46
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.then.52, %if.then.35, %if.then.8, %if.then
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define void @jpeg_new_colormap(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %master = alloca %struct.my_decomp_master*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %master1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 73
  %1 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %master1, align 8
  %2 = bitcast %struct.jpeg_decomp_master* %1 to %struct.my_decomp_master*
  store %struct.my_decomp_master* %2, %struct.my_decomp_master** %master, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 4
  %4 = load i32, i32* %global_state, align 4
  %cmp = icmp ne i32 %4, 207
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 0
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i32 0, i32 5
  store i32 18, i32* %msg_code, align 4
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %global_state2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 4
  %8 = load i32, i32* %global_state2, align 4
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %8, i32* %arrayidx, align 4
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 0
  %13 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %15 = bitcast %struct.jpeg_decompress_struct* %14 to %struct.jpeg_common_struct*
  call void %13(%struct.jpeg_common_struct* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 19
  %17 = load i32, i32* %quantize_colors, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %enable_external_quant = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 24
  %19 = load i32, i32* %enable_external_quant, align 4
  %tobool5 = icmp ne i32 %19, 0
  br i1 %tobool5, label %land.lhs.true.6, label %if.else

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 32
  %21 = load i8**, i8*** %colormap, align 8
  %cmp7 = icmp ne i8** %21, null
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %land.lhs.true.6
  %22 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8
  %quantizer_2pass = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %22, i32 0, i32 4
  %23 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %quantizer_2pass, align 8
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 83
  store %struct.jpeg_color_quantizer* %23, %struct.jpeg_color_quantizer** %cquantize, align 8
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 83
  %26 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize9, align 8
  %new_color_map = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %26, i32 0, i32 3
  %new_color_map10 = bitcast {}** %new_color_map to void (%struct.jpeg_decompress_struct*)**
  %27 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %new_color_map10, align 8
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void %27(%struct.jpeg_decompress_struct* %28)
  %29 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8
  %pub = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %29, i32 0, i32 0
  %is_dummy_pass = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub, i32 0, i32 2
  store i32 0, i32* %is_dummy_pass, align 4
  br label %if.end.15

if.else:                                          ; preds = %land.lhs.true.6, %land.lhs.true, %if.end
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err11, align 8
  %msg_code12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 5
  store i32 45, i32* %msg_code12, align 4
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8
  %error_exit14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 0
  %34 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit14, align 8
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %36 = bitcast %struct.jpeg_decompress_struct* %35 to %struct.jpeg_common_struct*
  call void %34(%struct.jpeg_common_struct* %36)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.8
  ret void
}

; Function Attrs: nounwind uwtable
define void @jinit_master_decompress(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %master = alloca %struct.my_decomp_master*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_decompress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 48)
  %5 = bitcast i8* %call to %struct.my_decomp_master*
  store %struct.my_decomp_master* %5, %struct.my_decomp_master** %master, align 8
  %6 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8
  %7 = bitcast %struct.my_decomp_master* %6 to %struct.jpeg_decomp_master*
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %master1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 73
  store %struct.jpeg_decomp_master* %7, %struct.jpeg_decomp_master** %master1, align 8
  %9 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8
  %pub = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %9, i32 0, i32 0
  %prepare_for_output_pass = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub, i32 0, i32 0
  %prepare_for_output_pass2 = bitcast {}** %prepare_for_output_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @prepare_for_output_pass, void (%struct.jpeg_decompress_struct*)** %prepare_for_output_pass2, align 8
  %10 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8
  %pub3 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %10, i32 0, i32 0
  %finish_output_pass = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub3, i32 0, i32 1
  %finish_output_pass4 = bitcast {}** %finish_output_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @finish_output_pass, void (%struct.jpeg_decompress_struct*)** %finish_output_pass4, align 8
  %11 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8
  %pub5 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %11, i32 0, i32 0
  %is_dummy_pass = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub5, i32 0, i32 2
  store i32 0, i32* %is_dummy_pass, align 4
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @master_selection(%struct.jpeg_decompress_struct* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @prepare_for_output_pass(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %master = alloca %struct.my_decomp_master*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %master1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 73
  %1 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %master1, align 8
  %2 = bitcast %struct.jpeg_decomp_master* %1 to %struct.my_decomp_master*
  store %struct.my_decomp_master* %2, %struct.my_decomp_master** %master, align 8
  %3 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8
  %pub = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %3, i32 0, i32 0
  %is_dummy_pass = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub, i32 0, i32 2
  %4 = load i32, i32* %is_dummy_pass, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8
  %pub2 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %5, i32 0, i32 0
  %is_dummy_pass3 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub2, i32 0, i32 2
  store i32 0, i32* %is_dummy_pass3, align 4
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 83
  %7 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize, align 8
  %start_pass = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %7, i32 0, i32 0
  %8 = load void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i32)** %start_pass, align 8
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void %8(%struct.jpeg_decompress_struct* %9, i32 0)
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %post = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 76
  %11 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %post, align 8
  %start_pass4 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %11, i32 0, i32 0
  %12 = load void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i32)** %start_pass4, align 8
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void %12(%struct.jpeg_decompress_struct* %13, i32 2)
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %main = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 74
  %15 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %main, align 8
  %start_pass5 = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %15, i32 0, i32 0
  %16 = load void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i32)** %start_pass5, align 8
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void %16(%struct.jpeg_decompress_struct* %17, i32 2)
  br label %if.end.51

if.else:                                          ; preds = %entry
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 19
  %19 = load i32, i32* %quantize_colors, align 4
  %tobool6 = icmp ne i32 %19, 0
  br i1 %tobool6, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.else
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 32
  %21 = load i8**, i8*** %colormap, align 8
  %cmp = icmp eq i8** %21, null
  br i1 %cmp, label %if.then.7, label %if.end.22

if.then.7:                                        ; preds = %land.lhs.true
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %two_pass_quantize = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 21
  %23 = load i32, i32* %two_pass_quantize, align 4
  %tobool8 = icmp ne i32 %23, 0
  br i1 %tobool8, label %land.lhs.true.9, label %if.else.15

land.lhs.true.9:                                  ; preds = %if.then.7
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %enable_2pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 25
  %25 = load i32, i32* %enable_2pass_quant, align 4
  %tobool10 = icmp ne i32 %25, 0
  br i1 %tobool10, label %if.then.11, label %if.else.15

if.then.11:                                       ; preds = %land.lhs.true.9
  %26 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8
  %quantizer_2pass = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %26, i32 0, i32 4
  %27 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %quantizer_2pass, align 8
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 83
  store %struct.jpeg_color_quantizer* %27, %struct.jpeg_color_quantizer** %cquantize12, align 8
  %29 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8
  %pub13 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %29, i32 0, i32 0
  %is_dummy_pass14 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub13, i32 0, i32 2
  store i32 1, i32* %is_dummy_pass14, align 4
  br label %if.end.21

if.else.15:                                       ; preds = %land.lhs.true.9, %if.then.7
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %enable_1pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 23
  %31 = load i32, i32* %enable_1pass_quant, align 4
  %tobool16 = icmp ne i32 %31, 0
  br i1 %tobool16, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %if.else.15
  %32 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8
  %quantizer_1pass = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %32, i32 0, i32 3
  %33 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %quantizer_1pass, align 8
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 83
  store %struct.jpeg_color_quantizer* %33, %struct.jpeg_color_quantizer** %cquantize18, align 8
  br label %if.end

if.else.19:                                       ; preds = %if.else.15
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 0
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %36, i32 0, i32 5
  store i32 45, i32* %msg_code, align 4
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 0
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err20, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %38, i32 0, i32 0
  %39 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %41 = bitcast %struct.jpeg_decompress_struct* %40 to %struct.jpeg_common_struct*
  call void %39(%struct.jpeg_common_struct* %41)
  br label %if.end

if.end:                                           ; preds = %if.else.19, %if.then.17
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %if.then.11
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %land.lhs.true, %if.else
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %idct = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 80
  %43 = load %struct.jpeg_inverse_dct*, %struct.jpeg_inverse_dct** %idct, align 8
  %start_pass23 = getelementptr inbounds %struct.jpeg_inverse_dct, %struct.jpeg_inverse_dct* %43, i32 0, i32 0
  %start_pass24 = bitcast {}** %start_pass23 to void (%struct.jpeg_decompress_struct*)**
  %44 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %start_pass24, align 8
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void %44(%struct.jpeg_decompress_struct* %45)
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 75
  %47 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef, align 8
  %start_output_pass = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %47, i32 0, i32 2
  %start_output_pass25 = bitcast {}** %start_output_pass to void (%struct.jpeg_decompress_struct*)**
  %48 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %start_output_pass25, align 8
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void %48(%struct.jpeg_decompress_struct* %49)
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %raw_data_out = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 15
  %51 = load i32, i32* %raw_data_out, align 4
  %tobool26 = icmp ne i32 %51, 0
  br i1 %tobool26, label %if.end.50, label %if.then.27

if.then.27:                                       ; preds = %if.end.22
  %52 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8
  %using_merged_upsample = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %52, i32 0, i32 2
  %53 = load i32, i32* %using_merged_upsample, align 4
  %tobool28 = icmp ne i32 %53, 0
  br i1 %tobool28, label %if.end.32, label %if.then.29

if.then.29:                                       ; preds = %if.then.27
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cconvert = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %54, i32 0, i32 82
  %55 = load %struct.jpeg_color_deconverter*, %struct.jpeg_color_deconverter** %cconvert, align 8
  %start_pass30 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %55, i32 0, i32 0
  %start_pass31 = bitcast {}** %start_pass30 to void (%struct.jpeg_decompress_struct*)**
  %56 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %start_pass31, align 8
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void %56(%struct.jpeg_decompress_struct* %57)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.then.27
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %upsample = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %58, i32 0, i32 81
  %59 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample, align 8
  %start_pass33 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %59, i32 0, i32 0
  %start_pass34 = bitcast {}** %start_pass33 to void (%struct.jpeg_decompress_struct*)**
  %60 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %start_pass34, align 8
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void %60(%struct.jpeg_decompress_struct* %61)
  %62 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quantize_colors35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %62, i32 0, i32 19
  %63 = load i32, i32* %quantize_colors35, align 4
  %tobool36 = icmp ne i32 %63, 0
  br i1 %tobool36, label %if.then.37, label %if.end.42

if.then.37:                                       ; preds = %if.end.32
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 83
  %65 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize38, align 8
  %start_pass39 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %65, i32 0, i32 0
  %66 = load void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i32)** %start_pass39, align 8
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %68 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8
  %pub40 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %68, i32 0, i32 0
  %is_dummy_pass41 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub40, i32 0, i32 2
  %69 = load i32, i32* %is_dummy_pass41, align 4
  call void %66(%struct.jpeg_decompress_struct* %67, i32 %69)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.37, %if.end.32
  %70 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %post43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %70, i32 0, i32 76
  %71 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %post43, align 8
  %start_pass44 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %71, i32 0, i32 0
  %72 = load void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i32)** %start_pass44, align 8
  %73 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %74 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8
  %pub45 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %74, i32 0, i32 0
  %is_dummy_pass46 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub45, i32 0, i32 2
  %75 = load i32, i32* %is_dummy_pass46, align 4
  %tobool47 = icmp ne i32 %75, 0
  %cond = select i1 %tobool47, i32 3, i32 0
  call void %72(%struct.jpeg_decompress_struct* %73, i32 %cond)
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %main48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %76, i32 0, i32 74
  %77 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %main48, align 8
  %start_pass49 = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %77, i32 0, i32 0
  %78 = load void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i32)** %start_pass49, align 8
  %79 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void %78(%struct.jpeg_decompress_struct* %79, i32 0)
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.42, %if.end.22
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %80, i32 0, i32 2
  %81 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress, align 8
  %cmp52 = icmp ne %struct.jpeg_progress_mgr* %81, null
  br i1 %cmp52, label %if.then.53, label %if.end.72

if.then.53:                                       ; preds = %if.end.51
  %82 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8
  %pass_number = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %82, i32 0, i32 1
  %83 = load i32, i32* %pass_number, align 4
  %84 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progress54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %84, i32 0, i32 2
  %85 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress54, align 8
  %completed_passes = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %85, i32 0, i32 3
  store i32 %83, i32* %completed_passes, align 4
  %86 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8
  %pass_number55 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %86, i32 0, i32 1
  %87 = load i32, i32* %pass_number55, align 4
  %88 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8
  %pub56 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %88, i32 0, i32 0
  %is_dummy_pass57 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %pub56, i32 0, i32 2
  %89 = load i32, i32* %is_dummy_pass57, align 4
  %tobool58 = icmp ne i32 %89, 0
  %cond59 = select i1 %tobool58, i32 2, i32 1
  %add = add nsw i32 %87, %cond59
  %90 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progress60 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %90, i32 0, i32 2
  %91 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress60, align 8
  %total_passes = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %91, i32 0, i32 4
  store i32 %add, i32* %total_passes, align 4
  %92 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %buffered_image = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %92, i32 0, i32 14
  %93 = load i32, i32* %buffered_image, align 4
  %tobool61 = icmp ne i32 %93, 0
  br i1 %tobool61, label %land.lhs.true.62, label %if.end.71

land.lhs.true.62:                                 ; preds = %if.then.53
  %94 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %94, i32 0, i32 77
  %95 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %95, i32 0, i32 5
  %96 = load i32, i32* %eoi_reached, align 4
  %tobool63 = icmp ne i32 %96, 0
  br i1 %tobool63, label %if.end.71, label %if.then.64

if.then.64:                                       ; preds = %land.lhs.true.62
  %97 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %enable_2pass_quant65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %97, i32 0, i32 25
  %98 = load i32, i32* %enable_2pass_quant65, align 4
  %tobool66 = icmp ne i32 %98, 0
  %cond67 = select i1 %tobool66, i32 2, i32 1
  %99 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progress68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %99, i32 0, i32 2
  %100 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress68, align 8
  %total_passes69 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %100, i32 0, i32 4
  %101 = load i32, i32* %total_passes69, align 4
  %add70 = add nsw i32 %101, %cond67
  store i32 %add70, i32* %total_passes69, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.64, %land.lhs.true.62, %if.then.53
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.51
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_output_pass(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %master = alloca %struct.my_decomp_master*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %master1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 73
  %1 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %master1, align 8
  %2 = bitcast %struct.jpeg_decomp_master* %1 to %struct.my_decomp_master*
  store %struct.my_decomp_master* %2, %struct.my_decomp_master** %master, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 19
  %4 = load i32, i32* %quantize_colors, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 83
  %6 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize, align 8
  %finish_pass = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %6, i32 0, i32 2
  %finish_pass2 = bitcast {}** %finish_pass to void (%struct.jpeg_decompress_struct*)**
  %7 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %finish_pass2, align 8
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void %7(%struct.jpeg_decompress_struct* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8
  %pass_number = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %9, i32 0, i32 1
  %10 = load i32, i32* %pass_number, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %pass_number, align 4
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
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %master1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 73
  %1 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %master1, align 8
  %2 = bitcast %struct.jpeg_decomp_master* %1 to %struct.my_decomp_master*
  store %struct.my_decomp_master* %2, %struct.my_decomp_master** %master, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct* %3)
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @prepare_range_limit_table(%struct.jpeg_decompress_struct* %4)
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 26
  %6 = load i32, i32* %output_width, align 4
  %conv = zext i32 %6 to i64
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 28
  %8 = load i32, i32* %out_color_components, align 4
  %conv2 = sext i32 %8 to i64
  %mul = mul nsw i64 %conv, %conv2
  store i64 %mul, i64* %samplesperrow, align 8
  %9 = load i64, i64* %samplesperrow, align 8
  %conv3 = trunc i64 %9 to i32
  store i32 %conv3, i32* %jd_samplesperrow, align 4
  %10 = load i32, i32* %jd_samplesperrow, align 4
  %conv4 = zext i32 %10 to i64
  %11 = load i64, i64* %samplesperrow, align 8
  %cmp = icmp ne i64 %conv4, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 5
  store i32 69, i32* %msg_code, align 4
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 0
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %18 = bitcast %struct.jpeg_decompress_struct* %17 to %struct.jpeg_common_struct*
  call void %16(%struct.jpeg_common_struct* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8
  %pass_number = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %19, i32 0, i32 1
  store i32 0, i32* %pass_number, align 4
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 @use_merged_upsample(%struct.jpeg_decompress_struct* %20)
  %21 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8
  %using_merged_upsample = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %21, i32 0, i32 2
  store i32 %call, i32* %using_merged_upsample, align 4
  %22 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8
  %quantizer_1pass = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %22, i32 0, i32 3
  store %struct.jpeg_color_quantizer* null, %struct.jpeg_color_quantizer** %quantizer_1pass, align 8
  %23 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8
  %quantizer_2pass = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %23, i32 0, i32 4
  store %struct.jpeg_color_quantizer* null, %struct.jpeg_color_quantizer** %quantizer_2pass, align 8
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 19
  %25 = load i32, i32* %quantize_colors, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.8

lor.lhs.false:                                    ; preds = %if.end
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %buffered_image = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 14
  %27 = load i32, i32* %buffered_image, align 4
  %tobool7 = icmp ne i32 %27, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %enable_1pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 23
  store i32 0, i32* %enable_1pass_quant, align 4
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %enable_external_quant = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 24
  store i32 0, i32* %enable_external_quant, align 4
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %enable_2pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 25
  store i32 0, i32* %enable_2pass_quant, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %lor.lhs.false
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quantize_colors10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 19
  %32 = load i32, i32* %quantize_colors10, align 4
  %tobool11 = icmp ne i32 %32, 0
  br i1 %tobool11, label %if.then.12, label %if.end.55

if.then.12:                                       ; preds = %if.end.9
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %raw_data_out = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 15
  %34 = load i32, i32* %raw_data_out, align 4
  %tobool13 = icmp ne i32 %34, 0
  br i1 %tobool13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %if.then.12
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 0
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err15, align 8
  %msg_code16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %36, i32 0, i32 5
  store i32 46, i32* %msg_code16, align 4
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 0
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err17, align 8
  %error_exit18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %38, i32 0, i32 0
  %39 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit18, align 8
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %41 = bitcast %struct.jpeg_decompress_struct* %40 to %struct.jpeg_common_struct*
  call void %39(%struct.jpeg_common_struct* %41)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %if.then.12
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 28
  %43 = load i32, i32* %out_color_components20, align 4
  %cmp21 = icmp ne i32 %43, 3
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.19
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %enable_1pass_quant24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 23
  store i32 1, i32* %enable_1pass_quant24, align 4
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %enable_external_quant25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 24
  store i32 0, i32* %enable_external_quant25, align 4
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %enable_2pass_quant26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 25
  store i32 0, i32* %enable_2pass_quant26, align 4
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 32
  store i8** null, i8*** %colormap, align 8
  br label %if.end.40

if.else:                                          ; preds = %if.end.19
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 32
  %49 = load i8**, i8*** %colormap27, align 8
  %cmp28 = icmp ne i8** %49, null
  br i1 %cmp28, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %if.else
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %enable_external_quant31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 24
  store i32 1, i32* %enable_external_quant31, align 4
  br label %if.end.39

if.else.32:                                       ; preds = %if.else
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %two_pass_quantize = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 21
  %52 = load i32, i32* %two_pass_quantize, align 4
  %tobool33 = icmp ne i32 %52, 0
  br i1 %tobool33, label %if.then.34, label %if.else.36

if.then.34:                                       ; preds = %if.else.32
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %enable_2pass_quant35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 25
  store i32 1, i32* %enable_2pass_quant35, align 4
  br label %if.end.38

if.else.36:                                       ; preds = %if.else.32
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %enable_1pass_quant37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %54, i32 0, i32 23
  store i32 1, i32* %enable_1pass_quant37, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.34
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.30
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.23
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %enable_1pass_quant41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %55, i32 0, i32 23
  %56 = load i32, i32* %enable_1pass_quant41, align 4
  %tobool42 = icmp ne i32 %56, 0
  br i1 %tobool42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.40
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @jinit_1pass_quantizer(%struct.jpeg_decompress_struct* %57)
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %58, i32 0, i32 83
  %59 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize, align 8
  %60 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8
  %quantizer_1pass44 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %60, i32 0, i32 3
  store %struct.jpeg_color_quantizer* %59, %struct.jpeg_color_quantizer** %quantizer_1pass44, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.40
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %enable_2pass_quant46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %61, i32 0, i32 25
  %62 = load i32, i32* %enable_2pass_quant46, align 4
  %tobool47 = icmp ne i32 %62, 0
  br i1 %tobool47, label %if.then.51, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %if.end.45
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %enable_external_quant49 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %63, i32 0, i32 24
  %64 = load i32, i32* %enable_external_quant49, align 4
  %tobool50 = icmp ne i32 %64, 0
  br i1 %tobool50, label %if.then.51, label %if.end.54

if.then.51:                                       ; preds = %lor.lhs.false.48, %if.end.45
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @jinit_2pass_quantizer(%struct.jpeg_decompress_struct* %65)
  %66 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize52 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %66, i32 0, i32 83
  %67 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize52, align 8
  %68 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8
  %quantizer_2pass53 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %68, i32 0, i32 4
  store %struct.jpeg_color_quantizer* %67, %struct.jpeg_color_quantizer** %quantizer_2pass53, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.51, %lor.lhs.false.48
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.9
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %raw_data_out56 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 15
  %70 = load i32, i32* %raw_data_out56, align 4
  %tobool57 = icmp ne i32 %70, 0
  br i1 %tobool57, label %if.end.65, label %if.then.58

if.then.58:                                       ; preds = %if.end.55
  %71 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8
  %using_merged_upsample59 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %71, i32 0, i32 2
  %72 = load i32, i32* %using_merged_upsample59, align 4
  %tobool60 = icmp ne i32 %72, 0
  br i1 %tobool60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %if.then.58
  %73 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @jinit_merged_upsampler(%struct.jpeg_decompress_struct* %73)
  br label %if.end.63

if.else.62:                                       ; preds = %if.then.58
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @jinit_color_deconverter(%struct.jpeg_decompress_struct* %74)
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @jinit_upsampler(%struct.jpeg_decompress_struct* %75)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.62, %if.then.61
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %77 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %enable_2pass_quant64 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %77, i32 0, i32 25
  %78 = load i32, i32* %enable_2pass_quant64, align 4
  call void @jinit_d_post_controller(%struct.jpeg_decompress_struct* %76, i32 %78)
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.63, %if.end.55
  %79 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @jinit_inverse_dct(%struct.jpeg_decompress_struct* %79)
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %80, i32 0, i32 45
  %81 = load i32, i32* %arith_code, align 4
  %tobool66 = icmp ne i32 %81, 0
  br i1 %tobool66, label %if.then.67, label %if.else.72

if.then.67:                                       ; preds = %if.end.65
  %82 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %82, i32 0, i32 0
  %83 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err68, align 8
  %msg_code69 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %83, i32 0, i32 5
  store i32 1, i32* %msg_code69, align 4
  %84 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %84, i32 0, i32 0
  %85 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err70, align 8
  %error_exit71 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %85, i32 0, i32 0
  %86 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit71, align 8
  %87 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %88 = bitcast %struct.jpeg_decompress_struct* %87 to %struct.jpeg_common_struct*
  call void %86(%struct.jpeg_common_struct* %88)
  br label %if.end.77

if.else.72:                                       ; preds = %if.end.65
  %89 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %89, i32 0, i32 44
  %90 = load i32, i32* %progressive_mode, align 4
  %tobool73 = icmp ne i32 %90, 0
  br i1 %tobool73, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %if.else.72
  %91 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @jinit_phuff_decoder(%struct.jpeg_decompress_struct* %91)
  br label %if.end.76

if.else.75:                                       ; preds = %if.else.72
  %92 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @jinit_huff_decoder(%struct.jpeg_decompress_struct* %92)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.75, %if.then.74
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.67
  %93 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %93, i32 0, i32 77
  %94 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %94, i32 0, i32 4
  %95 = load i32, i32* %has_multiple_scans, align 4
  %tobool78 = icmp ne i32 %95, 0
  br i1 %tobool78, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.77
  %96 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %buffered_image79 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %96, i32 0, i32 14
  %97 = load i32, i32* %buffered_image79, align 4
  %tobool80 = icmp ne i32 %97, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.77
  %98 = phi i1 [ true, %if.end.77 ], [ %tobool80, %lor.rhs ]
  %lor.ext = zext i1 %98 to i32
  store i32 %lor.ext, i32* %use_c_buffer, align 4
  %99 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %100 = load i32, i32* %use_c_buffer, align 4
  call void @jinit_d_coef_controller(%struct.jpeg_decompress_struct* %99, i32 %100)
  %101 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %raw_data_out81 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %101, i32 0, i32 15
  %102 = load i32, i32* %raw_data_out81, align 4
  %tobool82 = icmp ne i32 %102, 0
  br i1 %tobool82, label %if.end.84, label %if.then.83

if.then.83:                                       ; preds = %lor.end
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @jinit_d_main_controller(%struct.jpeg_decompress_struct* %103, i32 0)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %lor.end
  %104 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %104, i32 0, i32 1
  %105 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %realize_virt_arrays = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %105, i32 0, i32 6
  %realize_virt_arrays85 = bitcast {}** %realize_virt_arrays to void (%struct.jpeg_common_struct*)**
  %106 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %realize_virt_arrays85, align 8
  %107 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %108 = bitcast %struct.jpeg_decompress_struct* %107 to %struct.jpeg_common_struct*
  call void %106(%struct.jpeg_common_struct* %108)
  %109 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %inputctl86 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %109, i32 0, i32 77
  %110 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl86, align 8
  %start_input_pass = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %110, i32 0, i32 2
  %start_input_pass87 = bitcast {}** %start_input_pass to void (%struct.jpeg_decompress_struct*)**
  %111 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %start_input_pass87, align 8
  %112 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void %111(%struct.jpeg_decompress_struct* %112)
  %113 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %113, i32 0, i32 2
  %114 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress, align 8
  %cmp88 = icmp ne %struct.jpeg_progress_mgr* %114, null
  br i1 %cmp88, label %land.lhs.true, label %if.end.114

land.lhs.true:                                    ; preds = %if.end.84
  %115 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %buffered_image90 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %115, i32 0, i32 14
  %116 = load i32, i32* %buffered_image90, align 4
  %tobool91 = icmp ne i32 %116, 0
  br i1 %tobool91, label %if.end.114, label %land.lhs.true.92

land.lhs.true.92:                                 ; preds = %land.lhs.true
  %117 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %inputctl93 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %117, i32 0, i32 77
  %118 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl93, align 8
  %has_multiple_scans94 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %118, i32 0, i32 4
  %119 = load i32, i32* %has_multiple_scans94, align 4
  %tobool95 = icmp ne i32 %119, 0
  br i1 %tobool95, label %if.then.96, label %if.end.114

if.then.96:                                       ; preds = %land.lhs.true.92
  %120 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progressive_mode97 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %120, i32 0, i32 44
  %121 = load i32, i32* %progressive_mode97, align 4
  %tobool98 = icmp ne i32 %121, 0
  br i1 %tobool98, label %if.then.99, label %if.else.101

if.then.99:                                       ; preds = %if.then.96
  %122 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %122, i32 0, i32 8
  %123 = load i32, i32* %num_components, align 4
  %mul100 = mul nsw i32 3, %123
  %add = add nsw i32 2, %mul100
  store i32 %add, i32* %nscans, align 4
  br label %if.end.103

if.else.101:                                      ; preds = %if.then.96
  %124 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components102 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %124, i32 0, i32 8
  %125 = load i32, i32* %num_components102, align 4
  store i32 %125, i32* %nscans, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.101, %if.then.99
  %126 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progress104 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %126, i32 0, i32 2
  %127 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress104, align 8
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %127, i32 0, i32 1
  store i64 0, i64* %pass_counter, align 8
  %128 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %128, i32 0, i32 60
  %129 = load i32, i32* %total_iMCU_rows, align 4
  %conv105 = zext i32 %129 to i64
  %130 = load i32, i32* %nscans, align 4
  %conv106 = sext i32 %130 to i64
  %mul107 = mul nsw i64 %conv105, %conv106
  %131 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progress108 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %131, i32 0, i32 2
  %132 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress108, align 8
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %132, i32 0, i32 2
  store i64 %mul107, i64* %pass_limit, align 8
  %133 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progress109 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %133, i32 0, i32 2
  %134 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress109, align 8
  %completed_passes = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %134, i32 0, i32 3
  store i32 0, i32* %completed_passes, align 4
  %135 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %enable_2pass_quant110 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %135, i32 0, i32 25
  %136 = load i32, i32* %enable_2pass_quant110, align 4
  %tobool111 = icmp ne i32 %136, 0
  %cond = select i1 %tobool111, i32 3, i32 2
  %137 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progress112 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %137, i32 0, i32 2
  %138 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress112, align 8
  %total_passes = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %138, i32 0, i32 4
  store i32 %cond, i32* %total_passes, align 4
  %139 = load %struct.my_decomp_master*, %struct.my_decomp_master** %master, align 8
  %pass_number113 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %139, i32 0, i32 1
  %140 = load i32, i32* %pass_number113, align 4
  %inc = add nsw i32 %140, 1
  store i32 %inc, i32* %pass_number113, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.103, %land.lhs.true.92, %land.lhs.true, %if.end.84
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @prepare_range_limit_table(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %table = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_decompress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 1408)
  store i8* %call, i8** %table, align 8
  %5 = load i8*, i8** %table, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 256
  store i8* %add.ptr, i8** %table, align 8
  %6 = load i8*, i8** %table, align 8
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 61
  store i8* %6, i8** %sample_range_limit, align 8
  %8 = load i8*, i8** %table, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %8, i64 -256
  call void @llvm.memset.p0i8.i64(i8* %add.ptr1, i8 0, i64 256, i32 1, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %9, 255
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %conv = trunc i32 %10 to i8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i8*, i8** %table, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i8*, i8** %table, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %14, i64 128
  store i8* %add.ptr2, i8** %table, align 8
  store i32 128, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.9, %for.end
  %15 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %15, 512
  br i1 %cmp4, label %for.body.6, label %for.end.11

for.body.6:                                       ; preds = %for.cond.3
  %16 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = load i8*, i8** %table, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %17, i64 %idxprom7
  store i8 -1, i8* %arrayidx8, align 1
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body.6
  %18 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %18, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond.3

for.end.11:                                       ; preds = %for.cond.3
  %19 = load i8*, i8** %table, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %19, i64 512
  call void @llvm.memset.p0i8.i64(i8* %add.ptr12, i8 0, i64 384, i32 1, i1 false)
  %20 = load i8*, i8** %table, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %20, i64 896
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %sample_range_limit14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 61
  %22 = load i8*, i8** %sample_range_limit14, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr13, i8* %22, i64 128, i32 1, i1 false)
  ret void
}

declare void @jinit_1pass_quantizer(%struct.jpeg_decompress_struct*) #1

declare void @jinit_2pass_quantizer(%struct.jpeg_decompress_struct*) #1

declare void @jinit_merged_upsampler(%struct.jpeg_decompress_struct*) #1

declare void @jinit_color_deconverter(%struct.jpeg_decompress_struct*) #1

declare void @jinit_upsampler(%struct.jpeg_decompress_struct*) #1

declare void @jinit_d_post_controller(%struct.jpeg_decompress_struct*, i32) #1

declare void @jinit_inverse_dct(%struct.jpeg_decompress_struct*) #1

declare void @jinit_phuff_decoder(%struct.jpeg_decompress_struct*) #1

declare void @jinit_huff_decoder(%struct.jpeg_decompress_struct*) #1

declare void @jinit_d_coef_controller(%struct.jpeg_decompress_struct*, i32) #1

declare void @jinit_d_main_controller(%struct.jpeg_decompress_struct*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
