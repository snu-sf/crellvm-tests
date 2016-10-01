; ModuleID = './MultiSource.Benchmarks.MiBench/112.consumer-jpeg.jquant2.bc'
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
%struct.my_cquantizer = type { %struct.jpeg_color_quantizer, i8**, i32, [32 x i16]**, i32, i16*, i32, i32* }
%struct.box = type { i32, i32, i32, i32, i32, i32, i64, i64 }

; Function Attrs: nounwind uwtable
define void @jinit_2pass_quantizer(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %i = alloca i32, align 4
  %desired = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_decompress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 88)
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
  store void (%struct.jpeg_decompress_struct*, i32)* @start_pass_2_quant, void (%struct.jpeg_decompress_struct*, i32)** %start_pass, align 8
  %10 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %pub2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %10, i32 0, i32 0
  %new_color_map = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub2, i32 0, i32 3
  %new_color_map3 = bitcast {}** %new_color_map to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @new_color_map_2_quant, void (%struct.jpeg_decompress_struct*)** %new_color_map3, align 8
  %11 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %fserrors = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %11, i32 0, i32 5
  store i16* null, i16** %fserrors, align 8
  %12 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %error_limiter = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %12, i32 0, i32 7
  store i32* null, i32** %error_limiter, align 8
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 28
  %14 = load i32, i32* %out_color_components, align 4
  %cmp = icmp ne i32 %14, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 5
  store i32 46, i32* %msg_code, align 4
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 0
  %19 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %21 = bitcast %struct.jpeg_decompress_struct* %20 to %struct.jpeg_common_struct*
  call void %19(%struct.jpeg_common_struct* %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 1
  %23 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem5, align 8
  %alloc_small6 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %23, i32 0, i32 0
  %24 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small6, align 8
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %26 = bitcast %struct.jpeg_decompress_struct* %25 to %struct.jpeg_common_struct*
  %call7 = call i8* %24(%struct.jpeg_common_struct* %26, i32 1, i64 256)
  %27 = bitcast i8* %call7 to [32 x i16]**
  %28 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %histogram = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %28, i32 0, i32 3
  store [32 x i16]** %27, [32 x i16]*** %histogram, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %29 = load i32, i32* %i, align 4
  %cmp8 = icmp slt i32 %29, 32
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 1
  %31 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem9, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %31, i32 0, i32 1
  %32 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_large, align 8
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %34 = bitcast %struct.jpeg_decompress_struct* %33 to %struct.jpeg_common_struct*
  %call10 = call i8* %32(%struct.jpeg_common_struct* %34, i32 1, i64 4096)
  %35 = bitcast i8* %call10 to [32 x i16]*
  %36 = load i32, i32* %i, align 4
  %idxprom = sext i32 %36 to i64
  %37 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %histogram11 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %37, i32 0, i32 3
  %38 = load [32 x i16]**, [32 x i16]*** %histogram11, align 8
  %arrayidx = getelementptr inbounds [32 x i16]*, [32 x i16]** %38, i64 %idxprom
  store [32 x i16]* %35, [32 x i16]** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %needs_zeroed = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %40, i32 0, i32 4
  store i32 1, i32* %needs_zeroed, align 4
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %enable_2pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 25
  %42 = load i32, i32* %enable_2pass_quant, align 4
  %tobool = icmp ne i32 %42, 0
  br i1 %tobool, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %for.end
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %desired_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 22
  %44 = load i32, i32* %desired_number_of_colors, align 4
  store i32 %44, i32* %desired, align 4
  %45 = load i32, i32* %desired, align 4
  %cmp13 = icmp slt i32 %45, 8
  br i1 %cmp13, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %if.then.12
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 0
  %47 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err15, align 8
  %msg_code16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %47, i32 0, i32 5
  store i32 55, i32* %msg_code16, align 4
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 0
  %49 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err17, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %49, i32 0, i32 6
  %i18 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx19 = getelementptr inbounds [8 x i32], [8 x i32]* %i18, i32 0, i64 0
  store i32 8, i32* %arrayidx19, align 4
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 0
  %51 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err20, align 8
  %error_exit21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %51, i32 0, i32 0
  %52 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit21, align 8
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %54 = bitcast %struct.jpeg_decompress_struct* %53 to %struct.jpeg_common_struct*
  call void %52(%struct.jpeg_common_struct* %54)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.14, %if.then.12
  %55 = load i32, i32* %desired, align 4
  %cmp23 = icmp sgt i32 %55, 256
  br i1 %cmp23, label %if.then.24, label %if.end.33

if.then.24:                                       ; preds = %if.end.22
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %56, i32 0, i32 0
  %57 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err25, align 8
  %msg_code26 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %57, i32 0, i32 5
  store i32 56, i32* %msg_code26, align 4
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %58, i32 0, i32 0
  %59 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err27, align 8
  %msg_parm28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %59, i32 0, i32 6
  %i29 = bitcast %union.anon* %msg_parm28 to [8 x i32]*
  %arrayidx30 = getelementptr inbounds [8 x i32], [8 x i32]* %i29, i32 0, i64 0
  store i32 256, i32* %arrayidx30, align 4
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %60, i32 0, i32 0
  %61 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err31, align 8
  %error_exit32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %61, i32 0, i32 0
  %62 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit32, align 8
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %64 = bitcast %struct.jpeg_decompress_struct* %63 to %struct.jpeg_common_struct*
  call void %62(%struct.jpeg_common_struct* %64)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.24, %if.end.22
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 1
  %66 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem34, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %66, i32 0, i32 2
  %67 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %69 = bitcast %struct.jpeg_decompress_struct* %68 to %struct.jpeg_common_struct*
  %70 = load i32, i32* %desired, align 4
  %call35 = call i8** %67(%struct.jpeg_common_struct* %69, i32 1, i32 %70, i32 3)
  %71 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %sv_colormap = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %71, i32 0, i32 1
  store i8** %call35, i8*** %sv_colormap, align 8
  %72 = load i32, i32* %desired, align 4
  %73 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %desired36 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %73, i32 0, i32 2
  store i32 %72, i32* %desired36, align 4
  br label %if.end.38

if.else:                                          ; preds = %for.end
  %74 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %sv_colormap37 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %74, i32 0, i32 1
  store i8** null, i8*** %sv_colormap37, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.end.33
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %75, i32 0, i32 20
  %76 = load i32, i32* %dither_mode, align 4
  %cmp39 = icmp ne i32 %76, 0
  br i1 %cmp39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.end.38
  %77 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %dither_mode41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %77, i32 0, i32 20
  store i32 2, i32* %dither_mode41, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.end.38
  %78 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %dither_mode43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %78, i32 0, i32 20
  %79 = load i32, i32* %dither_mode43, align 4
  %cmp44 = icmp eq i32 %79, 2
  br i1 %cmp44, label %if.then.45, label %if.end.50

if.then.45:                                       ; preds = %if.end.42
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %80, i32 0, i32 1
  %81 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem46, align 8
  %alloc_large47 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %81, i32 0, i32 1
  %82 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_large47, align 8
  %83 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %84 = bitcast %struct.jpeg_decompress_struct* %83 to %struct.jpeg_common_struct*
  %85 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %85, i32 0, i32 26
  %86 = load i32, i32* %output_width, align 4
  %add = add i32 %86, 2
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 6
  %call48 = call i8* %82(%struct.jpeg_common_struct* %84, i32 1, i64 %mul)
  %87 = bitcast i8* %call48 to i16*
  %88 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %fserrors49 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %88, i32 0, i32 5
  store i16* %87, i16** %fserrors49, align 8
  %89 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @init_error_limit(%struct.jpeg_decompress_struct* %89)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.45, %if.end.42
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_2_quant(%struct.jpeg_decompress_struct* %cinfo, i32 %is_pre_scan) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %is_pre_scan.addr = alloca i32, align 4
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %histogram = alloca [32 x i16]**, align 8
  %i = alloca i32, align 4
  %arraysize = alloca i64, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i32 %is_pre_scan, i32* %is_pre_scan.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 83
  %1 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8
  %2 = bitcast %struct.jpeg_color_quantizer* %1 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %2, %struct.my_cquantizer** %cquantize, align 8
  %3 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %histogram2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %3, i32 0, i32 3
  %4 = load [32 x i16]**, [32 x i16]*** %histogram2, align 8
  store [32 x i16]** %4, [32 x i16]*** %histogram, align 8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 20
  %6 = load i32, i32* %dither_mode, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %dither_mode3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 20
  store i32 2, i32* %dither_mode3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %is_pre_scan.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %9 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %pub = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %9, i32 0, i32 0
  %color_quantize = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)* @prescan_quantize, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %color_quantize, align 8
  %10 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %pub5 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %10, i32 0, i32 0
  %finish_pass = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub5, i32 0, i32 2
  %finish_pass6 = bitcast {}** %finish_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @finish_pass1, void (%struct.jpeg_decompress_struct*)** %finish_pass6, align 8
  %11 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %needs_zeroed = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %11, i32 0, i32 4
  store i32 1, i32* %needs_zeroed, align 4
  br label %if.end.50

if.else:                                          ; preds = %if.end
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %dither_mode7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 20
  %13 = load i32, i32* %dither_mode7, align 4
  %cmp8 = icmp eq i32 %13, 2
  br i1 %cmp8, label %if.then.9, label %if.else.12

if.then.9:                                        ; preds = %if.else
  %14 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %pub10 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %14, i32 0, i32 0
  %color_quantize11 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub10, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)* @pass2_fs_dither, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %color_quantize11, align 8
  br label %if.end.15

if.else.12:                                       ; preds = %if.else
  %15 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %pub13 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %15, i32 0, i32 0
  %color_quantize14 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub13, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)* @pass2_no_dither, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %color_quantize14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.12, %if.then.9
  %16 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %pub16 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %16, i32 0, i32 0
  %finish_pass17 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %pub16, i32 0, i32 2
  %finish_pass18 = bitcast {}** %finish_pass17 to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @finish_pass2, void (%struct.jpeg_decompress_struct*)** %finish_pass18, align 8
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 31
  %18 = load i32, i32* %actual_number_of_colors, align 4
  store i32 %18, i32* %i, align 4
  %19 = load i32, i32* %i, align 4
  %cmp19 = icmp slt i32 %19, 1
  br i1 %cmp19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.end.15
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 5
  store i32 55, i32* %msg_code, align 4
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err21, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 6
  %i22 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i22, i32 0, i64 0
  store i32 1, i32* %arrayidx, align 4
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 0
  %25 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err23, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %25, i32 0, i32 0
  %26 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %28 = bitcast %struct.jpeg_decompress_struct* %27 to %struct.jpeg_common_struct*
  call void %26(%struct.jpeg_common_struct* %28)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %if.end.15
  %29 = load i32, i32* %i, align 4
  %cmp25 = icmp sgt i32 %29, 256
  br i1 %cmp25, label %if.then.26, label %if.end.35

if.then.26:                                       ; preds = %if.end.24
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err27, align 8
  %msg_code28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 5
  store i32 56, i32* %msg_code28, align 4
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err29, align 8
  %msg_parm30 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 6
  %i31 = bitcast %union.anon* %msg_parm30 to [8 x i32]*
  %arrayidx32 = getelementptr inbounds [8 x i32], [8 x i32]* %i31, i32 0, i64 0
  store i32 256, i32* %arrayidx32, align 4
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err33, align 8
  %error_exit34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i32 0, i32 0
  %36 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit34, align 8
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %38 = bitcast %struct.jpeg_decompress_struct* %37 to %struct.jpeg_common_struct*
  call void %36(%struct.jpeg_common_struct* %38)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.26, %if.end.24
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %dither_mode36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 20
  %40 = load i32, i32* %dither_mode36, align 4
  %cmp37 = icmp eq i32 %40, 2
  br i1 %cmp37, label %if.then.38, label %if.end.49

if.then.38:                                       ; preds = %if.end.35
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 26
  %42 = load i32, i32* %output_width, align 4
  %add = add i32 %42, 2
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 6
  store i64 %mul, i64* %arraysize, align 8
  %43 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %fserrors = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %43, i32 0, i32 5
  %44 = load i16*, i16** %fserrors, align 8
  %cmp39 = icmp eq i16* %44, null
  br i1 %cmp39, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.then.38
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 1
  %46 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %46, i32 0, i32 1
  %47 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_large, align 8
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %49 = bitcast %struct.jpeg_decompress_struct* %48 to %struct.jpeg_common_struct*
  %50 = load i64, i64* %arraysize, align 8
  %call = call i8* %47(%struct.jpeg_common_struct* %49, i32 1, i64 %50)
  %51 = bitcast i8* %call to i16*
  %52 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %fserrors42 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %52, i32 0, i32 5
  store i16* %51, i16** %fserrors42, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.then.38
  %53 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %fserrors44 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %53, i32 0, i32 5
  %54 = load i16*, i16** %fserrors44, align 8
  %55 = bitcast i16* %54 to i8*
  %56 = load i64, i64* %arraysize, align 8
  call void @jzero_far(i8* %55, i64 %56)
  %57 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %error_limiter = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %57, i32 0, i32 7
  %58 = load i32*, i32** %error_limiter, align 8
  %cmp45 = icmp eq i32* %58, null
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.43
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  call void @init_error_limit(%struct.jpeg_decompress_struct* %59)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.end.43
  %60 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %on_odd_row = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %60, i32 0, i32 6
  store i32 0, i32* %on_odd_row, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.35
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.4
  %61 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %needs_zeroed51 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %61, i32 0, i32 4
  %62 = load i32, i32* %needs_zeroed51, align 4
  %tobool52 = icmp ne i32 %62, 0
  br i1 %tobool52, label %if.then.53, label %if.end.58

