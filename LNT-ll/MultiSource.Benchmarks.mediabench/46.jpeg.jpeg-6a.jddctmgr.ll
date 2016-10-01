; ModuleID = './MultiSource.Benchmarks.mediabench/46.jpeg.jpeg-6a.jddctmgr.bc'
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
%struct.my_idct_controller = type { %struct.jpeg_inverse_dct, [10 x i32] }

@start_pass.aanscales = internal constant [64 x i16] [i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 22725, i16 31521, i16 29692, i16 26722, i16 22725, i16 17855, i16 12299, i16 6270, i16 21407, i16 29692, i16 27969, i16 25172, i16 21407, i16 16819, i16 11585, i16 5906, i16 19266, i16 26722, i16 25172, i16 22654, i16 19266, i16 15137, i16 10426, i16 5315, i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 12873, i16 17855, i16 16819, i16 15137, i16 12873, i16 10114, i16 6967, i16 3552, i16 8867, i16 12299, i16 11585, i16 10426, i16 8867, i16 6967, i16 4799, i16 2446, i16 4520, i16 6270, i16 5906, i16 5315, i16 4520, i16 3552, i16 2446, i16 1247], align 16
@start_pass.aanscalefactor = internal constant [8 x double] [double 1.000000e+00, double 0x3FF63150B14861EF, double 0x3FF4E7AE914D6FCA, double 0x3FF2D062EF6C11AA, double 1.000000e+00, double 0x3FE92469C0A7BF3B, double 5.411961e-01, double 0x3FD1A855DE72AB5D], align 16

; Function Attrs: nounwind uwtable
define void @jinit_inverse_dct(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %idct = alloca %struct.my_idct_controller*, align 8
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_decompress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 128)
  %5 = bitcast i8* %call to %struct.my_idct_controller*
  store %struct.my_idct_controller* %5, %struct.my_idct_controller** %idct, align 8
  %6 = load %struct.my_idct_controller*, %struct.my_idct_controller** %idct, align 8
  %7 = bitcast %struct.my_idct_controller* %6 to %struct.jpeg_inverse_dct*
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %idct1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 80
  store %struct.jpeg_inverse_dct* %7, %struct.jpeg_inverse_dct** %idct1, align 8
  %9 = load %struct.my_idct_controller*, %struct.my_idct_controller** %idct, align 8
  %pub = getelementptr inbounds %struct.my_idct_controller, %struct.my_idct_controller* %9, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_inverse_dct, %struct.jpeg_inverse_dct* %pub, i32 0, i32 0
  %start_pass2 = bitcast {}** %start_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @start_pass, void (%struct.jpeg_decompress_struct*)** %start_pass2, align 8
  store i32 0, i32* %ci, align 4
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 43
  %11 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %11, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %ci, align 4
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 8
  %14 = load i32, i32* %num_components, align 4
  %cmp = icmp slt i32 %12, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 1
  %16 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem3, align 8
  %alloc_small4 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %16, i32 0, i32 0
  %17 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small4, align 8
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %19 = bitcast %struct.jpeg_decompress_struct* %18 to %struct.jpeg_common_struct*
  %call5 = call i8* %17(%struct.jpeg_common_struct* %19, i32 1, i64 256)
  %20 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %20, i32 0, i32 20
  store i8* %call5, i8** %dct_table, align 8
  %21 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %dct_table6 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %21, i32 0, i32 20
  %22 = load i8*, i8** %dct_table6, align 8
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 256, i32 1, i1 false)
  %23 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load %struct.my_idct_controller*, %struct.my_idct_controller** %idct, align 8
  %cur_method = getelementptr inbounds %struct.my_idct_controller, %struct.my_idct_controller* %24, i32 0, i32 1
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %cur_method, i32 0, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %ci, align 4
  %26 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %26, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %idct = alloca %struct.my_idct_controller*, align 8
  %ci = alloca i32, align 4
  %i = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %method = alloca i32, align 4
  %method_ptr = alloca void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, align 8
  %qtbl = alloca %struct.JQUANT_TBL*, align 8
  %ismtbl = alloca i32*, align 8
  %ifmtbl = alloca i32*, align 8
  %fmtbl = alloca float*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %idct1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 80
  %1 = load %struct.jpeg_inverse_dct*, %struct.jpeg_inverse_dct** %idct1, align 8
  %2 = bitcast %struct.jpeg_inverse_dct* %1 to %struct.my_idct_controller*
  store %struct.my_idct_controller* %2, %struct.my_idct_controller** %idct, align 8
  store i32 0, i32* %method, align 4
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* null, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %method_ptr, align 8
  store i32 0, i32* %ci, align 4
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 43
  %4 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8
  store %struct.jpeg_component_info* %4, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.91, %entry
  %5 = load i32, i32* %ci, align 4
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 8
  %7 = load i32, i32* %num_components, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end.93

