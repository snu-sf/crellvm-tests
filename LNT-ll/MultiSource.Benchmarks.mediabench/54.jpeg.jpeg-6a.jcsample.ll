; ModuleID = './MultiSource.Benchmarks.mediabench/54.jpeg.jpeg-6a.jcsample.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_destination_mgr*, i32, i32, i32, i32, double, i32, i32, i32, %struct.jpeg_component_info*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], [16 x i8], [16 x i8], [16 x i8], i32, %struct.jpeg_scan_info*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, %struct.jpeg_comp_master*, %struct.jpeg_c_main_controller*, %struct.jpeg_c_prep_controller*, %struct.jpeg_c_coef_controller*, %struct.jpeg_marker_writer*, %struct.jpeg_color_converter*, %struct.jpeg_downsampler*, %struct.jpeg_forward_dct*, %struct.jpeg_entropy_encoder* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_destination_mgr = type { i8*, i64, {}*, i32 (%struct.jpeg_compress_struct*)*, {}* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_comp_master = type { {}*, {}*, {}*, i32, i32 }
%struct.jpeg_c_main_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)* }
%struct.jpeg_c_prep_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* }
%struct.jpeg_c_coef_controller = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, i8***)* }
%struct.jpeg_marker_writer = type { void (%struct.jpeg_compress_struct*, i32, i8*, i32)*, {}*, {}*, {}*, {}*, {}* }
%struct.jpeg_color_converter = type { {}*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* }
%struct.jpeg_downsampler = type { {}*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, i32 }
%struct.jpeg_forward_dct = type { {}*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* }
%struct.jpeg_entropy_encoder = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, {}* }
%struct.my_downsampler = type { %struct.jpeg_downsampler, [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*] }

; Function Attrs: nounwind uwtable
define void @jinit_downsampler(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %downsample = alloca %struct.my_downsampler*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %smoothok = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i32 1, i32* %smoothok, align 4
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_compress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 104)
  %5 = bitcast i8* %call to %struct.my_downsampler*
  store %struct.my_downsampler* %5, %struct.my_downsampler** %downsample, align 8
  %6 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8
  %7 = bitcast %struct.my_downsampler* %6 to %struct.jpeg_downsampler*
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %downsample1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 57
  store %struct.jpeg_downsampler* %7, %struct.jpeg_downsampler** %downsample1, align 8
  %9 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8
  %pub = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %9, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %pub, i32 0, i32 0
  %start_pass2 = bitcast {}** %start_pass to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @start_pass_downsample, void (%struct.jpeg_compress_struct*)** %start_pass2, align 8
  %10 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8
  %pub3 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %10, i32 0, i32 0
  %downsample4 = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %pub3, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)* @sep_downsample, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)** %downsample4, align 8
  %11 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8
  %pub5 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %11, i32 0, i32 0
  %need_context_rows = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %pub5, i32 0, i32 2
  store i32 0, i32* %need_context_rows, align 4
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %CCIR601_sampling = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 26
  %13 = load i32, i32* %CCIR601_sampling, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 5
  store i32 23, i32* %msg_code, align 4
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 0
  %18 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %20 = bitcast %struct.jpeg_compress_struct* %19 to %struct.jpeg_common_struct*
  call void %18(%struct.jpeg_common_struct* %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %ci, align 4
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 14
  %22 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %22, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %23 = load i32, i32* %ci, align 4
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 12
  %25 = load i32, i32* %num_components, align 4
  %cmp = icmp slt i32 %23, %25
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %26, i32 0, i32 2
  %27 = load i32, i32* %h_samp_factor, align 4
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 38
  %29 = load i32, i32* %max_h_samp_factor, align 4
  %cmp7 = icmp eq i32 %27, %29
  br i1 %cmp7, label %land.lhs.true, label %if.else.18

land.lhs.true:                                    ; preds = %for.body
  %30 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %30, i32 0, i32 3
  %31 = load i32, i32* %v_samp_factor, align 4
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 39
  %33 = load i32, i32* %max_v_samp_factor, align 4
  %cmp8 = icmp eq i32 %31, %33
  br i1 %cmp8, label %if.then.9, label %if.else.18

if.then.9:                                        ; preds = %land.lhs.true
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %smoothing_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 27
  %35 = load i32, i32* %smoothing_factor, align 4
  %tobool10 = icmp ne i32 %35, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.9
  %36 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %36 to i64
  %37 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8
  %methods = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %37, i32 0, i32 1
  %arrayidx = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %methods, i32 0, i64 %idxprom
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)* @fullsize_smooth_downsample, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %arrayidx, align 8
  %38 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8
  %pub12 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %38, i32 0, i32 0
  %need_context_rows13 = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %pub12, i32 0, i32 2
  store i32 1, i32* %need_context_rows13, align 4
  br label %if.end.17

if.else:                                          ; preds = %if.then.9
  %39 = load i32, i32* %ci, align 4
  %idxprom14 = sext i32 %39 to i64
  %40 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8
  %methods15 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %40, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %methods15, i32 0, i64 %idxprom14
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)* @fullsize_downsample, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %arrayidx16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.11
  br label %if.end.75

if.else.18:                                       ; preds = %land.lhs.true, %for.body
  %41 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor19 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %41, i32 0, i32 2
  %42 = load i32, i32* %h_samp_factor19, align 4
  %mul = mul nsw i32 %42, 2
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_h_samp_factor20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 38
  %44 = load i32, i32* %max_h_samp_factor20, align 4
  %cmp21 = icmp eq i32 %mul, %44
  br i1 %cmp21, label %land.lhs.true.22, label %if.else.30

land.lhs.true.22:                                 ; preds = %if.else.18
  %45 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor23 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %45, i32 0, i32 3
  %46 = load i32, i32* %v_samp_factor23, align 4
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 39
  %48 = load i32, i32* %max_v_samp_factor24, align 4
  %cmp25 = icmp eq i32 %46, %48
  br i1 %cmp25, label %if.then.26, label %if.else.30

if.then.26:                                       ; preds = %land.lhs.true.22
  store i32 0, i32* %smoothok, align 4
  %49 = load i32, i32* %ci, align 4
  %idxprom27 = sext i32 %49 to i64
  %50 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8
  %methods28 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %50, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %methods28, i32 0, i64 %idxprom27
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)* @h2v1_downsample, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %arrayidx29, align 8
  br label %if.end.74

if.else.30:                                       ; preds = %land.lhs.true.22, %if.else.18
  %51 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor31 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %51, i32 0, i32 2
  %52 = load i32, i32* %h_samp_factor31, align 4
  %mul32 = mul nsw i32 %52, 2
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_h_samp_factor33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %53, i32 0, i32 38
  %54 = load i32, i32* %max_h_samp_factor33, align 4
  %cmp34 = icmp eq i32 %mul32, %54
  br i1 %cmp34, label %land.lhs.true.35, label %if.else.54

land.lhs.true.35:                                 ; preds = %if.else.30
  %55 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor36 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %55, i32 0, i32 3
  %56 = load i32, i32* %v_samp_factor36, align 4
  %mul37 = mul nsw i32 %56, 2
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %57, i32 0, i32 39
  %58 = load i32, i32* %max_v_samp_factor38, align 4
  %cmp39 = icmp eq i32 %mul37, %58
  br i1 %cmp39, label %if.then.40, label %if.else.54

if.then.40:                                       ; preds = %land.lhs.true.35
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %smoothing_factor41 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %59, i32 0, i32 27
  %60 = load i32, i32* %smoothing_factor41, align 4
  %tobool42 = icmp ne i32 %60, 0
  br i1 %tobool42, label %if.then.43, label %if.else.49