if.then.53:                                       ; preds = %if.end.50
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.53
  %63 = load i32, i32* %i, align 4
  %cmp54 = icmp slt i32 %63, 32
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %64 = load i32, i32* %i, align 4
  %idxprom = sext i32 %64 to i64
  %65 = load [32 x i16]**, [32 x i16]*** %histogram, align 8
  %arrayidx56 = getelementptr inbounds [32 x i16]*, [32 x i16]** %65, i64 %idxprom
  %66 = load [32 x i16]*, [32 x i16]** %arrayidx56, align 8
  %67 = bitcast [32 x i16]* %66 to i8*
  call void @jzero_far(i8* %67, i64 4096)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %68 = load i32, i32* %i, align 4
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %69 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %needs_zeroed57 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %69, i32 0, i32 4
  store i32 0, i32* %needs_zeroed57, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %for.end, %if.end.50
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @new_color_map_2_quant(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %cquantize = alloca %struct.my_cquantizer*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 83
  %1 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8
  %2 = bitcast %struct.jpeg_color_quantizer* %1 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %2, %struct.my_cquantizer** %cquantize, align 8
  %3 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %needs_zeroed = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %3, i32 0, i32 4
  store i32 1, i32* %needs_zeroed, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_error_limit(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %table = alloca i32*, align 8
  %in = alloca i32, align 4
  %out = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 83
  %1 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8
  %2 = bitcast %struct.jpeg_color_quantizer* %1 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %2, %struct.my_cquantizer** %cquantize, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 1
  %4 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %4, i32 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %7 = bitcast %struct.jpeg_decompress_struct* %6 to %struct.jpeg_common_struct*
  %call = call i8* %5(%struct.jpeg_common_struct* %7, i32 1, i64 2044)
  %8 = bitcast i8* %call to i32*
  store i32* %8, i32** %table, align 8
  %9 = load i32*, i32** %table, align 8
  %add.ptr = getelementptr inbounds i32, i32* %9, i64 255
  store i32* %add.ptr, i32** %table, align 8
  %10 = load i32*, i32** %table, align 8
  %11 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %error_limiter = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %11, i32 0, i32 7
  store i32* %10, i32** %error_limiter, align 8
  store i32 0, i32* %out, align 4
  store i32 0, i32* %in, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %in, align 4
  %cmp = icmp slt i32 %12, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %out, align 4
  %14 = load i32, i32* %in, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load i32*, i32** %table, align 8
  %arrayidx = getelementptr inbounds i32, i32* %15, i64 %idxprom
  store i32 %13, i32* %arrayidx, align 4
  %16 = load i32, i32* %out, align 4
  %sub = sub nsw i32 0, %16
  %17 = load i32, i32* %in, align 4
  %sub2 = sub nsw i32 0, %17
  %idxprom3 = sext i32 %sub2 to i64
  %18 = load i32*, i32** %table, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %18, i64 %idxprom3
  store i32 %sub, i32* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %in, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %in, align 4
  %20 = load i32, i32* %out, align 4
  %inc5 = add nsw i32 %20, 1
  store i32 %inc5, i32* %out, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.15, %for.end
  %21 = load i32, i32* %in, align 4
  %cmp7 = icmp slt i32 %21, 48
  br i1 %cmp7, label %for.body.8, label %for.end.17

for.body.8:                                       ; preds = %for.cond.6
  %22 = load i32, i32* %out, align 4
  %23 = load i32, i32* %in, align 4
  %idxprom9 = sext i32 %23 to i64
  %24 = load i32*, i32** %table, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %24, i64 %idxprom9
  store i32 %22, i32* %arrayidx10, align 4
  %25 = load i32, i32* %out, align 4
  %sub11 = sub nsw i32 0, %25
  %26 = load i32, i32* %in, align 4
  %sub12 = sub nsw i32 0, %26
  %idxprom13 = sext i32 %sub12 to i64
  %27 = load i32*, i32** %table, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %27, i64 %idxprom13
  store i32 %sub11, i32* %arrayidx14, align 4
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.8
  %28 = load i32, i32* %in, align 4
  %inc16 = add nsw i32 %28, 1
  store i32 %inc16, i32* %in, align 4
  %29 = load i32, i32* %in, align 4
  %and = and i32 %29, 1
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 0, i32 1
  %30 = load i32, i32* %out, align 4
  %add = add nsw i32 %30, %cond
  store i32 %add, i32* %out, align 4
  br label %for.cond.6

for.end.17:                                       ; preds = %for.cond.6
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.27, %for.end.17
  %31 = load i32, i32* %in, align 4
  %cmp19 = icmp sle i32 %31, 255
  br i1 %cmp19, label %for.body.20, label %for.end.29

for.body.20:                                      ; preds = %for.cond.18
  %32 = load i32, i32* %out, align 4
  %33 = load i32, i32* %in, align 4
  %idxprom21 = sext i32 %33 to i64
  %34 = load i32*, i32** %table, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %34, i64 %idxprom21
  store i32 %32, i32* %arrayidx22, align 4
  %35 = load i32, i32* %out, align 4
  %sub23 = sub nsw i32 0, %35
  %36 = load i32, i32* %in, align 4
  %sub24 = sub nsw i32 0, %36
  %idxprom25 = sext i32 %sub24 to i64
  %37 = load i32*, i32** %table, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %37, i64 %idxprom25
  store i32 %sub23, i32* %arrayidx26, align 4
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.20
  %38 = load i32, i32* %in, align 4
  %inc28 = add nsw i32 %38, 1
  store i32 %inc28, i32* %in, align 4
  br label %for.cond.18

for.end.29:                                       ; preds = %for.cond.18
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @prescan_quantize(%struct.jpeg_decompress_struct* %cinfo, i8** %input_buf, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %ptr = alloca i8*, align 8
  %histp = alloca i16*, align 8
  %histogram = alloca [32 x i16]**, align 8
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
  %histogram2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %3, i32 0, i32 3
  %4 = load [32 x i16]**, [32 x i16]*** %histogram2, align 8
  store [32 x i16]** %4, [32 x i16]*** %histogram, align 8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 26
  %6 = load i32, i32* %output_width, align 4
  store i32 %6, i32* %width, align 4
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.23, %entry
  %7 = load i32, i32* %row, align 4
  %8 = load i32, i32* %num_rows.addr, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end.25

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %row, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i8**, i8*** %input_buf.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %11 = load i8*, i8** %arrayidx, align 8
  store i8* %11, i8** %ptr, align 8
  %12 = load i32, i32* %width, align 4
  store i32 %12, i32* %col, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %13 = load i32, i32* %col, align 4
  %cmp4 = icmp ugt i32 %13, 0
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %14 = load i8*, i8** %ptr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %14, i64 2
  %15 = load i8, i8* %arrayidx6, align 1
  %conv = zext i8 %15 to i32
  %shr = ashr i32 %conv, 3
  %idxprom7 = sext i32 %shr to i64
  %16 = load i8*, i8** %ptr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %17 to i32
  %shr10 = ashr i32 %conv9, 2
  %idxprom11 = sext i32 %shr10 to i64
  %18 = load i8*, i8** %ptr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %19 to i32
  %shr14 = ashr i32 %conv13, 3
  %idxprom15 = sext i32 %shr14 to i64
  %20 = load [32 x i16]**, [32 x i16]*** %histogram, align 8
  %arrayidx16 = getelementptr inbounds [32 x i16]*, [32 x i16]** %20, i64 %idxprom15
  %21 = load [32 x i16]*, [32 x i16]** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds [32 x i16], [32 x i16]* %21, i64 %idxprom11
  %arrayidx18 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx17, i32 0, i64 %idxprom7
  store i16* %arrayidx18, i16** %histp, align 8
  %22 = load i16*, i16** %histp, align 8
  %23 = load i16, i16* %22, align 2
  %inc = add i16 %23, 1
  store i16 %inc, i16* %22, align 2
  %conv19 = zext i16 %inc to i32
  %cmp20 = icmp sle i32 %conv19, 0
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.5
  %24 = load i16*, i16** %histp, align 8
  %25 = load i16, i16* %24, align 2
  %dec = add i16 %25, -1
  store i16 %dec, i16* %24, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.5
  %26 = load i8*, i8** %ptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 3
  store i8* %add.ptr, i8** %ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load i32, i32* %col, align 4
  %dec22 = add i32 %27, -1
  store i32 %dec22, i32* %col, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end
  %28 = load i32, i32* %row, align 4
  %inc24 = add nsw i32 %28, 1
  store i32 %inc24, i32* %row, align 4
  br label %for.cond

for.end.25:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass1(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %cquantize = alloca %struct.my_cquantizer*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
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
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %7 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %desired = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %7, i32 0, i32 2
  %8 = load i32, i32* %desired, align 4
  call void @select_colors(%struct.jpeg_decompress_struct* %6, i32 %8)
  %9 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %needs_zeroed = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %9, i32 0, i32 4
  store i32 1, i32* %needs_zeroed, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pass2_fs_dither(%struct.jpeg_decompress_struct* %cinfo, i8** %input_buf, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %histogram = alloca [32 x i16]**, align 8
  %cur0 = alloca i32, align 4
  %cur1 = alloca i32, align 4
  %cur2 = alloca i32, align 4
  %belowerr0 = alloca i32, align 4
  %belowerr1 = alloca i32, align 4
  %belowerr2 = alloca i32, align 4
  %bpreverr0 = alloca i32, align 4
  %bpreverr1 = alloca i32, align 4
  %bpreverr2 = alloca i32, align 4
  %errorptr = alloca i16*, align 8
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %cachep = alloca i16*, align 8
  %dir = alloca i32, align 4
  %dir3 = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %width = alloca i32, align 4
  %range_limit = alloca i8*, align 8
  %error_limit = alloca i32*, align 8
  %colormap0 = alloca i8*, align 8
  %colormap1 = alloca i8*, align 8
  %colormap2 = alloca i8*, align 8
  %pixcode = alloca i32, align 4
  %bnexterr = alloca i32, align 4
  %delta = alloca i32, align 4
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
  %histogram2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %3, i32 0, i32 3
  %4 = load [32 x i16]**, [32 x i16]*** %histogram2, align 8
  store [32 x i16]** %4, [32 x i16]*** %histogram, align 8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 26
  %6 = load i32, i32* %output_width, align 4
  store i32 %6, i32* %width, align 4
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 61
  %8 = load i8*, i8** %sample_range_limit, align 8
  store i8* %8, i8** %range_limit, align 8
  %9 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %error_limiter = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %9, i32 0, i32 7
  %10 = load i32*, i32** %error_limiter, align 8
  store i32* %10, i32** %error_limit, align 8
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 32
  %12 = load i8**, i8*** %colormap, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 0
  %13 = load i8*, i8** %arrayidx, align 8
  store i8* %13, i8** %colormap0, align 8
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 32
  %15 = load i8**, i8*** %colormap3, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %15, i64 1
  %16 = load i8*, i8** %arrayidx4, align 8
  store i8* %16, i8** %colormap1, align 8
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 32
  %18 = load i8**, i8*** %colormap5, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %18, i64 2
  %19 = load i8*, i8** %arrayidx6, align 8
  store i8* %19, i8** %colormap2, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.133, %entry
  %20 = load i32, i32* %row, align 4
  %21 = load i32, i32* %num_rows.addr, align 4
  %cmp = icmp slt i32 %20, %21
  br i1 %cmp, label %for.body, label %for.end.134

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %row, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load i8**, i8*** %input_buf.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %23, i64 %idxprom
  %24 = load i8*, i8** %arrayidx7, align 8
  store i8* %24, i8** %inptr, align 8
  %25 = load i32, i32* %row, align 4
  %idxprom8 = sext i32 %25 to i64
  %26 = load i8**, i8*** %output_buf.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %26, i64 %idxprom8
  %27 = load i8*, i8** %arrayidx9, align 8
  store i8* %27, i8** %outptr, align 8
  %28 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %on_odd_row = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %28, i32 0, i32 6
  %29 = load i32, i32* %on_odd_row, align 4
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %30 = load i32, i32* %width, align 4
  %sub = sub i32 %30, 1
  %mul = mul i32 %sub, 3
  %31 = load i8*, i8** %inptr, align 8
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 %idx.ext
  store i8* %add.ptr, i8** %inptr, align 8
  %32 = load i32, i32* %width, align 4
  %sub10 = sub i32 %32, 1
  %33 = load i8*, i8** %outptr, align 8
  %idx.ext11 = zext i32 %sub10 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %33, i64 %idx.ext11
  store i8* %add.ptr12, i8** %outptr, align 8
  store i32 -1, i32* %dir, align 4
  store i32 -3, i32* %dir3, align 4
  %34 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %fserrors = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %34, i32 0, i32 5
  %35 = load i16*, i16** %fserrors, align 8
  %36 = load i32, i32* %width, align 4
  %add = add i32 %36, 1
  %mul13 = mul i32 %add, 3
  %idx.ext14 = zext i32 %mul13 to i64
  %add.ptr15 = getelementptr inbounds i16, i16* %35, i64 %idx.ext14
  store i16* %add.ptr15, i16** %errorptr, align 8
  %37 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %on_odd_row16 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %37, i32 0, i32 6
  store i32 0, i32* %on_odd_row16, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  store i32 1, i32* %dir, align 4
  store i32 3, i32* %dir3, align 4
  %38 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %fserrors17 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %38, i32 0, i32 5
  %39 = load i16*, i16** %fserrors17, align 8
  store i16* %39, i16** %errorptr, align 8
  %40 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %on_odd_row18 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %40, i32 0, i32 6
  store i32 1, i32* %on_odd_row18, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %cur2, align 4
  store i32 0, i32* %cur1, align 4
  store i32 0, i32* %cur0, align 4
  store i32 0, i32* %belowerr2, align 4
  store i32 0, i32* %belowerr1, align 4
  store i32 0, i32* %belowerr0, align 4
  store i32 0, i32* %bpreverr2, align 4
  store i32 0, i32* %bpreverr1, align 4
  store i32 0, i32* %bpreverr0, align 4
  %41 = load i32, i32* %width, align 4
  store i32 %41, i32* %col, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %if.end
  %42 = load i32, i32* %col, align 4
  %cmp20 = icmp ugt i32 %42, 0
  br i1 %cmp20, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.19
  %43 = load i32, i32* %cur0, align 4
  %44 = load i32, i32* %dir3, align 4
  %add22 = add nsw i32 %44, 0
  %idxprom23 = sext i32 %add22 to i64
  %45 = load i16*, i16** %errorptr, align 8
  %arrayidx24 = getelementptr inbounds i16, i16* %45, i64 %idxprom23
  %46 = load i16, i16* %arrayidx24, align 2
  %conv = sext i16 %46 to i32
  %add25 = add nsw i32 %43, %conv
  %add26 = add nsw i32 %add25, 8
  %shr = ashr i32 %add26, 4
  store i32 %shr, i32* %cur0, align 4
  %47 = load i32, i32* %cur1, align 4
  %48 = load i32, i32* %dir3, align 4
  %add27 = add nsw i32 %48, 1
  %idxprom28 = sext i32 %add27 to i64
  %49 = load i16*, i16** %errorptr, align 8
  %arrayidx29 = getelementptr inbounds i16, i16* %49, i64 %idxprom28
  %50 = load i16, i16* %arrayidx29, align 2
  %conv30 = sext i16 %50 to i32
  %add31 = add nsw i32 %47, %conv30
  %add32 = add nsw i32 %add31, 8
  %shr33 = ashr i32 %add32, 4
  store i32 %shr33, i32* %cur1, align 4
  %51 = load i32, i32* %cur2, align 4
  %52 = load i32, i32* %dir3, align 4
  %add34 = add nsw i32 %52, 2
  %idxprom35 = sext i32 %add34 to i64
  %53 = load i16*, i16** %errorptr, align 8
  %arrayidx36 = getelementptr inbounds i16, i16* %53, i64 %idxprom35
  %54 = load i16, i16* %arrayidx36, align 2
  %conv37 = sext i16 %54 to i32
  %add38 = add nsw i32 %51, %conv37
  %add39 = add nsw i32 %add38, 8
  %shr40 = ashr i32 %add39, 4
  store i32 %shr40, i32* %cur2, align 4
  %55 = load i32, i32* %cur0, align 4
  %idxprom41 = sext i32 %55 to i64
  %56 = load i32*, i32** %error_limit, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %56, i64 %idxprom41
  %57 = load i32, i32* %arrayidx42, align 4
  store i32 %57, i32* %cur0, align 4
  %58 = load i32, i32* %cur1, align 4
  %idxprom43 = sext i32 %58 to i64
  %59 = load i32*, i32** %error_limit, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %59, i64 %idxprom43
  %60 = load i32, i32* %arrayidx44, align 4
  store i32 %60, i32* %cur1, align 4
  %61 = load i32, i32* %cur2, align 4
  %idxprom45 = sext i32 %61 to i64
  %62 = load i32*, i32** %error_limit, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %62, i64 %idxprom45
  %63 = load i32, i32* %arrayidx46, align 4
  store i32 %63, i32* %cur2, align 4
  %64 = load i8*, i8** %inptr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %64, i64 0
  %65 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %65 to i32
  %66 = load i32, i32* %cur0, align 4
  %add49 = add nsw i32 %66, %conv48
  store i32 %add49, i32* %cur0, align 4
  %67 = load i8*, i8** %inptr, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %67, i64 1
  %68 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %68 to i32
  %69 = load i32, i32* %cur1, align 4
  %add52 = add nsw i32 %69, %conv51
  store i32 %add52, i32* %cur1, align 4
  %70 = load i8*, i8** %inptr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %70, i64 2
  %71 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %71 to i32
  %72 = load i32, i32* %cur2, align 4
  %add55 = add nsw i32 %72, %conv54
  store i32 %add55, i32* %cur2, align 4
  %73 = load i32, i32* %cur0, align 4
  %idxprom56 = sext i32 %73 to i64
  %74 = load i8*, i8** %range_limit, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %74, i64 %idxprom56
  %75 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %75 to i32
  store i32 %conv58, i32* %cur0, align 4
  %76 = load i32, i32* %cur1, align 4
  %idxprom59 = sext i32 %76 to i64
  %77 = load i8*, i8** %range_limit, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %77, i64 %idxprom59
  %78 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %78 to i32
  store i32 %conv61, i32* %cur1, align 4
  %79 = load i32, i32* %cur2, align 4
  %idxprom62 = sext i32 %79 to i64
  %80 = load i8*, i8** %range_limit, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %80, i64 %idxprom62
  %81 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %81 to i32
  store i32 %conv64, i32* %cur2, align 4
  %82 = load i32, i32* %cur2, align 4
  %shr65 = ashr i32 %82, 3
  %idxprom66 = sext i32 %shr65 to i64
  %83 = load i32, i32* %cur1, align 4
  %shr67 = ashr i32 %83, 2
  %idxprom68 = sext i32 %shr67 to i64
  %84 = load i32, i32* %cur0, align 4
  %shr69 = ashr i32 %84, 3
  %idxprom70 = sext i32 %shr69 to i64
  %85 = load [32 x i16]**, [32 x i16]*** %histogram, align 8
  %arrayidx71 = getelementptr inbounds [32 x i16]*, [32 x i16]** %85, i64 %idxprom70
  %86 = load [32 x i16]*, [32 x i16]** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds [32 x i16], [32 x i16]* %86, i64 %idxprom68
  %arrayidx73 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx72, i32 0, i64 %idxprom66
  store i16* %arrayidx73, i16** %cachep, align 8
  %87 = load i16*, i16** %cachep, align 8
  %88 = load i16, i16* %87, align 2
  %conv74 = zext i16 %88 to i32
  %cmp75 = icmp eq i32 %conv74, 0
  br i1 %cmp75, label %if.then.77, label %if.end.81

if.then.77:                                       ; preds = %for.body.21
  %89 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %90 = load i32, i32* %cur0, align 4
  %shr78 = ashr i32 %90, 3
  %91 = load i32, i32* %cur1, align 4
  %shr79 = ashr i32 %91, 2
  %92 = load i32, i32* %cur2, align 4
  %shr80 = ashr i32 %92, 3
  call void @fill_inverse_cmap(%struct.jpeg_decompress_struct* %89, i32 %shr78, i32 %shr79, i32 %shr80)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.77, %for.body.21
  %93 = load i16*, i16** %cachep, align 8
  %94 = load i16, i16* %93, align 2
  %conv82 = zext i16 %94 to i32
  %sub83 = sub nsw i32 %conv82, 1
  store i32 %sub83, i32* %pixcode, align 4
  %95 = load i32, i32* %pixcode, align 4
  %conv84 = trunc i32 %95 to i8
  %96 = load i8*, i8** %outptr, align 8
  store i8 %conv84, i8* %96, align 1
  %97 = load i32, i32* %pixcode, align 4
  %idxprom85 = sext i32 %97 to i64
  %98 = load i8*, i8** %colormap0, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %98, i64 %idxprom85
  %99 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %99 to i32
  %100 = load i32, i32* %cur0, align 4
  %sub88 = sub nsw i32 %100, %conv87
  store i32 %sub88, i32* %cur0, align 4
  %101 = load i32, i32* %pixcode, align 4
  %idxprom89 = sext i32 %101 to i64
  %102 = load i8*, i8** %colormap1, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %102, i64 %idxprom89
  %103 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %103 to i32
  %104 = load i32, i32* %cur1, align 4
  %sub92 = sub nsw i32 %104, %conv91
  store i32 %sub92, i32* %cur1, align 4
  %105 = load i32, i32* %pixcode, align 4
  %idxprom93 = sext i32 %105 to i64
  %106 = load i8*, i8** %colormap2, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %106, i64 %idxprom93
  %107 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %107 to i32
  %108 = load i32, i32* %cur2, align 4
  %sub96 = sub nsw i32 %108, %conv95
  store i32 %sub96, i32* %cur2, align 4
  %109 = load i32, i32* %cur0, align 4
  store i32 %109, i32* %bnexterr, align 4
  %110 = load i32, i32* %cur0, align 4
  %mul97 = mul nsw i32 %110, 2
  store i32 %mul97, i32* %delta, align 4
  %111 = load i32, i32* %delta, align 4
  %112 = load i32, i32* %cur0, align 4
  %add98 = add nsw i32 %112, %111
  store i32 %add98, i32* %cur0, align 4
  %113 = load i32, i32* %bpreverr0, align 4
  %114 = load i32, i32* %cur0, align 4
  %add99 = add nsw i32 %113, %114
  %conv100 = trunc i32 %add99 to i16
  %115 = load i16*, i16** %errorptr, align 8
  %arrayidx101 = getelementptr inbounds i16, i16* %115, i64 0
  store i16 %conv100, i16* %arrayidx101, align 2
  %116 = load i32, i32* %delta, align 4
  %117 = load i32, i32* %cur0, align 4
  %add102 = add nsw i32 %117, %116
  store i32 %add102, i32* %cur0, align 4
  %118 = load i32, i32* %belowerr0, align 4
  %119 = load i32, i32* %cur0, align 4
  %add103 = add nsw i32 %118, %119
  store i32 %add103, i32* %bpreverr0, align 4
  %120 = load i32, i32* %bnexterr, align 4
  store i32 %120, i32* %belowerr0, align 4
  %121 = load i32, i32* %delta, align 4
  %122 = load i32, i32* %cur0, align 4
  %add104 = add nsw i32 %122, %121
  store i32 %add104, i32* %cur0, align 4
  %123 = load i32, i32* %cur1, align 4
  store i32 %123, i32* %bnexterr, align 4
  %124 = load i32, i32* %cur1, align 4
  %mul105 = mul nsw i32 %124, 2
  store i32 %mul105, i32* %delta, align 4
  %125 = load i32, i32* %delta, align 4
  %126 = load i32, i32* %cur1, align 4
  %add106 = add nsw i32 %126, %125
  store i32 %add106, i32* %cur1, align 4
  %127 = load i32, i32* %bpreverr1, align 4
  %128 = load i32, i32* %cur1, align 4
  %add107 = add nsw i32 %127, %128
  %conv108 = trunc i32 %add107 to i16
  %129 = load i16*, i16** %errorptr, align 8
  %arrayidx109 = getelementptr inbounds i16, i16* %129, i64 1
  store i16 %conv108, i16* %arrayidx109, align 2
  %130 = load i32, i32* %delta, align 4
  %131 = load i32, i32* %cur1, align 4
  %add110 = add nsw i32 %131, %130
  store i32 %add110, i32* %cur1, align 4
  %132 = load i32, i32* %belowerr1, align 4
  %133 = load i32, i32* %cur1, align 4
  %add111 = add nsw i32 %132, %133
  store i32 %add111, i32* %bpreverr1, align 4
  %134 = load i32, i32* %bnexterr, align 4
  store i32 %134, i32* %belowerr1, align 4
  %135 = load i32, i32* %delta, align 4
  %136 = load i32, i32* %cur1, align 4
  %add112 = add nsw i32 %136, %135
  store i32 %add112, i32* %cur1, align 4
  %137 = load i32, i32* %cur2, align 4
  store i32 %137, i32* %bnexterr, align 4
  %138 = load i32, i32* %cur2, align 4
  %mul113 = mul nsw i32 %138, 2
  store i32 %mul113, i32* %delta, align 4
  %139 = load i32, i32* %delta, align 4
  %140 = load i32, i32* %cur2, align 4
  %add114 = add nsw i32 %140, %139
  store i32 %add114, i32* %cur2, align 4
  %141 = load i32, i32* %bpreverr2, align 4
  %142 = load i32, i32* %cur2, align 4
  %add115 = add nsw i32 %141, %142
  %conv116 = trunc i32 %add115 to i16
  %143 = load i16*, i16** %errorptr, align 8
  %arrayidx117 = getelementptr inbounds i16, i16* %143, i64 2
  store i16 %conv116, i16* %arrayidx117, align 2
  %144 = load i32, i32* %delta, align 4
  %145 = load i32, i32* %cur2, align 4
  %add118 = add nsw i32 %145, %144
  store i32 %add118, i32* %cur2, align 4
  %146 = load i32, i32* %belowerr2, align 4
  %147 = load i32, i32* %cur2, align 4
  %add119 = add nsw i32 %146, %147
  store i32 %add119, i32* %bpreverr2, align 4
  %148 = load i32, i32* %bnexterr, align 4
  store i32 %148, i32* %belowerr2, align 4
  %149 = load i32, i32* %delta, align 4
  %150 = load i32, i32* %cur2, align 4
  %add120 = add nsw i32 %150, %149
  store i32 %add120, i32* %cur2, align 4
  %151 = load i32, i32* %dir3, align 4
  %152 = load i8*, i8** %inptr, align 8
  %idx.ext121 = sext i32 %151 to i64
  %add.ptr122 = getelementptr inbounds i8, i8* %152, i64 %idx.ext121
  store i8* %add.ptr122, i8** %inptr, align 8
  %153 = load i32, i32* %dir, align 4
  %154 = load i8*, i8** %outptr, align 8
  %idx.ext123 = sext i32 %153 to i64
  %add.ptr124 = getelementptr inbounds i8, i8* %154, i64 %idx.ext123
  store i8* %add.ptr124, i8** %outptr, align 8
  %155 = load i32, i32* %dir3, align 4
  %156 = load i16*, i16** %errorptr, align 8
  %idx.ext125 = sext i32 %155 to i64
  %add.ptr126 = getelementptr inbounds i16, i16* %156, i64 %idx.ext125
  store i16* %add.ptr126, i16** %errorptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.81
  %157 = load i32, i32* %col, align 4
  %dec = add i32 %157, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  %158 = load i32, i32* %bpreverr0, align 4
  %conv127 = trunc i32 %158 to i16
  %159 = load i16*, i16** %errorptr, align 8
  %arrayidx128 = getelementptr inbounds i16, i16* %159, i64 0
  store i16 %conv127, i16* %arrayidx128, align 2
  %160 = load i32, i32* %bpreverr1, align 4
  %conv129 = trunc i32 %160 to i16
  %161 = load i16*, i16** %errorptr, align 8
  %arrayidx130 = getelementptr inbounds i16, i16* %161, i64 1
  store i16 %conv129, i16* %arrayidx130, align 2
  %162 = load i32, i32* %bpreverr2, align 4
  %conv131 = trunc i32 %162 to i16
  %163 = load i16*, i16** %errorptr, align 8
  %arrayidx132 = getelementptr inbounds i16, i16* %163, i64 2
  store i16 %conv131, i16* %arrayidx132, align 2
  br label %for.inc.133

for.inc.133:                                      ; preds = %for.end
  %164 = load i32, i32* %row, align 4
  %inc = add nsw i32 %164, 1
  store i32 %inc, i32* %row, align 4
  br label %for.cond

for.end.134:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pass2_no_dither(%struct.jpeg_decompress_struct* %cinfo, i8** %input_buf, i8** %output_buf, i32 %num_rows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %input_buf.addr = alloca i8**, align 8
  %output_buf.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %histogram = alloca [32 x i16]**, align 8
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %cachep = alloca i16*, align 8
  %c0 = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
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
  %histogram2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %3, i32 0, i32 3
  %4 = load [32 x i16]**, [32 x i16]*** %histogram2, align 8
  store [32 x i16]** %4, [32 x i16]*** %histogram, align 8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 26
  %6 = load i32, i32* %output_width, align 4
  store i32 %6, i32* %width, align 4
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %entry
  %7 = load i32, i32* %row, align 4
  %8 = load i32, i32* %num_rows.addr, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end.27

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %row, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i8**, i8*** %input_buf.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %11 = load i8*, i8** %arrayidx, align 8
  store i8* %11, i8** %inptr, align 8
  %12 = load i32, i32* %row, align 4
  %idxprom3 = sext i32 %12 to i64
  %13 = load i8**, i8*** %output_buf.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %13, i64 %idxprom3
  %14 = load i8*, i8** %arrayidx4, align 8
  store i8* %14, i8** %outptr, align 8
  %15 = load i32, i32* %width, align 4
  store i32 %15, i32* %col, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %16 = load i32, i32* %col, align 4
  %cmp6 = icmp ugt i32 %16, 0
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %17 = load i8*, i8** %inptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %inptr, align 8
  %18 = load i8, i8* %17, align 1
  %conv = zext i8 %18 to i32
  %shr = ashr i32 %conv, 3
  store i32 %shr, i32* %c0, align 4
  %19 = load i8*, i8** %inptr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr8, i8** %inptr, align 8
  %20 = load i8, i8* %19, align 1
  %conv9 = zext i8 %20 to i32
  %shr10 = ashr i32 %conv9, 2
  store i32 %shr10, i32* %c1, align 4
  %21 = load i8*, i8** %inptr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr11, i8** %inptr, align 8
  %22 = load i8, i8* %21, align 1
  %conv12 = zext i8 %22 to i32
  %shr13 = ashr i32 %conv12, 3
  store i32 %shr13, i32* %c2, align 4
  %23 = load i32, i32* %c2, align 4
  %idxprom14 = sext i32 %23 to i64
  %24 = load i32, i32* %c1, align 4
  %idxprom15 = sext i32 %24 to i64
  %25 = load i32, i32* %c0, align 4
  %idxprom16 = sext i32 %25 to i64
  %26 = load [32 x i16]**, [32 x i16]*** %histogram, align 8
  %arrayidx17 = getelementptr inbounds [32 x i16]*, [32 x i16]** %26, i64 %idxprom16
  %27 = load [32 x i16]*, [32 x i16]** %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds [32 x i16], [32 x i16]* %27, i64 %idxprom15
  %arrayidx19 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx18, i32 0, i64 %idxprom14
  store i16* %arrayidx19, i16** %cachep, align 8
  %28 = load i16*, i16** %cachep, align 8
  %29 = load i16, i16* %28, align 2
  %conv20 = zext i16 %29 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.7
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %31 = load i32, i32* %c0, align 4
  %32 = load i32, i32* %c1, align 4
  %33 = load i32, i32* %c2, align 4
  call void @fill_inverse_cmap(%struct.jpeg_decompress_struct* %30, i32 %31, i32 %32, i32 %33)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.7
  %34 = load i16*, i16** %cachep, align 8
  %35 = load i16, i16* %34, align 2
  %conv23 = zext i16 %35 to i32
  %sub = sub nsw i32 %conv23, 1
  %conv24 = trunc i32 %sub to i8
  %36 = load i8*, i8** %outptr, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr25, i8** %outptr, align 8
  store i8 %conv24, i8* %36, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %37 = load i32, i32* %col, align 4
  %dec = add i32 %37, -1
  store i32 %dec, i32* %col, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end
  %38 = load i32, i32* %row, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %row, align 4
  br label %for.cond

for.end.27:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass2(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  ret void
}

declare void @jzero_far(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @select_colors(%struct.jpeg_decompress_struct* %cinfo, i32 %desired_colors) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %desired_colors.addr = alloca i32, align 4
  %boxlist = alloca %struct.box*, align 8
  %numboxes = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i32 %desired_colors, i32* %desired_colors.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_decompress_struct* %3 to %struct.jpeg_common_struct*
  %5 = load i32, i32* %desired_colors.addr, align 4
  %conv = sext i32 %5 to i64
  %mul = mul i64 %conv, 40
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 %mul)
  %6 = bitcast i8* %call to %struct.box*
  store %struct.box* %6, %struct.box** %boxlist, align 8
  store i32 1, i32* %numboxes, align 4
  %7 = load %struct.box*, %struct.box** %boxlist, align 8
  %arrayidx = getelementptr inbounds %struct.box, %struct.box* %7, i64 0
  %c0min = getelementptr inbounds %struct.box, %struct.box* %arrayidx, i32 0, i32 0
  store i32 0, i32* %c0min, align 4
  %8 = load %struct.box*, %struct.box** %boxlist, align 8
  %arrayidx1 = getelementptr inbounds %struct.box, %struct.box* %8, i64 0
  %c0max = getelementptr inbounds %struct.box, %struct.box* %arrayidx1, i32 0, i32 1
  store i32 31, i32* %c0max, align 4
  %9 = load %struct.box*, %struct.box** %boxlist, align 8
  %arrayidx2 = getelementptr inbounds %struct.box, %struct.box* %9, i64 0
  %c1min = getelementptr inbounds %struct.box, %struct.box* %arrayidx2, i32 0, i32 2
  store i32 0, i32* %c1min, align 4
  %10 = load %struct.box*, %struct.box** %boxlist, align 8
  %arrayidx3 = getelementptr inbounds %struct.box, %struct.box* %10, i64 0
  %c1max = getelementptr inbounds %struct.box, %struct.box* %arrayidx3, i32 0, i32 3
  store i32 63, i32* %c1max, align 4
  %11 = load %struct.box*, %struct.box** %boxlist, align 8
  %arrayidx4 = getelementptr inbounds %struct.box, %struct.box* %11, i64 0
  %c2min = getelementptr inbounds %struct.box, %struct.box* %arrayidx4, i32 0, i32 4
  store i32 0, i32* %c2min, align 4
  %12 = load %struct.box*, %struct.box** %boxlist, align 8
  %arrayidx5 = getelementptr inbounds %struct.box, %struct.box* %12, i64 0
  %c2max = getelementptr inbounds %struct.box, %struct.box* %arrayidx5, i32 0, i32 5
  store i32 31, i32* %c2max, align 4
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %14 = load %struct.box*, %struct.box** %boxlist, align 8
  %arrayidx6 = getelementptr inbounds %struct.box, %struct.box* %14, i64 0
  call void @update_box(%struct.jpeg_decompress_struct* %13, %struct.box* %arrayidx6)
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %16 = load %struct.box*, %struct.box** %boxlist, align 8
  %17 = load i32, i32* %numboxes, align 4
  %18 = load i32, i32* %desired_colors.addr, align 4
  %call7 = call i32 @median_cut(%struct.jpeg_decompress_struct* %15, %struct.box* %16, i32 %17, i32 %18)
  store i32 %call7, i32* %numboxes, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %numboxes, align 4
  %cmp = icmp slt i32 %19, %20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load %struct.box*, %struct.box** %boxlist, align 8
  %arrayidx9 = getelementptr inbounds %struct.box, %struct.box* %23, i64 %idxprom
  %24 = load i32, i32* %i, align 4
  call void @compute_color(%struct.jpeg_decompress_struct* %21, %struct.box* %arrayidx9, i32 %24)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i32, i32* %numboxes, align 4
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 31
  store i32 %26, i32* %actual_number_of_colors, align 4
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 5
  store i32 95, i32* %msg_code, align 4
  %30 = load i32, i32* %numboxes, align 4
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 0
  %32 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %32, i32 0, i32 6
  %i11 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx12 = getelementptr inbounds [8 x i32], [8 x i32]* %i11, i32 0, i64 0
  store i32 %30, i32* %arrayidx12, align 4
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 1
  %35 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %37 = bitcast %struct.jpeg_decompress_struct* %36 to %struct.jpeg_common_struct*
  call void %35(%struct.jpeg_common_struct* %37, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @update_box(%struct.jpeg_decompress_struct* %cinfo, %struct.box* %boxp) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %boxp.addr = alloca %struct.box*, align 8
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %histogram = alloca [32 x i16]**, align 8
  %histp = alloca i16*, align 8
  %c0 = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %c0min = alloca i32, align 4
  %c0max = alloca i32, align 4
  %c1min = alloca i32, align 4
  %c1max = alloca i32, align 4
  %c2min = alloca i32, align 4
  %c2max = alloca i32, align 4
  %dist0 = alloca i64, align 8
  %dist1 = alloca i64, align 8
  %dist2 = alloca i64, align 8
  %ccount = alloca i64, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.box* %boxp, %struct.box** %boxp.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 83
  %1 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8
  %2 = bitcast %struct.jpeg_color_quantizer* %1 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %2, %struct.my_cquantizer** %cquantize, align 8
  %3 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %histogram2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %3, i32 0, i32 3
  %4 = load [32 x i16]**, [32 x i16]*** %histogram2, align 8
  store [32 x i16]** %4, [32 x i16]*** %histogram, align 8
  %5 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %c0min3 = getelementptr inbounds %struct.box, %struct.box* %5, i32 0, i32 0
  %6 = load i32, i32* %c0min3, align 4
  store i32 %6, i32* %c0min, align 4
  %7 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %c0max4 = getelementptr inbounds %struct.box, %struct.box* %7, i32 0, i32 1
  %8 = load i32, i32* %c0max4, align 4
  store i32 %8, i32* %c0max, align 4
  %9 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %c1min5 = getelementptr inbounds %struct.box, %struct.box* %9, i32 0, i32 2
  %10 = load i32, i32* %c1min5, align 4
  store i32 %10, i32* %c1min, align 4
  %11 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %c1max6 = getelementptr inbounds %struct.box, %struct.box* %11, i32 0, i32 3
  %12 = load i32, i32* %c1max6, align 4
  store i32 %12, i32* %c1max, align 4
  %13 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %c2min7 = getelementptr inbounds %struct.box, %struct.box* %13, i32 0, i32 4
  %14 = load i32, i32* %c2min7, align 4
  store i32 %14, i32* %c2min, align 4
  %15 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %c2max8 = getelementptr inbounds %struct.box, %struct.box* %15, i32 0, i32 5
  %16 = load i32, i32* %c2max8, align 4
  store i32 %16, i32* %c2max, align 4
  %17 = load i32, i32* %c0max, align 4
  %18 = load i32, i32* %c0min, align 4
  %cmp = icmp sgt i32 %17, %18
  br i1 %cmp, label %if.then, label %if.end.30

if.then:                                          ; preds = %entry
  %19 = load i32, i32* %c0min, align 4
  store i32 %19, i32* %c0, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %if.then
  %20 = load i32, i32* %c0, align 4
  %21 = load i32, i32* %c0max, align 4
  %cmp9 = icmp sle i32 %20, %21
  br i1 %cmp9, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %c1min, align 4
  store i32 %22, i32* %c1, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.24, %for.body
  %23 = load i32, i32* %c1, align 4
  %24 = load i32, i32* %c1max, align 4
  %cmp11 = icmp sle i32 %23, %24
  br i1 %cmp11, label %for.body.12, label %for.end.26

for.body.12:                                      ; preds = %for.cond.10
  %25 = load i32, i32* %c2min, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load i32, i32* %c1, align 4
  %idxprom13 = sext i32 %26 to i64
  %27 = load i32, i32* %c0, align 4
  %idxprom14 = sext i32 %27 to i64
  %28 = load [32 x i16]**, [32 x i16]*** %histogram, align 8
  %arrayidx = getelementptr inbounds [32 x i16]*, [32 x i16]** %28, i64 %idxprom14
  %29 = load [32 x i16]*, [32 x i16]** %arrayidx, align 8
  %arrayidx15 = getelementptr inbounds [32 x i16], [32 x i16]* %29, i64 %idxprom13
  %arrayidx16 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx15, i32 0, i64 %idxprom
  store i16* %arrayidx16, i16** %histp, align 8
  %30 = load i32, i32* %c2min, align 4
  store i32 %30, i32* %c2, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %for.body.12
  %31 = load i32, i32* %c2, align 4
  %32 = load i32, i32* %c2max, align 4
  %cmp18 = icmp sle i32 %31, %32
  br i1 %cmp18, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.17
  %33 = load i16*, i16** %histp, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %33, i32 1
  store i16* %incdec.ptr, i16** %histp, align 8
  %34 = load i16, i16* %33, align 2
  %conv = zext i16 %34 to i32
  %cmp20 = icmp ne i32 %conv, 0
  br i1 %cmp20, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %for.body.19
  %35 = load i32, i32* %c0, align 4
  store i32 %35, i32* %c0min, align 4
  %36 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %c0min23 = getelementptr inbounds %struct.box, %struct.box* %36, i32 0, i32 0
  store i32 %35, i32* %c0min23, align 4
  br label %have_c0min

if.end:                                           ; preds = %for.body.19
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %37 = load i32, i32* %c2, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %c2, align 4
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end
  %38 = load i32, i32* %c1, align 4
  %inc25 = add nsw i32 %38, 1
  store i32 %inc25, i32* %c1, align 4
  br label %for.cond.10

for.end.26:                                       ; preds = %for.cond.10
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end.26
  %39 = load i32, i32* %c0, align 4
  %inc28 = add nsw i32 %39, 1
  store i32 %inc28, i32* %c0, align 4
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  br label %if.end.30

if.end.30:                                        ; preds = %for.end.29, %entry
  br label %have_c0min

have_c0min:                                       ; preds = %if.end.30, %if.then.22
  %40 = load i32, i32* %c0max, align 4
  %41 = load i32, i32* %c0min, align 4
  %cmp31 = icmp sgt i32 %40, %41
  br i1 %cmp31, label %if.then.33, label %if.end.67

if.then.33:                                       ; preds = %have_c0min
  %42 = load i32, i32* %c0max, align 4
  store i32 %42, i32* %c0, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.65, %if.then.33
  %43 = load i32, i32* %c0, align 4
  %44 = load i32, i32* %c0min, align 4
  %cmp35 = icmp sge i32 %43, %44
  br i1 %cmp35, label %for.body.37, label %for.end.66

for.body.37:                                      ; preds = %for.cond.34
  %45 = load i32, i32* %c1min, align 4
  store i32 %45, i32* %c1, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.62, %for.body.37
  %46 = load i32, i32* %c1, align 4
  %47 = load i32, i32* %c1max, align 4
  %cmp39 = icmp sle i32 %46, %47
  br i1 %cmp39, label %for.body.41, label %for.end.64

for.body.41:                                      ; preds = %for.cond.38
  %48 = load i32, i32* %c2min, align 4
  %idxprom42 = sext i32 %48 to i64
  %49 = load i32, i32* %c1, align 4
  %idxprom43 = sext i32 %49 to i64
  %50 = load i32, i32* %c0, align 4
  %idxprom44 = sext i32 %50 to i64
  %51 = load [32 x i16]**, [32 x i16]*** %histogram, align 8
  %arrayidx45 = getelementptr inbounds [32 x i16]*, [32 x i16]** %51, i64 %idxprom44
  %52 = load [32 x i16]*, [32 x i16]** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds [32 x i16], [32 x i16]* %52, i64 %idxprom43
  %arrayidx47 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx46, i32 0, i64 %idxprom42
  store i16* %arrayidx47, i16** %histp, align 8
  %53 = load i32, i32* %c2min, align 4
  store i32 %53, i32* %c2, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.59, %for.body.41
  %54 = load i32, i32* %c2, align 4
  %55 = load i32, i32* %c2max, align 4
  %cmp49 = icmp sle i32 %54, %55
  br i1 %cmp49, label %for.body.51, label %for.end.61

for.body.51:                                      ; preds = %for.cond.48
  %56 = load i16*, i16** %histp, align 8
  %incdec.ptr52 = getelementptr inbounds i16, i16* %56, i32 1
  store i16* %incdec.ptr52, i16** %histp, align 8
  %57 = load i16, i16* %56, align 2
  %conv53 = zext i16 %57 to i32
  %cmp54 = icmp ne i32 %conv53, 0
  br i1 %cmp54, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %for.body.51
  %58 = load i32, i32* %c0, align 4
  store i32 %58, i32* %c0max, align 4
  %59 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %c0max57 = getelementptr inbounds %struct.box, %struct.box* %59, i32 0, i32 1
  store i32 %58, i32* %c0max57, align 4
  br label %have_c0max

if.end.58:                                        ; preds = %for.body.51
  br label %for.inc.59

for.inc.59:                                       ; preds = %if.end.58
  %60 = load i32, i32* %c2, align 4
  %inc60 = add nsw i32 %60, 1
  store i32 %inc60, i32* %c2, align 4
  br label %for.cond.48

for.end.61:                                       ; preds = %for.cond.48
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.end.61
  %61 = load i32, i32* %c1, align 4
  %inc63 = add nsw i32 %61, 1
  store i32 %inc63, i32* %c1, align 4
  br label %for.cond.38

for.end.64:                                       ; preds = %for.cond.38
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.end.64
  %62 = load i32, i32* %c0, align 4
  %dec = add nsw i32 %62, -1
  store i32 %dec, i32* %c0, align 4
  br label %for.cond.34

for.end.66:                                       ; preds = %for.cond.34
  br label %if.end.67

if.end.67:                                        ; preds = %for.end.66, %have_c0min
  br label %have_c0max

have_c0max:                                       ; preds = %if.end.67, %if.then.56
  %63 = load i32, i32* %c1max, align 4
  %64 = load i32, i32* %c1min, align 4
  %cmp68 = icmp sgt i32 %63, %64
  br i1 %cmp68, label %if.then.70, label %if.end.105

if.then.70:                                       ; preds = %have_c0max
  %65 = load i32, i32* %c1min, align 4
  store i32 %65, i32* %c1, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.102, %if.then.70
  %66 = load i32, i32* %c1, align 4
  %67 = load i32, i32* %c1max, align 4
  %cmp72 = icmp sle i32 %66, %67
  br i1 %cmp72, label %for.body.74, label %for.end.104

for.body.74:                                      ; preds = %for.cond.71
  %68 = load i32, i32* %c0min, align 4
  store i32 %68, i32* %c0, align 4
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.99, %for.body.74
  %69 = load i32, i32* %c0, align 4
  %70 = load i32, i32* %c0max, align 4
  %cmp76 = icmp sle i32 %69, %70
  br i1 %cmp76, label %for.body.78, label %for.end.101

for.body.78:                                      ; preds = %for.cond.75
  %71 = load i32, i32* %c2min, align 4
  %idxprom79 = sext i32 %71 to i64
  %72 = load i32, i32* %c1, align 4
  %idxprom80 = sext i32 %72 to i64
  %73 = load i32, i32* %c0, align 4
  %idxprom81 = sext i32 %73 to i64
  %74 = load [32 x i16]**, [32 x i16]*** %histogram, align 8
  %arrayidx82 = getelementptr inbounds [32 x i16]*, [32 x i16]** %74, i64 %idxprom81
  %75 = load [32 x i16]*, [32 x i16]** %arrayidx82, align 8
  %arrayidx83 = getelementptr inbounds [32 x i16], [32 x i16]* %75, i64 %idxprom80
  %arrayidx84 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx83, i32 0, i64 %idxprom79
  store i16* %arrayidx84, i16** %histp, align 8
  %76 = load i32, i32* %c2min, align 4
  store i32 %76, i32* %c2, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.96, %for.body.78
  %77 = load i32, i32* %c2, align 4
  %78 = load i32, i32* %c2max, align 4
  %cmp86 = icmp sle i32 %77, %78
  br i1 %cmp86, label %for.body.88, label %for.end.98

for.body.88:                                      ; preds = %for.cond.85
  %79 = load i16*, i16** %histp, align 8
  %incdec.ptr89 = getelementptr inbounds i16, i16* %79, i32 1
  store i16* %incdec.ptr89, i16** %histp, align 8
  %80 = load i16, i16* %79, align 2
  %conv90 = zext i16 %80 to i32
  %cmp91 = icmp ne i32 %conv90, 0
  br i1 %cmp91, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %for.body.88
  %81 = load i32, i32* %c1, align 4
  store i32 %81, i32* %c1min, align 4
  %82 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %c1min94 = getelementptr inbounds %struct.box, %struct.box* %82, i32 0, i32 2
  store i32 %81, i32* %c1min94, align 4
  br label %have_c1min

if.end.95:                                        ; preds = %for.body.88
  br label %for.inc.96

for.inc.96:                                       ; preds = %if.end.95
  %83 = load i32, i32* %c2, align 4
  %inc97 = add nsw i32 %83, 1
  store i32 %inc97, i32* %c2, align 4
  br label %for.cond.85

for.end.98:                                       ; preds = %for.cond.85
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.end.98
  %84 = load i32, i32* %c0, align 4
  %inc100 = add nsw i32 %84, 1
  store i32 %inc100, i32* %c0, align 4
  br label %for.cond.75

for.end.101:                                      ; preds = %for.cond.75
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.end.101
  %85 = load i32, i32* %c1, align 4
  %inc103 = add nsw i32 %85, 1
  store i32 %inc103, i32* %c1, align 4
  br label %for.cond.71

for.end.104:                                      ; preds = %for.cond.71
  br label %if.end.105

if.end.105:                                       ; preds = %for.end.104, %have_c0max
  br label %have_c1min

have_c1min:                                       ; preds = %if.end.105, %if.then.93
  %86 = load i32, i32* %c1max, align 4
  %87 = load i32, i32* %c1min, align 4
  %cmp106 = icmp sgt i32 %86, %87
  br i1 %cmp106, label %if.then.108, label %if.end.143

if.then.108:                                      ; preds = %have_c1min
  %88 = load i32, i32* %c1max, align 4
  store i32 %88, i32* %c1, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.140, %if.then.108
  %89 = load i32, i32* %c1, align 4
  %90 = load i32, i32* %c1min, align 4
  %cmp110 = icmp sge i32 %89, %90
  br i1 %cmp110, label %for.body.112, label %for.end.142

for.body.112:                                     ; preds = %for.cond.109
  %91 = load i32, i32* %c0min, align 4
  store i32 %91, i32* %c0, align 4
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.137, %for.body.112
  %92 = load i32, i32* %c0, align 4
  %93 = load i32, i32* %c0max, align 4
  %cmp114 = icmp sle i32 %92, %93
  br i1 %cmp114, label %for.body.116, label %for.end.139

for.body.116:                                     ; preds = %for.cond.113
  %94 = load i32, i32* %c2min, align 4
  %idxprom117 = sext i32 %94 to i64
  %95 = load i32, i32* %c1, align 4
  %idxprom118 = sext i32 %95 to i64
  %96 = load i32, i32* %c0, align 4
  %idxprom119 = sext i32 %96 to i64
  %97 = load [32 x i16]**, [32 x i16]*** %histogram, align 8
  %arrayidx120 = getelementptr inbounds [32 x i16]*, [32 x i16]** %97, i64 %idxprom119
  %98 = load [32 x i16]*, [32 x i16]** %arrayidx120, align 8
  %arrayidx121 = getelementptr inbounds [32 x i16], [32 x i16]* %98, i64 %idxprom118
  %arrayidx122 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx121, i32 0, i64 %idxprom117
  store i16* %arrayidx122, i16** %histp, align 8
  %99 = load i32, i32* %c2min, align 4
  store i32 %99, i32* %c2, align 4
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.134, %for.body.116
  %100 = load i32, i32* %c2, align 4
  %101 = load i32, i32* %c2max, align 4
  %cmp124 = icmp sle i32 %100, %101
  br i1 %cmp124, label %for.body.126, label %for.end.136

for.body.126:                                     ; preds = %for.cond.123
  %102 = load i16*, i16** %histp, align 8
  %incdec.ptr127 = getelementptr inbounds i16, i16* %102, i32 1
  store i16* %incdec.ptr127, i16** %histp, align 8
  %103 = load i16, i16* %102, align 2
  %conv128 = zext i16 %103 to i32
  %cmp129 = icmp ne i32 %conv128, 0
  br i1 %cmp129, label %if.then.131, label %if.end.133

if.then.131:                                      ; preds = %for.body.126
  %104 = load i32, i32* %c1, align 4
  store i32 %104, i32* %c1max, align 4
  %105 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %c1max132 = getelementptr inbounds %struct.box, %struct.box* %105, i32 0, i32 3
  store i32 %104, i32* %c1max132, align 4
  br label %have_c1max

if.end.133:                                       ; preds = %for.body.126
  br label %for.inc.134

for.inc.134:                                      ; preds = %if.end.133
  %106 = load i32, i32* %c2, align 4
  %inc135 = add nsw i32 %106, 1
  store i32 %inc135, i32* %c2, align 4
  br label %for.cond.123

for.end.136:                                      ; preds = %for.cond.123
  br label %for.inc.137

for.inc.137:                                      ; preds = %for.end.136
  %107 = load i32, i32* %c0, align 4
  %inc138 = add nsw i32 %107, 1
  store i32 %inc138, i32* %c0, align 4
  br label %for.cond.113

for.end.139:                                      ; preds = %for.cond.113
  br label %for.inc.140

for.inc.140:                                      ; preds = %for.end.139
  %108 = load i32, i32* %c1, align 4
  %dec141 = add nsw i32 %108, -1
  store i32 %dec141, i32* %c1, align 4
  br label %for.cond.109

for.end.142:                                      ; preds = %for.cond.109
  br label %if.end.143

if.end.143:                                       ; preds = %for.end.142, %have_c1min
  br label %have_c1max

have_c1max:                                       ; preds = %if.end.143, %if.then.131
  %109 = load i32, i32* %c2max, align 4
  %110 = load i32, i32* %c2min, align 4
  %cmp144 = icmp sgt i32 %109, %110
  br i1 %cmp144, label %if.then.146, label %if.end.180

if.then.146:                                      ; preds = %have_c1max
  %111 = load i32, i32* %c2min, align 4
  store i32 %111, i32* %c2, align 4
  br label %for.cond.147

for.cond.147:                                     ; preds = %for.inc.177, %if.then.146
  %112 = load i32, i32* %c2, align 4
  %113 = load i32, i32* %c2max, align 4
  %cmp148 = icmp sle i32 %112, %113
  br i1 %cmp148, label %for.body.150, label %for.end.179

for.body.150:                                     ; preds = %for.cond.147
  %114 = load i32, i32* %c0min, align 4
  store i32 %114, i32* %c0, align 4
  br label %for.cond.151

for.cond.151:                                     ; preds = %for.inc.174, %for.body.150
  %115 = load i32, i32* %c0, align 4
  %116 = load i32, i32* %c0max, align 4
  %cmp152 = icmp sle i32 %115, %116
  br i1 %cmp152, label %for.body.154, label %for.end.176

for.body.154:                                     ; preds = %for.cond.151
  %117 = load i32, i32* %c2, align 4
  %idxprom155 = sext i32 %117 to i64
  %118 = load i32, i32* %c1min, align 4
  %idxprom156 = sext i32 %118 to i64
  %119 = load i32, i32* %c0, align 4
  %idxprom157 = sext i32 %119 to i64
  %120 = load [32 x i16]**, [32 x i16]*** %histogram, align 8
  %arrayidx158 = getelementptr inbounds [32 x i16]*, [32 x i16]** %120, i64 %idxprom157
  %121 = load [32 x i16]*, [32 x i16]** %arrayidx158, align 8
  %arrayidx159 = getelementptr inbounds [32 x i16], [32 x i16]* %121, i64 %idxprom156
  %arrayidx160 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx159, i32 0, i64 %idxprom155
  store i16* %arrayidx160, i16** %histp, align 8
  %122 = load i32, i32* %c1min, align 4
  store i32 %122, i32* %c1, align 4
  br label %for.cond.161

for.cond.161:                                     ; preds = %for.inc.171, %for.body.154
  %123 = load i32, i32* %c1, align 4
  %124 = load i32, i32* %c1max, align 4
  %cmp162 = icmp sle i32 %123, %124
  br i1 %cmp162, label %for.body.164, label %for.end.173

for.body.164:                                     ; preds = %for.cond.161
  %125 = load i16*, i16** %histp, align 8
  %126 = load i16, i16* %125, align 2
  %conv165 = zext i16 %126 to i32
  %cmp166 = icmp ne i32 %conv165, 0
  br i1 %cmp166, label %if.then.168, label %if.end.170

if.then.168:                                      ; preds = %for.body.164
  %127 = load i32, i32* %c2, align 4
  store i32 %127, i32* %c2min, align 4
  %128 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %c2min169 = getelementptr inbounds %struct.box, %struct.box* %128, i32 0, i32 4
  store i32 %127, i32* %c2min169, align 4
  br label %have_c2min

if.end.170:                                       ; preds = %for.body.164
  br label %for.inc.171

for.inc.171:                                      ; preds = %if.end.170
  %129 = load i32, i32* %c1, align 4
  %inc172 = add nsw i32 %129, 1
  store i32 %inc172, i32* %c1, align 4
  %130 = load i16*, i16** %histp, align 8
  %add.ptr = getelementptr inbounds i16, i16* %130, i64 32
  store i16* %add.ptr, i16** %histp, align 8
  br label %for.cond.161

for.end.173:                                      ; preds = %for.cond.161
  br label %for.inc.174

for.inc.174:                                      ; preds = %for.end.173
  %131 = load i32, i32* %c0, align 4
  %inc175 = add nsw i32 %131, 1
  store i32 %inc175, i32* %c0, align 4
  br label %for.cond.151

for.end.176:                                      ; preds = %for.cond.151
  br label %for.inc.177

for.inc.177:                                      ; preds = %for.end.176
  %132 = load i32, i32* %c2, align 4
  %inc178 = add nsw i32 %132, 1
  store i32 %inc178, i32* %c2, align 4
  br label %for.cond.147

for.end.179:                                      ; preds = %for.cond.147
  br label %if.end.180

if.end.180:                                       ; preds = %for.end.179, %have_c1max
  br label %have_c2min

have_c2min:                                       ; preds = %if.end.180, %if.then.168
  %133 = load i32, i32* %c2max, align 4
  %134 = load i32, i32* %c2min, align 4
  %cmp181 = icmp sgt i32 %133, %134
  br i1 %cmp181, label %if.then.183, label %if.end.218

if.then.183:                                      ; preds = %have_c2min
  %135 = load i32, i32* %c2max, align 4
  store i32 %135, i32* %c2, align 4
  br label %for.cond.184

for.cond.184:                                     ; preds = %for.inc.215, %if.then.183
  %136 = load i32, i32* %c2, align 4
  %137 = load i32, i32* %c2min, align 4
  %cmp185 = icmp sge i32 %136, %137
  br i1 %cmp185, label %for.body.187, label %for.end.217

for.body.187:                                     ; preds = %for.cond.184
  %138 = load i32, i32* %c0min, align 4
  store i32 %138, i32* %c0, align 4
  br label %for.cond.188

for.cond.188:                                     ; preds = %for.inc.212, %for.body.187
  %139 = load i32, i32* %c0, align 4
  %140 = load i32, i32* %c0max, align 4
  %cmp189 = icmp sle i32 %139, %140
  br i1 %cmp189, label %for.body.191, label %for.end.214

for.body.191:                                     ; preds = %for.cond.188
  %141 = load i32, i32* %c2, align 4
  %idxprom192 = sext i32 %141 to i64
  %142 = load i32, i32* %c1min, align 4
  %idxprom193 = sext i32 %142 to i64
  %143 = load i32, i32* %c0, align 4
  %idxprom194 = sext i32 %143 to i64
  %144 = load [32 x i16]**, [32 x i16]*** %histogram, align 8
  %arrayidx195 = getelementptr inbounds [32 x i16]*, [32 x i16]** %144, i64 %idxprom194
  %145 = load [32 x i16]*, [32 x i16]** %arrayidx195, align 8
  %arrayidx196 = getelementptr inbounds [32 x i16], [32 x i16]* %145, i64 %idxprom193
  %arrayidx197 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx196, i32 0, i64 %idxprom192
  store i16* %arrayidx197, i16** %histp, align 8
  %146 = load i32, i32* %c1min, align 4
  store i32 %146, i32* %c1, align 4
  br label %for.cond.198

for.cond.198:                                     ; preds = %for.inc.208, %for.body.191
  %147 = load i32, i32* %c1, align 4
  %148 = load i32, i32* %c1max, align 4
  %cmp199 = icmp sle i32 %147, %148
  br i1 %cmp199, label %for.body.201, label %for.end.211

for.body.201:                                     ; preds = %for.cond.198
  %149 = load i16*, i16** %histp, align 8
  %150 = load i16, i16* %149, align 2
  %conv202 = zext i16 %150 to i32
  %cmp203 = icmp ne i32 %conv202, 0
  br i1 %cmp203, label %if.then.205, label %if.end.207

if.then.205:                                      ; preds = %for.body.201
  %151 = load i32, i32* %c2, align 4
  store i32 %151, i32* %c2max, align 4
  %152 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %c2max206 = getelementptr inbounds %struct.box, %struct.box* %152, i32 0, i32 5
  store i32 %151, i32* %c2max206, align 4
  br label %have_c2max

if.end.207:                                       ; preds = %for.body.201
  br label %for.inc.208

for.inc.208:                                      ; preds = %if.end.207
  %153 = load i32, i32* %c1, align 4
  %inc209 = add nsw i32 %153, 1
  store i32 %inc209, i32* %c1, align 4
  %154 = load i16*, i16** %histp, align 8
  %add.ptr210 = getelementptr inbounds i16, i16* %154, i64 32
  store i16* %add.ptr210, i16** %histp, align 8
  br label %for.cond.198

for.end.211:                                      ; preds = %for.cond.198
  br label %for.inc.212

for.inc.212:                                      ; preds = %for.end.211
  %155 = load i32, i32* %c0, align 4
  %inc213 = add nsw i32 %155, 1
  store i32 %inc213, i32* %c0, align 4
  br label %for.cond.188

for.end.214:                                      ; preds = %for.cond.188
  br label %for.inc.215

for.inc.215:                                      ; preds = %for.end.214
  %156 = load i32, i32* %c2, align 4
  %dec216 = add nsw i32 %156, -1
  store i32 %dec216, i32* %c2, align 4
  br label %for.cond.184

for.end.217:                                      ; preds = %for.cond.184
  br label %if.end.218

if.end.218:                                       ; preds = %for.end.217, %have_c2min
  br label %have_c2max

have_c2max:                                       ; preds = %if.end.218, %if.then.205
  %157 = load i32, i32* %c0max, align 4
  %158 = load i32, i32* %c0min, align 4
  %sub = sub nsw i32 %157, %158
  %shl = shl i32 %sub, 3
  %mul = mul nsw i32 %shl, 2
  %conv219 = sext i32 %mul to i64
  store i64 %conv219, i64* %dist0, align 8
  %159 = load i32, i32* %c1max, align 4
  %160 = load i32, i32* %c1min, align 4
  %sub220 = sub nsw i32 %159, %160
  %shl221 = shl i32 %sub220, 2
  %mul222 = mul nsw i32 %shl221, 3
  %conv223 = sext i32 %mul222 to i64
  store i64 %conv223, i64* %dist1, align 8
  %161 = load i32, i32* %c2max, align 4
  %162 = load i32, i32* %c2min, align 4
  %sub224 = sub nsw i32 %161, %162
  %shl225 = shl i32 %sub224, 3
  %mul226 = mul nsw i32 %shl225, 1
  %conv227 = sext i32 %mul226 to i64
  store i64 %conv227, i64* %dist2, align 8
  %163 = load i64, i64* %dist0, align 8
  %164 = load i64, i64* %dist0, align 8
  %mul228 = mul nsw i64 %163, %164
  %165 = load i64, i64* %dist1, align 8
  %166 = load i64, i64* %dist1, align 8
  %mul229 = mul nsw i64 %165, %166
  %add = add nsw i64 %mul228, %mul229
  %167 = load i64, i64* %dist2, align 8
  %168 = load i64, i64* %dist2, align 8
  %mul230 = mul nsw i64 %167, %168
  %add231 = add nsw i64 %add, %mul230
  %169 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %volume = getelementptr inbounds %struct.box, %struct.box* %169, i32 0, i32 6
  store i64 %add231, i64* %volume, align 8
  store i64 0, i64* %ccount, align 8
  %170 = load i32, i32* %c0min, align 4
  store i32 %170, i32* %c0, align 4
  br label %for.cond.232

for.cond.232:                                     ; preds = %for.inc.263, %have_c2max
  %171 = load i32, i32* %c0, align 4
  %172 = load i32, i32* %c0max, align 4
  %cmp233 = icmp sle i32 %171, %172
  br i1 %cmp233, label %for.body.235, label %for.end.265

for.body.235:                                     ; preds = %for.cond.232
  %173 = load i32, i32* %c1min, align 4
  store i32 %173, i32* %c1, align 4
  br label %for.cond.236

for.cond.236:                                     ; preds = %for.inc.260, %for.body.235
  %174 = load i32, i32* %c1, align 4
  %175 = load i32, i32* %c1max, align 4
  %cmp237 = icmp sle i32 %174, %175
  br i1 %cmp237, label %for.body.239, label %for.end.262

for.body.239:                                     ; preds = %for.cond.236
  %176 = load i32, i32* %c2min, align 4
  %idxprom240 = sext i32 %176 to i64
  %177 = load i32, i32* %c1, align 4
  %idxprom241 = sext i32 %177 to i64
  %178 = load i32, i32* %c0, align 4
  %idxprom242 = sext i32 %178 to i64
  %179 = load [32 x i16]**, [32 x i16]*** %histogram, align 8
  %arrayidx243 = getelementptr inbounds [32 x i16]*, [32 x i16]** %179, i64 %idxprom242
  %180 = load [32 x i16]*, [32 x i16]** %arrayidx243, align 8
  %arrayidx244 = getelementptr inbounds [32 x i16], [32 x i16]* %180, i64 %idxprom241
  %arrayidx245 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx244, i32 0, i64 %idxprom240
  store i16* %arrayidx245, i16** %histp, align 8
  %181 = load i32, i32* %c2min, align 4
  store i32 %181, i32* %c2, align 4
  br label %for.cond.246

for.cond.246:                                     ; preds = %for.inc.256, %for.body.239
  %182 = load i32, i32* %c2, align 4
  %183 = load i32, i32* %c2max, align 4
  %cmp247 = icmp sle i32 %182, %183
  br i1 %cmp247, label %for.body.249, label %for.end.259

for.body.249:                                     ; preds = %for.cond.246
  %184 = load i16*, i16** %histp, align 8
  %185 = load i16, i16* %184, align 2
  %conv250 = zext i16 %185 to i32
  %cmp251 = icmp ne i32 %conv250, 0
  br i1 %cmp251, label %if.then.253, label %if.end.255

if.then.253:                                      ; preds = %for.body.249
  %186 = load i64, i64* %ccount, align 8
  %inc254 = add nsw i64 %186, 1
  store i64 %inc254, i64* %ccount, align 8
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.253, %for.body.249
  br label %for.inc.256

for.inc.256:                                      ; preds = %if.end.255
  %187 = load i32, i32* %c2, align 4
  %inc257 = add nsw i32 %187, 1
  store i32 %inc257, i32* %c2, align 4
  %188 = load i16*, i16** %histp, align 8
  %incdec.ptr258 = getelementptr inbounds i16, i16* %188, i32 1
  store i16* %incdec.ptr258, i16** %histp, align 8
  br label %for.cond.246

for.end.259:                                      ; preds = %for.cond.246
  br label %for.inc.260

for.inc.260:                                      ; preds = %for.end.259
  %189 = load i32, i32* %c1, align 4
  %inc261 = add nsw i32 %189, 1
  store i32 %inc261, i32* %c1, align 4
  br label %for.cond.236

for.end.262:                                      ; preds = %for.cond.236
  br label %for.inc.263

for.inc.263:                                      ; preds = %for.end.262
  %190 = load i32, i32* %c0, align 4
  %inc264 = add nsw i32 %190, 1
  store i32 %inc264, i32* %c0, align 4
  br label %for.cond.232

for.end.265:                                      ; preds = %for.cond.232
  %191 = load i64, i64* %ccount, align 8
  %192 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %colorcount = getelementptr inbounds %struct.box, %struct.box* %192, i32 0, i32 7
  store i64 %191, i64* %colorcount, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @median_cut(%struct.jpeg_decompress_struct* %cinfo, %struct.box* %boxlist, i32 %numboxes, i32 %desired_colors) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %boxlist.addr = alloca %struct.box*, align 8
  %numboxes.addr = alloca i32, align 4
  %desired_colors.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %lb = alloca i32, align 4
  %c0 = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %cmax = alloca i32, align 4
  %b1 = alloca %struct.box*, align 8
  %b2 = alloca %struct.box*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.box* %boxlist, %struct.box** %boxlist.addr, align 8
  store i32 %numboxes, i32* %numboxes.addr, align 4
  store i32 %desired_colors, i32* %desired_colors.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, i32* %numboxes.addr, align 4
  %1 = load i32, i32* %desired_colors.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %numboxes.addr, align 4
  %mul = mul nsw i32 %2, 2
  %3 = load i32, i32* %desired_colors.addr, align 4
  %cmp1 = icmp sle i32 %mul, %3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load %struct.box*, %struct.box** %boxlist.addr, align 8
  %5 = load i32, i32* %numboxes.addr, align 4
  %call = call %struct.box* @find_biggest_color_pop(%struct.box* %4, i32 %5)
  store %struct.box* %call, %struct.box** %b1, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %6 = load %struct.box*, %struct.box** %boxlist.addr, align 8
  %7 = load i32, i32* %numboxes.addr, align 4
  %call2 = call %struct.box* @find_biggest_volume(%struct.box* %6, i32 %7)
  store %struct.box* %call2, %struct.box** %b1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.box*, %struct.box** %b1, align 8
  %cmp3 = icmp eq %struct.box* %8, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %while.end

if.end.5:                                         ; preds = %if.end
  %9 = load i32, i32* %numboxes.addr, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.box*, %struct.box** %boxlist.addr, align 8
  %arrayidx = getelementptr inbounds %struct.box, %struct.box* %10, i64 %idxprom
  store %struct.box* %arrayidx, %struct.box** %b2, align 8
  %11 = load %struct.box*, %struct.box** %b1, align 8
  %c0max = getelementptr inbounds %struct.box, %struct.box* %11, i32 0, i32 1
  %12 = load i32, i32* %c0max, align 4
  %13 = load %struct.box*, %struct.box** %b2, align 8
  %c0max6 = getelementptr inbounds %struct.box, %struct.box* %13, i32 0, i32 1
  store i32 %12, i32* %c0max6, align 4
  %14 = load %struct.box*, %struct.box** %b1, align 8
  %c1max = getelementptr inbounds %struct.box, %struct.box* %14, i32 0, i32 3
  %15 = load i32, i32* %c1max, align 4
  %16 = load %struct.box*, %struct.box** %b2, align 8
  %c1max7 = getelementptr inbounds %struct.box, %struct.box* %16, i32 0, i32 3
  store i32 %15, i32* %c1max7, align 4
  %17 = load %struct.box*, %struct.box** %b1, align 8
  %c2max = getelementptr inbounds %struct.box, %struct.box* %17, i32 0, i32 5
  %18 = load i32, i32* %c2max, align 4
  %19 = load %struct.box*, %struct.box** %b2, align 8
  %c2max8 = getelementptr inbounds %struct.box, %struct.box* %19, i32 0, i32 5
  store i32 %18, i32* %c2max8, align 4
  %20 = load %struct.box*, %struct.box** %b1, align 8
  %c0min = getelementptr inbounds %struct.box, %struct.box* %20, i32 0, i32 0
  %21 = load i32, i32* %c0min, align 4
  %22 = load %struct.box*, %struct.box** %b2, align 8
  %c0min9 = getelementptr inbounds %struct.box, %struct.box* %22, i32 0, i32 0
  store i32 %21, i32* %c0min9, align 4
  %23 = load %struct.box*, %struct.box** %b1, align 8
  %c1min = getelementptr inbounds %struct.box, %struct.box* %23, i32 0, i32 2
  %24 = load i32, i32* %c1min, align 4
  %25 = load %struct.box*, %struct.box** %b2, align 8
  %c1min10 = getelementptr inbounds %struct.box, %struct.box* %25, i32 0, i32 2
  store i32 %24, i32* %c1min10, align 4
  %26 = load %struct.box*, %struct.box** %b1, align 8
  %c2min = getelementptr inbounds %struct.box, %struct.box* %26, i32 0, i32 4
  %27 = load i32, i32* %c2min, align 4
  %28 = load %struct.box*, %struct.box** %b2, align 8
  %c2min11 = getelementptr inbounds %struct.box, %struct.box* %28, i32 0, i32 4
  store i32 %27, i32* %c2min11, align 4
  %29 = load %struct.box*, %struct.box** %b1, align 8
  %c0max12 = getelementptr inbounds %struct.box, %struct.box* %29, i32 0, i32 1
  %30 = load i32, i32* %c0max12, align 4
  %31 = load %struct.box*, %struct.box** %b1, align 8
  %c0min13 = getelementptr inbounds %struct.box, %struct.box* %31, i32 0, i32 0
  %32 = load i32, i32* %c0min13, align 4
  %sub = sub nsw i32 %30, %32
  %shl = shl i32 %sub, 3
  %mul14 = mul nsw i32 %shl, 2
  store i32 %mul14, i32* %c0, align 4
  %33 = load %struct.box*, %struct.box** %b1, align 8
  %c1max15 = getelementptr inbounds %struct.box, %struct.box* %33, i32 0, i32 3
  %34 = load i32, i32* %c1max15, align 4
  %35 = load %struct.box*, %struct.box** %b1, align 8
  %c1min16 = getelementptr inbounds %struct.box, %struct.box* %35, i32 0, i32 2
  %36 = load i32, i32* %c1min16, align 4
  %sub17 = sub nsw i32 %34, %36
  %shl18 = shl i32 %sub17, 2
  %mul19 = mul nsw i32 %shl18, 3
  store i32 %mul19, i32* %c1, align 4
  %37 = load %struct.box*, %struct.box** %b1, align 8
  %c2max20 = getelementptr inbounds %struct.box, %struct.box* %37, i32 0, i32 5
  %38 = load i32, i32* %c2max20, align 4
  %39 = load %struct.box*, %struct.box** %b1, align 8
  %c2min21 = getelementptr inbounds %struct.box, %struct.box* %39, i32 0, i32 4
  %40 = load i32, i32* %c2min21, align 4
  %sub22 = sub nsw i32 %38, %40
  %shl23 = shl i32 %sub22, 3
  %mul24 = mul nsw i32 %shl23, 1
  store i32 %mul24, i32* %c2, align 4
  %41 = load i32, i32* %c1, align 4
  store i32 %41, i32* %cmax, align 4
  store i32 1, i32* %n, align 4
  %42 = load i32, i32* %c0, align 4
  %43 = load i32, i32* %cmax, align 4
  %cmp25 = icmp sgt i32 %42, %43
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.5
  %44 = load i32, i32* %c0, align 4
  store i32 %44, i32* %cmax, align 4
  store i32 0, i32* %n, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.5
  %45 = load i32, i32* %c2, align 4
  %46 = load i32, i32* %cmax, align 4
  %cmp28 = icmp sgt i32 %45, %46
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.27
  store i32 2, i32* %n, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.27
  %47 = load i32, i32* %n, align 4
  switch i32 %47, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.36
    i32 2, label %sw.bb.44
  ]

sw.bb:                                            ; preds = %if.end.30
  %48 = load %struct.box*, %struct.box** %b1, align 8
  %c0max31 = getelementptr inbounds %struct.box, %struct.box* %48, i32 0, i32 1
  %49 = load i32, i32* %c0max31, align 4
  %50 = load %struct.box*, %struct.box** %b1, align 8
  %c0min32 = getelementptr inbounds %struct.box, %struct.box* %50, i32 0, i32 0
  %51 = load i32, i32* %c0min32, align 4
  %add = add nsw i32 %49, %51
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %lb, align 4
  %52 = load i32, i32* %lb, align 4
  %53 = load %struct.box*, %struct.box** %b1, align 8
  %c0max33 = getelementptr inbounds %struct.box, %struct.box* %53, i32 0, i32 1
  store i32 %52, i32* %c0max33, align 4
  %54 = load i32, i32* %lb, align 4
  %add34 = add nsw i32 %54, 1
  %55 = load %struct.box*, %struct.box** %b2, align 8
  %c0min35 = getelementptr inbounds %struct.box, %struct.box* %55, i32 0, i32 0
  store i32 %add34, i32* %c0min35, align 4
  br label %sw.epilog

sw.bb.36:                                         ; preds = %if.end.30
  %56 = load %struct.box*, %struct.box** %b1, align 8
  %c1max37 = getelementptr inbounds %struct.box, %struct.box* %56, i32 0, i32 3
  %57 = load i32, i32* %c1max37, align 4
  %58 = load %struct.box*, %struct.box** %b1, align 8
  %c1min38 = getelementptr inbounds %struct.box, %struct.box* %58, i32 0, i32 2
  %59 = load i32, i32* %c1min38, align 4
  %add39 = add nsw i32 %57, %59
  %div40 = sdiv i32 %add39, 2
  store i32 %div40, i32* %lb, align 4
  %60 = load i32, i32* %lb, align 4
  %61 = load %struct.box*, %struct.box** %b1, align 8
  %c1max41 = getelementptr inbounds %struct.box, %struct.box* %61, i32 0, i32 3
  store i32 %60, i32* %c1max41, align 4
  %62 = load i32, i32* %lb, align 4
  %add42 = add nsw i32 %62, 1
  %63 = load %struct.box*, %struct.box** %b2, align 8
  %c1min43 = getelementptr inbounds %struct.box, %struct.box* %63, i32 0, i32 2
  store i32 %add42, i32* %c1min43, align 4
  br label %sw.epilog

sw.bb.44:                                         ; preds = %if.end.30
  %64 = load %struct.box*, %struct.box** %b1, align 8
  %c2max45 = getelementptr inbounds %struct.box, %struct.box* %64, i32 0, i32 5
  %65 = load i32, i32* %c2max45, align 4
  %66 = load %struct.box*, %struct.box** %b1, align 8
  %c2min46 = getelementptr inbounds %struct.box, %struct.box* %66, i32 0, i32 4
  %67 = load i32, i32* %c2min46, align 4
  %add47 = add nsw i32 %65, %67
  %div48 = sdiv i32 %add47, 2
  store i32 %div48, i32* %lb, align 4
  %68 = load i32, i32* %lb, align 4
  %69 = load %struct.box*, %struct.box** %b1, align 8
  %c2max49 = getelementptr inbounds %struct.box, %struct.box* %69, i32 0, i32 5
  store i32 %68, i32* %c2max49, align 4
  %70 = load i32, i32* %lb, align 4
  %add50 = add nsw i32 %70, 1
  %71 = load %struct.box*, %struct.box** %b2, align 8
  %c2min51 = getelementptr inbounds %struct.box, %struct.box* %71, i32 0, i32 4
  store i32 %add50, i32* %c2min51, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.30, %sw.bb.44, %sw.bb.36, %sw.bb
  %72 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %73 = load %struct.box*, %struct.box** %b1, align 8
  call void @update_box(%struct.jpeg_decompress_struct* %72, %struct.box* %73)
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %75 = load %struct.box*, %struct.box** %b2, align 8
  call void @update_box(%struct.jpeg_decompress_struct* %74, %struct.box* %75)
  %76 = load i32, i32* %numboxes.addr, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %numboxes.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then.4, %while.cond
  %77 = load i32, i32* %numboxes.addr, align 4
  ret i32 %77
}

; Function Attrs: nounwind uwtable
define internal void @compute_color(%struct.jpeg_decompress_struct* %cinfo, %struct.box* %boxp, i32 %icolor) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %boxp.addr = alloca %struct.box*, align 8
  %icolor.addr = alloca i32, align 4
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %histogram = alloca [32 x i16]**, align 8
  %histp = alloca i16*, align 8
  %c0 = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %c0min = alloca i32, align 4
  %c0max = alloca i32, align 4
  %c1min = alloca i32, align 4
  %c1max = alloca i32, align 4
  %c2min = alloca i32, align 4
  %c2max = alloca i32, align 4
  %count = alloca i64, align 8
  %total = alloca i64, align 8
  %c0total = alloca i64, align 8
  %c1total = alloca i64, align 8
  %c2total = alloca i64, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.box* %boxp, %struct.box** %boxp.addr, align 8
  store i32 %icolor, i32* %icolor.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 83
  %1 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8
  %2 = bitcast %struct.jpeg_color_quantizer* %1 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %2, %struct.my_cquantizer** %cquantize, align 8
  %3 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %histogram2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %3, i32 0, i32 3
  %4 = load [32 x i16]**, [32 x i16]*** %histogram2, align 8
  store [32 x i16]** %4, [32 x i16]*** %histogram, align 8
  store i64 0, i64* %total, align 8
  store i64 0, i64* %c0total, align 8
  store i64 0, i64* %c1total, align 8
  store i64 0, i64* %c2total, align 8
  %5 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %c0min3 = getelementptr inbounds %struct.box, %struct.box* %5, i32 0, i32 0
  %6 = load i32, i32* %c0min3, align 4
  store i32 %6, i32* %c0min, align 4
  %7 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %c0max4 = getelementptr inbounds %struct.box, %struct.box* %7, i32 0, i32 1
  %8 = load i32, i32* %c0max4, align 4
  store i32 %8, i32* %c0max, align 4
  %9 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %c1min5 = getelementptr inbounds %struct.box, %struct.box* %9, i32 0, i32 2
  %10 = load i32, i32* %c1min5, align 4
  store i32 %10, i32* %c1min, align 4
  %11 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %c1max6 = getelementptr inbounds %struct.box, %struct.box* %11, i32 0, i32 3
  %12 = load i32, i32* %c1max6, align 4
  store i32 %12, i32* %c1max, align 4
  %13 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %c2min7 = getelementptr inbounds %struct.box, %struct.box* %13, i32 0, i32 4
  %14 = load i32, i32* %c2min7, align 4
  store i32 %14, i32* %c2min, align 4
  %15 = load %struct.box*, %struct.box** %boxp.addr, align 8
  %c2max8 = getelementptr inbounds %struct.box, %struct.box* %15, i32 0, i32 5
  %16 = load i32, i32* %c2max8, align 4
  store i32 %16, i32* %c2max, align 4
  %17 = load i32, i32* %c0min, align 4
  store i32 %17, i32* %c0, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.37, %entry
  %18 = load i32, i32* %c0, align 4
  %19 = load i32, i32* %c0max, align 4
  %cmp = icmp sle i32 %18, %19
  br i1 %cmp, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %c1min, align 4
  store i32 %20, i32* %c1, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.34, %for.body
  %21 = load i32, i32* %c1, align 4
  %22 = load i32, i32* %c1max, align 4
  %cmp10 = icmp sle i32 %21, %22
  br i1 %cmp10, label %for.body.11, label %for.end.36

for.body.11:                                      ; preds = %for.cond.9
  %23 = load i32, i32* %c2min, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load i32, i32* %c1, align 4
  %idxprom12 = sext i32 %24 to i64
  %25 = load i32, i32* %c0, align 4
  %idxprom13 = sext i32 %25 to i64
  %26 = load [32 x i16]**, [32 x i16]*** %histogram, align 8
  %arrayidx = getelementptr inbounds [32 x i16]*, [32 x i16]** %26, i64 %idxprom13
  %27 = load [32 x i16]*, [32 x i16]** %arrayidx, align 8
  %arrayidx14 = getelementptr inbounds [32 x i16], [32 x i16]* %27, i64 %idxprom12
  %arrayidx15 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx14, i32 0, i64 %idxprom
  store i16* %arrayidx15, i16** %histp, align 8
  %28 = load i32, i32* %c2min, align 4
  store i32 %28, i32* %c2, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %for.body.11
  %29 = load i32, i32* %c2, align 4
  %30 = load i32, i32* %c2max, align 4
  %cmp17 = icmp sle i32 %29, %30
  br i1 %cmp17, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.16
  %31 = load i16*, i16** %histp, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %31, i32 1
  store i16* %incdec.ptr, i16** %histp, align 8
  %32 = load i16, i16* %31, align 2
  %conv = zext i16 %32 to i64
  store i64 %conv, i64* %count, align 8
  %cmp19 = icmp ne i64 %conv, 0
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.18
  %33 = load i64, i64* %count, align 8
  %34 = load i64, i64* %total, align 8
  %add = add nsw i64 %34, %33
  store i64 %add, i64* %total, align 8
  %35 = load i32, i32* %c0, align 4
  %shl = shl i32 %35, 3
  %add21 = add nsw i32 %shl, 4
  %conv22 = sext i32 %add21 to i64
  %36 = load i64, i64* %count, align 8
  %mul = mul nsw i64 %conv22, %36
  %37 = load i64, i64* %c0total, align 8
  %add23 = add nsw i64 %37, %mul
  store i64 %add23, i64* %c0total, align 8
  %38 = load i32, i32* %c1, align 4
  %shl24 = shl i32 %38, 2
  %add25 = add nsw i32 %shl24, 2
  %conv26 = sext i32 %add25 to i64
  %39 = load i64, i64* %count, align 8
  %mul27 = mul nsw i64 %conv26, %39
  %40 = load i64, i64* %c1total, align 8
  %add28 = add nsw i64 %40, %mul27
  store i64 %add28, i64* %c1total, align 8
  %41 = load i32, i32* %c2, align 4
  %shl29 = shl i32 %41, 3
  %add30 = add nsw i32 %shl29, 4
  %conv31 = sext i32 %add30 to i64
  %42 = load i64, i64* %count, align 8
  %mul32 = mul nsw i64 %conv31, %42
  %43 = load i64, i64* %c2total, align 8
  %add33 = add nsw i64 %43, %mul32
  store i64 %add33, i64* %c2total, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.18
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %44 = load i32, i32* %c2, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %c2, align 4
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end
  %45 = load i32, i32* %c1, align 4
  %inc35 = add nsw i32 %45, 1
  store i32 %inc35, i32* %c1, align 4
  br label %for.cond.9

for.end.36:                                       ; preds = %for.cond.9
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end.36
  %46 = load i32, i32* %c0, align 4
  %inc38 = add nsw i32 %46, 1
  store i32 %inc38, i32* %c0, align 4
  br label %for.cond

for.end.39:                                       ; preds = %for.cond
  %47 = load i64, i64* %c0total, align 8
  %48 = load i64, i64* %total, align 8
  %shr = ashr i64 %48, 1
  %add40 = add nsw i64 %47, %shr
  %49 = load i64, i64* %total, align 8
  %div = sdiv i64 %add40, %49
  %conv41 = trunc i64 %div to i8
  %50 = load i32, i32* %icolor.addr, align 4
  %idxprom42 = sext i32 %50 to i64
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 32
  %52 = load i8**, i8*** %colormap, align 8
  %arrayidx43 = getelementptr inbounds i8*, i8** %52, i64 0
  %53 = load i8*, i8** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %53, i64 %idxprom42
  store i8 %conv41, i8* %arrayidx44, align 1
  %54 = load i64, i64* %c1total, align 8
  %55 = load i64, i64* %total, align 8
  %shr45 = ashr i64 %55, 1
  %add46 = add nsw i64 %54, %shr45
  %56 = load i64, i64* %total, align 8
  %div47 = sdiv i64 %add46, %56
  %conv48 = trunc i64 %div47 to i8
  %57 = load i32, i32* %icolor.addr, align 4
  %idxprom49 = sext i32 %57 to i64
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %58, i32 0, i32 32
  %59 = load i8**, i8*** %colormap50, align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %59, i64 1
  %60 = load i8*, i8** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %60, i64 %idxprom49
  store i8 %conv48, i8* %arrayidx52, align 1
  %61 = load i64, i64* %c2total, align 8
  %62 = load i64, i64* %total, align 8
  %shr53 = ashr i64 %62, 1
  %add54 = add nsw i64 %61, %shr53
  %63 = load i64, i64* %total, align 8
  %div55 = sdiv i64 %add54, %63
  %conv56 = trunc i64 %div55 to i8
  %64 = load i32, i32* %icolor.addr, align 4
  %idxprom57 = sext i32 %64 to i64
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 32
  %66 = load i8**, i8*** %colormap58, align 8
  %arrayidx59 = getelementptr inbounds i8*, i8** %66, i64 2
  %67 = load i8*, i8** %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %67, i64 %idxprom57
  store i8 %conv56, i8* %arrayidx60, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.box* @find_biggest_color_pop(%struct.box* %boxlist, i32 %numboxes) #0 {
entry:
  %boxlist.addr = alloca %struct.box*, align 8
  %numboxes.addr = alloca i32, align 4
  %boxp = alloca %struct.box*, align 8
  %i = alloca i32, align 4
  %maxc = alloca i64, align 8
  %which = alloca %struct.box*, align 8
  store %struct.box* %boxlist, %struct.box** %boxlist.addr, align 8
  store i32 %numboxes, i32* %numboxes.addr, align 4
  store i64 0, i64* %maxc, align 8
  store %struct.box* null, %struct.box** %which, align 8
  store i32 0, i32* %i, align 4
  %0 = load %struct.box*, %struct.box** %boxlist.addr, align 8
  store %struct.box* %0, %struct.box** %boxp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %numboxes.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.box*, %struct.box** %boxp, align 8
  %colorcount = getelementptr inbounds %struct.box, %struct.box* %3, i32 0, i32 7
  %4 = load i64, i64* %colorcount, align 8
  %5 = load i64, i64* %maxc, align 8
  %cmp1 = icmp sgt i64 %4, %5
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %6 = load %struct.box*, %struct.box** %boxp, align 8
  %volume = getelementptr inbounds %struct.box, %struct.box* %6, i32 0, i32 6
  %7 = load i64, i64* %volume, align 8
  %cmp2 = icmp sgt i64 %7, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.box*, %struct.box** %boxp, align 8
  store %struct.box* %8, %struct.box** %which, align 8
  %9 = load %struct.box*, %struct.box** %boxp, align 8
  %colorcount3 = getelementptr inbounds %struct.box, %struct.box* %9, i32 0, i32 7
  %10 = load i64, i64* %colorcount3, align 8
  store i64 %10, i64* %maxc, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  %12 = load %struct.box*, %struct.box** %boxp, align 8
  %incdec.ptr = getelementptr inbounds %struct.box, %struct.box* %12, i32 1
  store %struct.box* %incdec.ptr, %struct.box** %boxp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.box*, %struct.box** %which, align 8
  ret %struct.box* %13
}

; Function Attrs: nounwind uwtable
define internal %struct.box* @find_biggest_volume(%struct.box* %boxlist, i32 %numboxes) #0 {
entry:
  %boxlist.addr = alloca %struct.box*, align 8
  %numboxes.addr = alloca i32, align 4
  %boxp = alloca %struct.box*, align 8
  %i = alloca i32, align 4
  %maxv = alloca i64, align 8
  %which = alloca %struct.box*, align 8
  store %struct.box* %boxlist, %struct.box** %boxlist.addr, align 8
  store i32 %numboxes, i32* %numboxes.addr, align 4
  store i64 0, i64* %maxv, align 8
  store %struct.box* null, %struct.box** %which, align 8
  store i32 0, i32* %i, align 4
  %0 = load %struct.box*, %struct.box** %boxlist.addr, align 8
  store %struct.box* %0, %struct.box** %boxp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %numboxes.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.box*, %struct.box** %boxp, align 8
  %volume = getelementptr inbounds %struct.box, %struct.box* %3, i32 0, i32 6
  %4 = load i64, i64* %volume, align 8
  %5 = load i64, i64* %maxv, align 8
  %cmp1 = icmp sgt i64 %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load %struct.box*, %struct.box** %boxp, align 8
  store %struct.box* %6, %struct.box** %which, align 8
  %7 = load %struct.box*, %struct.box** %boxp, align 8
  %volume2 = getelementptr inbounds %struct.box, %struct.box* %7, i32 0, i32 6
  %8 = load i64, i64* %volume2, align 8
  store i64 %8, i64* %maxv, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  %10 = load %struct.box*, %struct.box** %boxp, align 8
  %incdec.ptr = getelementptr inbounds %struct.box, %struct.box* %10, i32 1
  store %struct.box* %incdec.ptr, %struct.box** %boxp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.box*, %struct.box** %which, align 8
  ret %struct.box* %11
}

; Function Attrs: nounwind uwtable
define internal void @fill_inverse_cmap(%struct.jpeg_decompress_struct* %cinfo, i32 %c0, i32 %c1, i32 %c2) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %c0.addr = alloca i32, align 4
  %c1.addr = alloca i32, align 4
  %c2.addr = alloca i32, align 4
  %cquantize = alloca %struct.my_cquantizer*, align 8
  %histogram = alloca [32 x i16]**, align 8
  %minc0 = alloca i32, align 4
  %minc1 = alloca i32, align 4
  %minc2 = alloca i32, align 4
  %ic0 = alloca i32, align 4
  %ic1 = alloca i32, align 4
  %ic2 = alloca i32, align 4
  %cptr = alloca i8*, align 8
  %cachep = alloca i16*, align 8
  %colorlist = alloca [256 x i8], align 16
  %numcolors = alloca i32, align 4
  %bestcolor = alloca [128 x i8], align 16
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i32 %c0, i32* %c0.addr, align 4
  store i32 %c1, i32* %c1.addr, align 4
  store i32 %c2, i32* %c2.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 83
  %1 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %cquantize1, align 8
  %2 = bitcast %struct.jpeg_color_quantizer* %1 to %struct.my_cquantizer*
  store %struct.my_cquantizer* %2, %struct.my_cquantizer** %cquantize, align 8
  %3 = load %struct.my_cquantizer*, %struct.my_cquantizer** %cquantize, align 8
  %histogram2 = getelementptr inbounds %struct.my_cquantizer, %struct.my_cquantizer* %3, i32 0, i32 3
  %4 = load [32 x i16]**, [32 x i16]*** %histogram2, align 8
  store [32 x i16]** %4, [32 x i16]*** %histogram, align 8
  %5 = load i32, i32* %c0.addr, align 4
  %shr = ashr i32 %5, 2
  store i32 %shr, i32* %c0.addr, align 4
  %6 = load i32, i32* %c1.addr, align 4
  %shr3 = ashr i32 %6, 3
  store i32 %shr3, i32* %c1.addr, align 4
  %7 = load i32, i32* %c2.addr, align 4
  %shr4 = ashr i32 %7, 2
  store i32 %shr4, i32* %c2.addr, align 4
  %8 = load i32, i32* %c0.addr, align 4
  %shl = shl i32 %8, 5
  %add = add nsw i32 %shl, 4
  store i32 %add, i32* %minc0, align 4
  %9 = load i32, i32* %c1.addr, align 4
  %shl5 = shl i32 %9, 5
  %add6 = add nsw i32 %shl5, 2
  store i32 %add6, i32* %minc1, align 4
  %10 = load i32, i32* %c2.addr, align 4
  %shl7 = shl i32 %10, 5
  %add8 = add nsw i32 %shl7, 4
  store i32 %add8, i32* %minc2, align 4
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %12 = load i32, i32* %minc0, align 4
  %13 = load i32, i32* %minc1, align 4
  %14 = load i32, i32* %minc2, align 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %colorlist, i32 0, i32 0
  %call = call i32 @find_nearby_colors(%struct.jpeg_decompress_struct* %11, i32 %12, i32 %13, i32 %14, i8* %arraydecay)
  store i32 %call, i32* %numcolors, align 4
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %16 = load i32, i32* %minc0, align 4
  %17 = load i32, i32* %minc1, align 4
  %18 = load i32, i32* %minc2, align 4
  %19 = load i32, i32* %numcolors, align 4
  %arraydecay9 = getelementptr inbounds [256 x i8], [256 x i8]* %colorlist, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [128 x i8], [128 x i8]* %bestcolor, i32 0, i32 0
  call void @find_best_colors(%struct.jpeg_decompress_struct* %15, i32 %16, i32 %17, i32 %18, i32 %19, i8* %arraydecay9, i8* %arraydecay10)
  %20 = load i32, i32* %c0.addr, align 4
  %shl11 = shl i32 %20, 2
  store i32 %shl11, i32* %c0.addr, align 4
  %21 = load i32, i32* %c1.addr, align 4
  %shl12 = shl i32 %21, 3
  store i32 %shl12, i32* %c1.addr, align 4
  %22 = load i32, i32* %c2.addr, align 4
  %shl13 = shl i32 %22, 2
  store i32 %shl13, i32* %c2.addr, align 4
  %arraydecay14 = getelementptr inbounds [128 x i8], [128 x i8]* %bestcolor, i32 0, i32 0
  store i8* %arraydecay14, i8** %cptr, align 8
  store i32 0, i32* %ic0, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.33, %entry
  %23 = load i32, i32* %ic0, align 4
  %cmp = icmp slt i32 %23, 4
  br i1 %cmp, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %ic1, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.30, %for.body
  %24 = load i32, i32* %ic1, align 4
  %cmp16 = icmp slt i32 %24, 8
  br i1 %cmp16, label %for.body.17, label %for.end.32

for.body.17:                                      ; preds = %for.cond.15
  %25 = load i32, i32* %c2.addr, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load i32, i32* %c1.addr, align 4
  %27 = load i32, i32* %ic1, align 4
  %add18 = add nsw i32 %26, %27
  %idxprom19 = sext i32 %add18 to i64
  %28 = load i32, i32* %c0.addr, align 4
  %29 = load i32, i32* %ic0, align 4
  %add20 = add nsw i32 %28, %29
  %idxprom21 = sext i32 %add20 to i64
  %30 = load [32 x i16]**, [32 x i16]*** %histogram, align 8
  %arrayidx = getelementptr inbounds [32 x i16]*, [32 x i16]** %30, i64 %idxprom21
  %31 = load [32 x i16]*, [32 x i16]** %arrayidx, align 8
  %arrayidx22 = getelementptr inbounds [32 x i16], [32 x i16]* %31, i64 %idxprom19
  %arrayidx23 = getelementptr inbounds [32 x i16], [32 x i16]* %arrayidx22, i32 0, i64 %idxprom
  store i16* %arrayidx23, i16** %cachep, align 8
  store i32 0, i32* %ic2, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc, %for.body.17
  %32 = load i32, i32* %ic2, align 4
  %cmp25 = icmp slt i32 %32, 4
  br i1 %cmp25, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.24
  %33 = load i8*, i8** %cptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr, i8** %cptr, align 8
  %34 = load i8, i8* %33, align 1
  %conv = zext i8 %34 to i32
  %add27 = add nsw i32 %conv, 1
  %conv28 = trunc i32 %add27 to i16
  %35 = load i16*, i16** %cachep, align 8
  %incdec.ptr29 = getelementptr inbounds i16, i16* %35, i32 1
  store i16* %incdec.ptr29, i16** %cachep, align 8
  store i16 %conv28, i16* %35, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.26
  %36 = load i32, i32* %ic2, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %ic2, align 4
  br label %for.cond.24

for.end:                                          ; preds = %for.cond.24
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end
  %37 = load i32, i32* %ic1, align 4
  %inc31 = add nsw i32 %37, 1
  store i32 %inc31, i32* %ic1, align 4
  br label %for.cond.15

for.end.32:                                       ; preds = %for.cond.15
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.end.32
  %38 = load i32, i32* %ic0, align 4
  %inc34 = add nsw i32 %38, 1
  store i32 %inc34, i32* %ic0, align 4
  br label %for.cond

for.end.35:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @find_nearby_colors(%struct.jpeg_decompress_struct* %cinfo, i32 %minc0, i32 %minc1, i32 %minc2, i8* %colorlist) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %minc0.addr = alloca i32, align 4
  %minc1.addr = alloca i32, align 4
  %minc2.addr = alloca i32, align 4
  %colorlist.addr = alloca i8*, align 8
  %numcolors = alloca i32, align 4
  %maxc0 = alloca i32, align 4
  %maxc1 = alloca i32, align 4
  %maxc2 = alloca i32, align 4
  %centerc0 = alloca i32, align 4
  %centerc1 = alloca i32, align 4
  %centerc2 = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %ncolors = alloca i32, align 4
  %minmaxdist = alloca i64, align 8
  %min_dist = alloca i64, align 8
  %max_dist = alloca i64, align 8
  %tdist = alloca i64, align 8
  %mindist = alloca [256 x i64], align 16
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i32 %minc0, i32* %minc0.addr, align 4
  store i32 %minc1, i32* %minc1.addr, align 4
  store i32 %minc2, i32* %minc2.addr, align 4
  store i8* %colorlist, i8** %colorlist.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 31
  %1 = load i32, i32* %actual_number_of_colors, align 4
  store i32 %1, i32* %numcolors, align 4
  %2 = load i32, i32* %minc0.addr, align 4
  %add = add nsw i32 %2, 24
  store i32 %add, i32* %maxc0, align 4
  %3 = load i32, i32* %minc0.addr, align 4
  %4 = load i32, i32* %maxc0, align 4
  %add1 = add nsw i32 %3, %4
  %shr = ashr i32 %add1, 1
  store i32 %shr, i32* %centerc0, align 4
  %5 = load i32, i32* %minc1.addr, align 4
  %add2 = add nsw i32 %5, 28
  store i32 %add2, i32* %maxc1, align 4
  %6 = load i32, i32* %minc1.addr, align 4
  %7 = load i32, i32* %maxc1, align 4
  %add3 = add nsw i32 %6, %7
  %shr4 = ashr i32 %add3, 1
  store i32 %shr4, i32* %centerc1, align 4
  %8 = load i32, i32* %minc2.addr, align 4
  %add5 = add nsw i32 %8, 24
  store i32 %add5, i32* %maxc2, align 4
  %9 = load i32, i32* %minc2.addr, align 4
  %10 = load i32, i32* %maxc2, align 4
  %add6 = add nsw i32 %9, %10
  %shr7 = ashr i32 %add6, 1
  store i32 %shr7, i32* %centerc2, align 4
  store i64 2147483647, i64* %minmaxdist, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %numcolors, align 4
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 32
  %15 = load i8**, i8*** %colormap, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %15, i64 0
  %16 = load i8*, i8** %arrayidx, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %16, i64 %idxprom
  %17 = load i8, i8* %arrayidx8, align 1
  %conv = zext i8 %17 to i32
  store i32 %conv, i32* %x, align 4
  %18 = load i32, i32* %x, align 4
  %19 = load i32, i32* %minc0.addr, align 4
  %cmp9 = icmp slt i32 %18, %19
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %20 = load i32, i32* %x, align 4
  %21 = load i32, i32* %minc0.addr, align 4
  %sub = sub nsw i32 %20, %21
  %mul = mul nsw i32 %sub, 2
  %conv11 = sext i32 %mul to i64
  store i64 %conv11, i64* %tdist, align 8
  %22 = load i64, i64* %tdist, align 8
  %23 = load i64, i64* %tdist, align 8
  %mul12 = mul nsw i64 %22, %23
  store i64 %mul12, i64* %min_dist, align 8
  %24 = load i32, i32* %x, align 4
  %25 = load i32, i32* %maxc0, align 4
  %sub13 = sub nsw i32 %24, %25
  %mul14 = mul nsw i32 %sub13, 2
  %conv15 = sext i32 %mul14 to i64
  store i64 %conv15, i64* %tdist, align 8
  %26 = load i64, i64* %tdist, align 8
  %27 = load i64, i64* %tdist, align 8
  %mul16 = mul nsw i64 %26, %27
  store i64 %mul16, i64* %max_dist, align 8
  br label %if.end.42

if.else:                                          ; preds = %for.body
  %28 = load i32, i32* %x, align 4
  %29 = load i32, i32* %maxc0, align 4
  %cmp17 = icmp sgt i32 %28, %29
  br i1 %cmp17, label %if.then.19, label %if.else.28

if.then.19:                                       ; preds = %if.else
  %30 = load i32, i32* %x, align 4
  %31 = load i32, i32* %maxc0, align 4
  %sub20 = sub nsw i32 %30, %31
  %mul21 = mul nsw i32 %sub20, 2
  %conv22 = sext i32 %mul21 to i64
  store i64 %conv22, i64* %tdist, align 8
  %32 = load i64, i64* %tdist, align 8
  %33 = load i64, i64* %tdist, align 8
  %mul23 = mul nsw i64 %32, %33
  store i64 %mul23, i64* %min_dist, align 8
  %34 = load i32, i32* %x, align 4
  %35 = load i32, i32* %minc0.addr, align 4
  %sub24 = sub nsw i32 %34, %35
  %mul25 = mul nsw i32 %sub24, 2
  %conv26 = sext i32 %mul25 to i64
  store i64 %conv26, i64* %tdist, align 8
  %36 = load i64, i64* %tdist, align 8
  %37 = load i64, i64* %tdist, align 8
  %mul27 = mul nsw i64 %36, %37
  store i64 %mul27, i64* %max_dist, align 8
  br label %if.end.41

if.else.28:                                       ; preds = %if.else
  store i64 0, i64* %min_dist, align 8
  %38 = load i32, i32* %x, align 4
  %39 = load i32, i32* %centerc0, align 4
  %cmp29 = icmp sle i32 %38, %39
  br i1 %cmp29, label %if.then.31, label %if.else.36

if.then.31:                                       ; preds = %if.else.28
  %40 = load i32, i32* %x, align 4
  %41 = load i32, i32* %maxc0, align 4
  %sub32 = sub nsw i32 %40, %41
  %mul33 = mul nsw i32 %sub32, 2
  %conv34 = sext i32 %mul33 to i64
  store i64 %conv34, i64* %tdist, align 8
  %42 = load i64, i64* %tdist, align 8
  %43 = load i64, i64* %tdist, align 8
  %mul35 = mul nsw i64 %42, %43
  store i64 %mul35, i64* %max_dist, align 8
  br label %if.end

if.else.36:                                       ; preds = %if.else.28
  %44 = load i32, i32* %x, align 4
  %45 = load i32, i32* %minc0.addr, align 4
  %sub37 = sub nsw i32 %44, %45
  %mul38 = mul nsw i32 %sub37, 2
  %conv39 = sext i32 %mul38 to i64
  store i64 %conv39, i64* %tdist, align 8
  %46 = load i64, i64* %tdist, align 8
  %47 = load i64, i64* %tdist, align 8
  %mul40 = mul nsw i64 %46, %47
  store i64 %mul40, i64* %max_dist, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.36, %if.then.31
  br label %if.end.41

if.end.41:                                        ; preds = %if.end, %if.then.19
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then
  %48 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %48 to i64
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 32
  %50 = load i8**, i8*** %colormap44, align 8
  %arrayidx45 = getelementptr inbounds i8*, i8** %50, i64 1
  %51 = load i8*, i8** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %51, i64 %idxprom43
  %52 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %52 to i32
  store i32 %conv47, i32* %x, align 4
  %53 = load i32, i32* %x, align 4
  %54 = load i32, i32* %minc1.addr, align 4
  %cmp48 = icmp slt i32 %53, %54
  br i1 %cmp48, label %if.then.50, label %if.else.61

if.then.50:                                       ; preds = %if.end.42
  %55 = load i32, i32* %x, align 4
  %56 = load i32, i32* %minc1.addr, align 4
  %sub51 = sub nsw i32 %55, %56
  %mul52 = mul nsw i32 %sub51, 3
  %conv53 = sext i32 %mul52 to i64
  store i64 %conv53, i64* %tdist, align 8
  %57 = load i64, i64* %tdist, align 8
  %58 = load i64, i64* %tdist, align 8
  %mul54 = mul nsw i64 %57, %58
  %59 = load i64, i64* %min_dist, align 8
  %add55 = add nsw i64 %59, %mul54
  store i64 %add55, i64* %min_dist, align 8
  %60 = load i32, i32* %x, align 4
  %61 = load i32, i32* %maxc1, align 4
  %sub56 = sub nsw i32 %60, %61
  %mul57 = mul nsw i32 %sub56, 3
  %conv58 = sext i32 %mul57 to i64
  store i64 %conv58, i64* %tdist, align 8
  %62 = load i64, i64* %tdist, align 8
  %63 = load i64, i64* %tdist, align 8
  %mul59 = mul nsw i64 %62, %63
  %64 = load i64, i64* %max_dist, align 8
  %add60 = add nsw i64 %64, %mul59
  store i64 %add60, i64* %max_dist, align 8
  br label %if.end.92

if.else.61:                                       ; preds = %if.end.42
  %65 = load i32, i32* %x, align 4
  %66 = load i32, i32* %maxc1, align 4
  %cmp62 = icmp sgt i32 %65, %66
  br i1 %cmp62, label %if.then.64, label %if.else.75

if.then.64:                                       ; preds = %if.else.61
  %67 = load i32, i32* %x, align 4
  %68 = load i32, i32* %maxc1, align 4
  %sub65 = sub nsw i32 %67, %68
  %mul66 = mul nsw i32 %sub65, 3
  %conv67 = sext i32 %mul66 to i64
  store i64 %conv67, i64* %tdist, align 8
  %69 = load i64, i64* %tdist, align 8
  %70 = load i64, i64* %tdist, align 8
  %mul68 = mul nsw i64 %69, %70
  %71 = load i64, i64* %min_dist, align 8
  %add69 = add nsw i64 %71, %mul68
  store i64 %add69, i64* %min_dist, align 8
  %72 = load i32, i32* %x, align 4
  %73 = load i32, i32* %minc1.addr, align 4
  %sub70 = sub nsw i32 %72, %73
  %mul71 = mul nsw i32 %sub70, 3
  %conv72 = sext i32 %mul71 to i64
  store i64 %conv72, i64* %tdist, align 8
  %74 = load i64, i64* %tdist, align 8
  %75 = load i64, i64* %tdist, align 8
  %mul73 = mul nsw i64 %74, %75
  %76 = load i64, i64* %max_dist, align 8
  %add74 = add nsw i64 %76, %mul73
  store i64 %add74, i64* %max_dist, align 8
  br label %if.end.91

if.else.75:                                       ; preds = %if.else.61
  %77 = load i32, i32* %x, align 4
  %78 = load i32, i32* %centerc1, align 4
  %cmp76 = icmp sle i32 %77, %78
  br i1 %cmp76, label %if.then.78, label %if.else.84

if.then.78:                                       ; preds = %if.else.75
  %79 = load i32, i32* %x, align 4
  %80 = load i32, i32* %maxc1, align 4
  %sub79 = sub nsw i32 %79, %80
  %mul80 = mul nsw i32 %sub79, 3
  %conv81 = sext i32 %mul80 to i64
  store i64 %conv81, i64* %tdist, align 8
  %81 = load i64, i64* %tdist, align 8
  %82 = load i64, i64* %tdist, align 8
  %mul82 = mul nsw i64 %81, %82
  %83 = load i64, i64* %max_dist, align 8
  %add83 = add nsw i64 %83, %mul82
  store i64 %add83, i64* %max_dist, align 8
  br label %if.end.90

if.else.84:                                       ; preds = %if.else.75
  %84 = load i32, i32* %x, align 4
  %85 = load i32, i32* %minc1.addr, align 4
  %sub85 = sub nsw i32 %84, %85
  %mul86 = mul nsw i32 %sub85, 3
  %conv87 = sext i32 %mul86 to i64
  store i64 %conv87, i64* %tdist, align 8
  %86 = load i64, i64* %tdist, align 8
  %87 = load i64, i64* %tdist, align 8
  %mul88 = mul nsw i64 %86, %87
  %88 = load i64, i64* %max_dist, align 8
  %add89 = add nsw i64 %88, %mul88
  store i64 %add89, i64* %max_dist, align 8
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.84, %if.then.78
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.64
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.50
  %89 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %89 to i64
  %90 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap94 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %90, i32 0, i32 32
  %91 = load i8**, i8*** %colormap94, align 8
  %arrayidx95 = getelementptr inbounds i8*, i8** %91, i64 2
  %92 = load i8*, i8** %arrayidx95, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %92, i64 %idxprom93
  %93 = load i8, i8* %arrayidx96, align 1
  %conv97 = zext i8 %93 to i32
  store i32 %conv97, i32* %x, align 4
  %94 = load i32, i32* %x, align 4
  %95 = load i32, i32* %minc2.addr, align 4
  %cmp98 = icmp slt i32 %94, %95
  br i1 %cmp98, label %if.then.100, label %if.else.111

if.then.100:                                      ; preds = %if.end.92
  %96 = load i32, i32* %x, align 4
  %97 = load i32, i32* %minc2.addr, align 4
  %sub101 = sub nsw i32 %96, %97
  %mul102 = mul nsw i32 %sub101, 1
  %conv103 = sext i32 %mul102 to i64
  store i64 %conv103, i64* %tdist, align 8
  %98 = load i64, i64* %tdist, align 8
  %99 = load i64, i64* %tdist, align 8
  %mul104 = mul nsw i64 %98, %99
  %100 = load i64, i64* %min_dist, align 8
  %add105 = add nsw i64 %100, %mul104
  store i64 %add105, i64* %min_dist, align 8
  %101 = load i32, i32* %x, align 4
  %102 = load i32, i32* %maxc2, align 4
  %sub106 = sub nsw i32 %101, %102
  %mul107 = mul nsw i32 %sub106, 1
  %conv108 = sext i32 %mul107 to i64
  store i64 %conv108, i64* %tdist, align 8
  %103 = load i64, i64* %tdist, align 8
  %104 = load i64, i64* %tdist, align 8
  %mul109 = mul nsw i64 %103, %104
  %105 = load i64, i64* %max_dist, align 8
  %add110 = add nsw i64 %105, %mul109
  store i64 %add110, i64* %max_dist, align 8
  br label %if.end.142

if.else.111:                                      ; preds = %if.end.92
  %106 = load i32, i32* %x, align 4
  %107 = load i32, i32* %maxc2, align 4
  %cmp112 = icmp sgt i32 %106, %107
  br i1 %cmp112, label %if.then.114, label %if.else.125

if.then.114:                                      ; preds = %if.else.111
  %108 = load i32, i32* %x, align 4
  %109 = load i32, i32* %maxc2, align 4
  %sub115 = sub nsw i32 %108, %109
  %mul116 = mul nsw i32 %sub115, 1
  %conv117 = sext i32 %mul116 to i64
  store i64 %conv117, i64* %tdist, align 8
  %110 = load i64, i64* %tdist, align 8
  %111 = load i64, i64* %tdist, align 8
  %mul118 = mul nsw i64 %110, %111
  %112 = load i64, i64* %min_dist, align 8
  %add119 = add nsw i64 %112, %mul118
  store i64 %add119, i64* %min_dist, align 8
  %113 = load i32, i32* %x, align 4
  %114 = load i32, i32* %minc2.addr, align 4
  %sub120 = sub nsw i32 %113, %114
  %mul121 = mul nsw i32 %sub120, 1
  %conv122 = sext i32 %mul121 to i64
  store i64 %conv122, i64* %tdist, align 8
  %115 = load i64, i64* %tdist, align 8
  %116 = load i64, i64* %tdist, align 8
  %mul123 = mul nsw i64 %115, %116
  %117 = load i64, i64* %max_dist, align 8
  %add124 = add nsw i64 %117, %mul123
  store i64 %add124, i64* %max_dist, align 8
  br label %if.end.141

if.else.125:                                      ; preds = %if.else.111
  %118 = load i32, i32* %x, align 4
  %119 = load i32, i32* %centerc2, align 4
  %cmp126 = icmp sle i32 %118, %119
  br i1 %cmp126, label %if.then.128, label %if.else.134

if.then.128:                                      ; preds = %if.else.125
  %120 = load i32, i32* %x, align 4
  %121 = load i32, i32* %maxc2, align 4
  %sub129 = sub nsw i32 %120, %121
  %mul130 = mul nsw i32 %sub129, 1
  %conv131 = sext i32 %mul130 to i64
  store i64 %conv131, i64* %tdist, align 8
  %122 = load i64, i64* %tdist, align 8
  %123 = load i64, i64* %tdist, align 8
  %mul132 = mul nsw i64 %122, %123
  %124 = load i64, i64* %max_dist, align 8
  %add133 = add nsw i64 %124, %mul132
  store i64 %add133, i64* %max_dist, align 8
  br label %if.end.140

if.else.134:                                      ; preds = %if.else.125
  %125 = load i32, i32* %x, align 4
  %126 = load i32, i32* %minc2.addr, align 4
  %sub135 = sub nsw i32 %125, %126
  %mul136 = mul nsw i32 %sub135, 1
  %conv137 = sext i32 %mul136 to i64
  store i64 %conv137, i64* %tdist, align 8
  %127 = load i64, i64* %tdist, align 8
  %128 = load i64, i64* %tdist, align 8
  %mul138 = mul nsw i64 %127, %128
  %129 = load i64, i64* %max_dist, align 8
  %add139 = add nsw i64 %129, %mul138
  store i64 %add139, i64* %max_dist, align 8
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.134, %if.then.128
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %if.then.114
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.then.100
  %130 = load i64, i64* %min_dist, align 8
  %131 = load i32, i32* %i, align 4
  %idxprom143 = sext i32 %131 to i64
  %arrayidx144 = getelementptr inbounds [256 x i64], [256 x i64]* %mindist, i32 0, i64 %idxprom143
  store i64 %130, i64* %arrayidx144, align 8
  %132 = load i64, i64* %max_dist, align 8
  %133 = load i64, i64* %minmaxdist, align 8
  %cmp145 = icmp slt i64 %132, %133
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.end.142
  %134 = load i64, i64* %max_dist, align 8
  store i64 %134, i64* %minmaxdist, align 8
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %if.end.142
  br label %for.inc

for.inc:                                          ; preds = %if.end.148
  %135 = load i32, i32* %i, align 4
  %inc = add nsw i32 %135, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %ncolors, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.149

for.cond.149:                                     ; preds = %for.inc.163, %for.end
  %136 = load i32, i32* %i, align 4
  %137 = load i32, i32* %numcolors, align 4
  %cmp150 = icmp slt i32 %136, %137
  br i1 %cmp150, label %for.body.152, label %for.end.165

for.body.152:                                     ; preds = %for.cond.149
  %138 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %138 to i64
  %arrayidx154 = getelementptr inbounds [256 x i64], [256 x i64]* %mindist, i32 0, i64 %idxprom153
  %139 = load i64, i64* %arrayidx154, align 8
  %140 = load i64, i64* %minmaxdist, align 8
  %cmp155 = icmp sle i64 %139, %140
  br i1 %cmp155, label %if.then.157, label %if.end.162

if.then.157:                                      ; preds = %for.body.152
  %141 = load i32, i32* %i, align 4
  %conv158 = trunc i32 %141 to i8
  %142 = load i32, i32* %ncolors, align 4
  %inc159 = add nsw i32 %142, 1
  store i32 %inc159, i32* %ncolors, align 4
  %idxprom160 = sext i32 %142 to i64
  %143 = load i8*, i8** %colorlist.addr, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %143, i64 %idxprom160
  store i8 %conv158, i8* %arrayidx161, align 1
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.157, %for.body.152
  br label %for.inc.163

for.inc.163:                                      ; preds = %if.end.162
  %144 = load i32, i32* %i, align 4
  %inc164 = add nsw i32 %144, 1
  store i32 %inc164, i32* %i, align 4
  br label %for.cond.149

for.end.165:                                      ; preds = %for.cond.149
  %145 = load i32, i32* %ncolors, align 4
  ret i32 %145
}

; Function Attrs: nounwind uwtable
define internal void @find_best_colors(%struct.jpeg_decompress_struct* %cinfo, i32 %minc0, i32 %minc1, i32 %minc2, i32 %numcolors, i8* %colorlist, i8* %bestcolor) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %minc0.addr = alloca i32, align 4
  %minc1.addr = alloca i32, align 4
  %minc2.addr = alloca i32, align 4
  %numcolors.addr = alloca i32, align 4
  %colorlist.addr = alloca i8*, align 8
  %bestcolor.addr = alloca i8*, align 8
  %ic0 = alloca i32, align 4
  %ic1 = alloca i32, align 4
  %ic2 = alloca i32, align 4
  %i = alloca i32, align 4
  %icolor = alloca i32, align 4
  %bptr = alloca i64*, align 8
  %cptr = alloca i8*, align 8
  %dist0 = alloca i64, align 8
  %dist1 = alloca i64, align 8
  %dist2 = alloca i64, align 8
  %xx0 = alloca i64, align 8
  %xx1 = alloca i64, align 8
  %xx2 = alloca i64, align 8
  %inc0 = alloca i64, align 8
  %inc1 = alloca i64, align 8
  %inc2 = alloca i64, align 8
  %bestdist = alloca [128 x i64], align 16
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store i32 %minc0, i32* %minc0.addr, align 4
  store i32 %minc1, i32* %minc1.addr, align 4
  store i32 %minc2, i32* %minc2.addr, align 4
  store i32 %numcolors, i32* %numcolors.addr, align 4
  store i8* %colorlist, i8** %colorlist.addr, align 8
  store i8* %bestcolor, i8** %bestcolor.addr, align 8
  %arraydecay = getelementptr inbounds [128 x i64], [128 x i64]* %bestdist, i32 0, i32 0
  store i64* %arraydecay, i64** %bptr, align 8
  store i32 127, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64*, i64** %bptr, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %1, i32 1
  store i64* %incdec.ptr, i64** %bptr, align 8
  store i64 2147483647, i64* %1, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.68, %for.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %numcolors.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end.69

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %colorlist.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  store i32 %conv, i32* %icolor, align 4
  %8 = load i32, i32* %minc0.addr, align 4
  %9 = load i32, i32* %icolor, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 32
  %11 = load i8**, i8*** %colormap, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %11, i64 0
  %12 = load i8*, i8** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %12, i64 %idxprom4
  %13 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %13 to i32
  %sub = sub nsw i32 %8, %conv7
  %mul = mul nsw i32 %sub, 2
  %conv8 = sext i32 %mul to i64
  store i64 %conv8, i64* %inc0, align 8
  %14 = load i64, i64* %inc0, align 8
  %15 = load i64, i64* %inc0, align 8
  %mul9 = mul nsw i64 %14, %15
  store i64 %mul9, i64* %dist0, align 8
  %16 = load i32, i32* %minc1.addr, align 4
  %17 = load i32, i32* %icolor, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 32
  %19 = load i8**, i8*** %colormap11, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %19, i64 1
  %20 = load i8*, i8** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %20, i64 %idxprom10
  %21 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %21 to i32
  %sub15 = sub nsw i32 %16, %conv14
  %mul16 = mul nsw i32 %sub15, 3
  %conv17 = sext i32 %mul16 to i64
  store i64 %conv17, i64* %inc1, align 8
  %22 = load i64, i64* %inc1, align 8
  %23 = load i64, i64* %inc1, align 8
  %mul18 = mul nsw i64 %22, %23
  %24 = load i64, i64* %dist0, align 8
  %add = add nsw i64 %24, %mul18
  store i64 %add, i64* %dist0, align 8
  %25 = load i32, i32* %minc2.addr, align 4
  %26 = load i32, i32* %icolor, align 4
  %idxprom19 = sext i32 %26 to i64
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %colormap20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 32
  %28 = load i8**, i8*** %colormap20, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %28, i64 2
  %29 = load i8*, i8** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %29, i64 %idxprom19
  %30 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %30 to i32
  %sub24 = sub nsw i32 %25, %conv23
  %mul25 = mul nsw i32 %sub24, 1
  %conv26 = sext i32 %mul25 to i64
  store i64 %conv26, i64* %inc2, align 8
  %31 = load i64, i64* %inc2, align 8
  %32 = load i64, i64* %inc2, align 8
  %mul27 = mul nsw i64 %31, %32
  %33 = load i64, i64* %dist0, align 8
  %add28 = add nsw i64 %33, %mul27
  store i64 %add28, i64* %dist0, align 8
  %34 = load i64, i64* %inc0, align 8
  %mul29 = mul nsw i64 %34, 32
  %add30 = add nsw i64 %mul29, 256
  store i64 %add30, i64* %inc0, align 8
  %35 = load i64, i64* %inc1, align 8
  %mul31 = mul nsw i64 %35, 24
  %add32 = add nsw i64 %mul31, 144
  store i64 %add32, i64* %inc1, align 8
  %36 = load i64, i64* %inc2, align 8
  %mul33 = mul nsw i64 %36, 16
  %add34 = add nsw i64 %mul33, 64
  store i64 %add34, i64* %inc2, align 8
  %arraydecay35 = getelementptr inbounds [128 x i64], [128 x i64]* %bestdist, i32 0, i32 0
  store i64* %arraydecay35, i64** %bptr, align 8
  %37 = load i8*, i8** %bestcolor.addr, align 8
  store i8* %37, i8** %cptr, align 8
  %38 = load i64, i64* %inc0, align 8
  store i64 %38, i64* %xx0, align 8
  store i32 3, i32* %ic0, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.65, %for.body.3
  %39 = load i32, i32* %ic0, align 4
  %cmp37 = icmp sge i32 %39, 0
  br i1 %cmp37, label %for.body.39, label %for.end.67

for.body.39:                                      ; preds = %for.cond.36
  %40 = load i64, i64* %dist0, align 8
  store i64 %40, i64* %dist1, align 8
  %41 = load i64, i64* %inc1, align 8
  store i64 %41, i64* %xx1, align 8
  store i32 7, i32* %ic1, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.60, %for.body.39
  %42 = load i32, i32* %ic1, align 4
  %cmp41 = icmp sge i32 %42, 0
  br i1 %cmp41, label %for.body.43, label %for.end.62

for.body.43:                                      ; preds = %for.cond.40
  %43 = load i64, i64* %dist1, align 8
  store i64 %43, i64* %dist2, align 8
  %44 = load i64, i64* %inc2, align 8
  store i64 %44, i64* %xx2, align 8
  store i32 3, i32* %ic2, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.55, %for.body.43
  %45 = load i32, i32* %ic2, align 4
  %cmp45 = icmp sge i32 %45, 0
  br i1 %cmp45, label %for.body.47, label %for.end.57

for.body.47:                                      ; preds = %for.cond.44
  %46 = load i64, i64* %dist2, align 8
  %47 = load i64*, i64** %bptr, align 8
  %48 = load i64, i64* %47, align 8
  %cmp48 = icmp slt i64 %46, %48
  br i1 %cmp48, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.47
  %49 = load i64, i64* %dist2, align 8
  %50 = load i64*, i64** %bptr, align 8
  store i64 %49, i64* %50, align 8
  %51 = load i32, i32* %icolor, align 4
  %conv50 = trunc i32 %51 to i8
  %52 = load i8*, i8** %cptr, align 8
  store i8 %conv50, i8* %52, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.47
  %53 = load i64, i64* %xx2, align 8
  %54 = load i64, i64* %dist2, align 8
  %add51 = add nsw i64 %54, %53
  store i64 %add51, i64* %dist2, align 8
  %55 = load i64, i64* %xx2, align 8
  %add52 = add nsw i64 %55, 128
  store i64 %add52, i64* %xx2, align 8
  %56 = load i64*, i64** %bptr, align 8
  %incdec.ptr53 = getelementptr inbounds i64, i64* %56, i32 1
  store i64* %incdec.ptr53, i64** %bptr, align 8
  %57 = load i8*, i8** %cptr, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr54, i8** %cptr, align 8
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end
  %58 = load i32, i32* %ic2, align 4
  %dec56 = add nsw i32 %58, -1
  store i32 %dec56, i32* %ic2, align 4
  br label %for.cond.44

for.end.57:                                       ; preds = %for.cond.44
  %59 = load i64, i64* %xx1, align 8
  %60 = load i64, i64* %dist1, align 8
  %add58 = add nsw i64 %60, %59
  store i64 %add58, i64* %dist1, align 8
  %61 = load i64, i64* %xx1, align 8
  %add59 = add nsw i64 %61, 288
  store i64 %add59, i64* %xx1, align 8
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.end.57
  %62 = load i32, i32* %ic1, align 4
  %dec61 = add nsw i32 %62, -1
  store i32 %dec61, i32* %ic1, align 4
  br label %for.cond.40

for.end.62:                                       ; preds = %for.cond.40
  %63 = load i64, i64* %xx0, align 8
  %64 = load i64, i64* %dist0, align 8
  %add63 = add nsw i64 %64, %63
  store i64 %add63, i64* %dist0, align 8
  %65 = load i64, i64* %xx0, align 8
  %add64 = add nsw i64 %65, 512
  store i64 %add64, i64* %xx0, align 8
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.end.62
  %66 = load i32, i32* %ic0, align 4
  %dec66 = add nsw i32 %66, -1
  store i32 %dec66, i32* %ic0, align 4
  br label %for.cond.36

for.end.67:                                       ; preds = %for.cond.36
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.end.67
  %67 = load i32, i32* %i, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end.69:                                       ; preds = %for.cond.1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