for.body:                                         ; preds = %for.cond
  %8 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %8, i32 0, i32 9
  %9 = load i32, i32* %DCT_scaled_size, align 4
  switch i32 %9, label %sw.default.9 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 4, label %sw.bb.3
    i32 8, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %for.body
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* @jpeg_idct_1x1, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %method_ptr, align 8
  store i32 0, i32* %method, align 4
  br label %sw.epilog.17

sw.bb.2:                                          ; preds = %for.body
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* @jpeg_idct_2x2, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %method_ptr, align 8
  store i32 0, i32* %method, align 4
  br label %sw.epilog.17

sw.bb.3:                                          ; preds = %for.body
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* @jpeg_idct_4x4, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %method_ptr, align 8
  store i32 0, i32* %method, align 4
  br label %sw.epilog.17

sw.bb.4:                                          ; preds = %for.body
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %dct_method = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 16
  %11 = load i32, i32* %dct_method, align 4
  switch i32 %11, label %sw.default [
    i32 0, label %sw.bb.5
    i32 1, label %sw.bb.6
    i32 2, label %sw.bb.7
  ]

sw.bb.5:                                          ; preds = %sw.bb.4
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* @jpeg_idct_islow, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %method_ptr, align 8
  store i32 0, i32* %method, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %sw.bb.4
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* @jpeg_idct_ifast, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %method_ptr, align 8
  store i32 1, i32* %method, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %sw.bb.4
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* @jpeg_idct_float, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %method_ptr, align 8
  store i32 2, i32* %method, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.4
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 5
  store i32 47, i32* %msg_code, align 4
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 0
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %18 = bitcast %struct.jpeg_decompress_struct* %17 to %struct.jpeg_common_struct*
  call void %16(%struct.jpeg_common_struct* %18)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.7, %sw.bb.6, %sw.bb.5
  br label %sw.epilog.17

sw.default.9:                                     ; preds = %for.body
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8
  %msg_code11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 5
  store i32 6, i32* %msg_code11, align 4
  %21 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %DCT_scaled_size12 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %21, i32 0, i32 9
  %22 = load i32, i32* %DCT_scaled_size12, align 4
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i32 0, i32 6
  %i14 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i14, i32 0, i64 0
  store i32 %22, i32* %arrayidx, align 4
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err15, align 8
  %error_exit16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i32 0, i32 0
  %27 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit16, align 8
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %29 = bitcast %struct.jpeg_decompress_struct* %28 to %struct.jpeg_common_struct*
  call void %27(%struct.jpeg_common_struct* %29)
  br label %sw.epilog.17

sw.epilog.17:                                     ; preds = %sw.default.9, %sw.epilog, %sw.bb.3, %sw.bb.2, %sw.bb
  %30 = load void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %method_ptr, align 8
  %31 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %31 to i64
  %32 = load %struct.my_idct_controller*, %struct.my_idct_controller** %idct, align 8
  %pub = getelementptr inbounds %struct.my_idct_controller, %struct.my_idct_controller* %32, i32 0, i32 0
  %inverse_DCT = getelementptr inbounds %struct.jpeg_inverse_dct, %struct.jpeg_inverse_dct* %pub, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*]* %inverse_DCT, i32 0, i64 %idxprom
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* %30, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %arrayidx18, align 8
  %33 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %33, i32 0, i32 12
  %34 = load i32, i32* %component_needed, align 4
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %sw.epilog.17
  %35 = load i32, i32* %ci, align 4
  %idxprom19 = sext i32 %35 to i64
  %36 = load %struct.my_idct_controller*, %struct.my_idct_controller** %idct, align 8
  %cur_method = getelementptr inbounds %struct.my_idct_controller, %struct.my_idct_controller* %36, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [10 x i32], [10 x i32]* %cur_method, i32 0, i64 %idxprom19
  %37 = load i32, i32* %arrayidx20, align 4
  %38 = load i32, i32* %method, align 4
  %cmp21 = icmp eq i32 %37, %38
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.epilog.17
  br label %for.inc.91

