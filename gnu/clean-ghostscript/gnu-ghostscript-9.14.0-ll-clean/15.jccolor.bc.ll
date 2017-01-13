; ModuleID = './jccolor.bc'
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
%struct.my_color_converter = type { %struct.jpeg_color_converter, i64* }

; Function Attrs: nounwind uwtable
define void @jinit_color_converter(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %cconvert = alloca %struct.my_color_converter*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_color_converter** %cconvert to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !5
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %2, i32 0, i32 0
  %3 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !10
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %5 = bitcast %struct.jpeg_compress_struct* %4 to %struct.jpeg_common_struct*
  %call = call i8* %3(%struct.jpeg_common_struct* %5, i32 1, i64 24) #2
  %6 = bitcast i8* %call to %struct.my_color_converter*
  store %struct.my_color_converter* %6, %struct.my_color_converter** %cconvert, align 8, !tbaa !1
  %7 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %7, i32 0, i32 0
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cconvert1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 71
  store %struct.jpeg_color_converter* %pub, %struct.jpeg_color_converter** %cconvert1, align 8, !tbaa !13
  %9 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !1
  %pub2 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %9, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub2, i32 0, i32 0
  %start_pass3 = bitcast {}** %start_pass to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @null_method, void (%struct.jpeg_compress_struct*)** %start_pass3, align 8, !tbaa !14
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 10
  %11 = load i32, i32* %in_color_space, align 4, !tbaa !17
  switch i32 %11, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
    i32 6, label %sw.bb.5
    i32 3, label %sw.bb.14
    i32 7, label %sw.bb.14
    i32 4, label %sw.bb.23
    i32 5, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %entry
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 9
  %13 = load i32, i32* %input_components, align 4, !tbaa !18
  %cmp = icmp ne i32 %13, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !19
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 5
  store i32 10, i32* %msg_code, align 4, !tbaa !20
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !19
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 0
  %18 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !22
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %20 = bitcast %struct.jpeg_compress_struct* %19 to %struct.jpeg_common_struct*
  call void %18(%struct.jpeg_common_struct* %20) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry, %entry
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %input_components6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 9
  %22 = load i32, i32* %input_components6, align 4, !tbaa !18
  %cmp7 = icmp ne i32 %22, 3
  br i1 %cmp7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %sw.bb.5
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8, !tbaa !19
  %msg_code10 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i32 0, i32 5
  store i32 10, i32* %msg_code10, align 4, !tbaa !20
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err11, align 8, !tbaa !19
  %error_exit12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i32 0, i32 0
  %27 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit12, align 8, !tbaa !22
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %29 = bitcast %struct.jpeg_compress_struct* %28 to %struct.jpeg_common_struct*
  call void %27(%struct.jpeg_common_struct* %29) #2
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.8, %sw.bb.5
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry, %entry
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %input_components15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 9
  %31 = load i32, i32* %input_components15, align 4, !tbaa !18
  %cmp16 = icmp ne i32 %31, 3
  br i1 %cmp16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %sw.bb.14
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err18, align 8, !tbaa !19
  %msg_code19 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 5
  store i32 10, i32* %msg_code19, align 4, !tbaa !20
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err20, align 8, !tbaa !19
  %error_exit21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i32 0, i32 0
  %36 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit21, align 8, !tbaa !22
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %38 = bitcast %struct.jpeg_compress_struct* %37 to %struct.jpeg_common_struct*
  call void %36(%struct.jpeg_common_struct* %38) #2
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.17, %sw.bb.14
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry, %entry
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %input_components24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %39, i32 0, i32 9
  %40 = load i32, i32* %input_components24, align 4, !tbaa !18
  %cmp25 = icmp ne i32 %40, 4
  br i1 %cmp25, label %if.then.26, label %if.end.31

if.then.26:                                       ; preds = %sw.bb.23
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err27, align 8, !tbaa !19
  %msg_code28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i32 0, i32 5
  store i32 10, i32* %msg_code28, align 4, !tbaa !20
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err29, align 8, !tbaa !19
  %error_exit30 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i32 0, i32 0
  %45 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit30, align 8, !tbaa !22
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %47 = bitcast %struct.jpeg_compress_struct* %46 to %struct.jpeg_common_struct*
  call void %45(%struct.jpeg_common_struct* %47) #2
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.26, %sw.bb.23
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %input_components32 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %48, i32 0, i32 9
  %49 = load i32, i32* %input_components32, align 4, !tbaa !18
  %cmp33 = icmp slt i32 %49, 1
  br i1 %cmp33, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %sw.default
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 0
  %51 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err35, align 8, !tbaa !19
  %msg_code36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %51, i32 0, i32 5
  store i32 10, i32* %msg_code36, align 4, !tbaa !20
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err37 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %52, i32 0, i32 0
  %53 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err37, align 8, !tbaa !19
  %error_exit38 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %53, i32 0, i32 0
  %54 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit38, align 8, !tbaa !22
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %56 = bitcast %struct.jpeg_compress_struct* %55 to %struct.jpeg_common_struct*
  call void %54(%struct.jpeg_common_struct* %56) #2
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.34, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.39, %if.end.31, %if.end.22, %if.end.13, %if.end
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %color_transform = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %57, i32 0, i32 45
  %58 = load i32, i32* %color_transform, align 4, !tbaa !23
  %tobool = icmp ne i32 %58, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %sw.epilog
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %59, i32 0, i32 18
  %60 = load i32, i32* %jpeg_color_space, align 4, !tbaa !24
  %cmp40 = icmp ne i32 %60, 2
  br i1 %cmp40, label %land.lhs.true.41, label %if.end.49

land.lhs.true.41:                                 ; preds = %land.lhs.true
  %61 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space42 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %61, i32 0, i32 18
  %62 = load i32, i32* %jpeg_color_space42, align 4, !tbaa !24
  %cmp43 = icmp ne i32 %62, 6
  br i1 %cmp43, label %if.then.44, label %if.end.49

if.then.44:                                       ; preds = %land.lhs.true.41
  %63 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err45 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %63, i32 0, i32 0
  %64 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err45, align 8, !tbaa !19
  %msg_code46 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %64, i32 0, i32 5
  store i32 28, i32* %msg_code46, align 4, !tbaa !20
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err47 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %65, i32 0, i32 0
  %66 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err47, align 8, !tbaa !19
  %error_exit48 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %66, i32 0, i32 0
  %67 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit48, align 8, !tbaa !22
  %68 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %69 = bitcast %struct.jpeg_compress_struct* %68 to %struct.jpeg_common_struct*
  call void %67(%struct.jpeg_common_struct* %69) #2
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.44, %land.lhs.true.41, %land.lhs.true, %sw.epilog
  %70 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space50 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %70, i32 0, i32 18
  %71 = load i32, i32* %jpeg_color_space50, align 4, !tbaa !24
  switch i32 %71, label %sw.default.210 [
    i32 1, label %sw.bb.51
    i32 2, label %sw.bb.74
    i32 6, label %sw.bb.74
    i32 3, label %sw.bb.105
    i32 7, label %sw.bb.130
    i32 4, label %sw.bb.165
    i32 5, label %sw.bb.185
  ]

sw.bb.51:                                         ; preds = %if.end.49
  %72 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %72, i32 0, i32 17
  %73 = load i32, i32* %num_components, align 4, !tbaa !25
  %cmp52 = icmp ne i32 %73, 1
  br i1 %cmp52, label %if.then.53, label %if.end.58

if.then.53:                                       ; preds = %sw.bb.51
  %74 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err54 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %74, i32 0, i32 0
  %75 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err54, align 8, !tbaa !19
  %msg_code55 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %75, i32 0, i32 5
  store i32 11, i32* %msg_code55, align 4, !tbaa !20
  %76 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err56 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %76, i32 0, i32 0
  %77 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err56, align 8, !tbaa !19
  %error_exit57 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %77, i32 0, i32 0
  %78 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit57, align 8, !tbaa !22
  %79 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %80 = bitcast %struct.jpeg_compress_struct* %79 to %struct.jpeg_common_struct*
  call void %78(%struct.jpeg_common_struct* %80) #2
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.53, %sw.bb.51
  %81 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %in_color_space59 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %81, i32 0, i32 10
  %82 = load i32, i32* %in_color_space59, align 4, !tbaa !17
  switch i32 %82, label %sw.default.68 [
    i32 1, label %sw.bb.60
    i32 3, label %sw.bb.60
    i32 7, label %sw.bb.60
    i32 2, label %sw.bb.62
  ]

sw.bb.60:                                         ; preds = %if.end.58, %if.end.58, %if.end.58
  %83 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !1
  %pub61 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %83, i32 0, i32 0
  %color_convert = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub61, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @grayscale_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert, align 8, !tbaa !26
  br label %sw.epilog.73

sw.bb.62:                                         ; preds = %if.end.58
  %84 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !1
  %pub63 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %84, i32 0, i32 0
  %start_pass64 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub63, i32 0, i32 0
  %start_pass65 = bitcast {}** %start_pass64 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @rgb_ycc_start, void (%struct.jpeg_compress_struct*)** %start_pass65, align 8, !tbaa !14
  %85 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !1
  %pub66 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %85, i32 0, i32 0
  %color_convert67 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub66, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @rgb_gray_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert67, align 8, !tbaa !26
  br label %sw.epilog.73

sw.default.68:                                    ; preds = %if.end.58
  %86 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err69 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %86, i32 0, i32 0
  %87 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err69, align 8, !tbaa !19
  %msg_code70 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %87, i32 0, i32 5
  store i32 28, i32* %msg_code70, align 4, !tbaa !20
  %88 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err71 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %88, i32 0, i32 0
  %89 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err71, align 8, !tbaa !19
  %error_exit72 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %89, i32 0, i32 0
  %90 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit72, align 8, !tbaa !22
  %91 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %92 = bitcast %struct.jpeg_compress_struct* %91 to %struct.jpeg_common_struct*
  call void %90(%struct.jpeg_common_struct* %92) #2
  br label %sw.epilog.73

sw.epilog.73:                                     ; preds = %sw.default.68, %sw.bb.62, %sw.bb.60
  br label %sw.epilog.225

sw.bb.74:                                         ; preds = %if.end.49, %if.end.49
  %93 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components75 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %93, i32 0, i32 17
  %94 = load i32, i32* %num_components75, align 4, !tbaa !25
  %cmp76 = icmp ne i32 %94, 3
  br i1 %cmp76, label %if.then.77, label %if.end.82

if.then.77:                                       ; preds = %sw.bb.74
  %95 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err78 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %95, i32 0, i32 0
  %96 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err78, align 8, !tbaa !19
  %msg_code79 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %96, i32 0, i32 5
  store i32 11, i32* %msg_code79, align 4, !tbaa !20
  %97 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err80 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %97, i32 0, i32 0
  %98 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err80, align 8, !tbaa !19
  %error_exit81 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %98, i32 0, i32 0
  %99 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit81, align 8, !tbaa !22
  %100 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %101 = bitcast %struct.jpeg_compress_struct* %100 to %struct.jpeg_common_struct*
  call void %99(%struct.jpeg_common_struct* %101) #2
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.77, %sw.bb.74
  %102 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %in_color_space83 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %102, i32 0, i32 10
  %103 = load i32, i32* %in_color_space83, align 4, !tbaa !17
  %104 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space84 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %104, i32 0, i32 18
  %105 = load i32, i32* %jpeg_color_space84, align 4, !tbaa !24
  %cmp85 = icmp eq i32 %103, %105
  br i1 %cmp85, label %if.then.86, label %if.else

if.then.86:                                       ; preds = %if.end.82
  %106 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %color_transform87 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %106, i32 0, i32 45
  %107 = load i32, i32* %color_transform87, align 4, !tbaa !23
  switch i32 %107, label %sw.default.94 [
    i32 0, label %sw.bb.88
    i32 1, label %sw.bb.91
  ]

sw.bb.88:                                         ; preds = %if.then.86
  %108 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !1
  %pub89 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %108, i32 0, i32 0
  %color_convert90 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub89, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @rgb_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert90, align 8, !tbaa !26
  br label %sw.epilog.99

sw.bb.91:                                         ; preds = %if.then.86
  %109 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !1
  %pub92 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %109, i32 0, i32 0
  %color_convert93 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub92, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @rgb_rgb1_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert93, align 8, !tbaa !26
  br label %sw.epilog.99

sw.default.94:                                    ; preds = %if.then.86
  %110 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err95 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %110, i32 0, i32 0
  %111 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err95, align 8, !tbaa !19
  %msg_code96 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %111, i32 0, i32 5
  store i32 28, i32* %msg_code96, align 4, !tbaa !20
  %112 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err97 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %112, i32 0, i32 0
  %113 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err97, align 8, !tbaa !19
  %error_exit98 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %113, i32 0, i32 0
  %114 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit98, align 8, !tbaa !22
  %115 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %116 = bitcast %struct.jpeg_compress_struct* %115 to %struct.jpeg_common_struct*
  call void %114(%struct.jpeg_common_struct* %116) #2
  br label %sw.epilog.99

sw.epilog.99:                                     ; preds = %sw.default.94, %sw.bb.91, %sw.bb.88
  br label %if.end.104

if.else:                                          ; preds = %if.end.82
  %117 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err100 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %117, i32 0, i32 0
  %118 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err100, align 8, !tbaa !19
  %msg_code101 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %118, i32 0, i32 5
  store i32 28, i32* %msg_code101, align 4, !tbaa !20
  %119 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err102 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %119, i32 0, i32 0
  %120 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err102, align 8, !tbaa !19
  %error_exit103 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %120, i32 0, i32 0
  %121 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit103, align 8, !tbaa !22
  %122 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %123 = bitcast %struct.jpeg_compress_struct* %122 to %struct.jpeg_common_struct*
  call void %121(%struct.jpeg_common_struct* %123) #2
  br label %if.end.104

if.end.104:                                       ; preds = %if.else, %sw.epilog.99
  br label %sw.epilog.225

sw.bb.105:                                        ; preds = %if.end.49
  %124 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components106 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %124, i32 0, i32 17
  %125 = load i32, i32* %num_components106, align 4, !tbaa !25
  %cmp107 = icmp ne i32 %125, 3
  br i1 %cmp107, label %if.then.108, label %if.end.113

if.then.108:                                      ; preds = %sw.bb.105
  %126 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err109 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %126, i32 0, i32 0
  %127 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err109, align 8, !tbaa !19
  %msg_code110 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %127, i32 0, i32 5
  store i32 11, i32* %msg_code110, align 4, !tbaa !20
  %128 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err111 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %128, i32 0, i32 0
  %129 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err111, align 8, !tbaa !19
  %error_exit112 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %129, i32 0, i32 0
  %130 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit112, align 8, !tbaa !22
  %131 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %132 = bitcast %struct.jpeg_compress_struct* %131 to %struct.jpeg_common_struct*
  call void %130(%struct.jpeg_common_struct* %132) #2
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.108, %sw.bb.105
  %133 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %in_color_space114 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %133, i32 0, i32 10
  %134 = load i32, i32* %in_color_space114, align 4, !tbaa !17
  switch i32 %134, label %sw.default.124 [
    i32 2, label %sw.bb.115
    i32 3, label %sw.bb.121
  ]

sw.bb.115:                                        ; preds = %if.end.113
  %135 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !1
  %pub116 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %135, i32 0, i32 0
  %start_pass117 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub116, i32 0, i32 0
  %start_pass118 = bitcast {}** %start_pass117 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @rgb_ycc_start, void (%struct.jpeg_compress_struct*)** %start_pass118, align 8, !tbaa !14
  %136 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !1
  %pub119 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %136, i32 0, i32 0
  %color_convert120 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub119, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @rgb_ycc_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert120, align 8, !tbaa !26
  br label %sw.epilog.129

sw.bb.121:                                        ; preds = %if.end.113
  %137 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !1
  %pub122 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %137, i32 0, i32 0
  %color_convert123 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub122, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @null_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert123, align 8, !tbaa !26
  br label %sw.epilog.129

sw.default.124:                                   ; preds = %if.end.113
  %138 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err125 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %138, i32 0, i32 0
  %139 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err125, align 8, !tbaa !19
  %msg_code126 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %139, i32 0, i32 5
  store i32 28, i32* %msg_code126, align 4, !tbaa !20
  %140 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err127 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %140, i32 0, i32 0
  %141 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err127, align 8, !tbaa !19
  %error_exit128 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %141, i32 0, i32 0
  %142 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit128, align 8, !tbaa !22
  %143 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %144 = bitcast %struct.jpeg_compress_struct* %143 to %struct.jpeg_common_struct*
  call void %142(%struct.jpeg_common_struct* %144) #2
  br label %sw.epilog.129

sw.epilog.129:                                    ; preds = %sw.default.124, %sw.bb.121, %sw.bb.115
  br label %sw.epilog.225

sw.bb.130:                                        ; preds = %if.end.49
  %145 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components131 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %145, i32 0, i32 17
  %146 = load i32, i32* %num_components131, align 4, !tbaa !25
  %cmp132 = icmp ne i32 %146, 3
  br i1 %cmp132, label %if.then.133, label %if.end.138

if.then.133:                                      ; preds = %sw.bb.130
  %147 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err134 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %147, i32 0, i32 0
  %148 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err134, align 8, !tbaa !19
  %msg_code135 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %148, i32 0, i32 5
  store i32 11, i32* %msg_code135, align 4, !tbaa !20
  %149 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err136 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %149, i32 0, i32 0
  %150 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err136, align 8, !tbaa !19
  %error_exit137 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %150, i32 0, i32 0
  %151 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit137, align 8, !tbaa !22
  %152 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %153 = bitcast %struct.jpeg_compress_struct* %152 to %struct.jpeg_common_struct*
  call void %151(%struct.jpeg_common_struct* %153) #2
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.133, %sw.bb.130
  %154 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %in_color_space139 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %154, i32 0, i32 10
  %155 = load i32, i32* %in_color_space139, align 4, !tbaa !17
  switch i32 %155, label %sw.default.159 [
    i32 2, label %sw.bb.140
    i32 3, label %sw.bb.149
    i32 7, label %sw.bb.156
  ]

sw.bb.140:                                        ; preds = %if.end.138
  %156 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %156, i32 0, i32 19
  %157 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !27
  %arrayidx = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %157, i64 1
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx, i32 0, i32 13
  store i32 1, i32* %component_needed, align 4, !tbaa !28
  %158 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info141 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %158, i32 0, i32 19
  %159 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info141, align 8, !tbaa !27
  %arrayidx142 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %159, i64 2
  %component_needed143 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx142, i32 0, i32 13
  store i32 1, i32* %component_needed143, align 4, !tbaa !28
  %160 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !1
  %pub144 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %160, i32 0, i32 0
  %start_pass145 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub144, i32 0, i32 0
  %start_pass146 = bitcast {}** %start_pass145 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @rgb_ycc_start, void (%struct.jpeg_compress_struct*)** %start_pass146, align 8, !tbaa !14
  %161 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !1
  %pub147 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %161, i32 0, i32 0
  %color_convert148 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub147, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @rgb_ycc_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert148, align 8, !tbaa !26
  br label %sw.epilog.164

sw.bb.149:                                        ; preds = %if.end.138
  %162 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info150 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %162, i32 0, i32 19
  %163 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info150, align 8, !tbaa !27
  %arrayidx151 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %163, i64 1
  %component_needed152 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx151, i32 0, i32 13
  store i32 1, i32* %component_needed152, align 4, !tbaa !28
  %164 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info153 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %164, i32 0, i32 19
  %165 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info153, align 8, !tbaa !27
  %arrayidx154 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %165, i64 2
  %component_needed155 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx154, i32 0, i32 13
  store i32 1, i32* %component_needed155, align 4, !tbaa !28
  br label %sw.bb.156

sw.bb.156:                                        ; preds = %if.end.138, %sw.bb.149
  %166 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !1
  %pub157 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %166, i32 0, i32 0
  %color_convert158 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub157, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @null_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert158, align 8, !tbaa !26
  br label %sw.epilog.164

sw.default.159:                                   ; preds = %if.end.138
  %167 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err160 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %167, i32 0, i32 0
  %168 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err160, align 8, !tbaa !19
  %msg_code161 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %168, i32 0, i32 5
  store i32 28, i32* %msg_code161, align 4, !tbaa !20
  %169 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err162 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %169, i32 0, i32 0
  %170 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err162, align 8, !tbaa !19
  %error_exit163 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %170, i32 0, i32 0
  %171 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit163, align 8, !tbaa !22
  %172 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %173 = bitcast %struct.jpeg_compress_struct* %172 to %struct.jpeg_common_struct*
  call void %171(%struct.jpeg_common_struct* %173) #2
  br label %sw.epilog.164

sw.epilog.164:                                    ; preds = %sw.default.159, %sw.bb.156, %sw.bb.140
  br label %sw.epilog.225

sw.bb.165:                                        ; preds = %if.end.49
  %174 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components166 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %174, i32 0, i32 17
  %175 = load i32, i32* %num_components166, align 4, !tbaa !25
  %cmp167 = icmp ne i32 %175, 4
  br i1 %cmp167, label %if.then.168, label %if.end.173

if.then.168:                                      ; preds = %sw.bb.165
  %176 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err169 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %176, i32 0, i32 0
  %177 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err169, align 8, !tbaa !19
  %msg_code170 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %177, i32 0, i32 5
  store i32 11, i32* %msg_code170, align 4, !tbaa !20
  %178 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err171 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %178, i32 0, i32 0
  %179 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err171, align 8, !tbaa !19
  %error_exit172 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %179, i32 0, i32 0
  %180 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit172, align 8, !tbaa !22
  %181 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %182 = bitcast %struct.jpeg_compress_struct* %181 to %struct.jpeg_common_struct*
  call void %180(%struct.jpeg_common_struct* %182) #2
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.168, %sw.bb.165
  %183 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %in_color_space174 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %183, i32 0, i32 10
  %184 = load i32, i32* %in_color_space174, align 4, !tbaa !17
  %cmp175 = icmp eq i32 %184, 4
  br i1 %cmp175, label %if.then.176, label %if.else.179

if.then.176:                                      ; preds = %if.end.173
  %185 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !1
  %pub177 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %185, i32 0, i32 0
  %color_convert178 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub177, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @null_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert178, align 8, !tbaa !26
  br label %if.end.184

if.else.179:                                      ; preds = %if.end.173
  %186 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err180 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %186, i32 0, i32 0
  %187 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err180, align 8, !tbaa !19
  %msg_code181 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %187, i32 0, i32 5
  store i32 28, i32* %msg_code181, align 4, !tbaa !20
  %188 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err182 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %188, i32 0, i32 0
  %189 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err182, align 8, !tbaa !19
  %error_exit183 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %189, i32 0, i32 0
  %190 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit183, align 8, !tbaa !22
  %191 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %192 = bitcast %struct.jpeg_compress_struct* %191 to %struct.jpeg_common_struct*
  call void %190(%struct.jpeg_common_struct* %192) #2
  br label %if.end.184

if.end.184:                                       ; preds = %if.else.179, %if.then.176
  br label %sw.epilog.225

sw.bb.185:                                        ; preds = %if.end.49
  %193 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components186 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %193, i32 0, i32 17
  %194 = load i32, i32* %num_components186, align 4, !tbaa !25
  %cmp187 = icmp ne i32 %194, 4
  br i1 %cmp187, label %if.then.188, label %if.end.193

if.then.188:                                      ; preds = %sw.bb.185
  %195 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err189 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %195, i32 0, i32 0
  %196 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err189, align 8, !tbaa !19
  %msg_code190 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %196, i32 0, i32 5
  store i32 11, i32* %msg_code190, align 4, !tbaa !20
  %197 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err191 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %197, i32 0, i32 0
  %198 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err191, align 8, !tbaa !19
  %error_exit192 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %198, i32 0, i32 0
  %199 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit192, align 8, !tbaa !22
  %200 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %201 = bitcast %struct.jpeg_compress_struct* %200 to %struct.jpeg_common_struct*
  call void %199(%struct.jpeg_common_struct* %201) #2
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.188, %sw.bb.185
  %202 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %in_color_space194 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %202, i32 0, i32 10
  %203 = load i32, i32* %in_color_space194, align 4, !tbaa !17
  switch i32 %203, label %sw.default.204 [
    i32 4, label %sw.bb.195
    i32 5, label %sw.bb.201
  ]

sw.bb.195:                                        ; preds = %if.end.193
  %204 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !1
  %pub196 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %204, i32 0, i32 0
  %start_pass197 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub196, i32 0, i32 0
  %start_pass198 = bitcast {}** %start_pass197 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @rgb_ycc_start, void (%struct.jpeg_compress_struct*)** %start_pass198, align 8, !tbaa !14
  %205 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !1
  %pub199 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %205, i32 0, i32 0
  %color_convert200 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub199, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @cmyk_ycck_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert200, align 8, !tbaa !26
  br label %sw.epilog.209

sw.bb.201:                                        ; preds = %if.end.193
  %206 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !1
  %pub202 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %206, i32 0, i32 0
  %color_convert203 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub202, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @null_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert203, align 8, !tbaa !26
  br label %sw.epilog.209

sw.default.204:                                   ; preds = %if.end.193
  %207 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err205 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %207, i32 0, i32 0
  %208 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err205, align 8, !tbaa !19
  %msg_code206 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %208, i32 0, i32 5
  store i32 28, i32* %msg_code206, align 4, !tbaa !20
  %209 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err207 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %209, i32 0, i32 0
  %210 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err207, align 8, !tbaa !19
  %error_exit208 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %210, i32 0, i32 0
  %211 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit208, align 8, !tbaa !22
  %212 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %213 = bitcast %struct.jpeg_compress_struct* %212 to %struct.jpeg_common_struct*
  call void %211(%struct.jpeg_common_struct* %213) #2
  br label %sw.epilog.209

sw.epilog.209:                                    ; preds = %sw.default.204, %sw.bb.201, %sw.bb.195
  br label %sw.epilog.225

sw.default.210:                                   ; preds = %if.end.49
  %214 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %jpeg_color_space211 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %214, i32 0, i32 18
  %215 = load i32, i32* %jpeg_color_space211, align 4, !tbaa !24
  %216 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %in_color_space212 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %216, i32 0, i32 10
  %217 = load i32, i32* %in_color_space212, align 4, !tbaa !17
  %cmp213 = icmp ne i32 %215, %217
  br i1 %cmp213, label %if.then.217, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.default.210
  %218 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components214 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %218, i32 0, i32 17
  %219 = load i32, i32* %num_components214, align 4, !tbaa !25
  %220 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %input_components215 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %220, i32 0, i32 9
  %221 = load i32, i32* %input_components215, align 4, !tbaa !18
  %cmp216 = icmp ne i32 %219, %221
  br i1 %cmp216, label %if.then.217, label %if.end.222

if.then.217:                                      ; preds = %lor.lhs.false, %sw.default.210
  %222 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err218 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %222, i32 0, i32 0
  %223 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err218, align 8, !tbaa !19
  %msg_code219 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %223, i32 0, i32 5
  store i32 28, i32* %msg_code219, align 4, !tbaa !20
  %224 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %err220 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %224, i32 0, i32 0
  %225 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err220, align 8, !tbaa !19
  %error_exit221 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %225, i32 0, i32 0
  %226 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit221, align 8, !tbaa !22
  %227 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %228 = bitcast %struct.jpeg_compress_struct* %227 to %struct.jpeg_common_struct*
  call void %226(%struct.jpeg_common_struct* %228) #2
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.217, %lor.lhs.false
  %229 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !1
  %pub223 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %229, i32 0, i32 0
  %color_convert224 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %pub223, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @null_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %color_convert224, align 8, !tbaa !26
  br label %sw.epilog.225

sw.epilog.225:                                    ; preds = %if.end.222, %sw.epilog.209, %if.end.184, %sw.epilog.164, %sw.epilog.129, %if.end.104, %sw.epilog.73
  %230 = bitcast %struct.my_color_converter** %cconvert to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @null_method(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
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
  %instride = alloca i32, align 4
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8** %input_buf, i8*** %input_buf.addr, align 8, !tbaa !1
  store i8*** %output_buf, i8**** %output_buf.addr, align 8, !tbaa !1
  store i32 %output_row, i32* %output_row.addr, align 4, !tbaa !30
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !30
  %0 = bitcast i32* %instride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 9
  %2 = load i32, i32* %input_components, align 4, !tbaa !18
  store i32 %2, i32* %instride, align 4, !tbaa !30
  %3 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 7
  %8 = load i32, i32* %image_width, align 4, !tbaa !31
  store i32 %8, i32* %num_cols, align 4, !tbaa !30
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %9 = load i32, i32* %num_rows.addr, align 4, !tbaa !30
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %num_rows.addr, align 4, !tbaa !30
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8**, i8*** %input_buf.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %10, i32 1
  store i8** %incdec.ptr, i8*** %input_buf.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %10, align 8, !tbaa !1
  store i8* %11, i8** %inptr, align 8, !tbaa !1
  %12 = load i32, i32* %output_row.addr, align 4, !tbaa !30
  %inc = add i32 %12, 1
  store i32 %inc, i32* %output_row.addr, align 4, !tbaa !30
  %idxprom = zext i32 %12 to i64
  %13 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8**, i8*** %13, i64 0
  %14 = load i8**, i8*** %arrayidx, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8*, i8** %14, i64 %idxprom
  %15 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  store i8* %15, i8** %outptr, align 8, !tbaa !1
  store i32 0, i32* %col, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %16 = load i32, i32* %col, align 4, !tbaa !30
  %17 = load i32, i32* %num_cols, align 4, !tbaa !30
  %cmp2 = icmp ult i32 %16, %17
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i8*, i8** %inptr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx3, align 1, !tbaa !32
  %20 = load i32, i32* %col, align 4, !tbaa !30
  %idxprom4 = zext i32 %20 to i64
  %21 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %21, i64 %idxprom4
  store i8 %19, i8* %arrayidx5, align 1, !tbaa !32
  %22 = load i32, i32* %instride, align 4, !tbaa !30
  %23 = load i8*, i8** %inptr, align 8, !tbaa !1
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  store i8* %add.ptr, i8** %inptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %col, align 4, !tbaa !30
  %inc6 = add i32 %24, 1
  store i32 %inc6, i32* %col, align 4, !tbaa !30
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast i32* %instride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rgb_ycc_start(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %cconvert = alloca %struct.my_color_converter*, align 8
  %rgb_ycc_tab = alloca i64*, align 8
  %i = alloca i64, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_color_converter** %cconvert to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cconvert1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 71
  %2 = load %struct.jpeg_color_converter*, %struct.jpeg_color_converter** %cconvert1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_color_converter* %2 to %struct.my_color_converter*
  store %struct.my_color_converter* %3, %struct.my_color_converter** %cconvert, align 8, !tbaa !1
  %4 = bitcast i64** %rgb_ycc_tab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 1
  %7 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !5
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %7, i32 0, i32 0
  %8 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !10
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %10 = bitcast %struct.jpeg_compress_struct* %9 to %struct.jpeg_common_struct*
  %call = call i8* %8(%struct.jpeg_common_struct* %10, i32 1, i64 16384) #2
  %11 = bitcast i8* %call to i64*
  store i64* %11, i64** %rgb_ycc_tab, align 8, !tbaa !1
  %12 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !1
  %rgb_ycc_tab2 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %12, i32 0, i32 1
  store i64* %11, i64** %rgb_ycc_tab2, align 8, !tbaa !33
  store i64 0, i64* %i, align 8, !tbaa !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i64, i64* %i, align 8, !tbaa !34
  %cmp = icmp sle i64 %13, 255
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i64, i64* %i, align 8, !tbaa !34
  %mul = mul nsw i64 19595, %14
  %15 = load i64, i64* %i, align 8, !tbaa !34
  %add = add nsw i64 %15, 0
  %16 = load i64*, i64** %rgb_ycc_tab, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %16, i64 %add
  store i64 %mul, i64* %arrayidx, align 8, !tbaa !34
  %17 = load i64, i64* %i, align 8, !tbaa !34
  %mul3 = mul nsw i64 38470, %17
  %18 = load i64, i64* %i, align 8, !tbaa !34
  %add4 = add nsw i64 %18, 256
  %19 = load i64*, i64** %rgb_ycc_tab, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i64, i64* %19, i64 %add4
  store i64 %mul3, i64* %arrayidx5, align 8, !tbaa !34
  %20 = load i64, i64* %i, align 8, !tbaa !34
  %mul6 = mul nsw i64 7471, %20
  %add7 = add nsw i64 %mul6, 32768
  %21 = load i64, i64* %i, align 8, !tbaa !34
  %add8 = add nsw i64 %21, 512
  %22 = load i64*, i64** %rgb_ycc_tab, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i64, i64* %22, i64 %add8
  store i64 %add7, i64* %arrayidx9, align 8, !tbaa !34
  %23 = load i64, i64* %i, align 8, !tbaa !34
  %mul10 = mul nsw i64 -11058, %23
  %24 = load i64, i64* %i, align 8, !tbaa !34
  %add11 = add nsw i64 %24, 768
  %25 = load i64*, i64** %rgb_ycc_tab, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i64, i64* %25, i64 %add11
  store i64 %mul10, i64* %arrayidx12, align 8, !tbaa !34
  %26 = load i64, i64* %i, align 8, !tbaa !34
  %mul13 = mul nsw i64 -21710, %26
  %27 = load i64, i64* %i, align 8, !tbaa !34
  %add14 = add nsw i64 %27, 1024
  %28 = load i64*, i64** %rgb_ycc_tab, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i64, i64* %28, i64 %add14
  store i64 %mul13, i64* %arrayidx15, align 8, !tbaa !34
  %29 = load i64, i64* %i, align 8, !tbaa !34
  %mul16 = mul nsw i64 32768, %29
  %add17 = add nsw i64 %mul16, 8388608
  %add18 = add nsw i64 %add17, 32768
  %sub = sub nsw i64 %add18, 1
  %30 = load i64, i64* %i, align 8, !tbaa !34
  %add19 = add nsw i64 %30, 1280
  %31 = load i64*, i64** %rgb_ycc_tab, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i64, i64* %31, i64 %add19
  store i64 %sub, i64* %arrayidx20, align 8, !tbaa !34
  %32 = load i64, i64* %i, align 8, !tbaa !34
  %mul21 = mul nsw i64 -27439, %32
  %33 = load i64, i64* %i, align 8, !tbaa !34
  %add22 = add nsw i64 %33, 1536
  %34 = load i64*, i64** %rgb_ycc_tab, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i64, i64* %34, i64 %add22
  store i64 %mul21, i64* %arrayidx23, align 8, !tbaa !34
  %35 = load i64, i64* %i, align 8, !tbaa !34
  %mul24 = mul nsw i64 -5329, %35
  %36 = load i64, i64* %i, align 8, !tbaa !34
  %add25 = add nsw i64 %36, 1792
  %37 = load i64*, i64** %rgb_ycc_tab, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i64, i64* %37, i64 %add25
  store i64 %mul24, i64* %arrayidx26, align 8, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i64, i64* %i, align 8, !tbaa !34
  %inc = add nsw i64 %38, 1
  store i64 %inc, i64* %i, align 8, !tbaa !34
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i64** %rgb_ycc_tab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast %struct.my_color_converter** %cconvert to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
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
  %ctab = alloca i64*, align 8
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8** %input_buf, i8*** %input_buf.addr, align 8, !tbaa !1
  store i8*** %output_buf, i8**** %output_buf.addr, align 8, !tbaa !1
  store i32 %output_row, i32* %output_row.addr, align 4, !tbaa !30
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !30
  %0 = bitcast %struct.my_color_converter** %cconvert to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cconvert1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 71
  %2 = load %struct.jpeg_color_converter*, %struct.jpeg_color_converter** %cconvert1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_color_converter* %2 to %struct.my_color_converter*
  store %struct.my_color_converter* %3, %struct.my_color_converter** %cconvert, align 8, !tbaa !1
  %4 = bitcast i64** %ctab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !1
  %rgb_ycc_tab = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %5, i32 0, i32 1
  %6 = load i64*, i64** %rgb_ycc_tab, align 8, !tbaa !33
  store i64* %6, i64** %ctab, align 8, !tbaa !1
  %7 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 7
  %15 = load i32, i32* %image_width, align 4, !tbaa !31
  store i32 %15, i32* %num_cols, align 4, !tbaa !30
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %16 = load i32, i32* %num_rows.addr, align 4, !tbaa !30
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %num_rows.addr, align 4, !tbaa !30
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i8**, i8*** %input_buf.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %17, i32 1
  store i8** %incdec.ptr, i8*** %input_buf.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %17, align 8, !tbaa !1
  store i8* %18, i8** %inptr, align 8, !tbaa !1
  %19 = load i32, i32* %output_row.addr, align 4, !tbaa !30
  %inc = add i32 %19, 1
  store i32 %inc, i32* %output_row.addr, align 4, !tbaa !30
  %idxprom = zext i32 %19 to i64
  %20 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8**, i8*** %20, i64 0
  %21 = load i8**, i8*** %arrayidx, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8*, i8** %21, i64 %idxprom
  %22 = load i8*, i8** %arrayidx2, align 8, !tbaa !1
  store i8* %22, i8** %outptr, align 8, !tbaa !1
  store i32 0, i32* %col, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %23 = load i32, i32* %col, align 4, !tbaa !30
  %24 = load i32, i32* %num_cols, align 4, !tbaa !30
  %cmp3 = icmp ult i32 %23, %24
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i8*, i8** %inptr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx4, align 1, !tbaa !32
  %conv = zext i8 %26 to i32
  store i32 %conv, i32* %r, align 4, !tbaa !30
  %27 = load i8*, i8** %inptr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx5, align 1, !tbaa !32
  %conv6 = zext i8 %28 to i32
  store i32 %conv6, i32* %g, align 4, !tbaa !30
  %29 = load i8*, i8** %inptr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %29, i64 2
  %30 = load i8, i8* %arrayidx7, align 1, !tbaa !32
  %conv8 = zext i8 %30 to i32
  store i32 %conv8, i32* %b, align 4, !tbaa !30
  %31 = load i32, i32* %r, align 4, !tbaa !30
  %add = add nsw i32 %31, 0
  %idxprom9 = sext i32 %add to i64
  %32 = load i64*, i64** %ctab, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i64, i64* %32, i64 %idxprom9
  %33 = load i64, i64* %arrayidx10, align 8, !tbaa !34
  %34 = load i32, i32* %g, align 4, !tbaa !30
  %add11 = add nsw i32 %34, 256
  %idxprom12 = sext i32 %add11 to i64
  %35 = load i64*, i64** %ctab, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i64, i64* %35, i64 %idxprom12
  %36 = load i64, i64* %arrayidx13, align 8, !tbaa !34
  %add14 = add nsw i64 %33, %36
  %37 = load i32, i32* %b, align 4, !tbaa !30
  %add15 = add nsw i32 %37, 512
  %idxprom16 = sext i32 %add15 to i64
  %38 = load i64*, i64** %ctab, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i64, i64* %38, i64 %idxprom16
  %39 = load i64, i64* %arrayidx17, align 8, !tbaa !34
  %add18 = add nsw i64 %add14, %39
  %shr = ashr i64 %add18, 16
  %conv19 = trunc i64 %shr to i8
  %40 = load i32, i32* %col, align 4, !tbaa !30
  %idxprom20 = zext i32 %40 to i64
  %41 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8, i8* %41, i64 %idxprom20
  store i8 %conv19, i8* %arrayidx21, align 1, !tbaa !32
  %42 = load i8*, i8** %inptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %42, i64 3
  store i8* %add.ptr, i8** %inptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i32, i32* %col, align 4, !tbaa !30
  %inc22 = add i32 %43, 1
  store i32 %inc22, i32* %col, align 4, !tbaa !30
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %44 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i64** %ctab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast %struct.my_color_converter** %cconvert to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rgb_convert(%struct.jpeg_compress_struct* %cinfo, i8** %input_buf, i8*** %output_buf, i32 %output_row, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8***, align 8
  %output_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %inptr = alloca i8*, align 8
  %outptr0 = alloca i8*, align 8
  %outptr1 = alloca i8*, align 8
  %outptr2 = alloca i8*, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8** %input_buf, i8*** %input_buf.addr, align 8, !tbaa !1
  store i8*** %output_buf, i8**** %output_buf.addr, align 8, !tbaa !1
  store i32 %output_row, i32* %output_row.addr, align 4, !tbaa !30
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !30
  %0 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %outptr0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %outptr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i8** %outptr2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 7
  %7 = load i32, i32* %image_width, align 4, !tbaa !31
  store i32 %7, i32* %num_cols, align 4, !tbaa !30
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %8 = load i32, i32* %num_rows.addr, align 4, !tbaa !30
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %num_rows.addr, align 4, !tbaa !30
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i8**, i8*** %input_buf.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %9, i32 1
  store i8** %incdec.ptr, i8*** %input_buf.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %9, align 8, !tbaa !1
  store i8* %10, i8** %inptr, align 8, !tbaa !1
  %11 = load i32, i32* %output_row.addr, align 4, !tbaa !30
  %idxprom = zext i32 %11 to i64
  %12 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8**, i8*** %12, i64 0
  %13 = load i8**, i8*** %arrayidx, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8*, i8** %13, i64 %idxprom
  %14 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  store i8* %14, i8** %outptr0, align 8, !tbaa !1
  %15 = load i32, i32* %output_row.addr, align 4, !tbaa !30
  %idxprom2 = zext i32 %15 to i64
  %16 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8**, i8*** %16, i64 1
  %17 = load i8**, i8*** %arrayidx3, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8*, i8** %17, i64 %idxprom2
  %18 = load i8*, i8** %arrayidx4, align 8, !tbaa !1
  store i8* %18, i8** %outptr1, align 8, !tbaa !1
  %19 = load i32, i32* %output_row.addr, align 4, !tbaa !30
  %idxprom5 = zext i32 %19 to i64
  %20 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8**, i8*** %20, i64 2
  %21 = load i8**, i8*** %arrayidx6, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8*, i8** %21, i64 %idxprom5
  %22 = load i8*, i8** %arrayidx7, align 8, !tbaa !1
  store i8* %22, i8** %outptr2, align 8, !tbaa !1
  %23 = load i32, i32* %output_row.addr, align 4, !tbaa !30
  %inc = add i32 %23, 1
  store i32 %inc, i32* %output_row.addr, align 4, !tbaa !30
  store i32 0, i32* %col, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %24 = load i32, i32* %col, align 4, !tbaa !30
  %25 = load i32, i32* %num_cols, align 4, !tbaa !30
  %cmp8 = icmp ult i32 %24, %25
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i8*, i8** %inptr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %26, i64 0
  %27 = load i8, i8* %arrayidx9, align 1, !tbaa !32
  %28 = load i32, i32* %col, align 4, !tbaa !30
  %idxprom10 = zext i32 %28 to i64
  %29 = load i8*, i8** %outptr0, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %29, i64 %idxprom10
  store i8 %27, i8* %arrayidx11, align 1, !tbaa !32
  %30 = load i8*, i8** %inptr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %30, i64 1
  %31 = load i8, i8* %arrayidx12, align 1, !tbaa !32
  %32 = load i32, i32* %col, align 4, !tbaa !30
  %idxprom13 = zext i32 %32 to i64
  %33 = load i8*, i8** %outptr1, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %33, i64 %idxprom13
  store i8 %31, i8* %arrayidx14, align 1, !tbaa !32
  %34 = load i8*, i8** %inptr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %34, i64 2
  %35 = load i8, i8* %arrayidx15, align 1, !tbaa !32
  %36 = load i32, i32* %col, align 4, !tbaa !30
  %idxprom16 = zext i32 %36 to i64
  %37 = load i8*, i8** %outptr2, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %37, i64 %idxprom16
  store i8 %35, i8* %arrayidx17, align 1, !tbaa !32
  %38 = load i8*, i8** %inptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %38, i64 3
  store i8* %add.ptr, i8** %inptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %col, align 4, !tbaa !30
  %inc18 = add i32 %39, 1
  store i32 %inc18, i32* %col, align 4, !tbaa !30
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %40 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i8** %outptr2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i8** %outptr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast i8** %outptr0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rgb_rgb1_convert(%struct.jpeg_compress_struct* %cinfo, i8** %input_buf, i8*** %output_buf, i32 %output_row, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8***, align 8
  %output_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %inptr = alloca i8*, align 8
  %outptr0 = alloca i8*, align 8
  %outptr1 = alloca i8*, align 8
  %outptr2 = alloca i8*, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8** %input_buf, i8*** %input_buf.addr, align 8, !tbaa !1
  store i8*** %output_buf, i8**** %output_buf.addr, align 8, !tbaa !1
  store i32 %output_row, i32* %output_row.addr, align 4, !tbaa !30
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !30
  %0 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8** %outptr0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %outptr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8** %outptr2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 7
  %10 = load i32, i32* %image_width, align 4, !tbaa !31
  store i32 %10, i32* %num_cols, align 4, !tbaa !30
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %11 = load i32, i32* %num_rows.addr, align 4, !tbaa !30
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %num_rows.addr, align 4, !tbaa !30
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i8**, i8*** %input_buf.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %12, i32 1
  store i8** %incdec.ptr, i8*** %input_buf.addr, align 8, !tbaa !1
  %13 = load i8*, i8** %12, align 8, !tbaa !1
  store i8* %13, i8** %inptr, align 8, !tbaa !1
  %14 = load i32, i32* %output_row.addr, align 4, !tbaa !30
  %idxprom = zext i32 %14 to i64
  %15 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8**, i8*** %15, i64 0
  %16 = load i8**, i8*** %arrayidx, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8*, i8** %16, i64 %idxprom
  %17 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  store i8* %17, i8** %outptr0, align 8, !tbaa !1
  %18 = load i32, i32* %output_row.addr, align 4, !tbaa !30
  %idxprom2 = zext i32 %18 to i64
  %19 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8**, i8*** %19, i64 1
  %20 = load i8**, i8*** %arrayidx3, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8*, i8** %20, i64 %idxprom2
  %21 = load i8*, i8** %arrayidx4, align 8, !tbaa !1
  store i8* %21, i8** %outptr1, align 8, !tbaa !1
  %22 = load i32, i32* %output_row.addr, align 4, !tbaa !30
  %idxprom5 = zext i32 %22 to i64
  %23 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8**, i8*** %23, i64 2
  %24 = load i8**, i8*** %arrayidx6, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8*, i8** %24, i64 %idxprom5
  %25 = load i8*, i8** %arrayidx7, align 8, !tbaa !1
  store i8* %25, i8** %outptr2, align 8, !tbaa !1
  %26 = load i32, i32* %output_row.addr, align 4, !tbaa !30
  %inc = add i32 %26, 1
  store i32 %inc, i32* %output_row.addr, align 4, !tbaa !30
  store i32 0, i32* %col, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %27 = load i32, i32* %col, align 4, !tbaa !30
  %28 = load i32, i32* %num_cols, align 4, !tbaa !30
  %cmp8 = icmp ult i32 %27, %28
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i8*, i8** %inptr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %29, i64 0
  %30 = load i8, i8* %arrayidx9, align 1, !tbaa !32
  %conv = zext i8 %30 to i32
  store i32 %conv, i32* %r, align 4, !tbaa !30
  %31 = load i8*, i8** %inptr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %31, i64 1
  %32 = load i8, i8* %arrayidx10, align 1, !tbaa !32
  %conv11 = zext i8 %32 to i32
  store i32 %conv11, i32* %g, align 4, !tbaa !30
  %33 = load i8*, i8** %inptr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %33, i64 2
  %34 = load i8, i8* %arrayidx12, align 1, !tbaa !32
  %conv13 = zext i8 %34 to i32
  store i32 %conv13, i32* %b, align 4, !tbaa !30
  %35 = load i32, i32* %r, align 4, !tbaa !30
  %36 = load i32, i32* %g, align 4, !tbaa !30
  %sub = sub nsw i32 %35, %36
  %add = add nsw i32 %sub, 128
  %and = and i32 %add, 255
  %conv14 = trunc i32 %and to i8
  %37 = load i32, i32* %col, align 4, !tbaa !30
  %idxprom15 = zext i32 %37 to i64
  %38 = load i8*, i8** %outptr0, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %38, i64 %idxprom15
  store i8 %conv14, i8* %arrayidx16, align 1, !tbaa !32
  %39 = load i32, i32* %g, align 4, !tbaa !30
  %conv17 = trunc i32 %39 to i8
  %40 = load i32, i32* %col, align 4, !tbaa !30
  %idxprom18 = zext i32 %40 to i64
  %41 = load i8*, i8** %outptr1, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %41, i64 %idxprom18
  store i8 %conv17, i8* %arrayidx19, align 1, !tbaa !32
  %42 = load i32, i32* %b, align 4, !tbaa !30
  %43 = load i32, i32* %g, align 4, !tbaa !30
  %sub20 = sub nsw i32 %42, %43
  %add21 = add nsw i32 %sub20, 128
  %and22 = and i32 %add21, 255
  %conv23 = trunc i32 %and22 to i8
  %44 = load i32, i32* %col, align 4, !tbaa !30
  %idxprom24 = zext i32 %44 to i64
  %45 = load i8*, i8** %outptr2, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %45, i64 %idxprom24
  store i8 %conv23, i8* %arrayidx25, align 1, !tbaa !32
  %46 = load i8*, i8** %inptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %46, i64 3
  store i8* %add.ptr, i8** %inptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i32, i32* %col, align 4, !tbaa !30
  %inc26 = add i32 %47, 1
  store i32 %inc26, i32* %col, align 4, !tbaa !30
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %48 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i8** %outptr2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i8** %outptr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast i8** %outptr0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast i8** %inptr to i8*
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
define internal void @rgb_ycc_convert(%struct.jpeg_compress_struct* %cinfo, i8** %input_buf, i8*** %output_buf, i32 %output_row, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8***, align 8
  %output_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %cconvert = alloca %struct.my_color_converter*, align 8
  %ctab = alloca i64*, align 8
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %inptr = alloca i8*, align 8
  %outptr0 = alloca i8*, align 8
  %outptr1 = alloca i8*, align 8
  %outptr2 = alloca i8*, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8** %input_buf, i8*** %input_buf.addr, align 8, !tbaa !1
  store i8*** %output_buf, i8**** %output_buf.addr, align 8, !tbaa !1
  store i32 %output_row, i32* %output_row.addr, align 4, !tbaa !30
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !30
  %0 = bitcast %struct.my_color_converter** %cconvert to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cconvert1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 71
  %2 = load %struct.jpeg_color_converter*, %struct.jpeg_color_converter** %cconvert1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_color_converter* %2 to %struct.my_color_converter*
  store %struct.my_color_converter* %3, %struct.my_color_converter** %cconvert, align 8, !tbaa !1
  %4 = bitcast i64** %ctab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !1
  %rgb_ycc_tab = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %5, i32 0, i32 1
  %6 = load i64*, i64** %rgb_ycc_tab, align 8, !tbaa !33
  store i64* %6, i64** %ctab, align 8, !tbaa !1
  %7 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i8** %outptr0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i8** %outptr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i8** %outptr2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 7
  %17 = load i32, i32* %image_width, align 4, !tbaa !31
  store i32 %17, i32* %num_cols, align 4, !tbaa !30
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %18 = load i32, i32* %num_rows.addr, align 4, !tbaa !30
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %num_rows.addr, align 4, !tbaa !30
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i8**, i8*** %input_buf.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %incdec.ptr, i8*** %input_buf.addr, align 8, !tbaa !1
  %20 = load i8*, i8** %19, align 8, !tbaa !1
  store i8* %20, i8** %inptr, align 8, !tbaa !1
  %21 = load i32, i32* %output_row.addr, align 4, !tbaa !30
  %idxprom = zext i32 %21 to i64
  %22 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8**, i8*** %22, i64 0
  %23 = load i8**, i8*** %arrayidx, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8*, i8** %23, i64 %idxprom
  %24 = load i8*, i8** %arrayidx2, align 8, !tbaa !1
  store i8* %24, i8** %outptr0, align 8, !tbaa !1
  %25 = load i32, i32* %output_row.addr, align 4, !tbaa !30
  %idxprom3 = zext i32 %25 to i64
  %26 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8**, i8*** %26, i64 1
  %27 = load i8**, i8*** %arrayidx4, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8*, i8** %27, i64 %idxprom3
  %28 = load i8*, i8** %arrayidx5, align 8, !tbaa !1
  store i8* %28, i8** %outptr1, align 8, !tbaa !1
  %29 = load i32, i32* %output_row.addr, align 4, !tbaa !30
  %idxprom6 = zext i32 %29 to i64
  %30 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8**, i8*** %30, i64 2
  %31 = load i8**, i8*** %arrayidx7, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8*, i8** %31, i64 %idxprom6
  %32 = load i8*, i8** %arrayidx8, align 8, !tbaa !1
  store i8* %32, i8** %outptr2, align 8, !tbaa !1
  %33 = load i32, i32* %output_row.addr, align 4, !tbaa !30
  %inc = add i32 %33, 1
  store i32 %inc, i32* %output_row.addr, align 4, !tbaa !30
  store i32 0, i32* %col, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %34 = load i32, i32* %col, align 4, !tbaa !30
  %35 = load i32, i32* %num_cols, align 4, !tbaa !30
  %cmp9 = icmp ult i32 %34, %35
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i8*, i8** %inptr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %36, i64 0
  %37 = load i8, i8* %arrayidx10, align 1, !tbaa !32
  %conv = zext i8 %37 to i32
  store i32 %conv, i32* %r, align 4, !tbaa !30
  %38 = load i8*, i8** %inptr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load i8, i8* %arrayidx11, align 1, !tbaa !32
  %conv12 = zext i8 %39 to i32
  store i32 %conv12, i32* %g, align 4, !tbaa !30
  %40 = load i8*, i8** %inptr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %40, i64 2
  %41 = load i8, i8* %arrayidx13, align 1, !tbaa !32
  %conv14 = zext i8 %41 to i32
  store i32 %conv14, i32* %b, align 4, !tbaa !30
  %42 = load i32, i32* %r, align 4, !tbaa !30
  %add = add nsw i32 %42, 0
  %idxprom15 = sext i32 %add to i64
  %43 = load i64*, i64** %ctab, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i64, i64* %43, i64 %idxprom15
  %44 = load i64, i64* %arrayidx16, align 8, !tbaa !34
  %45 = load i32, i32* %g, align 4, !tbaa !30
  %add17 = add nsw i32 %45, 256
  %idxprom18 = sext i32 %add17 to i64
  %46 = load i64*, i64** %ctab, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i64, i64* %46, i64 %idxprom18
  %47 = load i64, i64* %arrayidx19, align 8, !tbaa !34
  %add20 = add nsw i64 %44, %47
  %48 = load i32, i32* %b, align 4, !tbaa !30
  %add21 = add nsw i32 %48, 512
  %idxprom22 = sext i32 %add21 to i64
  %49 = load i64*, i64** %ctab, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i64, i64* %49, i64 %idxprom22
  %50 = load i64, i64* %arrayidx23, align 8, !tbaa !34
  %add24 = add nsw i64 %add20, %50
  %shr = ashr i64 %add24, 16
  %conv25 = trunc i64 %shr to i8
  %51 = load i32, i32* %col, align 4, !tbaa !30
  %idxprom26 = zext i32 %51 to i64
  %52 = load i8*, i8** %outptr0, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %52, i64 %idxprom26
  store i8 %conv25, i8* %arrayidx27, align 1, !tbaa !32
  %53 = load i32, i32* %r, align 4, !tbaa !30
  %add28 = add nsw i32 %53, 768
  %idxprom29 = sext i32 %add28 to i64
  %54 = load i64*, i64** %ctab, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i64, i64* %54, i64 %idxprom29
  %55 = load i64, i64* %arrayidx30, align 8, !tbaa !34
  %56 = load i32, i32* %g, align 4, !tbaa !30
  %add31 = add nsw i32 %56, 1024
  %idxprom32 = sext i32 %add31 to i64
  %57 = load i64*, i64** %ctab, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i64, i64* %57, i64 %idxprom32
  %58 = load i64, i64* %arrayidx33, align 8, !tbaa !34
  %add34 = add nsw i64 %55, %58
  %59 = load i32, i32* %b, align 4, !tbaa !30
  %add35 = add nsw i32 %59, 1280
  %idxprom36 = sext i32 %add35 to i64
  %60 = load i64*, i64** %ctab, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i64, i64* %60, i64 %idxprom36
  %61 = load i64, i64* %arrayidx37, align 8, !tbaa !34
  %add38 = add nsw i64 %add34, %61
  %shr39 = ashr i64 %add38, 16
  %conv40 = trunc i64 %shr39 to i8
  %62 = load i32, i32* %col, align 4, !tbaa !30
  %idxprom41 = zext i32 %62 to i64
  %63 = load i8*, i8** %outptr1, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i8, i8* %63, i64 %idxprom41
  store i8 %conv40, i8* %arrayidx42, align 1, !tbaa !32
  %64 = load i32, i32* %r, align 4, !tbaa !30
  %add43 = add nsw i32 %64, 1280
  %idxprom44 = sext i32 %add43 to i64
  %65 = load i64*, i64** %ctab, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i64, i64* %65, i64 %idxprom44
  %66 = load i64, i64* %arrayidx45, align 8, !tbaa !34
  %67 = load i32, i32* %g, align 4, !tbaa !30
  %add46 = add nsw i32 %67, 1536
  %idxprom47 = sext i32 %add46 to i64
  %68 = load i64*, i64** %ctab, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i64, i64* %68, i64 %idxprom47
  %69 = load i64, i64* %arrayidx48, align 8, !tbaa !34
  %add49 = add nsw i64 %66, %69
  %70 = load i32, i32* %b, align 4, !tbaa !30
  %add50 = add nsw i32 %70, 1792
  %idxprom51 = sext i32 %add50 to i64
  %71 = load i64*, i64** %ctab, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i64, i64* %71, i64 %idxprom51
  %72 = load i64, i64* %arrayidx52, align 8, !tbaa !34
  %add53 = add nsw i64 %add49, %72
  %shr54 = ashr i64 %add53, 16
  %conv55 = trunc i64 %shr54 to i8
  %73 = load i32, i32* %col, align 4, !tbaa !30
  %idxprom56 = zext i32 %73 to i64
  %74 = load i8*, i8** %outptr2, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i8, i8* %74, i64 %idxprom56
  store i8 %conv55, i8* %arrayidx57, align 1, !tbaa !32
  %75 = load i8*, i8** %inptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %75, i64 3
  store i8* %add.ptr, i8** %inptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %76 = load i32, i32* %col, align 4, !tbaa !30
  %inc58 = add i32 %76, 1
  store i32 %inc58, i32* %col, align 4, !tbaa !30
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %77 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i8** %outptr2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast i8** %outptr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast i8** %outptr0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i64** %ctab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = bitcast %struct.my_color_converter** %cconvert to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
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
  %ci = alloca i32, align 4
  %nc = alloca i32, align 4
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8** %input_buf, i8*** %input_buf.addr, align 8, !tbaa !1
  store i8*** %output_buf, i8**** %output_buf.addr, align 8, !tbaa !1
  store i32 %output_row, i32* %output_row.addr, align 4, !tbaa !30
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !30
  %0 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %nc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 17
  %3 = load i32, i32* %num_components, align 4, !tbaa !25
  store i32 %3, i32* %nc, align 4, !tbaa !30
  %4 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 7
  %9 = load i32, i32* %image_width, align 4, !tbaa !31
  store i32 %9, i32* %num_cols, align 4, !tbaa !30
  br label %while.cond

while.cond:                                       ; preds = %for.end.12, %entry
  %10 = load i32, i32* %num_rows.addr, align 4, !tbaa !30
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %num_rows.addr, align 4, !tbaa !30
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %ci, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %while.body
  %11 = load i32, i32* %ci, align 4, !tbaa !30
  %12 = load i32, i32* %nc, align 4, !tbaa !30
  %cmp1 = icmp slt i32 %11, %12
  br i1 %cmp1, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  %13 = load i8**, i8*** %input_buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %13, i64 0
  %14 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %15 = load i32, i32* %ci, align 4, !tbaa !30
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  store i8* %add.ptr, i8** %inptr, align 8, !tbaa !1
  %16 = load i32, i32* %output_row.addr, align 4, !tbaa !30
  %idxprom = zext i32 %16 to i64
  %17 = load i32, i32* %ci, align 4, !tbaa !30
  %idxprom2 = sext i32 %17 to i64
  %18 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8**, i8*** %18, i64 %idxprom2
  %19 = load i8**, i8*** %arrayidx3, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8*, i8** %19, i64 %idxprom
  %20 = load i8*, i8** %arrayidx4, align 8, !tbaa !1
  store i8* %20, i8** %outptr, align 8, !tbaa !1
  store i32 0, i32* %col, align 4, !tbaa !30
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %21 = load i32, i32* %col, align 4, !tbaa !30
  %22 = load i32, i32* %num_cols, align 4, !tbaa !30
  %cmp6 = icmp ult i32 %21, %22
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %23 = load i8*, i8** %inptr, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !32
  %25 = load i8*, i8** %outptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr, i8** %outptr, align 8, !tbaa !1
  store i8 %24, i8* %25, align 1, !tbaa !32
  %26 = load i32, i32* %nc, align 4, !tbaa !30
  %27 = load i8*, i8** %inptr, align 8, !tbaa !1
  %idx.ext8 = sext i32 %26 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %27, i64 %idx.ext8
  store i8* %add.ptr9, i8** %inptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %28 = load i32, i32* %col, align 4, !tbaa !30
  %inc = add i32 %28, 1
  store i32 %inc, i32* %col, align 4, !tbaa !30
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %29 = load i32, i32* %ci, align 4, !tbaa !30
  %inc11 = add nsw i32 %29, 1
  store i32 %inc11, i32* %ci, align 4, !tbaa !30
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  %30 = load i8**, i8*** %input_buf.addr, align 8, !tbaa !1
  %incdec.ptr13 = getelementptr inbounds i8*, i8** %30, i32 1
  store i8** %incdec.ptr13, i8*** %input_buf.addr, align 8, !tbaa !1
  %31 = load i32, i32* %output_row.addr, align 4, !tbaa !30
  %inc14 = add i32 %31, 1
  store i32 %inc14, i32* %output_row.addr, align 4, !tbaa !30
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %32 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i32* %nc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
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
  %ctab = alloca i64*, align 8
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %inptr = alloca i8*, align 8
  %outptr0 = alloca i8*, align 8
  %outptr1 = alloca i8*, align 8
  %outptr2 = alloca i8*, align 8
  %outptr3 = alloca i8*, align 8
  %col = alloca i32, align 4
  %num_cols = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  store i8** %input_buf, i8*** %input_buf.addr, align 8, !tbaa !1
  store i8*** %output_buf, i8**** %output_buf.addr, align 8, !tbaa !1
  store i32 %output_row, i32* %output_row.addr, align 4, !tbaa !30
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !30
  %0 = bitcast %struct.my_color_converter** %cconvert to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %cconvert1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 71
  %2 = load %struct.jpeg_color_converter*, %struct.jpeg_color_converter** %cconvert1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_color_converter* %2 to %struct.my_color_converter*
  store %struct.my_color_converter* %3, %struct.my_color_converter** %cconvert, align 8, !tbaa !1
  %4 = bitcast i64** %ctab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.my_color_converter*, %struct.my_color_converter** %cconvert, align 8, !tbaa !1
  %rgb_ycc_tab = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %5, i32 0, i32 1
  %6 = load i64*, i64** %rgb_ycc_tab, align 8, !tbaa !33
  store i64* %6, i64** %ctab, align 8, !tbaa !1
  %7 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i8** %outptr0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i8** %outptr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i8** %outptr2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i8** %outptr3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 7
  %18 = load i32, i32* %image_width, align 4, !tbaa !31
  store i32 %18, i32* %num_cols, align 4, !tbaa !30
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %19 = load i32, i32* %num_rows.addr, align 4, !tbaa !30
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %num_rows.addr, align 4, !tbaa !30
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i8**, i8*** %input_buf.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %20, i32 1
  store i8** %incdec.ptr, i8*** %input_buf.addr, align 8, !tbaa !1
  %21 = load i8*, i8** %20, align 8, !tbaa !1
  store i8* %21, i8** %inptr, align 8, !tbaa !1
  %22 = load i32, i32* %output_row.addr, align 4, !tbaa !30
  %idxprom = zext i32 %22 to i64
  %23 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8**, i8*** %23, i64 0
  %24 = load i8**, i8*** %arrayidx, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8*, i8** %24, i64 %idxprom
  %25 = load i8*, i8** %arrayidx2, align 8, !tbaa !1
  store i8* %25, i8** %outptr0, align 8, !tbaa !1
  %26 = load i32, i32* %output_row.addr, align 4, !tbaa !30
  %idxprom3 = zext i32 %26 to i64
  %27 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8**, i8*** %27, i64 1
  %28 = load i8**, i8*** %arrayidx4, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8*, i8** %28, i64 %idxprom3
  %29 = load i8*, i8** %arrayidx5, align 8, !tbaa !1
  store i8* %29, i8** %outptr1, align 8, !tbaa !1
  %30 = load i32, i32* %output_row.addr, align 4, !tbaa !30
  %idxprom6 = zext i32 %30 to i64
  %31 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8**, i8*** %31, i64 2
  %32 = load i8**, i8*** %arrayidx7, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8*, i8** %32, i64 %idxprom6
  %33 = load i8*, i8** %arrayidx8, align 8, !tbaa !1
  store i8* %33, i8** %outptr2, align 8, !tbaa !1
  %34 = load i32, i32* %output_row.addr, align 4, !tbaa !30
  %idxprom9 = zext i32 %34 to i64
  %35 = load i8***, i8**** %output_buf.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8**, i8*** %35, i64 3
  %36 = load i8**, i8*** %arrayidx10, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8*, i8** %36, i64 %idxprom9
  %37 = load i8*, i8** %arrayidx11, align 8, !tbaa !1
  store i8* %37, i8** %outptr3, align 8, !tbaa !1
  %38 = load i32, i32* %output_row.addr, align 4, !tbaa !30
  %inc = add i32 %38, 1
  store i32 %inc, i32* %output_row.addr, align 4, !tbaa !30
  store i32 0, i32* %col, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %39 = load i32, i32* %col, align 4, !tbaa !30
  %40 = load i32, i32* %num_cols, align 4, !tbaa !30
  %cmp12 = icmp ult i32 %39, %40
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load i8*, i8** %inptr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %41, i64 0
  %42 = load i8, i8* %arrayidx13, align 1, !tbaa !32
  %conv = zext i8 %42 to i32
  %sub = sub nsw i32 255, %conv
  store i32 %sub, i32* %r, align 4, !tbaa !30
  %43 = load i8*, i8** %inptr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %43, i64 1
  %44 = load i8, i8* %arrayidx14, align 1, !tbaa !32
  %conv15 = zext i8 %44 to i32
  %sub16 = sub nsw i32 255, %conv15
  store i32 %sub16, i32* %g, align 4, !tbaa !30
  %45 = load i8*, i8** %inptr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %45, i64 2
  %46 = load i8, i8* %arrayidx17, align 1, !tbaa !32
  %conv18 = zext i8 %46 to i32
  %sub19 = sub nsw i32 255, %conv18
  store i32 %sub19, i32* %b, align 4, !tbaa !30
  %47 = load i8*, i8** %inptr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %47, i64 3
  %48 = load i8, i8* %arrayidx20, align 1, !tbaa !32
  %49 = load i32, i32* %col, align 4, !tbaa !30
  %idxprom21 = zext i32 %49 to i64
  %50 = load i8*, i8** %outptr3, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %50, i64 %idxprom21
  store i8 %48, i8* %arrayidx22, align 1, !tbaa !32
  %51 = load i32, i32* %r, align 4, !tbaa !30
  %add = add nsw i32 %51, 0
  %idxprom23 = sext i32 %add to i64
  %52 = load i64*, i64** %ctab, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i64, i64* %52, i64 %idxprom23
  %53 = load i64, i64* %arrayidx24, align 8, !tbaa !34
  %54 = load i32, i32* %g, align 4, !tbaa !30
  %add25 = add nsw i32 %54, 256
  %idxprom26 = sext i32 %add25 to i64
  %55 = load i64*, i64** %ctab, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i64, i64* %55, i64 %idxprom26
  %56 = load i64, i64* %arrayidx27, align 8, !tbaa !34
  %add28 = add nsw i64 %53, %56
  %57 = load i32, i32* %b, align 4, !tbaa !30
  %add29 = add nsw i32 %57, 512
  %idxprom30 = sext i32 %add29 to i64
  %58 = load i64*, i64** %ctab, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i64, i64* %58, i64 %idxprom30
  %59 = load i64, i64* %arrayidx31, align 8, !tbaa !34
  %add32 = add nsw i64 %add28, %59
  %shr = ashr i64 %add32, 16
  %conv33 = trunc i64 %shr to i8
  %60 = load i32, i32* %col, align 4, !tbaa !30
  %idxprom34 = zext i32 %60 to i64
  %61 = load i8*, i8** %outptr0, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8, i8* %61, i64 %idxprom34
  store i8 %conv33, i8* %arrayidx35, align 1, !tbaa !32
  %62 = load i32, i32* %r, align 4, !tbaa !30
  %add36 = add nsw i32 %62, 768
  %idxprom37 = sext i32 %add36 to i64
  %63 = load i64*, i64** %ctab, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i64, i64* %63, i64 %idxprom37
  %64 = load i64, i64* %arrayidx38, align 8, !tbaa !34
  %65 = load i32, i32* %g, align 4, !tbaa !30
  %add39 = add nsw i32 %65, 1024
  %idxprom40 = sext i32 %add39 to i64
  %66 = load i64*, i64** %ctab, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i64, i64* %66, i64 %idxprom40
  %67 = load i64, i64* %arrayidx41, align 8, !tbaa !34
  %add42 = add nsw i64 %64, %67
  %68 = load i32, i32* %b, align 4, !tbaa !30
  %add43 = add nsw i32 %68, 1280
  %idxprom44 = sext i32 %add43 to i64
  %69 = load i64*, i64** %ctab, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i64, i64* %69, i64 %idxprom44
  %70 = load i64, i64* %arrayidx45, align 8, !tbaa !34
  %add46 = add nsw i64 %add42, %70
  %shr47 = ashr i64 %add46, 16
  %conv48 = trunc i64 %shr47 to i8
  %71 = load i32, i32* %col, align 4, !tbaa !30
  %idxprom49 = zext i32 %71 to i64
  %72 = load i8*, i8** %outptr1, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i8, i8* %72, i64 %idxprom49
  store i8 %conv48, i8* %arrayidx50, align 1, !tbaa !32
  %73 = load i32, i32* %r, align 4, !tbaa !30
  %add51 = add nsw i32 %73, 1280
  %idxprom52 = sext i32 %add51 to i64
  %74 = load i64*, i64** %ctab, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i64, i64* %74, i64 %idxprom52
  %75 = load i64, i64* %arrayidx53, align 8, !tbaa !34
  %76 = load i32, i32* %g, align 4, !tbaa !30
  %add54 = add nsw i32 %76, 1536
  %idxprom55 = sext i32 %add54 to i64
  %77 = load i64*, i64** %ctab, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i64, i64* %77, i64 %idxprom55
  %78 = load i64, i64* %arrayidx56, align 8, !tbaa !34
  %add57 = add nsw i64 %75, %78
  %79 = load i32, i32* %b, align 4, !tbaa !30
  %add58 = add nsw i32 %79, 1792
  %idxprom59 = sext i32 %add58 to i64
  %80 = load i64*, i64** %ctab, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i64, i64* %80, i64 %idxprom59
  %81 = load i64, i64* %arrayidx60, align 8, !tbaa !34
  %add61 = add nsw i64 %add57, %81
  %shr62 = ashr i64 %add61, 16
  %conv63 = trunc i64 %shr62 to i8
  %82 = load i32, i32* %col, align 4, !tbaa !30
  %idxprom64 = zext i32 %82 to i64
  %83 = load i8*, i8** %outptr2, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds i8, i8* %83, i64 %idxprom64
  store i8 %conv63, i8* %arrayidx65, align 1, !tbaa !32
  %84 = load i8*, i8** %inptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %84, i64 4
  store i8* %add.ptr, i8** %inptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %85 = load i32, i32* %col, align 4, !tbaa !30
  %inc66 = add i32 %85, 1
  store i32 %inc66, i32* %col, align 4, !tbaa !30
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %86 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i8** %outptr3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast i8** %outptr2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = bitcast i8** %outptr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  %91 = bitcast i8** %outptr0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i64** %ctab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast %struct.my_color_converter** %cconvert to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 8}
!6 = !{!"jpeg_compress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !7, i64 36, !2, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !3, i64 60, !8, i64 64, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !3, i64 96, !2, i64 104, !3, i64 112, !3, i64 144, !3, i64 160, !3, i64 192, !3, i64 224, !3, i64 240, !3, i64 256, !7, i64 272, !2, i64 280, !3, i64 288, !3, i64 292, !3, i64 296, !3, i64 300, !3, i64 304, !7, i64 308, !3, i64 312, !7, i64 316, !7, i64 320, !3, i64 324, !3, i64 328, !3, i64 329, !3, i64 330, !9, i64 332, !9, i64 334, !3, i64 336, !3, i64 340, !7, i64 344, !3, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !7, i64 368, !7, i64 372, !3, i64 376, !7, i64 408, !7, i64 412, !7, i64 416, !3, i64 420, !7, i64 460, !7, i64 464, !7, i64 468, !7, i64 472, !7, i64 476, !2, i64 480, !7, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !7, i64 576}
!7 = !{!"int", !3, i64 0}
!8 = !{!"double", !3, i64 0}
!9 = !{!"short", !3, i64 0}
!10 = !{!11, !2, i64 0}
!11 = !{!"jpeg_memory_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !12, i64 88, !12, i64 96}
!12 = !{!"long", !3, i64 0}
!13 = !{!6, !2, i64 536}
!14 = !{!15, !2, i64 0}
!15 = !{!"", !16, i64 0, !2, i64 16}
!16 = !{!"jpeg_color_converter", !2, i64 0, !2, i64 8}
!17 = !{!6, !3, i64 60}
!18 = !{!6, !7, i64 56}
!19 = !{!6, !2, i64 0}
!20 = !{!21, !7, i64 40}
!21 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !3, i64 44, !7, i64 124, !12, i64 128, !2, i64 136, !7, i64 144, !2, i64 152, !7, i64 160, !7, i64 164}
!22 = !{!21, !2, i64 0}
!23 = !{!6, !3, i64 340}
!24 = !{!6, !3, i64 96}
!25 = !{!6, !7, i64 92}
!26 = !{!15, !2, i64 8}
!27 = !{!6, !2, i64 104}
!28 = !{!29, !3, i64 52}
!29 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !3, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !2, i64 80, !2, i64 88}
!30 = !{!7, !7, i64 0}
!31 = !{!6, !7, i64 48}
!32 = !{!3, !3, i64 0}
!33 = !{!15, !2, i64 16}
!34 = !{!12, !12, i64 0}
