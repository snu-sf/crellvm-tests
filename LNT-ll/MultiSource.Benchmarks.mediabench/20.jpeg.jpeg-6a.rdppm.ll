; ModuleID = './MultiSource.Benchmarks.mediabench/20.jpeg.jpeg-6a.rdppm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cjpeg_source_struct = type { void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, %struct._IO_FILE*, i8**, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
%struct.jpeg_comp_master = type opaque
%struct.jpeg_c_main_controller = type opaque
%struct.jpeg_c_prep_controller = type opaque
%struct.jpeg_c_coef_controller = type opaque
%struct.jpeg_marker_writer = type opaque
%struct.jpeg_color_converter = type opaque
%struct.jpeg_downsampler = type opaque
%struct.jpeg_forward_dct = type opaque
%struct.jpeg_entropy_encoder = type opaque
%struct.ppm_source_struct = type { %struct.cjpeg_source_struct, i8*, i8*, i64, i8* }

; Function Attrs: nounwind uwtable
define %struct.cjpeg_source_struct* @jinit_read_ppm(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %source = alloca %struct.ppm_source_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_compress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 80)
  %5 = bitcast i8* %call to %struct.ppm_source_struct*
  store %struct.ppm_source_struct* %5, %struct.ppm_source_struct** %source, align 8
  %6 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %6, i32 0, i32 0
  %start_input = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @start_input_ppm, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %start_input, align 8
  %7 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub1 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %7, i32 0, i32 0
  %finish_input = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub1, i32 0, i32 2
  store void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @finish_input_ppm, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %finish_input, align 8
  %8 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %9 = bitcast %struct.ppm_source_struct* %8 to %struct.cjpeg_source_struct*
  ret %struct.cjpeg_source_struct* %9
}