if.end:                                           ; preds = %lor.lhs.false
  %39 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %39, i32 0, i32 19
  %40 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %quant_table, align 8
  store %struct.JQUANT_TBL* %40, %struct.JQUANT_TBL** %qtbl, align 8
  %41 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8
  %cmp22 = icmp eq %struct.JQUANT_TBL* %41, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end
  br label %for.inc.91

if.end.24:                                        ; preds = %if.end
  %42 = load i32, i32* %method, align 4
  %43 = load i32, i32* %ci, align 4
  %idxprom25 = sext i32 %43 to i64
  %44 = load %struct.my_idct_controller*, %struct.my_idct_controller** %idct, align 8
  %cur_method26 = getelementptr inbounds %struct.my_idct_controller, %struct.my_idct_controller* %44, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [10 x i32], [10 x i32]* %cur_method26, i32 0, i64 %idxprom25
  store i32 %42, i32* %arrayidx27, align 4
  %45 = load i32, i32* %method, align 4
  switch i32 %45, label %sw.default.85 [
    i32 0, label %sw.bb.28
    i32 1, label %sw.bb.36
    i32 2, label %sw.bb.55
  ]

sw.bb.28:                                         ; preds = %if.end.24
  %46 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %46, i32 0, i32 20
  %47 = load i8*, i8** %dct_table, align 8
  %48 = bitcast i8* %47 to i32*
  store i32* %48, i32** %ismtbl, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc, %sw.bb.28
  %49 = load i32, i32* %i, align 4
  %cmp30 = icmp slt i32 %49, 64
  br i1 %cmp30, label %for.body.31, label %for.end

for.body.31:                                      ; preds = %for.cond.29
  %50 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %50 to i64
  %51 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %51, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval, i32 0, i64 %idxprom32
  %52 = load i16, i16* %arrayidx33, align 2
  %conv = zext i16 %52 to i32
  %53 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %53 to i64
  %54 = load i32*, i32** %ismtbl, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %54, i64 %idxprom34
  store i32 %conv, i32* %arrayidx35, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.31
  %55 = load i32, i32* %i, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.29

for.end:                                          ; preds = %for.cond.29
  br label %sw.epilog.90

sw.bb.36:                                         ; preds = %if.end.24
  %56 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %dct_table37 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %56, i32 0, i32 20
  %57 = load i8*, i8** %dct_table37, align 8
  %58 = bitcast i8* %57 to i32*
  store i32* %58, i32** %ifmtbl, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.52, %sw.bb.36
  %59 = load i32, i32* %i, align 4
  %cmp39 = icmp slt i32 %59, 64
  br i1 %cmp39, label %for.body.41, label %for.end.54

for.body.41:                                      ; preds = %for.cond.38
  %60 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %60 to i64
  %61 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8
  %quantval43 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %61, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval43, i32 0, i64 %idxprom42
  %62 = load i16, i16* %arrayidx44, align 2
  %conv45 = zext i16 %62 to i64
  %63 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %63 to i64
  %arrayidx47 = getelementptr inbounds [64 x i16], [64 x i16]* @start_pass.aanscales, i32 0, i64 %idxprom46
  %64 = load i16, i16* %arrayidx47, align 2
  %conv48 = sext i16 %64 to i64
  %mul = mul nsw i64 %conv45, %conv48
  %add = add nsw i64 %mul, 2048
  %shr = ashr i64 %add, 12
  %conv49 = trunc i64 %shr to i32
  %65 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %65 to i64
  %66 = load i32*, i32** %ifmtbl, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %66, i64 %idxprom50
  store i32 %conv49, i32* %arrayidx51, align 4
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.41
  %67 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %67, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.38

