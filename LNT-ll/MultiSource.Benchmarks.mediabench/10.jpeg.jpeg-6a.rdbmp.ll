; ModuleID = './MultiSource.Benchmarks.mediabench/10.jpeg.jpeg-6a.rdbmp.bc'
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
%struct._bmp_source_struct = type { %struct.cjpeg_source_struct, %struct.jpeg_compress_struct*, i8**, %struct.jvirt_sarray_control*, i32, i32, i32 }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define %struct.cjpeg_source_struct* @jinit_read_bmp(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %source = alloca %struct._bmp_source_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_compress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 88)
  %5 = bitcast i8* %call to %struct._bmp_source_struct*
  store %struct._bmp_source_struct* %5, %struct._bmp_source_struct** %source, align 8
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %7 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %cinfo1 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %7, i32 0, i32 1
  store %struct.jpeg_compress_struct* %6, %struct.jpeg_compress_struct** %cinfo1, align 8
  %8 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %pub = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %8, i32 0, i32 0
  %start_input = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @start_input_bmp, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %start_input, align 8
  %9 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %pub2 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %9, i32 0, i32 0
  %finish_input = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub2, i32 0, i32 2
  store void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @finish_input_bmp, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %finish_input, align 8
  %10 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %11 = bitcast %struct._bmp_source_struct* %10 to %struct.cjpeg_source_struct*
  ret %struct.cjpeg_source_struct* %11
}

