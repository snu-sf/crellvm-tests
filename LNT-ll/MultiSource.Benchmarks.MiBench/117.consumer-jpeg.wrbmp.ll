; ModuleID = './MultiSource.Benchmarks.MiBench/117.consumer-jpeg.wrbmp.bc'
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
%struct.bmp_dest_struct = type { %struct.djpeg_dest_struct, i32, %struct.jvirt_sarray_control*, i32, i32, i32, i32 }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define %struct.djpeg_dest_struct* @jinit_write_bmp(%struct.jpeg_decompress_struct* %cinfo, i32 %is_os2) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %is_os2.addr = alloca i32, align 4
  %dest = alloca %struct.bmp_dest_struct*, align 8
  %row_width = alloca i32, align 4
  %progress24 = alloca %struct.cdjpeg_progress_mgr*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i32 %is_os2, i32* %is_os2.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_decompress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 80)
  %5 = bitcast i8* %call to %struct.bmp_dest_struct*
  store %struct.bmp_dest_struct* %5, %struct.bmp_dest_struct** %dest, align 8
  %6 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %pub = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %6, i32 0, i32 0
  %start_output = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub, i32 0, i32 0
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)* @start_output_bmp, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %start_output, align 8
  %7 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %pub1 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %7, i32 0, i32 0
  %finish_output = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub1, i32 0, i32 2
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)* @finish_output_bmp, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %finish_output, align 8
  %8 = load i32, i32* %is_os2.addr, align 4
  %9 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %is_os22 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %9, i32 0, i32 1
  store i32 %8, i32* %is_os22, align 4
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 10
  %11 = load i32, i32* %out_color_space, align 4
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %pub3 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %12, i32 0, i32 0
  %put_pixel_rows = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub3, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_gray_rows, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %put_pixel_rows, align 8
  br label %if.end.16

if.else:                                          ; preds = %entry
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_space4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 10
  %14 = load i32, i32* %out_color_space4, align 4
  %cmp5 = icmp eq i32 %14, 2
  br i1 %cmp5, label %if.then.6, label %if.else.13

if.then.6:                                        ; preds = %if.else
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 19
  %16 = load i32, i32* %quantize_colors, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then.7, label %if.else.10

if.then.7:                                        ; preds = %if.then.6
  %17 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %pub8 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %17, i32 0, i32 0
  %put_pixel_rows9 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub8, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_gray_rows, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %put_pixel_rows9, align 8
  br label %if.end

if.else.10:                                       ; preds = %if.then.6
  %18 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %pub11 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %18, i32 0, i32 0
  %put_pixel_rows12 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub11, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_pixel_rows, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %put_pixel_rows12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.10, %if.then.7
  br label %if.end.15

if.else.13:                                       ; preds = %if.else
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 5
  store i32 1005, i32* %msg_code, align 4
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err14, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i32 0, i32 0
  %23 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %25 = bitcast %struct.jpeg_decompress_struct* %24 to %struct.jpeg_common_struct*
  call void %23(%struct.jpeg_common_struct* %25)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13, %if.end
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct* %26)
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 26
  %28 = load i32, i32* %output_width, align 4
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 29
  %30 = load i32, i32* %output_components, align 4
  %mul = mul i32 %28, %30
  store i32 %mul, i32* %row_width, align 4
  %31 = load i32, i32* %row_width, align 4
  %32 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %data_width = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %32, i32 0, i32 3
  store i32 %31, i32* %data_width, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.16
  %33 = load i32, i32* %row_width, align 4
  %and = and i32 %33, 3
  %cmp17 = icmp ne i32 %and, 0
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %34 = load i32, i32* %row_width, align 4
  %inc = add i32 %34, 1
  store i32 %inc, i32* %row_width, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %35 = load i32, i32* %row_width, align 4
  %36 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %row_width18 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %36, i32 0, i32 4
  store i32 %35, i32* %row_width18, align 4
  %37 = load i32, i32* %row_width, align 4
  %38 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %data_width19 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %38, i32 0, i32 3
  %39 = load i32, i32* %data_width19, align 4
  %sub = sub i32 %37, %39
  %40 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %pad_bytes = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %40, i32 0, i32 5
  store i32 %sub, i32* %pad_bytes, align 4
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 1
  %42 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem20, align 8
  %request_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %42, i32 0, i32 4
  %43 = load %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)** %request_virt_sarray, align 8
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %45 = bitcast %struct.jpeg_decompress_struct* %44 to %struct.jpeg_common_struct*
  %46 = load i32, i32* %row_width, align 4
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 27
  %48 = load i32, i32* %output_height, align 4
  %call21 = call %struct.jvirt_sarray_control* %43(%struct.jpeg_common_struct* %45, i32 1, i32 0, i32 %46, i32 %48, i32 1)
  %49 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %whole_image = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %49, i32 0, i32 2
  store %struct.jvirt_sarray_control* %call21, %struct.jvirt_sarray_control** %whole_image, align 8
  %50 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %cur_output_row = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %50, i32 0, i32 6
  store i32 0, i32* %cur_output_row, align 4
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 2
  %52 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress, align 8
  %cmp22 = icmp ne %struct.jpeg_progress_mgr* %52, null
  br i1 %cmp22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %while.end
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progress25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 2
  %54 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress25, align 8
  %55 = bitcast %struct.jpeg_progress_mgr* %54 to %struct.cdjpeg_progress_mgr*
  store %struct.cdjpeg_progress_mgr* %55, %struct.cdjpeg_progress_mgr** %progress24, align 8
  %56 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress24, align 8
  %total_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %56, i32 0, i32 2
  %57 = load i32, i32* %total_extra_passes, align 4
  %inc26 = add nsw i32 %57, 1
  store i32 %inc26, i32* %total_extra_passes, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %while.end
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %58, i32 0, i32 1
  %59 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem28, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %59, i32 0, i32 2
  %60 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %62 = bitcast %struct.jpeg_decompress_struct* %61 to %struct.jpeg_common_struct*
  %63 = load i32, i32* %row_width, align 4
  %call29 = call i8** %60(%struct.jpeg_common_struct* %62, i32 1, i32 %63, i32 1)
  %64 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %pub30 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %64, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub30, i32 0, i32 4
  store i8** %call29, i8*** %buffer, align 8
  %65 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %pub31 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %65, i32 0, i32 0
  %buffer_height = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub31, i32 0, i32 5
  store i32 1, i32* %buffer_height, align 4
  %66 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %67 = bitcast %struct.bmp_dest_struct* %66 to %struct.djpeg_dest_struct*
  ret %struct.djpeg_dest_struct* %67
}

