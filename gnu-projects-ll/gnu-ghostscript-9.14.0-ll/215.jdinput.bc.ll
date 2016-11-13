; ModuleID = './jdinput.bc'
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
%struct.my_input_controller = type { %struct.jpeg_input_controller, i32 }

@jpeg_natural_order = external constant [0 x i32], align 4
@jpeg_natural_order2 = external constant [0 x i32], align 4
@jpeg_natural_order3 = external constant [0 x i32], align 4
@jpeg_natural_order4 = external constant [0 x i32], align 4
@jpeg_natural_order5 = external constant [0 x i32], align 4
@jpeg_natural_order6 = external constant [0 x i32], align 4
@jpeg_natural_order7 = external constant [0 x i32], align 4

; Function Attrs: nounwind uwtable
define void @jpeg_core_output_dimensions(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 7
  %1 = load i32, i32* %image_width, align 4, !tbaa !5
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 27
  store i32 %1, i32* %output_width, align 4, !tbaa !10
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 8
  %4 = load i32, i32* %image_height, align 4, !tbaa !11
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 28
  store i32 %4, i32* %output_height, align 4, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define void @jinit_input_controller(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %inputctl = alloca %struct.my_input_controller*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_input_controller** %inputctl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !13
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %2, i32 0, i32 0
  %3 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !14
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %5 = bitcast %struct.jpeg_decompress_struct* %4 to %struct.jpeg_common_struct*
  %call = call i8* %3(%struct.jpeg_common_struct* %5, i32 0, i64 48) #4
  %6 = bitcast i8* %call to %struct.my_input_controller*
  store %struct.my_input_controller* %6, %struct.my_input_controller** %inputctl, align 8, !tbaa !1
  %7 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %7, i32 0, i32 0
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %inputctl1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 87
  store %struct.jpeg_input_controller* %pub, %struct.jpeg_input_controller** %inputctl1, align 8, !tbaa !17
  %9 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !1
  %pub2 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %9, i32 0, i32 0
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub2, i32 0, i32 0
  store i32 (%struct.jpeg_decompress_struct*)* @consume_markers, i32 (%struct.jpeg_decompress_struct*)** %consume_input, align 8, !tbaa !18
  %10 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !1
  %pub3 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %10, i32 0, i32 0
  %reset_input_controller = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub3, i32 0, i32 1
  %reset_input_controller4 = bitcast {}** %reset_input_controller to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @reset_input_controller, void (%struct.jpeg_decompress_struct*)** %reset_input_controller4, align 8, !tbaa !21
  %11 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !1
  %pub5 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %11, i32 0, i32 0
  %start_input_pass = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub5, i32 0, i32 2
  %start_input_pass6 = bitcast {}** %start_input_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @start_input_pass, void (%struct.jpeg_decompress_struct*)** %start_input_pass6, align 8, !tbaa !22
  %12 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !1
  %pub7 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %12, i32 0, i32 0
  %finish_input_pass = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub7, i32 0, i32 3
  %finish_input_pass8 = bitcast {}** %finish_input_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @finish_input_pass, void (%struct.jpeg_decompress_struct*)** %finish_input_pass8, align 8, !tbaa !23
  %13 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !1
  %pub9 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %13, i32 0, i32 0
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub9, i32 0, i32 4
  store i32 0, i32* %has_multiple_scans, align 4, !tbaa !24
  %14 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !1
  %pub10 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %14, i32 0, i32 0
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub10, i32 0, i32 5
  store i32 0, i32* %eoi_reached, align 4, !tbaa !25
  %15 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !1
  %inheaders = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %15, i32 0, i32 1
  store i32 1, i32* %inheaders, align 4, !tbaa !26
  %16 = bitcast %struct.my_input_controller** %inputctl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @consume_markers(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %inputctl = alloca %struct.my_input_controller*, align 8
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_input_controller** %inputctl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %inputctl1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 87
  %2 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl1, align 8, !tbaa !17
  %3 = bitcast %struct.jpeg_input_controller* %2 to %struct.my_input_controller*
  store %struct.my_input_controller* %3, %struct.my_input_controller** %inputctl, align 8, !tbaa !1
  %4 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %5, i32 0, i32 0
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub, i32 0, i32 5
  %6 = load i32, i32* %eoi_reached, align 4, !tbaa !25
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %if.end
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 88
  %8 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8, !tbaa !27
  %read_markers = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %8, i32 0, i32 1
  %9 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %read_markers, align 8, !tbaa !28
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 %9(%struct.jpeg_decompress_struct* %10) #4
  store i32 %call, i32* %val, align 4, !tbaa !30
  %11 = load i32, i32* %val, align 4, !tbaa !30
  switch i32 %11, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.22
    i32 0, label %sw.bb.43
  ]

sw.bb:                                            ; preds = %for.cond
  %12 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !1
  %inheaders = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %12, i32 0, i32 1
  %13 = load i32, i32* %inheaders, align 4, !tbaa !26
  %tobool2 = icmp ne i32 %13, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %sw.bb
  %14 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !1
  %inheaders4 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %14, i32 0, i32 1
  %15 = load i32, i32* %inheaders4, align 4, !tbaa !26
  %cmp = icmp eq i32 %15, 1
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @initial_setup(%struct.jpeg_decompress_struct* %16) #4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 69
  %18 = load i32, i32* %comps_in_scan, align 4, !tbaa !31
  %cmp7 = icmp eq i32 %18, 0
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.6
  %19 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !1
  %inheaders9 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %19, i32 0, i32 1
  store i32 2, i32* %inheaders9, align 4, !tbaa !26
  br label %sw.epilog

if.end.10:                                        ; preds = %if.end.6
  %20 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !1
  %inheaders11 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %20, i32 0, i32 1
  store i32 0, i32* %inheaders11, align 4, !tbaa !26
  br label %if.end.21

if.else:                                          ; preds = %sw.bb
  %21 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !1
  %pub12 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %21, i32 0, i32 0
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub12, i32 0, i32 4
  %22 = load i32, i32* %has_multiple_scans, align 4, !tbaa !24
  %tobool13 = icmp ne i32 %22, 0
  br i1 %tobool13, label %if.end.16, label %if.then.14

if.then.14:                                       ; preds = %if.else
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !32
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i32 0, i32 5
  store i32 36, i32* %msg_code, align 4, !tbaa !33
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err15, align 8, !tbaa !32
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i32 0, i32 0
  %27 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !35
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %29 = bitcast %struct.jpeg_decompress_struct* %28 to %struct.jpeg_common_struct*
  call void %27(%struct.jpeg_common_struct* %29) #4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.else
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 69
  %31 = load i32, i32* %comps_in_scan17, align 4, !tbaa !31
  %cmp18 = icmp eq i32 %31, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  br label %sw.epilog

if.end.20:                                        ; preds = %if.end.16
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @start_input_pass(%struct.jpeg_decompress_struct* %32) #4
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.10
  %33 = load i32, i32* %val, align 4, !tbaa !30
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.22:                                         ; preds = %for.cond
  %34 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !1
  %pub23 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %34, i32 0, i32 0
  %eoi_reached24 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub23, i32 0, i32 5
  store i32 1, i32* %eoi_reached24, align 4, !tbaa !25
  %35 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !1
  %inheaders25 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %35, i32 0, i32 1
  %36 = load i32, i32* %inheaders25, align 4, !tbaa !26
  %tobool26 = icmp ne i32 %36, 0
  br i1 %tobool26, label %if.then.27, label %if.else.36

if.then.27:                                       ; preds = %sw.bb.22
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 88
  %38 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker28, align 8, !tbaa !27
  %saw_SOF = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %38, i32 0, i32 4
  %39 = load i32, i32* %saw_SOF, align 4, !tbaa !36
  %tobool29 = icmp ne i32 %39, 0
  br i1 %tobool29, label %if.then.30, label %if.end.35

if.then.30:                                       ; preds = %if.then.27
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 0
  %41 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err31, align 8, !tbaa !32
  %msg_code32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %41, i32 0, i32 5
  store i32 62, i32* %msg_code32, align 4, !tbaa !33
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 0
  %43 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err33, align 8, !tbaa !32
  %error_exit34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %43, i32 0, i32 0
  %44 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit34, align 8, !tbaa !35
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %46 = bitcast %struct.jpeg_decompress_struct* %45 to %struct.jpeg_common_struct*
  call void %44(%struct.jpeg_common_struct* %46) #4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.30, %if.then.27
  br label %if.end.42

if.else.36:                                       ; preds = %sw.bb.22
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 37
  %48 = load i32, i32* %output_scan_number, align 4, !tbaa !37
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 35
  %50 = load i32, i32* %input_scan_number, align 4, !tbaa !38
  %cmp37 = icmp sgt i32 %48, %50
  br i1 %cmp37, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %if.else.36
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %input_scan_number39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 35
  %52 = load i32, i32* %input_scan_number39, align 4, !tbaa !38
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %output_scan_number40 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 37
  store i32 %52, i32* %output_scan_number40, align 4, !tbaa !37
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %if.else.36
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.35
  %54 = load i32, i32* %val, align 4, !tbaa !30
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.43:                                         ; preds = %for.cond
  %55 = load i32, i32* %val, align 4, !tbaa !30
  store i32 %55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %for.cond
  %56 = load i32, i32* %val, align 4, !tbaa !30
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.then.19, %if.then.8
  br label %for.cond

cleanup:                                          ; preds = %sw.default, %sw.bb.43, %if.end.42, %if.end.21, %if.then
  %57 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast %struct.my_input_controller** %inputctl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define internal void @reset_input_controller(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %inputctl = alloca %struct.my_input_controller*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.my_input_controller** %inputctl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %inputctl1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 87
  %2 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl1, align 8, !tbaa !17
  %3 = bitcast %struct.jpeg_input_controller* %2 to %struct.my_input_controller*
  store %struct.my_input_controller* %3, %struct.my_input_controller** %inputctl, align 8, !tbaa !1
  %4 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %4, i32 0, i32 0
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub, i32 0, i32 0
  store i32 (%struct.jpeg_decompress_struct*)* @consume_markers, i32 (%struct.jpeg_decompress_struct*)** %consume_input, align 8, !tbaa !18
  %5 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !1
  %pub2 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %5, i32 0, i32 0
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub2, i32 0, i32 4
  store i32 0, i32* %has_multiple_scans, align 4, !tbaa !24
  %6 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !1
  %pub3 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %6, i32 0, i32 0
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %pub3, i32 0, i32 5
  store i32 0, i32* %eoi_reached, align 4, !tbaa !25
  %7 = load %struct.my_input_controller*, %struct.my_input_controller** %inputctl, align 8, !tbaa !1
  %inheaders = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %7, i32 0, i32 1
  store i32 1, i32* %inheaders, align 4, !tbaa !26
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !32
  %reset_error_mgr = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 4
  %10 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %reset_error_mgr, align 8, !tbaa !39
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %12 = bitcast %struct.jpeg_decompress_struct* %11 to %struct.jpeg_common_struct*
  call void %10(%struct.jpeg_common_struct* %12) #4
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 88
  %14 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8, !tbaa !27
  %reset_marker_reader = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %14, i32 0, i32 0
  %reset_marker_reader4 = bitcast {}** %reset_marker_reader to void (%struct.jpeg_decompress_struct*)**
  %15 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %reset_marker_reader4, align 8, !tbaa !40
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %15(%struct.jpeg_decompress_struct* %16) #4
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %coef_bits = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 39
  store [64 x i32]* null, [64 x i32]** %coef_bits, align 8, !tbaa !41
  %18 = bitcast %struct.my_input_controller** %inputctl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_input_pass(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @per_scan_setup(%struct.jpeg_decompress_struct* %0) #4
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @latch_quant_tables(%struct.jpeg_decompress_struct* %1) #4
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 89
  %3 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy, align 8, !tbaa !42
  %start_pass = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %3, i32 0, i32 0
  %start_pass1 = bitcast {}** %start_pass to void (%struct.jpeg_decompress_struct*)**
  %4 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %start_pass1, align 8, !tbaa !43
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %4(%struct.jpeg_decompress_struct* %5) #4
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %coef = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 85
  %7 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef, align 8, !tbaa !45
  %start_input_pass = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %7, i32 0, i32 0
  %start_input_pass2 = bitcast {}** %start_input_pass to void (%struct.jpeg_decompress_struct*)**
  %8 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %start_input_pass2, align 8, !tbaa !46
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %8(%struct.jpeg_decompress_struct* %9) #4
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %coef3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 85
  %11 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %coef3, align 8, !tbaa !45
  %consume_data = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %11, i32 0, i32 1
  %12 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %consume_data, align 8, !tbaa !48
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 87
  %14 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8, !tbaa !17
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %14, i32 0, i32 0
  store i32 (%struct.jpeg_decompress_struct*)* %12, i32 (%struct.jpeg_decompress_struct*)** %consume_input, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_input_pass(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 89
  %1 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy, align 8, !tbaa !42
  %finish_pass = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %1, i32 0, i32 2
  %finish_pass1 = bitcast {}** %finish_pass to void (%struct.jpeg_decompress_struct*)**
  %2 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %finish_pass1, align 8, !tbaa !50
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void %2(%struct.jpeg_decompress_struct* %3) #4
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 87
  %5 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8, !tbaa !17
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %5, i32 0, i32 0
  store i32 (%struct.jpeg_decompress_struct*)* @consume_markers, i32 (%struct.jpeg_decompress_struct*)** %consume_input, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @initial_setup(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 8
  %3 = load i32, i32* %image_height, align 4, !tbaa !11
  %conv = zext i32 %3 to i64
  %cmp = icmp sgt i64 %conv, 65500
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 7
  %5 = load i32, i32* %image_width, align 4, !tbaa !5
  %conv2 = zext i32 %5 to i64
  %cmp3 = icmp sgt i64 %conv2, 65500
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !32
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 5
  store i32 42, i32* %msg_code, align 4, !tbaa !33
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err5, align 8, !tbaa !32
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 65500, i32* %arrayidx, align 4, !tbaa !30
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8, !tbaa !32
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 0
  %12 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !35
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %14 = bitcast %struct.jpeg_decompress_struct* %13 to %struct.jpeg_common_struct*
  call void %12(%struct.jpeg_common_struct* %14) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %data_precision = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 43
  %16 = load i32, i32* %data_precision, align 4, !tbaa !51
  %cmp7 = icmp slt i32 %16, 8
  br i1 %cmp7, label %if.then.13, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %data_precision10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 43
  %18 = load i32, i32* %data_precision10, align 4, !tbaa !51
  %cmp11 = icmp sgt i32 %18, 12
  br i1 %cmp11, label %if.then.13, label %if.end.23

if.then.13:                                       ; preds = %lor.lhs.false.9, %if.end
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err14, align 8, !tbaa !32
  %msg_code15 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 5
  store i32 16, i32* %msg_code15, align 4, !tbaa !33
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %data_precision16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 43
  %22 = load i32, i32* %data_precision16, align 4, !tbaa !51
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err17, align 8, !tbaa !32
  %msg_parm18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i32 0, i32 6
  %i19 = bitcast %union.anon* %msg_parm18 to [8 x i32]*
  %arrayidx20 = getelementptr inbounds [8 x i32], [8 x i32]* %i19, i32 0, i64 0
  store i32 %22, i32* %arrayidx20, align 4, !tbaa !30
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err21, align 8, !tbaa !32
  %error_exit22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i32 0, i32 0
  %27 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit22, align 8, !tbaa !35
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %29 = bitcast %struct.jpeg_decompress_struct* %28 to %struct.jpeg_common_struct*
  call void %27(%struct.jpeg_common_struct* %29) #4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.13, %lor.lhs.false.9
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 9
  %31 = load i32, i32* %num_components, align 4, !tbaa !52
  %cmp24 = icmp sgt i32 %31, 10
  br i1 %cmp24, label %if.then.26, label %if.end.40

if.then.26:                                       ; preds = %if.end.23
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err27, align 8, !tbaa !32
  %msg_code28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 5
  store i32 27, i32* %msg_code28, align 4, !tbaa !33
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 9
  %35 = load i32, i32* %num_components29, align 4, !tbaa !52
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err30, align 8, !tbaa !32
  %msg_parm31 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 6
  %i32 = bitcast %union.anon* %msg_parm31 to [8 x i32]*
  %arrayidx33 = getelementptr inbounds [8 x i32], [8 x i32]* %i32, i32 0, i64 0
  store i32 %35, i32* %arrayidx33, align 4, !tbaa !30
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err34, align 8, !tbaa !32
  %msg_parm35 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %39, i32 0, i32 6
  %i36 = bitcast %union.anon* %msg_parm35 to [8 x i32]*
  %arrayidx37 = getelementptr inbounds [8 x i32], [8 x i32]* %i36, i32 0, i64 1
  store i32 10, i32* %arrayidx37, align 4, !tbaa !30
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 0
  %41 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err38, align 8, !tbaa !32
  %error_exit39 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %41, i32 0, i32 0
  %42 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit39, align 8, !tbaa !35
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %44 = bitcast %struct.jpeg_decompress_struct* %43 to %struct.jpeg_common_struct*
  call void %42(%struct.jpeg_common_struct* %44) #4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.26, %if.end.23
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 63
  store i32 1, i32* %max_h_samp_factor, align 4, !tbaa !53
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 64
  store i32 1, i32* %max_v_samp_factor, align 4, !tbaa !54
  store i32 0, i32* %ci, align 4, !tbaa !30
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 44
  %48 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !55
  store %struct.jpeg_component_info* %48, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.40
  %49 = load i32, i32* %ci, align 4, !tbaa !30
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 9
  %51 = load i32, i32* %num_components41, align 4, !tbaa !52
  %cmp42 = icmp slt i32 %49, %51
  br i1 %cmp42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %52 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %52, i32 0, i32 2
  %53 = load i32, i32* %h_samp_factor, align 4, !tbaa !56
  %cmp44 = icmp sle i32 %53, 0
  br i1 %cmp44, label %if.then.57, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %for.body
  %54 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor47 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %54, i32 0, i32 2
  %55 = load i32, i32* %h_samp_factor47, align 4, !tbaa !56
  %cmp48 = icmp sgt i32 %55, 4
  br i1 %cmp48, label %if.then.57, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %lor.lhs.false.46
  %56 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %56, i32 0, i32 3
  %57 = load i32, i32* %v_samp_factor, align 4, !tbaa !58
  %cmp51 = icmp sle i32 %57, 0
  br i1 %cmp51, label %if.then.57, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %lor.lhs.false.50
  %58 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor54 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %58, i32 0, i32 3
  %59 = load i32, i32* %v_samp_factor54, align 4, !tbaa !58
  %cmp55 = icmp sgt i32 %59, 4
  br i1 %cmp55, label %if.then.57, label %if.end.62

if.then.57:                                       ; preds = %lor.lhs.false.53, %lor.lhs.false.50, %lor.lhs.false.46, %for.body
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %60, i32 0, i32 0
  %61 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err58, align 8, !tbaa !32
  %msg_code59 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %61, i32 0, i32 5
  store i32 19, i32* %msg_code59, align 4, !tbaa !33
  %62 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err60 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %62, i32 0, i32 0
  %63 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err60, align 8, !tbaa !32
  %error_exit61 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %63, i32 0, i32 0
  %64 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit61, align 8, !tbaa !35
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %66 = bitcast %struct.jpeg_decompress_struct* %65 to %struct.jpeg_common_struct*
  call void %64(%struct.jpeg_common_struct* %66) #4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.57, %lor.lhs.false.53
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_h_samp_factor63 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %67, i32 0, i32 63
  %68 = load i32, i32* %max_h_samp_factor63, align 4, !tbaa !53
  %69 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor64 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %69, i32 0, i32 2
  %70 = load i32, i32* %h_samp_factor64, align 4, !tbaa !56
  %cmp65 = icmp sgt i32 %68, %70
  br i1 %cmp65, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.62
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_h_samp_factor67 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 63
  %72 = load i32, i32* %max_h_samp_factor67, align 4, !tbaa !53
  br label %cond.end

cond.false:                                       ; preds = %if.end.62
  %73 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor68 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %73, i32 0, i32 2
  %74 = load i32, i32* %h_samp_factor68, align 4, !tbaa !56
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %72, %cond.true ], [ %74, %cond.false ]
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_h_samp_factor69 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %75, i32 0, i32 63
  store i32 %cond, i32* %max_h_samp_factor69, align 4, !tbaa !53
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %76, i32 0, i32 64
  %77 = load i32, i32* %max_v_samp_factor70, align 4, !tbaa !54
  %78 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor71 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %78, i32 0, i32 3
  %79 = load i32, i32* %v_samp_factor71, align 4, !tbaa !58
  %cmp72 = icmp sgt i32 %77, %79
  br i1 %cmp72, label %cond.true.74, label %cond.false.76

cond.true.74:                                     ; preds = %cond.end
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor75 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %80, i32 0, i32 64
  %81 = load i32, i32* %max_v_samp_factor75, align 4, !tbaa !54
  br label %cond.end.78

cond.false.76:                                    ; preds = %cond.end
  %82 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor77 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %82, i32 0, i32 3
  %83 = load i32, i32* %v_samp_factor77, align 4, !tbaa !58
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.76, %cond.true.74
  %cond79 = phi i32 [ %81, %cond.true.74 ], [ %83, %cond.false.76 ]
  %84 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor80 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %84, i32 0, i32 64
  store i32 %cond79, i32* %max_v_samp_factor80, align 4, !tbaa !54
  br label %for.inc

for.inc:                                          ; preds = %cond.end.78
  %85 = load i32, i32* %ci, align 4, !tbaa !30
  %inc = add nsw i32 %85, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !30
  %86 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %86, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %87 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %is_baseline = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %87, i32 0, i32 45
  %88 = load i32, i32* %is_baseline, align 4, !tbaa !59
  %tobool = icmp ne i32 %88, 0
  br i1 %tobool, label %if.then.84, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %for.end
  %89 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %89, i32 0, i32 46
  %90 = load i32, i32* %progressive_mode, align 4, !tbaa !60
  %tobool82 = icmp ne i32 %90, 0
  br i1 %tobool82, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false.81
  %91 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %91, i32 0, i32 69
  %92 = load i32, i32* %comps_in_scan, align 4, !tbaa !31
  %tobool83 = icmp ne i32 %92, 0
  br i1 %tobool83, label %if.then.84, label %if.else

if.then.84:                                       ; preds = %land.lhs.true, %for.end
  %93 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %93, i32 0, i32 79
  store i32 8, i32* %block_size, align 4, !tbaa !61
  %94 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %94, i32 0, i32 80
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i32 0), i32** %natural_order, align 8, !tbaa !62
  %95 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %95, i32 0, i32 81
  store i32 63, i32* %lim_Se, align 4, !tbaa !63
  br label %if.end.176

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false.81
  %96 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %96, i32 0, i32 76
  %97 = load i32, i32* %Se, align 4, !tbaa !64
  switch i32 %97, label %sw.default [
    i32 0, label %sw.bb
    i32 3, label %sw.bb.89
    i32 8, label %sw.bb.94
    i32 15, label %sw.bb.99
    i32 24, label %sw.bb.104
    i32 35, label %sw.bb.109
    i32 48, label %sw.bb.114
    i32 63, label %sw.bb.119
    i32 80, label %sw.bb.123
    i32 99, label %sw.bb.127
    i32 120, label %sw.bb.131
    i32 143, label %sw.bb.135
    i32 168, label %sw.bb.139
    i32 195, label %sw.bb.143
    i32 224, label %sw.bb.147
    i32 255, label %sw.bb.151
  ]

sw.bb:                                            ; preds = %if.else
  %98 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size85 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %98, i32 0, i32 79
  store i32 1, i32* %block_size85, align 4, !tbaa !61
  %99 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order86 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %99, i32 0, i32 80
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i32 0), i32** %natural_order86, align 8, !tbaa !62
  %100 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se87 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %100, i32 0, i32 76
  %101 = load i32, i32* %Se87, align 4, !tbaa !64
  %102 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se88 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %102, i32 0, i32 81
  store i32 %101, i32* %lim_Se88, align 4, !tbaa !63
  br label %sw.epilog

sw.bb.89:                                         ; preds = %if.else
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size90 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %103, i32 0, i32 79
  store i32 2, i32* %block_size90, align 4, !tbaa !61
  %104 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order91 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %104, i32 0, i32 80
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order2, i32 0, i32 0), i32** %natural_order91, align 8, !tbaa !62
  %105 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se92 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %105, i32 0, i32 76
  %106 = load i32, i32* %Se92, align 4, !tbaa !64
  %107 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se93 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %107, i32 0, i32 81
  store i32 %106, i32* %lim_Se93, align 4, !tbaa !63
  br label %sw.epilog

sw.bb.94:                                         ; preds = %if.else
  %108 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size95 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %108, i32 0, i32 79
  store i32 3, i32* %block_size95, align 4, !tbaa !61
  %109 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order96 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %109, i32 0, i32 80
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order3, i32 0, i32 0), i32** %natural_order96, align 8, !tbaa !62
  %110 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se97 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %110, i32 0, i32 76
  %111 = load i32, i32* %Se97, align 4, !tbaa !64
  %112 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se98 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %112, i32 0, i32 81
  store i32 %111, i32* %lim_Se98, align 4, !tbaa !63
  br label %sw.epilog

sw.bb.99:                                         ; preds = %if.else
  %113 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size100 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %113, i32 0, i32 79
  store i32 4, i32* %block_size100, align 4, !tbaa !61
  %114 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order101 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %114, i32 0, i32 80
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order4, i32 0, i32 0), i32** %natural_order101, align 8, !tbaa !62
  %115 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se102 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %115, i32 0, i32 76
  %116 = load i32, i32* %Se102, align 4, !tbaa !64
  %117 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se103 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %117, i32 0, i32 81
  store i32 %116, i32* %lim_Se103, align 4, !tbaa !63
  br label %sw.epilog

