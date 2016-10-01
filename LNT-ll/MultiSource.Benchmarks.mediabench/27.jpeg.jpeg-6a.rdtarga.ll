; ModuleID = './MultiSource.Benchmarks.mediabench/27.jpeg.jpeg-6a.rdtarga.bc'
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
%struct._tga_source_struct = type { %struct.cjpeg_source_struct, %struct.jpeg_compress_struct*, i8**, %struct.jvirt_sarray_control*, i32, void (%struct._tga_source_struct*)*, [4 x i8], i32, i32, i32, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }

@c5to8bits = internal constant [32 x i8] c"\00\08\10\19!)1:BJRZcks{\84\8C\94\9C\A5\AD\B5\BD\C5\CE\D6\DE\E6\EF\F7\FF", align 16

; Function Attrs: nounwind uwtable
define %struct.cjpeg_source_struct* @jinit_read_targa(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %source = alloca %struct._tga_source_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_compress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 112)
  %5 = bitcast i8* %call to %struct._tga_source_struct*
  store %struct._tga_source_struct* %5, %struct._tga_source_struct** %source, align 8
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %7 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %cinfo1 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %7, i32 0, i32 1
  store %struct.jpeg_compress_struct* %6, %struct.jpeg_compress_struct** %cinfo1, align 8
  %8 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %pub = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %8, i32 0, i32 0
  %start_input = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @start_input_tga, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %start_input, align 8
  %9 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %pub2 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %9, i32 0, i32 0
  %finish_input = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub2, i32 0, i32 2
  store void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @finish_input_tga, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %finish_input, align 8
  %10 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %11 = bitcast %struct._tga_source_struct* %10 to %struct.cjpeg_source_struct*
  ret %struct.cjpeg_source_struct* %11
}

; Function Attrs: nounwind uwtable
define internal void @start_input_tga(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct._tga_source_struct*, align 8
  %targaheader = alloca [18 x i8], align 16
  %idlen = alloca i32, align 4
  %cmaptype = alloca i32, align 4
  %subtype = alloca i32, align 4
  %flags = alloca i32, align 4
  %interlace_type = alloca i32, align 4
  %components = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %maplen = alloca i32, align 4
  %is_bottom_up = alloca i32, align 4
  %progress146 = alloca %struct.cdjpeg_progress_mgr*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %0 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %1 = bitcast %struct.cjpeg_source_struct* %0 to %struct._tga_source_struct*
  store %struct._tga_source_struct* %1, %struct._tga_source_struct** %source, align 8
  %arraydecay = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i32 0
  %2 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %pub = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %2, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  %call = call i64 @fread(i8* %arraydecay, i64 1, i64 18, %struct._IO_FILE* %3)
  %cmp = icmp eq i64 %call, 18
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
  %arrayidx = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 16
  %11 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %cmp2 = icmp eq i32 %conv, 15
  br i1 %cmp2, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %arrayidx5 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 16
  store i8 16, i8* %arrayidx5, align 1
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %arrayidx7 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 0
  %12 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %12 to i32
  store i32 %conv8, i32* %idlen, align 4
  %arrayidx9 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 1
  %13 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %13 to i32
  store i32 %conv10, i32* %cmaptype, align 4
  %arrayidx11 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 2
  %14 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %14 to i32
  store i32 %conv12, i32* %subtype, align 4
  %arrayidx13 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 5
  %15 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %15 to i32
  %arrayidx15 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 6
  %16 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %16 to i32
  %shl = shl i32 %conv16, 8
  %add = add i32 %conv14, %shl
  store i32 %add, i32* %maplen, align 4
  %arrayidx17 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 12
  %17 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %17 to i32
  %arrayidx19 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 13
  %18 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %18 to i32
  %shl21 = shl i32 %conv20, 8
  %add22 = add i32 %conv18, %shl21
  store i32 %add22, i32* %width, align 4
  %arrayidx23 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 14
  %19 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %19 to i32
  %arrayidx25 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 15
  %20 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %20 to i32
  %shl27 = shl i32 %conv26, 8
  %add28 = add i32 %conv24, %shl27
  store i32 %add28, i32* %height, align 4
  %arrayidx29 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 16
  %21 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %21 to i32
  %shr = ashr i32 %conv30, 3
  %22 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %pixel_size = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %22, i32 0, i32 7
  store i32 %shr, i32* %pixel_size, align 4
  %arrayidx31 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 17
  %23 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %23 to i32
  store i32 %conv32, i32* %flags, align 4
  %24 = load i32, i32* %flags, align 4
  %and = and i32 %24, 32
  %cmp33 = icmp eq i32 %and, 0
  %conv34 = zext i1 %cmp33 to i32
  store i32 %conv34, i32* %is_bottom_up, align 4
  %25 = load i32, i32* %flags, align 4
  %shr35 = ashr i32 %25, 6
  store i32 %shr35, i32* %interlace_type, align 4
  %26 = load i32, i32* %cmaptype, align 4
  %cmp36 = icmp sgt i32 %26, 1
  br i1 %cmp36, label %if.then.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %27 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %pixel_size38 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %27, i32 0, i32 7
  %28 = load i32, i32* %pixel_size38, align 4
  %cmp39 = icmp slt i32 %28, 1
  br i1 %cmp39, label %if.then.54, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %lor.lhs.false
  %29 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %pixel_size42 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %29, i32 0, i32 7
  %30 = load i32, i32* %pixel_size42, align 4
  %cmp43 = icmp sgt i32 %30, 4
  br i1 %cmp43, label %if.then.54, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %lor.lhs.false.41
  %arrayidx46 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 16
  %31 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %31 to i32
  %and48 = and i32 %conv47, 7
  %cmp49 = icmp ne i32 %and48, 0
  br i1 %cmp49, label %if.then.54, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false.45
  %32 = load i32, i32* %interlace_type, align 4
  %cmp52 = icmp ne i32 %32, 0
  br i1 %cmp52, label %if.then.54, label %if.end.59

if.then.54:                                       ; preds = %lor.lhs.false.51, %lor.lhs.false.45, %lor.lhs.false.41, %lor.lhs.false, %if.end.6
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err55 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %33, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err55, align 8
  %msg_code56 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 5
  store i32 1033, i32* %msg_code56, align 4
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err57 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 0
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err57, align 8
  %error_exit58 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %36, i32 0, i32 0
  %37 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit58, align 8
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %39 = bitcast %struct.jpeg_compress_struct* %38 to %struct.jpeg_common_struct*
  call void %37(%struct.jpeg_common_struct* %39)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.54, %lor.lhs.false.51
  %40 = load i32, i32* %subtype, align 4
  %cmp60 = icmp sgt i32 %40, 8
  br i1 %cmp60, label %if.then.62, label %if.else

if.then.62:                                       ; preds = %if.end.59
  %41 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %read_pixel = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %41, i32 0, i32 5
  store void (%struct._tga_source_struct*)* @read_rle_pixel, void (%struct._tga_source_struct*)** %read_pixel, align 8
  %42 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %dup_pixel_count = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %42, i32 0, i32 9
  store i32 0, i32* %dup_pixel_count, align 4
  %43 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %block_count = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %43, i32 0, i32 8
  store i32 0, i32* %block_count, align 4
  %44 = load i32, i32* %subtype, align 4
  %sub = sub nsw i32 %44, 8
  store i32 %sub, i32* %subtype, align 4
  br label %if.end.64

if.else:                                          ; preds = %if.end.59
  %45 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %read_pixel63 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %45, i32 0, i32 5
  store void (%struct._tga_source_struct*)* @read_non_rle_pixel, void (%struct._tga_source_struct*)** %read_pixel63, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.else, %if.then.62
  store i32 3, i32* %components, align 4
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %46, i32 0, i32 9
  store i32 2, i32* %in_color_space, align 4
  %47 = load i32, i32* %subtype, align 4
  switch i32 %47, label %sw.default.135 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.86
    i32 3, label %sw.bb.110
  ]

