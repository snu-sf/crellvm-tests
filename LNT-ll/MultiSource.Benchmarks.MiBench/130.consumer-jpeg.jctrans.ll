; ModuleID = './MultiSource.Benchmarks.MiBench/130.consumer-jpeg.jctrans.bc'
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
%struct.jpeg_entropy_encoder = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_decompress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_source_mgr*, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, i32, i32, i32, [64 x i32]*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], i32, %struct.jpeg_component_info*, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, i8*, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, %struct.jpeg_decomp_master*, %struct.jpeg_d_main_controller*, %struct.jpeg_d_coef_controller*, %struct.jpeg_d_post_controller*, %struct.jpeg_input_controller*, %struct.jpeg_marker_reader*, %struct.jpeg_entropy_decoder*, %struct.jpeg_inverse_dct*, %struct.jpeg_upsampler*, %struct.jpeg_color_deconverter*, %struct.jpeg_color_quantizer* }
%struct.jpeg_source_mgr = type { i8*, i64, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*)* }
%struct.jpeg_decomp_master = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 }
%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
%struct.jpeg_d_coef_controller = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
%struct.jpeg_input_controller = type { i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32, i32 }
%struct.jpeg_marker_reader = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, [16 x i32 (%struct.jpeg_decompress_struct*)*], i32, i32, i32, i32 }
%struct.jpeg_entropy_decoder = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* }
%struct.jpeg_inverse_dct = type { void (%struct.jpeg_decompress_struct*)*, [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*] }
%struct.jpeg_upsampler = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, i32 }
%struct.jpeg_color_deconverter = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* }
%struct.jpeg_color_quantizer = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)* }
%struct.my_coef_controller = type { %struct.jpeg_c_coef_controller, i32, i32, i32, i32, %struct.jvirt_barray_control**, [10 x [64 x i16]*] }

; Function Attrs: nounwind uwtable
define void @jpeg_write_coefficients(%struct.jpeg_compress_struct* %cinfo, %struct.jvirt_barray_control** %coef_arrays) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %coef_arrays.addr = alloca %struct.jvirt_barray_control**, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.jvirt_barray_control** %coef_arrays, %struct.jvirt_barray_control*** %coef_arrays.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 4
  %1 = load i32, i32* %global_state, align 4
  %cmp = icmp ne i32 %1, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 0
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 5
  store i32 18, i32* %msg_code, align 4
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 4
  %5 = load i32, i32* %global_state1, align 4
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %5, i32* %arrayidx, align 4
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 0
  %10 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %12 = bitcast %struct.jpeg_compress_struct* %11 to %struct.jpeg_common_struct*
  call void %10(%struct.jpeg_common_struct* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @jpeg_suppress_tables(%struct.jpeg_compress_struct* %13, i32 0)
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8
  %reset_error_mgr = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 4
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %reset_error_mgr, align 8
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %18 = bitcast %struct.jpeg_compress_struct* %17 to %struct.jpeg_common_struct*
  call void %16(%struct.jpeg_common_struct* %18)
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 5
  %20 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8
  %init_destination = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %20, i32 0, i32 2
  %21 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %init_destination, align 8
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void %21(%struct.jpeg_compress_struct* %22)
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %24 = load %struct.jvirt_barray_control**, %struct.jvirt_barray_control*** %coef_arrays.addr, align 8
  call void @transencode_master_selection(%struct.jpeg_compress_struct* %23, %struct.jvirt_barray_control** %24)
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %next_scanline = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 36
  store i32 0, i32* %next_scanline, align 4
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %global_state5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 4
  store i32 103, i32* %global_state5, align 4
  ret void
}