sw.bb.104:                                        ; preds = %if.else
  %118 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size105 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %118, i32 0, i32 79
  store i32 5, i32* %block_size105, align 4, !tbaa !61
  %119 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order106 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %119, i32 0, i32 80
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order5, i32 0, i32 0), i32** %natural_order106, align 8, !tbaa !62
  %120 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se107 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %120, i32 0, i32 76
  %121 = load i32, i32* %Se107, align 4, !tbaa !64
  %122 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se108 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %122, i32 0, i32 81
  store i32 %121, i32* %lim_Se108, align 4, !tbaa !63
  br label %sw.epilog

sw.bb.109:                                        ; preds = %if.else
  %123 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size110 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %123, i32 0, i32 79
  store i32 6, i32* %block_size110, align 4, !tbaa !61
  %124 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order111 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %124, i32 0, i32 80
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order6, i32 0, i32 0), i32** %natural_order111, align 8, !tbaa !62
  %125 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se112 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %125, i32 0, i32 76
  %126 = load i32, i32* %Se112, align 4, !tbaa !64
  %127 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se113 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %127, i32 0, i32 81
  store i32 %126, i32* %lim_Se113, align 4, !tbaa !63
  br label %sw.epilog

sw.bb.114:                                        ; preds = %if.else
  %128 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size115 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %128, i32 0, i32 79
  store i32 7, i32* %block_size115, align 4, !tbaa !61
  %129 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order116 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %129, i32 0, i32 80
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order7, i32 0, i32 0), i32** %natural_order116, align 8, !tbaa !62
  %130 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se117 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %130, i32 0, i32 76
  %131 = load i32, i32* %Se117, align 4, !tbaa !64
  %132 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se118 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %132, i32 0, i32 81
  store i32 %131, i32* %lim_Se118, align 4, !tbaa !63
  br label %sw.epilog