sw.bb:                                            ; preds = %if.end.64
  %48 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %pixel_size65 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %48, i32 0, i32 7
  %49 = load i32, i32* %pixel_size65, align 4
  %cmp66 = icmp eq i32 %49, 1
  br i1 %cmp66, label %land.lhs.true, label %if.else.71

land.lhs.true:                                    ; preds = %sw.bb
  %50 = load i32, i32* %cmaptype, align 4
  %cmp68 = icmp eq i32 %50, 1
  br i1 %cmp68, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %land.lhs.true
  %51 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %get_pixel_rows = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %51, i32 0, i32 10
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_8bit_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows, align 8
  br label %if.end.76

if.else.71:                                       ; preds = %land.lhs.true, %sw.bb
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err72 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %52, i32 0, i32 0
  %53 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err72, align 8
  %msg_code73 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %53, i32 0, i32 5
  store i32 1033, i32* %msg_code73, align 4
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err74 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %54, i32 0, i32 0
  %55 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err74, align 8
  %error_exit75 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %55, i32 0, i32 0
  %56 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit75, align 8
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %58 = bitcast %struct.jpeg_compress_struct* %57 to %struct.jpeg_common_struct*
  call void %56(%struct.jpeg_common_struct* %58)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.71, %if.then.70
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err77 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %59, i32 0, i32 0
  %60 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err77, align 8
  %msg_code78 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %60, i32 0, i32 5
  store i32 1037, i32* %msg_code78, align 4
  %61 = load i32, i32* %width, align 4
  %62 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err79 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %62, i32 0, i32 0
  %63 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err79, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %63, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx80 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %61, i32* %arrayidx80, align 4
  %64 = load i32, i32* %height, align 4
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err81 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %65, i32 0, i32 0
  %66 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err81, align 8
  %msg_parm82 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %66, i32 0, i32 6
  %i83 = bitcast %union.anon* %msg_parm82 to [8 x i32]*
  %arrayidx84 = getelementptr inbounds [8 x i32], [8 x i32]* %i83, i32 0, i64 1
  store i32 %64, i32* %arrayidx84, align 4
  %67 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err85 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %67, i32 0, i32 0
  %68 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err85, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %68, i32 0, i32 1
  %69 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %70 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %71 = bitcast %struct.jpeg_compress_struct* %70 to %struct.jpeg_common_struct*
  call void %69(%struct.jpeg_common_struct* %71, i32 1)
  br label %sw.epilog.140

sw.bb.86:                                         ; preds = %if.end.64
  %72 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %pixel_size87 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %72, i32 0, i32 7
  %73 = load i32, i32* %pixel_size87, align 4
  switch i32 %73, label %sw.default [
    i32 2, label %sw.bb.88
    i32 3, label %sw.bb.90
    i32 4, label %sw.bb.92
  ]

sw.bb.88:                                         ; preds = %sw.bb.86
  %74 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %get_pixel_rows89 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %74, i32 0, i32 10
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_16bit_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows89, align 8
  br label %sw.epilog

sw.bb.90:                                         ; preds = %sw.bb.86
  %75 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %get_pixel_rows91 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %75, i32 0, i32 10
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_24bit_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows91, align 8
  br label %sw.epilog

