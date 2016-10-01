; ModuleID = './MultiSource.Benchmarks.MiBench/118.consumer-jpeg.jquant1.bc'
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
%struct.jpeg_source_mgr = type { i8*, i64, {}*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, {}* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.jpeg_decomp_master = type { {}*, {}*, i32 }
%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
%struct.jpeg_d_coef_controller = type { {}*, i32 (%struct.jpeg_decompress_struct*)*, {}*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
%struct.jpeg_input_controller = type { i32 (%struct.jpeg_decompress_struct*)*, {}*, {}*, {}*, i32, i32 }
%struct.jpeg_marker_reader = type { {}*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, [16 x i32 (%struct.jpeg_decompress_struct*)*], i32, i32, i32, i32 }
%struct.jpeg_entropy_decoder = type { {}*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* }
%struct.jpeg_inverse_dct = type { {}*, [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*] }
%struct.jpeg_upsampler = type { {}*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, i32 }
%struct.jpeg_color_deconverter = type { {}*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* }
%struct.jpeg_color_quantizer = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, {}*, {}* }
%struct.my_cquantizer = type { %struct.jpeg_color_quantizer, i8**, i32, i8**, i32, [4 x i32], i32, [4 x [16 x i32]*], [4 x i16*], i32 }

@base_dither_matrix = internal constant [16 x [16 x i8]] [[16 x i8] c"\00\C00\F0\0C\CC<\FC\03\C33\F3\0F\CF?\FF", [16 x i8] c"\80@\B0p\8CL\BC|\83C\B3s\8FO\BF\7F", [16 x i8] c" \E0\10\D0,\EC\1C\DC#\E3\13\D3/\EF\1F\DF", [16 x i8] c"\A0`\90P\ACl\9C\5C\A3c\93S\AFo\9F_", [16 x i8] c"\08\C88\F8\04\C44\F4\0B\CB;\FB\07\C77\F7", [16 x i8] c"\88H\B8x\84D\B4t\8BK\BB{\87G\B7w", [16 x i8] c"(\E8\18\D8$\E4\14\D4+\EB\1B\DB'\E7\17\D7", [16 x i8] c"\A8h\98X\A4d\94T\ABk\9B[\A7g\97W", [16 x i8] c"\02\C22\F2\0E\CE>\FE\01\C11\F1\0D\CD=\FD", [16 x i8] c"\82B\B2r\8EN\BE~\81A\B1q\8DM\BD}", [16 x i8] c"\22\E2\12\D2.\EE\1E\DE!\E1\11\D1-\ED\1D\DD", [16 x i8] c"\A2b\92R\AEn\9E^\A1a\91Q\ADm\9D]", [16 x i8] c"\0A\CA:\FA\06\C66\F6\09\C99\F9\05\C55\F5", [16 x i8] c"\8AJ\BAz\86F\B6v\89I\B9y\85E\B5u", [16 x i8] c"*\EA\1A\DA&\E6\16\D6)\E9\19\D9%\E5\15\D5", [16 x i8] c"\AAj\9AZ\A6f\96V\A9i\99Y\A5e\95U"], align 16
@select_ncolors.RGB_order = internal constant [3 x i32] [i32 1, i32 0, i32 2], align 4

; Function Attrs: nounwind uwtable
define void @jinit_1pass_quantizer(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %cquantize = alloca %struct.my_cquantizer*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_decompress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 152)
  %5 = bitcast i8* %call to %struct.my_cquantizer*
  store %struct.my_cquantizer* %5, %struct.my_cquantizer** %cquantize, align 8
  %6 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %7 = bitcast %struct.my_cquantizer* %6 to %struct.jpeg_color_quantizer*
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 83
  store %struct.jpeg_color_quantizer* %7, %struct.jpeg_color_quantizer** %cquantize1, align 8
  %9 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %pub = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %9, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub, i32 0, i32 0
  store void (%struct.jpeg_decompress_struct*, i32)* @start_pass_1_quant, void (%struct.jpeg_decompress_struct*, i32)** %start_pass, align 8
  %10 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %pub2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %10, i32 0, i32 0
  %finish_pass = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub2, i32 0, i32 2
  %finish_pass3 = bitcast {}** %finish_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @finish_pass_1_quant, void (%struct.jpeg_decompress_struct*)** %finish_pass3, align 8
  %11 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %pub4 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %11, i32 0, i32 0
  %new_color_map = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub4, i32 0, i32 3
  %new_color_map5 = bitcast {}** %new_color_map to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @new_color_map_1_quant, void (%struct.jpeg_decompress_struct*)** %new_color_map5, align 8
  %12 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %fserrors = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %12, i32 0, i32 8
  %arrayidx = getelementptr inbounds [4 x i16*], [4 x i16*]* %fserrors, i32 0, i64 0
  store i16* null, i16** %arrayidx, align 8
  %13 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %odither = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %13, i32 0, i32 7
  %arrayidx6 = getelementptr inbounds [4 x [16 x i32]*], [4 x [16 x i32]*]* %odither, i32 0, i64 0
  store [16 x i32]* null, [16 x i32]** %arrayidx6, align 8
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 28
  %15 = load i32, i32* %out_color_components, align 4
  %cmp = icmp sgt i32 %15, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 5
  store i32 54, i32* %msg_code, align 4
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 4, i32* %arrayidx8, align 4
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 0
  %22 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %24 = bitcast %struct.jpeg_decompress_struct* %23 to %struct.jpeg_common_struct*
  call void %22(%struct.jpeg_common_struct* %24)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %desired_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 22
  %26 = load i32, i32* %desired_number_of_colors, align 4
  %cmp10 = icmp sgt i32 %26, 256
  br i1 %cmp10, label %if.then.11, label %if.end.20

if.then.11:                                       ; preds = %if.end
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err12, align 8
  %msg_code13 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 5
  store i32 56, i32* %msg_code13, align 4
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err14, align 8
  %msg_parm15 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i32 0, i32 6
  %i16 = bitcast %union.anon* %msg_parm15 to [8 x i32]*
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* %i16, i32 0, i64 0
  store i32 256, i32* %arrayidx17, align 4
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 0
  %32 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err18, align 8
  %error_exit19 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %32, i32 0, i32 0
  %33 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit19, align 8
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %35 = bitcast %struct.jpeg_decompress_struct* %34 to %struct.jpeg_common_struct*
  call void %33(%struct.jpeg_common_struct* %35)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.11, %if.end
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @create_colormap(%struct.jpeg_decompress_struct* %36)
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @create_colorindex(%struct.jpeg_decompress_struct* %37)
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 20
  %39 = load i32, i32* %dither_mode, align 4
  %cmp21 = icmp eq i32 %39, 2
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @alloc_fs_workspace(%struct.jpeg_decompress_struct* %40)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.20
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_1_quant(%struct.jpeg_decompress_struct* %cinfo, i32 %is_pre_scan) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %is_pre_scan.addr = alloca i32, align 4
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %arraysize = alloca i64, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i32 %is_pre_scan, i32* %is_pre_scan.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 83
  %1 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8
  %2 = bitcast %struct.jpeg_color_quantizer* %1 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %2, %struct.my_cquantizer** %cquantize, align 8
  %3 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %sv_colormap = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %3, i32 0, i32 1
  %4 = load i8**, i8*** %sv_colormap, align 8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 32
  store i8** %4, i8*** %colormap, align 8
  %6 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %sv_actual = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %6, i32 0, i32 2
  %7 = load i32, i32* %sv_actual, align 4
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 31
  store i32 %7, i32* %actual_number_of_colors, align 4
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 20
  %10 = load i32, i32* %dither_mode, align 4
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
    i32 2, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %entry
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 28
  %12 = load i32, i32* %out_color_components, align 4
  %cmp = icmp eq i32 %12, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %13 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %pub = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %13, i32 0, i32 0
  %color_quantize = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)* @color_quantize3, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %color_quantize, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %14 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %pub2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %14, i32 0, i32 0
  %color_quantize3 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub2, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)* @color_quantize, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %color_quantize3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 28
  %16 = load i32, i32* %out_color_components5, align 4
  %cmp6 = icmp eq i32 %16, 3
  br i1 %cmp6, label %if.then.7, label %if.else.10

if.then.7:                                        ; preds = %sw.bb.4
  %17 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %pub8 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %17, i32 0, i32 0
  %color_quantize9 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub8, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)* @quantize3_ord_dither, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %color_quantize9, align 8
  br label %if.end.13

