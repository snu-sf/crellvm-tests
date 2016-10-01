; ModuleID = './MultiSource.Benchmarks.mediabench/11.jpeg.jpeg-6a.jdinput.bc'
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
%struct.my_input_controller = type { %struct.jpeg_input_controller, i32 }

; Function Attrs: nounwind uwtable
define void @jinit_input_controller(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %inputctl = alloca %struct.my_input_controller*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_decompress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 0, i64 48)
  %5 = bitcast i8* %call to %struct.my_input_controller*
  store %struct.my_input_controller* %5, %struct.my_input_controller** %inputctl, align 8
  %6 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8
  %7 = bitcast %struct.my_input_controller* %6 to %struct.jpeg_input_controller*
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %inputctl1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 77
  store %struct.jpeg_input_controller* %7, %struct.jpeg_input_controller** %inputctl1, align 8
  %9 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8
  %pub = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %9, i32 0, i32 0
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub, i32 0, i32 0
  store i32 (%struct.jpeg_decompress_struct*)* @consume_markers, i32 (%struct.jpeg_decompress_struct*)** %consume_input, align 8
  %10 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8
  %pub2 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %10, i32 0, i32 0
  %reset_input_controller = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub2, i32 0, i32 1
  %reset_input_controller3 = bitcast {}** %reset_input_controller to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @reset_input_controller, void (%struct.jpeg_decompress_struct*)** %reset_input_controller3, align 8
  %11 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8
  %pub4 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %11, i32 0, i32 0
  %start_input_pass = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub4, i32 0, i32 2
  %start_input_pass5 = bitcast {}** %start_input_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @start_input_pass, void (%struct.jpeg_decompress_struct*)** %start_input_pass5, align 8
  %12 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8
  %pub6 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %12, i32 0, i32 0
  %finish_input_pass = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub6, i32 0, i32 3
  %finish_input_pass7 = bitcast {}** %finish_input_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @finish_input_pass, void (%struct.jpeg_decompress_struct*)** %finish_input_pass7, align 8
  %13 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8
  %pub8 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %13, i32 0, i32 0
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub8, i32 0, i32 4
  store i32 0, i32* %has_multiple_scans, align 4
  %14 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8
  %pub9 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %14, i32 0, i32 0
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub9, i32 0, i32 5
  store i32 0, i32* %eoi_reached, align 4
  %15 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8
  %inheaders = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %15, i32 0, i32 1
  store i32 1, i32* %inheaders, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @consume_markers(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %inputctl = alloca %struct.my_input_controller*, align 8
  %val = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %inputctl1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 77
  %1 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl1, align 8
  %2 = bitcast %struct.jpeg_input_controller* %1 to %struct.my_input_controller*
  store %struct.my_input_controller* %2, %struct.my_input_controller** %inputctl, align 8
  %3 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8
  %pub = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %3, i32 0, i32 0
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub, i32 0, i32 5
  %4 = load i32, i32* %eoi_reached, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 78
  %6 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8
  %read_markers = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %6, i32 0, i32 1
  %7 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %read_markers, align 8
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 %7(%struct.jpeg_decompress_struct* %8)
  store i32 %call, i32* %val, align 4
  %9 = load i32, i32* %val, align 4
  switch i32 %9, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.11
    i32 0, label %sw.bb.31
  ]

sw.bb:                                            ; preds = %if.end
  %10 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8
  %inheaders = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %10, i32 0, i32 1
  %11 = load i32, i32* %inheaders, align 4
  %tobool2 = icmp ne i32 %11, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %sw.bb
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @initial_setup(%struct.jpeg_decompress_struct* %12)
  %13 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8
  %inheaders4 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %13, i32 0, i32 1
  store i32 0, i32* %inheaders4, align 4
  br label %if.end.10

if.else:                                          ; preds = %sw.bb
  %14 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8
  %pub5 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %14, i32 0, i32 0
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub5, i32 0, i32 4
  %15 = load i32, i32* %has_multiple_scans, align 4
  %tobool6 = icmp ne i32 %15, 0
  br i1 %tobool6, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %if.else
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 5
  store i32 34, i32* %msg_code, align 4
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 0
  %20 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %22 = bitcast %struct.jpeg_decompress_struct* %21 to %struct.jpeg_common_struct*
  call void %20(%struct.jpeg_common_struct* %22)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.else
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @start_input_pass(%struct.jpeg_decompress_struct* %23)
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then.3
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end
  %24 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8
  %pub12 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %24, i32 0, i32 0
  %eoi_reached13 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub12, i32 0, i32 5
  store i32 1, i32* %eoi_reached13, align 4
  %25 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8
  %inheaders14 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %25, i32 0, i32 1
  %26 = load i32, i32* %inheaders14, align 4
  %tobool15 = icmp ne i32 %26, 0
  br i1 %tobool15, label %if.then.16, label %if.else.25