; Function Attrs: nounwind uwtable
define internal void @start_output_bmp(%struct.jpeg_decompress_struct* %cinfo, %struct.djpeg_dest_struct* %dinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %dinfo.addr = alloca %struct.djpeg_dest_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.djpeg_dest_struct* %dinfo, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_output_bmp(%struct.jpeg_decompress_struct* %cinfo, %struct.djpeg_dest_struct* %dinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %dinfo.addr = alloca %struct.djpeg_dest_struct*, align 8
  %dest = alloca %struct.bmp_dest_struct*, align 8
  %outfile = alloca %struct._IO_FILE*, align 8
  %image_ptr = alloca i8**, align 8
  %data_ptr = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %progress = alloca %struct.cdjpeg_progress_mgr*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.djpeg_dest_struct* %dinfo, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  %0 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  %1 = bitcast %struct.djpeg_dest_struct* %0 to %struct.bmp_dest_struct*
  store %struct.bmp_dest_struct* %1, %struct.bmp_dest_struct** %dest, align 8
  %2 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %pub = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %2, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub, i32 0, i32 3
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** %outfile, align 8
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %progress1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 2
  %5 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress1, align 8
  %6 = bitcast %struct.jpeg_progress_mgr* %5 to %struct.cdjpeg_progress_mgr*
  store %struct.cdjpeg_progress_mgr* %6, %struct.cdjpeg_progress_mgr** %progress, align 8
  %7 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %is_os2 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %7, i32 0, i32 1
  %8 = load i32, i32* %is_os2, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %10 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  call void @write_os2_header(%struct.jpeg_decompress_struct* %9, %struct.bmp_dest_struct* %10)
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %12 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  call void @write_bmp_header(%struct.jpeg_decompress_struct* %11, %struct.bmp_dest_struct* %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 27
  %14 = load i32, i32* %output_height, align 4
  store i32 %14, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %if.end
  %15 = load i32, i32* %row, align 4
  %cmp = icmp ugt i32 %15, 0
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  %16 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8
  %cmp2 = icmp ne %struct.cdjpeg_progress_mgr* %16, null
  br i1 %cmp2, label %if.then.3, label %if.end.11

if.then.3:                                        ; preds = %for.body
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_height4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 27
  %18 = load i32, i32* %output_height4, align 4
  %19 = load i32, i32* %row, align 4
  %sub = sub i32 %18, %19
  %conv = zext i32 %sub to i64
  %20 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8
  %pub5 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %20, i32 0, i32 0
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %pub5, i32 0, i32 1
  store i64 %conv, i64* %pass_counter, align 8
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_height6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 27
  %22 = load i32, i32* %output_height6, align 4
  %conv7 = zext i32 %22 to i64
  %23 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8
  %pub8 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %23, i32 0, i32 0
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %pub8, i32 0, i32 2
  store i64 %conv7, i64* %pass_limit, align 8
  %24 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8
  %pub9 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %24, i32 0, i32 0
  %progress_monitor = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %pub9, i32 0, i32 0
  %progress_monitor10 = bitcast {}** %progress_monitor to void (%struct.jpeg_common_struct*)**
  %25 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %progress_monitor10, align 8
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %27 = bitcast %struct.jpeg_decompress_struct* %26 to %struct.jpeg_common_struct*
  call void %25(%struct.jpeg_common_struct* %27)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.3, %for.body
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 1
  %29 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %29, i32 0, i32 7
  %30 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %access_virt_sarray, align 8
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %32 = bitcast %struct.jpeg_decompress_struct* %31 to %struct.jpeg_common_struct*
  %33 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %whole_image = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %33, i32 0, i32 2
  %34 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %whole_image, align 8
  %35 = load i32, i32* %row, align 4
  %sub12 = sub i32 %35, 1
  %call = call i8** %30(%struct.jpeg_common_struct* %32, %struct.jvirt_sarray_control* %34, i32 %sub12, i32 1, i32 0)
  store i8** %call, i8*** %image_ptr, align 8
  %36 = load i8**, i8*** %image_ptr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %36, i64 0
  %37 = load i8*, i8** %arrayidx, align 8
  store i8* %37, i8** %data_ptr, align 8
  %38 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %row_width = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %38, i32 0, i32 4
  %39 = load i32, i32* %row_width, align 4
  store i32 %39, i32* %col, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %if.end.11
  %40 = load i32, i32* %col, align 4
  %cmp14 = icmp ugt i32 %40, 0
  br i1 %cmp14, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.13
  %41 = load i8*, i8** %data_ptr, align 8
  %42 = load i8, i8* %41, align 1
  %conv17 = zext i8 %42 to i32
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call18 = call i32 @_IO_putc(i32 %conv17, %struct._IO_FILE* %43)
  %44 = load i8*, i8** %data_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr, i8** %data_ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.16
  %45 = load i32, i32* %col, align 4
  %dec = add i32 %45, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end
  %46 = load i32, i32* %row, align 4
  %dec20 = add i32 %46, -1
  store i32 %dec20, i32* %row, align 4
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  %47 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8
  %cmp22 = icmp ne %struct.cdjpeg_progress_mgr* %47, null
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.end.21
  %48 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8
  %completed_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %48, i32 0, i32 1
  %49 = load i32, i32* %completed_extra_passes, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %completed_extra_passes, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %for.end.21
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call26 = call i32 @fflush(%struct._IO_FILE* %50)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call27 = call i32 @ferror(%struct._IO_FILE* %51) #3
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end.25
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %52, i32 0, i32 0
  %53 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %53, i32 0, i32 5
  store i32 36, i32* %msg_code, align 4
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %54, i32 0, i32 0
  %55 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err30, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %55, i32 0, i32 0
  %56 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %58 = bitcast %struct.jpeg_decompress_struct* %57 to %struct.jpeg_common_struct*
  call void %56(%struct.jpeg_common_struct* %58)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.end.25
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_gray_rows(%struct.jpeg_decompress_struct* %cinfo, %struct.djpeg_dest_struct* %dinfo, i32 %rows_supplied) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %dinfo.addr = alloca %struct.djpeg_dest_struct*, align 8
  %rows_supplied.addr = alloca i32, align 4
  %dest = alloca %struct.bmp_dest_struct*, align 8
  %image_ptr = alloca i8**, align 8
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %col = alloca i32, align 4
  %pad = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.djpeg_dest_struct* %dinfo, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  store i32 %rows_supplied, i32* %rows_supplied.addr, align 4
  %0 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  %1 = bitcast %struct.djpeg_dest_struct* %0 to %struct.bmp_dest_struct*
  store %struct.bmp_dest_struct* %1, %struct.bmp_dest_struct** %dest, align 8
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i32 0, i32 7
  %4 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %access_virt_sarray, align 8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %6 = bitcast %struct.jpeg_decompress_struct* %5 to %struct.jpeg_common_struct*
  %7 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %whole_image = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %7, i32 0, i32 2
  %8 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %whole_image, align 8
  %9 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %cur_output_row = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %9, i32 0, i32 6
  %10 = load i32, i32* %cur_output_row, align 4
  %call = call i8** %4(%struct.jpeg_common_struct* %6, %struct.jvirt_sarray_control* %8, i32 %10, i32 1, i32 1)
  store i8** %call, i8*** %image_ptr, align 8
  %11 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %cur_output_row1 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %11, i32 0, i32 6
  %12 = load i32, i32* %cur_output_row1, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %cur_output_row1, align 4
  %13 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %pub = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %13, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub, i32 0, i32 4
  %14 = load i8**, i8*** %buffer, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %14, i64 0
  %15 = load i8*, i8** %arrayidx, align 8
  store i8* %15, i8** %inptr, align 8
  %16 = load i8**, i8*** %image_ptr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %16, i64 0
  %17 = load i8*, i8** %arrayidx2, align 8
  store i8* %17, i8** %outptr, align 8
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 26
  %19 = load i32, i32* %output_width, align 4
  store i32 %19, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %20 = load i32, i32* %col, align 4
  %cmp = icmp ugt i32 %20, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i8*, i8** %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %inptr, align 8
  %22 = load i8, i8* %21, align 1
  %23 = load i8*, i8** %outptr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr3, i8** %outptr, align 8
  store i8 %22, i8* %23, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %col, align 4
  %dec = add i32 %24, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %pad_bytes = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %25, i32 0, i32 5
  %26 = load i32, i32* %pad_bytes, align 4
  store i32 %26, i32* %pad, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %27 = load i32, i32* %pad, align 4
  %dec4 = add nsw i32 %27, -1
  store i32 %dec4, i32* %pad, align 4
  %cmp5 = icmp sge i32 %dec4, 0
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %28 = load i8*, i8** %outptr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr6, i8** %outptr, align 8
  store i8 0, i8* %28, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_pixel_rows(%struct.jpeg_decompress_struct* %cinfo, %struct.djpeg_dest_struct* %dinfo, i32 %rows_supplied) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %dinfo.addr = alloca %struct.djpeg_dest_struct*, align 8
  %rows_supplied.addr = alloca i32, align 4
  %dest = alloca %struct.bmp_dest_struct*, align 8
  %image_ptr = alloca i8**, align 8
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %col = alloca i32, align 4
  %pad = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.djpeg_dest_struct* %dinfo, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  store i32 %rows_supplied, i32* %rows_supplied.addr, align 4
  %0 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  %1 = bitcast %struct.djpeg_dest_struct* %0 to %struct.bmp_dest_struct*
  store %struct.bmp_dest_struct* %1, %struct.bmp_dest_struct** %dest, align 8
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i32 0, i32 7
  %4 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %access_virt_sarray, align 8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %6 = bitcast %struct.jpeg_decompress_struct* %5 to %struct.jpeg_common_struct*
  %7 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %whole_image = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %7, i32 0, i32 2
  %8 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %whole_image, align 8
  %9 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %cur_output_row = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %9, i32 0, i32 6
  %10 = load i32, i32* %cur_output_row, align 4
  %call = call i8** %4(%struct.jpeg_common_struct* %6, %struct.jvirt_sarray_control* %8, i32 %10, i32 1, i32 1)
  store i8** %call, i8*** %image_ptr, align 8
  %11 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %cur_output_row1 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %11, i32 0, i32 6
  %12 = load i32, i32* %cur_output_row1, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %cur_output_row1, align 4
  %13 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %pub = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %13, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub, i32 0, i32 4
  %14 = load i8**, i8*** %buffer, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %14, i64 0
  %15 = load i8*, i8** %arrayidx, align 8
  store i8* %15, i8** %inptr, align 8
  %16 = load i8**, i8*** %image_ptr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %16, i64 0
  %17 = load i8*, i8** %arrayidx2, align 8
  store i8* %17, i8** %outptr, align 8
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 26
  %19 = load i32, i32* %output_width, align 4
  store i32 %19, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %20 = load i32, i32* %col, align 4
  %cmp = icmp ugt i32 %20, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i8*, i8** %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %inptr, align 8
  %22 = load i8, i8* %21, align 1
  %23 = load i8*, i8** %outptr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %23, i64 2
  store i8 %22, i8* %arrayidx3, align 1
  %24 = load i8*, i8** %inptr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr4, i8** %inptr, align 8
  %25 = load i8, i8* %24, align 1
  %26 = load i8*, i8** %outptr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 %25, i8* %arrayidx5, align 1
  %27 = load i8*, i8** %inptr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr6, i8** %inptr, align 8
  %28 = load i8, i8* %27, align 1
  %29 = load i8*, i8** %outptr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 %28, i8* %arrayidx7, align 1
  %30 = load i8*, i8** %outptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 3
  store i8* %add.ptr, i8** %outptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %col, align 4
  %dec = add i32 %31, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest, align 8
  %pad_bytes = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %32, i32 0, i32 5
  %33 = load i32, i32* %pad_bytes, align 4
  store i32 %33, i32* %pad, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %34 = load i32, i32* %pad, align 4
  %dec8 = add nsw i32 %34, -1
  store i32 %dec8, i32* %pad, align 4
  %cmp9 = icmp sge i32 %dec8, 0
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %35 = load i8*, i8** %outptr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr10, i8** %outptr, align 8
  store i8 0, i8* %35, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct*) #1

; Function Attrs: nounwind uwtable
define internal void @write_os2_header(%struct.jpeg_decompress_struct* %cinfo, %struct.bmp_dest_struct* %dest) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %dest.addr = alloca %struct.bmp_dest_struct*, align 8
  %bmpfileheader = alloca [14 x i8], align 1
  %bmpcoreheader = alloca [12 x i8], align 1
  %headersize = alloca i64, align 8
  %bfSize = alloca i64, align 8
  %bits_per_pixel = alloca i32, align 4
  %cmap_entries = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.bmp_dest_struct* %dest, %struct.bmp_dest_struct** %dest.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 10
  %1 = load i32, i32* %out_color_space, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else.2

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 19
  %3 = load i32, i32* %quantize_colors, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  store i32 8, i32* %bits_per_pixel, align 4
  store i32 256, i32* %cmap_entries, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 24, i32* %bits_per_pixel, align 4
  store i32 0, i32* %cmap_entries, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  br label %if.end.3

if.else.2:                                        ; preds = %entry
  store i32 8, i32* %bits_per_pixel, align 4
  store i32 256, i32* %cmap_entries, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.else.2, %if.end
  %4 = load i32, i32* %cmap_entries, align 4
  %mul = mul nsw i32 %4, 3
  %add = add nsw i32 26, %mul
  %conv = sext i32 %add to i64
  store i64 %conv, i64* %headersize, align 8
  %5 = load i64, i64* %headersize, align 8
  %6 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest.addr, align 8
  %row_width = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %6, i32 0, i32 4
  %7 = load i32, i32* %row_width, align 4
  %conv4 = zext i32 %7 to i64
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 27
  %9 = load i32, i32* %output_height, align 4
  %conv5 = zext i32 %9 to i64
  %mul6 = mul nsw i64 %conv4, %conv5
  %add7 = add nsw i64 %5, %mul6
  store i64 %add7, i64* %bfSize, align 8
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %arraydecay, i8 0, i64 14, i32 1, i1 false)
  %arraydecay8 = getelementptr inbounds [12 x i8], [12 x i8]* %bmpcoreheader, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %arraydecay8, i8 0, i64 12, i32 1, i1 false)
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 0
  store i8 66, i8* %arrayidx, align 1
  %arrayidx9 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 1
  store i8 77, i8* %arrayidx9, align 1
  %10 = load i64, i64* %bfSize, align 8
  %and = and i64 %10, 255
  %conv10 = trunc i64 %and to i8
  %arrayidx11 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 2
  store i8 %conv10, i8* %arrayidx11, align 1
  %11 = load i64, i64* %bfSize, align 8
  %shr = ashr i64 %11, 8
  %and12 = and i64 %shr, 255
  %conv13 = trunc i64 %and12 to i8
  %arrayidx14 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 3
  store i8 %conv13, i8* %arrayidx14, align 1
  %12 = load i64, i64* %bfSize, align 8
  %shr15 = ashr i64 %12, 16
  %and16 = and i64 %shr15, 255
  %conv17 = trunc i64 %and16 to i8
  %arrayidx18 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 4
  store i8 %conv17, i8* %arrayidx18, align 1
  %13 = load i64, i64* %bfSize, align 8
  %shr19 = ashr i64 %13, 24
  %and20 = and i64 %shr19, 255
  %conv21 = trunc i64 %and20 to i8
  %arrayidx22 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 5
  store i8 %conv21, i8* %arrayidx22, align 1
  %14 = load i64, i64* %headersize, align 8
  %and23 = and i64 %14, 255
  %conv24 = trunc i64 %and23 to i8
  %arrayidx25 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 10
  store i8 %conv24, i8* %arrayidx25, align 1
  %15 = load i64, i64* %headersize, align 8
  %shr26 = ashr i64 %15, 8
  %and27 = and i64 %shr26, 255
  %conv28 = trunc i64 %and27 to i8
  %arrayidx29 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 11
  store i8 %conv28, i8* %arrayidx29, align 1
  %16 = load i64, i64* %headersize, align 8
  %shr30 = ashr i64 %16, 16
  %and31 = and i64 %shr30, 255
  %conv32 = trunc i64 %and31 to i8
  %arrayidx33 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 12
  store i8 %conv32, i8* %arrayidx33, align 1
  %17 = load i64, i64* %headersize, align 8
  %shr34 = ashr i64 %17, 24
  %and35 = and i64 %shr34, 255
  %conv36 = trunc i64 %and35 to i8
  %arrayidx37 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 13
  store i8 %conv36, i8* %arrayidx37, align 1
  %arrayidx38 = getelementptr inbounds [12 x i8], [12 x i8]* %bmpcoreheader, i32 0, i64 0
  store i8 12, i8* %arrayidx38, align 1
  %arrayidx39 = getelementptr inbounds [12 x i8], [12 x i8]* %bmpcoreheader, i32 0, i64 1
  store i8 0, i8* %arrayidx39, align 1
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 26
  %19 = load i32, i32* %output_width, align 4
  %and40 = and i32 %19, 255
  %conv41 = trunc i32 %and40 to i8
  %arrayidx42 = getelementptr inbounds [12 x i8], [12 x i8]* %bmpcoreheader, i32 0, i64 4
  store i8 %conv41, i8* %arrayidx42, align 1
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 26
  %21 = load i32, i32* %output_width43, align 4
  %shr44 = lshr i32 %21, 8
  %and45 = and i32 %shr44, 255
  %conv46 = trunc i32 %and45 to i8
  %arrayidx47 = getelementptr inbounds [12 x i8], [12 x i8]* %bmpcoreheader, i32 0, i64 5
  store i8 %conv46, i8* %arrayidx47, align 1
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_height48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 27
  %23 = load i32, i32* %output_height48, align 4
  %and49 = and i32 %23, 255
  %conv50 = trunc i32 %and49 to i8
  %arrayidx51 = getelementptr inbounds [12 x i8], [12 x i8]* %bmpcoreheader, i32 0, i64 6
  store i8 %conv50, i8* %arrayidx51, align 1
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_height52 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 27
  %25 = load i32, i32* %output_height52, align 4
  %shr53 = lshr i32 %25, 8
  %and54 = and i32 %shr53, 255
  %conv55 = trunc i32 %and54 to i8
  %arrayidx56 = getelementptr inbounds [12 x i8], [12 x i8]* %bmpcoreheader, i32 0, i64 7
  store i8 %conv55, i8* %arrayidx56, align 1
  %arrayidx57 = getelementptr inbounds [12 x i8], [12 x i8]* %bmpcoreheader, i32 0, i64 8
  store i8 1, i8* %arrayidx57, align 1
  %arrayidx58 = getelementptr inbounds [12 x i8], [12 x i8]* %bmpcoreheader, i32 0, i64 9
  store i8 0, i8* %arrayidx58, align 1
  %26 = load i32, i32* %bits_per_pixel, align 4
  %and59 = and i32 %26, 255
  %conv60 = trunc i32 %and59 to i8
  %arrayidx61 = getelementptr inbounds [12 x i8], [12 x i8]* %bmpcoreheader, i32 0, i64 10
  store i8 %conv60, i8* %arrayidx61, align 1
  %27 = load i32, i32* %bits_per_pixel, align 4
  %shr62 = ashr i32 %27, 8
  %and63 = and i32 %shr62, 255
  %conv64 = trunc i32 %and63 to i8
  %arrayidx65 = getelementptr inbounds [12 x i8], [12 x i8]* %bmpcoreheader, i32 0, i64 11
  store i8 %conv64, i8* %arrayidx65, align 1
  %arraydecay66 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i32 0
  %28 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest.addr, align 8
  %pub = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %28, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub, i32 0, i32 3
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %call = call i64 @fwrite(i8* %arraydecay66, i64 1, i64 14, %struct._IO_FILE* %29)
  %cmp67 = icmp ne i64 %call, 14
  br i1 %cmp67, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %if.end.3
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 5
  store i32 36, i32* %msg_code, align 4
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err70, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 0
  %34 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %36 = bitcast %struct.jpeg_decompress_struct* %35 to %struct.jpeg_common_struct*
  call void %34(%struct.jpeg_common_struct* %36)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %if.end.3
  %arraydecay72 = getelementptr inbounds [12 x i8], [12 x i8]* %bmpcoreheader, i32 0, i32 0
  %37 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest.addr, align 8
  %pub73 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %37, i32 0, i32 0
  %output_file74 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub73, i32 0, i32 3
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file74, align 8
  %call75 = call i64 @fwrite(i8* %arraydecay72, i64 1, i64 12, %struct._IO_FILE* %38)
  %cmp76 = icmp ne i64 %call75, 12
  br i1 %cmp76, label %if.then.78, label %if.end.83