; Function Attrs: nounwind uwtable
define internal void @start_input_bmp(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct._bmp_source_struct*, align 8
  %bmpfileheader = alloca [14 x i8], align 1
  %bmpinfoheader = alloca [64 x i8], align 16
  %bfOffBits = alloca i64, align 8
  %headerSize = alloca i64, align 8
  %biWidth = alloca i64, align 8
  %biHeight = alloca i64, align 8
  %biPlanes = alloca i32, align 4
  %biCompression = alloca i64, align 8
  %biXPelsPerMeter = alloca i64, align 8
  %biYPelsPerMeter = alloca i64, align 8
  %biClrUsed = alloca i64, align 8
  %mapentrysize = alloca i32, align 4
  %bPad = alloca i64, align 8
  %row_width = alloca i32, align 4
  %progress396 = alloca %struct.cdjpeg_progress_mgr*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %0 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %1 = bitcast %struct.cjpeg_source_struct* %0 to %struct._bmp_source_struct*
  store %struct._bmp_source_struct* %1, %struct._bmp_source_struct** %source, align 8
  store i64 0, i64* %biWidth, align 8
  store i64 0, i64* %biHeight, align 8
  store i64 0, i64* %biClrUsed, align 8
  store i32 0, i32* %mapentrysize, align 4
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i32 0
  %2 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %pub = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %2, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  %call = call i64 @fread(i8* %arraydecay, i64 1, i64 14, %struct._IO_FILE* %3)
  %cmp = icmp eq i64 %call, 14
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 42, i32* %msg_code, align 4
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
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 0
  %11 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %arrayidx2 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 1
  %12 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %12 to i32
  %shl = shl i32 %conv3, 8
  %add = add i32 %conv, %shl
  %cmp4 = icmp ne i32 %add, 19778
  br i1 %cmp4, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.end
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8
  %msg_code8 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 5
  store i32 1007, i32* %msg_code8, align 4
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8
  %error_exit10 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 0
  %17 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit10, align 8
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %19 = bitcast %struct.jpeg_compress_struct* %18 to %struct.jpeg_common_struct*
  call void %17(%struct.jpeg_common_struct* %19)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.6, %if.end
  %arrayidx12 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 10
  %20 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %20 to i32
  %conv14 = sext i32 %conv13 to i64
  %arrayidx15 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 11
  %21 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %21 to i32
  %conv17 = sext i32 %conv16 to i64
  %shl18 = shl i64 %conv17, 8
  %add19 = add nsw i64 %conv14, %shl18
  %arrayidx20 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 12
  %22 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %22 to i32
  %conv22 = sext i32 %conv21 to i64
  %shl23 = shl i64 %conv22, 16
  %add24 = add nsw i64 %add19, %shl23
  %arrayidx25 = getelementptr inbounds [14 x i8], [14 x i8]* %bmpfileheader, i32 0, i64 13
  %23 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %23 to i32
  %conv27 = sext i32 %conv26 to i64
  %shl28 = shl i64 %conv27, 24
  %add29 = add nsw i64 %add24, %shl28
  store i64 %add29, i64* %bfOffBits, align 8
  %arraydecay30 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i32 0
  %24 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %pub31 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %24, i32 0, i32 0
  %input_file32 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub31, i32 0, i32 3
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file32, align 8
  %call33 = call i64 @fread(i8* %arraydecay30, i64 1, i64 4, %struct._IO_FILE* %25)
  %cmp34 = icmp eq i64 %call33, 4
  br i1 %cmp34, label %if.end.41, label %if.then.36

if.then.36:                                       ; preds = %if.end.11
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err37 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 0
  %27 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err37, align 8
  %msg_code38 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %27, i32 0, i32 5
  store i32 42, i32* %msg_code38, align 4
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err39 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err39, align 8
  %error_exit40 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 0
  %30 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit40, align 8
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %32 = bitcast %struct.jpeg_compress_struct* %31 to %struct.jpeg_common_struct*
  call void %30(%struct.jpeg_common_struct* %32)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.36, %if.end.11
  %arrayidx42 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 0
  %33 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %33 to i32
  %conv44 = sext i32 %conv43 to i64
  %arrayidx45 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 1
  %34 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %34 to i32
  %conv47 = sext i32 %conv46 to i64
  %shl48 = shl i64 %conv47, 8
  %add49 = add nsw i64 %conv44, %shl48
  %arrayidx50 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 2
  %35 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %35 to i32
  %conv52 = sext i32 %conv51 to i64
  %shl53 = shl i64 %conv52, 16
  %add54 = add nsw i64 %add49, %shl53
  %arrayidx55 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 3
  %36 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %36 to i32
  %conv57 = sext i32 %conv56 to i64
  %shl58 = shl i64 %conv57, 24
  %add59 = add nsw i64 %add54, %shl58
  store i64 %add59, i64* %headerSize, align 8
  %37 = load i64, i64* %headerSize, align 8
  %cmp60 = icmp slt i64 %37, 12
  br i1 %cmp60, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.41
  %38 = load i64, i64* %headerSize, align 8
  %cmp62 = icmp sgt i64 %38, 64
  br i1 %cmp62, label %if.then.64, label %if.end.69

if.then.64:                                       ; preds = %lor.lhs.false, %if.end.41
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err65 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %39, i32 0, i32 0
  %40 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err65, align 8
  %msg_code66 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %40, i32 0, i32 5
  store i32 1003, i32* %msg_code66, align 4
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err67 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err67, align 8
  %error_exit68 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i32 0, i32 0
  %43 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit68, align 8
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %45 = bitcast %struct.jpeg_compress_struct* %44 to %struct.jpeg_common_struct*
  call void %43(%struct.jpeg_common_struct* %45)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.64, %lor.lhs.false
  %arraydecay70 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay70, i64 4
  %46 = load i64, i64* %headerSize, align 8
  %sub = sub nsw i64 %46, 4
  %47 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %pub71 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %47, i32 0, i32 0
  %input_file72 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub71, i32 0, i32 3
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file72, align 8
  %call73 = call i64 @fread(i8* %add.ptr, i64 1, i64 %sub, %struct._IO_FILE* %48)
  %49 = load i64, i64* %headerSize, align 8
  %sub74 = sub nsw i64 %49, 4
  %cmp75 = icmp eq i64 %call73, %sub74
  br i1 %cmp75, label %if.end.82, label %if.then.77

if.then.77:                                       ; preds = %if.end.69
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err78 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 0
  %51 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err78, align 8
  %msg_code79 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %51, i32 0, i32 5
  store i32 42, i32* %msg_code79, align 4
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err80 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %52, i32 0, i32 0
  %53 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err80, align 8
  %error_exit81 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %53, i32 0, i32 0
  %54 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit81, align 8
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %56 = bitcast %struct.jpeg_compress_struct* %55 to %struct.jpeg_common_struct*
  call void %54(%struct.jpeg_common_struct* %56)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.77, %if.end.69
  %57 = load i64, i64* %headerSize, align 8
  %conv83 = trunc i64 %57 to i32
  switch i32 %conv83, label %sw.default.334 [
    i32 12, label %sw.bb
    i32 40, label %sw.bb.150
    i32 64, label %sw.bb.150
  ]

sw.bb:                                            ; preds = %if.end.82
  %arrayidx84 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 4
  %58 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %58 to i32
  %arrayidx86 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 5
  %59 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %59 to i32
  %shl88 = shl i32 %conv87, 8
  %add89 = add i32 %conv85, %shl88
  %conv90 = zext i32 %add89 to i64
  store i64 %conv90, i64* %biWidth, align 8
  %arrayidx91 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 6
  %60 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %60 to i32
  %arrayidx93 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 7
  %61 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %61 to i32
  %shl95 = shl i32 %conv94, 8
  %add96 = add i32 %conv92, %shl95
  %conv97 = zext i32 %add96 to i64
  store i64 %conv97, i64* %biHeight, align 8
  %arrayidx98 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 8
  %62 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %62 to i32
  %arrayidx100 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 9
  %63 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %63 to i32
  %shl102 = shl i32 %conv101, 8
  %add103 = add i32 %conv99, %shl102
  store i32 %add103, i32* %biPlanes, align 4
  %arrayidx104 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 10
  %64 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %64 to i32
  %arrayidx106 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 11
  %65 = load i8, i8* %arrayidx106, align 1
  %conv107 = zext i8 %65 to i32
  %shl108 = shl i32 %conv107, 8
  %add109 = add i32 %conv105, %shl108
  %66 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %bits_per_pixel = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %66, i32 0, i32 6
  store i32 %add109, i32* %bits_per_pixel, align 4
  %67 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %bits_per_pixel110 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %67, i32 0, i32 6
  %68 = load i32, i32* %bits_per_pixel110, align 4
  switch i32 %68, label %sw.default [
    i32 8, label %sw.bb.111
    i32 24, label %sw.bb.123
  ]

sw.bb.111:                                        ; preds = %sw.bb
  store i32 3, i32* %mapentrysize, align 4
  %69 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err112 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %69, i32 0, i32 0
  %70 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err112, align 8
  %msg_code113 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %70, i32 0, i32 5
  store i32 1011, i32* %msg_code113, align 4
  %71 = load i64, i64* %biWidth, align 8
  %conv114 = trunc i64 %71 to i32
  %72 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err115 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %72, i32 0, i32 0
  %73 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err115, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %73, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx116 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %conv114, i32* %arrayidx116, align 4
  %74 = load i64, i64* %biHeight, align 8
  %conv117 = trunc i64 %74 to i32
  %75 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err118 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %75, i32 0, i32 0
  %76 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err118, align 8
  %msg_parm119 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %76, i32 0, i32 6
  %i120 = bitcast %union.anon* %msg_parm119 to [8 x i32]*
  %arrayidx121 = getelementptr inbounds [8 x i32], [8 x i32]* %i120, i32 0, i64 1
  store i32 %conv117, i32* %arrayidx121, align 4
  %77 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err122 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %77, i32 0, i32 0
  %78 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err122, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %78, i32 0, i32 1
  %79 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %80 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %81 = bitcast %struct.jpeg_compress_struct* %80 to %struct.jpeg_common_struct*
  call void %79(%struct.jpeg_common_struct* %81, i32 1)
  br label %sw.epilog

sw.bb.123:                                        ; preds = %sw.bb
  %82 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err124 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %82, i32 0, i32 0
  %83 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err124, align 8
  %msg_code125 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %83, i32 0, i32 5
  store i32 1010, i32* %msg_code125, align 4
  %84 = load i64, i64* %biWidth, align 8
  %conv126 = trunc i64 %84 to i32
  %85 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err127 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %85, i32 0, i32 0
  %86 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err127, align 8
  %msg_parm128 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %86, i32 0, i32 6
  %i129 = bitcast %union.anon* %msg_parm128 to [8 x i32]*
  %arrayidx130 = getelementptr inbounds [8 x i32], [8 x i32]* %i129, i32 0, i64 0
  store i32 %conv126, i32* %arrayidx130, align 4
  %87 = load i64, i64* %biHeight, align 8
  %conv131 = trunc i64 %87 to i32
  %88 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err132 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %88, i32 0, i32 0
  %89 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err132, align 8
  %msg_parm133 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %89, i32 0, i32 6
  %i134 = bitcast %union.anon* %msg_parm133 to [8 x i32]*
  %arrayidx135 = getelementptr inbounds [8 x i32], [8 x i32]* %i134, i32 0, i64 1
  store i32 %conv131, i32* %arrayidx135, align 4
  %90 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err136 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %90, i32 0, i32 0
  %91 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err136, align 8
  %emit_message137 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %91, i32 0, i32 1
  %92 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message137, align 8
  %93 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %94 = bitcast %struct.jpeg_compress_struct* %93 to %struct.jpeg_common_struct*
  call void %92(%struct.jpeg_common_struct* %94, i32 1)
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  %95 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err138 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %95, i32 0, i32 0
  %96 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err138, align 8
  %msg_code139 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %96, i32 0, i32 5
  store i32 1002, i32* %msg_code139, align 4
  %97 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err140 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %97, i32 0, i32 0
  %98 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err140, align 8
  %error_exit141 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %98, i32 0, i32 0
  %99 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit141, align 8
  %100 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %101 = bitcast %struct.jpeg_compress_struct* %100 to %struct.jpeg_common_struct*
  call void %99(%struct.jpeg_common_struct* %101)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.123, %sw.bb.111
  %102 = load i32, i32* %biPlanes, align 4
  %cmp142 = icmp ne i32 %102, 1
  br i1 %cmp142, label %if.then.144, label %if.end.149

if.then.144:                                      ; preds = %sw.epilog
  %103 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err145 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %103, i32 0, i32 0
  %104 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err145, align 8
  %msg_code146 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %104, i32 0, i32 5
  store i32 1004, i32* %msg_code146, align 4
  %105 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err147 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %105, i32 0, i32 0
  %106 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err147, align 8
  %error_exit148 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %106, i32 0, i32 0
  %107 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit148, align 8
  %108 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %109 = bitcast %struct.jpeg_compress_struct* %108 to %struct.jpeg_common_struct*
  call void %107(%struct.jpeg_common_struct* %109)
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.144, %sw.epilog
  br label %sw.epilog.339

sw.bb.150:                                        ; preds = %if.end.82, %if.end.82
  %arrayidx151 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 4
  %110 = load i8, i8* %arrayidx151, align 1
  %conv152 = zext i8 %110 to i32
  %conv153 = sext i32 %conv152 to i64
  %arrayidx154 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 5
  %111 = load i8, i8* %arrayidx154, align 1
  %conv155 = zext i8 %111 to i32
  %conv156 = sext i32 %conv155 to i64
  %shl157 = shl i64 %conv156, 8
  %add158 = add nsw i64 %conv153, %shl157
  %arrayidx159 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 6
  %112 = load i8, i8* %arrayidx159, align 1
  %conv160 = zext i8 %112 to i32
  %conv161 = sext i32 %conv160 to i64
  %shl162 = shl i64 %conv161, 16
  %add163 = add nsw i64 %add158, %shl162
  %arrayidx164 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 7
  %113 = load i8, i8* %arrayidx164, align 1
  %conv165 = zext i8 %113 to i32
  %conv166 = sext i32 %conv165 to i64
  %shl167 = shl i64 %conv166, 24
  %add168 = add nsw i64 %add163, %shl167
  store i64 %add168, i64* %biWidth, align 8
  %arrayidx169 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 8
  %114 = load i8, i8* %arrayidx169, align 1
  %conv170 = zext i8 %114 to i32
  %conv171 = sext i32 %conv170 to i64
  %arrayidx172 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 9
  %115 = load i8, i8* %arrayidx172, align 1
  %conv173 = zext i8 %115 to i32
  %conv174 = sext i32 %conv173 to i64
  %shl175 = shl i64 %conv174, 8
  %add176 = add nsw i64 %conv171, %shl175
  %arrayidx177 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 10
  %116 = load i8, i8* %arrayidx177, align 1
  %conv178 = zext i8 %116 to i32
  %conv179 = sext i32 %conv178 to i64
  %shl180 = shl i64 %conv179, 16
  %add181 = add nsw i64 %add176, %shl180
  %arrayidx182 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 11
  %117 = load i8, i8* %arrayidx182, align 1
  %conv183 = zext i8 %117 to i32
  %conv184 = sext i32 %conv183 to i64
  %shl185 = shl i64 %conv184, 24
  %add186 = add nsw i64 %add181, %shl185
  store i64 %add186, i64* %biHeight, align 8
  %arrayidx187 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 12
  %118 = load i8, i8* %arrayidx187, align 1
  %conv188 = zext i8 %118 to i32
  %arrayidx189 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 13
  %119 = load i8, i8* %arrayidx189, align 1
  %conv190 = zext i8 %119 to i32
  %shl191 = shl i32 %conv190, 8
  %add192 = add i32 %conv188, %shl191
  store i32 %add192, i32* %biPlanes, align 4
  %arrayidx193 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 14
  %120 = load i8, i8* %arrayidx193, align 1
  %conv194 = zext i8 %120 to i32
  %arrayidx195 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 15
  %121 = load i8, i8* %arrayidx195, align 1
  %conv196 = zext i8 %121 to i32
  %shl197 = shl i32 %conv196, 8
  %add198 = add i32 %conv194, %shl197
  %122 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %bits_per_pixel199 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %122, i32 0, i32 6
  store i32 %add198, i32* %bits_per_pixel199, align 4
  %arrayidx200 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 16
  %123 = load i8, i8* %arrayidx200, align 1
  %conv201 = zext i8 %123 to i32
  %conv202 = sext i32 %conv201 to i64
  %arrayidx203 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 17
  %124 = load i8, i8* %arrayidx203, align 1
  %conv204 = zext i8 %124 to i32
  %conv205 = sext i32 %conv204 to i64
  %shl206 = shl i64 %conv205, 8
  %add207 = add nsw i64 %conv202, %shl206
  %arrayidx208 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 18
  %125 = load i8, i8* %arrayidx208, align 1
  %conv209 = zext i8 %125 to i32
  %conv210 = sext i32 %conv209 to i64
  %shl211 = shl i64 %conv210, 16
  %add212 = add nsw i64 %add207, %shl211
  %arrayidx213 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 19
  %126 = load i8, i8* %arrayidx213, align 1
  %conv214 = zext i8 %126 to i32
  %conv215 = sext i32 %conv214 to i64
  %shl216 = shl i64 %conv215, 24
  %add217 = add nsw i64 %add212, %shl216
  store i64 %add217, i64* %biCompression, align 8
  %arrayidx218 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 24
  %127 = load i8, i8* %arrayidx218, align 1
  %conv219 = zext i8 %127 to i32
  %conv220 = sext i32 %conv219 to i64
  %arrayidx221 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 25
  %128 = load i8, i8* %arrayidx221, align 1
  %conv222 = zext i8 %128 to i32
  %conv223 = sext i32 %conv222 to i64
  %shl224 = shl i64 %conv223, 8
  %add225 = add nsw i64 %conv220, %shl224
  %arrayidx226 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 26
  %129 = load i8, i8* %arrayidx226, align 1
  %conv227 = zext i8 %129 to i32
  %conv228 = sext i32 %conv227 to i64
  %shl229 = shl i64 %conv228, 16
  %add230 = add nsw i64 %add225, %shl229
  %arrayidx231 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 27
  %130 = load i8, i8* %arrayidx231, align 1
  %conv232 = zext i8 %130 to i32
  %conv233 = sext i32 %conv232 to i64
  %shl234 = shl i64 %conv233, 24
  %add235 = add nsw i64 %add230, %shl234
  store i64 %add235, i64* %biXPelsPerMeter, align 8
  %arrayidx236 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 28
  %131 = load i8, i8* %arrayidx236, align 1
  %conv237 = zext i8 %131 to i32
  %conv238 = sext i32 %conv237 to i64
  %arrayidx239 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 29
  %132 = load i8, i8* %arrayidx239, align 1
  %conv240 = zext i8 %132 to i32
  %conv241 = sext i32 %conv240 to i64
  %shl242 = shl i64 %conv241, 8
  %add243 = add nsw i64 %conv238, %shl242
  %arrayidx244 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 30
  %133 = load i8, i8* %arrayidx244, align 1
  %conv245 = zext i8 %133 to i32
  %conv246 = sext i32 %conv245 to i64
  %shl247 = shl i64 %conv246, 16
  %add248 = add nsw i64 %add243, %shl247
  %arrayidx249 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 31
  %134 = load i8, i8* %arrayidx249, align 1
  %conv250 = zext i8 %134 to i32
  %conv251 = sext i32 %conv250 to i64
  %shl252 = shl i64 %conv251, 24
  %add253 = add nsw i64 %add248, %shl252
  store i64 %add253, i64* %biYPelsPerMeter, align 8
  %arrayidx254 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 32
  %135 = load i8, i8* %arrayidx254, align 1
  %conv255 = zext i8 %135 to i32
  %conv256 = sext i32 %conv255 to i64
  %arrayidx257 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 33
  %136 = load i8, i8* %arrayidx257, align 1
  %conv258 = zext i8 %136 to i32
  %conv259 = sext i32 %conv258 to i64
  %shl260 = shl i64 %conv259, 8
  %add261 = add nsw i64 %conv256, %shl260
  %arrayidx262 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 34
  %137 = load i8, i8* %arrayidx262, align 1
  %conv263 = zext i8 %137 to i32
  %conv264 = sext i32 %conv263 to i64
  %shl265 = shl i64 %conv264, 16
  %add266 = add nsw i64 %add261, %shl265
  %arrayidx267 = getelementptr inbounds [64 x i8], [64 x i8]* %bmpinfoheader, i32 0, i64 35
  %138 = load i8, i8* %arrayidx267, align 1
  %conv268 = zext i8 %138 to i32
  %conv269 = sext i32 %conv268 to i64
  %shl270 = shl i64 %conv269, 24
  %add271 = add nsw i64 %add266, %shl270
  store i64 %add271, i64* %biClrUsed, align 8
  %139 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %bits_per_pixel272 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %139, i32 0, i32 6
  %140 = load i32, i32* %bits_per_pixel272, align 4
  switch i32 %140, label %sw.default.303 [
    i32 8, label %sw.bb.273
    i32 24, label %sw.bb.288
  ]

sw.bb.273:                                        ; preds = %sw.bb.150
  store i32 4, i32* %mapentrysize, align 4
  %141 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err274 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %141, i32 0, i32 0
  %142 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err274, align 8
  %msg_code275 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %142, i32 0, i32 5
  store i32 1009, i32* %msg_code275, align 4
  %143 = load i64, i64* %biWidth, align 8
  %conv276 = trunc i64 %143 to i32
  %144 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err277 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %144, i32 0, i32 0
  %145 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err277, align 8
  %msg_parm278 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %145, i32 0, i32 6
  %i279 = bitcast %union.anon* %msg_parm278 to [8 x i32]*
  %arrayidx280 = getelementptr inbounds [8 x i32], [8 x i32]* %i279, i32 0, i64 0
  store i32 %conv276, i32* %arrayidx280, align 4
  %146 = load i64, i64* %biHeight, align 8
  %conv281 = trunc i64 %146 to i32
  %147 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err282 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %147, i32 0, i32 0
  %148 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err282, align 8
  %msg_parm283 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %148, i32 0, i32 6
  %i284 = bitcast %union.anon* %msg_parm283 to [8 x i32]*
  %arrayidx285 = getelementptr inbounds [8 x i32], [8 x i32]* %i284, i32 0, i64 1
  store i32 %conv281, i32* %arrayidx285, align 4
  %149 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err286 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %149, i32 0, i32 0
  %150 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err286, align 8
  %emit_message287 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %150, i32 0, i32 1
  %151 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message287, align 8
  %152 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %153 = bitcast %struct.jpeg_compress_struct* %152 to %struct.jpeg_common_struct*
  call void %151(%struct.jpeg_common_struct* %153, i32 1)
  br label %sw.epilog.308

sw.bb.288:                                        ; preds = %sw.bb.150
  %154 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err289 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %154, i32 0, i32 0
  %155 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err289, align 8
  %msg_code290 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %155, i32 0, i32 5
  store i32 1008, i32* %msg_code290, align 4
  %156 = load i64, i64* %biWidth, align 8
  %conv291 = trunc i64 %156 to i32
  %157 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err292 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %157, i32 0, i32 0
  %158 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err292, align 8
  %msg_parm293 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %158, i32 0, i32 6
  %i294 = bitcast %union.anon* %msg_parm293 to [8 x i32]*
  %arrayidx295 = getelementptr inbounds [8 x i32], [8 x i32]* %i294, i32 0, i64 0
  store i32 %conv291, i32* %arrayidx295, align 4
  %159 = load i64, i64* %biHeight, align 8
  %conv296 = trunc i64 %159 to i32
  %160 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err297 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %160, i32 0, i32 0
  %161 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err297, align 8
  %msg_parm298 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %161, i32 0, i32 6
  %i299 = bitcast %union.anon* %msg_parm298 to [8 x i32]*
  %arrayidx300 = getelementptr inbounds [8 x i32], [8 x i32]* %i299, i32 0, i64 1
  store i32 %conv296, i32* %arrayidx300, align 4
  %162 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err301 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %162, i32 0, i32 0
  %163 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err301, align 8
  %emit_message302 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %163, i32 0, i32 1
  %164 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message302, align 8
  %165 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %166 = bitcast %struct.jpeg_compress_struct* %165 to %struct.jpeg_common_struct*
  call void %164(%struct.jpeg_common_struct* %166, i32 1)
  br label %sw.epilog.308

sw.default.303:                                   ; preds = %sw.bb.150
  %167 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err304 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %167, i32 0, i32 0
  %168 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err304, align 8
  %msg_code305 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %168, i32 0, i32 5
  store i32 1002, i32* %msg_code305, align 4
  %169 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err306 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %169, i32 0, i32 0
  %170 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err306, align 8
  %error_exit307 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %170, i32 0, i32 0
  %171 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit307, align 8
  %172 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %173 = bitcast %struct.jpeg_compress_struct* %172 to %struct.jpeg_common_struct*
  call void %171(%struct.jpeg_common_struct* %173)
  br label %sw.epilog.308

sw.epilog.308:                                    ; preds = %sw.default.303, %sw.bb.288, %sw.bb.273
  %174 = load i32, i32* %biPlanes, align 4
  %cmp309 = icmp ne i32 %174, 1
  br i1 %cmp309, label %if.then.311, label %if.end.316

if.then.311:                                      ; preds = %sw.epilog.308
  %175 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err312 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %175, i32 0, i32 0
  %176 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err312, align 8
  %msg_code313 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %176, i32 0, i32 5
  store i32 1004, i32* %msg_code313, align 4
  %177 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err314 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %177, i32 0, i32 0
  %178 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err314, align 8
  %error_exit315 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %178, i32 0, i32 0
  %179 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit315, align 8
  %180 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %181 = bitcast %struct.jpeg_compress_struct* %180 to %struct.jpeg_common_struct*
  call void %179(%struct.jpeg_common_struct* %181)
  br label %if.end.316

if.end.316:                                       ; preds = %if.then.311, %sw.epilog.308
  %182 = load i64, i64* %biCompression, align 8
  %cmp317 = icmp ne i64 %182, 0
  br i1 %cmp317, label %if.then.319, label %if.end.324

if.then.319:                                      ; preds = %if.end.316
  %183 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err320 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %183, i32 0, i32 0
  %184 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err320, align 8
  %msg_code321 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %184, i32 0, i32 5
  store i32 1006, i32* %msg_code321, align 4
  %185 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err322 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %185, i32 0, i32 0
  %186 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err322, align 8
  %error_exit323 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %186, i32 0, i32 0
  %187 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit323, align 8
  %188 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %189 = bitcast %struct.jpeg_compress_struct* %188 to %struct.jpeg_common_struct*
  call void %187(%struct.jpeg_common_struct* %189)
  br label %if.end.324

if.end.324:                                       ; preds = %if.then.319, %if.end.316
  %190 = load i64, i64* %biXPelsPerMeter, align 8
  %cmp325 = icmp sgt i64 %190, 0
  br i1 %cmp325, label %land.lhs.true, label %if.end.333

land.lhs.true:                                    ; preds = %if.end.324
  %191 = load i64, i64* %biYPelsPerMeter, align 8
  %cmp327 = icmp sgt i64 %191, 0
  br i1 %cmp327, label %if.then.329, label %if.end.333

if.then.329:                                      ; preds = %land.lhs.true
  %192 = load i64, i64* %biXPelsPerMeter, align 8
  %div = sdiv i64 %192, 100
  %conv330 = trunc i64 %div to i16
  %193 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %X_density = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %193, i32 0, i32 33
  store i16 %conv330, i16* %X_density, align 2
  %194 = load i64, i64* %biYPelsPerMeter, align 8
  %div331 = sdiv i64 %194, 100
  %conv332 = trunc i64 %div331 to i16
  %195 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %Y_density = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %195, i32 0, i32 34
  store i16 %conv332, i16* %Y_density, align 2
  %196 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %density_unit = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %196, i32 0, i32 32
  store i8 2, i8* %density_unit, align 1
  br label %if.end.333

if.end.333:                                       ; preds = %if.then.329, %land.lhs.true, %if.end.324
  br label %sw.epilog.339

sw.default.334:                                   ; preds = %if.end.82
  %197 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err335 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %197, i32 0, i32 0
  %198 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err335, align 8
  %msg_code336 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %198, i32 0, i32 5
  store i32 1003, i32* %msg_code336, align 4
  %199 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err337 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %199, i32 0, i32 0
  %200 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err337, align 8
  %error_exit338 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %200, i32 0, i32 0
  %201 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit338, align 8
  %202 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %203 = bitcast %struct.jpeg_compress_struct* %202 to %struct.jpeg_common_struct*
  call void %201(%struct.jpeg_common_struct* %203)
  br label %sw.epilog.339

sw.epilog.339:                                    ; preds = %sw.default.334, %if.end.333, %if.end.149
  %204 = load i64, i64* %bfOffBits, align 8
  %205 = load i64, i64* %headerSize, align 8
  %add340 = add nsw i64 %205, 14
  %sub341 = sub nsw i64 %204, %add340
  store i64 %sub341, i64* %bPad, align 8
  %206 = load i32, i32* %mapentrysize, align 4
  %cmp342 = icmp sgt i32 %206, 0
  br i1 %cmp342, label %if.then.344, label %if.end.362

if.then.344:                                      ; preds = %sw.epilog.339
  %207 = load i64, i64* %biClrUsed, align 8
  %cmp345 = icmp sle i64 %207, 0
  br i1 %cmp345, label %if.then.347, label %if.else

if.then.347:                                      ; preds = %if.then.344
  store i64 256, i64* %biClrUsed, align 8
  br label %if.end.356

if.else:                                          ; preds = %if.then.344
  %208 = load i64, i64* %biClrUsed, align 8
  %cmp348 = icmp sgt i64 %208, 256
  br i1 %cmp348, label %if.then.350, label %if.end.355

if.then.350:                                      ; preds = %if.else
  %209 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err351 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %209, i32 0, i32 0
  %210 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err351, align 8
  %msg_code352 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %210, i32 0, i32 5
  store i32 1001, i32* %msg_code352, align 4
  %211 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err353 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %211, i32 0, i32 0
  %212 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err353, align 8
  %error_exit354 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %212, i32 0, i32 0
  %213 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit354, align 8
  %214 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %215 = bitcast %struct.jpeg_compress_struct* %214 to %struct.jpeg_common_struct*
  call void %213(%struct.jpeg_common_struct* %215)
  br label %if.end.355

if.end.355:                                       ; preds = %if.then.350, %if.else
  br label %if.end.356

if.end.356:                                       ; preds = %if.end.355, %if.then.347
  %216 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %216, i32 0, i32 1
  %217 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %217, i32 0, i32 2
  %218 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8
  %219 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %220 = bitcast %struct.jpeg_compress_struct* %219 to %struct.jpeg_common_struct*
  %221 = load i64, i64* %biClrUsed, align 8
  %conv357 = trunc i64 %221 to i32
  %call358 = call i8** %218(%struct.jpeg_common_struct* %220, i32 1, i32 %conv357, i32 3)
  %222 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %colormap = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %222, i32 0, i32 2
  store i8** %call358, i8*** %colormap, align 8
  %223 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %224 = load i64, i64* %biClrUsed, align 8
  %conv359 = trunc i64 %224 to i32
  %225 = load i32, i32* %mapentrysize, align 4
  call void @read_colormap(%struct._bmp_source_struct* %223, i32 %conv359, i32 %225)
  %226 = load i64, i64* %biClrUsed, align 8
  %227 = load i32, i32* %mapentrysize, align 4
  %conv360 = sext i32 %227 to i64
  %mul = mul nsw i64 %226, %conv360
  %228 = load i64, i64* %bPad, align 8
  %sub361 = sub nsw i64 %228, %mul
  store i64 %sub361, i64* %bPad, align 8
  br label %if.end.362

if.end.362:                                       ; preds = %if.end.356, %sw.epilog.339
  %229 = load i64, i64* %bPad, align 8
  %cmp363 = icmp slt i64 %229, 0
  br i1 %cmp363, label %if.then.365, label %if.end.370

if.then.365:                                      ; preds = %if.end.362
  %230 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err366 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %230, i32 0, i32 0
  %231 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err366, align 8
  %msg_code367 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %231, i32 0, i32 5
  store i32 1003, i32* %msg_code367, align 4
  %232 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err368 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %232, i32 0, i32 0
  %233 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err368, align 8
  %error_exit369 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %233, i32 0, i32 0
  %234 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit369, align 8
  %235 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %236 = bitcast %struct.jpeg_compress_struct* %235 to %struct.jpeg_common_struct*
  call void %234(%struct.jpeg_common_struct* %236)
  br label %if.end.370

if.end.370:                                       ; preds = %if.then.365, %if.end.362
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.370
  %237 = load i64, i64* %bPad, align 8
  %dec = add nsw i64 %237, -1
  store i64 %dec, i64* %bPad, align 8
  %cmp371 = icmp sge i64 %dec, 0
  br i1 %cmp371, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %238 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %call373 = call i32 @read_byte(%struct._bmp_source_struct* %238)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %239 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %bits_per_pixel374 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %239, i32 0, i32 6
  %240 = load i32, i32* %bits_per_pixel374, align 4
  %cmp375 = icmp eq i32 %240, 24
  br i1 %cmp375, label %if.then.377, label %if.else.380

if.then.377:                                      ; preds = %while.end
  %241 = load i64, i64* %biWidth, align 8
  %mul378 = mul nsw i64 %241, 3
  %conv379 = trunc i64 %mul378 to i32
  store i32 %conv379, i32* %row_width, align 4
  br label %if.end.382

if.else.380:                                      ; preds = %while.end
  %242 = load i64, i64* %biWidth, align 8
  %conv381 = trunc i64 %242 to i32
  store i32 %conv381, i32* %row_width, align 4
  br label %if.end.382

if.end.382:                                       ; preds = %if.else.380, %if.then.377
  br label %while.cond.383

while.cond.383:                                   ; preds = %while.body.386, %if.end.382
  %243 = load i32, i32* %row_width, align 4
  %and = and i32 %243, 3
  %cmp384 = icmp ne i32 %and, 0
  br i1 %cmp384, label %while.body.386, label %while.end.387

while.body.386:                                   ; preds = %while.cond.383
  %244 = load i32, i32* %row_width, align 4
  %inc = add i32 %244, 1
  store i32 %inc, i32* %row_width, align 4
  br label %while.cond.383

while.end.387:                                    ; preds = %while.cond.383
  %245 = load i32, i32* %row_width, align 4
  %246 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %row_width388 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %246, i32 0, i32 5
  store i32 %245, i32* %row_width388, align 4
  %247 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem389 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %247, i32 0, i32 1
  %248 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem389, align 8
  %request_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %248, i32 0, i32 4
  %249 = load %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)** %request_virt_sarray, align 8
  %250 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %251 = bitcast %struct.jpeg_compress_struct* %250 to %struct.jpeg_common_struct*
  %252 = load i32, i32* %row_width, align 4
  %253 = load i64, i64* %biHeight, align 8
  %conv390 = trunc i64 %253 to i32
  %call391 = call %struct.jvirt_sarray_control* %249(%struct.jpeg_common_struct* %251, i32 1, i32 0, i32 %252, i32 %conv390, i32 1)
  %254 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %whole_image = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %254, i32 0, i32 3
  store %struct.jvirt_sarray_control* %call391, %struct.jvirt_sarray_control** %whole_image, align 8
  %255 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %pub392 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %255, i32 0, i32 0
  %get_pixel_rows = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub392, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @preload_image, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows, align 8
  %256 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %256, i32 0, i32 2
  %257 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress, align 8
  %cmp393 = icmp ne %struct.jpeg_progress_mgr* %257, null
  br i1 %cmp393, label %if.then.395, label %if.end.399