sw.bb.119:                                        ; preds = %if.else
  %133 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size120 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %133, i32 0, i32 79
  store i32 8, i32* %block_size120, align 4, !tbaa !61
  %134 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order121 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %134, i32 0, i32 80
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i32 0), i32** %natural_order121, align 8, !tbaa !62
  %135 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se122 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %135, i32 0, i32 81
  store i32 63, i32* %lim_Se122, align 4, !tbaa !63
  br label %sw.epilog

sw.bb.123:                                        ; preds = %if.else
  %136 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size124 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %136, i32 0, i32 79
  store i32 9, i32* %block_size124, align 4, !tbaa !61
  %137 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order125 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %137, i32 0, i32 80
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i32 0), i32** %natural_order125, align 8, !tbaa !62
  %138 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se126 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %138, i32 0, i32 81
  store i32 63, i32* %lim_Se126, align 4, !tbaa !63
  br label %sw.epilog

sw.bb.127:                                        ; preds = %if.else
  %139 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size128 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %139, i32 0, i32 79
  store i32 10, i32* %block_size128, align 4, !tbaa !61
  %140 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order129 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %140, i32 0, i32 80
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i32 0), i32** %natural_order129, align 8, !tbaa !62
  %141 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se130 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %141, i32 0, i32 81
  store i32 63, i32* %lim_Se130, align 4, !tbaa !63
  br label %sw.epilog