if.then.78:                                       ; preds = %if.end.71
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err79 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 0
  %40 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err79, align 8
  %msg_code80 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %40, i32 0, i32 5
  store i32 36, i32* %msg_code80, align 4
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err81 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err81, align 8
  %error_exit82 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i32 0, i32 0
  %43 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit82, align 8
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %45 = bitcast %struct.jpeg_decompress_struct* %44 to %struct.jpeg_common_struct*
  call void %43(%struct.jpeg_common_struct* %45)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.78, %if.end.71
  %46 = load i32, i32* %cmap_entries, align 4
  %cmp84 = icmp sgt i32 %46, 0
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.83
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %48 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest.addr, align 8
  %49 = load i32, i32* %cmap_entries, align 4
  call void @write_colormap(%struct.jpeg_decompress_struct* %47, %struct.bmp_dest_struct* %48, i32 %49, i32 3)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %if.end.83
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_bmp_header(%struct.jpeg_decompress_struct* %cinfo, %struct.bmp_dest_struct* %dest) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %dest.addr = alloca %struct.bmp_dest_struct*, align 8
  %bmpfileheader = alloca [14 x i8], align 1
  %bmpinfoheader = alloca [40 x i8], align 16
  %headersize = alloca i64, align 8
  %bfSize = alloca i64, align 8
  %bits_per_pixel = alloca i32, align 4
  %cmap_entries = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.bmp_dest_struct* %dest, %struct.bmp_dest_struct** %dest.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 10
  %1 = load i32, i32* %out_color_space, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else.2

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 19
  %3 = load i32, i32* %quantize_colors, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  store i32 8, i32* %bits_per_pixel, align 4
  store i32 256, i32* %cmap_entries, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 24, i32* %bits_per_pixel, align 4
  store i32 0, i32* %cmap_entries, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  br label %if.end.3

