; ModuleID = './MultiSource.Benchmarks.mediabench/39.jpeg.jpeg-6a.rdgif.bc'
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
%struct.gif_source_struct = type { %struct.cjpeg_source_struct, %struct.jpeg_compress_struct*, i8**, [260 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16*, i8*, i8*, i8*, i32, %struct.jvirt_sarray_control*, i32, i32, i32, i32 }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define %struct.cjpeg_source_struct* @jinit_read_gif(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %source = alloca %struct.gif_source_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_compress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 440)
  %5 = bitcast i8* %call to %struct.gif_source_struct*
  store %struct.gif_source_struct* %5, %struct.gif_source_struct** %source, align 8
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %7 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %cinfo1 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %7, i32 0, i32 1
  store %struct.jpeg_compress_struct* %6, %struct.jpeg_compress_struct** %cinfo1, align 8
  %8 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %pub = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %8, i32 0, i32 0
  %start_input = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @start_input_gif, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %start_input, align 8
  %9 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %pub2 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %9, i32 0, i32 0
  %finish_input = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub2, i32 0, i32 2
  store void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @finish_input_gif, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %finish_input, align 8
  %10 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %11 = bitcast %struct.gif_source_struct* %10 to %struct.cjpeg_source_struct*
  ret %struct.cjpeg_source_struct* %11
}