if.then.43:                                       ; preds = %if.then.40
  %61 = load i32, i32* %ci, align 4
  %idxprom44 = sext i32 %61 to i64
  %62 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8
  %methods45 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %62, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %methods45, i32 0, i64 %idxprom44
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)* @h2v2_smooth_downsample, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %arrayidx46, align 8
  %63 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8
  %pub47 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %63, i32 0, i32 0
  %need_context_rows48 = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %pub47, i32 0, i32 2
  store i32 1, i32* %need_context_rows48, align 4
  br label %if.end.53

if.else.49:                                       ; preds = %if.then.40
  %64 = load i32, i32* %ci, align 4
  %idxprom50 = sext i32 %64 to i64
  %65 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8
  %methods51 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %65, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %methods51, i32 0, i64 %idxprom50
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)* @h2v2_downsample, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %arrayidx52, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.49, %if.then.43
  br label %if.end.73

if.else.54:                                       ; preds = %land.lhs.true.35, %if.else.30
  %66 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_h_samp_factor55 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %66, i32 0, i32 38
  %67 = load i32, i32* %max_h_samp_factor55, align 4
  %68 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor56 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %68, i32 0, i32 2
  %69 = load i32, i32* %h_samp_factor56, align 4
  %rem = srem i32 %67, %69
  %cmp57 = icmp eq i32 %rem, 0
  br i1 %cmp57, label %land.lhs.true.58, label %if.else.67

land.lhs.true.58:                                 ; preds = %if.else.54
  %70 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor59 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %70, i32 0, i32 39
  %71 = load i32, i32* %max_v_samp_factor59, align 4
  %72 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor60 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %72, i32 0, i32 3
  %73 = load i32, i32* %v_samp_factor60, align 4
  %rem61 = srem i32 %71, %73
  %cmp62 = icmp eq i32 %rem61, 0
  br i1 %cmp62, label %if.then.63, label %if.else.67

if.then.63:                                       ; preds = %land.lhs.true.58
  store i32 0, i32* %smoothok, align 4
  %74 = load i32, i32* %ci, align 4
  %idxprom64 = sext i32 %74 to i64
  %75 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8
  %methods65 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %75, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %methods65, i32 0, i64 %idxprom64
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)* @int_downsample, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %arrayidx66, align 8
  br label %if.end.72

if.else.67:                                       ; preds = %land.lhs.true.58, %if.else.54
  %76 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err68 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %76, i32 0, i32 0
  %77 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err68, align 8
  %msg_code69 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %77, i32 0, i32 5
  store i32 37, i32* %msg_code69, align 4
  %78 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err70 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %78, i32 0, i32 0
  %79 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err70, align 8
  %error_exit71 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %79, i32 0, i32 0
  %80 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit71, align 8
  %81 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %82 = bitcast %struct.jpeg_compress_struct* %81 to %struct.jpeg_common_struct*
  call void %80(%struct.jpeg_common_struct* %82)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.67, %if.then.63
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end.53
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.26
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.75
  %83 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %83, 1
  store i32 %inc, i32* %ci, align 4
  %84 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %84, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %85 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %smoothing_factor76 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %85, i32 0, i32 27
  %86 = load i32, i32* %smoothing_factor76, align 4
  %tobool77 = icmp ne i32 %86, 0
  br i1 %tobool77, label %land.lhs.true.78, label %if.end.84

land.lhs.true.78:                                 ; preds = %for.end
  %87 = load i32, i32* %smoothok, align 4
  %tobool79 = icmp ne i32 %87, 0
  br i1 %tobool79, label %if.end.84, label %if.then.80