sw.bb.131:                                        ; preds = %if.else
  %142 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size132 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %142, i32 0, i32 79
  store i32 11, i32* %block_size132, align 4, !tbaa !61
  %143 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order133 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %143, i32 0, i32 80
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i32 0), i32** %natural_order133, align 8, !tbaa !62
  %144 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se134 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %144, i32 0, i32 81
  store i32 63, i32* %lim_Se134, align 4, !tbaa !63
  br label %sw.epilog

sw.bb.135:                                        ; preds = %if.else
  %145 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size136 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %145, i32 0, i32 79
  store i32 12, i32* %block_size136, align 4, !tbaa !61
  %146 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order137 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %146, i32 0, i32 80
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i32 0), i32** %natural_order137, align 8, !tbaa !62
  %147 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se138 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %147, i32 0, i32 81
  store i32 63, i32* %lim_Se138, align 4, !tbaa !63
  br label %sw.epilog

sw.bb.139:                                        ; preds = %if.else
  %148 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size140 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %148, i32 0, i32 79
  store i32 13, i32* %block_size140, align 4, !tbaa !61
  %149 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order141 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %149, i32 0, i32 80
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i32 0), i32** %natural_order141, align 8, !tbaa !62
  %150 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se142 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %150, i32 0, i32 81
  store i32 63, i32* %lim_Se142, align 4, !tbaa !63
  br label %sw.epilog

sw.bb.143:                                        ; preds = %if.else
  %151 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size144 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %151, i32 0, i32 79
  store i32 14, i32* %block_size144, align 4, !tbaa !61
  %152 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order145 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %152, i32 0, i32 80
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i32 0), i32** %natural_order145, align 8, !tbaa !62
  %153 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se146 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %153, i32 0, i32 81
  store i32 63, i32* %lim_Se146, align 4, !tbaa !63
  br label %sw.epilog

sw.bb.147:                                        ; preds = %if.else
  %154 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size148 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %154, i32 0, i32 79
  store i32 15, i32* %block_size148, align 4, !tbaa !61
  %155 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order149 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %155, i32 0, i32 80
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i32 0), i32** %natural_order149, align 8, !tbaa !62
  %156 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se150 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %156, i32 0, i32 81
  store i32 63, i32* %lim_Se150, align 4, !tbaa !63
  br label %sw.epilog