if.then.16:                                       ; preds = %sw.bb.11
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 78
  %28 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker17, align 8
  %saw_SOF = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %28, i32 0, i32 6
  %29 = load i32, i32* %saw_SOF, align 4
  %tobool18 = icmp ne i32 %29, 0
  br i1 %tobool18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %if.then.16
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err20, align 8
  %msg_code21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 5
  store i32 58, i32* %msg_code21, align 4
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err22, align 8
  %error_exit23 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 0
  %34 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit23, align 8
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %36 = bitcast %struct.jpeg_decompress_struct* %35 to %struct.jpeg_common_struct*
  call void %34(%struct.jpeg_common_struct* %36)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.19, %if.then.16
  br label %if.end.30

if.else.25:                                       ; preds = %sw.bb.11
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 36
  %38 = load i32, i32* %output_scan_number, align 4
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 34
  %40 = load i32, i32* %input_scan_number, align 4
  %cmp = icmp sgt i32 %38, %40
  br i1 %cmp, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.else.25
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %input_scan_number27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 34
  %42 = load i32, i32* %input_scan_number27, align 4
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_scan_number28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 36
  store i32 %42, i32* %output_scan_number28, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %if.else.25
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.24
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.31, %if.end.30, %if.end.10
  %44 = load i32, i32* %val, align 4
  store i32 %44, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal void @reset_input_controller(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %inputctl = alloca %struct.my_input_controller*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %inputctl1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 77
  %1 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl1, align 8
  %2 = bitcast %struct.jpeg_input_controller* %1 to %struct.my_input_controller*
  store %struct.my_input_controller* %2, %struct.my_input_controller** %inputctl, align 8
  %3 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8
  %pub = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %3, i32 0, i32 0
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub, i32 0, i32 0
  store i32 (%struct.jpeg_decompress_struct*)* @consume_markers, i32 (%struct.jpeg_decompress_struct*)** %consume_input, align 8
  %4 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8
  %pub2 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %4, i32 0, i32 0
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub2, i32 0, i32 4
  store i32 0, i32* %has_multiple_scans, align 4
  %5 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8
  %pub3 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %5, i32 0, i32 0
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub3, i32 0, i32 5
  store i32 0, i32* %eoi_reached, align 4
  %6 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8
  %inheaders = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %6, i32 0, i32 1
  store i32 1, i32* %inheaders, align 4
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %reset_error_mgr = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 4
  %9 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %reset_error_mgr, align 8
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %11 = bitcast %struct.jpeg_decompress_struct* %10 to %struct.jpeg_common_struct*
  call void %9(%struct.jpeg_common_struct* %11)
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 78
  %13 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8
  %reset_marker_reader = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %13, i32 0, i32 0
  %reset_marker_reader4 = bitcast {}** %reset_marker_reader to void (%struct.jpeg_decompress_struct*)**
  %14 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %reset_marker_reader4, align 8
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void %14(%struct.jpeg_decompress_struct* %15)
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %coef_bits = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 38
  store [64 x i32]* null, [64 x i32]** %coef_bits, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_input_pass(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @per_scan_setup(%struct.jpeg_decompress_struct* %0)
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @latch_quant_tables(%struct.jpeg_decompress_struct* %1)
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %entropy = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 79
  %3 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy, align 8
  %start_pass = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %3, i32 0, i32 0
  %start_pass1 = bitcast {}** %start_pass to void (%struct.jpeg_decompress_struct*)**
  %4 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %start_pass1, align 8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void %4(%struct.jpeg_decompress_struct* %5)
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 75
  %7 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef, align 8
  %start_input_pass = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %7, i32 0, i32 0
  %start_input_pass2 = bitcast {}** %start_input_pass to void (%struct.jpeg_decompress_struct*)**
  %8 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %start_input_pass2, align 8
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void %8(%struct.jpeg_decompress_struct* %9)
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %coef3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 75
  %11 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef3, align 8
  %consume_data = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %11, i32 0, i32 1
  %12 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %consume_data, align 8
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 77
  %14 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %14, i32 0, i32 0
  store i32 (%struct.jpeg_decompress_struct*)* %12, i32 (%struct.jpeg_decompress_struct*)** %consume_input, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_input_pass(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 77
  %1 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %1, i32 0, i32 0
  store i32 (%struct.jpeg_decompress_struct*)* @consume_markers, i32 (%struct.jpeg_decompress_struct*)** %consume_input, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @initial_setup(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 7
  %1 = load i32, i32* %image_height, align 4
  %conv = zext i32 %1 to i64
  %cmp = icmp sgt i64 %conv, 65500
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 6
  %3 = load i32, i32* %image_width, align 4
  %conv2 = zext i32 %3 to i64
  %cmp3 = icmp sgt i64 %conv2, 65500
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 40, i32* %msg_code, align 4
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err5, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 65500, i32* %arrayidx, align 4
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 0
  %10 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %12 = bitcast %struct.jpeg_decompress_struct* %11 to %struct.jpeg_common_struct*
  call void %10(%struct.jpeg_common_struct* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 42
  %14 = load i32, i32* %data_precision, align 4
  %cmp7 = icmp ne i32 %14, 8
  br i1 %cmp7, label %if.then.9, label %if.end.19

if.then.9:                                        ; preds = %if.end
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8
  %msg_code11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 5
  store i32 13, i32* %msg_code11, align 4
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %data_precision12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 42
  %18 = load i32, i32* %data_precision12, align 4
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8
  %msg_parm14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 6
  %i15 = bitcast %union.anon* %msg_parm14 to [8 x i32]*
  %arrayidx16 = getelementptr inbounds [8 x i32], [8 x i32]* %i15, i32 0, i64 0
  store i32 %18, i32* %arrayidx16, align 4
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err17, align 8
  %error_exit18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i32 0, i32 0
  %23 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit18, align 8
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %25 = bitcast %struct.jpeg_decompress_struct* %24 to %struct.jpeg_common_struct*
  call void %23(%struct.jpeg_common_struct* %25)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.9, %if.end
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 8
  %27 = load i32, i32* %num_components, align 4
  %cmp20 = icmp sgt i32 %27, 10
  br i1 %cmp20, label %if.then.22, label %if.end.36

if.then.22:                                       ; preds = %if.end.19
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err23, align 8
  %msg_code24 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 5
  store i32 24, i32* %msg_code24, align 4
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 8
  %31 = load i32, i32* %num_components25, align 4
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err26, align 8
  %msg_parm27 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 6
  %i28 = bitcast %union.anon* %msg_parm27 to [8 x i32]*
  %arrayidx29 = getelementptr inbounds [8 x i32], [8 x i32]* %i28, i32 0, i64 0
  store i32 %31, i32* %arrayidx29, align 4
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err30, align 8
  %msg_parm31 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i32 0, i32 6
  %i32 = bitcast %union.anon* %msg_parm31 to [8 x i32]*
  %arrayidx33 = getelementptr inbounds [8 x i32], [8 x i32]* %i32, i32 0, i64 1
  store i32 10, i32* %arrayidx33, align 4
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err34, align 8
  %error_exit35 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 0
  %38 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit35, align 8
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %40 = bitcast %struct.jpeg_decompress_struct* %39 to %struct.jpeg_common_struct*
  call void %38(%struct.jpeg_common_struct* %40)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.22, %if.end.19
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 57
  store i32 1, i32* %max_h_samp_factor, align 4
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 58
  store i32 1, i32* %max_v_samp_factor, align 4
  store i32 0, i32* %ci, align 4
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 43
  %44 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %44, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.36
  %45 = load i32, i32* %ci, align 4
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 8
  %47 = load i32, i32* %num_components37, align 4
  %cmp38 = icmp slt i32 %45, %47
  br i1 %cmp38, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %48, i32 0, i32 2
  %49 = load i32, i32* %h_samp_factor, align 4
  %cmp40 = icmp sle i32 %49, 0
  br i1 %cmp40, label %if.then.53, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %for.body
  %50 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor43 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %50, i32 0, i32 2
  %51 = load i32, i32* %h_samp_factor43, align 4
  %cmp44 = icmp sgt i32 %51, 4
  br i1 %cmp44, label %if.then.53, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %lor.lhs.false.42
  %52 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %52, i32 0, i32 3
  %53 = load i32, i32* %v_samp_factor, align 4
  %cmp47 = icmp sle i32 %53, 0
  br i1 %cmp47, label %if.then.53, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %lor.lhs.false.46
  %54 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor50 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %54, i32 0, i32 3
  %55 = load i32, i32* %v_samp_factor50, align 4
  %cmp51 = icmp sgt i32 %55, 4
  br i1 %cmp51, label %if.then.53, label %if.end.58

if.then.53:                                       ; preds = %lor.lhs.false.49, %lor.lhs.false.46, %lor.lhs.false.42, %for.body
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %56, i32 0, i32 0
  %57 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err54, align 8
  %msg_code55 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %57, i32 0, i32 5
  store i32 16, i32* %msg_code55, align 4
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err56 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %58, i32 0, i32 0
  %59 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err56, align 8
  %error_exit57 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %59, i32 0, i32 0
  %60 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit57, align 8
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %62 = bitcast %struct.jpeg_decompress_struct* %61 to %struct.jpeg_common_struct*
  call void %60(%struct.jpeg_common_struct* %62)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.53, %lor.lhs.false.49
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_h_samp_factor59 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %63, i32 0, i32 57
  %64 = load i32, i32* %max_h_samp_factor59, align 4
  %65 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor60 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %65, i32 0, i32 2
  %66 = load i32, i32* %h_samp_factor60, align 4
  %cmp61 = icmp sgt i32 %64, %66
  br i1 %cmp61, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.58
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_h_samp_factor63 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %67, i32 0, i32 57
  %68 = load i32, i32* %max_h_samp_factor63, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.58
  %69 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor64 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %69, i32 0, i32 2
  %70 = load i32, i32* %h_samp_factor64, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %68, %cond.true ], [ %70, %cond.false ]
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_h_samp_factor65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 57
  store i32 %cond, i32* %max_h_samp_factor65, align 4
  %72 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_v_samp_factor66 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %72, i32 0, i32 58
  %73 = load i32, i32* %max_v_samp_factor66, align 4
  %74 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor67 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %74, i32 0, i32 3
  %75 = load i32, i32* %v_samp_factor67, align 4
  %cmp68 = icmp sgt i32 %73, %75
  br i1 %cmp68, label %cond.true.70, label %cond.false.72

cond.true.70:                                     ; preds = %cond.end
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_v_samp_factor71 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %76, i32 0, i32 58
  %77 = load i32, i32* %max_v_samp_factor71, align 4
  br label %cond.end.74

cond.false.72:                                    ; preds = %cond.end
  %78 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor73 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %78, i32 0, i32 3
  %79 = load i32, i32* %v_samp_factor73, align 4
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.72, %cond.true.70
  %cond75 = phi i32 [ %77, %cond.true.70 ], [ %79, %cond.false.72 ]
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_v_samp_factor76 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %80, i32 0, i32 58
  store i32 %cond75, i32* %max_v_samp_factor76, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.74
  %81 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %ci, align 4
  %82 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %82, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %83 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %min_DCT_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %83, i32 0, i32 59
  store i32 8, i32* %min_DCT_scaled_size, align 4
  store i32 0, i32* %ci, align 4
  %84 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info77 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %84, i32 0, i32 43
  %85 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info77, align 8
  store %struct.jpeg_component_info* %85, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.119, %for.end
  %86 = load i32, i32* %ci, align 4
  %87 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components79 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %87, i32 0, i32 8
  %88 = load i32, i32* %num_components79, align 4
  %cmp80 = icmp slt i32 %86, %88
  br i1 %cmp80, label %for.body.82, label %for.end.122

for.body.82:                                      ; preds = %for.cond.78
  %89 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %89, i32 0, i32 9
  store i32 8, i32* %DCT_scaled_size, align 4
  %90 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %image_width83 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %90, i32 0, i32 6
  %91 = load i32, i32* %image_width83, align 4
  %conv84 = zext i32 %91 to i64
  %92 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor85 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %92, i32 0, i32 2
  %93 = load i32, i32* %h_samp_factor85, align 4
  %conv86 = sext i32 %93 to i64
  %mul = mul nsw i64 %conv84, %conv86
  %94 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_h_samp_factor87 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %94, i32 0, i32 57
  %95 = load i32, i32* %max_h_samp_factor87, align 4
  %mul88 = mul nsw i32 %95, 8
  %conv89 = sext i32 %mul88 to i64
  %call = call i64 @jdiv_round_up(i64 %mul, i64 %conv89)
  %conv90 = trunc i64 %call to i32
  %96 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %96, i32 0, i32 7
  store i32 %conv90, i32* %width_in_blocks, align 4
  %97 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %image_height91 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %97, i32 0, i32 7
  %98 = load i32, i32* %image_height91, align 4
  %conv92 = zext i32 %98 to i64
  %99 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor93 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %99, i32 0, i32 3
  %100 = load i32, i32* %v_samp_factor93, align 4
  %conv94 = sext i32 %100 to i64
  %mul95 = mul nsw i64 %conv92, %conv94
  %101 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_v_samp_factor96 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %101, i32 0, i32 58
  %102 = load i32, i32* %max_v_samp_factor96, align 4
  %mul97 = mul nsw i32 %102, 8
  %conv98 = sext i32 %mul97 to i64
  %call99 = call i64 @jdiv_round_up(i64 %mul95, i64 %conv98)
  %conv100 = trunc i64 %call99 to i32
  %103 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %103, i32 0, i32 8
  store i32 %conv100, i32* %height_in_blocks, align 4
  %104 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %image_width101 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %104, i32 0, i32 6
  %105 = load i32, i32* %image_width101, align 4
  %conv102 = zext i32 %105 to i64
  %106 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor103 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %106, i32 0, i32 2
  %107 = load i32, i32* %h_samp_factor103, align 4
  %conv104 = sext i32 %107 to i64
  %mul105 = mul nsw i64 %conv102, %conv104
  %108 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_h_samp_factor106 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %108, i32 0, i32 57
  %109 = load i32, i32* %max_h_samp_factor106, align 4
  %conv107 = sext i32 %109 to i64
  %call108 = call i64 @jdiv_round_up(i64 %mul105, i64 %conv107)
  %conv109 = trunc i64 %call108 to i32
  %110 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %downsampled_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %110, i32 0, i32 10
  store i32 %conv109, i32* %downsampled_width, align 4
  %111 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %image_height110 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %111, i32 0, i32 7
  %112 = load i32, i32* %image_height110, align 4
  %conv111 = zext i32 %112 to i64
  %113 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor112 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %113, i32 0, i32 3
  %114 = load i32, i32* %v_samp_factor112, align 4
  %conv113 = sext i32 %114 to i64
  %mul114 = mul nsw i64 %conv111, %conv113
  %115 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_v_samp_factor115 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %115, i32 0, i32 58
  %116 = load i32, i32* %max_v_samp_factor115, align 4
  %conv116 = sext i32 %116 to i64
  %call117 = call i64 @jdiv_round_up(i64 %mul114, i64 %conv116)
  %conv118 = trunc i64 %call117 to i32
  %117 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %downsampled_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %117, i32 0, i32 11
  store i32 %conv118, i32* %downsampled_height, align 4
  %118 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %118, i32 0, i32 12
  store i32 1, i32* %component_needed, align 4
  %119 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %119, i32 0, i32 19
  store %struct.JQUANT_TBL* null, %struct.JQUANT_TBL** %quant_table, align 8
  br label %for.inc.119

for.inc.119:                                      ; preds = %for.body.82
  %120 = load i32, i32* %ci, align 4
  %inc120 = add nsw i32 %120, 1
  store i32 %inc120, i32* %ci, align 4
  %121 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr121 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %121, i32 1
  store %struct.jpeg_component_info* %incdec.ptr121, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond.78

for.end.122:                                      ; preds = %for.cond.78
  %122 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %image_height123 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %122, i32 0, i32 7
  %123 = load i32, i32* %image_height123, align 4
  %conv124 = zext i32 %123 to i64
  %124 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_v_samp_factor125 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %124, i32 0, i32 58
  %125 = load i32, i32* %max_v_samp_factor125, align 4
  %mul126 = mul nsw i32 %125, 8
  %conv127 = sext i32 %mul126 to i64
  %call128 = call i64 @jdiv_round_up(i64 %conv124, i64 %conv127)
  %conv129 = trunc i64 %call128 to i32
  %126 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %126, i32 0, i32 60
  store i32 %conv129, i32* %total_iMCU_rows, align 4
  %127 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %127, i32 0, i32 62
  %128 = load i32, i32* %comps_in_scan, align 4
  %129 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components130 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %129, i32 0, i32 8
  %130 = load i32, i32* %num_components130, align 4
  %cmp131 = icmp slt i32 %128, %130
  br i1 %cmp131, label %if.then.134, label %lor.lhs.false.133

lor.lhs.false.133:                                ; preds = %for.end.122
  %131 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %131, i32 0, i32 44
  %132 = load i32, i32* %progressive_mode, align 4
  %tobool = icmp ne i32 %132, 0
  br i1 %tobool, label %if.then.134, label %if.else

if.then.134:                                      ; preds = %lor.lhs.false.133, %for.end.122
  %133 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %133, i32 0, i32 77
  %134 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %134, i32 0, i32 4
  store i32 1, i32* %has_multiple_scans, align 4
  br label %if.end.137

if.else:                                          ; preds = %lor.lhs.false.133
  %135 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %inputctl135 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %135, i32 0, i32 77
  %136 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl135, align 8
  %has_multiple_scans136 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %136, i32 0, i32 4
  store i32 0, i32* %has_multiple_scans136, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.else, %if.then.134
  ret void
}

declare i64 @jdiv_round_up(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @per_scan_setup(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %ci = alloca i32, align 4
  %mcublks = alloca i32, align 4
  %tmp = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 62
  %1 = load i32, i32* %comps_in_scan, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 63
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 0
  %3 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8
  store %struct.jpeg_component_info* %3, %struct.jpeg_component_info** %compptr, align 8
  %4 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %4, i32 0, i32 7
  %5 = load i32, i32* %width_in_blocks, align 4
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 64
  store i32 %5, i32* %MCUs_per_row, align 4
  %7 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %7, i32 0, i32 8
  %8 = load i32, i32* %height_in_blocks, align 4
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %MCU_rows_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 65
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
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %13, i32 0, i32 9
  %14 = load i32, i32* %DCT_scaled_size, align 4
  %15 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_sample_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %15, i32 0, i32 16
  store i32 %14, i32* %MCU_sample_width, align 4
  %16 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %last_col_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %16, i32 0, i32 17
  store i32 1, i32* %last_col_width, align 4
  %17 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %height_in_blocks2 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %17, i32 0, i32 8
  %18 = load i32, i32* %height_in_blocks2, align 4
  %19 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %19, i32 0, i32 3
  %20 = load i32, i32* %v_samp_factor, align 4
  %rem = urem i32 %18, %20
  store i32 %rem, i32* %tmp, align 4
  %21 = load i32, i32* %tmp, align 4
  %cmp3 = icmp eq i32 %21, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %22 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor5 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %22, i32 0, i32 3
  %23 = load i32, i32* %v_samp_factor5, align 4
  store i32 %23, i32* %tmp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %24 = load i32, i32* %tmp, align 4
  %25 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %25, i32 0, i32 18
  store i32 %24, i32* %last_row_height, align 4
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 66
  store i32 1, i32* %blocks_in_MCU, align 4
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %MCU_membership = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 67
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %MCU_membership, i32 0, i64 0
  store i32 0, i32* %arrayidx6, align 4
  br label %if.end.82

if.else:                                          ; preds = %entry
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comps_in_scan7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 62
  %29 = load i32, i32* %comps_in_scan7, align 4
  %cmp8 = icmp sle i32 %29, 0
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comps_in_scan9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 62
  %31 = load i32, i32* %comps_in_scan9, align 4
  %cmp10 = icmp sgt i32 %31, 4
  br i1 %cmp10, label %if.then.11, label %if.end.20

if.then.11:                                       ; preds = %lor.lhs.false, %if.else
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 5
  store i32 24, i32* %msg_code, align 4
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comps_in_scan12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 62
  %35 = load i32, i32* %comps_in_scan12, align 4
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %35, i32* %arrayidx14, align 4
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err15, align 8
  %msg_parm16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %39, i32 0, i32 6
  %i17 = bitcast %union.anon* %msg_parm16 to [8 x i32]*
  %arrayidx18 = getelementptr inbounds [8 x i32], [8 x i32]* %i17, i32 0, i64 1
  store i32 4, i32* %arrayidx18, align 4
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 0
  %41 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err19, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %41, i32 0, i32 0
  %42 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %44 = bitcast %struct.jpeg_decompress_struct* %43 to %struct.jpeg_common_struct*
  call void %42(%struct.jpeg_common_struct* %44)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.11, %lor.lhs.false
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 6
  %46 = load i32, i32* %image_width, align 4
  %conv = zext i32 %46 to i64
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 57
  %48 = load i32, i32* %max_h_samp_factor, align 4
  %mul = mul nsw i32 %48, 8
  %conv21 = sext i32 %mul to i64
  %call = call i64 @jdiv_round_up(i64 %conv, i64 %conv21)
  %conv22 = trunc i64 %call to i32
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %MCUs_per_row23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 64
  store i32 %conv22, i32* %MCUs_per_row23, align 4
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 7
  %51 = load i32, i32* %image_height, align 4
  %conv24 = zext i32 %51 to i64
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %52, i32 0, i32 58
  %53 = load i32, i32* %max_v_samp_factor, align 4
  %mul25 = mul nsw i32 %53, 8
  %conv26 = sext i32 %mul25 to i64
  %call27 = call i64 @jdiv_round_up(i64 %conv24, i64 %conv26)
  %conv28 = trunc i64 %call27 to i32
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %MCU_rows_in_scan29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %54, i32 0, i32 65
  store i32 %conv28, i32* %MCU_rows_in_scan29, align 4
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %blocks_in_MCU30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %55, i32 0, i32 66
  store i32 0, i32* %blocks_in_MCU30, align 4
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %56 = load i32, i32* %ci, align 4
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comps_in_scan31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %57, i32 0, i32 62
  %58 = load i32, i32* %comps_in_scan31, align 4
  %cmp32 = icmp slt i32 %56, %58
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %59 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %59 to i64
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cur_comp_info34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %60, i32 0, i32 63
  %arrayidx35 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info34, i32 0, i64 %idxprom
  %61 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx35, align 8
  store %struct.jpeg_component_info* %61, %struct.jpeg_component_info** %compptr, align 8
  %62 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %62, i32 0, i32 2
  %63 = load i32, i32* %h_samp_factor, align 4
  %64 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_width36 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %64, i32 0, i32 13
  store i32 %63, i32* %MCU_width36, align 4
  %65 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor37 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %65, i32 0, i32 3
  %66 = load i32, i32* %v_samp_factor37, align 4
  %67 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_height38 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %67, i32 0, i32 14
  store i32 %66, i32* %MCU_height38, align 4
  %68 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_width39 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %68, i32 0, i32 13
  %69 = load i32, i32* %MCU_width39, align 4
  %70 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_height40 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %70, i32 0, i32 14
  %71 = load i32, i32* %MCU_height40, align 4
  %mul41 = mul nsw i32 %69, %71
  %72 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_blocks42 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %72, i32 0, i32 15
  store i32 %mul41, i32* %MCU_blocks42, align 4
  %73 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_width43 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %73, i32 0, i32 13
  %74 = load i32, i32* %MCU_width43, align 4
  %75 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %DCT_scaled_size44 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %75, i32 0, i32 9
  %76 = load i32, i32* %DCT_scaled_size44, align 4
  %mul45 = mul nsw i32 %74, %76
  %77 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_sample_width46 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %77, i32 0, i32 16
  store i32 %mul45, i32* %MCU_sample_width46, align 4
  %78 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %width_in_blocks47 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %78, i32 0, i32 7
  %79 = load i32, i32* %width_in_blocks47, align 4
  %80 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_width48 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %80, i32 0, i32 13
  %81 = load i32, i32* %MCU_width48, align 4
  %rem49 = urem i32 %79, %81
  store i32 %rem49, i32* %tmp, align 4
  %82 = load i32, i32* %tmp, align 4
  %cmp50 = icmp eq i32 %82, 0
  br i1 %cmp50, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %for.body
  %83 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_width53 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %83, i32 0, i32 13
  %84 = load i32, i32* %MCU_width53, align 4
  store i32 %84, i32* %tmp, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %for.body
  %85 = load i32, i32* %tmp, align 4
  %86 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %last_col_width55 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %86, i32 0, i32 17
  store i32 %85, i32* %last_col_width55, align 4
  %87 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %height_in_blocks56 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %87, i32 0, i32 8
  %88 = load i32, i32* %height_in_blocks56, align 4
  %89 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_height57 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %89, i32 0, i32 14
  %90 = load i32, i32* %MCU_height57, align 4
  %rem58 = urem i32 %88, %90
  store i32 %rem58, i32* %tmp, align 4
  %91 = load i32, i32* %tmp, align 4
  %cmp59 = icmp eq i32 %91, 0
  br i1 %cmp59, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.end.54
  %92 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_height62 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %92, i32 0, i32 14
  %93 = load i32, i32* %MCU_height62, align 4
  store i32 %93, i32* %tmp, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %if.end.54
  %94 = load i32, i32* %tmp, align 4
  %95 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %last_row_height64 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %95, i32 0, i32 18
  store i32 %94, i32* %last_row_height64, align 4
  %96 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_blocks65 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %96, i32 0, i32 15
  %97 = load i32, i32* %MCU_blocks65, align 4
  store i32 %97, i32* %mcublks, align 4
  %98 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %blocks_in_MCU66 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %98, i32 0, i32 66
  %99 = load i32, i32* %blocks_in_MCU66, align 4
  %100 = load i32, i32* %mcublks, align 4
  %add = add nsw i32 %99, %100
  %cmp67 = icmp sgt i32 %add, 10
  br i1 %cmp67, label %if.then.69, label %if.end.74

if.then.69:                                       ; preds = %if.end.63
  %101 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %101, i32 0, i32 0
  %102 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err70, align 8
  %msg_code71 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %102, i32 0, i32 5
  store i32 11, i32* %msg_code71, align 4
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %103, i32 0, i32 0
  %104 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err72, align 8
  %error_exit73 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %104, i32 0, i32 0
  %105 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit73, align 8
  %106 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %107 = bitcast %struct.jpeg_decompress_struct* %106 to %struct.jpeg_common_struct*
  call void %105(%struct.jpeg_common_struct* %107)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.69, %if.end.63
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.74
  %108 = load i32, i32* %mcublks, align 4
  %dec = add nsw i32 %108, -1
  store i32 %dec, i32* %mcublks, align 4
  %cmp75 = icmp sgt i32 %108, 0
  br i1 %cmp75, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %109 = load i32, i32* %ci, align 4
  %110 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %blocks_in_MCU77 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %110, i32 0, i32 66
  %111 = load i32, i32* %blocks_in_MCU77, align 4
  %inc = add nsw i32 %111, 1
  store i32 %inc, i32* %blocks_in_MCU77, align 4
  %idxprom78 = sext i32 %111 to i64
  %112 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %MCU_membership79 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %112, i32 0, i32 67
  %arrayidx80 = getelementptr inbounds [10 x i32], [10 x i32]* %MCU_membership79, i32 0, i64 %idxprom78
  store i32 %109, i32* %arrayidx80, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %113 = load i32, i32* %ci, align 4
  %inc81 = add nsw i32 %113, 1
  store i32 %inc81, i32* %ci, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.82

if.end.82:                                        ; preds = %for.end, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @latch_quant_tables(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %ci = alloca i32, align 4
  %qtblno = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %qtbl = alloca %struct.JQUANT_TBL*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %ci, align 4
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 62
  %2 = load i32, i32* %comps_in_scan, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 63
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %5 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8
  store %struct.jpeg_component_info* %5, %struct.jpeg_component_info** %compptr, align 8
  %6 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %6, i32 0, i32 19
  %7 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_table, align 8
  %cmp1 = icmp ne %struct.JQUANT_TBL* %7, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %8 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %8, i32 0, i32 4
  %9 = load i32, i32* %quant_tbl_no, align 4
  store i32 %9, i32* %qtblno, align 4
  %10 = load i32, i32* %qtblno, align 4
  %cmp2 = icmp slt i32 %10, 0
  br i1 %cmp2, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load i32, i32* %qtblno, align 4
  %cmp3 = icmp sge i32 %11, 4
  br i1 %cmp3, label %if.then.8, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %12 = load i32, i32* %qtblno, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 39
  %arrayidx6 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs, i32 0, i64 %idxprom5
  %14 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx6, align 8
  %cmp7 = icmp eq %struct.JQUANT_TBL* %14, null
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %lor.lhs.false.4, %lor.lhs.false, %if.end
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 5
  store i32 51, i32* %msg_code, align 4
  %17 = load i32, i32* %qtblno, align 4
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx10 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %17, i32* %arrayidx10, align 4
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err11, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 0
  %22 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %24 = bitcast %struct.jpeg_decompress_struct* %23 to %struct.jpeg_common_struct*
  call void %22(%struct.jpeg_common_struct* %24)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %lor.lhs.false.4
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 1
  %26 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %26, i32 0, i32 0
  %27 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %29 = bitcast %struct.jpeg_decompress_struct* %28 to %struct.jpeg_common_struct*
  %call = call i8* %27(%struct.jpeg_common_struct* %29, i32 1, i64 132)
  %30 = bitcast i8* %call to %struct.JQUANT_TBL*
  store %struct.JQUANT_TBL* %30, %struct.JQUANT_TBL** %qtbl, align 8
  %31 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8
  %32 = bitcast %struct.JQUANT_TBL* %31 to i8*
  %33 = load i32, i32* %qtblno, align 4
  %idxprom13 = sext i32 %33 to i64
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quant_tbl_ptrs14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 39
  %arrayidx15 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs14, i32 0, i64 %idxprom13
  %35 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx15, align 8
  %36 = bitcast %struct.JQUANT_TBL* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %36, i64 132, i32 1, i1 false)
  %37 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8
  %38 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %quant_table16 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %38, i32 0, i32 19
  store %struct.JQUANT_TBL* %37, %struct.JQUANT_TBL** %quant_table16, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.12, %if.then
  %39 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %ci, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