declare void @jpeg_suppress_tables(%struct.jpeg_compress_struct*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @transencode_master_selection(%struct.jpeg_compress_struct* %cinfo, %struct.jvirt_barray_control** %coef_arrays) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %coef_arrays.addr = alloca %struct.jvirt_barray_control**, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.jvirt_barray_control** %coef_arrays, %struct.jvirt_barray_control*** %coef_arrays.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 8
  store i32 1, i32* %input_components, align 4
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @jinit_c_master_control(%struct.jpeg_compress_struct* %1, i32 1)
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 24
  %3 = load i32, i32* %arith_code, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 1, i32* %msg_code, align 4
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 0
  %8 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %10 = bitcast %struct.jpeg_compress_struct* %9 to %struct.jpeg_common_struct*
  call void %8(%struct.jpeg_common_struct* %10)
  br label %if.end.5

if.else:                                          ; preds = %entry
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 37
  %12 = load i32, i32* %progressive_mode, align 4
  %tobool2 = icmp ne i32 %12, 0
  br i1 %tobool2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @jinit_phuff_encoder(%struct.jpeg_compress_struct* %13)
  br label %if.end

if.else.4:                                        ; preds = %if.else
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @jinit_huff_encoder(%struct.jpeg_compress_struct* %14)
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %16 = load %struct.jvirt_barray_control**, %struct.jvirt_barray_control*** %coef_arrays.addr, align 8
  call void @transencode_coef_controller(%struct.jpeg_compress_struct* %15, %struct.jvirt_barray_control** %16)
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @jinit_marker_writer(%struct.jpeg_compress_struct* %17)
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 1
  %19 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %realize_virt_arrays = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %19, i32 0, i32 6
  %realize_virt_arrays6 = bitcast {}** %realize_virt_arrays to void (%struct.jpeg_common_struct*)**
  %20 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %realize_virt_arrays6, align 8
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %22 = bitcast %struct.jpeg_compress_struct* %21 to %struct.jpeg_common_struct*
  call void %20(%struct.jpeg_common_struct* %22)
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 55
  %24 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %marker, align 8
  %write_file_header = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %24, i32 0, i32 1
  %25 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %write_file_header, align 8
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void %25(%struct.jpeg_compress_struct* %26)
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_copy_critical_parameters(%struct.jpeg_decompress_struct* %srcinfo, %struct.jpeg_compress_struct* %dstinfo) #0 {
entry:
  %srcinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %dstinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %qtblptr = alloca %struct.JQUANT_TBL**, align 8
  %incomp = alloca %struct.jpeg_component_info*, align 8
  %outcomp = alloca %struct.jpeg_component_info*, align 8
  %c_quant = alloca %struct.JQUANT_TBL*, align 8
  %slot_quant = alloca %struct.JQUANT_TBL*, align 8
  %tblno = alloca i32, align 4
  %ci = alloca i32, align 4
  %coefi = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %srcinfo, %struct.jpeg_decompress_struct** %srcinfo.addr, align 8
  store %struct.jpeg_compress_struct* %dstinfo, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 4
  %1 = load i32, i32* %global_state, align 4
  %cmp = icmp ne i32 %1, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 0
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 5
  store i32 18, i32* %msg_code, align 4
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 4
  %5 = load i32, i32* %global_state1, align 4
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %5, i32* %arrayidx, align 4
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 0
  %10 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %12 = bitcast %struct.jpeg_compress_struct* %11 to %struct.jpeg_common_struct*
  call void %10(%struct.jpeg_common_struct* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %srcinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 6
  %14 = load i32, i32* %image_width, align 4
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %image_width4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 6
  store i32 %14, i32* %image_width4, align 4
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %srcinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 7
  %17 = load i32, i32* %image_height, align 4
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %image_height5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 7
  store i32 %17, i32* %image_height5, align 4
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %srcinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 8
  %20 = load i32, i32* %num_components, align 4
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 8
  store i32 %20, i32* %input_components, align 4
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %srcinfo.addr, align 8
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 9
  %23 = load i32, i32* %jpeg_color_space, align 4
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 9
  store i32 %23, i32* %in_color_space, align 4
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  call void @jpeg_set_defaults(%struct.jpeg_compress_struct* %25)
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %srcinfo.addr, align 8
  %jpeg_color_space6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 9
  %28 = load i32, i32* %jpeg_color_space6, align 4
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* %26, i32 %28)
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %srcinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 42
  %30 = load i32, i32* %data_precision, align 4
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %data_precision7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %31, i32 0, i32 11
  store i32 %30, i32* %data_precision7, align 4
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %srcinfo.addr, align 8
  %CCIR601_sampling = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 56
  %33 = load i32, i32* %CCIR601_sampling, align 4
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %CCIR601_sampling8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 26
  store i32 %33, i32* %CCIR601_sampling8, align 4
  store i32 0, i32* %tblno, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %35 = load i32, i32* %tblno, align 4
  %cmp9 = icmp slt i32 %35, 4
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i32, i32* %tblno, align 4
  %idxprom = sext i32 %36 to i64
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %srcinfo.addr, align 8
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 39
  %arrayidx10 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs, i32 0, i64 %idxprom
  %38 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx10, align 8
  %cmp11 = icmp ne %struct.JQUANT_TBL* %38, null
  br i1 %cmp11, label %if.then.12, label %if.end.24

if.then.12:                                       ; preds = %for.body
  %39 = load i32, i32* %tblno, align 4
  %idxprom13 = sext i32 %39 to i64
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %quant_tbl_ptrs14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %40, i32 0, i32 15
  %arrayidx15 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs14, i32 0, i64 %idxprom13
  store %struct.JQUANT_TBL** %arrayidx15, %struct.JQUANT_TBL*** %qtblptr, align 8
  %41 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %qtblptr, align 8
  %42 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %41, align 8
  %cmp16 = icmp eq %struct.JQUANT_TBL* %42, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.12
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %44 = bitcast %struct.jpeg_compress_struct* %43 to %struct.jpeg_common_struct*
  %call = call %struct.JQUANT_TBL* @jpeg_alloc_quant_table(%struct.jpeg_common_struct* %44)
  %45 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %qtblptr, align 8
  store %struct.JQUANT_TBL* %call, %struct.JQUANT_TBL** %45, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.then.12
  %46 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %qtblptr, align 8
  %47 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %46, align 8
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %47, i32 0, i32 0
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %quantval, i32 0, i32 0
  %48 = bitcast i16* %arraydecay to i8*
  %49 = load i32, i32* %tblno, align 4
  %idxprom19 = sext i32 %49 to i64
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %srcinfo.addr, align 8
  %quant_tbl_ptrs20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 39
  %arrayidx21 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs20, i32 0, i64 %idxprom19
  %51 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx21, align 8
  %quantval22 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %51, i32 0, i32 0
  %arraydecay23 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval22, i32 0, i32 0
  %52 = bitcast i16* %arraydecay23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %52, i64 128, i32 1, i1 false)
  %53 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %qtblptr, align 8
  %54 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %53, align 8
  %sent_table = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %54, i32 0, i32 1
  store i32 0, i32* %sent_table, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %55 = load i32, i32* %tblno, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %tblno, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %srcinfo.addr, align 8
  %num_components25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %56, i32 0, i32 8
  %57 = load i32, i32* %num_components25, align 4
  %58 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %num_components26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %58, i32 0, i32 12
  store i32 %57, i32* %num_components26, align 4
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %num_components27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %59, i32 0, i32 12
  %60 = load i32, i32* %num_components27, align 4
  %cmp28 = icmp slt i32 %60, 1
  br i1 %cmp28, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %61 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %num_components29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %61, i32 0, i32 12
  %62 = load i32, i32* %num_components29, align 4
  %cmp30 = icmp sgt i32 %62, 10
  br i1 %cmp30, label %if.then.31, label %if.end.45