if.then.395:                                      ; preds = %while.end.387
  %258 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %progress397 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %258, i32 0, i32 2
  %259 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress397, align 8
  %260 = bitcast %struct.jpeg_progress_mgr* %259 to %struct.cdjpeg_progress_mgr*
  store %struct.cdjpeg_progress_mgr* %260, %struct.cdjpeg_progress_mgr** %progress396, align 8
  %261 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress396, align 8
  %total_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %261, i32 0, i32 2
  %262 = load i32, i32* %total_extra_passes, align 4
  %inc398 = add nsw i32 %262, 1
  store i32 %inc398, i32* %total_extra_passes, align 4
  br label %if.end.399

if.end.399:                                       ; preds = %if.then.395, %while.end.387
  %263 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem400 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %263, i32 0, i32 1
  %264 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem400, align 8
  %alloc_sarray401 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %264, i32 0, i32 2
  %265 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray401, align 8
  %266 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %267 = bitcast %struct.jpeg_compress_struct* %266 to %struct.jpeg_common_struct*
  %268 = load i64, i64* %biWidth, align 8
  %mul402 = mul nsw i64 %268, 3
  %conv403 = trunc i64 %mul402 to i32
  %call404 = call i8** %265(%struct.jpeg_common_struct* %267, i32 1, i32 %conv403, i32 1)
  %269 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %pub405 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %269, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub405, i32 0, i32 4
  store i8** %call404, i8*** %buffer, align 8
  %270 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %pub406 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %270, i32 0, i32 0
  %buffer_height = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub406, i32 0, i32 5
  store i32 1, i32* %buffer_height, align 4
  %271 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %271, i32 0, i32 9
  store i32 2, i32* %in_color_space, align 4
  %272 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %272, i32 0, i32 8
  store i32 3, i32* %input_components, align 4
  %273 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %273, i32 0, i32 11
  store i32 8, i32* %data_precision, align 4
  %274 = load i64, i64* %biWidth, align 8
  %conv407 = trunc i64 %274 to i32
  %275 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %275, i32 0, i32 6
  store i32 %conv407, i32* %image_width, align 4
  %276 = load i64, i64* %biHeight, align 8
  %conv408 = trunc i64 %276 to i32
  %277 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %277, i32 0, i32 7
  store i32 %conv408, i32* %image_height, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_input_bmp(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  ret void
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @read_colormap(%struct._bmp_source_struct* %sinfo, i32 %cmaplen, i32 %mapentrysize) #0 {
entry:
  %sinfo.addr = alloca %struct._bmp_source_struct*, align 8
  %cmaplen.addr = alloca i32, align 4
  %mapentrysize.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._bmp_source_struct* %sinfo, %struct._bmp_source_struct** %sinfo.addr, align 8
  store i32 %cmaplen, i32* %cmaplen.addr, align 4
  store i32 %mapentrysize, i32* %mapentrysize.addr, align 4
  %0 = load i32, i32* %mapentrysize.addr, align 4
  switch i32 %0, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %cmaplen.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8
  %call = call i32 @read_byte(%struct._bmp_source_struct* %3)
  %conv = trunc i32 %call to i8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8
  %colormap = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %5, i32 0, i32 2
  %6 = load i8**, i8*** %colormap, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 2
  %7 = load i8*, i8** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %7, i64 %idxprom
  store i8 %conv, i8* %arrayidx1, align 1
  %8 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8
  %call2 = call i32 @read_byte(%struct._bmp_source_struct* %8)
  %conv3 = trunc i32 %call2 to i8
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8
  %colormap5 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %10, i32 0, i32 2
  %11 = load i8**, i8*** %colormap5, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %11, i64 1
  %12 = load i8*, i8** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %12, i64 %idxprom4
  store i8 %conv3, i8* %arrayidx7, align 1
  %13 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8
  %call8 = call i32 @read_byte(%struct._bmp_source_struct* %13)
  %conv9 = trunc i32 %call8 to i8
  %14 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %14 to i64
  %15 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8
  %colormap11 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %15, i32 0, i32 2
  %16 = load i8**, i8*** %colormap11, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %16, i64 0
  %17 = load i8*, i8** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %17, i64 %idxprom10
  store i8 %conv9, i8* %arrayidx13, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.38, %sw.bb.14
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %cmaplen.addr, align 4
  %cmp16 = icmp slt i32 %19, %20
  br i1 %cmp16, label %for.body.18, label %for.end.40

for.body.18:                                      ; preds = %for.cond.15
  %21 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8
  %call19 = call i32 @read_byte(%struct._bmp_source_struct* %21)
  %conv20 = trunc i32 %call19 to i8
  %22 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %22 to i64
  %23 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8
  %colormap22 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %23, i32 0, i32 2
  %24 = load i8**, i8*** %colormap22, align 8
  %arrayidx23 = getelementptr inbounds i8*, i8** %24, i64 2
  %25 = load i8*, i8** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %25, i64 %idxprom21
  store i8 %conv20, i8* %arrayidx24, align 1
  %26 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8
  %call25 = call i32 @read_byte(%struct._bmp_source_struct* %26)
  %conv26 = trunc i32 %call25 to i8
  %27 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %27 to i64
  %28 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8
  %colormap28 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %28, i32 0, i32 2
  %29 = load i8**, i8*** %colormap28, align 8
  %arrayidx29 = getelementptr inbounds i8*, i8** %29, i64 1
  %30 = load i8*, i8** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %30, i64 %idxprom27
  store i8 %conv26, i8* %arrayidx30, align 1
  %31 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8
  %call31 = call i32 @read_byte(%struct._bmp_source_struct* %31)
  %conv32 = trunc i32 %call31 to i8
  %32 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %32 to i64
  %33 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8
  %colormap34 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %33, i32 0, i32 2
  %34 = load i8**, i8*** %colormap34, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %34, i64 0
  %35 = load i8*, i8** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %35, i64 %idxprom33
  store i8 %conv32, i8* %arrayidx36, align 1
  %36 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8
  %call37 = call i32 @read_byte(%struct._bmp_source_struct* %36)
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.body.18
  %37 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %37, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond.15

for.end.40:                                       ; preds = %for.cond.15
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %38 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8
  %cinfo = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %38, i32 0, i32 1
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %39, i32 0, i32 0
  %40 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %40, i32 0, i32 5
  store i32 1001, i32* %msg_code, align 4
  %41 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8
  %cinfo41 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %41, i32 0, i32 1
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo41, align 8
  %err42 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 0
  %43 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err42, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %43, i32 0, i32 0
  %44 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %45 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8
  %cinfo43 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %45, i32 0, i32 1
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo43, align 8
  %47 = bitcast %struct.jpeg_compress_struct* %46 to %struct.jpeg_common_struct*
  call void %44(%struct.jpeg_common_struct* %47)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.40, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @read_byte(%struct._bmp_source_struct* %sinfo) #0 {
entry:
  %sinfo.addr = alloca %struct._bmp_source_struct*, align 8
  %infile = alloca %struct._IO_FILE*, align 8
  %c = alloca i32, align 4
  store %struct._bmp_source_struct* %sinfo, %struct._bmp_source_struct** %sinfo.addr, align 8
  %0 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8
  %pub = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %0, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %infile, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %2)
  store i32 %call, i32* %c, align 4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8
  %cinfo = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %3, i32 0, i32 1
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 42, i32* %msg_code, align 4
  %6 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8
  %cinfo1 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %6, i32 0, i32 1
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo1, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 0
  %9 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %10 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %sinfo.addr, align 8
  %cinfo3 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %10, i32 0, i32 1
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo3, align 8
  %12 = bitcast %struct.jpeg_compress_struct* %11 to %struct.jpeg_common_struct*
  call void %9(%struct.jpeg_common_struct* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32, i32* %c, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @preload_image(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct._bmp_source_struct*, align 8
  %infile = alloca %struct._IO_FILE*, align 8
  %c = alloca i32, align 4
  %out_ptr = alloca i8*, align 8
  %image_ptr = alloca i8**, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %progress = alloca %struct.cdjpeg_progress_mgr*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %0 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %1 = bitcast %struct.cjpeg_source_struct* %0 to %struct._bmp_source_struct*
  store %struct._bmp_source_struct* %1, %struct._bmp_source_struct** %source, align 8
  %2 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %pub = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %2, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** %infile, align 8
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %progress1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 2
  %5 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress1, align 8
  %6 = bitcast %struct.jpeg_progress_mgr* %5 to %struct.cdjpeg_progress_mgr*
  store %struct.cdjpeg_progress_mgr* %6, %struct.cdjpeg_progress_mgr** %progress, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %7 = load i32, i32* %row, align 4
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 7
  %9 = load i32, i32* %image_height, align 4
  %cmp = icmp ult i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  %10 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8
  %cmp2 = icmp ne %struct.cdjpeg_progress_mgr* %10, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %row, align 4
  %conv = zext i32 %11 to i64
  %12 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8
  %pub3 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %12, i32 0, i32 0
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %pub3, i32 0, i32 1
  store i64 %conv, i64* %pass_counter, align 8
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_height4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 7
  %14 = load i32, i32* %image_height4, align 4
  %conv5 = zext i32 %14 to i64
  %15 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8
  %pub6 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %15, i32 0, i32 0
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %pub6, i32 0, i32 2
  store i64 %conv5, i64* %pass_limit, align 8
  %16 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8
  %pub7 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %16, i32 0, i32 0
  %progress_monitor = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %pub7, i32 0, i32 0
  %progress_monitor8 = bitcast {}** %progress_monitor to void (%struct.jpeg_common_struct*)**
  %17 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %progress_monitor8, align 8
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %19 = bitcast %struct.jpeg_compress_struct* %18 to %struct.jpeg_common_struct*
  call void %17(%struct.jpeg_common_struct* %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 1
  %21 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %21, i32 0, i32 7
  %22 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %access_virt_sarray, align 8
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %24 = bitcast %struct.jpeg_compress_struct* %23 to %struct.jpeg_common_struct*
  %25 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %whole_image = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %25, i32 0, i32 3
  %26 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %whole_image, align 8
  %27 = load i32, i32* %row, align 4
  %call = call i8** %22(%struct.jpeg_common_struct* %24, %struct.jvirt_sarray_control* %26, i32 %27, i32 1, i32 1)
  store i8** %call, i8*** %image_ptr, align 8
  %28 = load i8**, i8*** %image_ptr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %28, i64 0
  %29 = load i8*, i8** %arrayidx, align 8
  store i8* %29, i8** %out_ptr, align 8
  %30 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %row_width = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %30, i32 0, i32 5
  %31 = load i32, i32* %row_width, align 4
  store i32 %31, i32* %col, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %if.end
  %32 = load i32, i32* %col, align 4
  %cmp10 = icmp ugt i32 %32, 0
  br i1 %cmp10, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.9
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call13 = call i32 @_IO_getc(%struct._IO_FILE* %33)
  store i32 %call13, i32* %c, align 4
  %cmp14 = icmp eq i32 %call13, -1
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %for.body.12
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i32 0, i32 5
  store i32 42, i32* %msg_code, align 4
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err17, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 0
  %38 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %40 = bitcast %struct.jpeg_compress_struct* %39 to %struct.jpeg_common_struct*
  call void %38(%struct.jpeg_common_struct* %40)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %for.body.12
  %41 = load i32, i32* %c, align 4
  %conv19 = trunc i32 %41 to i8
  %42 = load i8*, i8** %out_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr, i8** %out_ptr, align 8
  store i8 %conv19, i8* %42, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %43 = load i32, i32* %col, align 4
  %dec = add i32 %43, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %44 = load i32, i32* %row, align 4
  %inc = add i32 %44, 1
  store i32 %inc, i32* %row, align 4
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  %45 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8
  %cmp22 = icmp ne %struct.cdjpeg_progress_mgr* %45, null
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %for.end.21
  %46 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8
  %completed_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %46, i32 0, i32 1
  %47 = load i32, i32* %completed_extra_passes, align 4
  %inc25 = add nsw i32 %47, 1
  store i32 %inc25, i32* %completed_extra_passes, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %for.end.21
  %48 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %bits_per_pixel = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %48, i32 0, i32 6
  %49 = load i32, i32* %bits_per_pixel, align 4
  switch i32 %49, label %sw.default [
    i32 8, label %sw.bb
    i32 24, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %if.end.26
  %50 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %pub27 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %50, i32 0, i32 0
  %get_pixel_rows = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub27, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_8bit_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows, align 8
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.end.26
  %51 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %pub29 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %51, i32 0, i32 0
  %get_pixel_rows30 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub29, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_24bit_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows30, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.26
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %52, i32 0, i32 0
  %53 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err31, align 8
  %msg_code32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %53, i32 0, i32 5
  store i32 1002, i32* %msg_code32, align 4
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %54, i32 0, i32 0
  %55 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err33, align 8
  %error_exit34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %55, i32 0, i32 0
  %56 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit34, align 8
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %58 = bitcast %struct.jpeg_compress_struct* %57 to %struct.jpeg_common_struct*
  call void %56(%struct.jpeg_common_struct* %58)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.28, %sw.bb
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_height35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %59, i32 0, i32 7
  %60 = load i32, i32* %image_height35, align 4
  %61 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %source_row = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %61, i32 0, i32 4
  store i32 %60, i32* %source_row, align 4
  %62 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %pub36 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %62, i32 0, i32 0
  %get_pixel_rows37 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub36, i32 0, i32 1
  %63 = load i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows37, align 8
  %64 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %65 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %call38 = call i32 %63(%struct.jpeg_compress_struct* %64, %struct.cjpeg_source_struct* %65)
  ret i32 %call38
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_8bit_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct._bmp_source_struct*, align 8
  %colormap = alloca i8**, align 8
  %image_ptr = alloca i8**, align 8
  %t = alloca i32, align 4
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %col = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %0 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %1 = bitcast %struct.cjpeg_source_struct* %0 to %struct._bmp_source_struct*
  store %struct._bmp_source_struct* %1, %struct._bmp_source_struct** %source, align 8
  %2 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %colormap1 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %2, i32 0, i32 2
  %3 = load i8**, i8*** %colormap1, align 8
  store i8** %3, i8*** %colormap, align 8
  %4 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %source_row = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %4, i32 0, i32 4
  %5 = load i32, i32* %source_row, align 4
  %dec = add i32 %5, -1
  store i32 %dec, i32* %source_row, align 4
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 1
  %7 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %7, i32 0, i32 7
  %8 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %access_virt_sarray, align 8
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %10 = bitcast %struct.jpeg_compress_struct* %9 to %struct.jpeg_common_struct*
  %11 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %whole_image = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %11, i32 0, i32 3
  %12 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %whole_image, align 8
  %13 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %source_row2 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %13, i32 0, i32 4
  %14 = load i32, i32* %source_row2, align 4
  %call = call i8** %8(%struct.jpeg_common_struct* %10, %struct.jvirt_sarray_control* %12, i32 %14, i32 1, i32 0)
  store i8** %call, i8*** %image_ptr, align 8
  %15 = load i8**, i8*** %image_ptr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %15, i64 0
  %16 = load i8*, i8** %arrayidx, align 8
  store i8* %16, i8** %inptr, align 8
  %17 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %pub = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %17, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 4
  %18 = load i8**, i8*** %buffer, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %18, i64 0
  %19 = load i8*, i8** %arrayidx3, align 8
  store i8* %19, i8** %outptr, align 8
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 6
  %21 = load i32, i32* %image_width, align 4
  store i32 %21, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %22 = load i32, i32* %col, align 4
  %cmp = icmp ugt i32 %22, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i8*, i8** %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %inptr, align 8
  %24 = load i8, i8* %23, align 1
  %conv = zext i8 %24 to i32
  store i32 %conv, i32* %t, align 4
  %25 = load i32, i32* %t, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load i8**, i8*** %colormap, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %26, i64 0
  %27 = load i8*, i8** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %27, i64 %idxprom
  %28 = load i8, i8* %arrayidx5, align 1
  %29 = load i8*, i8** %outptr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr6, i8** %outptr, align 8
  store i8 %28, i8* %29, align 1
  %30 = load i32, i32* %t, align 4
  %idxprom7 = sext i32 %30 to i64
  %31 = load i8**, i8*** %colormap, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %31, i64 1
  %32 = load i8*, i8** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %32, i64 %idxprom7
  %33 = load i8, i8* %arrayidx9, align 1
  %34 = load i8*, i8** %outptr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr10, i8** %outptr, align 8
  store i8 %33, i8* %34, align 1
  %35 = load i32, i32* %t, align 4
  %idxprom11 = sext i32 %35 to i64
  %36 = load i8**, i8*** %colormap, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %36, i64 2
  %37 = load i8*, i8** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %37, i64 %idxprom11
  %38 = load i8, i8* %arrayidx13, align 1
  %39 = load i8*, i8** %outptr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr14, i8** %outptr, align 8
  store i8 %38, i8* %39, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %col, align 4
  %dec15 = add i32 %40, -1
  store i32 %dec15, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @get_24bit_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct._bmp_source_struct*, align 8
  %image_ptr = alloca i8**, align 8
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %col = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %0 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %1 = bitcast %struct.cjpeg_source_struct* %0 to %struct._bmp_source_struct*
  store %struct._bmp_source_struct* %1, %struct._bmp_source_struct** %source, align 8
  %2 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %source_row = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %2, i32 0, i32 4
  %3 = load i32, i32* %source_row, align 4
  %dec = add i32 %3, -1
  store i32 %dec, i32* %source_row, align 4
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 1
  %5 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %5, i32 0, i32 7
  %6 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %access_virt_sarray, align 8
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %8 = bitcast %struct.jpeg_compress_struct* %7 to %struct.jpeg_common_struct*
  %9 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %whole_image = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %9, i32 0, i32 3
  %10 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %whole_image, align 8
  %11 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %source_row1 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %11, i32 0, i32 4
  %12 = load i32, i32* %source_row1, align 4
  %call = call i8** %6(%struct.jpeg_common_struct* %8, %struct.jvirt_sarray_control* %10, i32 %12, i32 1, i32 0)
  store i8** %call, i8*** %image_ptr, align 8
  %13 = load i8**, i8*** %image_ptr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %13, i64 0
  %14 = load i8*, i8** %arrayidx, align 8
  store i8* %14, i8** %inptr, align 8
  %15 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %source, align 8
  %pub = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %15, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 4
  %16 = load i8**, i8*** %buffer, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %16, i64 0
  %17 = load i8*, i8** %arrayidx2, align 8
  store i8* %17, i8** %outptr, align 8
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 6
  %19 = load i32, i32* %image_width, align 4
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
  %dec8 = add i32 %31, -1
  store i32 %dec8, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 1
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
