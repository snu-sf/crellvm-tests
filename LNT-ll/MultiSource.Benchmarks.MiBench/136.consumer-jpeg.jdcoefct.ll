; ModuleID = './MultiSource.Benchmarks.MiBench/136.consumer-jpeg.jdcoefct.bc'
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
%struct.my_coef_controller = type { %struct.jpeg_d_coef_controller, i32, i32, i32, [10 x [64 x i16]*], [10 x %struct.jvirt_barray_control*], i32* }

; Function Attrs: nounwind uwtable
define void @jinit_d_coef_controller(%struct.jpeg_decompress_struct* %cinfo, i32 %need_full_buffer) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %need_full_buffer.addr = alloca i32, align 4
  %coef = alloca %struct.my_coef_controller*, align 8
  %ci = alloca i32, align 4
  %access_rows = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %buffer = alloca [64 x i16]*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i32 %need_full_buffer, i32* %need_full_buffer.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_decompress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 224)
  %5 = bitcast i8* %call to %struct.my_coef_controller*
  store %struct.my_coef_controller* %5, %struct.my_coef_controller** %coef, align 8
  %6 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %7 = bitcast %struct.my_coef_controller* %6 to %struct.jpeg_d_coef_controller*
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 75
  store %struct.jpeg_d_coef_controller* %7, %struct.jpeg_d_coef_controller** %coef1, align 8
  %9 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %pub = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %9, i32 0, i32 0
  %start_input_pass = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub, i32 0, i32 0
  store void (%struct.jpeg_decompress_struct*)* @start_input_pass, void (%struct.jpeg_decompress_struct*)** %start_input_pass, align 8
  %10 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %pub2 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %10, i32 0, i32 0
  %start_output_pass = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub2, i32 0, i32 2
  store void (%struct.jpeg_decompress_struct*)* @start_output_pass, void (%struct.jpeg_decompress_struct*)** %start_output_pass, align 8
  %11 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %coef_bits_latch = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %11, i32 0, i32 6
  store i32* null, i32** %coef_bits_latch, align 8
  %12 = load i32, i32* %need_full_buffer.addr, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %ci, align 4
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 43
  %14 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %14, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %15 = load i32, i32* %ci, align 4
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 8
  %17 = load i32, i32* %num_components, align 4
  %cmp = icmp slt i32 %15, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %18, i32 0, i32 3
  %19 = load i32, i32* %v_samp_factor, align 4
  store i32 %19, i32* %access_rows, align 4
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 44
  %21 = load i32, i32* %progressive_mode, align 4
  %tobool3 = icmp ne i32 %21, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.body
  %22 = load i32, i32* %access_rows, align 4
  %mul = mul nsw i32 %22, 3
  store i32 %mul, i32* %access_rows, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %for.body
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 1
  %24 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem5, align 8
  %request_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %24, i32 0, i32 5
  %25 = load %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)** %request_virt_barray, align 8
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %27 = bitcast %struct.jpeg_decompress_struct* %26 to %struct.jpeg_common_struct*
  %28 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %28, i32 0, i32 7
  %29 = load i32, i32* %width_in_blocks, align 4
  %conv = zext i32 %29 to i64
  %30 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %30, i32 0, i32 2
  %31 = load i32, i32* %h_samp_factor, align 4
  %conv6 = sext i32 %31 to i64
  %call7 = call i64 @jround_up(i64 %conv, i64 %conv6)
  %conv8 = trunc i64 %call7 to i32
  %32 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %32, i32 0, i32 8
  %33 = load i32, i32* %height_in_blocks, align 4
  %conv9 = zext i32 %33 to i64
  %34 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor10 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %34, i32 0, i32 3
  %35 = load i32, i32* %v_samp_factor10, align 4
  %conv11 = sext i32 %35 to i64
  %call12 = call i64 @jround_up(i64 %conv9, i64 %conv11)
  %conv13 = trunc i64 %call12 to i32
  %36 = load i32, i32* %access_rows, align 4
  %call14 = call %struct.jvirt_barray_control* %25(%struct.jpeg_common_struct* %27, i32 1, i32 1, i32 %conv8, i32 %conv13, i32 %36)
  %37 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %37 to i64
  %38 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %whole_image = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %38, i32 0, i32 5
  %arrayidx = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image, i32 0, i64 %idxprom
  store %struct.jvirt_barray_control* %call14, %struct.jvirt_barray_control** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %39 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %ci, align 4
  %40 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %40, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %pub15 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %41, i32 0, i32 0
  %consume_data = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub15, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*)* @consume_data, i32 (%struct.jpeg_decompress_struct*)** %consume_data, align 8
  %42 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %pub16 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %42, i32 0, i32 0
  %decompress_data = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub16, i32 0, i32 3
  store i32 (%struct.jpeg_decompress_struct*, i8***)* @decompress_data, i32 (%struct.jpeg_decompress_struct*, i8***)** %decompress_data, align 8
  %43 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %whole_image17 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %43, i32 0, i32 5
  %arraydecay = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image17, i32 0, i32 0
  %44 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %pub18 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %44, i32 0, i32 0
  %coef_arrays = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub18, i32 0, i32 4
  store %struct.jvirt_barray_control** %arraydecay, %struct.jvirt_barray_control*** %coef_arrays, align 8
  br label %if.end.36

if.else:                                          ; preds = %entry
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 1
  %46 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem19, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %46, i32 0, i32 1
  %47 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_large, align 8
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %49 = bitcast %struct.jpeg_decompress_struct* %48 to %struct.jpeg_common_struct*
  %call20 = call i8* %47(%struct.jpeg_common_struct* %49, i32 1, i64 1280)
  %50 = bitcast i8* %call20 to [64 x i16]*
  store [64 x i16]* %50, [64 x i16]** %buffer, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.27, %if.else
  %51 = load i32, i32* %i, align 4
  %cmp22 = icmp slt i32 %51, 10
  br i1 %cmp22, label %for.body.24, label %for.end.29

for.body.24:                                      ; preds = %for.cond.21
  %52 = load [64 x i16]*, [64 x i16]** %buffer, align 8
  %53 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %53 to i64
  %add.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %52, i64 %idx.ext
  %54 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %54 to i64
  %55 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_buffer = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %55, i32 0, i32 4
  %arrayidx26 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer, i32 0, i64 %idxprom25
  store [64 x i16]* %add.ptr, [64 x i16]** %arrayidx26, align 8
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.24
  %56 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %56, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond.21