if.else.2:                                        ; preds = %entry
  store i32 8, i32* %bits_per_pixel, align 4
  store i32 256, i32* %cmap_entries, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.else.2, %if.end
  %4 = load i32, i32* %cmap_entries, align 4
  %mul = mul nsw i32 %4, 4
  %add = add nsw i32 54, %mul
  %conv = sext i32 %add to i64
  store i64 %conv, i64* %headersize, align 8
  %5 = load i64, i64* %headersize, align 8
  %6 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest.addr, align 8
  %row_width = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %6, i32 0, i32 4
  %7 = load i32, i32* %row_width, align 4
  %conv4 = zext i32 %7 to i64
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 27
  %9 = load i32, i32* %output_height, align 4
  %conv5 = zext i32 %9 to i64
  %mul6 = mul nsw i64 %conv4, %conv5
  %add7 = add nsw i64 %5, %mul6
  store i64 %add7, i64* %bfSize, align 8
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %arraydecay, i8 0, i64 14, i32 1, i1 false)
  %arraydecay8 = getelementptr inbounds [40 x i8], [40 x i8]* %bmpinfoheader, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %arraydecay8, i8 0, i64 40, i32 1, i1 false)
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 0
  store i8 66, i8* %arrayidx, align 1
  %arrayidx9 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 1
  store i8 77, i8* %arrayidx9, align 1
  %10 = load i64, i64* %bfSize, align 8
  %and = and i64 %10, 255
  %conv10 = trunc i64 %and to i8
  %arrayidx11 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 2
  store i8 %conv10, i8* %arrayidx11, align 1
  %11 = load i64, i64* %bfSize, align 8
  %shr = ashr i64 %11, 8
  %and12 = and i64 %shr, 255
  %conv13 = trunc i64 %and12 to i8
  %arrayidx14 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 3
  store i8 %conv13, i8* %arrayidx14, align 1
  %12 = load i64, i64* %bfSize, align 8
  %shr15 = ashr i64 %12, 16
  %and16 = and i64 %shr15, 255
  %conv17 = trunc i64 %and16 to i8
  %arrayidx18 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 4
  store i8 %conv17, i8* %arrayidx18, align 1
  %13 = load i64, i64* %bfSize, align 8
  %shr19 = ashr i64 %13, 24
  %and20 = and i64 %shr19, 255
  %conv21 = trunc i64 %and20 to i8
  %arrayidx22 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 5
  store i8 %conv21, i8* %arrayidx22, align 1
  %14 = load i64, i64* %headersize, align 8
  %and23 = and i64 %14, 255
  %conv24 = trunc i64 %and23 to i8
  %arrayidx25 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 10
  store i8 %conv24, i8* %arrayidx25, align 1
  %15 = load i64, i64* %headersize, align 8
  %shr26 = ashr i64 %15, 8
  %and27 = and i64 %shr26, 255
  %conv28 = trunc i64 %and27 to i8
  %arrayidx29 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 11
  store i8 %conv28, i8* %arrayidx29, align 1
  %16 = load i64, i64* %headersize, align 8
  %shr30 = ashr i64 %16, 16
  %and31 = and i64 %shr30, 255
  %conv32 = trunc i64 %and31 to i8
  %arrayidx33 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 12
  store i8 %conv32, i8* %arrayidx33, align 1
  %17 = load i64, i64* %headersize, align 8
  %shr34 = ashr i64 %17, 24
  %and35 = and i64 %shr34, 255
  %conv36 = trunc i64 %and35 to i8
  %arrayidx37 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 13
  store i8 %conv36, i8* %arrayidx37, align 1
  %arrayidx38 = getelementptr inbounds [40 x i8], [40 x i8]* %bmpinfoheader, i32 0, i64 0
  store i8 40, i8* %arrayidx38, align 1
  %arrayidx39 = getelementptr inbounds [40 x i8], [40 x i8]* %bmpinfoheader, i32 0, i64 1
  store i8 0, i8* %arrayidx39, align 1
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 26
  %19 = load i32, i32* %output_width, align 4
  %and40 = and i32 %19, 255
  %conv41 = trunc i32 %and40 to i8
  %arrayidx42 = getelementptr inbounds [40 x i8], [40 x i8]* %bmpinfoheader, i32 0, i64 4
  store i8 %conv41, i8* %arrayidx42, align 1
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 26
  %21 = load i32, i32* %output_width43, align 4
  %shr44 = lshr i32 %21, 8
  %and45 = and i32 %shr44, 255
  %conv46 = trunc i32 %and45 to i8
  %arrayidx47 = getelementptr inbounds [40 x i8], [40 x i8]* %bmpinfoheader, i32 0, i64 5
  store i8 %conv46, i8* %arrayidx47, align 1
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 26
  %23 = load i32, i32* %output_width48, align 4
  %shr49 = lshr i32 %23, 16
  %and50 = and i32 %shr49, 255
  %conv51 = trunc i32 %and50 to i8
  %arrayidx52 = getelementptr inbounds [40 x i8], [40 x i8]* %bmpinfoheader, i32 0, i64 6
  store i8 %conv51, i8* %arrayidx52, align 1
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width53 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 26
  %25 = load i32, i32* %output_width53, align 4
  %shr54 = lshr i32 %25, 24
  %and55 = and i32 %shr54, 255
  %conv56 = trunc i32 %and55 to i8
  %arrayidx57 = getelementptr inbounds [40 x i8], [40 x i8]* %bmpinfoheader, i32 0, i64 7
  store i8 %conv56, i8* %arrayidx57, align 1
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_height58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 27
  %27 = load i32, i32* %output_height58, align 4
  %and59 = and i32 %27, 255
  %conv60 = trunc i32 %and59 to i8
  %arrayidx61 = getelementptr inbounds [40 x i8], [40 x i8]* %bmpinfoheader, i32 0, i64 8
  store i8 %conv60, i8* %arrayidx61, align 1
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_height62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 27
  %29 = load i32, i32* %output_height62, align 4
  %shr63 = lshr i32 %29, 8
  %and64 = and i32 %shr63, 255
  %conv65 = trunc i32 %and64 to i8
  %arrayidx66 = getelementptr inbounds [40 x i8], [40 x i8]* %bmpinfoheader, i32 0, i64 9
  store i8 %conv65, i8* %arrayidx66, align 1
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_height67 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 27
  %31 = load i32, i32* %output_height67, align 4
  %shr68 = lshr i32 %31, 16
  %and69 = and i32 %shr68, 255
  %conv70 = trunc i32 %and69 to i8
  %arrayidx71 = getelementptr inbounds [40 x i8], [40 x i8]* %bmpinfoheader, i32 0, i64 10
  store i8 %conv70, i8* %arrayidx71, align 1
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_height72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 27
  %33 = load i32, i32* %output_height72, align 4
  %shr73 = lshr i32 %33, 24
  %and74 = and i32 %shr73, 255
  %conv75 = trunc i32 %and74 to i8
  %arrayidx76 = getelementptr inbounds [40 x i8], [40 x i8]* %bmpinfoheader, i32 0, i64 11
  store i8 %conv75, i8* %arrayidx76, align 1
  %arrayidx77 = getelementptr inbounds [40 x i8], [40 x i8]* %bmpinfoheader, i32 0, i64 12
  store i8 1, i8* %arrayidx77, align 1
  %arrayidx78 = getelementptr inbounds [40 x i8], [40 x i8]* %bmpinfoheader, i32 0, i64 13
  store i8 0, i8* %arrayidx78, align 1
  %34 = load i32, i32* %bits_per_pixel, align 4
  %and79 = and i32 %34, 255
  %conv80 = trunc i32 %and79 to i8
  %arrayidx81 = getelementptr inbounds [40 x i8], [40 x i8]* %bmpinfoheader, i32 0, i64 14
  store i8 %conv80, i8* %arrayidx81, align 1
  %35 = load i32, i32* %bits_per_pixel, align 4
  %shr82 = ashr i32 %35, 8
  %and83 = and i32 %shr82, 255
  %conv84 = trunc i32 %and83 to i8
  %arrayidx85 = getelementptr inbounds [40 x i8], [40 x i8]* %bmpinfoheader, i32 0, i64 15
  store i8 %conv84, i8* %arrayidx85, align 1
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %density_unit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 51
  %37 = load i8, i8* %density_unit, align 1
  %conv86 = zext i8 %37 to i32
  %cmp87 = icmp eq i32 %conv86, 2
  br i1 %cmp87, label %if.then.89, label %if.end.150

