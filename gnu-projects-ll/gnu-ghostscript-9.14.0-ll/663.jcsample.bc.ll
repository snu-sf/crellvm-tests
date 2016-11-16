; ModuleID = './jcsample.bc'
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
%struct.my_downsampler = type { %struct.jpeg_downsampler, [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x i32], [10 x i8], [10 x i8] }

; Function Attrs: nounwind uwtable
define void @jinit_downsampler(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %downsample = alloca %struct.my_downsampler*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %smoothok = alloca i32, align 4
  %h_in_group = alloca i32, align 4
  %v_in_group = alloca i32, align 4
  %h_out_group = alloca i32, align 4
  %v_out_group = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_downsampler** %downsample to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %smoothok to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 1, i32* %smoothok, align 4, !tbaa !5
  %4 = bitcast i32* %h_in_group to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %v_in_group to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %h_out_group to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %v_out_group to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 1
  %9 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %9, i32 0, i32 0
  %10 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %12 = bitcast %struct.jpeg_compress_struct* %11 to %struct.jpeg_common_struct*
  %call = call i8* %10(%struct.jpeg_common_struct* %12, i32 1, i64 168) #3
  %13 = bitcast i8* %call to %struct.my_downsampler*
  store %struct.my_downsampler* %13, %struct.my_downsampler** %downsample, align 8, !tbaa !1
  %14 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8, !tbaa !1
  %15 = bitcast %struct.my_downsampler* %14 to %struct.jpeg_downsampler*
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %downsample1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 72
  store %struct.jpeg_downsampler* %15, %struct.jpeg_downsampler** %downsample1, align 8, !tbaa !14
  %17 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %17, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %pub, i32 0, i32 0
  %start_pass2 = bitcast {}** %start_pass to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @start_pass_downsample, void (%struct.jpeg_compress_struct*)** %start_pass2, align 8, !tbaa !15
  %18 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8, !tbaa !1
  %pub3 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %18, i32 0, i32 0
  %downsample4 = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %pub3, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)* @sep_downsample, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)** %downsample4, align 8, !tbaa !18
  %19 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8, !tbaa !1
  %pub5 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %19, i32 0, i32 0
  %need_context_rows = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %pub5, i32 0, i32 2
  store i32 0, i32* %need_context_rows, align 4, !tbaa !19
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %CCIR601_sampling = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 32
  %21 = load i32, i32* %CCIR601_sampling, align 4, !tbaa !20
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !21
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 5
  store i32 26, i32* %msg_code, align 4, !tbaa !22
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 0
  %25 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8, !tbaa !21
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %25, i32 0, i32 0
  %26 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !24
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %28 = bitcast %struct.jpeg_compress_struct* %27 to %struct.jpeg_common_struct*
  call void %26(%struct.jpeg_common_struct* %28) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %ci, align 4, !tbaa !25
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 19
  %30 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !26
  store %struct.jpeg_component_info* %30, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %31 = load i32, i32* %ci, align 4, !tbaa !25
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 17
  %33 = load i32, i32* %num_components, align 4, !tbaa !27
  %cmp = icmp slt i32 %31, %33
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %34, i32 0, i32 2
  %35 = load i32, i32* %h_samp_factor, align 4, !tbaa !28
  %36 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_h_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %36, i32 0, i32 9
  %37 = load i32, i32* %DCT_h_scaled_size, align 4, !tbaa !30
  %mul = mul nsw i32 %35, %37
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_h_scaled_size = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 50
  %39 = load i32, i32* %min_DCT_h_scaled_size, align 4, !tbaa !31
  %div = sdiv i32 %mul, %39
  store i32 %div, i32* %h_out_group, align 4, !tbaa !25
  %40 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %40, i32 0, i32 3
  %41 = load i32, i32* %v_samp_factor, align 4, !tbaa !32
  %42 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %42, i32 0, i32 10
  %43 = load i32, i32* %DCT_v_scaled_size, align 4, !tbaa !33
  %mul7 = mul nsw i32 %41, %43
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %44, i32 0, i32 51
  %45 = load i32, i32* %min_DCT_v_scaled_size, align 4, !tbaa !34
  %div8 = sdiv i32 %mul7, %45
  store i32 %div8, i32* %v_out_group, align 4, !tbaa !25
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %46, i32 0, i32 48
  %47 = load i32, i32* %max_h_samp_factor, align 4, !tbaa !35
  store i32 %47, i32* %h_in_group, align 4, !tbaa !25
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %48, i32 0, i32 49
  %49 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !36
  store i32 %49, i32* %v_in_group, align 4, !tbaa !25
  %50 = load i32, i32* %v_out_group, align 4, !tbaa !25
  %51 = load i32, i32* %ci, align 4, !tbaa !25
  %idxprom = sext i32 %51 to i64
  %52 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8, !tbaa !1
  %rowgroup_height = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %52, i32 0, i32 2
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %rowgroup_height, i32 0, i64 %idxprom
  store i32 %50, i32* %arrayidx, align 4, !tbaa !25
  %53 = load i32, i32* %h_in_group, align 4, !tbaa !25
  %54 = load i32, i32* %h_out_group, align 4, !tbaa !25
  %cmp9 = icmp eq i32 %53, %54
  br i1 %cmp9, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %55 = load i32, i32* %v_in_group, align 4, !tbaa !25
  %56 = load i32, i32* %v_out_group, align 4, !tbaa !25
  %cmp10 = icmp eq i32 %55, %56
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %land.lhs.true
  %57 = load i32, i32* %ci, align 4, !tbaa !25
  %idxprom12 = sext i32 %57 to i64
  %58 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8, !tbaa !1
  %methods = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %58, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %methods, i32 0, i64 %idxprom12
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)* @fullsize_downsample, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %arrayidx13, align 8, !tbaa !1
  br label %if.end.56