if.then.31:                                       ; preds = %lor.lhs.false, %for.end
  %63 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %err32 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %63, i32 0, i32 0
  %64 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err32, align 8
  %msg_code33 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %64, i32 0, i32 5
  store i32 24, i32* %msg_code33, align 4
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %num_components34 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %65, i32 0, i32 12
  %66 = load i32, i32* %num_components34, align 4
  %67 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %err35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %67, i32 0, i32 0
  %68 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err35, align 8
  %msg_parm36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %68, i32 0, i32 6
  %i37 = bitcast %union.anon* %msg_parm36 to [8 x i32]*
  %arrayidx38 = getelementptr inbounds [8 x i32], [8 x i32]* %i37, i32 0, i64 0
  store i32 %66, i32* %arrayidx38, align 4
  %69 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %err39 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %69, i32 0, i32 0
  %70 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err39, align 8
  %msg_parm40 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %70, i32 0, i32 6
  %i41 = bitcast %union.anon* %msg_parm40 to [8 x i32]*
  %arrayidx42 = getelementptr inbounds [8 x i32], [8 x i32]* %i41, i32 0, i64 1
  store i32 10, i32* %arrayidx42, align 4
  %71 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %err43 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %71, i32 0, i32 0
  %72 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err43, align 8
  %error_exit44 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %72, i32 0, i32 0
  %73 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit44, align 8
  %74 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %75 = bitcast %struct.jpeg_compress_struct* %74 to %struct.jpeg_common_struct*
  call void %73(%struct.jpeg_common_struct* %75)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.31, %lor.lhs.false
  store i32 0, i32* %ci, align 4
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %srcinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %76, i32 0, i32 43
  %77 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %77, %struct.jpeg_component_info** %incomp, align 8
  %78 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %comp_info46 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %78, i32 0, i32 14
  %79 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info46, align 8
  store %struct.jpeg_component_info* %79, %struct.jpeg_component_info** %outcomp, align 8
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.105, %if.end.45
  %80 = load i32, i32* %ci, align 4
  %81 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %num_components48 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %81, i32 0, i32 12
  %82 = load i32, i32* %num_components48, align 4
  %cmp49 = icmp slt i32 %80, %82
  br i1 %cmp49, label %for.body.50, label %for.end.108

for.body.50:                                      ; preds = %for.cond.47
  %83 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %incomp, align 8
  %component_id = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %83, i32 0, i32 0
  %84 = load i32, i32* %component_id, align 4
  %85 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %outcomp, align 8
  %component_id51 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %85, i32 0, i32 0
  store i32 %84, i32* %component_id51, align 4
  %86 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %incomp, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %86, i32 0, i32 2
  %87 = load i32, i32* %h_samp_factor, align 4
  %88 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %outcomp, align 8
  %h_samp_factor52 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i32 0, i32 2
  store i32 %87, i32* %h_samp_factor52, align 4
  %89 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %incomp, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %89, i32 0, i32 3
  %90 = load i32, i32* %v_samp_factor, align 4
  %91 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %outcomp, align 8
  %v_samp_factor53 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %91, i32 0, i32 3
  store i32 %90, i32* %v_samp_factor53, align 4
  %92 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %incomp, align 8
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %92, i32 0, i32 4
  %93 = load i32, i32* %quant_tbl_no, align 4
  %94 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %outcomp, align 8
  %quant_tbl_no54 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %94, i32 0, i32 4
  store i32 %93, i32* %quant_tbl_no54, align 4
  %95 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %outcomp, align 8
  %quant_tbl_no55 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %95, i32 0, i32 4
  %96 = load i32, i32* %quant_tbl_no55, align 4
  store i32 %96, i32* %tblno, align 4
  %97 = load i32, i32* %tblno, align 4
  %cmp56 = icmp slt i32 %97, 0
  br i1 %cmp56, label %if.then.64, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %for.body.50
  %98 = load i32, i32* %tblno, align 4
  %cmp58 = icmp sge i32 %98, 4
  br i1 %cmp58, label %if.then.64, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %lor.lhs.false.57
  %99 = load i32, i32* %tblno, align 4
  %idxprom60 = sext i32 %99 to i64
  %100 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %srcinfo.addr, align 8
  %quant_tbl_ptrs61 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %100, i32 0, i32 39
  %arrayidx62 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs61, i32 0, i64 %idxprom60
  %101 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx62, align 8
  %cmp63 = icmp eq %struct.JQUANT_TBL* %101, null
  br i1 %cmp63, label %if.then.64, label %if.end.73

