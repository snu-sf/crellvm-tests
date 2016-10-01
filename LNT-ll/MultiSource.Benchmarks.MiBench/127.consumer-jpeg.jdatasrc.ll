; ModuleID = './MultiSource.Benchmarks.MiBench/127.consumer-jpeg.jdatasrc.bc'
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.my_source_mgr = type { %struct.jpeg_source_mgr, %struct._IO_FILE*, i8*, i32 }

; Function Attrs: nounwind uwtable
define void @jpeg_stdio_src(%struct.jpeg_decompress_struct* %cinfo, %struct._IO_FILE* %infile) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %infile.addr = alloca %struct._IO_FILE*, align 8
  %src = alloca %struct.my_source_mgr*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct._IO_FILE* %infile, %struct._IO_FILE** %infile.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 5
  %1 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src1, align 8
  %cmp = icmp eq %struct.jpeg_source_mgr* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i32 0, i32 0
  %4 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %6 = bitcast %struct.jpeg_decompress_struct* %5 to %struct.jpeg_common_struct*
  %call = call i8* %4(%struct.jpeg_common_struct* %6, i32 0, i64 80)
  %7 = bitcast i8* %call to %struct.jpeg_source_mgr*
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 5
  store %struct.jpeg_source_mgr* %7, %struct.jpeg_source_mgr** %src2, align 8
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 5
  %10 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src3, align 8
  %11 = bitcast %struct.jpeg_source_mgr* %10 to %struct.my_source_mgr*
  store %struct.my_source_mgr* %11, %struct.my_source_mgr** %src, align 8
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 1
  %13 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem4, align 8
  %alloc_small5 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %13, i32 0, i32 0
  %14 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small5, align 8
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %16 = bitcast %struct.jpeg_decompress_struct* %15 to %struct.jpeg_common_struct*
  %call6 = call i8* %14(%struct.jpeg_common_struct* %16, i32 0, i64 4096)
  %17 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8
  %buffer = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %17, i32 0, i32 2
  store i8* %call6, i8** %buffer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 5
  %19 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src7, align 8
  %20 = bitcast %struct.jpeg_source_mgr* %19 to %struct.my_source_mgr*
  store %struct.my_source_mgr* %20, %struct.my_source_mgr** %src, align 8
  %21 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8
  %pub = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %21, i32 0, i32 0
  %init_source = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %pub, i32 0, i32 2
  store void (%struct.jpeg_decompress_struct*)* @init_source, void (%struct.jpeg_decompress_struct*)** %init_source, align 8
  %22 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8
  %pub8 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %22, i32 0, i32 0
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %pub8, i32 0, i32 3
  store i32 (%struct.jpeg_decompress_struct*)* @fill_input_buffer, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8
  %23 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8
  %pub9 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %23, i32 0, i32 0
  %skip_input_data = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %pub9, i32 0, i32 4
  store void (%struct.jpeg_decompress_struct*, i64)* @skip_input_data, void (%struct.jpeg_decompress_struct*, i64)** %skip_input_data, align 8
  %24 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8
  %pub10 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %24, i32 0, i32 0
  %resync_to_restart = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %pub10, i32 0, i32 5
  store i32 (%struct.jpeg_decompress_struct*, i32)* @jpeg_resync_to_restart, i32 (%struct.jpeg_decompress_struct*, i32)** %resync_to_restart, align 8
  %25 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8
  %pub11 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %25, i32 0, i32 0
  %term_source = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %pub11, i32 0, i32 6
  store void (%struct.jpeg_decompress_struct*)* @term_source, void (%struct.jpeg_decompress_struct*)** %term_source, align 8
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %27 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8
  %infile12 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %27, i32 0, i32 1
  store %struct._IO_FILE* %26, %struct._IO_FILE** %infile12, align 8
  %28 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8
  %pub13 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %28, i32 0, i32 0
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %pub13, i32 0, i32 1
  store i64 0, i64* %bytes_in_buffer, align 8
  %29 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8
  %pub14 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %29, i32 0, i32 0
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %pub14, i32 0, i32 0
  store i8* null, i8** %next_input_byte, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_source(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %src = alloca %struct.my_source_mgr*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 5
  %1 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src1, align 8
  %2 = bitcast %struct.jpeg_source_mgr* %1 to %struct.my_source_mgr*
  store %struct.my_source_mgr* %2, %struct.my_source_mgr** %src, align 8
  %3 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8
  %start_of_file = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %3, i32 0, i32 3
  store i32 1, i32* %start_of_file, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @fill_input_buffer(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %src = alloca %struct.my_source_mgr*, align 8
  %nbytes = alloca i64, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 5
  %1 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src1, align 8
  %2 = bitcast %struct.jpeg_source_mgr* %1 to %struct.my_source_mgr*
  store %struct.my_source_mgr* %2, %struct.my_source_mgr** %src, align 8
  %3 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8
  %buffer = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  %5 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8
  %infile = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %5, i32 0, i32 1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call = call i64 @fread(i8* %4, i64 1, i64 4096, %struct._IO_FILE* %6)
  store i64 %call, i64* %nbytes, align 8
  %7 = load i64, i64* %nbytes, align 8
  %cmp = icmp ule i64 %7, 0
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %8 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8
  %start_of_file = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %8, i32 0, i32 3
  %9 = load i32, i32* %start_of_file, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 5
  store i32 41, i32* %msg_code, align 4
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 0
  %14 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %16 = bitcast %struct.jpeg_decompress_struct* %15 to %struct.jpeg_common_struct*
  call void %14(%struct.jpeg_common_struct* %16)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8
  %msg_code5 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 5
  store i32 116, i32* %msg_code5, align 4
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 1
  %21 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %23 = bitcast %struct.jpeg_decompress_struct* %22 to %struct.jpeg_common_struct*
  call void %21(%struct.jpeg_common_struct* %23, i32 -1)
  %24 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8
  %buffer7 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %24, i32 0, i32 2
  %25 = load i8*, i8** %buffer7, align 8
  %arrayidx = getelementptr inbounds i8, i8* %25, i64 0
  store i8 -1, i8* %arrayidx, align 1
  %26 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8
  %buffer8 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %26, i32 0, i32 2
  %27 = load i8*, i8** %buffer8, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 -39, i8* %arrayidx9, align 1
  store i64 2, i64* %nbytes, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %28 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8
  %buffer11 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %28, i32 0, i32 2
  %29 = load i8*, i8** %buffer11, align 8
  %30 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8
  %pub = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %30, i32 0, i32 0
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %pub, i32 0, i32 0
  store i8* %29, i8** %next_input_byte, align 8
  %31 = load i64, i64* %nbytes, align 8
  %32 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8
  %pub12 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %32, i32 0, i32 0
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %pub12, i32 0, i32 1
  store i64 %31, i64* %bytes_in_buffer, align 8
  %33 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8
  %start_of_file13 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %33, i32 0, i32 3
  store i32 0, i32* %start_of_file13, align 4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @skip_input_data(%struct.jpeg_decompress_struct* %cinfo, i64 %num_bytes) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %num_bytes.addr = alloca i64, align 8
  %src = alloca %struct.my_source_mgr*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i64 %num_bytes, i64* %num_bytes.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 5
  %1 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src1, align 8
  %2 = bitcast %struct.jpeg_source_mgr* %1 to %struct.my_source_mgr*
  store %struct.my_source_mgr* %2, %struct.my_source_mgr** %src, align 8
  %3 = load i64, i64* %num_bytes.addr, align 8
  %cmp = icmp sgt i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %4 = load i64, i64* %num_bytes.addr, align 8
  %5 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8
  %pub = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %5, i32 0, i32 0
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %pub, i32 0, i32 1
  %6 = load i64, i64* %bytes_in_buffer, align 8
  %cmp2 = icmp sgt i64 %4, %6
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8
  %pub3 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %7, i32 0, i32 0
  %bytes_in_buffer4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %pub3, i32 0, i32 1
  %8 = load i64, i64* %bytes_in_buffer4, align 8
  %9 = load i64, i64* %num_bytes.addr, align 8
  %sub = sub nsw i64 %9, %8
  store i64 %sub, i64* %num_bytes.addr, align 8
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 @fill_input_buffer(%struct.jpeg_decompress_struct* %10)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i64, i64* %num_bytes.addr, align 8
  %12 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8
  %pub5 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %12, i32 0, i32 0
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %pub5, i32 0, i32 0
  %13 = load i8*, i8** %next_input_byte, align 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %11
  store i8* %add.ptr, i8** %next_input_byte, align 8
  %14 = load i64, i64* %num_bytes.addr, align 8
  %15 = load %struct.my_source_mgr*, %struct.my_source_mgr** %src, align 8
  %pub6 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %15, i32 0, i32 0
  %bytes_in_buffer7 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %pub6, i32 0, i32 1
  %16 = load i64, i64* %bytes_in_buffer7, align 8
  %sub8 = sub i64 %16, %14
  store i64 %sub8, i64* %bytes_in_buffer7, align 8
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

declare i32 @jpeg_resync_to_restart(%struct.jpeg_decompress_struct*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @term_source(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  ret void
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
