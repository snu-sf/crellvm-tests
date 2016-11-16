; ModuleID = './jdsample.bc'
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
%struct.my_upsampler = type { %struct.jpeg_upsampler, [10 x i8**], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], i32, i32, [10 x i32], [10 x i8], [10 x i8] }

; Function Attrs: nounwind uwtable
define void @jinit_upsampler(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %upsample = alloca %struct.my_upsampler*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %h_in_group = alloca i32, align 4
  %v_in_group = alloca i32, align 4
  %h_out_group = alloca i32, align 4
  %v_out_group = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %h_in_group to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %v_in_group to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %h_out_group to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %v_out_group to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 1
  %8 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !5
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %8, i32 0, i32 0
  %9 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !10
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %11 = bitcast %struct.jpeg_decompress_struct* %10 to %struct.jpeg_common_struct*
  %call = call i8* %9(%struct.jpeg_common_struct* %11, i32 1, i64 256) #3
  %12 = bitcast i8* %call to %struct.my_upsampler*
  store %struct.my_upsampler* %12, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %13 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %13, i32 0, i32 0
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 91
  store %struct.jpeg_upsampler* %pub, %struct.jpeg_upsampler** %upsample1, align 8, !tbaa !13
  %15 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %pub2 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %15, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %pub2, i32 0, i32 0
  %start_pass3 = bitcast {}** %start_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @start_pass_upsample, void (%struct.jpeg_decompress_struct*)** %start_pass3, align 8, !tbaa !14
  %16 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %pub4 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %16, i32 0, i32 0
  %upsample5 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %pub4, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* @sep_upsample, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %upsample5, align 8, !tbaa !17
  %17 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %pub6 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %17, i32 0, i32 0
  %need_context_rows = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %pub6, i32 0, i32 2
  store i32 0, i32* %need_context_rows, align 4, !tbaa !18
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %CCIR601_sampling = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 61
  %19 = load i32, i32* %CCIR601_sampling, align 4, !tbaa !19
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !20
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 5
  store i32 26, i32* %msg_code, align 4, !tbaa !21
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8, !tbaa !20
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 0
  %24 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !23
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %26 = bitcast %struct.jpeg_decompress_struct* %25 to %struct.jpeg_common_struct*
  call void %24(%struct.jpeg_common_struct* %26) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %ci, align 4, !tbaa !24
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 44
  %28 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !25
  store %struct.jpeg_component_info* %28, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %29 = load i32, i32* %ci, align 4, !tbaa !24
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 9
  %31 = load i32, i32* %num_components, align 4, !tbaa !26
  %cmp = icmp slt i32 %29, %31
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %32, i32 0, i32 2
  %33 = load i32, i32* %h_samp_factor, align 4, !tbaa !27
  %34 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_h_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %34, i32 0, i32 9
  %35 = load i32, i32* %DCT_h_scaled_size, align 4, !tbaa !29
  %mul = mul nsw i32 %33, %35
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_h_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 65
  %37 = load i32, i32* %min_DCT_h_scaled_size, align 4, !tbaa !30
  %div = sdiv i32 %mul, %37
  store i32 %div, i32* %h_in_group, align 4, !tbaa !24
  %38 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %38, i32 0, i32 3
  %39 = load i32, i32* %v_samp_factor, align 4, !tbaa !31
  %40 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %40, i32 0, i32 10
  %41 = load i32, i32* %DCT_v_scaled_size, align 4, !tbaa !32
  %mul8 = mul nsw i32 %39, %41
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 66
  %43 = load i32, i32* %min_DCT_v_scaled_size, align 4, !tbaa !33
  %div9 = sdiv i32 %mul8, %43
  store i32 %div9, i32* %v_in_group, align 4, !tbaa !24
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 63
  %45 = load i32, i32* %max_h_samp_factor, align 4, !tbaa !34
  store i32 %45, i32* %h_out_group, align 4, !tbaa !24
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 64
  %47 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !35
  store i32 %47, i32* %v_out_group, align 4, !tbaa !24
  %48 = load i32, i32* %v_in_group, align 4, !tbaa !24
  %49 = load i32, i32* %ci, align 4, !tbaa !24
  %idxprom = sext i32 %49 to i64
  %50 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %rowgroup_height = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %50, i32 0, i32 5
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %rowgroup_height, i32 0, i64 %idxprom
  store i32 %48, i32* %arrayidx, align 4, !tbaa !24
  %51 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %51, i32 0, i32 13
  %52 = load i32, i32* %component_needed, align 4, !tbaa !36
  %tobool10 = icmp ne i32 %52, 0
  br i1 %tobool10, label %if.end.14, label %if.then.11

if.then.11:                                       ; preds = %for.body
  %53 = load i32, i32* %ci, align 4, !tbaa !24
  %idxprom12 = sext i32 %53 to i64
  %54 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %methods = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %54, i32 0, i32 2
  %arrayidx13 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %methods, i32 0, i64 %idxprom12
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @noop_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %arrayidx13, align 8, !tbaa !1
  br label %for.inc

if.end.14:                                        ; preds = %for.body
  %55 = load i32, i32* %h_in_group, align 4, !tbaa !24
  %56 = load i32, i32* %h_out_group, align 4, !tbaa !24
  %cmp15 = icmp eq i32 %55, %56
  br i1 %cmp15, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.end.14
  %57 = load i32, i32* %v_in_group, align 4, !tbaa !24
  %58 = load i32, i32* %v_out_group, align 4, !tbaa !24
  %cmp16 = icmp eq i32 %57, %58
  br i1 %cmp16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %land.lhs.true
  %59 = load i32, i32* %ci, align 4, !tbaa !24
  %idxprom18 = sext i32 %59 to i64
  %60 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %methods19 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %60, i32 0, i32 2
  %arrayidx20 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %methods19, i32 0, i64 %idxprom18
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @fullsize_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %arrayidx20, align 8, !tbaa !1
  br label %for.inc

if.end.21:                                        ; preds = %land.lhs.true, %if.end.14
  %61 = load i32, i32* %h_in_group, align 4, !tbaa !24
  %mul22 = mul nsw i32 %61, 2
  %62 = load i32, i32* %h_out_group, align 4, !tbaa !24
  %cmp23 = icmp eq i32 %mul22, %62
  br i1 %cmp23, label %land.lhs.true.24, label %if.else

land.lhs.true.24:                                 ; preds = %if.end.21
  %63 = load i32, i32* %v_in_group, align 4, !tbaa !24
  %64 = load i32, i32* %v_out_group, align 4, !tbaa !24
  %cmp25 = icmp eq i32 %63, %64
  br i1 %cmp25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %land.lhs.true.24
  %65 = load i32, i32* %ci, align 4, !tbaa !24
  %idxprom27 = sext i32 %65 to i64
  %66 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %methods28 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %66, i32 0, i32 2
  %arrayidx29 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %methods28, i32 0, i64 %idxprom27
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @h2v1_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %arrayidx29, align 8, !tbaa !1
  br label %if.end.62

if.else:                                          ; preds = %land.lhs.true.24, %if.end.21
  %67 = load i32, i32* %h_in_group, align 4, !tbaa !24
  %mul30 = mul nsw i32 %67, 2
  %68 = load i32, i32* %h_out_group, align 4, !tbaa !24
  %cmp31 = icmp eq i32 %mul30, %68
  br i1 %cmp31, label %land.lhs.true.32, label %if.else.39

land.lhs.true.32:                                 ; preds = %if.else
  %69 = load i32, i32* %v_in_group, align 4, !tbaa !24
  %mul33 = mul nsw i32 %69, 2
  %70 = load i32, i32* %v_out_group, align 4, !tbaa !24
  %cmp34 = icmp eq i32 %mul33, %70
  br i1 %cmp34, label %if.then.35, label %if.else.39

if.then.35:                                       ; preds = %land.lhs.true.32
  %71 = load i32, i32* %ci, align 4, !tbaa !24
  %idxprom36 = sext i32 %71 to i64
  %72 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %methods37 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %72, i32 0, i32 2
  %arrayidx38 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %methods37, i32 0, i64 %idxprom36
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @h2v2_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %arrayidx38, align 8, !tbaa !1
  br label %if.end.61

if.else.39:                                       ; preds = %land.lhs.true.32, %if.else
  %73 = load i32, i32* %h_out_group, align 4, !tbaa !24
  %74 = load i32, i32* %h_in_group, align 4, !tbaa !24
  %rem = srem i32 %73, %74
  %cmp40 = icmp eq i32 %rem, 0
  br i1 %cmp40, label %land.lhs.true.41, label %if.else.55

land.lhs.true.41:                                 ; preds = %if.else.39
  %75 = load i32, i32* %v_out_group, align 4, !tbaa !24
  %76 = load i32, i32* %v_in_group, align 4, !tbaa !24
  %rem42 = srem i32 %75, %76
  %cmp43 = icmp eq i32 %rem42, 0
  br i1 %cmp43, label %if.then.44, label %if.else.55

if.then.44:                                       ; preds = %land.lhs.true.41
  %77 = load i32, i32* %ci, align 4, !tbaa !24
  %idxprom45 = sext i32 %77 to i64
  %78 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %methods46 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %78, i32 0, i32 2
  %arrayidx47 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %methods46, i32 0, i64 %idxprom45
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @int_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %arrayidx47, align 8, !tbaa !1
  %79 = load i32, i32* %h_out_group, align 4, !tbaa !24
  %80 = load i32, i32* %h_in_group, align 4, !tbaa !24
  %div48 = sdiv i32 %79, %80
  %conv = trunc i32 %div48 to i8
  %81 = load i32, i32* %ci, align 4, !tbaa !24
  %idxprom49 = sext i32 %81 to i64
  %82 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %h_expand = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %82, i32 0, i32 6
  %arrayidx50 = getelementptr inbounds [10 x i8], [10 x i8]* %h_expand, i32 0, i64 %idxprom49
  store i8 %conv, i8* %arrayidx50, align 1, !tbaa !37
  %83 = load i32, i32* %v_out_group, align 4, !tbaa !24
  %84 = load i32, i32* %v_in_group, align 4, !tbaa !24
  %div51 = sdiv i32 %83, %84
  %conv52 = trunc i32 %div51 to i8
  %85 = load i32, i32* %ci, align 4, !tbaa !24
  %idxprom53 = sext i32 %85 to i64
  %86 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %v_expand = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %86, i32 0, i32 7
  %arrayidx54 = getelementptr inbounds [10 x i8], [10 x i8]* %v_expand, i32 0, i64 %idxprom53
  store i8 %conv52, i8* %arrayidx54, align 1, !tbaa !37
  br label %if.end.60

if.else.55:                                       ; preds = %land.lhs.true.41, %if.else.39
  %87 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err56 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %87, i32 0, i32 0
  %88 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err56, align 8, !tbaa !20
  %msg_code57 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %88, i32 0, i32 5
  store i32 39, i32* %msg_code57, align 4, !tbaa !21
  %89 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %89, i32 0, i32 0
  %90 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err58, align 8, !tbaa !20
  %error_exit59 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %90, i32 0, i32 0
  %91 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit59, align 8, !tbaa !23
  %92 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %93 = bitcast %struct.jpeg_decompress_struct* %92 to %struct.jpeg_common_struct*
  call void %91(%struct.jpeg_common_struct* %93) #3
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.55, %if.then.44
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.35
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.26
  %94 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem63 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %94, i32 0, i32 1
  %95 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem63, align 8, !tbaa !5
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %95, i32 0, i32 2
  %96 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8, !tbaa !38
  %97 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %98 = bitcast %struct.jpeg_decompress_struct* %97 to %struct.jpeg_common_struct*
  %99 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %99, i32 0, i32 27
  %100 = load i32, i32* %output_width, align 4, !tbaa !39
  %conv64 = zext i32 %100 to i64
  %101 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_h_samp_factor65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %101, i32 0, i32 63
  %102 = load i32, i32* %max_h_samp_factor65, align 4, !tbaa !34
  %conv66 = sext i32 %102 to i64
  %call67 = call i64 @jround_up(i64 %conv64, i64 %conv66) #3
  %conv68 = trunc i64 %call67 to i32
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor69 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %103, i32 0, i32 64
  %104 = load i32, i32* %max_v_samp_factor69, align 4, !tbaa !35
  %call70 = call i8** %96(%struct.jpeg_common_struct* %98, i32 1, i32 %conv68, i32 %104) #3
  %105 = load i32, i32* %ci, align 4, !tbaa !24
  %idxprom71 = sext i32 %105 to i64
  %106 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %color_buf = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %106, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf, i32 0, i64 %idxprom71
  store i8** %call70, i8*** %arrayidx72, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.62, %if.then.17, %if.then.11
  %107 = load i32, i32* %ci, align 4, !tbaa !24
  %inc = add nsw i32 %107, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !24
  %108 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %108, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %109 = bitcast i32* %v_out_group to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i32* %h_out_group to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast i32* %v_in_group to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast i32* %h_in_group to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_upsample(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %upsample = alloca %struct.my_upsampler*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 91
  %2 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_upsampler* %2 to %struct.my_upsampler*
  store %struct.my_upsampler* %3, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 64
  %5 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !35
  %6 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %next_row_out = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %6, i32 0, i32 3
  store i32 %5, i32* %next_row_out, align 4, !tbaa !40
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 28
  %8 = load i32, i32* %output_height, align 4, !tbaa !41
  %9 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %rows_to_go = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %9, i32 0, i32 4
  store i32 %8, i32* %rows_to_go, align 4, !tbaa !42
  %10 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
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
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !1
  store i32* %in_row_group_ctr, i32** %in_row_group_ctr.addr, align 8, !tbaa !1
  store i32 %in_row_groups_avail, i32* %in_row_groups_avail.addr, align 4, !tbaa !24
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !1
  store i32* %out_row_ctr, i32** %out_row_ctr.addr, align 8, !tbaa !1
  store i32 %out_rows_avail, i32* %out_rows_avail.addr, align 4, !tbaa !24
  %0 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 91
  %2 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_upsampler* %2 to %struct.my_upsampler*
  store %struct.my_upsampler* %3, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %next_row_out = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %7, i32 0, i32 3
  %8 = load i32, i32* %next_row_out, align 4, !tbaa !40
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 64
  %10 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !35
  %cmp = icmp sge i32 %8, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %ci, align 4, !tbaa !24
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 44
  %12 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !25
  store %struct.jpeg_component_info* %12, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %13 = load i32, i32* %ci, align 4, !tbaa !24
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 9
  %15 = load i32, i32* %num_components, align 4, !tbaa !26
  %cmp2 = icmp slt i32 %13, %15
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %ci, align 4, !tbaa !24
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %methods = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %17, i32 0, i32 2
  %arrayidx = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %methods, i32 0, i64 %idxprom
  %18 = load void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %arrayidx, align 8, !tbaa !1
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %20 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %21 = load i32, i32* %ci, align 4, !tbaa !24
  %idxprom3 = sext i32 %21 to i64
  %22 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8**, i8*** %22, i64 %idxprom3
  %23 = load i8**, i8*** %arrayidx4, align 8, !tbaa !1
  %24 = load i32*, i32** %in_row_group_ctr.addr, align 8, !tbaa !1
  %25 = load i32, i32* %24, align 4, !tbaa !24
  %26 = load i32, i32* %ci, align 4, !tbaa !24
  %idxprom5 = sext i32 %26 to i64
  %27 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %rowgroup_height = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %27, i32 0, i32 5
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %rowgroup_height, i32 0, i64 %idxprom5
  %28 = load i32, i32* %arrayidx6, align 4, !tbaa !24
  %mul = mul i32 %25, %28
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8*, i8** %23, i64 %idx.ext
  %29 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %color_buf = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %29, i32 0, i32 1
  %arraydecay = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf, i32 0, i32 0
  %30 = load i32, i32* %ci, align 4, !tbaa !24
  %idx.ext7 = sext i32 %30 to i64
  %add.ptr8 = getelementptr inbounds i8**, i8*** %arraydecay, i64 %idx.ext7
  call void %18(%struct.jpeg_decompress_struct* %19, %struct.jpeg_component_info* %20, i8** %add.ptr, i8*** %add.ptr8) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %ci, align 4, !tbaa !24
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !24
  %32 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %32, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %next_row_out9 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %33, i32 0, i32 3
  store i32 0, i32* %next_row_out9, align 4, !tbaa !40
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 64
  %35 = load i32, i32* %max_v_samp_factor10, align 4, !tbaa !35
  %36 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %next_row_out11 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %36, i32 0, i32 3
  %37 = load i32, i32* %next_row_out11, align 4, !tbaa !40
  %sub = sub nsw i32 %35, %37
  store i32 %sub, i32* %num_rows, align 4, !tbaa !24
  %38 = load i32, i32* %num_rows, align 4, !tbaa !24
  %39 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %rows_to_go = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %39, i32 0, i32 4
  %40 = load i32, i32* %rows_to_go, align 4, !tbaa !42
  %cmp12 = icmp ugt i32 %38, %40
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end
  %41 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %rows_to_go14 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %41, i32 0, i32 4
  %42 = load i32, i32* %rows_to_go14, align 4, !tbaa !42
  store i32 %42, i32* %num_rows, align 4, !tbaa !24
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end
  %43 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !1
  %44 = load i32, i32* %43, align 4, !tbaa !24
  %45 = load i32, i32* %out_rows_avail.addr, align 4, !tbaa !24
  %sub16 = sub i32 %45, %44
  store i32 %sub16, i32* %out_rows_avail.addr, align 4, !tbaa !24
  %46 = load i32, i32* %num_rows, align 4, !tbaa !24
  %47 = load i32, i32* %out_rows_avail.addr, align 4, !tbaa !24
  %cmp17 = icmp ugt i32 %46, %47
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  %48 = load i32, i32* %out_rows_avail.addr, align 4, !tbaa !24
  store i32 %48, i32* %num_rows, align 4, !tbaa !24
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.15
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cconvert = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 92
  %50 = load %struct.jpeg_color_deconverter*, %struct.jpeg_color_deconverter** %cconvert, align 8, !tbaa !43
  %color_convert = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %50, i32 0, i32 1
  %51 = load void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %color_convert, align 8, !tbaa !44
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %53 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %color_buf20 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %53, i32 0, i32 1
  %arraydecay21 = getelementptr inbounds [10 x i8**], [10 x i8**]* %color_buf20, i32 0, i32 0
  %54 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %next_row_out22 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %54, i32 0, i32 3
  %55 = load i32, i32* %next_row_out22, align 4, !tbaa !40
  %56 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !1
  %57 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !1
  %58 = load i32, i32* %57, align 4, !tbaa !24
  %idx.ext23 = zext i32 %58 to i64
  %add.ptr24 = getelementptr inbounds i8*, i8** %56, i64 %idx.ext23
  %59 = load i32, i32* %num_rows, align 4, !tbaa !24
  call void %51(%struct.jpeg_decompress_struct* %52, i8*** %arraydecay21, i32 %55, i8** %add.ptr24, i32 %59) #3
  %60 = load i32, i32* %num_rows, align 4, !tbaa !24
  %61 = load i32*, i32** %out_row_ctr.addr, align 8, !tbaa !1
  %62 = load i32, i32* %61, align 4, !tbaa !24
  %add = add i32 %62, %60
  store i32 %add, i32* %61, align 4, !tbaa !24
  %63 = load i32, i32* %num_rows, align 4, !tbaa !24
  %64 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %rows_to_go25 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %64, i32 0, i32 4
  %65 = load i32, i32* %rows_to_go25, align 4, !tbaa !42
  %sub26 = sub i32 %65, %63
  store i32 %sub26, i32* %rows_to_go25, align 4, !tbaa !42
  %66 = load i32, i32* %num_rows, align 4, !tbaa !24
  %67 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %next_row_out27 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %67, i32 0, i32 3
  %68 = load i32, i32* %next_row_out27, align 4, !tbaa !40
  %add28 = add i32 %68, %66
  store i32 %add28, i32* %next_row_out27, align 4, !tbaa !40
  %69 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %next_row_out29 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %69, i32 0, i32 3
  %70 = load i32, i32* %next_row_out29, align 4, !tbaa !40
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 64
  %72 = load i32, i32* %max_v_samp_factor30, align 4, !tbaa !35
  %cmp31 = icmp sge i32 %70, %72
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.19
  %73 = load i32*, i32** %in_row_group_ctr.addr, align 8, !tbaa !1
  %74 = load i32, i32* %73, align 4, !tbaa !24
  %inc33 = add i32 %74, 1
  store i32 %inc33, i32* %73, align 4, !tbaa !24
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end.19
  %75 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @noop_upsample(%struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8*** %output_data_ptr) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data_ptr.addr = alloca i8***, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !1
  store i8** %input_data, i8*** %input_data.addr, align 8, !tbaa !1
  store i8*** %output_data_ptr, i8**** %output_data_ptr.addr, align 8, !tbaa !1
  %0 = load i8***, i8**** %output_data_ptr.addr, align 8, !tbaa !1
  store i8** null, i8*** %0, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fullsize_upsample(%struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8*** %output_data_ptr) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data_ptr.addr = alloca i8***, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !1
  store i8** %input_data, i8*** %input_data.addr, align 8, !tbaa !1
  store i8*** %output_data_ptr, i8**** %output_data_ptr.addr, align 8, !tbaa !1
  %0 = load i8**, i8*** %input_data.addr, align 8, !tbaa !1
  %1 = load i8***, i8**** %output_data_ptr.addr, align 8, !tbaa !1
  store i8** %0, i8*** %1, align 8, !tbaa !1
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
  %outrow = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !1
  store i8** %input_data, i8*** %input_data.addr, align 8, !tbaa !1
  store i8*** %output_data_ptr, i8**** %output_data_ptr.addr, align 8, !tbaa !1
  %0 = bitcast i8*** %output_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8***, i8**** %output_data_ptr.addr, align 8, !tbaa !1
  %2 = load i8**, i8*** %1, align 8, !tbaa !1
  store i8** %2, i8*** %output_data, align 8, !tbaa !1
  %3 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  call void @llvm.lifetime.start(i64 1, i8* %invalue) #1
  %5 = bitcast i8** %outend to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %outrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %outrow, align 4, !tbaa !24
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %outrow, align 4, !tbaa !24
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 64
  %9 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !35
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %outrow, align 4, !tbaa !24
  %idxprom = sext i32 %10 to i64
  %11 = load i8**, i8*** %input_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %11, i64 %idxprom
  %12 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %12, i8** %inptr, align 8, !tbaa !1
  %13 = load i32, i32* %outrow, align 4, !tbaa !24
  %idxprom1 = sext i32 %13 to i64
  %14 = load i8**, i8*** %output_data, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8*, i8** %14, i64 %idxprom1
  %15 = load i8*, i8** %arrayidx2, align 8, !tbaa !1
  store i8* %15, i8** %outptr, align 8, !tbaa !1
  %16 = load i8*, i8** %outptr, align 8, !tbaa !1
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 27
  %18 = load i32, i32* %output_width, align 4, !tbaa !39
  %idx.ext = zext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  store i8* %add.ptr, i8** %outend, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %19 = load i8*, i8** %outptr, align 8, !tbaa !1
  %20 = load i8*, i8** %outend, align 8, !tbaa !1
  %cmp3 = icmp ult i8* %19, %20
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i8*, i8** %inptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %inptr, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !37
  store i8 %22, i8* %invalue, align 1, !tbaa !37
  %23 = load i8, i8* %invalue, align 1, !tbaa !37
  %24 = load i8*, i8** %outptr, align 8, !tbaa !1
  %incdec.ptr4 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr4, i8** %outptr, align 8, !tbaa !1
  store i8 %23, i8* %24, align 1, !tbaa !37
  %25 = load i8, i8* %invalue, align 1, !tbaa !37
  %26 = load i8*, i8** %outptr, align 8, !tbaa !1
  %incdec.ptr5 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr5, i8** %outptr, align 8, !tbaa !1
  store i8 %25, i8* %26, align 1, !tbaa !37
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %27 = load i32, i32* %outrow, align 4, !tbaa !24
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %outrow, align 4, !tbaa !24
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = bitcast i32* %outrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i8** %outend to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  call void @llvm.lifetime.end(i64 1, i8* %invalue) #1
  %30 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast i8*** %output_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
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
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !1
  store i8** %input_data, i8*** %input_data.addr, align 8, !tbaa !1
  store i8*** %output_data_ptr, i8**** %output_data_ptr.addr, align 8, !tbaa !1
  %0 = bitcast i8*** %output_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8***, i8**** %output_data_ptr.addr, align 8, !tbaa !1
  %2 = load i8**, i8*** %1, align 8, !tbaa !1
  store i8** %2, i8*** %output_data, align 8, !tbaa !1
  %3 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  call void @llvm.lifetime.start(i64 1, i8* %invalue) #1
  %5 = bitcast i8** %outend to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %inrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %outrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %outrow, align 4, !tbaa !24
  store i32 0, i32* %inrow, align 4, !tbaa !24
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %8 = load i32, i32* %outrow, align 4, !tbaa !24
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 64
  %10 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !35
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %while.body, label %while.end.10

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %inrow, align 4, !tbaa !24
  %idxprom = sext i32 %11 to i64
  %12 = load i8**, i8*** %input_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 %idxprom
  %13 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %13, i8** %inptr, align 8, !tbaa !1
  %14 = load i32, i32* %outrow, align 4, !tbaa !24
  %idxprom1 = sext i32 %14 to i64
  %15 = load i8**, i8*** %output_data, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8*, i8** %15, i64 %idxprom1
  %16 = load i8*, i8** %arrayidx2, align 8, !tbaa !1
  store i8* %16, i8** %outptr, align 8, !tbaa !1
  %17 = load i8*, i8** %outptr, align 8, !tbaa !1
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 27
  %19 = load i32, i32* %output_width, align 4, !tbaa !39
  %idx.ext = zext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  store i8* %add.ptr, i8** %outend, align 8, !tbaa !1
  br label %while.cond.3

while.cond.3:                                     ; preds = %while.body.5, %while.body
  %20 = load i8*, i8** %outptr, align 8, !tbaa !1
  %21 = load i8*, i8** %outend, align 8, !tbaa !1
  %cmp4 = icmp ult i8* %20, %21
  br i1 %cmp4, label %while.body.5, label %while.end

while.body.5:                                     ; preds = %while.cond.3
  %22 = load i8*, i8** %inptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %inptr, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !37
  store i8 %23, i8* %invalue, align 1, !tbaa !37
  %24 = load i8, i8* %invalue, align 1, !tbaa !37
  %25 = load i8*, i8** %outptr, align 8, !tbaa !1
  %incdec.ptr6 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr6, i8** %outptr, align 8, !tbaa !1
  store i8 %24, i8* %25, align 1, !tbaa !37
  %26 = load i8, i8* %invalue, align 1, !tbaa !37
  %27 = load i8*, i8** %outptr, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr7, i8** %outptr, align 8, !tbaa !1
  store i8 %26, i8* %27, align 1, !tbaa !37
  br label %while.cond.3

while.end:                                        ; preds = %while.cond.3
  %28 = load i8**, i8*** %output_data, align 8, !tbaa !1
  %29 = load i32, i32* %outrow, align 4, !tbaa !24
  %30 = load i8**, i8*** %output_data, align 8, !tbaa !1
  %31 = load i32, i32* %outrow, align 4, !tbaa !24
  %add = add nsw i32 %31, 1
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_width8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 27
  %33 = load i32, i32* %output_width8, align 4, !tbaa !39
  call void @jcopy_sample_rows(i8** %28, i32 %29, i8** %30, i32 %add, i32 1, i32 %33) #3
  %34 = load i32, i32* %inrow, align 4, !tbaa !24
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %inrow, align 4, !tbaa !24
  %35 = load i32, i32* %outrow, align 4, !tbaa !24
  %add9 = add nsw i32 %35, 2
  store i32 %add9, i32* %outrow, align 4, !tbaa !24
  br label %while.cond

while.end.10:                                     ; preds = %while.cond
  %36 = bitcast i32* %outrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %inrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i8** %outend to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  call void @llvm.lifetime.end(i64 1, i8* %invalue) #1
  %39 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i8*** %output_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
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
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !1
  store i8** %input_data, i8*** %input_data.addr, align 8, !tbaa !1
  store i8*** %output_data_ptr, i8**** %output_data_ptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %upsample1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 91
  %2 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %upsample1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_upsampler* %2 to %struct.my_upsampler*
  store %struct.my_upsampler* %3, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %4 = bitcast i8*** %output_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8***, i8**** %output_data_ptr.addr, align 8, !tbaa !1
  %6 = load i8**, i8*** %5, align 8, !tbaa !1
  store i8** %6, i8*** %output_data, align 8, !tbaa !1
  %7 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  call void @llvm.lifetime.start(i64 1, i8* %invalue) #1
  %9 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i8** %outend to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i32* %h_expand to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %v_expand to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %inrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %outrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !1
  %component_index = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %15, i32 0, i32 1
  %16 = load i32, i32* %component_index, align 4, !tbaa !46
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %h_expand2 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %17, i32 0, i32 6
  %arrayidx = getelementptr inbounds [10 x i8], [10 x i8]* %h_expand2, i32 0, i64 %idxprom
  %18 = load i8, i8* %arrayidx, align 1, !tbaa !37
  %conv = zext i8 %18 to i32
  store i32 %conv, i32* %h_expand, align 4, !tbaa !24
  %19 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !1
  %component_index3 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %19, i32 0, i32 1
  %20 = load i32, i32* %component_index3, align 4, !tbaa !46
  %idxprom4 = sext i32 %20 to i64
  %21 = load %struct.my_upsampler*, %struct.my_upsampler** %upsample, align 8, !tbaa !1
  %v_expand5 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %21, i32 0, i32 7
  %arrayidx6 = getelementptr inbounds [10 x i8], [10 x i8]* %v_expand5, i32 0, i64 %idxprom4
  %22 = load i8, i8* %arrayidx6, align 1, !tbaa !37
  %conv7 = zext i8 %22 to i32
  store i32 %conv7, i32* %v_expand, align 4, !tbaa !24
  store i32 0, i32* %outrow, align 4, !tbaa !24
  store i32 0, i32* %inrow, align 4, !tbaa !24
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %23 = load i32, i32* %outrow, align 4, !tbaa !24
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 64
  %25 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !35
  %cmp = icmp slt i32 %23, %25
  br i1 %cmp, label %while.body, label %while.end.24

while.body:                                       ; preds = %while.cond
  %26 = load i32, i32* %inrow, align 4, !tbaa !24
  %idxprom9 = sext i32 %26 to i64
  %27 = load i8**, i8*** %input_data.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8*, i8** %27, i64 %idxprom9
  %28 = load i8*, i8** %arrayidx10, align 8, !tbaa !1
  store i8* %28, i8** %inptr, align 8, !tbaa !1
  %29 = load i32, i32* %outrow, align 4, !tbaa !24
  %idxprom11 = sext i32 %29 to i64
  %30 = load i8**, i8*** %output_data, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8*, i8** %30, i64 %idxprom11
  %31 = load i8*, i8** %arrayidx12, align 8, !tbaa !1
  store i8* %31, i8** %outptr, align 8, !tbaa !1
  %32 = load i8*, i8** %outptr, align 8, !tbaa !1
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 27
  %34 = load i32, i32* %output_width, align 4, !tbaa !39
  %idx.ext = zext i32 %34 to i64
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %idx.ext
  store i8* %add.ptr, i8** %outend, align 8, !tbaa !1
  br label %while.cond.13

while.cond.13:                                    ; preds = %for.end, %while.body
  %35 = load i8*, i8** %outptr, align 8, !tbaa !1
  %36 = load i8*, i8** %outend, align 8, !tbaa !1
  %cmp14 = icmp ult i8* %35, %36
  br i1 %cmp14, label %while.body.16, label %while.end

while.body.16:                                    ; preds = %while.cond.13
  %37 = load i8*, i8** %inptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr, i8** %inptr, align 8, !tbaa !1
  %38 = load i8, i8* %37, align 1, !tbaa !37
  store i8 %38, i8* %invalue, align 1, !tbaa !37
  %39 = load i32, i32* %h_expand, align 4, !tbaa !24
  store i32 %39, i32* %h, align 4, !tbaa !24
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body.16
  %40 = load i32, i32* %h, align 4, !tbaa !24
  %cmp17 = icmp sgt i32 %40, 0
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load i8, i8* %invalue, align 1, !tbaa !37
  %42 = load i8*, i8** %outptr, align 8, !tbaa !1
  %incdec.ptr19 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr19, i8** %outptr, align 8, !tbaa !1
  store i8 %41, i8* %42, align 1, !tbaa !37
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i32, i32* %h, align 4, !tbaa !24
  %dec = add nsw i32 %43, -1
  store i32 %dec, i32* %h, align 4, !tbaa !24
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond.13

while.end:                                        ; preds = %while.cond.13
  %44 = load i32, i32* %v_expand, align 4, !tbaa !24
  %cmp20 = icmp sgt i32 %44, 1
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %45 = load i8**, i8*** %output_data, align 8, !tbaa !1
  %46 = load i32, i32* %outrow, align 4, !tbaa !24
  %47 = load i8**, i8*** %output_data, align 8, !tbaa !1
  %48 = load i32, i32* %outrow, align 4, !tbaa !24
  %add = add nsw i32 %48, 1
  %49 = load i32, i32* %v_expand, align 4, !tbaa !24
  %sub = sub nsw i32 %49, 1
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_width22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 27
  %51 = load i32, i32* %output_width22, align 4, !tbaa !39
  call void @jcopy_sample_rows(i8** %45, i32 %46, i8** %47, i32 %add, i32 %sub, i32 %51) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %52 = load i32, i32* %inrow, align 4, !tbaa !24
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %inrow, align 4, !tbaa !24
  %53 = load i32, i32* %v_expand, align 4, !tbaa !24
  %54 = load i32, i32* %outrow, align 4, !tbaa !24
  %add23 = add nsw i32 %54, %53
  store i32 %add23, i32* %outrow, align 4, !tbaa !24
  br label %while.cond

while.end.24:                                     ; preds = %while.cond
  %55 = bitcast i32* %outrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast i32* %inrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %v_expand to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %h_expand to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i8** %outend to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  call void @llvm.lifetime.end(i64 1, i8* %invalue) #1
  %61 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast i8*** %output_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast %struct.my_upsampler** %upsample to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  ret void
}

declare i64 @jround_up(i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @jcopy_sample_rows(i8**, i32, i8**, i32, i32, i32) #2

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
!6 = !{!"jpeg_decompress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !7, i64 36, !2, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !3, i64 60, !3, i64 64, !7, i64 68, !7, i64 72, !8, i64 80, !3, i64 88, !3, i64 92, !3, i64 96, !3, i64 100, !3, i64 104, !3, i64 108, !3, i64 112, !3, i64 116, !7, i64 120, !3, i64 124, !3, i64 128, !3, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !2, i64 160, !7, i64 168, !7, i64 172, !7, i64 176, !7, i64 180, !7, i64 184, !2, i64 192, !3, i64 200, !3, i64 232, !3, i64 264, !7, i64 296, !2, i64 304, !3, i64 312, !3, i64 316, !3, i64 320, !3, i64 324, !3, i64 340, !3, i64 356, !7, i64 372, !3, i64 376, !3, i64 380, !3, i64 381, !3, i64 382, !9, i64 384, !9, i64 386, !3, i64 388, !3, i64 392, !3, i64 396, !3, i64 400, !2, i64 408, !7, i64 416, !7, i64 420, !7, i64 424, !7, i64 428, !7, i64 432, !2, i64 440, !7, i64 448, !3, i64 456, !7, i64 488, !7, i64 492, !7, i64 496, !3, i64 500, !7, i64 756, !7, i64 760, !7, i64 764, !7, i64 768, !7, i64 772, !2, i64 776, !7, i64 784, !7, i64 788, !2, i64 792, !2, i64 800, !2, i64 808, !2, i64 816, !2, i64 824, !2, i64 832, !2, i64 840, !2, i64 848, !2, i64 856, !2, i64 864, !2, i64 872}
!7 = !{!"int", !3, i64 0}
!8 = !{!"double", !3, i64 0}
!9 = !{!"short", !3, i64 0}
!10 = !{!11, !2, i64 0}
!11 = !{!"jpeg_memory_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !12, i64 88, !12, i64 96}
!12 = !{!"long", !3, i64 0}
!13 = !{!6, !2, i64 856}
!14 = !{!15, !2, i64 0}
!15 = !{!"", !16, i64 0, !3, i64 24, !3, i64 104, !7, i64 184, !7, i64 188, !3, i64 192, !3, i64 232, !3, i64 242}
!16 = !{!"jpeg_upsampler", !2, i64 0, !2, i64 8, !3, i64 16}
!17 = !{!15, !2, i64 8}
!18 = !{!15, !3, i64 16}
!19 = !{!6, !3, i64 400}
!20 = !{!6, !2, i64 0}
!21 = !{!22, !7, i64 40}
!22 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !3, i64 44, !7, i64 124, !12, i64 128, !2, i64 136, !7, i64 144, !2, i64 152, !7, i64 160, !7, i64 164}
!23 = !{!22, !2, i64 0}
!24 = !{!7, !7, i64 0}
!25 = !{!6, !2, i64 304}
!26 = !{!6, !7, i64 56}
!27 = !{!28, !7, i64 8}
!28 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !3, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !2, i64 80, !2, i64 88}
!29 = !{!28, !7, i64 36}
!30 = !{!6, !7, i64 424}
!31 = !{!28, !7, i64 12}
!32 = !{!28, !7, i64 40}
!33 = !{!6, !7, i64 428}
!34 = !{!6, !7, i64 416}
!35 = !{!6, !7, i64 420}
!36 = !{!28, !3, i64 52}
!37 = !{!3, !3, i64 0}
!38 = !{!11, !2, i64 16}
!39 = !{!6, !7, i64 136}
!40 = !{!15, !7, i64 184}
!41 = !{!6, !7, i64 140}
!42 = !{!15, !7, i64 188}
!43 = !{!6, !2, i64 864}
!44 = !{!45, !2, i64 8}
!45 = !{!"jpeg_color_deconverter", !2, i64 0, !2, i64 8}
!46 = !{!28, !7, i64 4}
