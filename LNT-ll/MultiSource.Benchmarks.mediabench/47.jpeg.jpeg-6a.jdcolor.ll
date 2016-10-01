; ModuleID = './MultiSource.Benchmarks.mediabench/47.jpeg.jpeg-6a.jdcolor.bc'
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
%struct.my_color_deconverter = type { %struct.jpeg_color_deconverter, i32*, i32*, i64*, i64* }

; Function Attrs: nounwind uwtable
define void @jinit_color_deconverter(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %cconvert = alloca %struct.my_color_deconverter*, align 8
  %ci = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_decompress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 48)
  %5 = bitcast i8* %call to %struct.my_color_deconverter*
  store %struct.my_color_deconverter* %5, %struct.my_color_deconverter** %cconvert, align 8
  %6 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8
  %7 = bitcast %struct.my_color_deconverter* %6 to %struct.jpeg_color_deconverter*
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cconvert1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 82
  store %struct.jpeg_color_deconverter* %7, %struct.jpeg_color_deconverter** %cconvert1, align 8
  %9 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8
  %pub = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %9, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %pub, i32 0, i32 0
  %start_pass2 = bitcast {}** %start_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @start_pass_dcolor, void (%struct.jpeg_decompress_struct*)** %start_pass2, align 8
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 9
  %11 = load i32, i32* %jpeg_color_space, align 4
  switch i32 %11, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.4
    i32 4, label %sw.bb.13
    i32 5, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 8
  %13 = load i32, i32* %num_components, align 4
  %cmp = icmp ne i32 %13, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 5
  store i32 8, i32* %msg_code, align 4
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 0
  %18 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %20 = bitcast %struct.jpeg_decompress_struct* %19 to %struct.jpeg_common_struct*
  call void %18(%struct.jpeg_common_struct* %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry, %entry
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 8
  %22 = load i32, i32* %num_components5, align 4
  %cmp6 = icmp ne i32 %22, 3
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %sw.bb.4
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8
  %msg_code9 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i32 0, i32 5
  store i32 8, i32* %msg_code9, align 4
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8
  %error_exit11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i32 0, i32 0
  %27 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit11, align 8
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %29 = bitcast %struct.jpeg_decompress_struct* %28 to %struct.jpeg_common_struct*
  call void %27(%struct.jpeg_common_struct* %29)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %sw.bb.4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry, %entry
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 8
  %31 = load i32, i32* %num_components14, align 4
  %cmp15 = icmp ne i32 %31, 4
  br i1 %cmp15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %sw.bb.13
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err17, align 8
  %msg_code18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 5
  store i32 8, i32* %msg_code18, align 4
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err19, align 8
  %error_exit20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i32 0, i32 0
  %36 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit20, align 8
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %38 = bitcast %struct.jpeg_decompress_struct* %37 to %struct.jpeg_common_struct*
  call void %36(%struct.jpeg_common_struct* %38)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %sw.bb.13
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 8
  %40 = load i32, i32* %num_components22, align 4
  %cmp23 = icmp slt i32 %40, 1
  br i1 %cmp23, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %sw.default
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err25, align 8
  %msg_code26 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i32 0, i32 5
  store i32 8, i32* %msg_code26, align 4
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err27, align 8
  %error_exit28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i32 0, i32 0
  %45 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit28, align 8
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %47 = bitcast %struct.jpeg_decompress_struct* %46 to %struct.jpeg_common_struct*
  call void %45(%struct.jpeg_common_struct* %47)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.24, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.29, %if.end.21, %if.end.12, %if.end
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 10
  %49 = load i32, i32* %out_color_space, align 4
  switch i32 %49, label %sw.default.84 [
    i32 1, label %sw.bb.30
    i32 2, label %sw.bb.44
    i32 4, label %sw.bb.64
  ]

sw.bb.30:                                         ; preds = %sw.epilog
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 28
  store i32 1, i32* %out_color_components, align 4
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %jpeg_color_space31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 9
  %52 = load i32, i32* %jpeg_color_space31, align 4
  %cmp32 = icmp eq i32 %52, 1
  br i1 %cmp32, label %if.then.35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.30
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %jpeg_color_space33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 9
  %54 = load i32, i32* %jpeg_color_space33, align 4
  %cmp34 = icmp eq i32 %54, 3
  br i1 %cmp34, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %lor.lhs.false, %sw.bb.30
  %55 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8
  %pub36 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %55, i32 0, i32 0
  %color_convert = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %pub36, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @grayscale_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %color_convert, align 8
  store i32 1, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.35
  %56 = load i32, i32* %ci, align 4
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %57, i32 0, i32 8
  %58 = load i32, i32* %num_components37, align 4
  %cmp38 = icmp slt i32 %56, %58
  br i1 %cmp38, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %59 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %59 to i64
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %60, i32 0, i32 43
  %61 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  %arrayidx = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %61, i64 %idxprom
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx, i32 0, i32 12
  store i32 0, i32* %component_needed, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %62 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %ci, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.43

if.else:                                          ; preds = %lor.lhs.false
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %63, i32 0, i32 0
  %64 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err39, align 8
  %msg_code40 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %64, i32 0, i32 5
  store i32 25, i32* %msg_code40, align 4
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 0
  %66 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err41, align 8
  %error_exit42 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %66, i32 0, i32 0
  %67 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit42, align 8
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %69 = bitcast %struct.jpeg_decompress_struct* %68 to %struct.jpeg_common_struct*
  call void %67(%struct.jpeg_common_struct* %69)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %for.end
  br label %sw.epilog.99

sw.bb.44:                                         ; preds = %sw.epilog
  %70 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %70, i32 0, i32 28
  store i32 3, i32* %out_color_components45, align 4
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %jpeg_color_space46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 9
  %72 = load i32, i32* %jpeg_color_space46, align 4
  %cmp47 = icmp eq i32 %72, 3
  br i1 %cmp47, label %if.then.48, label %if.else.51

if.then.48:                                       ; preds = %sw.bb.44
  %73 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8
  %pub49 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %73, i32 0, i32 0
  %color_convert50 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %pub49, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @ycc_rgb_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %color_convert50, align 8
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @build_ycc_rgb_table(%struct.jpeg_decompress_struct* %74)
  br label %if.end.63

if.else.51:                                       ; preds = %sw.bb.44
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %jpeg_color_space52 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %75, i32 0, i32 9
  %76 = load i32, i32* %jpeg_color_space52, align 4
  %cmp53 = icmp eq i32 %76, 2
  br i1 %cmp53, label %if.then.54, label %if.else.57

if.then.54:                                       ; preds = %if.else.51
  %77 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8
  %pub55 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %77, i32 0, i32 0
  %color_convert56 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %pub55, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @null_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %color_convert56, align 8
  br label %if.end.62

if.else.57:                                       ; preds = %if.else.51
  %78 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %78, i32 0, i32 0
  %79 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err58, align 8
  %msg_code59 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %79, i32 0, i32 5
  store i32 25, i32* %msg_code59, align 4
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err60 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %80, i32 0, i32 0
  %81 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err60, align 8
  %error_exit61 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %81, i32 0, i32 0
  %82 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit61, align 8
  %83 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %84 = bitcast %struct.jpeg_decompress_struct* %83 to %struct.jpeg_common_struct*
  call void %82(%struct.jpeg_common_struct* %84)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.57, %if.then.54
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.48
  br label %sw.epilog.99

sw.bb.64:                                         ; preds = %sw.epilog
  %85 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %85, i32 0, i32 28
  store i32 4, i32* %out_color_components65, align 4
  %86 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %jpeg_color_space66 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %86, i32 0, i32 9
  %87 = load i32, i32* %jpeg_color_space66, align 4
  %cmp67 = icmp eq i32 %87, 5
  br i1 %cmp67, label %if.then.68, label %if.else.71

if.then.68:                                       ; preds = %sw.bb.64
  %88 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8
  %pub69 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %88, i32 0, i32 0
  %color_convert70 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %pub69, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @ycck_cmyk_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %color_convert70, align 8
  %89 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @build_ycc_rgb_table(%struct.jpeg_decompress_struct* %89)
  br label %if.end.83

if.else.71:                                       ; preds = %sw.bb.64
  %90 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %jpeg_color_space72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %90, i32 0, i32 9
  %91 = load i32, i32* %jpeg_color_space72, align 4
  %cmp73 = icmp eq i32 %91, 4
  br i1 %cmp73, label %if.then.74, label %if.else.77

if.then.74:                                       ; preds = %if.else.71
  %92 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8
  %pub75 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %92, i32 0, i32 0
  %color_convert76 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %pub75, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @null_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %color_convert76, align 8
  br label %if.end.82

if.else.77:                                       ; preds = %if.else.71
  %93 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err78 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %93, i32 0, i32 0
  %94 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err78, align 8
  %msg_code79 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %94, i32 0, i32 5
  store i32 25, i32* %msg_code79, align 4
  %95 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err80 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %95, i32 0, i32 0
  %96 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err80, align 8
  %error_exit81 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %96, i32 0, i32 0
  %97 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit81, align 8
  %98 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %99 = bitcast %struct.jpeg_decompress_struct* %98 to %struct.jpeg_common_struct*
  call void %97(%struct.jpeg_common_struct* %99)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.77, %if.then.74
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.68
  br label %sw.epilog.99

sw.default.84:                                    ; preds = %sw.epilog
  %100 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_space85 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %100, i32 0, i32 10
  %101 = load i32, i32* %out_color_space85, align 4
  %102 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %jpeg_color_space86 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %102, i32 0, i32 9
  %103 = load i32, i32* %jpeg_color_space86, align 4
  %cmp87 = icmp eq i32 %101, %103
  br i1 %cmp87, label %if.then.88, label %if.else.93

if.then.88:                                       ; preds = %sw.default.84
  %104 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components89 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %104, i32 0, i32 8
  %105 = load i32, i32* %num_components89, align 4
  %106 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components90 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %106, i32 0, i32 28
  store i32 %105, i32* %out_color_components90, align 4
  %107 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8
  %pub91 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %107, i32 0, i32 0
  %color_convert92 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %pub91, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @null_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %color_convert92, align 8
  br label %if.end.98

if.else.93:                                       ; preds = %sw.default.84
  %108 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err94 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %108, i32 0, i32 0
  %109 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err94, align 8
  %msg_code95 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %109, i32 0, i32 5
  store i32 25, i32* %msg_code95, align 4
  %110 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err96 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %110, i32 0, i32 0
  %111 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err96, align 8
  %error_exit97 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %111, i32 0, i32 0
  %112 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit97, align 8
  %113 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %114 = bitcast %struct.jpeg_decompress_struct* %113 to %struct.jpeg_common_struct*
  call void %112(%struct.jpeg_common_struct* %114)
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.93, %if.then.88
  br label %sw.epilog.99

sw.epilog.99:                                     ; preds = %if.end.98, %if.end.83, %if.end.63, %if.end.43
  %115 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %115, i32 0, i32 19
  %116 = load i32, i32* %quantize_colors, align 4
  %tobool = icmp ne i32 %116, 0
  br i1 %tobool, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %sw.epilog.99
  %117 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %117, i32 0, i32 29
  store i32 1, i32* %output_components, align 4
  br label %if.end.104

if.else.101:                                      ; preds = %sw.epilog.99
  %118 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components102 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %118, i32 0, i32 28
  %119 = load i32, i32* %out_color_components102, align 4
  %120 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_components103 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %120, i32 0, i32 29
  store i32 %119, i32* %output_components103, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.101, %if.then.100
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_dcolor(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @grayscale_convert(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32 %input_row, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %input_row.addr = alloca i32, align 4
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i8*** %input_buf, i8**** %input_buf.addr, align 8
  store i32 %input_row, i32* %input_row.addr, align 4
  store i8** %output_buf, i8*** %output_buf.addr, align 8
  store i32 %num_rows, i32* %num_rows.addr, align 4
  %0 = load i8***, i8**** %input_buf.addr, align 8
  %arrayidx = getelementptr inbounds i8**, i8*** %0, i64 0
  %1 = load i8**, i8*** %arrayidx, align 8
  %2 = load i32, i32* %input_row.addr, align 4
  %3 = load i8**, i8*** %output_buf.addr, align 8
  %4 = load i32, i32* %num_rows.addr, align 4
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 26
  %6 = load i32, i32* %output_width, align 4
  call void @jcopy_sample_rows(i8** %1, i32 %2, i8** %3, i32 0, i32 %4, i32 %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ycc_rgb_convert(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32 %input_row, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %input_row.addr = alloca i32, align 4
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %cconvert = alloca %struct.my_color_deconverter*, align 8
  %y = alloca i32, align 4
  %cb = alloca i32, align 4
  %cr = alloca i32, align 4
  %outptr = alloca i8*, align 8
  %inptr0 = alloca i8*, align 8
  %inptr1 = alloca i8*, align 8
  %inptr2 = alloca i8*, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  %range_limit = alloca i8*, align 8
  %Crrtab = alloca i32*, align 8
  %Cbbtab = alloca i32*, align 8
  %Crgtab = alloca i64*, align 8
  %Cbgtab = alloca i64*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i8*** %input_buf, i8**** %input_buf.addr, align 8
  store i32 %input_row, i32* %input_row.addr, align 4
  store i8** %output_buf, i8*** %output_buf.addr, align 8
  store i32 %num_rows, i32* %num_rows.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cconvert1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 82
  %1 = load %struct.jpeg_color_deconverter*, %struct.jpeg_color_deconverter** %cconvert1, align 8
  %2 = bitcast %struct.jpeg_color_deconverter* %1 to %struct.my_color_deconverter*
  store %struct.my_color_deconverter* %2, %struct.my_color_deconverter** %cconvert, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 26
  %4 = load i32, i32* %output_width, align 4
  store i32 %4, i32* %num_cols, align 4
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 61
  %6 = load i8*, i8** %sample_range_limit, align 8
  store i8* %6, i8** %range_limit, align 8
  %7 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8
  %Cr_r_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %7, i32 0, i32 1
  %8 = load i32*, i32** %Cr_r_tab, align 8
  store i32* %8, i32** %Crrtab, align 8
  %9 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8
  %Cb_b_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %9, i32 0, i32 2
  %10 = load i32*, i32** %Cb_b_tab, align 8
  store i32* %10, i32** %Cbbtab, align 8
  %11 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8
  %Cr_g_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %11, i32 0, i32 3
  %12 = load i64*, i64** %Cr_g_tab, align 8
  store i64* %12, i64** %Crgtab, align 8
  %13 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8
  %Cb_g_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %13, i32 0, i32 4
  %14 = load i64*, i64** %Cb_g_tab, align 8
  store i64* %14, i64** %Cbgtab, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %15 = load i32, i32* %num_rows.addr, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %num_rows.addr, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i32, i32* %input_row.addr, align 4
  %idxprom = zext i32 %16 to i64
  %17 = load i8***, i8**** %input_buf.addr, align 8
  %arrayidx = getelementptr inbounds i8**, i8*** %17, i64 0
  %18 = load i8**, i8*** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %18, i64 %idxprom
  %19 = load i8*, i8** %arrayidx2, align 8
  store i8* %19, i8** %inptr0, align 8
  %20 = load i32, i32* %input_row.addr, align 4
  %idxprom3 = zext i32 %20 to i64
  %21 = load i8***, i8**** %input_buf.addr, align 8
  %arrayidx4 = getelementptr inbounds i8**, i8*** %21, i64 1
  %22 = load i8**, i8*** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %22, i64 %idxprom3
  %23 = load i8*, i8** %arrayidx5, align 8
  store i8* %23, i8** %inptr1, align 8
  %24 = load i32, i32* %input_row.addr, align 4
  %idxprom6 = zext i32 %24 to i64
  %25 = load i8***, i8**** %input_buf.addr, align 8
  %arrayidx7 = getelementptr inbounds i8**, i8*** %25, i64 2
  %26 = load i8**, i8*** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %26, i64 %idxprom6
  %27 = load i8*, i8** %arrayidx8, align 8
  store i8* %27, i8** %inptr2, align 8
  %28 = load i32, i32* %input_row.addr, align 4
  %inc = add i32 %28, 1
  store i32 %inc, i32* %input_row.addr, align 4
  %29 = load i8**, i8*** %output_buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %29, i32 1
  store i8** %incdec.ptr, i8*** %output_buf.addr, align 8
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %outptr, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %31 = load i32, i32* %col, align 4
  %32 = load i32, i32* %num_cols, align 4
  %cmp9 = icmp ult i32 %31, %32
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %col, align 4
  %idxprom10 = zext i32 %33 to i64
  %34 = load i8*, i8** %inptr0, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %34, i64 %idxprom10
  %35 = load i8, i8* %arrayidx11, align 1
  %conv = zext i8 %35 to i32
  store i32 %conv, i32* %y, align 4
  %36 = load i32, i32* %col, align 4
  %idxprom12 = zext i32 %36 to i64
  %37 = load i8*, i8** %inptr1, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %37, i64 %idxprom12
  %38 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %38 to i32
  store i32 %conv14, i32* %cb, align 4
  %39 = load i32, i32* %col, align 4
  %idxprom15 = zext i32 %39 to i64
  %40 = load i8*, i8** %inptr2, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %40, i64 %idxprom15
  %41 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %41 to i32
  store i32 %conv17, i32* %cr, align 4
  %42 = load i32, i32* %y, align 4
  %43 = load i32, i32* %cr, align 4
  %idxprom18 = sext i32 %43 to i64
  %44 = load i32*, i32** %Crrtab, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %44, i64 %idxprom18
  %45 = load i32, i32* %arrayidx19, align 4
  %add = add nsw i32 %42, %45
  %idxprom20 = sext i32 %add to i64
  %46 = load i8*, i8** %range_limit, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %46, i64 %idxprom20
  %47 = load i8, i8* %arrayidx21, align 1
  %48 = load i8*, i8** %outptr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %48, i64 0
  store i8 %47, i8* %arrayidx22, align 1
  %49 = load i32, i32* %y, align 4
  %50 = load i32, i32* %cb, align 4
  %idxprom23 = sext i32 %50 to i64
  %51 = load i64*, i64** %Cbgtab, align 8
  %arrayidx24 = getelementptr inbounds i64, i64* %51, i64 %idxprom23
  %52 = load i64, i64* %arrayidx24, align 8
  %53 = load i32, i32* %cr, align 4
  %idxprom25 = sext i32 %53 to i64
  %54 = load i64*, i64** %Crgtab, align 8
  %arrayidx26 = getelementptr inbounds i64, i64* %54, i64 %idxprom25
  %55 = load i64, i64* %arrayidx26, align 8
  %add27 = add nsw i64 %52, %55
  %shr = ashr i64 %add27, 16
  %conv28 = trunc i64 %shr to i32
  %add29 = add nsw i32 %49, %conv28
  %idxprom30 = sext i32 %add29 to i64
  %56 = load i8*, i8** %range_limit, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %56, i64 %idxprom30
  %57 = load i8, i8* %arrayidx31, align 1
  %58 = load i8*, i8** %outptr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %58, i64 1
  store i8 %57, i8* %arrayidx32, align 1
  %59 = load i32, i32* %y, align 4
  %60 = load i32, i32* %cb, align 4
  %idxprom33 = sext i32 %60 to i64
  %61 = load i32*, i32** %Cbbtab, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %61, i64 %idxprom33
  %62 = load i32, i32* %arrayidx34, align 4
  %add35 = add nsw i32 %59, %62
  %idxprom36 = sext i32 %add35 to i64
  %63 = load i8*, i8** %range_limit, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %63, i64 %idxprom36
  %64 = load i8, i8* %arrayidx37, align 1
  %65 = load i8*, i8** %outptr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %65, i64 2
  store i8 %64, i8* %arrayidx38, align 1
  %66 = load i8*, i8** %outptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %66, i64 3
  store i8* %add.ptr, i8** %outptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %67 = load i32, i32* %col, align 4
  %inc39 = add i32 %67, 1
  store i32 %inc39, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @build_ycc_rgb_table(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %cconvert = alloca %struct.my_color_deconverter*, align 8
  %i = alloca i32, align 4
  %x = alloca i64, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cconvert1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 82
  %1 = load %struct.jpeg_color_deconverter*, %struct.jpeg_color_deconverter** %cconvert1, align 8
  %2 = bitcast %struct.jpeg_color_deconverter* %1 to %struct.my_color_deconverter*
  store %struct.my_color_deconverter* %2, %struct.my_color_deconverter** %cconvert, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 1
  %4 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %4, i32 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %7 = bitcast %struct.jpeg_decompress_struct* %6 to %struct.jpeg_common_struct*
  %call = call i8* %5(%struct.jpeg_common_struct* %7, i32 1, i64 1024)
  %8 = bitcast i8* %call to i32*
  %9 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8
  %Cr_r_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %9, i32 0, i32 1
  store i32* %8, i32** %Cr_r_tab, align 8
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 1
  %11 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem2, align 8
  %alloc_small3 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %11, i32 0, i32 0
  %12 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small3, align 8
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %14 = bitcast %struct.jpeg_decompress_struct* %13 to %struct.jpeg_common_struct*
  %call4 = call i8* %12(%struct.jpeg_common_struct* %14, i32 1, i64 1024)
  %15 = bitcast i8* %call4 to i32*
  %16 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8
  %Cb_b_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %16, i32 0, i32 2
  store i32* %15, i32** %Cb_b_tab, align 8
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 1
  %18 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem5, align 8
  %alloc_small6 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %18, i32 0, i32 0
  %19 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small6, align 8
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %21 = bitcast %struct.jpeg_decompress_struct* %20 to %struct.jpeg_common_struct*
  %call7 = call i8* %19(%struct.jpeg_common_struct* %21, i32 1, i64 2048)
  %22 = bitcast i8* %call7 to i64*
  %23 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8
  %Cr_g_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %23, i32 0, i32 3
  store i64* %22, i64** %Cr_g_tab, align 8
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 1
  %25 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem8, align 8
  %alloc_small9 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %25, i32 0, i32 0
  %26 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small9, align 8
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %28 = bitcast %struct.jpeg_decompress_struct* %27 to %struct.jpeg_common_struct*
  %call10 = call i8* %26(%struct.jpeg_common_struct* %28, i32 1, i64 2048)
  %29 = bitcast i8* %call10 to i64*
  %30 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8
  %Cb_g_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %30, i32 0, i32 4
  store i64* %29, i64** %Cb_g_tab, align 8
  store i32 0, i32* %i, align 4
  store i64 -128, i64* %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %31 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %31, 255
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i64, i64* %x, align 8
  %mul = mul nsw i64 91881, %32
  %add = add nsw i64 %mul, 32768
  %shr = ashr i64 %add, 16
  %conv = trunc i64 %shr to i32
  %33 = load i32, i32* %i, align 4
  %idxprom = sext i32 %33 to i64
  %34 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8
  %Cr_r_tab11 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %34, i32 0, i32 1
  %35 = load i32*, i32** %Cr_r_tab11, align 8
  %arrayidx = getelementptr inbounds i32, i32* %35, i64 %idxprom
  store i32 %conv, i32* %arrayidx, align 4
  %36 = load i64, i64* %x, align 8
  %mul12 = mul nsw i64 116130, %36
  %add13 = add nsw i64 %mul12, 32768
  %shr14 = ashr i64 %add13, 16
  %conv15 = trunc i64 %shr14 to i32
  %37 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %37 to i64
  %38 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8
  %Cb_b_tab17 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %38, i32 0, i32 2
  %39 = load i32*, i32** %Cb_b_tab17, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %39, i64 %idxprom16
  store i32 %conv15, i32* %arrayidx18, align 4
  %40 = load i64, i64* %x, align 8
  %mul19 = mul nsw i64 -46802, %40
  %41 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %41 to i64
  %42 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8
  %Cr_g_tab21 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %42, i32 0, i32 3
  %43 = load i64*, i64** %Cr_g_tab21, align 8
  %arrayidx22 = getelementptr inbounds i64, i64* %43, i64 %idxprom20
  store i64 %mul19, i64* %arrayidx22, align 8
  %44 = load i64, i64* %x, align 8
  %mul23 = mul nsw i64 -22554, %44
  %add24 = add nsw i64 %mul23, 32768
  %45 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %45 to i64
  %46 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8
  %Cb_g_tab26 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %46, i32 0, i32 4
  %47 = load i64*, i64** %Cb_g_tab26, align 8
  %arrayidx27 = getelementptr inbounds i64, i64* %47, i64 %idxprom25
  store i64 %add24, i64* %arrayidx27, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i32, i32* %i, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %i, align 4
  %49 = load i64, i64* %x, align 8
  %inc28 = add nsw i64 %49, 1
  store i64 %inc28, i64* %x, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @null_convert(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32 %input_row, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %input_row.addr = alloca i32, align 4
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %count = alloca i32, align 4
  %num_components = alloca i32, align 4
  %num_cols = alloca i32, align 4
  %ci = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i8*** %input_buf, i8**** %input_buf.addr, align 8
  store i32 %input_row, i32* %input_row.addr, align 4
  store i8** %output_buf, i8*** %output_buf.addr, align 8
  store i32 %num_rows, i32* %num_rows.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 8
  %1 = load i32, i32* %num_components1, align 4
  store i32 %1, i32* %num_components, align 4
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 26
  %3 = load i32, i32* %output_width, align 4
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

for.cond:                                         ; preds = %for.inc.12, %while.body
  %5 = load i32, i32* %ci, align 4
  %6 = load i32, i32* %num_components, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %input_row.addr, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load i32, i32* %ci, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load i8***, i8**** %input_buf.addr, align 8
  %arrayidx = getelementptr inbounds i8**, i8*** %9, i64 %idxprom3
  %10 = load i8**, i8*** %arrayidx, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %11 = load i8*, i8** %arrayidx4, align 8
  store i8* %11, i8** %inptr, align 8
  %12 = load i8**, i8*** %output_buf.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %12, i64 0
  %13 = load i8*, i8** %arrayidx5, align 8
  %14 = load i32, i32* %ci, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr, i8** %outptr, align 8
  %15 = load i32, i32* %num_cols, align 4
  store i32 %15, i32* %count, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %16 = load i32, i32* %count, align 4
  %cmp7 = icmp ugt i32 %16, 0
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %17 = load i8*, i8** %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %inptr, align 8
  %18 = load i8, i8* %17, align 1
  %19 = load i8*, i8** %outptr, align 8
  store i8 %18, i8* %19, align 1
  %20 = load i32, i32* %num_components, align 4
  %21 = load i8*, i8** %outptr, align 8
  %idx.ext9 = sext i32 %20 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %21, i64 %idx.ext9
  store i8* %add.ptr10, i8** %outptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %22 = load i32, i32* %count, align 4
  %dec11 = add i32 %22, -1
  store i32 %dec11, i32* %count, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %23 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %ci, align 4
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  %24 = load i32, i32* %input_row.addr, align 4
  %inc14 = add i32 %24, 1
  store i32 %inc14, i32* %input_row.addr, align 4
  %25 = load i8**, i8*** %output_buf.addr, align 8
  %incdec.ptr15 = getelementptr inbounds i8*, i8** %25, i32 1
  store i8** %incdec.ptr15, i8*** %output_buf.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ycck_cmyk_convert(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32 %input_row, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %input_row.addr = alloca i32, align 4
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %cconvert = alloca %struct.my_color_deconverter*, align 8
  %y = alloca i32, align 4
  %cb = alloca i32, align 4
  %cr = alloca i32, align 4
  %outptr = alloca i8*, align 8
  %inptr0 = alloca i8*, align 8
  %inptr1 = alloca i8*, align 8
  %inptr2 = alloca i8*, align 8
  %inptr3 = alloca i8*, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  %range_limit = alloca i8*, align 8
  %Crrtab = alloca i32*, align 8
  %Cbbtab = alloca i32*, align 8
  %Crgtab = alloca i64*, align 8
  %Cbgtab = alloca i64*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i8*** %input_buf, i8**** %input_buf.addr, align 8
  store i32 %input_row, i32* %input_row.addr, align 4
  store i8** %output_buf, i8*** %output_buf.addr, align 8
  store i32 %num_rows, i32* %num_rows.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cconvert1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 82
  %1 = load %struct.jpeg_color_deconverter*, %struct.jpeg_color_deconverter** %cconvert1, align 8
  %2 = bitcast %struct.jpeg_color_deconverter* %1 to %struct.my_color_deconverter*
  store %struct.my_color_deconverter* %2, %struct.my_color_deconverter** %cconvert, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 26
  %4 = load i32, i32* %output_width, align 4
  store i32 %4, i32* %num_cols, align 4
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 61
  %6 = load i8*, i8** %sample_range_limit, align 8
  store i8* %6, i8** %range_limit, align 8
  %7 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8
  %Cr_r_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %7, i32 0, i32 1
  %8 = load i32*, i32** %Cr_r_tab, align 8
  store i32* %8, i32** %Crrtab, align 8
  %9 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8
  %Cb_b_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %9, i32 0, i32 2
  %10 = load i32*, i32** %Cb_b_tab, align 8
  store i32* %10, i32** %Cbbtab, align 8
  %11 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8
  %Cr_g_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %11, i32 0, i32 3
  %12 = load i64*, i64** %Cr_g_tab, align 8
  store i64* %12, i64** %Crgtab, align 8
  %13 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8
  %Cb_g_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %13, i32 0, i32 4
  %14 = load i64*, i64** %Cb_g_tab, align 8
  store i64* %14, i64** %Cbgtab, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %15 = load i32, i32* %num_rows.addr, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %num_rows.addr, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i32, i32* %input_row.addr, align 4
  %idxprom = zext i32 %16 to i64
  %17 = load i8***, i8**** %input_buf.addr, align 8
  %arrayidx = getelementptr inbounds i8**, i8*** %17, i64 0
  %18 = load i8**, i8*** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %18, i64 %idxprom
  %19 = load i8*, i8** %arrayidx2, align 8
  store i8* %19, i8** %inptr0, align 8
  %20 = load i32, i32* %input_row.addr, align 4
  %idxprom3 = zext i32 %20 to i64
  %21 = load i8***, i8**** %input_buf.addr, align 8
  %arrayidx4 = getelementptr inbounds i8**, i8*** %21, i64 1
  %22 = load i8**, i8*** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %22, i64 %idxprom3
  %23 = load i8*, i8** %arrayidx5, align 8
  store i8* %23, i8** %inptr1, align 8
  %24 = load i32, i32* %input_row.addr, align 4
  %idxprom6 = zext i32 %24 to i64
  %25 = load i8***, i8**** %input_buf.addr, align 8
  %arrayidx7 = getelementptr inbounds i8**, i8*** %25, i64 2
  %26 = load i8**, i8*** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %26, i64 %idxprom6
  %27 = load i8*, i8** %arrayidx8, align 8
  store i8* %27, i8** %inptr2, align 8
  %28 = load i32, i32* %input_row.addr, align 4
  %idxprom9 = zext i32 %28 to i64
  %29 = load i8***, i8**** %input_buf.addr, align 8
  %arrayidx10 = getelementptr inbounds i8**, i8*** %29, i64 3
  %30 = load i8**, i8*** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %30, i64 %idxprom9
  %31 = load i8*, i8** %arrayidx11, align 8
  store i8* %31, i8** %inptr3, align 8
  %32 = load i32, i32* %input_row.addr, align 4
  %inc = add i32 %32, 1
  store i32 %inc, i32* %input_row.addr, align 4
  %33 = load i8**, i8*** %output_buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %incdec.ptr, i8*** %output_buf.addr, align 8
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %outptr, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %35 = load i32, i32* %col, align 4
  %36 = load i32, i32* %num_cols, align 4
  %cmp12 = icmp ult i32 %35, %36
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load i32, i32* %col, align 4
  %idxprom13 = zext i32 %37 to i64
  %38 = load i8*, i8** %inptr0, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %38, i64 %idxprom13
  %39 = load i8, i8* %arrayidx14, align 1
  %conv = zext i8 %39 to i32
  store i32 %conv, i32* %y, align 4
  %40 = load i32, i32* %col, align 4
  %idxprom15 = zext i32 %40 to i64
  %41 = load i8*, i8** %inptr1, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %41, i64 %idxprom15
  %42 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %42 to i32
  store i32 %conv17, i32* %cb, align 4
  %43 = load i32, i32* %col, align 4
  %idxprom18 = zext i32 %43 to i64
  %44 = load i8*, i8** %inptr2, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %44, i64 %idxprom18
  %45 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %45 to i32
  store i32 %conv20, i32* %cr, align 4
  %46 = load i32, i32* %y, align 4
  %47 = load i32, i32* %cr, align 4
  %idxprom21 = sext i32 %47 to i64
  %48 = load i32*, i32** %Crrtab, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %48, i64 %idxprom21
  %49 = load i32, i32* %arrayidx22, align 4
  %add = add nsw i32 %46, %49
  %sub = sub nsw i32 255, %add
  %idxprom23 = sext i32 %sub to i64
  %50 = load i8*, i8** %range_limit, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %50, i64 %idxprom23
  %51 = load i8, i8* %arrayidx24, align 1
  %52 = load i8*, i8** %outptr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %52, i64 0
  store i8 %51, i8* %arrayidx25, align 1
  %53 = load i32, i32* %y, align 4
  %54 = load i32, i32* %cb, align 4
  %idxprom26 = sext i32 %54 to i64
  %55 = load i64*, i64** %Cbgtab, align 8
  %arrayidx27 = getelementptr inbounds i64, i64* %55, i64 %idxprom26
  %56 = load i64, i64* %arrayidx27, align 8
  %57 = load i32, i32* %cr, align 4
  %idxprom28 = sext i32 %57 to i64
  %58 = load i64*, i64** %Crgtab, align 8
  %arrayidx29 = getelementptr inbounds i64, i64* %58, i64 %idxprom28
  %59 = load i64, i64* %arrayidx29, align 8
  %add30 = add nsw i64 %56, %59
  %shr = ashr i64 %add30, 16
  %conv31 = trunc i64 %shr to i32
  %add32 = add nsw i32 %53, %conv31
  %sub33 = sub nsw i32 255, %add32
  %idxprom34 = sext i32 %sub33 to i64
  %60 = load i8*, i8** %range_limit, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %60, i64 %idxprom34
  %61 = load i8, i8* %arrayidx35, align 1
  %62 = load i8*, i8** %outptr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %62, i64 1
  store i8 %61, i8* %arrayidx36, align 1
  %63 = load i32, i32* %y, align 4
  %64 = load i32, i32* %cb, align 4
  %idxprom37 = sext i32 %64 to i64
  %65 = load i32*, i32** %Cbbtab, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %65, i64 %idxprom37
  %66 = load i32, i32* %arrayidx38, align 4
  %add39 = add nsw i32 %63, %66
  %sub40 = sub nsw i32 255, %add39
  %idxprom41 = sext i32 %sub40 to i64
  %67 = load i8*, i8** %range_limit, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %67, i64 %idxprom41
  %68 = load i8, i8* %arrayidx42, align 1
  %69 = load i8*, i8** %outptr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %69, i64 2
  store i8 %68, i8* %arrayidx43, align 1
  %70 = load i32, i32* %col, align 4
  %idxprom44 = zext i32 %70 to i64
  %71 = load i8*, i8** %inptr3, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %71, i64 %idxprom44
  %72 = load i8, i8* %arrayidx45, align 1
  %73 = load i8*, i8** %outptr, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %73, i64 3
  store i8 %72, i8* %arrayidx46, align 1
  %74 = load i8*, i8** %outptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %74, i64 4
  store i8* %add.ptr, i8** %outptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %75 = load i32, i32* %col, align 4
  %inc47 = add i32 %75, 1
  store i32 %inc47, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @jcopy_sample_rows(i8**, i32, i8**, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
