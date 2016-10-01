; ModuleID = './MultiSource.Benchmarks.MiBench/145.consumer-jpeg.rdcolmap.bc'
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

; Function Attrs: nounwind uwtable
define void @read_color_map(%struct.jpeg_decompress_struct* %cinfo, %struct._IO_FILE* %infile) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %infile.addr = alloca %struct._IO_FILE*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct._IO_FILE* %infile, %struct._IO_FILE** %infile.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 2
  %2 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_decompress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8** %2(%struct.jpeg_common_struct* %4, i32 1, i32 256, i32 3)
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 32
  store i8** %call, i8*** %colormap, align 8
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 31
  store i32 0, i32* %actual_number_of_colors, align 4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call1 = call i32 @_IO_getc(%struct._IO_FILE* %7)
  switch i32 %call1, label %sw.default [
    i32 71, label %sw.bb
    i32 80, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  call void @read_gif_map(%struct.jpeg_decompress_struct* %8, %struct._IO_FILE* %9)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  call void @read_ppm_map(%struct.jpeg_decompress_struct* %10, %struct._IO_FILE* %11)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 5
  store i32 1038, i32* %msg_code, align 4
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 0
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %18 = bitcast %struct.jpeg_decompress_struct* %17 to %struct.jpeg_common_struct*
  call void %16(%struct.jpeg_common_struct* %18)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.2, %sw.bb
  ret void
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @read_gif_map(%struct.jpeg_decompress_struct* %cinfo, %struct._IO_FILE* %infile) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %infile.addr = alloca %struct._IO_FILE*, align 8
  %header = alloca [13 x i32], align 16
  %i = alloca i32, align 4
  %colormaplen = alloca i32, align 4
  %R = alloca i32, align 4
  %G = alloca i32, align 4
  %B = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct._IO_FILE* %infile, %struct._IO_FILE** %infile.addr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %1)
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [13 x i32], [13 x i32]* %header, i32 0, i64 %idxprom
  store i32 %call, i32* %arrayidx, align 4
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 0
  %4 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i32 0, i32 5
  store i32 1038, i32* %msg_code, align 4
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 0
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i32 0, i32 0
  %7 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %9 = bitcast %struct.jpeg_decompress_struct* %8 to %struct.jpeg_common_struct*
  call void %7(%struct.jpeg_common_struct* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx3 = getelementptr inbounds [13 x i32], [13 x i32]* %header, i32 0, i64 1
  %11 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp ne i32 %11, 73
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %arrayidx5 = getelementptr inbounds [13 x i32], [13 x i32]* %header, i32 0, i64 2
  %12 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp ne i32 %12, 70
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %lor.lhs.false, %for.end
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8
  %msg_code9 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 5
  store i32 1038, i32* %msg_code9, align 4
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8
  %error_exit11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 0
  %17 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit11, align 8
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %19 = bitcast %struct.jpeg_decompress_struct* %18 to %struct.jpeg_common_struct*
  call void %17(%struct.jpeg_common_struct* %19)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %lor.lhs.false
  %arrayidx13 = getelementptr inbounds [13 x i32], [13 x i32]* %header, i32 0, i64 10
  %20 = load i32, i32* %arrayidx13, align 4
  %and = and i32 %20, 128
  %cmp14 = icmp eq i32 %and, 0
  br i1 %cmp14, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %if.end.12
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err16, align 8
  %msg_code17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i32 0, i32 5
  store i32 1038, i32* %msg_code17, align 4
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err18, align 8
  %error_exit19 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i32 0, i32 0
  %25 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit19, align 8
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %27 = bitcast %struct.jpeg_decompress_struct* %26 to %struct.jpeg_common_struct*
  call void %25(%struct.jpeg_common_struct* %27)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.15, %if.end.12
  %arrayidx21 = getelementptr inbounds [13 x i32], [13 x i32]* %header, i32 0, i64 10
  %28 = load i32, i32* %arrayidx21, align 4
  %and22 = and i32 %28, 7
  %shl = shl i32 2, %and22
  store i32 %shl, i32* %colormaplen, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.43, %if.end.20
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %colormaplen, align 4
  %cmp24 = icmp slt i32 %29, %30
  br i1 %cmp24, label %for.body.25, label %for.end.45

for.body.25:                                      ; preds = %for.cond.23
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call26 = call i32 @_IO_getc(%struct._IO_FILE* %31)
  store i32 %call26, i32* %R, align 4
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call27 = call i32 @_IO_getc(%struct._IO_FILE* %32)
  store i32 %call27, i32* %G, align 4
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call28 = call i32 @_IO_getc(%struct._IO_FILE* %33)
  store i32 %call28, i32* %B, align 4
  %34 = load i32, i32* %R, align 4
  %cmp29 = icmp eq i32 %34, -1
  br i1 %cmp29, label %if.then.34, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %for.body.25
  %35 = load i32, i32* %G, align 4
  %cmp31 = icmp eq i32 %35, -1
  br i1 %cmp31, label %if.then.34, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.30
  %36 = load i32, i32* %B, align 4
  %cmp33 = icmp eq i32 %36, -1
  br i1 %cmp33, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %lor.lhs.false.32, %lor.lhs.false.30, %for.body.25
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 0
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err35, align 8
  %msg_code36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %38, i32 0, i32 5
  store i32 1038, i32* %msg_code36, align 4
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 0
  %40 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err37, align 8
  %error_exit38 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %40, i32 0, i32 0
  %41 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit38, align 8
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %43 = bitcast %struct.jpeg_decompress_struct* %42 to %struct.jpeg_common_struct*
  call void %41(%struct.jpeg_common_struct* %43)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.34, %lor.lhs.false.32
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %45 = load i32, i32* %R, align 4
  %shl40 = shl i32 %45, 0
  %46 = load i32, i32* %G, align 4
  %shl41 = shl i32 %46, 0
  %47 = load i32, i32* %B, align 4
  %shl42 = shl i32 %47, 0
  call void @add_map_entry(%struct.jpeg_decompress_struct* %44, i32 %shl40, i32 %shl41, i32 %shl42)
  br label %for.inc.43

for.inc.43:                                       ; preds = %if.end.39
  %48 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %48, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond.23

for.end.45:                                       ; preds = %for.cond.23
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @read_ppm_map(%struct.jpeg_decompress_struct* %cinfo, %struct._IO_FILE* %infile) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %infile.addr = alloca %struct._IO_FILE*, align 8
  %c = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %maxval = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %R = alloca i32, align 4
  %G = alloca i32, align 4
  %B = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct._IO_FILE* %infile, %struct._IO_FILE** %infile.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %c, align 4
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call1 = call i32 @read_pbm_integer(%struct.jpeg_decompress_struct* %1, %struct._IO_FILE* %2)
  store i32 %call1, i32* %w, align 4
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2 = call i32 @read_pbm_integer(%struct.jpeg_decompress_struct* %3, %struct._IO_FILE* %4)
  store i32 %call2, i32* %h, align 4
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call3 = call i32 @read_pbm_integer(%struct.jpeg_decompress_struct* %5, %struct._IO_FILE* %6)
  store i32 %call3, i32* %maxval, align 4
  %7 = load i32, i32* %w, align 4
  %cmp = icmp ule i32 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i32, i32* %h, align 4
  %cmp4 = icmp ule i32 %8, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %9 = load i32, i32* %maxval, align 4
  %cmp6 = icmp ule i32 %9, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.5, %lor.lhs.false, %entry
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 5
  store i32 1038, i32* %msg_code, align 4
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 0
  %14 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %16 = bitcast %struct.jpeg_decompress_struct* %15 to %struct.jpeg_common_struct*
  call void %14(%struct.jpeg_common_struct* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.5
  %17 = load i32, i32* %maxval, align 4
  %cmp8 = icmp ne i32 %17, 255
  br i1 %cmp8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.end
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8
  %msg_code11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 5
  store i32 1038, i32* %msg_code11, align 4
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err12, align 8
  %error_exit13 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 0
  %22 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit13, align 8
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %24 = bitcast %struct.jpeg_decompress_struct* %23 to %struct.jpeg_common_struct*
  call void %22(%struct.jpeg_common_struct* %24)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.9, %if.end
  %25 = load i32, i32* %c, align 4
  switch i32 %25, label %sw.default [
    i32 51, label %sw.bb
    i32 54, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %if.end.14
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %sw.bb
  %26 = load i32, i32* %row, align 4
  %27 = load i32, i32* %h, align 4
  %cmp15 = icmp ult i32 %26, %27
  br i1 %cmp15, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %col, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %for.body
  %28 = load i32, i32* %col, align 4
  %29 = load i32, i32* %w, align 4
  %cmp17 = icmp ult i32 %28, %29
  br i1 %cmp17, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.16
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call19 = call i32 @read_pbm_integer(%struct.jpeg_decompress_struct* %30, %struct._IO_FILE* %31)
  store i32 %call19, i32* %R, align 4
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call20 = call i32 @read_pbm_integer(%struct.jpeg_decompress_struct* %32, %struct._IO_FILE* %33)
  store i32 %call20, i32* %G, align 4
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call21 = call i32 @read_pbm_integer(%struct.jpeg_decompress_struct* %34, %struct._IO_FILE* %35)
  store i32 %call21, i32* %B, align 4
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %37 = load i32, i32* %R, align 4
  %38 = load i32, i32* %G, align 4
  %39 = load i32, i32* %B, align 4
  call void @add_map_entry(%struct.jpeg_decompress_struct* %36, i32 %37, i32 %38, i32 %39)
  br label %for.inc

for.inc:                                          ; preds = %for.body.18
  %40 = load i32, i32* %col, align 4
  %inc = add i32 %40, 1
  store i32 %inc, i32* %col, align 4
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end
  %41 = load i32, i32* %row, align 4
  %inc23 = add i32 %41, 1
  store i32 %inc23, i32* %row, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.end.14
  store i32 0, i32* %row, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.49, %sw.bb.25
  %42 = load i32, i32* %row, align 4
  %43 = load i32, i32* %h, align 4
  %cmp27 = icmp ult i32 %42, %43
  br i1 %cmp27, label %for.body.28, label %for.end.51

for.body.28:                                      ; preds = %for.cond.26
  store i32 0, i32* %col, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.46, %for.body.28
  %44 = load i32, i32* %col, align 4
  %45 = load i32, i32* %w, align 4
  %cmp30 = icmp ult i32 %44, %45
  br i1 %cmp30, label %for.body.31, label %for.end.48

for.body.31:                                      ; preds = %for.cond.29
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call32 = call i32 @pbm_getc(%struct._IO_FILE* %46)
  store i32 %call32, i32* %R, align 4
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call33 = call i32 @pbm_getc(%struct._IO_FILE* %47)
  store i32 %call33, i32* %G, align 4
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call34 = call i32 @pbm_getc(%struct._IO_FILE* %48)
  store i32 %call34, i32* %B, align 4
  %49 = load i32, i32* %R, align 4
  %cmp35 = icmp eq i32 %49, -1
  br i1 %cmp35, label %if.then.40, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %for.body.31
  %50 = load i32, i32* %G, align 4
  %cmp37 = icmp eq i32 %50, -1
  br i1 %cmp37, label %if.then.40, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false.36
  %51 = load i32, i32* %B, align 4
  %cmp39 = icmp eq i32 %51, -1
  br i1 %cmp39, label %if.then.40, label %if.end.45

if.then.40:                                       ; preds = %lor.lhs.false.38, %lor.lhs.false.36, %for.body.31
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %52, i32 0, i32 0
  %53 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err41, align 8
  %msg_code42 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %53, i32 0, i32 5
  store i32 1038, i32* %msg_code42, align 4
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %54, i32 0, i32 0
  %55 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err43, align 8
  %error_exit44 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %55, i32 0, i32 0
  %56 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit44, align 8
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %58 = bitcast %struct.jpeg_decompress_struct* %57 to %struct.jpeg_common_struct*
  call void %56(%struct.jpeg_common_struct* %58)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.40, %lor.lhs.false.38
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %60 = load i32, i32* %R, align 4
  %61 = load i32, i32* %G, align 4
  %62 = load i32, i32* %B, align 4
  call void @add_map_entry(%struct.jpeg_decompress_struct* %59, i32 %60, i32 %61, i32 %62)
  br label %for.inc.46

for.inc.46:                                       ; preds = %if.end.45
  %63 = load i32, i32* %col, align 4
  %inc47 = add i32 %63, 1
  store i32 %inc47, i32* %col, align 4
  br label %for.cond.29

for.end.48:                                       ; preds = %for.cond.29
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.end.48
  %64 = load i32, i32* %row, align 4
  %inc50 = add i32 %64, 1
  store i32 %inc50, i32* %row, align 4
  br label %for.cond.26

for.end.51:                                       ; preds = %for.cond.26
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.14
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err52 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 0
  %66 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err52, align 8
  %msg_code53 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %66, i32 0, i32 5
  store i32 1038, i32* %msg_code53, align 4
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %67, i32 0, i32 0
  %68 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err54, align 8
  %error_exit55 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %68, i32 0, i32 0
  %69 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit55, align 8
  %70 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %71 = bitcast %struct.jpeg_decompress_struct* %70 to %struct.jpeg_common_struct*
  call void %69(%struct.jpeg_common_struct* %71)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.51, %for.end.24
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_map_entry(%struct.jpeg_decompress_struct* %cinfo, i32 %R, i32 %G, i32 %B) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %R.addr = alloca i32, align 4
  %G.addr = alloca i32, align 4
  %B.addr = alloca i32, align 4
  %colormap0 = alloca i8*, align 8
  %colormap1 = alloca i8*, align 8
  %colormap24 = alloca i8*, align 8
  %ncolors = alloca i32, align 4
  %index = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i32 %R, i32* %R.addr, align 4
  store i32 %G, i32* %G.addr, align 4
  store i32 %B, i32* %B.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 32
  %1 = load i8**, i8*** %colormap, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %colormap0, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 32
  %4 = load i8**, i8*** %colormap2, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %4, i64 1
  %5 = load i8*, i8** %arrayidx3, align 8
  store i8* %5, i8** %colormap1, align 8
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 32
  %7 = load i8**, i8*** %colormap5, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %7, i64 2
  %8 = load i8*, i8** %arrayidx6, align 8
  store i8* %8, i8** %colormap24, align 8
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 31
  %10 = load i32, i32* %actual_number_of_colors, align 4
  store i32 %10, i32* %ncolors, align 4
  store i32 0, i32* %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %index, align 4
  %12 = load i32, i32* %ncolors, align 4
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %index, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load i8*, i8** %colormap0, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %14, i64 %idxprom
  %15 = load i8, i8* %arrayidx7, align 1
  %conv = zext i8 %15 to i32
  %16 = load i32, i32* %R.addr, align 4
  %cmp8 = icmp eq i32 %conv, %16
  br i1 %cmp8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %17 = load i32, i32* %index, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load i8*, i8** %colormap1, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %18, i64 %idxprom10
  %19 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %19 to i32
  %20 = load i32, i32* %G.addr, align 4
  %cmp13 = icmp eq i32 %conv12, %20
  br i1 %cmp13, label %land.lhs.true.15, label %if.end

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %21 = load i32, i32* %index, align 4
  %idxprom16 = sext i32 %21 to i64
  %22 = load i8*, i8** %colormap24, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %22, i64 %idxprom16
  %23 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %23 to i32
  %24 = load i32, i32* %B.addr, align 4
  %cmp19 = icmp eq i32 %conv18, %24
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.15
  br label %return

if.end:                                           ; preds = %land.lhs.true.15, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load i32, i32* %index, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i32, i32* %ncolors, align 4
  %cmp21 = icmp sge i32 %26, 256
  br i1 %cmp21, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %for.end
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 5
  store i32 56, i32* %msg_code, align 4
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err24, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx25 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 256, i32* %arrayidx25, align 4
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 0
  %32 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err26, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %32, i32 0, i32 0
  %33 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %35 = bitcast %struct.jpeg_decompress_struct* %34 to %struct.jpeg_common_struct*
  call void %33(%struct.jpeg_common_struct* %35)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %for.end
  %36 = load i32, i32* %R.addr, align 4
  %conv28 = trunc i32 %36 to i8
  %37 = load i32, i32* %ncolors, align 4
  %idxprom29 = sext i32 %37 to i64
  %38 = load i8*, i8** %colormap0, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %38, i64 %idxprom29
  store i8 %conv28, i8* %arrayidx30, align 1
  %39 = load i32, i32* %G.addr, align 4
  %conv31 = trunc i32 %39 to i8
  %40 = load i32, i32* %ncolors, align 4
  %idxprom32 = sext i32 %40 to i64
  %41 = load i8*, i8** %colormap1, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %41, i64 %idxprom32
  store i8 %conv31, i8* %arrayidx33, align 1
  %42 = load i32, i32* %B.addr, align 4
  %conv34 = trunc i32 %42 to i8
  %43 = load i32, i32* %ncolors, align 4
  %idxprom35 = sext i32 %43 to i64
  %44 = load i8*, i8** %colormap24, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %44, i64 %idxprom35
  store i8 %conv34, i8* %arrayidx36, align 1
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %actual_number_of_colors37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 31
  %46 = load i32, i32* %actual_number_of_colors37, align 4
  %inc38 = add nsw i32 %46, 1
  store i32 %inc38, i32* %actual_number_of_colors37, align 4
  br label %return

return:                                           ; preds = %if.end.27, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @read_pbm_integer(%struct.jpeg_decompress_struct* %cinfo, %struct._IO_FILE* %infile) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %infile.addr = alloca %struct._IO_FILE*, align 8
  %ch = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
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
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 0
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 5
  store i32 1038, i32* %msg_code, align 4
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 0
  %6 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %8 = bitcast %struct.jpeg_decompress_struct* %7 to %struct.jpeg_common_struct*
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
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err11, align 8
  %msg_code12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 5
  store i32 1038, i32* %msg_code12, align 4
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8
  %error_exit14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 0
  %20 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit14, align 8
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %22 = bitcast %struct.jpeg_decompress_struct* %21 to %struct.jpeg_common_struct*
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

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