sw.bb.92:                                         ; preds = %sw.bb.86
  %76 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %get_pixel_rows93 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %76, i32 0, i32 10
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_24bit_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows93, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.86
  %77 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err94 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %77, i32 0, i32 0
  %78 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err94, align 8
  %msg_code95 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %78, i32 0, i32 5
  store i32 1033, i32* %msg_code95, align 4
  %79 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err96 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %79, i32 0, i32 0
  %80 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err96, align 8
  %error_exit97 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %80, i32 0, i32 0
  %81 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit97, align 8
  %82 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %83 = bitcast %struct.jpeg_compress_struct* %82 to %struct.jpeg_common_struct*
  call void %81(%struct.jpeg_common_struct* %83)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.92, %sw.bb.90, %sw.bb.88
  %84 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err98 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %84, i32 0, i32 0
  %85 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err98, align 8
  %msg_code99 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %85, i32 0, i32 5
  store i32 1035, i32* %msg_code99, align 4
  %86 = load i32, i32* %width, align 4
  %87 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err100 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %87, i32 0, i32 0
  %88 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err100, align 8
  %msg_parm101 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %88, i32 0, i32 6
  %i102 = bitcast %union.anon* %msg_parm101 to [8 x i32]*
  %arrayidx103 = getelementptr inbounds [8 x i32], [8 x i32]* %i102, i32 0, i64 0
  store i32 %86, i32* %arrayidx103, align 4
  %89 = load i32, i32* %height, align 4
  %90 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err104 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %90, i32 0, i32 0
  %91 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err104, align 8
  %msg_parm105 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %91, i32 0, i32 6
  %i106 = bitcast %union.anon* %msg_parm105 to [8 x i32]*
  %arrayidx107 = getelementptr inbounds [8 x i32], [8 x i32]* %i106, i32 0, i64 1
  store i32 %89, i32* %arrayidx107, align 4
  %92 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err108 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %92, i32 0, i32 0
  %93 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err108, align 8
  %emit_message109 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %93, i32 0, i32 1
  %94 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message109, align 8
  %95 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %96 = bitcast %struct.jpeg_compress_struct* %95 to %struct.jpeg_common_struct*
  call void %94(%struct.jpeg_common_struct* %96, i32 1)
  br label %sw.epilog.140

sw.bb.110:                                        ; preds = %if.end.64
  store i32 1, i32* %components, align 4
  %97 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %in_color_space111 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %97, i32 0, i32 9
  store i32 1, i32* %in_color_space111, align 4
  %98 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %pixel_size112 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %98, i32 0, i32 7
  %99 = load i32, i32* %pixel_size112, align 4
  %cmp113 = icmp eq i32 %99, 1
  br i1 %cmp113, label %if.then.115, label %if.else.117

if.then.115:                                      ; preds = %sw.bb.110
  %100 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %get_pixel_rows116 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %100, i32 0, i32 10
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_8bit_gray_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows116, align 8
  br label %if.end.122

if.else.117:                                      ; preds = %sw.bb.110
  %101 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err118 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %101, i32 0, i32 0
  %102 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err118, align 8
  %msg_code119 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %102, i32 0, i32 5
  store i32 1033, i32* %msg_code119, align 4
  %103 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err120 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %103, i32 0, i32 0
  %104 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err120, align 8
  %error_exit121 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %104, i32 0, i32 0
  %105 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit121, align 8
  %106 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %107 = bitcast %struct.jpeg_compress_struct* %106 to %struct.jpeg_common_struct*
  call void %105(%struct.jpeg_common_struct* %107)
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.117, %if.then.115
  %108 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err123 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %108, i32 0, i32 0
  %109 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err123, align 8
  %msg_code124 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %109, i32 0, i32 5
  store i32 1036, i32* %msg_code124, align 4
  %110 = load i32, i32* %width, align 4
  %111 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err125 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %111, i32 0, i32 0
  %112 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err125, align 8
  %msg_parm126 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %112, i32 0, i32 6
  %i127 = bitcast %union.anon* %msg_parm126 to [8 x i32]*
  %arrayidx128 = getelementptr inbounds [8 x i32], [8 x i32]* %i127, i32 0, i64 0
  store i32 %110, i32* %arrayidx128, align 4
  %113 = load i32, i32* %height, align 4
  %114 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err129 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %114, i32 0, i32 0
  %115 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err129, align 8
  %msg_parm130 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %115, i32 0, i32 6
  %i131 = bitcast %union.anon* %msg_parm130 to [8 x i32]*
  %arrayidx132 = getelementptr inbounds [8 x i32], [8 x i32]* %i131, i32 0, i64 1
  store i32 %113, i32* %arrayidx132, align 4
  %116 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err133 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %116, i32 0, i32 0
  %117 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err133, align 8
  %emit_message134 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %117, i32 0, i32 1
  %118 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message134, align 8
  %119 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %120 = bitcast %struct.jpeg_compress_struct* %119 to %struct.jpeg_common_struct*
  call void %118(%struct.jpeg_common_struct* %120, i32 1)
  br label %sw.epilog.140

sw.default.135:                                   ; preds = %if.end.64
  %121 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err136 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %121, i32 0, i32 0
  %122 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err136, align 8
  %msg_code137 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %122, i32 0, i32 5
  store i32 1033, i32* %msg_code137, align 4
  %123 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err138 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %123, i32 0, i32 0
  %124 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err138, align 8
  %error_exit139 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %124, i32 0, i32 0
  %125 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit139, align 8
  %126 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %127 = bitcast %struct.jpeg_compress_struct* %126 to %struct.jpeg_common_struct*
  call void %125(%struct.jpeg_common_struct* %127)
  br label %sw.epilog.140

sw.epilog.140:                                    ; preds = %sw.default.135, %if.end.122, %sw.epilog, %if.end.76
  %128 = load i32, i32* %is_bottom_up, align 4
  %tobool = icmp ne i32 %128, 0
  br i1 %tobool, label %if.then.141, label %if.else.152