for.end.29:                                       ; preds = %for.cond.21
  %57 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %pub30 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %57, i32 0, i32 0
  %consume_data31 = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub30, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*)* @dummy_consume_data, i32 (%struct.jpeg_decompress_struct*)** %consume_data31, align 8
  %58 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %pub32 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %58, i32 0, i32 0
  %decompress_data33 = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub32, i32 0, i32 3
  store i32 (%struct.jpeg_decompress_struct*, i8***)* @decompress_onepass, i32 (%struct.jpeg_decompress_struct*, i8***)** %decompress_data33, align 8
  %59 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %pub34 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %59, i32 0, i32 0
  %coef_arrays35 = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub34, i32 0, i32 4
  store %struct.jvirt_barray_control** null, %struct.jvirt_barray_control*** %coef_arrays35, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %for.end.29, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_input_pass(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 35
  store i32 0, i32* %input_iMCU_row, align 4
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @start_iMCU_row(%struct.jpeg_decompress_struct* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_output_pass(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 75
  %1 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef1, align 8
  %2 = bitcast %struct.jpeg_d_coef_controller* %1 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %2, %struct.my_coef_controller** %coef, align 8
  %3 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %pub = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %3, i32 0, i32 0
  %coef_arrays = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub, i32 0, i32 4
  %4 = load %struct.jvirt_barray_control**, %struct.jvirt_barray_control*** %coef_arrays, align 8
  %cmp = icmp ne %struct.jvirt_barray_control** %4, null
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %do_block_smoothing = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 18
  %6 = load i32, i32* %do_block_smoothing, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 @smoothing_ok(%struct.jpeg_decompress_struct* %7)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  %8 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %pub4 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %8, i32 0, i32 0
  %decompress_data = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub4, i32 0, i32 3
  store i32 (%struct.jpeg_decompress_struct*, i8***)* @decompress_smooth_data, i32 (%struct.jpeg_decompress_struct*, i8***)** %decompress_data, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %9 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %pub5 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %9, i32 0, i32 0
  %decompress_data6 = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %pub5, i32 0, i32 3
  store i32 (%struct.jpeg_decompress_struct*, i8***)* @decompress_data, i32 (%struct.jpeg_decompress_struct*, i8***)** %decompress_data6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 37
  store i32 0, i32* %output_iMCU_row, align 4
  ret void
}

declare i64 @jround_up(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @consume_data(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  %MCU_col_num = alloca i32, align 4
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %xindex = alloca i32, align 4
  %yindex = alloca i32, align 4
  %yoffset = alloca i32, align 4
  %start_col = alloca i32, align 4
  %buffer = alloca [4 x [64 x i16]**], align 16
  %buffer_ptr = alloca [64 x i16]*, align 8
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 75
  %1 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef1, align 8
  %2 = bitcast %struct.jpeg_d_coef_controller* %1 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %2, %struct.my_coef_controller** %coef, align 8
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %ci, align 4
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 62
  %5 = load i32, i32* %comps_in_scan, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 63
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %8 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8
  store %struct.jpeg_component_info* %8, %struct.jpeg_component_info** %compptr, align 8
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 1
  %10 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %10, i32 0, i32 8
  %11 = load [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)** %access_virt_barray, align 8
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %13 = bitcast %struct.jpeg_decompress_struct* %12 to %struct.jpeg_common_struct*
  %14 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %14, i32 0, i32 1
  %15 = load i32, i32* %component_index, align 4
  %idxprom2 = sext i32 %15 to i64
  %16 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %whole_image = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %16, i32 0, i32 5
  %arrayidx3 = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image, i32 0, i64 %idxprom2
  %17 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %arrayidx3, align 8
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 35
  %19 = load i32, i32* %input_iMCU_row, align 4
  %20 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %20, i32 0, i32 3
  %21 = load i32, i32* %v_samp_factor, align 4
  %mul = mul i32 %19, %21
  %22 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor4 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %22, i32 0, i32 3
  %23 = load i32, i32* %v_samp_factor4, align 4
  %call = call [64 x i16]** %11(%struct.jpeg_common_struct* %13, %struct.jvirt_barray_control* %17, i32 %mul, i32 %23, i32 1)
  %24 = load i32, i32* %ci, align 4
  %idxprom5 = sext i32 %24 to i64
  %arrayidx6 = getelementptr inbounds [4 x [64 x i16]**], [4 x [64 x i16]**]* %buffer, i32 0, i64 %idxprom5
  store [64 x i16]** %call, [64 x i16]*** %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %ci, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %26, i32 0, i32 2
  %27 = load i32, i32* %MCU_vert_offset, align 4
  store i32 %27, i32* %yoffset, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.52, %for.end
  %28 = load i32, i32* %yoffset, align 4
  %29 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %29, i32 0, i32 3
  %30 = load i32, i32* %MCU_rows_per_iMCU_row, align 4
  %cmp8 = icmp slt i32 %28, %30
  br i1 %cmp8, label %for.body.9, label %for.end.54

for.body.9:                                       ; preds = %for.cond.7
  %31 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_ctr = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %31, i32 0, i32 1
  %32 = load i32, i32* %MCU_ctr, align 4
  store i32 %32, i32* %MCU_col_num, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.48, %for.body.9
  %33 = load i32, i32* %MCU_col_num, align 4
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 64
  %35 = load i32, i32* %MCUs_per_row, align 4
  %cmp11 = icmp ult i32 %33, %35
  br i1 %cmp11, label %for.body.12, label %for.end.50

for.body.12:                                      ; preds = %for.cond.10
  store i32 0, i32* %blkn, align 4
  store i32 0, i32* %ci, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.41, %for.body.12
  %36 = load i32, i32* %ci, align 4
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comps_in_scan14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 62
  %38 = load i32, i32* %comps_in_scan14, align 4
  %cmp15 = icmp slt i32 %36, %38
  br i1 %cmp15, label %for.body.16, label %for.end.43

for.body.16:                                      ; preds = %for.cond.13
  %39 = load i32, i32* %ci, align 4
  %idxprom17 = sext i32 %39 to i64
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cur_comp_info18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 63
  %arrayidx19 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info18, i32 0, i64 %idxprom17
  %41 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx19, align 8
  store %struct.jpeg_component_info* %41, %struct.jpeg_component_info** %compptr, align 8
  %42 = load i32, i32* %MCU_col_num, align 4
  %43 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %43, i32 0, i32 13
  %44 = load i32, i32* %MCU_width, align 4
  %mul20 = mul i32 %42, %44
  store i32 %mul20, i32* %start_col, align 4
  store i32 0, i32* %yindex, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.38, %for.body.16
  %45 = load i32, i32* %yindex, align 4
  %46 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %46, i32 0, i32 14
  %47 = load i32, i32* %MCU_height, align 4
  %cmp22 = icmp slt i32 %45, %47
  br i1 %cmp22, label %for.body.23, label %for.end.40

for.body.23:                                      ; preds = %for.cond.21
  %48 = load i32, i32* %yindex, align 4
  %49 = load i32, i32* %yoffset, align 4
  %add = add nsw i32 %48, %49
  %idxprom24 = sext i32 %add to i64
  %50 = load i32, i32* %ci, align 4
  %idxprom25 = sext i32 %50 to i64
  %arrayidx26 = getelementptr inbounds [4 x [64 x i16]**], [4 x [64 x i16]**]* %buffer, i32 0, i64 %idxprom25
  %51 = load [64 x i16]**, [64 x i16]*** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds [64 x i16]*, [64 x i16]** %51, i64 %idxprom24
  %52 = load [64 x i16]*, [64 x i16]** %arrayidx27, align 8
  %53 = load i32, i32* %start_col, align 4
  %idx.ext = zext i32 %53 to i64
  %add.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %52, i64 %idx.ext
  store [64 x i16]* %add.ptr, [64 x i16]** %buffer_ptr, align 8
  store i32 0, i32* %xindex, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.35, %for.body.23
  %54 = load i32, i32* %xindex, align 4
  %55 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_width29 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %55, i32 0, i32 13
  %56 = load i32, i32* %MCU_width29, align 4
  %cmp30 = icmp slt i32 %54, %56
  br i1 %cmp30, label %for.body.31, label %for.end.37

for.body.31:                                      ; preds = %for.cond.28
  %57 = load [64 x i16]*, [64 x i16]** %buffer_ptr, align 8
  %incdec.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %57, i32 1
  store [64 x i16]* %incdec.ptr, [64 x i16]** %buffer_ptr, align 8
  %58 = load i32, i32* %blkn, align 4
  %inc32 = add nsw i32 %58, 1
  store i32 %inc32, i32* %blkn, align 4
  %idxprom33 = sext i32 %58 to i64
  %59 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_buffer = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %59, i32 0, i32 4
  %arrayidx34 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer, i32 0, i64 %idxprom33
  store [64 x i16]* %57, [64 x i16]** %arrayidx34, align 8
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.31
  %60 = load i32, i32* %xindex, align 4
  %inc36 = add nsw i32 %60, 1
  store i32 %inc36, i32* %xindex, align 4
  br label %for.cond.28

for.end.37:                                       ; preds = %for.cond.28
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end.37
  %61 = load i32, i32* %yindex, align 4
  %inc39 = add nsw i32 %61, 1
  store i32 %inc39, i32* %yindex, align 4
  br label %for.cond.21

for.end.40:                                       ; preds = %for.cond.21
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.end.40
  %62 = load i32, i32* %ci, align 4
  %inc42 = add nsw i32 %62, 1
  store i32 %inc42, i32* %ci, align 4
  br label %for.cond.13

for.end.43:                                       ; preds = %for.cond.13
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %entropy = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %63, i32 0, i32 79
  %64 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy, align 8
  %decode_mcu = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %64, i32 0, i32 1
  %65 = load i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)** %decode_mcu, align 8
  %66 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %67 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_buffer44 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %67, i32 0, i32 4
  %arraydecay = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer44, i32 0, i32 0
  %call45 = call i32 %65(%struct.jpeg_decompress_struct* %66, [64 x i16]** %arraydecay)
  %tobool = icmp ne i32 %call45, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end.43
  %68 = load i32, i32* %yoffset, align 4
  %69 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_vert_offset46 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %69, i32 0, i32 2
  store i32 %68, i32* %MCU_vert_offset46, align 4
  %70 = load i32, i32* %MCU_col_num, align 4
  %71 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_ctr47 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %71, i32 0, i32 1
  store i32 %70, i32* %MCU_ctr47, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.end.43
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end
  %72 = load i32, i32* %MCU_col_num, align 4
  %inc49 = add i32 %72, 1
  store i32 %inc49, i32* %MCU_col_num, align 4
  br label %for.cond.10

for.end.50:                                       ; preds = %for.cond.10
  %73 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_ctr51 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %73, i32 0, i32 1
  store i32 0, i32* %MCU_ctr51, align 4
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.end.50
  %74 = load i32, i32* %yoffset, align 4
  %inc53 = add nsw i32 %74, 1
  store i32 %inc53, i32* %yoffset, align 4
  br label %for.cond.7

for.end.54:                                       ; preds = %for.cond.7
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %input_iMCU_row55 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %75, i32 0, i32 35
  %76 = load i32, i32* %input_iMCU_row55, align 4
  %inc56 = add i32 %76, 1
  store i32 %inc56, i32* %input_iMCU_row55, align 4
  %77 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %77, i32 0, i32 60
  %78 = load i32, i32* %total_iMCU_rows, align 4
  %cmp57 = icmp ult i32 %inc56, %78
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %for.end.54
  %79 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @start_iMCU_row(%struct.jpeg_decompress_struct* %79)
  store i32 3, i32* %retval
  br label %return

if.end.59:                                        ; preds = %for.end.54
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %80, i32 0, i32 77
  %81 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8
  %finish_input_pass = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %81, i32 0, i32 3
  %82 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %finish_input_pass, align 8
  %83 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void %82(%struct.jpeg_decompress_struct* %83)
  store i32 4, i32* %retval
  br label %return

return:                                           ; preds = %if.end.59, %if.then.58, %if.then
  %84 = load i32, i32* %retval
  ret i32 %84
}

; Function Attrs: nounwind uwtable
define internal i32 @decompress_data(%struct.jpeg_decompress_struct* %cinfo, i8*** %output_buf) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %output_buf.addr = alloca i8***, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  %last_iMCU_row = alloca i32, align 4
  %block_num = alloca i32, align 4
  %ci = alloca i32, align 4
  %block_row = alloca i32, align 4
  %block_rows = alloca i32, align 4
  %buffer = alloca [64 x i16]**, align 8
  %buffer_ptr = alloca [64 x i16]*, align 8
  %output_ptr = alloca i8**, align 8
  %output_col = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %inverse_DCT = alloca void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i8*** %output_buf, i8**** %output_buf.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 75
  %1 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef1, align 8
  %2 = bitcast %struct.jpeg_d_coef_controller* %1 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %2, %struct.my_coef_controller** %coef, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 60
  %4 = load i32, i32* %total_iMCU_rows, align 4
  %sub = sub i32 %4, 1
  store i32 %sub, i32* %last_iMCU_row, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 34
  %6 = load i32, i32* %input_scan_number, align 4
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 36
  %8 = load i32, i32* %output_scan_number, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %input_scan_number2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 34
  %10 = load i32, i32* %input_scan_number2, align 4
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_scan_number3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 36
  %12 = load i32, i32* %output_scan_number3, align 4
  %cmp4 = icmp eq i32 %10, %12
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 35
  %14 = load i32, i32* %input_iMCU_row, align 4
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 37
  %16 = load i32, i32* %output_iMCU_row, align 4
  %cmp5 = icmp ule i32 %14, %16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %17 = phi i1 [ false, %lor.rhs ], [ %cmp5, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %while.cond
  %18 = phi i1 [ true, %while.cond ], [ %17, %land.end ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 77
  %20 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %20, i32 0, i32 0
  %21 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %consume_input, align 8
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 %21(%struct.jpeg_decompress_struct* %22)
  %cmp6 = icmp eq i32 %call, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %lor.end
  store i32 0, i32* %ci, align 4
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 43
  %24 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %24, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.40, %while.end
  %25 = load i32, i32* %ci, align 4
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 8
  %27 = load i32, i32* %num_components, align 4
  %cmp7 = icmp slt i32 %25, %27
  br i1 %cmp7, label %for.body, label %for.end.43

for.body:                                         ; preds = %for.cond
  %28 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %28, i32 0, i32 12
  %29 = load i32, i32* %component_needed, align 4
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %for.body
  br label %for.inc.40

if.end.9:                                         ; preds = %for.body
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 1
  %31 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %31, i32 0, i32 8
  %32 = load [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)** %access_virt_barray, align 8
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %34 = bitcast %struct.jpeg_decompress_struct* %33 to %struct.jpeg_common_struct*
  %35 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %35 to i64
  %36 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %whole_image = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %36, i32 0, i32 5
  %arrayidx = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image, i32 0, i64 %idxprom
  %37 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %arrayidx, align 8
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_iMCU_row10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 37
  %39 = load i32, i32* %output_iMCU_row10, align 4
  %40 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %40, i32 0, i32 3
  %41 = load i32, i32* %v_samp_factor, align 4
  %mul = mul i32 %39, %41
  %42 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor11 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %42, i32 0, i32 3
  %43 = load i32, i32* %v_samp_factor11, align 4
  %call12 = call [64 x i16]** %32(%struct.jpeg_common_struct* %34, %struct.jvirt_barray_control* %37, i32 %mul, i32 %43, i32 0)
  store [64 x i16]** %call12, [64 x i16]*** %buffer, align 8
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_iMCU_row13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 37
  %45 = load i32, i32* %output_iMCU_row13, align 4
  %46 = load i32, i32* %last_iMCU_row, align 4
  %cmp14 = icmp ult i32 %45, %46
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.9
  %47 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor16 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %47, i32 0, i32 3
  %48 = load i32, i32* %v_samp_factor16, align 4
  store i32 %48, i32* %block_rows, align 4
  br label %if.end.22

if.else:                                          ; preds = %if.end.9
  %49 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %49, i32 0, i32 8
  %50 = load i32, i32* %height_in_blocks, align 4
  %51 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor17 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %51, i32 0, i32 3
  %52 = load i32, i32* %v_samp_factor17, align 4
  %rem = urem i32 %50, %52
  store i32 %rem, i32* %block_rows, align 4
  %53 = load i32, i32* %block_rows, align 4
  %cmp18 = icmp eq i32 %53, 0
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.else
  %54 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor20 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %54, i32 0, i32 3
  %55 = load i32, i32* %v_samp_factor20, align 4
  store i32 %55, i32* %block_rows, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.15
  %56 = load i32, i32* %ci, align 4
  %idxprom23 = sext i32 %56 to i64
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %idct = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %57, i32 0, i32 80
  %58 = load %struct.jpeg_inverse_dct*, %struct.jpeg_inverse_dct** %idct, align 8
  %inverse_DCT24 = getelementptr inbounds %struct.jpeg_inverse_dct, %struct.jpeg_inverse_dct* %58, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*]* %inverse_DCT24, i32 0, i64 %idxprom23
  %59 = load void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %arrayidx25, align 8
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* %59, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %inverse_DCT, align 8
  %60 = load i32, i32* %ci, align 4
  %idxprom26 = sext i32 %60 to i64
  %61 = load i8***, i8**** %output_buf.addr, align 8
  %arrayidx27 = getelementptr inbounds i8**, i8*** %61, i64 %idxprom26
  %62 = load i8**, i8*** %arrayidx27, align 8
  store i8** %62, i8*** %output_ptr, align 8
  store i32 0, i32* %block_row, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.37, %if.end.22
  %63 = load i32, i32* %block_row, align 4
  %64 = load i32, i32* %block_rows, align 4
  %cmp29 = icmp slt i32 %63, %64
  br i1 %cmp29, label %for.body.30, label %for.end.39

for.body.30:                                      ; preds = %for.cond.28
  %65 = load i32, i32* %block_row, align 4
  %idxprom31 = sext i32 %65 to i64
  %66 = load [64 x i16]**, [64 x i16]*** %buffer, align 8
  %arrayidx32 = getelementptr inbounds [64 x i16]*, [64 x i16]** %66, i64 %idxprom31
  %67 = load [64 x i16]*, [64 x i16]** %arrayidx32, align 8
  store [64 x i16]* %67, [64 x i16]** %buffer_ptr, align 8
  store i32 0, i32* %output_col, align 4
  store i32 0, i32* %block_num, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc, %for.body.30
  %68 = load i32, i32* %block_num, align 4
  %69 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %69, i32 0, i32 7
  %70 = load i32, i32* %width_in_blocks, align 4
  %cmp34 = icmp ult i32 %68, %70
  br i1 %cmp34, label %for.body.35, label %for.end

for.body.35:                                      ; preds = %for.cond.33
  %71 = load void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %inverse_DCT, align 8
  %72 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %73 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %74 = load [64 x i16]*, [64 x i16]** %buffer_ptr, align 8
  %75 = bitcast [64 x i16]* %74 to i16*
  %76 = load i8**, i8*** %output_ptr, align 8
  %77 = load i32, i32* %output_col, align 4
  call void %71(%struct.jpeg_decompress_struct* %72, %struct.jpeg_component_info* %73, i16* %75, i8** %76, i32 %77)
  %78 = load [64 x i16]*, [64 x i16]** %buffer_ptr, align 8
  %incdec.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %78, i32 1
  store [64 x i16]* %incdec.ptr, [64 x i16]** %buffer_ptr, align 8
  %79 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %79, i32 0, i32 9
  %80 = load i32, i32* %DCT_scaled_size, align 4
  %81 = load i32, i32* %output_col, align 4
  %add = add i32 %81, %80
  store i32 %add, i32* %output_col, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.35
  %82 = load i32, i32* %block_num, align 4
  %inc = add i32 %82, 1
  store i32 %inc, i32* %block_num, align 4
  br label %for.cond.33

for.end:                                          ; preds = %for.cond.33
  %83 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %DCT_scaled_size36 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %83, i32 0, i32 9
  %84 = load i32, i32* %DCT_scaled_size36, align 4
  %85 = load i8**, i8*** %output_ptr, align 8
  %idx.ext = sext i32 %84 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %85, i64 %idx.ext
  store i8** %add.ptr, i8*** %output_ptr, align 8
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end
  %86 = load i32, i32* %block_row, align 4
  %inc38 = add nsw i32 %86, 1
  store i32 %inc38, i32* %block_row, align 4
  br label %for.cond.28

for.end.39:                                       ; preds = %for.cond.28
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.end.39, %if.then.8
  %87 = load i32, i32* %ci, align 4
  %inc41 = add nsw i32 %87, 1
  store i32 %inc41, i32* %ci, align 4
  %88 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr42 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i32 1
  store %struct.jpeg_component_info* %incdec.ptr42, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.end.43:                                       ; preds = %for.cond
  %89 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_iMCU_row44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %89, i32 0, i32 37
  %90 = load i32, i32* %output_iMCU_row44, align 4
  %inc45 = add i32 %90, 1
  store i32 %inc45, i32* %output_iMCU_row44, align 4
  %91 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %total_iMCU_rows46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %91, i32 0, i32 60
  %92 = load i32, i32* %total_iMCU_rows46, align 4
  %cmp47 = icmp ult i32 %inc45, %92
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %for.end.43
  store i32 3, i32* %retval
  br label %return

if.end.49:                                        ; preds = %for.end.43
  store i32 4, i32* %retval
  br label %return

return:                                           ; preds = %if.end.49, %if.then.48, %if.then
  %93 = load i32, i32* %retval
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define internal i32 @dummy_consume_data(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @decompress_onepass(%struct.jpeg_decompress_struct* %cinfo, i8*** %output_buf) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %output_buf.addr = alloca i8***, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  %MCU_col_num = alloca i32, align 4
  %last_MCU_col = alloca i32, align 4
  %last_iMCU_row = alloca i32, align 4
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %xindex = alloca i32, align 4
  %yindex = alloca i32, align 4
  %yoffset = alloca i32, align 4
  %useful_width = alloca i32, align 4
  %output_ptr = alloca i8**, align 8
  %start_col = alloca i32, align 4
  %output_col = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %inverse_DCT = alloca void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i8*** %output_buf, i8**** %output_buf.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 75
  %1 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef1, align 8
  %2 = bitcast %struct.jpeg_d_coef_controller* %1 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %2, %struct.my_coef_controller** %coef, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 64
  %4 = load i32, i32* %MCUs_per_row, align 4
  %sub = sub i32 %4, 1
  store i32 %sub, i32* %last_MCU_col, align 4
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 60
  %6 = load i32, i32* %total_iMCU_rows, align 4
  %sub2 = sub i32 %6, 1
  store i32 %sub2, i32* %last_iMCU_row, align 4
  %7 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %7, i32 0, i32 2
  %8 = load i32, i32* %MCU_vert_offset, align 4
  store i32 %8, i32* %yoffset, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.62, %entry
  %9 = load i32, i32* %yoffset, align 4
  %10 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %10, i32 0, i32 3
  %11 = load i32, i32* %MCU_rows_per_iMCU_row, align 4
  %cmp = icmp slt i32 %9, %11
  br i1 %cmp, label %for.body, label %for.end.64

for.body:                                         ; preds = %for.cond
  %12 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_ctr = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %12, i32 0, i32 1
  %13 = load i32, i32* %MCU_ctr, align 4
  store i32 %13, i32* %MCU_col_num, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.58, %for.body
  %14 = load i32, i32* %MCU_col_num, align 4
  %15 = load i32, i32* %last_MCU_col, align 4
  %cmp4 = icmp ule i32 %14, %15
  br i1 %cmp4, label %for.body.5, label %for.end.60

for.body.5:                                       ; preds = %for.cond.3
  %16 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_buffer = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %16, i32 0, i32 4
  %arrayidx = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer, i32 0, i64 0
  %17 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8
  %18 = bitcast [64 x i16]* %17 to i8*
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 66
  %20 = load i32, i32* %blocks_in_MCU, align 4
  %conv = sext i32 %20 to i64
  %mul = mul i64 %conv, 128
  call void @jzero_far(i8* %18, i64 %mul)
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %entropy = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 79
  %22 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy, align 8
  %decode_mcu = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %22, i32 0, i32 1
  %23 = load i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)** %decode_mcu, align 8
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %25 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_buffer6 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %25, i32 0, i32 4
  %arraydecay = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer6, i32 0, i32 0
  %call = call i32 %23(%struct.jpeg_decompress_struct* %24, [64 x i16]** %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.5
  %26 = load i32, i32* %yoffset, align 4
  %27 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_vert_offset7 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %27, i32 0, i32 2
  store i32 %26, i32* %MCU_vert_offset7, align 4
  %28 = load i32, i32* %MCU_col_num, align 4
  %29 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_ctr8 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %29, i32 0, i32 1
  store i32 %28, i32* %MCU_ctr8, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body.5
  store i32 0, i32* %blkn, align 4
  store i32 0, i32* %ci, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.55, %if.end
  %30 = load i32, i32* %ci, align 4
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 62
  %32 = load i32, i32* %comps_in_scan, align 4
  %cmp10 = icmp slt i32 %30, %32
  br i1 %cmp10, label %for.body.12, label %for.end.57

for.body.12:                                      ; preds = %for.cond.9
  %33 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %33 to i64
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 63
  %arrayidx13 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %35 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx13, align 8
  store %struct.jpeg_component_info* %35, %struct.jpeg_component_info** %compptr, align 8
  %36 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %36, i32 0, i32 12
  %37 = load i32, i32* %component_needed, align 4
  %tobool14 = icmp ne i32 %37, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %for.body.12
  %38 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %38, i32 0, i32 15
  %39 = load i32, i32* %MCU_blocks, align 4
  %40 = load i32, i32* %blkn, align 4
  %add = add nsw i32 %40, %39
  store i32 %add, i32* %blkn, align 4
  br label %for.inc.55

if.end.16:                                        ; preds = %for.body.12
  %41 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %41, i32 0, i32 1
  %42 = load i32, i32* %component_index, align 4
  %idxprom17 = sext i32 %42 to i64
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %idct = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 80
  %44 = load %struct.jpeg_inverse_dct*, %struct.jpeg_inverse_dct** %idct, align 8
  %inverse_DCT18 = getelementptr inbounds %struct.jpeg_inverse_dct, %struct.jpeg_inverse_dct* %44, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*]* %inverse_DCT18, i32 0, i64 %idxprom17
  %45 = load void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %arrayidx19, align 8
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* %45, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %inverse_DCT, align 8
  %46 = load i32, i32* %MCU_col_num, align 4
  %47 = load i32, i32* %last_MCU_col, align 4
  %cmp20 = icmp ult i32 %46, %47
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  %48 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %48, i32 0, i32 13
  %49 = load i32, i32* %MCU_width, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.16
  %50 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %last_col_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %50, i32 0, i32 17
  %51 = load i32, i32* %last_col_width, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %49, %cond.true ], [ %51, %cond.false ]
  store i32 %cond, i32* %useful_width, align 4
  %52 = load i32, i32* %ci, align 4
  %idxprom22 = sext i32 %52 to i64
  %53 = load i8***, i8**** %output_buf.addr, align 8
  %arrayidx23 = getelementptr inbounds i8**, i8*** %53, i64 %idxprom22
  %54 = load i8**, i8*** %arrayidx23, align 8
  %55 = load i32, i32* %yoffset, align 4
  %56 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %56, i32 0, i32 9
  %57 = load i32, i32* %DCT_scaled_size, align 4
  %mul24 = mul nsw i32 %55, %57
  %idx.ext = sext i32 %mul24 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %54, i64 %idx.ext
  store i8** %add.ptr, i8*** %output_ptr, align 8
  %58 = load i32, i32* %MCU_col_num, align 4
  %59 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_sample_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %59, i32 0, i32 16
  %60 = load i32, i32* %MCU_sample_width, align 4
  %mul25 = mul i32 %58, %60
  store i32 %mul25, i32* %start_col, align 4
  store i32 0, i32* %yindex, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.52, %cond.end
  %61 = load i32, i32* %yindex, align 4
  %62 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %62, i32 0, i32 14
  %63 = load i32, i32* %MCU_height, align 4
  %cmp27 = icmp slt i32 %61, %63
  br i1 %cmp27, label %for.body.29, label %for.end.54

for.body.29:                                      ; preds = %for.cond.26
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 35
  %65 = load i32, i32* %input_iMCU_row, align 4
  %66 = load i32, i32* %last_iMCU_row, align 4
  %cmp30 = icmp ult i32 %65, %66
  br i1 %cmp30, label %if.then.35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.29
  %67 = load i32, i32* %yoffset, align 4
  %68 = load i32, i32* %yindex, align 4
  %add32 = add nsw i32 %67, %68
  %69 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %69, i32 0, i32 18
  %70 = load i32, i32* %last_row_height, align 4
  %cmp33 = icmp slt i32 %add32, %70
  br i1 %cmp33, label %if.then.35, label %if.end.46

if.then.35:                                       ; preds = %lor.lhs.false, %for.body.29
  %71 = load i32, i32* %start_col, align 4
  store i32 %71, i32* %output_col, align 4
  store i32 0, i32* %xindex, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc, %if.then.35
  %72 = load i32, i32* %xindex, align 4
  %73 = load i32, i32* %useful_width, align 4
  %cmp37 = icmp slt i32 %72, %73
  br i1 %cmp37, label %for.body.39, label %for.end

for.body.39:                                      ; preds = %for.cond.36
  %74 = load void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %inverse_DCT, align 8
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %76 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %77 = load i32, i32* %blkn, align 4
  %78 = load i32, i32* %xindex, align 4
  %add40 = add nsw i32 %77, %78
  %idxprom41 = sext i32 %add40 to i64
  %79 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_buffer42 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %79, i32 0, i32 4
  %arrayidx43 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer42, i32 0, i64 %idxprom41
  %80 = load [64 x i16]*, [64 x i16]** %arrayidx43, align 8
  %81 = bitcast [64 x i16]* %80 to i16*
  %82 = load i8**, i8*** %output_ptr, align 8
  %83 = load i32, i32* %output_col, align 4
  call void %74(%struct.jpeg_decompress_struct* %75, %struct.jpeg_component_info* %76, i16* %81, i8** %82, i32 %83)
  %84 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %DCT_scaled_size44 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %84, i32 0, i32 9
  %85 = load i32, i32* %DCT_scaled_size44, align 4
  %86 = load i32, i32* %output_col, align 4
  %add45 = add i32 %86, %85
  store i32 %add45, i32* %output_col, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.39
  %87 = load i32, i32* %xindex, align 4
  %inc = add nsw i32 %87, 1
  store i32 %inc, i32* %xindex, align 4
  br label %for.cond.36

for.end:                                          ; preds = %for.cond.36
  br label %if.end.46

if.end.46:                                        ; preds = %for.end, %lor.lhs.false
  %88 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_width47 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i32 0, i32 13
  %89 = load i32, i32* %MCU_width47, align 4
  %90 = load i32, i32* %blkn, align 4
  %add48 = add nsw i32 %90, %89
  store i32 %add48, i32* %blkn, align 4
  %91 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %DCT_scaled_size49 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %91, i32 0, i32 9
  %92 = load i32, i32* %DCT_scaled_size49, align 4
  %93 = load i8**, i8*** %output_ptr, align 8
  %idx.ext50 = sext i32 %92 to i64
  %add.ptr51 = getelementptr inbounds i8*, i8** %93, i64 %idx.ext50
  store i8** %add.ptr51, i8*** %output_ptr, align 8
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.46
  %94 = load i32, i32* %yindex, align 4
  %inc53 = add nsw i32 %94, 1
  store i32 %inc53, i32* %yindex, align 4
  br label %for.cond.26

for.end.54:                                       ; preds = %for.cond.26
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.end.54, %if.then.15
  %95 = load i32, i32* %ci, align 4
  %inc56 = add nsw i32 %95, 1
  store i32 %inc56, i32* %ci, align 4
  br label %for.cond.9

for.end.57:                                       ; preds = %for.cond.9
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.end.57
  %96 = load i32, i32* %MCU_col_num, align 4
  %inc59 = add i32 %96, 1
  store i32 %inc59, i32* %MCU_col_num, align 4
  br label %for.cond.3

for.end.60:                                       ; preds = %for.cond.3
  %97 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_ctr61 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %97, i32 0, i32 1
  store i32 0, i32* %MCU_ctr61, align 4
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.end.60
  %98 = load i32, i32* %yoffset, align 4
  %inc63 = add nsw i32 %98, 1
  store i32 %inc63, i32* %yoffset, align 4
  br label %for.cond

for.end.64:                                       ; preds = %for.cond
  %99 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %99, i32 0, i32 37
  %100 = load i32, i32* %output_iMCU_row, align 4
  %inc65 = add i32 %100, 1
  store i32 %inc65, i32* %output_iMCU_row, align 4
  %101 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %input_iMCU_row66 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %101, i32 0, i32 35
  %102 = load i32, i32* %input_iMCU_row66, align 4
  %inc67 = add i32 %102, 1
  store i32 %inc67, i32* %input_iMCU_row66, align 4
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %total_iMCU_rows68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %103, i32 0, i32 60
  %104 = load i32, i32* %total_iMCU_rows68, align 4
  %cmp69 = icmp ult i32 %inc67, %104
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %for.end.64
  %105 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @start_iMCU_row(%struct.jpeg_decompress_struct* %105)
  store i32 3, i32* %retval
  br label %return

if.end.72:                                        ; preds = %for.end.64
  %106 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %106, i32 0, i32 77
  %107 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8
  %finish_input_pass = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %107, i32 0, i32 3
  %108 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %finish_input_pass, align 8
  %109 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void %108(%struct.jpeg_decompress_struct* %109)
  store i32 4, i32* %retval
  br label %return

return:                                           ; preds = %if.end.72, %if.then.71, %if.then
  %110 = load i32, i32* %retval
  ret i32 %110
}

; Function Attrs: nounwind uwtable
define internal void @start_iMCU_row(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 75
  %1 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef1, align 8
  %2 = bitcast %struct.jpeg_d_coef_controller* %1 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %2, %struct.my_coef_controller** %coef, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 62
  %4 = load i32, i32* %comps_in_scan, align 4
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i32 0, i32 3
  store i32 1, i32* %MCU_rows_per_iMCU_row, align 4
  br label %if.end.9

if.else:                                          ; preds = %entry
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 35
  %7 = load i32, i32* %input_iMCU_row, align 4
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 60
  %9 = load i32, i32* %total_iMCU_rows, align 4
  %sub = sub i32 %9, 1
  %cmp2 = icmp ult i32 %7, %sub
  br i1 %cmp2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 63
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 0
  %11 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %11, i32 0, i32 3
  %12 = load i32, i32* %v_samp_factor, align 4
  %13 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_rows_per_iMCU_row4 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %13, i32 0, i32 3
  store i32 %12, i32* %MCU_rows_per_iMCU_row4, align 4
  br label %if.end

if.else.5:                                        ; preds = %if.else
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cur_comp_info6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 63
  %arrayidx7 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info6, i32 0, i64 0
  %15 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx7, align 8
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %15, i32 0, i32 18
  %16 = load i32, i32* %last_row_height, align 4
  %17 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_rows_per_iMCU_row8 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %17, i32 0, i32 3
  store i32 %16, i32* %MCU_rows_per_iMCU_row8, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.3
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %18 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_ctr = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %18, i32 0, i32 1
  store i32 0, i32* %MCU_ctr, align 4
  %19 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %19, i32 0, i32 2
  store i32 0, i32* %MCU_vert_offset, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @smoothing_ok(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  %smoothing_useful = alloca i32, align 4
  %ci = alloca i32, align 4
  %coefi = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %qtable = alloca %struct.JQUANT_TBL*, align 8
  %coef_bits = alloca i32*, align 8
  %coef_bits_latch = alloca i32*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 75
  %1 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef1, align 8
  %2 = bitcast %struct.jpeg_d_coef_controller* %1 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %2, %struct.my_coef_controller** %coef, align 8
  store i32 0, i32* %smoothing_useful, align 4
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 44
  %4 = load i32, i32* %progressive_mode, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %coef_bits2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 38
  %6 = load [64 x i32]*, [64 x i32]** %coef_bits2, align 8
  %cmp = icmp eq [64 x i32]* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %coef_bits_latch3 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %7, i32 0, i32 6
  %8 = load i32*, i32** %coef_bits_latch3, align 8
  %cmp4 = icmp eq i32* %8, null
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 1
  %10 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %10, i32 0, i32 0
  %11 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %13 = bitcast %struct.jpeg_decompress_struct* %12 to %struct.jpeg_common_struct*
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 8
  %15 = load i32, i32* %num_components, align 4
  %conv = sext i32 %15 to i64
  %mul = mul i64 %conv, 24
  %call = call i8* %11(%struct.jpeg_common_struct* %13, i32 1, i64 %mul)
  %16 = bitcast i8* %call to i32*
  %17 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %coef_bits_latch6 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %17, i32 0, i32 6
  store i32* %16, i32** %coef_bits_latch6, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %18 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %coef_bits_latch8 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %18, i32 0, i32 6
  %19 = load i32*, i32** %coef_bits_latch8, align 8
  store i32* %19, i32** %coef_bits_latch, align 8
  store i32 0, i32* %ci, align 4
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 43
  %21 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %21, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.72, %if.end.7
  %22 = load i32, i32* %ci, align 4
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 8
  %24 = load i32, i32* %num_components9, align 4
  %cmp10 = icmp slt i32 %22, %24
  br i1 %cmp10, label %for.body, label %for.end.74

for.body:                                         ; preds = %for.cond
  %25 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %25, i32 0, i32 19
  %26 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_table, align 8
  store %struct.JQUANT_TBL* %26, %struct.JQUANT_TBL** %qtable, align 8
  %cmp12 = icmp eq %struct.JQUANT_TBL* %26, null
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %for.body
  %27 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtable, align 8
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %27, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %quantval, i32 0, i64 0
  %28 = load i16, i16* %arrayidx, align 2
  %conv16 = zext i16 %28 to i32
  %cmp17 = icmp eq i32 %conv16, 0
  br i1 %cmp17, label %if.then.49, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %if.end.15
  %29 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtable, align 8
  %quantval20 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %29, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval20, i32 0, i64 1
  %30 = load i16, i16* %arrayidx21, align 2
  %conv22 = zext i16 %30 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %if.then.49, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.19
  %31 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtable, align 8
  %quantval26 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %31, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval26, i32 0, i64 8
  %32 = load i16, i16* %arrayidx27, align 2
  %conv28 = zext i16 %32 to i32
  %cmp29 = icmp eq i32 %conv28, 0
  br i1 %cmp29, label %if.then.49, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.25
  %33 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtable, align 8
  %quantval32 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %33, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval32, i32 0, i64 16
  %34 = load i16, i16* %arrayidx33, align 2
  %conv34 = zext i16 %34 to i32
  %cmp35 = icmp eq i32 %conv34, 0
  br i1 %cmp35, label %if.then.49, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.31
  %35 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtable, align 8
  %quantval38 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %35, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval38, i32 0, i64 9
  %36 = load i16, i16* %arrayidx39, align 2
  %conv40 = zext i16 %36 to i32
  %cmp41 = icmp eq i32 %conv40, 0
  br i1 %cmp41, label %if.then.49, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.37
  %37 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtable, align 8
  %quantval44 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %37, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval44, i32 0, i64 2
  %38 = load i16, i16* %arrayidx45, align 2
  %conv46 = zext i16 %38 to i32
  %cmp47 = icmp eq i32 %conv46, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %lor.lhs.false.43, %lor.lhs.false.37, %lor.lhs.false.31, %lor.lhs.false.25, %lor.lhs.false.19, %if.end.15
  store i32 0, i32* %retval
  br label %return

if.end.50:                                        ; preds = %lor.lhs.false.43
  %39 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %39 to i64
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %coef_bits51 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 38
  %41 = load [64 x i32]*, [64 x i32]** %coef_bits51, align 8
  %arrayidx52 = getelementptr inbounds [64 x i32], [64 x i32]* %41, i64 %idxprom
  %arraydecay = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx52, i32 0, i32 0
  store i32* %arraydecay, i32** %coef_bits, align 8
  %42 = load i32*, i32** %coef_bits, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %42, i64 0
  %43 = load i32, i32* %arrayidx53, align 4
  %cmp54 = icmp slt i32 %43, 0
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.50
  store i32 0, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.end.50
  store i32 1, i32* %coefi, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc, %if.end.57
  %44 = load i32, i32* %coefi, align 4
  %cmp59 = icmp sle i32 %44, 5
  br i1 %cmp59, label %for.body.61, label %for.end

for.body.61:                                      ; preds = %for.cond.58
  %45 = load i32, i32* %coefi, align 4
  %idxprom62 = sext i32 %45 to i64
  %46 = load i32*, i32** %coef_bits, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %46, i64 %idxprom62
  %47 = load i32, i32* %arrayidx63, align 4
  %48 = load i32, i32* %coefi, align 4
  %idxprom64 = sext i32 %48 to i64
  %49 = load i32*, i32** %coef_bits_latch, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %49, i64 %idxprom64
  store i32 %47, i32* %arrayidx65, align 4
  %50 = load i32, i32* %coefi, align 4
  %idxprom66 = sext i32 %50 to i64
  %51 = load i32*, i32** %coef_bits, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %51, i64 %idxprom66
  %52 = load i32, i32* %arrayidx67, align 4
  %cmp68 = icmp ne i32 %52, 0
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %for.body.61
  store i32 1, i32* %smoothing_useful, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %for.body.61
  br label %for.inc

for.inc:                                          ; preds = %if.end.71
  %53 = load i32, i32* %coefi, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %coefi, align 4
  br label %for.cond.58

for.end:                                          ; preds = %for.cond.58
  %54 = load i32*, i32** %coef_bits_latch, align 8
  %add.ptr = getelementptr inbounds i32, i32* %54, i64 6
  store i32* %add.ptr, i32** %coef_bits_latch, align 8
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.end
  %55 = load i32, i32* %ci, align 4
  %inc73 = add nsw i32 %55, 1
  store i32 %inc73, i32* %ci, align 4
  %56 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %56, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.end.74:                                       ; preds = %for.cond
  %57 = load i32, i32* %smoothing_useful, align 4
  store i32 %57, i32* %retval
  br label %return

return:                                           ; preds = %for.end.74, %if.then.56, %if.then.49, %if.then.14, %if.then
  %58 = load i32, i32* %retval
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define internal i32 @decompress_smooth_data(%struct.jpeg_decompress_struct* %cinfo, i8*** %output_buf) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %output_buf.addr = alloca i8***, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  %last_iMCU_row = alloca i32, align 4
  %block_num = alloca i32, align 4
  %last_block_column = alloca i32, align 4
  %ci = alloca i32, align 4
  %block_row = alloca i32, align 4
  %block_rows = alloca i32, align 4
  %access_rows = alloca i32, align 4
  %buffer = alloca [64 x i16]**, align 8
  %buffer_ptr = alloca [64 x i16]*, align 8
  %prev_block_row = alloca [64 x i16]*, align 8
  %next_block_row = alloca [64 x i16]*, align 8
  %output_ptr = alloca i8**, align 8
  %output_col = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %inverse_DCT = alloca void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, align 8
  %first_row = alloca i32, align 4
  %last_row = alloca i32, align 4
  %workspace = alloca [64 x i16], align 16
  %coef_bits = alloca i32*, align 8
  %quanttbl = alloca %struct.JQUANT_TBL*, align 8
  %Q00 = alloca i64, align 8
  %Q01 = alloca i64, align 8
  %Q02 = alloca i64, align 8
  %Q10 = alloca i64, align 8
  %Q11 = alloca i64, align 8
  %Q20 = alloca i64, align 8
  %num = alloca i64, align 8
  %DC1 = alloca i32, align 4
  %DC2 = alloca i32, align 4
  %DC3 = alloca i32, align 4
  %DC4 = alloca i32, align 4
  %DC5 = alloca i32, align 4
  %DC6 = alloca i32, align 4
  %DC7 = alloca i32, align 4
  %DC8 = alloca i32, align 4
  %DC9 = alloca i32, align 4
  %Al = alloca i32, align 4
  %pred = alloca i32, align 4
  %delta = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i8*** %output_buf, i8**** %output_buf.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 75
  %1 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef1, align 8
  %2 = bitcast %struct.jpeg_d_coef_controller* %1 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %2, %struct.my_coef_controller** %coef, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 60
  %4 = load i32, i32* %total_iMCU_rows, align 4
  %sub = sub i32 %4, 1
  store i32 %sub, i32* %last_iMCU_row, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %entry
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 34
  %6 = load i32, i32* %input_scan_number, align 4
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 36
  %8 = load i32, i32* %output_scan_number, align 4
  %cmp = icmp sle i32 %6, %8
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 77
  %10 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %10, i32 0, i32 5
  %11 = load i32, i32* %eoi_reached, align 4
  %tobool = icmp ne i32 %11, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %input_scan_number2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 34
  %14 = load i32, i32* %input_scan_number2, align 4
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_scan_number3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 36
  %16 = load i32, i32* %output_scan_number3, align 4
  %cmp4 = icmp eq i32 %14, %16
  br i1 %cmp4, label %if.then, label %if.end.8

if.then:                                          ; preds = %while.body
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 68
  %18 = load i32, i32* %Ss, align 4
  %cmp5 = icmp eq i32 %18, 0
  %cond = select i1 %cmp5, i32 1, i32 0
  store i32 %cond, i32* %delta, align 4
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %input_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 35
  %20 = load i32, i32* %input_iMCU_row, align 4
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_iMCU_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 37
  %22 = load i32, i32* %output_iMCU_row, align 4
  %23 = load i32, i32* %delta, align 4
  %add = add i32 %22, %23
  %cmp6 = icmp ugt i32 %20, %add
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  br label %while.end

if.end:                                           ; preds = %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %while.body
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %inputctl9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 77
  %25 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl9, align 8
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %25, i32 0, i32 0
  %26 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %consume_input, align 8
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 %26(%struct.jpeg_decompress_struct* %27)
  %cmp10 = icmp eq i32 %call, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  br label %while.cond

while.end:                                        ; preds = %if.then.7, %land.end
  store i32 0, i32* %ci, align 4
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 43
  %29 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %29, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.396, %while.end
  %30 = load i32, i32* %ci, align 4
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 8
  %32 = load i32, i32* %num_components, align 4
  %cmp13 = icmp slt i32 %30, %32
  br i1 %cmp13, label %for.body, label %for.end.399

for.body:                                         ; preds = %for.cond
  %33 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %33, i32 0, i32 12
  %34 = load i32, i32* %component_needed, align 4
  %tobool14 = icmp ne i32 %34, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %for.body
  br label %for.inc.396

if.end.16:                                        ; preds = %for.body
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_iMCU_row17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 37
  %36 = load i32, i32* %output_iMCU_row17, align 4
  %37 = load i32, i32* %last_iMCU_row, align 4
  %cmp18 = icmp ult i32 %36, %37
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.16
  %38 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %38, i32 0, i32 3
  %39 = load i32, i32* %v_samp_factor, align 4
  store i32 %39, i32* %block_rows, align 4
  %40 = load i32, i32* %block_rows, align 4
  %mul = mul nsw i32 %40, 2
  store i32 %mul, i32* %access_rows, align 4
  store i32 0, i32* %last_row, align 4
  br label %if.end.25

if.else:                                          ; preds = %if.end.16
  %41 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %41, i32 0, i32 8
  %42 = load i32, i32* %height_in_blocks, align 4
  %43 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor20 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %43, i32 0, i32 3
  %44 = load i32, i32* %v_samp_factor20, align 4
  %rem = urem i32 %42, %44
  store i32 %rem, i32* %block_rows, align 4
  %45 = load i32, i32* %block_rows, align 4
  %cmp21 = icmp eq i32 %45, 0
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.else
  %46 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor23 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %46, i32 0, i32 3
  %47 = load i32, i32* %v_samp_factor23, align 4
  store i32 %47, i32* %block_rows, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.else
  %48 = load i32, i32* %block_rows, align 4
  store i32 %48, i32* %access_rows, align 4
  store i32 1, i32* %last_row, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.19
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_iMCU_row26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 37
  %50 = load i32, i32* %output_iMCU_row26, align 4
  %cmp27 = icmp ugt i32 %50, 0
  br i1 %cmp27, label %if.then.28, label %if.else.37

if.then.28:                                       ; preds = %if.end.25
  %51 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor29 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %51, i32 0, i32 3
  %52 = load i32, i32* %v_samp_factor29, align 4
  %53 = load i32, i32* %access_rows, align 4
  %add30 = add nsw i32 %53, %52
  store i32 %add30, i32* %access_rows, align 4
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %54, i32 0, i32 1
  %55 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %55, i32 0, i32 8
  %56 = load [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)** %access_virt_barray, align 8
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %58 = bitcast %struct.jpeg_decompress_struct* %57 to %struct.jpeg_common_struct*
  %59 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %59 to i64
  %60 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %whole_image = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %60, i32 0, i32 5
  %arrayidx = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image, i32 0, i64 %idxprom
  %61 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %arrayidx, align 8
  %62 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_iMCU_row31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %62, i32 0, i32 37
  %63 = load i32, i32* %output_iMCU_row31, align 4
  %sub32 = sub i32 %63, 1
  %64 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor33 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %64, i32 0, i32 3
  %65 = load i32, i32* %v_samp_factor33, align 4
  %mul34 = mul i32 %sub32, %65
  %66 = load i32, i32* %access_rows, align 4
  %call35 = call [64 x i16]** %56(%struct.jpeg_common_struct* %58, %struct.jvirt_barray_control* %61, i32 %mul34, i32 %66, i32 0)
  store [64 x i16]** %call35, [64 x i16]*** %buffer, align 8
  %67 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor36 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %67, i32 0, i32 3
  %68 = load i32, i32* %v_samp_factor36, align 4
  %69 = load [64 x i16]**, [64 x i16]*** %buffer, align 8
  %idx.ext = sext i32 %68 to i64
  %add.ptr = getelementptr inbounds [64 x i16]*, [64 x i16]** %69, i64 %idx.ext
  store [64 x i16]** %add.ptr, [64 x i16]*** %buffer, align 8
  store i32 0, i32* %first_row, align 4
  br label %if.end.44

if.else.37:                                       ; preds = %if.end.25
  %70 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %70, i32 0, i32 1
  %71 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem38, align 8
  %access_virt_barray39 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %71, i32 0, i32 8
  %72 = load [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)** %access_virt_barray39, align 8
  %73 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %74 = bitcast %struct.jpeg_decompress_struct* %73 to %struct.jpeg_common_struct*
  %75 = load i32, i32* %ci, align 4
  %idxprom40 = sext i32 %75 to i64
  %76 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %whole_image41 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %76, i32 0, i32 5
  %arrayidx42 = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %whole_image41, i32 0, i64 %idxprom40
  %77 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %arrayidx42, align 8
  %78 = load i32, i32* %access_rows, align 4
  %call43 = call [64 x i16]** %72(%struct.jpeg_common_struct* %74, %struct.jvirt_barray_control* %77, i32 0, i32 %78, i32 0)
  store [64 x i16]** %call43, [64 x i16]*** %buffer, align 8
  store i32 1, i32* %first_row, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.37, %if.then.28
  %79 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %coef_bits_latch = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %79, i32 0, i32 6
  %80 = load i32*, i32** %coef_bits_latch, align 8
  %81 = load i32, i32* %ci, align 4
  %mul45 = mul nsw i32 %81, 6
  %idx.ext46 = sext i32 %mul45 to i64
  %add.ptr47 = getelementptr inbounds i32, i32* %80, i64 %idx.ext46
  store i32* %add.ptr47, i32** %coef_bits, align 8
  %82 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %82, i32 0, i32 19
  %83 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_table, align 8
  store %struct.JQUANT_TBL* %83, %struct.JQUANT_TBL** %quanttbl, align 8
  %84 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quanttbl, align 8
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %84, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval, i32 0, i64 0
  %85 = load i16, i16* %arrayidx48, align 2
  %conv = zext i16 %85 to i64
  store i64 %conv, i64* %Q00, align 8
  %86 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quanttbl, align 8
  %quantval49 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %86, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval49, i32 0, i64 1
  %87 = load i16, i16* %arrayidx50, align 2
  %conv51 = zext i16 %87 to i64
  store i64 %conv51, i64* %Q01, align 8
  %88 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quanttbl, align 8
  %quantval52 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %88, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval52, i32 0, i64 8
  %89 = load i16, i16* %arrayidx53, align 2
  %conv54 = zext i16 %89 to i64
  store i64 %conv54, i64* %Q10, align 8
  %90 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quanttbl, align 8
  %quantval55 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %90, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval55, i32 0, i64 16
  %91 = load i16, i16* %arrayidx56, align 2
  %conv57 = zext i16 %91 to i64
  store i64 %conv57, i64* %Q20, align 8
  %92 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quanttbl, align 8
  %quantval58 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %92, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval58, i32 0, i64 9
  %93 = load i16, i16* %arrayidx59, align 2
  %conv60 = zext i16 %93 to i64
  store i64 %conv60, i64* %Q11, align 8
  %94 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quanttbl, align 8
  %quantval61 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %94, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval61, i32 0, i64 2
  %95 = load i16, i16* %arrayidx62, align 2
  %conv63 = zext i16 %95 to i64
  store i64 %conv63, i64* %Q02, align 8
  %96 = load i32, i32* %ci, align 4
  %idxprom64 = sext i32 %96 to i64
  %97 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %idct = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %97, i32 0, i32 80
  %98 = load %struct.jpeg_inverse_dct*, %struct.jpeg_inverse_dct** %idct, align 8
  %inverse_DCT65 = getelementptr inbounds %struct.jpeg_inverse_dct, %struct.jpeg_inverse_dct* %98, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*]* %inverse_DCT65, i32 0, i64 %idxprom64
  %99 = load void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %arrayidx66, align 8
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* %99, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %inverse_DCT, align 8
  %100 = load i32, i32* %ci, align 4
  %idxprom67 = sext i32 %100 to i64
  %101 = load i8***, i8**** %output_buf.addr, align 8
  %arrayidx68 = getelementptr inbounds i8**, i8*** %101, i64 %idxprom67
  %102 = load i8**, i8*** %arrayidx68, align 8
  store i8** %102, i8*** %output_ptr, align 8
  store i32 0, i32* %block_row, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.393, %if.end.44
  %103 = load i32, i32* %block_row, align 4
  %104 = load i32, i32* %block_rows, align 4
  %cmp70 = icmp slt i32 %103, %104
  br i1 %cmp70, label %for.body.72, label %for.end.395

for.body.72:                                      ; preds = %for.cond.69
  %105 = load i32, i32* %block_row, align 4
  %idxprom73 = sext i32 %105 to i64
  %106 = load [64 x i16]**, [64 x i16]*** %buffer, align 8
  %arrayidx74 = getelementptr inbounds [64 x i16]*, [64 x i16]** %106, i64 %idxprom73
  %107 = load [64 x i16]*, [64 x i16]** %arrayidx74, align 8
  store [64 x i16]* %107, [64 x i16]** %buffer_ptr, align 8
  %108 = load i32, i32* %first_row, align 4
  %tobool75 = icmp ne i32 %108, 0
  br i1 %tobool75, label %land.lhs.true, label %if.else.79

land.lhs.true:                                    ; preds = %for.body.72
  %109 = load i32, i32* %block_row, align 4
  %cmp76 = icmp eq i32 %109, 0
  br i1 %cmp76, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %land.lhs.true
  %110 = load [64 x i16]*, [64 x i16]** %buffer_ptr, align 8
  store [64 x i16]* %110, [64 x i16]** %prev_block_row, align 8
  br label %if.end.83

if.else.79:                                       ; preds = %land.lhs.true, %for.body.72
  %111 = load i32, i32* %block_row, align 4
  %sub80 = sub nsw i32 %111, 1
  %idxprom81 = sext i32 %sub80 to i64
  %112 = load [64 x i16]**, [64 x i16]*** %buffer, align 8
  %arrayidx82 = getelementptr inbounds [64 x i16]*, [64 x i16]** %112, i64 %idxprom81
  %113 = load [64 x i16]*, [64 x i16]** %arrayidx82, align 8
  store [64 x i16]* %113, [64 x i16]** %prev_block_row, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.79, %if.then.78
  %114 = load i32, i32* %last_row, align 4
  %tobool84 = icmp ne i32 %114, 0
  br i1 %tobool84, label %land.lhs.true.85, label %if.else.90

land.lhs.true.85:                                 ; preds = %if.end.83
  %115 = load i32, i32* %block_row, align 4
  %116 = load i32, i32* %block_rows, align 4
  %sub86 = sub nsw i32 %116, 1
  %cmp87 = icmp eq i32 %115, %sub86
  br i1 %cmp87, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %land.lhs.true.85
  %117 = load [64 x i16]*, [64 x i16]** %buffer_ptr, align 8
  store [64 x i16]* %117, [64 x i16]** %next_block_row, align 8
  br label %if.end.94

if.else.90:                                       ; preds = %land.lhs.true.85, %if.end.83
  %118 = load i32, i32* %block_row, align 4
  %add91 = add nsw i32 %118, 1
  %idxprom92 = sext i32 %add91 to i64
  %119 = load [64 x i16]**, [64 x i16]*** %buffer, align 8
  %arrayidx93 = getelementptr inbounds [64 x i16]*, [64 x i16]** %119, i64 %idxprom92
  %120 = load [64 x i16]*, [64 x i16]** %arrayidx93, align 8
  store [64 x i16]* %120, [64 x i16]** %next_block_row, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.90, %if.then.89
  %121 = load [64 x i16]*, [64 x i16]** %prev_block_row, align 8
  %arrayidx95 = getelementptr inbounds [64 x i16], [64 x i16]* %121, i64 0
  %arrayidx96 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx95, i32 0, i64 0
  %122 = load i16, i16* %arrayidx96, align 2
  %conv97 = sext i16 %122 to i32
  store i32 %conv97, i32* %DC3, align 4
  store i32 %conv97, i32* %DC2, align 4
  store i32 %conv97, i32* %DC1, align 4
  %123 = load [64 x i16]*, [64 x i16]** %buffer_ptr, align 8
  %arrayidx98 = getelementptr inbounds [64 x i16], [64 x i16]* %123, i64 0
  %arrayidx99 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx98, i32 0, i64 0
  %124 = load i16, i16* %arrayidx99, align 2
  %conv100 = sext i16 %124 to i32
  store i32 %conv100, i32* %DC6, align 4
  store i32 %conv100, i32* %DC5, align 4
  store i32 %conv100, i32* %DC4, align 4
  %125 = load [64 x i16]*, [64 x i16]** %next_block_row, align 8
  %arrayidx101 = getelementptr inbounds [64 x i16], [64 x i16]* %125, i64 0
  %arrayidx102 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx101, i32 0, i64 0
  %126 = load i16, i16* %arrayidx102, align 2
  %conv103 = sext i16 %126 to i32
  store i32 %conv103, i32* %DC9, align 4
  store i32 %conv103, i32* %DC8, align 4
  store i32 %conv103, i32* %DC7, align 4
  store i32 0, i32* %output_col, align 4
  %127 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %127, i32 0, i32 7
  %128 = load i32, i32* %width_in_blocks, align 4
  %sub104 = sub i32 %128, 1
  store i32 %sub104, i32* %last_block_column, align 4
  store i32 0, i32* %block_num, align 4
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc, %if.end.94
  %129 = load i32, i32* %block_num, align 4
  %130 = load i32, i32* %last_block_column, align 4
  %cmp106 = icmp ule i32 %129, %130
  br i1 %cmp106, label %for.body.108, label %for.end

for.body.108:                                     ; preds = %for.cond.105
  %131 = load [64 x i16]*, [64 x i16]** %buffer_ptr, align 8
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %workspace, i32 0, i32 0
  %132 = bitcast i16* %arraydecay to [64 x i16]*
  call void @jcopy_block_row([64 x i16]* %131, [64 x i16]* %132, i32 1)
  %133 = load i32, i32* %block_num, align 4
  %134 = load i32, i32* %last_block_column, align 4
  %cmp109 = icmp ult i32 %133, %134
  br i1 %cmp109, label %if.then.111, label %if.end.121

if.then.111:                                      ; preds = %for.body.108
  %135 = load [64 x i16]*, [64 x i16]** %prev_block_row, align 8
  %arrayidx112 = getelementptr inbounds [64 x i16], [64 x i16]* %135, i64 1
  %arrayidx113 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx112, i32 0, i64 0
  %136 = load i16, i16* %arrayidx113, align 2
  %conv114 = sext i16 %136 to i32
  store i32 %conv114, i32* %DC3, align 4
  %137 = load [64 x i16]*, [64 x i16]** %buffer_ptr, align 8
  %arrayidx115 = getelementptr inbounds [64 x i16], [64 x i16]* %137, i64 1
  %arrayidx116 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx115, i32 0, i64 0
  %138 = load i16, i16* %arrayidx116, align 2
  %conv117 = sext i16 %138 to i32
  store i32 %conv117, i32* %DC6, align 4
  %139 = load [64 x i16]*, [64 x i16]** %next_block_row, align 8
  %arrayidx118 = getelementptr inbounds [64 x i16], [64 x i16]* %139, i64 1
  %arrayidx119 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx118, i32 0, i64 0
  %140 = load i16, i16* %arrayidx119, align 2
  %conv120 = sext i16 %140 to i32
  store i32 %conv120, i32* %DC9, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.111, %for.body.108
  %141 = load i32*, i32** %coef_bits, align 8
  %arrayidx122 = getelementptr inbounds i32, i32* %141, i64 1
  %142 = load i32, i32* %arrayidx122, align 4
  store i32 %142, i32* %Al, align 4
  %cmp123 = icmp ne i32 %142, 0
  br i1 %cmp123, label %land.lhs.true.125, label %if.end.171

land.lhs.true.125:                                ; preds = %if.end.121
  %arrayidx126 = getelementptr inbounds [64 x i16], [64 x i16]* %workspace, i32 0, i64 1
  %143 = load i16, i16* %arrayidx126, align 2
  %conv127 = sext i16 %143 to i32
  %cmp128 = icmp eq i32 %conv127, 0
  br i1 %cmp128, label %if.then.130, label %if.end.171

if.then.130:                                      ; preds = %land.lhs.true.125
  %144 = load i64, i64* %Q00, align 8
  %mul131 = mul nsw i64 36, %144
  %145 = load i32, i32* %DC4, align 4
  %146 = load i32, i32* %DC6, align 4
  %sub132 = sub nsw i32 %145, %146
  %conv133 = sext i32 %sub132 to i64
  %mul134 = mul nsw i64 %mul131, %conv133
  store i64 %mul134, i64* %num, align 8
  %147 = load i64, i64* %num, align 8
  %cmp135 = icmp sge i64 %147, 0
  br i1 %cmp135, label %if.then.137, label %if.else.151

if.then.137:                                      ; preds = %if.then.130
  %148 = load i64, i64* %Q01, align 8
  %shl = shl i64 %148, 7
  %149 = load i64, i64* %num, align 8
  %add138 = add nsw i64 %shl, %149
  %150 = load i64, i64* %Q01, align 8
  %shl139 = shl i64 %150, 8
  %div = sdiv i64 %add138, %shl139
  %conv140 = trunc i64 %div to i32
  store i32 %conv140, i32* %pred, align 4
  %151 = load i32, i32* %Al, align 4
  %cmp141 = icmp sgt i32 %151, 0
  br i1 %cmp141, label %land.lhs.true.143, label %if.end.150

land.lhs.true.143:                                ; preds = %if.then.137
  %152 = load i32, i32* %pred, align 4
  %153 = load i32, i32* %Al, align 4
  %shl144 = shl i32 1, %153
  %cmp145 = icmp sge i32 %152, %shl144
  br i1 %cmp145, label %if.then.147, label %if.end.150

if.then.147:                                      ; preds = %land.lhs.true.143
  %154 = load i32, i32* %Al, align 4
  %shl148 = shl i32 1, %154
  %sub149 = sub nsw i32 %shl148, 1
  store i32 %sub149, i32* %pred, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.147, %land.lhs.true.143, %if.then.137
  br label %if.end.168

if.else.151:                                      ; preds = %if.then.130
  %155 = load i64, i64* %Q01, align 8
  %shl152 = shl i64 %155, 7
  %156 = load i64, i64* %num, align 8
  %sub153 = sub nsw i64 %shl152, %156
  %157 = load i64, i64* %Q01, align 8
  %shl154 = shl i64 %157, 8
  %div155 = sdiv i64 %sub153, %shl154
  %conv156 = trunc i64 %div155 to i32
  store i32 %conv156, i32* %pred, align 4
  %158 = load i32, i32* %Al, align 4
  %cmp157 = icmp sgt i32 %158, 0
  br i1 %cmp157, label %land.lhs.true.159, label %if.end.166

land.lhs.true.159:                                ; preds = %if.else.151
  %159 = load i32, i32* %pred, align 4
  %160 = load i32, i32* %Al, align 4
  %shl160 = shl i32 1, %160
  %cmp161 = icmp sge i32 %159, %shl160
  br i1 %cmp161, label %if.then.163, label %if.end.166

if.then.163:                                      ; preds = %land.lhs.true.159
  %161 = load i32, i32* %Al, align 4
  %shl164 = shl i32 1, %161
  %sub165 = sub nsw i32 %shl164, 1
  store i32 %sub165, i32* %pred, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.163, %land.lhs.true.159, %if.else.151
  %162 = load i32, i32* %pred, align 4
  %sub167 = sub nsw i32 0, %162
  store i32 %sub167, i32* %pred, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.166, %if.end.150
  %163 = load i32, i32* %pred, align 4
  %conv169 = trunc i32 %163 to i16
  %arrayidx170 = getelementptr inbounds [64 x i16], [64 x i16]* %workspace, i32 0, i64 1
  store i16 %conv169, i16* %arrayidx170, align 2
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.168, %land.lhs.true.125, %if.end.121
  %164 = load i32*, i32** %coef_bits, align 8
  %arrayidx172 = getelementptr inbounds i32, i32* %164, i64 2
  %165 = load i32, i32* %arrayidx172, align 4
  store i32 %165, i32* %Al, align 4
  %cmp173 = icmp ne i32 %165, 0
  br i1 %cmp173, label %land.lhs.true.175, label %if.end.223

land.lhs.true.175:                                ; preds = %if.end.171
  %arrayidx176 = getelementptr inbounds [64 x i16], [64 x i16]* %workspace, i32 0, i64 8
  %166 = load i16, i16* %arrayidx176, align 2
  %conv177 = sext i16 %166 to i32
  %cmp178 = icmp eq i32 %conv177, 0
  br i1 %cmp178, label %if.then.180, label %if.end.223

if.then.180:                                      ; preds = %land.lhs.true.175
  %167 = load i64, i64* %Q00, align 8
  %mul181 = mul nsw i64 36, %167
  %168 = load i32, i32* %DC2, align 4
  %169 = load i32, i32* %DC8, align 4
  %sub182 = sub nsw i32 %168, %169
  %conv183 = sext i32 %sub182 to i64
  %mul184 = mul nsw i64 %mul181, %conv183
  store i64 %mul184, i64* %num, align 8
  %170 = load i64, i64* %num, align 8
  %cmp185 = icmp sge i64 %170, 0
  br i1 %cmp185, label %if.then.187, label %if.else.203

if.then.187:                                      ; preds = %if.then.180
  %171 = load i64, i64* %Q10, align 8
  %shl188 = shl i64 %171, 7
  %172 = load i64, i64* %num, align 8
  %add189 = add nsw i64 %shl188, %172
  %173 = load i64, i64* %Q10, align 8
  %shl190 = shl i64 %173, 8
  %div191 = sdiv i64 %add189, %shl190
  %conv192 = trunc i64 %div191 to i32
  store i32 %conv192, i32* %pred, align 4
  %174 = load i32, i32* %Al, align 4
  %cmp193 = icmp sgt i32 %174, 0
  br i1 %cmp193, label %land.lhs.true.195, label %if.end.202

land.lhs.true.195:                                ; preds = %if.then.187
  %175 = load i32, i32* %pred, align 4
  %176 = load i32, i32* %Al, align 4
  %shl196 = shl i32 1, %176
  %cmp197 = icmp sge i32 %175, %shl196
  br i1 %cmp197, label %if.then.199, label %if.end.202

if.then.199:                                      ; preds = %land.lhs.true.195
  %177 = load i32, i32* %Al, align 4
  %shl200 = shl i32 1, %177
  %sub201 = sub nsw i32 %shl200, 1
  store i32 %sub201, i32* %pred, align 4
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.199, %land.lhs.true.195, %if.then.187
  br label %if.end.220

if.else.203:                                      ; preds = %if.then.180
  %178 = load i64, i64* %Q10, align 8
  %shl204 = shl i64 %178, 7
  %179 = load i64, i64* %num, align 8
  %sub205 = sub nsw i64 %shl204, %179
  %180 = load i64, i64* %Q10, align 8
  %shl206 = shl i64 %180, 8
  %div207 = sdiv i64 %sub205, %shl206
  %conv208 = trunc i64 %div207 to i32
  store i32 %conv208, i32* %pred, align 4
  %181 = load i32, i32* %Al, align 4
  %cmp209 = icmp sgt i32 %181, 0
  br i1 %cmp209, label %land.lhs.true.211, label %if.end.218

land.lhs.true.211:                                ; preds = %if.else.203
  %182 = load i32, i32* %pred, align 4
  %183 = load i32, i32* %Al, align 4
  %shl212 = shl i32 1, %183
  %cmp213 = icmp sge i32 %182, %shl212
  br i1 %cmp213, label %if.then.215, label %if.end.218

if.then.215:                                      ; preds = %land.lhs.true.211
  %184 = load i32, i32* %Al, align 4
  %shl216 = shl i32 1, %184
  %sub217 = sub nsw i32 %shl216, 1
  store i32 %sub217, i32* %pred, align 4
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.215, %land.lhs.true.211, %if.else.203
  %185 = load i32, i32* %pred, align 4
  %sub219 = sub nsw i32 0, %185
  store i32 %sub219, i32* %pred, align 4
  br label %if.end.220

if.end.220:                                       ; preds = %if.end.218, %if.end.202
  %186 = load i32, i32* %pred, align 4
  %conv221 = trunc i32 %186 to i16
  %arrayidx222 = getelementptr inbounds [64 x i16], [64 x i16]* %workspace, i32 0, i64 8
  store i16 %conv221, i16* %arrayidx222, align 2
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.220, %land.lhs.true.175, %if.end.171
  %187 = load i32*, i32** %coef_bits, align 8
  %arrayidx224 = getelementptr inbounds i32, i32* %187, i64 3
  %188 = load i32, i32* %arrayidx224, align 4
  store i32 %188, i32* %Al, align 4
  %cmp225 = icmp ne i32 %188, 0
  br i1 %cmp225, label %land.lhs.true.227, label %if.end.277

land.lhs.true.227:                                ; preds = %if.end.223
  %arrayidx228 = getelementptr inbounds [64 x i16], [64 x i16]* %workspace, i32 0, i64 16
  %189 = load i16, i16* %arrayidx228, align 2
  %conv229 = sext i16 %189 to i32
  %cmp230 = icmp eq i32 %conv229, 0
  br i1 %cmp230, label %if.then.232, label %if.end.277

if.then.232:                                      ; preds = %land.lhs.true.227
  %190 = load i64, i64* %Q00, align 8
  %mul233 = mul nsw i64 9, %190
  %191 = load i32, i32* %DC2, align 4
  %192 = load i32, i32* %DC8, align 4
  %add234 = add nsw i32 %191, %192
  %193 = load i32, i32* %DC5, align 4
  %mul235 = mul nsw i32 2, %193
  %sub236 = sub nsw i32 %add234, %mul235
  %conv237 = sext i32 %sub236 to i64
  %mul238 = mul nsw i64 %mul233, %conv237
  store i64 %mul238, i64* %num, align 8
  %194 = load i64, i64* %num, align 8
  %cmp239 = icmp sge i64 %194, 0
  br i1 %cmp239, label %if.then.241, label %if.else.257

if.then.241:                                      ; preds = %if.then.232
  %195 = load i64, i64* %Q20, align 8
  %shl242 = shl i64 %195, 7
  %196 = load i64, i64* %num, align 8
  %add243 = add nsw i64 %shl242, %196
  %197 = load i64, i64* %Q20, align 8
  %shl244 = shl i64 %197, 8
  %div245 = sdiv i64 %add243, %shl244
  %conv246 = trunc i64 %div245 to i32
  store i32 %conv246, i32* %pred, align 4
  %198 = load i32, i32* %Al, align 4
  %cmp247 = icmp sgt i32 %198, 0
  br i1 %cmp247, label %land.lhs.true.249, label %if.end.256

land.lhs.true.249:                                ; preds = %if.then.241
  %199 = load i32, i32* %pred, align 4
  %200 = load i32, i32* %Al, align 4
  %shl250 = shl i32 1, %200
  %cmp251 = icmp sge i32 %199, %shl250
  br i1 %cmp251, label %if.then.253, label %if.end.256

if.then.253:                                      ; preds = %land.lhs.true.249
  %201 = load i32, i32* %Al, align 4
  %shl254 = shl i32 1, %201
  %sub255 = sub nsw i32 %shl254, 1
  store i32 %sub255, i32* %pred, align 4
  br label %if.end.256

if.end.256:                                       ; preds = %if.then.253, %land.lhs.true.249, %if.then.241
  br label %if.end.274

if.else.257:                                      ; preds = %if.then.232
  %202 = load i64, i64* %Q20, align 8
  %shl258 = shl i64 %202, 7
  %203 = load i64, i64* %num, align 8
  %sub259 = sub nsw i64 %shl258, %203
  %204 = load i64, i64* %Q20, align 8
  %shl260 = shl i64 %204, 8
  %div261 = sdiv i64 %sub259, %shl260
  %conv262 = trunc i64 %div261 to i32
  store i32 %conv262, i32* %pred, align 4
  %205 = load i32, i32* %Al, align 4
  %cmp263 = icmp sgt i32 %205, 0
  br i1 %cmp263, label %land.lhs.true.265, label %if.end.272

land.lhs.true.265:                                ; preds = %if.else.257
  %206 = load i32, i32* %pred, align 4
  %207 = load i32, i32* %Al, align 4
  %shl266 = shl i32 1, %207
  %cmp267 = icmp sge i32 %206, %shl266
  br i1 %cmp267, label %if.then.269, label %if.end.272

if.then.269:                                      ; preds = %land.lhs.true.265
  %208 = load i32, i32* %Al, align 4
  %shl270 = shl i32 1, %208
  %sub271 = sub nsw i32 %shl270, 1
  store i32 %sub271, i32* %pred, align 4
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.269, %land.lhs.true.265, %if.else.257
  %209 = load i32, i32* %pred, align 4
  %sub273 = sub nsw i32 0, %209
  store i32 %sub273, i32* %pred, align 4
  br label %if.end.274

if.end.274:                                       ; preds = %if.end.272, %if.end.256
  %210 = load i32, i32* %pred, align 4
  %conv275 = trunc i32 %210 to i16
  %arrayidx276 = getelementptr inbounds [64 x i16], [64 x i16]* %workspace, i32 0, i64 16
  store i16 %conv275, i16* %arrayidx276, align 2
  br label %if.end.277

if.end.277:                                       ; preds = %if.end.274, %land.lhs.true.227, %if.end.223
  %211 = load i32*, i32** %coef_bits, align 8
  %arrayidx278 = getelementptr inbounds i32, i32* %211, i64 4
  %212 = load i32, i32* %arrayidx278, align 4
  store i32 %212, i32* %Al, align 4
  %cmp279 = icmp ne i32 %212, 0
  br i1 %cmp279, label %land.lhs.true.281, label %if.end.331

land.lhs.true.281:                                ; preds = %if.end.277
  %arrayidx282 = getelementptr inbounds [64 x i16], [64 x i16]* %workspace, i32 0, i64 9
  %213 = load i16, i16* %arrayidx282, align 2
  %conv283 = sext i16 %213 to i32
  %cmp284 = icmp eq i32 %conv283, 0
  br i1 %cmp284, label %if.then.286, label %if.end.331

if.then.286:                                      ; preds = %land.lhs.true.281
  %214 = load i64, i64* %Q00, align 8
  %mul287 = mul nsw i64 5, %214
  %215 = load i32, i32* %DC1, align 4
  %216 = load i32, i32* %DC3, align 4
  %sub288 = sub nsw i32 %215, %216
  %217 = load i32, i32* %DC7, align 4
  %sub289 = sub nsw i32 %sub288, %217
  %218 = load i32, i32* %DC9, align 4
  %add290 = add nsw i32 %sub289, %218
  %conv291 = sext i32 %add290 to i64
  %mul292 = mul nsw i64 %mul287, %conv291
  store i64 %mul292, i64* %num, align 8
  %219 = load i64, i64* %num, align 8
  %cmp293 = icmp sge i64 %219, 0
  br i1 %cmp293, label %if.then.295, label %if.else.311

if.then.295:                                      ; preds = %if.then.286
  %220 = load i64, i64* %Q11, align 8
  %shl296 = shl i64 %220, 7
  %221 = load i64, i64* %num, align 8
  %add297 = add nsw i64 %shl296, %221
  %222 = load i64, i64* %Q11, align 8
  %shl298 = shl i64 %222, 8
  %div299 = sdiv i64 %add297, %shl298
  %conv300 = trunc i64 %div299 to i32
  store i32 %conv300, i32* %pred, align 4
  %223 = load i32, i32* %Al, align 4
  %cmp301 = icmp sgt i32 %223, 0
  br i1 %cmp301, label %land.lhs.true.303, label %if.end.310

land.lhs.true.303:                                ; preds = %if.then.295
  %224 = load i32, i32* %pred, align 4
  %225 = load i32, i32* %Al, align 4
  %shl304 = shl i32 1, %225
  %cmp305 = icmp sge i32 %224, %shl304
  br i1 %cmp305, label %if.then.307, label %if.end.310

if.then.307:                                      ; preds = %land.lhs.true.303
  %226 = load i32, i32* %Al, align 4
  %shl308 = shl i32 1, %226
  %sub309 = sub nsw i32 %shl308, 1
  store i32 %sub309, i32* %pred, align 4
  br label %if.end.310

if.end.310:                                       ; preds = %if.then.307, %land.lhs.true.303, %if.then.295
  br label %if.end.328

if.else.311:                                      ; preds = %if.then.286
  %227 = load i64, i64* %Q11, align 8
  %shl312 = shl i64 %227, 7
  %228 = load i64, i64* %num, align 8
  %sub313 = sub nsw i64 %shl312, %228
  %229 = load i64, i64* %Q11, align 8
  %shl314 = shl i64 %229, 8
  %div315 = sdiv i64 %sub313, %shl314
  %conv316 = trunc i64 %div315 to i32
  store i32 %conv316, i32* %pred, align 4
  %230 = load i32, i32* %Al, align 4
  %cmp317 = icmp sgt i32 %230, 0
  br i1 %cmp317, label %land.lhs.true.319, label %if.end.326

land.lhs.true.319:                                ; preds = %if.else.311
  %231 = load i32, i32* %pred, align 4
  %232 = load i32, i32* %Al, align 4
  %shl320 = shl i32 1, %232
  %cmp321 = icmp sge i32 %231, %shl320
  br i1 %cmp321, label %if.then.323, label %if.end.326

if.then.323:                                      ; preds = %land.lhs.true.319
  %233 = load i32, i32* %Al, align 4
  %shl324 = shl i32 1, %233
  %sub325 = sub nsw i32 %shl324, 1
  store i32 %sub325, i32* %pred, align 4
  br label %if.end.326

if.end.326:                                       ; preds = %if.then.323, %land.lhs.true.319, %if.else.311
  %234 = load i32, i32* %pred, align 4
  %sub327 = sub nsw i32 0, %234
  store i32 %sub327, i32* %pred, align 4
  br label %if.end.328

if.end.328:                                       ; preds = %if.end.326, %if.end.310
  %235 = load i32, i32* %pred, align 4
  %conv329 = trunc i32 %235 to i16
  %arrayidx330 = getelementptr inbounds [64 x i16], [64 x i16]* %workspace, i32 0, i64 9
  store i16 %conv329, i16* %arrayidx330, align 2
  br label %if.end.331

if.end.331:                                       ; preds = %if.end.328, %land.lhs.true.281, %if.end.277
  %236 = load i32*, i32** %coef_bits, align 8
  %arrayidx332 = getelementptr inbounds i32, i32* %236, i64 5
  %237 = load i32, i32* %arrayidx332, align 4
  store i32 %237, i32* %Al, align 4
  %cmp333 = icmp ne i32 %237, 0
  br i1 %cmp333, label %land.lhs.true.335, label %if.end.385

land.lhs.true.335:                                ; preds = %if.end.331
  %arrayidx336 = getelementptr inbounds [64 x i16], [64 x i16]* %workspace, i32 0, i64 2
  %238 = load i16, i16* %arrayidx336, align 2
  %conv337 = sext i16 %238 to i32
  %cmp338 = icmp eq i32 %conv337, 0
  br i1 %cmp338, label %if.then.340, label %if.end.385

if.then.340:                                      ; preds = %land.lhs.true.335
  %239 = load i64, i64* %Q00, align 8
  %mul341 = mul nsw i64 9, %239
  %240 = load i32, i32* %DC4, align 4
  %241 = load i32, i32* %DC6, align 4
  %add342 = add nsw i32 %240, %241
  %242 = load i32, i32* %DC5, align 4
  %mul343 = mul nsw i32 2, %242
  %sub344 = sub nsw i32 %add342, %mul343
  %conv345 = sext i32 %sub344 to i64
  %mul346 = mul nsw i64 %mul341, %conv345
  store i64 %mul346, i64* %num, align 8
  %243 = load i64, i64* %num, align 8
  %cmp347 = icmp sge i64 %243, 0
  br i1 %cmp347, label %if.then.349, label %if.else.365

if.then.349:                                      ; preds = %if.then.340
  %244 = load i64, i64* %Q02, align 8
  %shl350 = shl i64 %244, 7
  %245 = load i64, i64* %num, align 8
  %add351 = add nsw i64 %shl350, %245
  %246 = load i64, i64* %Q02, align 8
  %shl352 = shl i64 %246, 8
  %div353 = sdiv i64 %add351, %shl352
  %conv354 = trunc i64 %div353 to i32
  store i32 %conv354, i32* %pred, align 4
  %247 = load i32, i32* %Al, align 4
  %cmp355 = icmp sgt i32 %247, 0
  br i1 %cmp355, label %land.lhs.true.357, label %if.end.364

land.lhs.true.357:                                ; preds = %if.then.349
  %248 = load i32, i32* %pred, align 4
  %249 = load i32, i32* %Al, align 4
  %shl358 = shl i32 1, %249
  %cmp359 = icmp sge i32 %248, %shl358
  br i1 %cmp359, label %if.then.361, label %if.end.364

if.then.361:                                      ; preds = %land.lhs.true.357
  %250 = load i32, i32* %Al, align 4
  %shl362 = shl i32 1, %250
  %sub363 = sub nsw i32 %shl362, 1
  store i32 %sub363, i32* %pred, align 4
  br label %if.end.364

if.end.364:                                       ; preds = %if.then.361, %land.lhs.true.357, %if.then.349
  br label %if.end.382

if.else.365:                                      ; preds = %if.then.340
  %251 = load i64, i64* %Q02, align 8
  %shl366 = shl i64 %251, 7
  %252 = load i64, i64* %num, align 8
  %sub367 = sub nsw i64 %shl366, %252
  %253 = load i64, i64* %Q02, align 8
  %shl368 = shl i64 %253, 8
  %div369 = sdiv i64 %sub367, %shl368
  %conv370 = trunc i64 %div369 to i32
  store i32 %conv370, i32* %pred, align 4
  %254 = load i32, i32* %Al, align 4
  %cmp371 = icmp sgt i32 %254, 0
  br i1 %cmp371, label %land.lhs.true.373, label %if.end.380

land.lhs.true.373:                                ; preds = %if.else.365
  %255 = load i32, i32* %pred, align 4
  %256 = load i32, i32* %Al, align 4
  %shl374 = shl i32 1, %256
  %cmp375 = icmp sge i32 %255, %shl374
  br i1 %cmp375, label %if.then.377, label %if.end.380

if.then.377:                                      ; preds = %land.lhs.true.373
  %257 = load i32, i32* %Al, align 4
  %shl378 = shl i32 1, %257
  %sub379 = sub nsw i32 %shl378, 1
  store i32 %sub379, i32* %pred, align 4
  br label %if.end.380

if.end.380:                                       ; preds = %if.then.377, %land.lhs.true.373, %if.else.365
  %258 = load i32, i32* %pred, align 4
  %sub381 = sub nsw i32 0, %258
  store i32 %sub381, i32* %pred, align 4
  br label %if.end.382

if.end.382:                                       ; preds = %if.end.380, %if.end.364
  %259 = load i32, i32* %pred, align 4
  %conv383 = trunc i32 %259 to i16
  %arrayidx384 = getelementptr inbounds [64 x i16], [64 x i16]* %workspace, i32 0, i64 2
  store i16 %conv383, i16* %arrayidx384, align 2
  br label %if.end.385

if.end.385:                                       ; preds = %if.end.382, %land.lhs.true.335, %if.end.331
  %260 = load void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %inverse_DCT, align 8
  %261 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %262 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %arraydecay386 = getelementptr inbounds [64 x i16], [64 x i16]* %workspace, i32 0, i32 0
  %263 = load i8**, i8*** %output_ptr, align 8
  %264 = load i32, i32* %output_col, align 4
  call void %260(%struct.jpeg_decompress_struct* %261, %struct.jpeg_component_info* %262, i16* %arraydecay386, i8** %263, i32 %264)
  %265 = load i32, i32* %DC2, align 4
  store i32 %265, i32* %DC1, align 4
  %266 = load i32, i32* %DC3, align 4
  store i32 %266, i32* %DC2, align 4
  %267 = load i32, i32* %DC5, align 4
  store i32 %267, i32* %DC4, align 4
  %268 = load i32, i32* %DC6, align 4
  store i32 %268, i32* %DC5, align 4
  %269 = load i32, i32* %DC8, align 4
  store i32 %269, i32* %DC7, align 4
  %270 = load i32, i32* %DC9, align 4
  store i32 %270, i32* %DC8, align 4
  %271 = load [64 x i16]*, [64 x i16]** %buffer_ptr, align 8
  %incdec.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %271, i32 1
  store [64 x i16]* %incdec.ptr, [64 x i16]** %buffer_ptr, align 8
  %272 = load [64 x i16]*, [64 x i16]** %prev_block_row, align 8
  %incdec.ptr387 = getelementptr inbounds [64 x i16], [64 x i16]* %272, i32 1
  store [64 x i16]* %incdec.ptr387, [64 x i16]** %prev_block_row, align 8
  %273 = load [64 x i16]*, [64 x i16]** %next_block_row, align 8
  %incdec.ptr388 = getelementptr inbounds [64 x i16], [64 x i16]* %273, i32 1
  store [64 x i16]* %incdec.ptr388, [64 x i16]** %next_block_row, align 8
  %274 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %274, i32 0, i32 9
  %275 = load i32, i32* %DCT_scaled_size, align 4
  %276 = load i32, i32* %output_col, align 4
  %add389 = add i32 %276, %275
  store i32 %add389, i32* %output_col, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.385
  %277 = load i32, i32* %block_num, align 4
  %inc = add i32 %277, 1
  store i32 %inc, i32* %block_num, align 4
  br label %for.cond.105

for.end:                                          ; preds = %for.cond.105
  %278 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %DCT_scaled_size390 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %278, i32 0, i32 9
  %279 = load i32, i32* %DCT_scaled_size390, align 4
  %280 = load i8**, i8*** %output_ptr, align 8
  %idx.ext391 = sext i32 %279 to i64
  %add.ptr392 = getelementptr inbounds i8*, i8** %280, i64 %idx.ext391
  store i8** %add.ptr392, i8*** %output_ptr, align 8
  br label %for.inc.393

for.inc.393:                                      ; preds = %for.end
  %281 = load i32, i32* %block_row, align 4
  %inc394 = add nsw i32 %281, 1
  store i32 %inc394, i32* %block_row, align 4
  br label %for.cond.69

for.end.395:                                      ; preds = %for.cond.69
  br label %for.inc.396

for.inc.396:                                      ; preds = %for.end.395, %if.then.15
  %282 = load i32, i32* %ci, align 4
  %inc397 = add nsw i32 %282, 1
  store i32 %inc397, i32* %ci, align 4
  %283 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr398 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %283, i32 1
  store %struct.jpeg_component_info* %incdec.ptr398, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.end.399:                                      ; preds = %for.cond
  %284 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_iMCU_row400 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %284, i32 0, i32 37
  %285 = load i32, i32* %output_iMCU_row400, align 4
  %inc401 = add i32 %285, 1
  store i32 %inc401, i32* %output_iMCU_row400, align 4
  %286 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %total_iMCU_rows402 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %286, i32 0, i32 60
  %287 = load i32, i32* %total_iMCU_rows402, align 4
  %cmp403 = icmp ult i32 %inc401, %287
  br i1 %cmp403, label %if.then.405, label %if.end.406

if.then.405:                                      ; preds = %for.end.399
  store i32 3, i32* %retval
  br label %return

if.end.406:                                       ; preds = %for.end.399
  store i32 4, i32* %retval
  br label %return

return:                                           ; preds = %if.end.406, %if.then.405, %if.then.11
  %288 = load i32, i32* %retval
  ret i32 %288
}

declare void @jcopy_block_row([64 x i16]*, [64 x i16]*, i32) #1

declare void @jzero_far(i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