; Function Attrs: nounwind uwtable
define internal void @start_input_gif(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct.gif_source_struct*, align 8
  %hdrbuf = alloca [10 x i8], align 1
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %colormaplen = alloca i32, align 4
  %aspectRatio = alloca i32, align 4
  %c = alloca i32, align 4
  %_mp = alloca i32*, align 8
  %progress215 = alloca %struct.cdjpeg_progress_mgr*, align 8
  %_mp228 = alloca i32*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %0 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %1 = bitcast %struct.cjpeg_source_struct* %0 to %struct.gif_source_struct*
  store %struct.gif_source_struct* %1, %struct.gif_source_struct** %source, align 8
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i32 0, i32 2
  %4 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %6 = bitcast %struct.jpeg_compress_struct* %5 to %struct.jpeg_common_struct*
  %call = call i8** %4(%struct.jpeg_common_struct* %6, i32 1, i32 256, i32 3)
  %7 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %colormap = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %7, i32 0, i32 2
  store i8** %call, i8*** %colormap, align 8
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i32 0
  %8 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %pub = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %8, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  %call1 = call i64 @fread(i8* %arraydecay, i64 1, i64 6, %struct._IO_FILE* %9)
  %cmp = icmp eq i64 %call1, 6
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 5
  store i32 1016, i32* %msg_code, align 4
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
  %arrayidx = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 0
  %17 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %17 to i32
  %cmp3 = icmp ne i32 %conv, 71
  br i1 %cmp3, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx5 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 1
  %18 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %18 to i32
  %cmp7 = icmp ne i32 %conv6, 73
  br i1 %cmp7, label %if.then.14, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %arrayidx10 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 2
  %19 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %19 to i32
  %cmp12 = icmp ne i32 %conv11, 70
  br i1 %cmp12, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %lor.lhs.false.9, %lor.lhs.false, %if.end
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err15, align 8
  %msg_code16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 5
  store i32 1016, i32* %msg_code16, align 4
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err17, align 8
  %error_exit18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 0
  %24 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit18, align 8
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %26 = bitcast %struct.jpeg_compress_struct* %25 to %struct.jpeg_common_struct*
  call void %24(%struct.jpeg_common_struct* %26)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %lor.lhs.false.9
  %arrayidx20 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 3
  %27 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %27 to i32
  %cmp22 = icmp ne i32 %conv21, 56
  br i1 %cmp22, label %land.lhs.true, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %if.end.19
  %arrayidx25 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 4
  %28 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %28 to i32
  %cmp27 = icmp ne i32 %conv26, 55
  br i1 %cmp27, label %land.lhs.true, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false.24
  %arrayidx30 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 5
  %29 = load i8, i8* %arrayidx30, align 1
  %conv31 = sext i8 %29 to i32
  %cmp32 = icmp ne i32 %conv31, 97
  br i1 %cmp32, label %land.lhs.true, label %if.end.63

land.lhs.true:                                    ; preds = %lor.lhs.false.29, %lor.lhs.false.24, %if.end.19
  %arrayidx34 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 3
  %30 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %30 to i32
  %cmp36 = icmp ne i32 %conv35, 56
  br i1 %cmp36, label %if.then.48, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %land.lhs.true
  %arrayidx39 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 4
  %31 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %31 to i32
  %cmp41 = icmp ne i32 %conv40, 57
  br i1 %cmp41, label %if.then.48, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.38
  %arrayidx44 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 5
  %32 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %32 to i32
  %cmp46 = icmp ne i32 %conv45, 97
  br i1 %cmp46, label %if.then.48, label %if.end.63

if.then.48:                                       ; preds = %lor.lhs.false.43, %lor.lhs.false.38, %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then.48
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err49 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %33, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err49, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arraydecay50 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i32 0
  store i32* %arraydecay50, i32** %_mp, align 8
  %arrayidx51 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 3
  %35 = load i8, i8* %arrayidx51, align 1
  %conv52 = sext i8 %35 to i32
  %36 = load i32*, i32** %_mp, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %conv52, i32* %arrayidx53, align 4
  %arrayidx54 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 4
  %37 = load i8, i8* %arrayidx54, align 1
  %conv55 = sext i8 %37 to i32
  %38 = load i32*, i32** %_mp, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 %conv55, i32* %arrayidx56, align 4
  %arrayidx57 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 5
  %39 = load i8, i8* %arrayidx57, align 1
  %conv58 = sext i8 %39 to i32
  %40 = load i32*, i32** %_mp, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %40, i64 2
  store i32 %conv58, i32* %arrayidx59, align 4
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err60 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err60, align 8
  %msg_code61 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i32 0, i32 5
  store i32 1018, i32* %msg_code61, align 4
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err62 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err62, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i32 0, i32 1
  %45 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %47 = bitcast %struct.jpeg_compress_struct* %46 to %struct.jpeg_common_struct*
  call void %45(%struct.jpeg_common_struct* %47, i32 1)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.63

if.end.63:                                        ; preds = %do.end, %lor.lhs.false.43, %lor.lhs.false.29
  %arraydecay64 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i32 0
  %48 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %pub65 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %48, i32 0, i32 0
  %input_file66 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub65, i32 0, i32 3
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file66, align 8
  %call67 = call i64 @fread(i8* %arraydecay64, i64 1, i64 7, %struct._IO_FILE* %49)
  %cmp68 = icmp eq i64 %call67, 7
  br i1 %cmp68, label %if.end.75, label %if.then.70

if.then.70:                                       ; preds = %if.end.63
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err71 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 0
  %51 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err71, align 8
  %msg_code72 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %51, i32 0, i32 5
  store i32 42, i32* %msg_code72, align 4
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err73 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %52, i32 0, i32 0
  %53 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err73, align 8
  %error_exit74 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %53, i32 0, i32 0
  %54 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit74, align 8
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %56 = bitcast %struct.jpeg_compress_struct* %55 to %struct.jpeg_common_struct*
  call void %54(%struct.jpeg_common_struct* %56)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.70, %if.end.63
  %arrayidx76 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 1
  %57 = load i8, i8* %arrayidx76, align 1
  %conv77 = sext i8 %57 to i32
  %and = and i32 %conv77, 255
  %shl = shl i32 %and, 8
  %arrayidx78 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 0
  %58 = load i8, i8* %arrayidx78, align 1
  %conv79 = sext i8 %58 to i32
  %and80 = and i32 %conv79, 255
  %or = or i32 %shl, %and80
  store i32 %or, i32* %width, align 4
  %arrayidx81 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 3
  %59 = load i8, i8* %arrayidx81, align 1
  %conv82 = sext i8 %59 to i32
  %and83 = and i32 %conv82, 255
  %shl84 = shl i32 %and83, 8
  %arrayidx85 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 2
  %60 = load i8, i8* %arrayidx85, align 1
  %conv86 = sext i8 %60 to i32
  %and87 = and i32 %conv86, 255
  %or88 = or i32 %shl84, %and87
  store i32 %or88, i32* %height, align 4
  %arrayidx89 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 4
  %61 = load i8, i8* %arrayidx89, align 1
  %conv90 = sext i8 %61 to i32
  %and91 = and i32 %conv90, 7
  %shl92 = shl i32 2, %and91
  store i32 %shl92, i32* %colormaplen, align 4
  %arrayidx93 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 6
  %62 = load i8, i8* %arrayidx93, align 1
  %conv94 = sext i8 %62 to i32
  %and95 = and i32 %conv94, 255
  store i32 %and95, i32* %aspectRatio, align 4
  %63 = load i32, i32* %aspectRatio, align 4
  %cmp96 = icmp ne i32 %63, 0
  br i1 %cmp96, label %land.lhs.true.98, label %if.end.106

land.lhs.true.98:                                 ; preds = %if.end.75
  %64 = load i32, i32* %aspectRatio, align 4
  %cmp99 = icmp ne i32 %64, 49
  br i1 %cmp99, label %if.then.101, label %if.end.106

if.then.101:                                      ; preds = %land.lhs.true.98
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err102 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %65, i32 0, i32 0
  %66 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err102, align 8
  %msg_code103 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %66, i32 0, i32 5
  store i32 1020, i32* %msg_code103, align 4
  %67 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err104 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %67, i32 0, i32 0
  %68 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err104, align 8
  %emit_message105 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %68, i32 0, i32 1
  %69 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message105, align 8
  %70 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %71 = bitcast %struct.jpeg_compress_struct* %70 to %struct.jpeg_common_struct*
  call void %69(%struct.jpeg_common_struct* %71, i32 1)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.101, %land.lhs.true.98, %if.end.75
  %arrayidx107 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 4
  %72 = load i8, i8* %arrayidx107, align 1
  %conv108 = sext i8 %72 to i32
  %and109 = and i32 %conv108, 128
  %tobool = icmp ne i32 %and109, 0
  br i1 %tobool, label %if.then.110, label %if.end.112

if.then.110:                                      ; preds = %if.end.106
  %73 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %74 = load i32, i32* %colormaplen, align 4
  %75 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %colormap111 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %75, i32 0, i32 2
  %76 = load i8**, i8*** %colormap111, align 8
  call void @ReadColorMap(%struct.gif_source_struct* %73, i32 %74, i8** %76)
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.110, %if.end.106
  br label %for.cond

for.cond:                                         ; preds = %if.then.128, %if.then.124, %if.end.112
  %77 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %call113 = call i32 @ReadByte(%struct.gif_source_struct* %77)
  store i32 %call113, i32* %c, align 4
  %78 = load i32, i32* %c, align 4
  %cmp114 = icmp eq i32 %78, 59
  br i1 %cmp114, label %if.then.116, label %if.end.121

if.then.116:                                      ; preds = %for.cond
  %79 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err117 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %79, i32 0, i32 0
  %80 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err117, align 8
  %msg_code118 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %80, i32 0, i32 5
  store i32 1015, i32* %msg_code118, align 4
  %81 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err119 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %81, i32 0, i32 0
  %82 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err119, align 8
  %error_exit120 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %82, i32 0, i32 0
  %83 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit120, align 8
  %84 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %85 = bitcast %struct.jpeg_compress_struct* %84 to %struct.jpeg_common_struct*
  call void %83(%struct.jpeg_common_struct* %85)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.116, %for.cond
  %86 = load i32, i32* %c, align 4
  %cmp122 = icmp eq i32 %86, 33
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.end.121
  %87 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  call void @DoExtension(%struct.gif_source_struct* %87)
  br label %for.cond

if.end.125:                                       ; preds = %if.end.121
  %88 = load i32, i32* %c, align 4
  %cmp126 = icmp ne i32 %88, 44
  br i1 %cmp126, label %if.then.128, label %if.end.137

if.then.128:                                      ; preds = %if.end.125
  %89 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err129 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %89, i32 0, i32 0
  %90 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err129, align 8
  %msg_code130 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %90, i32 0, i32 5
  store i32 1022, i32* %msg_code130, align 4
  %91 = load i32, i32* %c, align 4
  %92 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err131 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %92, i32 0, i32 0
  %93 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err131, align 8
  %msg_parm132 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %93, i32 0, i32 6
  %i133 = bitcast %union.anon* %msg_parm132 to [8 x i32]*
  %arrayidx134 = getelementptr inbounds [8 x i32], [8 x i32]* %i133, i32 0, i64 0
  store i32 %91, i32* %arrayidx134, align 4
  %94 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err135 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %94, i32 0, i32 0
  %95 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err135, align 8
  %emit_message136 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %95, i32 0, i32 1
  %96 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message136, align 8
  %97 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %98 = bitcast %struct.jpeg_compress_struct* %97 to %struct.jpeg_common_struct*
  call void %96(%struct.jpeg_common_struct* %98, i32 -1)
  br label %for.cond

if.end.137:                                       ; preds = %if.end.125
  %arraydecay138 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i32 0
  %99 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %pub139 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %99, i32 0, i32 0
  %input_file140 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub139, i32 0, i32 3
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file140, align 8
  %call141 = call i64 @fread(i8* %arraydecay138, i64 1, i64 9, %struct._IO_FILE* %100)
  %cmp142 = icmp eq i64 %call141, 9
  br i1 %cmp142, label %if.end.149, label %if.then.144

if.then.144:                                      ; preds = %if.end.137
  %101 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err145 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %101, i32 0, i32 0
  %102 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err145, align 8
  %msg_code146 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %102, i32 0, i32 5
  store i32 42, i32* %msg_code146, align 4
  %103 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err147 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %103, i32 0, i32 0
  %104 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err147, align 8
  %error_exit148 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %104, i32 0, i32 0
  %105 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit148, align 8
  %106 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %107 = bitcast %struct.jpeg_compress_struct* %106 to %struct.jpeg_common_struct*
  call void %105(%struct.jpeg_common_struct* %107)
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.144, %if.end.137
  %arrayidx150 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 5
  %108 = load i8, i8* %arrayidx150, align 1
  %conv151 = sext i8 %108 to i32
  %and152 = and i32 %conv151, 255
  %shl153 = shl i32 %and152, 8
  %arrayidx154 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 4
  %109 = load i8, i8* %arrayidx154, align 1
  %conv155 = sext i8 %109 to i32
  %and156 = and i32 %conv155, 255
  %or157 = or i32 %shl153, %and156
  store i32 %or157, i32* %width, align 4
  %arrayidx158 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 7
  %110 = load i8, i8* %arrayidx158, align 1
  %conv159 = sext i8 %110 to i32
  %and160 = and i32 %conv159, 255
  %shl161 = shl i32 %and160, 8
  %arrayidx162 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 6
  %111 = load i8, i8* %arrayidx162, align 1
  %conv163 = sext i8 %111 to i32
  %and164 = and i32 %conv163, 255
  %or165 = or i32 %shl161, %and164
  store i32 %or165, i32* %height, align 4
  %arrayidx166 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 8
  %112 = load i8, i8* %arrayidx166, align 1
  %conv167 = sext i8 %112 to i32
  %and168 = and i32 %conv167, 64
  %113 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %is_interlaced = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %113, i32 0, i32 21
  store i32 %and168, i32* %is_interlaced, align 4
  %arrayidx169 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 8
  %114 = load i8, i8* %arrayidx169, align 1
  %conv170 = sext i8 %114 to i32
  %and171 = and i32 %conv170, 128
  %tobool172 = icmp ne i32 %and171, 0
  br i1 %tobool172, label %if.then.173, label %if.end.179

if.then.173:                                      ; preds = %if.end.149
  %arrayidx174 = getelementptr inbounds [10 x i8], [10 x i8]* %hdrbuf, i32 0, i64 8
  %115 = load i8, i8* %arrayidx174, align 1
  %conv175 = sext i8 %115 to i32
  %and176 = and i32 %conv175, 7
  %shl177 = shl i32 2, %and176
  store i32 %shl177, i32* %colormaplen, align 4
  %116 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %117 = load i32, i32* %colormaplen, align 4
  %118 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %colormap178 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %118, i32 0, i32 2
  %119 = load i8**, i8*** %colormap178, align 8
  call void @ReadColorMap(%struct.gif_source_struct* %116, i32 %117, i8** %119)
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.173, %if.end.149
  %120 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %call180 = call i32 @ReadByte(%struct.gif_source_struct* %120)
  %121 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %input_code_size = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %121, i32 0, i32 8
  store i32 %call180, i32* %input_code_size, align 4
  %122 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %input_code_size181 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %122, i32 0, i32 8
  %123 = load i32, i32* %input_code_size181, align 4
  %cmp182 = icmp slt i32 %123, 2
  br i1 %cmp182, label %if.then.188, label %lor.lhs.false.184

lor.lhs.false.184:                                ; preds = %if.end.179
  %124 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %input_code_size185 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %124, i32 0, i32 8
  %125 = load i32, i32* %input_code_size185, align 4
  %cmp186 = icmp sge i32 %125, 12
  br i1 %cmp186, label %if.then.188, label %if.end.198

if.then.188:                                      ; preds = %lor.lhs.false.184, %if.end.179
  %126 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err189 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %126, i32 0, i32 0
  %127 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err189, align 8
  %msg_code190 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %127, i32 0, i32 5
  store i32 1013, i32* %msg_code190, align 4
  %128 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %input_code_size191 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %128, i32 0, i32 8
  %129 = load i32, i32* %input_code_size191, align 4
  %130 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err192 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %130, i32 0, i32 0
  %131 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err192, align 8
  %msg_parm193 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %131, i32 0, i32 6
  %i194 = bitcast %union.anon* %msg_parm193 to [8 x i32]*
  %arrayidx195 = getelementptr inbounds [8 x i32], [8 x i32]* %i194, i32 0, i64 0
  store i32 %129, i32* %arrayidx195, align 4
  %132 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err196 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %132, i32 0, i32 0
  %133 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err196, align 8
  %error_exit197 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %133, i32 0, i32 0
  %134 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit197, align 8
  %135 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %136 = bitcast %struct.jpeg_compress_struct* %135 to %struct.jpeg_common_struct*
  call void %134(%struct.jpeg_common_struct* %136)
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.188, %lor.lhs.false.184
  br label %for.end

for.end:                                          ; preds = %if.end.198
  %137 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem199 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %137, i32 0, i32 1
  %138 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem199, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %138, i32 0, i32 1
  %139 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_large, align 8
  %140 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %141 = bitcast %struct.jpeg_compress_struct* %140 to %struct.jpeg_common_struct*
  %call200 = call i8* %139(%struct.jpeg_common_struct* %141, i32 1, i64 8192)
  %142 = bitcast i8* %call200 to i16*
  %143 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %symbol_head = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %143, i32 0, i32 17
  store i16* %142, i16** %symbol_head, align 8
  %144 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem201 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %144, i32 0, i32 1
  %145 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem201, align 8
  %alloc_large202 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %145, i32 0, i32 1
  %146 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_large202, align 8
  %147 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %148 = bitcast %struct.jpeg_compress_struct* %147 to %struct.jpeg_common_struct*
  %call203 = call i8* %146(%struct.jpeg_common_struct* %148, i32 1, i64 4096)
  %149 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %symbol_tail = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %149, i32 0, i32 18
  store i8* %call203, i8** %symbol_tail, align 8
  %150 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem204 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %150, i32 0, i32 1
  %151 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem204, align 8
  %alloc_large205 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %151, i32 0, i32 1
  %152 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_large205, align 8
  %153 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %154 = bitcast %struct.jpeg_compress_struct* %153 to %struct.jpeg_common_struct*
  %call206 = call i8* %152(%struct.jpeg_common_struct* %154, i32 1, i64 4096)
  %155 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %symbol_stack = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %155, i32 0, i32 19
  store i8* %call206, i8** %symbol_stack, align 8
  %156 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  call void @InitLZWCode(%struct.gif_source_struct* %156)
  %157 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %is_interlaced207 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %157, i32 0, i32 21
  %158 = load i32, i32* %is_interlaced207, align 4
  %tobool208 = icmp ne i32 %158, 0
  br i1 %tobool208, label %if.then.209, label %if.else

if.then.209:                                      ; preds = %for.end
  %159 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem210 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %159, i32 0, i32 1
  %160 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem210, align 8
  %request_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %160, i32 0, i32 4
  %161 = load %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)** %request_virt_sarray, align 8
  %162 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %163 = bitcast %struct.jpeg_compress_struct* %162 to %struct.jpeg_common_struct*
  %164 = load i32, i32* %width, align 4
  %165 = load i32, i32* %height, align 4
  %call211 = call %struct.jvirt_sarray_control* %161(%struct.jpeg_common_struct* %163, i32 1, i32 0, i32 %164, i32 %165, i32 1)
  %166 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %interlaced_image = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %166, i32 0, i32 22
  store %struct.jvirt_sarray_control* %call211, %struct.jvirt_sarray_control** %interlaced_image, align 8
  %167 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %167, i32 0, i32 2
  %168 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress, align 8
  %cmp212 = icmp ne %struct.jpeg_progress_mgr* %168, null
  br i1 %cmp212, label %if.then.214, label %if.end.217