if.then.89:                                       ; preds = %if.end.3
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %X_density = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 52
  %39 = load i16, i16* %X_density, align 2
  %conv90 = zext i16 %39 to i32
  %mul91 = mul nsw i32 %conv90, 100
  %conv92 = sext i32 %mul91 to i64
  %and93 = and i64 %conv92, 255
  %conv94 = trunc i64 %and93 to i8
  %arrayidx95 = getelementptr inbounds [40 x i8], [40 x i8]* %bmpinfoheader, i32 0, i64 24
  store i8 %conv94, i8* %arrayidx95, align 1
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %X_density96 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 52
  %41 = load i16, i16* %X_density96, align 2
  %conv97 = zext i16 %41 to i32
  %mul98 = mul nsw i32 %conv97, 100
  %conv99 = sext i32 %mul98 to i64
  %shr100 = ashr i64 %conv99, 8
  %and101 = and i64 %shr100, 255
  %conv102 = trunc i64 %and101 to i8
  %arrayidx103 = getelementptr inbounds [40 x i8], [40 x i8]* %bmpinfoheader, i32 0, i64 25
  store i8 %conv102, i8* %arrayidx103, align 1
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %X_density104 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 52
  %43 = load i16, i16* %X_density104, align 2
  %conv105 = zext i16 %43 to i32
  %mul106 = mul nsw i32 %conv105, 100
  %conv107 = sext i32 %mul106 to i64
  %shr108 = ashr i64 %conv107, 16
  %and109 = and i64 %shr108, 255
  %conv110 = trunc i64 %and109 to i8
  %arrayidx111 = getelementptr inbounds [40 x i8], [40 x i8]* %bmpinfoheader, i32 0, i64 26
  store i8 %conv110, i8* %arrayidx111, align 1
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %X_density112 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 52
  %45 = load i16, i16* %X_density112, align 2
  %conv113 = zext i16 %45 to i32
  %mul114 = mul nsw i32 %conv113, 100
  %conv115 = sext i32 %mul114 to i64
  %shr116 = ashr i64 %conv115, 24
  %and117 = and i64 %shr116, 255
  %conv118 = trunc i64 %and117 to i8
  %arrayidx119 = getelementptr inbounds [40 x i8], [40 x i8]* %bmpinfoheader, i32 0, i64 27
  store i8 %conv118, i8* %arrayidx119, align 1
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Y_density = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 53
  %47 = load i16, i16* %Y_density, align 2
  %conv120 = zext i16 %47 to i32
  %mul121 = mul nsw i32 %conv120, 100
  %conv122 = sext i32 %mul121 to i64
  %and123 = and i64 %conv122, 255
  %conv124 = trunc i64 %and123 to i8
  %arrayidx125 = getelementptr inbounds [40 x i8], [40 x i8]* %bmpinfoheader, i32 0, i64 28
  store i8 %conv124, i8* %arrayidx125, align 1
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Y_density126 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 53
  %49 = load i16, i16* %Y_density126, align 2
  %conv127 = zext i16 %49 to i32
  %mul128 = mul nsw i32 %conv127, 100
  %conv129 = sext i32 %mul128 to i64
  %shr130 = ashr i64 %conv129, 8
  %and131 = and i64 %shr130, 255
  %conv132 = trunc i64 %and131 to i8
  %arrayidx133 = getelementptr inbounds [40 x i8], [40 x i8]* %bmpinfoheader, i32 0, i64 29
  store i8 %conv132, i8* %arrayidx133, align 1
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Y_density134 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 53
  %51 = load i16, i16* %Y_density134, align 2
  %conv135 = zext i16 %51 to i32
  %mul136 = mul nsw i32 %conv135, 100
  %conv137 = sext i32 %mul136 to i64
  %shr138 = ashr i64 %conv137, 16
  %and139 = and i64 %shr138, 255
  %conv140 = trunc i64 %and139 to i8
  %arrayidx141 = getelementptr inbounds [40 x i8], [40 x i8]* %bmpinfoheader, i32 0, i64 30
  store i8 %conv140, i8* %arrayidx141, align 1
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Y_density142 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %52, i32 0, i32 53
  %53 = load i16, i16* %Y_density142, align 2
  %conv143 = zext i16 %53 to i32
  %mul144 = mul nsw i32 %conv143, 100
  %conv145 = sext i32 %mul144 to i64
  %shr146 = ashr i64 %conv145, 24
  %and147 = and i64 %shr146, 255
  %conv148 = trunc i64 %and147 to i8
  %arrayidx149 = getelementptr inbounds [40 x i8], [40 x i8]* %bmpinfoheader, i32 0, i64 31
  store i8 %conv148, i8* %arrayidx149, align 1
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.89, %if.end.3
  %54 = load i32, i32* %cmap_entries, align 4
  %and151 = and i32 %54, 255
  %conv152 = trunc i32 %and151 to i8
  %arrayidx153 = getelementptr inbounds [40 x i8], [40 x i8]* %bmpinfoheader, i32 0, i64 32
  store i8 %conv152, i8* %arrayidx153, align 1
  %55 = load i32, i32* %cmap_entries, align 4
  %shr154 = ashr i32 %55, 8
  %and155 = and i32 %shr154, 255
  %conv156 = trunc i32 %and155 to i8
  %arrayidx157 = getelementptr inbounds [40 x i8], [40 x i8]* %bmpinfoheader, i32 0, i64 33
  store i8 %conv156, i8* %arrayidx157, align 1
  %arraydecay158 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i32 0
  %56 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest.addr, align 8
  %pub = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %56, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub, i32 0, i32 3
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %call = call i64 @fwrite(i8* %arraydecay158, i64 1, i64 14, %struct._IO_FILE* %57)
  %cmp159 = icmp ne i64 %call, 14
  br i1 %cmp159, label %if.then.161, label %if.end.163