if.then.64:                                       ; preds = %lor.lhs.false.59, %lor.lhs.false.57, %for.body.50
  %102 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %err65 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %102, i32 0, i32 0
  %103 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err65, align 8
  %msg_code66 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %103, i32 0, i32 5
  store i32 51, i32* %msg_code66, align 4
  %104 = load i32, i32* %tblno, align 4
  %105 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %err67 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %105, i32 0, i32 0
  %106 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err67, align 8
  %msg_parm68 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %106, i32 0, i32 6
  %i69 = bitcast %union.anon* %msg_parm68 to [8 x i32]*
  %arrayidx70 = getelementptr inbounds [8 x i32], [8 x i32]* %i69, i32 0, i64 0
  store i32 %104, i32* %arrayidx70, align 4
  %107 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %err71 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %107, i32 0, i32 0
  %108 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err71, align 8
  %error_exit72 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %108, i32 0, i32 0
  %109 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit72, align 8
  %110 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %111 = bitcast %struct.jpeg_compress_struct* %110 to %struct.jpeg_common_struct*
  call void %109(%struct.jpeg_common_struct* %111)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.64, %lor.lhs.false.59
  %112 = load i32, i32* %tblno, align 4
  %idxprom74 = sext i32 %112 to i64
  %113 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %srcinfo.addr, align 8
  %quant_tbl_ptrs75 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %113, i32 0, i32 39
  %arrayidx76 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs75, i32 0, i64 %idxprom74
  %114 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx76, align 8
  store %struct.JQUANT_TBL* %114, %struct.JQUANT_TBL** %slot_quant, align 8
  %115 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %incomp, align 8
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %115, i32 0, i32 19
  %116 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_table, align 8
  store %struct.JQUANT_TBL* %116, %struct.JQUANT_TBL** %c_quant, align 8
  %117 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %c_quant, align 8
  %cmp77 = icmp ne %struct.JQUANT_TBL* %117, null
  br i1 %cmp77, label %if.then.78, label %if.end.104

if.then.78:                                       ; preds = %if.end.73
  store i32 0, i32* %coefi, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.101, %if.then.78
  %118 = load i32, i32* %coefi, align 4
  %cmp80 = icmp slt i32 %118, 64
  br i1 %cmp80, label %for.body.81, label %for.end.103

for.body.81:                                      ; preds = %for.cond.79
  %119 = load i32, i32* %coefi, align 4
  %idxprom82 = sext i32 %119 to i64
  %120 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %c_quant, align 8
  %quantval83 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %120, i32 0, i32 0
  %arrayidx84 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval83, i32 0, i64 %idxprom82
  %121 = load i16, i16* %arrayidx84, align 2
  %conv = zext i16 %121 to i32
  %122 = load i32, i32* %coefi, align 4
  %idxprom85 = sext i32 %122 to i64
  %123 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %slot_quant, align 8
  %quantval86 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %123, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval86, i32 0, i64 %idxprom85
  %124 = load i16, i16* %arrayidx87, align 2
  %conv88 = zext i16 %124 to i32
  %cmp89 = icmp ne i32 %conv, %conv88
  br i1 %cmp89, label %if.then.91, label %if.end.100

if.then.91:                                       ; preds = %for.body.81
  %125 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %err92 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %125, i32 0, i32 0
  %126 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err92, align 8
  %msg_code93 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %126, i32 0, i32 5
  store i32 43, i32* %msg_code93, align 4
  %127 = load i32, i32* %tblno, align 4
  %128 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %err94 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %128, i32 0, i32 0
  %129 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err94, align 8
  %msg_parm95 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %129, i32 0, i32 6
  %i96 = bitcast %union.anon* %msg_parm95 to [8 x i32]*
  %arrayidx97 = getelementptr inbounds [8 x i32], [8 x i32]* %i96, i32 0, i64 0
  store i32 %127, i32* %arrayidx97, align 4
  %130 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %err98 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %130, i32 0, i32 0
  %131 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err98, align 8
  %error_exit99 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %131, i32 0, i32 0
  %132 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit99, align 8
  %133 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %dstinfo.addr, align 8
  %134 = bitcast %struct.jpeg_compress_struct* %133 to %struct.jpeg_common_struct*
  call void %132(%struct.jpeg_common_struct* %134)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.91, %for.body.81
  br label %for.inc.101

for.inc.101:                                      ; preds = %if.end.100
  %135 = load i32, i32* %coefi, align 4
  %inc102 = add nsw i32 %135, 1
  store i32 %inc102, i32* %coefi, align 4
  br label %for.cond.79

for.end.103:                                      ; preds = %for.cond.79
  br label %if.end.104

