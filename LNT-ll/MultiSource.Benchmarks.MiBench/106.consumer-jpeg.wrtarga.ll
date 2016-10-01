; ModuleID = './MultiSource.Benchmarks.MiBench/106.consumer-jpeg.wrtarga.bc'
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
%struct.tga_dest_struct = type { %struct.djpeg_dest_struct, i8*, i32 }

; Function Attrs: nounwind uwtable
define %struct.djpeg_dest_struct* @jinit_write_targa(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %dest = alloca %struct.tga_dest_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_decompress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 64)
  %5 = bitcast i8* %call to %struct.tga_dest_struct*
  store %struct.tga_dest_struct* %5, %struct.tga_dest_struct** %dest, align 8
  %6 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %pub = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %6, i32 0, i32 0
  %start_output = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub, i32 0, i32 0
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)* @start_output_tga, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %start_output, align 8
  %7 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %pub1 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %7, i32 0, i32 0
  %finish_output = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub1, i32 0, i32 2
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)* @finish_output_tga, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %finish_output, align 8
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct* %8)
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 26
  %10 = load i32, i32* %output_width, align 4
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 29
  %12 = load i32, i32* %output_components, align 4
  %mul = mul i32 %10, %12
  %13 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %buffer_width = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %13, i32 0, i32 2
  store i32 %mul, i32* %buffer_width, align 4
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 1
  %15 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem2, align 8
  %alloc_small3 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %15, i32 0, i32 0
  %16 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small3, align 8
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %18 = bitcast %struct.jpeg_decompress_struct* %17 to %struct.jpeg_common_struct*
  %19 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %buffer_width4 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %19, i32 0, i32 2
  %20 = load i32, i32* %buffer_width4, align 4
  %conv = zext i32 %20 to i64
  %mul5 = mul i64 %conv, 1
  %call6 = call i8* %16(%struct.jpeg_common_struct* %18, i32 1, i64 %mul5)
  %21 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %iobuffer = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %21, i32 0, i32 1
  store i8* %call6, i8** %iobuffer, align 8
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 1
  %23 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem7, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %23, i32 0, i32 2
  %24 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %26 = bitcast %struct.jpeg_decompress_struct* %25 to %struct.jpeg_common_struct*
  %27 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %buffer_width8 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %27, i32 0, i32 2
  %28 = load i32, i32* %buffer_width8, align 4
  %call9 = call i8** %24(%struct.jpeg_common_struct* %26, i32 1, i32 %28, i32 1)
  %29 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %pub10 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %29, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub10, i32 0, i32 4
  store i8** %call9, i8*** %buffer, align 8
  %30 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %pub11 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %30, i32 0, i32 0
  %buffer_height = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub11, i32 0, i32 5
  store i32 1, i32* %buffer_height, align 4
  %31 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %32 = bitcast %struct.tga_dest_struct* %31 to %struct.djpeg_dest_struct*
  ret %struct.djpeg_dest_struct* %32
}

