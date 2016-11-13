; ModuleID = './jdcolor.bc'
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
%struct.my_color_deconverter = type { %struct.jpeg_color_deconverter, i32*, i32*, i64*, i64*, i64* }

; Function Attrs: nounwind uwtable
define void @jinit_color_deconverter(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %cconvert = alloca %struct.my_color_deconverter*, align 8
  %ci = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_color_deconverter** %cconvert to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !5
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i32 0, i32 0
  %4 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !10
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %6 = bitcast %struct.jpeg_decompress_struct* %5 to %struct.jpeg_common_struct*
  %call = call i8* %4(%struct.jpeg_common_struct* %6, i32 1, i64 56) #3
  %7 = bitcast i8* %call to %struct.my_color_deconverter*
  store %struct.my_color_deconverter* %7, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %8 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %8, i32 0, i32 0
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cconvert1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 92
  store %struct.jpeg_color_deconverter* %pub, %struct.jpeg_color_deconverter** %cconvert1, align 8, !tbaa !13
  %10 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %pub2 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %10, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %pub2, i32 0, i32 0
  %start_pass3 = bitcast {}** %start_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @start_pass_dcolor, void (%struct.jpeg_decompress_struct*)** %start_pass3, align 8, !tbaa !14
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 10
  %12 = load i32, i32* %jpeg_color_space, align 4, !tbaa !17
  switch i32 %12, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.5
    i32 6, label %sw.bb.5
    i32 7, label %sw.bb.5
    i32 4, label %sw.bb.14
    i32 5, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 9
  %14 = load i32, i32* %num_components, align 4, !tbaa !18
  %cmp = icmp ne i32 %14, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !19
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 5
  store i32 11, i32* %msg_code, align 4, !tbaa !20
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !19
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 0
  %19 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !22
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %21 = bitcast %struct.jpeg_decompress_struct* %20 to %struct.jpeg_common_struct*
  call void %19(%struct.jpeg_common_struct* %21) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry, %entry, %entry, %entry
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 9
  %23 = load i32, i32* %num_components6, align 4, !tbaa !18
  %cmp7 = icmp ne i32 %23, 3
  br i1 %cmp7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %sw.bb.5
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 0
  %25 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8, !tbaa !19
  %msg_code10 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %25, i32 0, i32 5
  store i32 11, i32* %msg_code10, align 4, !tbaa !20
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 0
  %27 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err11, align 8, !tbaa !19
  %error_exit12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %27, i32 0, i32 0
  %28 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit12, align 8, !tbaa !22
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %30 = bitcast %struct.jpeg_decompress_struct* %29 to %struct.jpeg_common_struct*
  call void %28(%struct.jpeg_common_struct* %30) #3
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.8, %sw.bb.5
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry, %entry
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 9
  %32 = load i32, i32* %num_components15, align 4, !tbaa !18
  %cmp16 = icmp ne i32 %32, 4
  br i1 %cmp16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %sw.bb.14
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err18, align 8, !tbaa !19
  %msg_code19 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 5
  store i32 11, i32* %msg_code19, align 4, !tbaa !20
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 0
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err20, align 8, !tbaa !19
  %error_exit21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %36, i32 0, i32 0
  %37 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit21, align 8, !tbaa !22
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %39 = bitcast %struct.jpeg_decompress_struct* %38 to %struct.jpeg_common_struct*
  call void %37(%struct.jpeg_common_struct* %39) #3
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.17, %sw.bb.14
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 9
  %41 = load i32, i32* %num_components23, align 4, !tbaa !18
  %cmp24 = icmp slt i32 %41, 1
  br i1 %cmp24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %sw.default
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 0
  %43 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err26, align 8, !tbaa !19
  %msg_code27 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %43, i32 0, i32 5
  store i32 11, i32* %msg_code27, align 4, !tbaa !20
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 0
  %45 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err28, align 8, !tbaa !19
  %error_exit29 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %45, i32 0, i32 0
  %46 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit29, align 8, !tbaa !22
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %48 = bitcast %struct.jpeg_decompress_struct* %47 to %struct.jpeg_common_struct*
  call void %46(%struct.jpeg_common_struct* %48) #3
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.30, %if.end.22, %if.end.13, %if.end
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %color_transform = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 60
  %50 = load i32, i32* %color_transform, align 4, !tbaa !23
  %tobool = icmp ne i32 %50, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.41

land.lhs.true:                                    ; preds = %sw.epilog
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 10
  %52 = load i32, i32* %jpeg_color_space31, align 4, !tbaa !17
  %cmp32 = icmp ne i32 %52, 2
  br i1 %cmp32, label %land.lhs.true.33, label %if.end.41

land.lhs.true.33:                                 ; preds = %land.lhs.true
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 10
  %54 = load i32, i32* %jpeg_color_space34, align 4, !tbaa !17
  %cmp35 = icmp ne i32 %54, 6
  br i1 %cmp35, label %if.then.36, label %if.end.41

if.then.36:                                       ; preds = %land.lhs.true.33
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %55, i32 0, i32 0
  %56 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err37, align 8, !tbaa !19
  %msg_code38 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %56, i32 0, i32 5
  store i32 28, i32* %msg_code38, align 4, !tbaa !20
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %57, i32 0, i32 0
  %58 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err39, align 8, !tbaa !19
  %error_exit40 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %58, i32 0, i32 0
  %59 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit40, align 8, !tbaa !22
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %61 = bitcast %struct.jpeg_decompress_struct* %60 to %struct.jpeg_common_struct*
  call void %59(%struct.jpeg_common_struct* %61) #3
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.36, %land.lhs.true.33, %land.lhs.true, %sw.epilog
  %62 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %62, i32 0, i32 11
  %63 = load i32, i32* %out_color_space, align 4, !tbaa !24
  switch i32 %63, label %sw.default.138 [
    i32 1, label %sw.bb.42
    i32 2, label %sw.bb.68
    i32 6, label %sw.bb.100
    i32 4, label %sw.bb.123
  ]

sw.bb.42:                                         ; preds = %if.end.41
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 29
  store i32 1, i32* %out_color_components, align 4, !tbaa !25
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 10
  %66 = load i32, i32* %jpeg_color_space43, align 4, !tbaa !17
  switch i32 %66, label %sw.default.62 [
    i32 1, label %sw.bb.44
    i32 3, label %sw.bb.44
    i32 7, label %sw.bb.44
    i32 2, label %sw.bb.48
  ]

sw.bb.44:                                         ; preds = %sw.bb.42, %sw.bb.42, %sw.bb.42
  %67 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %pub45 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %67, i32 0, i32 0
  %color_convert = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %pub45, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @grayscale_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %color_convert, align 8, !tbaa !26
  store i32 1, i32* %ci, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.44
  %68 = load i32, i32* %ci, align 4, !tbaa !27
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 9
  %70 = load i32, i32* %num_components46, align 4, !tbaa !18
  %cmp47 = icmp slt i32 %68, %70
  br i1 %cmp47, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %71 = load i32, i32* %ci, align 4, !tbaa !27
  %idxprom = sext i32 %71 to i64
  %72 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %72, i32 0, i32 44
  %73 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !28
  %arrayidx = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %73, i64 %idxprom
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx, i32 0, i32 13
  store i32 0, i32* %component_needed, align 4, !tbaa !29
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %74 = load i32, i32* %ci, align 4, !tbaa !27
  %inc = add nsw i32 %74, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog.67

sw.bb.48:                                         ; preds = %sw.bb.42
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %color_transform49 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %75, i32 0, i32 60
  %76 = load i32, i32* %color_transform49, align 4, !tbaa !23
  switch i32 %76, label %sw.default.56 [
    i32 0, label %sw.bb.50
    i32 1, label %sw.bb.53
  ]

sw.bb.50:                                         ; preds = %sw.bb.48
  %77 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %pub51 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %77, i32 0, i32 0
  %color_convert52 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %pub51, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @rgb_gray_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %color_convert52, align 8, !tbaa !26
  br label %sw.epilog.61

sw.bb.53:                                         ; preds = %sw.bb.48
  %78 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %pub54 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %78, i32 0, i32 0
  %color_convert55 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %pub54, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @rgb1_gray_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %color_convert55, align 8, !tbaa !26
  br label %sw.epilog.61

sw.default.56:                                    ; preds = %sw.bb.48
  %79 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err57 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %79, i32 0, i32 0
  %80 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err57, align 8, !tbaa !19
  %msg_code58 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %80, i32 0, i32 5
  store i32 28, i32* %msg_code58, align 4, !tbaa !20
  %81 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err59 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %81, i32 0, i32 0
  %82 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err59, align 8, !tbaa !19
  %error_exit60 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %82, i32 0, i32 0
  %83 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit60, align 8, !tbaa !22
  %84 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %85 = bitcast %struct.jpeg_decompress_struct* %84 to %struct.jpeg_common_struct*
  call void %83(%struct.jpeg_common_struct* %85) #3
  br label %sw.epilog.61

sw.epilog.61:                                     ; preds = %sw.default.56, %sw.bb.53, %sw.bb.50
  %86 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @build_rgb_y_table(%struct.jpeg_decompress_struct* %86) #3
  br label %sw.epilog.67

sw.default.62:                                    ; preds = %sw.bb.42
  %87 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err63 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %87, i32 0, i32 0
  %88 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err63, align 8, !tbaa !19
  %msg_code64 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %88, i32 0, i32 5
  store i32 28, i32* %msg_code64, align 4, !tbaa !20
  %89 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %89, i32 0, i32 0
  %90 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err65, align 8, !tbaa !19
  %error_exit66 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %90, i32 0, i32 0
  %91 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit66, align 8, !tbaa !22
  %92 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %93 = bitcast %struct.jpeg_decompress_struct* %92 to %struct.jpeg_common_struct*
  call void %91(%struct.jpeg_common_struct* %93) #3
  br label %sw.epilog.67

sw.epilog.67:                                     ; preds = %sw.default.62, %sw.epilog.61, %for.end
  br label %sw.epilog.153

sw.bb.68:                                         ; preds = %if.end.41
  %94 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %out_color_components69 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %94, i32 0, i32 29
  store i32 3, i32* %out_color_components69, align 4, !tbaa !25
  %95 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %95, i32 0, i32 10
  %96 = load i32, i32* %jpeg_color_space70, align 4, !tbaa !17
  switch i32 %96, label %sw.default.94 [
    i32 1, label %sw.bb.71
    i32 3, label %sw.bb.74
    i32 7, label %sw.bb.77
    i32 2, label %sw.bb.80
  ]

sw.bb.71:                                         ; preds = %sw.bb.68
  %97 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %pub72 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %97, i32 0, i32 0
  %color_convert73 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %pub72, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @gray_rgb_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %color_convert73, align 8, !tbaa !26
  br label %sw.epilog.99

sw.bb.74:                                         ; preds = %sw.bb.68
  %98 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %pub75 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %98, i32 0, i32 0
  %color_convert76 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %pub75, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @ycc_rgb_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %color_convert76, align 8, !tbaa !26
  %99 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @build_ycc_rgb_table(%struct.jpeg_decompress_struct* %99) #3
  br label %sw.epilog.99

sw.bb.77:                                         ; preds = %sw.bb.68
  %100 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %pub78 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %100, i32 0, i32 0
  %color_convert79 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %pub78, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @ycc_rgb_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %color_convert79, align 8, !tbaa !26
  %101 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @build_bg_ycc_rgb_table(%struct.jpeg_decompress_struct* %101) #3
  br label %sw.epilog.99

sw.bb.80:                                         ; preds = %sw.bb.68
  %102 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %color_transform81 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %102, i32 0, i32 60
  %103 = load i32, i32* %color_transform81, align 4, !tbaa !23
  switch i32 %103, label %sw.default.88 [
    i32 0, label %sw.bb.82
    i32 1, label %sw.bb.85
  ]

sw.bb.82:                                         ; preds = %sw.bb.80
  %104 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %pub83 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %104, i32 0, i32 0
  %color_convert84 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %pub83, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @rgb_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %color_convert84, align 8, !tbaa !26
  br label %sw.epilog.93

sw.bb.85:                                         ; preds = %sw.bb.80
  %105 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %pub86 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %105, i32 0, i32 0
  %color_convert87 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %pub86, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @rgb1_rgb_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %color_convert87, align 8, !tbaa !26
  br label %sw.epilog.93

sw.default.88:                                    ; preds = %sw.bb.80
  %106 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err89 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %106, i32 0, i32 0
  %107 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err89, align 8, !tbaa !19
  %msg_code90 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %107, i32 0, i32 5
  store i32 28, i32* %msg_code90, align 4, !tbaa !20
  %108 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err91 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %108, i32 0, i32 0
  %109 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err91, align 8, !tbaa !19
  %error_exit92 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %109, i32 0, i32 0
  %110 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit92, align 8, !tbaa !22
  %111 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %112 = bitcast %struct.jpeg_decompress_struct* %111 to %struct.jpeg_common_struct*
  call void %110(%struct.jpeg_common_struct* %112) #3
  br label %sw.epilog.93

sw.epilog.93:                                     ; preds = %sw.default.88, %sw.bb.85, %sw.bb.82
  br label %sw.epilog.99

sw.default.94:                                    ; preds = %sw.bb.68
  %113 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err95 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %113, i32 0, i32 0
  %114 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err95, align 8, !tbaa !19
  %msg_code96 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %114, i32 0, i32 5
  store i32 28, i32* %msg_code96, align 4, !tbaa !20
  %115 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err97 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %115, i32 0, i32 0
  %116 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err97, align 8, !tbaa !19
  %error_exit98 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %116, i32 0, i32 0
  %117 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit98, align 8, !tbaa !22
  %118 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %119 = bitcast %struct.jpeg_decompress_struct* %118 to %struct.jpeg_common_struct*
  call void %117(%struct.jpeg_common_struct* %119) #3
  br label %sw.epilog.99

sw.epilog.99:                                     ; preds = %sw.default.94, %sw.epilog.93, %sw.bb.77, %sw.bb.74, %sw.bb.71
  br label %sw.epilog.153

sw.bb.100:                                        ; preds = %if.end.41
  %120 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %out_color_components101 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %120, i32 0, i32 29
  store i32 3, i32* %out_color_components101, align 4, !tbaa !25
  %121 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space102 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %121, i32 0, i32 10
  %122 = load i32, i32* %jpeg_color_space102, align 4, !tbaa !17
  %cmp103 = icmp eq i32 %122, 6
  br i1 %cmp103, label %if.then.104, label %if.else

if.then.104:                                      ; preds = %sw.bb.100
  %123 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %color_transform105 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %123, i32 0, i32 60
  %124 = load i32, i32* %color_transform105, align 4, !tbaa !23
  switch i32 %124, label %sw.default.112 [
    i32 0, label %sw.bb.106
    i32 1, label %sw.bb.109
  ]

sw.bb.106:                                        ; preds = %if.then.104
  %125 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %pub107 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %125, i32 0, i32 0
  %color_convert108 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %pub107, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @rgb_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %color_convert108, align 8, !tbaa !26
  br label %sw.epilog.117

sw.bb.109:                                        ; preds = %if.then.104
  %126 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %pub110 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %126, i32 0, i32 0
  %color_convert111 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %pub110, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @rgb1_rgb_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %color_convert111, align 8, !tbaa !26
  br label %sw.epilog.117

sw.default.112:                                   ; preds = %if.then.104
  %127 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err113 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %127, i32 0, i32 0
  %128 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err113, align 8, !tbaa !19
  %msg_code114 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %128, i32 0, i32 5
  store i32 28, i32* %msg_code114, align 4, !tbaa !20
  %129 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err115 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %129, i32 0, i32 0
  %130 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err115, align 8, !tbaa !19
  %error_exit116 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %130, i32 0, i32 0
  %131 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit116, align 8, !tbaa !22
  %132 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %133 = bitcast %struct.jpeg_decompress_struct* %132 to %struct.jpeg_common_struct*
  call void %131(%struct.jpeg_common_struct* %133) #3
  br label %sw.epilog.117

sw.epilog.117:                                    ; preds = %sw.default.112, %sw.bb.109, %sw.bb.106
  br label %if.end.122

if.else:                                          ; preds = %sw.bb.100
  %134 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err118 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %134, i32 0, i32 0
  %135 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err118, align 8, !tbaa !19
  %msg_code119 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %135, i32 0, i32 5
  store i32 28, i32* %msg_code119, align 4, !tbaa !20
  %136 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err120 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %136, i32 0, i32 0
  %137 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err120, align 8, !tbaa !19
  %error_exit121 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %137, i32 0, i32 0
  %138 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit121, align 8, !tbaa !22
  %139 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %140 = bitcast %struct.jpeg_decompress_struct* %139 to %struct.jpeg_common_struct*
  call void %138(%struct.jpeg_common_struct* %140) #3
  br label %if.end.122

if.end.122:                                       ; preds = %if.else, %sw.epilog.117
  br label %sw.epilog.153

sw.bb.123:                                        ; preds = %if.end.41
  %141 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %out_color_components124 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %141, i32 0, i32 29
  store i32 4, i32* %out_color_components124, align 4, !tbaa !25
  %142 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space125 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %142, i32 0, i32 10
  %143 = load i32, i32* %jpeg_color_space125, align 4, !tbaa !17
  switch i32 %143, label %sw.default.132 [
    i32 5, label %sw.bb.126
    i32 4, label %sw.bb.129
  ]

sw.bb.126:                                        ; preds = %sw.bb.123
  %144 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %pub127 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %144, i32 0, i32 0
  %color_convert128 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %pub127, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @ycck_cmyk_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %color_convert128, align 8, !tbaa !26
  %145 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @build_ycc_rgb_table(%struct.jpeg_decompress_struct* %145) #3
  br label %sw.epilog.137

sw.bb.129:                                        ; preds = %sw.bb.123
  %146 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %pub130 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %146, i32 0, i32 0
  %color_convert131 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %pub130, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @null_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %color_convert131, align 8, !tbaa !26
  br label %sw.epilog.137

sw.default.132:                                   ; preds = %sw.bb.123
  %147 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err133 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %147, i32 0, i32 0
  %148 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err133, align 8, !tbaa !19
  %msg_code134 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %148, i32 0, i32 5
  store i32 28, i32* %msg_code134, align 4, !tbaa !20
  %149 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err135 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %149, i32 0, i32 0
  %150 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err135, align 8, !tbaa !19
  %error_exit136 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %150, i32 0, i32 0
  %151 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit136, align 8, !tbaa !22
  %152 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %153 = bitcast %struct.jpeg_decompress_struct* %152 to %struct.jpeg_common_struct*
  call void %151(%struct.jpeg_common_struct* %153) #3
  br label %sw.epilog.137

sw.epilog.137:                                    ; preds = %sw.default.132, %sw.bb.129, %sw.bb.126
  br label %sw.epilog.153

sw.default.138:                                   ; preds = %if.end.41
  %154 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %out_color_space139 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %154, i32 0, i32 11
  %155 = load i32, i32* %out_color_space139, align 4, !tbaa !24
  %156 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space140 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %156, i32 0, i32 10
  %157 = load i32, i32* %jpeg_color_space140, align 4, !tbaa !17
  %cmp141 = icmp eq i32 %155, %157
  br i1 %cmp141, label %if.then.142, label %if.else.147

if.then.142:                                      ; preds = %sw.default.138
  %158 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components143 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %158, i32 0, i32 9
  %159 = load i32, i32* %num_components143, align 4, !tbaa !18
  %160 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %out_color_components144 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %160, i32 0, i32 29
  store i32 %159, i32* %out_color_components144, align 4, !tbaa !25
  %161 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %pub145 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %161, i32 0, i32 0
  %color_convert146 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %pub145, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @null_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %color_convert146, align 8, !tbaa !26
  br label %if.end.152

if.else.147:                                      ; preds = %sw.default.138
  %162 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err148 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %162, i32 0, i32 0
  %163 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err148, align 8, !tbaa !19
  %msg_code149 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %163, i32 0, i32 5
  store i32 28, i32* %msg_code149, align 4, !tbaa !20
  %164 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err150 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %164, i32 0, i32 0
  %165 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err150, align 8, !tbaa !19
  %error_exit151 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %165, i32 0, i32 0
  %166 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit151, align 8, !tbaa !22
  %167 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %168 = bitcast %struct.jpeg_decompress_struct* %167 to %struct.jpeg_common_struct*
  call void %166(%struct.jpeg_common_struct* %168) #3
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.147, %if.then.142
  br label %sw.epilog.153

sw.epilog.153:                                    ; preds = %if.end.152, %sw.epilog.137, %if.end.122, %sw.epilog.99, %sw.epilog.67
  %169 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %169, i32 0, i32 20
  %170 = load i32, i32* %quantize_colors, align 4, !tbaa !31
  %tobool154 = icmp ne i32 %170, 0
  br i1 %tobool154, label %if.then.155, label %if.else.156

if.then.155:                                      ; preds = %sw.epilog.153
  %171 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %171, i32 0, i32 30
  store i32 1, i32* %output_components, align 4, !tbaa !32
  br label %if.end.159

if.else.156:                                      ; preds = %sw.epilog.153
  %172 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %out_color_components157 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %172, i32 0, i32 29
  %173 = load i32, i32* %out_color_components157, align 4, !tbaa !25
  %174 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_components158 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %174, i32 0, i32 30
  store i32 %173, i32* %output_components158, align 4, !tbaa !32
  br label %if.end.159

if.end.159:                                       ; preds = %if.else.156, %if.then.155
  %175 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast %struct.my_color_deconverter** %cconvert to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_dcolor(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
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
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !1
  store i32 %input_row, i32* %input_row.addr, align 4, !tbaa !27
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !1
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !27
  %0 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8**, i8*** %0, i64 0
  %1 = load i8**, i8*** %arrayidx, align 8, !tbaa !1
  %2 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %3 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !1
  %4 = load i32, i32* %num_rows.addr, align 4, !tbaa !27
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 27
  %6 = load i32, i32* %output_width, align 4, !tbaa !33
  call void @jcopy_sample_rows(i8** %1, i32 %2, i8** %3, i32 0, i32 %4, i32 %6) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rgb_gray_convert(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32 %input_row, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %input_row.addr = alloca i32, align 4
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %cconvert = alloca %struct.my_color_deconverter*, align 8
  %ctab = alloca i64*, align 8
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %outptr = alloca i8*, align 8
  %inptr0 = alloca i8*, align 8
  %inptr1 = alloca i8*, align 8
  %inptr2 = alloca i8*, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !1
  store i32 %input_row, i32* %input_row.addr, align 4, !tbaa !27
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !1
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !27
  %0 = bitcast %struct.my_color_deconverter** %cconvert to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cconvert1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 92
  %2 = load %struct.jpeg_color_deconverter*, %struct.jpeg_color_deconverter** %cconvert1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_color_deconverter* %2 to %struct.my_color_deconverter*
  store %struct.my_color_deconverter* %3, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %4 = bitcast i64** %ctab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %rgb_y_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %5, i32 0, i32 5
  %6 = load i64*, i64** %rgb_y_tab, align 8, !tbaa !34
  store i64* %6, i64** %ctab, align 8, !tbaa !1
  %7 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i8** %inptr0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i8** %inptr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i8** %inptr2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 27
  %17 = load i32, i32* %output_width, align 4, !tbaa !33
  store i32 %17, i32* %num_cols, align 4, !tbaa !27
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %18 = load i32, i32* %num_rows.addr, align 4, !tbaa !27
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %num_rows.addr, align 4, !tbaa !27
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom = zext i32 %19 to i64
  %20 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8**, i8*** %20, i64 0
  %21 = load i8**, i8*** %arrayidx, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8*, i8** %21, i64 %idxprom
  %22 = load i8*, i8** %arrayidx2, align 8, !tbaa !1
  store i8* %22, i8** %inptr0, align 8, !tbaa !1
  %23 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom3 = zext i32 %23 to i64
  %24 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8**, i8*** %24, i64 1
  %25 = load i8**, i8*** %arrayidx4, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8*, i8** %25, i64 %idxprom3
  %26 = load i8*, i8** %arrayidx5, align 8, !tbaa !1
  store i8* %26, i8** %inptr1, align 8, !tbaa !1
  %27 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom6 = zext i32 %27 to i64
  %28 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8**, i8*** %28, i64 2
  %29 = load i8**, i8*** %arrayidx7, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8*, i8** %29, i64 %idxprom6
  %30 = load i8*, i8** %arrayidx8, align 8, !tbaa !1
  store i8* %30, i8** %inptr2, align 8, !tbaa !1
  %31 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %inc = add i32 %31, 1
  store i32 %inc, i32* %input_row.addr, align 4, !tbaa !27
  %32 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %32, i32 1
  store i8** %incdec.ptr, i8*** %output_buf.addr, align 8, !tbaa !1
  %33 = load i8*, i8** %32, align 8, !tbaa !1
  store i8* %33, i8** %outptr, align 8, !tbaa !1
  store i32 0, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %34 = load i32, i32* %col, align 4, !tbaa !27
  %35 = load i32, i32* %num_cols, align 4, !tbaa !27
  %cmp9 = icmp ult i32 %34, %35
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom10 = zext i32 %36 to i64
  %37 = load i8*, i8** %inptr0, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %37, i64 %idxprom10
  %38 = load i8, i8* %arrayidx11, align 1, !tbaa !35
  %conv = zext i8 %38 to i32
  store i32 %conv, i32* %r, align 4, !tbaa !27
  %39 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom12 = zext i32 %39 to i64
  %40 = load i8*, i8** %inptr1, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %40, i64 %idxprom12
  %41 = load i8, i8* %arrayidx13, align 1, !tbaa !35
  %conv14 = zext i8 %41 to i32
  store i32 %conv14, i32* %g, align 4, !tbaa !27
  %42 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom15 = zext i32 %42 to i64
  %43 = load i8*, i8** %inptr2, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %43, i64 %idxprom15
  %44 = load i8, i8* %arrayidx16, align 1, !tbaa !35
  %conv17 = zext i8 %44 to i32
  store i32 %conv17, i32* %b, align 4, !tbaa !27
  %45 = load i32, i32* %r, align 4, !tbaa !27
  %add = add nsw i32 %45, 0
  %idxprom18 = sext i32 %add to i64
  %46 = load i64*, i64** %ctab, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i64, i64* %46, i64 %idxprom18
  %47 = load i64, i64* %arrayidx19, align 8, !tbaa !36
  %48 = load i32, i32* %g, align 4, !tbaa !27
  %add20 = add nsw i32 %48, 256
  %idxprom21 = sext i32 %add20 to i64
  %49 = load i64*, i64** %ctab, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i64, i64* %49, i64 %idxprom21
  %50 = load i64, i64* %arrayidx22, align 8, !tbaa !36
  %add23 = add nsw i64 %47, %50
  %51 = load i32, i32* %b, align 4, !tbaa !27
  %add24 = add nsw i32 %51, 512
  %idxprom25 = sext i32 %add24 to i64
  %52 = load i64*, i64** %ctab, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i64, i64* %52, i64 %idxprom25
  %53 = load i64, i64* %arrayidx26, align 8, !tbaa !36
  %add27 = add nsw i64 %add23, %53
  %shr = ashr i64 %add27, 16
  %conv28 = trunc i64 %shr to i8
  %54 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom29 = zext i32 %54 to i64
  %55 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %55, i64 %idxprom29
  store i8 %conv28, i8* %arrayidx30, align 1, !tbaa !35
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %56 = load i32, i32* %col, align 4, !tbaa !27
  %inc31 = add i32 %56, 1
  store i32 %inc31, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %57 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i8** %inptr2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast i8** %inptr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast i8** %inptr0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i64** %ctab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast %struct.my_color_deconverter** %cconvert to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rgb1_gray_convert(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32 %input_row, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %input_row.addr = alloca i32, align 4
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %cconvert = alloca %struct.my_color_deconverter*, align 8
  %ctab = alloca i64*, align 8
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %outptr = alloca i8*, align 8
  %inptr0 = alloca i8*, align 8
  %inptr1 = alloca i8*, align 8
  %inptr2 = alloca i8*, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !1
  store i32 %input_row, i32* %input_row.addr, align 4, !tbaa !27
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !1
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !27
  %0 = bitcast %struct.my_color_deconverter** %cconvert to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cconvert1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 92
  %2 = load %struct.jpeg_color_deconverter*, %struct.jpeg_color_deconverter** %cconvert1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_color_deconverter* %2 to %struct.my_color_deconverter*
  store %struct.my_color_deconverter* %3, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %4 = bitcast i64** %ctab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %rgb_y_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %5, i32 0, i32 5
  %6 = load i64*, i64** %rgb_y_tab, align 8, !tbaa !34
  store i64* %6, i64** %ctab, align 8, !tbaa !1
  %7 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i8** %inptr0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i8** %inptr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i8** %inptr2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 27
  %17 = load i32, i32* %output_width, align 4, !tbaa !33
  store i32 %17, i32* %num_cols, align 4, !tbaa !27
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %18 = load i32, i32* %num_rows.addr, align 4, !tbaa !27
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %num_rows.addr, align 4, !tbaa !27
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom = zext i32 %19 to i64
  %20 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8**, i8*** %20, i64 0
  %21 = load i8**, i8*** %arrayidx, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8*, i8** %21, i64 %idxprom
  %22 = load i8*, i8** %arrayidx2, align 8, !tbaa !1
  store i8* %22, i8** %inptr0, align 8, !tbaa !1
  %23 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom3 = zext i32 %23 to i64
  %24 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8**, i8*** %24, i64 1
  %25 = load i8**, i8*** %arrayidx4, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8*, i8** %25, i64 %idxprom3
  %26 = load i8*, i8** %arrayidx5, align 8, !tbaa !1
  store i8* %26, i8** %inptr1, align 8, !tbaa !1
  %27 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom6 = zext i32 %27 to i64
  %28 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8**, i8*** %28, i64 2
  %29 = load i8**, i8*** %arrayidx7, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8*, i8** %29, i64 %idxprom6
  %30 = load i8*, i8** %arrayidx8, align 8, !tbaa !1
  store i8* %30, i8** %inptr2, align 8, !tbaa !1
  %31 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %inc = add i32 %31, 1
  store i32 %inc, i32* %input_row.addr, align 4, !tbaa !27
  %32 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %32, i32 1
  store i8** %incdec.ptr, i8*** %output_buf.addr, align 8, !tbaa !1
  %33 = load i8*, i8** %32, align 8, !tbaa !1
  store i8* %33, i8** %outptr, align 8, !tbaa !1
  store i32 0, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %34 = load i32, i32* %col, align 4, !tbaa !27
  %35 = load i32, i32* %num_cols, align 4, !tbaa !27
  %cmp9 = icmp ult i32 %34, %35
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom10 = zext i32 %36 to i64
  %37 = load i8*, i8** %inptr0, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %37, i64 %idxprom10
  %38 = load i8, i8* %arrayidx11, align 1, !tbaa !35
  %conv = zext i8 %38 to i32
  store i32 %conv, i32* %r, align 4, !tbaa !27
  %39 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom12 = zext i32 %39 to i64
  %40 = load i8*, i8** %inptr1, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %40, i64 %idxprom12
  %41 = load i8, i8* %arrayidx13, align 1, !tbaa !35
  %conv14 = zext i8 %41 to i32
  store i32 %conv14, i32* %g, align 4, !tbaa !27
  %42 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom15 = zext i32 %42 to i64
  %43 = load i8*, i8** %inptr2, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %43, i64 %idxprom15
  %44 = load i8, i8* %arrayidx16, align 1, !tbaa !35
  %conv17 = zext i8 %44 to i32
  store i32 %conv17, i32* %b, align 4, !tbaa !27
  %45 = load i32, i32* %r, align 4, !tbaa !27
  %46 = load i32, i32* %g, align 4, !tbaa !27
  %add = add nsw i32 %45, %46
  %sub = sub nsw i32 %add, 128
  %and = and i32 %sub, 255
  store i32 %and, i32* %r, align 4, !tbaa !27
  %47 = load i32, i32* %b, align 4, !tbaa !27
  %48 = load i32, i32* %g, align 4, !tbaa !27
  %add18 = add nsw i32 %47, %48
  %sub19 = sub nsw i32 %add18, 128
  %and20 = and i32 %sub19, 255
  store i32 %and20, i32* %b, align 4, !tbaa !27
  %49 = load i32, i32* %r, align 4, !tbaa !27
  %add21 = add nsw i32 %49, 0
  %idxprom22 = sext i32 %add21 to i64
  %50 = load i64*, i64** %ctab, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i64, i64* %50, i64 %idxprom22
  %51 = load i64, i64* %arrayidx23, align 8, !tbaa !36
  %52 = load i32, i32* %g, align 4, !tbaa !27
  %add24 = add nsw i32 %52, 256
  %idxprom25 = sext i32 %add24 to i64
  %53 = load i64*, i64** %ctab, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i64, i64* %53, i64 %idxprom25
  %54 = load i64, i64* %arrayidx26, align 8, !tbaa !36
  %add27 = add nsw i64 %51, %54
  %55 = load i32, i32* %b, align 4, !tbaa !27
  %add28 = add nsw i32 %55, 512
  %idxprom29 = sext i32 %add28 to i64
  %56 = load i64*, i64** %ctab, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i64, i64* %56, i64 %idxprom29
  %57 = load i64, i64* %arrayidx30, align 8, !tbaa !36
  %add31 = add nsw i64 %add27, %57
  %shr = ashr i64 %add31, 16
  %conv32 = trunc i64 %shr to i8
  %58 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom33 = zext i32 %58 to i64
  %59 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8, i8* %59, i64 %idxprom33
  store i8 %conv32, i8* %arrayidx34, align 1, !tbaa !35
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %60 = load i32, i32* %col, align 4, !tbaa !27
  %inc35 = add i32 %60, 1
  store i32 %inc35, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %61 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i8** %inptr2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast i8** %inptr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i8** %inptr0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i64** %ctab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast %struct.my_color_deconverter** %cconvert to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @build_rgb_y_table(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %cconvert = alloca %struct.my_color_deconverter*, align 8
  %rgb_y_tab = alloca i64*, align 8
  %i = alloca i64, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_color_deconverter** %cconvert to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cconvert1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 92
  %2 = load %struct.jpeg_color_deconverter*, %struct.jpeg_color_deconverter** %cconvert1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_color_deconverter* %2 to %struct.my_color_deconverter*
  store %struct.my_color_deconverter* %3, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %4 = bitcast i64** %rgb_y_tab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 1
  %7 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !5
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %7, i32 0, i32 0
  %8 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !10
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %10 = bitcast %struct.jpeg_decompress_struct* %9 to %struct.jpeg_common_struct*
  %call = call i8* %8(%struct.jpeg_common_struct* %10, i32 1, i64 6144) #3
  %11 = bitcast i8* %call to i64*
  store i64* %11, i64** %rgb_y_tab, align 8, !tbaa !1
  %12 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %rgb_y_tab2 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %12, i32 0, i32 5
  store i64* %11, i64** %rgb_y_tab2, align 8, !tbaa !34
  store i64 0, i64* %i, align 8, !tbaa !36
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i64, i64* %i, align 8, !tbaa !36
  %cmp = icmp sle i64 %13, 255
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i64, i64* %i, align 8, !tbaa !36
  %mul = mul nsw i64 19595, %14
  %15 = load i64, i64* %i, align 8, !tbaa !36
  %add = add nsw i64 %15, 0
  %16 = load i64*, i64** %rgb_y_tab, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %16, i64 %add
  store i64 %mul, i64* %arrayidx, align 8, !tbaa !36
  %17 = load i64, i64* %i, align 8, !tbaa !36
  %mul3 = mul nsw i64 38470, %17
  %18 = load i64, i64* %i, align 8, !tbaa !36
  %add4 = add nsw i64 %18, 256
  %19 = load i64*, i64** %rgb_y_tab, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i64, i64* %19, i64 %add4
  store i64 %mul3, i64* %arrayidx5, align 8, !tbaa !36
  %20 = load i64, i64* %i, align 8, !tbaa !36
  %mul6 = mul nsw i64 7471, %20
  %add7 = add nsw i64 %mul6, 32768
  %21 = load i64, i64* %i, align 8, !tbaa !36
  %add8 = add nsw i64 %21, 512
  %22 = load i64*, i64** %rgb_y_tab, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i64, i64* %22, i64 %add8
  store i64 %add7, i64* %arrayidx9, align 8, !tbaa !36
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i64, i64* %i, align 8, !tbaa !36
  %inc = add nsw i64 %23, 1
  store i64 %inc, i64* %i, align 8, !tbaa !36
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i64** %rgb_y_tab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast %struct.my_color_deconverter** %cconvert to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gray_rgb_convert(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32 %input_row, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %input_row.addr = alloca i32, align 4
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %outptr = alloca i8*, align 8
  %inptr = alloca i8*, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !1
  store i32 %input_row, i32* %input_row.addr, align 4, !tbaa !27
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !1
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !27
  %0 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 27
  %5 = load i32, i32* %output_width, align 4, !tbaa !33
  store i32 %5, i32* %num_cols, align 4, !tbaa !27
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %6 = load i32, i32* %num_rows.addr, align 4, !tbaa !27
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %num_rows.addr, align 4, !tbaa !27
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %inc = add i32 %7, 1
  store i32 %inc, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom = zext i32 %7 to i64
  %8 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8**, i8*** %8, i64 0
  %9 = load i8**, i8*** %arrayidx, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8*, i8** %9, i64 %idxprom
  %10 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  store i8* %10, i8** %inptr, align 8, !tbaa !1
  %11 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %11, i32 1
  store i8** %incdec.ptr, i8*** %output_buf.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %11, align 8, !tbaa !1
  store i8* %12, i8** %outptr, align 8, !tbaa !1
  store i32 0, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %13 = load i32, i32* %col, align 4, !tbaa !27
  %14 = load i32, i32* %num_cols, align 4, !tbaa !27
  %cmp2 = icmp ult i32 %13, %14
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom3 = zext i32 %15 to i64
  %16 = load i8*, i8** %inptr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %16, i64 %idxprom3
  %17 = load i8, i8* %arrayidx4, align 1, !tbaa !35
  %18 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %18, i64 2
  store i8 %17, i8* %arrayidx5, align 1, !tbaa !35
  %19 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 %17, i8* %arrayidx6, align 1, !tbaa !35
  %20 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 %17, i8* %arrayidx7, align 1, !tbaa !35
  %21 = load i8*, i8** %outptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 3
  store i8* %add.ptr, i8** %outptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %col, align 4, !tbaa !27
  %inc8 = add i32 %22, 1
  store i32 %inc8, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
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
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !1
  store i32 %input_row, i32* %input_row.addr, align 4, !tbaa !27
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !1
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !27
  %0 = bitcast %struct.my_color_deconverter** %cconvert to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cconvert1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 92
  %2 = load %struct.jpeg_color_deconverter*, %struct.jpeg_color_deconverter** %cconvert1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_color_deconverter* %2 to %struct.my_color_deconverter*
  store %struct.my_color_deconverter* %3, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %4 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %cb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %cr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i8** %inptr0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i8** %inptr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i8** %inptr2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 27
  %14 = load i32, i32* %output_width, align 4, !tbaa !33
  store i32 %14, i32* %num_cols, align 4, !tbaa !27
  %15 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 68
  %17 = load i8*, i8** %sample_range_limit, align 8, !tbaa !37
  store i8* %17, i8** %range_limit, align 8, !tbaa !1
  %18 = bitcast i32** %Crrtab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %Cr_r_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %19, i32 0, i32 1
  %20 = load i32*, i32** %Cr_r_tab, align 8, !tbaa !38
  store i32* %20, i32** %Crrtab, align 8, !tbaa !1
  %21 = bitcast i32** %Cbbtab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %Cb_b_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %22, i32 0, i32 2
  %23 = load i32*, i32** %Cb_b_tab, align 8, !tbaa !39
  store i32* %23, i32** %Cbbtab, align 8, !tbaa !1
  %24 = bitcast i64** %Crgtab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %Cr_g_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %25, i32 0, i32 3
  %26 = load i64*, i64** %Cr_g_tab, align 8, !tbaa !40
  store i64* %26, i64** %Crgtab, align 8, !tbaa !1
  %27 = bitcast i64** %Cbgtab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %Cb_g_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %28, i32 0, i32 4
  %29 = load i64*, i64** %Cb_g_tab, align 8, !tbaa !41
  store i64* %29, i64** %Cbgtab, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %30 = load i32, i32* %num_rows.addr, align 4, !tbaa !27
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %num_rows.addr, align 4, !tbaa !27
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom = zext i32 %31 to i64
  %32 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8**, i8*** %32, i64 0
  %33 = load i8**, i8*** %arrayidx, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8*, i8** %33, i64 %idxprom
  %34 = load i8*, i8** %arrayidx2, align 8, !tbaa !1
  store i8* %34, i8** %inptr0, align 8, !tbaa !1
  %35 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom3 = zext i32 %35 to i64
  %36 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8**, i8*** %36, i64 1
  %37 = load i8**, i8*** %arrayidx4, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8*, i8** %37, i64 %idxprom3
  %38 = load i8*, i8** %arrayidx5, align 8, !tbaa !1
  store i8* %38, i8** %inptr1, align 8, !tbaa !1
  %39 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom6 = zext i32 %39 to i64
  %40 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8**, i8*** %40, i64 2
  %41 = load i8**, i8*** %arrayidx7, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8*, i8** %41, i64 %idxprom6
  %42 = load i8*, i8** %arrayidx8, align 8, !tbaa !1
  store i8* %42, i8** %inptr2, align 8, !tbaa !1
  %43 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %inc = add i32 %43, 1
  store i32 %inc, i32* %input_row.addr, align 4, !tbaa !27
  %44 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %44, i32 1
  store i8** %incdec.ptr, i8*** %output_buf.addr, align 8, !tbaa !1
  %45 = load i8*, i8** %44, align 8, !tbaa !1
  store i8* %45, i8** %outptr, align 8, !tbaa !1
  store i32 0, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %46 = load i32, i32* %col, align 4, !tbaa !27
  %47 = load i32, i32* %num_cols, align 4, !tbaa !27
  %cmp9 = icmp ult i32 %46, %47
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom10 = zext i32 %48 to i64
  %49 = load i8*, i8** %inptr0, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %49, i64 %idxprom10
  %50 = load i8, i8* %arrayidx11, align 1, !tbaa !35
  %conv = zext i8 %50 to i32
  store i32 %conv, i32* %y, align 4, !tbaa !27
  %51 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom12 = zext i32 %51 to i64
  %52 = load i8*, i8** %inptr1, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %52, i64 %idxprom12
  %53 = load i8, i8* %arrayidx13, align 1, !tbaa !35
  %conv14 = zext i8 %53 to i32
  store i32 %conv14, i32* %cb, align 4, !tbaa !27
  %54 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom15 = zext i32 %54 to i64
  %55 = load i8*, i8** %inptr2, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %55, i64 %idxprom15
  %56 = load i8, i8* %arrayidx16, align 1, !tbaa !35
  %conv17 = zext i8 %56 to i32
  store i32 %conv17, i32* %cr, align 4, !tbaa !27
  %57 = load i32, i32* %y, align 4, !tbaa !27
  %58 = load i32, i32* %cr, align 4, !tbaa !27
  %idxprom18 = sext i32 %58 to i64
  %59 = load i32*, i32** %Crrtab, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i32, i32* %59, i64 %idxprom18
  %60 = load i32, i32* %arrayidx19, align 4, !tbaa !27
  %add = add nsw i32 %57, %60
  %idxprom20 = sext i32 %add to i64
  %61 = load i8*, i8** %range_limit, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8, i8* %61, i64 %idxprom20
  %62 = load i8, i8* %arrayidx21, align 1, !tbaa !35
  %63 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %63, i64 0
  store i8 %62, i8* %arrayidx22, align 1, !tbaa !35
  %64 = load i32, i32* %y, align 4, !tbaa !27
  %65 = load i32, i32* %cb, align 4, !tbaa !27
  %idxprom23 = sext i32 %65 to i64
  %66 = load i64*, i64** %Cbgtab, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i64, i64* %66, i64 %idxprom23
  %67 = load i64, i64* %arrayidx24, align 8, !tbaa !36
  %68 = load i32, i32* %cr, align 4, !tbaa !27
  %idxprom25 = sext i32 %68 to i64
  %69 = load i64*, i64** %Crgtab, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i64, i64* %69, i64 %idxprom25
  %70 = load i64, i64* %arrayidx26, align 8, !tbaa !36
  %add27 = add nsw i64 %67, %70
  %shr = ashr i64 %add27, 16
  %conv28 = trunc i64 %shr to i32
  %add29 = add nsw i32 %64, %conv28
  %idxprom30 = sext i32 %add29 to i64
  %71 = load i8*, i8** %range_limit, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %71, i64 %idxprom30
  %72 = load i8, i8* %arrayidx31, align 1, !tbaa !35
  %73 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %73, i64 1
  store i8 %72, i8* %arrayidx32, align 1, !tbaa !35
  %74 = load i32, i32* %y, align 4, !tbaa !27
  %75 = load i32, i32* %cb, align 4, !tbaa !27
  %idxprom33 = sext i32 %75 to i64
  %76 = load i32*, i32** %Cbbtab, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i32, i32* %76, i64 %idxprom33
  %77 = load i32, i32* %arrayidx34, align 4, !tbaa !27
  %add35 = add nsw i32 %74, %77
  %idxprom36 = sext i32 %add35 to i64
  %78 = load i8*, i8** %range_limit, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %78, i64 %idxprom36
  %79 = load i8, i8* %arrayidx37, align 1, !tbaa !35
  %80 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %80, i64 2
  store i8 %79, i8* %arrayidx38, align 1, !tbaa !35
  %81 = load i8*, i8** %outptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %81, i64 3
  store i8* %add.ptr, i8** %outptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %82 = load i32, i32* %col, align 4, !tbaa !27
  %inc39 = add i32 %82, 1
  store i32 %inc39, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %83 = bitcast i64** %Cbgtab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast i64** %Crgtab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast i32** %Cbbtab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast i32** %Crrtab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i8** %inptr2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  %91 = bitcast i8** %inptr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast i8** %inptr0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast i32* %cr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %cb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast %struct.my_color_deconverter** %cconvert to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @build_ycc_rgb_table(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %cconvert = alloca %struct.my_color_deconverter*, align 8
  %i = alloca i32, align 4
  %x = alloca i64, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_color_deconverter** %cconvert to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cconvert1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 92
  %2 = load %struct.jpeg_color_deconverter*, %struct.jpeg_color_deconverter** %cconvert1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_color_deconverter* %2 to %struct.my_color_deconverter*
  store %struct.my_color_deconverter* %3, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i64* %x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 1
  %7 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !5
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %7, i32 0, i32 0
  %8 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !10
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %10 = bitcast %struct.jpeg_decompress_struct* %9 to %struct.jpeg_common_struct*
  %call = call i8* %8(%struct.jpeg_common_struct* %10, i32 1, i64 1024) #3
  %11 = bitcast i8* %call to i32*
  %12 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %Cr_r_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %12, i32 0, i32 1
  store i32* %11, i32** %Cr_r_tab, align 8, !tbaa !38
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 1
  %14 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem2, align 8, !tbaa !5
  %alloc_small3 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %14, i32 0, i32 0
  %15 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small3, align 8, !tbaa !10
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %17 = bitcast %struct.jpeg_decompress_struct* %16 to %struct.jpeg_common_struct*
  %call4 = call i8* %15(%struct.jpeg_common_struct* %17, i32 1, i64 1024) #3
  %18 = bitcast i8* %call4 to i32*
  %19 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %Cb_b_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %19, i32 0, i32 2
  store i32* %18, i32** %Cb_b_tab, align 8, !tbaa !39
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 1
  %21 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem5, align 8, !tbaa !5
  %alloc_small6 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %21, i32 0, i32 0
  %22 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small6, align 8, !tbaa !10
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %24 = bitcast %struct.jpeg_decompress_struct* %23 to %struct.jpeg_common_struct*
  %call7 = call i8* %22(%struct.jpeg_common_struct* %24, i32 1, i64 2048) #3
  %25 = bitcast i8* %call7 to i64*
  %26 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %Cr_g_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %26, i32 0, i32 3
  store i64* %25, i64** %Cr_g_tab, align 8, !tbaa !40
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 1
  %28 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem8, align 8, !tbaa !5
  %alloc_small9 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %28, i32 0, i32 0
  %29 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small9, align 8, !tbaa !10
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %31 = bitcast %struct.jpeg_decompress_struct* %30 to %struct.jpeg_common_struct*
  %call10 = call i8* %29(%struct.jpeg_common_struct* %31, i32 1, i64 2048) #3
  %32 = bitcast i8* %call10 to i64*
  %33 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %Cb_g_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %33, i32 0, i32 4
  store i64* %32, i64** %Cb_g_tab, align 8, !tbaa !41
  store i32 0, i32* %i, align 4, !tbaa !27
  store i64 -128, i64* %x, align 8, !tbaa !36
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %34 = load i32, i32* %i, align 4, !tbaa !27
  %cmp = icmp sle i32 %34, 255
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i64, i64* %x, align 8, !tbaa !36
  %mul = mul nsw i64 91881, %35
  %add = add nsw i64 %mul, 32768
  %shr = ashr i64 %add, 16
  %conv = trunc i64 %shr to i32
  %36 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom = sext i32 %36 to i64
  %37 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %Cr_r_tab11 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %37, i32 0, i32 1
  %38 = load i32*, i32** %Cr_r_tab11, align 8, !tbaa !38
  %arrayidx = getelementptr inbounds i32, i32* %38, i64 %idxprom
  store i32 %conv, i32* %arrayidx, align 4, !tbaa !27
  %39 = load i64, i64* %x, align 8, !tbaa !36
  %mul12 = mul nsw i64 116130, %39
  %add13 = add nsw i64 %mul12, 32768
  %shr14 = ashr i64 %add13, 16
  %conv15 = trunc i64 %shr14 to i32
  %40 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom16 = sext i32 %40 to i64
  %41 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %Cb_b_tab17 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %41, i32 0, i32 2
  %42 = load i32*, i32** %Cb_b_tab17, align 8, !tbaa !39
  %arrayidx18 = getelementptr inbounds i32, i32* %42, i64 %idxprom16
  store i32 %conv15, i32* %arrayidx18, align 4, !tbaa !27
  %43 = load i64, i64* %x, align 8, !tbaa !36
  %mul19 = mul nsw i64 -46802, %43
  %44 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom20 = sext i32 %44 to i64
  %45 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %Cr_g_tab21 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %45, i32 0, i32 3
  %46 = load i64*, i64** %Cr_g_tab21, align 8, !tbaa !40
  %arrayidx22 = getelementptr inbounds i64, i64* %46, i64 %idxprom20
  store i64 %mul19, i64* %arrayidx22, align 8, !tbaa !36
  %47 = load i64, i64* %x, align 8, !tbaa !36
  %mul23 = mul nsw i64 -22553, %47
  %add24 = add nsw i64 %mul23, 32768
  %48 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom25 = sext i32 %48 to i64
  %49 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %Cb_g_tab26 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %49, i32 0, i32 4
  %50 = load i64*, i64** %Cb_g_tab26, align 8, !tbaa !41
  %arrayidx27 = getelementptr inbounds i64, i64* %50, i64 %idxprom25
  store i64 %add24, i64* %arrayidx27, align 8, !tbaa !36
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i32, i32* %i, align 4, !tbaa !27
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %i, align 4, !tbaa !27
  %52 = load i64, i64* %x, align 8, !tbaa !36
  %inc28 = add nsw i64 %52, 1
  store i64 %inc28, i64* %x, align 8, !tbaa !36
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = bitcast i64* %x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast %struct.my_color_deconverter** %cconvert to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @build_bg_ycc_rgb_table(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %cconvert = alloca %struct.my_color_deconverter*, align 8
  %i = alloca i32, align 4
  %x = alloca i64, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_color_deconverter** %cconvert to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cconvert1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 92
  %2 = load %struct.jpeg_color_deconverter*, %struct.jpeg_color_deconverter** %cconvert1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_color_deconverter* %2 to %struct.my_color_deconverter*
  store %struct.my_color_deconverter* %3, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i64* %x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 1
  %7 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !5
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %7, i32 0, i32 0
  %8 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !10
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %10 = bitcast %struct.jpeg_decompress_struct* %9 to %struct.jpeg_common_struct*
  %call = call i8* %8(%struct.jpeg_common_struct* %10, i32 1, i64 1024) #3
  %11 = bitcast i8* %call to i32*
  %12 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %Cr_r_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %12, i32 0, i32 1
  store i32* %11, i32** %Cr_r_tab, align 8, !tbaa !38
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 1
  %14 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem2, align 8, !tbaa !5
  %alloc_small3 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %14, i32 0, i32 0
  %15 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small3, align 8, !tbaa !10
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %17 = bitcast %struct.jpeg_decompress_struct* %16 to %struct.jpeg_common_struct*
  %call4 = call i8* %15(%struct.jpeg_common_struct* %17, i32 1, i64 1024) #3
  %18 = bitcast i8* %call4 to i32*
  %19 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %Cb_b_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %19, i32 0, i32 2
  store i32* %18, i32** %Cb_b_tab, align 8, !tbaa !39
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 1
  %21 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem5, align 8, !tbaa !5
  %alloc_small6 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %21, i32 0, i32 0
  %22 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small6, align 8, !tbaa !10
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %24 = bitcast %struct.jpeg_decompress_struct* %23 to %struct.jpeg_common_struct*
  %call7 = call i8* %22(%struct.jpeg_common_struct* %24, i32 1, i64 2048) #3
  %25 = bitcast i8* %call7 to i64*
  %26 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %Cr_g_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %26, i32 0, i32 3
  store i64* %25, i64** %Cr_g_tab, align 8, !tbaa !40
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 1
  %28 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem8, align 8, !tbaa !5
  %alloc_small9 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %28, i32 0, i32 0
  %29 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small9, align 8, !tbaa !10
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %31 = bitcast %struct.jpeg_decompress_struct* %30 to %struct.jpeg_common_struct*
  %call10 = call i8* %29(%struct.jpeg_common_struct* %31, i32 1, i64 2048) #3
  %32 = bitcast i8* %call10 to i64*
  %33 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %Cb_g_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %33, i32 0, i32 4
  store i64* %32, i64** %Cb_g_tab, align 8, !tbaa !41
  store i32 0, i32* %i, align 4, !tbaa !27
  store i64 -128, i64* %x, align 8, !tbaa !36
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %34 = load i32, i32* %i, align 4, !tbaa !27
  %cmp = icmp sle i32 %34, 255
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i64, i64* %x, align 8, !tbaa !36
  %mul = mul nsw i64 183763, %35
  %add = add nsw i64 %mul, 32768
  %shr = ashr i64 %add, 16
  %conv = trunc i64 %shr to i32
  %36 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom = sext i32 %36 to i64
  %37 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %Cr_r_tab11 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %37, i32 0, i32 1
  %38 = load i32*, i32** %Cr_r_tab11, align 8, !tbaa !38
  %arrayidx = getelementptr inbounds i32, i32* %38, i64 %idxprom
  store i32 %conv, i32* %arrayidx, align 4, !tbaa !27
  %39 = load i64, i64* %x, align 8, !tbaa !36
  %mul12 = mul nsw i64 232260, %39
  %add13 = add nsw i64 %mul12, 32768
  %shr14 = ashr i64 %add13, 16
  %conv15 = trunc i64 %shr14 to i32
  %40 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom16 = sext i32 %40 to i64
  %41 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %Cb_b_tab17 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %41, i32 0, i32 2
  %42 = load i32*, i32** %Cb_b_tab17, align 8, !tbaa !39
  %arrayidx18 = getelementptr inbounds i32, i32* %42, i64 %idxprom16
  store i32 %conv15, i32* %arrayidx18, align 4, !tbaa !27
  %43 = load i64, i64* %x, align 8, !tbaa !36
  %mul19 = mul nsw i64 -93603, %43
  %44 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom20 = sext i32 %44 to i64
  %45 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %Cr_g_tab21 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %45, i32 0, i32 3
  %46 = load i64*, i64** %Cr_g_tab21, align 8, !tbaa !40
  %arrayidx22 = getelementptr inbounds i64, i64* %46, i64 %idxprom20
  store i64 %mul19, i64* %arrayidx22, align 8, !tbaa !36
  %47 = load i64, i64* %x, align 8, !tbaa !36
  %mul23 = mul nsw i64 -45107, %47
  %add24 = add nsw i64 %mul23, 32768
  %48 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom25 = sext i32 %48 to i64
  %49 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %Cb_g_tab26 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %49, i32 0, i32 4
  %50 = load i64*, i64** %Cb_g_tab26, align 8, !tbaa !41
  %arrayidx27 = getelementptr inbounds i64, i64* %50, i64 %idxprom25
  store i64 %add24, i64* %arrayidx27, align 8, !tbaa !36
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i32, i32* %i, align 4, !tbaa !27
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %i, align 4, !tbaa !27
  %52 = load i64, i64* %x, align 8, !tbaa !36
  %inc28 = add nsw i64 %52, 1
  store i64 %inc28, i64* %x, align 8, !tbaa !36
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = bitcast i64* %x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast %struct.my_color_deconverter** %cconvert to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rgb_convert(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32 %input_row, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %input_row.addr = alloca i32, align 4
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %outptr = alloca i8*, align 8
  %inptr0 = alloca i8*, align 8
  %inptr1 = alloca i8*, align 8
  %inptr2 = alloca i8*, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !1
  store i32 %input_row, i32* %input_row.addr, align 4, !tbaa !27
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !1
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !27
  %0 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %inptr0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %inptr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i8** %inptr2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 27
  %7 = load i32, i32* %output_width, align 4, !tbaa !33
  store i32 %7, i32* %num_cols, align 4, !tbaa !27
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %8 = load i32, i32* %num_rows.addr, align 4, !tbaa !27
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %num_rows.addr, align 4, !tbaa !27
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom = zext i32 %9 to i64
  %10 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8**, i8*** %10, i64 0
  %11 = load i8**, i8*** %arrayidx, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8*, i8** %11, i64 %idxprom
  %12 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  store i8* %12, i8** %inptr0, align 8, !tbaa !1
  %13 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom2 = zext i32 %13 to i64
  %14 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8**, i8*** %14, i64 1
  %15 = load i8**, i8*** %arrayidx3, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8*, i8** %15, i64 %idxprom2
  %16 = load i8*, i8** %arrayidx4, align 8, !tbaa !1
  store i8* %16, i8** %inptr1, align 8, !tbaa !1
  %17 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom5 = zext i32 %17 to i64
  %18 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8**, i8*** %18, i64 2
  %19 = load i8**, i8*** %arrayidx6, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8*, i8** %19, i64 %idxprom5
  %20 = load i8*, i8** %arrayidx7, align 8, !tbaa !1
  store i8* %20, i8** %inptr2, align 8, !tbaa !1
  %21 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %inc = add i32 %21, 1
  store i32 %inc, i32* %input_row.addr, align 4, !tbaa !27
  %22 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %22, i32 1
  store i8** %incdec.ptr, i8*** %output_buf.addr, align 8, !tbaa !1
  %23 = load i8*, i8** %22, align 8, !tbaa !1
  store i8* %23, i8** %outptr, align 8, !tbaa !1
  store i32 0, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %24 = load i32, i32* %col, align 4, !tbaa !27
  %25 = load i32, i32* %num_cols, align 4, !tbaa !27
  %cmp8 = icmp ult i32 %24, %25
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom9 = zext i32 %26 to i64
  %27 = load i8*, i8** %inptr0, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %27, i64 %idxprom9
  %28 = load i8, i8* %arrayidx10, align 1, !tbaa !35
  %29 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 %28, i8* %arrayidx11, align 1, !tbaa !35
  %30 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom12 = zext i32 %30 to i64
  %31 = load i8*, i8** %inptr1, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %31, i64 %idxprom12
  %32 = load i8, i8* %arrayidx13, align 1, !tbaa !35
  %33 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %33, i64 1
  store i8 %32, i8* %arrayidx14, align 1, !tbaa !35
  %34 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom15 = zext i32 %34 to i64
  %35 = load i8*, i8** %inptr2, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %35, i64 %idxprom15
  %36 = load i8, i8* %arrayidx16, align 1, !tbaa !35
  %37 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %37, i64 2
  store i8 %36, i8* %arrayidx17, align 1, !tbaa !35
  %38 = load i8*, i8** %outptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %38, i64 3
  store i8* %add.ptr, i8** %outptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %col, align 4, !tbaa !27
  %inc18 = add i32 %39, 1
  store i32 %inc18, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %40 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i8** %inptr2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i8** %inptr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast i8** %inptr0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rgb1_rgb_convert(%struct.jpeg_decompress_struct* %cinfo, i8*** %input_buf, i32 %input_row, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %input_row.addr = alloca i32, align 4
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %outptr = alloca i8*, align 8
  %inptr0 = alloca i8*, align 8
  %inptr1 = alloca i8*, align 8
  %inptr2 = alloca i8*, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !1
  store i32 %input_row, i32* %input_row.addr, align 4, !tbaa !27
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !1
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !27
  %0 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8** %inptr0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %inptr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8** %inptr2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 27
  %10 = load i32, i32* %output_width, align 4, !tbaa !33
  store i32 %10, i32* %num_cols, align 4, !tbaa !27
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %11 = load i32, i32* %num_rows.addr, align 4, !tbaa !27
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %num_rows.addr, align 4, !tbaa !27
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom = zext i32 %12 to i64
  %13 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8**, i8*** %13, i64 0
  %14 = load i8**, i8*** %arrayidx, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8*, i8** %14, i64 %idxprom
  %15 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  store i8* %15, i8** %inptr0, align 8, !tbaa !1
  %16 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom2 = zext i32 %16 to i64
  %17 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8**, i8*** %17, i64 1
  %18 = load i8**, i8*** %arrayidx3, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8*, i8** %18, i64 %idxprom2
  %19 = load i8*, i8** %arrayidx4, align 8, !tbaa !1
  store i8* %19, i8** %inptr1, align 8, !tbaa !1
  %20 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom5 = zext i32 %20 to i64
  %21 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8**, i8*** %21, i64 2
  %22 = load i8**, i8*** %arrayidx6, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8*, i8** %22, i64 %idxprom5
  %23 = load i8*, i8** %arrayidx7, align 8, !tbaa !1
  store i8* %23, i8** %inptr2, align 8, !tbaa !1
  %24 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %inc = add i32 %24, 1
  store i32 %inc, i32* %input_row.addr, align 4, !tbaa !27
  %25 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %25, i32 1
  store i8** %incdec.ptr, i8*** %output_buf.addr, align 8, !tbaa !1
  %26 = load i8*, i8** %25, align 8, !tbaa !1
  store i8* %26, i8** %outptr, align 8, !tbaa !1
  store i32 0, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %27 = load i32, i32* %col, align 4, !tbaa !27
  %28 = load i32, i32* %num_cols, align 4, !tbaa !27
  %cmp8 = icmp ult i32 %27, %28
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom9 = zext i32 %29 to i64
  %30 = load i8*, i8** %inptr0, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %30, i64 %idxprom9
  %31 = load i8, i8* %arrayidx10, align 1, !tbaa !35
  %conv = zext i8 %31 to i32
  store i32 %conv, i32* %r, align 4, !tbaa !27
  %32 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom11 = zext i32 %32 to i64
  %33 = load i8*, i8** %inptr1, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %33, i64 %idxprom11
  %34 = load i8, i8* %arrayidx12, align 1, !tbaa !35
  %conv13 = zext i8 %34 to i32
  store i32 %conv13, i32* %g, align 4, !tbaa !27
  %35 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom14 = zext i32 %35 to i64
  %36 = load i8*, i8** %inptr2, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %36, i64 %idxprom14
  %37 = load i8, i8* %arrayidx15, align 1, !tbaa !35
  %conv16 = zext i8 %37 to i32
  store i32 %conv16, i32* %b, align 4, !tbaa !27
  %38 = load i32, i32* %r, align 4, !tbaa !27
  %39 = load i32, i32* %g, align 4, !tbaa !27
  %add = add nsw i32 %38, %39
  %sub = sub nsw i32 %add, 128
  %and = and i32 %sub, 255
  %conv17 = trunc i32 %and to i8
  %40 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 %conv17, i8* %arrayidx18, align 1, !tbaa !35
  %41 = load i32, i32* %g, align 4, !tbaa !27
  %conv19 = trunc i32 %41 to i8
  %42 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %42, i64 1
  store i8 %conv19, i8* %arrayidx20, align 1, !tbaa !35
  %43 = load i32, i32* %b, align 4, !tbaa !27
  %44 = load i32, i32* %g, align 4, !tbaa !27
  %add21 = add nsw i32 %43, %44
  %sub22 = sub nsw i32 %add21, 128
  %and23 = and i32 %sub22, 255
  %conv24 = trunc i32 %and23 to i8
  %45 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %45, i64 2
  store i8 %conv24, i8* %arrayidx25, align 1, !tbaa !35
  %46 = load i8*, i8** %outptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %46, i64 3
  store i8* %add.ptr, i8** %outptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i32, i32* %col, align 4, !tbaa !27
  %inc26 = add i32 %47, 1
  store i32 %inc26, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %48 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i8** %inptr2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i8** %inptr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast i8** %inptr0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
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
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !1
  store i32 %input_row, i32* %input_row.addr, align 4, !tbaa !27
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !1
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !27
  %0 = bitcast %struct.my_color_deconverter** %cconvert to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cconvert1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 92
  %2 = load %struct.jpeg_color_deconverter*, %struct.jpeg_color_deconverter** %cconvert1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_color_deconverter* %2 to %struct.my_color_deconverter*
  store %struct.my_color_deconverter* %3, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %4 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %cb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %cr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i8** %inptr0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i8** %inptr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i8** %inptr2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i8** %inptr3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 27
  %15 = load i32, i32* %output_width, align 4, !tbaa !33
  store i32 %15, i32* %num_cols, align 4, !tbaa !27
  %16 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 68
  %18 = load i8*, i8** %sample_range_limit, align 8, !tbaa !37
  store i8* %18, i8** %range_limit, align 8, !tbaa !1
  %19 = bitcast i32** %Crrtab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %Cr_r_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %20, i32 0, i32 1
  %21 = load i32*, i32** %Cr_r_tab, align 8, !tbaa !38
  store i32* %21, i32** %Crrtab, align 8, !tbaa !1
  %22 = bitcast i32** %Cbbtab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %Cb_b_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %23, i32 0, i32 2
  %24 = load i32*, i32** %Cb_b_tab, align 8, !tbaa !39
  store i32* %24, i32** %Cbbtab, align 8, !tbaa !1
  %25 = bitcast i64** %Crgtab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %Cr_g_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %26, i32 0, i32 3
  %27 = load i64*, i64** %Cr_g_tab, align 8, !tbaa !40
  store i64* %27, i64** %Crgtab, align 8, !tbaa !1
  %28 = bitcast i64** %Cbgtab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %cconvert, align 8, !tbaa !1
  %Cb_g_tab = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %29, i32 0, i32 4
  %30 = load i64*, i64** %Cb_g_tab, align 8, !tbaa !41
  store i64* %30, i64** %Cbgtab, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %31 = load i32, i32* %num_rows.addr, align 4, !tbaa !27
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %num_rows.addr, align 4, !tbaa !27
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %32 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom = zext i32 %32 to i64
  %33 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8**, i8*** %33, i64 0
  %34 = load i8**, i8*** %arrayidx, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8*, i8** %34, i64 %idxprom
  %35 = load i8*, i8** %arrayidx2, align 8, !tbaa !1
  store i8* %35, i8** %inptr0, align 8, !tbaa !1
  %36 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom3 = zext i32 %36 to i64
  %37 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8**, i8*** %37, i64 1
  %38 = load i8**, i8*** %arrayidx4, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8*, i8** %38, i64 %idxprom3
  %39 = load i8*, i8** %arrayidx5, align 8, !tbaa !1
  store i8* %39, i8** %inptr1, align 8, !tbaa !1
  %40 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom6 = zext i32 %40 to i64
  %41 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8**, i8*** %41, i64 2
  %42 = load i8**, i8*** %arrayidx7, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8*, i8** %42, i64 %idxprom6
  %43 = load i8*, i8** %arrayidx8, align 8, !tbaa !1
  store i8* %43, i8** %inptr2, align 8, !tbaa !1
  %44 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom9 = zext i32 %44 to i64
  %45 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8**, i8*** %45, i64 3
  %46 = load i8**, i8*** %arrayidx10, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8*, i8** %46, i64 %idxprom9
  %47 = load i8*, i8** %arrayidx11, align 8, !tbaa !1
  store i8* %47, i8** %inptr3, align 8, !tbaa !1
  %48 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %inc = add i32 %48, 1
  store i32 %inc, i32* %input_row.addr, align 4, !tbaa !27
  %49 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %incdec.ptr, i8*** %output_buf.addr, align 8, !tbaa !1
  %50 = load i8*, i8** %49, align 8, !tbaa !1
  store i8* %50, i8** %outptr, align 8, !tbaa !1
  store i32 0, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %51 = load i32, i32* %col, align 4, !tbaa !27
  %52 = load i32, i32* %num_cols, align 4, !tbaa !27
  %cmp12 = icmp ult i32 %51, %52
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %53 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom13 = zext i32 %53 to i64
  %54 = load i8*, i8** %inptr0, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %54, i64 %idxprom13
  %55 = load i8, i8* %arrayidx14, align 1, !tbaa !35
  %conv = zext i8 %55 to i32
  store i32 %conv, i32* %y, align 4, !tbaa !27
  %56 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom15 = zext i32 %56 to i64
  %57 = load i8*, i8** %inptr1, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %57, i64 %idxprom15
  %58 = load i8, i8* %arrayidx16, align 1, !tbaa !35
  %conv17 = zext i8 %58 to i32
  store i32 %conv17, i32* %cb, align 4, !tbaa !27
  %59 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom18 = zext i32 %59 to i64
  %60 = load i8*, i8** %inptr2, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %60, i64 %idxprom18
  %61 = load i8, i8* %arrayidx19, align 1, !tbaa !35
  %conv20 = zext i8 %61 to i32
  store i32 %conv20, i32* %cr, align 4, !tbaa !27
  %62 = load i32, i32* %y, align 4, !tbaa !27
  %63 = load i32, i32* %cr, align 4, !tbaa !27
  %idxprom21 = sext i32 %63 to i64
  %64 = load i32*, i32** %Crrtab, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i32, i32* %64, i64 %idxprom21
  %65 = load i32, i32* %arrayidx22, align 4, !tbaa !27
  %add = add nsw i32 %62, %65
  %sub = sub nsw i32 255, %add
  %idxprom23 = sext i32 %sub to i64
  %66 = load i8*, i8** %range_limit, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %66, i64 %idxprom23
  %67 = load i8, i8* %arrayidx24, align 1, !tbaa !35
  %68 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %68, i64 0
  store i8 %67, i8* %arrayidx25, align 1, !tbaa !35
  %69 = load i32, i32* %y, align 4, !tbaa !27
  %70 = load i32, i32* %cb, align 4, !tbaa !27
  %idxprom26 = sext i32 %70 to i64
  %71 = load i64*, i64** %Cbgtab, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i64, i64* %71, i64 %idxprom26
  %72 = load i64, i64* %arrayidx27, align 8, !tbaa !36
  %73 = load i32, i32* %cr, align 4, !tbaa !27
  %idxprom28 = sext i32 %73 to i64
  %74 = load i64*, i64** %Crgtab, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i64, i64* %74, i64 %idxprom28
  %75 = load i64, i64* %arrayidx29, align 8, !tbaa !36
  %add30 = add nsw i64 %72, %75
  %shr = ashr i64 %add30, 16
  %conv31 = trunc i64 %shr to i32
  %add32 = add nsw i32 %69, %conv31
  %sub33 = sub nsw i32 255, %add32
  %idxprom34 = sext i32 %sub33 to i64
  %76 = load i8*, i8** %range_limit, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8, i8* %76, i64 %idxprom34
  %77 = load i8, i8* %arrayidx35, align 1, !tbaa !35
  %78 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i8, i8* %78, i64 1
  store i8 %77, i8* %arrayidx36, align 1, !tbaa !35
  %79 = load i32, i32* %y, align 4, !tbaa !27
  %80 = load i32, i32* %cb, align 4, !tbaa !27
  %idxprom37 = sext i32 %80 to i64
  %81 = load i32*, i32** %Cbbtab, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i32, i32* %81, i64 %idxprom37
  %82 = load i32, i32* %arrayidx38, align 4, !tbaa !27
  %add39 = add nsw i32 %79, %82
  %sub40 = sub nsw i32 255, %add39
  %idxprom41 = sext i32 %sub40 to i64
  %83 = load i8*, i8** %range_limit, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i8, i8* %83, i64 %idxprom41
  %84 = load i8, i8* %arrayidx42, align 1, !tbaa !35
  %85 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i8, i8* %85, i64 2
  store i8 %84, i8* %arrayidx43, align 1, !tbaa !35
  %86 = load i32, i32* %col, align 4, !tbaa !27
  %idxprom44 = zext i32 %86 to i64
  %87 = load i8*, i8** %inptr3, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i8, i8* %87, i64 %idxprom44
  %88 = load i8, i8* %arrayidx45, align 1, !tbaa !35
  %89 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i8, i8* %89, i64 3
  store i8 %88, i8* %arrayidx46, align 1, !tbaa !35
  %90 = load i8*, i8** %outptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %90, i64 4
  store i8* %add.ptr, i8** %outptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %91 = load i32, i32* %col, align 4, !tbaa !27
  %inc47 = add i32 %91, 1
  store i32 %inc47, i32* %col, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %92 = bitcast i64** %Cbgtab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast i64** %Crgtab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast i32** %Cbbtab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast i32** %Crrtab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i8** %inptr3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast i8** %inptr2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast i8** %inptr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast i8** %inptr0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast i32* %cr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %cb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast %struct.my_color_deconverter** %cconvert to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
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
  %ci = alloca i32, align 4
  %nc = alloca i32, align 4
  %outptr = alloca i8*, align 8
  %inptr = alloca i8*, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8*** %input_buf, i8**** %input_buf.addr, align 8, !tbaa !1
  store i32 %input_row, i32* %input_row.addr, align 4, !tbaa !27
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !1
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !27
  %0 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %nc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 9
  %3 = load i32, i32* %num_components, align 4, !tbaa !18
  store i32 %3, i32* %nc, align 4, !tbaa !27
  %4 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 27
  %9 = load i32, i32* %output_width, align 4, !tbaa !33
  store i32 %9, i32* %num_cols, align 4, !tbaa !27
  br label %while.cond

while.cond:                                       ; preds = %for.end.12, %entry
  %10 = load i32, i32* %num_rows.addr, align 4, !tbaa !27
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %num_rows.addr, align 4, !tbaa !27
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %ci, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %while.body
  %11 = load i32, i32* %ci, align 4, !tbaa !27
  %12 = load i32, i32* %nc, align 4, !tbaa !27
  %cmp1 = icmp slt i32 %11, %12
  br i1 %cmp1, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %idxprom = zext i32 %13 to i64
  %14 = load i32, i32* %ci, align 4, !tbaa !27
  %idxprom2 = sext i32 %14 to i64
  %15 = load i8***, i8**** %input_buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8**, i8*** %15, i64 %idxprom2
  %16 = load i8**, i8*** %arrayidx, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8*, i8** %16, i64 %idxprom
  %17 = load i8*, i8** %arrayidx3, align 8, !tbaa !1
  store i8* %17, i8** %inptr, align 8, !tbaa !1
  %18 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8*, i8** %18, i64 0
  %19 = load i8*, i8** %arrayidx4, align 8, !tbaa !1
  %20 = load i32, i32* %ci, align 4, !tbaa !27
  %idx.ext = sext i32 %20 to i64
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %idx.ext
  store i8* %add.ptr, i8** %outptr, align 8, !tbaa !1
  store i32 0, i32* %col, align 4, !tbaa !27
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %21 = load i32, i32* %col, align 4, !tbaa !27
  %22 = load i32, i32* %num_cols, align 4, !tbaa !27
  %cmp6 = icmp ult i32 %21, %22
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %23 = load i8*, i8** %inptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %inptr, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !35
  %25 = load i8*, i8** %outptr, align 8, !tbaa !1
  store i8 %24, i8* %25, align 1, !tbaa !35
  %26 = load i32, i32* %nc, align 4, !tbaa !27
  %27 = load i8*, i8** %outptr, align 8, !tbaa !1
  %idx.ext8 = sext i32 %26 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %27, i64 %idx.ext8
  store i8* %add.ptr9, i8** %outptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %28 = load i32, i32* %col, align 4, !tbaa !27
  %inc = add i32 %28, 1
  store i32 %inc, i32* %col, align 4, !tbaa !27
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %29 = load i32, i32* %ci, align 4, !tbaa !27
  %inc11 = add nsw i32 %29, 1
  store i32 %inc11, i32* %ci, align 4, !tbaa !27
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  %30 = load i32, i32* %input_row.addr, align 4, !tbaa !27
  %inc13 = add i32 %30, 1
  store i32 %inc13, i32* %input_row.addr, align 4, !tbaa !27
  %31 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !1
  %incdec.ptr14 = getelementptr inbounds i8*, i8** %31, i32 1
  store i8** %incdec.ptr14, i8*** %output_buf.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %32 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i32* %nc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  ret void
}

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
!13 = !{!6, !2, i64 864}
!14 = !{!15, !2, i64 0}
!15 = !{!"", !16, i64 0, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!16 = !{!"jpeg_color_deconverter", !2, i64 0, !2, i64 8}
!17 = !{!6, !3, i64 60}
!18 = !{!6, !7, i64 56}
!19 = !{!6, !2, i64 0}
!20 = !{!21, !7, i64 40}
!21 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !3, i64 44, !7, i64 124, !12, i64 128, !2, i64 136, !7, i64 144, !2, i64 152, !7, i64 160, !7, i64 164}
!22 = !{!21, !2, i64 0}
!23 = !{!6, !3, i64 396}
!24 = !{!6, !3, i64 64}
!25 = !{!6, !7, i64 144}
!26 = !{!15, !2, i64 8}
!27 = !{!7, !7, i64 0}
!28 = !{!6, !2, i64 304}
!29 = !{!30, !3, i64 52}
!30 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !3, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !2, i64 80, !2, i64 88}
!31 = !{!6, !3, i64 108}
!32 = !{!6, !7, i64 148}
!33 = !{!6, !7, i64 136}
!34 = !{!15, !2, i64 48}
!35 = !{!3, !3, i64 0}
!36 = !{!12, !12, i64 0}
!37 = !{!6, !2, i64 440}
!38 = !{!15, !2, i64 16}
!39 = !{!15, !2, i64 24}
!40 = !{!15, !2, i64 32}
!41 = !{!15, !2, i64 40}