sw.bb.151:                                        ; preds = %if.else
  %157 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size152 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %157, i32 0, i32 79
  store i32 16, i32* %block_size152, align 4, !tbaa !61
  %158 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order153 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %158, i32 0, i32 80
  store i32* getelementptr inbounds ([0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i32 0), i32** %natural_order153, align 8, !tbaa !62
  %159 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se154 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %159, i32 0, i32 81
  store i32 63, i32* %lim_Se154, align 4, !tbaa !63
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  %160 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err155 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %160, i32 0, i32 0
  %161 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err155, align 8, !tbaa !32
  %msg_code156 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %161, i32 0, i32 5
  store i32 17, i32* %msg_code156, align 4, !tbaa !33
  %162 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %162, i32 0, i32 75
  %163 = load i32, i32* %Ss, align 4, !tbaa !65
  %164 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err157 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %164, i32 0, i32 0
  %165 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err157, align 8, !tbaa !32
  %msg_parm158 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %165, i32 0, i32 6
  %i159 = bitcast %union.anon* %msg_parm158 to [8 x i32]*
  %arrayidx160 = getelementptr inbounds [8 x i32], [8 x i32]* %i159, i32 0, i64 0
  store i32 %163, i32* %arrayidx160, align 4, !tbaa !30
  %166 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se161 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %166, i32 0, i32 76
  %167 = load i32, i32* %Se161, align 4, !tbaa !64
  %168 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err162 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %168, i32 0, i32 0
  %169 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err162, align 8, !tbaa !32
  %msg_parm163 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %169, i32 0, i32 6
  %i164 = bitcast %union.anon* %msg_parm163 to [8 x i32]*
  %arrayidx165 = getelementptr inbounds [8 x i32], [8 x i32]* %i164, i32 0, i64 1
  store i32 %167, i32* %arrayidx165, align 4, !tbaa !30
  %170 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %170, i32 0, i32 77
  %171 = load i32, i32* %Ah, align 4, !tbaa !66
  %172 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err166 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %172, i32 0, i32 0
  %173 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err166, align 8, !tbaa !32
  %msg_parm167 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %173, i32 0, i32 6
  %i168 = bitcast %union.anon* %msg_parm167 to [8 x i32]*
  %arrayidx169 = getelementptr inbounds [8 x i32], [8 x i32]* %i168, i32 0, i64 2
  store i32 %171, i32* %arrayidx169, align 4, !tbaa !30
  %174 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %174, i32 0, i32 78
  %175 = load i32, i32* %Al, align 4, !tbaa !67
  %176 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err170 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %176, i32 0, i32 0
  %177 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err170, align 8, !tbaa !32
  %msg_parm171 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %177, i32 0, i32 6
  %i172 = bitcast %union.anon* %msg_parm171 to [8 x i32]*
  %arrayidx173 = getelementptr inbounds [8 x i32], [8 x i32]* %i172, i32 0, i64 3
  store i32 %175, i32* %arrayidx173, align 4, !tbaa !30
  %178 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err174 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %178, i32 0, i32 0
  %179 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err174, align 8, !tbaa !32
  %error_exit175 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %179, i32 0, i32 0
  %180 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit175, align 8, !tbaa !35
  %181 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %182 = bitcast %struct.jpeg_decompress_struct* %181 to %struct.jpeg_common_struct*
  call void %180(%struct.jpeg_common_struct* %182) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.151, %sw.bb.147, %sw.bb.143, %sw.bb.139, %sw.bb.135, %sw.bb.131, %sw.bb.127, %sw.bb.123, %sw.bb.119, %sw.bb.114, %sw.bb.109, %sw.bb.104, %sw.bb.99, %sw.bb.94, %sw.bb.89, %sw.bb
  br label %if.end.176

if.end.176:                                       ; preds = %sw.epilog, %if.then.84
  %183 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size177 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %183, i32 0, i32 79
  %184 = load i32, i32* %block_size177, align 4, !tbaa !61
  %185 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_h_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %185, i32 0, i32 65
  store i32 %184, i32* %min_DCT_h_scaled_size, align 4, !tbaa !68
  %186 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size178 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %186, i32 0, i32 79
  %187 = load i32, i32* %block_size178, align 4, !tbaa !61
  %188 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %min_DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %188, i32 0, i32 66
  store i32 %187, i32* %min_DCT_v_scaled_size, align 4, !tbaa !69
  store i32 0, i32* %ci, align 4, !tbaa !30
  %189 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comp_info179 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %189, i32 0, i32 44
  %190 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info179, align 8, !tbaa !55
  store %struct.jpeg_component_info* %190, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond.180

for.cond.180:                                     ; preds = %for.inc.225, %if.end.176
  %191 = load i32, i32* %ci, align 4, !tbaa !30
  %192 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components181 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %192, i32 0, i32 9
  %193 = load i32, i32* %num_components181, align 4, !tbaa !52
  %cmp182 = icmp slt i32 %191, %193
  br i1 %cmp182, label %for.body.184, label %for.end.228

for.body.184:                                     ; preds = %for.cond.180
  %194 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size185 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %194, i32 0, i32 79
  %195 = load i32, i32* %block_size185, align 4, !tbaa !61
  %196 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_h_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %196, i32 0, i32 9
  store i32 %195, i32* %DCT_h_scaled_size, align 4, !tbaa !70
  %197 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size186 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %197, i32 0, i32 79
  %198 = load i32, i32* %block_size186, align 4, !tbaa !61
  %199 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %199, i32 0, i32 10
  store i32 %198, i32* %DCT_v_scaled_size, align 4, !tbaa !71
  %200 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width187 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %200, i32 0, i32 7
  %201 = load i32, i32* %image_width187, align 4, !tbaa !5
  %conv188 = zext i32 %201 to i64
  %202 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor189 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %202, i32 0, i32 2
  %203 = load i32, i32* %h_samp_factor189, align 4, !tbaa !56
  %conv190 = sext i32 %203 to i64
  %mul = mul nsw i64 %conv188, %conv190
  %204 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_h_samp_factor191 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %204, i32 0, i32 63
  %205 = load i32, i32* %max_h_samp_factor191, align 4, !tbaa !53
  %206 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size192 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %206, i32 0, i32 79
  %207 = load i32, i32* %block_size192, align 4, !tbaa !61
  %mul193 = mul nsw i32 %205, %207
  %conv194 = sext i32 %mul193 to i64
  %call = call i64 @jdiv_round_up(i64 %mul, i64 %conv194) #4
  %conv195 = trunc i64 %call to i32
  %208 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %208, i32 0, i32 7
  store i32 %conv195, i32* %width_in_blocks, align 4, !tbaa !72
  %209 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height196 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %209, i32 0, i32 8
  %210 = load i32, i32* %image_height196, align 4, !tbaa !11
  %conv197 = zext i32 %210 to i64
  %211 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor198 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %211, i32 0, i32 3
  %212 = load i32, i32* %v_samp_factor198, align 4, !tbaa !58
  %conv199 = sext i32 %212 to i64
  %mul200 = mul nsw i64 %conv197, %conv199
  %213 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor201 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %213, i32 0, i32 64
  %214 = load i32, i32* %max_v_samp_factor201, align 4, !tbaa !54
  %215 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size202 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %215, i32 0, i32 79
  %216 = load i32, i32* %block_size202, align 4, !tbaa !61
  %mul203 = mul nsw i32 %214, %216
  %conv204 = sext i32 %mul203 to i64
  %call205 = call i64 @jdiv_round_up(i64 %mul200, i64 %conv204) #4
  %conv206 = trunc i64 %call205 to i32
  %217 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %217, i32 0, i32 8
  store i32 %conv206, i32* %height_in_blocks, align 4, !tbaa !73
  %218 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width207 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %218, i32 0, i32 7
  %219 = load i32, i32* %image_width207, align 4, !tbaa !5
  %conv208 = zext i32 %219 to i64
  %220 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor209 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %220, i32 0, i32 2
  %221 = load i32, i32* %h_samp_factor209, align 4, !tbaa !56
  %conv210 = sext i32 %221 to i64
  %mul211 = mul nsw i64 %conv208, %conv210
  %222 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_h_samp_factor212 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %222, i32 0, i32 63
  %223 = load i32, i32* %max_h_samp_factor212, align 4, !tbaa !53
  %conv213 = sext i32 %223 to i64
  %call214 = call i64 @jdiv_round_up(i64 %mul211, i64 %conv213) #4
  %conv215 = trunc i64 %call214 to i32
  %224 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %downsampled_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %224, i32 0, i32 11
  store i32 %conv215, i32* %downsampled_width, align 4, !tbaa !74
  %225 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height216 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %225, i32 0, i32 8
  %226 = load i32, i32* %image_height216, align 4, !tbaa !11
  %conv217 = zext i32 %226 to i64
  %227 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor218 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %227, i32 0, i32 3
  %228 = load i32, i32* %v_samp_factor218, align 4, !tbaa !58
  %conv219 = sext i32 %228 to i64
  %mul220 = mul nsw i64 %conv217, %conv219
  %229 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor221 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %229, i32 0, i32 64
  %230 = load i32, i32* %max_v_samp_factor221, align 4, !tbaa !54
  %conv222 = sext i32 %230 to i64
  %call223 = call i64 @jdiv_round_up(i64 %mul220, i64 %conv222) #4
  %conv224 = trunc i64 %call223 to i32
  %231 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %downsampled_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %231, i32 0, i32 12
  store i32 %conv224, i32* %downsampled_height, align 4, !tbaa !75
  %232 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %232, i32 0, i32 13
  store i32 1, i32* %component_needed, align 4, !tbaa !76
  %233 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %233, i32 0, i32 20
  store %struct.JQUANT_TBL* null, %struct.JQUANT_TBL** %quant_table, align 8, !tbaa !77
  br label %for.inc.225

for.inc.225:                                      ; preds = %for.body.184
  %234 = load i32, i32* %ci, align 4, !tbaa !30
  %inc226 = add nsw i32 %234, 1
  store i32 %inc226, i32* %ci, align 4, !tbaa !30
  %235 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %incdec.ptr227 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %235, i32 1
  store %struct.jpeg_component_info* %incdec.ptr227, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  br label %for.cond.180

for.end.228:                                      ; preds = %for.cond.180
  %236 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height229 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %236, i32 0, i32 8
  %237 = load i32, i32* %image_height229, align 4, !tbaa !11
  %conv230 = zext i32 %237 to i64
  %238 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor231 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %238, i32 0, i32 64
  %239 = load i32, i32* %max_v_samp_factor231, align 4, !tbaa !54
  %240 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size232 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %240, i32 0, i32 79
  %241 = load i32, i32* %block_size232, align 4, !tbaa !61
  %mul233 = mul nsw i32 %239, %241
  %conv234 = sext i32 %mul233 to i64
  %call235 = call i64 @jdiv_round_up(i64 %conv230, i64 %conv234) #4
  %conv236 = trunc i64 %call235 to i32
  %242 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %242, i32 0, i32 67
  store i32 %conv236, i32* %total_iMCU_rows, align 4, !tbaa !78
  %243 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan237 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %243, i32 0, i32 69
  %244 = load i32, i32* %comps_in_scan237, align 4, !tbaa !31
  %245 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components238 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %245, i32 0, i32 9
  %246 = load i32, i32* %num_components238, align 4, !tbaa !52
  %cmp239 = icmp slt i32 %244, %246
  br i1 %cmp239, label %if.then.244, label %lor.lhs.false.241

lor.lhs.false.241:                                ; preds = %for.end.228
  %247 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %progressive_mode242 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %247, i32 0, i32 46
  %248 = load i32, i32* %progressive_mode242, align 4, !tbaa !60
  %tobool243 = icmp ne i32 %248, 0
  br i1 %tobool243, label %if.then.244, label %if.else.245

if.then.244:                                      ; preds = %lor.lhs.false.241, %for.end.228
  %249 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %249, i32 0, i32 87
  %250 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl, align 8, !tbaa !17
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %250, i32 0, i32 4
  store i32 1, i32* %has_multiple_scans, align 4, !tbaa !79
  br label %if.end.248

if.else.245:                                      ; preds = %lor.lhs.false.241
  %251 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %inputctl246 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %251, i32 0, i32 87
  %252 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %inputctl246, align 8, !tbaa !17
  %has_multiple_scans247 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %252, i32 0, i32 4
  store i32 0, i32* %has_multiple_scans247, align 4, !tbaa !79
  br label %if.end.248

if.end.248:                                       ; preds = %if.else.245, %if.then.244
  %253 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %253) #1
  %254 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %254) #1
  ret void
}