for.end.54:                                       ; preds = %for.cond.38
  br label %sw.epilog.90

sw.bb.55:                                         ; preds = %if.end.24
  %68 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %dct_table56 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %68, i32 0, i32 20
  %69 = load i8*, i8** %dct_table56, align 8
  %70 = bitcast i8* %69 to float*
  store float* %70, float** %fmtbl, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %row, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.82, %sw.bb.55
  %71 = load i32, i32* %row, align 4
  %cmp58 = icmp slt i32 %71, 8
  br i1 %cmp58, label %for.body.60, label %for.end.84

for.body.60:                                      ; preds = %for.cond.57
  store i32 0, i32* %col, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.79, %for.body.60
  %72 = load i32, i32* %col, align 4
  %cmp62 = icmp slt i32 %72, 8
  br i1 %cmp62, label %for.body.64, label %for.end.81

for.body.64:                                      ; preds = %for.cond.61
  %73 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %73 to i64
  %74 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8
  %quantval66 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %74, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval66, i32 0, i64 %idxprom65
  %75 = load i16, i16* %arrayidx67, align 2
  %conv68 = uitofp i16 %75 to double
  %76 = load i32, i32* %row, align 4
  %idxprom69 = sext i32 %76 to i64
  %arrayidx70 = getelementptr inbounds [8 x double], [8 x double]* @start_pass.aanscalefactor, i32 0, i64 %idxprom69
  %77 = load double, double* %arrayidx70, align 8
  %mul71 = fmul double %conv68, %77
  %78 = load i32, i32* %col, align 4
  %idxprom72 = sext i32 %78 to i64
  %arrayidx73 = getelementptr inbounds [8 x double], [8 x double]* @start_pass.aanscalefactor, i32 0, i64 %idxprom72
  %79 = load double, double* %arrayidx73, align 8
  %mul74 = fmul double %mul71, %79
  %conv75 = fptrunc double %mul74 to float
  %80 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %80 to i64
  %81 = load float*, float** %fmtbl, align 8
  %arrayidx77 = getelementptr inbounds float, float* %81, i64 %idxprom76
  store float %conv75, float* %arrayidx77, align 4
  %82 = load i32, i32* %i, align 4
  %inc78 = add nsw i32 %82, 1
  store i32 %inc78, i32* %i, align 4
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.body.64
  %83 = load i32, i32* %col, align 4
  %inc80 = add nsw i32 %83, 1
  store i32 %inc80, i32* %col, align 4
  br label %for.cond.61

for.end.81:                                       ; preds = %for.cond.61
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.end.81
  %84 = load i32, i32* %row, align 4
  %inc83 = add nsw i32 %84, 1
  store i32 %inc83, i32* %row, align 4
  br label %for.cond.57

for.end.84:                                       ; preds = %for.cond.57
  br label %sw.epilog.90

sw.default.85:                                    ; preds = %if.end.24
  %85 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err86 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %85, i32 0, i32 0
  %86 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err86, align 8
  %msg_code87 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %86, i32 0, i32 5
  store i32 47, i32* %msg_code87, align 4
  %87 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err88 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %87, i32 0, i32 0
  %88 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err88, align 8
  %error_exit89 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %88, i32 0, i32 0
  %89 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit89, align 8
  %90 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %91 = bitcast %struct.jpeg_decompress_struct* %90 to %struct.jpeg_common_struct*
  call void %89(%struct.jpeg_common_struct* %91)
  br label %sw.epilog.90

sw.epilog.90:                                     ; preds = %sw.default.85, %for.end.84, %for.end.54, %for.end
  br label %for.inc.91

for.inc.91:                                       ; preds = %sw.epilog.90, %if.then.23, %if.then
  %92 = load i32, i32* %ci, align 4
  %inc92 = add nsw i32 %92, 1
  store i32 %inc92, i32* %ci, align 4
  %93 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %93, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8
  br label %for.cond

for.end.93:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare void @jpeg_idct_1x1(%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32) #2

declare void @jpeg_idct_2x2(%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32) #2

declare void @jpeg_idct_4x4(%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32) #2

declare void @jpeg_idct_islow(%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32) #2

declare void @jpeg_idct_ifast(%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32) #2

declare void @jpeg_idct_float(%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
