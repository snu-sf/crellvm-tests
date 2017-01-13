; ModuleID = './MultiSource.Benchmarks.MiBench/121.consumer-jpeg.jccolor.bc'
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
%struct.my_color_converter = type { %struct.jpeg_color_converter, i64* }

; Function Attrs: nounwind uwtable
define void @jinit_color_converter(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %cconvert = alloca %struct.my_color_converter*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_compress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 24)
  %5 = bitcast i8* %call to %struct.my_color_converter*
  store %struct.my_color_converter* %5, %struct.my_color_converter** %cconvert, align 8
  %6 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8
  %7 = bitcast %struct.my_color_converter* %6 to %struct.jpeg_color_converter*
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cconvert1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 56
  store %struct.jpeg_color_converter* %7, %struct.jpeg_color_converter** %cconvert1, align 8
  %9 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8
  %pub = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %9, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub, i32 0, i32 0
  %start_pass2 = bitcast {}** %start_pass to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @null_method, void (%struct.jpeg_compress_struct*)** %start_pass2, align 8
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 9
  %11 = load i32, i32* %in_color_space, align 4
  switch i32 %11, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.4
    i32 4, label %sw.bb.13
    i32 5, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 8
  %13 = load i32, i32* %input_components, align 4
  %cmp = icmp ne i32 %13, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 5
  store i32 7, i32* %msg_code, align 4
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 0
  %18 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %20 = bitcast %struct.jpeg_compress_struct* %19 to %struct.jpeg_common_struct*
  call void %18(%struct.jpeg_common_struct* %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry, %entry
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %input_components5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 8
  %22 = load i32, i32* %input_components5, align 4
  %cmp6 = icmp ne i32 %22, 3
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %sw.bb.4
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8
  %msg_code9 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i32 0, i32 5
  store i32 7, i32* %msg_code9, align 4
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8
  %error_exit11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i32 0, i32 0
  %27 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit11, align 8
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %29 = bitcast %struct.jpeg_compress_struct* %28 to %struct.jpeg_common_struct*
  call void %27(%struct.jpeg_common_struct* %29)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %sw.bb.4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry, %entry
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %input_components14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 8
  %31 = load i32, i32* %input_components14, align 4
  %cmp15 = icmp ne i32 %31, 4
  br i1 %cmp15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %sw.bb.13
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err17, align 8
  %msg_code18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 5
  store i32 7, i32* %msg_code18, align 4
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err19, align 8
  %error_exit20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i32 0, i32 0
  %36 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit20, align 8
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %38 = bitcast %struct.jpeg_compress_struct* %37 to %struct.jpeg_common_struct*
  call void %36(%struct.jpeg_common_struct* %38)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %sw.bb.13
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %input_components22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %39, i32 0, i32 8
  %40 = load i32, i32* %input_components22, align 4
  %cmp23 = icmp slt i32 %40, 1
  br i1 %cmp23, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %sw.default
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err25, align 8
  %msg_code26 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i32 0, i32 5
  store i32 7, i32* %msg_code26, align 4
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err27, align 8
  %error_exit28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i32 0, i32 0
  %45 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit28, align 8
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %47 = bitcast %struct.jpeg_compress_struct* %46 to %struct.jpeg_common_struct*
  call void %45(%struct.jpeg_common_struct* %47)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.24, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.29, %if.end.21, %if.end.12, %if.end
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %48, i32 0, i32 13
  %49 = load i32, i32* %jpeg_color_space, align 4
  switch i32 %49, label %sw.default.164 [
    i32 1, label %sw.bb.30
    i32 2, label %sw.bb.64
    i32 3, label %sw.bb.84
    i32 4, label %sw.bb.114
    i32 5, label %sw.bb.134
  ]

sw.bb.30:                                         ; preds = %sw.epilog
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 12
  %51 = load i32, i32* %num_components, align 4
  %cmp31 = icmp ne i32 %51, 1
  br i1 %cmp31, label %if.then.32, label %if.end.37

if.then.32:                                       ; preds = %sw.bb.30
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %52, i32 0, i32 0
  %53 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err33, align 8
  %msg_code34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %53, i32 0, i32 5
  store i32 8, i32* %msg_code34, align 4
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %54, i32 0, i32 0
  %55 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err35, align 8
  %error_exit36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %55, i32 0, i32 0
  %56 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit36, align 8
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %58 = bitcast %struct.jpeg_compress_struct* %57 to %struct.jpeg_common_struct*
  call void %56(%struct.jpeg_common_struct* %58)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.32, %sw.bb.30
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %in_color_space38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %59, i32 0, i32 9
  %60 = load i32, i32* %in_color_space38, align 4
  %cmp39 = icmp eq i32 %60, 1
  br i1 %cmp39, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %if.end.37
  %61 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8
  %pub41 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %61, i32 0, i32 0
  %color_convert = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub41, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @grayscale_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert, align 8
  br label %if.end.63

if.else:                                          ; preds = %if.end.37
  %62 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %in_color_space42 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %62, i32 0, i32 9
  %63 = load i32, i32* %in_color_space42, align 4
  %cmp43 = icmp eq i32 %63, 2
  br i1 %cmp43, label %if.then.44, label %if.else.50

if.then.44:                                       ; preds = %if.else
  %64 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8
  %pub45 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %64, i32 0, i32 0
  %start_pass46 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub45, i32 0, i32 0
  %start_pass47 = bitcast {}** %start_pass46 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @rgb_ycc_start, void (%struct.jpeg_compress_struct*)** %start_pass47, align 8
  %65 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8
  %pub48 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %65, i32 0, i32 0
  %color_convert49 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub48, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @rgb_gray_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert49, align 8
  br label %if.end.62

if.else.50:                                       ; preds = %if.else
  %66 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %in_color_space51 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %66, i32 0, i32 9
  %67 = load i32, i32* %in_color_space51, align 4
  %cmp52 = icmp eq i32 %67, 3
  br i1 %cmp52, label %if.then.53, label %if.else.56

if.then.53:                                       ; preds = %if.else.50
  %68 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8
  %pub54 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %68, i32 0, i32 0
  %color_convert55 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub54, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @grayscale_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert55, align 8
  br label %if.end.61

if.else.56:                                       ; preds = %if.else.50
  %69 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err57 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %69, i32 0, i32 0
  %70 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err57, align 8
  %msg_code58 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %70, i32 0, i32 5
  store i32 25, i32* %msg_code58, align 4
  %71 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err59 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %71, i32 0, i32 0
  %72 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err59, align 8
  %error_exit60 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %72, i32 0, i32 0
  %73 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit60, align 8
  %74 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %75 = bitcast %struct.jpeg_compress_struct* %74 to %struct.jpeg_common_struct*
  call void %73(%struct.jpeg_common_struct* %75)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.56, %if.then.53
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.44
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.40
  br label %sw.epilog.179

sw.bb.64:                                         ; preds = %sw.epilog
  %76 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components65 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %76, i32 0, i32 12
  %77 = load i32, i32* %num_components65, align 4
  %cmp66 = icmp ne i32 %77, 3
  br i1 %cmp66, label %if.then.67, label %if.end.72

if.then.67:                                       ; preds = %sw.bb.64
  %78 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err68 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %78, i32 0, i32 0
  %79 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err68, align 8
  %msg_code69 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %79, i32 0, i32 5
  store i32 8, i32* %msg_code69, align 4
  %80 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err70 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %80, i32 0, i32 0
  %81 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err70, align 8
  %error_exit71 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %81, i32 0, i32 0
  %82 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit71, align 8
  %83 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %84 = bitcast %struct.jpeg_compress_struct* %83 to %struct.jpeg_common_struct*
  call void %82(%struct.jpeg_common_struct* %84)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.67, %sw.bb.64
  %85 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %in_color_space73 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %85, i32 0, i32 9
  %86 = load i32, i32* %in_color_space73, align 4
  %cmp74 = icmp eq i32 %86, 2
  br i1 %cmp74, label %if.then.75, label %if.else.78

if.then.75:                                       ; preds = %if.end.72
  %87 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8
  %pub76 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %87, i32 0, i32 0
  %color_convert77 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub76, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @null_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert77, align 8
  br label %if.end.83

if.else.78:                                       ; preds = %if.end.72
  %88 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err79 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %88, i32 0, i32 0
  %89 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err79, align 8
  %msg_code80 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %89, i32 0, i32 5
  store i32 25, i32* %msg_code80, align 4
  %90 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err81 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %90, i32 0, i32 0
  %91 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err81, align 8
  %error_exit82 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %91, i32 0, i32 0
  %92 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit82, align 8
  %93 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %94 = bitcast %struct.jpeg_compress_struct* %93 to %struct.jpeg_common_struct*
  call void %92(%struct.jpeg_common_struct* %94)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.78, %if.then.75
  br label %sw.epilog.179

sw.bb.84:                                         ; preds = %sw.epilog
  %95 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components85 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %95, i32 0, i32 12
  %96 = load i32, i32* %num_components85, align 4
  %cmp86 = icmp ne i32 %96, 3
  br i1 %cmp86, label %if.then.87, label %if.end.92

if.then.87:                                       ; preds = %sw.bb.84
  %97 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err88 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %97, i32 0, i32 0
  %98 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err88, align 8
  %msg_code89 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %98, i32 0, i32 5
  store i32 8, i32* %msg_code89, align 4
  %99 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err90 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %99, i32 0, i32 0
  %100 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err90, align 8
  %error_exit91 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %100, i32 0, i32 0
  %101 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit91, align 8
  %102 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %103 = bitcast %struct.jpeg_compress_struct* %102 to %struct.jpeg_common_struct*
  call void %101(%struct.jpeg_common_struct* %103)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.87, %sw.bb.84
  %104 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %in_color_space93 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %104, i32 0, i32 9
  %105 = load i32, i32* %in_color_space93, align 4
  %cmp94 = icmp eq i32 %105, 2
  br i1 %cmp94, label %if.then.95, label %if.else.101

if.then.95:                                       ; preds = %if.end.92
  %106 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8
  %pub96 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %106, i32 0, i32 0
  %start_pass97 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub96, i32 0, i32 0
  %start_pass98 = bitcast {}** %start_pass97 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @rgb_ycc_start, void (%struct.jpeg_compress_struct*)** %start_pass98, align 8
  %107 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8
  %pub99 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %107, i32 0, i32 0
  %color_convert100 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub99, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @rgb_ycc_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert100, align 8
  br label %if.end.113

if.else.101:                                      ; preds = %if.end.92
  %108 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %in_color_space102 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %108, i32 0, i32 9
  %109 = load i32, i32* %in_color_space102, align 4
  %cmp103 = icmp eq i32 %109, 3
  br i1 %cmp103, label %if.then.104, label %if.else.107

if.then.104:                                      ; preds = %if.else.101
  %110 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8
  %pub105 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %110, i32 0, i32 0
  %color_convert106 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub105, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @null_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert106, align 8
  br label %if.end.112

if.else.107:                                      ; preds = %if.else.101
  %111 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err108 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %111, i32 0, i32 0
  %112 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err108, align 8
  %msg_code109 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %112, i32 0, i32 5
  store i32 25, i32* %msg_code109, align 4
  %113 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err110 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %113, i32 0, i32 0
  %114 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err110, align 8
  %error_exit111 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %114, i32 0, i32 0
  %115 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit111, align 8
  %116 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %117 = bitcast %struct.jpeg_compress_struct* %116 to %struct.jpeg_common_struct*
  call void %115(%struct.jpeg_common_struct* %117)
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.107, %if.then.104
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.then.95
  br label %sw.epilog.179

sw.bb.114:                                        ; preds = %sw.epilog
  %118 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components115 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %118, i32 0, i32 12
  %119 = load i32, i32* %num_components115, align 4
  %cmp116 = icmp ne i32 %119, 4
  br i1 %cmp116, label %if.then.117, label %if.end.122

if.then.117:                                      ; preds = %sw.bb.114
  %120 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err118 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %120, i32 0, i32 0
  %121 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err118, align 8
  %msg_code119 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %121, i32 0, i32 5
  store i32 8, i32* %msg_code119, align 4
  %122 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err120 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %122, i32 0, i32 0
  %123 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err120, align 8
  %error_exit121 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %123, i32 0, i32 0
  %124 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit121, align 8
  %125 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %126 = bitcast %struct.jpeg_compress_struct* %125 to %struct.jpeg_common_struct*
  call void %124(%struct.jpeg_common_struct* %126)
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.117, %sw.bb.114
  %127 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %in_color_space123 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %127, i32 0, i32 9
  %128 = load i32, i32* %in_color_space123, align 4
  %cmp124 = icmp eq i32 %128, 4
  br i1 %cmp124, label %if.then.125, label %if.else.128

if.then.125:                                      ; preds = %if.end.122
  %129 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8
  %pub126 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %129, i32 0, i32 0
  %color_convert127 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub126, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @null_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert127, align 8
  br label %if.end.133

if.else.128:                                      ; preds = %if.end.122
  %130 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err129 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %130, i32 0, i32 0
  %131 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err129, align 8
  %msg_code130 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %131, i32 0, i32 5
  store i32 25, i32* %msg_code130, align 4
  %132 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err131 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %132, i32 0, i32 0
  %133 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err131, align 8
  %error_exit132 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %133, i32 0, i32 0
  %134 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit132, align 8
  %135 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %136 = bitcast %struct.jpeg_compress_struct* %135 to %struct.jpeg_common_struct*
  call void %134(%struct.jpeg_common_struct* %136)
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.128, %if.then.125
  br label %sw.epilog.179

sw.bb.134:                                        ; preds = %sw.epilog
  %137 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components135 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %137, i32 0, i32 12
  %138 = load i32, i32* %num_components135, align 4
  %cmp136 = icmp ne i32 %138, 4
  br i1 %cmp136, label %if.then.137, label %if.end.142

if.then.137:                                      ; preds = %sw.bb.134
  %139 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err138 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %139, i32 0, i32 0
  %140 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err138, align 8
  %msg_code139 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %140, i32 0, i32 5
  store i32 8, i32* %msg_code139, align 4
  %141 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err140 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %141, i32 0, i32 0
  %142 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err140, align 8
  %error_exit141 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %142, i32 0, i32 0
  %143 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit141, align 8
  %144 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %145 = bitcast %struct.jpeg_compress_struct* %144 to %struct.jpeg_common_struct*
  call void %143(%struct.jpeg_common_struct* %145)
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.137, %sw.bb.134
  %146 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %in_color_space143 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %146, i32 0, i32 9
  %147 = load i32, i32* %in_color_space143, align 4
  %cmp144 = icmp eq i32 %147, 4
  br i1 %cmp144, label %if.then.145, label %if.else.151

if.then.145:                                      ; preds = %if.end.142
  %148 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8
  %pub146 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %148, i32 0, i32 0
  %start_pass147 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub146, i32 0, i32 0
  %start_pass148 = bitcast {}** %start_pass147 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @rgb_ycc_start, void (%struct.jpeg_compress_struct*)** %start_pass148, align 8
  %149 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8
  %pub149 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %149, i32 0, i32 0
  %color_convert150 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub149, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @cmyk_ycck_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert150, align 8
  br label %if.end.163

if.else.151:                                      ; preds = %if.end.142
  %150 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %in_color_space152 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %150, i32 0, i32 9
  %151 = load i32, i32* %in_color_space152, align 4
  %cmp153 = icmp eq i32 %151, 5
  br i1 %cmp153, label %if.then.154, label %if.else.157

if.then.154:                                      ; preds = %if.else.151
  %152 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8
  %pub155 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %152, i32 0, i32 0
  %color_convert156 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub155, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @null_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert156, align 8
  br label %if.end.162

if.else.157:                                      ; preds = %if.else.151
  %153 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err158 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %153, i32 0, i32 0
  %154 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err158, align 8
  %msg_code159 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %154, i32 0, i32 5
  store i32 25, i32* %msg_code159, align 4
  %155 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err160 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %155, i32 0, i32 0
  %156 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err160, align 8
  %error_exit161 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %156, i32 0, i32 0
  %157 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit161, align 8
  %158 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %159 = bitcast %struct.jpeg_compress_struct* %158 to %struct.jpeg_common_struct*
  call void %157(%struct.jpeg_common_struct* %159)
  br label %if.end.162

if.end.162:                                       ; preds = %if.else.157, %if.then.154
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %if.then.145
  br label %sw.epilog.179

sw.default.164:                                   ; preds = %sw.epilog
  %160 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %jpeg_color_space165 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %160, i32 0, i32 13
  %161 = load i32, i32* %jpeg_color_space165, align 4
  %162 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %in_color_space166 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %162, i32 0, i32 9
  %163 = load i32, i32* %in_color_space166, align 4
  %cmp167 = icmp ne i32 %161, %163
  br i1 %cmp167, label %if.then.171, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.default.164
  %164 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components168 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %164, i32 0, i32 12
  %165 = load i32, i32* %num_components168, align 4
  %166 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %input_components169 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %166, i32 0, i32 8
  %167 = load i32, i32* %input_components169, align 4
  %cmp170 = icmp ne i32 %165, %167
  br i1 %cmp170, label %if.then.171, label %if.end.176

if.then.171:                                      ; preds = %lor.lhs.false, %sw.default.164
  %168 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err172 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %168, i32 0, i32 0
  %169 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err172, align 8
  %msg_code173 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %169, i32 0, i32 5
  store i32 25, i32* %msg_code173, align 4
  %170 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err174 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %170, i32 0, i32 0
  %171 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err174, align 8
  %error_exit175 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %171, i32 0, i32 0
  %172 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit175, align 8
  %173 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %174 = bitcast %struct.jpeg_compress_struct* %173 to %struct.jpeg_common_struct*
  call void %172(%struct.jpeg_common_struct* %174)
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.171, %lor.lhs.false
  %175 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8
  %pub177 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %175, i32 0, i32 0
  %color_convert178 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub177, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @null_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert178, align 8
  br label %sw.epilog.179

sw.epilog.179:                                    ; preds = %if.end.176, %if.end.163, %if.end.133, %if.end.113, %if.end.83, %if.end.63
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @null_method(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @grayscale_convert(%struct.jpeg_compress_struct* %cinfo, i8** %input_buf, i8*** %output_buf, i32 %output_row, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8***, align 8
  %output_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  %instride = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i8** %input_buf, i8*** %input_buf.addr, align 8
  store i8*** %output_buf, i8**** %output_buf.addr, align 8
  store i32 %output_row, i32* %output_row.addr, align 4
  store i32 %num_rows, i32* %num_rows.addr, align 4
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 6
  %1 = load i32, i32* %image_width, align 4
  store i32 %1, i32* %num_cols, align 4
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 8
  %3 = load i32, i32* %input_components, align 4
  store i32 %3, i32* %instride, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %4 = load i32, i32* %num_rows.addr, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %num_rows.addr, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8**, i8*** %input_buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %5, i32 1
  store i8** %incdec.ptr, i8*** %input_buf.addr, align 8
  %6 = load i8*, i8** %5, align 8
  store i8* %6, i8** %inptr, align 8
  %7 = load i32, i32* %output_row.addr, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load i8***, i8**** %output_buf.addr, align 8
  %arrayidx = getelementptr inbounds i8**, i8*** %8, i64 0
  %9 = load i8**, i8*** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %9, i64 %idxprom
  %10 = load i8*, i8** %arrayidx1, align 8
  store i8* %10, i8** %outptr, align 8
  %11 = load i32, i32* %output_row.addr, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %output_row.addr, align 4
  store i32 0, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %12 = load i32, i32* %col, align 4
  %13 = load i32, i32* %num_cols, align 4
  %cmp2 = icmp ult i32 %12, %13
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i8*, i8** %inptr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx3, align 1
  %16 = load i32, i32* %col, align 4
  %idxprom4 = zext i32 %16 to i64
  %17 = load i8*, i8** %outptr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %17, i64 %idxprom4
  store i8 %15, i8* %arrayidx5, align 1
  %18 = load i32, i32* %instride, align 4
  %19 = load i8*, i8** %inptr, align 8
  %idx.ext = sext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %idx.ext
  store i8* %add.ptr, i8** %inptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %col, align 4
  %inc6 = add i32 %20, 1
  store i32 %inc6, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rgb_ycc_start(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %cconvert = alloca %struct.my_color_converter*, align 8
  %rgb_ycc_tab = alloca i64*, align 8
  %i = alloca i64, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cconvert1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 56
  %1 = load %struct.jpeg_color_converter*, %struct.jpeg_color_converter** %cconvert1, align 8
  %2 = bitcast %struct.jpeg_color_converter* %1 to %struct.my_color_converter*
  store %struct.my_color_converter* %2, %struct.my_color_converter** %cconvert, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 1
  %4 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %4, i32 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %7 = bitcast %struct.jpeg_compress_struct* %6 to %struct.jpeg_common_struct*
  %call = call i8* %5(%struct.jpeg_common_struct* %7, i32 1, i64 16384)
  %8 = bitcast i8* %call to i64*
  store i64* %8, i64** %rgb_ycc_tab, align 8
  %9 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8
  %rgb_ycc_tab2 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %9, i32 0, i32 1
  store i64* %8, i64** %rgb_ycc_tab2, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i64, i64* %i, align 8
  %cmp = icmp sle i64 %10, 255
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i64, i64* %i, align 8
  %mul = mul nsw i64 19595, %11
  %12 = load i64, i64* %i, align 8
  %add = add nsw i64 %12, 0
  %13 = load i64*, i64** %rgb_ycc_tab, align 8
  %arrayidx = getelementptr inbounds i64, i64* %13, i64 %add
  store i64 %mul, i64* %arrayidx, align 8
  %14 = load i64, i64* %i, align 8
  %mul3 = mul nsw i64 38470, %14
  %15 = load i64, i64* %i, align 8
  %add4 = add nsw i64 %15, 256
  %16 = load i64*, i64** %rgb_ycc_tab, align 8
  %arrayidx5 = getelementptr inbounds i64, i64* %16, i64 %add4
  store i64 %mul3, i64* %arrayidx5, align 8
  %17 = load i64, i64* %i, align 8
  %mul6 = mul nsw i64 7471, %17
  %add7 = add nsw i64 %mul6, 32768
  %18 = load i64, i64* %i, align 8
  %add8 = add nsw i64 %18, 512
  %19 = load i64*, i64** %rgb_ycc_tab, align 8
  %arrayidx9 = getelementptr inbounds i64, i64* %19, i64 %add8
  store i64 %add7, i64* %arrayidx9, align 8
  %20 = load i64, i64* %i, align 8
  %mul10 = mul nsw i64 -11059, %20
  %21 = load i64, i64* %i, align 8
  %add11 = add nsw i64 %21, 768
  %22 = load i64*, i64** %rgb_ycc_tab, align 8
  %arrayidx12 = getelementptr inbounds i64, i64* %22, i64 %add11
  store i64 %mul10, i64* %arrayidx12, align 8
  %23 = load i64, i64* %i, align 8
  %mul13 = mul nsw i64 -21709, %23
  %24 = load i64, i64* %i, align 8
  %add14 = add nsw i64 %24, 1024
  %25 = load i64*, i64** %rgb_ycc_tab, align 8
  %arrayidx15 = getelementptr inbounds i64, i64* %25, i64 %add14
  store i64 %mul13, i64* %arrayidx15, align 8
  %26 = load i64, i64* %i, align 8
  %mul16 = mul nsw i64 32768, %26
  %add17 = add nsw i64 %mul16, 8388608
  %add18 = add nsw i64 %add17, 32768
  %sub = sub nsw i64 %add18, 1
  %27 = load i64, i64* %i, align 8
  %add19 = add nsw i64 %27, 1280
  %28 = load i64*, i64** %rgb_ycc_tab, align 8
  %arrayidx20 = getelementptr inbounds i64, i64* %28, i64 %add19
  store i64 %sub, i64* %arrayidx20, align 8
  %29 = load i64, i64* %i, align 8
  %mul21 = mul nsw i64 -27439, %29
  %30 = load i64, i64* %i, align 8
  %add22 = add nsw i64 %30, 1536
  %31 = load i64*, i64** %rgb_ycc_tab, align 8
  %arrayidx23 = getelementptr inbounds i64, i64* %31, i64 %add22
  store i64 %mul21, i64* %arrayidx23, align 8
  %32 = load i64, i64* %i, align 8
  %mul24 = mul nsw i64 -5329, %32
  %33 = load i64, i64* %i, align 8
  %add25 = add nsw i64 %33, 1792
  %34 = load i64*, i64** %rgb_ycc_tab, align 8
  %arrayidx26 = getelementptr inbounds i64, i64* %34, i64 %add25
  store i64 %mul24, i64* %arrayidx26, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i64, i64* %i, align 8
  %inc = add nsw i64 %35, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rgb_gray_convert(%struct.jpeg_compress_struct* %cinfo, i8** %input_buf, i8*** %output_buf, i32 %output_row, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8***, align 8
  %output_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %cconvert = alloca %struct.my_color_converter*, align 8
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %ctab = alloca i64*, align 8
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i8** %input_buf, i8*** %input_buf.addr, align 8
  store i8*** %output_buf, i8**** %output_buf.addr, align 8
  store i32 %output_row, i32* %output_row.addr, align 4
  store i32 %num_rows, i32* %num_rows.addr, align 4
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cconvert1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 56
  %1 = load %struct.jpeg_color_converter*, %struct.jpeg_color_converter** %cconvert1, align 8
  %2 = bitcast %struct.jpeg_color_converter* %1 to %struct.my_color_converter*
  store %struct.my_color_converter* %2, %struct.my_color_converter** %cconvert, align 8
  %3 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8
  %rgb_ycc_tab = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %3, i32 0, i32 1
  %4 = load i64*, i64** %rgb_ycc_tab, align 8
  store i64* %4, i64** %ctab, align 8
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 6
  %6 = load i32, i32* %image_width, align 4
  store i32 %6, i32* %num_cols, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %7 = load i32, i32* %num_rows.addr, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %num_rows.addr, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8**, i8*** %input_buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %8, i32 1
  store i8** %incdec.ptr, i8*** %input_buf.addr, align 8
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %inptr, align 8
  %10 = load i32, i32* %output_row.addr, align 4
  %idxprom = zext i32 %10 to i64
  %11 = load i8***, i8**** %output_buf.addr, align 8
  %arrayidx = getelementptr inbounds i8**, i8*** %11, i64 0
  %12 = load i8**, i8*** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %12, i64 %idxprom
  %13 = load i8*, i8** %arrayidx2, align 8
  store i8* %13, i8** %outptr, align 8
  %14 = load i32, i32* %output_row.addr, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %output_row.addr, align 4
  store i32 0, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %15 = load i32, i32* %col, align 4
  %16 = load i32, i32* %num_cols, align 4
  %cmp3 = icmp ult i32 %15, %16
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i8*, i8** %inptr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx4, align 1
  %conv = zext i8 %18 to i32
  store i32 %conv, i32* %r, align 4
  %19 = load i8*, i8** %inptr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %20 to i32
  store i32 %conv6, i32* %g, align 4
  %21 = load i8*, i8** %inptr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %21, i64 2
  %22 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %22 to i32
  store i32 %conv8, i32* %b, align 4
  %23 = load i8*, i8** %inptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 3
  store i8* %add.ptr, i8** %inptr, align 8
  %24 = load i32, i32* %r, align 4
  %add = add nsw i32 %24, 0
  %idxprom9 = sext i32 %add to i64
  %25 = load i64*, i64** %ctab, align 8
  %arrayidx10 = getelementptr inbounds i64, i64* %25, i64 %idxprom9
  %26 = load i64, i64* %arrayidx10, align 8
  %27 = load i32, i32* %g, align 4
  %add11 = add nsw i32 %27, 256
  %idxprom12 = sext i32 %add11 to i64
  %28 = load i64*, i64** %ctab, align 8
  %arrayidx13 = getelementptr inbounds i64, i64* %28, i64 %idxprom12
  %29 = load i64, i64* %arrayidx13, align 8
  %add14 = add nsw i64 %26, %29
  %30 = load i32, i32* %b, align 4
  %add15 = add nsw i32 %30, 512
  %idxprom16 = sext i32 %add15 to i64
  %31 = load i64*, i64** %ctab, align 8
  %arrayidx17 = getelementptr inbounds i64, i64* %31, i64 %idxprom16
  %32 = load i64, i64* %arrayidx17, align 8
  %add18 = add nsw i64 %add14, %32
  %shr = ashr i64 %add18, 16
  %conv19 = trunc i64 %shr to i8
  %33 = load i32, i32* %col, align 4
  %idxprom20 = zext i32 %33 to i64
  %34 = load i8*, i8** %outptr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %34, i64 %idxprom20
  store i8 %conv19, i8* %arrayidx21, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %col, align 4
  %inc22 = add i32 %35, 1
  store i32 %inc22, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @null_convert(%struct.jpeg_compress_struct* %cinfo, i8** %input_buf, i8*** %output_buf, i32 %output_row, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8***, align 8
  %output_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %col = alloca i32, align 4
  %ci = alloca i32, align 4
  %nc = alloca i32, align 4
  %num_cols = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i8** %input_buf, i8*** %input_buf.addr, align 8
  store i8*** %output_buf, i8**** %output_buf.addr, align 8
  store i32 %output_row, i32* %output_row.addr, align 4
  store i32 %num_rows, i32* %num_rows.addr, align 4
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 12
  %1 = load i32, i32* %num_components, align 4
  store i32 %1, i32* %nc, align 4
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 6
  %3 = load i32, i32* %image_width, align 4
  store i32 %3, i32* %num_cols, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.13, %entry
  %4 = load i32, i32* %num_rows.addr, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %num_rows.addr, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %while.body
  %5 = load i32, i32* %ci, align 4
  %6 = load i32, i32* %nc, align 4
  %cmp1 = icmp slt i32 %5, %6
  br i1 %cmp1, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %7 = load i8**, i8*** %input_buf.addr, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %inptr, align 8
  %9 = load i32, i32* %output_row.addr, align 4
  %idxprom = zext i32 %9 to i64
  %10 = load i32, i32* %ci, align 4
  %idxprom2 = sext i32 %10 to i64
  %11 = load i8***, i8**** %output_buf.addr, align 8
  %arrayidx = getelementptr inbounds i8**, i8*** %11, i64 %idxprom2
  %12 = load i8**, i8*** %arrayidx, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %12, i64 %idxprom
  %13 = load i8*, i8** %arrayidx3, align 8
  store i8* %13, i8** %outptr, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %14 = load i32, i32* %col, align 4
  %15 = load i32, i32* %num_cols, align 4
  %cmp5 = icmp ult i32 %14, %15
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %16 = load i32, i32* %ci, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = load i8*, i8** %inptr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %17, i64 %idxprom7
  %18 = load i8, i8* %arrayidx8, align 1
  %19 = load i32, i32* %col, align 4
  %idxprom9 = zext i32 %19 to i64
  %20 = load i8*, i8** %outptr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %20, i64 %idxprom9
  store i8 %18, i8* %arrayidx10, align 1
  %21 = load i32, i32* %nc, align 4
  %22 = load i8*, i8** %inptr, align 8
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr, i8** %inptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %23 = load i32, i32* %col, align 4
  %inc = add i32 %23, 1
  store i32 %inc, i32* %col, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %24 = load i32, i32* %ci, align 4
  %inc12 = add nsw i32 %24, 1
  store i32 %inc12, i32* %ci, align 4
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  %25 = load i8**, i8*** %input_buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %25, i32 1
  store i8** %incdec.ptr, i8*** %input_buf.addr, align 8
  %26 = load i32, i32* %output_row.addr, align 4
  %inc14 = add i32 %26, 1
  store i32 %inc14, i32* %output_row.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rgb_ycc_convert(%struct.jpeg_compress_struct* %cinfo, i8** %input_buf, i8*** %output_buf, i32 %output_row, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8***, align 8
  %output_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %cconvert = alloca %struct.my_color_converter*, align 8
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %ctab = alloca i64*, align 8
  %inptr = alloca i8*, align 8
  %outptr0 = alloca i8*, align 8
  %outptr1 = alloca i8*, align 8
  %outptr2 = alloca i8*, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i8** %input_buf, i8*** %input_buf.addr, align 8
  store i8*** %output_buf, i8**** %output_buf.addr, align 8
  store i32 %output_row, i32* %output_row.addr, align 4
  store i32 %num_rows, i32* %num_rows.addr, align 4
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cconvert1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 56
  %1 = load %struct.jpeg_color_converter*, %struct.jpeg_color_converter** %cconvert1, align 8
  %2 = bitcast %struct.jpeg_color_converter* %1 to %struct.my_color_converter*
  store %struct.my_color_converter* %2, %struct.my_color_converter** %cconvert, align 8
  %3 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8
  %rgb_ycc_tab = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %3, i32 0, i32 1
  %4 = load i64*, i64** %rgb_ycc_tab, align 8
  store i64* %4, i64** %ctab, align 8
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 6
  %6 = load i32, i32* %image_width, align 4
  store i32 %6, i32* %num_cols, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %7 = load i32, i32* %num_rows.addr, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %num_rows.addr, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8**, i8*** %input_buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %8, i32 1
  store i8** %incdec.ptr, i8*** %input_buf.addr, align 8
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %inptr, align 8
  %10 = load i32, i32* %output_row.addr, align 4
  %idxprom = zext i32 %10 to i64
  %11 = load i8***, i8**** %output_buf.addr, align 8
  %arrayidx = getelementptr inbounds i8**, i8*** %11, i64 0
  %12 = load i8**, i8*** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %12, i64 %idxprom
  %13 = load i8*, i8** %arrayidx2, align 8
  store i8* %13, i8** %outptr0, align 8
  %14 = load i32, i32* %output_row.addr, align 4
  %idxprom3 = zext i32 %14 to i64
  %15 = load i8***, i8**** %output_buf.addr, align 8
  %arrayidx4 = getelementptr inbounds i8**, i8*** %15, i64 1
  %16 = load i8**, i8*** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %16, i64 %idxprom3
  %17 = load i8*, i8** %arrayidx5, align 8
  store i8* %17, i8** %outptr1, align 8
  %18 = load i32, i32* %output_row.addr, align 4
  %idxprom6 = zext i32 %18 to i64
  %19 = load i8***, i8**** %output_buf.addr, align 8
  %arrayidx7 = getelementptr inbounds i8**, i8*** %19, i64 2
  %20 = load i8**, i8*** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %20, i64 %idxprom6
  %21 = load i8*, i8** %arrayidx8, align 8
  store i8* %21, i8** %outptr2, align 8
  %22 = load i32, i32* %output_row.addr, align 4
  %inc = add i32 %22, 1
  store i32 %inc, i32* %output_row.addr, align 4
  store i32 0, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %23 = load i32, i32* %col, align 4
  %24 = load i32, i32* %num_cols, align 4
  %cmp9 = icmp ult i32 %23, %24
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i8*, i8** %inptr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx10, align 1
  %conv = zext i8 %26 to i32
  store i32 %conv, i32* %r, align 4
  %27 = load i8*, i8** %inptr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %28 to i32
  store i32 %conv12, i32* %g, align 4
  %29 = load i8*, i8** %inptr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %29, i64 2
  %30 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %30 to i32
  store i32 %conv14, i32* %b, align 4
  %31 = load i8*, i8** %inptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 3
  store i8* %add.ptr, i8** %inptr, align 8
  %32 = load i32, i32* %r, align 4
  %add = add nsw i32 %32, 0
  %idxprom15 = sext i32 %add to i64
  %33 = load i64*, i64** %ctab, align 8
  %arrayidx16 = getelementptr inbounds i64, i64* %33, i64 %idxprom15
  %34 = load i64, i64* %arrayidx16, align 8
  %35 = load i32, i32* %g, align 4
  %add17 = add nsw i32 %35, 256
  %idxprom18 = sext i32 %add17 to i64
  %36 = load i64*, i64** %ctab, align 8
  %arrayidx19 = getelementptr inbounds i64, i64* %36, i64 %idxprom18
  %37 = load i64, i64* %arrayidx19, align 8
  %add20 = add nsw i64 %34, %37
  %38 = load i32, i32* %b, align 4
  %add21 = add nsw i32 %38, 512
  %idxprom22 = sext i32 %add21 to i64
  %39 = load i64*, i64** %ctab, align 8
  %arrayidx23 = getelementptr inbounds i64, i64* %39, i64 %idxprom22
  %40 = load i64, i64* %arrayidx23, align 8
  %add24 = add nsw i64 %add20, %40
  %shr = ashr i64 %add24, 16
  %conv25 = trunc i64 %shr to i8
  %41 = load i32, i32* %col, align 4
  %idxprom26 = zext i32 %41 to i64
  %42 = load i8*, i8** %outptr0, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %42, i64 %idxprom26
  store i8 %conv25, i8* %arrayidx27, align 1
  %43 = load i32, i32* %r, align 4
  %add28 = add nsw i32 %43, 768
  %idxprom29 = sext i32 %add28 to i64
  %44 = load i64*, i64** %ctab, align 8
  %arrayidx30 = getelementptr inbounds i64, i64* %44, i64 %idxprom29
  %45 = load i64, i64* %arrayidx30, align 8
  %46 = load i32, i32* %g, align 4
  %add31 = add nsw i32 %46, 1024
  %idxprom32 = sext i32 %add31 to i64
  %47 = load i64*, i64** %ctab, align 8
  %arrayidx33 = getelementptr inbounds i64, i64* %47, i64 %idxprom32
  %48 = load i64, i64* %arrayidx33, align 8
  %add34 = add nsw i64 %45, %48
  %49 = load i32, i32* %b, align 4
  %add35 = add nsw i32 %49, 1280
  %idxprom36 = sext i32 %add35 to i64
  %50 = load i64*, i64** %ctab, align 8
  %arrayidx37 = getelementptr inbounds i64, i64* %50, i64 %idxprom36
  %51 = load i64, i64* %arrayidx37, align 8
  %add38 = add nsw i64 %add34, %51
  %shr39 = ashr i64 %add38, 16
  %conv40 = trunc i64 %shr39 to i8
  %52 = load i32, i32* %col, align 4
  %idxprom41 = zext i32 %52 to i64
  %53 = load i8*, i8** %outptr1, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %53, i64 %idxprom41
  store i8 %conv40, i8* %arrayidx42, align 1
  %54 = load i32, i32* %r, align 4
  %add43 = add nsw i32 %54, 1280
  %idxprom44 = sext i32 %add43 to i64
  %55 = load i64*, i64** %ctab, align 8
  %arrayidx45 = getelementptr inbounds i64, i64* %55, i64 %idxprom44
  %56 = load i64, i64* %arrayidx45, align 8
  %57 = load i32, i32* %g, align 4
  %add46 = add nsw i32 %57, 1536
  %idxprom47 = sext i32 %add46 to i64
  %58 = load i64*, i64** %ctab, align 8
  %arrayidx48 = getelementptr inbounds i64, i64* %58, i64 %idxprom47
  %59 = load i64, i64* %arrayidx48, align 8
  %add49 = add nsw i64 %56, %59
  %60 = load i32, i32* %b, align 4
  %add50 = add nsw i32 %60, 1792
  %idxprom51 = sext i32 %add50 to i64
  %61 = load i64*, i64** %ctab, align 8
  %arrayidx52 = getelementptr inbounds i64, i64* %61, i64 %idxprom51
  %62 = load i64, i64* %arrayidx52, align 8
  %add53 = add nsw i64 %add49, %62
  %shr54 = ashr i64 %add53, 16
  %conv55 = trunc i64 %shr54 to i8
  %63 = load i32, i32* %col, align 4
  %idxprom56 = zext i32 %63 to i64
  %64 = load i8*, i8** %outptr2, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %64, i64 %idxprom56
  store i8 %conv55, i8* %arrayidx57, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %65 = load i32, i32* %col, align 4
  %inc58 = add i32 %65, 1
  store i32 %inc58, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmyk_ycck_convert(%struct.jpeg_compress_struct* %cinfo, i8** %input_buf, i8*** %output_buf, i32 %output_row, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8***, align 8
  %output_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %cconvert = alloca %struct.my_color_converter*, align 8
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %ctab = alloca i64*, align 8
  %inptr = alloca i8*, align 8
  %outptr0 = alloca i8*, align 8
  %outptr1 = alloca i8*, align 8
  %outptr2 = alloca i8*, align 8
  %outptr3 = alloca i8*, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i8** %input_buf, i8*** %input_buf.addr, align 8
  store i8*** %output_buf, i8**** %output_buf.addr, align 8
  store i32 %output_row, i32* %output_row.addr, align 4
  store i32 %num_rows, i32* %num_rows.addr, align 4
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cconvert1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 56
  %1 = load %struct.jpeg_color_converter*, %struct.jpeg_color_converter** %cconvert1, align 8
  %2 = bitcast %struct.jpeg_color_converter* %1 to %struct.my_color_converter*
  store %struct.my_color_converter* %2, %struct.my_color_converter** %cconvert, align 8
  %3 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8
  %rgb_ycc_tab = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %3, i32 0, i32 1
  %4 = load i64*, i64** %rgb_ycc_tab, align 8
  store i64* %4, i64** %ctab, align 8
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 6
  %6 = load i32, i32* %image_width, align 4
  store i32 %6, i32* %num_cols, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %7 = load i32, i32* %num_rows.addr, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %num_rows.addr, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8**, i8*** %input_buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %8, i32 1
  store i8** %incdec.ptr, i8*** %input_buf.addr, align 8
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %inptr, align 8
  %10 = load i32, i32* %output_row.addr, align 4
  %idxprom = zext i32 %10 to i64
  %11 = load i8***, i8**** %output_buf.addr, align 8
  %arrayidx = getelementptr inbounds i8**, i8*** %11, i64 0
  %12 = load i8**, i8*** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %12, i64 %idxprom
  %13 = load i8*, i8** %arrayidx2, align 8
  store i8* %13, i8** %outptr0, align 8
  %14 = load i32, i32* %output_row.addr, align 4
  %idxprom3 = zext i32 %14 to i64
  %15 = load i8***, i8**** %output_buf.addr, align 8
  %arrayidx4 = getelementptr inbounds i8**, i8*** %15, i64 1
  %16 = load i8**, i8*** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %16, i64 %idxprom3
  %17 = load i8*, i8** %arrayidx5, align 8
  store i8* %17, i8** %outptr1, align 8
  %18 = load i32, i32* %output_row.addr, align 4
  %idxprom6 = zext i32 %18 to i64
  %19 = load i8***, i8**** %output_buf.addr, align 8
  %arrayidx7 = getelementptr inbounds i8**, i8*** %19, i64 2
  %20 = load i8**, i8*** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %20, i64 %idxprom6
  %21 = load i8*, i8** %arrayidx8, align 8
  store i8* %21, i8** %outptr2, align 8
  %22 = load i32, i32* %output_row.addr, align 4
  %idxprom9 = zext i32 %22 to i64
  %23 = load i8***, i8**** %output_buf.addr, align 8
  %arrayidx10 = getelementptr inbounds i8**, i8*** %23, i64 3
  %24 = load i8**, i8*** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %24, i64 %idxprom9
  %25 = load i8*, i8** %arrayidx11, align 8
  store i8* %25, i8** %outptr3, align 8
  %26 = load i32, i32* %output_row.addr, align 4
  %inc = add i32 %26, 1
  store i32 %inc, i32* %output_row.addr, align 4
  store i32 0, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %27 = load i32, i32* %col, align 4
  %28 = load i32, i32* %num_cols, align 4
  %cmp12 = icmp ult i32 %27, %28
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i8*, i8** %inptr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %29, i64 0
  %30 = load i8, i8* %arrayidx13, align 1
  %conv = zext i8 %30 to i32
  %sub = sub nsw i32 255, %conv
  store i32 %sub, i32* %r, align 4
  %31 = load i8*, i8** %inptr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %31, i64 1
  %32 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %32 to i32
  %sub16 = sub nsw i32 255, %conv15
  store i32 %sub16, i32* %g, align 4
  %33 = load i8*, i8** %inptr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %33, i64 2
  %34 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %34 to i32
  %sub19 = sub nsw i32 255, %conv18
  store i32 %sub19, i32* %b, align 4
  %35 = load i8*, i8** %inptr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %35, i64 3
  %36 = load i8, i8* %arrayidx20, align 1
  %37 = load i32, i32* %col, align 4
  %idxprom21 = zext i32 %37 to i64
  %38 = load i8*, i8** %outptr3, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %38, i64 %idxprom21
  store i8 %36, i8* %arrayidx22, align 1
  %39 = load i8*, i8** %inptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 4
  store i8* %add.ptr, i8** %inptr, align 8
  %40 = load i32, i32* %r, align 4
  %add = add nsw i32 %40, 0
  %idxprom23 = sext i32 %add to i64
  %41 = load i64*, i64** %ctab, align 8
  %arrayidx24 = getelementptr inbounds i64, i64* %41, i64 %idxprom23
  %42 = load i64, i64* %arrayidx24, align 8
  %43 = load i32, i32* %g, align 4
  %add25 = add nsw i32 %43, 256
  %idxprom26 = sext i32 %add25 to i64
  %44 = load i64*, i64** %ctab, align 8
  %arrayidx27 = getelementptr inbounds i64, i64* %44, i64 %idxprom26
  %45 = load i64, i64* %arrayidx27, align 8
  %add28 = add nsw i64 %42, %45
  %46 = load i32, i32* %b, align 4
  %add29 = add nsw i32 %46, 512
  %idxprom30 = sext i32 %add29 to i64
  %47 = load i64*, i64** %ctab, align 8
  %arrayidx31 = getelementptr inbounds i64, i64* %47, i64 %idxprom30
  %48 = load i64, i64* %arrayidx31, align 8
  %add32 = add nsw i64 %add28, %48
  %shr = ashr i64 %add32, 16
  %conv33 = trunc i64 %shr to i8
  %49 = load i32, i32* %col, align 4
  %idxprom34 = zext i32 %49 to i64
  %50 = load i8*, i8** %outptr0, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %50, i64 %idxprom34
  store i8 %conv33, i8* %arrayidx35, align 1
  %51 = load i32, i32* %r, align 4
  %add36 = add nsw i32 %51, 768
  %idxprom37 = sext i32 %add36 to i64
  %52 = load i64*, i64** %ctab, align 8
  %arrayidx38 = getelementptr inbounds i64, i64* %52, i64 %idxprom37
  %53 = load i64, i64* %arrayidx38, align 8
  %54 = load i32, i32* %g, align 4
  %add39 = add nsw i32 %54, 1024
  %idxprom40 = sext i32 %add39 to i64
  %55 = load i64*, i64** %ctab, align 8
  %arrayidx41 = getelementptr inbounds i64, i64* %55, i64 %idxprom40
  %56 = load i64, i64* %arrayidx41, align 8
  %add42 = add nsw i64 %53, %56
  %57 = load i32, i32* %b, align 4
  %add43 = add nsw i32 %57, 1280
  %idxprom44 = sext i32 %add43 to i64
  %58 = load i64*, i64** %ctab, align 8
  %arrayidx45 = getelementptr inbounds i64, i64* %58, i64 %idxprom44
  %59 = load i64, i64* %arrayidx45, align 8
  %add46 = add nsw i64 %add42, %59
  %shr47 = ashr i64 %add46, 16
  %conv48 = trunc i64 %shr47 to i8
  %60 = load i32, i32* %col, align 4
  %idxprom49 = zext i32 %60 to i64
  %61 = load i8*, i8** %outptr1, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %61, i64 %idxprom49
  store i8 %conv48, i8* %arrayidx50, align 1
  %62 = load i32, i32* %r, align 4
  %add51 = add nsw i32 %62, 1280
  %idxprom52 = sext i32 %add51 to i64
  %63 = load i64*, i64** %ctab, align 8
  %arrayidx53 = getelementptr inbounds i64, i64* %63, i64 %idxprom52
  %64 = load i64, i64* %arrayidx53, align 8
  %65 = load i32, i32* %g, align 4
  %add54 = add nsw i32 %65, 1536
  %idxprom55 = sext i32 %add54 to i64
  %66 = load i64*, i64** %ctab, align 8
  %arrayidx56 = getelementptr inbounds i64, i64* %66, i64 %idxprom55
  %67 = load i64, i64* %arrayidx56, align 8
  %add57 = add nsw i64 %64, %67
  %68 = load i32, i32* %b, align 4
  %add58 = add nsw i32 %68, 1792
  %idxprom59 = sext i32 %add58 to i64
  %69 = load i64*, i64** %ctab, align 8
  %arrayidx60 = getelementptr inbounds i64, i64* %69, i64 %idxprom59
  %70 = load i64, i64* %arrayidx60, align 8
  %add61 = add nsw i64 %add57, %70
  %shr62 = ashr i64 %add61, 16
  %conv63 = trunc i64 %shr62 to i8
  %71 = load i32, i32* %col, align 4
  %idxprom64 = zext i32 %71 to i64
  %72 = load i8*, i8** %outptr2, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %72, i64 %idxprom64
  store i8 %conv63, i8* %arrayidx65, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %73 = load i32, i32* %col, align 4
  %inc66 = add i32 %73, 1
  store i32 %inc66, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