if.then.161:                                      ; preds = %if.end.150
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %58, i32 0, i32 0
  %59 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %59, i32 0, i32 5
  store i32 36, i32* %msg_code, align 4
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err162 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %60, i32 0, i32 0
  %61 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err162, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %61, i32 0, i32 0
  %62 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %64 = bitcast %struct.jpeg_decompress_struct* %63 to %struct.jpeg_common_struct*
  call void %62(%struct.jpeg_common_struct* %64)
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.161, %if.end.150
  %arraydecay164 = getelementptr inbounds [40 x i8], [40 x i8]* %bmpinfoheader, i32 0, i32 0
  %65 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest.addr, align 8
  %pub165 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %65, i32 0, i32 0
  %output_file166 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub165, i32 0, i32 3
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file166, align 8
  %call167 = call i64 @fwrite(i8* %arraydecay164, i64 1, i64 40, %struct._IO_FILE* %66)
  %cmp168 = icmp ne i64 %call167, 40
  br i1 %cmp168, label %if.then.170, label %if.end.175

if.then.170:                                      ; preds = %if.end.163
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err171 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %67, i32 0, i32 0
  %68 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err171, align 8
  %msg_code172 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %68, i32 0, i32 5
  store i32 36, i32* %msg_code172, align 4
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err173 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 0
  %70 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err173, align 8
  %error_exit174 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %70, i32 0, i32 0
  %71 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit174, align 8
  %72 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %73 = bitcast %struct.jpeg_decompress_struct* %72 to %struct.jpeg_common_struct*
  call void %71(%struct.jpeg_common_struct* %73)
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.170, %if.end.163
  %74 = load i32, i32* %cmap_entries, align 4
  %cmp176 = icmp sgt i32 %74, 0
  br i1 %cmp176, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %if.end.175
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %76 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest.addr, align 8
  %77 = load i32, i32* %cmap_entries, align 4
  call void @write_colormap(%struct.jpeg_decompress_struct* %75, %struct.bmp_dest_struct* %76, i32 %77, i32 4)
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.178, %if.end.175
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @write_colormap(%struct.jpeg_decompress_struct* %cinfo, %struct.bmp_dest_struct* %dest, i32 %map_colors, i32 %map_entry_size) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %dest.addr = alloca %struct.bmp_dest_struct*, align 8
  %map_colors.addr = alloca i32, align 4
  %map_entry_size.addr = alloca i32, align 4
  %colormap = alloca i8**, align 8
  %num_colors = alloca i32, align 4
  %outfile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.bmp_dest_struct* %dest, %struct.bmp_dest_struct** %dest.addr, align 8
  store i32 %map_colors, i32* %map_colors.addr, align 4
  store i32 %map_entry_size, i32* %map_entry_size.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 32
  %1 = load i8**, i8*** %colormap1, align 8
  store i8** %1, i8*** %colormap, align 8
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 31
  %3 = load i32, i32* %actual_number_of_colors, align 4
  store i32 %3, i32* %num_colors, align 4
  %4 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %dest.addr, align 8
  %pub = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %4, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub, i32 0, i32 3
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  store %struct._IO_FILE* %5, %struct._IO_FILE** %outfile, align 8
  %6 = load i8**, i8*** %colormap, align 8
  %cmp = icmp ne i8** %6, null
  br i1 %cmp, label %if.then, label %if.else.48