if.then.141:                                      ; preds = %sw.epilog.140
  %129 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %129, i32 0, i32 1
  %130 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %request_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %130, i32 0, i32 4
  %131 = load %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)** %request_virt_sarray, align 8
  %132 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %133 = bitcast %struct.jpeg_compress_struct* %132 to %struct.jpeg_common_struct*
  %134 = load i32, i32* %width, align 4
  %135 = load i32, i32* %components, align 4
  %mul = mul i32 %134, %135
  %136 = load i32, i32* %height, align 4
  %call142 = call %struct.jvirt_sarray_control* %131(%struct.jpeg_common_struct* %133, i32 1, i32 0, i32 %mul, i32 %136, i32 1)
  %137 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %whole_image = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %137, i32 0, i32 3
  store %struct.jvirt_sarray_control* %call142, %struct.jvirt_sarray_control** %whole_image, align 8
  %138 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %138, i32 0, i32 2
  %139 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress, align 8
  %cmp143 = icmp ne %struct.jpeg_progress_mgr* %139, null
  br i1 %cmp143, label %if.then.145, label %if.end.148

if.then.145:                                      ; preds = %if.then.141
  %140 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %progress147 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %140, i32 0, i32 2
  %141 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress147, align 8
  %142 = bitcast %struct.jpeg_progress_mgr* %141 to %struct.cdjpeg_progress_mgr*
  store %struct.cdjpeg_progress_mgr* %142, %struct.cdjpeg_progress_mgr** %progress146, align 8
  %143 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress146, align 8
  %total_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %143, i32 0, i32 2
  %144 = load i32, i32* %total_extra_passes, align 4
  %inc = add nsw i32 %144, 1
  store i32 %inc, i32* %total_extra_passes, align 4
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.145, %if.then.141
  %145 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %pub149 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %145, i32 0, i32 0
  %buffer_height = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub149, i32 0, i32 5
  store i32 1, i32* %buffer_height, align 4
  %146 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %pub150 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %146, i32 0, i32 0
  %get_pixel_rows151 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub150, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @preload_image, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows151, align 8
  br label %if.end.163

if.else.152:                                      ; preds = %sw.epilog.140
  %147 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %whole_image153 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %147, i32 0, i32 3
  store %struct.jvirt_sarray_control* null, %struct.jvirt_sarray_control** %whole_image153, align 8
  %148 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem154 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %148, i32 0, i32 1
  %149 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem154, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %149, i32 0, i32 2
  %150 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8
  %151 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %152 = bitcast %struct.jpeg_compress_struct* %151 to %struct.jpeg_common_struct*
  %153 = load i32, i32* %width, align 4
  %154 = load i32, i32* %components, align 4
  %mul155 = mul i32 %153, %154
  %call156 = call i8** %150(%struct.jpeg_common_struct* %152, i32 1, i32 %mul155, i32 1)
  %155 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %pub157 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %155, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub157, i32 0, i32 4
  store i8** %call156, i8*** %buffer, align 8
  %156 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %pub158 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %156, i32 0, i32 0
  %buffer_height159 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub158, i32 0, i32 5
  store i32 1, i32* %buffer_height159, align 4
  %157 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %get_pixel_rows160 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %157, i32 0, i32 10
  %158 = load i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows160, align 8
  %159 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %pub161 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %159, i32 0, i32 0
  %get_pixel_rows162 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub161, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* %158, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows162, align 8
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.152, %if.end.148
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.163
  %160 = load i32, i32* %idlen, align 4
  %dec = add nsw i32 %160, -1
  store i32 %dec, i32* %idlen, align 4
  %tobool164 = icmp ne i32 %160, 0
  br i1 %tobool164, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %161 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %call165 = call i32 @read_byte(%struct._tga_source_struct* %161)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %162 = load i32, i32* %maplen, align 4
  %cmp166 = icmp ugt i32 %162, 0
  br i1 %cmp166, label %if.then.168, label %if.else.191

if.then.168:                                      ; preds = %while.end
  %163 = load i32, i32* %maplen, align 4
  %cmp169 = icmp ugt i32 %163, 256
  br i1 %cmp169, label %if.then.180, label %lor.lhs.false.171

lor.lhs.false.171:                                ; preds = %if.then.168
  %arrayidx172 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 3
  %164 = load i8, i8* %arrayidx172, align 1
  %conv173 = zext i8 %164 to i32
  %arrayidx174 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 4
  %165 = load i8, i8* %arrayidx174, align 1
  %conv175 = zext i8 %165 to i32
  %shl176 = shl i32 %conv175, 8
  %add177 = add i32 %conv173, %shl176
  %cmp178 = icmp ne i32 %add177, 0
  br i1 %cmp178, label %if.then.180, label %if.end.185

if.then.180:                                      ; preds = %lor.lhs.false.171, %if.then.168
  %166 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err181 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %166, i32 0, i32 0
  %167 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err181, align 8
  %msg_code182 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %167, i32 0, i32 5
  store i32 1032, i32* %msg_code182, align 4
  %168 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err183 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %168, i32 0, i32 0
  %169 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err183, align 8
  %error_exit184 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %169, i32 0, i32 0
  %170 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit184, align 8
  %171 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %172 = bitcast %struct.jpeg_compress_struct* %171 to %struct.jpeg_common_struct*
  call void %170(%struct.jpeg_common_struct* %172)
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.180, %lor.lhs.false.171
  %173 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem186 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %173, i32 0, i32 1
  %174 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem186, align 8
  %alloc_sarray187 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %174, i32 0, i32 2
  %175 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray187, align 8
  %176 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %177 = bitcast %struct.jpeg_compress_struct* %176 to %struct.jpeg_common_struct*
  %178 = load i32, i32* %maplen, align 4
  %call188 = call i8** %175(%struct.jpeg_common_struct* %177, i32 1, i32 %178, i32 3)
  %179 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %colormap = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %179, i32 0, i32 2
  store i8** %call188, i8*** %colormap, align 8
  %180 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %181 = load i32, i32* %maplen, align 4
  %arrayidx189 = getelementptr inbounds [18 x i8], [18 x i8]* %targaheader, i32 0, i64 7
  %182 = load i8, i8* %arrayidx189, align 1
  %conv190 = zext i8 %182 to i32
  call void @read_colormap(%struct._tga_source_struct* %180, i32 %181, i32 %conv190)
  br label %if.end.200