if.then.214:                                      ; preds = %if.then.209
  %169 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %progress216 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %169, i32 0, i32 2
  %170 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress216, align 8
  %171 = bitcast %struct.jpeg_progress_mgr* %170 to %struct.cdjpeg_progress_mgr*
  store %struct.cdjpeg_progress_mgr* %171, %struct.cdjpeg_progress_mgr** %progress215, align 8
  %172 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress215, align 8
  %total_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %172, i32 0, i32 2
  %173 = load i32, i32* %total_extra_passes, align 4
  %inc = add nsw i32 %173, 1
  store i32 %inc, i32* %total_extra_passes, align 4
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.214, %if.then.209
  %174 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %pub218 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %174, i32 0, i32 0
  %get_pixel_rows = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub218, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @load_interlaced_image, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows, align 8
  br label %if.end.221

if.else:                                          ; preds = %for.end
  %175 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %pub219 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %175, i32 0, i32 0
  %get_pixel_rows220 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub219, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_pixel_rows, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows220, align 8
  br label %if.end.221

if.end.221:                                       ; preds = %if.else, %if.end.217
  %176 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem222 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %176, i32 0, i32 1
  %177 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem222, align 8
  %alloc_sarray223 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %177, i32 0, i32 2
  %178 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray223, align 8
  %179 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %180 = bitcast %struct.jpeg_compress_struct* %179 to %struct.jpeg_common_struct*
  %181 = load i32, i32* %width, align 4
  %mul = mul i32 %181, 3
  %call224 = call i8** %178(%struct.jpeg_common_struct* %180, i32 1, i32 %mul, i32 1)
  %182 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %pub225 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %182, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub225, i32 0, i32 4
  store i8** %call224, i8*** %buffer, align 8
  %183 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %pub226 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %183, i32 0, i32 0
  %buffer_height = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub226, i32 0, i32 5
  store i32 1, i32* %buffer_height, align 4
  %184 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %184, i32 0, i32 9
  store i32 2, i32* %in_color_space, align 4
  %185 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %185, i32 0, i32 8
  store i32 3, i32* %input_components, align 4
  %186 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %186, i32 0, i32 11
  store i32 8, i32* %data_precision, align 4
  %187 = load i32, i32* %width, align 4
  %188 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %188, i32 0, i32 6
  store i32 %187, i32* %image_width, align 4
  %189 = load i32, i32* %height, align 4
  %190 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %190, i32 0, i32 7
  store i32 %189, i32* %image_height, align 4
  br label %do.body.227

do.body.227:                                      ; preds = %if.end.221
  %191 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err229 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %191, i32 0, i32 0
  %192 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err229, align 8
  %msg_parm230 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %192, i32 0, i32 6
  %i231 = bitcast %union.anon* %msg_parm230 to [8 x i32]*
  %arraydecay232 = getelementptr inbounds [8 x i32], [8 x i32]* %i231, i32 0, i32 0
  store i32* %arraydecay232, i32** %_mp228, align 8
  %193 = load i32, i32* %width, align 4
  %194 = load i32*, i32** %_mp228, align 8
  %arrayidx233 = getelementptr inbounds i32, i32* %194, i64 0
  store i32 %193, i32* %arrayidx233, align 4
  %195 = load i32, i32* %height, align 4
  %196 = load i32*, i32** %_mp228, align 8
  %arrayidx234 = getelementptr inbounds i32, i32* %196, i64 1
  store i32 %195, i32* %arrayidx234, align 4
  %197 = load i32, i32* %colormaplen, align 4
  %198 = load i32*, i32** %_mp228, align 8
  %arrayidx235 = getelementptr inbounds i32, i32* %198, i64 2
  store i32 %197, i32* %arrayidx235, align 4
  %199 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err236 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %199, i32 0, i32 0
  %200 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err236, align 8
  %msg_code237 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %200, i32 0, i32 5
  store i32 1017, i32* %msg_code237, align 4
  %201 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err238 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %201, i32 0, i32 0
  %202 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err238, align 8
  %emit_message239 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %202, i32 0, i32 1
  %203 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message239, align 8
  %204 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %205 = bitcast %struct.jpeg_compress_struct* %204 to %struct.jpeg_common_struct*
  call void %203(%struct.jpeg_common_struct* %205, i32 1)
  br label %do.end.240