if.end.104:                                       ; preds = %for.end.103, %if.end.73
  br label %for.inc.105

for.inc.105:                                      ; preds = %if.end.104
  %136 = load i32, i32* %ci, align 4
  %inc106 = add nsw i32 %136, 1
  store i32 %inc106, i32* %ci, align 4
  %137 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %incomp, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %137, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %incomp, align 8
  %138 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %outcomp, align 8
  %incdec.ptr107 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %138, i32 1
  store %struct.jpeg_component_info* %incdec.ptr107, %struct.jpeg_component_info** %outcomp, align 8
  br label %for.cond.47

for.end.108:                                      ; preds = %for.cond.47
  ret void
}

declare void @jpeg_set_defaults(%struct.jpeg_compress_struct*) #1

declare void @jpeg_set_colorspace(%struct.jpeg_compress_struct*, i32) #1

declare %struct.JQUANT_TBL* @jpeg_alloc_quant_table(%struct.jpeg_common_struct*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @jinit_c_master_control(%struct.jpeg_compress_struct*, i32) #1

declare void @jinit_phuff_encoder(%struct.jpeg_compress_struct*) #1

declare void @jinit_huff_encoder(%struct.jpeg_compress_struct*) #1

; Function Attrs: nounwind uwtable
define internal void @transencode_coef_controller(%struct.jpeg_compress_struct* %cinfo, %struct.jvirt_barray_control** %coef_arrays) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %coef_arrays.addr = alloca %struct.jvirt_barray_control**, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  %buffer = alloca [64 x i16]*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.jvirt_barray_control** %coef_arrays, %struct.jvirt_barray_control*** %coef_arrays.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_compress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 120)
  %5 = bitcast i8* %call to %struct.my_coef_controller*
  store %struct.my_coef_controller* %5, %struct.my_coef_controller** %coef, align 8
  %6 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %7 = bitcast %struct.my_coef_controller* %6 to %struct.jpeg_c_coef_controller*
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 54
  store %struct.jpeg_c_coef_controller* %7, %struct.jpeg_c_coef_controller** %coef1, align 8
  %9 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %pub = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %9, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %pub, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, i32)* @start_pass_coef, void (%struct.jpeg_compress_struct*, i32)** %start_pass, align 8
  %10 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %pub2 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %10, i32 0, i32 0
  %compress_data = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %pub2, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, i8***)* @compress_output, i32 (%struct.jpeg_compress_struct*, i8***)** %compress_data, align 8
  %11 = load %struct.jvirt_barray_control**, %struct.jvirt_barray_control*** %coef_arrays.addr, align 8
  %12 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %whole_image = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %12, i32 0, i32 5
  store %struct.jvirt_barray_control** %11, %struct.jvirt_barray_control*** %whole_image, align 8
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 1
  %14 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem3, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %14, i32 0, i32 1
  %15 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_large, align 8
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %17 = bitcast %struct.jpeg_compress_struct* %16 to %struct.jpeg_common_struct*
  %call4 = call i8* %15(%struct.jpeg_common_struct* %17, i32 1, i64 1280)
  %18 = bitcast i8* %call4 to [64 x i16]*
  store [64 x i16]* %18, [64 x i16]** %buffer, align 8
  %19 = load [64 x i16]*, [64 x i16]** %buffer, align 8
  %20 = bitcast [64 x i16]* %19 to i8*
  call void @jzero_far(i8* %20, i64 1280)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %21 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %21, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load [64 x i16]*, [64 x i16]** %buffer, align 8
  %23 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %22, i64 %idx.ext
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %dummy_buffer = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %25, i32 0, i32 6
  %arrayidx = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %dummy_buffer, i32 0, i64 %idxprom
  store [64 x i16]* %add.ptr, [64 x i16]** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @jinit_marker_writer(%struct.jpeg_compress_struct*) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_coef(%struct.jpeg_compress_struct* %cinfo, i32 %pass_mode) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %pass_mode.addr = alloca i32, align 4
  %coef = alloca %struct.my_coef_controller*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i32 %pass_mode, i32* %pass_mode.addr, align 4
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 54
  %1 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef1, align 8
  %2 = bitcast %struct.jpeg_c_coef_controller* %1 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %2, %struct.my_coef_controller** %coef, align 8
  %3 = load i32, i32* %pass_mode.addr, align 4
  %cmp = icmp ne i32 %3, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 4, i32* %msg_code, align 4
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
  %11 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %11, i32 0, i32 1
  store i32 0, i32* %iMCU_row_num, align 4
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @start_iMCU_row(%struct.jpeg_compress_struct* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @compress_output(%struct.jpeg_compress_struct* %cinfo, i8*** %input_buf) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %input_buf.addr = alloca i8***, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  %MCU_col_num = alloca i32, align 4
  %last_MCU_col = alloca i32, align 4
  %last_iMCU_row = alloca i32, align 4
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %xindex = alloca i32, align 4
  %yindex = alloca i32, align 4
  %yoffset = alloca i32, align 4
  %blockcnt = alloca i32, align 4
  %start_col = alloca i32, align 4
  %buffer = alloca [4 x [64 x i16]**], align 16
  %MCU_buffer = alloca [10 x [64 x i16]*], align 16
  %buffer_ptr = alloca [64 x i16]*, align 8
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i8*** %input_buf, i8**** %input_buf.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 54
  %1 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef1, align 8
  %2 = bitcast %struct.jpeg_c_coef_controller* %1 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %2, %struct.my_coef_controller** %coef, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %MCUs_per_row = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 43
  %4 = load i32, i32* %MCUs_per_row, align 4
  %sub = sub i32 %4, 1
  store i32 %sub, i32* %last_MCU_col, align 4
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 40
  %6 = load i32, i32* %total_iMCU_rows, align 4
  %sub2 = sub i32 %6, 1
  store i32 %sub2, i32* %last_iMCU_row, align 4
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %ci, align 4
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 41
  %9 = load i32, i32* %comps_in_scan, align 4
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 42
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %12 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8
  store %struct.jpeg_component_info* %12, %struct.jpeg_component_info** %compptr, align 8
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 1
  %14 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %14, i32 0, i32 8
  %15 = load [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)** %access_virt_barray, align 8
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %17 = bitcast %struct.jpeg_compress_struct* %16 to %struct.jpeg_common_struct*
  %18 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %18, i32 0, i32 1
  %19 = load i32, i32* %component_index, align 4
  %idxprom3 = sext i32 %19 to i64
  %20 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %whole_image = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %20, i32 0, i32 5
  %21 = load %struct.jvirt_barray_control**, %struct.jvirt_barray_control*** %whole_image, align 8
  %arrayidx4 = getelementptr inbounds %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %21, i64 %idxprom3
  %22 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %arrayidx4, align 8
  %23 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %23, i32 0, i32 1
  %24 = load i32, i32* %iMCU_row_num, align 4
  %25 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %25, i32 0, i32 3
  %26 = load i32, i32* %v_samp_factor, align 4
  %mul = mul i32 %24, %26
  %27 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %v_samp_factor5 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %27, i32 0, i32 3
  %28 = load i32, i32* %v_samp_factor5, align 4
  %call = call [64 x i16]** %15(%struct.jpeg_common_struct* %17, %struct.jvirt_barray_control* %22, i32 %mul, i32 %28, i32 0)
  %29 = load i32, i32* %ci, align 4
  %idxprom6 = sext i32 %29 to i64
  %arrayidx7 = getelementptr inbounds [4 x [64 x i16]**], [4 x [64 x i16]**]* %buffer, i32 0, i64 %idxprom6
  store [64 x i16]** %call, [64 x i16]*** %arrayidx7, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %ci, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %31, i32 0, i32 3
  %32 = load i32, i32* %MCU_vert_offset, align 4
  store i32 %32, i32* %yoffset, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.81, %for.end
  %33 = load i32, i32* %yoffset, align 4
  %34 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %34, i32 0, i32 4
  %35 = load i32, i32* %MCU_rows_per_iMCU_row, align 4
  %cmp9 = icmp slt i32 %33, %35
  br i1 %cmp9, label %for.body.10, label %for.end.83

for.body.10:                                      ; preds = %for.cond.8
  %36 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %mcu_ctr = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %36, i32 0, i32 2
  %37 = load i32, i32* %mcu_ctr, align 4
  store i32 %37, i32* %MCU_col_num, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.77, %for.body.10
  %38 = load i32, i32* %MCU_col_num, align 4
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %MCUs_per_row12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %39, i32 0, i32 43
  %40 = load i32, i32* %MCUs_per_row12, align 4
  %cmp13 = icmp ult i32 %38, %40
  br i1 %cmp13, label %for.body.14, label %for.end.79

for.body.14:                                      ; preds = %for.cond.11
  store i32 0, i32* %blkn, align 4
  store i32 0, i32* %ci, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.69, %for.body.14
  %41 = load i32, i32* %ci, align 4
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comps_in_scan16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 41
  %43 = load i32, i32* %comps_in_scan16, align 4
  %cmp17 = icmp slt i32 %41, %43
  br i1 %cmp17, label %for.body.18, label %for.end.71

for.body.18:                                      ; preds = %for.cond.15
  %44 = load i32, i32* %ci, align 4
  %idxprom19 = sext i32 %44 to i64
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cur_comp_info20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %45, i32 0, i32 42
  %arrayidx21 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info20, i32 0, i64 %idxprom19
  %46 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx21, align 8
  store %struct.jpeg_component_info* %46, %struct.jpeg_component_info** %compptr, align 8
  %47 = load i32, i32* %MCU_col_num, align 4
  %48 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %48, i32 0, i32 13
  %49 = load i32, i32* %MCU_width, align 4
  %mul22 = mul i32 %47, %49
  store i32 %mul22, i32* %start_col, align 4
  %50 = load i32, i32* %MCU_col_num, align 4
  %51 = load i32, i32* %last_MCU_col, align 4
  %cmp23 = icmp ult i32 %50, %51
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.18
  %52 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_width24 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %52, i32 0, i32 13
  %53 = load i32, i32* %MCU_width24, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.18
  %54 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %last_col_width = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %54, i32 0, i32 17
  %55 = load i32, i32* %last_col_width, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %53, %cond.true ], [ %55, %cond.false ]
  store i32 %cond, i32* %blockcnt, align 4
  store i32 0, i32* %yindex, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.66, %cond.end
  %56 = load i32, i32* %yindex, align 4
  %57 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %57, i32 0, i32 14
  %58 = load i32, i32* %MCU_height, align 4
  %cmp26 = icmp slt i32 %56, %58
  br i1 %cmp26, label %for.body.27, label %for.end.68