if.then:                                          ; preds = %entry
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 28
  %8 = load i32, i32* %out_color_components, align 4
  %cmp2 = icmp eq i32 %8, 3
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %num_colors, align 4
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i8**, i8*** %colormap, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 2
  %13 = load i8*, i8** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %14 = load i8, i8* %arrayidx5, align 1
  %conv = zext i8 %14 to i32
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call = call i32 @_IO_putc(i32 %conv, %struct._IO_FILE* %15)
  %16 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %16 to i64
  %17 = load i8**, i8*** %colormap, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %17, i64 1
  %18 = load i8*, i8** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %18, i64 %idxprom6
  %19 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %19 to i32
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call10 = call i32 @_IO_putc(i32 %conv9, %struct._IO_FILE* %20)
  %21 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %21 to i64
  %22 = load i8**, i8*** %colormap, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %22, i64 0
  %23 = load i8*, i8** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %23, i64 %idxprom11
  %24 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %24 to i32
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call15 = call i32 @_IO_putc(i32 %conv14, %struct._IO_FILE* %25)
  %26 = load i32, i32* %map_entry_size.addr, align 4
  %cmp16 = icmp eq i32 %26, 4
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %for.body
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call19 = call i32 @_IO_putc(i32 0, %struct._IO_FILE* %27)
  br label %if.end

