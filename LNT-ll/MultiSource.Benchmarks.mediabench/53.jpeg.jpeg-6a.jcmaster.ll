; ModuleID = './MultiSource.Benchmarks.mediabench/53.jpeg.jpeg-6a.jcmaster.bc'
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
%struct.jpeg_destination_mgr = type { i8*, i64, void (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_comp_master = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, i32, i32 }
%struct.jpeg_c_main_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)* }
%struct.jpeg_c_prep_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* }
%struct.jpeg_c_coef_controller = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, i8***)* }
%struct.jpeg_marker_writer = type { void (%struct.jpeg_compress_struct*, i32, i8*, i32)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_color_converter = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* }
%struct.jpeg_downsampler = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, i32 }
%struct.jpeg_forward_dct = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* }
%struct.jpeg_entropy_encoder = type { {}*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, void (%struct.jpeg_compress_struct*)* }
%struct.my_comp_master = type { %struct.jpeg_comp_master, i32, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define void @jinit_c_master_control(%struct.jpeg_compress_struct* %cinfo, i32 %transcode_only) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %transcode_only.addr = alloca i32, align 4
  %master = alloca %struct.my_comp_master*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i32 %transcode_only, i32* %transcode_only.addr, align 4
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_compress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 48)
  %5 = bitcast i8* %call to %struct.my_comp_master*
  store %struct.my_comp_master* %5, %struct.my_comp_master** %master, align 8
  %6 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %7 = bitcast %struct.my_comp_master* %6 to %struct.jpeg_comp_master*
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %master1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 51
  store %struct.jpeg_comp_master* %7, %struct.jpeg_comp_master** %master1, align 8
  %9 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %pub = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %9, i32 0, i32 0
  %prepare_for_pass = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %pub, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*)* @prepare_for_pass, void (%struct.jpeg_compress_struct*)** %prepare_for_pass, align 8
  %10 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %pub2 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %10, i32 0, i32 0
  %pass_startup = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %pub2, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*)* @pass_startup, void (%struct.jpeg_compress_struct*)** %pass_startup, align 8
  %11 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %pub3 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %11, i32 0, i32 0
  %finish_pass = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %pub3, i32 0, i32 2
  store void (%struct.jpeg_compress_struct*)* @finish_pass_master, void (%struct.jpeg_compress_struct*)** %finish_pass, align 8
  %12 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %pub4 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %12, i32 0, i32 0
  %is_last_pass = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %pub4, i32 0, i32 4
  store i32 0, i32* %is_last_pass, align 4
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @initial_setup(%struct.jpeg_compress_struct* %13)
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %scan_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 22
  %15 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scan_info, align 8
  %cmp = icmp ne %struct.jpeg_scan_info* %15, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @validate_script(%struct.jpeg_compress_struct* %16)
  br label %if.end

if.else:                                          ; preds = %entry
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 37
  store i32 0, i32* %progressive_mode, align 4
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_scans = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 21
  store i32 1, i32* %num_scans, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %progressive_mode5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 37
  %20 = load i32, i32* %progressive_mode5, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 25
  store i32 1, i32* %optimize_coding, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %22 = load i32, i32* %transcode_only.addr, align 4
  %tobool8 = icmp ne i32 %22, 0
  br i1 %tobool8, label %if.then.9, label %if.else.16

if.then.9:                                        ; preds = %if.end.7
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %optimize_coding10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 25
  %24 = load i32, i32* %optimize_coding10, align 4
  %tobool11 = icmp ne i32 %24, 0
  br i1 %tobool11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.then.9
  %25 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %pass_type = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %25, i32 0, i32 1
  store i32 1, i32* %pass_type, align 4
  br label %if.end.15

if.else.13:                                       ; preds = %if.then.9
  %26 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %pass_type14 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %26, i32 0, i32 1
  store i32 2, i32* %pass_type14, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13, %if.then.12
  br label %if.end.18

if.else.16:                                       ; preds = %if.end.7
  %27 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %pass_type17 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %27, i32 0, i32 1
  store i32 0, i32* %pass_type17, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.end.15
  %28 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %scan_number = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %28, i32 0, i32 4
  store i32 0, i32* %scan_number, align 4
  %29 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %pass_number = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %29, i32 0, i32 2
  store i32 0, i32* %pass_number, align 4
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %optimize_coding19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 25
  %31 = load i32, i32* %optimize_coding19, align 4
  %tobool20 = icmp ne i32 %31, 0
  br i1 %tobool20, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.end.18
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_scans22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 21
  %33 = load i32, i32* %num_scans22, align 4
  %mul = mul nsw i32 %33, 2
  %34 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %total_passes = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %34, i32 0, i32 3
  store i32 %mul, i32* %total_passes, align 4
  br label %if.end.26

if.else.23:                                       ; preds = %if.end.18
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_scans24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 21
  %36 = load i32, i32* %num_scans24, align 4
  %37 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %total_passes25 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %37, i32 0, i32 3
  store i32 %36, i32* %total_passes25, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.21
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @prepare_for_pass(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %master = alloca %struct.my_comp_master*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %master1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 51
  %1 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %master1, align 8
  %2 = bitcast %struct.jpeg_comp_master* %1 to %struct.my_comp_master*
  store %struct.my_comp_master* %2, %struct.my_comp_master** %master, align 8
  %3 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %pass_type = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %3, i32 0, i32 1
  %4 = load i32, i32* %pass_type, align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.15
    i32 2, label %sw.bb.30
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @select_scan_parameters(%struct.jpeg_compress_struct* %5)
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @per_scan_setup(%struct.jpeg_compress_struct* %6)
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %raw_data_in = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 23
  %8 = load i32, i32* %raw_data_in, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cconvert = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 56
  %10 = load %struct.jpeg_color_converter*, %struct.jpeg_color_converter** %cconvert, align 8
  %start_pass = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %10, i32 0, i32 0
  %11 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %start_pass, align 8
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void %11(%struct.jpeg_compress_struct* %12)
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %downsample = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 57
  %14 = load %struct.jpeg_downsampler*, %struct.jpeg_downsampler** %downsample, align 8
  %start_pass2 = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %14, i32 0, i32 0
  %15 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %start_pass2, align 8
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void %15(%struct.jpeg_compress_struct* %16)
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %prep = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 53
  %18 = load %struct.jpeg_c_prep_controller*, %struct.jpeg_c_prep_controller** %prep, align 8
  %start_pass3 = getelementptr inbounds %struct.jpeg_c_prep_controller, %struct.jpeg_c_prep_controller* %18, i32 0, i32 0
  %19 = load void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i32)** %start_pass3, align 8
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void %19(%struct.jpeg_compress_struct* %20, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %fdct = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 58
  %22 = load %struct.jpeg_forward_dct*, %struct.jpeg_forward_dct** %fdct, align 8
  %start_pass4 = getelementptr inbounds %struct.jpeg_forward_dct, %struct.jpeg_forward_dct* %22, i32 0, i32 0
  %23 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %start_pass4, align 8
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void %23(%struct.jpeg_compress_struct* %24)
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %entropy = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 59
  %26 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy, align 8
  %start_pass5 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %26, i32 0, i32 0
  %start_pass6 = bitcast {}** %start_pass5 to void (%struct.jpeg_compress_struct*, i32)**
  %27 = load void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i32)** %start_pass6, align 8
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 25
  %30 = load i32, i32* %optimize_coding, align 4
  call void %27(%struct.jpeg_compress_struct* %28, i32 %30)
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %coef = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %31, i32 0, i32 54
  %32 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef, align 8
  %start_pass7 = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %32, i32 0, i32 0
  %33 = load void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i32)** %start_pass7, align 8
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %35 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %total_passes = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %35, i32 0, i32 3
  %36 = load i32, i32* %total_passes, align 4
  %cmp = icmp sgt i32 %36, 1
  %cond = select i1 %cmp, i32 3, i32 0
  call void %33(%struct.jpeg_compress_struct* %34, i32 %cond)
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %main = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %37, i32 0, i32 52
  %38 = load %struct.jpeg_c_main_controller*, %struct.jpeg_c_main_controller** %main, align 8
  %start_pass8 = getelementptr inbounds %struct.jpeg_c_main_controller, %struct.jpeg_c_main_controller* %38, i32 0, i32 0
  %39 = load void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i32)** %start_pass8, align 8
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void %39(%struct.jpeg_compress_struct* %40, i32 0)
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %optimize_coding9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 25
  %42 = load i32, i32* %optimize_coding9, align 4
  %tobool10 = icmp ne i32 %42, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  %43 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %pub = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %43, i32 0, i32 0
  %call_pass_startup = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %pub, i32 0, i32 3
  store i32 0, i32* %call_pass_startup, align 4
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %44 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %pub12 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %44, i32 0, i32 0
  %call_pass_startup13 = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %pub12, i32 0, i32 3
  store i32 1, i32* %call_pass_startup13, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.11
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @select_scan_parameters(%struct.jpeg_compress_struct* %45)
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @per_scan_setup(%struct.jpeg_compress_struct* %46)
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 47
  %48 = load i32, i32* %Ss, align 4
  %cmp16 = icmp ne i32 %48, 0
  br i1 %cmp16, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.15
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %49, i32 0, i32 49
  %50 = load i32, i32* %Ah, align 4
  %cmp17 = icmp eq i32 %50, 0
  br i1 %cmp17, label %if.then.20, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %51, i32 0, i32 24
  %52 = load i32, i32* %arith_code, align 4
  %tobool19 = icmp ne i32 %52, 0
  br i1 %tobool19, label %if.then.20, label %if.end.28

if.then.20:                                       ; preds = %lor.lhs.false.18, %lor.lhs.false, %sw.bb.15
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %entropy21 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %53, i32 0, i32 59
  %54 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy21, align 8
  %start_pass22 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %54, i32 0, i32 0
  %start_pass23 = bitcast {}** %start_pass22 to void (%struct.jpeg_compress_struct*, i32)**
  %55 = load void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i32)** %start_pass23, align 8
  %56 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void %55(%struct.jpeg_compress_struct* %56, i32 1)
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %coef24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %57, i32 0, i32 54
  %58 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef24, align 8
  %start_pass25 = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %58, i32 0, i32 0
  %59 = load void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i32)** %start_pass25, align 8
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void %59(%struct.jpeg_compress_struct* %60, i32 2)
  %61 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %pub26 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %61, i32 0, i32 0
  %call_pass_startup27 = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %pub26, i32 0, i32 3
  store i32 0, i32* %call_pass_startup27, align 4
  br label %sw.epilog