for.body.27:                                      ; preds = %for.cond.25
  %59 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %iMCU_row_num28 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %59, i32 0, i32 1
  %60 = load i32, i32* %iMCU_row_num28, align 4
  %61 = load i32, i32* %last_iMCU_row, align 4
  %cmp29 = icmp ult i32 %60, %61
  br i1 %cmp29, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.27
  %62 = load i32, i32* %yindex, align 4
  %63 = load i32, i32* %yoffset, align 4
  %add = add nsw i32 %62, %63
  %64 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %64, i32 0, i32 18
  %65 = load i32, i32* %last_row_height, align 4
  %cmp30 = icmp slt i32 %add, %65
  br i1 %cmp30, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body.27
  %66 = load i32, i32* %yindex, align 4
  %67 = load i32, i32* %yoffset, align 4
  %add31 = add nsw i32 %66, %67
  %idxprom32 = sext i32 %add31 to i64
  %68 = load i32, i32* %ci, align 4
  %idxprom33 = sext i32 %68 to i64
  %arrayidx34 = getelementptr inbounds [4 x [64 x i16]**], [4 x [64 x i16]**]* %buffer, i32 0, i64 %idxprom33
  %69 = load [64 x i16]**, [64 x i16]*** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds [64 x i16]*, [64 x i16]** %69, i64 %idxprom32
  %70 = load [64 x i16]*, [64 x i16]** %arrayidx35, align 8
  %71 = load i32, i32* %start_col, align 4
  %idx.ext = zext i32 %71 to i64
  %add.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %70, i64 %idx.ext
  store [64 x i16]* %add.ptr, [64 x i16]** %buffer_ptr, align 8
  store i32 0, i32* %xindex, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.42, %if.then
  %72 = load i32, i32* %xindex, align 4
  %73 = load i32, i32* %blockcnt, align 4
  %cmp37 = icmp slt i32 %72, %73
  br i1 %cmp37, label %for.body.38, label %for.end.44