; Function Attrs: nounwind uwtable
define internal void @start_output_tga(%struct.jpeg_decompress_struct* %cinfo, %struct.djpeg_dest_struct* %dinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %dinfo.addr = alloca %struct.djpeg_dest_struct*, align 8
  %dest = alloca %struct.tga_dest_struct*, align 8
  %num_colors = alloca i32, align 4
  %i = alloca i32, align 4
  %outfile = alloca %struct._IO_FILE*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.djpeg_dest_struct* %dinfo, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  %0 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  %1 = bitcast %struct.djpeg_dest_struct* %0 to %struct.tga_dest_struct*
  store %struct.tga_dest_struct* %1, %struct.tga_dest_struct** %dest, align 8
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 10
  %3 = load i32, i32* %out_color_space, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else.4

if.then:                                          ; preds = %entry
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %5 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  call void @write_header(%struct.jpeg_decompress_struct* %4, %struct.djpeg_dest_struct* %5, i32 0)
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 19
  %7 = load i32, i32* %quantize_colors, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %8 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %pub = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %8, i32 0, i32 0
  %put_pixel_rows = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_demapped_gray, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %put_pixel_rows, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %pub2 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %9, i32 0, i32 0
  %put_pixel_rows3 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub2, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_gray_rows, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %put_pixel_rows3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  br label %if.end.45

if.else.4:                                        ; preds = %entry
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_space5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 10
  %11 = load i32, i32* %out_color_space5, align 4
  %cmp6 = icmp eq i32 %11, 2
  br i1 %cmp6, label %if.then.7, label %if.else.39

if.then.7:                                        ; preds = %if.else.4
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %quantize_colors8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 19
  %13 = load i32, i32* %quantize_colors8, align 4
  %tobool9 = icmp ne i32 %13, 0
  br i1 %tobool9, label %if.then.10, label %if.else.35

if.then.10:                                       ; preds = %if.then.7
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 31
  %15 = load i32, i32* %actual_number_of_colors, align 4
  store i32 %15, i32* %num_colors, align 4
  %16 = load i32, i32* %num_colors, align 4
  %cmp11 = icmp sgt i32 %16, 256
  br i1 %cmp11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.then.10
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 5
  store i32 1039, i32* %msg_code, align 4
  %19 = load i32, i32* %num_colors, align 4
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 6
  %i14 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i14, i32 0, i64 0
  store i32 %19, i32* %arrayidx, align 4
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err15, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 0
  %24 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %26 = bitcast %struct.jpeg_decompress_struct* %25 to %struct.jpeg_common_struct*
  call void %24(%struct.jpeg_common_struct* %26)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %if.then.10
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %28 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  %29 = load i32, i32* %num_colors, align 4
  call void @write_header(%struct.jpeg_decompress_struct* %27, %struct.djpeg_dest_struct* %28, i32 %29)
  %30 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %pub17 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %30, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub17, i32 0, i32 3
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  store %struct._IO_FILE* %31, %struct._IO_FILE** %outfile, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %num_colors, align 4
  %cmp18 = icmp slt i32 %32, %33
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %i, align 4
  %idxprom = sext i32 %34 to i64
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 32
  %36 = load i8**, i8*** %colormap, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %36, i64 2
  %37 = load i8*, i8** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %37, i64 %idxprom
  %38 = load i8, i8* %arrayidx20, align 1
  %conv = zext i8 %38 to i32
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call = call i32 @_IO_putc(i32 %conv, %struct._IO_FILE* %39)
  %40 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %40 to i64
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 32
  %42 = load i8**, i8*** %colormap22, align 8
  %arrayidx23 = getelementptr inbounds i8*, i8** %42, i64 1
  %43 = load i8*, i8** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %43, i64 %idxprom21
  %44 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %44 to i32
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call26 = call i32 @_IO_putc(i32 %conv25, %struct._IO_FILE* %45)
  %46 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %46 to i64
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 32
  %48 = load i8**, i8*** %colormap28, align 8
  %arrayidx29 = getelementptr inbounds i8*, i8** %48, i64 0
  %49 = load i8*, i8** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %49, i64 %idxprom27
  %50 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %50 to i32
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call32 = call i32 @_IO_putc(i32 %conv31, %struct._IO_FILE* %51)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %52 = load i32, i32* %i, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %pub33 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %53, i32 0, i32 0
  %put_pixel_rows34 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub33, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_gray_rows, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %put_pixel_rows34, align 8
  br label %if.end.38

if.else.35:                                       ; preds = %if.then.7
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %55 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  call void @write_header(%struct.jpeg_decompress_struct* %54, %struct.djpeg_dest_struct* %55, i32 0)
  %56 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %pub36 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %56, i32 0, i32 0
  %put_pixel_rows37 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub36, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_pixel_rows, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %put_pixel_rows37, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %for.end
  br label %if.end.44

if.else.39:                                       ; preds = %if.else.4
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err40 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %57, i32 0, i32 0
  %58 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err40, align 8
  %msg_code41 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %58, i32 0, i32 5
  store i32 1034, i32* %msg_code41, align 4
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err42 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %59, i32 0, i32 0
  %60 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err42, align 8
  %error_exit43 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %60, i32 0, i32 0
  %61 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit43, align 8
  %62 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %63 = bitcast %struct.jpeg_decompress_struct* %62 to %struct.jpeg_common_struct*
  call void %61(%struct.jpeg_common_struct* %63)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.39, %if.end.38
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_output_tga(%struct.jpeg_decompress_struct* %cinfo, %struct.djpeg_dest_struct* %dinfo) #0 {
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
  %call2 = call i32 @ferror(%struct._IO_FILE* %3) #2
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
define internal void @write_header(%struct.jpeg_decompress_struct* %cinfo, %struct.djpeg_dest_struct* %dinfo, i32 %num_colors) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %dinfo.addr = alloca %struct.djpeg_dest_struct*, align 8
  %num_colors.addr = alloca i32, align 4
  %targaheader = alloca [18 x i8], align 16
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.djpeg_dest_struct* %dinfo, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  store i32 %num_colors, i32* %num_colors.addr, align 4
  %arraydecay = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %arraydecay, i8 0, i64 18, i32 1, i1 false)
  %0 = load i32, i32* %num_colors.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 1
  store i8 1, i8* %arrayidx, align 1
  %1 = load i32, i32* %num_colors.addr, align 4
  %and = and i32 %1, 255
  %conv = trunc i32 %and to i8
  %arrayidx1 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 5
  store i8 %conv, i8* %arrayidx1, align 1
  %2 = load i32, i32* %num_colors.addr, align 4
  %shr = ashr i32 %2, 8
  %conv2 = trunc i32 %shr to i8
  %arrayidx3 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 6
  store i8 %conv2, i8* %arrayidx3, align 1
  %arrayidx4 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 7
  store i8 24, i8* %arrayidx4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 26
  %4 = load i32, i32* %output_width, align 4
  %and5 = and i32 %4, 255
  %conv6 = trunc i32 %and5 to i8
  %arrayidx7 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 12
  store i8 %conv6, i8* %arrayidx7, align 1
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 26
  %6 = load i32, i32* %output_width8, align 4
  %shr9 = lshr i32 %6, 8
  %conv10 = trunc i32 %shr9 to i8
  %arrayidx11 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 13
  store i8 %conv10, i8* %arrayidx11, align 1
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 27
  %8 = load i32, i32* %output_height, align 4
  %and12 = and i32 %8, 255
  %conv13 = trunc i32 %and12 to i8
  %arrayidx14 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 14
  store i8 %conv13, i8* %arrayidx14, align 1
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_height15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 27
  %10 = load i32, i32* %output_height15, align 4
  %shr16 = lshr i32 %10, 8
  %conv17 = trunc i32 %shr16 to i8
  %arrayidx18 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 15
  store i8 %conv17, i8* %arrayidx18, align 1
  %arrayidx19 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 17
  store i8 32, i8* %arrayidx19, align 1
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 10
  %12 = load i32, i32* %out_color_space, align 4
  %cmp20 = icmp eq i32 %12, 1
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.end
  %arrayidx23 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 2
  store i8 3, i8* %arrayidx23, align 1
  %arrayidx24 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 16
  store i8 8, i8* %arrayidx24, align 1
  br label %if.end.34

