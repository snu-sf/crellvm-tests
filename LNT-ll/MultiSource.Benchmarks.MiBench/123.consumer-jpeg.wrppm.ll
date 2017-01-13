; ModuleID = './MultiSource.Benchmarks.MiBench/123.consumer-jpeg.wrppm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.djpeg_dest_struct = type { void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)*, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)*, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)*, %struct._IO_FILE*, i8**, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.jpeg_decompress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_source_mgr*, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, i32, i32, i32, [64 x i32]*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], i32, %struct.jpeg_component_info*, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, i8*, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, %struct.jpeg_decomp_master*, %struct.jpeg_d_main_controller*, %struct.jpeg_d_coef_controller*, %struct.jpeg_d_post_controller*, %struct.jpeg_input_controller*, %struct.jpeg_marker_reader*, %struct.jpeg_entropy_decoder*, %struct.jpeg_inverse_dct*, %struct.jpeg_upsampler*, %struct.jpeg_color_deconverter*, %struct.jpeg_color_quantizer* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_source_mgr = type { i8*, i64, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*)* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.jpeg_decomp_master = type opaque
%struct.jpeg_d_main_controller = type opaque
%struct.jpeg_d_coef_controller = type opaque
%struct.jpeg_d_post_controller = type opaque
%struct.jpeg_input_controller = type opaque
%struct.jpeg_marker_reader = type opaque
%struct.jpeg_entropy_decoder = type opaque
%struct.jpeg_inverse_dct = type opaque
%struct.jpeg_upsampler = type opaque
%struct.jpeg_color_deconverter = type opaque
%struct.jpeg_color_quantizer = type opaque
%struct.ppm_dest_struct = type { %struct.djpeg_dest_struct, i8*, i8*, i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"P5\0A%ld %ld\0A%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"P6\0A%ld %ld\0A%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.djpeg_dest_struct* @jinit_write_ppm(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %dest = alloca %struct.ppm_dest_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_decompress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 80)
  %5 = bitcast i8* %call to %struct.ppm_dest_struct*
  store %struct.ppm_dest_struct* %5, %struct.ppm_dest_struct** %dest, align 8
  %6 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %pub = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %6, i32 0, i32 0
  %start_output = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub, i32 0, i32 0
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)* @start_output_ppm, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %start_output, align 8
  %7 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %pub1 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %7, i32 0, i32 0
  %finish_output = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub1, i32 0, i32 2
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)* @finish_output_ppm, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %finish_output, align 8
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct* %8)
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 26
  %10 = load i32, i32* %output_width, align 4
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 28
  %12 = load i32, i32* %out_color_components, align 4
  %mul = mul i32 %10, %12
  %13 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %samples_per_row = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %13, i32 0, i32 4
  store i32 %mul, i32* %samples_per_row, align 4
  %14 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %samples_per_row2 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %14, i32 0, i32 4
  %15 = load i32, i32* %samples_per_row2, align 4
  %conv = zext i32 %15 to i64
  %mul3 = mul i64 %conv, 1
  %16 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %16, i32 0, i32 3
  store i64 %mul3, i64* %buffer_width, align 8
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 1
  %18 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem4, align 8
  %alloc_small5 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %18, i32 0, i32 0
  %19 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small5, align 8
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %21 = bitcast %struct.jpeg_decompress_struct* %20 to %struct.jpeg_common_struct*
  %22 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %buffer_width6 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %22, i32 0, i32 3
  %23 = load i64, i64* %buffer_width6, align 8
  %call7 = call i8* %19(%struct.jpeg_common_struct* %21, i32 1, i64 %23)
  %24 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %iobuffer = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %24, i32 0, i32 1
  store i8* %call7, i8** %iobuffer, align 8
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 19
  %26 = load i32, i32* %quantize_colors, align 4
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.then, label %if.else.26

if.then:                                          ; preds = %entry
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 1
  %28 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem8, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %28, i32 0, i32 2
  %29 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %31 = bitcast %struct.jpeg_decompress_struct* %30 to %struct.jpeg_common_struct*
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 26
  %33 = load i32, i32* %output_width9, align 4
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 29
  %35 = load i32, i32* %output_components, align 4
  %mul10 = mul i32 %33, %35
  %call11 = call i8** %29(%struct.jpeg_common_struct* %31, i32 1, i32 %mul10, i32 1)
  %36 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %pub12 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %36, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub12, i32 0, i32 4
  store i8** %call11, i8*** %buffer, align 8
  %37 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %pub13 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %37, i32 0, i32 0
  %buffer_height = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub13, i32 0, i32 5
  store i32 1, i32* %buffer_height, align 4
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quantize_colors14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 19
  %39 = load i32, i32* %quantize_colors14, align 4
  %tobool15 = icmp ne i32 %39, 0
  br i1 %tobool15, label %if.else, label %if.then.16