declare i64 @jdiv_round_up(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal void @per_scan_setup(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %ci = alloca i32, align 4
  %mcublks = alloca i32, align 4
  %tmp = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %mcublks to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 69
  %5 = load i32, i32* %comps_in_scan, align 4, !tbaa !31
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 70
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 0
  %7 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !1
  store %struct.jpeg_component_info* %7, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %8 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %width_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %8, i32 0, i32 7
  %9 = load i32, i32* %width_in_blocks, align 4, !tbaa !72
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 71
  store i32 %9, i32* %MCUs_per_row, align 4, !tbaa !80
  %11 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %height_in_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %11, i32 0, i32 8
  %12 = load i32, i32* %height_in_blocks, align 4, !tbaa !73
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %MCU_rows_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 72
  store i32 %12, i32* %MCU_rows_in_scan, align 4, !tbaa !81
  %14 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %14, i32 0, i32 14
  store i32 1, i32* %MCU_width, align 4, !tbaa !82
  %15 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %15, i32 0, i32 15
  store i32 1, i32* %MCU_height, align 4, !tbaa !83
  %16 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_blocks = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %16, i32 0, i32 16
  store i32 1, i32* %MCU_blocks, align 4, !tbaa !84
  %17 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_h_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %17, i32 0, i32 9
  %18 = load i32, i32* %DCT_h_scaled_size, align 4, !tbaa !70
  %19 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_sample_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %19, i32 0, i32 17
  store i32 %18, i32* %MCU_sample_width, align 4, !tbaa !85
  %20 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %last_col_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %20, i32 0, i32 18
  store i32 1, i32* %last_col_width, align 4, !tbaa !86
  %21 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %height_in_blocks2 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %21, i32 0, i32 8
  %22 = load i32, i32* %height_in_blocks2, align 4, !tbaa !73
  %23 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %23, i32 0, i32 3
  %24 = load i32, i32* %v_samp_factor, align 4, !tbaa !58
  %rem = urem i32 %22, %24
  store i32 %rem, i32* %tmp, align 4, !tbaa !30
  %25 = load i32, i32* %tmp, align 4, !tbaa !30
  %cmp3 = icmp eq i32 %25, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %26 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor5 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %26, i32 0, i32 3
  %27 = load i32, i32* %v_samp_factor5, align 4, !tbaa !58
  store i32 %27, i32* %tmp, align 4, !tbaa !30
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %28 = load i32, i32* %tmp, align 4, !tbaa !30
  %29 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %29, i32 0, i32 19
  store i32 %28, i32* %last_row_height, align 4, !tbaa !87
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 73
  store i32 1, i32* %blocks_in_MCU, align 4, !tbaa !88
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %MCU_membership = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 74
  %arrayidx6 = getelementptr inbounds [64 x i32], [64 x i32]* %MCU_membership, i32 0, i64 0
  store i32 0, i32* %arrayidx6, align 4, !tbaa !30
  br label %if.end.83

if.else:                                          ; preds = %entry
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 69
  %33 = load i32, i32* %comps_in_scan7, align 4, !tbaa !31
  %cmp8 = icmp sle i32 %33, 0
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 69
  %35 = load i32, i32* %comps_in_scan9, align 4, !tbaa !31
  %cmp10 = icmp sgt i32 %35, 4
  br i1 %cmp10, label %if.then.11, label %if.end.20

if.then.11:                                       ; preds = %lor.lhs.false, %if.else
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !32
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 5
  store i32 27, i32* %msg_code, align 4, !tbaa !33
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 69
  %39 = load i32, i32* %comps_in_scan12, align 4, !tbaa !31
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 0
  %41 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8, !tbaa !32
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %41, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %39, i32* %arrayidx14, align 4, !tbaa !30
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 0
  %43 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err15, align 8, !tbaa !32
  %msg_parm16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %43, i32 0, i32 6
  %i17 = bitcast %union.anon* %msg_parm16 to [8 x i32]*
  %arrayidx18 = getelementptr inbounds [8 x i32], [8 x i32]* %i17, i32 0, i64 1
  store i32 4, i32* %arrayidx18, align 4, !tbaa !30
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 0
  %45 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err19, align 8, !tbaa !32
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %45, i32 0, i32 0
  %46 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !35
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %48 = bitcast %struct.jpeg_decompress_struct* %47 to %struct.jpeg_common_struct*
  call void %46(%struct.jpeg_common_struct* %48) #4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.11, %lor.lhs.false
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 7
  %50 = load i32, i32* %image_width, align 4, !tbaa !5
  %conv = zext i32 %50 to i64
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_h_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 63
  %52 = load i32, i32* %max_h_samp_factor, align 4, !tbaa !53
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 79
  %54 = load i32, i32* %block_size, align 4, !tbaa !61
  %mul = mul nsw i32 %52, %54
  %conv21 = sext i32 %mul to i64
  %call = call i64 @jdiv_round_up(i64 %conv, i64 %conv21) #4
  %conv22 = trunc i64 %call to i32
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %MCUs_per_row23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %55, i32 0, i32 71
  store i32 %conv22, i32* %MCUs_per_row23, align 4, !tbaa !80
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %image_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %56, i32 0, i32 8
  %57 = load i32, i32* %image_height, align 4, !tbaa !11
  %conv24 = zext i32 %57 to i64
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %max_v_samp_factor = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %58, i32 0, i32 64
  %59 = load i32, i32* %max_v_samp_factor, align 4, !tbaa !54
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %block_size25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %60, i32 0, i32 79
  %61 = load i32, i32* %block_size25, align 4, !tbaa !61
  %mul26 = mul nsw i32 %59, %61
  %conv27 = sext i32 %mul26 to i64
  %call28 = call i64 @jdiv_round_up(i64 %conv24, i64 %conv27) #4
  %conv29 = trunc i64 %call28 to i32
  %62 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %MCU_rows_in_scan30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %62, i32 0, i32 72
  store i32 %conv29, i32* %MCU_rows_in_scan30, align 4, !tbaa !81
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %blocks_in_MCU31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %63, i32 0, i32 73
  store i32 0, i32* %blocks_in_MCU31, align 4, !tbaa !88
  store i32 0, i32* %ci, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %64 = load i32, i32* %ci, align 4, !tbaa !30
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan32 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 69
  %66 = load i32, i32* %comps_in_scan32, align 4, !tbaa !31
  %cmp33 = icmp slt i32 %64, %66
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %67 = load i32, i32* %ci, align 4, !tbaa !30
  %idxprom = sext i32 %67 to i64
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %68, i32 0, i32 70
  %arrayidx36 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info35, i32 0, i64 %idxprom
  %69 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx36, align 8, !tbaa !1
  store %struct.jpeg_component_info* %69, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %70 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %70, i32 0, i32 2
  %71 = load i32, i32* %h_samp_factor, align 4, !tbaa !56
  %72 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_width37 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %72, i32 0, i32 14
  store i32 %71, i32* %MCU_width37, align 4, !tbaa !82
  %73 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %v_samp_factor38 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %73, i32 0, i32 3
  %74 = load i32, i32* %v_samp_factor38, align 4, !tbaa !58
  %75 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_height39 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %75, i32 0, i32 15
  store i32 %74, i32* %MCU_height39, align 4, !tbaa !83
  %76 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_width40 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %76, i32 0, i32 14
  %77 = load i32, i32* %MCU_width40, align 4, !tbaa !82
  %78 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_height41 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %78, i32 0, i32 15
  %79 = load i32, i32* %MCU_height41, align 4, !tbaa !83
  %mul42 = mul nsw i32 %77, %79
  %80 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_blocks43 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %80, i32 0, i32 16
  store i32 %mul42, i32* %MCU_blocks43, align 4, !tbaa !84
  %81 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_width44 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %81, i32 0, i32 14
  %82 = load i32, i32* %MCU_width44, align 4, !tbaa !82
  %83 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_h_scaled_size45 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %83, i32 0, i32 9
  %84 = load i32, i32* %DCT_h_scaled_size45, align 4, !tbaa !70
  %mul46 = mul nsw i32 %82, %84
  %85 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_sample_width47 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %85, i32 0, i32 17
  store i32 %mul46, i32* %MCU_sample_width47, align 4, !tbaa !85
  %86 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %width_in_blocks48 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %86, i32 0, i32 7
  %87 = load i32, i32* %width_in_blocks48, align 4, !tbaa !72
  %88 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_width49 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i32 0, i32 14
  %89 = load i32, i32* %MCU_width49, align 4, !tbaa !82
  %rem50 = urem i32 %87, %89
  store i32 %rem50, i32* %tmp, align 4, !tbaa !30
  %90 = load i32, i32* %tmp, align 4, !tbaa !30
  %cmp51 = icmp eq i32 %90, 0
  br i1 %cmp51, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %for.body
  %91 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_width54 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %91, i32 0, i32 14
  %92 = load i32, i32* %MCU_width54, align 4, !tbaa !82
  store i32 %92, i32* %tmp, align 4, !tbaa !30
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %for.body
  %93 = load i32, i32* %tmp, align 4, !tbaa !30
  %94 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %last_col_width56 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %94, i32 0, i32 18
  store i32 %93, i32* %last_col_width56, align 4, !tbaa !86
  %95 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %height_in_blocks57 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %95, i32 0, i32 8
  %96 = load i32, i32* %height_in_blocks57, align 4, !tbaa !73
  %97 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_height58 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %97, i32 0, i32 15
  %98 = load i32, i32* %MCU_height58, align 4, !tbaa !83
  %rem59 = urem i32 %96, %98
  store i32 %rem59, i32* %tmp, align 4, !tbaa !30
  %99 = load i32, i32* %tmp, align 4, !tbaa !30
  %cmp60 = icmp eq i32 %99, 0
  br i1 %cmp60, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.end.55
  %100 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_height63 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %100, i32 0, i32 15
  %101 = load i32, i32* %MCU_height63, align 4, !tbaa !83
  store i32 %101, i32* %tmp, align 4, !tbaa !30
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.end.55
  %102 = load i32, i32* %tmp, align 4, !tbaa !30
  %103 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %last_row_height65 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %103, i32 0, i32 19
  store i32 %102, i32* %last_row_height65, align 4, !tbaa !87
  %104 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %MCU_blocks66 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %104, i32 0, i32 16
  %105 = load i32, i32* %MCU_blocks66, align 4, !tbaa !84
  store i32 %105, i32* %mcublks, align 4, !tbaa !30
  %106 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %blocks_in_MCU67 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %106, i32 0, i32 73
  %107 = load i32, i32* %blocks_in_MCU67, align 4, !tbaa !88
  %108 = load i32, i32* %mcublks, align 4, !tbaa !30
  %add = add nsw i32 %107, %108
  %cmp68 = icmp sgt i32 %add, 64
  br i1 %cmp68, label %if.then.70, label %if.end.75

if.then.70:                                       ; preds = %if.end.64
  %109 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err71 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %109, i32 0, i32 0
  %110 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err71, align 8, !tbaa !32
  %msg_code72 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %110, i32 0, i32 5
  store i32 14, i32* %msg_code72, align 4, !tbaa !33
  %111 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err73 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %111, i32 0, i32 0
  %112 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err73, align 8, !tbaa !32
  %error_exit74 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %112, i32 0, i32 0
  %113 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit74, align 8, !tbaa !35
  %114 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %115 = bitcast %struct.jpeg_decompress_struct* %114 to %struct.jpeg_common_struct*
  call void %113(%struct.jpeg_common_struct* %115) #4
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.70, %if.end.64
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.75
  %116 = load i32, i32* %mcublks, align 4, !tbaa !30
  %dec = add nsw i32 %116, -1
  store i32 %dec, i32* %mcublks, align 4, !tbaa !30
  %cmp76 = icmp sgt i32 %116, 0
  br i1 %cmp76, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %117 = load i32, i32* %ci, align 4, !tbaa !30
  %118 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %blocks_in_MCU78 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %118, i32 0, i32 73
  %119 = load i32, i32* %blocks_in_MCU78, align 4, !tbaa !88
  %inc = add nsw i32 %119, 1
  store i32 %inc, i32* %blocks_in_MCU78, align 4, !tbaa !88
  %idxprom79 = sext i32 %119 to i64
  %120 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %MCU_membership80 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %120, i32 0, i32 74
  %arrayidx81 = getelementptr inbounds [64 x i32], [64 x i32]* %MCU_membership80, i32 0, i64 %idxprom79
  store i32 %117, i32* %arrayidx81, align 4, !tbaa !30
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %121 = load i32, i32* %ci, align 4, !tbaa !30
  %inc82 = add nsw i32 %121, 1
  store i32 %inc82, i32* %ci, align 4, !tbaa !30
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.83

if.end.83:                                        ; preds = %for.end, %if.end
  %122 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast i32* %mcublks to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
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
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %qtblno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.JQUANT_TBL** %qtbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32 0, i32* %ci, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %ci, align 4, !tbaa !30
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 69
  %6 = load i32, i32* %comps_in_scan, align 4, !tbaa !31
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %ci, align 4, !tbaa !30
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 70
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %9 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !1
  store %struct.jpeg_component_info* %9, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %10 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %10, i32 0, i32 20
  %11 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_table, align 8, !tbaa !77
  %cmp1 = icmp ne %struct.JQUANT_TBL* %11, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %12 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %12, i32 0, i32 4
  %13 = load i32, i32* %quant_tbl_no, align 4, !tbaa !89
  store i32 %13, i32* %qtblno, align 4, !tbaa !30
  %14 = load i32, i32* %qtblno, align 4, !tbaa !30
  %cmp2 = icmp slt i32 %14, 0
  br i1 %cmp2, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %15 = load i32, i32* %qtblno, align 4, !tbaa !30
  %cmp3 = icmp sge i32 %15, 4
  br i1 %cmp3, label %if.then.8, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %16 = load i32, i32* %qtblno, align 4, !tbaa !30
  %idxprom5 = sext i32 %16 to i64
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 40
  %arrayidx6 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs, i32 0, i64 %idxprom5
  %18 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx6, align 8, !tbaa !1
  %cmp7 = icmp eq %struct.JQUANT_TBL* %18, null
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %lor.lhs.false.4, %lor.lhs.false, %if.end
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !32
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 5
  store i32 54, i32* %msg_code, align 4, !tbaa !33
  %21 = load i32, i32* %qtblno, align 4, !tbaa !30
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8, !tbaa !32
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx10 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %21, i32* %arrayidx10, align 4, !tbaa !30
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 0
  %25 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err11, align 8, !tbaa !32
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %25, i32 0, i32 0
  %26 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !35
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %28 = bitcast %struct.jpeg_decompress_struct* %27 to %struct.jpeg_common_struct*
  call void %26(%struct.jpeg_common_struct* %28) #4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %lor.lhs.false.4
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 1
  %30 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !13
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %30, i32 0, i32 0
  %31 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !14
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %33 = bitcast %struct.jpeg_decompress_struct* %32 to %struct.jpeg_common_struct*
  %call = call i8* %31(%struct.jpeg_common_struct* %33, i32 1, i64 132) #4
  %34 = bitcast i8* %call to %struct.JQUANT_TBL*
  store %struct.JQUANT_TBL* %34, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !1
  %35 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !1
  %36 = bitcast %struct.JQUANT_TBL* %35 to i8*
  %37 = load i32, i32* %qtblno, align 4, !tbaa !30
  %idxprom13 = sext i32 %37 to i64
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %quant_tbl_ptrs14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 40
  %arrayidx15 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs14, i32 0, i64 %idxprom13
  %39 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx15, align 8, !tbaa !1
  %40 = bitcast %struct.JQUANT_TBL* %39 to i8*
  %call16 = call i8* @memcpy(i8* %36, i8* %40, i64 132) #5
  %41 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !1
  %42 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %quant_table17 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %42, i32 0, i32 20
  store %struct.JQUANT_TBL* %41, %struct.JQUANT_TBL** %quant_table17, align 8, !tbaa !77
  br label %for.inc

for.inc:                                          ; preds = %if.end.12, %if.then
  %43 = load i32, i32* %ci, align 4, !tbaa !30
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !30
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = bitcast %struct.JQUANT_TBL** %qtbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i32* %qtblno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 48}
!6 = !{!"jpeg_decompress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !7, i64 36, !2, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !3, i64 60, !3, i64 64, !7, i64 68, !7, i64 72, !8, i64 80, !3, i64 88, !3, i64 92, !3, i64 96, !3, i64 100, !3, i64 104, !3, i64 108, !3, i64 112, !3, i64 116, !7, i64 120, !3, i64 124, !3, i64 128, !3, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !2, i64 160, !7, i64 168, !7, i64 172, !7, i64 176, !7, i64 180, !7, i64 184, !2, i64 192, !3, i64 200, !3, i64 232, !3, i64 264, !7, i64 296, !2, i64 304, !3, i64 312, !3, i64 316, !3, i64 320, !3, i64 324, !3, i64 340, !3, i64 356, !7, i64 372, !3, i64 376, !3, i64 380, !3, i64 381, !3, i64 382, !9, i64 384, !9, i64 386, !3, i64 388, !3, i64 392, !3, i64 396, !3, i64 400, !2, i64 408, !7, i64 416, !7, i64 420, !7, i64 424, !7, i64 428, !7, i64 432, !2, i64 440, !7, i64 448, !3, i64 456, !7, i64 488, !7, i64 492, !7, i64 496, !3, i64 500, !7, i64 756, !7, i64 760, !7, i64 764, !7, i64 768, !7, i64 772, !2, i64 776, !7, i64 784, !7, i64 788, !2, i64 792, !2, i64 800, !2, i64 808, !2, i64 816, !2, i64 824, !2, i64 832, !2, i64 840, !2, i64 848, !2, i64 856, !2, i64 864, !2, i64 872}
!7 = !{!"int", !3, i64 0}
!8 = !{!"double", !3, i64 0}
!9 = !{!"short", !3, i64 0}
!10 = !{!6, !7, i64 136}
!11 = !{!6, !7, i64 52}
!12 = !{!6, !7, i64 140}
!13 = !{!6, !2, i64 8}
!14 = !{!15, !2, i64 0}
!15 = !{!"jpeg_memory_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !16, i64 88, !16, i64 96}
!16 = !{!"long", !3, i64 0}
!17 = !{!6, !2, i64 824}
!18 = !{!19, !2, i64 0}
!19 = !{!"", !20, i64 0, !7, i64 40}
!20 = !{!"jpeg_input_controller", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !3, i64 36}
!21 = !{!19, !2, i64 8}
!22 = !{!19, !2, i64 16}
!23 = !{!19, !2, i64 24}
!24 = !{!19, !3, i64 32}
!25 = !{!19, !3, i64 36}
!26 = !{!19, !7, i64 40}
!27 = !{!6, !2, i64 832}
!28 = !{!29, !2, i64 8}
!29 = !{!"jpeg_marker_reader", !2, i64 0, !2, i64 8, !2, i64 16, !3, i64 24, !3, i64 28, !7, i64 32, !7, i64 36}
!30 = !{!7, !7, i64 0}
!31 = !{!6, !7, i64 448}
!32 = !{!6, !2, i64 0}
!33 = !{!34, !7, i64 40}
!34 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !3, i64 44, !7, i64 124, !16, i64 128, !2, i64 136, !7, i64 144, !2, i64 152, !7, i64 160, !7, i64 164}
!35 = !{!34, !2, i64 0}
!36 = !{!29, !3, i64 28}
!37 = !{!6, !7, i64 180}
!38 = !{!6, !7, i64 172}
!39 = !{!34, !2, i64 32}
!40 = !{!29, !2, i64 0}
!41 = !{!6, !2, i64 192}
!42 = !{!6, !2, i64 840}
!43 = !{!44, !2, i64 0}
!44 = !{!"jpeg_entropy_decoder", !2, i64 0, !2, i64 8, !2, i64 16}
!45 = !{!6, !2, i64 808}
!46 = !{!47, !2, i64 0}
!47 = !{!"jpeg_d_coef_controller", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!48 = !{!47, !2, i64 8}
!49 = !{!20, !2, i64 0}
!50 = !{!44, !2, i64 16}
!51 = !{!6, !7, i64 296}
!52 = !{!6, !7, i64 56}
!53 = !{!6, !7, i64 416}
!54 = !{!6, !7, i64 420}
!55 = !{!6, !2, i64 304}
!56 = !{!57, !7, i64 8}
!57 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !3, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !2, i64 80, !2, i64 88}
!58 = !{!57, !7, i64 12}
!59 = !{!6, !3, i64 312}
!60 = !{!6, !3, i64 316}
!61 = !{!6, !7, i64 772}
!62 = !{!6, !2, i64 776}
!63 = !{!6, !7, i64 784}
!64 = !{!6, !7, i64 760}
!65 = !{!6, !7, i64 756}
!66 = !{!6, !7, i64 764}
!67 = !{!6, !7, i64 768}
!68 = !{!6, !7, i64 424}
!69 = !{!6, !7, i64 428}
!70 = !{!57, !7, i64 36}
!71 = !{!57, !7, i64 40}
!72 = !{!57, !7, i64 28}
!73 = !{!57, !7, i64 32}
!74 = !{!57, !7, i64 44}
!75 = !{!57, !7, i64 48}
!76 = !{!57, !3, i64 52}
!77 = !{!57, !2, i64 80}
!78 = !{!6, !7, i64 432}
!79 = !{!20, !3, i64 32}
!80 = !{!6, !7, i64 488}
!81 = !{!6, !7, i64 492}
!82 = !{!57, !7, i64 56}
!83 = !{!57, !7, i64 60}
!84 = !{!57, !7, i64 64}
!85 = !{!57, !7, i64 68}
!86 = !{!57, !7, i64 72}
!87 = !{!57, !7, i64 76}
!88 = !{!6, !7, i64 496}
!89 = !{!57, !7, i64 16}