if.else.191:                                      ; preds = %while.end
  %183 = load i32, i32* %cmaptype, align 4
  %tobool192 = icmp ne i32 %183, 0
  br i1 %tobool192, label %if.then.193, label %if.end.198

if.then.193:                                      ; preds = %if.else.191
  %184 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err194 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %184, i32 0, i32 0
  %185 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err194, align 8
  %msg_code195 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %185, i32 0, i32 5
  store i32 1033, i32* %msg_code195, align 4
  %186 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err196 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %186, i32 0, i32 0
  %187 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err196, align 8
  %error_exit197 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %187, i32 0, i32 0
  %188 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit197, align 8
  %189 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %190 = bitcast %struct.jpeg_compress_struct* %189 to %struct.jpeg_common_struct*
  call void %188(%struct.jpeg_common_struct* %190)
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.193, %if.else.191
  %191 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %colormap199 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %191, i32 0, i32 2
  store i8** null, i8*** %colormap199, align 8
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.198, %if.end.185
  %192 = load i32, i32* %components, align 4
  %193 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %193, i32 0, i32 8
  store i32 %192, i32* %input_components, align 4
  %194 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %194, i32 0, i32 11
  store i32 8, i32* %data_precision, align 4
  %195 = load i32, i32* %width, align 4
  %196 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %196, i32 0, i32 6
  store i32 %195, i32* %image_width, align 4
  %197 = load i32, i32* %height, align 4
  %198 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %198, i32 0, i32 7
  store i32 %197, i32* %image_height, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_input_tga(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  ret void
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @read_rle_pixel(%struct._tga_source_struct* %sinfo) #0 {
entry:
  %sinfo.addr = alloca %struct._tga_source_struct*, align 8
  %infile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  store %struct._tga_source_struct* %sinfo, %struct._tga_source_struct** %sinfo.addr, align 8
  %0 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8
  %pub = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %0, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %infile, align 8
  %2 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8
  %dup_pixel_count = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %2, i32 0, i32 9
  %3 = load i32, i32* %dup_pixel_count, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8
  %dup_pixel_count1 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %4, i32 0, i32 9
  %5 = load i32, i32* %dup_pixel_count1, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %dup_pixel_count1, align 4
  br label %for.end

if.end:                                           ; preds = %entry
  %6 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8
  %block_count = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %6, i32 0, i32 8
  %7 = load i32, i32* %block_count, align 4
  %dec2 = add nsw i32 %7, -1
  store i32 %dec2, i32* %block_count, align 4
  %cmp3 = icmp slt i32 %dec2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.12

if.then.4:                                        ; preds = %if.end
  %8 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8
  %call = call i32 @read_byte(%struct._tga_source_struct* %8)
  store i32 %call, i32* %i, align 4
  %9 = load i32, i32* %i, align 4
  %and = and i32 %9, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.4
  %10 = load i32, i32* %i, align 4
  %and6 = and i32 %10, 127
  %11 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8
  %dup_pixel_count7 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %11, i32 0, i32 9
  store i32 %and6, i32* %dup_pixel_count7, align 4
  %12 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8
  %block_count8 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %12, i32 0, i32 8
  store i32 0, i32* %block_count8, align 4
  br label %if.end.11

if.else:                                          ; preds = %if.then.4
  %13 = load i32, i32* %i, align 4
  %and9 = and i32 %13, 127
  %14 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8
  %block_count10 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %14, i32 0, i32 8
  store i32 %and9, i32* %block_count10, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.5
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %15 = load i32, i32* %i, align 4
  %16 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8
  %pixel_size = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %16, i32 0, i32 7
  %17 = load i32, i32* %pixel_size, align 4
  %cmp13 = icmp slt i32 %15, %17
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call14 = call i32 @_IO_getc(%struct._IO_FILE* %18)
  %conv = trunc i32 %call14 to i8
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8
  %tga_pixel = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %20, i32 0, i32 6
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %tga_pixel, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @read_non_rle_pixel(%struct._tga_source_struct* %sinfo) #0 {
entry:
  %sinfo.addr = alloca %struct._tga_source_struct*, align 8
  %infile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  store %struct._tga_source_struct* %sinfo, %struct._tga_source_struct** %sinfo.addr, align 8
  %0 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8
  %pub = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %0, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %infile, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8
  %pixel_size = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %3, i32 0, i32 7
  %4 = load i32, i32* %pixel_size, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %5)
  %conv = trunc i32 %call to i8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8
  %tga_pixel = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %7, i32 0, i32 6
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %tga_pixel, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @get_8bit_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct._tga_source_struct*, align 8
  %t = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %col = alloca i32, align 4
  %colormap = alloca i8**, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %0 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %1 = bitcast %struct.cjpeg_source_struct* %0 to %struct._tga_source_struct*
  store %struct._tga_source_struct* %1, %struct._tga_source_struct** %source, align 8
  %2 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %colormap1 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %2, i32 0, i32 2
  %3 = load i8**, i8*** %colormap1, align 8
  store i8** %3, i8*** %colormap, align 8
  %4 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %pub = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %4, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 4
  %5 = load i8**, i8*** %buffer, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 0
  %6 = load i8*, i8** %arrayidx, align 8
  store i8* %6, i8** %ptr, align 8
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 6
  %8 = load i32, i32* %image_width, align 4
  store i32 %8, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %col, align 4
  %cmp = icmp ugt i32 %9, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %read_pixel = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %10, i32 0, i32 5
  %11 = load void (%struct._tga_source_struct*)*, void (%struct._tga_source_struct*)** %read_pixel, align 8
  %12 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  call void %11(%struct._tga_source_struct* %12)
  %13 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %tga_pixel = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %13, i32 0, i32 6
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %tga_pixel, i32 0, i64 0
  %14 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %14 to i32
  store i32 %conv, i32* %t, align 4
  %15 = load i32, i32* %t, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i8**, i8*** %colormap, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %16, i64 0
  %17 = load i8*, i8** %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %17, i64 %idxprom
  %18 = load i8, i8* %arrayidx4, align 1
  %19 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  store i8 %18, i8* %19, align 1
  %20 = load i32, i32* %t, align 4
  %idxprom5 = sext i32 %20 to i64
  %21 = load i8**, i8*** %colormap, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %21, i64 1
  %22 = load i8*, i8** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %22, i64 %idxprom5
  %23 = load i8, i8* %arrayidx7, align 1
  %24 = load i8*, i8** %ptr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr8, i8** %ptr, align 8
  store i8 %23, i8* %24, align 1
  %25 = load i32, i32* %t, align 4
  %idxprom9 = sext i32 %25 to i64
  %26 = load i8**, i8*** %colormap, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %26, i64 2
  %27 = load i8*, i8** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %27, i64 %idxprom9
  %28 = load i8, i8* %arrayidx11, align 1
  %29 = load i8*, i8** %ptr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr12, i8** %ptr, align 8
  store i8 %28, i8* %29, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %col, align 4
  %dec = add i32 %30, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @get_16bit_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct._tga_source_struct*, align 8
  %t = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %col = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %0 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %1 = bitcast %struct.cjpeg_source_struct* %0 to %struct._tga_source_struct*
  store %struct._tga_source_struct* %1, %struct._tga_source_struct** %source, align 8
  %2 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %pub = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %2, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 4
  %3 = load i8**, i8*** %buffer, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8
  store i8* %4, i8** %ptr, align 8
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 6
  %6 = load i32, i32* %image_width, align 4
  store i32 %6, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %col, align 4
  %cmp = icmp ugt i32 %7, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %read_pixel = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %8, i32 0, i32 5
  %9 = load void (%struct._tga_source_struct*)*, void (%struct._tga_source_struct*)** %read_pixel, align 8
  %10 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  call void %9(%struct._tga_source_struct* %10)
  %11 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %tga_pixel = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %11, i32 0, i32 6
  %arrayidx1 = getelementptr inbounds [4 x i8], [4 x i8]* %tga_pixel, i32 0, i64 0
  %12 = load i8, i8* %arrayidx1, align 1
  %conv = zext i8 %12 to i32
  store i32 %conv, i32* %t, align 4
  %13 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %tga_pixel2 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %13, i32 0, i32 6
  %arrayidx3 = getelementptr inbounds [4 x i8], [4 x i8]* %tga_pixel2, i32 0, i64 1
  %14 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %14 to i32
  %shl = shl i32 %conv4, 8
  %15 = load i32, i32* %t, align 4
  %add = add nsw i32 %15, %shl
  store i32 %add, i32* %t, align 4
  %16 = load i32, i32* %t, align 4
  %and = and i32 %16, 31
  %idxprom = sext i32 %and to i64
  %arrayidx5 = getelementptr inbounds [32 x i8], [32 x i8]* @c5to8bits, i32 0, i64 %idxprom
  %17 = load i8, i8* %arrayidx5, align 1
  %18 = load i8*, i8** %ptr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %18, i64 2
  store i8 %17, i8* %arrayidx6, align 1
  %19 = load i32, i32* %t, align 4
  %shr = ashr i32 %19, 5
  store i32 %shr, i32* %t, align 4
  %20 = load i32, i32* %t, align 4
  %and7 = and i32 %20, 31
  %idxprom8 = sext i32 %and7 to i64
  %arrayidx9 = getelementptr inbounds [32 x i8], [32 x i8]* @c5to8bits, i32 0, i64 %idxprom8
  %21 = load i8, i8* %arrayidx9, align 1
  %22 = load i8*, i8** %ptr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 %21, i8* %arrayidx10, align 1
  %23 = load i32, i32* %t, align 4
  %shr11 = ashr i32 %23, 5
  store i32 %shr11, i32* %t, align 4
  %24 = load i32, i32* %t, align 4
  %and12 = and i32 %24, 31
  %idxprom13 = sext i32 %and12 to i64
  %arrayidx14 = getelementptr inbounds [32 x i8], [32 x i8]* @c5to8bits, i32 0, i64 %idxprom13
  %25 = load i8, i8* %arrayidx14, align 1
  %26 = load i8*, i8** %ptr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 %25, i8* %arrayidx15, align 1
  %27 = load i8*, i8** %ptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 3
  store i8* %add.ptr, i8** %ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %col, align 4
  %dec = add i32 %28, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @get_24bit_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct._tga_source_struct*, align 8
  %ptr = alloca i8*, align 8
  %col = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %0 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %1 = bitcast %struct.cjpeg_source_struct* %0 to %struct._tga_source_struct*
  store %struct._tga_source_struct* %1, %struct._tga_source_struct** %source, align 8
  %2 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %pub = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %2, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 4
  %3 = load i8**, i8*** %buffer, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8
  store i8* %4, i8** %ptr, align 8
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 6
  %6 = load i32, i32* %image_width, align 4
  store i32 %6, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %col, align 4
  %cmp = icmp ugt i32 %7, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %read_pixel = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %8, i32 0, i32 5
  %9 = load void (%struct._tga_source_struct*)*, void (%struct._tga_source_struct*)** %read_pixel, align 8
  %10 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  call void %9(%struct._tga_source_struct* %10)
  %11 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %tga_pixel = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %11, i32 0, i32 6
  %arrayidx1 = getelementptr inbounds [4 x i8], [4 x i8]* %tga_pixel, i32 0, i64 2
  %12 = load i8, i8* %arrayidx1, align 1
  %conv = zext i8 %12 to i32
  %conv2 = trunc i32 %conv to i8
  %13 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  store i8 %conv2, i8* %13, align 1
  %14 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %tga_pixel3 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %14, i32 0, i32 6
  %arrayidx4 = getelementptr inbounds [4 x i8], [4 x i8]* %tga_pixel3, i32 0, i64 1
  %15 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %15 to i32
  %conv6 = trunc i32 %conv5 to i8
  %16 = load i8*, i8** %ptr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr7, i8** %ptr, align 8
  store i8 %conv6, i8* %16, align 1
  %17 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %tga_pixel8 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %17, i32 0, i32 6
  %arrayidx9 = getelementptr inbounds [4 x i8], [4 x i8]* %tga_pixel8, i32 0, i64 0
  %18 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %18 to i32
  %conv11 = trunc i32 %conv10 to i8
  %19 = load i8*, i8** %ptr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr12, i8** %ptr, align 8
  store i8 %conv11, i8* %19, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %col, align 4
  %dec = add i32 %20, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @get_8bit_gray_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct._tga_source_struct*, align 8
  %ptr = alloca i8*, align 8
  %col = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %0 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %1 = bitcast %struct.cjpeg_source_struct* %0 to %struct._tga_source_struct*
  store %struct._tga_source_struct* %1, %struct._tga_source_struct** %source, align 8
  %2 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %pub = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %2, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 4
  %3 = load i8**, i8*** %buffer, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8
  store i8* %4, i8** %ptr, align 8
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 6
  %6 = load i32, i32* %image_width, align 4
  store i32 %6, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %col, align 4
  %cmp = icmp ugt i32 %7, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %read_pixel = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %8, i32 0, i32 5
  %9 = load void (%struct._tga_source_struct*)*, void (%struct._tga_source_struct*)** %read_pixel, align 8
  %10 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  call void %9(%struct._tga_source_struct* %10)
  %11 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %tga_pixel = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %11, i32 0, i32 6
  %arrayidx1 = getelementptr inbounds [4 x i8], [4 x i8]* %tga_pixel, i32 0, i64 0
  %12 = load i8, i8* %arrayidx1, align 1
  %conv = zext i8 %12 to i32
  %conv2 = trunc i32 %conv to i8
  %13 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  store i8 %conv2, i8* %13, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %col, align 4
  %dec = add i32 %14, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @preload_image(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct._tga_source_struct*, align 8
  %row = alloca i32, align 4
  %progress = alloca %struct.cdjpeg_progress_mgr*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %0 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %1 = bitcast %struct.cjpeg_source_struct* %0 to %struct._tga_source_struct*
  store %struct._tga_source_struct* %1, %struct._tga_source_struct** %source, align 8
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %progress1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 2
  %3 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress1, align 8
  %4 = bitcast %struct.jpeg_progress_mgr* %3 to %struct.cdjpeg_progress_mgr*
  store %struct.cdjpeg_progress_mgr* %4, %struct.cdjpeg_progress_mgr** %progress, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %row, align 4
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 7
  %7 = load i32, i32* %image_height, align 4
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8
  %cmp2 = icmp ne %struct.cdjpeg_progress_mgr* %8, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %row, align 4
  %conv = zext i32 %9 to i64
  %10 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8
  %pub = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %10, i32 0, i32 0
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %pub, i32 0, i32 1
  store i64 %conv, i64* %pass_counter, align 8
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_height3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 7
  %12 = load i32, i32* %image_height3, align 4
  %conv4 = zext i32 %12 to i64
  %13 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8
  %pub5 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %13, i32 0, i32 0
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %pub5, i32 0, i32 2
  store i64 %conv4, i64* %pass_limit, align 8
  %14 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8
  %pub6 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %14, i32 0, i32 0
  %progress_monitor = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %pub6, i32 0, i32 0
  %progress_monitor7 = bitcast {}** %progress_monitor to void (%struct.jpeg_common_struct*)**
  %15 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %progress_monitor7, align 8
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %17 = bitcast %struct.jpeg_compress_struct* %16 to %struct.jpeg_common_struct*
  call void %15(%struct.jpeg_common_struct* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 1
  %19 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %19, i32 0, i32 7
  %20 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %access_virt_sarray, align 8
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %22 = bitcast %struct.jpeg_compress_struct* %21 to %struct.jpeg_common_struct*
  %23 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %whole_image = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %23, i32 0, i32 3
  %24 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %whole_image, align 8
  %25 = load i32, i32* %row, align 4
  %call = call i8** %20(%struct.jpeg_common_struct* %22, %struct.jvirt_sarray_control* %24, i32 %25, i32 1, i32 1)
  %26 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %pub8 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %26, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub8, i32 0, i32 4
  store i8** %call, i8*** %buffer, align 8
  %27 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %get_pixel_rows = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %27, i32 0, i32 10
  %28 = load i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows, align 8
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %30 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %call9 = call i32 %28(%struct.jpeg_compress_struct* %29, %struct.cjpeg_source_struct* %30)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %31 = load i32, i32* %row, align 4
  %inc = add i32 %31, 1
  store i32 %inc, i32* %row, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8
  %cmp10 = icmp ne %struct.cdjpeg_progress_mgr* %32, null
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %for.end
  %33 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8
  %completed_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %33, i32 0, i32 1
  %34 = load i32, i32* %completed_extra_passes, align 4
  %inc13 = add nsw i32 %34, 1
  store i32 %inc13, i32* %completed_extra_passes, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %for.end
  %35 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %pub15 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %35, i32 0, i32 0
  %get_pixel_rows16 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub15, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_memory_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows16, align 8
  %36 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %current_row = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %36, i32 0, i32 4
  store i32 0, i32* %current_row, align 4
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %38 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %call17 = call i32 @get_memory_row(%struct.jpeg_compress_struct* %37, %struct.cjpeg_source_struct* %38)
  ret i32 %call17
}

; Function Attrs: nounwind uwtable
define internal i32 @read_byte(%struct._tga_source_struct* %sinfo) #0 {
entry:
  %sinfo.addr = alloca %struct._tga_source_struct*, align 8
  %infile = alloca %struct._IO_FILE*, align 8
  %c = alloca i32, align 4
  store %struct._tga_source_struct* %sinfo, %struct._tga_source_struct** %sinfo.addr, align 8
  %0 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8
  %pub = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %0, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %infile, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %2)
  store i32 %call, i32* %c, align 4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8
  %cinfo = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %3, i32 0, i32 1
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 42, i32* %msg_code, align 4
  %6 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8
  %cinfo1 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %6, i32 0, i32 1
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo1, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 0
  %9 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %10 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8
  %cinfo3 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %10, i32 0, i32 1
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo3, align 8
  %12 = bitcast %struct.jpeg_compress_struct* %11 to %struct.jpeg_common_struct*
  call void %9(%struct.jpeg_common_struct* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32, i32* %c, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal void @read_colormap(%struct._tga_source_struct* %sinfo, i32 %cmaplen, i32 %mapentrysize) #0 {
entry:
  %sinfo.addr = alloca %struct._tga_source_struct*, align 8
  %cmaplen.addr = alloca i32, align 4
  %mapentrysize.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._tga_source_struct* %sinfo, %struct._tga_source_struct** %sinfo.addr, align 8
  store i32 %cmaplen, i32* %cmaplen.addr, align 4
  store i32 %mapentrysize, i32* %mapentrysize.addr, align 4
  %0 = load i32, i32* %mapentrysize.addr, align 4
  %cmp = icmp ne i32 %0, 24
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8
  %cinfo = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 0
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 5
  store i32 1032, i32* %msg_code, align 4
  %4 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8
  %cinfo1 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %4, i32 0, i32 1
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo1, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 0
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i32 0, i32 0
  %7 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %8 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8
  %cinfo3 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %8, i32 0, i32 1
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo3, align 8
  %10 = bitcast %struct.jpeg_compress_struct* %9 to %struct.jpeg_common_struct*
  call void %7(%struct.jpeg_common_struct* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %cmaplen.addr, align 4
  %cmp4 = icmp slt i32 %11, %12
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8
  %call = call i32 @read_byte(%struct._tga_source_struct* %13)
  %conv = trunc i32 %call to i8
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8
  %colormap = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %15, i32 0, i32 2
  %16 = load i8**, i8*** %colormap, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %16, i64 2
  %17 = load i8*, i8** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %17, i64 %idxprom
  store i8 %conv, i8* %arrayidx5, align 1
  %18 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8
  %call6 = call i32 @read_byte(%struct._tga_source_struct* %18)
  %conv7 = trunc i32 %call6 to i8
  %19 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %19 to i64
  %20 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8
  %colormap9 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %20, i32 0, i32 2
  %21 = load i8**, i8*** %colormap9, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %21, i64 1
  %22 = load i8*, i8** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %22, i64 %idxprom8
  store i8 %conv7, i8* %arrayidx11, align 1
  %23 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8
  %call12 = call i32 @read_byte(%struct._tga_source_struct* %23)
  %conv13 = trunc i32 %call12 to i8
  %24 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %24 to i64
  %25 = load %struct._tga_source_struct*, %struct._tga_source_struct** %sinfo.addr, align 8
  %colormap15 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %25, i32 0, i32 2
  %26 = load i8**, i8*** %colormap15, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %26, i64 0
  %27 = load i8*, i8** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %27, i64 %idxprom14
  store i8 %conv13, i8* %arrayidx17, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_memory_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct._tga_source_struct*, align 8
  %source_row = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %0 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %1 = bitcast %struct.cjpeg_source_struct* %0 to %struct._tga_source_struct*
  store %struct._tga_source_struct* %1, %struct._tga_source_struct** %source, align 8
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 7
  %3 = load i32, i32* %image_height, align 4
  %4 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %current_row = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %4, i32 0, i32 4
  %5 = load i32, i32* %current_row, align 4
  %sub = sub i32 %3, %5
  %sub1 = sub i32 %sub, 1
  store i32 %sub1, i32* %source_row, align 4
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 1
  %7 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %7, i32 0, i32 7
  %8 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %access_virt_sarray, align 8
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %10 = bitcast %struct.jpeg_compress_struct* %9 to %struct.jpeg_common_struct*
  %11 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %whole_image = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %11, i32 0, i32 3
  %12 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %whole_image, align 8
  %13 = load i32, i32* %source_row, align 4
  %call = call i8** %8(%struct.jpeg_common_struct* %10, %struct.jvirt_sarray_control* %12, i32 %13, i32 1, i32 0)
  %14 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %pub = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %14, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 4
  store i8** %call, i8*** %buffer, align 8
  %15 = load %struct._tga_source_struct*, %struct._tga_source_struct** %source, align 8
  %current_row2 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %15, i32 0, i32 4
  %16 = load i32, i32* %current_row2, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %current_row2, align 4
  ret i32 1
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