if.then.16:                                       ; preds = %if.then
  %40 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %pub17 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %40, i32 0, i32 0
  %put_pixel_rows = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub17, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @copy_pixel_rows, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %put_pixel_rows, align 8
  br label %if.end.25

if.else:                                          ; preds = %if.then
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 10
  %42 = load i32, i32* %out_color_space, align 4
  %cmp = icmp eq i32 %42, 1
  br i1 %cmp, label %if.then.19, label %if.else.22

if.then.19:                                       ; preds = %if.else
  %43 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %pub20 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %43, i32 0, i32 0
  %put_pixel_rows21 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub20, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_demapped_gray, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %put_pixel_rows21, align 8
  br label %if.end

if.else.22:                                       ; preds = %if.else
  %44 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %pub23 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %44, i32 0, i32 0
  %put_pixel_rows24 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub23, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_demapped_rgb, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %put_pixel_rows24, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.22, %if.then.19
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %if.then.16
  br label %if.end.35

if.else.26:                                       ; preds = %entry
  %45 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %iobuffer27 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %45, i32 0, i32 1
  %46 = load i8*, i8** %iobuffer27, align 8
  %47 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %pixrow = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %47, i32 0, i32 2
  store i8* %46, i8** %pixrow, align 8
  %48 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %pixrow28 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %48, i32 0, i32 2
  %49 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %pub29 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %49, i32 0, i32 0
  %buffer30 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub29, i32 0, i32 4
  store i8** %pixrow28, i8*** %buffer30, align 8
  %50 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %pub31 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %50, i32 0, i32 0
  %buffer_height32 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub31, i32 0, i32 5
  store i32 1, i32* %buffer_height32, align 4
  %51 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %pub33 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %51, i32 0, i32 0
  %put_pixel_rows34 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub33, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_pixel_rows, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %put_pixel_rows34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.26, %if.end.25
  %52 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %53 = bitcast %struct.ppm_dest_struct* %52 to %struct.djpeg_dest_struct*
  ret %struct.djpeg_dest_struct* %53
}