if.else:                                          ; preds = %land.lhs.true, %for.body
  %59 = load i32, i32* %h_in_group, align 4, !tbaa !25
  %60 = load i32, i32* %h_out_group, align 4, !tbaa !25
  %mul14 = mul nsw i32 %60, 2
  %cmp15 = icmp eq i32 %59, %mul14
  br i1 %cmp15, label %land.lhs.true.16, label %if.else.22

land.lhs.true.16:                                 ; preds = %if.else
  %61 = load i32, i32* %v_in_group, align 4, !tbaa !25
  %62 = load i32, i32* %v_out_group, align 4, !tbaa !25
  %cmp17 = icmp eq i32 %61, %62
  br i1 %cmp17, label %if.then.18, label %if.else.22

if.then.18:                                       ; preds = %land.lhs.true.16
  store i32 0, i32* %smoothok, align 4, !tbaa !5
  %63 = load i32, i32* %ci, align 4, !tbaa !25
  %idxprom19 = sext i32 %63 to i64
  %64 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8, !tbaa !1
  %methods20 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %64, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %methods20, i32 0, i64 %idxprom19
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)* @h2v1_downsample, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %arrayidx21, align 8, !tbaa !1
  br label %if.end.55

if.else.22:                                       ; preds = %land.lhs.true.16, %if.else
  %65 = load i32, i32* %h_in_group, align 4, !tbaa !25
  %66 = load i32, i32* %h_out_group, align 4, !tbaa !25
  %mul23 = mul nsw i32 %66, 2
  %cmp24 = icmp eq i32 %65, %mul23
  br i1 %cmp24, label %land.lhs.true.25, label %if.else.32

land.lhs.true.25:                                 ; preds = %if.else.22
  %67 = load i32, i32* %v_in_group, align 4, !tbaa !25
  %68 = load i32, i32* %v_out_group, align 4, !tbaa !25
  %mul26 = mul nsw i32 %68, 2
  %cmp27 = icmp eq i32 %67, %mul26
  br i1 %cmp27, label %if.then.28, label %if.else.32

if.then.28:                                       ; preds = %land.lhs.true.25
  %69 = load i32, i32* %ci, align 4, !tbaa !25
  %idxprom29 = sext i32 %69 to i64
  %70 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8, !tbaa !1
  %methods30 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %70, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %methods30, i32 0, i64 %idxprom29
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)* @h2v2_downsample, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %arrayidx31, align 8, !tbaa !1
  br label %if.end.54

if.else.32:                                       ; preds = %land.lhs.true.25, %if.else.22
  %71 = load i32, i32* %h_in_group, align 4, !tbaa !25
  %72 = load i32, i32* %h_out_group, align 4, !tbaa !25
  %rem = srem i32 %71, %72
  %cmp33 = icmp eq i32 %rem, 0
  br i1 %cmp33, label %land.lhs.true.34, label %if.else.48

land.lhs.true.34:                                 ; preds = %if.else.32
  %73 = load i32, i32* %v_in_group, align 4, !tbaa !25
  %74 = load i32, i32* %v_out_group, align 4, !tbaa !25
  %rem35 = srem i32 %73, %74
  %cmp36 = icmp eq i32 %rem35, 0
  br i1 %cmp36, label %if.then.37, label %if.else.48

if.then.37:                                       ; preds = %land.lhs.true.34
  store i32 0, i32* %smoothok, align 4, !tbaa !5
  %75 = load i32, i32* %ci, align 4, !tbaa !25
  %idxprom38 = sext i32 %75 to i64
  %76 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8, !tbaa !1
  %methods39 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %76, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %methods39, i32 0, i64 %idxprom38
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)* @int_downsample, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %arrayidx40, align 8, !tbaa !1
  %77 = load i32, i32* %h_in_group, align 4, !tbaa !25
  %78 = load i32, i32* %h_out_group, align 4, !tbaa !25
  %div41 = sdiv i32 %77, %78
  %conv = trunc i32 %div41 to i8
  %79 = load i32, i32* %ci, align 4, !tbaa !25
  %idxprom42 = sext i32 %79 to i64
  %80 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8, !tbaa !1
  %h_expand = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %80, i32 0, i32 3
  %arrayidx43 = getelementptr inbounds [10 x i8], [10 x i8]* %h_expand, i32 0, i64 %idxprom42
  store i8 %conv, i8* %arrayidx43, align 1, !tbaa !5
  %81 = load i32, i32* %v_in_group, align 4, !tbaa !25
  %82 = load i32, i32* %v_out_group, align 4, !tbaa !25
  %div44 = sdiv i32 %81, %82
  %conv45 = trunc i32 %div44 to i8
  %83 = load i32, i32* %ci, align 4, !tbaa !25
  %idxprom46 = sext i32 %83 to i64
  %84 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8, !tbaa !1
  %v_expand = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %84, i32 0, i32 4
  %arrayidx47 = getelementptr inbounds [10 x i8], [10 x i8]* %v_expand, i32 0, i64 %idxprom46
  store i8 %conv45, i8* %arrayidx47, align 1, !tbaa !5
  br label %if.end.53

