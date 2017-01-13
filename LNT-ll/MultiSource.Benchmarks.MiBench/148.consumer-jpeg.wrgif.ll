; ModuleID = './MultiSource.Benchmarks.MiBench/148.consumer-jpeg.wrgif.bc'
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
%struct.gif_dest_struct = type { %struct.djpeg_dest_struct, %struct.jpeg_decompress_struct*, i32, i16, i32, i64, i32, i16, i32, i16, i16, i16, i16*, i64*, i32, [256 x i8] }

; Function Attrs: nounwind uwtable
define %struct.djpeg_dest_struct* @jinit_write_gif(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %dest = alloca %struct.gif_dest_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_decompress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 384)
  %5 = bitcast i8* %call to %struct.gif_dest_struct*
  store %struct.gif_dest_struct* %5, %struct.gif_dest_struct** %dest, align 8
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %7 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dest, align 8
  %cinfo1 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %7, i32 0, i32 1
  store %struct.jpeg_decompress_struct* %6, %struct.jpeg_decompress_struct** %cinfo1, align 8
  %8 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dest, align 8
  %pub = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %8, i32 0, i32 0
  %start_output = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub, i32 0, i32 0
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)* @start_output_gif, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %start_output, align 8
  %9 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dest, align 8
  %pub2 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %9, i32 0, i32 0
  %put_pixel_rows = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub2, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_pixel_rows, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %put_pixel_rows, align 8
  %10 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dest, align 8
  %pub3 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %10, i32 0, i32 0
  %finish_output = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub3, i32 0, i32 2
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)* @finish_output_gif, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %finish_output, align 8
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 10
  %12 = load i32, i32* %out_color_space, align 4
  %cmp = icmp ne i32 %12, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_space4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 10
  %14 = load i32, i32* %out_color_space4, align 4
  %cmp5 = icmp ne i32 %14, 2
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 5
  store i32 1014, i32* %msg_code, align 4
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 0
  %19 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %21 = bitcast %struct.jpeg_decompress_struct* %20 to %struct.jpeg_common_struct*
  call void %19(%struct.jpeg_common_struct* %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_space7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 10
  %23 = load i32, i32* %out_color_space7, align 4
  %cmp8 = icmp ne i32 %23, 1
  br i1 %cmp8, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 42
  %25 = load i32, i32* %data_precision, align 4
  %cmp9 = icmp sgt i32 %25, 8
  br i1 %cmp9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %lor.lhs.false, %if.end
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 19
  store i32 1, i32* %quantize_colors, align 4
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %desired_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 22
  %28 = load i32, i32* %desired_number_of_colors, align 4
  %cmp11 = icmp sgt i32 %28, 256
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.then.10
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %desired_number_of_colors13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 22
  store i32 256, i32* %desired_number_of_colors13, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.then.10
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %lor.lhs.false
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct* %30)
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 29
  %32 = load i32, i32* %output_components, align 4
  %cmp16 = icmp ne i32 %32, 1
  br i1 %cmp16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.end.15
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err18, align 8
  %msg_code19 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 5
  store i32 1012, i32* %msg_code19, align 4
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 0
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err20, align 8
  %error_exit21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %36, i32 0, i32 0
  %37 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit21, align 8
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %39 = bitcast %struct.jpeg_decompress_struct* %38 to %struct.jpeg_common_struct*
  call void %37(%struct.jpeg_common_struct* %39)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.17, %if.end.15
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 1
  %41 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem23, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %41, i32 0, i32 2
  %42 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %44 = bitcast %struct.jpeg_decompress_struct* %43 to %struct.jpeg_common_struct*
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 26
  %46 = load i32, i32* %output_width, align 4
  %call24 = call i8** %42(%struct.jpeg_common_struct* %44, i32 1, i32 %46, i32 1)
  %47 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dest, align 8
  %pub25 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %47, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub25, i32 0, i32 4
  store i8** %call24, i8*** %buffer, align 8
  %48 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dest, align 8
  %pub26 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %48, i32 0, i32 0
  %buffer_height = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub26, i32 0, i32 5
  store i32 1, i32* %buffer_height, align 4
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 1
  %50 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem27, align 8
  %alloc_small28 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %50, i32 0, i32 0
  %51 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small28, align 8
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %53 = bitcast %struct.jpeg_decompress_struct* %52 to %struct.jpeg_common_struct*
  %call29 = call i8* %51(%struct.jpeg_common_struct* %53, i32 1, i64 10006)
  %54 = bitcast i8* %call29 to i16*
  %55 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dest, align 8
  %hash_code = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %55, i32 0, i32 12
  store i16* %54, i16** %hash_code, align 8
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %56, i32 0, i32 1
  %57 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem30, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %57, i32 0, i32 1
  %58 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_large, align 8
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %60 = bitcast %struct.jpeg_decompress_struct* %59 to %struct.jpeg_common_struct*
  %call31 = call i8* %58(%struct.jpeg_common_struct* %60, i32 1, i64 40024)
  %61 = bitcast i8* %call31 to i64*
  %62 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dest, align 8
  %hash_value = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %62, i32 0, i32 13
  store i64* %61, i64** %hash_value, align 8
  %63 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dest, align 8
  %64 = bitcast %struct.gif_dest_struct* %63 to %struct.djpeg_dest_struct*
  ret %struct.djpeg_dest_struct* %64
}