for.body.38:                                      ; preds = %for.cond.36
  %74 = load [64 x i16]*, [64 x i16]** %buffer_ptr, align 8
  %incdec.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %74, i32 1
  store [64 x i16]* %incdec.ptr, [64 x i16]** %buffer_ptr, align 8
  %75 = load i32, i32* %blkn, align 4
  %inc39 = add nsw i32 %75, 1
  store i32 %inc39, i32* %blkn, align 4
  %idxprom40 = sext i32 %75 to i64
  %arrayidx41 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer, i32 0, i64 %idxprom40
  store [64 x i16]* %74, [64 x i16]** %arrayidx41, align 8
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.body.38
  %76 = load i32, i32* %xindex, align 4
  %inc43 = add nsw i32 %76, 1
  store i32 %inc43, i32* %xindex, align 4
  br label %for.cond.36

for.end.44:                                       ; preds = %for.cond.36
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %xindex, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end.44
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.63, %if.end
  %77 = load i32, i32* %xindex, align 4
  %78 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %MCU_width46 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %78, i32 0, i32 13
  %79 = load i32, i32* %MCU_width46, align 4
  %cmp47 = icmp slt i32 %77, %79
  br i1 %cmp47, label %for.body.48, label %for.end.65

for.body.48:                                      ; preds = %for.cond.45
  %80 = load i32, i32* %blkn, align 4
  %idxprom49 = sext i32 %80 to i64
  %81 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %dummy_buffer = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %81, i32 0, i32 6
  %arrayidx50 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %dummy_buffer, i32 0, i64 %idxprom49
  %82 = load [64 x i16]*, [64 x i16]** %arrayidx50, align 8
  %83 = load i32, i32* %blkn, align 4
  %idxprom51 = sext i32 %83 to i64
  %arrayidx52 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer, i32 0, i64 %idxprom51
  store [64 x i16]* %82, [64 x i16]** %arrayidx52, align 8
  %84 = load i32, i32* %blkn, align 4
  %sub53 = sub nsw i32 %84, 1
  %idxprom54 = sext i32 %sub53 to i64
  %arrayidx55 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer, i32 0, i64 %idxprom54
  %85 = load [64 x i16]*, [64 x i16]** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds [64 x i16], [64 x i16]* %85, i64 0
  %arrayidx57 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx56, i32 0, i64 0
  %86 = load i16, i16* %arrayidx57, align 2
  %87 = load i32, i32* %blkn, align 4
  %idxprom58 = sext i32 %87 to i64
  %arrayidx59 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer, i32 0, i64 %idxprom58
  %88 = load [64 x i16]*, [64 x i16]** %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds [64 x i16], [64 x i16]* %88, i64 0
  %arrayidx61 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx60, i32 0, i64 0
  store i16 %86, i16* %arrayidx61, align 2
  %89 = load i32, i32* %blkn, align 4
  %inc62 = add nsw i32 %89, 1
  store i32 %inc62, i32* %blkn, align 4
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.48
  %90 = load i32, i32* %xindex, align 4
  %inc64 = add nsw i32 %90, 1
  store i32 %inc64, i32* %xindex, align 4
  br label %for.cond.45