if.else.10:                                       ; preds = %sw.bb.4
  %18 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %pub11 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %18, i32 0, i32 0
  %color_quantize12 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub11, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)* @quantize_ord_dither, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %color_quantize12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.10, %if.then.7
  %19 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %row_index = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %19, i32 0, i32 6
  store i32 0, i32* %row_index, align 4
  %20 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %is_padded = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %20, i32 0, i32 4
  %21 = load i32, i32* %is_padded, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.13
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @create_colorindex(%struct.jpeg_decompress_struct* %22)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.13
  %23 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %odither = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %23, i32 0, i32 7
  %arrayidx = getelementptr inbounds [4 x [16 x i32]*], [4 x [16 x i32]*]* %odither, i32 0, i64 0
  %24 = load [16 x i32]*, [16 x i32]** %arrayidx, align 8
  %cmp16 = icmp eq [16 x i32]* %24, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @create_odither_tables(%struct.jpeg_decompress_struct* %25)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.15
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %26 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %pub20 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %26, i32 0, i32 0
  %color_quantize21 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub20, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)* @quantize_fs_dither, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %color_quantize21, align 8
  %27 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %on_odd_row = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %27, i32 0, i32 9
  store i32 0, i32* %on_odd_row, align 4
  %28 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %fserrors = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %28, i32 0, i32 8
  %arrayidx22 = getelementptr inbounds [4 x i16*], [4 x i16*]* %fserrors, i32 0, i64 0
  %29 = load i16*, i16** %arrayidx22, align 8
  %cmp23 = icmp eq i16* %29, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %sw.bb.19
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @alloc_fs_workspace(%struct.jpeg_decompress_struct* %30)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %sw.bb.19
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 26
  %32 = load i32, i32* %output_width, align 4
  %add = add i32 %32, 2
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 2
  store i64 %mul, i64* %arraysize, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.25
  %33 = load i32, i32* %i, align 4
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 28
  %35 = load i32, i32* %out_color_components26, align 4
  %cmp27 = icmp slt i32 %33, %35
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i32, i32* %i, align 4
  %idxprom = sext i32 %36 to i64
  %37 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %fserrors29 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %37, i32 0, i32 8
  %arrayidx30 = getelementptr inbounds [4 x i16*], [4 x i16*]* %fserrors29, i32 0, i64 %idxprom
  %38 = load i16*, i16** %arrayidx30, align 8
  %39 = bitcast i16* %38 to i8*
  %40 = load i64, i64* %arraysize, align 8
  call void @jzero_far(i8* %39, i64 %40)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 0
  %43 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %43, i32 0, i32 5
  store i32 47, i32* %msg_code, align 4
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 0
  %45 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err31, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %45, i32 0, i32 0
  %46 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %48 = bitcast %struct.jpeg_decompress_struct* %47 to %struct.jpeg_common_struct*
  call void %46(%struct.jpeg_common_struct* %48)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end, %if.end.18, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass_1_quant(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @new_color_map_1_quant(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 0
  %1 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %1, i32 0, i32 5
  store i32 45, i32* %msg_code, align 4
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 0
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 0
  %4 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %6 = bitcast %struct.jpeg_decompress_struct* %5 to %struct.jpeg_common_struct*
  call void %4(%struct.jpeg_common_struct* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @create_colormap(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %colormap = alloca i8**, align 8
  %total_colors = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nci = alloca i32, align 4
  %blksize = alloca i32, align 4
  %blkdist = alloca i32, align 4
  %ptr = alloca i32, align 4
  %val = alloca i32, align 4
  %_mp = alloca i32*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 83
  %1 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8
  %2 = bitcast %struct.jpeg_color_quantizer* %1 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %2, %struct.my_cquantizer** %cquantize, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %4 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %Ncolors = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %4, i32 0, i32 5
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %Ncolors, i32 0, i32 0
  %call = call i32 @select_ncolors(%struct.jpeg_decompress_struct* %3, i32* %arraydecay)
  store i32 %call, i32* %total_colors, align 4
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 28
  %6 = load i32, i32* %out_color_components, align 4
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 6
  %i2 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arraydecay3 = getelementptr inbounds [8 x i32], [8 x i32]* %i2, i32 0, i32 0
  store i32* %arraydecay3, i32** %_mp, align 8
  %9 = load i32, i32* %total_colors, align 4
  %10 = load i32*, i32** %_mp, align 8
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %9, i32* %arrayidx, align 4
  %11 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %Ncolors4 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %11, i32 0, i32 5
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %Ncolors4, i32 0, i64 0
  %12 = load i32, i32* %arrayidx5, align 4
  %13 = load i32*, i32** %_mp, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 %12, i32* %arrayidx6, align 4
  %14 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %Ncolors7 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %14, i32 0, i32 5
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* %Ncolors7, i32 0, i64 1
  %15 = load i32, i32* %arrayidx8, align 4
  %16 = load i32*, i32** %_mp, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %16, i64 2
  store i32 %15, i32* %arrayidx9, align 4
  %17 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %Ncolors10 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %17, i32 0, i32 5
  %arrayidx11 = getelementptr inbounds [4 x i32], [4 x i32]* %Ncolors10, i32 0, i64 2
  %18 = load i32, i32* %arrayidx11, align 4
  %19 = load i32*, i32** %_mp, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %19, i64 3
  store i32 %18, i32* %arrayidx12, align 4
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 5
  store i32 93, i32* %msg_code, align 4
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err14, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 1
  %24 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %26 = bitcast %struct.jpeg_decompress_struct* %25 to %struct.jpeg_common_struct*
  call void %24(%struct.jpeg_common_struct* %26, i32 1)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %entry
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err15, align 8
  %msg_code16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 5
  store i32 94, i32* %msg_code16, align 4
  %29 = load i32, i32* %total_colors, align 4
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err17, align 8
  %msg_parm18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 6
  %i19 = bitcast %union.anon* %msg_parm18 to [8 x i32]*
  %arrayidx20 = getelementptr inbounds [8 x i32], [8 x i32]* %i19, i32 0, i64 0
  store i32 %29, i32* %arrayidx20, align 4
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err21, align 8
  %emit_message22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 1
  %34 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message22, align 8
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %36 = bitcast %struct.jpeg_decompress_struct* %35 to %struct.jpeg_common_struct*
  call void %34(%struct.jpeg_common_struct* %36, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 1
  %38 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %38, i32 0, i32 2
  %39 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %41 = bitcast %struct.jpeg_decompress_struct* %40 to %struct.jpeg_common_struct*
  %42 = load i32, i32* %total_colors, align 4
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 28
  %44 = load i32, i32* %out_color_components23, align 4
  %call24 = call i8** %39(%struct.jpeg_common_struct* %41, i32 1, i32 %42, i32 %44)
  store i8** %call24, i8*** %colormap, align 8
  %45 = load i32, i32* %total_colors, align 4
  store i32 %45, i32* %blkdist, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.49, %if.end
  %46 = load i32, i32* %i, align 4
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 28
  %48 = load i32, i32* %out_color_components25, align 4
  %cmp26 = icmp slt i32 %46, %48
  br i1 %cmp26, label %for.body, label %for.end.51

for.body:                                         ; preds = %for.cond
  %49 = load i32, i32* %i, align 4
  %idxprom = sext i32 %49 to i64
  %50 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %Ncolors27 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %50, i32 0, i32 5
  %arrayidx28 = getelementptr inbounds [4 x i32], [4 x i32]* %Ncolors27, i32 0, i64 %idxprom
  %51 = load i32, i32* %arrayidx28, align 4
  store i32 %51, i32* %nci, align 4
  %52 = load i32, i32* %blkdist, align 4
  %53 = load i32, i32* %nci, align 4
  %div = sdiv i32 %52, %53
  store i32 %div, i32* %blksize, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.46, %for.body
  %54 = load i32, i32* %j, align 4
  %55 = load i32, i32* %nci, align 4
  %cmp30 = icmp slt i32 %54, %55
  br i1 %cmp30, label %for.body.31, label %for.end.48

for.body.31:                                      ; preds = %for.cond.29
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %j, align 4
  %59 = load i32, i32* %nci, align 4
  %sub = sub nsw i32 %59, 1
  %call32 = call i32 @output_value(%struct.jpeg_decompress_struct* %56, i32 %57, i32 %58, i32 %sub)
  store i32 %call32, i32* %val, align 4
  %60 = load i32, i32* %j, align 4
  %61 = load i32, i32* %blksize, align 4
  %mul = mul nsw i32 %60, %61
  store i32 %mul, i32* %ptr, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.43, %for.body.31
  %62 = load i32, i32* %ptr, align 4
  %63 = load i32, i32* %total_colors, align 4
  %cmp34 = icmp slt i32 %62, %63
  br i1 %cmp34, label %for.body.35, label %for.end.45

for.body.35:                                      ; preds = %for.cond.33
  store i32 0, i32* %k, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc, %for.body.35
  %64 = load i32, i32* %k, align 4
  %65 = load i32, i32* %blksize, align 4
  %cmp37 = icmp slt i32 %64, %65
  br i1 %cmp37, label %for.body.38, label %for.end

for.body.38:                                      ; preds = %for.cond.36
  %66 = load i32, i32* %val, align 4
  %conv = trunc i32 %66 to i8
  %67 = load i32, i32* %ptr, align 4
  %68 = load i32, i32* %k, align 4
  %add = add nsw i32 %67, %68
  %idxprom39 = sext i32 %add to i64
  %69 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %69 to i64
  %70 = load i8**, i8*** %colormap, align 8
  %arrayidx41 = getelementptr inbounds i8*, i8** %70, i64 %idxprom40
  %71 = load i8*, i8** %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %71, i64 %idxprom39
  store i8 %conv, i8* %arrayidx42, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.38
  %72 = load i32, i32* %k, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.36

for.end:                                          ; preds = %for.cond.36
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.end
  %73 = load i32, i32* %blkdist, align 4
  %74 = load i32, i32* %ptr, align 4
  %add44 = add nsw i32 %74, %73
  store i32 %add44, i32* %ptr, align 4
  br label %for.cond.33

for.end.45:                                       ; preds = %for.cond.33
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.end.45
  %75 = load i32, i32* %j, align 4
  %inc47 = add nsw i32 %75, 1
  store i32 %inc47, i32* %j, align 4
  br label %for.cond.29

for.end.48:                                       ; preds = %for.cond.29
  %76 = load i32, i32* %blksize, align 4
  store i32 %76, i32* %blkdist, align 4
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.end.48
  %77 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %77, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond

for.end.51:                                       ; preds = %for.cond
  %78 = load i8**, i8*** %colormap, align 8
  %79 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %sv_colormap = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %79, i32 0, i32 1
  store i8** %78, i8*** %sv_colormap, align 8
  %80 = load i32, i32* %total_colors, align 4
  %81 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %sv_actual = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %81, i32 0, i32 2
  store i32 %80, i32* %sv_actual, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @create_colorindex(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %indexptr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nci = alloca i32, align 4
  %blksize = alloca i32, align 4
  %val = alloca i32, align 4
  %pad = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 83
  %1 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8
  %2 = bitcast %struct.jpeg_color_quantizer* %1 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %2, %struct.my_cquantizer** %cquantize, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 20
  %4 = load i32, i32* %dither_mode, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 510, i32* %pad, align 4
  %5 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %is_padded = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %5, i32 0, i32 4
  store i32 1, i32* %is_padded, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %pad, align 4
  %6 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %is_padded2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %6, i32 0, i32 4
  store i32 0, i32* %is_padded2, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 1
  %8 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %8, i32 0, i32 2
  %9 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %11 = bitcast %struct.jpeg_decompress_struct* %10 to %struct.jpeg_common_struct*
  %12 = load i32, i32* %pad, align 4
  %add = add nsw i32 256, %12
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 28
  %14 = load i32, i32* %out_color_components, align 4
  %call = call i8** %9(%struct.jpeg_common_struct* %11, i32 1, i32 %add, i32 %14)
  %15 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %colorindex = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %15, i32 0, i32 3
  store i8** %call, i8*** %colorindex, align 8
  %16 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %sv_actual = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %16, i32 0, i32 2
  %17 = load i32, i32* %sv_actual, align 4
  store i32 %17, i32* %blksize, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.41, %if.end
  %18 = load i32, i32* %i, align 4
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 28
  %20 = load i32, i32* %out_color_components3, align 4
  %cmp4 = icmp slt i32 %18, %20
  br i1 %cmp4, label %for.body, label %for.end.43

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %Ncolors = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %22, i32 0, i32 5
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %Ncolors, i32 0, i64 %idxprom
  %23 = load i32, i32* %arrayidx, align 4
  store i32 %23, i32* %nci, align 4
  %24 = load i32, i32* %blksize, align 4
  %25 = load i32, i32* %nci, align 4
  %div = sdiv i32 %24, %25
  store i32 %div, i32* %blksize, align 4
  %26 = load i32, i32* %pad, align 4
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %27 to i64
  %28 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %colorindex7 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %28, i32 0, i32 3
  %29 = load i8**, i8*** %colorindex7, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %29, i64 %idxprom6
  %30 = load i8*, i8** %arrayidx8, align 8
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 255
  store i8* %add.ptr, i8** %arrayidx8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.5, %for.body
  %31 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %31 to i64
  %32 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %colorindex11 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %32, i32 0, i32 3
  %33 = load i8**, i8*** %colorindex11, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %33, i64 %idxprom10
  %34 = load i8*, i8** %arrayidx12, align 8
  store i8* %34, i8** %indexptr, align 8
  store i32 0, i32* %val, align 4
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %nci, align 4
  %sub = sub nsw i32 %37, 1
  %call13 = call i32 @largest_input_value(%struct.jpeg_decompress_struct* %35, i32 %36, i32 0, i32 %sub)
  store i32 %call13, i32* %k, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %if.end.9
  %38 = load i32, i32* %j, align 4
  %cmp15 = icmp sle i32 %38, 255
  br i1 %cmp15, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.16
  %39 = load i32, i32* %j, align 4
  %40 = load i32, i32* %k, align 4
  %cmp17 = icmp sgt i32 %39, %40
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %val, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %val, align 4
  %44 = load i32, i32* %nci, align 4
  %sub18 = sub nsw i32 %44, 1
  %call19 = call i32 @largest_input_value(%struct.jpeg_decompress_struct* %41, i32 %42, i32 %inc, i32 %sub18)
  store i32 %call19, i32* %k, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %45 = load i32, i32* %val, align 4
  %46 = load i32, i32* %blksize, align 4
  %mul = mul nsw i32 %45, %46
  %conv = trunc i32 %mul to i8
  %47 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %47 to i64
  %48 = load i8*, i8** %indexptr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %48, i64 %idxprom20
  store i8 %conv, i8* %arrayidx21, align 1
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %49 = load i32, i32* %j, align 4
  %inc22 = add nsw i32 %49, 1
  store i32 %inc22, i32* %j, align 4
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  %50 = load i32, i32* %pad, align 4
  %tobool23 = icmp ne i32 %50, 0
  br i1 %tobool23, label %if.then.24, label %if.end.40

if.then.24:                                       ; preds = %for.end
  store i32 1, i32* %j, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.37, %if.then.24
  %51 = load i32, i32* %j, align 4
  %cmp26 = icmp sle i32 %51, 255
  br i1 %cmp26, label %for.body.28, label %for.end.39

for.body.28:                                      ; preds = %for.cond.25
  %52 = load i8*, i8** %indexptr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %52, i64 0
  %53 = load i8, i8* %arrayidx29, align 1
  %54 = load i32, i32* %j, align 4
  %sub30 = sub nsw i32 0, %54
  %idxprom31 = sext i32 %sub30 to i64
  %55 = load i8*, i8** %indexptr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %55, i64 %idxprom31
  store i8 %53, i8* %arrayidx32, align 1
  %56 = load i8*, i8** %indexptr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %56, i64 255
  %57 = load i8, i8* %arrayidx33, align 1
  %58 = load i32, i32* %j, align 4
  %add34 = add nsw i32 255, %58
  %idxprom35 = sext i32 %add34 to i64
  %59 = load i8*, i8** %indexptr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %59, i64 %idxprom35
  store i8 %57, i8* %arrayidx36, align 1
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.28
  %60 = load i32, i32* %j, align 4
  %inc38 = add nsw i32 %60, 1
  store i32 %inc38, i32* %j, align 4
  br label %for.cond.25

for.end.39:                                       ; preds = %for.cond.25
  br label %if.end.40

if.end.40:                                        ; preds = %for.end.39, %for.end
  br label %for.inc.41

for.inc.41:                                       ; preds = %if.end.40
  %61 = load i32, i32* %i, align 4
  %inc42 = add nsw i32 %61, 1
  store i32 %inc42, i32* %i, align 4
  br label %for.cond

for.end.43:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @alloc_fs_workspace(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %arraysize = alloca i64, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 83
  %1 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8
  %2 = bitcast %struct.jpeg_color_quantizer* %1 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %2, %struct.my_cquantizer** %cquantize, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 26
  %4 = load i32, i32* %output_width, align 4
  %add = add i32 %4, 2
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 2
  store i64 %mul, i64* %arraysize, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 28
  %7 = load i32, i32* %out_color_components, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 1
  %9 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %9, i32 0, i32 1
  %10 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_large, align 8
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %12 = bitcast %struct.jpeg_decompress_struct* %11 to %struct.jpeg_common_struct*
  %13 = load i64, i64* %arraysize, align 8
  %call = call i8* %10(%struct.jpeg_common_struct* %12, i32 1, i64 %13)
  %14 = bitcast i8* %call to i16*
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %fserrors = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %16, i32 0, i32 8
  %arrayidx = getelementptr inbounds [4 x i16*], [4 x i16*]* %fserrors, i32 0, i64 %idxprom
  store i16* %14, i16** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @color_quantize3(%struct.jpeg_decompress_struct* %cinfo, i8** %input_buf, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %pixcode = alloca i32, align 4
  %ptrin = alloca i8*, align 8
  %ptrout = alloca i8*, align 8
  %colorindex0 = alloca i8*, align 8
  %colorindex1 = alloca i8*, align 8
  %colorindex24 = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %width = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i8** %input_buf, i8*** %input_buf.addr, align 8
  store i8** %output_buf, i8*** %output_buf.addr, align 8
  store i32 %num_rows, i32* %num_rows.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 83
  %1 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8
  %2 = bitcast %struct.jpeg_color_quantizer* %1 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %2, %struct.my_cquantizer** %cquantize, align 8
  %3 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %colorindex = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %3, i32 0, i32 3
  %4 = load i8**, i8*** %colorindex, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 0
  %5 = load i8*, i8** %arrayidx, align 8
  store i8* %5, i8** %colorindex0, align 8
  %6 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %colorindex2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %6, i32 0, i32 3
  %7 = load i8**, i8*** %colorindex2, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %7, i64 1
  %8 = load i8*, i8** %arrayidx3, align 8
  store i8* %8, i8** %colorindex1, align 8
  %9 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %colorindex5 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %9, i32 0, i32 3
  %10 = load i8**, i8*** %colorindex5, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %10, i64 2
  %11 = load i8*, i8** %arrayidx6, align 8
  store i8* %11, i8** %colorindex24, align 8
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 26
  %13 = load i32, i32* %output_width, align 4
  store i32 %13, i32* %width, align 4
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.29, %entry
  %14 = load i32, i32* %row, align 4
  %15 = load i32, i32* %num_rows.addr, align 4
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %row, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load i8**, i8*** %input_buf.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %17, i64 %idxprom
  %18 = load i8*, i8** %arrayidx7, align 8
  store i8* %18, i8** %ptrin, align 8
  %19 = load i32, i32* %row, align 4
  %idxprom8 = sext i32 %19 to i64
  %20 = load i8**, i8*** %output_buf.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %20, i64 %idxprom8
  %21 = load i8*, i8** %arrayidx9, align 8
  store i8* %21, i8** %ptrout, align 8
  %22 = load i32, i32* %width, align 4
  store i32 %22, i32* %col, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body
  %23 = load i32, i32* %col, align 4
  %cmp11 = icmp ugt i32 %23, 0
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.10
  %24 = load i8*, i8** %ptrin, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %ptrin, align 8
  %25 = load i8, i8* %24, align 1
  %conv = zext i8 %25 to i32
  %idxprom13 = sext i32 %conv to i64
  %26 = load i8*, i8** %colorindex0, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %26, i64 %idxprom13
  %27 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %27 to i32
  store i32 %conv15, i32* %pixcode, align 4
  %28 = load i8*, i8** %ptrin, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr16, i8** %ptrin, align 8
  %29 = load i8, i8* %28, align 1
  %conv17 = zext i8 %29 to i32
  %idxprom18 = sext i32 %conv17 to i64
  %30 = load i8*, i8** %colorindex1, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %30, i64 %idxprom18
  %31 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %31 to i32
  %32 = load i32, i32* %pixcode, align 4
  %add = add nsw i32 %32, %conv20
  store i32 %add, i32* %pixcode, align 4
  %33 = load i8*, i8** %ptrin, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr21, i8** %ptrin, align 8
  %34 = load i8, i8* %33, align 1
  %conv22 = zext i8 %34 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %35 = load i8*, i8** %colorindex24, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %35, i64 %idxprom23
  %36 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %36 to i32
  %37 = load i32, i32* %pixcode, align 4
  %add26 = add nsw i32 %37, %conv25
  store i32 %add26, i32* %pixcode, align 4
  %38 = load i32, i32* %pixcode, align 4
  %conv27 = trunc i32 %38 to i8
  %39 = load i8*, i8** %ptrout, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr28, i8** %ptrout, align 8
  store i8 %conv27, i8* %39, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %40 = load i32, i32* %col, align 4
  %dec = add i32 %40, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end
  %41 = load i32, i32* %row, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %row, align 4
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @color_quantize(%struct.jpeg_decompress_struct* %cinfo, i8** %input_buf, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %colorindex = alloca i8**, align 8
  %pixcode = alloca i32, align 4
  %ci = alloca i32, align 4
  %ptrin = alloca i8*, align 8
  %ptrout = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %width = alloca i32, align 4
  %nc = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i8** %input_buf, i8*** %input_buf.addr, align 8
  store i8** %output_buf, i8*** %output_buf.addr, align 8
  store i32 %num_rows, i32* %num_rows.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 83
  %1 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8
  %2 = bitcast %struct.jpeg_color_quantizer* %1 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %2, %struct.my_cquantizer** %cquantize, align 8
  %3 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %colorindex2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %3, i32 0, i32 3
  %4 = load i8**, i8*** %colorindex2, align 8
  store i8** %4, i8*** %colorindex, align 8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 26
  %6 = load i32, i32* %output_width, align 4
  store i32 %6, i32* %width, align 4
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 28
  %8 = load i32, i32* %out_color_components, align 4
  store i32 %8, i32* %nc, align 4
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %9 = load i32, i32* %row, align 4
  %10 = load i32, i32* %num_rows.addr, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %row, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i8**, i8*** %input_buf.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 %idxprom
  %13 = load i8*, i8** %arrayidx, align 8
  store i8* %13, i8** %ptrin, align 8
  %14 = load i32, i32* %row, align 4
  %idxprom3 = sext i32 %14 to i64
  %15 = load i8**, i8*** %output_buf.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %15, i64 %idxprom3
  %16 = load i8*, i8** %arrayidx4, align 8
  store i8* %16, i8** %ptrout, align 8
  %17 = load i32, i32* %width, align 4
  store i32 %17, i32* %col, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.18, %for.body
  %18 = load i32, i32* %col, align 4
  %cmp6 = icmp ugt i32 %18, 0
  br i1 %cmp6, label %for.body.7, label %for.end.19

for.body.7:                                       ; preds = %for.cond.5
  store i32 0, i32* %pixcode, align 4
  store i32 0, i32* %ci, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body.7
  %19 = load i32, i32* %ci, align 4
  %20 = load i32, i32* %nc, align 4
  %cmp9 = icmp slt i32 %19, %20
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %21 = load i8*, i8** %ptrin, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %ptrin, align 8
  %22 = load i8, i8* %21, align 1
  %conv = zext i8 %22 to i32
  %idxprom11 = sext i32 %conv to i64
  %23 = load i32, i32* %ci, align 4
  %idxprom12 = sext i32 %23 to i64
  %24 = load i8**, i8*** %colorindex, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %24, i64 %idxprom12
  %25 = load i8*, i8** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %25, i64 %idxprom11
  %26 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %26 to i32
  %27 = load i32, i32* %pixcode, align 4
  %add = add nsw i32 %27, %conv15
  store i32 %add, i32* %pixcode, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %28 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %ci, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  %29 = load i32, i32* %pixcode, align 4
  %conv16 = trunc i32 %29 to i8
  %30 = load i8*, i8** %ptrout, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr17, i8** %ptrout, align 8
  store i8 %conv16, i8* %30, align 1
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %31 = load i32, i32* %col, align 4
  %dec = add i32 %31, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond.5

for.end.19:                                       ; preds = %for.cond.5
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end.19
  %32 = load i32, i32* %row, align 4
  %inc21 = add nsw i32 %32, 1
  store i32 %inc21, i32* %row, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @quantize3_ord_dither(%struct.jpeg_decompress_struct* %cinfo, i8** %input_buf, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %pixcode = alloca i32, align 4
  %input_ptr = alloca i8*, align 8
  %output_ptr = alloca i8*, align 8
  %colorindex0 = alloca i8*, align 8
  %colorindex1 = alloca i8*, align 8
  %colorindex24 = alloca i8*, align 8
  %dither0 = alloca i32*, align 8
  %dither1 = alloca i32*, align 8
  %dither2 = alloca i32*, align 8
  %row_index = alloca i32, align 4
  %col_index = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %width = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i8** %input_buf, i8*** %input_buf.addr, align 8
  store i8** %output_buf, i8*** %output_buf.addr, align 8
  store i32 %num_rows, i32* %num_rows.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 83
  %1 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8
  %2 = bitcast %struct.jpeg_color_quantizer* %1 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %2, %struct.my_cquantizer** %cquantize, align 8
  %3 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %colorindex = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %3, i32 0, i32 3
  %4 = load i8**, i8*** %colorindex, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 0
  %5 = load i8*, i8** %arrayidx, align 8
  store i8* %5, i8** %colorindex0, align 8
  %6 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %colorindex2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %6, i32 0, i32 3
  %7 = load i8**, i8*** %colorindex2, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %7, i64 1
  %8 = load i8*, i8** %arrayidx3, align 8
  store i8* %8, i8** %colorindex1, align 8
  %9 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %colorindex5 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %9, i32 0, i32 3
  %10 = load i8**, i8*** %colorindex5, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %10, i64 2
  %11 = load i8*, i8** %arrayidx6, align 8
  store i8* %11, i8** %colorindex24, align 8
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 26
  %13 = load i32, i32* %output_width, align 4
  store i32 %13, i32* %width, align 4
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.56, %entry
  %14 = load i32, i32* %row, align 4
  %15 = load i32, i32* %num_rows.addr, align 4
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end.57

for.body:                                         ; preds = %for.cond
  %16 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %row_index7 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %16, i32 0, i32 6
  %17 = load i32, i32* %row_index7, align 4
  store i32 %17, i32* %row_index, align 4
  %18 = load i32, i32* %row, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load i8**, i8*** %input_buf.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %19, i64 %idxprom
  %20 = load i8*, i8** %arrayidx8, align 8
  store i8* %20, i8** %input_ptr, align 8
  %21 = load i32, i32* %row, align 4
  %idxprom9 = sext i32 %21 to i64
  %22 = load i8**, i8*** %output_buf.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %22, i64 %idxprom9
  %23 = load i8*, i8** %arrayidx10, align 8
  store i8* %23, i8** %output_ptr, align 8
  %24 = load i32, i32* %row_index, align 4
  %idxprom11 = sext i32 %24 to i64
  %25 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %odither = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %25, i32 0, i32 7
  %arrayidx12 = getelementptr inbounds [4 x [16 x i32]*], [4 x [16 x i32]*]* %odither, i32 0, i64 0
  %26 = load [16 x i32]*, [16 x i32]** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds [16 x i32], [16 x i32]* %26, i64 %idxprom11
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx13, i32 0, i32 0
  store i32* %arraydecay, i32** %dither0, align 8
  %27 = load i32, i32* %row_index, align 4
  %idxprom14 = sext i32 %27 to i64
  %28 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %odither15 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %28, i32 0, i32 7
  %arrayidx16 = getelementptr inbounds [4 x [16 x i32]*], [4 x [16 x i32]*]* %odither15, i32 0, i64 1
  %29 = load [16 x i32]*, [16 x i32]** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds [16 x i32], [16 x i32]* %29, i64 %idxprom14
  %arraydecay18 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx17, i32 0, i32 0
  store i32* %arraydecay18, i32** %dither1, align 8
  %30 = load i32, i32* %row_index, align 4
  %idxprom19 = sext i32 %30 to i64
  %31 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %odither20 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %31, i32 0, i32 7
  %arrayidx21 = getelementptr inbounds [4 x [16 x i32]*], [4 x [16 x i32]*]* %odither20, i32 0, i64 2
  %32 = load [16 x i32]*, [16 x i32]** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds [16 x i32], [16 x i32]* %32, i64 %idxprom19
  %arraydecay23 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx22, i32 0, i32 0
  store i32* %arraydecay23, i32** %dither2, align 8
  store i32 0, i32* %col_index, align 4
  %33 = load i32, i32* %width, align 4
  store i32 %33, i32* %col, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc, %for.body
  %34 = load i32, i32* %col, align 4
  %cmp25 = icmp ugt i32 %34, 0
  br i1 %cmp25, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.24
  %35 = load i8*, i8** %input_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr, i8** %input_ptr, align 8
  %36 = load i8, i8* %35, align 1
  %conv = zext i8 %36 to i32
  %37 = load i32, i32* %col_index, align 4
  %idxprom27 = sext i32 %37 to i64
  %38 = load i32*, i32** %dither0, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %38, i64 %idxprom27
  %39 = load i32, i32* %arrayidx28, align 4
  %add = add nsw i32 %conv, %39
  %idxprom29 = sext i32 %add to i64
  %40 = load i8*, i8** %colorindex0, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %40, i64 %idxprom29
  %41 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %41 to i32
  store i32 %conv31, i32* %pixcode, align 4
  %42 = load i8*, i8** %input_ptr, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr32, i8** %input_ptr, align 8
  %43 = load i8, i8* %42, align 1
  %conv33 = zext i8 %43 to i32
  %44 = load i32, i32* %col_index, align 4
  %idxprom34 = sext i32 %44 to i64
  %45 = load i32*, i32** %dither1, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %45, i64 %idxprom34
  %46 = load i32, i32* %arrayidx35, align 4
  %add36 = add nsw i32 %conv33, %46
  %idxprom37 = sext i32 %add36 to i64
  %47 = load i8*, i8** %colorindex1, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %47, i64 %idxprom37
  %48 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %48 to i32
  %49 = load i32, i32* %pixcode, align 4
  %add40 = add nsw i32 %49, %conv39
  store i32 %add40, i32* %pixcode, align 4
  %50 = load i8*, i8** %input_ptr, align 8
  %incdec.ptr41 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr41, i8** %input_ptr, align 8
  %51 = load i8, i8* %50, align 1
  %conv42 = zext i8 %51 to i32
  %52 = load i32, i32* %col_index, align 4
  %idxprom43 = sext i32 %52 to i64
  %53 = load i32*, i32** %dither2, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %53, i64 %idxprom43
  %54 = load i32, i32* %arrayidx44, align 4
  %add45 = add nsw i32 %conv42, %54
  %idxprom46 = sext i32 %add45 to i64
  %55 = load i8*, i8** %colorindex24, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %55, i64 %idxprom46
  %56 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %56 to i32
  %57 = load i32, i32* %pixcode, align 4
  %add49 = add nsw i32 %57, %conv48
  store i32 %add49, i32* %pixcode, align 4
  %58 = load i32, i32* %pixcode, align 4
  %conv50 = trunc i32 %58 to i8
  %59 = load i8*, i8** %output_ptr, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr51, i8** %output_ptr, align 8
  store i8 %conv50, i8* %59, align 1
  %60 = load i32, i32* %col_index, align 4
  %add52 = add nsw i32 %60, 1
  %and = and i32 %add52, 15
  store i32 %and, i32* %col_index, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.26
  %61 = load i32, i32* %col, align 4
  %dec = add i32 %61, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond.24

for.end:                                          ; preds = %for.cond.24
  %62 = load i32, i32* %row_index, align 4
  %add53 = add nsw i32 %62, 1
  %and54 = and i32 %add53, 15
  store i32 %and54, i32* %row_index, align 4
  %63 = load i32, i32* %row_index, align 4
  %64 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %row_index55 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %64, i32 0, i32 6
  store i32 %63, i32* %row_index55, align 4
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end
  %65 = load i32, i32* %row, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %row, align 4
  br label %for.cond

for.end.57:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @quantize_ord_dither(%struct.jpeg_decompress_struct* %cinfo, i8** %input_buf, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %input_ptr = alloca i8*, align 8
  %output_ptr = alloca i8*, align 8
  %colorindex_ci = alloca i8*, align 8
  %dither = alloca i32*, align 8
  %row_index = alloca i32, align 4
  %col_index = alloca i32, align 4
  %nc = alloca i32, align 4
  %ci = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %width = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i8** %input_buf, i8*** %input_buf.addr, align 8
  store i8** %output_buf, i8*** %output_buf.addr, align 8
  store i32 %num_rows, i32* %num_rows.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 83
  %1 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8
  %2 = bitcast %struct.jpeg_color_quantizer* %1 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %2, %struct.my_cquantizer** %cquantize, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 28
  %4 = load i32, i32* %out_color_components, align 4
  store i32 %4, i32* %nc, align 4
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 26
  %6 = load i32, i32* %output_width, align 4
  store i32 %6, i32* %width, align 4
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %entry
  %7 = load i32, i32* %row, align 4
  %8 = load i32, i32* %num_rows.addr, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end.40

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %row, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i8**, i8*** %output_buf.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %11 = load i8*, i8** %arrayidx, align 8
  %12 = load i32, i32* %width, align 4
  %conv = zext i32 %12 to i64
  %mul = mul i64 %conv, 1
  call void @jzero_far(i8* %11, i64 %mul)
  %13 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %row_index2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %13, i32 0, i32 6
  %14 = load i32, i32* %row_index2, align 4
  store i32 %14, i32* %row_index, align 4
  store i32 0, i32* %ci, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.33, %for.body
  %15 = load i32, i32* %ci, align 4
  %16 = load i32, i32* %nc, align 4
  %cmp4 = icmp slt i32 %15, %16
  br i1 %cmp4, label %for.body.6, label %for.end.34

for.body.6:                                       ; preds = %for.cond.3
  %17 = load i32, i32* %row, align 4
  %idxprom7 = sext i32 %17 to i64
  %18 = load i8**, i8*** %input_buf.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %18, i64 %idxprom7
  %19 = load i8*, i8** %arrayidx8, align 8
  %20 = load i32, i32* %ci, align 4
  %idx.ext = sext i32 %20 to i64
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %idx.ext
  store i8* %add.ptr, i8** %input_ptr, align 8
  %21 = load i32, i32* %row, align 4
  %idxprom9 = sext i32 %21 to i64
  %22 = load i8**, i8*** %output_buf.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %22, i64 %idxprom9
  %23 = load i8*, i8** %arrayidx10, align 8
  store i8* %23, i8** %output_ptr, align 8
  %24 = load i32, i32* %ci, align 4
  %idxprom11 = sext i32 %24 to i64
  %25 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %colorindex = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %25, i32 0, i32 3
  %26 = load i8**, i8*** %colorindex, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %26, i64 %idxprom11
  %27 = load i8*, i8** %arrayidx12, align 8
  store i8* %27, i8** %colorindex_ci, align 8
  %28 = load i32, i32* %row_index, align 4
  %idxprom13 = sext i32 %28 to i64
  %29 = load i32, i32* %ci, align 4
  %idxprom14 = sext i32 %29 to i64
  %30 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %odither = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %30, i32 0, i32 7
  %arrayidx15 = getelementptr inbounds [4 x [16 x i32]*], [4 x [16 x i32]*]* %odither, i32 0, i64 %idxprom14
  %31 = load [16 x i32]*, [16 x i32]** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds [16 x i32], [16 x i32]* %31, i64 %idxprom13
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx16, i32 0, i32 0
  store i32* %arraydecay, i32** %dither, align 8
  store i32 0, i32* %col_index, align 4
  %32 = load i32, i32* %width, align 4
  store i32 %32, i32* %col, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %for.body.6
  %33 = load i32, i32* %col, align 4
  %cmp18 = icmp ugt i32 %33, 0
  br i1 %cmp18, label %for.body.20, label %for.end

for.body.20:                                      ; preds = %for.cond.17
  %34 = load i8*, i8** %input_ptr, align 8
  %35 = load i8, i8* %34, align 1
  %conv21 = zext i8 %35 to i32
  %36 = load i32, i32* %col_index, align 4
  %idxprom22 = sext i32 %36 to i64
  %37 = load i32*, i32** %dither, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %37, i64 %idxprom22
  %38 = load i32, i32* %arrayidx23, align 4
  %add = add nsw i32 %conv21, %38
  %idxprom24 = sext i32 %add to i64
  %39 = load i8*, i8** %colorindex_ci, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %39, i64 %idxprom24
  %40 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %40 to i32
  %41 = load i8*, i8** %output_ptr, align 8
  %42 = load i8, i8* %41, align 1
  %conv27 = zext i8 %42 to i32
  %add28 = add nsw i32 %conv27, %conv26
  %conv29 = trunc i32 %add28 to i8
  store i8 %conv29, i8* %41, align 1
  %43 = load i32, i32* %nc, align 4
  %44 = load i8*, i8** %input_ptr, align 8
  %idx.ext30 = sext i32 %43 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %44, i64 %idx.ext30
  store i8* %add.ptr31, i8** %input_ptr, align 8
  %45 = load i8*, i8** %output_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr, i8** %output_ptr, align 8
  %46 = load i32, i32* %col_index, align 4
  %add32 = add nsw i32 %46, 1
  %and = and i32 %add32, 15
  store i32 %and, i32* %col_index, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.20
  %47 = load i32, i32* %col, align 4
  %dec = add i32 %47, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.end
  %48 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %ci, align 4
  br label %for.cond.3

for.end.34:                                       ; preds = %for.cond.3
  %49 = load i32, i32* %row_index, align 4
  %add35 = add nsw i32 %49, 1
  %and36 = and i32 %add35, 15
  store i32 %and36, i32* %row_index, align 4
  %50 = load i32, i32* %row_index, align 4
  %51 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %row_index37 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %51, i32 0, i32 6
  store i32 %50, i32* %row_index37, align 4
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end.34
  %52 = load i32, i32* %row, align 4
  %inc39 = add nsw i32 %52, 1
  store i32 %inc39, i32* %row, align 4
  br label %for.cond

for.end.40:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @create_odither_tables(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %odither = alloca [16 x i32]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nci = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 83
  %1 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8
  %2 = bitcast %struct.jpeg_color_quantizer* %1 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %2, %struct.my_cquantizer** %cquantize, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 28
  %5 = load i32, i32* %out_color_components, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %Ncolors = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %7, i32 0, i32 5
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %Ncolors, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  store i32 %8, i32* %nci, align 4
  store [16 x i32]* null, [16 x i32]** %odither, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %9, %10
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %11 = load i32, i32* %nci, align 4
  %12 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %Ncolors6 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %13, i32 0, i32 5
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %Ncolors6, i32 0, i64 %idxprom5
  %14 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp eq i32 %11, %14
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  %15 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %odither10 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %16, i32 0, i32 7
  %arrayidx11 = getelementptr inbounds [4 x [16 x i32]*], [4 x [16 x i32]*]* %odither10, i32 0, i64 %idxprom9
  %17 = load [16 x i32]*, [16 x i32]** %arrayidx11, align 8
  store [16 x i32]* %17, [16 x i32]** %odither, align 8
  br label %for.end

if.end:                                           ; preds = %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %if.then, %for.cond.2
  %19 = load [16 x i32]*, [16 x i32]** %odither, align 8
  %cmp12 = icmp eq [16 x i32]* %19, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.end
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %21 = load i32, i32* %nci, align 4
  %call = call [16 x i32]* @make_odither_array(%struct.jpeg_decompress_struct* %20, i32 %21)
  store [16 x i32]* %call, [16 x i32]** %odither, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %for.end
  %22 = load [16 x i32]*, [16 x i32]** %odither, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %23 to i64
  %24 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %odither16 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %24, i32 0, i32 7
  %arrayidx17 = getelementptr inbounds [4 x [16 x i32]*], [4 x [16 x i32]*]* %odither16, i32 0, i64 %idxprom15
  store [16 x i32]* %22, [16 x i32]** %arrayidx17, align 8
  br label %for.inc.18

for.inc.18:                                       ; preds = %if.end.14
  %25 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %25, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @quantize_fs_dither(%struct.jpeg_decompress_struct* %cinfo, i8** %input_buf, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %cur = alloca i32, align 4
  %belowerr = alloca i32, align 4
  %bpreverr = alloca i32, align 4
  %bnexterr = alloca i32, align 4
  %delta = alloca i32, align 4
  %errorptr = alloca i16*, align 8
  %input_ptr = alloca i8*, align 8
  %output_ptr = alloca i8*, align 8
  %colorindex_ci = alloca i8*, align 8
  %colormap_ci = alloca i8*, align 8
  %pixcode = alloca i32, align 4
  %nc = alloca i32, align 4
  %dir = alloca i32, align 4
  %dirnc = alloca i32, align 4
  %ci = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %width = alloca i32, align 4
  %range_limit = alloca i8*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i8** %input_buf, i8*** %input_buf.addr, align 8
  store i8** %output_buf, i8*** %output_buf.addr, align 8
  store i32 %num_rows, i32* %num_rows.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 83
  %1 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8
  %2 = bitcast %struct.jpeg_color_quantizer* %1 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %2, %struct.my_cquantizer** %cquantize, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 28
  %4 = load i32, i32* %out_color_components, align 4
  store i32 %4, i32* %nc, align 4
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 26
  %6 = load i32, i32* %output_width, align 4
  store i32 %6, i32* %width, align 4
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 61
  %8 = load i8*, i8** %sample_range_limit, align 8
  store i8* %8, i8** %range_limit, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.75, %entry
  %9 = load i32, i32* %row, align 4
  %10 = load i32, i32* %num_rows.addr, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end.77

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %row, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i8**, i8*** %output_buf.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 %idxprom
  %13 = load i8*, i8** %arrayidx, align 8
  %14 = load i32, i32* %width, align 4
  %conv = zext i32 %14 to i64
  %mul = mul i64 %conv, 1
  call void @jzero_far(i8* %13, i64 %mul)
  store i32 0, i32* %ci, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.70, %for.body
  %15 = load i32, i32* %ci, align 4
  %16 = load i32, i32* %nc, align 4
  %cmp3 = icmp slt i32 %15, %16
  br i1 %cmp3, label %for.body.5, label %for.end.71

for.body.5:                                       ; preds = %for.cond.2
  %17 = load i32, i32* %row, align 4
  %idxprom6 = sext i32 %17 to i64
  %18 = load i8**, i8*** %input_buf.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %18, i64 %idxprom6
  %19 = load i8*, i8** %arrayidx7, align 8
  %20 = load i32, i32* %ci, align 4
  %idx.ext = sext i32 %20 to i64
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %idx.ext
  store i8* %add.ptr, i8** %input_ptr, align 8
  %21 = load i32, i32* %row, align 4
  %idxprom8 = sext i32 %21 to i64
  %22 = load i8**, i8*** %output_buf.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %22, i64 %idxprom8
  %23 = load i8*, i8** %arrayidx9, align 8
  store i8* %23, i8** %output_ptr, align 8
  %24 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %on_odd_row = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %24, i32 0, i32 9
  %25 = load i32, i32* %on_odd_row, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.5
  %26 = load i32, i32* %width, align 4
  %sub = sub i32 %26, 1
  %27 = load i32, i32* %nc, align 4
  %mul10 = mul i32 %sub, %27
  %28 = load i8*, i8** %input_ptr, align 8
  %idx.ext11 = zext i32 %mul10 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %28, i64 %idx.ext11
  store i8* %add.ptr12, i8** %input_ptr, align 8
  %29 = load i32, i32* %width, align 4
  %sub13 = sub i32 %29, 1
  %30 = load i8*, i8** %output_ptr, align 8
  %idx.ext14 = zext i32 %sub13 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %30, i64 %idx.ext14
  store i8* %add.ptr15, i8** %output_ptr, align 8
  store i32 -1, i32* %dir, align 4
  %31 = load i32, i32* %nc, align 4
  %sub16 = sub nsw i32 0, %31
  store i32 %sub16, i32* %dirnc, align 4
  %32 = load i32, i32* %ci, align 4
  %idxprom17 = sext i32 %32 to i64
  %33 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %fserrors = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %33, i32 0, i32 8
  %arrayidx18 = getelementptr inbounds [4 x i16*], [4 x i16*]* %fserrors, i32 0, i64 %idxprom17
  %34 = load i16*, i16** %arrayidx18, align 8
  %35 = load i32, i32* %width, align 4
  %add = add i32 %35, 1
  %idx.ext19 = zext i32 %add to i64
  %add.ptr20 = getelementptr inbounds i16, i16* %34, i64 %idx.ext19
  store i16* %add.ptr20, i16** %errorptr, align 8
  br label %if.end

if.else:                                          ; preds = %for.body.5
  store i32 1, i32* %dir, align 4
  %36 = load i32, i32* %nc, align 4
  store i32 %36, i32* %dirnc, align 4
  %37 = load i32, i32* %ci, align 4
  %idxprom21 = sext i32 %37 to i64
  %38 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %fserrors22 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %38, i32 0, i32 8
  %arrayidx23 = getelementptr inbounds [4 x i16*], [4 x i16*]* %fserrors22, i32 0, i64 %idxprom21
  %39 = load i16*, i16** %arrayidx23, align 8
  store i16* %39, i16** %errorptr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %40 = load i32, i32* %ci, align 4
  %idxprom24 = sext i32 %40 to i64
  %41 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %colorindex = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %41, i32 0, i32 3
  %42 = load i8**, i8*** %colorindex, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %42, i64 %idxprom24
  %43 = load i8*, i8** %arrayidx25, align 8
  store i8* %43, i8** %colorindex_ci, align 8
  %44 = load i32, i32* %ci, align 4
  %idxprom26 = sext i32 %44 to i64
  %45 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %sv_colormap = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %45, i32 0, i32 1
  %46 = load i8**, i8*** %sv_colormap, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %46, i64 %idxprom26
  %47 = load i8*, i8** %arrayidx27, align 8
  store i8* %47, i8** %colormap_ci, align 8
  store i32 0, i32* %cur, align 4
  store i32 0, i32* %bpreverr, align 4
  store i32 0, i32* %belowerr, align 4
  %48 = load i32, i32* %width, align 4
  store i32 %48, i32* %col, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc, %if.end
  %49 = load i32, i32* %col, align 4
  %cmp29 = icmp ugt i32 %49, 0
  br i1 %cmp29, label %for.body.31, label %for.end

for.body.31:                                      ; preds = %for.cond.28
  %50 = load i32, i32* %cur, align 4
  %51 = load i32, i32* %dir, align 4
  %idxprom32 = sext i32 %51 to i64
  %52 = load i16*, i16** %errorptr, align 8
  %arrayidx33 = getelementptr inbounds i16, i16* %52, i64 %idxprom32
  %53 = load i16, i16* %arrayidx33, align 2
  %conv34 = sext i16 %53 to i32
  %add35 = add nsw i32 %50, %conv34
  %add36 = add nsw i32 %add35, 8
  %shr = ashr i32 %add36, 4
  store i32 %shr, i32* %cur, align 4
  %54 = load i8*, i8** %input_ptr, align 8
  %55 = load i8, i8* %54, align 1
  %conv37 = zext i8 %55 to i32
  %56 = load i32, i32* %cur, align 4
  %add38 = add nsw i32 %56, %conv37
  store i32 %add38, i32* %cur, align 4
  %57 = load i32, i32* %cur, align 4
  %idxprom39 = sext i32 %57 to i64
  %58 = load i8*, i8** %range_limit, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %58, i64 %idxprom39
  %59 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %59 to i32
  store i32 %conv41, i32* %cur, align 4
  %60 = load i32, i32* %cur, align 4
  %idxprom42 = sext i32 %60 to i64
  %61 = load i8*, i8** %colorindex_ci, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %61, i64 %idxprom42
  %62 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %62 to i32
  store i32 %conv44, i32* %pixcode, align 4
  %63 = load i32, i32* %pixcode, align 4
  %conv45 = trunc i32 %63 to i8
  %conv46 = zext i8 %conv45 to i32
  %64 = load i8*, i8** %output_ptr, align 8
  %65 = load i8, i8* %64, align 1
  %conv47 = zext i8 %65 to i32
  %add48 = add nsw i32 %conv47, %conv46
  %conv49 = trunc i32 %add48 to i8
  store i8 %conv49, i8* %64, align 1
  %66 = load i32, i32* %pixcode, align 4
  %idxprom50 = sext i32 %66 to i64
  %67 = load i8*, i8** %colormap_ci, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %67, i64 %idxprom50
  %68 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %68 to i32
  %69 = load i32, i32* %cur, align 4
  %sub53 = sub nsw i32 %69, %conv52
  store i32 %sub53, i32* %cur, align 4
  %70 = load i32, i32* %cur, align 4
  store i32 %70, i32* %bnexterr, align 4
  %71 = load i32, i32* %cur, align 4
  %mul54 = mul nsw i32 %71, 2
  store i32 %mul54, i32* %delta, align 4
  %72 = load i32, i32* %delta, align 4
  %73 = load i32, i32* %cur, align 4
  %add55 = add nsw i32 %73, %72
  store i32 %add55, i32* %cur, align 4
  %74 = load i32, i32* %bpreverr, align 4
  %75 = load i32, i32* %cur, align 4
  %add56 = add nsw i32 %74, %75
  %conv57 = trunc i32 %add56 to i16
  %76 = load i16*, i16** %errorptr, align 8
  %arrayidx58 = getelementptr inbounds i16, i16* %76, i64 0
  store i16 %conv57, i16* %arrayidx58, align 2
  %77 = load i32, i32* %delta, align 4
  %78 = load i32, i32* %cur, align 4
  %add59 = add nsw i32 %78, %77
  store i32 %add59, i32* %cur, align 4
  %79 = load i32, i32* %belowerr, align 4
  %80 = load i32, i32* %cur, align 4
  %add60 = add nsw i32 %79, %80
  store i32 %add60, i32* %bpreverr, align 4
  %81 = load i32, i32* %bnexterr, align 4
  store i32 %81, i32* %belowerr, align 4
  %82 = load i32, i32* %delta, align 4
  %83 = load i32, i32* %cur, align 4
  %add61 = add nsw i32 %83, %82
  store i32 %add61, i32* %cur, align 4
  %84 = load i32, i32* %dirnc, align 4
  %85 = load i8*, i8** %input_ptr, align 8
  %idx.ext62 = sext i32 %84 to i64
  %add.ptr63 = getelementptr inbounds i8, i8* %85, i64 %idx.ext62
  store i8* %add.ptr63, i8** %input_ptr, align 8
  %86 = load i32, i32* %dir, align 4
  %87 = load i8*, i8** %output_ptr, align 8
  %idx.ext64 = sext i32 %86 to i64
  %add.ptr65 = getelementptr inbounds i8, i8* %87, i64 %idx.ext64
  store i8* %add.ptr65, i8** %output_ptr, align 8
  %88 = load i32, i32* %dir, align 4
  %89 = load i16*, i16** %errorptr, align 8
  %idx.ext66 = sext i32 %88 to i64
  %add.ptr67 = getelementptr inbounds i16, i16* %89, i64 %idx.ext66
  store i16* %add.ptr67, i16** %errorptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.31
  %90 = load i32, i32* %col, align 4
  %dec = add i32 %90, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond.28

for.end:                                          ; preds = %for.cond.28
  %91 = load i32, i32* %bpreverr, align 4
  %conv68 = trunc i32 %91 to i16
  %92 = load i16*, i16** %errorptr, align 8
  %arrayidx69 = getelementptr inbounds i16, i16* %92, i64 0
  store i16 %conv68, i16* %arrayidx69, align 2
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.end
  %93 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %93, 1
  store i32 %inc, i32* %ci, align 4
  br label %for.cond.2

for.end.71:                                       ; preds = %for.cond.2
  %94 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %on_odd_row72 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %94, i32 0, i32 9
  %95 = load i32, i32* %on_odd_row72, align 4
  %tobool73 = icmp ne i32 %95, 0
  %cond = select i1 %tobool73, i32 0, i32 1
  %96 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %on_odd_row74 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %96, i32 0, i32 9
  store i32 %cond, i32* %on_odd_row74, align 4
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.end.71
  %97 = load i32, i32* %row, align 4
  %inc76 = add nsw i32 %97, 1
  store i32 %inc76, i32* %row, align 4
  br label %for.cond

for.end.77:                                       ; preds = %for.cond
  ret void
}

declare void @jzero_far(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal [16 x i32]* @make_odither_array(%struct.jpeg_decompress_struct* %cinfo, i32 %ncolors) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %ncolors.addr = alloca i32, align 4
  %odither = alloca [16 x i32]*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %num = alloca i64, align 8
  %den = alloca i64, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i32 %ncolors, i32* %ncolors.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_decompress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 1024)
  %5 = bitcast i8* %call to [16 x i32]*
  store [16 x i32]* %5, [16 x i32]** %odither, align 8
  %6 = load i32, i32* %ncolors.addr, align 4
  %sub = sub nsw i32 %6, 1
  %conv = sext i32 %sub to i64
  %mul = mul nsw i64 512, %conv
  store i64 %mul, i64* %den, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.23, %entry
  %7 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %7, 16
  br i1 %cmp, label %for.body, label %for.end.25

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %k, align 4
  %cmp3 = icmp slt i32 %8, 16
  br i1 %cmp3, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %9 = load i32, i32* %k, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [16 x [16 x i8]], [16 x [16 x i8]]* @base_dither_matrix, i32 0, i64 %idxprom6
  %arrayidx7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx, i32 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %11 to i32
  %mul9 = mul nsw i32 2, %conv8
  %sub10 = sub nsw i32 255, %mul9
  %conv11 = sext i32 %sub10 to i64
  %mul12 = mul nsw i64 %conv11, 255
  store i64 %mul12, i64* %num, align 8
  %12 = load i64, i64* %num, align 8
  %cmp13 = icmp slt i64 %12, 0
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.5
  %13 = load i64, i64* %num, align 8
  %sub15 = sub nsw i64 0, %13
  %14 = load i64, i64* %den, align 8
  %div = sdiv i64 %sub15, %14
  %sub16 = sub nsw i64 0, %div
  br label %cond.end

cond.false:                                       ; preds = %for.body.5
  %15 = load i64, i64* %num, align 8
  %16 = load i64, i64* %den, align 8
  %div17 = sdiv i64 %15, %16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub16, %cond.true ], [ %div17, %cond.false ]
  %conv18 = trunc i64 %cond to i32
  %17 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %17 to i64
  %18 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %18 to i64
  %19 = load [16 x i32]*, [16 x i32]** %odither, align 8
  %arrayidx21 = getelementptr inbounds [16 x i32], [16 x i32]* %19, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx21, i32 0, i64 %idxprom19
  store i32 %conv18, i32* %arrayidx22, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %20 = load i32, i32* %k, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end
  %21 = load i32, i32* %j, align 4
  %inc24 = add nsw i32 %21, 1
  store i32 %inc24, i32* %j, align 4
  br label %for.cond

for.end.25:                                       ; preds = %for.cond
  %22 = load [16 x i32]*, [16 x i32]** %odither, align 8
  ret [16 x i32]* %22
}

; Function Attrs: nounwind uwtable
define internal i32 @select_ncolors(%struct.jpeg_decompress_struct* %cinfo, i32* %Ncolors) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %Ncolors.addr = alloca i32*, align 8
  %nc = alloca i32, align 4
  %max_colors = alloca i32, align 4
  %total_colors = alloca i32, align 4
  %iroot = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %changed = alloca i32, align 4
  %temp = alloca i64, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i32* %Ncolors, i32** %Ncolors.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 28
  %1 = load i32, i32* %out_color_components, align 4
  store i32 %1, i32* %nc, align 4
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %desired_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 22
  %3 = load i32, i32* %desired_number_of_colors, align 4
  store i32 %3, i32* %max_colors, align 4
  store i32 1, i32* %iroot, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %4 = load i32, i32* %iroot, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %iroot, align 4
  %5 = load i32, i32* %iroot, align 4
  %conv = sext i32 %5 to i64
  store i64 %conv, i64* %temp, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %nc, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %iroot, align 4
  %conv2 = sext i32 %8 to i64
  %9 = load i64, i64* %temp, align 8
  %mul = mul nsw i64 %9, %conv2
  store i64 %mul, i64* %temp, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc3 = add nsw i32 %10, 1
  store i32 %inc3, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %11 = load i64, i64* %temp, align 8
  %12 = load i32, i32* %max_colors, align 4
  %conv4 = sext i32 %12 to i64
  %cmp5 = icmp sle i64 %11, %conv4
  br i1 %cmp5, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %13 = load i32, i32* %iroot, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %iroot, align 4
  %14 = load i32, i32* %iroot, align 4
  %cmp7 = icmp slt i32 %14, 2
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 5
  store i32 55, i32* %msg_code, align 4
  %17 = load i64, i64* %temp, align 8
  %conv9 = trunc i64 %17 to i32
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 6
  %i11 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i11, i32 0, i64 0
  store i32 %conv9, i32* %arrayidx, align 4
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err12, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 0
  %22 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %24 = bitcast %struct.jpeg_decompress_struct* %23 to %struct.jpeg_common_struct*
  call void %22(%struct.jpeg_common_struct* %24)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  store i32 1, i32* %total_colors, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.19, %if.end
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %nc, align 4
  %cmp14 = icmp slt i32 %25, %26
  br i1 %cmp14, label %for.body.16, label %for.end.21

for.body.16:                                      ; preds = %for.cond.13
  %27 = load i32, i32* %iroot, align 4
  %28 = load i32, i32* %i, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load i32*, i32** %Ncolors.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %29, i64 %idxprom
  store i32 %27, i32* %arrayidx17, align 4
  %30 = load i32, i32* %iroot, align 4
  %31 = load i32, i32* %total_colors, align 4
  %mul18 = mul nsw i32 %31, %30
  store i32 %mul18, i32* %total_colors, align 4
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.16
  %32 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %32, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond.13

for.end.21:                                       ; preds = %for.cond.13
  br label %do.body.22

do.body.22:                                       ; preds = %do.cond.50, %for.end.21
  store i32 0, i32* %changed, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.47, %do.body.22
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %nc, align 4
  %cmp24 = icmp slt i32 %33, %34
  br i1 %cmp24, label %for.body.26, label %for.end.49

for.body.26:                                      ; preds = %for.cond.23
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 10
  %36 = load i32, i32* %out_color_space, align 4
  %cmp27 = icmp eq i32 %36, 2
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.26
  %37 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %37 to i64
  %arrayidx30 = getelementptr inbounds [3 x i32], [3 x i32]* @select_ncolors.RGB_order, i32 0, i64 %idxprom29
  %38 = load i32, i32* %arrayidx30, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.26
  %39 = load i32, i32* %i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %38, %cond.true ], [ %39, %cond.false ]
  store i32 %cond, i32* %j, align 4
  %40 = load i32, i32* %total_colors, align 4
  %41 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %41 to i64
  %42 = load i32*, i32** %Ncolors.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %42, i64 %idxprom31
  %43 = load i32, i32* %arrayidx32, align 4
  %div = sdiv i32 %40, %43
  %conv33 = sext i32 %div to i64
  store i64 %conv33, i64* %temp, align 8
  %44 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %44 to i64
  %45 = load i32*, i32** %Ncolors.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %45, i64 %idxprom34
  %46 = load i32, i32* %arrayidx35, align 4
  %add = add nsw i32 %46, 1
  %conv36 = sext i32 %add to i64
  %47 = load i64, i64* %temp, align 8
  %mul37 = mul nsw i64 %47, %conv36
  store i64 %mul37, i64* %temp, align 8
  %48 = load i64, i64* %temp, align 8
  %49 = load i32, i32* %max_colors, align 4
  %conv38 = sext i32 %49 to i64
  %cmp39 = icmp sgt i64 %48, %conv38
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %cond.end
  br label %for.end.49

if.end.42:                                        ; preds = %cond.end
  %50 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %50 to i64
  %51 = load i32*, i32** %Ncolors.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %51, i64 %idxprom43
  %52 = load i32, i32* %arrayidx44, align 4
  %inc45 = add nsw i32 %52, 1
  store i32 %inc45, i32* %arrayidx44, align 4
  %53 = load i64, i64* %temp, align 8
  %conv46 = trunc i64 %53 to i32
  store i32 %conv46, i32* %total_colors, align 4
  store i32 1, i32* %changed, align 4
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end.42
  %54 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %54, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond.23

for.end.49:                                       ; preds = %if.then.41, %for.cond.23
  br label %do.cond.50

do.cond.50:                                       ; preds = %for.end.49
  %55 = load i32, i32* %changed, align 4
  %tobool = icmp ne i32 %55, 0
  br i1 %tobool, label %do.body.22, label %do.end.51

do.end.51:                                        ; preds = %do.cond.50
  %56 = load i32, i32* %total_colors, align 4
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal i32 @output_value(%struct.jpeg_decompress_struct* %cinfo, i32 %ci, i32 %j, i32 %maxj) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %ci.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %maxj.addr = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i32 %ci, i32* %ci.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 %maxj, i32* %maxj.addr, align 4
  %0 = load i32, i32* %j.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul nsw i64 %conv, 255
  %1 = load i32, i32* %maxj.addr, align 4
  %div = sdiv i32 %1, 2
  %conv1 = sext i32 %div to i64
  %add = add nsw i64 %mul, %conv1
  %2 = load i32, i32* %maxj.addr, align 4
  %conv2 = sext i32 %2 to i64
  %div3 = sdiv i64 %add, %conv2
  %conv4 = trunc i64 %div3 to i32
  ret i32 %conv4
}

; Function Attrs: nounwind uwtable
define internal i32 @largest_input_value(%struct.jpeg_decompress_struct* %cinfo, i32 %ci, i32 %j, i32 %maxj) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %ci.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %maxj.addr = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i32 %ci, i32* %ci.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 %maxj, i32* %maxj.addr, align 4
  %0 = load i32, i32* %j.addr, align 4
  %mul = mul nsw i32 2, %0
  %add = add nsw i32 %mul, 1
  %conv = sext i32 %add to i64
  %mul1 = mul nsw i64 %conv, 255
  %1 = load i32, i32* %maxj.addr, align 4
  %conv2 = sext i32 %1 to i64
  %add3 = add nsw i64 %mul1, %conv2
  %2 = load i32, i32* %maxj.addr, align 4
  %mul4 = mul nsw i32 2, %2
  %conv5 = sext i32 %mul4 to i64
  %div = sdiv i64 %add3, %conv5
  %conv6 = trunc i64 %div to i32
  ret i32 %conv6
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