; Function Attrs: nounwind uwtable
define internal void @start_output_gif(%struct.jpeg_decompress_struct* %cinfo, %struct.djpeg_dest_struct* %dinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %dinfo.addr = alloca %struct.djpeg_dest_struct*, align 8
  %dest = alloca %struct.gif_dest_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.djpeg_dest_struct* %dinfo, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  %0 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  %1 = bitcast %struct.djpeg_dest_struct* %0 to %struct.gif_dest_struct*
  store %struct.gif_dest_struct* %1, %struct.gif_dest_struct** %dest, align 8
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 19
  %3 = load i32, i32* %quantize_colors, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dest, align 8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 31
  %6 = load i32, i32* %actual_number_of_colors, align 4
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 32
  %8 = load i8**, i8*** %colormap, align 8
  call void @emit_header(%struct.gif_dest_struct* %4, i32 %6, i8** %8)
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dest, align 8
  call void @emit_header(%struct.gif_dest_struct* %9, i32 256, i8** null)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_pixel_rows(%struct.jpeg_decompress_struct* %cinfo, %struct.djpeg_dest_struct* %dinfo, i32 %rows_supplied) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %dinfo.addr = alloca %struct.djpeg_dest_struct*, align 8
  %rows_supplied.addr = alloca i32, align 4
  %dest = alloca %struct.gif_dest_struct*, align 8
  %ptr = alloca i8*, align 8
  %col = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.djpeg_dest_struct* %dinfo, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  store i32 %rows_supplied, i32* %rows_supplied.addr, align 4
  %0 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  %1 = bitcast %struct.djpeg_dest_struct* %0 to %struct.gif_dest_struct*
  store %struct.gif_dest_struct* %1, %struct.gif_dest_struct** %dest, align 8
  %2 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dest, align 8
  %pub = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %2, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub, i32 0, i32 4
  %3 = load i8**, i8*** %buffer, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8
  store i8* %4, i8** %ptr, align 8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 26
  %6 = load i32, i32* %output_width, align 4
  store i32 %6, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %col, align 4
  %cmp = icmp ugt i32 %7, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dest, align 8
  %9 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  %10 = load i8, i8* %9, align 1
  %conv = zext i8 %10 to i32
  call void @compress_byte(%struct.gif_dest_struct* %8, i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %col, align 4
  %dec = add i32 %11, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_output_gif(%struct.jpeg_decompress_struct* %cinfo, %struct.djpeg_dest_struct* %dinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %dinfo.addr = alloca %struct.djpeg_dest_struct*, align 8
  %dest = alloca %struct.gif_dest_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.djpeg_dest_struct* %dinfo, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  %0 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  %1 = bitcast %struct.djpeg_dest_struct* %0 to %struct.gif_dest_struct*
  store %struct.gif_dest_struct* %1, %struct.gif_dest_struct** %dest, align 8
  %2 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dest, align 8
  call void @compress_term(%struct.gif_dest_struct* %2)
  %3 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dest, align 8
  %pub = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %3, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub, i32 0, i32 3
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %call = call i32 @_IO_putc(i32 0, %struct._IO_FILE* %4)
  %5 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dest, align 8
  %pub1 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %5, i32 0, i32 0
  %output_file2 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub1, i32 0, i32 3
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file2, align 8
  %call3 = call i32 @_IO_putc(i32 59, %struct._IO_FILE* %6)
  %7 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dest, align 8
  %pub4 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %7, i32 0, i32 0
  %output_file5 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub4, i32 0, i32 3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file5, align 8
  %call6 = call i32 @fflush(%struct._IO_FILE* %8)
  %9 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dest, align 8
  %pub7 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %9, i32 0, i32 0
  %output_file8 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub7, i32 0, i32 3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file8, align 8
  %call9 = call i32 @ferror(%struct._IO_FILE* %10) #2
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 5
  store i32 36, i32* %msg_code, align 4
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 0
  %15 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %17 = bitcast %struct.jpeg_decompress_struct* %16 to %struct.jpeg_common_struct*
  call void %15(%struct.jpeg_common_struct* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct*) #1

; Function Attrs: nounwind uwtable
define internal void @emit_header(%struct.gif_dest_struct* %dinfo, i32 %num_colors, i8** %colormap) #0 {
entry:
  %dinfo.addr = alloca %struct.gif_dest_struct*, align 8
  %num_colors.addr = alloca i32, align 4
  %colormap.addr = alloca i8**, align 8
  %BitsPerPixel = alloca i32, align 4
  %ColorMapSize = alloca i32, align 4
  %InitCodeSize = alloca i32, align 4
  %FlagByte = alloca i32, align 4
  %cshift = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gif_dest_struct* %dinfo, %struct.gif_dest_struct** %dinfo.addr, align 8
  store i32 %num_colors, i32* %num_colors.addr, align 4
  store i8** %colormap, i8*** %colormap.addr, align 8
  %0 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %cinfo = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 42
  %2 = load i32, i32* %data_precision, align 4
  %sub = sub nsw i32 %2, 8
  store i32 %sub, i32* %cshift, align 4
  %3 = load i32, i32* %num_colors.addr, align 4
  %cmp = icmp sgt i32 %3, 256
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %cinfo1 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %4, i32 0, i32 1
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo1, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 0
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i32 0, i32 5
  store i32 1039, i32* %msg_code, align 4
  %7 = load i32, i32* %num_colors.addr, align 4
  %8 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %cinfo2 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %8, i32 0, i32 1
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo2, align 8
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 6
  %i4 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i4, i32 0, i64 0
  store i32 %7, i32* %arrayidx, align 4
  %11 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %cinfo5 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %11, i32 0, i32 1
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo5, align 8
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 0
  %14 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %15 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %cinfo7 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %15, i32 0, i32 1
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo7, align 8
  %17 = bitcast %struct.jpeg_decompress_struct* %16 to %struct.jpeg_common_struct*
  call void %14(%struct.jpeg_common_struct* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* %BitsPerPixel, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %18 = load i32, i32* %num_colors.addr, align 4
  %19 = load i32, i32* %BitsPerPixel, align 4
  %shl = shl i32 1, %19
  %cmp8 = icmp sgt i32 %18, %shl
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i32, i32* %BitsPerPixel, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %BitsPerPixel, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = load i32, i32* %BitsPerPixel, align 4
  %shl9 = shl i32 1, %21
  store i32 %shl9, i32* %ColorMapSize, align 4
  %22 = load i32, i32* %BitsPerPixel, align 4
  %cmp10 = icmp sle i32 %22, 1
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %while.end
  store i32 2, i32* %InitCodeSize, align 4
  br label %if.end.12

if.else:                                          ; preds = %while.end
  %23 = load i32, i32* %BitsPerPixel, align 4
  store i32 %23, i32* %InitCodeSize, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.11
  %24 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %pub = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %24, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub, i32 0, i32 3
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %call = call i32 @_IO_putc(i32 71, %struct._IO_FILE* %25)
  %26 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %pub13 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %26, i32 0, i32 0
  %output_file14 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub13, i32 0, i32 3
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file14, align 8
  %call15 = call i32 @_IO_putc(i32 73, %struct._IO_FILE* %27)
  %28 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %pub16 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %28, i32 0, i32 0
  %output_file17 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub16, i32 0, i32 3
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file17, align 8
  %call18 = call i32 @_IO_putc(i32 70, %struct._IO_FILE* %29)
  %30 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %pub19 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %30, i32 0, i32 0
  %output_file20 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub19, i32 0, i32 3
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file20, align 8
  %call21 = call i32 @_IO_putc(i32 56, %struct._IO_FILE* %31)
  %32 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %pub22 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %32, i32 0, i32 0
  %output_file23 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub22, i32 0, i32 3
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file23, align 8
  %call24 = call i32 @_IO_putc(i32 55, %struct._IO_FILE* %33)
  %34 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %pub25 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %34, i32 0, i32 0
  %output_file26 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub25, i32 0, i32 3
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file26, align 8
  %call27 = call i32 @_IO_putc(i32 97, %struct._IO_FILE* %35)
  %36 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %37 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %cinfo28 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %37, i32 0, i32 1
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo28, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 26
  %39 = load i32, i32* %output_width, align 4
  call void @put_word(%struct.gif_dest_struct* %36, i32 %39)
  %40 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %41 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %cinfo29 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %41, i32 0, i32 1
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo29, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 27
  %43 = load i32, i32* %output_height, align 4
  call void @put_word(%struct.gif_dest_struct* %40, i32 %43)
  store i32 128, i32* %FlagByte, align 4
  %44 = load i32, i32* %BitsPerPixel, align 4
  %sub30 = sub nsw i32 %44, 1
  %shl31 = shl i32 %sub30, 4
  %45 = load i32, i32* %FlagByte, align 4
  %or = or i32 %45, %shl31
  store i32 %or, i32* %FlagByte, align 4
  %46 = load i32, i32* %BitsPerPixel, align 4
  %sub32 = sub nsw i32 %46, 1
  %47 = load i32, i32* %FlagByte, align 4
  %or33 = or i32 %47, %sub32
  store i32 %or33, i32* %FlagByte, align 4
  %48 = load i32, i32* %FlagByte, align 4
  %49 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %pub34 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %49, i32 0, i32 0
  %output_file35 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub34, i32 0, i32 3
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file35, align 8
  %call36 = call i32 @_IO_putc(i32 %48, %struct._IO_FILE* %50)
  %51 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %pub37 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %51, i32 0, i32 0
  %output_file38 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub37, i32 0, i32 3
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file38, align 8
  %call39 = call i32 @_IO_putc(i32 0, %struct._IO_FILE* %52)
  %53 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %pub40 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %53, i32 0, i32 0
  %output_file41 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub40, i32 0, i32 3
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file41, align 8
  %call42 = call i32 @_IO_putc(i32 0, %struct._IO_FILE* %54)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %ColorMapSize, align 4
  %cmp43 = icmp slt i32 %55, %56
  br i1 %cmp43, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %num_colors.addr, align 4
  %cmp44 = icmp slt i32 %57, %58
  br i1 %cmp44, label %if.then.45, label %if.else.84

if.then.45:                                       ; preds = %for.body
  %59 = load i8**, i8*** %colormap.addr, align 8
  %cmp46 = icmp ne i8** %59, null
  br i1 %cmp46, label %if.then.47, label %if.else.79

if.then.47:                                       ; preds = %if.then.45
  %60 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %cinfo48 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %60, i32 0, i32 1
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo48, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %61, i32 0, i32 10
  %62 = load i32, i32* %out_color_space, align 4
  %cmp49 = icmp eq i32 %62, 2
  br i1 %cmp49, label %if.then.50, label %if.else.72

if.then.50:                                       ; preds = %if.then.47
  %63 = load i32, i32* %i, align 4
  %idxprom = sext i32 %63 to i64
  %64 = load i8**, i8*** %colormap.addr, align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %64, i64 0
  %65 = load i8*, i8** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %65, i64 %idxprom
  %66 = load i8, i8* %arrayidx52, align 1
  %conv = zext i8 %66 to i32
  %67 = load i32, i32* %cshift, align 4
  %shr = ashr i32 %conv, %67
  %68 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %pub53 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %68, i32 0, i32 0
  %output_file54 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub53, i32 0, i32 3
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file54, align 8
  %call55 = call i32 @_IO_putc(i32 %shr, %struct._IO_FILE* %69)
  %70 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %70 to i64
  %71 = load i8**, i8*** %colormap.addr, align 8
  %arrayidx57 = getelementptr inbounds i8*, i8** %71, i64 1
  %72 = load i8*, i8** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %72, i64 %idxprom56
  %73 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %73 to i32
  %74 = load i32, i32* %cshift, align 4
  %shr60 = ashr i32 %conv59, %74
  %75 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %pub61 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %75, i32 0, i32 0
  %output_file62 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub61, i32 0, i32 3
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file62, align 8
  %call63 = call i32 @_IO_putc(i32 %shr60, %struct._IO_FILE* %76)
  %77 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %77 to i64
  %78 = load i8**, i8*** %colormap.addr, align 8
  %arrayidx65 = getelementptr inbounds i8*, i8** %78, i64 2
  %79 = load i8*, i8** %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %79, i64 %idxprom64
  %80 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %80 to i32
  %81 = load i32, i32* %cshift, align 4
  %shr68 = ashr i32 %conv67, %81
  %82 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %pub69 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %82, i32 0, i32 0
  %output_file70 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub69, i32 0, i32 3
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file70, align 8
  %call71 = call i32 @_IO_putc(i32 %shr68, %struct._IO_FILE* %83)
  br label %if.end.78

if.else.72:                                       ; preds = %if.then.47
  %84 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %85 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %85 to i64
  %86 = load i8**, i8*** %colormap.addr, align 8
  %arrayidx74 = getelementptr inbounds i8*, i8** %86, i64 0
  %87 = load i8*, i8** %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %87, i64 %idxprom73
  %88 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %88 to i32
  %89 = load i32, i32* %cshift, align 4
  %shr77 = ashr i32 %conv76, %89
  call void @put_3bytes(%struct.gif_dest_struct* %84, i32 %shr77)
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.72, %if.then.50
  br label %if.end.83

if.else.79:                                       ; preds = %if.then.45
  %90 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %91 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %91, 255
  %92 = load i32, i32* %num_colors.addr, align 4
  %sub80 = sub nsw i32 %92, 1
  %div = sdiv i32 %sub80, 2
  %add = add nsw i32 %mul, %div
  %93 = load i32, i32* %num_colors.addr, align 4
  %sub81 = sub nsw i32 %93, 1
  %div82 = sdiv i32 %add, %sub81
  call void @put_3bytes(%struct.gif_dest_struct* %90, i32 %div82)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.79, %if.end.78
  br label %if.end.85

if.else.84:                                       ; preds = %for.body
  %94 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  call void @put_3bytes(%struct.gif_dest_struct* %94, i32 0)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.84, %if.end.83
  br label %for.inc

for.inc:                                          ; preds = %if.end.85
  %95 = load i32, i32* %i, align 4
  %inc86 = add nsw i32 %95, 1
  store i32 %inc86, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %96 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %pub87 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %96, i32 0, i32 0
  %output_file88 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub87, i32 0, i32 3
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file88, align 8
  %call89 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %97)
  %98 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  call void @put_word(%struct.gif_dest_struct* %98, i32 0)
  %99 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  call void @put_word(%struct.gif_dest_struct* %99, i32 0)
  %100 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %101 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %cinfo90 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %101, i32 0, i32 1
  %102 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo90, align 8
  %output_width91 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %102, i32 0, i32 26
  %103 = load i32, i32* %output_width91, align 4
  call void @put_word(%struct.gif_dest_struct* %100, i32 %103)
  %104 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %105 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %cinfo92 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %105, i32 0, i32 1
  %106 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo92, align 8
  %output_height93 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %106, i32 0, i32 27
  %107 = load i32, i32* %output_height93, align 4
  call void @put_word(%struct.gif_dest_struct* %104, i32 %107)
  %108 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %pub94 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %108, i32 0, i32 0
  %output_file95 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub94, i32 0, i32 3
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file95, align 8
  %call96 = call i32 @_IO_putc(i32 0, %struct._IO_FILE* %109)
  %110 = load i32, i32* %InitCodeSize, align 4
  %111 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %pub97 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %111, i32 0, i32 0
  %output_file98 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub97, i32 0, i32 3
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file98, align 8
  %call99 = call i32 @_IO_putc(i32 %110, %struct._IO_FILE* %112)
  %113 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %114 = load i32, i32* %InitCodeSize, align 4
  %add100 = add nsw i32 %114, 1
  call void @compress_init(%struct.gif_dest_struct* %113, i32 %add100)
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @put_word(%struct.gif_dest_struct* %dinfo, i32 %w) #0 {
entry:
  %dinfo.addr = alloca %struct.gif_dest_struct*, align 8
  %w.addr = alloca i32, align 4
  store %struct.gif_dest_struct* %dinfo, %struct.gif_dest_struct** %dinfo.addr, align 8
  store i32 %w, i32* %w.addr, align 4
  %0 = load i32, i32* %w.addr, align 4
  %and = and i32 %0, 255
  %1 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %pub = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %1, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub, i32 0, i32 3
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %call = call i32 @_IO_putc(i32 %and, %struct._IO_FILE* %2)
  %3 = load i32, i32* %w.addr, align 4
  %shr = lshr i32 %3, 8
  %and1 = and i32 %shr, 255
  %4 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %pub2 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %4, i32 0, i32 0
  %output_file3 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub2, i32 0, i32 3
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file3, align 8
  %call4 = call i32 @_IO_putc(i32 %and1, %struct._IO_FILE* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_3bytes(%struct.gif_dest_struct* %dinfo, i32 %val) #0 {
entry:
  %dinfo.addr = alloca %struct.gif_dest_struct*, align 8
  %val.addr = alloca i32, align 4
  store %struct.gif_dest_struct* %dinfo, %struct.gif_dest_struct** %dinfo.addr, align 8
  store i32 %val, i32* %val.addr, align 4
  %0 = load i32, i32* %val.addr, align 4
  %1 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %pub = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %1, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub, i32 0, i32 3
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %call = call i32 @_IO_putc(i32 %0, %struct._IO_FILE* %2)
  %3 = load i32, i32* %val.addr, align 4
  %4 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %pub1 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %4, i32 0, i32 0
  %output_file2 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub1, i32 0, i32 3
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file2, align 8
  %call3 = call i32 @_IO_putc(i32 %3, %struct._IO_FILE* %5)
  %6 = load i32, i32* %val.addr, align 4
  %7 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %pub4 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %7, i32 0, i32 0
  %output_file5 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub4, i32 0, i32 3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file5, align 8
  %call6 = call i32 @_IO_putc(i32 %6, %struct._IO_FILE* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compress_init(%struct.gif_dest_struct* %dinfo, i32 %i_bits) #0 {
entry:
  %dinfo.addr = alloca %struct.gif_dest_struct*, align 8
  %i_bits.addr = alloca i32, align 4
  store %struct.gif_dest_struct* %dinfo, %struct.gif_dest_struct** %dinfo.addr, align 8
  store i32 %i_bits, i32* %i_bits.addr, align 4
  %0 = load i32, i32* %i_bits.addr, align 4
  %1 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %init_bits = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %1, i32 0, i32 4
  store i32 %0, i32* %init_bits, align 4
  %2 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %n_bits = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %2, i32 0, i32 2
  store i32 %0, i32* %n_bits, align 4
  %3 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %n_bits1 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %3, i32 0, i32 2
  %4 = load i32, i32* %n_bits1, align 4
  %shl = shl i32 1, %4
  %sub = sub nsw i32 %shl, 1
  %conv = trunc i32 %sub to i16
  %5 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %maxcode = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %5, i32 0, i32 3
  store i16 %conv, i16* %maxcode, align 2
  %6 = load i32, i32* %i_bits.addr, align 4
  %sub2 = sub nsw i32 %6, 1
  %shl3 = shl i32 1, %sub2
  %conv4 = trunc i32 %shl3 to i16
  %7 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %ClearCode = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %7, i32 0, i32 9
  store i16 %conv4, i16* %ClearCode, align 2
  %8 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %ClearCode5 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %8, i32 0, i32 9
  %9 = load i16, i16* %ClearCode5, align 2
  %conv6 = sext i16 %9 to i32
  %add = add nsw i32 %conv6, 1
  %conv7 = trunc i32 %add to i16
  %10 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %EOFCode = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %10, i32 0, i32 10
  store i16 %conv7, i16* %EOFCode, align 2
  %11 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %ClearCode8 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %11, i32 0, i32 9
  %12 = load i16, i16* %ClearCode8, align 2
  %conv9 = sext i16 %12 to i32
  %add10 = add nsw i32 %conv9, 2
  %conv11 = trunc i32 %add10 to i16
  %13 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %free_code = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %13, i32 0, i32 11
  store i16 %conv11, i16* %free_code, align 2
  %14 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %first_byte = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %14, i32 0, i32 8
  store i32 1, i32* %first_byte, align 4
  %15 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %bytesinpkt = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %15, i32 0, i32 14
  store i32 0, i32* %bytesinpkt, align 4
  %16 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %cur_accum = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %16, i32 0, i32 5
  store i64 0, i64* %cur_accum, align 8
  %17 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %cur_bits = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %17, i32 0, i32 6
  store i32 0, i32* %cur_bits, align 4
  %18 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  call void @clear_hash(%struct.gif_dest_struct* %18)
  %19 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %20 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %ClearCode12 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %20, i32 0, i32 9
  %21 = load i16, i16* %ClearCode12, align 2
  call void @output(%struct.gif_dest_struct* %19, i16 signext %21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clear_hash(%struct.gif_dest_struct* %dinfo) #0 {
entry:
  %dinfo.addr = alloca %struct.gif_dest_struct*, align 8
  store %struct.gif_dest_struct* %dinfo, %struct.gif_dest_struct** %dinfo.addr, align 8
  %0 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %hash_code = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i32 0, i32 12
  %1 = load i16*, i16** %hash_code, align 8
  %2 = bitcast i16* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 10006, i32 1, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @output(%struct.gif_dest_struct* %dinfo, i16 signext %code) #0 {
entry:
  %dinfo.addr = alloca %struct.gif_dest_struct*, align 8
  %code.addr = alloca i16, align 2
  store %struct.gif_dest_struct* %dinfo, %struct.gif_dest_struct** %dinfo.addr, align 8
  store i16 %code, i16* %code.addr, align 2
  %0 = load i16, i16* %code.addr, align 2
  %conv = sext i16 %0 to i64
  %1 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %cur_bits = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %1, i32 0, i32 6
  %2 = load i32, i32* %cur_bits, align 4
  %sh_prom = zext i32 %2 to i64
  %shl = shl i64 %conv, %sh_prom
  %3 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %cur_accum = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %3, i32 0, i32 5
  %4 = load i64, i64* %cur_accum, align 8
  %or = or i64 %4, %shl
  store i64 %or, i64* %cur_accum, align 8
  %5 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %n_bits = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %5, i32 0, i32 2
  %6 = load i32, i32* %n_bits, align 4
  %7 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %cur_bits1 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %7, i32 0, i32 6
  %8 = load i32, i32* %cur_bits1, align 4
  %add = add nsw i32 %8, %6
  store i32 %add, i32* %cur_bits1, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %9 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %cur_bits2 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %9, i32 0, i32 6
  %10 = load i32, i32* %cur_bits2, align 4
  %cmp = icmp sge i32 %10, 8
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %cur_accum4 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %11, i32 0, i32 5
  %12 = load i64, i64* %cur_accum4, align 8
  %and = and i64 %12, 255
  %conv5 = trunc i64 %and to i8
  %13 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %bytesinpkt = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %13, i32 0, i32 14
  %14 = load i32, i32* %bytesinpkt, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %bytesinpkt, align 4
  %idxprom = sext i32 %inc to i64
  %15 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %packetbuf = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %15, i32 0, i32 15
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %packetbuf, i32 0, i64 %idxprom
  store i8 %conv5, i8* %arrayidx, align 1
  %16 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %bytesinpkt6 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %16, i32 0, i32 14
  %17 = load i32, i32* %bytesinpkt6, align 4
  %cmp7 = icmp sge i32 %17, 255
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %18 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  call void @flush_packet(%struct.gif_dest_struct* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %19 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %cur_accum9 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %19, i32 0, i32 5
  %20 = load i64, i64* %cur_accum9, align 8
  %shr = ashr i64 %20, 8
  store i64 %shr, i64* %cur_accum9, align 8
  %21 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %cur_bits10 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %21, i32 0, i32 6
  %22 = load i32, i32* %cur_bits10, align 4
  %sub = sub nsw i32 %22, 8
  store i32 %sub, i32* %cur_bits10, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %free_code = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %23, i32 0, i32 11
  %24 = load i16, i16* %free_code, align 2
  %conv11 = sext i16 %24 to i32
  %25 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %maxcode = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %25, i32 0, i32 3
  %26 = load i16, i16* %maxcode, align 2
  %conv12 = sext i16 %26 to i32
  %cmp13 = icmp sgt i32 %conv11, %conv12
  br i1 %cmp13, label %if.then.15, label %if.end.29

if.then.15:                                       ; preds = %while.end
  %27 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %n_bits16 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %27, i32 0, i32 2
  %28 = load i32, i32* %n_bits16, align 4
  %inc17 = add nsw i32 %28, 1
  store i32 %inc17, i32* %n_bits16, align 4
  %29 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %n_bits18 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %29, i32 0, i32 2
  %30 = load i32, i32* %n_bits18, align 4
  %cmp19 = icmp eq i32 %30, 12
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.then.15
  %31 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %maxcode22 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %31, i32 0, i32 3
  store i16 4096, i16* %maxcode22, align 2
  br label %if.end.28

if.else:                                          ; preds = %if.then.15
  %32 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %n_bits23 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %32, i32 0, i32 2
  %33 = load i32, i32* %n_bits23, align 4
  %shl24 = shl i32 1, %33
  %sub25 = sub nsw i32 %shl24, 1
  %conv26 = trunc i32 %sub25 to i16
  %34 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %maxcode27 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %34, i32 0, i32 3
  store i16 %conv26, i16* %maxcode27, align 2
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.21
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %while.end
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @flush_packet(%struct.gif_dest_struct* %dinfo) #0 {
entry:
  %dinfo.addr = alloca %struct.gif_dest_struct*, align 8
  store %struct.gif_dest_struct* %dinfo, %struct.gif_dest_struct** %dinfo.addr, align 8
  %0 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %bytesinpkt = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i32 0, i32 14
  %1 = load i32, i32* %bytesinpkt, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %2 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %bytesinpkt1 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %2, i32 0, i32 14
  %3 = load i32, i32* %bytesinpkt1, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %bytesinpkt1, align 4
  %conv = trunc i32 %3 to i8
  %4 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %packetbuf = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %4, i32 0, i32 15
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %packetbuf, i32 0, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %5 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %packetbuf2 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %5, i32 0, i32 15
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %packetbuf2, i32 0, i32 0
  %6 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %bytesinpkt3 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %6, i32 0, i32 14
  %7 = load i32, i32* %bytesinpkt3, align 4
  %conv4 = sext i32 %7 to i64
  %8 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %pub = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %8, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub, i32 0, i32 3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %call = call i64 @fwrite(i8* %arraydecay, i64 1, i64 %conv4, %struct._IO_FILE* %9)
  %10 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %bytesinpkt5 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %10, i32 0, i32 14
  %11 = load i32, i32* %bytesinpkt5, align 4
  %conv6 = sext i32 %11 to i64
  %cmp7 = icmp ne i64 %call, %conv6
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %12 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %cinfo = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %12, i32 0, i32 1
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 5
  store i32 36, i32* %msg_code, align 4
  %15 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %cinfo10 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %15, i32 0, i32 1
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo10, align 8
  %err11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err11, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 0
  %18 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %19 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %cinfo12 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %19, i32 0, i32 1
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo12, align 8
  %21 = bitcast %struct.jpeg_decompress_struct* %20 to %struct.jpeg_common_struct*
  call void %18(%struct.jpeg_common_struct* %21)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  %22 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %bytesinpkt13 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %22, i32 0, i32 14
  store i32 0, i32* %bytesinpkt13, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %entry
  ret void
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @compress_byte(%struct.gif_dest_struct* %dinfo, i32 %c) #0 {
entry:
  %dinfo.addr = alloca %struct.gif_dest_struct*, align 8
  %c.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %disp = alloca i32, align 4
  %probe_value = alloca i64, align 8
  store %struct.gif_dest_struct* %dinfo, %struct.gif_dest_struct** %dinfo.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %first_byte = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i32 0, i32 8
  %1 = load i32, i32* %first_byte, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %2 to i16
  %3 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %waiting_code = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %3, i32 0, i32 7
  store i16 %conv, i16* %waiting_code, align 2
  %4 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %first_byte1 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %4, i32 0, i32 8
  store i32 0, i32* %first_byte1, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %c.addr, align 4
  %shl = shl i32 %5, 4
  %6 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %waiting_code2 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %6, i32 0, i32 7
  %7 = load i16, i16* %waiting_code2, align 2
  %conv3 = sext i16 %7 to i32
  %add = add nsw i32 %shl, %conv3
  store i32 %add, i32* %i, align 4
  %8 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %8, 5003
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %9, 5003
  store i32 %sub, i32* %i, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %10 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %waiting_code7 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %10, i32 0, i32 7
  %11 = load i16, i16* %waiting_code7, align 2
  %conv8 = sext i16 %11 to i64
  %shl9 = shl i64 %conv8, 8
  %12 = load i32, i32* %c.addr, align 4
  %conv10 = sext i32 %12 to i64
  %or = or i64 %shl9, %conv10
  store i64 %or, i64* %probe_value, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %hash_code = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %14, i32 0, i32 12
  %15 = load i16*, i16** %hash_code, align 8
  %arrayidx = getelementptr inbounds i16, i16* %15, i64 %idxprom
  %16 = load i16, i16* %arrayidx, align 2
  %conv11 = sext i16 %16 to i32
  %cmp12 = icmp ne i32 %conv11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.55

if.then.14:                                       ; preds = %if.end.6
  %17 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %17 to i64
  %18 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %hash_value = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %18, i32 0, i32 13
  %19 = load i64*, i64** %hash_value, align 8
  %arrayidx16 = getelementptr inbounds i64, i64* %19, i64 %idxprom15
  %20 = load i64, i64* %arrayidx16, align 8
  %21 = load i64, i64* %probe_value, align 8
  %cmp17 = icmp eq i64 %20, %21
  br i1 %cmp17, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %if.then.14
  %22 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %22 to i64
  %23 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %hash_code21 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %23, i32 0, i32 12
  %24 = load i16*, i16** %hash_code21, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %24, i64 %idxprom20
  %25 = load i16, i16* %arrayidx22, align 2
  %26 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %waiting_code23 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %26, i32 0, i32 7
  store i16 %25, i16* %waiting_code23, align 2
  br label %return

if.end.24:                                        ; preds = %if.then.14
  %27 = load i32, i32* %i, align 4
  %cmp25 = icmp eq i32 %27, 0
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.end.24
  store i32 1, i32* %disp, align 4
  br label %if.end.29

if.else:                                          ; preds = %if.end.24
  %28 = load i32, i32* %i, align 4
  %sub28 = sub nsw i32 5003, %28
  store i32 %sub28, i32* %disp, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.27
  br label %for.cond

for.cond:                                         ; preds = %if.end.54, %if.end.29
  %29 = load i32, i32* %disp, align 4
  %30 = load i32, i32* %i, align 4
  %sub30 = sub nsw i32 %30, %29
  store i32 %sub30, i32* %i, align 4
  %31 = load i32, i32* %i, align 4
  %cmp31 = icmp slt i32 %31, 0
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %for.cond
  %32 = load i32, i32* %i, align 4
  %add34 = add nsw i32 %32, 5003
  store i32 %add34, i32* %i, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %for.cond
  %33 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %33 to i64
  %34 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %hash_code37 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %34, i32 0, i32 12
  %35 = load i16*, i16** %hash_code37, align 8
  %arrayidx38 = getelementptr inbounds i16, i16* %35, i64 %idxprom36
  %36 = load i16, i16* %arrayidx38, align 2
  %conv39 = sext i16 %36 to i32
  %cmp40 = icmp eq i32 %conv39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.35
  br label %for.end

if.end.43:                                        ; preds = %if.end.35
  %37 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %37 to i64
  %38 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %hash_value45 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %38, i32 0, i32 13
  %39 = load i64*, i64** %hash_value45, align 8
  %arrayidx46 = getelementptr inbounds i64, i64* %39, i64 %idxprom44
  %40 = load i64, i64* %arrayidx46, align 8
  %41 = load i64, i64* %probe_value, align 8
  %cmp47 = icmp eq i64 %40, %41
  br i1 %cmp47, label %if.then.49, label %if.end.54

if.then.49:                                       ; preds = %if.end.43
  %42 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %42 to i64
  %43 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %hash_code51 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %43, i32 0, i32 12
  %44 = load i16*, i16** %hash_code51, align 8
  %arrayidx52 = getelementptr inbounds i16, i16* %44, i64 %idxprom50
  %45 = load i16, i16* %arrayidx52, align 2
  %46 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %waiting_code53 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %46, i32 0, i32 7
  store i16 %45, i16* %waiting_code53, align 2
  br label %return

if.end.54:                                        ; preds = %if.end.43
  br label %for.cond

for.end:                                          ; preds = %if.then.42
  br label %if.end.55

if.end.55:                                        ; preds = %for.end, %if.end.6
  %47 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %48 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %waiting_code56 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %48, i32 0, i32 7
  %49 = load i16, i16* %waiting_code56, align 2
  call void @output(%struct.gif_dest_struct* %47, i16 signext %49)
  %50 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %free_code = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %50, i32 0, i32 11
  %51 = load i16, i16* %free_code, align 2
  %conv57 = sext i16 %51 to i32
  %cmp58 = icmp slt i32 %conv57, 4096
  br i1 %cmp58, label %if.then.60, label %if.else.68

if.then.60:                                       ; preds = %if.end.55
  %52 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %free_code61 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %52, i32 0, i32 11
  %53 = load i16, i16* %free_code61, align 2
  %inc = add i16 %53, 1
  store i16 %inc, i16* %free_code61, align 2
  %54 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %54 to i64
  %55 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %hash_code63 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %55, i32 0, i32 12
  %56 = load i16*, i16** %hash_code63, align 8
  %arrayidx64 = getelementptr inbounds i16, i16* %56, i64 %idxprom62
  store i16 %53, i16* %arrayidx64, align 2
  %57 = load i64, i64* %probe_value, align 8
  %58 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %58 to i64
  %59 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %hash_value66 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %59, i32 0, i32 13
  %60 = load i64*, i64** %hash_value66, align 8
  %arrayidx67 = getelementptr inbounds i64, i64* %60, i64 %idxprom65
  store i64 %57, i64* %arrayidx67, align 8
  br label %if.end.69

if.else.68:                                       ; preds = %if.end.55
  %61 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  call void @clear_block(%struct.gif_dest_struct* %61)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.68, %if.then.60
  %62 = load i32, i32* %c.addr, align 4
  %conv70 = trunc i32 %62 to i16
  %63 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %waiting_code71 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %63, i32 0, i32 7
  store i16 %conv70, i16* %waiting_code71, align 2
  br label %return

return:                                           ; preds = %if.end.69, %if.then.49, %if.then.19, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clear_block(%struct.gif_dest_struct* %dinfo) #0 {
entry:
  %dinfo.addr = alloca %struct.gif_dest_struct*, align 8
  store %struct.gif_dest_struct* %dinfo, %struct.gif_dest_struct** %dinfo.addr, align 8
  %0 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  call void @clear_hash(%struct.gif_dest_struct* %0)
  %1 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %ClearCode = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %1, i32 0, i32 9
  %2 = load i16, i16* %ClearCode, align 2
  %conv = sext i16 %2 to i32
  %add = add nsw i32 %conv, 2
  %conv1 = trunc i32 %add to i16
  %3 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %free_code = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %3, i32 0, i32 11
  store i16 %conv1, i16* %free_code, align 2
  %4 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %5 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %ClearCode2 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %5, i32 0, i32 9
  %6 = load i16, i16* %ClearCode2, align 2
  call void @output(%struct.gif_dest_struct* %4, i16 signext %6)
  %7 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %init_bits = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %7, i32 0, i32 4
  %8 = load i32, i32* %init_bits, align 4
  %9 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %n_bits = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %9, i32 0, i32 2
  store i32 %8, i32* %n_bits, align 4
  %10 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %n_bits3 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %10, i32 0, i32 2
  %11 = load i32, i32* %n_bits3, align 4
  %shl = shl i32 1, %11
  %sub = sub nsw i32 %shl, 1
  %conv4 = trunc i32 %sub to i16
  %12 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %maxcode = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %12, i32 0, i32 3
  store i16 %conv4, i16* %maxcode, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compress_term(%struct.gif_dest_struct* %dinfo) #0 {
entry:
  %dinfo.addr = alloca %struct.gif_dest_struct*, align 8
  store %struct.gif_dest_struct* %dinfo, %struct.gif_dest_struct** %dinfo.addr, align 8
  %0 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %first_byte = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i32 0, i32 8
  %1 = load i32, i32* %first_byte, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %3 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %waiting_code = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %3, i32 0, i32 7
  %4 = load i16, i16* %waiting_code, align 2
  call void @output(%struct.gif_dest_struct* %2, i16 signext %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %6 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %EOFCode = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %6, i32 0, i32 10
  %7 = load i16, i16* %EOFCode, align 2
  call void @output(%struct.gif_dest_struct* %5, i16 signext %7)
  %8 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %cur_bits = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %8, i32 0, i32 6
  %9 = load i32, i32* %cur_bits, align 4
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %if.then.1, label %if.end.7

if.then.1:                                        ; preds = %if.end
  %10 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %cur_accum = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %10, i32 0, i32 5
  %11 = load i64, i64* %cur_accum, align 8
  %and = and i64 %11, 255
  %conv = trunc i64 %and to i8
  %12 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %bytesinpkt = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %12, i32 0, i32 14
  %13 = load i32, i32* %bytesinpkt, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %bytesinpkt, align 4
  %idxprom = sext i32 %inc to i64
  %14 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %packetbuf = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %14, i32 0, i32 15
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %packetbuf, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %15 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  %bytesinpkt2 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %15, i32 0, i32 14
  %16 = load i32, i32* %bytesinpkt2, align 4
  %cmp3 = icmp sge i32 %16, 255
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.1
  %17 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  call void @flush_packet(%struct.gif_dest_struct* %17)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.1
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  %18 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %dinfo.addr, align 8
  call void @flush_packet(%struct.gif_dest_struct* %18)
  ret void
}

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