if.end.28:                                        ; preds = %lor.lhs.false.18
  %62 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %pass_type29 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %62, i32 0, i32 1
  store i32 2, i32* %pass_type29, align 4
  %63 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %pass_number = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %63, i32 0, i32 2
  %64 = load i32, i32* %pass_number, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %pass_number, align 4
  br label %sw.bb.30

sw.bb.30:                                         ; preds = %entry, %if.end.28
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %optimize_coding31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %65, i32 0, i32 25
  %66 = load i32, i32* %optimize_coding31, align 4
  %tobool32 = icmp ne i32 %66, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %sw.bb.30
  %67 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @select_scan_parameters(%struct.jpeg_compress_struct* %67)
  %68 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @per_scan_setup(%struct.jpeg_compress_struct* %68)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %sw.bb.30
  %69 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %entropy35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %69, i32 0, i32 59
  %70 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy35, align 8
  %start_pass36 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %70, i32 0, i32 0
  %start_pass37 = bitcast {}** %start_pass36 to void (%struct.jpeg_compress_struct*, i32)**
  %71 = load void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i32)** %start_pass37, align 8
  %72 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void %71(%struct.jpeg_compress_struct* %72, i32 0)
  %73 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %coef38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %73, i32 0, i32 54
  %74 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef38, align 8
  %start_pass39 = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %74, i32 0, i32 0
  %75 = load void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i32)** %start_pass39, align 8
  %76 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void %75(%struct.jpeg_compress_struct* %76, i32 2)
  %77 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %scan_number = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %77, i32 0, i32 4
  %78 = load i32, i32* %scan_number, align 4
  %cmp40 = icmp eq i32 %78, 0
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.34
  %79 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %79, i32 0, i32 55
  %80 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker, align 8
  %write_frame_header = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %80, i32 0, i32 2
  %81 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %write_frame_header, align 8
  %82 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void %81(%struct.jpeg_compress_struct* %82)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.34
  %83 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %marker43 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %83, i32 0, i32 55
  %84 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker43, align 8
  %write_scan_header = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %84, i32 0, i32 3
  %85 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %write_scan_header, align 8
  %86 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void %85(%struct.jpeg_compress_struct* %86)
  %87 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %pub44 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %87, i32 0, i32 0
  %call_pass_startup45 = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %pub44, i32 0, i32 3
  store i32 0, i32* %call_pass_startup45, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %88 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %88, i32 0, i32 0
  %89 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %89, i32 0, i32 5
  store i32 47, i32* %msg_code, align 4
  %90 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err46 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %90, i32 0, i32 0
  %91 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err46, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %91, i32 0, i32 0
  %92 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %93 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %94 = bitcast %struct.jpeg_compress_struct* %93 to %struct.jpeg_common_struct*
  call void %92(%struct.jpeg_common_struct* %94)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.42, %if.then.20, %if.end.14
  %95 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %pass_number47 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %95, i32 0, i32 2
  %96 = load i32, i32* %pass_number47, align 4
  %97 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %total_passes48 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %97, i32 0, i32 3
  %98 = load i32, i32* %total_passes48, align 4
  %sub = sub nsw i32 %98, 1
  %cmp49 = icmp eq i32 %96, %sub
  %conv = zext i1 %cmp49 to i32
  %99 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %pub50 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %99, i32 0, i32 0
  %is_last_pass = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %pub50, i32 0, i32 4
  store i32 %conv, i32* %is_last_pass, align 4
  %100 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %100, i32 0, i32 2
  %101 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress, align 8
  %cmp51 = icmp ne %struct.jpeg_progress_mgr* %101, null
  br i1 %cmp51, label %if.then.53, label %if.end.59