if.else:                                          ; preds = %if.end
  %13 = load i32, i32* %num_colors.addr, align 4
  %cmp25 = icmp sgt i32 %13, 0
  br i1 %cmp25, label %if.then.27, label %if.else.30

if.then.27:                                       ; preds = %if.else
  %arrayidx28 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 2
  store i8 1, i8* %arrayidx28, align 1
  %arrayidx29 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 16
  store i8 8, i8* %arrayidx29, align 1
  br label %if.end.33

if.else.30:                                       ; preds = %if.else
  %arrayidx31 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 2
  store i8 2, i8* %arrayidx31, align 1
  %arrayidx32 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 16
  store i8 24, i8* %arrayidx32, align 1
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.27
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.22
  %arraydecay35 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i32 0
  %14 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %14, i32 0, i32 3
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %call = call i64 @fwrite(i8* %arraydecay35, i64 1, i64 18, %struct._IO_FILE* %15)
  %cmp36 = icmp ne i64 %call, 18
  br i1 %cmp36, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.34
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 5
  store i32 36, i32* %msg_code, align 4
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err39, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 0
  %20 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %22 = bitcast %struct.jpeg_decompress_struct* %21 to %struct.jpeg_common_struct*
  call void %20(%struct.jpeg_common_struct* %22)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.end.34
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_demapped_gray(%struct.jpeg_decompress_struct* %cinfo, %struct.djpeg_dest_struct* %dinfo, i32 %rows_supplied) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %dinfo.addr = alloca %struct.djpeg_dest_struct*, align 8
  %rows_supplied.addr = alloca i32, align 4
  %dest = alloca %struct.tga_dest_struct*, align 8
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %color_map0 = alloca i8*, align 8
  %col = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.djpeg_dest_struct* %dinfo, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  store i32 %rows_supplied, i32* %rows_supplied.addr, align 4
  %0 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  %1 = bitcast %struct.djpeg_dest_struct* %0 to %struct.tga_dest_struct*
  store %struct.tga_dest_struct* %1, %struct.tga_dest_struct** %dest, align 8
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 32
  %3 = load i8**, i8*** %colormap, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8
  store i8* %4, i8** %color_map0, align 8
  %5 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %pub = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %5, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub, i32 0, i32 4
  %6 = load i8**, i8*** %buffer, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %6, i64 0
  %7 = load i8*, i8** %arrayidx1, align 8
  store i8* %7, i8** %inptr, align 8
  %8 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %iobuffer = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %8, i32 0, i32 1
  %9 = load i8*, i8** %iobuffer, align 8
  store i8* %9, i8** %outptr, align 8
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
  %13 = load i8*, i8** %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %inptr, align 8
  %14 = load i8, i8* %13, align 1
  %conv = zext i8 %14 to i32
  %idxprom = sext i32 %conv to i64
  %15 = load i8*, i8** %color_map0, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %15, i64 %idxprom
  %16 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %16 to i32
  %conv4 = trunc i32 %conv3 to i8
  %17 = load i8*, i8** %outptr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr5, i8** %outptr, align 8
  store i8 %conv4, i8* %17, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %col, align 4
  %dec = add i32 %18, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %iobuffer6 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %19, i32 0, i32 1
  %20 = load i8*, i8** %iobuffer6, align 8
  %21 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %buffer_width = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %21, i32 0, i32 2
  %22 = load i32, i32* %buffer_width, align 4
  %conv7 = zext i32 %22 to i64
  %23 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %pub8 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %23, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub8, i32 0, i32 3
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %call = call i64 @fwrite(i8* %20, i64 1, i64 %conv7, %struct._IO_FILE* %24)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_gray_rows(%struct.jpeg_decompress_struct* %cinfo, %struct.djpeg_dest_struct* %dinfo, i32 %rows_supplied) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %dinfo.addr = alloca %struct.djpeg_dest_struct*, align 8
  %rows_supplied.addr = alloca i32, align 4
  %dest = alloca %struct.tga_dest_struct*, align 8
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %col = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.djpeg_dest_struct* %dinfo, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  store i32 %rows_supplied, i32* %rows_supplied.addr, align 4
  %0 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  %1 = bitcast %struct.djpeg_dest_struct* %0 to %struct.tga_dest_struct*
  store %struct.tga_dest_struct* %1, %struct.tga_dest_struct** %dest, align 8
  %2 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %pub = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %2, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub, i32 0, i32 4
  %3 = load i8**, i8*** %buffer, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8
  store i8* %4, i8** %inptr, align 8
  %5 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %iobuffer = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %5, i32 0, i32 1
  %6 = load i8*, i8** %iobuffer, align 8
  store i8* %6, i8** %outptr, align 8
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 26
  %8 = load i32, i32* %output_width, align 4
  store i32 %8, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %col, align 4
  %cmp = icmp ugt i32 %9, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %inptr, align 8
  %11 = load i8, i8* %10, align 1
  %conv = zext i8 %11 to i32
  %conv1 = trunc i32 %conv to i8
  %12 = load i8*, i8** %outptr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr2, i8** %outptr, align 8
  store i8 %conv1, i8* %12, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %col, align 4
  %dec = add i32 %13, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %iobuffer3 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %14, i32 0, i32 1
  %15 = load i8*, i8** %iobuffer3, align 8
  %16 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %buffer_width = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %16, i32 0, i32 2
  %17 = load i32, i32* %buffer_width, align 4
  %conv4 = zext i32 %17 to i64
  %18 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %pub5 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %18, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub5, i32 0, i32 3
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %call = call i64 @fwrite(i8* %15, i64 1, i64 %conv4, %struct._IO_FILE* %19)
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @put_pixel_rows(%struct.jpeg_decompress_struct* %cinfo, %struct.djpeg_dest_struct* %dinfo, i32 %rows_supplied) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %dinfo.addr = alloca %struct.djpeg_dest_struct*, align 8
  %rows_supplied.addr = alloca i32, align 4
  %dest = alloca %struct.tga_dest_struct*, align 8
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %col = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.djpeg_dest_struct* %dinfo, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  store i32 %rows_supplied, i32* %rows_supplied.addr, align 4
  %0 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %dinfo.addr, align 8
  %1 = bitcast %struct.djpeg_dest_struct* %0 to %struct.tga_dest_struct*
  store %struct.tga_dest_struct* %1, %struct.tga_dest_struct** %dest, align 8
  %2 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %pub = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %2, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub, i32 0, i32 4
  %3 = load i8**, i8*** %buffer, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8
  store i8* %4, i8** %inptr, align 8
  %5 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %iobuffer = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %5, i32 0, i32 1
  %6 = load i8*, i8** %iobuffer, align 8
  store i8* %6, i8** %outptr, align 8
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 26
  %8 = load i32, i32* %output_width, align 4
  store i32 %8, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %col, align 4
  %cmp = icmp ugt i32 %9, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %inptr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %10, i64 2
  %11 = load i8, i8* %arrayidx1, align 1
  %conv = zext i8 %11 to i32
  %conv2 = trunc i32 %conv to i8
  %12 = load i8*, i8** %outptr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 %conv2, i8* %arrayidx3, align 1
  %13 = load i8*, i8** %inptr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %14 to i32
  %conv6 = trunc i32 %conv5 to i8
  %15 = load i8*, i8** %outptr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 %conv6, i8* %arrayidx7, align 1
  %16 = load i8*, i8** %inptr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %17 to i32
  %conv10 = trunc i32 %conv9 to i8
  %18 = load i8*, i8** %outptr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %18, i64 2
  store i8 %conv10, i8* %arrayidx11, align 1
  %19 = load i8*, i8** %inptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 3
  store i8* %add.ptr, i8** %inptr, align 8
  %20 = load i8*, i8** %outptr, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %20, i64 3
  store i8* %add.ptr12, i8** %outptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %col, align 4
  %dec = add i32 %21, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %iobuffer13 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %22, i32 0, i32 1
  %23 = load i8*, i8** %iobuffer13, align 8
  %24 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %buffer_width = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %24, i32 0, i32 2
  %25 = load i32, i32* %buffer_width, align 4
  %conv14 = zext i32 %25 to i64
  %26 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %dest, align 8
  %pub15 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %26, i32 0, i32 0
  %output_file = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %pub15, i32 0, i32 3
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %output_file, align 8
  %call = call i64 @fwrite(i8* %23, i64 1, i64 %conv14, %struct._IO_FILE* %27)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