do.end.240:                                       ; preds = %do.body.227
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_input_gif(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  ret void
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @ReadColorMap(%struct.gif_source_struct* %sinfo, i32 %cmaplen, i8** %cmap) #0 {
entry:
  %sinfo.addr = alloca %struct.gif_source_struct*, align 8
  %cmaplen.addr = alloca i32, align 4
  %cmap.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store %struct.gif_source_struct* %sinfo, %struct.gif_source_struct** %sinfo.addr, align 8
  store i32 %cmaplen, i32* %cmaplen.addr, align 4
  store i8** %cmap, i8*** %cmap.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %cmaplen.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %call = call i32 @ReadByte(%struct.gif_source_struct* %2)
  %conv = trunc i32 %call to i8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8**, i8*** %cmap.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 0
  %5 = load i8*, i8** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %5, i64 %idxprom
  store i8 %conv, i8* %arrayidx1, align 1
  %6 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %call2 = call i32 @ReadByte(%struct.gif_source_struct* %6)
  %conv3 = trunc i32 %call2 to i8
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load i8**, i8*** %cmap.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %8, i64 1
  %9 = load i8*, i8** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 %idxprom4
  store i8 %conv3, i8* %arrayidx6, align 1
  %10 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %call7 = call i32 @ReadByte(%struct.gif_source_struct* %10)
  %conv8 = trunc i32 %call7 to i8
  %11 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load i8**, i8*** %cmap.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %12, i64 2
  %13 = load i8*, i8** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %13, i64 %idxprom9
  store i8 %conv8, i8* %arrayidx11, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ReadByte(%struct.gif_source_struct* %sinfo) #0 {
entry:
  %sinfo.addr = alloca %struct.gif_source_struct*, align 8
  %infile = alloca %struct._IO_FILE*, align 8
  %c = alloca i32, align 4
  store %struct.gif_source_struct* %sinfo, %struct.gif_source_struct** %sinfo.addr, align 8
  %0 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %pub = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %0, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %infile, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %2)
  store i32 %call, i32* %c, align 4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cinfo = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %3, i32 0, i32 1
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 42, i32* %msg_code, align 4
  %6 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cinfo1 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %6, i32 0, i32 1
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo1, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 0
  %9 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %10 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cinfo3 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %10, i32 0, i32 1
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo3, align 8
  %12 = bitcast %struct.jpeg_compress_struct* %11 to %struct.jpeg_common_struct*
  call void %9(%struct.jpeg_common_struct* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32, i32* %c, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal void @DoExtension(%struct.gif_source_struct* %sinfo) #0 {
entry:
  %sinfo.addr = alloca %struct.gif_source_struct*, align 8
  %extlabel = alloca i32, align 4
  store %struct.gif_source_struct* %sinfo, %struct.gif_source_struct** %sinfo.addr, align 8
  %0 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %call = call i32 @ReadByte(%struct.gif_source_struct* %0)
  store i32 %call, i32* %extlabel, align 4
  %1 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cinfo = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 0
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 5
  store i32 1019, i32* %msg_code, align 4
  %4 = load i32, i32* %extlabel, align 4
  %5 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cinfo1 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %5, i32 0, i32 1
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo1, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %4, i32* %arrayidx, align 4
  %8 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cinfo3 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %8, i32 0, i32 1
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo3, align 8
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 1
  %11 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %12 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cinfo5 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %12, i32 0, i32 1
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo5, align 8
  %14 = bitcast %struct.jpeg_compress_struct* %13 to %struct.jpeg_common_struct*
  call void %11(%struct.jpeg_common_struct* %14, i32 1)
  %15 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  call void @SkipDataBlocks(%struct.gif_source_struct* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @InitLZWCode(%struct.gif_source_struct* %sinfo) #0 {
entry:
  %sinfo.addr = alloca %struct.gif_source_struct*, align 8
  store %struct.gif_source_struct* %sinfo, %struct.gif_source_struct** %sinfo.addr, align 8
  %0 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %last_byte = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %0, i32 0, i32 4
  store i32 2, i32* %last_byte, align 4
  %1 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %last_bit = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %1, i32 0, i32 5
  store i32 0, i32* %last_bit, align 4
  %2 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cur_bit = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %2, i32 0, i32 6
  store i32 0, i32* %cur_bit, align 4
  %3 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %out_of_blocks = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %3, i32 0, i32 7
  store i32 0, i32* %out_of_blocks, align 4
  %4 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %input_code_size = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %4, i32 0, i32 8
  %5 = load i32, i32* %input_code_size, align 4
  %shl = shl i32 1, %5
  %6 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %clear_code = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %6, i32 0, i32 9
  store i32 %shl, i32* %clear_code, align 4
  %7 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %clear_code1 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %7, i32 0, i32 9
  %8 = load i32, i32* %clear_code1, align 4
  %add = add nsw i32 %8, 1
  %9 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %end_code = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %9, i32 0, i32 10
  store i32 %add, i32* %end_code, align 4
  %10 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %first_time = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %10, i32 0, i32 14
  store i32 1, i32* %first_time, align 4
  %11 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  call void @ReInitLZW(%struct.gif_source_struct* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @load_interlaced_image(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct.gif_source_struct*, align 8
  %image_ptr = alloca i8**, align 8
  %sptr = alloca i8*, align 8
  %col = alloca i32, align 4
  %row = alloca i32, align 4
  %progress = alloca %struct.cdjpeg_progress_mgr*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %0 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %1 = bitcast %struct.cjpeg_source_struct* %0 to %struct.gif_source_struct*
  store %struct.gif_source_struct* %1, %struct.gif_source_struct** %source, align 8
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %progress1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 2
  %3 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %progress1, align 8
  %4 = bitcast %struct.jpeg_progress_mgr* %3 to %struct.cdjpeg_progress_mgr*
  store %struct.cdjpeg_progress_mgr* %4, %struct.cdjpeg_progress_mgr** %progress, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %5 = load i32, i32* %row, align 4
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 7
  %7 = load i32, i32* %image_height, align 4
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end.15

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
  %23 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %interlaced_image = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %23, i32 0, i32 22
  %24 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %interlaced_image, align 8
  %25 = load i32, i32* %row, align 4
  %call = call i8** %20(%struct.jpeg_common_struct* %22, %struct.jvirt_sarray_control* %24, i32 %25, i32 1, i32 1)
  store i8** %call, i8*** %image_ptr, align 8
  %26 = load i8**, i8*** %image_ptr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %26, i64 0
  %27 = load i8*, i8** %arrayidx, align 8
  store i8* %27, i8** %sptr, align 8
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 6
  %29 = load i32, i32* %image_width, align 4
  store i32 %29, i32* %col, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %if.end
  %30 = load i32, i32* %col, align 4
  %cmp9 = icmp ugt i32 %30, 0
  br i1 %cmp9, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.8
  %31 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %call12 = call i32 @LZWReadByte(%struct.gif_source_struct* %31)
  %conv13 = trunc i32 %call12 to i8
  %32 = load i8*, i8** %sptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %sptr, align 8
  store i8 %conv13, i8* %32, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %33 = load i32, i32* %col, align 4
  %dec = add i32 %33, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %34 = load i32, i32* %row, align 4
  %inc = add i32 %34, 1
  store i32 %inc, i32* %row, align 4
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  %35 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8
  %cmp16 = icmp ne %struct.cdjpeg_progress_mgr* %35, null
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %for.end.15
  %36 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %progress, align 8
  %completed_extra_passes = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %36, i32 0, i32 1
  %37 = load i32, i32* %completed_extra_passes, align 4
  %inc19 = add nsw i32 %37, 1
  store i32 %inc19, i32* %completed_extra_passes, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %for.end.15
  %38 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %pub21 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %38, i32 0, i32 0
  %get_pixel_rows = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub21, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_interlaced_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows, align 8
  %39 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %cur_row_number = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %39, i32 0, i32 23
  store i32 0, i32* %cur_row_number, align 4
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_height22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %40, i32 0, i32 7
  %41 = load i32, i32* %image_height22, align 4
  %add = add i32 %41, 7
  %div = udiv i32 %add, 8
  %42 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %pass2_offset = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %42, i32 0, i32 24
  store i32 %div, i32* %pass2_offset, align 4
  %43 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %pass2_offset23 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %43, i32 0, i32 24
  %44 = load i32, i32* %pass2_offset23, align 4
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_height24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %45, i32 0, i32 7
  %46 = load i32, i32* %image_height24, align 4
  %add25 = add i32 %46, 3
  %div26 = udiv i32 %add25, 8
  %add27 = add i32 %44, %div26
  %47 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %pass3_offset = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %47, i32 0, i32 25
  store i32 %add27, i32* %pass3_offset, align 4
  %48 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %pass3_offset28 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %48, i32 0, i32 25
  %49 = load i32, i32* %pass3_offset28, align 4
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_height29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 7
  %51 = load i32, i32* %image_height29, align 4
  %add30 = add i32 %51, 1
  %div31 = udiv i32 %add30, 4
  %add32 = add i32 %49, %div31
  %52 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %pass4_offset = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %52, i32 0, i32 26
  store i32 %add32, i32* %pass4_offset, align 4
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %54 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %call33 = call i32 @get_interlaced_row(%struct.jpeg_compress_struct* %53, %struct.cjpeg_source_struct* %54)
  ret i32 %call33
}

; Function Attrs: nounwind uwtable
define internal i32 @get_pixel_rows(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct.gif_source_struct*, align 8
  %c = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %col = alloca i32, align 4
  %colormap = alloca i8**, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %0 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %1 = bitcast %struct.cjpeg_source_struct* %0 to %struct.gif_source_struct*
  store %struct.gif_source_struct* %1, %struct.gif_source_struct** %source, align 8
  %2 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %colormap1 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %2, i32 0, i32 2
  %3 = load i8**, i8*** %colormap1, align 8
  store i8** %3, i8*** %colormap, align 8
  %4 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %pub = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %4, i32 0, i32 0
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
  %10 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %call = call i32 @LZWReadByte(%struct.gif_source_struct* %10)
  store i32 %call, i32* %c, align 4
  %11 = load i32, i32* %c, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i8**, i8*** %colormap, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %12, i64 0
  %13 = load i8*, i8** %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %14 = load i8, i8* %arrayidx3, align 1
  %15 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  store i8 %14, i8* %15, align 1
  %16 = load i32, i32* %c, align 4
  %idxprom4 = sext i32 %16 to i64
  %17 = load i8**, i8*** %colormap, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %17, i64 1
  %18 = load i8*, i8** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %18, i64 %idxprom4
  %19 = load i8, i8* %arrayidx6, align 1
  %20 = load i8*, i8** %ptr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr7, i8** %ptr, align 8
  store i8 %19, i8* %20, align 1
  %21 = load i32, i32* %c, align 4
  %idxprom8 = sext i32 %21 to i64
  %22 = load i8**, i8*** %colormap, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %22, i64 2
  %23 = load i8*, i8** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %23, i64 %idxprom8
  %24 = load i8, i8* %arrayidx10, align 1
  %25 = load i8*, i8** %ptr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr11, i8** %ptr, align 8
  store i8 %24, i8* %25, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %col, align 4
  %dec = add i32 %26, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 1
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @SkipDataBlocks(%struct.gif_source_struct* %sinfo) #0 {
entry:
  %sinfo.addr = alloca %struct.gif_source_struct*, align 8
  %buf = alloca [256 x i8], align 16
  store %struct.gif_source_struct* %sinfo, %struct.gif_source_struct** %sinfo.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call = call i32 @GetDataBlock(%struct.gif_source_struct* %0, i8* %arraydecay)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @GetDataBlock(%struct.gif_source_struct* %sinfo, i8* %buf) #0 {
entry:
  %sinfo.addr = alloca %struct.gif_source_struct*, align 8
  %buf.addr = alloca i8*, align 8
  %count = alloca i32, align 4
  store %struct.gif_source_struct* %sinfo, %struct.gif_source_struct** %sinfo.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %call = call i32 @ReadByte(%struct.gif_source_struct* %0)
  store i32 %call, i32* %count, align 4
  %1 = load i32, i32* %count, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load i32, i32* %count, align 4
  %conv = sext i32 %3 to i64
  %4 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %pub = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %4, i32 0, i32 0
  %input_file = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 3
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file, align 8
  %call1 = call i64 @fread(i8* %2, i64 1, i64 %conv, %struct._IO_FILE* %5)
  %6 = load i32, i32* %count, align 4
  %conv2 = sext i32 %6 to i64
  %cmp3 = icmp eq i64 %call1, %conv2
  br i1 %cmp3, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  %7 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cinfo = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %7, i32 0, i32 1
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 5
  store i32 42, i32* %msg_code, align 4
  %10 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cinfo6 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %10, i32 0, i32 1
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo6, align 8
  %err7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 0
  %13 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %14 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cinfo8 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %14, i32 0, i32 1
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo8, align 8
  %16 = bitcast %struct.jpeg_compress_struct* %15 to %struct.jpeg_common_struct*
  call void %13(%struct.jpeg_common_struct* %16)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %17 = load i32, i32* %count, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal void @ReInitLZW(%struct.gif_source_struct* %sinfo) #0 {
entry:
  %sinfo.addr = alloca %struct.gif_source_struct*, align 8
  store %struct.gif_source_struct* %sinfo, %struct.gif_source_struct** %sinfo.addr, align 8
  %0 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %input_code_size = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %0, i32 0, i32 8
  %1 = load i32, i32* %input_code_size, align 4
  %add = add nsw i32 %1, 1
  %2 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %code_size = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %2, i32 0, i32 11
  store i32 %add, i32* %code_size, align 4
  %3 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %clear_code = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %3, i32 0, i32 9
  %4 = load i32, i32* %clear_code, align 4
  %shl = shl i32 %4, 1
  %5 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %limit_code = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %5, i32 0, i32 12
  store i32 %shl, i32* %limit_code, align 4
  %6 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %clear_code1 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %6, i32 0, i32 9
  %7 = load i32, i32* %clear_code1, align 4
  %add2 = add nsw i32 %7, 2
  %8 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %max_code = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %8, i32 0, i32 13
  store i32 %add2, i32* %max_code, align 4
  %9 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %symbol_stack = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %9, i32 0, i32 19
  %10 = load i8*, i8** %symbol_stack, align 8
  %11 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %sp = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %11, i32 0, i32 20
  store i8* %10, i8** %sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @LZWReadByte(%struct.gif_source_struct* %sinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %sinfo.addr = alloca %struct.gif_source_struct*, align 8
  %code = alloca i32, align 4
  %incode = alloca i32, align 4
  store %struct.gif_source_struct* %sinfo, %struct.gif_source_struct** %sinfo.addr, align 8
  %0 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %first_time = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %0, i32 0, i32 14
  %1 = load i32, i32* %first_time, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %first_time1 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %2, i32 0, i32 14
  store i32 0, i32* %first_time1, align 4
  %3 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %clear_code = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %3, i32 0, i32 9
  %4 = load i32, i32* %clear_code, align 4
  store i32 %4, i32* %code, align 4
  br label %if.end.4

if.else:                                          ; preds = %entry
  %5 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %sp = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %5, i32 0, i32 20
  %6 = load i8*, i8** %sp, align 8
  %7 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %symbol_stack = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %7, i32 0, i32 19
  %8 = load i8*, i8** %symbol_stack, align 8
  %cmp = icmp ugt i8* %6, %8
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %9 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %sp3 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %9, i32 0, i32 20
  %10 = load i8*, i8** %sp3, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 -1
  store i8* %incdec.ptr, i8** %sp3, align 8
  %11 = load i8, i8* %incdec.ptr, align 1
  %conv = zext i8 %11 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  %12 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %call = call i32 @GetCode(%struct.gif_source_struct* %12)
  store i32 %call, i32* %code, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %13 = load i32, i32* %code, align 4
  %14 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %clear_code5 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %14, i32 0, i32 9
  %15 = load i32, i32* %clear_code5, align 4
  %cmp6 = icmp eq i32 %13, %15
  br i1 %cmp6, label %if.then.8, label %if.end.21

if.then.8:                                        ; preds = %if.end.4
  %16 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  call void @ReInitLZW(%struct.gif_source_struct* %16)
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.8
  %17 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %call9 = call i32 @GetCode(%struct.gif_source_struct* %17)
  store i32 %call9, i32* %code, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %18 = load i32, i32* %code, align 4
  %19 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %clear_code10 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %19, i32 0, i32 9
  %20 = load i32, i32* %clear_code10, align 4
  %cmp11 = icmp eq i32 %18, %20
  br i1 %cmp11, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %21 = load i32, i32* %code, align 4
  %22 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %clear_code13 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %22, i32 0, i32 9
  %23 = load i32, i32* %clear_code13, align 4
  %cmp14 = icmp sgt i32 %21, %23
  br i1 %cmp14, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %do.end
  %24 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cinfo = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %24, i32 0, i32 1
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i32 0, i32 5
  store i32 1021, i32* %msg_code, align 4
  %27 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cinfo17 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %27, i32 0, i32 1
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo17, align 8
  %err18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err18, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 1
  %30 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %31 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cinfo19 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %31, i32 0, i32 1
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo19, align 8
  %33 = bitcast %struct.jpeg_compress_struct* %32 to %struct.jpeg_common_struct*
  call void %30(%struct.jpeg_common_struct* %33, i32 -1)
  store i32 0, i32* %code, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %do.end
  %34 = load i32, i32* %code, align 4
  %35 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %oldcode = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %35, i32 0, i32 15
  store i32 %34, i32* %oldcode, align 4
  %36 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %firstcode = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %36, i32 0, i32 16
  store i32 %34, i32* %firstcode, align 4
  %37 = load i32, i32* %code, align 4
  store i32 %37, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.4
  %38 = load i32, i32* %code, align 4
  %39 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %end_code = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %39, i32 0, i32 10
  %40 = load i32, i32* %end_code, align 4
  %cmp22 = icmp eq i32 %38, %40
  br i1 %cmp22, label %if.then.24, label %if.end.36

if.then.24:                                       ; preds = %if.end.21
  %41 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %out_of_blocks = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %41, i32 0, i32 7
  %42 = load i32, i32* %out_of_blocks, align 4
  %tobool25 = icmp ne i32 %42, 0
  br i1 %tobool25, label %if.end.28, label %if.then.26

if.then.26:                                       ; preds = %if.then.24
  %43 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  call void @SkipDataBlocks(%struct.gif_source_struct* %43)
  %44 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %out_of_blocks27 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %44, i32 0, i32 7
  store i32 1, i32* %out_of_blocks27, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.then.24
  %45 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cinfo29 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %45, i32 0, i32 1
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo29, align 8
  %err30 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %46, i32 0, i32 0
  %47 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err30, align 8
  %msg_code31 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %47, i32 0, i32 5
  store i32 1023, i32* %msg_code31, align 4
  %48 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cinfo32 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %48, i32 0, i32 1
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo32, align 8
  %err33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %49, i32 0, i32 0
  %50 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err33, align 8
  %emit_message34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %50, i32 0, i32 1
  %51 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message34, align 8
  %52 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cinfo35 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %52, i32 0, i32 1
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo35, align 8
  %54 = bitcast %struct.jpeg_compress_struct* %53 to %struct.jpeg_common_struct*
  call void %51(%struct.jpeg_common_struct* %54, i32 -1)
  store i32 0, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.end.21
  %55 = load i32, i32* %code, align 4
  store i32 %55, i32* %incode, align 4
  %56 = load i32, i32* %code, align 4
  %57 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %max_code = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %57, i32 0, i32 13
  %58 = load i32, i32* %max_code, align 4
  %cmp37 = icmp sge i32 %56, %58
  br i1 %cmp37, label %if.then.39, label %if.end.57

if.then.39:                                       ; preds = %if.end.36
  %59 = load i32, i32* %code, align 4
  %60 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %max_code40 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %60, i32 0, i32 13
  %61 = load i32, i32* %max_code40, align 4
  %cmp41 = icmp sgt i32 %59, %61
  br i1 %cmp41, label %if.then.43, label %if.end.51

if.then.43:                                       ; preds = %if.then.39
  %62 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cinfo44 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %62, i32 0, i32 1
  %63 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo44, align 8
  %err45 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %63, i32 0, i32 0
  %64 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err45, align 8
  %msg_code46 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %64, i32 0, i32 5
  store i32 1021, i32* %msg_code46, align 4
  %65 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cinfo47 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %65, i32 0, i32 1
  %66 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo47, align 8
  %err48 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %66, i32 0, i32 0
  %67 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err48, align 8
  %emit_message49 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %67, i32 0, i32 1
  %68 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message49, align 8
  %69 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cinfo50 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %69, i32 0, i32 1
  %70 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo50, align 8
  %71 = bitcast %struct.jpeg_compress_struct* %70 to %struct.jpeg_common_struct*
  call void %68(%struct.jpeg_common_struct* %71, i32 -1)
  store i32 0, i32* %incode, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.43, %if.then.39
  %72 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %firstcode52 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %72, i32 0, i32 16
  %73 = load i32, i32* %firstcode52, align 4
  %conv53 = trunc i32 %73 to i8
  %74 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %sp54 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %74, i32 0, i32 20
  %75 = load i8*, i8** %sp54, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr55, i8** %sp54, align 8
  store i8 %conv53, i8* %75, align 1
  %76 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %oldcode56 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %76, i32 0, i32 15
  %77 = load i32, i32* %oldcode56, align 4
  store i32 %77, i32* %code, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.51, %if.end.36
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.57
  %78 = load i32, i32* %code, align 4
  %79 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %clear_code58 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %79, i32 0, i32 9
  %80 = load i32, i32* %clear_code58, align 4
  %cmp59 = icmp sge i32 %78, %80
  br i1 %cmp59, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %81 = load i32, i32* %code, align 4
  %idxprom = sext i32 %81 to i64
  %82 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %symbol_tail = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %82, i32 0, i32 18
  %83 = load i8*, i8** %symbol_tail, align 8
  %arrayidx = getelementptr inbounds i8, i8* %83, i64 %idxprom
  %84 = load i8, i8* %arrayidx, align 1
  %85 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %sp61 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %85, i32 0, i32 20
  %86 = load i8*, i8** %sp61, align 8
  %incdec.ptr62 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr62, i8** %sp61, align 8
  store i8 %84, i8* %86, align 1
  %87 = load i32, i32* %code, align 4
  %idxprom63 = sext i32 %87 to i64
  %88 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %symbol_head = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %88, i32 0, i32 17
  %89 = load i16*, i16** %symbol_head, align 8
  %arrayidx64 = getelementptr inbounds i16, i16* %89, i64 %idxprom63
  %90 = load i16, i16* %arrayidx64, align 2
  %conv65 = zext i16 %90 to i32
  store i32 %conv65, i32* %code, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %91 = load i32, i32* %code, align 4
  %92 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %firstcode66 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %92, i32 0, i32 16
  store i32 %91, i32* %firstcode66, align 4
  %93 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %max_code67 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %93, i32 0, i32 13
  %94 = load i32, i32* %max_code67, align 4
  store i32 %94, i32* %code, align 4
  %cmp68 = icmp slt i32 %94, 4096
  br i1 %cmp68, label %if.then.70, label %if.end.92

if.then.70:                                       ; preds = %while.end
  %95 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %oldcode71 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %95, i32 0, i32 15
  %96 = load i32, i32* %oldcode71, align 4
  %conv72 = trunc i32 %96 to i16
  %97 = load i32, i32* %code, align 4
  %idxprom73 = sext i32 %97 to i64
  %98 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %symbol_head74 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %98, i32 0, i32 17
  %99 = load i16*, i16** %symbol_head74, align 8
  %arrayidx75 = getelementptr inbounds i16, i16* %99, i64 %idxprom73
  store i16 %conv72, i16* %arrayidx75, align 2
  %100 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %firstcode76 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %100, i32 0, i32 16
  %101 = load i32, i32* %firstcode76, align 4
  %conv77 = trunc i32 %101 to i8
  %102 = load i32, i32* %code, align 4
  %idxprom78 = sext i32 %102 to i64
  %103 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %symbol_tail79 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %103, i32 0, i32 18
  %104 = load i8*, i8** %symbol_tail79, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %104, i64 %idxprom78
  store i8 %conv77, i8* %arrayidx80, align 1
  %105 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %max_code81 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %105, i32 0, i32 13
  %106 = load i32, i32* %max_code81, align 4
  %inc = add nsw i32 %106, 1
  store i32 %inc, i32* %max_code81, align 4
  %107 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %max_code82 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %107, i32 0, i32 13
  %108 = load i32, i32* %max_code82, align 4
  %109 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %limit_code = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %109, i32 0, i32 12
  %110 = load i32, i32* %limit_code, align 4
  %cmp83 = icmp sge i32 %108, %110
  br i1 %cmp83, label %land.lhs.true, label %if.end.91

land.lhs.true:                                    ; preds = %if.then.70
  %111 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %code_size = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %111, i32 0, i32 11
  %112 = load i32, i32* %code_size, align 4
  %cmp85 = icmp slt i32 %112, 12
  br i1 %cmp85, label %if.then.87, label %if.end.91

if.then.87:                                       ; preds = %land.lhs.true
  %113 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %code_size88 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %113, i32 0, i32 11
  %114 = load i32, i32* %code_size88, align 4
  %inc89 = add nsw i32 %114, 1
  store i32 %inc89, i32* %code_size88, align 4
  %115 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %limit_code90 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %115, i32 0, i32 12
  %116 = load i32, i32* %limit_code90, align 4
  %shl = shl i32 %116, 1
  store i32 %shl, i32* %limit_code90, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.87, %land.lhs.true, %if.then.70
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %while.end
  %117 = load i32, i32* %incode, align 4
  %118 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %oldcode93 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %118, i32 0, i32 15
  store i32 %117, i32* %oldcode93, align 4
  %119 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %firstcode94 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %119, i32 0, i32 16
  %120 = load i32, i32* %firstcode94, align 4
  store i32 %120, i32* %retval
  br label %return

return:                                           ; preds = %if.end.92, %if.end.28, %if.end.20, %if.then.2
  %121 = load i32, i32* %retval
  ret i32 %121
}

; Function Attrs: nounwind uwtable
define internal i32 @get_interlaced_row(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %sinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %sinfo.addr = alloca %struct.cjpeg_source_struct*, align 8
  %source = alloca %struct.gif_source_struct*, align 8
  %image_ptr = alloca i8**, align 8
  %c = alloca i32, align 4
  %sptr = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %col = alloca i32, align 4
  %colormap = alloca i8**, align 8
  %irow = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.cjpeg_source_struct* %sinfo, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %0 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %sinfo.addr, align 8
  %1 = bitcast %struct.cjpeg_source_struct* %0 to %struct.gif_source_struct*
  store %struct.gif_source_struct* %1, %struct.gif_source_struct** %source, align 8
  %2 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %colormap1 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %2, i32 0, i32 2
  %3 = load i8**, i8*** %colormap1, align 8
  store i8** %3, i8*** %colormap, align 8
  %4 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %cur_row_number = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %4, i32 0, i32 23
  %5 = load i32, i32* %cur_row_number, align 4
  %and = and i32 %5, 7
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %sw.bb.3
    i32 2, label %sw.bb.6
    i32 6, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %6 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %cur_row_number2 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %6, i32 0, i32 23
  %7 = load i32, i32* %cur_row_number2, align 4
  %shr = lshr i32 %7, 3
  store i32 %shr, i32* %irow, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %8 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %cur_row_number4 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %8, i32 0, i32 23
  %9 = load i32, i32* %cur_row_number4, align 4
  %shr5 = lshr i32 %9, 3
  %10 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %pass2_offset = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %10, i32 0, i32 24
  %11 = load i32, i32* %pass2_offset, align 4
  %add = add i32 %shr5, %11
  store i32 %add, i32* %irow, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry, %entry
  %12 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %cur_row_number7 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %12, i32 0, i32 23
  %13 = load i32, i32* %cur_row_number7, align 4
  %shr8 = lshr i32 %13, 2
  %14 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %pass3_offset = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %14, i32 0, i32 25
  %15 = load i32, i32* %pass3_offset, align 4
  %add9 = add i32 %shr8, %15
  store i32 %add9, i32* %irow, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %16 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %cur_row_number10 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %16, i32 0, i32 23
  %17 = load i32, i32* %cur_row_number10, align 4
  %shr11 = lshr i32 %17, 1
  %18 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %pass4_offset = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %18, i32 0, i32 26
  %19 = load i32, i32* %pass4_offset, align 4
  %add12 = add i32 %shr11, %19
  store i32 %add12, i32* %irow, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.6, %sw.bb.3, %sw.bb
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 1
  %21 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %21, i32 0, i32 7
  %22 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %access_virt_sarray, align 8
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %24 = bitcast %struct.jpeg_compress_struct* %23 to %struct.jpeg_common_struct*
  %25 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %interlaced_image = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %25, i32 0, i32 22
  %26 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %interlaced_image, align 8
  %27 = load i32, i32* %irow, align 4
  %call = call i8** %22(%struct.jpeg_common_struct* %24, %struct.jvirt_sarray_control* %26, i32 %27, i32 1, i32 0)
  store i8** %call, i8*** %image_ptr, align 8
  %28 = load i8**, i8*** %image_ptr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %28, i64 0
  %29 = load i8*, i8** %arrayidx, align 8
  store i8* %29, i8** %sptr, align 8
  %30 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %pub = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %30, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %pub, i32 0, i32 4
  %31 = load i8**, i8*** %buffer, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %31, i64 0
  %32 = load i8*, i8** %arrayidx13, align 8
  store i8* %32, i8** %ptr, align 8
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %33, i32 0, i32 6
  %34 = load i32, i32* %image_width, align 4
  store i32 %34, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %35 = load i32, i32* %col, align 4
  %cmp = icmp ugt i32 %35, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i8*, i8** %sptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr, i8** %sptr, align 8
  %37 = load i8, i8* %36, align 1
  %conv = zext i8 %37 to i32
  store i32 %conv, i32* %c, align 4
  %38 = load i32, i32* %c, align 4
  %idxprom = sext i32 %38 to i64
  %39 = load i8**, i8*** %colormap, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %39, i64 0
  %40 = load i8*, i8** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %40, i64 %idxprom
  %41 = load i8, i8* %arrayidx15, align 1
  %42 = load i8*, i8** %ptr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr16, i8** %ptr, align 8
  store i8 %41, i8* %42, align 1
  %43 = load i32, i32* %c, align 4
  %idxprom17 = sext i32 %43 to i64
  %44 = load i8**, i8*** %colormap, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %44, i64 1
  %45 = load i8*, i8** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %45, i64 %idxprom17
  %46 = load i8, i8* %arrayidx19, align 1
  %47 = load i8*, i8** %ptr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr20, i8** %ptr, align 8
  store i8 %46, i8* %47, align 1
  %48 = load i32, i32* %c, align 4
  %idxprom21 = sext i32 %48 to i64
  %49 = load i8**, i8*** %colormap, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %49, i64 2
  %50 = load i8*, i8** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %50, i64 %idxprom21
  %51 = load i8, i8* %arrayidx23, align 1
  %52 = load i8*, i8** %ptr, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr24, i8** %ptr, align 8
  store i8 %51, i8* %52, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %53 = load i32, i32* %col, align 4
  %dec = add i32 %53, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %54 = load %struct.gif_source_struct*, %struct.gif_source_struct** %source, align 8
  %cur_row_number25 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %54, i32 0, i32 23
  %55 = load i32, i32* %cur_row_number25, align 4
  %inc = add i32 %55, 1
  store i32 %inc, i32* %cur_row_number25, align 4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @GetCode(%struct.gif_source_struct* %sinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %sinfo.addr = alloca %struct.gif_source_struct*, align 8
  %accum = alloca i64, align 8
  %offs = alloca i32, align 4
  %ret = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.gif_source_struct* %sinfo, %struct.gif_source_struct** %sinfo.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.26, %entry
  %0 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cur_bit = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %0, i32 0, i32 6
  %1 = load i32, i32* %cur_bit, align 4
  %2 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %code_size = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %2, i32 0, i32 11
  %3 = load i32, i32* %code_size, align 4
  %add = add nsw i32 %1, %3
  %4 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %last_bit = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %4, i32 0, i32 5
  %5 = load i32, i32* %last_bit, align 4
  %cmp = icmp sgt i32 %add, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %out_of_blocks = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %6, i32 0, i32 7
  %7 = load i32, i32* %out_of_blocks, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %8 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cinfo = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %8, i32 0, i32 1
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 5
  store i32 1024, i32* %msg_code, align 4
  %11 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cinfo1 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %11, i32 0, i32 1
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo1, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 1
  %14 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %15 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cinfo3 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %15, i32 0, i32 1
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo3, align 8
  %17 = bitcast %struct.jpeg_compress_struct* %16 to %struct.jpeg_common_struct*
  call void %14(%struct.jpeg_common_struct* %17, i32 -1)
  %18 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %end_code = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %18, i32 0, i32 10
  %19 = load i32, i32* %end_code, align 4
  store i32 %19, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %20 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %last_byte = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %20, i32 0, i32 4
  %21 = load i32, i32* %last_byte, align 4
  %sub = sub nsw i32 %21, 2
  %idxprom = sext i32 %sub to i64
  %22 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %code_buf = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %22, i32 0, i32 3
  %arrayidx = getelementptr inbounds [260 x i8], [260 x i8]* %code_buf, i32 0, i64 %idxprom
  %23 = load i8, i8* %arrayidx, align 1
  %24 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %code_buf4 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %24, i32 0, i32 3
  %arrayidx5 = getelementptr inbounds [260 x i8], [260 x i8]* %code_buf4, i32 0, i64 0
  store i8 %23, i8* %arrayidx5, align 1
  %25 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %last_byte6 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %25, i32 0, i32 4
  %26 = load i32, i32* %last_byte6, align 4
  %sub7 = sub nsw i32 %26, 1
  %idxprom8 = sext i32 %sub7 to i64
  %27 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %code_buf9 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %27, i32 0, i32 3
  %arrayidx10 = getelementptr inbounds [260 x i8], [260 x i8]* %code_buf9, i32 0, i64 %idxprom8
  %28 = load i8, i8* %arrayidx10, align 1
  %29 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %code_buf11 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %29, i32 0, i32 3
  %arrayidx12 = getelementptr inbounds [260 x i8], [260 x i8]* %code_buf11, i32 0, i64 1
  store i8 %28, i8* %arrayidx12, align 1
  %30 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %31 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %code_buf13 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %31, i32 0, i32 3
  %arrayidx14 = getelementptr inbounds [260 x i8], [260 x i8]* %code_buf13, i32 0, i64 2
  %call = call i32 @GetDataBlock(%struct.gif_source_struct* %30, i8* %arrayidx14)
  store i32 %call, i32* %count, align 4
  %cmp15 = icmp eq i32 %call, 0
  br i1 %cmp15, label %if.then.16, label %if.end.26

if.then.16:                                       ; preds = %if.end
  %32 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %out_of_blocks17 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %32, i32 0, i32 7
  store i32 1, i32* %out_of_blocks17, align 4
  %33 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cinfo18 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %33, i32 0, i32 1
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo18, align 8
  %err19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err19, align 8
  %msg_code20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i32 0, i32 5
  store i32 1024, i32* %msg_code20, align 4
  %36 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cinfo21 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %36, i32 0, i32 1
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo21, align 8
  %err22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %37, i32 0, i32 0
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err22, align 8
  %emit_message23 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %38, i32 0, i32 1
  %39 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message23, align 8
  %40 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cinfo24 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %40, i32 0, i32 1
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo24, align 8
  %42 = bitcast %struct.jpeg_compress_struct* %41 to %struct.jpeg_common_struct*
  call void %39(%struct.jpeg_common_struct* %42, i32 -1)
  %43 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %end_code25 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %43, i32 0, i32 10
  %44 = load i32, i32* %end_code25, align 4
  store i32 %44, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end
  %45 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cur_bit27 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %45, i32 0, i32 6
  %46 = load i32, i32* %cur_bit27, align 4
  %47 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %last_bit28 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %47, i32 0, i32 5
  %48 = load i32, i32* %last_bit28, align 4
  %sub29 = sub nsw i32 %46, %48
  %add30 = add nsw i32 %sub29, 16
  %49 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cur_bit31 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %49, i32 0, i32 6
  store i32 %add30, i32* %cur_bit31, align 4
  %50 = load i32, i32* %count, align 4
  %add32 = add nsw i32 2, %50
  %51 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %last_byte33 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %51, i32 0, i32 4
  store i32 %add32, i32* %last_byte33, align 4
  %52 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %last_byte34 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %52, i32 0, i32 4
  %53 = load i32, i32* %last_byte34, align 4
  %mul = mul nsw i32 %53, 8
  %54 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %last_bit35 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %54, i32 0, i32 5
  store i32 %mul, i32* %last_bit35, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %55 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cur_bit36 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %55, i32 0, i32 6
  %56 = load i32, i32* %cur_bit36, align 4
  %shr = ashr i32 %56, 3
  store i32 %shr, i32* %offs, align 4
  %57 = load i32, i32* %offs, align 4
  %add37 = add nsw i32 %57, 2
  %idxprom38 = sext i32 %add37 to i64
  %58 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %code_buf39 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %58, i32 0, i32 3
  %arrayidx40 = getelementptr inbounds [260 x i8], [260 x i8]* %code_buf39, i32 0, i64 %idxprom38
  %59 = load i8, i8* %arrayidx40, align 1
  %conv = sext i8 %59 to i32
  %and = and i32 %conv, 255
  %conv41 = sext i32 %and to i64
  store i64 %conv41, i64* %accum, align 8
  %60 = load i64, i64* %accum, align 8
  %shl = shl i64 %60, 8
  store i64 %shl, i64* %accum, align 8
  %61 = load i32, i32* %offs, align 4
  %add42 = add nsw i32 %61, 1
  %idxprom43 = sext i32 %add42 to i64
  %62 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %code_buf44 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %62, i32 0, i32 3
  %arrayidx45 = getelementptr inbounds [260 x i8], [260 x i8]* %code_buf44, i32 0, i64 %idxprom43
  %63 = load i8, i8* %arrayidx45, align 1
  %conv46 = sext i8 %63 to i32
  %and47 = and i32 %conv46, 255
  %conv48 = sext i32 %and47 to i64
  %64 = load i64, i64* %accum, align 8
  %or = or i64 %64, %conv48
  store i64 %or, i64* %accum, align 8
  %65 = load i64, i64* %accum, align 8
  %shl49 = shl i64 %65, 8
  store i64 %shl49, i64* %accum, align 8
  %66 = load i32, i32* %offs, align 4
  %idxprom50 = sext i32 %66 to i64
  %67 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %code_buf51 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %67, i32 0, i32 3
  %arrayidx52 = getelementptr inbounds [260 x i8], [260 x i8]* %code_buf51, i32 0, i64 %idxprom50
  %68 = load i8, i8* %arrayidx52, align 1
  %conv53 = sext i8 %68 to i32
  %and54 = and i32 %conv53, 255
  %conv55 = sext i32 %and54 to i64
  %69 = load i64, i64* %accum, align 8
  %or56 = or i64 %69, %conv55
  store i64 %or56, i64* %accum, align 8
  %70 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cur_bit57 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %70, i32 0, i32 6
  %71 = load i32, i32* %cur_bit57, align 4
  %and58 = and i32 %71, 7
  %72 = load i64, i64* %accum, align 8
  %sh_prom = zext i32 %and58 to i64
  %shr59 = ashr i64 %72, %sh_prom
  store i64 %shr59, i64* %accum, align 8
  %73 = load i64, i64* %accum, align 8
  %conv60 = trunc i64 %73 to i32
  %74 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %code_size61 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %74, i32 0, i32 11
  %75 = load i32, i32* %code_size61, align 4
  %shl62 = shl i32 1, %75
  %sub63 = sub nsw i32 %shl62, 1
  %and64 = and i32 %conv60, %sub63
  store i32 %and64, i32* %ret, align 4
  %76 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %code_size65 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %76, i32 0, i32 11
  %77 = load i32, i32* %code_size65, align 4
  %78 = load %struct.gif_source_struct*, %struct.gif_source_struct** %sinfo.addr, align 8
  %cur_bit66 = getelementptr inbounds %struct.gif_source_struct, %struct.gif_source_struct* %78, i32 0, i32 6
  %79 = load i32, i32* %cur_bit66, align 4
  %add67 = add nsw i32 %79, %77
  store i32 %add67, i32* %cur_bit66, align 4
  %80 = load i32, i32* %ret, align 4
  store i32 %80, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.16, %if.then
  %81 = load i32, i32* %retval
  ret i32 %81
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