if.then.80:                                       ; preds = %land.lhs.true.78
  %88 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err81 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %88, i32 0, i32 0
  %89 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err81, align 8
  %msg_code82 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %89, i32 0, i32 5
  store i32 98, i32* %msg_code82, align 4
  %90 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err83 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %90, i32 0, i32 0
  %91 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err83, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %91, i32 0, i32 1
  %92 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %93 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %94 = bitcast %struct.jpeg_compress_struct* %93 to %struct.jpeg_common_struct*
  call void %92(%struct.jpeg_common_struct* %94, i32 0)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.80, %land.lhs.true.78, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_downsample(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
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
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i8*** %input_buf, i8**** %input_buf.addr, align 8
  store i32 %in_row_index, i32* %in_row_index.addr, align 4
  store i8*** %output_buf, i8**** %output_buf.addr, align 8
  store i32 %out_row_group_index, i32* %out_row_group_index.addr, align 4
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %downsample1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 57
  %1 = load %struct.jpeg_downsampler*, %struct.jpeg_downsampler** %downsample1, align 8
  %2 = bitcast %struct.jpeg_downsampler* %1 to %struct.my_downsampler*
  store %struct.my_downsampler* %2, %struct.my_downsampler** %downsample, align 8
  store i32 0, i32* %ci, align 4
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 14
  %4 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %4, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %ci, align 4
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 12
  %7 = load i32, i32* %num_components, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i8***, i8**** %input_buf.addr, align 8
  %arrayidx = getelementptr inbounds i8**, i8*** %9, i64 %idxprom
  %10 = load i8**, i8*** %arrayidx, align 8
  %11 = load i32, i32* %in_row_index.addr, align 4
  %idx.ext = zext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %10, i64 %idx.ext
  store i8** %add.ptr, i8*** %in_ptr, align 8
  %12 = load i32, i32* %ci, align 4
  %idxprom2 = sext i32 %12 to i64
  %13 = load i8***, i8**** %output_buf.addr, align 8
  %arrayidx3 = getelementptr inbounds i8**, i8*** %13, i64 %idxprom2
  %14 = load i8**, i8*** %arrayidx3, align 8
  %15 = load i32, i32* %out_row_group_index.addr, align 4
  %16 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %16, i32 0, i32 3
  %17 = load i32, i32* %v_samp_factor, align 4
  %mul = mul i32 %15, %17
  %idx.ext4 = zext i32 %mul to i64
  %add.ptr5 = getelementptr inbounds i8*, i8** %14, i64 %idx.ext4
  store i8** %add.ptr5, i8*** %out_ptr, align 8
  %18 = load i32, i32* %ci, align 4
  %idxprom6 = sext i32 %18 to i64
  %19 = load %struct.my_downsampler*, %struct.my_downsampler** %downsample, align 8
  %methods = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %19, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %methods, i32 0, i64 %idxprom6
  %20 = load void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %arrayidx7, align 8
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %22 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %23 = load i8**, i8*** %in_ptr, align 8
  %24 = load i8**, i8*** %out_ptr, align 8
  call void %20(%struct.jpeg_compress_struct* %21, %struct.jpeg_component_info* %22, i8** %23, i8** %24)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %ci, align 4
  %26 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %26, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fullsize_smooth_downsample(%struct.jpeg_compress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8** %output_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data.addr = alloca i8**, align 8
  %outrow = alloca i32, align 4
  %colctr = alloca i32, align 4
  %output_cols = alloca i32, align 4
  %inptr = alloca i8*, align 8
  %above_ptr = alloca i8*, align 8
  %below_ptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %membersum = alloca i64, align 8
  %neighsum = alloca i64, align 8
  %memberscale = alloca i64, align 8
  %neighscale = alloca i64, align 8
  %colsum = alloca i32, align 4
  %lastcolsum = alloca i32, align 4
  %nextcolsum = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8
  store i8** %input_data, i8*** %input_data.addr, align 8
  store i8** %output_data, i8*** %output_data.addr, align 8
  %0 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %0, i32 0, i32 7
  %1 = load i32, i32* %width_in_blocks, align 4
  %mul = mul i32 %1, 8
  store i32 %mul, i32* %output_cols, align 4
  %2 = load i8**, i8*** %input_data.addr, align 8
  %add.ptr = getelementptr inbounds i8*, i8** %2, i64 -1
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 39
  %4 = load i32, i32* %max_v_samp_factor, align 4
  %add = add nsw i32 %4, 2
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 6
  %6 = load i32, i32* %image_width, align 4
  %7 = load i32, i32* %output_cols, align 4
  call void @expand_right_edge(i8** %add.ptr, i32 %add, i32 %6, i32 %7)
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %smoothing_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 27
  %9 = load i32, i32* %smoothing_factor, align 4
  %conv = sext i32 %9 to i64
  %mul1 = mul nsw i64 %conv, 512
  %sub = sub nsw i64 65536, %mul1
  store i64 %sub, i64* %memberscale, align 8
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %smoothing_factor2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 27
  %11 = load i32, i32* %smoothing_factor2, align 4
  %mul3 = mul nsw i32 %11, 64
  %conv4 = sext i32 %mul3 to i64
  store i64 %conv4, i64* %neighscale, align 8
  store i32 0, i32* %outrow, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.82, %entry
  %12 = load i32, i32* %outrow, align 4
  %13 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %13, i32 0, i32 3
  %14 = load i32, i32* %v_samp_factor, align 4
  %cmp = icmp slt i32 %12, %14
  br i1 %cmp, label %for.body, label %for.end.83

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %outrow, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i8**, i8*** %output_data.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %16, i64 %idxprom
  %17 = load i8*, i8** %arrayidx, align 8
  store i8* %17, i8** %outptr, align 8
  %18 = load i32, i32* %outrow, align 4
  %idxprom6 = sext i32 %18 to i64
  %19 = load i8**, i8*** %input_data.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %19, i64 %idxprom6
  %20 = load i8*, i8** %arrayidx7, align 8
  store i8* %20, i8** %inptr, align 8
  %21 = load i32, i32* %outrow, align 4
  %sub8 = sub nsw i32 %21, 1
  %idxprom9 = sext i32 %sub8 to i64
  %22 = load i8**, i8*** %input_data.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %22, i64 %idxprom9
  %23 = load i8*, i8** %arrayidx10, align 8
  store i8* %23, i8** %above_ptr, align 8
  %24 = load i32, i32* %outrow, align 4
  %add11 = add nsw i32 %24, 1
  %idxprom12 = sext i32 %add11 to i64
  %25 = load i8**, i8*** %input_data.addr, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %25, i64 %idxprom12
  %26 = load i8*, i8** %arrayidx13, align 8
  store i8* %26, i8** %below_ptr, align 8
  %27 = load i8*, i8** %above_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %above_ptr, align 8
  %28 = load i8, i8* %27, align 1
  %conv14 = zext i8 %28 to i32
  %29 = load i8*, i8** %below_ptr, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr15, i8** %below_ptr, align 8
  %30 = load i8, i8* %29, align 1
  %conv16 = zext i8 %30 to i32
  %add17 = add nsw i32 %conv14, %conv16
  %31 = load i8*, i8** %inptr, align 8
  %32 = load i8, i8* %31, align 1
  %conv18 = zext i8 %32 to i32
  %add19 = add nsw i32 %add17, %conv18
  store i32 %add19, i32* %colsum, align 4
  %33 = load i8*, i8** %inptr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr20, i8** %inptr, align 8
  %34 = load i8, i8* %33, align 1
  %conv21 = zext i8 %34 to i32
  %conv22 = sext i32 %conv21 to i64
  store i64 %conv22, i64* %membersum, align 8
  %35 = load i8*, i8** %above_ptr, align 8
  %36 = load i8, i8* %35, align 1
  %conv23 = zext i8 %36 to i32
  %37 = load i8*, i8** %below_ptr, align 8
  %38 = load i8, i8* %37, align 1
  %conv24 = zext i8 %38 to i32
  %add25 = add nsw i32 %conv23, %conv24
  %39 = load i8*, i8** %inptr, align 8
  %40 = load i8, i8* %39, align 1
  %conv26 = zext i8 %40 to i32
  %add27 = add nsw i32 %add25, %conv26
  store i32 %add27, i32* %nextcolsum, align 4
  %41 = load i32, i32* %colsum, align 4
  %conv28 = sext i32 %41 to i64
  %42 = load i32, i32* %colsum, align 4
  %conv29 = sext i32 %42 to i64
  %43 = load i64, i64* %membersum, align 8
  %sub30 = sub nsw i64 %conv29, %43
  %add31 = add nsw i64 %conv28, %sub30
  %44 = load i32, i32* %nextcolsum, align 4
  %conv32 = sext i32 %44 to i64
  %add33 = add nsw i64 %add31, %conv32
  store i64 %add33, i64* %neighsum, align 8
  %45 = load i64, i64* %membersum, align 8
  %46 = load i64, i64* %memberscale, align 8
  %mul34 = mul nsw i64 %45, %46
  %47 = load i64, i64* %neighsum, align 8
  %48 = load i64, i64* %neighscale, align 8
  %mul35 = mul nsw i64 %47, %48
  %add36 = add nsw i64 %mul34, %mul35
  store i64 %add36, i64* %membersum, align 8
  %49 = load i64, i64* %membersum, align 8
  %add37 = add nsw i64 %49, 32768
  %shr = ashr i64 %add37, 16
  %conv38 = trunc i64 %shr to i8
  %50 = load i8*, i8** %outptr, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr39, i8** %outptr, align 8
  store i8 %conv38, i8* %50, align 1
  %51 = load i32, i32* %colsum, align 4
  store i32 %51, i32* %lastcolsum, align 4
  %52 = load i32, i32* %nextcolsum, align 4
  store i32 %52, i32* %colsum, align 4
  %53 = load i32, i32* %output_cols, align 4
  %sub40 = sub i32 %53, 2
  store i32 %sub40, i32* %colctr, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc, %for.body
  %54 = load i32, i32* %colctr, align 4
  %cmp42 = icmp ugt i32 %54, 0
  br i1 %cmp42, label %for.body.44, label %for.end

for.body.44:                                      ; preds = %for.cond.41
  %55 = load i8*, i8** %inptr, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr45, i8** %inptr, align 8
  %56 = load i8, i8* %55, align 1
  %conv46 = zext i8 %56 to i32
  %conv47 = sext i32 %conv46 to i64
  store i64 %conv47, i64* %membersum, align 8
  %57 = load i8*, i8** %above_ptr, align 8
  %incdec.ptr48 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr48, i8** %above_ptr, align 8
  %58 = load i8*, i8** %below_ptr, align 8
  %incdec.ptr49 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr49, i8** %below_ptr, align 8
  %59 = load i8*, i8** %above_ptr, align 8
  %60 = load i8, i8* %59, align 1
  %conv50 = zext i8 %60 to i32
  %61 = load i8*, i8** %below_ptr, align 8
  %62 = load i8, i8* %61, align 1
  %conv51 = zext i8 %62 to i32
  %add52 = add nsw i32 %conv50, %conv51
  %63 = load i8*, i8** %inptr, align 8
  %64 = load i8, i8* %63, align 1
  %conv53 = zext i8 %64 to i32
  %add54 = add nsw i32 %add52, %conv53
  store i32 %add54, i32* %nextcolsum, align 4
  %65 = load i32, i32* %lastcolsum, align 4
  %conv55 = sext i32 %65 to i64
  %66 = load i32, i32* %colsum, align 4
  %conv56 = sext i32 %66 to i64
  %67 = load i64, i64* %membersum, align 8
  %sub57 = sub nsw i64 %conv56, %67
  %add58 = add nsw i64 %conv55, %sub57
  %68 = load i32, i32* %nextcolsum, align 4
  %conv59 = sext i32 %68 to i64
  %add60 = add nsw i64 %add58, %conv59
  store i64 %add60, i64* %neighsum, align 8
  %69 = load i64, i64* %membersum, align 8
  %70 = load i64, i64* %memberscale, align 8
  %mul61 = mul nsw i64 %69, %70
  %71 = load i64, i64* %neighsum, align 8
  %72 = load i64, i64* %neighscale, align 8
  %mul62 = mul nsw i64 %71, %72
  %add63 = add nsw i64 %mul61, %mul62
  store i64 %add63, i64* %membersum, align 8
  %73 = load i64, i64* %membersum, align 8
  %add64 = add nsw i64 %73, 32768
  %shr65 = ashr i64 %add64, 16
  %conv66 = trunc i64 %shr65 to i8
  %74 = load i8*, i8** %outptr, align 8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr67, i8** %outptr, align 8
  store i8 %conv66, i8* %74, align 1
  %75 = load i32, i32* %colsum, align 4
  store i32 %75, i32* %lastcolsum, align 4
  %76 = load i32, i32* %nextcolsum, align 4
  store i32 %76, i32* %colsum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.44
  %77 = load i32, i32* %colctr, align 4
  %dec = add i32 %77, -1
  store i32 %dec, i32* %colctr, align 4
  br label %for.cond.41

for.end:                                          ; preds = %for.cond.41
  %78 = load i8*, i8** %inptr, align 8
  %79 = load i8, i8* %78, align 1
  %conv68 = zext i8 %79 to i32
  %conv69 = sext i32 %conv68 to i64
  store i64 %conv69, i64* %membersum, align 8
  %80 = load i32, i32* %lastcolsum, align 4
  %conv70 = sext i32 %80 to i64
  %81 = load i32, i32* %colsum, align 4
  %conv71 = sext i32 %81 to i64
  %82 = load i64, i64* %membersum, align 8
  %sub72 = sub nsw i64 %conv71, %82
  %add73 = add nsw i64 %conv70, %sub72
  %83 = load i32, i32* %colsum, align 4
  %conv74 = sext i32 %83 to i64
  %add75 = add nsw i64 %add73, %conv74
  store i64 %add75, i64* %neighsum, align 8
  %84 = load i64, i64* %membersum, align 8
  %85 = load i64, i64* %memberscale, align 8
  %mul76 = mul nsw i64 %84, %85
  %86 = load i64, i64* %neighsum, align 8
  %87 = load i64, i64* %neighscale, align 8
  %mul77 = mul nsw i64 %86, %87
  %add78 = add nsw i64 %mul76, %mul77
  store i64 %add78, i64* %membersum, align 8
  %88 = load i64, i64* %membersum, align 8
  %add79 = add nsw i64 %88, 32768
  %shr80 = ashr i64 %add79, 16
  %conv81 = trunc i64 %shr80 to i8
  %89 = load i8*, i8** %outptr, align 8
  store i8 %conv81, i8* %89, align 1
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.end
  %90 = load i32, i32* %outrow, align 4
  %inc = add nsw i32 %90, 1
  store i32 %inc, i32* %outrow, align 4
  br label %for.cond

for.end.83:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fullsize_downsample(%struct.jpeg_compress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8** %output_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data.addr = alloca i8**, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8
  store i8** %input_data, i8*** %input_data.addr, align 8
  store i8** %output_data, i8*** %output_data.addr, align 8
  %0 = load i8**, i8*** %input_data.addr, align 8
  %1 = load i8**, i8*** %output_data.addr, align 8
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 39
  %3 = load i32, i32* %max_v_samp_factor, align 4
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 6
  %5 = load i32, i32* %image_width, align 4
  call void @jcopy_sample_rows(i8** %0, i32 0, i8** %1, i32 0, i32 %3, i32 %5)
  %6 = load i8**, i8*** %output_data.addr, align 8
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 39
  %8 = load i32, i32* %max_v_samp_factor1, align 4
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 6
  %10 = load i32, i32* %image_width2, align 4
  %11 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %11, i32 0, i32 7
  %12 = load i32, i32* %width_in_blocks, align 4
  %mul = mul i32 %12, 8
  call void @expand_right_edge(i8** %6, i32 %8, i32 %10, i32 %mul)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @h2v1_downsample(%struct.jpeg_compress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8** %output_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data.addr = alloca i8**, align 8
  %outrow = alloca i32, align 4
  %outcol = alloca i32, align 4
  %output_cols = alloca i32, align 4
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %bias = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8
  store i8** %input_data, i8*** %input_data.addr, align 8
  store i8** %output_data, i8*** %output_data.addr, align 8
  %0 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %0, i32 0, i32 7
  %1 = load i32, i32* %width_in_blocks, align 4
  %mul = mul i32 %1, 8
  store i32 %mul, i32* %output_cols, align 4
  %2 = load i8**, i8*** %input_data.addr, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 39
  %4 = load i32, i32* %max_v_samp_factor, align 4
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 6
  %6 = load i32, i32* %image_width, align 4
  %7 = load i32, i32* %output_cols, align 4
  %mul1 = mul i32 %7, 2
  call void @expand_right_edge(i8** %2, i32 %4, i32 %6, i32 %mul1)
  store i32 0, i32* %outrow, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %entry
  %8 = load i32, i32* %outrow, align 4
  %9 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %9, i32 0, i32 3
  %10 = load i32, i32* %v_samp_factor, align 4
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %outrow, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i8**, i8*** %output_data.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 %idxprom
  %13 = load i8*, i8** %arrayidx, align 8
  store i8* %13, i8** %outptr, align 8
  %14 = load i32, i32* %outrow, align 4
  %idxprom2 = sext i32 %14 to i64
  %15 = load i8**, i8*** %input_data.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %15, i64 %idxprom2
  %16 = load i8*, i8** %arrayidx3, align 8
  store i8* %16, i8** %inptr, align 8
  store i32 0, i32* %bias, align 4
  store i32 0, i32* %outcol, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %17 = load i32, i32* %outcol, align 4
  %18 = load i32, i32* %output_cols, align 4
  %cmp5 = icmp ult i32 %17, %18
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %19 = load i8*, i8** %inptr, align 8
  %20 = load i8, i8* %19, align 1
  %conv = zext i8 %20 to i32
  %21 = load i8*, i8** %inptr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %22 to i32
  %add = add nsw i32 %conv, %conv8
  %23 = load i32, i32* %bias, align 4
  %add9 = add nsw i32 %add, %23
  %shr = ashr i32 %add9, 1
  %conv10 = trunc i32 %shr to i8
  %24 = load i8*, i8** %outptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %outptr, align 8
  store i8 %conv10, i8* %24, align 1
  %25 = load i32, i32* %bias, align 4
  %xor = xor i32 %25, 1
  store i32 %xor, i32* %bias, align 4
  %26 = load i8*, i8** %inptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 2
  store i8* %add.ptr, i8** %inptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %27 = load i32, i32* %outcol, align 4
  %inc = add i32 %27, 1
  store i32 %inc, i32* %outcol, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %28 = load i32, i32* %outrow, align 4
  %inc12 = add nsw i32 %28, 1
  store i32 %inc12, i32* %outrow, align 4
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @h2v2_smooth_downsample(%struct.jpeg_compress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8** %output_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data.addr = alloca i8**, align 8
  %inrow = alloca i32, align 4
  %outrow = alloca i32, align 4
  %colctr = alloca i32, align 4
  %output_cols = alloca i32, align 4
  %inptr0 = alloca i8*, align 8
  %inptr1 = alloca i8*, align 8
  %above_ptr = alloca i8*, align 8
  %below_ptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %membersum = alloca i64, align 8
  %neighsum = alloca i64, align 8
  %memberscale = alloca i64, align 8
  %neighscale = alloca i64, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8
  store i8** %input_data, i8*** %input_data.addr, align 8
  store i8** %output_data, i8*** %output_data.addr, align 8
  %0 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %0, i32 0, i32 7
  %1 = load i32, i32* %width_in_blocks, align 4
  %mul = mul i32 %1, 8
  store i32 %mul, i32* %output_cols, align 4
  %2 = load i8**, i8*** %input_data.addr, align 8
  %add.ptr = getelementptr inbounds i8*, i8** %2, i64 -1
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 39
  %4 = load i32, i32* %max_v_samp_factor, align 4
  %add = add nsw i32 %4, 2
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 6
  %6 = load i32, i32* %image_width, align 4
  %7 = load i32, i32* %output_cols, align 4
  %mul1 = mul i32 %7, 2
  call void @expand_right_edge(i8** %add.ptr, i32 %add, i32 %6, i32 %mul1)
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %smoothing_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 27
  %9 = load i32, i32* %smoothing_factor, align 4
  %mul2 = mul nsw i32 %9, 80
  %sub = sub nsw i32 16384, %mul2
  %conv = sext i32 %sub to i64
  store i64 %conv, i64* %memberscale, align 8
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %smoothing_factor3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 27
  %11 = load i32, i32* %smoothing_factor3, align 4
  %mul4 = mul nsw i32 %11, 16
  %conv5 = sext i32 %mul4 to i64
  store i64 %conv5, i64* %neighscale, align 8
  store i32 0, i32* %inrow, align 4
  store i32 0, i32* %outrow, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.184, %entry
  %12 = load i32, i32* %outrow, align 4
  %13 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %13, i32 0, i32 3
  %14 = load i32, i32* %v_samp_factor, align 4
  %cmp = icmp slt i32 %12, %14
  br i1 %cmp, label %for.body, label %for.end.185

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %outrow, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i8**, i8*** %output_data.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %16, i64 %idxprom
  %17 = load i8*, i8** %arrayidx, align 8
  store i8* %17, i8** %outptr, align 8
  %18 = load i32, i32* %inrow, align 4
  %idxprom7 = sext i32 %18 to i64
  %19 = load i8**, i8*** %input_data.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %19, i64 %idxprom7
  %20 = load i8*, i8** %arrayidx8, align 8
  store i8* %20, i8** %inptr0, align 8
  %21 = load i32, i32* %inrow, align 4
  %add9 = add nsw i32 %21, 1
  %idxprom10 = sext i32 %add9 to i64
  %22 = load i8**, i8*** %input_data.addr, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %22, i64 %idxprom10
  %23 = load i8*, i8** %arrayidx11, align 8
  store i8* %23, i8** %inptr1, align 8
  %24 = load i32, i32* %inrow, align 4
  %sub12 = sub nsw i32 %24, 1
  %idxprom13 = sext i32 %sub12 to i64
  %25 = load i8**, i8*** %input_data.addr, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %25, i64 %idxprom13
  %26 = load i8*, i8** %arrayidx14, align 8
  store i8* %26, i8** %above_ptr, align 8
  %27 = load i32, i32* %inrow, align 4
  %add15 = add nsw i32 %27, 2
  %idxprom16 = sext i32 %add15 to i64
  %28 = load i8**, i8*** %input_data.addr, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %28, i64 %idxprom16
  %29 = load i8*, i8** %arrayidx17, align 8
  store i8* %29, i8** %below_ptr, align 8
  %30 = load i8*, i8** %inptr0, align 8
  %31 = load i8, i8* %30, align 1
  %conv18 = zext i8 %31 to i32
  %32 = load i8*, i8** %inptr0, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %32, i64 1
  %33 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %33 to i32
  %add21 = add nsw i32 %conv18, %conv20
  %34 = load i8*, i8** %inptr1, align 8
  %35 = load i8, i8* %34, align 1
  %conv22 = zext i8 %35 to i32
  %add23 = add nsw i32 %add21, %conv22
  %36 = load i8*, i8** %inptr1, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %36, i64 1
  %37 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %37 to i32
  %add26 = add nsw i32 %add23, %conv25
  %conv27 = sext i32 %add26 to i64
  store i64 %conv27, i64* %membersum, align 8
  %38 = load i8*, i8** %above_ptr, align 8
  %39 = load i8, i8* %38, align 1
  %conv28 = zext i8 %39 to i32
  %40 = load i8*, i8** %above_ptr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %41 to i32
  %add31 = add nsw i32 %conv28, %conv30
  %42 = load i8*, i8** %below_ptr, align 8
  %43 = load i8, i8* %42, align 1
  %conv32 = zext i8 %43 to i32
  %add33 = add nsw i32 %add31, %conv32
  %44 = load i8*, i8** %below_ptr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %45 to i32
  %add36 = add nsw i32 %add33, %conv35
  %46 = load i8*, i8** %inptr0, align 8
  %47 = load i8, i8* %46, align 1
  %conv37 = zext i8 %47 to i32
  %add38 = add nsw i32 %add36, %conv37
  %48 = load i8*, i8** %inptr0, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %48, i64 2
  %49 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %49 to i32
  %add41 = add nsw i32 %add38, %conv40
  %50 = load i8*, i8** %inptr1, align 8
  %51 = load i8, i8* %50, align 1
  %conv42 = zext i8 %51 to i32
  %add43 = add nsw i32 %add41, %conv42
  %52 = load i8*, i8** %inptr1, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %52, i64 2
  %53 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %53 to i32
  %add46 = add nsw i32 %add43, %conv45
  %conv47 = sext i32 %add46 to i64
  store i64 %conv47, i64* %neighsum, align 8
  %54 = load i64, i64* %neighsum, align 8
  %55 = load i64, i64* %neighsum, align 8
  %add48 = add nsw i64 %55, %54
  store i64 %add48, i64* %neighsum, align 8
  %56 = load i8*, i8** %above_ptr, align 8
  %57 = load i8, i8* %56, align 1
  %conv49 = zext i8 %57 to i32
  %58 = load i8*, i8** %above_ptr, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %58, i64 2
  %59 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %59 to i32
  %add52 = add nsw i32 %conv49, %conv51
  %60 = load i8*, i8** %below_ptr, align 8
  %61 = load i8, i8* %60, align 1
  %conv53 = zext i8 %61 to i32
  %add54 = add nsw i32 %add52, %conv53
  %62 = load i8*, i8** %below_ptr, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %62, i64 2
  %63 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %63 to i32
  %add57 = add nsw i32 %add54, %conv56
  %conv58 = sext i32 %add57 to i64
  %64 = load i64, i64* %neighsum, align 8
  %add59 = add nsw i64 %64, %conv58
  store i64 %add59, i64* %neighsum, align 8
  %65 = load i64, i64* %membersum, align 8
  %66 = load i64, i64* %memberscale, align 8
  %mul60 = mul nsw i64 %65, %66
  %67 = load i64, i64* %neighsum, align 8
  %68 = load i64, i64* %neighscale, align 8
  %mul61 = mul nsw i64 %67, %68
  %add62 = add nsw i64 %mul60, %mul61
  store i64 %add62, i64* %membersum, align 8
  %69 = load i64, i64* %membersum, align 8
  %add63 = add nsw i64 %69, 32768
  %shr = ashr i64 %add63, 16
  %conv64 = trunc i64 %shr to i8
  %70 = load i8*, i8** %outptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr, i8** %outptr, align 8
  store i8 %conv64, i8* %70, align 1
  %71 = load i8*, i8** %inptr0, align 8
  %add.ptr65 = getelementptr inbounds i8, i8* %71, i64 2
  store i8* %add.ptr65, i8** %inptr0, align 8
  %72 = load i8*, i8** %inptr1, align 8
  %add.ptr66 = getelementptr inbounds i8, i8* %72, i64 2
  store i8* %add.ptr66, i8** %inptr1, align 8
  %73 = load i8*, i8** %above_ptr, align 8
  %add.ptr67 = getelementptr inbounds i8, i8* %73, i64 2
  store i8* %add.ptr67, i8** %above_ptr, align 8
  %74 = load i8*, i8** %below_ptr, align 8
  %add.ptr68 = getelementptr inbounds i8, i8* %74, i64 2
  store i8* %add.ptr68, i8** %below_ptr, align 8
  %75 = load i32, i32* %output_cols, align 4
  %sub69 = sub i32 %75, 2
  store i32 %sub69, i32* %colctr, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc, %for.body
  %76 = load i32, i32* %colctr, align 4
  %cmp71 = icmp ugt i32 %76, 0
  br i1 %cmp71, label %for.body.73, label %for.end

for.body.73:                                      ; preds = %for.cond.70
  %77 = load i8*, i8** %inptr0, align 8
  %78 = load i8, i8* %77, align 1
  %conv74 = zext i8 %78 to i32
  %79 = load i8*, i8** %inptr0, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %79, i64 1
  %80 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %80 to i32
  %add77 = add nsw i32 %conv74, %conv76
  %81 = load i8*, i8** %inptr1, align 8
  %82 = load i8, i8* %81, align 1
  %conv78 = zext i8 %82 to i32
  %add79 = add nsw i32 %add77, %conv78
  %83 = load i8*, i8** %inptr1, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %83, i64 1
  %84 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %84 to i32
  %add82 = add nsw i32 %add79, %conv81
  %conv83 = sext i32 %add82 to i64
  store i64 %conv83, i64* %membersum, align 8
  %85 = load i8*, i8** %above_ptr, align 8
  %86 = load i8, i8* %85, align 1
  %conv84 = zext i8 %86 to i32
  %87 = load i8*, i8** %above_ptr, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %87, i64 1
  %88 = load i8, i8* %arrayidx85, align 1
  %conv86 = zext i8 %88 to i32
  %add87 = add nsw i32 %conv84, %conv86
  %89 = load i8*, i8** %below_ptr, align 8
  %90 = load i8, i8* %89, align 1
  %conv88 = zext i8 %90 to i32
  %add89 = add nsw i32 %add87, %conv88
  %91 = load i8*, i8** %below_ptr, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %91, i64 1
  %92 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %92 to i32
  %add92 = add nsw i32 %add89, %conv91
  %93 = load i8*, i8** %inptr0, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %93, i64 -1
  %94 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %94 to i32
  %add95 = add nsw i32 %add92, %conv94
  %95 = load i8*, i8** %inptr0, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %95, i64 2
  %96 = load i8, i8* %arrayidx96, align 1
  %conv97 = zext i8 %96 to i32
  %add98 = add nsw i32 %add95, %conv97
  %97 = load i8*, i8** %inptr1, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %97, i64 -1
  %98 = load i8, i8* %arrayidx99, align 1
  %conv100 = zext i8 %98 to i32
  %add101 = add nsw i32 %add98, %conv100
  %99 = load i8*, i8** %inptr1, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %99, i64 2
  %100 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %100 to i32
  %add104 = add nsw i32 %add101, %conv103
  %conv105 = sext i32 %add104 to i64
  store i64 %conv105, i64* %neighsum, align 8
  %101 = load i64, i64* %neighsum, align 8
  %102 = load i64, i64* %neighsum, align 8
  %add106 = add nsw i64 %102, %101
  store i64 %add106, i64* %neighsum, align 8
  %103 = load i8*, i8** %above_ptr, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %103, i64 -1
  %104 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %104 to i32
  %105 = load i8*, i8** %above_ptr, align 8
  %arrayidx109 = getelementptr inbounds i8, i8* %105, i64 2
  %106 = load i8, i8* %arrayidx109, align 1
  %conv110 = zext i8 %106 to i32
  %add111 = add nsw i32 %conv108, %conv110
  %107 = load i8*, i8** %below_ptr, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %107, i64 -1
  %108 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %108 to i32
  %add114 = add nsw i32 %add111, %conv113
  %109 = load i8*, i8** %below_ptr, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %109, i64 2
  %110 = load i8, i8* %arrayidx115, align 1
  %conv116 = zext i8 %110 to i32
  %add117 = add nsw i32 %add114, %conv116
  %conv118 = sext i32 %add117 to i64
  %111 = load i64, i64* %neighsum, align 8
  %add119 = add nsw i64 %111, %conv118
  store i64 %add119, i64* %neighsum, align 8
  %112 = load i64, i64* %membersum, align 8
  %113 = load i64, i64* %memberscale, align 8
  %mul120 = mul nsw i64 %112, %113
  %114 = load i64, i64* %neighsum, align 8
  %115 = load i64, i64* %neighscale, align 8
  %mul121 = mul nsw i64 %114, %115
  %add122 = add nsw i64 %mul120, %mul121
  store i64 %add122, i64* %membersum, align 8
  %116 = load i64, i64* %membersum, align 8
  %add123 = add nsw i64 %116, 32768
  %shr124 = ashr i64 %add123, 16
  %conv125 = trunc i64 %shr124 to i8
  %117 = load i8*, i8** %outptr, align 8
  %incdec.ptr126 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %incdec.ptr126, i8** %outptr, align 8
  store i8 %conv125, i8* %117, align 1
  %118 = load i8*, i8** %inptr0, align 8
  %add.ptr127 = getelementptr inbounds i8, i8* %118, i64 2
  store i8* %add.ptr127, i8** %inptr0, align 8
  %119 = load i8*, i8** %inptr1, align 8
  %add.ptr128 = getelementptr inbounds i8, i8* %119, i64 2
  store i8* %add.ptr128, i8** %inptr1, align 8
  %120 = load i8*, i8** %above_ptr, align 8
  %add.ptr129 = getelementptr inbounds i8, i8* %120, i64 2
  store i8* %add.ptr129, i8** %above_ptr, align 8
  %121 = load i8*, i8** %below_ptr, align 8
  %add.ptr130 = getelementptr inbounds i8, i8* %121, i64 2
  store i8* %add.ptr130, i8** %below_ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.73
  %122 = load i32, i32* %colctr, align 4
  %dec = add i32 %122, -1
  store i32 %dec, i32* %colctr, align 4
  br label %for.cond.70

for.end:                                          ; preds = %for.cond.70
  %123 = load i8*, i8** %inptr0, align 8
  %124 = load i8, i8* %123, align 1
  %conv131 = zext i8 %124 to i32
  %125 = load i8*, i8** %inptr0, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %125, i64 1
  %126 = load i8, i8* %arrayidx132, align 1
  %conv133 = zext i8 %126 to i32
  %add134 = add nsw i32 %conv131, %conv133
  %127 = load i8*, i8** %inptr1, align 8
  %128 = load i8, i8* %127, align 1
  %conv135 = zext i8 %128 to i32
  %add136 = add nsw i32 %add134, %conv135
  %129 = load i8*, i8** %inptr1, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %129, i64 1
  %130 = load i8, i8* %arrayidx137, align 1
  %conv138 = zext i8 %130 to i32
  %add139 = add nsw i32 %add136, %conv138
  %conv140 = sext i32 %add139 to i64
  store i64 %conv140, i64* %membersum, align 8
  %131 = load i8*, i8** %above_ptr, align 8
  %132 = load i8, i8* %131, align 1
  %conv141 = zext i8 %132 to i32
  %133 = load i8*, i8** %above_ptr, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %133, i64 1
  %134 = load i8, i8* %arrayidx142, align 1
  %conv143 = zext i8 %134 to i32
  %add144 = add nsw i32 %conv141, %conv143
  %135 = load i8*, i8** %below_ptr, align 8
  %136 = load i8, i8* %135, align 1
  %conv145 = zext i8 %136 to i32
  %add146 = add nsw i32 %add144, %conv145
  %137 = load i8*, i8** %below_ptr, align 8
  %arrayidx147 = getelementptr inbounds i8, i8* %137, i64 1
  %138 = load i8, i8* %arrayidx147, align 1
  %conv148 = zext i8 %138 to i32
  %add149 = add nsw i32 %add146, %conv148
  %139 = load i8*, i8** %inptr0, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %139, i64 -1
  %140 = load i8, i8* %arrayidx150, align 1
  %conv151 = zext i8 %140 to i32
  %add152 = add nsw i32 %add149, %conv151
  %141 = load i8*, i8** %inptr0, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %141, i64 1
  %142 = load i8, i8* %arrayidx153, align 1
  %conv154 = zext i8 %142 to i32
  %add155 = add nsw i32 %add152, %conv154
  %143 = load i8*, i8** %inptr1, align 8
  %arrayidx156 = getelementptr inbounds i8, i8* %143, i64 -1
  %144 = load i8, i8* %arrayidx156, align 1
  %conv157 = zext i8 %144 to i32
  %add158 = add nsw i32 %add155, %conv157
  %145 = load i8*, i8** %inptr1, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %145, i64 1
  %146 = load i8, i8* %arrayidx159, align 1
  %conv160 = zext i8 %146 to i32
  %add161 = add nsw i32 %add158, %conv160
  %conv162 = sext i32 %add161 to i64
  store i64 %conv162, i64* %neighsum, align 8
  %147 = load i64, i64* %neighsum, align 8
  %148 = load i64, i64* %neighsum, align 8
  %add163 = add nsw i64 %148, %147
  store i64 %add163, i64* %neighsum, align 8
  %149 = load i8*, i8** %above_ptr, align 8
  %arrayidx164 = getelementptr inbounds i8, i8* %149, i64 -1
  %150 = load i8, i8* %arrayidx164, align 1
  %conv165 = zext i8 %150 to i32
  %151 = load i8*, i8** %above_ptr, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %151, i64 1
  %152 = load i8, i8* %arrayidx166, align 1
  %conv167 = zext i8 %152 to i32
  %add168 = add nsw i32 %conv165, %conv167
  %153 = load i8*, i8** %below_ptr, align 8
  %arrayidx169 = getelementptr inbounds i8, i8* %153, i64 -1
  %154 = load i8, i8* %arrayidx169, align 1
  %conv170 = zext i8 %154 to i32
  %add171 = add nsw i32 %add168, %conv170
  %155 = load i8*, i8** %below_ptr, align 8
  %arrayidx172 = getelementptr inbounds i8, i8* %155, i64 1
  %156 = load i8, i8* %arrayidx172, align 1
  %conv173 = zext i8 %156 to i32
  %add174 = add nsw i32 %add171, %conv173
  %conv175 = sext i32 %add174 to i64
  %157 = load i64, i64* %neighsum, align 8
  %add176 = add nsw i64 %157, %conv175
  store i64 %add176, i64* %neighsum, align 8
  %158 = load i64, i64* %membersum, align 8
  %159 = load i64, i64* %memberscale, align 8
  %mul177 = mul nsw i64 %158, %159
  %160 = load i64, i64* %neighsum, align 8
  %161 = load i64, i64* %neighscale, align 8
  %mul178 = mul nsw i64 %160, %161
  %add179 = add nsw i64 %mul177, %mul178
  store i64 %add179, i64* %membersum, align 8
  %162 = load i64, i64* %membersum, align 8
  %add180 = add nsw i64 %162, 32768
  %shr181 = ashr i64 %add180, 16
  %conv182 = trunc i64 %shr181 to i8
  %163 = load i8*, i8** %outptr, align 8
  store i8 %conv182, i8* %163, align 1
  %164 = load i32, i32* %inrow, align 4
  %add183 = add nsw i32 %164, 2
  store i32 %add183, i32* %inrow, align 4
  br label %for.inc.184

for.inc.184:                                      ; preds = %for.end
  %165 = load i32, i32* %outrow, align 4
  %inc = add nsw i32 %165, 1
  store i32 %inc, i32* %outrow, align 4
  br label %for.cond

for.end.185:                                      ; preds = %for.cond
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
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8
  store i8** %input_data, i8*** %input_data.addr, align 8
  store i8** %output_data, i8*** %output_data.addr, align 8
  %0 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %0, i32 0, i32 7
  %1 = load i32, i32* %width_in_blocks, align 4
  %mul = mul i32 %1, 8
  store i32 %mul, i32* %output_cols, align 4
  %2 = load i8**, i8*** %input_data.addr, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 39
  %4 = load i32, i32* %max_v_samp_factor, align 4
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 6
  %6 = load i32, i32* %image_width, align 4
  %7 = load i32, i32* %output_cols, align 4
  %mul1 = mul i32 %7, 2
  call void @expand_right_edge(i8** %2, i32 %4, i32 %6, i32 %mul1)
  store i32 0, i32* %inrow, align 4
  store i32 0, i32* %outrow, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.21, %entry
  %8 = load i32, i32* %outrow, align 4
  %9 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %9, i32 0, i32 3
  %10 = load i32, i32* %v_samp_factor, align 4
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end.23

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %outrow, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i8**, i8*** %output_data.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 %idxprom
  %13 = load i8*, i8** %arrayidx, align 8
  store i8* %13, i8** %outptr, align 8
  %14 = load i32, i32* %inrow, align 4
  %idxprom2 = sext i32 %14 to i64
  %15 = load i8**, i8*** %input_data.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %15, i64 %idxprom2
  %16 = load i8*, i8** %arrayidx3, align 8
  store i8* %16, i8** %inptr0, align 8
  %17 = load i32, i32* %inrow, align 4
  %add = add nsw i32 %17, 1
  %idxprom4 = sext i32 %add to i64
  %18 = load i8**, i8*** %input_data.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %18, i64 %idxprom4
  %19 = load i8*, i8** %arrayidx5, align 8
  store i8* %19, i8** %inptr1, align 8
  store i32 1, i32* %bias, align 4
  store i32 0, i32* %outcol, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %20 = load i32, i32* %outcol, align 4
  %21 = load i32, i32* %output_cols, align 4
  %cmp7 = icmp ult i32 %20, %21
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %22 = load i8*, i8** %inptr0, align 8
  %23 = load i8, i8* %22, align 1
  %conv = zext i8 %23 to i32
  %24 = load i8*, i8** %inptr0, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %25 to i32
  %add11 = add nsw i32 %conv, %conv10
  %26 = load i8*, i8** %inptr1, align 8
  %27 = load i8, i8* %26, align 1
  %conv12 = zext i8 %27 to i32
  %add13 = add nsw i32 %add11, %conv12
  %28 = load i8*, i8** %inptr1, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %29 to i32
  %add16 = add nsw i32 %add13, %conv15
  %30 = load i32, i32* %bias, align 4
  %add17 = add nsw i32 %add16, %30
  %shr = ashr i32 %add17, 2
  %conv18 = trunc i32 %shr to i8
  %31 = load i8*, i8** %outptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr, i8** %outptr, align 8
  store i8 %conv18, i8* %31, align 1
  %32 = load i32, i32* %bias, align 4
  %xor = xor i32 %32, 3
  store i32 %xor, i32* %bias, align 4
  %33 = load i8*, i8** %inptr0, align 8
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 2
  store i8* %add.ptr, i8** %inptr0, align 8
  %34 = load i8*, i8** %inptr1, align 8
  %add.ptr19 = getelementptr inbounds i8, i8* %34, i64 2
  store i8* %add.ptr19, i8** %inptr1, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %35 = load i32, i32* %outcol, align 4
  %inc = add i32 %35, 1
  store i32 %inc, i32* %outcol, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %36 = load i32, i32* %inrow, align 4
  %add20 = add nsw i32 %36, 2
  store i32 %add20, i32* %inrow, align 4
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end
  %37 = load i32, i32* %outrow, align 4
  %inc22 = add nsw i32 %37, 1
  store i32 %inc22, i32* %outrow, align 4
  br label %for.cond

for.end.23:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @int_downsample(%struct.jpeg_compress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %input_data, i8** %output_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %input_data.addr = alloca i8**, align 8
  %output_data.addr = alloca i8**, align 8
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
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8
  store i8** %input_data, i8*** %input_data.addr, align 8
  store i8** %output_data, i8*** %output_data.addr, align 8
  %0 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %0, i32 0, i32 7
  %1 = load i32, i32* %width_in_blocks, align 4
  %mul = mul i32 %1, 8
  store i32 %mul, i32* %output_cols, align 4
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 38
  %3 = load i32, i32* %max_h_samp_factor, align 4
  %4 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %4, i32 0, i32 2
  %5 = load i32, i32* %h_samp_factor, align 4
  %div = sdiv i32 %3, %5
  store i32 %div, i32* %h_expand, align 4
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 39
  %7 = load i32, i32* %max_v_samp_factor, align 4
  %8 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %8, i32 0, i32 3
  %9 = load i32, i32* %v_samp_factor, align 4
  %div1 = sdiv i32 %7, %9
  store i32 %div1, i32* %v_expand, align 4
  %10 = load i32, i32* %h_expand, align 4
  %11 = load i32, i32* %v_expand, align 4
  %mul2 = mul nsw i32 %10, %11
  store i32 %mul2, i32* %numpix, align 4
  %12 = load i32, i32* %numpix, align 4
  %div3 = sdiv i32 %12, 2
  store i32 %div3, i32* %numpix2, align 4
  %13 = load i8**, i8*** %input_data.addr, align 8
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 39
  %15 = load i32, i32* %max_v_samp_factor4, align 4
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 6
  %17 = load i32, i32* %image_width, align 4
  %18 = load i32, i32* %output_cols, align 4
  %19 = load i32, i32* %h_expand, align 4
  %mul5 = mul i32 %18, %19
  call void @expand_right_edge(i8** %13, i32 %15, i32 %17, i32 %mul5)
  store i32 0, i32* %inrow, align 4
  store i32 0, i32* %outrow, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.34, %entry
  %20 = load i32, i32* %outrow, align 4
  %21 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8
  %v_samp_factor6 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %21, i32 0, i32 3
  %22 = load i32, i32* %v_samp_factor6, align 4
  %cmp = icmp slt i32 %20, %22
  br i1 %cmp, label %for.body, label %for.end.36

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %outrow, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load i8**, i8*** %output_data.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %24, i64 %idxprom
  %25 = load i8*, i8** %arrayidx, align 8
  store i8* %25, i8** %outptr, align 8
  store i32 0, i32* %outcol, align 4
  store i32 0, i32* %outcol_h, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.29, %for.body
  %26 = load i32, i32* %outcol, align 4
  %27 = load i32, i32* %output_cols, align 4
  %cmp8 = icmp ult i32 %26, %27
  br i1 %cmp8, label %for.body.9, label %for.end.32

for.body.9:                                       ; preds = %for.cond.7
  store i64 0, i64* %outvalue, align 8
  store i32 0, i32* %v, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.20, %for.body.9
  %28 = load i32, i32* %v, align 4
  %29 = load i32, i32* %v_expand, align 4
  %cmp11 = icmp slt i32 %28, %29
  br i1 %cmp11, label %for.body.12, label %for.end.22

for.body.12:                                      ; preds = %for.cond.10
  %30 = load i32, i32* %inrow, align 4
  %31 = load i32, i32* %v, align 4
  %add = add nsw i32 %30, %31
  %idxprom13 = sext i32 %add to i64
  %32 = load i8**, i8*** %input_data.addr, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %32, i64 %idxprom13
  %33 = load i8*, i8** %arrayidx14, align 8
  %34 = load i32, i32* %outcol_h, align 4
  %idx.ext = zext i32 %34 to i64
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %idx.ext
  store i8* %add.ptr, i8** %inptr, align 8
  store i32 0, i32* %h, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %for.body.12
  %35 = load i32, i32* %h, align 4
  %36 = load i32, i32* %h_expand, align 4
  %cmp16 = icmp slt i32 %35, %36
  br i1 %cmp16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.15
  %37 = load i8*, i8** %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr, i8** %inptr, align 8
  %38 = load i8, i8* %37, align 1
  %conv = zext i8 %38 to i32
  %conv18 = sext i32 %conv to i64
  %39 = load i64, i64* %outvalue, align 8
  %add19 = add nsw i64 %39, %conv18
  store i64 %add19, i64* %outvalue, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %40 = load i32, i32* %h, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %h, align 4
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %41 = load i32, i32* %v, align 4
  %inc21 = add nsw i32 %41, 1
  store i32 %inc21, i32* %v, align 4
  br label %for.cond.10

for.end.22:                                       ; preds = %for.cond.10
  %42 = load i64, i64* %outvalue, align 8
  %43 = load i32, i32* %numpix2, align 4
  %conv23 = sext i32 %43 to i64
  %add24 = add nsw i64 %42, %conv23
  %44 = load i32, i32* %numpix, align 4
  %conv25 = sext i32 %44 to i64
  %div26 = sdiv i64 %add24, %conv25
  %conv27 = trunc i64 %div26 to i8
  %45 = load i8*, i8** %outptr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr28, i8** %outptr, align 8
  store i8 %conv27, i8* %45, align 1
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end.22
  %46 = load i32, i32* %outcol, align 4
  %inc30 = add i32 %46, 1
  store i32 %inc30, i32* %outcol, align 4
  %47 = load i32, i32* %h_expand, align 4
  %48 = load i32, i32* %outcol_h, align 4
  %add31 = add i32 %48, %47
  store i32 %add31, i32* %outcol_h, align 4
  br label %for.cond.7

for.end.32:                                       ; preds = %for.cond.7
  %49 = load i32, i32* %v_expand, align 4
  %50 = load i32, i32* %inrow, align 4
  %add33 = add nsw i32 %50, %49
  store i32 %add33, i32* %inrow, align 4
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end.32
  %51 = load i32, i32* %outrow, align 4
  %inc35 = add nsw i32 %51, 1
  store i32 %inc35, i32* %outrow, align 4
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  ret void
}

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
  store i8** %image_data, i8*** %image_data.addr, align 8
  store i32 %num_rows, i32* %num_rows.addr, align 4
  store i32 %input_cols, i32* %input_cols.addr, align 4
  store i32 %output_cols, i32* %output_cols.addr, align 4
  %0 = load i32, i32* %output_cols.addr, align 4
  %1 = load i32, i32* %input_cols.addr, align 4
  %sub = sub i32 %0, %1
  store i32 %sub, i32* %numcols, align 4
  %2 = load i32, i32* %numcols, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %if.then
  %3 = load i32, i32* %row, align 4
  %4 = load i32, i32* %num_rows.addr, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end.7

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %row, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8**, i8*** %image_data.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  %8 = load i32, i32* %input_cols.addr, align 4
  %idx.ext = zext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  store i8* %add.ptr, i8** %ptr, align 8
  %9 = load i8*, i8** %ptr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %9, i64 -1
  %10 = load i8, i8* %arrayidx2, align 1
  store i8 %10, i8* %pixval, align 1
  %11 = load i32, i32* %numcols, align 4
  store i32 %11, i32* %count, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %12 = load i32, i32* %count, align 4
  %cmp4 = icmp sgt i32 %12, 0
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %13 = load i8, i8* %pixval, align 1
  %14 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  store i8 %13, i8* %14, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %15 = load i32, i32* %count, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %count, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %16 = load i32, i32* %row, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %row, align 4
  br label %for.cond

for.end.7:                                        ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end.7, %entry
  ret void
}

declare void @jcopy_sample_rows(i8**, i32, i8**, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
