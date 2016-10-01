; ModuleID = './MultiSource.Benchmarks.MiBench/108.consumer-jpeg.jdatadst.bc'
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
%struct.jpeg_comp_master = type opaque
%struct.jpeg_c_main_controller = type opaque
%struct.jpeg_c_prep_controller = type opaque
%struct.jpeg_c_coef_controller = type opaque
%struct.jpeg_marker_writer = type opaque
%struct.jpeg_color_converter = type opaque
%struct.jpeg_downsampler = type opaque
%struct.jpeg_forward_dct = type opaque
%struct.jpeg_entropy_encoder = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.my_destination_mgr = type { %struct.jpeg_destination_mgr, %struct._IO_FILE*, i8* }

; Function Attrs: nounwind uwtable
define void @jpeg_stdio_dest(%struct.jpeg_compress_struct* %cinfo, %struct._IO_FILE* %outfile) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %outfile.addr = alloca %struct._IO_FILE*, align 8
  %dest = alloca %struct.my_destination_mgr*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct._IO_FILE* %outfile, %struct._IO_FILE** %outfile.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 5
  %1 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest1, align 8
  %cmp = icmp eq %struct.jpeg_destination_mgr* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i32 0, i32 0
  %4 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %6 = bitcast %struct.jpeg_compress_struct* %5 to %struct.jpeg_common_struct*
  %call = call i8* %4(%struct.jpeg_common_struct* %6, i32 0, i64 56)
  %7 = bitcast i8* %call to %struct.jpeg_destination_mgr*
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 5
  store %struct.jpeg_destination_mgr* %7, %struct.jpeg_destination_mgr** %dest2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 5
  %10 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest3, align 8
  %11 = bitcast %struct.jpeg_destination_mgr* %10 to %struct.my_destination_mgr*
  store %struct.my_destination_mgr* %11, %struct.my_destination_mgr** %dest, align 8
  %12 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8
  %pub = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %12, i32 0, i32 0
  %init_destination = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %pub, i32 0, i32 2
  store void (%struct.jpeg_compress_struct*)* @init_destination, void (%struct.jpeg_compress_struct*)** %init_destination, align 8
  %13 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8
  %pub4 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %13, i32 0, i32 0
  %empty_output_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %pub4, i32 0, i32 3
  store i32 (%struct.jpeg_compress_struct*)* @empty_output_buffer, i32 (%struct.jpeg_compress_struct*)** %empty_output_buffer, align 8
  %14 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8
  %pub5 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %14, i32 0, i32 0
  %term_destination = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %pub5, i32 0, i32 4
  store void (%struct.jpeg_compress_struct*)* @term_destination, void (%struct.jpeg_compress_struct*)** %term_destination, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %16 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8
  %outfile6 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %16, i32 0, i32 1
  store %struct._IO_FILE* %15, %struct._IO_FILE** %outfile6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_destination(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %dest = alloca %struct.my_destination_mgr*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 5
  %1 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest1, align 8
  %2 = bitcast %struct.jpeg_destination_mgr* %1 to %struct.my_destination_mgr*
  store %struct.my_destination_mgr* %2, %struct.my_destination_mgr** %dest, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 1
  %4 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %4, i32 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %7 = bitcast %struct.jpeg_compress_struct* %6 to %struct.jpeg_common_struct*
  %call = call i8* %5(%struct.jpeg_common_struct* %7, i32 1, i64 4096)
  %8 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8
  %buffer = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %8, i32 0, i32 2
  store i8* %call, i8** %buffer, align 8
  %9 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8
  %buffer2 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %9, i32 0, i32 2
  %10 = load i8*, i8** %buffer2, align 8
  %11 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8
  %pub = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %11, i32 0, i32 0
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %pub, i32 0, i32 0
  store i8* %10, i8** %next_output_byte, align 8
  %12 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8
  %pub3 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %12, i32 0, i32 0
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %pub3, i32 0, i32 1
  store i64 4096, i64* %free_in_buffer, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @empty_output_buffer(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %dest = alloca %struct.my_destination_mgr*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 5
  %1 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest1, align 8
  %2 = bitcast %struct.jpeg_destination_mgr* %1 to %struct.my_destination_mgr*
  store %struct.my_destination_mgr* %2, %struct.my_destination_mgr** %dest, align 8
  %3 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8
  %buffer = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  %5 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8
  %outfile = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %5, i32 0, i32 1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call = call i64 @fwrite(i8* %4, i64 1, i64 4096, %struct._IO_FILE* %6)
  %cmp = icmp ne i64 %call, 4096
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 5
  store i32 36, i32* %msg_code, align 4
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 0
  %11 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %13 = bitcast %struct.jpeg_compress_struct* %12 to %struct.jpeg_common_struct*
  call void %11(%struct.jpeg_common_struct* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8
  %buffer3 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %14, i32 0, i32 2
  %15 = load i8*, i8** %buffer3, align 8
  %16 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8
  %pub = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %16, i32 0, i32 0
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %pub, i32 0, i32 0
  store i8* %15, i8** %next_output_byte, align 8
  %17 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8
  %pub4 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %17, i32 0, i32 0
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %pub4, i32 0, i32 1
  store i64 4096, i64* %free_in_buffer, align 8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @term_destination(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %dest = alloca %struct.my_destination_mgr*, align 8
  %datacount = alloca i64, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 5
  %1 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest1, align 8
  %2 = bitcast %struct.jpeg_destination_mgr* %1 to %struct.my_destination_mgr*
  store %struct.my_destination_mgr* %2, %struct.my_destination_mgr** %dest, align 8
  %3 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8
  %pub = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %3, i32 0, i32 0
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %pub, i32 0, i32 1
  %4 = load i64, i64* %free_in_buffer, align 8
  %sub = sub i64 4096, %4
  store i64 %sub, i64* %datacount, align 8
  %5 = load i64, i64* %datacount, align 8
  %cmp = icmp ugt i64 %5, 0
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %6 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8
  %buffer = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %6, i32 0, i32 2
  %7 = load i8*, i8** %buffer, align 8
  %8 = load i64, i64* %datacount, align 8
  %9 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8
  %outfile = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %9, i32 0, i32 1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call = call i64 @fwrite(i8* %7, i64 1, i64 %8, %struct._IO_FILE* %10)
  %11 = load i64, i64* %datacount, align 8
  %cmp2 = icmp ne i64 %call, %11
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 5
  store i32 36, i32* %msg_code, align 4
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 0
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %18 = bitcast %struct.jpeg_compress_struct* %17 to %struct.jpeg_common_struct*
  call void %16(%struct.jpeg_common_struct* %18)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %19 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8
  %outfile6 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %19, i32 0, i32 1
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile6, align 8
  %call7 = call i32 @fflush(%struct._IO_FILE* %20)
  %21 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %dest, align 8
  %outfile8 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %21, i32 0, i32 1
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile8, align 8
  %call9 = call i32 @ferror(%struct._IO_FILE* %22) #3
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.end.5
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err11, align 8
  %msg_code12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i32 0, i32 5
  store i32 36, i32* %msg_code12, align 4
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8
  %error_exit14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i32 0, i32 0
  %27 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit14, align 8
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %29 = bitcast %struct.jpeg_compress_struct* %28 to %struct.jpeg_common_struct*
  call void %27(%struct.jpeg_common_struct* %29)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.10, %if.end.5
  ret void
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