if.end:                                           ; preds = %if.then.18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.47

if.else:                                          ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.44, %if.else
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %num_colors, align 4
  %cmp21 = icmp slt i32 %29, %30
  br i1 %cmp21, label %for.body.23, label %for.end.46

for.body.23:                                      ; preds = %for.cond.20
  %31 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %31 to i64
  %32 = load i8**, i8*** %colormap, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %32, i64 0
  %33 = load i8*, i8** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %33, i64 %idxprom24
  %34 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %34 to i32
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call28 = call i32 @_IO_putc(i32 %conv27, %struct._IO_FILE* %35)
  %36 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %36 to i64
  %37 = load i8**, i8*** %colormap, align 8
  %arrayidx30 = getelementptr inbounds i8*, i8** %37, i64 0
  %38 = load i8*, i8** %arrayidx30, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %38, i64 %idxprom29
  %39 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %39 to i32
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call33 = call i32 @_IO_putc(i32 %conv32, %struct._IO_FILE* %40)
  %41 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %41 to i64
  %42 = load i8**, i8*** %colormap, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %42, i64 0
  %43 = load i8*, i8** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %43, i64 %idxprom34
  %44 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %44 to i32
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call38 = call i32 @_IO_putc(i32 %conv37, %struct._IO_FILE* %45)
  %46 = load i32, i32* %map_entry_size.addr, align 4
  %cmp39 = icmp eq i32 %46, 4
  br i1 %cmp39, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %for.body.23
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call42 = call i32 @_IO_putc(i32 0, %struct._IO_FILE* %47)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %for.body.23
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43
  %48 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %48, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond.20

for.end.46:                                       ; preds = %for.cond.20
  br label %if.end.47

if.end.47:                                        ; preds = %for.end.46, %for.end
  br label %if.end.64

if.else.48:                                       ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.61, %if.else.48
  %49 = load i32, i32* %i, align 4
  %cmp50 = icmp slt i32 %49, 256
  br i1 %cmp50, label %for.body.52, label %for.end.63

for.body.52:                                      ; preds = %for.cond.49
  %50 = load i32, i32* %i, align 4
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call53 = call i32 @_IO_putc(i32 %50, %struct._IO_FILE* %51)
  %52 = load i32, i32* %i, align 4
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call54 = call i32 @_IO_putc(i32 %52, %struct._IO_FILE* %53)
  %54 = load i32, i32* %i, align 4
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call55 = call i32 @_IO_putc(i32 %54, %struct._IO_FILE* %55)
  %56 = load i32, i32* %map_entry_size.addr, align 4
  %cmp56 = icmp eq i32 %56, 4
  br i1 %cmp56, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %for.body.52
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call59 = call i32 @_IO_putc(i32 0, %struct._IO_FILE* %57)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %for.body.52
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.60
  %58 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %58, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond.49

for.end.63:                                       ; preds = %for.cond.49
  br label %if.end.64

if.end.64:                                        ; preds = %for.end.63, %if.end.47
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* %map_colors.addr, align 4
  %cmp65 = icmp sgt i32 %59, %60
  br i1 %cmp65, label %if.then.67, label %if.end.72

if.then.67:                                       ; preds = %if.end.64
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %61, i32 0, i32 0
  %62 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %62, i32 0, i32 5
  store i32 1039, i32* %msg_code, align 4
  %63 = load i32, i32* %i, align 4
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 0
  %65 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err68, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %65, i32 0, i32 6
  %i69 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx70 = getelementptr inbounds [8 x i32], [8 x i32]* %i69, i32 0, i64 0
  store i32 %63, i32* %arrayidx70, align 4
  %66 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err71 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %66, i32 0, i32 0
  %67 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err71, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %67, i32 0, i32 0
  %68 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %70 = bitcast %struct.jpeg_decompress_struct* %69 to %struct.jpeg_common_struct*
  call void %68(%struct.jpeg_common_struct* %70)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.67, %if.end.64
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.85, %if.end.72
  %71 = load i32, i32* %i, align 4
  %72 = load i32, i32* %map_colors.addr, align 4
  %cmp74 = icmp slt i32 %71, %72
  br i1 %cmp74, label %for.body.76, label %for.end.87

for.body.76:                                      ; preds = %for.cond.73
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call77 = call i32 @_IO_putc(i32 0, %struct._IO_FILE* %73)
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call78 = call i32 @_IO_putc(i32 0, %struct._IO_FILE* %74)
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call79 = call i32 @_IO_putc(i32 0, %struct._IO_FILE* %75)
  %76 = load i32, i32* %map_entry_size.addr, align 4
  %cmp80 = icmp eq i32 %76, 4
  br i1 %cmp80, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %for.body.76
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call83 = call i32 @_IO_putc(i32 0, %struct._IO_FILE* %77)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %for.body.76
  br label %for.inc.85

for.inc.85:                                       ; preds = %if.end.84
  %78 = load i32, i32* %i, align 4
  %inc86 = add nsw i32 %78, 1
  store i32 %inc86, i32* %i, align 4
  br label %for.cond.73

for.end.87:                                       ; preds = %for.cond.73
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