if.then.53:                                       ; preds = %sw.epilog
  %102 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %pass_number54 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %102, i32 0, i32 2
  %103 = load i32, i32* %pass_number54, align 4
  %104 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %progress55 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %104, i32 0, i32 2
  %105 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress55, align 8
  %completed_passes = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %105, i32 0, i32 3
  store i32 %103, i32* %completed_passes, align 4
  %106 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %total_passes56 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %106, i32 0, i32 3
  %107 = load i32, i32* %total_passes56, align 4
  %108 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %progress57 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %108, i32 0, i32 2
  %109 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress57, align 8
  %total_passes58 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %109, i32 0, i32 4
  store i32 %107, i32* %total_passes58, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.53, %sw.epilog
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pass_startup(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %master = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 51
  %1 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %master, align 8
  %call_pass_startup = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %1, i32 0, i32 3
  store i32 0, i32* %call_pass_startup, align 4
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 55
  %3 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker, align 8
  %write_frame_header = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %3, i32 0, i32 2
  %4 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %write_frame_header, align 8
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void %4(%struct.jpeg_compress_struct* %5)
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %marker1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 55
  %7 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker1, align 8
  %write_scan_header = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %7, i32 0, i32 3
  %8 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %write_scan_header, align 8
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void %8(%struct.jpeg_compress_struct* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass_master(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %master = alloca %struct.my_comp_master*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %master1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 51
  %1 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %master1, align 8
  %2 = bitcast %struct.jpeg_comp_master* %1 to %struct.my_comp_master*
  store %struct.my_comp_master* %2, %struct.my_comp_master** %master, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %entropy = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 59
  %4 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy, align 8
  %finish_pass = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %4, i32 0, i32 2
  %5 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %finish_pass, align 8
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void %5(%struct.jpeg_compress_struct* %6)
  %7 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %pass_type = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %7, i32 0, i32 1
  %8 = load i32, i32* %pass_type, align 4
  switch i32 %8, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.3
    i32 2, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %9 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %pass_type2 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %9, i32 0, i32 1
  store i32 2, i32* %pass_type2, align 4
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 25
  %11 = load i32, i32* %optimize_coding, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %12 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %scan_number = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %12, i32 0, i32 4
  %13 = load i32, i32* %scan_number, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %scan_number, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %14 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %pass_type4 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %14, i32 0, i32 1
  store i32 2, i32* %pass_type4, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %optimize_coding6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 25
  %16 = load i32, i32* %optimize_coding6, align 4
  %tobool7 = icmp ne i32 %16, 0
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %sw.bb.5
  %17 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %pass_type9 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %17, i32 0, i32 1
  store i32 1, i32* %pass_type9, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %sw.bb.5
  %18 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %scan_number11 = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %18, i32 0, i32 4
  %19 = load i32, i32* %scan_number11, align 4
  %inc12 = add nsw i32 %19, 1
  store i32 %inc12, i32* %scan_number11, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.10, %sw.bb.3, %if.end
  %20 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %pass_number = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %20, i32 0, i32 2
  %21 = load i32, i32* %pass_number, align 4
  %inc13 = add nsw i32 %21, 1
  store i32 %inc13, i32* %pass_number, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @initial_setup(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %samplesperrow = alloca i64, align 8
  %jd_samplesperrow = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 7
  %1 = load i32, i32* %image_height, align 4
  %cmp = icmp ule i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 6
  %3 = load i32, i32* %image_width, align 4
  %cmp1 = icmp ule i32 %3, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 12
  %5 = load i32, i32* %num_components, align 4
  %cmp3 = icmp sle i32 %5, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 8
  %7 = load i32, i32* %input_components, align 4
  %cmp5 = icmp sle i32 %7, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 5
  store i32 31, i32* %msg_code, align 4
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 0
  %12 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %14 = bitcast %struct.jpeg_compress_struct* %13 to %struct.jpeg_common_struct*
  call void %12(%struct.jpeg_common_struct* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.4
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_height7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 7
  %16 = load i32, i32* %image_height7, align 4
  %conv = zext i32 %16 to i64
  %cmp8 = icmp sgt i64 %conv, 65500
  br i1 %cmp8, label %if.then.15, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %if.end
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 6
  %18 = load i32, i32* %image_width11, align 4
  %conv12 = zext i32 %18 to i64
  %cmp13 = icmp sgt i64 %conv12, 65500
  br i1 %cmp13, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %lor.lhs.false.10, %if.end
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err16, align 8
  %msg_code17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 5
  store i32 40, i32* %msg_code17, align 4
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err18, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 65500, i32* %arrayidx, align 4
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err19, align 8
  %error_exit20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i32 0, i32 0
  %25 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit20, align 8
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %27 = bitcast %struct.jpeg_compress_struct* %26 to %struct.jpeg_common_struct*
  call void %25(%struct.jpeg_common_struct* %27)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.15, %lor.lhs.false.10
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 6
  %29 = load i32, i32* %image_width22, align 4
  %conv23 = zext i32 %29 to i64
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %input_components24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 8
  %31 = load i32, i32* %input_components24, align 4
  %conv25 = sext i32 %31 to i64
  %mul = mul nsw i64 %conv23, %conv25
  store i64 %mul, i64* %samplesperrow, align 8
  %32 = load i64, i64* %samplesperrow, align 8
  %conv26 = trunc i64 %32 to i32
  store i32 %conv26, i32* %jd_samplesperrow, align 4
  %33 = load i32, i32* %jd_samplesperrow, align 4
  %conv27 = zext i32 %33 to i64
  %34 = load i64, i64* %samplesperrow, align 8
  %cmp28 = icmp ne i64 %conv27, %34
  br i1 %cmp28, label %if.then.30, label %if.end.35

if.then.30:                                       ; preds = %if.end.21
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 0
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err31, align 8
  %msg_code32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %36, i32 0, i32 5
  store i32 69, i32* %msg_code32, align 4
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %37, i32 0, i32 0
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err33, align 8
  %error_exit34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %38, i32 0, i32 0
  %39 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit34, align 8
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %41 = bitcast %struct.jpeg_compress_struct* %40 to %struct.jpeg_common_struct*
  call void %39(%struct.jpeg_common_struct* %41)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.30, %if.end.21
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 11
  %43 = load i32, i32* %data_precision, align 4
  %cmp36 = icmp ne i32 %43, 8
  br i1 %cmp36, label %if.then.38, label %if.end.48

if.then.38:                                       ; preds = %if.end.35
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err39 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %44, i32 0, i32 0
  %45 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err39, align 8
  %msg_code40 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %45, i32 0, i32 5
  store i32 13, i32* %msg_code40, align 4
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %data_precision41 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %46, i32 0, i32 11
  %47 = load i32, i32* %data_precision41, align 4
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err42 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %48, i32 0, i32 0
  %49 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err42, align 8
  %msg_parm43 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %49, i32 0, i32 6
  %i44 = bitcast %union.anon* %msg_parm43 to [8 x i32]*
  %arrayidx45 = getelementptr inbounds [8 x i32], [8 x i32]* %i44, i32 0, i64 0
  store i32 %47, i32* %arrayidx45, align 4
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err46 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 0
  %51 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err46, align 8
  %error_exit47 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %51, i32 0, i32 0
  %52 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit47, align 8
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %54 = bitcast %struct.jpeg_compress_struct* %53 to %struct.jpeg_common_struct*
  call void %52(%struct.jpeg_common_struct* %54)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.38, %if.end.35
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components49 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %55, i32 0, i32 12
  %56 = load i32, i32* %num_components49, align 4
  %cmp50 = icmp sgt i32 %56, 10
  br i1 %cmp50, label %if.then.52, label %if.end.66

if.then.52:                                       ; preds = %if.end.48
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err53 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %57, i32 0, i32 0
  %58 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err53, align 8
  %msg_code54 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %58, i32 0, i32 5
  store i32 24, i32* %msg_code54, align 4
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components55 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %59, i32 0, i32 12
  %60 = load i32, i32* %num_components55, align 4
  %61 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err56 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %61, i32 0, i32 0
  %62 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err56, align 8
  %msg_parm57 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %62, i32 0, i32 6
  %i58 = bitcast %union.anon* %msg_parm57 to [8 x i32]*
  %arrayidx59 = getelementptr inbounds [8 x i32], [8 x i32]* %i58, i32 0, i64 0
  store i32 %60, i32* %arrayidx59, align 4
  %63 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err60 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %63, i32 0, i32 0
  %64 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err60, align 8
  %msg_parm61 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %64, i32 0, i32 6
  %i62 = bitcast %union.anon* %msg_parm61 to [8 x i32]*
  %arrayidx63 = getelementptr inbounds [8 x i32], [8 x i32]* %i62, i32 0, i64 1
  store i32 10, i32* %arrayidx63, align 4
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err64 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %65, i32 0, i32 0
  %66 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err64, align 8
  %error_exit65 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %66, i32 0, i32 0
  %67 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit65, align 8
  %68 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %69 = bitcast %struct.jpeg_compress_struct* %68 to %struct.jpeg_common_struct*
  call void %67(%struct.jpeg_common_struct* %69)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.52, %if.end.48
  %70 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %70, i32 0, i32 38
  store i32 1, i32* %max_h_samp_factor, align 4
  %71 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %71, i32 0, i32 39
  store i32 1, i32* %max_v_samp_factor, align 4
  store i32 0, i32* %ci, align 4
  %72 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %72, i32 0, i32 14
  %73 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %73, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.66
  %74 = load i32, i32* %ci, align 4
  %75 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components67 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %75, i32 0, i32 12
  %76 = load i32, i32* %num_components67, align 4
  %cmp68 = icmp slt i32 %74, %76
  br i1 %cmp68, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %77 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %77, i32 0, i32 2
  %78 = load i32, i32* %h_samp_factor, align 4
  %cmp70 = icmp sle i32 %78, 0
  br i1 %cmp70, label %if.then.83, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %for.body
  %79 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor73 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %79, i32 0, i32 2
  %80 = load i32, i32* %h_samp_factor73, align 4
  %cmp74 = icmp sgt i32 %80, 4
  br i1 %cmp74, label %if.then.83, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %lor.lhs.false.72
  %81 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %81, i32 0, i32 3
  %82 = load i32, i32* %v_samp_factor, align 4
  %cmp77 = icmp sle i32 %82, 0
  br i1 %cmp77, label %if.then.83, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %lor.lhs.false.76
  %83 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor80 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %83, i32 0, i32 3
  %84 = load i32, i32* %v_samp_factor80, align 4
  %cmp81 = icmp sgt i32 %84, 4
  br i1 %cmp81, label %if.then.83, label %if.end.88

if.then.83:                                       ; preds = %lor.lhs.false.79, %lor.lhs.false.76, %lor.lhs.false.72, %for.body
  %85 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err84 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %85, i32 0, i32 0
  %86 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err84, align 8
  %msg_code85 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %86, i32 0, i32 5
  store i32 16, i32* %msg_code85, align 4
  %87 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err86 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %87, i32 0, i32 0
  %88 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err86, align 8
  %error_exit87 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %88, i32 0, i32 0
  %89 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit87, align 8
  %90 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %91 = bitcast %struct.jpeg_compress_struct* %90 to %struct.jpeg_common_struct*
  call void %89(%struct.jpeg_common_struct* %91)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.83, %lor.lhs.false.79
  %92 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_h_samp_factor89 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %92, i32 0, i32 38
  %93 = load i32, i32* %max_h_samp_factor89, align 4
  %94 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor90 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %94, i32 0, i32 2
  %95 = load i32, i32* %h_samp_factor90, align 4
  %cmp91 = icmp sgt i32 %93, %95
  br i1 %cmp91, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.88
  %96 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_h_samp_factor93 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %96, i32 0, i32 38
  %97 = load i32, i32* %max_h_samp_factor93, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.88
  %98 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor94 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %98, i32 0, i32 2
  %99 = load i32, i32* %h_samp_factor94, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %97, %cond.true ], [ %99, %cond.false ]
  %100 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_h_samp_factor95 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %100, i32 0, i32 38
  store i32 %cond, i32* %max_h_samp_factor95, align 4
  %101 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor96 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %101, i32 0, i32 39
  %102 = load i32, i32* %max_v_samp_factor96, align 4
  %103 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor97 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %103, i32 0, i32 3
  %104 = load i32, i32* %v_samp_factor97, align 4
  %cmp98 = icmp sgt i32 %102, %104
  br i1 %cmp98, label %cond.true.100, label %cond.false.102

cond.true.100:                                    ; preds = %cond.end
  %105 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor101 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %105, i32 0, i32 39
  %106 = load i32, i32* %max_v_samp_factor101, align 4
  br label %cond.end.104

cond.false.102:                                   ; preds = %cond.end
  %107 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor103 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %107, i32 0, i32 3
  %108 = load i32, i32* %v_samp_factor103, align 4
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.102, %cond.true.100
  %cond105 = phi i32 [ %106, %cond.true.100 ], [ %108, %cond.false.102 ]
  %109 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor106 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %109, i32 0, i32 39
  store i32 %cond105, i32* %max_v_samp_factor106, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.104
  %110 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %110, 1
  store i32 %inc, i32* %ci, align 4
  %111 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %111, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %ci, align 4
  %112 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comp_info107 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %112, i32 0, i32 14
  %113 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info107, align 8
  store %struct.jpeg_component_info* %113, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.150, %for.end
  %114 = load i32, i32* %ci, align 4
  %115 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components109 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %115, i32 0, i32 12
  %116 = load i32, i32* %num_components109, align 4
  %cmp110 = icmp slt i32 %114, %116
  br i1 %cmp110, label %for.body.112, label %for.end.153

for.body.112:                                     ; preds = %for.cond.108
  %117 = load i32, i32* %ci, align 4
  %118 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %118, i32 0, i32 1
  store i32 %117, i32* %component_index, align 4
  %119 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %119, i32 0, i32 9
  store i32 8, i32* %DCT_scaled_size, align 4
  %120 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width113 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %120, i32 0, i32 6
  %121 = load i32, i32* %image_width113, align 4
  %conv114 = zext i32 %121 to i64
  %122 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor115 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %122, i32 0, i32 2
  %123 = load i32, i32* %h_samp_factor115, align 4
  %conv116 = sext i32 %123 to i64
  %mul117 = mul nsw i64 %conv114, %conv116
  %124 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_h_samp_factor118 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %124, i32 0, i32 38
  %125 = load i32, i32* %max_h_samp_factor118, align 4
  %mul119 = mul nsw i32 %125, 8
  %conv120 = sext i32 %mul119 to i64
  %call = call i64 @jdiv_round_up(i64 %mul117, i64 %conv120)
  %conv121 = trunc i64 %call to i32
  %126 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %126, i32 0, i32 7
  store i32 %conv121, i32* %width_in_blocks, align 4
  %127 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_height122 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %127, i32 0, i32 7
  %128 = load i32, i32* %image_height122, align 4
  %conv123 = zext i32 %128 to i64
  %129 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor124 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %129, i32 0, i32 3
  %130 = load i32, i32* %v_samp_factor124, align 4
  %conv125 = sext i32 %130 to i64
  %mul126 = mul nsw i64 %conv123, %conv125
  %131 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor127 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %131, i32 0, i32 39
  %132 = load i32, i32* %max_v_samp_factor127, align 4
  %mul128 = mul nsw i32 %132, 8
  %conv129 = sext i32 %mul128 to i64
  %call130 = call i64 @jdiv_round_up(i64 %mul126, i64 %conv129)
  %conv131 = trunc i64 %call130 to i32
  %133 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %133, i32 0, i32 8
  store i32 %conv131, i32* %height_in_blocks, align 4
  %134 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width132 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %134, i32 0, i32 6
  %135 = load i32, i32* %image_width132, align 4
  %conv133 = zext i32 %135 to i64
  %136 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor134 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %136, i32 0, i32 2
  %137 = load i32, i32* %h_samp_factor134, align 4
  %conv135 = sext i32 %137 to i64
  %mul136 = mul nsw i64 %conv133, %conv135
  %138 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_h_samp_factor137 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %138, i32 0, i32 38
  %139 = load i32, i32* %max_h_samp_factor137, align 4
  %conv138 = sext i32 %139 to i64
  %call139 = call i64 @jdiv_round_up(i64 %mul136, i64 %conv138)
  %conv140 = trunc i64 %call139 to i32
  %140 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %downsampled_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %140, i32 0, i32 10
  store i32 %conv140, i32* %downsampled_width, align 4
  %141 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_height141 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %141, i32 0, i32 7
  %142 = load i32, i32* %image_height141, align 4
  %conv142 = zext i32 %142 to i64
  %143 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor143 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %143, i32 0, i32 3
  %144 = load i32, i32* %v_samp_factor143, align 4
  %conv144 = sext i32 %144 to i64
  %mul145 = mul nsw i64 %conv142, %conv144
  %145 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor146 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %145, i32 0, i32 39
  %146 = load i32, i32* %max_v_samp_factor146, align 4
  %conv147 = sext i32 %146 to i64
  %call148 = call i64 @jdiv_round_up(i64 %mul145, i64 %conv147)
  %conv149 = trunc i64 %call148 to i32
  %147 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %downsampled_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %147, i32 0, i32 11
  store i32 %conv149, i32* %downsampled_height, align 4
  %148 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %148, i32 0, i32 12
  store i32 1, i32* %component_needed, align 4
  br label %for.inc.150

for.inc.150:                                      ; preds = %for.body.112
  %149 = load i32, i32* %ci, align 4
  %inc151 = add nsw i32 %149, 1
  store i32 %inc151, i32* %ci, align 4
  %150 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr152 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %150, i32 1
  store %struct.jpeg_component_info* %incdec.ptr152, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond.108

for.end.153:                                      ; preds = %for.cond.108
  %151 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_height154 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %151, i32 0, i32 7
  %152 = load i32, i32* %image_height154, align 4
  %conv155 = zext i32 %152 to i64
  %153 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor156 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %153, i32 0, i32 39
  %154 = load i32, i32* %max_v_samp_factor156, align 4
  %mul157 = mul nsw i32 %154, 8
  %conv158 = sext i32 %mul157 to i64
  %call159 = call i64 @jdiv_round_up(i64 %conv155, i64 %conv158)
  %conv160 = trunc i64 %call159 to i32
  %155 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %155, i32 0, i32 40
  store i32 %conv160, i32* %total_iMCU_rows, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @validate_script(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %scanptr = alloca %struct.jpeg_scan_info*, align 8
  %scanno = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %ci = alloca i32, align 4
  %coefi = alloca i32, align 4
  %thisi = alloca i32, align 4
  %Ss = alloca i32, align 4
  %Se = alloca i32, align 4
  %Ah = alloca i32, align 4
  %Al = alloca i32, align 4
  %component_sent = alloca [10 x i32], align 16
  %last_bitpos_ptr = alloca i32*, align 8
  %last_bitpos = alloca [10 x [64 x i32]], align 16
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_scans = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 21
  %1 = load i32, i32* %num_scans, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 0
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 5
  store i32 17, i32* %msg_code, align 4
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 0
  %8 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %10 = bitcast %struct.jpeg_compress_struct* %9 to %struct.jpeg_common_struct*
  call void %8(%struct.jpeg_common_struct* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %scan_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 22
  %12 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scan_info, align 8
  store %struct.jpeg_scan_info* %12, %struct.jpeg_scan_info** %scanptr, align 8
  %13 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %Ss3 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %13, i32 0, i32 2
  %14 = load i32, i32* %Ss3, align 4
  %cmp4 = icmp ne i32 %14, 0
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %15 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %Se5 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %15, i32 0, i32 3
  %16 = load i32, i32* %Se5, align 4
  %cmp6 = icmp ne i32 %16, 63
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %lor.lhs.false, %if.end
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 37
  store i32 1, i32* %progressive_mode, align 4
  %arrayidx8 = getelementptr inbounds [10 x [64 x i32]], [10 x [64 x i32]]* %last_bitpos, i32 0, i64 0
  %arrayidx9 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx8, i32 0, i64 0
  store i32* %arrayidx9, i32** %last_bitpos_ptr, align 8
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %if.then.7
  %18 = load i32, i32* %ci, align 4
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 12
  %20 = load i32, i32* %num_components, align 4
  %cmp10 = icmp slt i32 %18, %20
  br i1 %cmp10, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %coefi, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body
  %21 = load i32, i32* %coefi, align 4
  %cmp12 = icmp slt i32 %21, 64
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %22 = load i32*, i32** %last_bitpos_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %incdec.ptr, i32** %last_bitpos_ptr, align 8
  store i32 -1, i32* %22, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.13
  %23 = load i32, i32* %coefi, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %coefi, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %24 = load i32, i32* %ci, align 4
  %inc15 = add nsw i32 %24, 1
  store i32 %inc15, i32* %ci, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  br label %if.end.26

if.else:                                          ; preds = %lor.lhs.false
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %progressive_mode17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 37
  store i32 0, i32* %progressive_mode17, align 4
  store i32 0, i32* %ci, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.23, %if.else
  %26 = load i32, i32* %ci, align 4
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 12
  %28 = load i32, i32* %num_components19, align 4
  %cmp20 = icmp slt i32 %26, %28
  br i1 %cmp20, label %for.body.21, label %for.end.25

for.body.21:                                      ; preds = %for.cond.18
  %29 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %29 to i64
  %arrayidx22 = getelementptr inbounds [10 x i32], [10 x i32]* %component_sent, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx22, align 4
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.21
  %30 = load i32, i32* %ci, align 4
  %inc24 = add nsw i32 %30, 1
  store i32 %inc24, i32* %ci, align 4
  br label %for.cond.18

for.end.25:                                       ; preds = %for.cond.18
  br label %if.end.26

if.end.26:                                        ; preds = %for.end.25, %for.end.16
  store i32 1, i32* %scanno, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.252, %if.end.26
  %31 = load i32, i32* %scanno, align 4
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_scans28 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 21
  %33 = load i32, i32* %num_scans28, align 4
  %cmp29 = icmp sle i32 %31, %33
  br i1 %cmp29, label %for.body.30, label %for.end.255

for.body.30:                                      ; preds = %for.cond.27
  %34 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %34, i32 0, i32 0
  %35 = load i32, i32* %comps_in_scan, align 4
  store i32 %35, i32* %ncomps, align 4
  %36 = load i32, i32* %ncomps, align 4
  %cmp31 = icmp sle i32 %36, 0
  br i1 %cmp31, label %if.then.34, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %for.body.30
  %37 = load i32, i32* %ncomps, align 4
  %cmp33 = icmp sgt i32 %37, 4
  br i1 %cmp33, label %if.then.34, label %if.end.47

if.then.34:                                       ; preds = %lor.lhs.false.32, %for.body.30
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err35, align 8
  %msg_code36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %39, i32 0, i32 5
  store i32 24, i32* %msg_code36, align 4
  %40 = load i32, i32* %ncomps, align 4
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err37 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err37, align 8
  %msg_parm38 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i32 0, i32 6
  %i39 = bitcast %union.anon* %msg_parm38 to [8 x i32]*
  %arrayidx40 = getelementptr inbounds [8 x i32], [8 x i32]* %i39, i32 0, i64 0
  store i32 %40, i32* %arrayidx40, align 4
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err41 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err41, align 8
  %msg_parm42 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i32 0, i32 6
  %i43 = bitcast %union.anon* %msg_parm42 to [8 x i32]*
  %arrayidx44 = getelementptr inbounds [8 x i32], [8 x i32]* %i43, i32 0, i64 1
  store i32 4, i32* %arrayidx44, align 4
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err45 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %45, i32 0, i32 0
  %46 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err45, align 8
  %error_exit46 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %46, i32 0, i32 0
  %47 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit46, align 8
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %49 = bitcast %struct.jpeg_compress_struct* %48 to %struct.jpeg_common_struct*
  call void %47(%struct.jpeg_common_struct* %49)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.34, %lor.lhs.false.32
  store i32 0, i32* %ci, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.82, %if.end.47
  %50 = load i32, i32* %ci, align 4
  %51 = load i32, i32* %ncomps, align 4
  %cmp49 = icmp slt i32 %50, %51
  br i1 %cmp49, label %for.body.50, label %for.end.84

for.body.50:                                      ; preds = %for.cond.48
  %52 = load i32, i32* %ci, align 4
  %idxprom51 = sext i32 %52 to i64
  %53 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %53, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [4 x i32], [4 x i32]* %component_index, i32 0, i64 %idxprom51
  %54 = load i32, i32* %arrayidx52, align 4
  store i32 %54, i32* %thisi, align 4
  %55 = load i32, i32* %thisi, align 4
  %cmp53 = icmp slt i32 %55, 0
  br i1 %cmp53, label %if.then.57, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %for.body.50
  %56 = load i32, i32* %thisi, align 4
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components55 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %57, i32 0, i32 12
  %58 = load i32, i32* %num_components55, align 4
  %cmp56 = icmp sge i32 %56, %58
  br i1 %cmp56, label %if.then.57, label %if.end.66

if.then.57:                                       ; preds = %lor.lhs.false.54, %for.body.50
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err58 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %59, i32 0, i32 0
  %60 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err58, align 8
  %msg_code59 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %60, i32 0, i32 5
  store i32 17, i32* %msg_code59, align 4
  %61 = load i32, i32* %scanno, align 4
  %62 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err60 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %62, i32 0, i32 0
  %63 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err60, align 8
  %msg_parm61 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %63, i32 0, i32 6
  %i62 = bitcast %union.anon* %msg_parm61 to [8 x i32]*
  %arrayidx63 = getelementptr inbounds [8 x i32], [8 x i32]* %i62, i32 0, i64 0
  store i32 %61, i32* %arrayidx63, align 4
  %64 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err64 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %64, i32 0, i32 0
  %65 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err64, align 8
  %error_exit65 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %65, i32 0, i32 0
  %66 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit65, align 8
  %67 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %68 = bitcast %struct.jpeg_compress_struct* %67 to %struct.jpeg_common_struct*
  call void %66(%struct.jpeg_common_struct* %68)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.57, %lor.lhs.false.54
  %69 = load i32, i32* %ci, align 4
  %cmp67 = icmp sgt i32 %69, 0
  br i1 %cmp67, label %land.lhs.true, label %if.end.81

land.lhs.true:                                    ; preds = %if.end.66
  %70 = load i32, i32* %thisi, align 4
  %71 = load i32, i32* %ci, align 4
  %sub = sub nsw i32 %71, 1
  %idxprom68 = sext i32 %sub to i64
  %72 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %component_index69 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %72, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [4 x i32], [4 x i32]* %component_index69, i32 0, i64 %idxprom68
  %73 = load i32, i32* %arrayidx70, align 4
  %cmp71 = icmp sle i32 %70, %73
  br i1 %cmp71, label %if.then.72, label %if.end.81

if.then.72:                                       ; preds = %land.lhs.true
  %74 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err73 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %74, i32 0, i32 0
  %75 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err73, align 8
  %msg_code74 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %75, i32 0, i32 5
  store i32 17, i32* %msg_code74, align 4
  %76 = load i32, i32* %scanno, align 4
  %77 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err75 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %77, i32 0, i32 0
  %78 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err75, align 8
  %msg_parm76 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %78, i32 0, i32 6
  %i77 = bitcast %union.anon* %msg_parm76 to [8 x i32]*
  %arrayidx78 = getelementptr inbounds [8 x i32], [8 x i32]* %i77, i32 0, i64 0
  store i32 %76, i32* %arrayidx78, align 4
  %79 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err79 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %79, i32 0, i32 0
  %80 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err79, align 8
  %error_exit80 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %80, i32 0, i32 0
  %81 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit80, align 8
  %82 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %83 = bitcast %struct.jpeg_compress_struct* %82 to %struct.jpeg_common_struct*
  call void %81(%struct.jpeg_common_struct* %83)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.72, %land.lhs.true, %if.end.66
  br label %for.inc.82

for.inc.82:                                       ; preds = %if.end.81
  %84 = load i32, i32* %ci, align 4
  %inc83 = add nsw i32 %84, 1
  store i32 %inc83, i32* %ci, align 4
  br label %for.cond.48

for.end.84:                                       ; preds = %for.cond.48
  %85 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %Ss85 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %85, i32 0, i32 2
  %86 = load i32, i32* %Ss85, align 4
  store i32 %86, i32* %Ss, align 4
  %87 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %Se86 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %87, i32 0, i32 3
  %88 = load i32, i32* %Se86, align 4
  store i32 %88, i32* %Se, align 4
  %89 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %Ah87 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %89, i32 0, i32 4
  %90 = load i32, i32* %Ah87, align 4
  store i32 %90, i32* %Ah, align 4
  %91 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %Al88 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %91, i32 0, i32 5
  %92 = load i32, i32* %Al88, align 4
  store i32 %92, i32* %Al, align 4
  %93 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %progressive_mode89 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %93, i32 0, i32 37
  %94 = load i32, i32* %progressive_mode89, align 4
  %tobool = icmp ne i32 %94, 0
  br i1 %tobool, label %if.then.90, label %if.else.209

if.then.90:                                       ; preds = %for.end.84
  %95 = load i32, i32* %Ss, align 4
  %cmp91 = icmp slt i32 %95, 0
  br i1 %cmp91, label %if.then.106, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %if.then.90
  %96 = load i32, i32* %Ss, align 4
  %cmp93 = icmp sge i32 %96, 64
  br i1 %cmp93, label %if.then.106, label %lor.lhs.false.94

lor.lhs.false.94:                                 ; preds = %lor.lhs.false.92
  %97 = load i32, i32* %Se, align 4
  %98 = load i32, i32* %Ss, align 4
  %cmp95 = icmp slt i32 %97, %98
  br i1 %cmp95, label %if.then.106, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %lor.lhs.false.94
  %99 = load i32, i32* %Se, align 4
  %cmp97 = icmp sge i32 %99, 64
  br i1 %cmp97, label %if.then.106, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %lor.lhs.false.96
  %100 = load i32, i32* %Ah, align 4
  %cmp99 = icmp slt i32 %100, 0
  br i1 %cmp99, label %if.then.106, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %lor.lhs.false.98
  %101 = load i32, i32* %Ah, align 4
  %cmp101 = icmp sgt i32 %101, 13
  br i1 %cmp101, label %if.then.106, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %lor.lhs.false.100
  %102 = load i32, i32* %Al, align 4
  %cmp103 = icmp slt i32 %102, 0
  br i1 %cmp103, label %if.then.106, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %lor.lhs.false.102
  %103 = load i32, i32* %Al, align 4
  %cmp105 = icmp sgt i32 %103, 13
  br i1 %cmp105, label %if.then.106, label %if.end.115

if.then.106:                                      ; preds = %lor.lhs.false.104, %lor.lhs.false.102, %lor.lhs.false.100, %lor.lhs.false.98, %lor.lhs.false.96, %lor.lhs.false.94, %lor.lhs.false.92, %if.then.90
  %104 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err107 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %104, i32 0, i32 0
  %105 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err107, align 8
  %msg_code108 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %105, i32 0, i32 5
  store i32 15, i32* %msg_code108, align 4
  %106 = load i32, i32* %scanno, align 4
  %107 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err109 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %107, i32 0, i32 0
  %108 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err109, align 8
  %msg_parm110 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %108, i32 0, i32 6
  %i111 = bitcast %union.anon* %msg_parm110 to [8 x i32]*
  %arrayidx112 = getelementptr inbounds [8 x i32], [8 x i32]* %i111, i32 0, i64 0
  store i32 %106, i32* %arrayidx112, align 4
  %109 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err113 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %109, i32 0, i32 0
  %110 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err113, align 8
  %error_exit114 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %110, i32 0, i32 0
  %111 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit114, align 8
  %112 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %113 = bitcast %struct.jpeg_compress_struct* %112 to %struct.jpeg_common_struct*
  call void %111(%struct.jpeg_common_struct* %113)
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.106, %lor.lhs.false.104
  %114 = load i32, i32* %Ss, align 4
  %cmp116 = icmp eq i32 %114, 0
  br i1 %cmp116, label %if.then.117, label %if.else.129

if.then.117:                                      ; preds = %if.end.115
  %115 = load i32, i32* %Se, align 4
  %cmp118 = icmp ne i32 %115, 0
  br i1 %cmp118, label %if.then.119, label %if.end.128

if.then.119:                                      ; preds = %if.then.117
  %116 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err120 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %116, i32 0, i32 0
  %117 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err120, align 8
  %msg_code121 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %117, i32 0, i32 5
  store i32 15, i32* %msg_code121, align 4
  %118 = load i32, i32* %scanno, align 4
  %119 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err122 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %119, i32 0, i32 0
  %120 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err122, align 8
  %msg_parm123 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %120, i32 0, i32 6
  %i124 = bitcast %union.anon* %msg_parm123 to [8 x i32]*
  %arrayidx125 = getelementptr inbounds [8 x i32], [8 x i32]* %i124, i32 0, i64 0
  store i32 %118, i32* %arrayidx125, align 4
  %121 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err126 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %121, i32 0, i32 0
  %122 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err126, align 8
  %error_exit127 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %122, i32 0, i32 0
  %123 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit127, align 8
  %124 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %125 = bitcast %struct.jpeg_compress_struct* %124 to %struct.jpeg_common_struct*
  call void %123(%struct.jpeg_common_struct* %125)
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.119, %if.then.117
  br label %if.end.141

if.else.129:                                      ; preds = %if.end.115
  %126 = load i32, i32* %ncomps, align 4
  %cmp130 = icmp ne i32 %126, 1
  br i1 %cmp130, label %if.then.131, label %if.end.140

if.then.131:                                      ; preds = %if.else.129
  %127 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err132 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %127, i32 0, i32 0
  %128 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err132, align 8
  %msg_code133 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %128, i32 0, i32 5
  store i32 15, i32* %msg_code133, align 4
  %129 = load i32, i32* %scanno, align 4
  %130 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err134 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %130, i32 0, i32 0
  %131 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err134, align 8
  %msg_parm135 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %131, i32 0, i32 6
  %i136 = bitcast %union.anon* %msg_parm135 to [8 x i32]*
  %arrayidx137 = getelementptr inbounds [8 x i32], [8 x i32]* %i136, i32 0, i64 0
  store i32 %129, i32* %arrayidx137, align 4
  %132 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err138 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %132, i32 0, i32 0
  %133 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err138, align 8
  %error_exit139 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %133, i32 0, i32 0
  %134 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit139, align 8
  %135 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %136 = bitcast %struct.jpeg_compress_struct* %135 to %struct.jpeg_common_struct*
  call void %134(%struct.jpeg_common_struct* %136)
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.131, %if.else.129
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %if.end.128
  store i32 0, i32* %ci, align 4
  br label %for.cond.142

for.cond.142:                                     ; preds = %for.inc.206, %if.end.141
  %137 = load i32, i32* %ci, align 4
  %138 = load i32, i32* %ncomps, align 4
  %cmp143 = icmp slt i32 %137, %138
  br i1 %cmp143, label %for.body.144, label %for.end.208

for.body.144:                                     ; preds = %for.cond.142
  %139 = load i32, i32* %ci, align 4
  %idxprom145 = sext i32 %139 to i64
  %140 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %component_index146 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %140, i32 0, i32 1
  %arrayidx147 = getelementptr inbounds [4 x i32], [4 x i32]* %component_index146, i32 0, i64 %idxprom145
  %141 = load i32, i32* %arrayidx147, align 4
  %idxprom148 = sext i32 %141 to i64
  %arrayidx149 = getelementptr inbounds [10 x [64 x i32]], [10 x [64 x i32]]* %last_bitpos, i32 0, i64 %idxprom148
  %arrayidx150 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx149, i32 0, i64 0
  store i32* %arrayidx150, i32** %last_bitpos_ptr, align 8
  %142 = load i32, i32* %Ss, align 4
  %cmp151 = icmp ne i32 %142, 0
  br i1 %cmp151, label %land.lhs.true.152, label %if.end.164

land.lhs.true.152:                                ; preds = %for.body.144
  %143 = load i32*, i32** %last_bitpos_ptr, align 8
  %arrayidx153 = getelementptr inbounds i32, i32* %143, i64 0
  %144 = load i32, i32* %arrayidx153, align 4
  %cmp154 = icmp slt i32 %144, 0
  br i1 %cmp154, label %if.then.155, label %if.end.164

if.then.155:                                      ; preds = %land.lhs.true.152
  %145 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err156 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %145, i32 0, i32 0
  %146 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err156, align 8
  %msg_code157 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %146, i32 0, i32 5
  store i32 15, i32* %msg_code157, align 4
  %147 = load i32, i32* %scanno, align 4
  %148 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err158 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %148, i32 0, i32 0
  %149 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err158, align 8
  %msg_parm159 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %149, i32 0, i32 6
  %i160 = bitcast %union.anon* %msg_parm159 to [8 x i32]*
  %arrayidx161 = getelementptr inbounds [8 x i32], [8 x i32]* %i160, i32 0, i64 0
  store i32 %147, i32* %arrayidx161, align 4
  %150 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err162 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %150, i32 0, i32 0
  %151 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err162, align 8
  %error_exit163 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %151, i32 0, i32 0
  %152 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit163, align 8
  %153 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %154 = bitcast %struct.jpeg_compress_struct* %153 to %struct.jpeg_common_struct*
  call void %152(%struct.jpeg_common_struct* %154)
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.155, %land.lhs.true.152, %for.body.144
  %155 = load i32, i32* %Ss, align 4
  store i32 %155, i32* %coefi, align 4
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc.203, %if.end.164
  %156 = load i32, i32* %coefi, align 4
  %157 = load i32, i32* %Se, align 4
  %cmp166 = icmp sle i32 %156, %157
  br i1 %cmp166, label %for.body.167, label %for.end.205

for.body.167:                                     ; preds = %for.cond.165
  %158 = load i32, i32* %coefi, align 4
  %idxprom168 = sext i32 %158 to i64
  %159 = load i32*, i32** %last_bitpos_ptr, align 8
  %arrayidx169 = getelementptr inbounds i32, i32* %159, i64 %idxprom168
  %160 = load i32, i32* %arrayidx169, align 4
  %cmp170 = icmp slt i32 %160, 0
  br i1 %cmp170, label %if.then.171, label %if.else.183

if.then.171:                                      ; preds = %for.body.167
  %161 = load i32, i32* %Ah, align 4
  %cmp172 = icmp ne i32 %161, 0
  br i1 %cmp172, label %if.then.173, label %if.end.182

if.then.173:                                      ; preds = %if.then.171
  %162 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err174 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %162, i32 0, i32 0
  %163 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err174, align 8
  %msg_code175 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %163, i32 0, i32 5
  store i32 15, i32* %msg_code175, align 4
  %164 = load i32, i32* %scanno, align 4
  %165 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err176 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %165, i32 0, i32 0
  %166 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err176, align 8
  %msg_parm177 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %166, i32 0, i32 6
  %i178 = bitcast %union.anon* %msg_parm177 to [8 x i32]*
  %arrayidx179 = getelementptr inbounds [8 x i32], [8 x i32]* %i178, i32 0, i64 0
  store i32 %164, i32* %arrayidx179, align 4
  %167 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err180 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %167, i32 0, i32 0
  %168 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err180, align 8
  %error_exit181 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %168, i32 0, i32 0
  %169 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit181, align 8
  %170 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %171 = bitcast %struct.jpeg_compress_struct* %170 to %struct.jpeg_common_struct*
  call void %169(%struct.jpeg_common_struct* %171)
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.173, %if.then.171
  br label %if.end.200

if.else.183:                                      ; preds = %for.body.167
  %172 = load i32, i32* %Ah, align 4
  %173 = load i32, i32* %coefi, align 4
  %idxprom184 = sext i32 %173 to i64
  %174 = load i32*, i32** %last_bitpos_ptr, align 8
  %arrayidx185 = getelementptr inbounds i32, i32* %174, i64 %idxprom184
  %175 = load i32, i32* %arrayidx185, align 4
  %cmp186 = icmp ne i32 %172, %175
  br i1 %cmp186, label %if.then.190, label %lor.lhs.false.187

lor.lhs.false.187:                                ; preds = %if.else.183
  %176 = load i32, i32* %Al, align 4
  %177 = load i32, i32* %Ah, align 4
  %sub188 = sub nsw i32 %177, 1
  %cmp189 = icmp ne i32 %176, %sub188
  br i1 %cmp189, label %if.then.190, label %if.end.199

if.then.190:                                      ; preds = %lor.lhs.false.187, %if.else.183
  %178 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err191 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %178, i32 0, i32 0
  %179 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err191, align 8
  %msg_code192 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %179, i32 0, i32 5
  store i32 15, i32* %msg_code192, align 4
  %180 = load i32, i32* %scanno, align 4
  %181 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err193 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %181, i32 0, i32 0
  %182 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err193, align 8
  %msg_parm194 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %182, i32 0, i32 6
  %i195 = bitcast %union.anon* %msg_parm194 to [8 x i32]*
  %arrayidx196 = getelementptr inbounds [8 x i32], [8 x i32]* %i195, i32 0, i64 0
  store i32 %180, i32* %arrayidx196, align 4
  %183 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err197 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %183, i32 0, i32 0
  %184 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err197, align 8
  %error_exit198 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %184, i32 0, i32 0
  %185 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit198, align 8
  %186 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %187 = bitcast %struct.jpeg_compress_struct* %186 to %struct.jpeg_common_struct*
  call void %185(%struct.jpeg_common_struct* %187)
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.190, %lor.lhs.false.187
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %if.end.182
  %188 = load i32, i32* %Al, align 4
  %189 = load i32, i32* %coefi, align 4
  %idxprom201 = sext i32 %189 to i64
  %190 = load i32*, i32** %last_bitpos_ptr, align 8
  %arrayidx202 = getelementptr inbounds i32, i32* %190, i64 %idxprom201
  store i32 %188, i32* %arrayidx202, align 4
  br label %for.inc.203

for.inc.203:                                      ; preds = %if.end.200
  %191 = load i32, i32* %coefi, align 4
  %inc204 = add nsw i32 %191, 1
  store i32 %inc204, i32* %coefi, align 4
  br label %for.cond.165

for.end.205:                                      ; preds = %for.cond.165
  br label %for.inc.206

for.inc.206:                                      ; preds = %for.end.205
  %192 = load i32, i32* %ci, align 4
  %inc207 = add nsw i32 %192, 1
  store i32 %inc207, i32* %ci, align 4
  br label %for.cond.142

for.end.208:                                      ; preds = %for.cond.142
  br label %if.end.251

if.else.209:                                      ; preds = %for.end.84
  %193 = load i32, i32* %Ss, align 4
  %cmp210 = icmp ne i32 %193, 0
  br i1 %cmp210, label %if.then.217, label %lor.lhs.false.211

lor.lhs.false.211:                                ; preds = %if.else.209
  %194 = load i32, i32* %Se, align 4
  %cmp212 = icmp ne i32 %194, 63
  br i1 %cmp212, label %if.then.217, label %lor.lhs.false.213

lor.lhs.false.213:                                ; preds = %lor.lhs.false.211
  %195 = load i32, i32* %Ah, align 4
  %cmp214 = icmp ne i32 %195, 0
  br i1 %cmp214, label %if.then.217, label %lor.lhs.false.215

lor.lhs.false.215:                                ; preds = %lor.lhs.false.213
  %196 = load i32, i32* %Al, align 4
  %cmp216 = icmp ne i32 %196, 0
  br i1 %cmp216, label %if.then.217, label %if.end.226

if.then.217:                                      ; preds = %lor.lhs.false.215, %lor.lhs.false.213, %lor.lhs.false.211, %if.else.209
  %197 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err218 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %197, i32 0, i32 0
  %198 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err218, align 8
  %msg_code219 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %198, i32 0, i32 5
  store i32 15, i32* %msg_code219, align 4
  %199 = load i32, i32* %scanno, align 4
  %200 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err220 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %200, i32 0, i32 0
  %201 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err220, align 8
  %msg_parm221 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %201, i32 0, i32 6
  %i222 = bitcast %union.anon* %msg_parm221 to [8 x i32]*
  %arrayidx223 = getelementptr inbounds [8 x i32], [8 x i32]* %i222, i32 0, i64 0
  store i32 %199, i32* %arrayidx223, align 4
  %202 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err224 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %202, i32 0, i32 0
  %203 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err224, align 8
  %error_exit225 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %203, i32 0, i32 0
  %204 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit225, align 8
  %205 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %206 = bitcast %struct.jpeg_compress_struct* %205 to %struct.jpeg_common_struct*
  call void %204(%struct.jpeg_common_struct* %206)
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.217, %lor.lhs.false.215
  store i32 0, i32* %ci, align 4
  br label %for.cond.227

for.cond.227:                                     ; preds = %for.inc.248, %if.end.226
  %207 = load i32, i32* %ci, align 4
  %208 = load i32, i32* %ncomps, align 4
  %cmp228 = icmp slt i32 %207, %208
  br i1 %cmp228, label %for.body.229, label %for.end.250

for.body.229:                                     ; preds = %for.cond.227
  %209 = load i32, i32* %ci, align 4
  %idxprom230 = sext i32 %209 to i64
  %210 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %component_index231 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %210, i32 0, i32 1
  %arrayidx232 = getelementptr inbounds [4 x i32], [4 x i32]* %component_index231, i32 0, i64 %idxprom230
  %211 = load i32, i32* %arrayidx232, align 4
  store i32 %211, i32* %thisi, align 4
  %212 = load i32, i32* %thisi, align 4
  %idxprom233 = sext i32 %212 to i64
  %arrayidx234 = getelementptr inbounds [10 x i32], [10 x i32]* %component_sent, i32 0, i64 %idxprom233
  %213 = load i32, i32* %arrayidx234, align 4
  %tobool235 = icmp ne i32 %213, 0
  br i1 %tobool235, label %if.then.236, label %if.end.245

if.then.236:                                      ; preds = %for.body.229
  %214 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err237 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %214, i32 0, i32 0
  %215 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err237, align 8
  %msg_code238 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %215, i32 0, i32 5
  store i32 17, i32* %msg_code238, align 4
  %216 = load i32, i32* %scanno, align 4
  %217 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err239 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %217, i32 0, i32 0
  %218 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err239, align 8
  %msg_parm240 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %218, i32 0, i32 6
  %i241 = bitcast %union.anon* %msg_parm240 to [8 x i32]*
  %arrayidx242 = getelementptr inbounds [8 x i32], [8 x i32]* %i241, i32 0, i64 0
  store i32 %216, i32* %arrayidx242, align 4
  %219 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err243 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %219, i32 0, i32 0
  %220 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err243, align 8
  %error_exit244 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %220, i32 0, i32 0
  %221 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit244, align 8
  %222 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %223 = bitcast %struct.jpeg_compress_struct* %222 to %struct.jpeg_common_struct*
  call void %221(%struct.jpeg_common_struct* %223)
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.236, %for.body.229
  %224 = load i32, i32* %thisi, align 4
  %idxprom246 = sext i32 %224 to i64
  %arrayidx247 = getelementptr inbounds [10 x i32], [10 x i32]* %component_sent, i32 0, i64 %idxprom246
  store i32 1, i32* %arrayidx247, align 4
  br label %for.inc.248

for.inc.248:                                      ; preds = %if.end.245
  %225 = load i32, i32* %ci, align 4
  %inc249 = add nsw i32 %225, 1
  store i32 %inc249, i32* %ci, align 4
  br label %for.cond.227

for.end.250:                                      ; preds = %for.cond.227
  br label %if.end.251

if.end.251:                                       ; preds = %for.end.250, %for.end.208
  br label %for.inc.252

for.inc.252:                                      ; preds = %if.end.251
  %226 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %incdec.ptr253 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %226, i32 1
  store %struct.jpeg_scan_info* %incdec.ptr253, %struct.jpeg_scan_info** %scanptr, align 8
  %227 = load i32, i32* %scanno, align 4
  %inc254 = add nsw i32 %227, 1
  store i32 %inc254, i32* %scanno, align 4
  br label %for.cond.27

for.end.255:                                      ; preds = %for.cond.27
  %228 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %progressive_mode256 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %228, i32 0, i32 37
  %229 = load i32, i32* %progressive_mode256, align 4
  %tobool257 = icmp ne i32 %229, 0
  br i1 %tobool257, label %if.then.258, label %if.else.276

if.then.258:                                      ; preds = %for.end.255
  store i32 0, i32* %ci, align 4
  br label %for.cond.259

for.cond.259:                                     ; preds = %for.inc.273, %if.then.258
  %230 = load i32, i32* %ci, align 4
  %231 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components260 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %231, i32 0, i32 12
  %232 = load i32, i32* %num_components260, align 4
  %cmp261 = icmp slt i32 %230, %232
  br i1 %cmp261, label %for.body.262, label %for.end.275

for.body.262:                                     ; preds = %for.cond.259
  %233 = load i32, i32* %ci, align 4
  %idxprom263 = sext i32 %233 to i64
  %arrayidx264 = getelementptr inbounds [10 x [64 x i32]], [10 x [64 x i32]]* %last_bitpos, i32 0, i64 %idxprom263
  %arrayidx265 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx264, i32 0, i64 0
  %234 = load i32, i32* %arrayidx265, align 4
  %cmp266 = icmp slt i32 %234, 0
  br i1 %cmp266, label %if.then.267, label %if.end.272

if.then.267:                                      ; preds = %for.body.262
  %235 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err268 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %235, i32 0, i32 0
  %236 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err268, align 8
  %msg_code269 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %236, i32 0, i32 5
  store i32 44, i32* %msg_code269, align 4
  %237 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err270 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %237, i32 0, i32 0
  %238 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err270, align 8
  %error_exit271 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %238, i32 0, i32 0
  %239 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit271, align 8
  %240 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %241 = bitcast %struct.jpeg_compress_struct* %240 to %struct.jpeg_common_struct*
  call void %239(%struct.jpeg_common_struct* %241)
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.267, %for.body.262
  br label %for.inc.273

for.inc.273:                                      ; preds = %if.end.272
  %242 = load i32, i32* %ci, align 4
  %inc274 = add nsw i32 %242, 1
  store i32 %inc274, i32* %ci, align 4
  br label %for.cond.259

for.end.275:                                      ; preds = %for.cond.259
  br label %if.end.293

if.else.276:                                      ; preds = %for.end.255
  store i32 0, i32* %ci, align 4
  br label %for.cond.277

for.cond.277:                                     ; preds = %for.inc.290, %if.else.276
  %243 = load i32, i32* %ci, align 4
  %244 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components278 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %244, i32 0, i32 12
  %245 = load i32, i32* %num_components278, align 4
  %cmp279 = icmp slt i32 %243, %245
  br i1 %cmp279, label %for.body.280, label %for.end.292

for.body.280:                                     ; preds = %for.cond.277
  %246 = load i32, i32* %ci, align 4
  %idxprom281 = sext i32 %246 to i64
  %arrayidx282 = getelementptr inbounds [10 x i32], [10 x i32]* %component_sent, i32 0, i64 %idxprom281
  %247 = load i32, i32* %arrayidx282, align 4
  %tobool283 = icmp ne i32 %247, 0
  br i1 %tobool283, label %if.end.289, label %if.then.284

if.then.284:                                      ; preds = %for.body.280
  %248 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err285 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %248, i32 0, i32 0
  %249 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err285, align 8
  %msg_code286 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %249, i32 0, i32 5
  store i32 44, i32* %msg_code286, align 4
  %250 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err287 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %250, i32 0, i32 0
  %251 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err287, align 8
  %error_exit288 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %251, i32 0, i32 0
  %252 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit288, align 8
  %253 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %254 = bitcast %struct.jpeg_compress_struct* %253 to %struct.jpeg_common_struct*
  call void %252(%struct.jpeg_common_struct* %254)
  br label %if.end.289

if.end.289:                                       ; preds = %if.then.284, %for.body.280
  br label %for.inc.290

for.inc.290:                                      ; preds = %if.end.289
  %255 = load i32, i32* %ci, align 4
  %inc291 = add nsw i32 %255, 1
  store i32 %inc291, i32* %ci, align 4
  br label %for.cond.277

for.end.292:                                      ; preds = %for.cond.277
  br label %if.end.293

if.end.293:                                       ; preds = %for.end.292, %for.end.275
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @select_scan_parameters(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %ci = alloca i32, align 4
  %master = alloca %struct.my_comp_master*, align 8
  %scanptr = alloca %struct.jpeg_scan_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %scan_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 22
  %1 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scan_info, align 8
  %cmp = icmp ne %struct.jpeg_scan_info* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %master1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 51
  %3 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %master1, align 8
  %4 = bitcast %struct.jpeg_comp_master* %3 to %struct.my_comp_master*
  store %struct.my_comp_master* %4, %struct.my_comp_master** %master, align 8
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %scan_info2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 22
  %6 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scan_info2, align 8
  %7 = load %struct.my_comp_master*, %struct.my_comp_master** %master, align 8
  %scan_number = getelementptr inbounds %struct.my_comp_master, %struct.my_comp_master* %7, i32 0, i32 4
  %8 = load i32, i32* %scan_number, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %6, i64 %idx.ext
  store %struct.jpeg_scan_info* %add.ptr, %struct.jpeg_scan_info** %scanptr, align 8
  %9 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %9, i32 0, i32 0
  %10 = load i32, i32* %comps_in_scan, align 4
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comps_in_scan3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 41
  store i32 %10, i32* %comps_in_scan3, align 4
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %12 = load i32, i32* %ci, align 4
  %13 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %comps_in_scan4 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %13, i32 0, i32 0
  %14 = load i32, i32* %comps_in_scan4, align 4
  %cmp5 = icmp slt i32 %12, %14
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %16, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %component_index, i32 0, i64 %idxprom
  %17 = load i32, i32* %arrayidx, align 4
  %idxprom6 = sext i32 %17 to i64
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 14
  %19 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  %arrayidx7 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %19, i64 %idxprom6
  %20 = load i32, i32* %ci, align 4
  %idxprom8 = sext i32 %20 to i64
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 42
  %arrayidx9 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom8
  store %struct.jpeg_component_info* %arrayidx7, %struct.jpeg_component_info** %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %ci, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %23, i32 0, i32 2
  %24 = load i32, i32* %Ss, align 4
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Ss10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 47
  store i32 %24, i32* %Ss10, align 4
  %26 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %Se = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %26, i32 0, i32 3
  %27 = load i32, i32* %Se, align 4
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Se11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 48
  store i32 %27, i32* %Se11, align 4
  %29 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %29, i32 0, i32 4
  %30 = load i32, i32* %Ah, align 4
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Ah12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %31, i32 0, i32 49
  store i32 %30, i32* %Ah12, align 4
  %32 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8
  %Al = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %32, i32 0, i32 5
  %33 = load i32, i32* %Al, align 4
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Al13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 50
  store i32 %33, i32* %Al13, align 4
  br label %if.end.43

if.else:                                          ; preds = %entry
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 12
  %36 = load i32, i32* %num_components, align 4
  %cmp14 = icmp sgt i32 %36, 4
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.else
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %37, i32 0, i32 0
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %38, i32 0, i32 5
  store i32 24, i32* %msg_code, align 4
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %39, i32 0, i32 12
  %40 = load i32, i32* %num_components16, align 4
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err17, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx18 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %40, i32* %arrayidx18, align 4
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err19, align 8
  %msg_parm20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i32 0, i32 6
  %i21 = bitcast %union.anon* %msg_parm20 to [8 x i32]*
  %arrayidx22 = getelementptr inbounds [8 x i32], [8 x i32]* %i21, i32 0, i64 1
  store i32 4, i32* %arrayidx22, align 4
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %45, i32 0, i32 0
  %46 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err23, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %46, i32 0, i32 0
  %47 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %49 = bitcast %struct.jpeg_compress_struct* %48 to %struct.jpeg_common_struct*
  call void %47(%struct.jpeg_common_struct* %49)
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.else
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 12
  %51 = load i32, i32* %num_components24, align 4
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comps_in_scan25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %52, i32 0, i32 41
  store i32 %51, i32* %comps_in_scan25, align 4
  store i32 0, i32* %ci, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.36, %if.end
  %53 = load i32, i32* %ci, align 4
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %54, i32 0, i32 12
  %55 = load i32, i32* %num_components27, align 4
  %cmp28 = icmp slt i32 %53, %55
  br i1 %cmp28, label %for.body.29, label %for.end.38

for.body.29:                                      ; preds = %for.cond.26
  %56 = load i32, i32* %ci, align 4
  %idxprom30 = sext i32 %56 to i64
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comp_info31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %57, i32 0, i32 14
  %58 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info31, align 8
  %arrayidx32 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %58, i64 %idxprom30
  %59 = load i32, i32* %ci, align 4
  %idxprom33 = sext i32 %59 to i64
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cur_comp_info34 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %60, i32 0, i32 42
  %arrayidx35 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info34, i32 0, i64 %idxprom33
  store %struct.jpeg_component_info* %arrayidx32, %struct.jpeg_component_info** %arrayidx35, align 8
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.29
  %61 = load i32, i32* %ci, align 4
  %inc37 = add nsw i32 %61, 1
  store i32 %inc37, i32* %ci, align 4
  br label %for.cond.26

for.end.38:                                       ; preds = %for.cond.26
  %62 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Ss39 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %62, i32 0, i32 47
  store i32 0, i32* %Ss39, align 4
  %63 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Se40 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %63, i32 0, i32 48
  store i32 63, i32* %Se40, align 4
  %64 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Ah41 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %64, i32 0, i32 49
  store i32 0, i32* %Ah41, align 4
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Al42 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %65, i32 0, i32 50
  store i32 0, i32* %Al42, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %for.end.38, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @per_scan_setup(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %ci = alloca i32, align 4
  %mcublks = alloca i32, align 4
  %tmp = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %nominal = alloca i64, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 41
  %1 = load i32, i32* %comps_in_scan, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 42
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 0
  %3 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8
  store %struct.jpeg_component_info* %3, %struct.jpeg_component_info** %compptr, align 8
  %4 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %4, i32 0, i32 7
  %5 = load i32, i32* %width_in_blocks, align 4
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 43
  store i32 %5, i32* %MCUs_per_row, align 4
  %7 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %7, i32 0, i32 8
  %8 = load i32, i32* %height_in_blocks, align 4
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %MCU_rows_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 44
  store i32 %8, i32* %MCU_rows_in_scan, align 4
  %10 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %10, i32 0, i32 13
  store i32 1, i32* %MCU_width, align 4
  %11 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %11, i32 0, i32 14
  store i32 1, i32* %MCU_height, align 4
  %12 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %12, i32 0, i32 15
  store i32 1, i32* %MCU_blocks, align 4
  %13 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_sample_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %13, i32 0, i32 16
  store i32 8, i32* %MCU_sample_width, align 4
  %14 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %last_col_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %14, i32 0, i32 17
  store i32 1, i32* %last_col_width, align 4
  %15 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %height_in_blocks2 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %15, i32 0, i32 8
  %16 = load i32, i32* %height_in_blocks2, align 4
  %17 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %17, i32 0, i32 3
  %18 = load i32, i32* %v_samp_factor, align 4
  %rem = urem i32 %16, %18
  store i32 %rem, i32* %tmp, align 4
  %19 = load i32, i32* %tmp, align 4
  %cmp3 = icmp eq i32 %19, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %20 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor5 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %20, i32 0, i32 3
  %21 = load i32, i32* %v_samp_factor5, align 4
  store i32 %21, i32* %tmp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %22 = load i32, i32* %tmp, align 4
  %23 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %23, i32 0, i32 18
  store i32 %22, i32* %last_row_height, align 4
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 45
  store i32 1, i32* %blocks_in_MCU, align 4
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %MCU_membership = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 46
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %MCU_membership, i32 0, i64 0
  store i32 0, i32* %arrayidx6, align 4
  br label %if.end.81

if.else:                                          ; preds = %entry
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comps_in_scan7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 41
  %27 = load i32, i32* %comps_in_scan7, align 4
  %cmp8 = icmp sle i32 %27, 0
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comps_in_scan9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 41
  %29 = load i32, i32* %comps_in_scan9, align 4
  %cmp10 = icmp sgt i32 %29, 4
  br i1 %cmp10, label %if.then.11, label %if.end.20

if.then.11:                                       ; preds = %lor.lhs.false, %if.else
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 5
  store i32 24, i32* %msg_code, align 4
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comps_in_scan12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 41
  %33 = load i32, i32* %comps_in_scan12, align 4
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %33, i32* %arrayidx14, align 4
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err15, align 8
  %msg_parm16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 6
  %i17 = bitcast %union.anon* %msg_parm16 to [8 x i32]*
  %arrayidx18 = getelementptr inbounds [8 x i32], [8 x i32]* %i17, i32 0, i64 1
  store i32 4, i32* %arrayidx18, align 4
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err19, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %39, i32 0, i32 0
  %40 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %42 = bitcast %struct.jpeg_compress_struct* %41 to %struct.jpeg_common_struct*
  call void %40(%struct.jpeg_common_struct* %42)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.11, %lor.lhs.false
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 6
  %44 = load i32, i32* %image_width, align 4
  %conv = zext i32 %44 to i64
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %45, i32 0, i32 38
  %46 = load i32, i32* %max_h_samp_factor, align 4
  %mul = mul nsw i32 %46, 8
  %conv21 = sext i32 %mul to i64
  %call = call i64 @jdiv_round_up(i64 %conv, i64 %conv21)
  %conv22 = trunc i64 %call to i32
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %MCUs_per_row23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 43
  store i32 %conv22, i32* %MCUs_per_row23, align 4
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %48, i32 0, i32 7
  %49 = load i32, i32* %image_height, align 4
  %conv24 = zext i32 %49 to i64
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 39
  %51 = load i32, i32* %max_v_samp_factor, align 4
  %mul25 = mul nsw i32 %51, 8
  %conv26 = sext i32 %mul25 to i64
  %call27 = call i64 @jdiv_round_up(i64 %conv24, i64 %conv26)
  %conv28 = trunc i64 %call27 to i32
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %MCU_rows_in_scan29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %52, i32 0, i32 44
  store i32 %conv28, i32* %MCU_rows_in_scan29, align 4
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %blocks_in_MCU30 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %53, i32 0, i32 45
  store i32 0, i32* %blocks_in_MCU30, align 4
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %54 = load i32, i32* %ci, align 4
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comps_in_scan31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %55, i32 0, i32 41
  %56 = load i32, i32* %comps_in_scan31, align 4
  %cmp32 = icmp slt i32 %54, %56
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %57 to i64
  %58 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cur_comp_info34 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %58, i32 0, i32 42
  %arrayidx35 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info34, i32 0, i64 %idxprom
  %59 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx35, align 8
  store %struct.jpeg_component_info* %59, %struct.jpeg_component_info** %compptr, align 8
  %60 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %60, i32 0, i32 2
  %61 = load i32, i32* %h_samp_factor, align 4
  %62 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_width36 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %62, i32 0, i32 13
  store i32 %61, i32* %MCU_width36, align 4
  %63 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor37 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %63, i32 0, i32 3
  %64 = load i32, i32* %v_samp_factor37, align 4
  %65 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_height38 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %65, i32 0, i32 14
  store i32 %64, i32* %MCU_height38, align 4
  %66 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_width39 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %66, i32 0, i32 13
  %67 = load i32, i32* %MCU_width39, align 4
  %68 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_height40 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %68, i32 0, i32 14
  %69 = load i32, i32* %MCU_height40, align 4
  %mul41 = mul nsw i32 %67, %69
  %70 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_blocks42 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %70, i32 0, i32 15
  store i32 %mul41, i32* %MCU_blocks42, align 4
  %71 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_width43 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %71, i32 0, i32 13
  %72 = load i32, i32* %MCU_width43, align 4
  %mul44 = mul nsw i32 %72, 8
  %73 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_sample_width45 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %73, i32 0, i32 16
  store i32 %mul44, i32* %MCU_sample_width45, align 4
  %74 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %width_in_blocks46 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %74, i32 0, i32 7
  %75 = load i32, i32* %width_in_blocks46, align 4
  %76 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_width47 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %76, i32 0, i32 13
  %77 = load i32, i32* %MCU_width47, align 4
  %rem48 = urem i32 %75, %77
  store i32 %rem48, i32* %tmp, align 4
  %78 = load i32, i32* %tmp, align 4
  %cmp49 = icmp eq i32 %78, 0
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %for.body
  %79 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_width52 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %79, i32 0, i32 13
  %80 = load i32, i32* %MCU_width52, align 4
  store i32 %80, i32* %tmp, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %for.body
  %81 = load i32, i32* %tmp, align 4
  %82 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %last_col_width54 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %82, i32 0, i32 17
  store i32 %81, i32* %last_col_width54, align 4
  %83 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %height_in_blocks55 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %83, i32 0, i32 8
  %84 = load i32, i32* %height_in_blocks55, align 4
  %85 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_height56 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %85, i32 0, i32 14
  %86 = load i32, i32* %MCU_height56, align 4
  %rem57 = urem i32 %84, %86
  store i32 %rem57, i32* %tmp, align 4
  %87 = load i32, i32* %tmp, align 4
  %cmp58 = icmp eq i32 %87, 0
  br i1 %cmp58, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.end.53
  %88 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_height61 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i32 0, i32 14
  %89 = load i32, i32* %MCU_height61, align 4
  store i32 %89, i32* %tmp, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.end.53
  %90 = load i32, i32* %tmp, align 4
  %91 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %last_row_height63 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %91, i32 0, i32 18
  store i32 %90, i32* %last_row_height63, align 4
  %92 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_blocks64 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %92, i32 0, i32 15
  %93 = load i32, i32* %MCU_blocks64, align 4
  store i32 %93, i32* %mcublks, align 4
  %94 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %blocks_in_MCU65 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %94, i32 0, i32 45
  %95 = load i32, i32* %blocks_in_MCU65, align 4
  %96 = load i32, i32* %mcublks, align 4
  %add = add nsw i32 %95, %96
  %cmp66 = icmp sgt i32 %add, 10
  br i1 %cmp66, label %if.then.68, label %if.end.73

if.then.68:                                       ; preds = %if.end.62
  %97 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err69 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %97, i32 0, i32 0
  %98 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err69, align 8
  %msg_code70 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %98, i32 0, i32 5
  store i32 11, i32* %msg_code70, align 4
  %99 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err71 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %99, i32 0, i32 0
  %100 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err71, align 8
  %error_exit72 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %100, i32 0, i32 0
  %101 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit72, align 8
  %102 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %103 = bitcast %struct.jpeg_compress_struct* %102 to %struct.jpeg_common_struct*
  call void %101(%struct.jpeg_common_struct* %103)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.68, %if.end.62
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.73
  %104 = load i32, i32* %mcublks, align 4
  %dec = add nsw i32 %104, -1
  store i32 %dec, i32* %mcublks, align 4
  %cmp74 = icmp sgt i32 %104, 0
  br i1 %cmp74, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %105 = load i32, i32* %ci, align 4
  %106 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %blocks_in_MCU76 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %106, i32 0, i32 45
  %107 = load i32, i32* %blocks_in_MCU76, align 4
  %inc = add nsw i32 %107, 1
  store i32 %inc, i32* %blocks_in_MCU76, align 4
  %idxprom77 = sext i32 %107 to i64
  %108 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %MCU_membership78 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %108, i32 0, i32 46
  %arrayidx79 = getelementptr inbounds [10 x i32], [10 x i32]* %MCU_membership78, i32 0, i64 %idxprom77
  store i32 %105, i32* %arrayidx79, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %109 = load i32, i32* %ci, align 4
  %inc80 = add nsw i32 %109, 1
  store i32 %inc80, i32* %ci, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.81

if.end.81:                                        ; preds = %for.end, %if.end
  %110 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %restart_in_rows = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %110, i32 0, i32 30
  %111 = load i32, i32* %restart_in_rows, align 4
  %cmp82 = icmp sgt i32 %111, 0
  br i1 %cmp82, label %if.then.84, label %if.end.94

if.then.84:                                       ; preds = %if.end.81
  %112 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %restart_in_rows86 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %112, i32 0, i32 30
  %113 = load i32, i32* %restart_in_rows86, align 4
  %conv87 = sext i32 %113 to i64
  %114 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %MCUs_per_row88 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %114, i32 0, i32 43
  %115 = load i32, i32* %MCUs_per_row88, align 4
  %conv89 = zext i32 %115 to i64
  %mul90 = mul nsw i64 %conv87, %conv89
  store i64 %mul90, i64* %nominal, align 8
  %116 = load i64, i64* %nominal, align 8
  %cmp91 = icmp slt i64 %116, 65535
  br i1 %cmp91, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.84
  %117 = load i64, i64* %nominal, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.84
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %117, %cond.true ], [ 65535, %cond.false ]
  %conv93 = trunc i64 %cond to i32
  %118 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %118, i32 0, i32 29
  store i32 %conv93, i32* %restart_interval, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %cond.end, %if.end.81
  ret void
}

declare i64 @jdiv_round_up(i64, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