if.else.48:                                       ; preds = %land.lhs.true.34, %if.else.32
  %85 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err49 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %85, i32 0, i32 0
  %86 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err49, align 8, !tbaa !21
  %msg_code50 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %86, i32 0, i32 5
  store i32 39, i32* %msg_code50, align 4, !tbaa !22
  %87 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err51 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %87, i32 0, i32 0
  %88 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err51, align 8, !tbaa !21
  %error_exit52 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %88, i32 0, i32 0
  %89 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit52, align 8, !tbaa !24
  %90 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %91 = bitcast %struct.jpeg_compress_struct* %90 to %struct.jpeg_common_struct*
  call void %89(%struct.jpeg_common_struct* %91) #3
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.48, %if.then.37
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.28
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.18
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.11
  br label %for.inc

for.inc:                                          ; preds = %if.end.56
  %92 = load i32, i32* %ci, align 4, !tbaa !25
  %inc = add nsw i32 %92, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !25
  %93 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %93, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %94 = bitcast i32* %v_out_group to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %h_out_group to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %v_in_group to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32* %h_in_group to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i32* %smoothok to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast %struct.my_downsampler** %downsample to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_downsample(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sep_downsample(%struct.jpeg_compress_struct* %cinfo, i8*** %input_buf, i32 %in_row_index, i8*** %output_buf, i32 %out_row_group_index) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %in_row_index.addr = alloca i32, align 4
  %output_buf.addr = alloca i8***, align 8
  %out_row_group_index.addr = alloca i32, align 4
  %downsample = alloca %struct.my_downsampler*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %in_ptr = alloca i8**, align 8
  %out_ptr = alloca i8**, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !1
  store i32 %in_row_index, i32* %in_row_index.addr, align 4, !tbaa !25
  store i8*** %output_buf, i8**** %output_buf.addr, align 8, !tbaa !1
  store i32 %out_row_group_index, i32* %out_row_group_index.addr, align 4, !tbaa !25
  %0 = bitcast %struct.my_downsampler** %downsample to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %downsample1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 72
  %2 = load %struct.jpeg_downsampler*, %struct.jpeg_downsampler** %downsample1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_downsampler* %2 to %struct.my_downsampler*
  store %struct.my_downsampler* %3, %struct.my_downsampler** %downsample, align 8, !tbaa !1
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8*** %in_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i8*** %out_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32 0, i32* %ci, align 4, !tbaa !25
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 19
  %9 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !26
  store %struct.jpeg_component_info* %9, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %ci, align 4, !tbaa !25
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 17
  %12 = load i32, i32* %num_components, align 4, !tbaa !27
  %cmp = icmp slt i32 %10, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %ci, align 4, !tbaa !25
  %idxprom = sext i32 %13 to i64
  %14 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8**, i8*** %14, i64 %idxprom
  %15 = load i8**, i8*** %arrayidx, align 8, !tbaa !1
  %16 = load i32, i32* %in_row_index.addr, align 4, !tbaa !25
  %idx.ext = zext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %15, i64 %idx.ext
  store i8** %add.ptr, i8*** %in_ptr, align 8, !tbaa !1
  %17 = load i32, i32* %ci, align 4, !tbaa !25
  %idxprom2 = sext i32 %17 to i64
  %18 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8**, i8*** %18, i64 %idxprom2
  %19 = load i8**, i8*** %arrayidx3, align 8, !tbaa !1
  %20 = load i32, i32* %out_row_group_index.addr, align 4, !tbaa !25
  %21 = load i32, i32* %ci, align 4, !tbaa !25
  %idxprom4 = sext i32 %21 to i64
  %22 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8, !tbaa !1
  %rowgroup_height = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %22, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %rowgroup_height, i32 0, i64 %idxprom4
  %23 = load i32, i32* %arrayidx5, align 4, !tbaa !25
  %mul = mul i32 %20, %23
  %idx.ext6 = zext i32 %mul to i64
  %add.ptr7 = getelementptr inbounds i8*, i8** %19, i64 %idx.ext6
  store i8** %add.ptr7, i8*** %out_ptr, align 8, !tbaa !1
  %24 = load i32, i32* %ci, align 4, !tbaa !25
  %idxprom8 = sext i32 %24 to i64
  %25 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8, !tbaa !1
  %methods = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %25, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %methods, i32 0, i64 %idxprom8
  %26 = load void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %arrayidx9, align 8, !tbaa !1
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %28 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %29 = load i8**, i8*** %in_ptr, align 8, !tbaa !1
  %30 = load i8**, i8*** %out_ptr, align 8, !tbaa !1
  call void %26(%struct.jpeg_compress_struct* %27, %struct.jpeg_component_info* %28, i8** %29, i8** %30) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %ci, align 4, !tbaa !25
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !25
  %32 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %32, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = bitcast i8*** %out_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i8*** %in_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast %struct.my_downsampler** %downsample to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fullsize_downsample(%struct.jpeg_compress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8** %output_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data.addr = alloca i8**, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !1
  store i8** %input_data, i8*** %input_data.addr, align 8, !tbaa !1
  store i8** %output_data, i8*** %output_data.addr, align 8, !tbaa !1
  %0 = load i8**, i8*** %input_data.addr, align 8, !tbaa !1
  %1 = load i8**, i8*** %output_data.addr, align 8, !tbaa !1
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 49
  %3 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !36
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 7
  %5 = load i32, i32* %image_width, align 4, !tbaa !37
  call void @jcopy_sample_rows(i8** %0, i32 0, i8** %1, i32 0, i32 %3, i32 %5) #3
  %6 = load i8**, i8*** %output_data.addr, align 8, !tbaa !1
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 49
  %8 = load i32, i32* %max_v_samp_factor1, align 4, !tbaa !36
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 7
  %10 = load i32, i32* %image_width2, align 4, !tbaa !37
  %11 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !1
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %11, i32 0, i32 7
  %12 = load i32, i32* %width_in_blocks, align 4, !tbaa !38
  %13 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !1
  %DCT_h_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %13, i32 0, i32 9
  %14 = load i32, i32* %DCT_h_scaled_size, align 4, !tbaa !30
  %mul = mul i32 %12, %14
  call void @expand_right_edge(i8** %6, i32 %8, i32 %10, i32 %mul) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @h2v1_downsample(%struct.jpeg_compress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8** %output_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data.addr = alloca i8**, align 8
  %inrow = alloca i32, align 4
  %outcol = alloca i32, align 4
  %output_cols = alloca i32, align 4
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %bias = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !1
  store i8** %input_data, i8*** %input_data.addr, align 8, !tbaa !1
  store i8** %output_data, i8*** %output_data.addr, align 8, !tbaa !1
  %0 = bitcast i32* %inrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %outcol to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %output_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !1
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %3, i32 0, i32 7
  %4 = load i32, i32* %width_in_blocks, align 4, !tbaa !38
  %5 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !1
  %DCT_h_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %5, i32 0, i32 9
  %6 = load i32, i32* %DCT_h_scaled_size, align 4, !tbaa !30
  %mul = mul i32 %4, %6
  store i32 %mul, i32* %output_cols, align 4, !tbaa !25
  %7 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %bias to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i8**, i8*** %input_data.addr, align 8, !tbaa !1
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 49
  %12 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !36
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 7
  %14 = load i32, i32* %image_width, align 4, !tbaa !37
  %15 = load i32, i32* %output_cols, align 4, !tbaa !25
  %mul1 = mul i32 %15, 2
  call void @expand_right_edge(i8** %10, i32 %12, i32 %14, i32 %mul1) #3
  store i32 0, i32* %inrow, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %entry
  %16 = load i32, i32* %inrow, align 4, !tbaa !25
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 49
  %18 = load i32, i32* %max_v_samp_factor2, align 4, !tbaa !36
  %cmp = icmp slt i32 %16, %18
  br i1 %cmp, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %inrow, align 4, !tbaa !25
  %idxprom = sext i32 %19 to i64
  %20 = load i8**, i8*** %output_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %20, i64 %idxprom
  %21 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %21, i8** %outptr, align 8, !tbaa !1
  %22 = load i32, i32* %inrow, align 4, !tbaa !25
  %idxprom3 = sext i32 %22 to i64
  %23 = load i8**, i8*** %input_data.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8*, i8** %23, i64 %idxprom3
  %24 = load i8*, i8** %arrayidx4, align 8, !tbaa !1
  store i8* %24, i8** %inptr, align 8, !tbaa !1
  store i32 0, i32* %bias, align 4, !tbaa !25
  store i32 0, i32* %outcol, align 4, !tbaa !25
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %25 = load i32, i32* %outcol, align 4, !tbaa !25
  %26 = load i32, i32* %output_cols, align 4, !tbaa !25
  %cmp6 = icmp ult i32 %25, %26
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %27 = load i8*, i8** %inptr, align 8, !tbaa !1
  %28 = load i8, i8* %27, align 1, !tbaa !5
  %conv = zext i8 %28 to i32
  %29 = load i8*, i8** %inptr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %29, i64 1
  %30 = load i8, i8* %arrayidx8, align 1, !tbaa !5
  %conv9 = zext i8 %30 to i32
  %add = add nsw i32 %conv, %conv9
  %31 = load i32, i32* %bias, align 4, !tbaa !25
  %add10 = add nsw i32 %add, %31
  %shr = ashr i32 %add10, 1
  %conv11 = trunc i32 %shr to i8
  %32 = load i8*, i8** %outptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %outptr, align 8, !tbaa !1
  store i8 %conv11, i8* %32, align 1, !tbaa !5
  %33 = load i32, i32* %bias, align 4, !tbaa !25
  %xor = xor i32 %33, 1
  store i32 %xor, i32* %bias, align 4, !tbaa !25
  %34 = load i8*, i8** %inptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 2
  store i8* %add.ptr, i8** %inptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %35 = load i32, i32* %outcol, align 4, !tbaa !25
  %inc = add i32 %35, 1
  store i32 %inc, i32* %outcol, align 4, !tbaa !25
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %36 = load i32, i32* %inrow, align 4, !tbaa !25
  %inc13 = add nsw i32 %36, 1
  store i32 %inc13, i32* %inrow, align 4, !tbaa !25
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  %37 = bitcast i32* %bias to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i32* %output_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %outcol to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i32* %inrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @h2v2_downsample(%struct.jpeg_compress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8** %output_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data.addr = alloca i8**, align 8
  %inrow = alloca i32, align 4
  %outrow = alloca i32, align 4
  %outcol = alloca i32, align 4
  %output_cols = alloca i32, align 4
  %inptr0 = alloca i8*, align 8
  %inptr1 = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %bias = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !1
  store i8** %input_data, i8*** %input_data.addr, align 8, !tbaa !1
  store i8** %output_data, i8*** %output_data.addr, align 8, !tbaa !1
  %0 = bitcast i32* %inrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %outrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %outcol to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %output_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !1
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %4, i32 0, i32 7
  %5 = load i32, i32* %width_in_blocks, align 4, !tbaa !38
  %6 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !1
  %DCT_h_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %6, i32 0, i32 9
  %7 = load i32, i32* %DCT_h_scaled_size, align 4, !tbaa !30
  %mul = mul i32 %5, %7
  store i32 %mul, i32* %output_cols, align 4, !tbaa !25
  %8 = bitcast i8** %inptr0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i8** %inptr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i32* %bias to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i8**, i8*** %input_data.addr, align 8, !tbaa !1
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 49
  %14 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !36
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 7
  %16 = load i32, i32* %image_width, align 4, !tbaa !37
  %17 = load i32, i32* %output_cols, align 4, !tbaa !25
  %mul1 = mul i32 %17, 2
  call void @expand_right_edge(i8** %12, i32 %14, i32 %16, i32 %mul1) #3
  store i32 0, i32* %outrow, align 4, !tbaa !25
  store i32 0, i32* %inrow, align 4, !tbaa !25
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %18 = load i32, i32* %inrow, align 4, !tbaa !25
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 49
  %20 = load i32, i32* %max_v_samp_factor2, align 4, !tbaa !36
  %cmp = icmp slt i32 %18, %20
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32, i32* %outrow, align 4, !tbaa !25
  %idxprom = sext i32 %21 to i64
  %22 = load i8**, i8*** %output_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %22, i64 %idxprom
  %23 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %23, i8** %outptr, align 8, !tbaa !1
  %24 = load i32, i32* %inrow, align 4, !tbaa !25
  %idxprom3 = sext i32 %24 to i64
  %25 = load i8**, i8*** %input_data.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8*, i8** %25, i64 %idxprom3
  %26 = load i8*, i8** %arrayidx4, align 8, !tbaa !1
  store i8* %26, i8** %inptr0, align 8, !tbaa !1
  %27 = load i32, i32* %inrow, align 4, !tbaa !25
  %add = add nsw i32 %27, 1
  %idxprom5 = sext i32 %add to i64
  %28 = load i8**, i8*** %input_data.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8*, i8** %28, i64 %idxprom5
  %29 = load i8*, i8** %arrayidx6, align 8, !tbaa !1
  store i8* %29, i8** %inptr1, align 8, !tbaa !1
  store i32 1, i32* %bias, align 4, !tbaa !25
  store i32 0, i32* %outcol, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %30 = load i32, i32* %outcol, align 4, !tbaa !25
  %31 = load i32, i32* %output_cols, align 4, !tbaa !25
  %cmp7 = icmp ult i32 %30, %31
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i8*, i8** %inptr0, align 8, !tbaa !1
  %33 = load i8, i8* %32, align 1, !tbaa !5
  %conv = zext i8 %33 to i32
  %34 = load i8*, i8** %inptr0, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %arrayidx8, align 1, !tbaa !5
  %conv9 = zext i8 %35 to i32
  %add10 = add nsw i32 %conv, %conv9
  %36 = load i8*, i8** %inptr1, align 8, !tbaa !1
  %37 = load i8, i8* %36, align 1, !tbaa !5
  %conv11 = zext i8 %37 to i32
  %add12 = add nsw i32 %add10, %conv11
  %38 = load i8*, i8** %inptr1, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load i8, i8* %arrayidx13, align 1, !tbaa !5
  %conv14 = zext i8 %39 to i32
  %add15 = add nsw i32 %add12, %conv14
  %40 = load i32, i32* %bias, align 4, !tbaa !25
  %add16 = add nsw i32 %add15, %40
  %shr = ashr i32 %add16, 2
  %conv17 = trunc i32 %shr to i8
  %41 = load i8*, i8** %outptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr, i8** %outptr, align 8, !tbaa !1
  store i8 %conv17, i8* %41, align 1, !tbaa !5
  %42 = load i32, i32* %bias, align 4, !tbaa !25
  %xor = xor i32 %42, 3
  store i32 %xor, i32* %bias, align 4, !tbaa !25
  %43 = load i8*, i8** %inptr0, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %43, i64 2
  store i8* %add.ptr, i8** %inptr0, align 8, !tbaa !1
  %44 = load i8*, i8** %inptr1, align 8, !tbaa !1
  %add.ptr18 = getelementptr inbounds i8, i8* %44, i64 2
  store i8* %add.ptr18, i8** %inptr1, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %45 = load i32, i32* %outcol, align 4, !tbaa !25
  %inc = add i32 %45, 1
  store i32 %inc, i32* %outcol, align 4, !tbaa !25
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %46 = load i32, i32* %inrow, align 4, !tbaa !25
  %add19 = add nsw i32 %46, 2
  store i32 %add19, i32* %inrow, align 4, !tbaa !25
  %47 = load i32, i32* %outrow, align 4, !tbaa !25
  %inc20 = add nsw i32 %47, 1
  store i32 %inc20, i32* %outrow, align 4, !tbaa !25
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %48 = bitcast i32* %bias to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i8** %inptr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i8** %inptr0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast i32* %output_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %outcol to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %outrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i32* %inrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @int_downsample(%struct.jpeg_compress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8** %output_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data.addr = alloca i8**, align 8
  %downsample = alloca %struct.my_downsampler*, align 8
  %inrow = alloca i32, align 4
  %outrow = alloca i32, align 4
  %h_expand = alloca i32, align 4
  %v_expand = alloca i32, align 4
  %numpix = alloca i32, align 4
  %numpix2 = alloca i32, align 4
  %h = alloca i32, align 4
  %v = alloca i32, align 4
  %outcol = alloca i32, align 4
  %outcol_h = alloca i32, align 4
  %output_cols = alloca i32, align 4
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %outvalue = alloca i64, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !1
  store i8** %input_data, i8*** %input_data.addr, align 8, !tbaa !1
  store i8** %output_data, i8*** %output_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_downsampler** %downsample to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %downsample1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 72
  %2 = load %struct.jpeg_downsampler*, %struct.jpeg_downsampler** %downsample1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_downsampler* %2 to %struct.my_downsampler*
  store %struct.my_downsampler* %3, %struct.my_downsampler** %downsample, align 8, !tbaa !1
  %4 = bitcast i32* %inrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %outrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %h_expand to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %v_expand to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %numpix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %numpix2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %outcol to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %outcol_h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %output_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !1
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %15, i32 0, i32 7
  %16 = load i32, i32* %width_in_blocks, align 4, !tbaa !38
  %17 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !1
  %DCT_h_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %17, i32 0, i32 9
  %18 = load i32, i32* %DCT_h_scaled_size, align 4, !tbaa !30
  %mul = mul i32 %16, %18
  store i32 %mul, i32* %output_cols, align 4, !tbaa !25
  %19 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast i64* %outvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !1
  %component_index = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %22, i32 0, i32 1
  %23 = load i32, i32* %component_index, align 4, !tbaa !39
  %idxprom = sext i32 %23 to i64
  %24 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8, !tbaa !1
  %h_expand2 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %24, i32 0, i32 3
  %arrayidx = getelementptr inbounds [10 x i8], [10 x i8]* %h_expand2, i32 0, i64 %idxprom
  %25 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = zext i8 %25 to i32
  store i32 %conv, i32* %h_expand, align 4, !tbaa !25
  %26 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !1
  %component_index3 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %26, i32 0, i32 1
  %27 = load i32, i32* %component_index3, align 4, !tbaa !39
  %idxprom4 = sext i32 %27 to i64
  %28 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8, !tbaa !1
  %v_expand5 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %28, i32 0, i32 4
  %arrayidx6 = getelementptr inbounds [10 x i8], [10 x i8]* %v_expand5, i32 0, i64 %idxprom4
  %29 = load i8, i8* %arrayidx6, align 1, !tbaa !5
  %conv7 = zext i8 %29 to i32
  store i32 %conv7, i32* %v_expand, align 4, !tbaa !25
  %30 = load i32, i32* %h_expand, align 4, !tbaa !25
  %31 = load i32, i32* %v_expand, align 4, !tbaa !25
  %mul8 = mul nsw i32 %30, %31
  store i32 %mul8, i32* %numpix, align 4, !tbaa !25
  %32 = load i32, i32* %numpix, align 4, !tbaa !25
  %div = sdiv i32 %32, 2
  store i32 %div, i32* %numpix2, align 4, !tbaa !25
  %33 = load i8**, i8*** %input_data.addr, align 8, !tbaa !1
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 49
  %35 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !36
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 7
  %37 = load i32, i32* %image_width, align 4, !tbaa !37
  %38 = load i32, i32* %output_cols, align 4, !tbaa !25
  %39 = load i32, i32* %h_expand, align 4, !tbaa !25
  %mul9 = mul i32 %38, %39
  call void @expand_right_edge(i8** %33, i32 %35, i32 %37, i32 %mul9) #3
  store i32 0, i32* %outrow, align 4, !tbaa !25
  store i32 0, i32* %inrow, align 4, !tbaa !25
  br label %while.cond

while.cond:                                       ; preds = %for.end.41, %entry
  %40 = load i32, i32* %inrow, align 4, !tbaa !25
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 49
  %42 = load i32, i32* %max_v_samp_factor10, align 4, !tbaa !36
  %cmp = icmp slt i32 %40, %42
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %43 = load i32, i32* %outrow, align 4, !tbaa !25
  %idxprom12 = sext i32 %43 to i64
  %44 = load i8**, i8*** %output_data.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8*, i8** %44, i64 %idxprom12
  %45 = load i8*, i8** %arrayidx13, align 8, !tbaa !1
  store i8* %45, i8** %outptr, align 8, !tbaa !1
  store i32 0, i32* %outcol, align 4, !tbaa !25
  store i32 0, i32* %outcol_h, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %while.body
  %46 = load i32, i32* %outcol, align 4, !tbaa !25
  %47 = load i32, i32* %output_cols, align 4, !tbaa !25
  %cmp14 = icmp ult i32 %46, %47
  br i1 %cmp14, label %for.body, label %for.end.41

for.body:                                         ; preds = %for.cond
  store i64 0, i64* %outvalue, align 8, !tbaa !40
  store i32 0, i32* %v, align 4, !tbaa !25
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.29, %for.body
  %48 = load i32, i32* %v, align 4, !tbaa !25
  %49 = load i32, i32* %v_expand, align 4, !tbaa !25
  %cmp17 = icmp slt i32 %48, %49
  br i1 %cmp17, label %for.body.19, label %for.end.31

for.body.19:                                      ; preds = %for.cond.16
  %50 = load i32, i32* %inrow, align 4, !tbaa !25
  %51 = load i32, i32* %v, align 4, !tbaa !25
  %add = add nsw i32 %50, %51
  %idxprom20 = sext i32 %add to i64
  %52 = load i8**, i8*** %input_data.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8*, i8** %52, i64 %idxprom20
  %53 = load i8*, i8** %arrayidx21, align 8, !tbaa !1
  %54 = load i32, i32* %outcol_h, align 4, !tbaa !25
  %idx.ext = zext i32 %54 to i64
  %add.ptr = getelementptr inbounds i8, i8* %53, i64 %idx.ext
  store i8* %add.ptr, i8** %inptr, align 8, !tbaa !1
  store i32 0, i32* %h, align 4, !tbaa !25
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc, %for.body.19
  %55 = load i32, i32* %h, align 4, !tbaa !25
  %56 = load i32, i32* %h_expand, align 4, !tbaa !25
  %cmp23 = icmp slt i32 %55, %56
  br i1 %cmp23, label %for.body.25, label %for.end

for.body.25:                                      ; preds = %for.cond.22
  %57 = load i8*, i8** %inptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr, i8** %inptr, align 8, !tbaa !1
  %58 = load i8, i8* %57, align 1, !tbaa !5
  %conv26 = zext i8 %58 to i32
  %conv27 = sext i32 %conv26 to i64
  %59 = load i64, i64* %outvalue, align 8, !tbaa !40
  %add28 = add nsw i64 %59, %conv27
  store i64 %add28, i64* %outvalue, align 8, !tbaa !40
  br label %for.inc

for.inc:                                          ; preds = %for.body.25
  %60 = load i32, i32* %h, align 4, !tbaa !25
  %inc = add nsw i32 %60, 1
  store i32 %inc, i32* %h, align 4, !tbaa !25
  br label %for.cond.22

for.end:                                          ; preds = %for.cond.22
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end
  %61 = load i32, i32* %v, align 4, !tbaa !25
  %inc30 = add nsw i32 %61, 1
  store i32 %inc30, i32* %v, align 4, !tbaa !25
  br label %for.cond.16

for.end.31:                                       ; preds = %for.cond.16
  %62 = load i64, i64* %outvalue, align 8, !tbaa !40
  %63 = load i32, i32* %numpix2, align 4, !tbaa !25
  %conv32 = sext i32 %63 to i64
  %add33 = add nsw i64 %62, %conv32
  %64 = load i32, i32* %numpix, align 4, !tbaa !25
  %conv34 = sext i32 %64 to i64
  %div35 = sdiv i64 %add33, %conv34
  %conv36 = trunc i64 %div35 to i8
  %65 = load i8*, i8** %outptr, align 8, !tbaa !1
  %incdec.ptr37 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr37, i8** %outptr, align 8, !tbaa !1
  store i8 %conv36, i8* %65, align 1, !tbaa !5
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end.31
  %66 = load i32, i32* %outcol, align 4, !tbaa !25
  %inc39 = add i32 %66, 1
  store i32 %inc39, i32* %outcol, align 4, !tbaa !25
  %67 = load i32, i32* %h_expand, align 4, !tbaa !25
  %68 = load i32, i32* %outcol_h, align 4, !tbaa !25
  %add40 = add i32 %68, %67
  store i32 %add40, i32* %outcol_h, align 4, !tbaa !25
  br label %for.cond

for.end.41:                                       ; preds = %for.cond
  %69 = load i32, i32* %v_expand, align 4, !tbaa !25
  %70 = load i32, i32* %inrow, align 4, !tbaa !25
  %add42 = add nsw i32 %70, %69
  store i32 %add42, i32* %inrow, align 4, !tbaa !25
  %71 = load i32, i32* %outrow, align 4, !tbaa !25
  %inc43 = add nsw i32 %71, 1
  store i32 %inc43, i32* %outrow, align 4, !tbaa !25
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %72 = bitcast i64* %outvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast i32* %output_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %outcol_h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %outcol to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i32* %numpix2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast i32* %numpix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast i32* %v_expand to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %h_expand to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %outrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %inrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast %struct.my_downsampler** %downsample to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @jcopy_sample_rows(i8**, i32, i8**, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @expand_right_edge(i8** %image_data, i32 %num_rows, i32 %input_cols, i32 %output_cols) #0 {
entry:
  %image_data.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %input_cols.addr = alloca i32, align 4
  %output_cols.addr = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %pixval = alloca i8, align 1
  %count = alloca i32, align 4
  %row = alloca i32, align 4
  %numcols = alloca i32, align 4
  store i8** %image_data, i8*** %image_data.addr, align 8, !tbaa !1
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !25
  store i32 %input_cols, i32* %input_cols.addr, align 4, !tbaa !25
  store i32 %output_cols, i32* %output_cols.addr, align 4, !tbaa !25
  %0 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  call void @llvm.lifetime.start(i64 1, i8* %pixval) #1
  %1 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %numcols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %output_cols.addr, align 4, !tbaa !25
  %5 = load i32, i32* %input_cols.addr, align 4, !tbaa !25
  %sub = sub i32 %4, %5
  store i32 %sub, i32* %numcols, align 4, !tbaa !25
  %6 = load i32, i32* %numcols, align 4, !tbaa !25
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %row, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %if.then
  %7 = load i32, i32* %row, align 4, !tbaa !25
  %8 = load i32, i32* %num_rows.addr, align 4, !tbaa !25
  %cmp1 = icmp slt i32 %7, %8
  br i1 %cmp1, label %for.body, label %for.end.7

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %row, align 4, !tbaa !25
  %idxprom = sext i32 %9 to i64
  %10 = load i8**, i8*** %image_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %11 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %12 = load i32, i32* %input_cols.addr, align 4, !tbaa !25
  %idx.ext = zext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr, i8** %ptr, align 8, !tbaa !1
  %13 = load i8*, i8** %ptr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %13, i64 -1
  %14 = load i8, i8* %arrayidx2, align 1, !tbaa !5
  store i8 %14, i8* %pixval, align 1, !tbaa !5
  %15 = load i32, i32* %numcols, align 4, !tbaa !25
  store i32 %15, i32* %count, align 4, !tbaa !25
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %16 = load i32, i32* %count, align 4, !tbaa !25
  %cmp4 = icmp sgt i32 %16, 0
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %17 = load i8, i8* %pixval, align 1, !tbaa !5
  %18 = load i8*, i8** %ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8, !tbaa !1
  store i8 %17, i8* %18, align 1, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %19 = load i32, i32* %count, align 4, !tbaa !25
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %count, align 4, !tbaa !25
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %20 = load i32, i32* %row, align 4, !tbaa !25
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %row, align 4, !tbaa !25
  br label %for.cond

for.end.7:                                        ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end.7, %entry
  %21 = bitcast i32* %numcols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  call void @llvm.lifetime.end(i64 1, i8* %pixval) #1
  %24 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
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
!5 = !{!3, !3, i64 0}
!6 = !{!7, !2, i64 8}
!7 = !{!"jpeg_compress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !8, i64 36, !2, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !3, i64 60, !9, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !3, i64 96, !2, i64 104, !3, i64 112, !3, i64 144, !3, i64 160, !3, i64 192, !3, i64 224, !3, i64 240, !3, i64 256, !8, i64 272, !2, i64 280, !3, i64 288, !3, i64 292, !3, i64 296, !3, i64 300, !3, i64 304, !8, i64 308, !3, i64 312, !8, i64 316, !8, i64 320, !3, i64 324, !3, i64 328, !3, i64 329, !3, i64 330, !10, i64 332, !10, i64 334, !3, i64 336, !3, i64 340, !8, i64 344, !3, i64 348, !8, i64 352, !8, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !8, i64 372, !3, i64 376, !8, i64 408, !8, i64 412, !8, i64 416, !3, i64 420, !8, i64 460, !8, i64 464, !8, i64 468, !8, i64 472, !8, i64 476, !2, i64 480, !8, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !8, i64 576}
!8 = !{!"int", !3, i64 0}
!9 = !{!"double", !3, i64 0}
!10 = !{!"short", !3, i64 0}
!11 = !{!12, !2, i64 0}
!12 = !{!"jpeg_memory_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !13, i64 88, !13, i64 96}
!13 = !{!"long", !3, i64 0}
!14 = !{!7, !2, i64 544}
!15 = !{!16, !2, i64 0}
!16 = !{!"", !17, i64 0, !3, i64 24, !3, i64 104, !3, i64 144, !3, i64 154}
!17 = !{!"jpeg_downsampler", !2, i64 0, !2, i64 8, !3, i64 16}
!18 = !{!16, !2, i64 8}
!19 = !{!16, !3, i64 16}
!20 = !{!7, !3, i64 300}
!21 = !{!7, !2, i64 0}
!22 = !{!23, !8, i64 40}
!23 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !3, i64 44, !8, i64 124, !13, i64 128, !2, i64 136, !8, i64 144, !2, i64 152, !8, i64 160, !8, i64 164}
!24 = !{!23, !2, i64 0}
!25 = !{!8, !8, i64 0}
!26 = !{!7, !2, i64 104}
!27 = !{!7, !8, i64 92}
!28 = !{!29, !8, i64 8}
!29 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !3, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !2, i64 80, !2, i64 88}
!30 = !{!29, !8, i64 36}
!31 = !{!7, !8, i64 360}
!32 = !{!29, !8, i64 12}
!33 = !{!29, !8, i64 40}
!34 = !{!7, !8, i64 364}
!35 = !{!7, !8, i64 352}
!36 = !{!7, !8, i64 356}
!37 = !{!7, !8, i64 48}
!38 = !{!29, !8, i64 28}
!39 = !{!29, !8, i64 4}
!40 = !{!13, !13, i64 0}