; Function Attrs: nounwind uwtable
define internal void @start_output_ppm(%struct.jpeg_decompress_struct* %cinfo, %struct.djpeg_dest_struct* %dinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %dinfo.addr = alloca %struct.djpeg_dest_struct*, align 8
  %dest = alloca %struct.ppm_dest_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.djpeg_dest_struct* %dinfo, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  %0 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  %1 = bitcast %struct.djpeg_dest_struct* %0 to %struct.ppm_dest_struct*
  store %struct.ppm_dest_struct* %1, %struct.ppm_dest_struct** %dest, align 8
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 10
  %3 = load i32, i32* %out_color_space, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %pub = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %4, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub, i32 0, i32 3
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 26
  %7 = load i32, i32* %output_width, align 4
  %conv = zext i32 %7 to i64
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 27
  %9 = load i32, i32* %output_height, align 4
  %conv1 = zext i32 %9 to i64
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i64 %conv, i64 %conv1, i32 255)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %10 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %pub3 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %10, i32 0, i32 0
  %output_file4 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub3, i32 0, i32 3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file4, align 8
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 26
  %13 = load i32, i32* %output_width5, align 4
  %conv6 = zext i32 %13 to i64
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_height7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 27
  %15 = load i32, i32* %output_height7, align 4
  %conv8 = zext i32 %15 to i64
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i64 %conv6, i64 %conv8, i32 255)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 5
  store i32 1025, i32* %msg_code, align 4
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 0
  %20 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %22 = bitcast %struct.jpeg_decompress_struct* %21 to %struct.jpeg_common_struct*
  call void %20(%struct.jpeg_common_struct* %22)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_output_ppm(%struct.jpeg_decompress_struct* %cinfo, %struct.djpeg_dest_struct* %dinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %dinfo.addr = alloca %struct.djpeg_dest_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.djpeg_dest_struct* %dinfo, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  %0 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %0, i32 0, i32 3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  %output_file1 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %2, i32 0, i32 3
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file1, align 8
  %call2 = call i32 @ferror(%struct._IO_FILE* %3) #3
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 36, i32* %msg_code, align 4
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 0
  %8 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %10 = bitcast %struct.jpeg_decompress_struct* %9 to %struct.jpeg_common_struct*
  call void %8(%struct.jpeg_common_struct* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct*) #1

; Function Attrs: nounwind uwtable
define internal void @copy_pixel_rows(%struct.jpeg_decompress_struct* %cinfo, %struct.djpeg_dest_struct* %dinfo, i32 %rows_supplied) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %dinfo.addr = alloca %struct.djpeg_dest_struct*, align 8
  %rows_supplied.addr = alloca i32, align 4
  %dest = alloca %struct.ppm_dest_struct*, align 8
  %bufferptr = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %col = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.djpeg_dest_struct* %dinfo, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  store i32 %rows_supplied, i32* %rows_supplied.addr, align 4
  %0 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  %1 = bitcast %struct.djpeg_dest_struct* %0 to %struct.ppm_dest_struct*
  store %struct.ppm_dest_struct* %1, %struct.ppm_dest_struct** %dest, align 8
  %2 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %pub = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %2, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub, i32 0, i32 4
  %3 = load i8**, i8*** %buffer, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8
  store i8* %4, i8** %ptr, align 8
  %5 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %iobuffer = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %5, i32 0, i32 1
  %6 = load i8*, i8** %iobuffer, align 8
  store i8* %6, i8** %bufferptr, align 8
  %7 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %samples_per_row = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %7, i32 0, i32 4
  %8 = load i32, i32* %samples_per_row, align 4
  store i32 %8, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %col, align 4
  %cmp = icmp ugt i32 %9, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  %11 = load i8, i8* %10, align 1
  %conv = zext i8 %11 to i32
  %conv1 = trunc i32 %conv to i8
  %12 = load i8*, i8** %bufferptr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr2, i8** %bufferptr, align 8
  store i8 %conv1, i8* %12, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %col, align 4
  %dec = add i32 %13, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %iobuffer3 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %14, i32 0, i32 1
  %15 = load i8*, i8** %iobuffer3, align 8
  %16 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %16, i32 0, i32 3
  %17 = load i64, i64* %buffer_width, align 8
  %18 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %pub4 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %18, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub4, i32 0, i32 3
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %call = call i64 @fwrite(i8* %15, i64 1, i64 %17, %struct._IO_FILE* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_demapped_gray(%struct.jpeg_decompress_struct* %cinfo, %struct.djpeg_dest_struct* %dinfo, i32 %rows_supplied) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %dinfo.addr = alloca %struct.djpeg_dest_struct*, align 8
  %rows_supplied.addr = alloca i32, align 4
  %dest = alloca %struct.ppm_dest_struct*, align 8
  %bufferptr = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %color_map = alloca i8*, align 8
  %col = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.djpeg_dest_struct* %dinfo, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  store i32 %rows_supplied, i32* %rows_supplied.addr, align 4
  %0 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  %1 = bitcast %struct.djpeg_dest_struct* %0 to %struct.ppm_dest_struct*
  store %struct.ppm_dest_struct* %1, %struct.ppm_dest_struct** %dest, align 8
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 32
  %3 = load i8**, i8*** %colormap, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8
  store i8* %4, i8** %color_map, align 8
  %5 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %pub = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %5, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub, i32 0, i32 4
  %6 = load i8**, i8*** %buffer, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %6, i64 0
  %7 = load i8*, i8** %arrayidx1, align 8
  store i8* %7, i8** %ptr, align 8
  %8 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %iobuffer = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %8, i32 0, i32 1
  %9 = load i8*, i8** %iobuffer, align 8
  store i8* %9, i8** %bufferptr, align 8
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 26
  %11 = load i32, i32* %output_width, align 4
  store i32 %11, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %col, align 4
  %cmp = icmp ugt i32 %12, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  %14 = load i8, i8* %13, align 1
  %conv = zext i8 %14 to i32
  %idxprom = sext i32 %conv to i64
  %15 = load i8*, i8** %color_map, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %15, i64 %idxprom
  %16 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %16 to i32
  %conv4 = trunc i32 %conv3 to i8
  %17 = load i8*, i8** %bufferptr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr5, i8** %bufferptr, align 8
  store i8 %conv4, i8* %17, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %col, align 4
  %dec = add i32 %18, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %iobuffer6 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %19, i32 0, i32 1
  %20 = load i8*, i8** %iobuffer6, align 8
  %21 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %21, i32 0, i32 3
  %22 = load i64, i64* %buffer_width, align 8
  %23 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %pub7 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %23, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub7, i32 0, i32 3
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %call = call i64 @fwrite(i8* %20, i64 1, i64 %22, %struct._IO_FILE* %24)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_demapped_rgb(%struct.jpeg_decompress_struct* %cinfo, %struct.djpeg_dest_struct* %dinfo, i32 %rows_supplied) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %dinfo.addr = alloca %struct.djpeg_dest_struct*, align 8
  %rows_supplied.addr = alloca i32, align 4
  %dest = alloca %struct.ppm_dest_struct*, align 8
  %bufferptr = alloca i8*, align 8
  %pixval = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %color_map0 = alloca i8*, align 8
  %color_map1 = alloca i8*, align 8
  %color_map2 = alloca i8*, align 8
  %col = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.djpeg_dest_struct* %dinfo, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  store i32 %rows_supplied, i32* %rows_supplied.addr, align 4
  %0 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  %1 = bitcast %struct.djpeg_dest_struct* %0 to %struct.ppm_dest_struct*
  store %struct.ppm_dest_struct* %1, %struct.ppm_dest_struct** %dest, align 8
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 32
  %3 = load i8**, i8*** %colormap, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8
  store i8* %4, i8** %color_map0, align 8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 32
  %6 = load i8**, i8*** %colormap1, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %6, i64 1
  %7 = load i8*, i8** %arrayidx2, align 8
  store i8* %7, i8** %color_map1, align 8
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 32
  %9 = load i8**, i8*** %colormap3, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %9, i64 2
  %10 = load i8*, i8** %arrayidx4, align 8
  store i8* %10, i8** %color_map2, align 8
  %11 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %pub = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %11, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub, i32 0, i32 4
  %12 = load i8**, i8*** %buffer, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %12, i64 0
  %13 = load i8*, i8** %arrayidx5, align 8
  store i8* %13, i8** %ptr, align 8
  %14 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %iobuffer = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %14, i32 0, i32 1
  %15 = load i8*, i8** %iobuffer, align 8
  store i8* %15, i8** %bufferptr, align 8
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 26
  %17 = load i32, i32* %output_width, align 4
  store i32 %17, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32, i32* %col, align 4
  %cmp = icmp ugt i32 %18, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  %20 = load i8, i8* %19, align 1
  %conv = zext i8 %20 to i32
  store i32 %conv, i32* %pixval, align 4
  %21 = load i32, i32* %pixval, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load i8*, i8** %color_map0, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %22, i64 %idxprom
  %23 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %23 to i32
  %conv8 = trunc i32 %conv7 to i8
  %24 = load i8*, i8** %bufferptr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr9, i8** %bufferptr, align 8
  store i8 %conv8, i8* %24, align 1
  %25 = load i32, i32* %pixval, align 4
  %idxprom10 = sext i32 %25 to i64
  %26 = load i8*, i8** %color_map1, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %26, i64 %idxprom10
  %27 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %27 to i32
  %conv13 = trunc i32 %conv12 to i8
  %28 = load i8*, i8** %bufferptr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr14, i8** %bufferptr, align 8
  store i8 %conv13, i8* %28, align 1
  %29 = load i32, i32* %pixval, align 4
  %idxprom15 = sext i32 %29 to i64
  %30 = load i8*, i8** %color_map2, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %30, i64 %idxprom15
  %31 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %31 to i32
  %conv18 = trunc i32 %conv17 to i8
  %32 = load i8*, i8** %bufferptr, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr19, i8** %bufferptr, align 8
  store i8 %conv18, i8* %32, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %col, align 4
  %dec = add i32 %33, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %iobuffer20 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %34, i32 0, i32 1
  %35 = load i8*, i8** %iobuffer20, align 8
  %36 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %36, i32 0, i32 3
  %37 = load i64, i64* %buffer_width, align 8
  %38 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %pub21 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %38, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub21, i32 0, i32 3
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %call = call i64 @fwrite(i8* %35, i64 1, i64 %37, %struct._IO_FILE* %39)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_pixel_rows(%struct.jpeg_decompress_struct* %cinfo, %struct.djpeg_dest_struct* %dinfo, i32 %rows_supplied) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %dinfo.addr = alloca %struct.djpeg_dest_struct*, align 8
  %rows_supplied.addr = alloca i32, align 4
  %dest = alloca %struct.ppm_dest_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.djpeg_dest_struct* %dinfo, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  store i32 %rows_supplied, i32* %rows_supplied.addr, align 4
  %0 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  %1 = bitcast %struct.djpeg_dest_struct* %0 to %struct.ppm_dest_struct*
  store %struct.ppm_dest_struct* %1, %struct.ppm_dest_struct** %dest, align 8
  %2 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %iobuffer = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %2, i32 0, i32 1
  %3 = load i8*, i8** %iobuffer, align 8
  %4 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %buffer_width = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %4, i32 0, i32 3
  %5 = load i64, i64* %buffer_width, align 8
  %6 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %dest, align 8
  %pub = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %6, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub, i32 0, i32 3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %call = call i64 @fwrite(i8* %3, i64 1, i64 %5, %struct._IO_FILE* %7)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #2

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