for.end.65:                                       ; preds = %for.cond.45
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.end.65
  %91 = load i32, i32* %yindex, align 4
  %inc67 = add nsw i32 %91, 1
  store i32 %inc67, i32* %yindex, align 4
  br label %for.cond.25

for.end.68:                                       ; preds = %for.cond.25
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.end.68
  %92 = load i32, i32* %ci, align 4
  %inc70 = add nsw i32 %92, 1
  store i32 %inc70, i32* %ci, align 4
  br label %for.cond.15

for.end.71:                                       ; preds = %for.cond.15
  %93 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %entropy = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %93, i32 0, i32 59
  %94 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy, align 8
  %encode_mcu = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %94, i32 0, i32 1
  %95 = load i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu, align 8
  %96 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %arraydecay = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %MCU_buffer, i32 0, i32 0
  %call72 = call i32 %95(%struct.jpeg_compress_struct* %96, [64 x i16]** %arraydecay)
  %tobool = icmp ne i32 %call72, 0
  br i1 %tobool, label %if.end.76, label %if.then.73

if.then.73:                                       ; preds = %for.end.71
  %97 = load i32, i32* %yoffset, align 4
  %98 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_vert_offset74 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %98, i32 0, i32 3
  store i32 %97, i32* %MCU_vert_offset74, align 4
  %99 = load i32, i32* %MCU_col_num, align 4
  %100 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %mcu_ctr75 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %100, i32 0, i32 2
  store i32 %99, i32* %mcu_ctr75, align 4
  store i32 0, i32* %retval
  br label %return

if.end.76:                                        ; preds = %for.end.71
  br label %for.inc.77

for.inc.77:                                       ; preds = %if.end.76
  %101 = load i32, i32* %MCU_col_num, align 4
  %inc78 = add i32 %101, 1
  store i32 %inc78, i32* %MCU_col_num, align 4
  br label %for.cond.11

for.end.79:                                       ; preds = %for.cond.11
  %102 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %mcu_ctr80 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %102, i32 0, i32 2
  store i32 0, i32* %mcu_ctr80, align 4
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.end.79
  %103 = load i32, i32* %yoffset, align 4
  %inc82 = add nsw i32 %103, 1
  store i32 %inc82, i32* %yoffset, align 4
  br label %for.cond.8

for.end.83:                                       ; preds = %for.cond.8
  %104 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %iMCU_row_num84 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %104, i32 0, i32 1
  %105 = load i32, i32* %iMCU_row_num84, align 4
  %inc85 = add i32 %105, 1
  store i32 %inc85, i32* %iMCU_row_num84, align 4
  %106 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  call void @start_iMCU_row(%struct.jpeg_compress_struct* %106)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.83, %if.then.73
  %107 = load i32, i32* %retval
  ret i32 %107
}

declare void @jzero_far(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @start_iMCU_row(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %coef = alloca %struct.my_coef_controller*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %coef1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 54
  %1 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %coef1, align 8
  %2 = bitcast %struct.jpeg_c_coef_controller* %1 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %2, %struct.my_coef_controller** %coef, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 41
  %4 = load i32, i32* %comps_in_scan, align 4
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i32 0, i32 4
  store i32 1, i32* %MCU_rows_per_iMCU_row, align 4
  br label %if.end.9

if.else:                                          ; preds = %entry
  %6 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %iMCU_row_num = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %6, i32 0, i32 1
  %7 = load i32, i32* %iMCU_row_num, align 4
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 40
  %9 = load i32, i32* %total_iMCU_rows, align 4
  %sub = sub i32 %9, 1
  %cmp2 = icmp ult i32 %7, %sub
  br i1 %cmp2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 42
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 0
  %11 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %11, i32 0, i32 3
  %12 = load i32, i32* %v_samp_factor, align 4
  %13 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_rows_per_iMCU_row4 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %13, i32 0, i32 4
  store i32 %12, i32* %MCU_rows_per_iMCU_row4, align 4
  br label %if.end

if.else.5:                                        ; preds = %if.else
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cur_comp_info6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 42
  %arrayidx7 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info6, i32 0, i64 0
  %15 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx7, align 8
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %15, i32 0, i32 18
  %16 = load i32, i32* %last_row_height, align 4
  %17 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_rows_per_iMCU_row8 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %17, i32 0, i32 4
  store i32 %16, i32* %MCU_rows_per_iMCU_row8, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.3
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %18 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %mcu_ctr = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %18, i32 0, i32 2
  store i32 0, i32* %mcu_ctr, align 4
  %19 = load %struct.my_coef_controller*, %struct.my_coef_controller** %coef, align 8
  %MCU_vert_offset = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %19, i32 0, i32 3
  store i32 0, i32* %MCU_vert_offset, align 4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