; Function Attrs: nounwind uwtable
define internal void @start_input_ppm(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct.ppm_source_struct*, align 8
  %c = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %maxval = alloca i32, align 4
  %need_iobuffer = alloca i32, align 4
  %use_raw_buffer = alloca i32, align 4
  %need_rescale = alloca i32, align 4
  %val = alloca i64, align 8
  %half_maxval = alloca i64, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %0 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %1 = bitcast %struct.cjpeg_source_struct* %0 to %struct.ppm_source_struct*
  store %struct.ppm_source_struct* %1, %struct.ppm_source_struct** %source, align 8
  %2 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %2, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %3)
  %cmp = icmp ne i32 %call, 80
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 1027, i32* %msg_code, align 4
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 0
  %8 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %10 = bitcast %struct.jpeg_compress_struct* %9 to %struct.jpeg_common_struct*
  call void %8(%struct.jpeg_common_struct* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub2 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %11, i32 0, i32 0
  %input_file3 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub2, i32 0, i32 3
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file3, align 8
  %call4 = call i32 @_IO_getc(%struct._IO_FILE* %12)
  store i32 %call4, i32* %c, align 4
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %14 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub5 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %14, i32 0, i32 0
  %input_file6 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub5, i32 0, i32 3
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file6, align 8
  %call7 = call i32 @read_pbm_integer(%struct.jpeg_compress_struct* %13, %struct._IO_FILE* %15)
  store i32 %call7, i32* %w, align 4
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %17 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub8 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %17, i32 0, i32 0
  %input_file9 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub8, i32 0, i32 3
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file9, align 8
  %call10 = call i32 @read_pbm_integer(%struct.jpeg_compress_struct* %16, %struct._IO_FILE* %18)
  store i32 %call10, i32* %h, align 4
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %20 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub11 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %20, i32 0, i32 0
  %input_file12 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub11, i32 0, i32 3
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file12, align 8
  %call13 = call i32 @read_pbm_integer(%struct.jpeg_compress_struct* %19, %struct._IO_FILE* %21)
  store i32 %call13, i32* %maxval, align 4
  %22 = load i32, i32* %w, align 4
  %cmp14 = icmp ule i32 %22, 0
  br i1 %cmp14, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %23 = load i32, i32* %h, align 4
  %cmp15 = icmp ule i32 %23, 0
  br i1 %cmp15, label %if.then.18, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false
  %24 = load i32, i32* %maxval, align 4
  %cmp17 = icmp ule i32 %24, 0
  br i1 %cmp17, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %lor.lhs.false.16, %lor.lhs.false, %if.end
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err19, align 8
  %msg_code20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i32 0, i32 5
  store i32 1027, i32* %msg_code20, align 4
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err21 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err21, align 8
  %error_exit22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 0
  %29 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit22, align 8
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %31 = bitcast %struct.jpeg_compress_struct* %30 to %struct.jpeg_common_struct*
  call void %29(%struct.jpeg_common_struct* %31)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.18, %lor.lhs.false.16
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 11
  store i32 8, i32* %data_precision, align 4
  %33 = load i32, i32* %w, align 4
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 6
  store i32 %33, i32* %image_width, align 4
  %35 = load i32, i32* %h, align 4
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 7
  store i32 %35, i32* %image_height, align 4
  store i32 1, i32* %need_iobuffer, align 4
  store i32 0, i32* %use_raw_buffer, align 4
  store i32 1, i32* %need_rescale, align 4
  %37 = load i32, i32* %c, align 4
  switch i32 %37, label %sw.default [
    i32 50, label %sw.bb
    i32 51, label %sw.bb.33
    i32 53, label %sw.bb.50
    i32 54, label %sw.bb.78
  ]

sw.bb:                                            ; preds = %if.end.23
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 8
  store i32 1, i32* %input_components, align 4
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %39, i32 0, i32 9
  store i32 1, i32* %in_color_space, align 4
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %40, i32 0, i32 0
  %41 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err24, align 8
  %msg_code25 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %41, i32 0, i32 5
  store i32 1029, i32* %msg_code25, align 4
  %42 = load i32, i32* %w, align 4
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err26, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %42, i32* %arrayidx, align 4
  %45 = load i32, i32* %h, align 4
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %46, i32 0, i32 0
  %47 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err27, align 8
  %msg_parm28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %47, i32 0, i32 6
  %i29 = bitcast %union.anon* %msg_parm28 to [8 x i32]*
  %arrayidx30 = getelementptr inbounds [8 x i32], [8 x i32]* %i29, i32 0, i64 1
  store i32 %45, i32* %arrayidx30, align 4
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %48, i32 0, i32 0
  %49 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err31, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %49, i32 0, i32 1
  %50 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %52 = bitcast %struct.jpeg_compress_struct* %51 to %struct.jpeg_common_struct*
  call void %50(%struct.jpeg_common_struct* %52, i32 1)
  %53 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub32 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %53, i32 0, i32 0
  %get_pixel_rows = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub32, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_text_gray_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows, align 8
  store i32 0, i32* %need_iobuffer, align 4
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.end.23
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %input_components34 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %54, i32 0, i32 8
  store i32 3, i32* %input_components34, align 4
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %in_color_space35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %55, i32 0, i32 9
  store i32 2, i32* %in_color_space35, align 4
  %56 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %56, i32 0, i32 0
  %57 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err36, align 8
  %msg_code37 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %57, i32 0, i32 5
  store i32 1031, i32* %msg_code37, align 4
  %58 = load i32, i32* %w, align 4
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %59, i32 0, i32 0
  %60 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err38, align 8
  %msg_parm39 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %60, i32 0, i32 6
  %i40 = bitcast %union.anon* %msg_parm39 to [8 x i32]*
  %arrayidx41 = getelementptr inbounds [8 x i32], [8 x i32]* %i40, i32 0, i64 0
  store i32 %58, i32* %arrayidx41, align 4
  %61 = load i32, i32* %h, align 4
  %62 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err42 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %62, i32 0, i32 0
  %63 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err42, align 8
  %msg_parm43 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %63, i32 0, i32 6
  %i44 = bitcast %union.anon* %msg_parm43 to [8 x i32]*
  %arrayidx45 = getelementptr inbounds [8 x i32], [8 x i32]* %i44, i32 0, i64 1
  store i32 %61, i32* %arrayidx45, align 4
  %64 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err46 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %64, i32 0, i32 0
  %65 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err46, align 8
  %emit_message47 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %65, i32 0, i32 1
  %66 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message47, align 8
  %67 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %68 = bitcast %struct.jpeg_compress_struct* %67 to %struct.jpeg_common_struct*
  call void %66(%struct.jpeg_common_struct* %68, i32 1)
  %69 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub48 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %69, i32 0, i32 0
  %get_pixel_rows49 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub48, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_text_rgb_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows49, align 8
  store i32 0, i32* %need_iobuffer, align 4
  br label %sw.epilog

sw.bb.50:                                         ; preds = %if.end.23
  %70 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %input_components51 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %70, i32 0, i32 8
  store i32 1, i32* %input_components51, align 4
  %71 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %in_color_space52 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %71, i32 0, i32 9
  store i32 1, i32* %in_color_space52, align 4
  %72 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err53 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %72, i32 0, i32 0
  %73 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err53, align 8
  %msg_code54 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %73, i32 0, i32 5
  store i32 1028, i32* %msg_code54, align 4
  %74 = load i32, i32* %w, align 4
  %75 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err55 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %75, i32 0, i32 0
  %76 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err55, align 8
  %msg_parm56 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %76, i32 0, i32 6
  %i57 = bitcast %union.anon* %msg_parm56 to [8 x i32]*
  %arrayidx58 = getelementptr inbounds [8 x i32], [8 x i32]* %i57, i32 0, i64 0
  store i32 %74, i32* %arrayidx58, align 4
  %77 = load i32, i32* %h, align 4
  %78 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err59 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %78, i32 0, i32 0
  %79 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err59, align 8
  %msg_parm60 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %79, i32 0, i32 6
  %i61 = bitcast %union.anon* %msg_parm60 to [8 x i32]*
  %arrayidx62 = getelementptr inbounds [8 x i32], [8 x i32]* %i61, i32 0, i64 1
  store i32 %77, i32* %arrayidx62, align 4
  %80 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err63 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %80, i32 0, i32 0
  %81 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err63, align 8
  %emit_message64 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %81, i32 0, i32 1
  %82 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message64, align 8
  %83 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %84 = bitcast %struct.jpeg_compress_struct* %83 to %struct.jpeg_common_struct*
  call void %82(%struct.jpeg_common_struct* %84, i32 1)
  %85 = load i32, i32* %maxval, align 4
  %cmp65 = icmp ugt i32 %85, 255
  br i1 %cmp65, label %if.then.66, label %if.else

if.then.66:                                       ; preds = %sw.bb.50
  %86 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub67 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %86, i32 0, i32 0
  %get_pixel_rows68 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub67, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_word_gray_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows68, align 8
  br label %if.end.77

if.else:                                          ; preds = %sw.bb.50
  %87 = load i32, i32* %maxval, align 4
  %cmp69 = icmp eq i32 %87, 255
  br i1 %cmp69, label %if.then.70, label %if.else.73

if.then.70:                                       ; preds = %if.else
  %88 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub71 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %88, i32 0, i32 0
  %get_pixel_rows72 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub71, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_raw_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows72, align 8
  store i32 1, i32* %use_raw_buffer, align 4
  store i32 0, i32* %need_rescale, align 4
  br label %if.end.76

if.else.73:                                       ; preds = %if.else
  %89 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub74 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %89, i32 0, i32 0
  %get_pixel_rows75 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub74, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_scaled_gray_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows75, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.73, %if.then.70
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.66
  br label %sw.epilog

sw.bb.78:                                         ; preds = %if.end.23
  %90 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %input_components79 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %90, i32 0, i32 8
  store i32 3, i32* %input_components79, align 4
  %91 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %in_color_space80 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %91, i32 0, i32 9
  store i32 2, i32* %in_color_space80, align 4
  %92 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err81 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %92, i32 0, i32 0
  %93 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err81, align 8
  %msg_code82 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %93, i32 0, i32 5
  store i32 1030, i32* %msg_code82, align 4
  %94 = load i32, i32* %w, align 4
  %95 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err83 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %95, i32 0, i32 0
  %96 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err83, align 8
  %msg_parm84 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %96, i32 0, i32 6
  %i85 = bitcast %union.anon* %msg_parm84 to [8 x i32]*
  %arrayidx86 = getelementptr inbounds [8 x i32], [8 x i32]* %i85, i32 0, i64 0
  store i32 %94, i32* %arrayidx86, align 4
  %97 = load i32, i32* %h, align 4
  %98 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err87 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %98, i32 0, i32 0
  %99 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err87, align 8
  %msg_parm88 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %99, i32 0, i32 6
  %i89 = bitcast %union.anon* %msg_parm88 to [8 x i32]*
  %arrayidx90 = getelementptr inbounds [8 x i32], [8 x i32]* %i89, i32 0, i64 1
  store i32 %97, i32* %arrayidx90, align 4
  %100 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err91 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %100, i32 0, i32 0
  %101 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err91, align 8
  %emit_message92 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %101, i32 0, i32 1
  %102 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message92, align 8
  %103 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %104 = bitcast %struct.jpeg_compress_struct* %103 to %struct.jpeg_common_struct*
  call void %102(%struct.jpeg_common_struct* %104, i32 1)
  %105 = load i32, i32* %maxval, align 4
  %cmp93 = icmp ugt i32 %105, 255
  br i1 %cmp93, label %if.then.94, label %if.else.97

if.then.94:                                       ; preds = %sw.bb.78
  %106 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub95 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %106, i32 0, i32 0
  %get_pixel_rows96 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub95, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_word_rgb_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows96, align 8
  br label %if.end.106

if.else.97:                                       ; preds = %sw.bb.78
  %107 = load i32, i32* %maxval, align 4
  %cmp98 = icmp eq i32 %107, 255
  br i1 %cmp98, label %if.then.99, label %if.else.102

if.then.99:                                       ; preds = %if.else.97
  %108 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub100 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %108, i32 0, i32 0
  %get_pixel_rows101 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub100, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_raw_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows101, align 8
  store i32 1, i32* %use_raw_buffer, align 4
  store i32 0, i32* %need_rescale, align 4
  br label %if.end.105

if.else.102:                                      ; preds = %if.else.97
  %109 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub103 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %109, i32 0, i32 0
  %get_pixel_rows104 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub103, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_scaled_rgb_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows104, align 8
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.102, %if.then.99
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.then.94
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.23
  %110 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err107 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %110, i32 0, i32 0
  %111 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err107, align 8
  %msg_code108 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %111, i32 0, i32 5
  store i32 1027, i32* %msg_code108, align 4
  %112 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err109 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %112, i32 0, i32 0
  %113 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err109, align 8
  %error_exit110 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %113, i32 0, i32 0
  %114 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit110, align 8
  %115 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %116 = bitcast %struct.jpeg_compress_struct* %115 to %struct.jpeg_common_struct*
  call void %114(%struct.jpeg_common_struct* %116)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.106, %if.end.77, %sw.bb.33, %sw.bb
  %117 = load i32, i32* %need_iobuffer, align 4
  %tobool = icmp ne i32 %117, 0
  br i1 %tobool, label %if.then.111, label %if.end.119

if.then.111:                                      ; preds = %sw.epilog
  %118 = load i32, i32* %w, align 4
  %conv = zext i32 %118 to i64
  %119 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %input_components112 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %119, i32 0, i32 8
  %120 = load i32, i32* %input_components112, align 4
  %conv113 = sext i32 %120 to i64
  %mul = mul i64 %conv, %conv113
  %121 = load i32, i32* %maxval, align 4
  %cmp114 = icmp ule i32 %121, 255
  %cond = select i1 %cmp114, i64 1, i64 2
  %mul116 = mul i64 %mul, %cond
  %122 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %122, i32 0, i32 3
  store i64 %mul116, i64* %buffer_width, align 8
  %123 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %123, i32 0, i32 1
  %124 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %124, i32 0, i32 0
  %125 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %126 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %127 = bitcast %struct.jpeg_compress_struct* %126 to %struct.jpeg_common_struct*
  %128 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %buffer_width117 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %128, i32 0, i32 3
  %129 = load i64, i64* %buffer_width117, align 8
  %call118 = call i8* %125(%struct.jpeg_common_struct* %127, i32 1, i64 %129)
  %130 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %iobuffer = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %130, i32 0, i32 1
  store i8* %call118, i8** %iobuffer, align 8
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.111, %sw.epilog
  %131 = load i32, i32* %use_raw_buffer, align 4
  %tobool120 = icmp ne i32 %131, 0
  br i1 %tobool120, label %if.then.121, label %if.else.126

if.then.121:                                      ; preds = %if.end.119
  %132 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %iobuffer122 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %132, i32 0, i32 1
  %133 = load i8*, i8** %iobuffer122, align 8
  %134 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pixrow = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %134, i32 0, i32 2
  store i8* %133, i8** %pixrow, align 8
  %135 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pixrow123 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %135, i32 0, i32 2
  %136 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub124 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %136, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub124, i32 0, i32 4
  store i8** %pixrow123, i8*** %buffer, align 8
  %137 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub125 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %137, i32 0, i32 0
  %buffer_height = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub125, i32 0, i32 5
  store i32 1, i32* %buffer_height, align 4
  br label %if.end.135

if.else.126:                                      ; preds = %if.end.119
  %138 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem127 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %138, i32 0, i32 1
  %139 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem127, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %139, i32 0, i32 2
  %140 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8
  %141 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %142 = bitcast %struct.jpeg_compress_struct* %141 to %struct.jpeg_common_struct*
  %143 = load i32, i32* %w, align 4
  %144 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %input_components128 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %144, i32 0, i32 8
  %145 = load i32, i32* %input_components128, align 4
  %mul129 = mul i32 %143, %145
  %call130 = call i8** %140(%struct.jpeg_common_struct* %142, i32 1, i32 %mul129, i32 1)
  %146 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub131 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %146, i32 0, i32 0
  %buffer132 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub131, i32 0, i32 4
  store i8** %call130, i8*** %buffer132, align 8
  %147 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub133 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %147, i32 0, i32 0
  %buffer_height134 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub133, i32 0, i32 5
  store i32 1, i32* %buffer_height134, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.126, %if.then.121
  %148 = load i32, i32* %need_rescale, align 4
  %tobool136 = icmp ne i32 %148, 0
  br i1 %tobool136, label %if.then.137, label %if.end.154

if.then.137:                                      ; preds = %if.end.135
  %149 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem138 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %149, i32 0, i32 1
  %150 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem138, align 8
  %alloc_small139 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %150, i32 0, i32 0
  %151 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small139, align 8
  %152 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %153 = bitcast %struct.jpeg_compress_struct* %152 to %struct.jpeg_common_struct*
  %154 = load i32, i32* %maxval, align 4
  %conv140 = zext i32 %154 to i64
  %add = add nsw i64 %conv140, 1
  %mul141 = mul i64 %add, 1
  %call142 = call i8* %151(%struct.jpeg_common_struct* %153, i32 1, i64 %mul141)
  %155 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %rescale = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %155, i32 0, i32 4
  store i8* %call142, i8** %rescale, align 8
  %156 = load i32, i32* %maxval, align 4
  %div = udiv i32 %156, 2
  %conv143 = zext i32 %div to i64
  store i64 %conv143, i64* %half_maxval, align 8
  store i64 0, i64* %val, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.137
  %157 = load i64, i64* %val, align 8
  %158 = load i32, i32* %maxval, align 4
  %conv144 = zext i32 %158 to i64
  %cmp145 = icmp sle i64 %157, %conv144
  br i1 %cmp145, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %159 = load i64, i64* %val, align 8
  %mul147 = mul nsw i64 %159, 255
  %160 = load i64, i64* %half_maxval, align 8
  %add148 = add nsw i64 %mul147, %160
  %161 = load i32, i32* %maxval, align 4
  %conv149 = zext i32 %161 to i64
  %div150 = sdiv i64 %add148, %conv149
  %conv151 = trunc i64 %div150 to i8
  %162 = load i64, i64* %val, align 8
  %163 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %rescale152 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %163, i32 0, i32 4
  %164 = load i8*, i8** %rescale152, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %164, i64 %162
  store i8 %conv151, i8* %arrayidx153, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %165 = load i64, i64* %val, align 8
  %inc = add nsw i64 %165, 1
  store i64 %inc, i64* %val, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.154

if.end.154:                                       ; preds = %for.end, %if.end.135
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_input_ppm(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  ret void
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @read_pbm_integer(%struct.jpeg_compress_struct* %cinfo, %struct._IO_FILE* %infile) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %infile.addr = alloca %struct._IO_FILE*, align 8
  %ch = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct._IO_FILE* %infile, %struct._IO_FILE** %infile.addr, align 8
  br label %do.body

do.body:                                          ; preds = %lor.end, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call = call i32 @pbm_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %ch, align 4
  %1 = load i32, i32* %ch, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 0
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 5
  store i32 42, i32* %msg_code, align 4
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 0
  %6 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %8 = bitcast %struct.jpeg_compress_struct* %7 to %struct.jpeg_common_struct*
  call void %6(%struct.jpeg_common_struct* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %9 = load i32, i32* %ch, align 4
  %cmp2 = icmp eq i32 %9, 32
  br i1 %cmp2, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.cond
  %10 = load i32, i32* %ch, align 4
  %cmp3 = icmp eq i32 %10, 9
  br i1 %cmp3, label %lor.end, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %11 = load i32, i32* %ch, align 4
  %cmp5 = icmp eq i32 %11, 10
  br i1 %cmp5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.4
  %12 = load i32, i32* %ch, align 4
  %cmp6 = icmp eq i32 %12, 13
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.4, %lor.lhs.false, %do.cond
  %13 = phi i1 [ true, %lor.lhs.false.4 ], [ true, %lor.lhs.false ], [ true, %do.cond ], [ %cmp6, %lor.rhs ]
  br i1 %13, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %14 = load i32, i32* %ch, align 4
  %cmp7 = icmp slt i32 %14, 48
  br i1 %cmp7, label %if.then.10, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %do.end
  %15 = load i32, i32* %ch, align 4
  %cmp9 = icmp sgt i32 %15, 57
  br i1 %cmp9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %lor.lhs.false.8, %do.end
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err11, align 8
  %msg_code12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 5
  store i32 1026, i32* %msg_code12, align 4
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8
  %error_exit14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 0
  %20 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit14, align 8
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %22 = bitcast %struct.jpeg_compress_struct* %21 to %struct.jpeg_common_struct*
  call void %20(%struct.jpeg_common_struct* %22)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.10, %lor.lhs.false.8
  %23 = load i32, i32* %ch, align 4
  %sub = sub nsw i32 %23, 48
  store i32 %sub, i32* %val, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.15
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call16 = call i32 @pbm_getc(%struct._IO_FILE* %24)
  store i32 %call16, i32* %ch, align 4
  %cmp17 = icmp sge i32 %call16, 48
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %25 = load i32, i32* %ch, align 4
  %cmp18 = icmp sle i32 %25, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %26 = phi i1 [ false, %while.cond ], [ %cmp18, %land.rhs ]
  br i1 %26, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %27 = load i32, i32* %val, align 4
  %mul = mul i32 %27, 10
  store i32 %mul, i32* %val, align 4
  %28 = load i32, i32* %ch, align 4
  %sub19 = sub nsw i32 %28, 48
  %29 = load i32, i32* %val, align 4
  %add = add i32 %29, %sub19
  store i32 %add, i32* %val, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %30 = load i32, i32* %val, align 4
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @get_text_gray_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct.ppm_source_struct*, align 8
  %infile = alloca %struct._IO_FILE*, align 8
  %ptr = alloca i8*, align 8
  %rescale = alloca i8*, align 8
  %col = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %0 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %1 = bitcast %struct.cjpeg_source_struct* %0 to %struct.ppm_source_struct*
  store %struct.ppm_source_struct* %1, %struct.ppm_source_struct** %source, align 8
  %2 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %2, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** %infile, align 8
  %4 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %rescale1 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %4, i32 0, i32 4
  %5 = load i8*, i8** %rescale1, align 8
  store i8* %5, i8** %rescale, align 8
  %6 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub2 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %6, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub2, i32 0, i32 4
  %7 = load i8**, i8*** %buffer, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 0
  %8 = load i8*, i8** %arrayidx, align 8
  store i8* %8, i8** %ptr, align 8
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 6
  %10 = load i32, i32* %image_width, align 4
  store i32 %10, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %col, align 4
  %cmp = icmp ugt i32 %11, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call = call i32 @read_pbm_integer(%struct.jpeg_compress_struct* %12, %struct._IO_FILE* %13)
  %idxprom = zext i32 %call to i64
  %14 = load i8*, i8** %rescale, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %14, i64 %idxprom
  %15 = load i8, i8* %arrayidx3, align 1
  %16 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  store i8 %15, i8* %16, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %col, align 4
  %dec = add i32 %17, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @get_text_rgb_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct.ppm_source_struct*, align 8
  %infile = alloca %struct._IO_FILE*, align 8
  %ptr = alloca i8*, align 8
  %rescale = alloca i8*, align 8
  %col = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %0 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %1 = bitcast %struct.cjpeg_source_struct* %0 to %struct.ppm_source_struct*
  store %struct.ppm_source_struct* %1, %struct.ppm_source_struct** %source, align 8
  %2 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %2, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** %infile, align 8
  %4 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %rescale1 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %4, i32 0, i32 4
  %5 = load i8*, i8** %rescale1, align 8
  store i8* %5, i8** %rescale, align 8
  %6 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub2 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %6, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub2, i32 0, i32 4
  %7 = load i8**, i8*** %buffer, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 0
  %8 = load i8*, i8** %arrayidx, align 8
  store i8* %8, i8** %ptr, align 8
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 6
  %10 = load i32, i32* %image_width, align 4
  store i32 %10, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %col, align 4
  %cmp = icmp ugt i32 %11, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call = call i32 @read_pbm_integer(%struct.jpeg_compress_struct* %12, %struct._IO_FILE* %13)
  %idxprom = zext i32 %call to i64
  %14 = load i8*, i8** %rescale, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %14, i64 %idxprom
  %15 = load i8, i8* %arrayidx3, align 1
  %16 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  store i8 %15, i8* %16, align 1
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call4 = call i32 @read_pbm_integer(%struct.jpeg_compress_struct* %17, %struct._IO_FILE* %18)
  %idxprom5 = zext i32 %call4 to i64
  %19 = load i8*, i8** %rescale, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %19, i64 %idxprom5
  %20 = load i8, i8* %arrayidx6, align 1
  %21 = load i8*, i8** %ptr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr7, i8** %ptr, align 8
  store i8 %20, i8* %21, align 1
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call8 = call i32 @read_pbm_integer(%struct.jpeg_compress_struct* %22, %struct._IO_FILE* %23)
  %idxprom9 = zext i32 %call8 to i64
  %24 = load i8*, i8** %rescale, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %24, i64 %idxprom9
  %25 = load i8, i8* %arrayidx10, align 1
  %26 = load i8*, i8** %ptr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr11, i8** %ptr, align 8
  store i8 %25, i8* %26, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %col, align 4
  %dec = add i32 %27, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @get_word_gray_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct.ppm_source_struct*, align 8
  %ptr = alloca i8*, align 8
  %bufferptr = alloca i8*, align 8
  %rescale = alloca i8*, align 8
  %col = alloca i32, align 4
  %temp = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %0 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %1 = bitcast %struct.cjpeg_source_struct* %0 to %struct.ppm_source_struct*
  store %struct.ppm_source_struct* %1, %struct.ppm_source_struct** %source, align 8
  %2 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %rescale1 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %2, i32 0, i32 4
  %3 = load i8*, i8** %rescale1, align 8
  store i8* %3, i8** %rescale, align 8
  %4 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %iobuffer = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %4, i32 0, i32 1
  %5 = load i8*, i8** %iobuffer, align 8
  %6 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %6, i32 0, i32 3
  %7 = load i64, i64* %buffer_width, align 8
  %8 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %8, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  %call = call i64 @fread(i8* %5, i64 1, i64 %7, %struct._IO_FILE* %9)
  %10 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %buffer_width2 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %10, i32 0, i32 3
  %11 = load i64, i64* %buffer_width2, align 8
  %cmp = icmp eq i64 %call, %11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 5
  store i32 42, i32* %msg_code, align 4
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 0
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %18 = bitcast %struct.jpeg_compress_struct* %17 to %struct.jpeg_common_struct*
  call void %16(%struct.jpeg_common_struct* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub4 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %19, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub4, i32 0, i32 4
  %20 = load i8**, i8*** %buffer, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %20, i64 0
  %21 = load i8*, i8** %arrayidx, align 8
  store i8* %21, i8** %ptr, align 8
  %22 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %iobuffer5 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %22, i32 0, i32 1
  %23 = load i8*, i8** %iobuffer5, align 8
  store i8* %23, i8** %bufferptr, align 8
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 6
  %25 = load i32, i32* %image_width, align 4
  store i32 %25, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %26 = load i32, i32* %col, align 4
  %cmp6 = icmp ugt i32 %26, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i8*, i8** %bufferptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %bufferptr, align 8
  %28 = load i8, i8* %27, align 1
  %conv = zext i8 %28 to i32
  store i32 %conv, i32* %temp, align 4
  %29 = load i8*, i8** %bufferptr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr7, i8** %bufferptr, align 8
  %30 = load i8, i8* %29, align 1
  %conv8 = zext i8 %30 to i32
  %shl = shl i32 %conv8, 8
  %31 = load i32, i32* %temp, align 4
  %or = or i32 %31, %shl
  store i32 %or, i32* %temp, align 4
  %32 = load i32, i32* %temp, align 4
  %idxprom = sext i32 %32 to i64
  %33 = load i8*, i8** %rescale, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %33, i64 %idxprom
  %34 = load i8, i8* %arrayidx9, align 1
  %35 = load i8*, i8** %ptr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr10, i8** %ptr, align 8
  store i8 %34, i8* %35, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %col, align 4
  %dec = add i32 %36, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @get_raw_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct.ppm_source_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %0 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %1 = bitcast %struct.cjpeg_source_struct* %0 to %struct.ppm_source_struct*
  store %struct.ppm_source_struct* %1, %struct.ppm_source_struct** %source, align 8
  %2 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %iobuffer = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %2, i32 0, i32 1
  %3 = load i8*, i8** %iobuffer, align 8
  %4 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %4, i32 0, i32 3
  %5 = load i64, i64* %buffer_width, align 8
  %6 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %6, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  %call = call i64 @fread(i8* %3, i64 1, i64 %5, %struct._IO_FILE* %7)
  %8 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %buffer_width1 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %8, i32 0, i32 3
  %9 = load i64, i64* %buffer_width1, align 8
  %cmp = icmp eq i64 %call, %9
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 5
  store i32 42, i32* %msg_code, align 4
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 0
  %14 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %16 = bitcast %struct.jpeg_compress_struct* %15 to %struct.jpeg_common_struct*
  call void %14(%struct.jpeg_common_struct* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @get_scaled_gray_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct.ppm_source_struct*, align 8
  %ptr = alloca i8*, align 8
  %bufferptr = alloca i8*, align 8
  %rescale = alloca i8*, align 8
  %col = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %0 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %1 = bitcast %struct.cjpeg_source_struct* %0 to %struct.ppm_source_struct*
  store %struct.ppm_source_struct* %1, %struct.ppm_source_struct** %source, align 8
  %2 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %rescale1 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %2, i32 0, i32 4
  %3 = load i8*, i8** %rescale1, align 8
  store i8* %3, i8** %rescale, align 8
  %4 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %iobuffer = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %4, i32 0, i32 1
  %5 = load i8*, i8** %iobuffer, align 8
  %6 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %6, i32 0, i32 3
  %7 = load i64, i64* %buffer_width, align 8
  %8 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %8, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  %call = call i64 @fread(i8* %5, i64 1, i64 %7, %struct._IO_FILE* %9)
  %10 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %buffer_width2 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %10, i32 0, i32 3
  %11 = load i64, i64* %buffer_width2, align 8
  %cmp = icmp eq i64 %call, %11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 5
  store i32 42, i32* %msg_code, align 4
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 0
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %18 = bitcast %struct.jpeg_compress_struct* %17 to %struct.jpeg_common_struct*
  call void %16(%struct.jpeg_common_struct* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub4 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %19, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub4, i32 0, i32 4
  %20 = load i8**, i8*** %buffer, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %20, i64 0
  %21 = load i8*, i8** %arrayidx, align 8
  store i8* %21, i8** %ptr, align 8
  %22 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %iobuffer5 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %22, i32 0, i32 1
  %23 = load i8*, i8** %iobuffer5, align 8
  store i8* %23, i8** %bufferptr, align 8
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 6
  %25 = load i32, i32* %image_width, align 4
  store i32 %25, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %26 = load i32, i32* %col, align 4
  %cmp6 = icmp ugt i32 %26, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i8*, i8** %bufferptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %bufferptr, align 8
  %28 = load i8, i8* %27, align 1
  %conv = zext i8 %28 to i32
  %idxprom = sext i32 %conv to i64
  %29 = load i8*, i8** %rescale, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %29, i64 %idxprom
  %30 = load i8, i8* %arrayidx7, align 1
  %31 = load i8*, i8** %ptr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr8, i8** %ptr, align 8
  store i8 %30, i8* %31, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %col, align 4
  %dec = add i32 %32, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @get_word_rgb_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct.ppm_source_struct*, align 8
  %ptr = alloca i8*, align 8
  %bufferptr = alloca i8*, align 8
  %rescale = alloca i8*, align 8
  %col = alloca i32, align 4
  %temp = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %0 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %1 = bitcast %struct.cjpeg_source_struct* %0 to %struct.ppm_source_struct*
  store %struct.ppm_source_struct* %1, %struct.ppm_source_struct** %source, align 8
  %2 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %rescale1 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %2, i32 0, i32 4
  %3 = load i8*, i8** %rescale1, align 8
  store i8* %3, i8** %rescale, align 8
  %4 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %iobuffer = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %4, i32 0, i32 1
  %5 = load i8*, i8** %iobuffer, align 8
  %6 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %6, i32 0, i32 3
  %7 = load i64, i64* %buffer_width, align 8
  %8 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %8, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  %call = call i64 @fread(i8* %5, i64 1, i64 %7, %struct._IO_FILE* %9)
  %10 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %buffer_width2 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %10, i32 0, i32 3
  %11 = load i64, i64* %buffer_width2, align 8
  %cmp = icmp eq i64 %call, %11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 5
  store i32 42, i32* %msg_code, align 4
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 0
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %18 = bitcast %struct.jpeg_compress_struct* %17 to %struct.jpeg_common_struct*
  call void %16(%struct.jpeg_common_struct* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub4 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %19, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub4, i32 0, i32 4
  %20 = load i8**, i8*** %buffer, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %20, i64 0
  %21 = load i8*, i8** %arrayidx, align 8
  store i8* %21, i8** %ptr, align 8
  %22 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %iobuffer5 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %22, i32 0, i32 1
  %23 = load i8*, i8** %iobuffer5, align 8
  store i8* %23, i8** %bufferptr, align 8
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 6
  %25 = load i32, i32* %image_width, align 4
  store i32 %25, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %26 = load i32, i32* %col, align 4
  %cmp6 = icmp ugt i32 %26, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i8*, i8** %bufferptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %bufferptr, align 8
  %28 = load i8, i8* %27, align 1
  %conv = zext i8 %28 to i32
  store i32 %conv, i32* %temp, align 4
  %29 = load i8*, i8** %bufferptr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr7, i8** %bufferptr, align 8
  %30 = load i8, i8* %29, align 1
  %conv8 = zext i8 %30 to i32
  %shl = shl i32 %conv8, 8
  %31 = load i32, i32* %temp, align 4
  %or = or i32 %31, %shl
  store i32 %or, i32* %temp, align 4
  %32 = load i32, i32* %temp, align 4
  %idxprom = sext i32 %32 to i64
  %33 = load i8*, i8** %rescale, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %33, i64 %idxprom
  %34 = load i8, i8* %arrayidx9, align 1
  %35 = load i8*, i8** %ptr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr10, i8** %ptr, align 8
  store i8 %34, i8* %35, align 1
  %36 = load i8*, i8** %bufferptr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr11, i8** %bufferptr, align 8
  %37 = load i8, i8* %36, align 1
  %conv12 = zext i8 %37 to i32
  store i32 %conv12, i32* %temp, align 4
  %38 = load i8*, i8** %bufferptr, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr13, i8** %bufferptr, align 8
  %39 = load i8, i8* %38, align 1
  %conv14 = zext i8 %39 to i32
  %shl15 = shl i32 %conv14, 8
  %40 = load i32, i32* %temp, align 4
  %or16 = or i32 %40, %shl15
  store i32 %or16, i32* %temp, align 4
  %41 = load i32, i32* %temp, align 4
  %idxprom17 = sext i32 %41 to i64
  %42 = load i8*, i8** %rescale, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %42, i64 %idxprom17
  %43 = load i8, i8* %arrayidx18, align 1
  %44 = load i8*, i8** %ptr, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr19, i8** %ptr, align 8
  store i8 %43, i8* %44, align 1
  %45 = load i8*, i8** %bufferptr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr20, i8** %bufferptr, align 8
  %46 = load i8, i8* %45, align 1
  %conv21 = zext i8 %46 to i32
  store i32 %conv21, i32* %temp, align 4
  %47 = load i8*, i8** %bufferptr, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr22, i8** %bufferptr, align 8
  %48 = load i8, i8* %47, align 1
  %conv23 = zext i8 %48 to i32
  %shl24 = shl i32 %conv23, 8
  %49 = load i32, i32* %temp, align 4
  %or25 = or i32 %49, %shl24
  store i32 %or25, i32* %temp, align 4
  %50 = load i32, i32* %temp, align 4
  %idxprom26 = sext i32 %50 to i64
  %51 = load i8*, i8** %rescale, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %51, i64 %idxprom26
  %52 = load i8, i8* %arrayidx27, align 1
  %53 = load i8*, i8** %ptr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr28, i8** %ptr, align 8
  store i8 %52, i8* %53, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i32, i32* %col, align 4
  %dec = add i32 %54, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @get_scaled_rgb_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct.ppm_source_struct*, align 8
  %ptr = alloca i8*, align 8
  %bufferptr = alloca i8*, align 8
  %rescale = alloca i8*, align 8
  %col = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %0 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %1 = bitcast %struct.cjpeg_source_struct* %0 to %struct.ppm_source_struct*
  store %struct.ppm_source_struct* %1, %struct.ppm_source_struct** %source, align 8
  %2 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %rescale1 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %2, i32 0, i32 4
  %3 = load i8*, i8** %rescale1, align 8
  store i8* %3, i8** %rescale, align 8
  %4 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %iobuffer = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %4, i32 0, i32 1
  %5 = load i8*, i8** %iobuffer, align 8
  %6 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %6, i32 0, i32 3
  %7 = load i64, i64* %buffer_width, align 8
  %8 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %8, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  %call = call i64 @fread(i8* %5, i64 1, i64 %7, %struct._IO_FILE* %9)
  %10 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %buffer_width2 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %10, i32 0, i32 3
  %11 = load i64, i64* %buffer_width2, align 8
  %cmp = icmp eq i64 %call, %11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 5
  store i32 42, i32* %msg_code, align 4
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 0
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %18 = bitcast %struct.jpeg_compress_struct* %17 to %struct.jpeg_common_struct*
  call void %16(%struct.jpeg_common_struct* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %pub4 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %19, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub4, i32 0, i32 4
  %20 = load i8**, i8*** %buffer, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %20, i64 0
  %21 = load i8*, i8** %arrayidx, align 8
  store i8* %21, i8** %ptr, align 8
  %22 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %source, align 8
  %iobuffer5 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %22, i32 0, i32 1
  %23 = load i8*, i8** %iobuffer5, align 8
  store i8* %23, i8** %bufferptr, align 8
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 6
  %25 = load i32, i32* %image_width, align 4
  store i32 %25, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %26 = load i32, i32* %col, align 4
  %cmp6 = icmp ugt i32 %26, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i8*, i8** %bufferptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %bufferptr, align 8
  %28 = load i8, i8* %27, align 1
  %conv = zext i8 %28 to i32
  %idxprom = sext i32 %conv to i64
  %29 = load i8*, i8** %rescale, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %29, i64 %idxprom
  %30 = load i8, i8* %arrayidx7, align 1
  %31 = load i8*, i8** %ptr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr8, i8** %ptr, align 8
  store i8 %30, i8* %31, align 1
  %32 = load i8*, i8** %bufferptr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr9, i8** %bufferptr, align 8
  %33 = load i8, i8* %32, align 1
  %conv10 = zext i8 %33 to i32
  %idxprom11 = sext i32 %conv10 to i64
  %34 = load i8*, i8** %rescale, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %34, i64 %idxprom11
  %35 = load i8, i8* %arrayidx12, align 1
  %36 = load i8*, i8** %ptr, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr13, i8** %ptr, align 8
  store i8 %35, i8* %36, align 1
  %37 = load i8*, i8** %bufferptr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr14, i8** %bufferptr, align 8
  %38 = load i8, i8* %37, align 1
  %conv15 = zext i8 %38 to i32
  %idxprom16 = sext i32 %conv15 to i64
  %39 = load i8*, i8** %rescale, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %39, i64 %idxprom16
  %40 = load i8, i8* %arrayidx17, align 1
  %41 = load i8*, i8** %ptr, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr18, i8** %ptr, align 8
  store i8 %40, i8* %41, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i32, i32* %col, align 4
  %dec = add i32 %42, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @pbm_getc(%struct._IO_FILE* %infile) #0 {
entry:
  %infile.addr = alloca %struct._IO_FILE*, align 8
  %ch = alloca i32, align 4
  store %struct._IO_FILE* %infile, %struct._IO_FILE** %infile.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %ch, align 4
  %1 = load i32, i32* %ch, align 4
  %cmp = icmp eq i32 %1, 35
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call1 = call i32 @_IO_getc(%struct._IO_FILE* %2)
  store i32 %call1, i32* %ch, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %3 = load i32, i32* %ch, align 4
  %cmp2 = icmp ne i32 %3, 10
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %4 = load i32, i32* %ch, align 4
  %cmp3 = icmp ne i32 %4, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %5 = phi i1 [ false, %do.cond ], [ %cmp3, %land.rhs ]
  br i1 %5, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %6 = load i32, i32* %ch, align 4
  ret i32 %6
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
