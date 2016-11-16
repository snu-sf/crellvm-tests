; ModuleID = './jdhuff.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32, %struct.jpeg_source_mgr*, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, i32, i32, i32, [64 x i32]*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], i32, %struct.jpeg_component_info*, i32, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i8, i8, i16, i16, i32, i8, i32, i32, %struct.jpeg_marker_struct*, i32, i32, i32, i32, i32, i8*, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [64 x i32], i32, i32, i32, i32, i32, i32*, i32, i32, %struct.jpeg_decomp_master*, %struct.jpeg_d_main_controller*, %struct.jpeg_d_coef_controller*, %struct.jpeg_d_post_controller*, %struct.jpeg_input_controller*, %struct.jpeg_marker_reader*, %struct.jpeg_entropy_decoder*, %struct.jpeg_inverse_dct*, %struct.jpeg_upsampler*, %struct.jpeg_color_deconverter*, %struct.jpeg_color_quantizer* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_source_mgr = type { i8*, i64, {}*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, {}* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.jpeg_marker_struct = type { %struct.jpeg_marker_struct*, i8, i32, i32, i8* }
%struct.jpeg_decomp_master = type { {}*, {}*, i32 }
%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
%struct.jpeg_d_coef_controller = type { {}*, i32 (%struct.jpeg_decompress_struct*)*, {}*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
%struct.jpeg_input_controller = type { i32 (%struct.jpeg_decompress_struct*)*, {}*, {}*, {}*, i32, i32 }
%struct.jpeg_marker_reader = type { {}*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32, i32, i32, i32 }
%struct.jpeg_entropy_decoder = type { {}*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)*, {}* }
%struct.jpeg_inverse_dct = type { {}*, [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*] }
%struct.jpeg_upsampler = type { {}*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, i32 }
%struct.jpeg_color_deconverter = type { {}*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* }
%struct.jpeg_color_quantizer = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, {}*, {}* }
%struct.huff_entropy_decoder = type { %struct.jpeg_entropy_decoder, %struct.bitread_perm_state, %struct.savable_state, i32, i32, [4 x %struct.d_derived_tbl*], %struct.d_derived_tbl*, [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*], [64 x %struct.d_derived_tbl*], [64 x %struct.d_derived_tbl*], [64 x i32] }
%struct.bitread_perm_state = type { i64, i32 }
%struct.savable_state = type { i32, [4 x i32] }
%struct.d_derived_tbl = type { [18 x i64], [17 x i64], %struct.JHUFF_TBL*, [256 x i32], [256 x i8] }
%struct.bitread_working_state = type { i8*, i64, i64, i32, %struct.jpeg_decompress_struct* }

@jpeg_zigzag_order2 = internal constant [2 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 2, i32 3]], align 16
@jpeg_zigzag_order3 = internal constant [3 x [3 x i32]] [[3 x i32] [i32 0, i32 1, i32 5], [3 x i32] [i32 2, i32 4, i32 6], [3 x i32] [i32 3, i32 7, i32 8]], align 16
@jpeg_zigzag_order4 = internal constant [4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 5, i32 6], [4 x i32] [i32 2, i32 4, i32 7, i32 12], [4 x i32] [i32 3, i32 8, i32 11, i32 13], [4 x i32] [i32 9, i32 10, i32 14, i32 15]], align 16
@jpeg_zigzag_order5 = internal constant [5 x [5 x i32]] [[5 x i32] [i32 0, i32 1, i32 5, i32 6, i32 14], [5 x i32] [i32 2, i32 4, i32 7, i32 13, i32 15], [5 x i32] [i32 3, i32 8, i32 12, i32 16, i32 21], [5 x i32] [i32 9, i32 11, i32 17, i32 20, i32 22], [5 x i32] [i32 10, i32 18, i32 19, i32 23, i32 24]], align 16
@jpeg_zigzag_order6 = internal constant [6 x [6 x i32]] [[6 x i32] [i32 0, i32 1, i32 5, i32 6, i32 14, i32 15], [6 x i32] [i32 2, i32 4, i32 7, i32 13, i32 16, i32 25], [6 x i32] [i32 3, i32 8, i32 12, i32 17, i32 24, i32 26], [6 x i32] [i32 9, i32 11, i32 18, i32 23, i32 27, i32 32], [6 x i32] [i32 10, i32 19, i32 22, i32 28, i32 31, i32 33], [6 x i32] [i32 20, i32 21, i32 29, i32 30, i32 34, i32 35]], align 16
@jpeg_zigzag_order7 = internal constant [7 x [7 x i32]] [[7 x i32] [i32 0, i32 1, i32 5, i32 6, i32 14, i32 15, i32 27], [7 x i32] [i32 2, i32 4, i32 7, i32 13, i32 16, i32 26, i32 28], [7 x i32] [i32 3, i32 8, i32 12, i32 17, i32 25, i32 29, i32 38], [7 x i32] [i32 9, i32 11, i32 18, i32 24, i32 30, i32 37, i32 39], [7 x i32] [i32 10, i32 19, i32 23, i32 31, i32 36, i32 40, i32 45], [7 x i32] [i32 20, i32 22, i32 32, i32 35, i32 41, i32 44, i32 46], [7 x i32] [i32 21, i32 33, i32 34, i32 42, i32 43, i32 47, i32 48]], align 16
@jpeg_zigzag_order = internal constant [8 x [8 x i32]] [[8 x i32] [i32 0, i32 1, i32 5, i32 6, i32 14, i32 15, i32 27, i32 28], [8 x i32] [i32 2, i32 4, i32 7, i32 13, i32 16, i32 26, i32 29, i32 42], [8 x i32] [i32 3, i32 8, i32 12, i32 17, i32 25, i32 30, i32 41, i32 43], [8 x i32] [i32 9, i32 11, i32 18, i32 24, i32 31, i32 40, i32 44, i32 53], [8 x i32] [i32 10, i32 19, i32 23, i32 32, i32 39, i32 45, i32 52, i32 54], [8 x i32] [i32 20, i32 22, i32 33, i32 38, i32 46, i32 51, i32 55, i32 60], [8 x i32] [i32 21, i32 34, i32 37, i32 47, i32 50, i32 56, i32 59, i32 61], [8 x i32] [i32 35, i32 36, i32 48, i32 49, i32 57, i32 58, i32 62, i32 63]], align 16
@bmask = internal constant [16 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767], align 16
@jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: nounwind uwtable
define void @jinit_huff_decoder(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %entropy = alloca %struct.huff_entropy_decoder*, align 8
  %i = alloca i32, align 4
  %coef_bit_ptr = alloca i32*, align 8
  %ci = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.huff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !5
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i32 0, i32 0
  %4 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !10
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %6 = bitcast %struct.jpeg_decompress_struct* %5 to %struct.jpeg_common_struct*
  %call = call i8* %4(%struct.jpeg_common_struct* %6, i32 1, i64 1456) #3
  %7 = bitcast i8* %call to %struct.huff_entropy_decoder*
  store %struct.huff_entropy_decoder* %7, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %8 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %8, i32 0, i32 0
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 89
  store %struct.jpeg_entropy_decoder* %pub, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !13
  %10 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %pub2 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %10, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub2, i32 0, i32 0
  %start_pass3 = bitcast {}** %start_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @start_pass_huff_decoder, void (%struct.jpeg_decompress_struct*)** %start_pass3, align 8, !tbaa !14
  %11 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %pub4 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %11, i32 0, i32 0
  %finish_pass = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub4, i32 0, i32 2
  %finish_pass5 = bitcast {}** %finish_pass to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @finish_pass_huff, void (%struct.jpeg_decompress_struct*)** %finish_pass5, align 8, !tbaa !19
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 46
  %13 = load i32, i32* %progressive_mode, align 4, !tbaa !20
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = bitcast i32** %coef_bit_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 1
  %17 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem6, align 8, !tbaa !5
  %alloc_small7 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %17, i32 0, i32 0
  %18 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small7, align 8, !tbaa !10
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %20 = bitcast %struct.jpeg_decompress_struct* %19 to %struct.jpeg_common_struct*
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 9
  %22 = load i32, i32* %num_components, align 4, !tbaa !21
  %mul = mul nsw i32 %22, 64
  %conv = sext i32 %mul to i64
  %mul8 = mul i64 %conv, 4
  %call9 = call i8* %18(%struct.jpeg_common_struct* %20, i32 1, i64 %mul8) #3
  %23 = bitcast i8* %call9 to [64 x i32]*
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %coef_bits = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 39
  store [64 x i32]* %23, [64 x i32]** %coef_bits, align 8, !tbaa !22
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %coef_bits10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 39
  %26 = load [64 x i32]*, [64 x i32]** %coef_bits10, align 8, !tbaa !22
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %26, i64 0
  %arrayidx11 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx, i32 0, i64 0
  store i32* %arrayidx11, i32** %coef_bit_ptr, align 8, !tbaa !1
  store i32 0, i32* %ci, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %if.then
  %27 = load i32, i32* %ci, align 4, !tbaa !23
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %num_components12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 9
  %29 = load i32, i32* %num_components12, align 4, !tbaa !21
  %cmp = icmp slt i32 %27, %29
  br i1 %cmp, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body
  %30 = load i32, i32* %i, align 4, !tbaa !23
  %cmp15 = icmp slt i32 %30, 64
  br i1 %cmp15, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.14
  %31 = load i32*, i32** %coef_bit_ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %incdec.ptr, i32** %coef_bit_ptr, align 8, !tbaa !1
  store i32 -1, i32* %31, align 4, !tbaa !23
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %32 = load i32, i32* %i, align 4, !tbaa !23
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4, !tbaa !23
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %33 = load i32, i32* %ci, align 4, !tbaa !23
  %inc19 = add nsw i32 %33, 1
  store i32 %inc19, i32* %ci, align 4, !tbaa !23
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.26, %for.end.20
  %34 = load i32, i32* %i, align 4, !tbaa !23
  %cmp22 = icmp slt i32 %34, 4
  br i1 %cmp22, label %for.body.24, label %for.end.28

for.body.24:                                      ; preds = %for.cond.21
  %35 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom = sext i32 %35 to i64
  %36 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %derived_tbls = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %36, i32 0, i32 5
  %arrayidx25 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %derived_tbls, i32 0, i64 %idxprom
  store %struct.d_derived_tbl* null, %struct.d_derived_tbl** %arrayidx25, align 8, !tbaa !1
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.24
  %37 = load i32, i32* %i, align 4, !tbaa !23
  %inc27 = add nsw i32 %37, 1
  store i32 %inc27, i32* %i, align 4, !tbaa !23
  br label %for.cond.21

for.end.28:                                       ; preds = %for.cond.21
  %38 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32** %coef_bit_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.37, %if.else
  %40 = load i32, i32* %i, align 4, !tbaa !23
  %cmp30 = icmp slt i32 %40, 4
  br i1 %cmp30, label %for.body.32, label %for.end.39

for.body.32:                                      ; preds = %for.cond.29
  %41 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom33 = sext i32 %41 to i64
  %42 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %ac_derived_tbls = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %42, i32 0, i32 8
  %arrayidx34 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %ac_derived_tbls, i32 0, i64 %idxprom33
  store %struct.d_derived_tbl* null, %struct.d_derived_tbl** %arrayidx34, align 8, !tbaa !1
  %43 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom35 = sext i32 %43 to i64
  %44 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %dc_derived_tbls = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %44, i32 0, i32 7
  %arrayidx36 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %dc_derived_tbls, i32 0, i64 %idxprom35
  store %struct.d_derived_tbl* null, %struct.d_derived_tbl** %arrayidx36, align 8, !tbaa !1
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.32
  %45 = load i32, i32* %i, align 4, !tbaa !23
  %inc38 = add nsw i32 %45, 1
  store i32 %inc38, i32* %i, align 4, !tbaa !23
  br label %for.cond.29

for.end.39:                                       ; preds = %for.cond.29
  br label %if.end

if.end:                                           ; preds = %for.end.39, %for.end.28
  %46 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast %struct.huff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_huff_decoder(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %entropy = alloca %struct.huff_entropy_decoder*, align 8
  %ci = alloca i32, align 4
  %blkn = alloca i32, align 4
  %tbl = alloca i32, align 4
  %i = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %coefi = alloca i32, align 4
  %cindex = alloca i32, align 4
  %coef_bit_ptr = alloca i32*, align 8
  %expected = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.huff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 89
  %2 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_decoder* %2 to %struct.huff_entropy_decoder*
  store %struct.huff_entropy_decoder* %3, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 46
  %10 = load i32, i32* %progressive_mode, align 4, !tbaa !20
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.else.152

if.then:                                          ; preds = %entry
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 75
  %12 = load i32, i32* %Ss, align 4, !tbaa !24
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 76
  %14 = load i32, i32* %Se, align 4, !tbaa !25
  %cmp3 = icmp ne i32 %14, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.2
  br label %bad

if.end:                                           ; preds = %if.then.2
  br label %if.end.15

if.else:                                          ; preds = %if.then
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 76
  %16 = load i32, i32* %Se5, align 4, !tbaa !25
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 75
  %18 = load i32, i32* %Ss6, align 4, !tbaa !24
  %cmp7 = icmp slt i32 %16, %18
  br i1 %cmp7, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 76
  %20 = load i32, i32* %Se8, align 4, !tbaa !25
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 81
  %22 = load i32, i32* %lim_Se, align 4, !tbaa !26
  %cmp9 = icmp sgt i32 %20, %22
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %if.else
  br label %bad

if.end.11:                                        ; preds = %lor.lhs.false
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 69
  %24 = load i32, i32* %comps_in_scan, align 4, !tbaa !27
  %cmp12 = icmp ne i32 %24, 1
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  br label %bad

if.end.14:                                        ; preds = %if.end.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 77
  %26 = load i32, i32* %Ah, align 4, !tbaa !28
  %cmp16 = icmp ne i32 %26, 0
  br i1 %cmp16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.end.15
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 77
  %28 = load i32, i32* %Ah18, align 4, !tbaa !28
  %sub = sub nsw i32 %28, 1
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 78
  %30 = load i32, i32* %Al, align 4, !tbaa !29
  %cmp19 = icmp ne i32 %sub, %30
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.17
  br label %bad

if.end.21:                                        ; preds = %if.then.17
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.15
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 78
  %32 = load i32, i32* %Al23, align 4, !tbaa !29
  %cmp24 = icmp sgt i32 %32, 13
  br i1 %cmp24, label %if.then.25, label %if.end.45

if.then.25:                                       ; preds = %if.end.22
  br label %bad

bad:                                              ; preds = %if.then.25, %if.then.20, %if.then.13, %if.then.10, %if.then.4
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !30
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 5
  store i32 17, i32* %msg_code, align 4, !tbaa !31
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 75
  %36 = load i32, i32* %Ss26, align 4, !tbaa !24
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 0
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err27, align 8, !tbaa !30
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %38, i32 0, i32 6
  %i28 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i28, i32 0, i64 0
  store i32 %36, i32* %arrayidx, align 4, !tbaa !23
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 76
  %40 = load i32, i32* %Se29, align 4, !tbaa !25
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err30, align 8, !tbaa !30
  %msg_parm31 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i32 0, i32 6
  %i32 = bitcast %union.anon* %msg_parm31 to [8 x i32]*
  %arrayidx33 = getelementptr inbounds [8 x i32], [8 x i32]* %i32, i32 0, i64 1
  store i32 %40, i32* %arrayidx33, align 4, !tbaa !23
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 77
  %44 = load i32, i32* %Ah34, align 4, !tbaa !28
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 0
  %46 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err35, align 8, !tbaa !30
  %msg_parm36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %46, i32 0, i32 6
  %i37 = bitcast %union.anon* %msg_parm36 to [8 x i32]*
  %arrayidx38 = getelementptr inbounds [8 x i32], [8 x i32]* %i37, i32 0, i64 2
  store i32 %44, i32* %arrayidx38, align 4, !tbaa !23
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 78
  %48 = load i32, i32* %Al39, align 4, !tbaa !29
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err40 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 0
  %50 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err40, align 8, !tbaa !30
  %msg_parm41 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %50, i32 0, i32 6
  %i42 = bitcast %union.anon* %msg_parm41 to [8 x i32]*
  %arrayidx43 = getelementptr inbounds [8 x i32], [8 x i32]* %i42, i32 0, i64 3
  store i32 %48, i32* %arrayidx43, align 4, !tbaa !23
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 0
  %52 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err44, align 8, !tbaa !30
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %52, i32 0, i32 0
  %53 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !33
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %55 = bitcast %struct.jpeg_decompress_struct* %54 to %struct.jpeg_common_struct*
  call void %53(%struct.jpeg_common_struct* %55) #3
  br label %if.end.45

if.end.45:                                        ; preds = %bad, %if.end.22
  store i32 0, i32* %ci, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc.98, %if.end.45
  %56 = load i32, i32* %ci, align 4, !tbaa !23
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %57, i32 0, i32 69
  %58 = load i32, i32* %comps_in_scan46, align 4, !tbaa !27
  %cmp47 = icmp slt i32 %56, %58
  br i1 %cmp47, label %for.body, label %for.end.100

for.body:                                         ; preds = %for.cond
  %59 = bitcast i32* %coefi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = bitcast i32* %cindex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  %61 = load i32, i32* %ci, align 4, !tbaa !23
  %idxprom = sext i32 %61 to i64
  %62 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %62, i32 0, i32 70
  %arrayidx48 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %63 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx48, align 8, !tbaa !1
  %component_index = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %63, i32 0, i32 1
  %64 = load i32, i32* %component_index, align 4, !tbaa !34
  store i32 %64, i32* %cindex, align 4, !tbaa !23
  %65 = bitcast i32** %coef_bit_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #1
  %66 = load i32, i32* %cindex, align 4, !tbaa !23
  %idxprom49 = sext i32 %66 to i64
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %coef_bits = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %67, i32 0, i32 39
  %68 = load [64 x i32]*, [64 x i32]** %coef_bits, align 8, !tbaa !22
  %arrayidx50 = getelementptr inbounds [64 x i32], [64 x i32]* %68, i64 %idxprom49
  %arrayidx51 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx50, i32 0, i64 0
  store i32* %arrayidx51, i32** %coef_bit_ptr, align 8, !tbaa !1
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss52 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 75
  %70 = load i32, i32* %Ss52, align 4, !tbaa !24
  %tobool53 = icmp ne i32 %70, 0
  br i1 %tobool53, label %land.lhs.true, label %if.end.68

land.lhs.true:                                    ; preds = %for.body
  %71 = load i32*, i32** %coef_bit_ptr, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i32, i32* %71, i64 0
  %72 = load i32, i32* %arrayidx54, align 4, !tbaa !23
  %cmp55 = icmp slt i32 %72, 0
  br i1 %cmp55, label %if.then.56, label %if.end.68

if.then.56:                                       ; preds = %land.lhs.true
  %73 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err57 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %73, i32 0, i32 0
  %74 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err57, align 8, !tbaa !30
  %msg_code58 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %74, i32 0, i32 5
  store i32 118, i32* %msg_code58, align 4, !tbaa !31
  %75 = load i32, i32* %cindex, align 4, !tbaa !23
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err59 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %76, i32 0, i32 0
  %77 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err59, align 8, !tbaa !30
  %msg_parm60 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %77, i32 0, i32 6
  %i61 = bitcast %union.anon* %msg_parm60 to [8 x i32]*
  %arrayidx62 = getelementptr inbounds [8 x i32], [8 x i32]* %i61, i32 0, i64 0
  store i32 %75, i32* %arrayidx62, align 4, !tbaa !23
  %78 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err63 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %78, i32 0, i32 0
  %79 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err63, align 8, !tbaa !30
  %msg_parm64 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %79, i32 0, i32 6
  %i65 = bitcast %union.anon* %msg_parm64 to [8 x i32]*
  %arrayidx66 = getelementptr inbounds [8 x i32], [8 x i32]* %i65, i32 0, i64 1
  store i32 0, i32* %arrayidx66, align 4, !tbaa !23
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err67 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %80, i32 0, i32 0
  %81 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err67, align 8, !tbaa !30
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %81, i32 0, i32 1
  %82 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !36
  %83 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %84 = bitcast %struct.jpeg_decompress_struct* %83 to %struct.jpeg_common_struct*
  call void %82(%struct.jpeg_common_struct* %84, i32 -1) #3
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.56, %land.lhs.true, %for.body
  %85 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss69 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %85, i32 0, i32 75
  %86 = load i32, i32* %Ss69, align 4, !tbaa !24
  store i32 %86, i32* %coefi, align 4, !tbaa !23
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc, %if.end.68
  %87 = load i32, i32* %coefi, align 4, !tbaa !23
  %88 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se71 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %88, i32 0, i32 76
  %89 = load i32, i32* %Se71, align 4, !tbaa !25
  %cmp72 = icmp sle i32 %87, %89
  br i1 %cmp72, label %for.body.73, label %for.end

for.body.73:                                      ; preds = %for.cond.70
  %90 = bitcast i32* %expected to i8*
  call void @llvm.lifetime.start(i64 4, i8* %90) #1
  %91 = load i32, i32* %coefi, align 4, !tbaa !23
  %idxprom74 = sext i32 %91 to i64
  %92 = load i32*, i32** %coef_bit_ptr, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i32, i32* %92, i64 %idxprom74
  %93 = load i32, i32* %arrayidx75, align 4, !tbaa !23
  %cmp76 = icmp slt i32 %93, 0
  br i1 %cmp76, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.73
  br label %cond.end

cond.false:                                       ; preds = %for.body.73
  %94 = load i32, i32* %coefi, align 4, !tbaa !23
  %idxprom77 = sext i32 %94 to i64
  %95 = load i32*, i32** %coef_bit_ptr, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i32, i32* %95, i64 %idxprom77
  %96 = load i32, i32* %arrayidx78, align 4, !tbaa !23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %96, %cond.false ]
  store i32 %cond, i32* %expected, align 4, !tbaa !23
  %97 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah79 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %97, i32 0, i32 77
  %98 = load i32, i32* %Ah79, align 4, !tbaa !28
  %99 = load i32, i32* %expected, align 4, !tbaa !23
  %cmp80 = icmp ne i32 %98, %99
  br i1 %cmp80, label %if.then.81, label %if.end.94

if.then.81:                                       ; preds = %cond.end
  %100 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err82 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %100, i32 0, i32 0
  %101 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err82, align 8, !tbaa !30
  %msg_code83 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %101, i32 0, i32 5
  store i32 118, i32* %msg_code83, align 4, !tbaa !31
  %102 = load i32, i32* %cindex, align 4, !tbaa !23
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err84 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %103, i32 0, i32 0
  %104 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err84, align 8, !tbaa !30
  %msg_parm85 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %104, i32 0, i32 6
  %i86 = bitcast %union.anon* %msg_parm85 to [8 x i32]*
  %arrayidx87 = getelementptr inbounds [8 x i32], [8 x i32]* %i86, i32 0, i64 0
  store i32 %102, i32* %arrayidx87, align 4, !tbaa !23
  %105 = load i32, i32* %coefi, align 4, !tbaa !23
  %106 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err88 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %106, i32 0, i32 0
  %107 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err88, align 8, !tbaa !30
  %msg_parm89 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %107, i32 0, i32 6
  %i90 = bitcast %union.anon* %msg_parm89 to [8 x i32]*
  %arrayidx91 = getelementptr inbounds [8 x i32], [8 x i32]* %i90, i32 0, i64 1
  store i32 %105, i32* %arrayidx91, align 4, !tbaa !23
  %108 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err92 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %108, i32 0, i32 0
  %109 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err92, align 8, !tbaa !30
  %emit_message93 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %109, i32 0, i32 1
  %110 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message93, align 8, !tbaa !36
  %111 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %112 = bitcast %struct.jpeg_decompress_struct* %111 to %struct.jpeg_common_struct*
  call void %110(%struct.jpeg_common_struct* %112, i32 -1) #3
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.81, %cond.end
  %113 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al95 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %113, i32 0, i32 78
  %114 = load i32, i32* %Al95, align 4, !tbaa !29
  %115 = load i32, i32* %coefi, align 4, !tbaa !23
  %idxprom96 = sext i32 %115 to i64
  %116 = load i32*, i32** %coef_bit_ptr, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds i32, i32* %116, i64 %idxprom96
  store i32 %114, i32* %arrayidx97, align 4, !tbaa !23
  %117 = bitcast i32* %expected to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.94
  %118 = load i32, i32* %coefi, align 4, !tbaa !23
  %inc = add nsw i32 %118, 1
  store i32 %inc, i32* %coefi, align 4, !tbaa !23
  br label %for.cond.70

for.end:                                          ; preds = %for.cond.70
  %119 = bitcast i32** %coef_bit_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  %120 = bitcast i32* %cindex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast i32* %coefi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.end
  %122 = load i32, i32* %ci, align 4, !tbaa !23
  %inc99 = add nsw i32 %122, 1
  store i32 %inc99, i32* %ci, align 4, !tbaa !23
  br label %for.cond

for.end.100:                                      ; preds = %for.cond
  %123 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah101 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %123, i32 0, i32 77
  %124 = load i32, i32* %Ah101, align 4, !tbaa !28
  %cmp102 = icmp eq i32 %124, 0
  br i1 %cmp102, label %if.then.103, label %if.else.111

if.then.103:                                      ; preds = %for.end.100
  %125 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss104 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %125, i32 0, i32 75
  %126 = load i32, i32* %Ss104, align 4, !tbaa !24
  %cmp105 = icmp eq i32 %126, 0
  br i1 %cmp105, label %if.then.106, label %if.else.107

if.then.106:                                      ; preds = %if.then.103
  %127 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %127, i32 0, i32 0
  %decode_mcu = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* @decode_mcu_DC_first, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)** %decode_mcu, align 8, !tbaa !37
  br label %if.end.110

if.else.107:                                      ; preds = %if.then.103
  %128 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %pub108 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %128, i32 0, i32 0
  %decode_mcu109 = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub108, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* @decode_mcu_AC_first, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)** %decode_mcu109, align 8, !tbaa !37
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.107, %if.then.106
  br label %if.end.121

if.else.111:                                      ; preds = %for.end.100
  %129 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss112 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %129, i32 0, i32 75
  %130 = load i32, i32* %Ss112, align 4, !tbaa !24
  %cmp113 = icmp eq i32 %130, 0
  br i1 %cmp113, label %if.then.114, label %if.else.117

if.then.114:                                      ; preds = %if.else.111
  %131 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %pub115 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %131, i32 0, i32 0
  %decode_mcu116 = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub115, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* @decode_mcu_DC_refine, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)** %decode_mcu116, align 8, !tbaa !37
  br label %if.end.120

if.else.117:                                      ; preds = %if.else.111
  %132 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %pub118 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %132, i32 0, i32 0
  %decode_mcu119 = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub118, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* @decode_mcu_AC_refine, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)** %decode_mcu119, align 8, !tbaa !37
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.117, %if.then.114
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.end.110
  store i32 0, i32* %ci, align 4, !tbaa !23
  br label %for.cond.122

for.cond.122:                                     ; preds = %for.inc.148, %if.end.121
  %133 = load i32, i32* %ci, align 4, !tbaa !23
  %134 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan123 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %134, i32 0, i32 69
  %135 = load i32, i32* %comps_in_scan123, align 4, !tbaa !27
  %cmp124 = icmp slt i32 %133, %135
  br i1 %cmp124, label %for.body.125, label %for.end.150

for.body.125:                                     ; preds = %for.cond.122
  %136 = load i32, i32* %ci, align 4, !tbaa !23
  %idxprom126 = sext i32 %136 to i64
  %137 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info127 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %137, i32 0, i32 70
  %arrayidx128 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info127, i32 0, i64 %idxprom126
  %138 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx128, align 8, !tbaa !1
  store %struct.jpeg_component_info* %138, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %139 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss129 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %139, i32 0, i32 75
  %140 = load i32, i32* %Ss129, align 4, !tbaa !24
  %cmp130 = icmp eq i32 %140, 0
  br i1 %cmp130, label %if.then.131, label %if.else.138

if.then.131:                                      ; preds = %for.body.125
  %141 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah132 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %141, i32 0, i32 77
  %142 = load i32, i32* %Ah132, align 4, !tbaa !28
  %cmp133 = icmp eq i32 %142, 0
  br i1 %cmp133, label %if.then.134, label %if.end.137

if.then.134:                                      ; preds = %if.then.131
  %143 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %143, i32 0, i32 5
  %144 = load i32, i32* %dc_tbl_no, align 4, !tbaa !38
  store i32 %144, i32* %tbl, align 4, !tbaa !23
  %145 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %146 = load i32, i32* %tbl, align 4, !tbaa !23
  %147 = load i32, i32* %tbl, align 4, !tbaa !23
  %idxprom135 = sext i32 %147 to i64
  %148 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %derived_tbls = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %148, i32 0, i32 5
  %arrayidx136 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %derived_tbls, i32 0, i64 %idxprom135
  call void @jpeg_make_d_derived_tbl(%struct.jpeg_decompress_struct* %145, i32 1, i32 %146, %struct.d_derived_tbl** %arrayidx136) #3
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.134, %if.then.131
  br label %if.end.145

if.else.138:                                      ; preds = %for.body.125
  %149 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %149, i32 0, i32 6
  %150 = load i32, i32* %ac_tbl_no, align 4, !tbaa !39
  store i32 %150, i32* %tbl, align 4, !tbaa !23
  %151 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %152 = load i32, i32* %tbl, align 4, !tbaa !23
  %153 = load i32, i32* %tbl, align 4, !tbaa !23
  %idxprom139 = sext i32 %153 to i64
  %154 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %derived_tbls140 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %154, i32 0, i32 5
  %arrayidx141 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %derived_tbls140, i32 0, i64 %idxprom139
  call void @jpeg_make_d_derived_tbl(%struct.jpeg_decompress_struct* %151, i32 0, i32 %152, %struct.d_derived_tbl** %arrayidx141) #3
  %155 = load i32, i32* %tbl, align 4, !tbaa !23
  %idxprom142 = sext i32 %155 to i64
  %156 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %derived_tbls143 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %156, i32 0, i32 5
  %arrayidx144 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %derived_tbls143, i32 0, i64 %idxprom142
  %157 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %arrayidx144, align 8, !tbaa !1
  %158 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %ac_derived_tbl = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %158, i32 0, i32 6
  store %struct.d_derived_tbl* %157, %struct.d_derived_tbl** %ac_derived_tbl, align 8, !tbaa !40
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.138, %if.end.137
  %159 = load i32, i32* %ci, align 4, !tbaa !23
  %idxprom146 = sext i32 %159 to i64
  %160 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %160, i32 0, i32 2
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved, i32 0, i32 1
  %arrayidx147 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom146
  store i32 0, i32* %arrayidx147, align 4, !tbaa !23
  br label %for.inc.148

for.inc.148:                                      ; preds = %if.end.145
  %161 = load i32, i32* %ci, align 4, !tbaa !23
  %inc149 = add nsw i32 %161, 1
  store i32 %inc149, i32* %ci, align 4, !tbaa !23
  br label %for.cond.122

for.end.150:                                      ; preds = %for.cond.122
  %162 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %saved151 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %162, i32 0, i32 2
  %EOBRUN = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved151, i32 0, i32 0
  store i32 0, i32* %EOBRUN, align 4, !tbaa !41
  br label %if.end.387

if.else.152:                                      ; preds = %entry
  %163 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss153 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %163, i32 0, i32 75
  %164 = load i32, i32* %Ss153, align 4, !tbaa !24
  %cmp154 = icmp ne i32 %164, 0
  br i1 %cmp154, label %if.then.170, label %lor.lhs.false.155

lor.lhs.false.155:                                ; preds = %if.else.152
  %165 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ah156 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %165, i32 0, i32 77
  %166 = load i32, i32* %Ah156, align 4, !tbaa !28
  %cmp157 = icmp ne i32 %166, 0
  br i1 %cmp157, label %if.then.170, label %lor.lhs.false.158

lor.lhs.false.158:                                ; preds = %lor.lhs.false.155
  %167 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al159 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %167, i32 0, i32 78
  %168 = load i32, i32* %Al159, align 4, !tbaa !29
  %cmp160 = icmp ne i32 %168, 0
  br i1 %cmp160, label %if.then.170, label %lor.lhs.false.161

lor.lhs.false.161:                                ; preds = %lor.lhs.false.158
  %169 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %is_baseline = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %169, i32 0, i32 45
  %170 = load i32, i32* %is_baseline, align 4, !tbaa !42
  %tobool162 = icmp ne i32 %170, 0
  br i1 %tobool162, label %land.lhs.true.166, label %lor.lhs.false.163

lor.lhs.false.163:                                ; preds = %lor.lhs.false.161
  %171 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se164 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %171, i32 0, i32 76
  %172 = load i32, i32* %Se164, align 4, !tbaa !25
  %cmp165 = icmp slt i32 %172, 64
  br i1 %cmp165, label %land.lhs.true.166, label %if.end.175

land.lhs.true.166:                                ; preds = %lor.lhs.false.163, %lor.lhs.false.161
  %173 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se167 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %173, i32 0, i32 76
  %174 = load i32, i32* %Se167, align 4, !tbaa !25
  %175 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se168 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %175, i32 0, i32 81
  %176 = load i32, i32* %lim_Se168, align 4, !tbaa !26
  %cmp169 = icmp ne i32 %174, %176
  br i1 %cmp169, label %if.then.170, label %if.end.175

if.then.170:                                      ; preds = %land.lhs.true.166, %lor.lhs.false.158, %lor.lhs.false.155, %if.else.152
  %177 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err171 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %177, i32 0, i32 0
  %178 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err171, align 8, !tbaa !30
  %msg_code172 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %178, i32 0, i32 5
  store i32 125, i32* %msg_code172, align 4, !tbaa !31
  %179 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err173 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %179, i32 0, i32 0
  %180 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err173, align 8, !tbaa !30
  %emit_message174 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %180, i32 0, i32 1
  %181 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message174, align 8, !tbaa !36
  %182 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %183 = bitcast %struct.jpeg_decompress_struct* %182 to %struct.jpeg_common_struct*
  call void %181(%struct.jpeg_common_struct* %183, i32 -1) #3
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.170, %land.lhs.true.166, %lor.lhs.false.163
  %184 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se176 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %184, i32 0, i32 81
  %185 = load i32, i32* %lim_Se176, align 4, !tbaa !26
  %cmp177 = icmp ne i32 %185, 63
  br i1 %cmp177, label %if.then.178, label %if.else.181

if.then.178:                                      ; preds = %if.end.175
  %186 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %pub179 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %186, i32 0, i32 0
  %decode_mcu180 = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub179, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* @decode_mcu_sub, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)** %decode_mcu180, align 8, !tbaa !37
  br label %if.end.184

if.else.181:                                      ; preds = %if.end.175
  %187 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %pub182 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %187, i32 0, i32 0
  %decode_mcu183 = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub182, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* @decode_mcu, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)** %decode_mcu183, align 8, !tbaa !37
  br label %if.end.184

if.end.184:                                       ; preds = %if.else.181, %if.then.178
  store i32 0, i32* %ci, align 4, !tbaa !23
  br label %for.cond.185

for.cond.185:                                     ; preds = %for.inc.206, %if.end.184
  %188 = load i32, i32* %ci, align 4, !tbaa !23
  %189 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan186 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %189, i32 0, i32 69
  %190 = load i32, i32* %comps_in_scan186, align 4, !tbaa !27
  %cmp187 = icmp slt i32 %188, %190
  br i1 %cmp187, label %for.body.188, label %for.end.208

for.body.188:                                     ; preds = %for.cond.185
  %191 = load i32, i32* %ci, align 4, !tbaa !23
  %idxprom189 = sext i32 %191 to i64
  %192 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info190 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %192, i32 0, i32 70
  %arrayidx191 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info190, i32 0, i64 %idxprom189
  %193 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx191, align 8, !tbaa !1
  store %struct.jpeg_component_info* %193, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %194 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no192 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %194, i32 0, i32 5
  %195 = load i32, i32* %dc_tbl_no192, align 4, !tbaa !38
  store i32 %195, i32* %tbl, align 4, !tbaa !23
  %196 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %197 = load i32, i32* %tbl, align 4, !tbaa !23
  %198 = load i32, i32* %tbl, align 4, !tbaa !23
  %idxprom193 = sext i32 %198 to i64
  %199 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %dc_derived_tbls = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %199, i32 0, i32 7
  %arrayidx194 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %dc_derived_tbls, i32 0, i64 %idxprom193
  call void @jpeg_make_d_derived_tbl(%struct.jpeg_decompress_struct* %196, i32 1, i32 %197, %struct.d_derived_tbl** %arrayidx194) #3
  %200 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se195 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %200, i32 0, i32 81
  %201 = load i32, i32* %lim_Se195, align 4, !tbaa !26
  %tobool196 = icmp ne i32 %201, 0
  br i1 %tobool196, label %if.then.197, label %if.end.201

if.then.197:                                      ; preds = %for.body.188
  %202 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no198 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %202, i32 0, i32 6
  %203 = load i32, i32* %ac_tbl_no198, align 4, !tbaa !39
  store i32 %203, i32* %tbl, align 4, !tbaa !23
  %204 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %205 = load i32, i32* %tbl, align 4, !tbaa !23
  %206 = load i32, i32* %tbl, align 4, !tbaa !23
  %idxprom199 = sext i32 %206 to i64
  %207 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %ac_derived_tbls = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %207, i32 0, i32 8
  %arrayidx200 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %ac_derived_tbls, i32 0, i64 %idxprom199
  call void @jpeg_make_d_derived_tbl(%struct.jpeg_decompress_struct* %204, i32 0, i32 %205, %struct.d_derived_tbl** %arrayidx200) #3
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.197, %for.body.188
  %208 = load i32, i32* %ci, align 4, !tbaa !23
  %idxprom202 = sext i32 %208 to i64
  %209 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %saved203 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %209, i32 0, i32 2
  %last_dc_val204 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved203, i32 0, i32 1
  %arrayidx205 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val204, i32 0, i64 %idxprom202
  store i32 0, i32* %arrayidx205, align 4, !tbaa !23
  br label %for.inc.206

for.inc.206:                                      ; preds = %if.end.201
  %210 = load i32, i32* %ci, align 4, !tbaa !23
  %inc207 = add nsw i32 %210, 1
  store i32 %inc207, i32* %ci, align 4, !tbaa !23
  br label %for.cond.185

for.end.208:                                      ; preds = %for.cond.185
  store i32 0, i32* %blkn, align 4, !tbaa !23
  br label %for.cond.209

for.cond.209:                                     ; preds = %for.inc.384, %for.end.208
  %211 = load i32, i32* %blkn, align 4, !tbaa !23
  %212 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %212, i32 0, i32 73
  %213 = load i32, i32* %blocks_in_MCU, align 4, !tbaa !43
  %cmp210 = icmp slt i32 %211, %213
  br i1 %cmp210, label %for.body.211, label %for.end.386

for.body.211:                                     ; preds = %for.cond.209
  %214 = load i32, i32* %blkn, align 4, !tbaa !23
  %idxprom212 = sext i32 %214 to i64
  %215 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %MCU_membership = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %215, i32 0, i32 74
  %arrayidx213 = getelementptr inbounds [64 x i32], [64 x i32]* %MCU_membership, i32 0, i64 %idxprom212
  %216 = load i32, i32* %arrayidx213, align 4, !tbaa !23
  store i32 %216, i32* %ci, align 4, !tbaa !23
  %217 = load i32, i32* %ci, align 4, !tbaa !23
  %idxprom214 = sext i32 %217 to i64
  %218 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info215 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %218, i32 0, i32 70
  %arrayidx216 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info215, i32 0, i64 %idxprom214
  %219 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx216, align 8, !tbaa !1
  store %struct.jpeg_component_info* %219, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %220 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no217 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %220, i32 0, i32 5
  %221 = load i32, i32* %dc_tbl_no217, align 4, !tbaa !38
  %idxprom218 = sext i32 %221 to i64
  %222 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %dc_derived_tbls219 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %222, i32 0, i32 7
  %arrayidx220 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %dc_derived_tbls219, i32 0, i64 %idxprom218
  %223 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %arrayidx220, align 8, !tbaa !1
  %224 = load i32, i32* %blkn, align 4, !tbaa !23
  %idxprom221 = sext i32 %224 to i64
  %225 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %dc_cur_tbls = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %225, i32 0, i32 9
  %arrayidx222 = getelementptr inbounds [64 x %struct.d_derived_tbl*], [64 x %struct.d_derived_tbl*]* %dc_cur_tbls, i32 0, i64 %idxprom221
  store %struct.d_derived_tbl* %223, %struct.d_derived_tbl** %arrayidx222, align 8, !tbaa !1
  %226 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %ac_tbl_no223 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %226, i32 0, i32 6
  %227 = load i32, i32* %ac_tbl_no223, align 4, !tbaa !39
  %idxprom224 = sext i32 %227 to i64
  %228 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %ac_derived_tbls225 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %228, i32 0, i32 8
  %arrayidx226 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %ac_derived_tbls225, i32 0, i64 %idxprom224
  %229 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %arrayidx226, align 8, !tbaa !1
  %230 = load i32, i32* %blkn, align 4, !tbaa !23
  %idxprom227 = sext i32 %230 to i64
  %231 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %ac_cur_tbls = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %231, i32 0, i32 10
  %arrayidx228 = getelementptr inbounds [64 x %struct.d_derived_tbl*], [64 x %struct.d_derived_tbl*]* %ac_cur_tbls, i32 0, i64 %idxprom227
  store %struct.d_derived_tbl* %229, %struct.d_derived_tbl** %arrayidx228, align 8, !tbaa !1
  %232 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %232, i32 0, i32 13
  %233 = load i32, i32* %component_needed, align 4, !tbaa !44
  %tobool229 = icmp ne i32 %233, 0
  br i1 %tobool229, label %if.then.230, label %if.else.379

if.then.230:                                      ; preds = %for.body.211
  %234 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_v_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %234, i32 0, i32 10
  %235 = load i32, i32* %DCT_v_scaled_size, align 4, !tbaa !45
  store i32 %235, i32* %ci, align 4, !tbaa !23
  %236 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %DCT_h_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %236, i32 0, i32 9
  %237 = load i32, i32* %DCT_h_scaled_size, align 4, !tbaa !46
  store i32 %237, i32* %i, align 4, !tbaa !23
  %238 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se231 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %238, i32 0, i32 81
  %239 = load i32, i32* %lim_Se231, align 4, !tbaa !26
  switch i32 %239, label %sw.default [
    i32 0, label %sw.bb
    i32 3, label %sw.bb.234
    i32 8, label %sw.bb.254
    i32 15, label %sw.bb.275
    i32 24, label %sw.bb.296
    i32 35, label %sw.bb.317
    i32 48, label %sw.bb.338
  ]

sw.bb:                                            ; preds = %if.then.230
  %240 = load i32, i32* %blkn, align 4, !tbaa !23
  %idxprom232 = sext i32 %240 to i64
  %241 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %coef_limit = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %241, i32 0, i32 11
  %arrayidx233 = getelementptr inbounds [64 x i32], [64 x i32]* %coef_limit, i32 0, i64 %idxprom232
  store i32 1, i32* %arrayidx233, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.234:                                        ; preds = %if.then.230
  %242 = load i32, i32* %ci, align 4, !tbaa !23
  %cmp235 = icmp sle i32 %242, 0
  br i1 %cmp235, label %if.then.238, label %lor.lhs.false.236

lor.lhs.false.236:                                ; preds = %sw.bb.234
  %243 = load i32, i32* %ci, align 4, !tbaa !23
  %cmp237 = icmp sgt i32 %243, 2
  br i1 %cmp237, label %if.then.238, label %if.end.239

if.then.238:                                      ; preds = %lor.lhs.false.236, %sw.bb.234
  store i32 2, i32* %ci, align 4, !tbaa !23
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.238, %lor.lhs.false.236
  %244 = load i32, i32* %i, align 4, !tbaa !23
  %cmp240 = icmp sle i32 %244, 0
  br i1 %cmp240, label %if.then.243, label %lor.lhs.false.241

lor.lhs.false.241:                                ; preds = %if.end.239
  %245 = load i32, i32* %i, align 4, !tbaa !23
  %cmp242 = icmp sgt i32 %245, 2
  br i1 %cmp242, label %if.then.243, label %if.end.244

if.then.243:                                      ; preds = %lor.lhs.false.241, %if.end.239
  store i32 2, i32* %i, align 4, !tbaa !23
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.243, %lor.lhs.false.241
  %246 = load i32, i32* %i, align 4, !tbaa !23
  %sub245 = sub nsw i32 %246, 1
  %idxprom246 = sext i32 %sub245 to i64
  %247 = load i32, i32* %ci, align 4, !tbaa !23
  %sub247 = sub nsw i32 %247, 1
  %idxprom248 = sext i32 %sub247 to i64
  %arrayidx249 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @jpeg_zigzag_order2, i32 0, i64 %idxprom248
  %arrayidx250 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx249, i32 0, i64 %idxprom246
  %248 = load i32, i32* %arrayidx250, align 4, !tbaa !23
  %add = add nsw i32 1, %248
  %249 = load i32, i32* %blkn, align 4, !tbaa !23
  %idxprom251 = sext i32 %249 to i64
  %250 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %coef_limit252 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %250, i32 0, i32 11
  %arrayidx253 = getelementptr inbounds [64 x i32], [64 x i32]* %coef_limit252, i32 0, i64 %idxprom251
  store i32 %add, i32* %arrayidx253, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.254:                                        ; preds = %if.then.230
  %251 = load i32, i32* %ci, align 4, !tbaa !23
  %cmp255 = icmp sle i32 %251, 0
  br i1 %cmp255, label %if.then.258, label %lor.lhs.false.256

lor.lhs.false.256:                                ; preds = %sw.bb.254
  %252 = load i32, i32* %ci, align 4, !tbaa !23
  %cmp257 = icmp sgt i32 %252, 3
  br i1 %cmp257, label %if.then.258, label %if.end.259

if.then.258:                                      ; preds = %lor.lhs.false.256, %sw.bb.254
  store i32 3, i32* %ci, align 4, !tbaa !23
  br label %if.end.259

if.end.259:                                       ; preds = %if.then.258, %lor.lhs.false.256
  %253 = load i32, i32* %i, align 4, !tbaa !23
  %cmp260 = icmp sle i32 %253, 0
  br i1 %cmp260, label %if.then.263, label %lor.lhs.false.261

lor.lhs.false.261:                                ; preds = %if.end.259
  %254 = load i32, i32* %i, align 4, !tbaa !23
  %cmp262 = icmp sgt i32 %254, 3
  br i1 %cmp262, label %if.then.263, label %if.end.264

if.then.263:                                      ; preds = %lor.lhs.false.261, %if.end.259
  store i32 3, i32* %i, align 4, !tbaa !23
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.263, %lor.lhs.false.261
  %255 = load i32, i32* %i, align 4, !tbaa !23
  %sub265 = sub nsw i32 %255, 1
  %idxprom266 = sext i32 %sub265 to i64
  %256 = load i32, i32* %ci, align 4, !tbaa !23
  %sub267 = sub nsw i32 %256, 1
  %idxprom268 = sext i32 %sub267 to i64
  %arrayidx269 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* @jpeg_zigzag_order3, i32 0, i64 %idxprom268
  %arrayidx270 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx269, i32 0, i64 %idxprom266
  %257 = load i32, i32* %arrayidx270, align 4, !tbaa !23
  %add271 = add nsw i32 1, %257
  %258 = load i32, i32* %blkn, align 4, !tbaa !23
  %idxprom272 = sext i32 %258 to i64
  %259 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %coef_limit273 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %259, i32 0, i32 11
  %arrayidx274 = getelementptr inbounds [64 x i32], [64 x i32]* %coef_limit273, i32 0, i64 %idxprom272
  store i32 %add271, i32* %arrayidx274, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.275:                                        ; preds = %if.then.230
  %260 = load i32, i32* %ci, align 4, !tbaa !23
  %cmp276 = icmp sle i32 %260, 0
  br i1 %cmp276, label %if.then.279, label %lor.lhs.false.277

lor.lhs.false.277:                                ; preds = %sw.bb.275
  %261 = load i32, i32* %ci, align 4, !tbaa !23
  %cmp278 = icmp sgt i32 %261, 4
  br i1 %cmp278, label %if.then.279, label %if.end.280

if.then.279:                                      ; preds = %lor.lhs.false.277, %sw.bb.275
  store i32 4, i32* %ci, align 4, !tbaa !23
  br label %if.end.280

if.end.280:                                       ; preds = %if.then.279, %lor.lhs.false.277
  %262 = load i32, i32* %i, align 4, !tbaa !23
  %cmp281 = icmp sle i32 %262, 0
  br i1 %cmp281, label %if.then.284, label %lor.lhs.false.282

lor.lhs.false.282:                                ; preds = %if.end.280
  %263 = load i32, i32* %i, align 4, !tbaa !23
  %cmp283 = icmp sgt i32 %263, 4
  br i1 %cmp283, label %if.then.284, label %if.end.285

if.then.284:                                      ; preds = %lor.lhs.false.282, %if.end.280
  store i32 4, i32* %i, align 4, !tbaa !23
  br label %if.end.285

if.end.285:                                       ; preds = %if.then.284, %lor.lhs.false.282
  %264 = load i32, i32* %i, align 4, !tbaa !23
  %sub286 = sub nsw i32 %264, 1
  %idxprom287 = sext i32 %sub286 to i64
  %265 = load i32, i32* %ci, align 4, !tbaa !23
  %sub288 = sub nsw i32 %265, 1
  %idxprom289 = sext i32 %sub288 to i64
  %arrayidx290 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* @jpeg_zigzag_order4, i32 0, i64 %idxprom289
  %arrayidx291 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx290, i32 0, i64 %idxprom287
  %266 = load i32, i32* %arrayidx291, align 4, !tbaa !23
  %add292 = add nsw i32 1, %266
  %267 = load i32, i32* %blkn, align 4, !tbaa !23
  %idxprom293 = sext i32 %267 to i64
  %268 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %coef_limit294 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %268, i32 0, i32 11
  %arrayidx295 = getelementptr inbounds [64 x i32], [64 x i32]* %coef_limit294, i32 0, i64 %idxprom293
  store i32 %add292, i32* %arrayidx295, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.296:                                        ; preds = %if.then.230
  %269 = load i32, i32* %ci, align 4, !tbaa !23
  %cmp297 = icmp sle i32 %269, 0
  br i1 %cmp297, label %if.then.300, label %lor.lhs.false.298

lor.lhs.false.298:                                ; preds = %sw.bb.296
  %270 = load i32, i32* %ci, align 4, !tbaa !23
  %cmp299 = icmp sgt i32 %270, 5
  br i1 %cmp299, label %if.then.300, label %if.end.301

if.then.300:                                      ; preds = %lor.lhs.false.298, %sw.bb.296
  store i32 5, i32* %ci, align 4, !tbaa !23
  br label %if.end.301

if.end.301:                                       ; preds = %if.then.300, %lor.lhs.false.298
  %271 = load i32, i32* %i, align 4, !tbaa !23
  %cmp302 = icmp sle i32 %271, 0
  br i1 %cmp302, label %if.then.305, label %lor.lhs.false.303

lor.lhs.false.303:                                ; preds = %if.end.301
  %272 = load i32, i32* %i, align 4, !tbaa !23
  %cmp304 = icmp sgt i32 %272, 5
  br i1 %cmp304, label %if.then.305, label %if.end.306

if.then.305:                                      ; preds = %lor.lhs.false.303, %if.end.301
  store i32 5, i32* %i, align 4, !tbaa !23
  br label %if.end.306

if.end.306:                                       ; preds = %if.then.305, %lor.lhs.false.303
  %273 = load i32, i32* %i, align 4, !tbaa !23
  %sub307 = sub nsw i32 %273, 1
  %idxprom308 = sext i32 %sub307 to i64
  %274 = load i32, i32* %ci, align 4, !tbaa !23
  %sub309 = sub nsw i32 %274, 1
  %idxprom310 = sext i32 %sub309 to i64
  %arrayidx311 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* @jpeg_zigzag_order5, i32 0, i64 %idxprom310
  %arrayidx312 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx311, i32 0, i64 %idxprom308
  %275 = load i32, i32* %arrayidx312, align 4, !tbaa !23
  %add313 = add nsw i32 1, %275
  %276 = load i32, i32* %blkn, align 4, !tbaa !23
  %idxprom314 = sext i32 %276 to i64
  %277 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %coef_limit315 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %277, i32 0, i32 11
  %arrayidx316 = getelementptr inbounds [64 x i32], [64 x i32]* %coef_limit315, i32 0, i64 %idxprom314
  store i32 %add313, i32* %arrayidx316, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.317:                                        ; preds = %if.then.230
  %278 = load i32, i32* %ci, align 4, !tbaa !23
  %cmp318 = icmp sle i32 %278, 0
  br i1 %cmp318, label %if.then.321, label %lor.lhs.false.319

lor.lhs.false.319:                                ; preds = %sw.bb.317
  %279 = load i32, i32* %ci, align 4, !tbaa !23
  %cmp320 = icmp sgt i32 %279, 6
  br i1 %cmp320, label %if.then.321, label %if.end.322

if.then.321:                                      ; preds = %lor.lhs.false.319, %sw.bb.317
  store i32 6, i32* %ci, align 4, !tbaa !23
  br label %if.end.322

if.end.322:                                       ; preds = %if.then.321, %lor.lhs.false.319
  %280 = load i32, i32* %i, align 4, !tbaa !23
  %cmp323 = icmp sle i32 %280, 0
  br i1 %cmp323, label %if.then.326, label %lor.lhs.false.324

lor.lhs.false.324:                                ; preds = %if.end.322
  %281 = load i32, i32* %i, align 4, !tbaa !23
  %cmp325 = icmp sgt i32 %281, 6
  br i1 %cmp325, label %if.then.326, label %if.end.327

if.then.326:                                      ; preds = %lor.lhs.false.324, %if.end.322
  store i32 6, i32* %i, align 4, !tbaa !23
  br label %if.end.327

if.end.327:                                       ; preds = %if.then.326, %lor.lhs.false.324
  %282 = load i32, i32* %i, align 4, !tbaa !23
  %sub328 = sub nsw i32 %282, 1
  %idxprom329 = sext i32 %sub328 to i64
  %283 = load i32, i32* %ci, align 4, !tbaa !23
  %sub330 = sub nsw i32 %283, 1
  %idxprom331 = sext i32 %sub330 to i64
  %arrayidx332 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* @jpeg_zigzag_order6, i32 0, i64 %idxprom331
  %arrayidx333 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx332, i32 0, i64 %idxprom329
  %284 = load i32, i32* %arrayidx333, align 4, !tbaa !23
  %add334 = add nsw i32 1, %284
  %285 = load i32, i32* %blkn, align 4, !tbaa !23
  %idxprom335 = sext i32 %285 to i64
  %286 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %coef_limit336 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %286, i32 0, i32 11
  %arrayidx337 = getelementptr inbounds [64 x i32], [64 x i32]* %coef_limit336, i32 0, i64 %idxprom335
  store i32 %add334, i32* %arrayidx337, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.338:                                        ; preds = %if.then.230
  %287 = load i32, i32* %ci, align 4, !tbaa !23
  %cmp339 = icmp sle i32 %287, 0
  br i1 %cmp339, label %if.then.342, label %lor.lhs.false.340

lor.lhs.false.340:                                ; preds = %sw.bb.338
  %288 = load i32, i32* %ci, align 4, !tbaa !23
  %cmp341 = icmp sgt i32 %288, 7
  br i1 %cmp341, label %if.then.342, label %if.end.343

if.then.342:                                      ; preds = %lor.lhs.false.340, %sw.bb.338
  store i32 7, i32* %ci, align 4, !tbaa !23
  br label %if.end.343

if.end.343:                                       ; preds = %if.then.342, %lor.lhs.false.340
  %289 = load i32, i32* %i, align 4, !tbaa !23
  %cmp344 = icmp sle i32 %289, 0
  br i1 %cmp344, label %if.then.347, label %lor.lhs.false.345

lor.lhs.false.345:                                ; preds = %if.end.343
  %290 = load i32, i32* %i, align 4, !tbaa !23
  %cmp346 = icmp sgt i32 %290, 7
  br i1 %cmp346, label %if.then.347, label %if.end.348

if.then.347:                                      ; preds = %lor.lhs.false.345, %if.end.343
  store i32 7, i32* %i, align 4, !tbaa !23
  br label %if.end.348

if.end.348:                                       ; preds = %if.then.347, %lor.lhs.false.345
  %291 = load i32, i32* %i, align 4, !tbaa !23
  %sub349 = sub nsw i32 %291, 1
  %idxprom350 = sext i32 %sub349 to i64
  %292 = load i32, i32* %ci, align 4, !tbaa !23
  %sub351 = sub nsw i32 %292, 1
  %idxprom352 = sext i32 %sub351 to i64
  %arrayidx353 = getelementptr inbounds [7 x [7 x i32]], [7 x [7 x i32]]* @jpeg_zigzag_order7, i32 0, i64 %idxprom352
  %arrayidx354 = getelementptr inbounds [7 x i32], [7 x i32]* %arrayidx353, i32 0, i64 %idxprom350
  %293 = load i32, i32* %arrayidx354, align 4, !tbaa !23
  %add355 = add nsw i32 1, %293
  %294 = load i32, i32* %blkn, align 4, !tbaa !23
  %idxprom356 = sext i32 %294 to i64
  %295 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %coef_limit357 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %295, i32 0, i32 11
  %arrayidx358 = getelementptr inbounds [64 x i32], [64 x i32]* %coef_limit357, i32 0, i64 %idxprom356
  store i32 %add355, i32* %arrayidx358, align 4, !tbaa !23
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.230
  %296 = load i32, i32* %ci, align 4, !tbaa !23
  %cmp359 = icmp sle i32 %296, 0
  br i1 %cmp359, label %if.then.362, label %lor.lhs.false.360

lor.lhs.false.360:                                ; preds = %sw.default
  %297 = load i32, i32* %ci, align 4, !tbaa !23
  %cmp361 = icmp sgt i32 %297, 8
  br i1 %cmp361, label %if.then.362, label %if.end.363

if.then.362:                                      ; preds = %lor.lhs.false.360, %sw.default
  store i32 8, i32* %ci, align 4, !tbaa !23
  br label %if.end.363

if.end.363:                                       ; preds = %if.then.362, %lor.lhs.false.360
  %298 = load i32, i32* %i, align 4, !tbaa !23
  %cmp364 = icmp sle i32 %298, 0
  br i1 %cmp364, label %if.then.367, label %lor.lhs.false.365

lor.lhs.false.365:                                ; preds = %if.end.363
  %299 = load i32, i32* %i, align 4, !tbaa !23
  %cmp366 = icmp sgt i32 %299, 8
  br i1 %cmp366, label %if.then.367, label %if.end.368

if.then.367:                                      ; preds = %lor.lhs.false.365, %if.end.363
  store i32 8, i32* %i, align 4, !tbaa !23
  br label %if.end.368

if.end.368:                                       ; preds = %if.then.367, %lor.lhs.false.365
  %300 = load i32, i32* %i, align 4, !tbaa !23
  %sub369 = sub nsw i32 %300, 1
  %idxprom370 = sext i32 %sub369 to i64
  %301 = load i32, i32* %ci, align 4, !tbaa !23
  %sub371 = sub nsw i32 %301, 1
  %idxprom372 = sext i32 %sub371 to i64
  %arrayidx373 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @jpeg_zigzag_order, i32 0, i64 %idxprom372
  %arrayidx374 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx373, i32 0, i64 %idxprom370
  %302 = load i32, i32* %arrayidx374, align 4, !tbaa !23
  %add375 = add nsw i32 1, %302
  %303 = load i32, i32* %blkn, align 4, !tbaa !23
  %idxprom376 = sext i32 %303 to i64
  %304 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %coef_limit377 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %304, i32 0, i32 11
  %arrayidx378 = getelementptr inbounds [64 x i32], [64 x i32]* %coef_limit377, i32 0, i64 %idxprom376
  store i32 %add375, i32* %arrayidx378, align 4, !tbaa !23
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.368, %if.end.348, %if.end.327, %if.end.306, %if.end.285, %if.end.264, %if.end.244, %sw.bb
  br label %if.end.383

if.else.379:                                      ; preds = %for.body.211
  %305 = load i32, i32* %blkn, align 4, !tbaa !23
  %idxprom380 = sext i32 %305 to i64
  %306 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %coef_limit381 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %306, i32 0, i32 11
  %arrayidx382 = getelementptr inbounds [64 x i32], [64 x i32]* %coef_limit381, i32 0, i64 %idxprom380
  store i32 0, i32* %arrayidx382, align 4, !tbaa !23
  br label %if.end.383

if.end.383:                                       ; preds = %if.else.379, %sw.epilog
  br label %for.inc.384

for.inc.384:                                      ; preds = %if.end.383
  %307 = load i32, i32* %blkn, align 4, !tbaa !23
  %inc385 = add nsw i32 %307, 1
  store i32 %inc385, i32* %blkn, align 4, !tbaa !23
  br label %for.cond.209

for.end.386:                                      ; preds = %for.cond.209
  br label %if.end.387

if.end.387:                                       ; preds = %for.end.386, %for.end.150
  %308 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %bitstate = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %308, i32 0, i32 1
  %bits_left = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate, i32 0, i32 1
  store i32 0, i32* %bits_left, align 4, !tbaa !47
  %309 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %bitstate388 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %309, i32 0, i32 1
  %get_buffer = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate388, i32 0, i32 0
  store i64 0, i64* %get_buffer, align 8, !tbaa !48
  %310 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %insufficient_data = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %310, i32 0, i32 3
  store i32 0, i32* %insufficient_data, align 4, !tbaa !49
  %311 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %311, i32 0, i32 51
  %312 = load i32, i32* %restart_interval, align 4, !tbaa !50
  %313 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %313, i32 0, i32 4
  store i32 %312, i32* %restarts_to_go, align 4, !tbaa !51
  %314 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %314) #1
  %315 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %315) #1
  %316 = bitcast i32* %tbl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %316) #1
  %317 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %317) #1
  %318 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %318) #1
  %319 = bitcast %struct.huff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %319) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass_huff(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %entropy = alloca %struct.huff_entropy_decoder*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.huff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 89
  %2 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_decoder* %2 to %struct.huff_entropy_decoder*
  store %struct.huff_entropy_decoder* %3, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %4 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %bitstate = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %4, i32 0, i32 1
  %bits_left = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate, i32 0, i32 1
  %5 = load i32, i32* %bits_left, align 4, !tbaa !47
  %div = sdiv i32 %5, 8
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 88
  %7 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8, !tbaa !52
  %discarded_bytes = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %7, i32 0, i32 6
  %8 = load i32, i32* %discarded_bytes, align 4, !tbaa !53
  %add = add i32 %8, %div
  store i32 %add, i32* %discarded_bytes, align 4, !tbaa !53
  %9 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %bitstate2 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %9, i32 0, i32 1
  %bits_left3 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate2, i32 0, i32 1
  store i32 0, i32* %bits_left3, align 4, !tbaa !47
  %10 = bitcast %struct.huff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @decode_mcu_DC_first(%struct.jpeg_decompress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.huff_entropy_decoder*, align 8
  %Al = alloca i32, align 4
  %s = alloca i32, align 4
  %r = alloca i32, align 4
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %block = alloca [64 x i16]*, align 8
  %get_buffer = alloca i64, align 8
  %bits_left = alloca i32, align 4
  %br_state = alloca %struct.bitread_working_state, align 8
  %state = alloca %struct.savable_state, align 4
  %tbl = alloca %struct.d_derived_tbl*, align 8
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %cleanup.dest.slot = alloca i32
  %nb = alloca i32, align 4
  %look = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.huff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 89
  %2 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_decoder* %2 to %struct.huff_entropy_decoder*
  store %struct.huff_entropy_decoder* %3, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %4 = bitcast i32* %Al to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 78
  %6 = load i32, i32* %Al2, align 4, !tbaa !29
  store i32 %6, i32* %Al, align 4, !tbaa !23
  %7 = bitcast i32* %s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i64* %get_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast %struct.bitread_working_state* %br_state to i8*
  call void @llvm.lifetime.start(i64 40, i8* %14) #1
  %15 = bitcast %struct.savable_state* %state to i8*
  call void @llvm.lifetime.start(i64 20, i8* %15) #1
  %16 = bitcast %struct.d_derived_tbl** %tbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 51
  %19 = load i32, i32* %restart_interval, align 4, !tbaa !50
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %20 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %20, i32 0, i32 4
  %21 = load i32, i32* %restarts_to_go, align 4, !tbaa !51
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.then
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 @process_restart(%struct.jpeg_decompress_struct* %22) #3
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then.3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.102

if.end:                                           ; preds = %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %entry
  %23 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %insufficient_data = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %23, i32 0, i32 3
  %24 = load i32, i32* %insufficient_data, align 4, !tbaa !49
  %tobool8 = icmp ne i32 %24, 0
  br i1 %tobool8, label %if.end.100, label %if.then.9

if.then.9:                                        ; preds = %if.end.7
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cinfo10 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  store %struct.jpeg_decompress_struct* %25, %struct.jpeg_decompress_struct** %cinfo10, align 8, !tbaa !55
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 6
  %27 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !57
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %27, i32 0, i32 0
  %28 = load i8*, i8** %next_input_byte, align 8, !tbaa !58
  %next_input_byte11 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  store i8* %28, i8** %next_input_byte11, align 8, !tbaa !60
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 6
  %30 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src12, align 8, !tbaa !57
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %30, i32 0, i32 1
  %31 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !61
  %bytes_in_buffer13 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  store i64 %31, i64* %bytes_in_buffer13, align 8, !tbaa !62
  %32 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %bitstate = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %32, i32 0, i32 1
  %get_buffer14 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate, i32 0, i32 0
  %33 = load i64, i64* %get_buffer14, align 8, !tbaa !48
  store i64 %33, i64* %get_buffer, align 8, !tbaa !63
  %34 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %bitstate15 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %34, i32 0, i32 1
  %bits_left16 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate15, i32 0, i32 1
  %35 = load i32, i32* %bits_left16, align 4, !tbaa !47
  store i32 %35, i32* %bits_left, align 4, !tbaa !23
  %36 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %36, i32 0, i32 2
  %37 = bitcast %struct.savable_state* %state to i8*
  %38 = bitcast %struct.savable_state* %saved to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 20, i32 4, i1 false), !tbaa.struct !64
  store i32 0, i32* %blkn, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.9
  %39 = load i32, i32* %blkn, align 4, !tbaa !23
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 73
  %41 = load i32, i32* %blocks_in_MCU, align 4, !tbaa !43
  %cmp17 = icmp slt i32 %39, %41
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i32, i32* %blkn, align 4, !tbaa !23
  %idxprom = sext i32 %42 to i64
  %43 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %43, i64 %idxprom
  %44 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !1
  store [64 x i16]* %44, [64 x i16]** %block, align 8, !tbaa !1
  %45 = load i32, i32* %blkn, align 4, !tbaa !23
  %idxprom18 = sext i32 %45 to i64
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %MCU_membership = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 74
  %arrayidx19 = getelementptr inbounds [64 x i32], [64 x i32]* %MCU_membership, i32 0, i64 %idxprom18
  %47 = load i32, i32* %arrayidx19, align 4, !tbaa !23
  store i32 %47, i32* %ci, align 4, !tbaa !23
  %48 = load i32, i32* %ci, align 4, !tbaa !23
  %idxprom20 = sext i32 %48 to i64
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 70
  %arrayidx21 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom20
  %50 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx21, align 8, !tbaa !1
  store %struct.jpeg_component_info* %50, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %51 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !1
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %51, i32 0, i32 5
  %52 = load i32, i32* %dc_tbl_no, align 4, !tbaa !38
  %idxprom22 = sext i32 %52 to i64
  %53 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %derived_tbls = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %53, i32 0, i32 5
  %arrayidx23 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %derived_tbls, i32 0, i64 %idxprom22
  %54 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %arrayidx23, align 8, !tbaa !1
  store %struct.d_derived_tbl* %54, %struct.d_derived_tbl** %tbl, align 8, !tbaa !1
  %55 = bitcast i32* %nb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  %56 = bitcast i32* %look to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  %57 = load i32, i32* %bits_left, align 4, !tbaa !23
  %cmp24 = icmp slt i32 %57, 8
  br i1 %cmp24, label %if.then.25, label %if.end.35

if.then.25:                                       ; preds = %for.body
  %58 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %59 = load i32, i32* %bits_left, align 4, !tbaa !23
  %call26 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %58, i32 %59, i32 0) #3
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.then.25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.then.25
  %get_buffer30 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %60 = load i64, i64* %get_buffer30, align 8, !tbaa !66
  store i64 %60, i64* %get_buffer, align 8, !tbaa !63
  %bits_left31 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %61 = load i32, i32* %bits_left31, align 4, !tbaa !67
  store i32 %61, i32* %bits_left, align 4, !tbaa !23
  %62 = load i32, i32* %bits_left, align 4, !tbaa !23
  %cmp32 = icmp slt i32 %62, 8
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.29
  store i32 1, i32* %nb, align 4, !tbaa !23
  br label %label1

if.end.34:                                        ; preds = %if.end.29
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %for.body
  %63 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %64 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub = sub nsw i32 %64, 8
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %63, %sh_prom
  %conv = trunc i64 %shr to i32
  %65 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bmask, i32 0, i64 8), align 4, !tbaa !23
  %and = and i32 %conv, %65
  store i32 %and, i32* %look, align 4, !tbaa !23
  %66 = load i32, i32* %look, align 4, !tbaa !23
  %idxprom36 = sext i32 %66 to i64
  %67 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %tbl, align 8, !tbaa !1
  %look_nbits = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %67, i32 0, i32 3
  %arrayidx37 = getelementptr inbounds [256 x i32], [256 x i32]* %look_nbits, i32 0, i64 %idxprom36
  %68 = load i32, i32* %arrayidx37, align 4, !tbaa !23
  store i32 %68, i32* %nb, align 4, !tbaa !23
  %cmp38 = icmp ne i32 %68, 0
  br i1 %cmp38, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %if.end.35
  %69 = load i32, i32* %nb, align 4, !tbaa !23
  %70 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub41 = sub nsw i32 %70, %69
  store i32 %sub41, i32* %bits_left, align 4, !tbaa !23
  %71 = load i32, i32* %look, align 4, !tbaa !23
  %idxprom42 = sext i32 %71 to i64
  %72 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %tbl, align 8, !tbaa !1
  %look_sym = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %72, i32 0, i32 4
  %arrayidx43 = getelementptr inbounds [256 x i8], [256 x i8]* %look_sym, i32 0, i64 %idxprom42
  %73 = load i8, i8* %arrayidx43, align 1, !tbaa !65
  %conv44 = zext i8 %73 to i32
  store i32 %conv44, i32* %s, align 4, !tbaa !23
  br label %if.end.52

if.else:                                          ; preds = %if.end.35
  store i32 9, i32* %nb, align 4, !tbaa !23
  br label %label1

label1:                                           ; preds = %if.else, %if.then.33
  %74 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %75 = load i32, i32* %bits_left, align 4, !tbaa !23
  %76 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %tbl, align 8, !tbaa !1
  %77 = load i32, i32* %nb, align 4, !tbaa !23
  %call45 = call i32 @jpeg_huff_decode(%struct.bitread_working_state* %br_state, i64 %74, i32 %75, %struct.d_derived_tbl* %76, i32 %77) #3
  store i32 %call45, i32* %s, align 4, !tbaa !23
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %label1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %label1
  %get_buffer50 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %78 = load i64, i64* %get_buffer50, align 8, !tbaa !66
  store i64 %78, i64* %get_buffer, align 8, !tbaa !63
  %bits_left51 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %79 = load i32, i32* %bits_left51, align 4, !tbaa !67
  store i32 %79, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.49, %if.then.40
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.52, %if.then.48, %if.then.28
  %80 = bitcast i32* %look to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast i32* %nb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.102 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %82 = load i32, i32* %s, align 4, !tbaa !23
  %tobool54 = icmp ne i32 %82, 0
  br i1 %tobool54, label %if.then.55, label %if.end.81

if.then.55:                                       ; preds = %cleanup.cont
  %83 = load i32, i32* %bits_left, align 4, !tbaa !23
  %84 = load i32, i32* %s, align 4, !tbaa !23
  %cmp56 = icmp slt i32 %83, %84
  br i1 %cmp56, label %if.then.58, label %if.end.65

if.then.58:                                       ; preds = %if.then.55
  %85 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %86 = load i32, i32* %bits_left, align 4, !tbaa !23
  %87 = load i32, i32* %s, align 4, !tbaa !23
  %call59 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %85, i32 %86, i32 %87) #3
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.end.62, label %if.then.61

if.then.61:                                       ; preds = %if.then.58
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.102

if.end.62:                                        ; preds = %if.then.58
  %get_buffer63 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %88 = load i64, i64* %get_buffer63, align 8, !tbaa !66
  store i64 %88, i64* %get_buffer, align 8, !tbaa !63
  %bits_left64 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %89 = load i32, i32* %bits_left64, align 4, !tbaa !67
  store i32 %89, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.62, %if.then.55
  %90 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %91 = load i32, i32* %s, align 4, !tbaa !23
  %92 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub66 = sub nsw i32 %92, %91
  store i32 %sub66, i32* %bits_left, align 4, !tbaa !23
  %sh_prom67 = zext i32 %sub66 to i64
  %shr68 = ashr i64 %90, %sh_prom67
  %conv69 = trunc i64 %shr68 to i32
  %93 = load i32, i32* %s, align 4, !tbaa !23
  %idxprom70 = sext i32 %93 to i64
  %arrayidx71 = getelementptr inbounds [16 x i32], [16 x i32]* @bmask, i32 0, i64 %idxprom70
  %94 = load i32, i32* %arrayidx71, align 4, !tbaa !23
  %and72 = and i32 %conv69, %94
  store i32 %and72, i32* %r, align 4, !tbaa !23
  %95 = load i32, i32* %r, align 4, !tbaa !23
  %96 = load i32, i32* %s, align 4, !tbaa !23
  %sub73 = sub nsw i32 %96, 1
  %idxprom74 = sext i32 %sub73 to i64
  %arrayidx75 = getelementptr inbounds [16 x i32], [16 x i32]* @bmask, i32 0, i64 %idxprom74
  %97 = load i32, i32* %arrayidx75, align 4, !tbaa !23
  %cmp76 = icmp sle i32 %95, %97
  br i1 %cmp76, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.65
  %98 = load i32, i32* %r, align 4, !tbaa !23
  %99 = load i32, i32* %s, align 4, !tbaa !23
  %idxprom78 = sext i32 %99 to i64
  %arrayidx79 = getelementptr inbounds [16 x i32], [16 x i32]* @bmask, i32 0, i64 %idxprom78
  %100 = load i32, i32* %arrayidx79, align 4, !tbaa !23
  %sub80 = sub nsw i32 %98, %100
  br label %cond.end

cond.false:                                       ; preds = %if.end.65
  %101 = load i32, i32* %r, align 4, !tbaa !23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub80, %cond.true ], [ %101, %cond.false ]
  store i32 %cond, i32* %s, align 4, !tbaa !23
  br label %if.end.81

if.end.81:                                        ; preds = %cond.end, %cleanup.cont
  %102 = load i32, i32* %ci, align 4, !tbaa !23
  %idxprom82 = sext i32 %102 to i64
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %state, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom82
  %103 = load i32, i32* %arrayidx83, align 4, !tbaa !23
  %104 = load i32, i32* %s, align 4, !tbaa !23
  %add = add nsw i32 %104, %103
  store i32 %add, i32* %s, align 4, !tbaa !23
  %105 = load i32, i32* %s, align 4, !tbaa !23
  %106 = load i32, i32* %ci, align 4, !tbaa !23
  %idxprom84 = sext i32 %106 to i64
  %last_dc_val85 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %state, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val85, i32 0, i64 %idxprom84
  store i32 %105, i32* %arrayidx86, align 4, !tbaa !23
  %107 = load i32, i32* %s, align 4, !tbaa !23
  %108 = load i32, i32* %Al, align 4, !tbaa !23
  %shl = shl i32 %107, %108
  %conv87 = trunc i32 %shl to i16
  %109 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds [64 x i16], [64 x i16]* %109, i32 0, i64 0
  store i16 %conv87, i16* %arrayidx88, align 2, !tbaa !68
  br label %for.inc

for.inc:                                          ; preds = %if.end.81
  %110 = load i32, i32* %blkn, align 4, !tbaa !23
  %inc = add nsw i32 %110, 1
  store i32 %inc, i32* %blkn, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %next_input_byte89 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  %111 = load i8*, i8** %next_input_byte89, align 8, !tbaa !60
  %112 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src90 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %112, i32 0, i32 6
  %113 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src90, align 8, !tbaa !57
  %next_input_byte91 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %113, i32 0, i32 0
  store i8* %111, i8** %next_input_byte91, align 8, !tbaa !58
  %bytes_in_buffer92 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  %114 = load i64, i64* %bytes_in_buffer92, align 8, !tbaa !62
  %115 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src93 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %115, i32 0, i32 6
  %116 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src93, align 8, !tbaa !57
  %bytes_in_buffer94 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %116, i32 0, i32 1
  store i64 %114, i64* %bytes_in_buffer94, align 8, !tbaa !61
  %117 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %118 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %bitstate95 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %118, i32 0, i32 1
  %get_buffer96 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate95, i32 0, i32 0
  store i64 %117, i64* %get_buffer96, align 8, !tbaa !48
  %119 = load i32, i32* %bits_left, align 4, !tbaa !23
  %120 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %bitstate97 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %120, i32 0, i32 1
  %bits_left98 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate97, i32 0, i32 1
  store i32 %119, i32* %bits_left98, align 4, !tbaa !47
  %121 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %saved99 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %121, i32 0, i32 2
  %122 = bitcast %struct.savable_state* %saved99 to i8*
  %123 = bitcast %struct.savable_state* %state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %122, i8* %123, i64 20, i32 4, i1 false), !tbaa.struct !64
  br label %if.end.100

if.end.100:                                       ; preds = %for.end, %if.end.7
  %124 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %restarts_to_go101 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %124, i32 0, i32 4
  %125 = load i32, i32* %restarts_to_go101, align 4, !tbaa !51
  %dec = add i32 %125, -1
  store i32 %dec, i32* %restarts_to_go101, align 4, !tbaa !51
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.102

cleanup.102:                                      ; preds = %if.end.100, %if.then.61, %cleanup, %if.then.5
  %126 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  %127 = bitcast %struct.d_derived_tbl** %tbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast %struct.savable_state* %state to i8*
  call void @llvm.lifetime.end(i64 20, i8* %128) #1
  %129 = bitcast %struct.bitread_working_state* %br_state to i8*
  call void @llvm.lifetime.end(i64 40, i8* %129) #1
  %130 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast i64* %get_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = bitcast i32* %s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = bitcast i32* %Al to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast %struct.huff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %139 = load i32, i32* %retval
  ret i32 %139
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_mcu_AC_first(%struct.jpeg_decompress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.huff_entropy_decoder*, align 8
  %s = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %EOBRUN = alloca i32, align 4
  %Se = alloca i32, align 4
  %Al = alloca i32, align 4
  %natural_order = alloca i32*, align 8
  %block = alloca [64 x i16]*, align 8
  %get_buffer = alloca i64, align 8
  %bits_left = alloca i32, align 4
  %br_state = alloca %struct.bitread_working_state, align 8
  %tbl = alloca %struct.d_derived_tbl*, align 8
  %cleanup.dest.slot = alloca i32
  %nb = alloca i32, align 4
  %look = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.huff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 89
  %2 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_decoder* %2 to %struct.huff_entropy_decoder*
  store %struct.huff_entropy_decoder* %3, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %4 = bitcast i32* %s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %EOBRUN to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %Se to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %Al to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32** %natural_order to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i64* %get_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast %struct.bitread_working_state* %br_state to i8*
  call void @llvm.lifetime.start(i64 40, i8* %14) #1
  %15 = bitcast %struct.d_derived_tbl** %tbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 51
  %17 = load i32, i32* %restart_interval, align 4, !tbaa !50
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %18 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %18, i32 0, i32 4
  %19 = load i32, i32* %restarts_to_go, align 4, !tbaa !51
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.then
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 @process_restart(%struct.jpeg_decompress_struct* %20) #3
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then.2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.133

if.end:                                           ; preds = %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %entry
  %21 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %insufficient_data = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %21, i32 0, i32 3
  %22 = load i32, i32* %insufficient_data, align 4, !tbaa !49
  %tobool7 = icmp ne i32 %22, 0
  br i1 %tobool7, label %if.end.130, label %if.then.8

if.then.8:                                        ; preds = %if.end.6
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 76
  %24 = load i32, i32* %Se9, align 4, !tbaa !25
  store i32 %24, i32* %Se, align 4, !tbaa !23
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 78
  %26 = load i32, i32* %Al10, align 4, !tbaa !29
  store i32 %26, i32* %Al, align 4, !tbaa !23
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 80
  %28 = load i32*, i32** %natural_order11, align 8, !tbaa !69
  store i32* %28, i32** %natural_order, align 8, !tbaa !1
  %29 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %29, i32 0, i32 2
  %EOBRUN12 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved, i32 0, i32 0
  %30 = load i32, i32* %EOBRUN12, align 4, !tbaa !41
  store i32 %30, i32* %EOBRUN, align 4, !tbaa !23
  %31 = load i32, i32* %EOBRUN, align 4, !tbaa !23
  %tobool13 = icmp ne i32 %31, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.8
  %32 = load i32, i32* %EOBRUN, align 4, !tbaa !23
  %dec = add i32 %32, -1
  store i32 %dec, i32* %EOBRUN, align 4, !tbaa !23
  br label %if.end.127

if.else:                                          ; preds = %if.then.8
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cinfo15 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  store %struct.jpeg_decompress_struct* %33, %struct.jpeg_decompress_struct** %cinfo15, align 8, !tbaa !55
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 6
  %35 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !57
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %35, i32 0, i32 0
  %36 = load i8*, i8** %next_input_byte, align 8, !tbaa !58
  %next_input_byte16 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  store i8* %36, i8** %next_input_byte16, align 8, !tbaa !60
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 6
  %38 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src17, align 8, !tbaa !57
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %38, i32 0, i32 1
  %39 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !61
  %bytes_in_buffer18 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  store i64 %39, i64* %bytes_in_buffer18, align 8, !tbaa !62
  %40 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %bitstate = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %40, i32 0, i32 1
  %get_buffer19 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate, i32 0, i32 0
  %41 = load i64, i64* %get_buffer19, align 8, !tbaa !48
  store i64 %41, i64* %get_buffer, align 8, !tbaa !63
  %42 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %bitstate20 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %42, i32 0, i32 1
  %bits_left21 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate20, i32 0, i32 1
  %43 = load i32, i32* %bits_left21, align 4, !tbaa !47
  store i32 %43, i32* %bits_left, align 4, !tbaa !23
  %44 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %44, i64 0
  %45 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !1
  store [64 x i16]* %45, [64 x i16]** %block, align 8, !tbaa !1
  %46 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %ac_derived_tbl = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %46, i32 0, i32 6
  %47 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %ac_derived_tbl, align 8, !tbaa !40
  store %struct.d_derived_tbl* %47, %struct.d_derived_tbl** %tbl, align 8, !tbaa !1
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 75
  %49 = load i32, i32* %Ss, align 4, !tbaa !24
  store i32 %49, i32* %k, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %50 = load i32, i32* %k, align 4, !tbaa !23
  %51 = load i32, i32* %Se, align 4, !tbaa !23
  %cmp22 = icmp sle i32 %50, %51
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %52 = bitcast i32* %nb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  %53 = bitcast i32* %look to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  %54 = load i32, i32* %bits_left, align 4, !tbaa !23
  %cmp23 = icmp slt i32 %54, 8
  br i1 %cmp23, label %if.then.24, label %if.end.34

if.then.24:                                       ; preds = %for.body
  %55 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %56 = load i32, i32* %bits_left, align 4, !tbaa !23
  %call25 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %55, i32 %56, i32 0) #3
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.then.24
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.then.24
  %get_buffer29 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %57 = load i64, i64* %get_buffer29, align 8, !tbaa !66
  store i64 %57, i64* %get_buffer, align 8, !tbaa !63
  %bits_left30 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %58 = load i32, i32* %bits_left30, align 4, !tbaa !67
  store i32 %58, i32* %bits_left, align 4, !tbaa !23
  %59 = load i32, i32* %bits_left, align 4, !tbaa !23
  %cmp31 = icmp slt i32 %59, 8
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.28
  store i32 1, i32* %nb, align 4, !tbaa !23
  br label %label2

if.end.33:                                        ; preds = %if.end.28
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %for.body
  %60 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %61 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub = sub nsw i32 %61, 8
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %60, %sh_prom
  %conv = trunc i64 %shr to i32
  %62 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bmask, i32 0, i64 8), align 4, !tbaa !23
  %and = and i32 %conv, %62
  store i32 %and, i32* %look, align 4, !tbaa !23
  %63 = load i32, i32* %look, align 4, !tbaa !23
  %idxprom = sext i32 %63 to i64
  %64 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %tbl, align 8, !tbaa !1
  %look_nbits = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %64, i32 0, i32 3
  %arrayidx35 = getelementptr inbounds [256 x i32], [256 x i32]* %look_nbits, i32 0, i64 %idxprom
  %65 = load i32, i32* %arrayidx35, align 4, !tbaa !23
  store i32 %65, i32* %nb, align 4, !tbaa !23
  %cmp36 = icmp ne i32 %65, 0
  br i1 %cmp36, label %if.then.38, label %if.else.43

if.then.38:                                       ; preds = %if.end.34
  %66 = load i32, i32* %nb, align 4, !tbaa !23
  %67 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub39 = sub nsw i32 %67, %66
  store i32 %sub39, i32* %bits_left, align 4, !tbaa !23
  %68 = load i32, i32* %look, align 4, !tbaa !23
  %idxprom40 = sext i32 %68 to i64
  %69 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %tbl, align 8, !tbaa !1
  %look_sym = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %69, i32 0, i32 4
  %arrayidx41 = getelementptr inbounds [256 x i8], [256 x i8]* %look_sym, i32 0, i64 %idxprom40
  %70 = load i8, i8* %arrayidx41, align 1, !tbaa !65
  %conv42 = zext i8 %70 to i32
  store i32 %conv42, i32* %s, align 4, !tbaa !23
  br label %if.end.51

if.else.43:                                       ; preds = %if.end.34
  store i32 9, i32* %nb, align 4, !tbaa !23
  br label %label2

label2:                                           ; preds = %if.else.43, %if.then.32
  %71 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %72 = load i32, i32* %bits_left, align 4, !tbaa !23
  %73 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %tbl, align 8, !tbaa !1
  %74 = load i32, i32* %nb, align 4, !tbaa !23
  %call44 = call i32 @jpeg_huff_decode(%struct.bitread_working_state* %br_state, i64 %71, i32 %72, %struct.d_derived_tbl* %73, i32 %74) #3
  store i32 %call44, i32* %s, align 4, !tbaa !23
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %label2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %label2
  %get_buffer49 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %75 = load i64, i64* %get_buffer49, align 8, !tbaa !66
  store i64 %75, i64* %get_buffer, align 8, !tbaa !63
  %bits_left50 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %76 = load i32, i32* %bits_left50, align 4, !tbaa !67
  store i32 %76, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.48, %if.then.38
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.51, %if.then.47, %if.then.27
  %77 = bitcast i32* %look to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %nb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.133 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %79 = load i32, i32* %s, align 4, !tbaa !23
  %shr53 = ashr i32 %79, 4
  store i32 %shr53, i32* %r, align 4, !tbaa !23
  %80 = load i32, i32* %s, align 4, !tbaa !23
  %and54 = and i32 %80, 15
  store i32 %and54, i32* %s, align 4, !tbaa !23
  %81 = load i32, i32* %s, align 4, !tbaa !23
  %tobool55 = icmp ne i32 %81, 0
  br i1 %tobool55, label %if.then.56, label %if.else.87

if.then.56:                                       ; preds = %cleanup.cont
  %82 = load i32, i32* %r, align 4, !tbaa !23
  %83 = load i32, i32* %k, align 4, !tbaa !23
  %add = add nsw i32 %83, %82
  store i32 %add, i32* %k, align 4, !tbaa !23
  %84 = load i32, i32* %bits_left, align 4, !tbaa !23
  %85 = load i32, i32* %s, align 4, !tbaa !23
  %cmp57 = icmp slt i32 %84, %85
  br i1 %cmp57, label %if.then.59, label %if.end.66

if.then.59:                                       ; preds = %if.then.56
  %86 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %87 = load i32, i32* %bits_left, align 4, !tbaa !23
  %88 = load i32, i32* %s, align 4, !tbaa !23
  %call60 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %86, i32 %87, i32 %88) #3
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.end.63, label %if.then.62

if.then.62:                                       ; preds = %if.then.59
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.133

if.end.63:                                        ; preds = %if.then.59
  %get_buffer64 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %89 = load i64, i64* %get_buffer64, align 8, !tbaa !66
  store i64 %89, i64* %get_buffer, align 8, !tbaa !63
  %bits_left65 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %90 = load i32, i32* %bits_left65, align 4, !tbaa !67
  store i32 %90, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.63, %if.then.56
  %91 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %92 = load i32, i32* %s, align 4, !tbaa !23
  %93 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub67 = sub nsw i32 %93, %92
  store i32 %sub67, i32* %bits_left, align 4, !tbaa !23
  %sh_prom68 = zext i32 %sub67 to i64
  %shr69 = ashr i64 %91, %sh_prom68
  %conv70 = trunc i64 %shr69 to i32
  %94 = load i32, i32* %s, align 4, !tbaa !23
  %idxprom71 = sext i32 %94 to i64
  %arrayidx72 = getelementptr inbounds [16 x i32], [16 x i32]* @bmask, i32 0, i64 %idxprom71
  %95 = load i32, i32* %arrayidx72, align 4, !tbaa !23
  %and73 = and i32 %conv70, %95
  store i32 %and73, i32* %r, align 4, !tbaa !23
  %96 = load i32, i32* %r, align 4, !tbaa !23
  %97 = load i32, i32* %s, align 4, !tbaa !23
  %sub74 = sub nsw i32 %97, 1
  %idxprom75 = sext i32 %sub74 to i64
  %arrayidx76 = getelementptr inbounds [16 x i32], [16 x i32]* @bmask, i32 0, i64 %idxprom75
  %98 = load i32, i32* %arrayidx76, align 4, !tbaa !23
  %cmp77 = icmp sle i32 %96, %98
  br i1 %cmp77, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.66
  %99 = load i32, i32* %r, align 4, !tbaa !23
  %100 = load i32, i32* %s, align 4, !tbaa !23
  %idxprom79 = sext i32 %100 to i64
  %arrayidx80 = getelementptr inbounds [16 x i32], [16 x i32]* @bmask, i32 0, i64 %idxprom79
  %101 = load i32, i32* %arrayidx80, align 4, !tbaa !23
  %sub81 = sub nsw i32 %99, %101
  br label %cond.end

cond.false:                                       ; preds = %if.end.66
  %102 = load i32, i32* %r, align 4, !tbaa !23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub81, %cond.true ], [ %102, %cond.false ]
  store i32 %cond, i32* %s, align 4, !tbaa !23
  %103 = load i32, i32* %s, align 4, !tbaa !23
  %104 = load i32, i32* %Al, align 4, !tbaa !23
  %shl = shl i32 %103, %104
  %conv82 = trunc i32 %shl to i16
  %105 = load i32, i32* %k, align 4, !tbaa !23
  %idxprom83 = sext i32 %105 to i64
  %106 = load i32*, i32** %natural_order, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i32, i32* %106, i64 %idxprom83
  %107 = load i32, i32* %arrayidx84, align 4, !tbaa !23
  %idxprom85 = sext i32 %107 to i64
  %108 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds [64 x i16], [64 x i16]* %108, i32 0, i64 %idxprom85
  store i16 %conv82, i16* %arrayidx86, align 2, !tbaa !68
  br label %if.end.116

if.else.87:                                       ; preds = %cleanup.cont
  %109 = load i32, i32* %r, align 4, !tbaa !23
  %cmp88 = icmp ne i32 %109, 15
  br i1 %cmp88, label %if.then.90, label %if.end.114

if.then.90:                                       ; preds = %if.else.87
  %110 = load i32, i32* %r, align 4, !tbaa !23
  %tobool91 = icmp ne i32 %110, 0
  br i1 %tobool91, label %if.then.92, label %if.end.113

if.then.92:                                       ; preds = %if.then.90
  %111 = load i32, i32* %r, align 4, !tbaa !23
  %shl93 = shl i32 1, %111
  store i32 %shl93, i32* %EOBRUN, align 4, !tbaa !23
  %112 = load i32, i32* %bits_left, align 4, !tbaa !23
  %113 = load i32, i32* %r, align 4, !tbaa !23
  %cmp94 = icmp slt i32 %112, %113
  br i1 %cmp94, label %if.then.96, label %if.end.103

if.then.96:                                       ; preds = %if.then.92
  %114 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %115 = load i32, i32* %bits_left, align 4, !tbaa !23
  %116 = load i32, i32* %r, align 4, !tbaa !23
  %call97 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %114, i32 %115, i32 %116) #3
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.end.100, label %if.then.99

if.then.99:                                       ; preds = %if.then.96
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.133

if.end.100:                                       ; preds = %if.then.96
  %get_buffer101 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %117 = load i64, i64* %get_buffer101, align 8, !tbaa !66
  store i64 %117, i64* %get_buffer, align 8, !tbaa !63
  %bits_left102 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %118 = load i32, i32* %bits_left102, align 4, !tbaa !67
  store i32 %118, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.100, %if.then.92
  %119 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %120 = load i32, i32* %r, align 4, !tbaa !23
  %121 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub104 = sub nsw i32 %121, %120
  store i32 %sub104, i32* %bits_left, align 4, !tbaa !23
  %sh_prom105 = zext i32 %sub104 to i64
  %shr106 = ashr i64 %119, %sh_prom105
  %conv107 = trunc i64 %shr106 to i32
  %122 = load i32, i32* %r, align 4, !tbaa !23
  %idxprom108 = sext i32 %122 to i64
  %arrayidx109 = getelementptr inbounds [16 x i32], [16 x i32]* @bmask, i32 0, i64 %idxprom108
  %123 = load i32, i32* %arrayidx109, align 4, !tbaa !23
  %and110 = and i32 %conv107, %123
  store i32 %and110, i32* %r, align 4, !tbaa !23
  %124 = load i32, i32* %r, align 4, !tbaa !23
  %125 = load i32, i32* %EOBRUN, align 4, !tbaa !23
  %add111 = add i32 %125, %124
  store i32 %add111, i32* %EOBRUN, align 4, !tbaa !23
  %126 = load i32, i32* %EOBRUN, align 4, !tbaa !23
  %dec112 = add i32 %126, -1
  store i32 %dec112, i32* %EOBRUN, align 4, !tbaa !23
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.103, %if.then.90
  br label %for.end

if.end.114:                                       ; preds = %if.else.87
  %127 = load i32, i32* %k, align 4, !tbaa !23
  %add115 = add nsw i32 %127, 15
  store i32 %add115, i32* %k, align 4, !tbaa !23
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.114, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.116
  %128 = load i32, i32* %k, align 4, !tbaa !23
  %inc = add nsw i32 %128, 1
  store i32 %inc, i32* %k, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %if.end.113, %for.cond
  %next_input_byte117 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  %129 = load i8*, i8** %next_input_byte117, align 8, !tbaa !60
  %130 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src118 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %130, i32 0, i32 6
  %131 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src118, align 8, !tbaa !57
  %next_input_byte119 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %131, i32 0, i32 0
  store i8* %129, i8** %next_input_byte119, align 8, !tbaa !58
  %bytes_in_buffer120 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  %132 = load i64, i64* %bytes_in_buffer120, align 8, !tbaa !62
  %133 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src121 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %133, i32 0, i32 6
  %134 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src121, align 8, !tbaa !57
  %bytes_in_buffer122 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %134, i32 0, i32 1
  store i64 %132, i64* %bytes_in_buffer122, align 8, !tbaa !61
  %135 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %136 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %bitstate123 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %136, i32 0, i32 1
  %get_buffer124 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate123, i32 0, i32 0
  store i64 %135, i64* %get_buffer124, align 8, !tbaa !48
  %137 = load i32, i32* %bits_left, align 4, !tbaa !23
  %138 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %bitstate125 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %138, i32 0, i32 1
  %bits_left126 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate125, i32 0, i32 1
  store i32 %137, i32* %bits_left126, align 4, !tbaa !47
  br label %if.end.127

if.end.127:                                       ; preds = %for.end, %if.then.14
  %139 = load i32, i32* %EOBRUN, align 4, !tbaa !23
  %140 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %saved128 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %140, i32 0, i32 2
  %EOBRUN129 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved128, i32 0, i32 0
  store i32 %139, i32* %EOBRUN129, align 4, !tbaa !41
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.127, %if.end.6
  %141 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %restarts_to_go131 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %141, i32 0, i32 4
  %142 = load i32, i32* %restarts_to_go131, align 4, !tbaa !51
  %dec132 = add i32 %142, -1
  store i32 %dec132, i32* %restarts_to_go131, align 4, !tbaa !51
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.133

cleanup.133:                                      ; preds = %if.end.130, %if.then.99, %if.then.62, %cleanup, %if.then.4
  %143 = bitcast %struct.d_derived_tbl** %tbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %144 = bitcast %struct.bitread_working_state* %br_state to i8*
  call void @llvm.lifetime.end(i64 40, i8* %144) #1
  %145 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast i64* %get_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast i32** %natural_order to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast i32* %Al to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast i32* %Se to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast i32* %EOBRUN to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  %153 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast i32* %s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #1
  %155 = bitcast %struct.huff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %156 = load i32, i32* %retval
  ret i32 %156
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_mcu_DC_refine(%struct.jpeg_decompress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.huff_entropy_decoder*, align 8
  %p1 = alloca i32, align 4
  %blkn = alloca i32, align 4
  %get_buffer = alloca i64, align 8
  %bits_left = alloca i32, align 4
  %br_state = alloca %struct.bitread_working_state, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.huff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 89
  %2 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_decoder* %2 to %struct.huff_entropy_decoder*
  store %struct.huff_entropy_decoder* %3, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %4 = bitcast i32* %p1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i64* %get_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %struct.bitread_working_state* %br_state to i8*
  call void @llvm.lifetime.start(i64 40, i8* %8) #1
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 51
  %10 = load i32, i32* %restart_interval, align 4, !tbaa !50
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %11 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %11, i32 0, i32 4
  %12 = load i32, i32* %restarts_to_go, align 4, !tbaa !51
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.then
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 @process_restart(%struct.jpeg_decompress_struct* %13) #3
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then.2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %entry
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cinfo7 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  store %struct.jpeg_decompress_struct* %14, %struct.jpeg_decompress_struct** %cinfo7, align 8, !tbaa !55
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 6
  %16 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !57
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %16, i32 0, i32 0
  %17 = load i8*, i8** %next_input_byte, align 8, !tbaa !58
  %next_input_byte8 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  store i8* %17, i8** %next_input_byte8, align 8, !tbaa !60
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 6
  %19 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src9, align 8, !tbaa !57
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %19, i32 0, i32 1
  %20 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !61
  %bytes_in_buffer10 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  store i64 %20, i64* %bytes_in_buffer10, align 8, !tbaa !62
  %21 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %bitstate = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %21, i32 0, i32 1
  %get_buffer11 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate, i32 0, i32 0
  %22 = load i64, i64* %get_buffer11, align 8, !tbaa !48
  store i64 %22, i64* %get_buffer, align 8, !tbaa !63
  %23 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %bitstate12 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %23, i32 0, i32 1
  %bits_left13 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate12, i32 0, i32 1
  %24 = load i32, i32* %bits_left13, align 4, !tbaa !47
  store i32 %24, i32* %bits_left, align 4, !tbaa !23
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 78
  %26 = load i32, i32* %Al, align 4, !tbaa !29
  %shl = shl i32 1, %26
  store i32 %shl, i32* %p1, align 4, !tbaa !23
  store i32 0, i32* %blkn, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %27 = load i32, i32* %blkn, align 4, !tbaa !23
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 73
  %29 = load i32, i32* %blocks_in_MCU, align 4, !tbaa !43
  %cmp14 = icmp slt i32 %27, %29
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %bits_left, align 4, !tbaa !23
  %cmp15 = icmp slt i32 %30, 1
  br i1 %cmp15, label %if.then.16, label %if.end.23

if.then.16:                                       ; preds = %for.body
  %31 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %32 = load i32, i32* %bits_left, align 4, !tbaa !23
  %call17 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %31, i32 %32, i32 1) #3
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.then.16
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.then.16
  %get_buffer21 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %33 = load i64, i64* %get_buffer21, align 8, !tbaa !66
  store i64 %33, i64* %get_buffer, align 8, !tbaa !63
  %bits_left22 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %34 = load i32, i32* %bits_left22, align 4, !tbaa !67
  store i32 %34, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.20, %for.body
  %35 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %36 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub = sub nsw i32 %36, 1
  store i32 %sub, i32* %bits_left, align 4, !tbaa !23
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %35, %sh_prom
  %conv = trunc i64 %shr to i32
  %37 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bmask, i32 0, i64 1), align 4, !tbaa !23
  %and = and i32 %conv, %37
  %tobool24 = icmp ne i32 %and, 0
  br i1 %tobool24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.end.23
  %38 = load i32, i32* %p1, align 4, !tbaa !23
  %39 = load i32, i32* %blkn, align 4, !tbaa !23
  %idxprom = sext i32 %39 to i64
  %40 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %40, i64 %idxprom
  %41 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds [64 x i16], [64 x i16]* %41, i64 0
  %arrayidx27 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx26, i32 0, i64 0
  %42 = load i16, i16* %arrayidx27, align 2, !tbaa !68
  %conv28 = sext i16 %42 to i32
  %or = or i32 %conv28, %38
  %conv29 = trunc i32 %or to i16
  store i16 %conv29, i16* %arrayidx27, align 2, !tbaa !68
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %if.end.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %43 = load i32, i32* %blkn, align 4, !tbaa !23
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %blkn, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %next_input_byte31 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  %44 = load i8*, i8** %next_input_byte31, align 8, !tbaa !60
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src32 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 6
  %46 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src32, align 8, !tbaa !57
  %next_input_byte33 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %46, i32 0, i32 0
  store i8* %44, i8** %next_input_byte33, align 8, !tbaa !58
  %bytes_in_buffer34 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  %47 = load i64, i64* %bytes_in_buffer34, align 8, !tbaa !62
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 6
  %49 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src35, align 8, !tbaa !57
  %bytes_in_buffer36 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %49, i32 0, i32 1
  store i64 %47, i64* %bytes_in_buffer36, align 8, !tbaa !61
  %50 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %51 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %bitstate37 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %51, i32 0, i32 1
  %get_buffer38 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate37, i32 0, i32 0
  store i64 %50, i64* %get_buffer38, align 8, !tbaa !48
  %52 = load i32, i32* %bits_left, align 4, !tbaa !23
  %53 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %bitstate39 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %53, i32 0, i32 1
  %bits_left40 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate39, i32 0, i32 1
  store i32 %52, i32* %bits_left40, align 4, !tbaa !47
  %54 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %restarts_to_go41 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %54, i32 0, i32 4
  %55 = load i32, i32* %restarts_to_go41, align 4, !tbaa !51
  %dec = add i32 %55, -1
  store i32 %dec, i32* %restarts_to_go41, align 4, !tbaa !51
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.19, %if.then.4
  %56 = bitcast %struct.bitread_working_state* %br_state to i8*
  call void @llvm.lifetime.end(i64 40, i8* %56) #1
  %57 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i64* %get_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i32* %p1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast %struct.huff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_mcu_AC_refine(%struct.jpeg_decompress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.huff_entropy_decoder*, align 8
  %s = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %EOBRUN = alloca i32, align 4
  %Se = alloca i32, align 4
  %p1 = alloca i32, align 4
  %m1 = alloca i32, align 4
  %natural_order = alloca i32*, align 8
  %block = alloca [64 x i16]*, align 8
  %thiscoef = alloca i16*, align 8
  %get_buffer = alloca i64, align 8
  %bits_left = alloca i32, align 4
  %br_state = alloca %struct.bitread_working_state, align 8
  %tbl = alloca %struct.d_derived_tbl*, align 8
  %num_newnz = alloca i32, align 4
  %newnz_pos = alloca [64 x i32], align 16
  %cleanup.dest.slot = alloca i32
  %nb = alloca i32, align 4
  %look = alloca i32, align 4
  %pos = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.huff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 89
  %2 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_decoder* %2 to %struct.huff_entropy_decoder*
  store %struct.huff_entropy_decoder* %3, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %4 = bitcast i32* %s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %EOBRUN to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %Se to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %p1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %m1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32** %natural_order to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i16** %thiscoef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i64* %get_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast %struct.bitread_working_state* %br_state to i8*
  call void @llvm.lifetime.start(i64 40, i8* %16) #1
  %17 = bitcast %struct.d_derived_tbl** %tbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast i32* %num_newnz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast [64 x i32]* %newnz_pos to i8*
  call void @llvm.lifetime.start(i64 256, i8* %19) #1
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 51
  %21 = load i32, i32* %restart_interval, align 4, !tbaa !50
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %22 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %22, i32 0, i32 4
  %23 = load i32, i32* %restarts_to_go, align 4, !tbaa !51
  %cmp = icmp eq i32 %23, 0
  br i1 %cmp, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.then
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 @process_restart(%struct.jpeg_decompress_struct* %24) #3
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then.2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.248

if.end:                                           ; preds = %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %entry
  %25 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %insufficient_data = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %25, i32 0, i32 3
  %26 = load i32, i32* %insufficient_data, align 4, !tbaa !49
  %tobool7 = icmp ne i32 %26, 0
  br i1 %tobool7, label %if.end.239, label %if.then.8

if.then.8:                                        ; preds = %if.end.6
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Se9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 76
  %28 = load i32, i32* %Se9, align 4, !tbaa !25
  store i32 %28, i32* %Se, align 4, !tbaa !23
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 78
  %30 = load i32, i32* %Al, align 4, !tbaa !29
  %shl = shl i32 1, %30
  store i32 %shl, i32* %p1, align 4, !tbaa !23
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Al10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 78
  %32 = load i32, i32* %Al10, align 4, !tbaa !29
  %shl11 = shl i32 -1, %32
  store i32 %shl11, i32* %m1, align 4, !tbaa !23
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 80
  %34 = load i32*, i32** %natural_order12, align 8, !tbaa !69
  store i32* %34, i32** %natural_order, align 8, !tbaa !1
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cinfo13 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  store %struct.jpeg_decompress_struct* %35, %struct.jpeg_decompress_struct** %cinfo13, align 8, !tbaa !55
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 6
  %37 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !57
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %37, i32 0, i32 0
  %38 = load i8*, i8** %next_input_byte, align 8, !tbaa !58
  %next_input_byte14 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  store i8* %38, i8** %next_input_byte14, align 8, !tbaa !60
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 6
  %40 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src15, align 8, !tbaa !57
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %40, i32 0, i32 1
  %41 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !61
  %bytes_in_buffer16 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  store i64 %41, i64* %bytes_in_buffer16, align 8, !tbaa !62
  %42 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %bitstate = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %42, i32 0, i32 1
  %get_buffer17 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate, i32 0, i32 0
  %43 = load i64, i64* %get_buffer17, align 8, !tbaa !48
  store i64 %43, i64* %get_buffer, align 8, !tbaa !63
  %44 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %bitstate18 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %44, i32 0, i32 1
  %bits_left19 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate18, i32 0, i32 1
  %45 = load i32, i32* %bits_left19, align 4, !tbaa !47
  store i32 %45, i32* %bits_left, align 4, !tbaa !23
  %46 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %46, i32 0, i32 2
  %EOBRUN20 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved, i32 0, i32 0
  %47 = load i32, i32* %EOBRUN20, align 4, !tbaa !41
  store i32 %47, i32* %EOBRUN, align 4, !tbaa !23
  %48 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %48, i64 0
  %49 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !1
  store [64 x i16]* %49, [64 x i16]** %block, align 8, !tbaa !1
  %50 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %ac_derived_tbl = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %50, i32 0, i32 6
  %51 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %ac_derived_tbl, align 8, !tbaa !40
  store %struct.d_derived_tbl* %51, %struct.d_derived_tbl** %tbl, align 8, !tbaa !1
  store i32 0, i32* %num_newnz, align 4, !tbaa !23
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %52, i32 0, i32 75
  %53 = load i32, i32* %Ss, align 4, !tbaa !24
  store i32 %53, i32* %k, align 4, !tbaa !23
  %54 = load i32, i32* %EOBRUN, align 4, !tbaa !23
  %cmp21 = icmp eq i32 %54, 0
  br i1 %cmp21, label %if.then.22, label %if.end.172

if.then.22:                                       ; preds = %if.then.8
  br label %do.body

do.body:                                          ; preds = %do.cond.168, %if.then.22
  %55 = bitcast i32* %nb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  %56 = bitcast i32* %look to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  %57 = load i32, i32* %bits_left, align 4, !tbaa !23
  %cmp23 = icmp slt i32 %57, 8
  br i1 %cmp23, label %if.then.24, label %if.end.34

if.then.24:                                       ; preds = %do.body
  %58 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %59 = load i32, i32* %bits_left, align 4, !tbaa !23
  %call25 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %58, i32 %59, i32 0) #3
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.then.24
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.then.24
  %get_buffer29 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %60 = load i64, i64* %get_buffer29, align 8, !tbaa !66
  store i64 %60, i64* %get_buffer, align 8, !tbaa !63
  %bits_left30 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %61 = load i32, i32* %bits_left30, align 4, !tbaa !67
  store i32 %61, i32* %bits_left, align 4, !tbaa !23
  %62 = load i32, i32* %bits_left, align 4, !tbaa !23
  %cmp31 = icmp slt i32 %62, 8
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.28
  store i32 1, i32* %nb, align 4, !tbaa !23
  br label %label3

if.end.33:                                        ; preds = %if.end.28
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %do.body
  %63 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %64 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub = sub nsw i32 %64, 8
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %63, %sh_prom
  %conv = trunc i64 %shr to i32
  %65 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bmask, i32 0, i64 8), align 4, !tbaa !23
  %and = and i32 %conv, %65
  store i32 %and, i32* %look, align 4, !tbaa !23
  %66 = load i32, i32* %look, align 4, !tbaa !23
  %idxprom = sext i32 %66 to i64
  %67 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %tbl, align 8, !tbaa !1
  %look_nbits = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %67, i32 0, i32 3
  %arrayidx35 = getelementptr inbounds [256 x i32], [256 x i32]* %look_nbits, i32 0, i64 %idxprom
  %68 = load i32, i32* %arrayidx35, align 4, !tbaa !23
  store i32 %68, i32* %nb, align 4, !tbaa !23
  %cmp36 = icmp ne i32 %68, 0
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %if.end.34
  %69 = load i32, i32* %nb, align 4, !tbaa !23
  %70 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub39 = sub nsw i32 %70, %69
  store i32 %sub39, i32* %bits_left, align 4, !tbaa !23
  %71 = load i32, i32* %look, align 4, !tbaa !23
  %idxprom40 = sext i32 %71 to i64
  %72 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %tbl, align 8, !tbaa !1
  %look_sym = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %72, i32 0, i32 4
  %arrayidx41 = getelementptr inbounds [256 x i8], [256 x i8]* %look_sym, i32 0, i64 %idxprom40
  %73 = load i8, i8* %arrayidx41, align 1, !tbaa !65
  %conv42 = zext i8 %73 to i32
  store i32 %conv42, i32* %s, align 4, !tbaa !23
  br label %if.end.50

if.else:                                          ; preds = %if.end.34
  store i32 9, i32* %nb, align 4, !tbaa !23
  br label %label3

label3:                                           ; preds = %if.else, %if.then.32
  %74 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %75 = load i32, i32* %bits_left, align 4, !tbaa !23
  %76 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %tbl, align 8, !tbaa !1
  %77 = load i32, i32* %nb, align 4, !tbaa !23
  %call43 = call i32 @jpeg_huff_decode(%struct.bitread_working_state* %br_state, i64 %74, i32 %75, %struct.d_derived_tbl* %76, i32 %77) #3
  store i32 %call43, i32* %s, align 4, !tbaa !23
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %label3
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %label3
  %get_buffer48 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %78 = load i64, i64* %get_buffer48, align 8, !tbaa !66
  store i64 %78, i64* %get_buffer, align 8, !tbaa !63
  %bits_left49 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %79 = load i32, i32* %bits_left49, align 4, !tbaa !67
  store i32 %79, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.47, %if.then.38
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.46, %if.then.27, %if.end.50
  %80 = bitcast i32* %look to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast i32* %nb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.248 [
    i32 0, label %cleanup.cont
    i32 4, label %undoit
  ]

cleanup.cont:                                     ; preds = %cleanup
  %82 = load i32, i32* %s, align 4, !tbaa !23
  %shr52 = ashr i32 %82, 4
  store i32 %shr52, i32* %r, align 4, !tbaa !23
  %83 = load i32, i32* %s, align 4, !tbaa !23
  %and53 = and i32 %83, 15
  store i32 %and53, i32* %s, align 4, !tbaa !23
  %84 = load i32, i32* %s, align 4, !tbaa !23
  %tobool54 = icmp ne i32 %84, 0
  br i1 %tobool54, label %if.then.55, label %if.else.80

if.then.55:                                       ; preds = %cleanup.cont
  %85 = load i32, i32* %s, align 4, !tbaa !23
  %cmp56 = icmp ne i32 %85, 1
  br i1 %cmp56, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %if.then.55
  %86 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %86, i32 0, i32 0
  %87 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !30
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %87, i32 0, i32 5
  store i32 121, i32* %msg_code, align 4, !tbaa !31
  %88 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err59 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %88, i32 0, i32 0
  %89 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err59, align 8, !tbaa !30
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %89, i32 0, i32 1
  %90 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !36
  %91 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %92 = bitcast %struct.jpeg_decompress_struct* %91 to %struct.jpeg_common_struct*
  call void %90(%struct.jpeg_common_struct* %92, i32 -1) #3
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.then.55
  %93 = load i32, i32* %bits_left, align 4, !tbaa !23
  %cmp61 = icmp slt i32 %93, 1
  br i1 %cmp61, label %if.then.63, label %if.end.70

if.then.63:                                       ; preds = %if.end.60
  %94 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %95 = load i32, i32* %bits_left, align 4, !tbaa !23
  %call64 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %94, i32 %95, i32 1) #3
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.end.67, label %if.then.66

if.then.66:                                       ; preds = %if.then.63
  br label %undoit

if.end.67:                                        ; preds = %if.then.63
  %get_buffer68 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %96 = load i64, i64* %get_buffer68, align 8, !tbaa !66
  store i64 %96, i64* %get_buffer, align 8, !tbaa !63
  %bits_left69 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %97 = load i32, i32* %bits_left69, align 4, !tbaa !67
  store i32 %97, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.67, %if.end.60
  %98 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %99 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub71 = sub nsw i32 %99, 1
  store i32 %sub71, i32* %bits_left, align 4, !tbaa !23
  %sh_prom72 = zext i32 %sub71 to i64
  %shr73 = ashr i64 %98, %sh_prom72
  %conv74 = trunc i64 %shr73 to i32
  %100 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bmask, i32 0, i64 1), align 4, !tbaa !23
  %and75 = and i32 %conv74, %100
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %if.end.70
  %101 = load i32, i32* %p1, align 4, !tbaa !23
  store i32 %101, i32* %s, align 4, !tbaa !23
  br label %if.end.79

if.else.78:                                       ; preds = %if.end.70
  %102 = load i32, i32* %m1, align 4, !tbaa !23
  store i32 %102, i32* %s, align 4, !tbaa !23
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.78, %if.then.77
  br label %if.end.106

if.else.80:                                       ; preds = %cleanup.cont
  %103 = load i32, i32* %r, align 4, !tbaa !23
  %cmp81 = icmp ne i32 %103, 15
  br i1 %cmp81, label %if.then.83, label %if.end.105

if.then.83:                                       ; preds = %if.else.80
  %104 = load i32, i32* %r, align 4, !tbaa !23
  %shl84 = shl i32 1, %104
  store i32 %shl84, i32* %EOBRUN, align 4, !tbaa !23
  %105 = load i32, i32* %r, align 4, !tbaa !23
  %tobool85 = icmp ne i32 %105, 0
  br i1 %tobool85, label %if.then.86, label %if.end.104

if.then.86:                                       ; preds = %if.then.83
  %106 = load i32, i32* %bits_left, align 4, !tbaa !23
  %107 = load i32, i32* %r, align 4, !tbaa !23
  %cmp87 = icmp slt i32 %106, %107
  br i1 %cmp87, label %if.then.89, label %if.end.96

if.then.89:                                       ; preds = %if.then.86
  %108 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %109 = load i32, i32* %bits_left, align 4, !tbaa !23
  %110 = load i32, i32* %r, align 4, !tbaa !23
  %call90 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %108, i32 %109, i32 %110) #3
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.end.93, label %if.then.92

if.then.92:                                       ; preds = %if.then.89
  br label %undoit

if.end.93:                                        ; preds = %if.then.89
  %get_buffer94 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %111 = load i64, i64* %get_buffer94, align 8, !tbaa !66
  store i64 %111, i64* %get_buffer, align 8, !tbaa !63
  %bits_left95 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %112 = load i32, i32* %bits_left95, align 4, !tbaa !67
  store i32 %112, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.93, %if.then.86
  %113 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %114 = load i32, i32* %r, align 4, !tbaa !23
  %115 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub97 = sub nsw i32 %115, %114
  store i32 %sub97, i32* %bits_left, align 4, !tbaa !23
  %sh_prom98 = zext i32 %sub97 to i64
  %shr99 = ashr i64 %113, %sh_prom98
  %conv100 = trunc i64 %shr99 to i32
  %116 = load i32, i32* %r, align 4, !tbaa !23
  %idxprom101 = sext i32 %116 to i64
  %arrayidx102 = getelementptr inbounds [16 x i32], [16 x i32]* @bmask, i32 0, i64 %idxprom101
  %117 = load i32, i32* %arrayidx102, align 4, !tbaa !23
  %and103 = and i32 %conv100, %117
  store i32 %and103, i32* %r, align 4, !tbaa !23
  %118 = load i32, i32* %r, align 4, !tbaa !23
  %119 = load i32, i32* %EOBRUN, align 4, !tbaa !23
  %add = add i32 %119, %118
  store i32 %add, i32* %EOBRUN, align 4, !tbaa !23
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.96, %if.then.83
  br label %do.end.171

if.end.105:                                       ; preds = %if.else.80
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.end.79
  br label %do.body.107

do.body.107:                                      ; preds = %do.cond, %if.end.106
  %120 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %120, i32 0, i32 0
  %121 = load i32, i32* %k, align 4, !tbaa !23
  %idxprom108 = sext i32 %121 to i64
  %122 = load i32*, i32** %natural_order, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds i32, i32* %122, i64 %idxprom108
  %123 = load i32, i32* %arrayidx109, align 4, !tbaa !23
  %idx.ext = sext i32 %123 to i64
  %add.ptr = getelementptr inbounds i16, i16* %arraydecay, i64 %idx.ext
  store i16* %add.ptr, i16** %thiscoef, align 8, !tbaa !1
  %124 = load i16*, i16** %thiscoef, align 8, !tbaa !1
  %125 = load i16, i16* %124, align 2, !tbaa !68
  %tobool110 = icmp ne i16 %125, 0
  br i1 %tobool110, label %if.then.111, label %if.else.148

if.then.111:                                      ; preds = %do.body.107
  %126 = load i32, i32* %bits_left, align 4, !tbaa !23
  %cmp112 = icmp slt i32 %126, 1
  br i1 %cmp112, label %if.then.114, label %if.end.121

if.then.114:                                      ; preds = %if.then.111
  %127 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %128 = load i32, i32* %bits_left, align 4, !tbaa !23
  %call115 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %127, i32 %128, i32 1) #3
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.end.118, label %if.then.117

if.then.117:                                      ; preds = %if.then.114
  br label %undoit

if.end.118:                                       ; preds = %if.then.114
  %get_buffer119 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %129 = load i64, i64* %get_buffer119, align 8, !tbaa !66
  store i64 %129, i64* %get_buffer, align 8, !tbaa !63
  %bits_left120 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %130 = load i32, i32* %bits_left120, align 4, !tbaa !67
  store i32 %130, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.118, %if.then.111
  %131 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %132 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub122 = sub nsw i32 %132, 1
  store i32 %sub122, i32* %bits_left, align 4, !tbaa !23
  %sh_prom123 = zext i32 %sub122 to i64
  %shr124 = ashr i64 %131, %sh_prom123
  %conv125 = trunc i64 %shr124 to i32
  %133 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bmask, i32 0, i64 1), align 4, !tbaa !23
  %and126 = and i32 %conv125, %133
  %tobool127 = icmp ne i32 %and126, 0
  br i1 %tobool127, label %if.then.128, label %if.end.147

if.then.128:                                      ; preds = %if.end.121
  %134 = load i16*, i16** %thiscoef, align 8, !tbaa !1
  %135 = load i16, i16* %134, align 2, !tbaa !68
  %conv129 = sext i16 %135 to i32
  %136 = load i32, i32* %p1, align 4, !tbaa !23
  %and130 = and i32 %conv129, %136
  %cmp131 = icmp eq i32 %and130, 0
  br i1 %cmp131, label %if.then.133, label %if.end.146

if.then.133:                                      ; preds = %if.then.128
  %137 = load i16*, i16** %thiscoef, align 8, !tbaa !1
  %138 = load i16, i16* %137, align 2, !tbaa !68
  %conv134 = sext i16 %138 to i32
  %cmp135 = icmp sge i32 %conv134, 0
  br i1 %cmp135, label %if.then.137, label %if.else.141

if.then.137:                                      ; preds = %if.then.133
  %139 = load i32, i32* %p1, align 4, !tbaa !23
  %140 = load i16*, i16** %thiscoef, align 8, !tbaa !1
  %141 = load i16, i16* %140, align 2, !tbaa !68
  %conv138 = sext i16 %141 to i32
  %add139 = add nsw i32 %conv138, %139
  %conv140 = trunc i32 %add139 to i16
  store i16 %conv140, i16* %140, align 2, !tbaa !68
  br label %if.end.145

if.else.141:                                      ; preds = %if.then.133
  %142 = load i32, i32* %m1, align 4, !tbaa !23
  %143 = load i16*, i16** %thiscoef, align 8, !tbaa !1
  %144 = load i16, i16* %143, align 2, !tbaa !68
  %conv142 = sext i16 %144 to i32
  %add143 = add nsw i32 %conv142, %142
  %conv144 = trunc i32 %add143 to i16
  store i16 %conv144, i16* %143, align 2, !tbaa !68
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.141, %if.then.137
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.then.128
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.end.121
  br label %if.end.153

if.else.148:                                      ; preds = %do.body.107
  %145 = load i32, i32* %r, align 4, !tbaa !23
  %dec = add nsw i32 %145, -1
  store i32 %dec, i32* %r, align 4, !tbaa !23
  %cmp149 = icmp slt i32 %dec, 0
  br i1 %cmp149, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %if.else.148
  br label %do.end

if.end.152:                                       ; preds = %if.else.148
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.end.147
  %146 = load i32, i32* %k, align 4, !tbaa !23
  %inc = add nsw i32 %146, 1
  store i32 %inc, i32* %k, align 4, !tbaa !23
  br label %do.cond

do.cond:                                          ; preds = %if.end.153
  %147 = load i32, i32* %k, align 4, !tbaa !23
  %148 = load i32, i32* %Se, align 4, !tbaa !23
  %cmp154 = icmp sle i32 %147, %148
  br i1 %cmp154, label %do.body.107, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.151
  %149 = load i32, i32* %s, align 4, !tbaa !23
  %tobool156 = icmp ne i32 %149, 0
  br i1 %tobool156, label %if.then.157, label %if.end.166

if.then.157:                                      ; preds = %do.end
  %150 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %150) #1
  %151 = load i32, i32* %k, align 4, !tbaa !23
  %idxprom158 = sext i32 %151 to i64
  %152 = load i32*, i32** %natural_order, align 8, !tbaa !1
  %arrayidx159 = getelementptr inbounds i32, i32* %152, i64 %idxprom158
  %153 = load i32, i32* %arrayidx159, align 4, !tbaa !23
  store i32 %153, i32* %pos, align 4, !tbaa !23
  %154 = load i32, i32* %s, align 4, !tbaa !23
  %conv160 = trunc i32 %154 to i16
  %155 = load i32, i32* %pos, align 4, !tbaa !23
  %idxprom161 = sext i32 %155 to i64
  %156 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !1
  %arrayidx162 = getelementptr inbounds [64 x i16], [64 x i16]* %156, i32 0, i64 %idxprom161
  store i16 %conv160, i16* %arrayidx162, align 2, !tbaa !68
  %157 = load i32, i32* %pos, align 4, !tbaa !23
  %158 = load i32, i32* %num_newnz, align 4, !tbaa !23
  %inc163 = add nsw i32 %158, 1
  store i32 %inc163, i32* %num_newnz, align 4, !tbaa !23
  %idxprom164 = sext i32 %158 to i64
  %arrayidx165 = getelementptr inbounds [64 x i32], [64 x i32]* %newnz_pos, i32 0, i64 %idxprom164
  store i32 %157, i32* %arrayidx165, align 4, !tbaa !23
  %159 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #1
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.157, %do.end
  %160 = load i32, i32* %k, align 4, !tbaa !23
  %inc167 = add nsw i32 %160, 1
  store i32 %inc167, i32* %k, align 4, !tbaa !23
  br label %do.cond.168

do.cond.168:                                      ; preds = %if.end.166
  %161 = load i32, i32* %k, align 4, !tbaa !23
  %162 = load i32, i32* %Se, align 4, !tbaa !23
  %cmp169 = icmp sle i32 %161, %162
  br i1 %cmp169, label %do.body, label %do.end.171

do.end.171:                                       ; preds = %do.cond.168, %if.end.104
  br label %if.end.172

if.end.172:                                       ; preds = %do.end.171, %if.then.8
  %163 = load i32, i32* %EOBRUN, align 4, !tbaa !23
  %tobool173 = icmp ne i32 %163, 0
  br i1 %tobool173, label %if.then.174, label %if.end.226

if.then.174:                                      ; preds = %if.end.172
  br label %do.body.175

do.body.175:                                      ; preds = %do.cond.221, %if.then.174
  %164 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !1
  %arraydecay176 = getelementptr inbounds [64 x i16], [64 x i16]* %164, i32 0, i32 0
  %165 = load i32, i32* %k, align 4, !tbaa !23
  %idxprom177 = sext i32 %165 to i64
  %166 = load i32*, i32** %natural_order, align 8, !tbaa !1
  %arrayidx178 = getelementptr inbounds i32, i32* %166, i64 %idxprom177
  %167 = load i32, i32* %arrayidx178, align 4, !tbaa !23
  %idx.ext179 = sext i32 %167 to i64
  %add.ptr180 = getelementptr inbounds i16, i16* %arraydecay176, i64 %idx.ext179
  store i16* %add.ptr180, i16** %thiscoef, align 8, !tbaa !1
  %168 = load i16*, i16** %thiscoef, align 8, !tbaa !1
  %169 = load i16, i16* %168, align 2, !tbaa !68
  %tobool181 = icmp ne i16 %169, 0
  br i1 %tobool181, label %if.then.182, label %if.end.219

if.then.182:                                      ; preds = %do.body.175
  %170 = load i32, i32* %bits_left, align 4, !tbaa !23
  %cmp183 = icmp slt i32 %170, 1
  br i1 %cmp183, label %if.then.185, label %if.end.192

if.then.185:                                      ; preds = %if.then.182
  %171 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %172 = load i32, i32* %bits_left, align 4, !tbaa !23
  %call186 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %171, i32 %172, i32 1) #3
  %tobool187 = icmp ne i32 %call186, 0
  br i1 %tobool187, label %if.end.189, label %if.then.188

if.then.188:                                      ; preds = %if.then.185
  br label %undoit

if.end.189:                                       ; preds = %if.then.185
  %get_buffer190 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %173 = load i64, i64* %get_buffer190, align 8, !tbaa !66
  store i64 %173, i64* %get_buffer, align 8, !tbaa !63
  %bits_left191 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %174 = load i32, i32* %bits_left191, align 4, !tbaa !67
  store i32 %174, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.189, %if.then.182
  %175 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %176 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub193 = sub nsw i32 %176, 1
  store i32 %sub193, i32* %bits_left, align 4, !tbaa !23
  %sh_prom194 = zext i32 %sub193 to i64
  %shr195 = ashr i64 %175, %sh_prom194
  %conv196 = trunc i64 %shr195 to i32
  %177 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bmask, i32 0, i64 1), align 4, !tbaa !23
  %and197 = and i32 %conv196, %177
  %tobool198 = icmp ne i32 %and197, 0
  br i1 %tobool198, label %if.then.199, label %if.end.218

if.then.199:                                      ; preds = %if.end.192
  %178 = load i16*, i16** %thiscoef, align 8, !tbaa !1
  %179 = load i16, i16* %178, align 2, !tbaa !68
  %conv200 = sext i16 %179 to i32
  %180 = load i32, i32* %p1, align 4, !tbaa !23
  %and201 = and i32 %conv200, %180
  %cmp202 = icmp eq i32 %and201, 0
  br i1 %cmp202, label %if.then.204, label %if.end.217

if.then.204:                                      ; preds = %if.then.199
  %181 = load i16*, i16** %thiscoef, align 8, !tbaa !1
  %182 = load i16, i16* %181, align 2, !tbaa !68
  %conv205 = sext i16 %182 to i32
  %cmp206 = icmp sge i32 %conv205, 0
  br i1 %cmp206, label %if.then.208, label %if.else.212

if.then.208:                                      ; preds = %if.then.204
  %183 = load i32, i32* %p1, align 4, !tbaa !23
  %184 = load i16*, i16** %thiscoef, align 8, !tbaa !1
  %185 = load i16, i16* %184, align 2, !tbaa !68
  %conv209 = sext i16 %185 to i32
  %add210 = add nsw i32 %conv209, %183
  %conv211 = trunc i32 %add210 to i16
  store i16 %conv211, i16* %184, align 2, !tbaa !68
  br label %if.end.216

if.else.212:                                      ; preds = %if.then.204
  %186 = load i32, i32* %m1, align 4, !tbaa !23
  %187 = load i16*, i16** %thiscoef, align 8, !tbaa !1
  %188 = load i16, i16* %187, align 2, !tbaa !68
  %conv213 = sext i16 %188 to i32
  %add214 = add nsw i32 %conv213, %186
  %conv215 = trunc i32 %add214 to i16
  store i16 %conv215, i16* %187, align 2, !tbaa !68
  br label %if.end.216

if.end.216:                                       ; preds = %if.else.212, %if.then.208
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %if.then.199
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %if.end.192
  br label %if.end.219

if.end.219:                                       ; preds = %if.end.218, %do.body.175
  %189 = load i32, i32* %k, align 4, !tbaa !23
  %inc220 = add nsw i32 %189, 1
  store i32 %inc220, i32* %k, align 4, !tbaa !23
  br label %do.cond.221

do.cond.221:                                      ; preds = %if.end.219
  %190 = load i32, i32* %k, align 4, !tbaa !23
  %191 = load i32, i32* %Se, align 4, !tbaa !23
  %cmp222 = icmp sle i32 %190, %191
  br i1 %cmp222, label %do.body.175, label %do.end.224

do.end.224:                                       ; preds = %do.cond.221
  %192 = load i32, i32* %EOBRUN, align 4, !tbaa !23
  %dec225 = add i32 %192, -1
  store i32 %dec225, i32* %EOBRUN, align 4, !tbaa !23
  br label %if.end.226

if.end.226:                                       ; preds = %do.end.224, %if.end.172
  %next_input_byte227 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  %193 = load i8*, i8** %next_input_byte227, align 8, !tbaa !60
  %194 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src228 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %194, i32 0, i32 6
  %195 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src228, align 8, !tbaa !57
  %next_input_byte229 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %195, i32 0, i32 0
  store i8* %193, i8** %next_input_byte229, align 8, !tbaa !58
  %bytes_in_buffer230 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  %196 = load i64, i64* %bytes_in_buffer230, align 8, !tbaa !62
  %197 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src231 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %197, i32 0, i32 6
  %198 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src231, align 8, !tbaa !57
  %bytes_in_buffer232 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %198, i32 0, i32 1
  store i64 %196, i64* %bytes_in_buffer232, align 8, !tbaa !61
  %199 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %200 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %bitstate233 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %200, i32 0, i32 1
  %get_buffer234 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate233, i32 0, i32 0
  store i64 %199, i64* %get_buffer234, align 8, !tbaa !48
  %201 = load i32, i32* %bits_left, align 4, !tbaa !23
  %202 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %bitstate235 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %202, i32 0, i32 1
  %bits_left236 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate235, i32 0, i32 1
  store i32 %201, i32* %bits_left236, align 4, !tbaa !47
  %203 = load i32, i32* %EOBRUN, align 4, !tbaa !23
  %204 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %saved237 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %204, i32 0, i32 2
  %EOBRUN238 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved237, i32 0, i32 0
  store i32 %203, i32* %EOBRUN238, align 4, !tbaa !41
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.226, %if.end.6
  %205 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %restarts_to_go240 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %205, i32 0, i32 4
  %206 = load i32, i32* %restarts_to_go240, align 4, !tbaa !51
  %dec241 = add i32 %206, -1
  store i32 %dec241, i32* %restarts_to_go240, align 4, !tbaa !51
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.248

undoit:                                           ; preds = %cleanup, %if.then.188, %if.then.117, %if.then.92, %if.then.66
  br label %while.cond

while.cond:                                       ; preds = %while.body, %undoit
  %207 = load i32, i32* %num_newnz, align 4, !tbaa !23
  %tobool242 = icmp ne i32 %207, 0
  br i1 %tobool242, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %208 = load i32, i32* %num_newnz, align 4, !tbaa !23
  %dec243 = add nsw i32 %208, -1
  store i32 %dec243, i32* %num_newnz, align 4, !tbaa !23
  %idxprom244 = sext i32 %dec243 to i64
  %arrayidx245 = getelementptr inbounds [64 x i32], [64 x i32]* %newnz_pos, i32 0, i64 %idxprom244
  %209 = load i32, i32* %arrayidx245, align 4, !tbaa !23
  %idxprom246 = sext i32 %209 to i64
  %210 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !1
  %arrayidx247 = getelementptr inbounds [64 x i16], [64 x i16]* %210, i32 0, i64 %idxprom246
  store i16 0, i16* %arrayidx247, align 2, !tbaa !68
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.248

cleanup.248:                                      ; preds = %while.end, %if.end.239, %cleanup, %if.then.4
  %211 = bitcast [64 x i32]* %newnz_pos to i8*
  call void @llvm.lifetime.end(i64 256, i8* %211) #1
  %212 = bitcast i32* %num_newnz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  %213 = bitcast %struct.d_derived_tbl** %tbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %213) #1
  %214 = bitcast %struct.bitread_working_state* %br_state to i8*
  call void @llvm.lifetime.end(i64 40, i8* %214) #1
  %215 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = bitcast i64* %get_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %216) #1
  %217 = bitcast i16** %thiscoef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #1
  %218 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #1
  %219 = bitcast i32** %natural_order to i8*
  call void @llvm.lifetime.end(i64 8, i8* %219) #1
  %220 = bitcast i32* %m1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #1
  %221 = bitcast i32* %p1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #1
  %222 = bitcast i32* %Se to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #1
  %223 = bitcast i32* %EOBRUN to i8*
  call void @llvm.lifetime.end(i64 4, i8* %223) #1
  %224 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #1
  %225 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #1
  %226 = bitcast i32* %s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #1
  %227 = bitcast %struct.huff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %227) #1
  %228 = load i32, i32* %retval
  ret i32 %228
}

; Function Attrs: nounwind uwtable
define internal void @jpeg_make_d_derived_tbl(%struct.jpeg_decompress_struct* %cinfo, i32 %isDC, i32 %tblno, %struct.d_derived_tbl** %pdtbl) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %isDC.addr = alloca i32, align 4
  %tblno.addr = alloca i32, align 4
  %pdtbl.addr = alloca %struct.d_derived_tbl**, align 8
  %htbl = alloca %struct.JHUFF_TBL*, align 8
  %dtbl = alloca %struct.d_derived_tbl*, align 8
  %p = alloca i32, align 4
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %si = alloca i32, align 4
  %numsymbols = alloca i32, align 4
  %lookbits = alloca i32, align 4
  %ctr = alloca i32, align 4
  %huffsize = alloca [257 x i8], align 16
  %huffcode = alloca [257 x i32], align 16
  %code = alloca i32, align 4
  %sym = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store i32 %isDC, i32* %isDC.addr, align 4, !tbaa !65
  store i32 %tblno, i32* %tblno.addr, align 4, !tbaa !23
  store %struct.d_derived_tbl** %pdtbl, %struct.d_derived_tbl*** %pdtbl.addr, align 8, !tbaa !1
  %0 = bitcast %struct.JHUFF_TBL** %htbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.d_derived_tbl** %dtbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %si to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %numsymbols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %lookbits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast [257 x i8]* %huffsize to i8*
  call void @llvm.lifetime.start(i64 257, i8* %9) #1
  %10 = bitcast [257 x i32]* %huffcode to i8*
  call void @llvm.lifetime.start(i64 1028, i8* %10) #1
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %tblno.addr, align 4, !tbaa !23
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %13 = load i32, i32* %tblno.addr, align 4, !tbaa !23
  %cmp1 = icmp sge i32 %13, 4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !30
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 5
  store i32 52, i32* %msg_code, align 4, !tbaa !31
  %16 = load i32, i32* %tblno.addr, align 4, !tbaa !23
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !30
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 6
  %i3 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i3, i32 0, i64 0
  store i32 %16, i32* %arrayidx, align 4, !tbaa !23
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !30
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 0
  %21 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !33
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %23 = bitcast %struct.jpeg_decompress_struct* %22 to %struct.jpeg_common_struct*
  call void %21(%struct.jpeg_common_struct* %23) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %24 = load i32, i32* %isDC.addr, align 4, !tbaa !65
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %25 = load i32, i32* %tblno.addr, align 4, !tbaa !23
  %idxprom = sext i32 %25 to i64
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 41
  %arrayidx5 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom
  %27 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx5, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %28 = load i32, i32* %tblno.addr, align 4, !tbaa !23
  %idxprom6 = sext i32 %28 to i64
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 42
  %arrayidx7 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom6
  %30 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx7, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.JHUFF_TBL* [ %27, %cond.true ], [ %30, %cond.false ]
  store %struct.JHUFF_TBL* %cond, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !1
  %31 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !1
  %cmp8 = icmp eq %struct.JHUFF_TBL* %31, null
  br i1 %cmp8, label %if.then.9, label %if.end.18

if.then.9:                                        ; preds = %cond.end
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8, !tbaa !30
  %msg_code11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 5
  store i32 52, i32* %msg_code11, align 4, !tbaa !31
  %34 = load i32, i32* %tblno.addr, align 4, !tbaa !23
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 0
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err12, align 8, !tbaa !30
  %msg_parm13 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %36, i32 0, i32 6
  %i14 = bitcast %union.anon* %msg_parm13 to [8 x i32]*
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* %i14, i32 0, i64 0
  store i32 %34, i32* %arrayidx15, align 4, !tbaa !23
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 0
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err16, align 8, !tbaa !30
  %error_exit17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %38, i32 0, i32 0
  %39 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit17, align 8, !tbaa !33
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %41 = bitcast %struct.jpeg_decompress_struct* %40 to %struct.jpeg_common_struct*
  call void %39(%struct.jpeg_common_struct* %41) #3
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.9, %cond.end
  %42 = load %struct.d_derived_tbl**, %struct.d_derived_tbl*** %pdtbl.addr, align 8, !tbaa !1
  %43 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %42, align 8, !tbaa !1
  %cmp19 = icmp eq %struct.d_derived_tbl* %43, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 1
  %45 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !5
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %45, i32 0, i32 0
  %46 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !10
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %48 = bitcast %struct.jpeg_decompress_struct* %47 to %struct.jpeg_common_struct*
  %call = call i8* %46(%struct.jpeg_common_struct* %48, i32 1, i64 1568) #3
  %49 = bitcast i8* %call to %struct.d_derived_tbl*
  %50 = load %struct.d_derived_tbl**, %struct.d_derived_tbl*** %pdtbl.addr, align 8, !tbaa !1
  store %struct.d_derived_tbl* %49, %struct.d_derived_tbl** %50, align 8, !tbaa !1
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.18
  %51 = load %struct.d_derived_tbl**, %struct.d_derived_tbl*** %pdtbl.addr, align 8, !tbaa !1
  %52 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %51, align 8, !tbaa !1
  store %struct.d_derived_tbl* %52, %struct.d_derived_tbl** %dtbl, align 8, !tbaa !1
  %53 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !1
  %54 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dtbl, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %54, i32 0, i32 2
  store %struct.JHUFF_TBL* %53, %struct.JHUFF_TBL** %pub, align 8, !tbaa !70
  store i32 0, i32* %p, align 4, !tbaa !23
  store i32 1, i32* %l, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.21
  %55 = load i32, i32* %l, align 4, !tbaa !23
  %cmp22 = icmp sle i32 %55, 16
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = load i32, i32* %l, align 4, !tbaa !23
  %idxprom23 = sext i32 %56 to i64
  %57 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %57, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 %idxprom23
  %58 = load i8, i8* %arrayidx24, align 1, !tbaa !65
  %conv = zext i8 %58 to i32
  store i32 %conv, i32* %i, align 4, !tbaa !23
  %59 = load i32, i32* %i, align 4, !tbaa !23
  %cmp25 = icmp slt i32 %59, 0
  br i1 %cmp25, label %if.then.30, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %for.body
  %60 = load i32, i32* %p, align 4, !tbaa !23
  %61 = load i32, i32* %i, align 4, !tbaa !23
  %add = add nsw i32 %60, %61
  %cmp28 = icmp sgt i32 %add, 256
  br i1 %cmp28, label %if.then.30, label %if.end.35

if.then.30:                                       ; preds = %lor.lhs.false.27, %for.body
  %62 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %62, i32 0, i32 0
  %63 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err31, align 8, !tbaa !30
  %msg_code32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %63, i32 0, i32 5
  store i32 9, i32* %msg_code32, align 4, !tbaa !31
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 0
  %65 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err33, align 8, !tbaa !30
  %error_exit34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %65, i32 0, i32 0
  %66 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit34, align 8, !tbaa !33
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %68 = bitcast %struct.jpeg_decompress_struct* %67 to %struct.jpeg_common_struct*
  call void %66(%struct.jpeg_common_struct* %68) #3
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.30, %lor.lhs.false.27
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.35
  %69 = load i32, i32* %i, align 4, !tbaa !23
  %dec = add nsw i32 %69, -1
  store i32 %dec, i32* %i, align 4, !tbaa !23
  %tobool36 = icmp ne i32 %69, 0
  br i1 %tobool36, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %70 = load i32, i32* %l, align 4, !tbaa !23
  %conv37 = trunc i32 %70 to i8
  %71 = load i32, i32* %p, align 4, !tbaa !23
  %inc = add nsw i32 %71, 1
  store i32 %inc, i32* %p, align 4, !tbaa !23
  %idxprom38 = sext i32 %71 to i64
  %arrayidx39 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 %idxprom38
  store i8 %conv37, i8* %arrayidx39, align 1, !tbaa !65
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %72 = load i32, i32* %l, align 4, !tbaa !23
  %inc40 = add nsw i32 %72, 1
  store i32 %inc40, i32* %l, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %73 = load i32, i32* %p, align 4, !tbaa !23
  %idxprom41 = sext i32 %73 to i64
  %arrayidx42 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 %idxprom41
  store i8 0, i8* %arrayidx42, align 1, !tbaa !65
  %74 = load i32, i32* %p, align 4, !tbaa !23
  store i32 %74, i32* %numsymbols, align 4, !tbaa !23
  store i32 0, i32* %code, align 4, !tbaa !23
  %arrayidx43 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 0
  %75 = load i8, i8* %arrayidx43, align 1, !tbaa !65
  %conv44 = sext i8 %75 to i32
  store i32 %conv44, i32* %si, align 4, !tbaa !23
  store i32 0, i32* %p, align 4, !tbaa !23
  br label %while.cond.45

while.cond.45:                                    ; preds = %if.end.70, %for.end
  %76 = load i32, i32* %p, align 4, !tbaa !23
  %idxprom46 = sext i32 %76 to i64
  %arrayidx47 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 %idxprom46
  %77 = load i8, i8* %arrayidx47, align 1, !tbaa !65
  %tobool48 = icmp ne i8 %77, 0
  br i1 %tobool48, label %while.body.49, label %while.end.73

while.body.49:                                    ; preds = %while.cond.45
  br label %while.cond.50

while.cond.50:                                    ; preds = %while.body.56, %while.body.49
  %78 = load i32, i32* %p, align 4, !tbaa !23
  %idxprom51 = sext i32 %78 to i64
  %arrayidx52 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 %idxprom51
  %79 = load i8, i8* %arrayidx52, align 1, !tbaa !65
  %conv53 = sext i8 %79 to i32
  %80 = load i32, i32* %si, align 4, !tbaa !23
  %cmp54 = icmp eq i32 %conv53, %80
  br i1 %cmp54, label %while.body.56, label %while.end.61

while.body.56:                                    ; preds = %while.cond.50
  %81 = load i32, i32* %code, align 4, !tbaa !23
  %82 = load i32, i32* %p, align 4, !tbaa !23
  %inc57 = add nsw i32 %82, 1
  store i32 %inc57, i32* %p, align 4, !tbaa !23
  %idxprom58 = sext i32 %82 to i64
  %arrayidx59 = getelementptr inbounds [257 x i32], [257 x i32]* %huffcode, i32 0, i64 %idxprom58
  store i32 %81, i32* %arrayidx59, align 4, !tbaa !23
  %83 = load i32, i32* %code, align 4, !tbaa !23
  %inc60 = add i32 %83, 1
  store i32 %inc60, i32* %code, align 4, !tbaa !23
  br label %while.cond.50

while.end.61:                                     ; preds = %while.cond.50
  %84 = load i32, i32* %code, align 4, !tbaa !23
  %conv62 = zext i32 %84 to i64
  %85 = load i32, i32* %si, align 4, !tbaa !23
  %sh_prom = zext i32 %85 to i64
  %shl = shl i64 1, %sh_prom
  %cmp63 = icmp sge i64 %conv62, %shl
  br i1 %cmp63, label %if.then.65, label %if.end.70

if.then.65:                                       ; preds = %while.end.61
  %86 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err66 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %86, i32 0, i32 0
  %87 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err66, align 8, !tbaa !30
  %msg_code67 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %87, i32 0, i32 5
  store i32 9, i32* %msg_code67, align 4, !tbaa !31
  %88 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %88, i32 0, i32 0
  %89 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err68, align 8, !tbaa !30
  %error_exit69 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %89, i32 0, i32 0
  %90 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit69, align 8, !tbaa !33
  %91 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %92 = bitcast %struct.jpeg_decompress_struct* %91 to %struct.jpeg_common_struct*
  call void %90(%struct.jpeg_common_struct* %92) #3
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.65, %while.end.61
  %93 = load i32, i32* %code, align 4, !tbaa !23
  %shl71 = shl i32 %93, 1
  store i32 %shl71, i32* %code, align 4, !tbaa !23
  %94 = load i32, i32* %si, align 4, !tbaa !23
  %inc72 = add nsw i32 %94, 1
  store i32 %inc72, i32* %si, align 4, !tbaa !23
  br label %while.cond.45

while.end.73:                                     ; preds = %while.cond.45
  store i32 0, i32* %p, align 4, !tbaa !23
  store i32 1, i32* %l, align 4, !tbaa !23
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.104, %while.end.73
  %95 = load i32, i32* %l, align 4, !tbaa !23
  %cmp75 = icmp sle i32 %95, 16
  br i1 %cmp75, label %for.body.77, label %for.end.106

for.body.77:                                      ; preds = %for.cond.74
  %96 = load i32, i32* %l, align 4, !tbaa !23
  %idxprom78 = sext i32 %96 to i64
  %97 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !1
  %bits79 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %97, i32 0, i32 0
  %arrayidx80 = getelementptr inbounds [17 x i8], [17 x i8]* %bits79, i32 0, i64 %idxprom78
  %98 = load i8, i8* %arrayidx80, align 1, !tbaa !65
  %tobool81 = icmp ne i8 %98, 0
  br i1 %tobool81, label %if.then.82, label %if.else

if.then.82:                                       ; preds = %for.body.77
  %99 = load i32, i32* %p, align 4, !tbaa !23
  %conv83 = sext i32 %99 to i64
  %100 = load i32, i32* %p, align 4, !tbaa !23
  %idxprom84 = sext i32 %100 to i64
  %arrayidx85 = getelementptr inbounds [257 x i32], [257 x i32]* %huffcode, i32 0, i64 %idxprom84
  %101 = load i32, i32* %arrayidx85, align 4, !tbaa !23
  %conv86 = zext i32 %101 to i64
  %sub = sub nsw i64 %conv83, %conv86
  %102 = load i32, i32* %l, align 4, !tbaa !23
  %idxprom87 = sext i32 %102 to i64
  %103 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dtbl, align 8, !tbaa !1
  %valoffset = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %103, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [17 x i64], [17 x i64]* %valoffset, i32 0, i64 %idxprom87
  store i64 %sub, i64* %arrayidx88, align 8, !tbaa !63
  %104 = load i32, i32* %l, align 4, !tbaa !23
  %idxprom89 = sext i32 %104 to i64
  %105 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !1
  %bits90 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %105, i32 0, i32 0
  %arrayidx91 = getelementptr inbounds [17 x i8], [17 x i8]* %bits90, i32 0, i64 %idxprom89
  %106 = load i8, i8* %arrayidx91, align 1, !tbaa !65
  %conv92 = zext i8 %106 to i32
  %107 = load i32, i32* %p, align 4, !tbaa !23
  %add93 = add nsw i32 %107, %conv92
  store i32 %add93, i32* %p, align 4, !tbaa !23
  %108 = load i32, i32* %p, align 4, !tbaa !23
  %sub94 = sub nsw i32 %108, 1
  %idxprom95 = sext i32 %sub94 to i64
  %arrayidx96 = getelementptr inbounds [257 x i32], [257 x i32]* %huffcode, i32 0, i64 %idxprom95
  %109 = load i32, i32* %arrayidx96, align 4, !tbaa !23
  %conv97 = zext i32 %109 to i64
  %110 = load i32, i32* %l, align 4, !tbaa !23
  %idxprom98 = sext i32 %110 to i64
  %111 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dtbl, align 8, !tbaa !1
  %maxcode = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %111, i32 0, i32 0
  %arrayidx99 = getelementptr inbounds [18 x i64], [18 x i64]* %maxcode, i32 0, i64 %idxprom98
  store i64 %conv97, i64* %arrayidx99, align 8, !tbaa !63
  br label %if.end.103

if.else:                                          ; preds = %for.body.77
  %112 = load i32, i32* %l, align 4, !tbaa !23
  %idxprom100 = sext i32 %112 to i64
  %113 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dtbl, align 8, !tbaa !1
  %maxcode101 = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %113, i32 0, i32 0
  %arrayidx102 = getelementptr inbounds [18 x i64], [18 x i64]* %maxcode101, i32 0, i64 %idxprom100
  store i64 -1, i64* %arrayidx102, align 8, !tbaa !63
  br label %if.end.103

if.end.103:                                       ; preds = %if.else, %if.then.82
  br label %for.inc.104

for.inc.104:                                      ; preds = %if.end.103
  %114 = load i32, i32* %l, align 4, !tbaa !23
  %inc105 = add nsw i32 %114, 1
  store i32 %inc105, i32* %l, align 4, !tbaa !23
  br label %for.cond.74

for.end.106:                                      ; preds = %for.cond.74
  %115 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dtbl, align 8, !tbaa !1
  %maxcode107 = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %115, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [18 x i64], [18 x i64]* %maxcode107, i32 0, i64 17
  store i64 1048575, i64* %arrayidx108, align 8, !tbaa !63
  %116 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dtbl, align 8, !tbaa !1
  %look_nbits = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %116, i32 0, i32 3
  %arraydecay = getelementptr inbounds [256 x i32], [256 x i32]* %look_nbits, i32 0, i32 0
  %117 = bitcast i32* %arraydecay to i8*
  %call109 = call i8* @memset(i8* %117, i32 0, i64 1024) #4
  store i32 0, i32* %p, align 4, !tbaa !23
  store i32 1, i32* %l, align 4, !tbaa !23
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.147, %for.end.106
  %118 = load i32, i32* %l, align 4, !tbaa !23
  %cmp111 = icmp sle i32 %118, 8
  br i1 %cmp111, label %for.body.113, label %for.end.149

for.body.113:                                     ; preds = %for.cond.110
  store i32 1, i32* %i, align 4, !tbaa !23
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.143, %for.body.113
  %119 = load i32, i32* %i, align 4, !tbaa !23
  %120 = load i32, i32* %l, align 4, !tbaa !23
  %idxprom115 = sext i32 %120 to i64
  %121 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !1
  %bits116 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %121, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [17 x i8], [17 x i8]* %bits116, i32 0, i64 %idxprom115
  %122 = load i8, i8* %arrayidx117, align 1, !tbaa !65
  %conv118 = zext i8 %122 to i32
  %cmp119 = icmp sle i32 %119, %conv118
  br i1 %cmp119, label %for.body.121, label %for.end.146

for.body.121:                                     ; preds = %for.cond.114
  %123 = load i32, i32* %p, align 4, !tbaa !23
  %idxprom122 = sext i32 %123 to i64
  %arrayidx123 = getelementptr inbounds [257 x i32], [257 x i32]* %huffcode, i32 0, i64 %idxprom122
  %124 = load i32, i32* %arrayidx123, align 4, !tbaa !23
  %125 = load i32, i32* %l, align 4, !tbaa !23
  %sub124 = sub nsw i32 8, %125
  %shl125 = shl i32 %124, %sub124
  store i32 %shl125, i32* %lookbits, align 4, !tbaa !23
  %126 = load i32, i32* %l, align 4, !tbaa !23
  %sub126 = sub nsw i32 8, %126
  %shl127 = shl i32 1, %sub126
  store i32 %shl127, i32* %ctr, align 4, !tbaa !23
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.140, %for.body.121
  %127 = load i32, i32* %ctr, align 4, !tbaa !23
  %cmp129 = icmp sgt i32 %127, 0
  br i1 %cmp129, label %for.body.131, label %for.end.142

for.body.131:                                     ; preds = %for.cond.128
  %128 = load i32, i32* %l, align 4, !tbaa !23
  %129 = load i32, i32* %lookbits, align 4, !tbaa !23
  %idxprom132 = sext i32 %129 to i64
  %130 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dtbl, align 8, !tbaa !1
  %look_nbits133 = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %130, i32 0, i32 3
  %arrayidx134 = getelementptr inbounds [256 x i32], [256 x i32]* %look_nbits133, i32 0, i64 %idxprom132
  store i32 %128, i32* %arrayidx134, align 4, !tbaa !23
  %131 = load i32, i32* %p, align 4, !tbaa !23
  %idxprom135 = sext i32 %131 to i64
  %132 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !1
  %huffval = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %132, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval, i32 0, i64 %idxprom135
  %133 = load i8, i8* %arrayidx136, align 1, !tbaa !65
  %134 = load i32, i32* %lookbits, align 4, !tbaa !23
  %idxprom137 = sext i32 %134 to i64
  %135 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dtbl, align 8, !tbaa !1
  %look_sym = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %135, i32 0, i32 4
  %arrayidx138 = getelementptr inbounds [256 x i8], [256 x i8]* %look_sym, i32 0, i64 %idxprom137
  store i8 %133, i8* %arrayidx138, align 1, !tbaa !65
  %136 = load i32, i32* %lookbits, align 4, !tbaa !23
  %inc139 = add nsw i32 %136, 1
  store i32 %inc139, i32* %lookbits, align 4, !tbaa !23
  br label %for.inc.140

for.inc.140:                                      ; preds = %for.body.131
  %137 = load i32, i32* %ctr, align 4, !tbaa !23
  %dec141 = add nsw i32 %137, -1
  store i32 %dec141, i32* %ctr, align 4, !tbaa !23
  br label %for.cond.128

for.end.142:                                      ; preds = %for.cond.128
  br label %for.inc.143

for.inc.143:                                      ; preds = %for.end.142
  %138 = load i32, i32* %i, align 4, !tbaa !23
  %inc144 = add nsw i32 %138, 1
  store i32 %inc144, i32* %i, align 4, !tbaa !23
  %139 = load i32, i32* %p, align 4, !tbaa !23
  %inc145 = add nsw i32 %139, 1
  store i32 %inc145, i32* %p, align 4, !tbaa !23
  br label %for.cond.114

for.end.146:                                      ; preds = %for.cond.114
  br label %for.inc.147

for.inc.147:                                      ; preds = %for.end.146
  %140 = load i32, i32* %l, align 4, !tbaa !23
  %inc148 = add nsw i32 %140, 1
  store i32 %inc148, i32* %l, align 4, !tbaa !23
  br label %for.cond.110

for.end.149:                                      ; preds = %for.cond.110
  %141 = load i32, i32* %isDC.addr, align 4, !tbaa !65
  %tobool150 = icmp ne i32 %141, 0
  br i1 %tobool150, label %if.then.151, label %if.end.174

if.then.151:                                      ; preds = %for.end.149
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.171, %if.then.151
  %142 = load i32, i32* %i, align 4, !tbaa !23
  %143 = load i32, i32* %numsymbols, align 4, !tbaa !23
  %cmp153 = icmp slt i32 %142, %143
  br i1 %cmp153, label %for.body.155, label %for.end.173

for.body.155:                                     ; preds = %for.cond.152
  %144 = bitcast i32* %sym to i8*
  call void @llvm.lifetime.start(i64 4, i8* %144) #1
  %145 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom156 = sext i32 %145 to i64
  %146 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl, align 8, !tbaa !1
  %huffval157 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %146, i32 0, i32 1
  %arrayidx158 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval157, i32 0, i64 %idxprom156
  %147 = load i8, i8* %arrayidx158, align 1, !tbaa !65
  %conv159 = zext i8 %147 to i32
  store i32 %conv159, i32* %sym, align 4, !tbaa !23
  %148 = load i32, i32* %sym, align 4, !tbaa !23
  %cmp160 = icmp slt i32 %148, 0
  br i1 %cmp160, label %if.then.165, label %lor.lhs.false.162

lor.lhs.false.162:                                ; preds = %for.body.155
  %149 = load i32, i32* %sym, align 4, !tbaa !23
  %cmp163 = icmp sgt i32 %149, 15
  br i1 %cmp163, label %if.then.165, label %if.end.170

if.then.165:                                      ; preds = %lor.lhs.false.162, %for.body.155
  %150 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err166 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %150, i32 0, i32 0
  %151 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err166, align 8, !tbaa !30
  %msg_code167 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %151, i32 0, i32 5
  store i32 9, i32* %msg_code167, align 4, !tbaa !31
  %152 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %err168 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %152, i32 0, i32 0
  %153 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err168, align 8, !tbaa !30
  %error_exit169 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %153, i32 0, i32 0
  %154 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit169, align 8, !tbaa !33
  %155 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %156 = bitcast %struct.jpeg_decompress_struct* %155 to %struct.jpeg_common_struct*
  call void %154(%struct.jpeg_common_struct* %156) #3
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.165, %lor.lhs.false.162
  %157 = bitcast i32* %sym to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  br label %for.inc.171

for.inc.171:                                      ; preds = %if.end.170
  %158 = load i32, i32* %i, align 4, !tbaa !23
  %inc172 = add nsw i32 %158, 1
  store i32 %inc172, i32* %i, align 4, !tbaa !23
  br label %for.cond.152

for.end.173:                                      ; preds = %for.cond.152
  br label %if.end.174

if.end.174:                                       ; preds = %for.end.173, %for.end.149
  %159 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #1
  %160 = bitcast [257 x i32]* %huffcode to i8*
  call void @llvm.lifetime.end(i64 1028, i8* %160) #1
  %161 = bitcast [257 x i8]* %huffsize to i8*
  call void @llvm.lifetime.end(i64 257, i8* %161) #1
  %162 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  %163 = bitcast i32* %lookbits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  %164 = bitcast i32* %numsymbols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #1
  %165 = bitcast i32* %si to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast i32* %p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast %struct.d_derived_tbl** %dtbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  %170 = bitcast %struct.JHUFF_TBL** %htbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_mcu_sub(%struct.jpeg_decompress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.huff_entropy_decoder*, align 8
  %natural_order = alloca i32*, align 8
  %Se = alloca i32, align 4
  %blkn = alloca i32, align 4
  %get_buffer = alloca i64, align 8
  %bits_left = alloca i32, align 4
  %br_state = alloca %struct.bitread_working_state, align 8
  %state = alloca %struct.savable_state, align 4
  %cleanup.dest.slot = alloca i32
  %block = alloca [64 x i16]*, align 8
  %htbl = alloca %struct.d_derived_tbl*, align 8
  %s = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %coef_limit = alloca i32, align 4
  %ci = alloca i32, align 4
  %nb = alloca i32, align 4
  %look = alloca i32, align 4
  %nb98 = alloca i32, align 4
  %look99 = alloca i32, align 4
  %nb209 = alloca i32, align 4
  %look210 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.huff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 89
  %2 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_decoder* %2 to %struct.huff_entropy_decoder*
  store %struct.huff_entropy_decoder* %3, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %4 = bitcast i32** %natural_order to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %Se to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i64* %get_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast %struct.bitread_working_state* %br_state to i8*
  call void @llvm.lifetime.start(i64 40, i8* %9) #1
  %10 = bitcast %struct.savable_state* %state to i8*
  call void @llvm.lifetime.start(i64 20, i8* %10) #1
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 51
  %12 = load i32, i32* %restart_interval, align 4, !tbaa !50
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %13 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %13, i32 0, i32 4
  %14 = load i32, i32* %restarts_to_go, align 4, !tbaa !51
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.then
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 @process_restart(%struct.jpeg_decompress_struct* %15) #3
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then.2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.305

if.end:                                           ; preds = %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %entry
  %16 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %insufficient_data = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %16, i32 0, i32 3
  %17 = load i32, i32* %insufficient_data, align 4, !tbaa !49
  %tobool7 = icmp ne i32 %17, 0
  br i1 %tobool7, label %if.end.303, label %if.then.8

if.then.8:                                        ; preds = %if.end.6
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %natural_order9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 80
  %19 = load i32*, i32** %natural_order9, align 8, !tbaa !69
  store i32* %19, i32** %natural_order, align 8, !tbaa !1
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %lim_Se = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 81
  %21 = load i32, i32* %lim_Se, align 4, !tbaa !26
  store i32 %21, i32* %Se, align 4, !tbaa !23
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cinfo10 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  store %struct.jpeg_decompress_struct* %22, %struct.jpeg_decompress_struct** %cinfo10, align 8, !tbaa !55
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 6
  %24 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !57
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %24, i32 0, i32 0
  %25 = load i8*, i8** %next_input_byte, align 8, !tbaa !58
  %next_input_byte11 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  store i8* %25, i8** %next_input_byte11, align 8, !tbaa !60
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 6
  %27 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src12, align 8, !tbaa !57
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %27, i32 0, i32 1
  %28 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !61
  %bytes_in_buffer13 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  store i64 %28, i64* %bytes_in_buffer13, align 8, !tbaa !62
  %29 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %bitstate = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %29, i32 0, i32 1
  %get_buffer14 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate, i32 0, i32 0
  %30 = load i64, i64* %get_buffer14, align 8, !tbaa !48
  store i64 %30, i64* %get_buffer, align 8, !tbaa !63
  %31 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %bitstate15 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %31, i32 0, i32 1
  %bits_left16 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate15, i32 0, i32 1
  %32 = load i32, i32* %bits_left16, align 4, !tbaa !47
  store i32 %32, i32* %bits_left, align 4, !tbaa !23
  %33 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %33, i32 0, i32 2
  %34 = bitcast %struct.savable_state* %state to i8*
  %35 = bitcast %struct.savable_state* %saved to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 20, i32 4, i1 false), !tbaa.struct !64
  store i32 0, i32* %blkn, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc.289, %if.then.8
  %36 = load i32, i32* %blkn, align 4, !tbaa !23
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 73
  %38 = load i32, i32* %blocks_in_MCU, align 4, !tbaa !43
  %cmp17 = icmp slt i32 %36, %38
  br i1 %cmp17, label %for.body, label %for.end.291

for.body:                                         ; preds = %for.cond
  %39 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  %40 = load i32, i32* %blkn, align 4, !tbaa !23
  %idxprom = sext i32 %40 to i64
  %41 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %41, i64 %idxprom
  %42 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !1
  store [64 x i16]* %42, [64 x i16]** %block, align 8, !tbaa !1
  %43 = bitcast %struct.d_derived_tbl** %htbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = bitcast i32* %s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = bitcast i32* %coef_limit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = load i32, i32* %blkn, align 4, !tbaa !23
  %idxprom18 = sext i32 %49 to i64
  %50 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %dc_cur_tbls = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %50, i32 0, i32 9
  %arrayidx19 = getelementptr inbounds [64 x %struct.d_derived_tbl*], [64 x %struct.d_derived_tbl*]* %dc_cur_tbls, i32 0, i64 %idxprom18
  %51 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %arrayidx19, align 8, !tbaa !1
  store %struct.d_derived_tbl* %51, %struct.d_derived_tbl** %htbl, align 8, !tbaa !1
  %52 = bitcast i32* %nb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  %53 = bitcast i32* %look to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  %54 = load i32, i32* %bits_left, align 4, !tbaa !23
  %cmp20 = icmp slt i32 %54, 8
  br i1 %cmp20, label %if.then.21, label %if.end.31

if.then.21:                                       ; preds = %for.body
  %55 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %56 = load i32, i32* %bits_left, align 4, !tbaa !23
  %call22 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %55, i32 %56, i32 0) #3
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.then.21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.then.21
  %get_buffer26 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %57 = load i64, i64* %get_buffer26, align 8, !tbaa !66
  store i64 %57, i64* %get_buffer, align 8, !tbaa !63
  %bits_left27 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %58 = load i32, i32* %bits_left27, align 4, !tbaa !67
  store i32 %58, i32* %bits_left, align 4, !tbaa !23
  %59 = load i32, i32* %bits_left, align 4, !tbaa !23
  %cmp28 = icmp slt i32 %59, 8
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.25
  store i32 1, i32* %nb, align 4, !tbaa !23
  br label %label1

if.end.30:                                        ; preds = %if.end.25
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %for.body
  %60 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %61 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub = sub nsw i32 %61, 8
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %60, %sh_prom
  %conv = trunc i64 %shr to i32
  %62 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bmask, i32 0, i64 8), align 4, !tbaa !23
  %and = and i32 %conv, %62
  store i32 %and, i32* %look, align 4, !tbaa !23
  %63 = load i32, i32* %look, align 4, !tbaa !23
  %idxprom32 = sext i32 %63 to i64
  %64 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl, align 8, !tbaa !1
  %look_nbits = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %64, i32 0, i32 3
  %arrayidx33 = getelementptr inbounds [256 x i32], [256 x i32]* %look_nbits, i32 0, i64 %idxprom32
  %65 = load i32, i32* %arrayidx33, align 4, !tbaa !23
  store i32 %65, i32* %nb, align 4, !tbaa !23
  %cmp34 = icmp ne i32 %65, 0
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %if.end.31
  %66 = load i32, i32* %nb, align 4, !tbaa !23
  %67 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub37 = sub nsw i32 %67, %66
  store i32 %sub37, i32* %bits_left, align 4, !tbaa !23
  %68 = load i32, i32* %look, align 4, !tbaa !23
  %idxprom38 = sext i32 %68 to i64
  %69 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl, align 8, !tbaa !1
  %look_sym = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %69, i32 0, i32 4
  %arrayidx39 = getelementptr inbounds [256 x i8], [256 x i8]* %look_sym, i32 0, i64 %idxprom38
  %70 = load i8, i8* %arrayidx39, align 1, !tbaa !65
  %conv40 = zext i8 %70 to i32
  store i32 %conv40, i32* %s, align 4, !tbaa !23
  br label %if.end.48

if.else:                                          ; preds = %if.end.31
  store i32 9, i32* %nb, align 4, !tbaa !23
  br label %label1

label1:                                           ; preds = %if.else, %if.then.29
  %71 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %72 = load i32, i32* %bits_left, align 4, !tbaa !23
  %73 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl, align 8, !tbaa !1
  %74 = load i32, i32* %nb, align 4, !tbaa !23
  %call41 = call i32 @jpeg_huff_decode(%struct.bitread_working_state* %br_state, i64 %71, i32 %72, %struct.d_derived_tbl* %73, i32 %74) #3
  store i32 %call41, i32* %s, align 4, !tbaa !23
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %label1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %label1
  %get_buffer46 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %75 = load i64, i64* %get_buffer46, align 8, !tbaa !66
  store i64 %75, i64* %get_buffer, align 8, !tbaa !63
  %bits_left47 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %76 = load i32, i32* %bits_left47, align 4, !tbaa !67
  store i32 %76, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.45, %if.then.36
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.48, %if.then.44, %if.then.24
  %77 = bitcast i32* %look to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %nb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.280 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %79 = load i32, i32* %blkn, align 4, !tbaa !23
  %idxprom50 = sext i32 %79 to i64
  %80 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %ac_cur_tbls = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %80, i32 0, i32 10
  %arrayidx51 = getelementptr inbounds [64 x %struct.d_derived_tbl*], [64 x %struct.d_derived_tbl*]* %ac_cur_tbls, i32 0, i64 %idxprom50
  %81 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %arrayidx51, align 8, !tbaa !1
  store %struct.d_derived_tbl* %81, %struct.d_derived_tbl** %htbl, align 8, !tbaa !1
  store i32 1, i32* %k, align 4, !tbaa !23
  %82 = load i32, i32* %blkn, align 4, !tbaa !23
  %idxprom52 = sext i32 %82 to i64
  %83 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %coef_limit53 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %83, i32 0, i32 11
  %arrayidx54 = getelementptr inbounds [64 x i32], [64 x i32]* %coef_limit53, i32 0, i64 %idxprom52
  %84 = load i32, i32* %arrayidx54, align 4, !tbaa !23
  store i32 %84, i32* %coef_limit, align 4, !tbaa !23
  %85 = load i32, i32* %coef_limit, align 4, !tbaa !23
  %tobool55 = icmp ne i32 %85, 0
  br i1 %tobool55, label %if.then.56, label %if.else.189

if.then.56:                                       ; preds = %cleanup.cont
  %86 = load i32, i32* %s, align 4, !tbaa !23
  %tobool57 = icmp ne i32 %86, 0
  br i1 %tobool57, label %if.then.58, label %if.end.84

if.then.58:                                       ; preds = %if.then.56
  %87 = load i32, i32* %bits_left, align 4, !tbaa !23
  %88 = load i32, i32* %s, align 4, !tbaa !23
  %cmp59 = icmp slt i32 %87, %88
  br i1 %cmp59, label %if.then.61, label %if.end.68

if.then.61:                                       ; preds = %if.then.58
  %89 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %90 = load i32, i32* %bits_left, align 4, !tbaa !23
  %91 = load i32, i32* %s, align 4, !tbaa !23
  %call62 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %89, i32 %90, i32 %91) #3
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.end.65, label %if.then.64

if.then.64:                                       ; preds = %if.then.61
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.280

if.end.65:                                        ; preds = %if.then.61
  %get_buffer66 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %92 = load i64, i64* %get_buffer66, align 8, !tbaa !66
  store i64 %92, i64* %get_buffer, align 8, !tbaa !63
  %bits_left67 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %93 = load i32, i32* %bits_left67, align 4, !tbaa !67
  store i32 %93, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.65, %if.then.58
  %94 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %95 = load i32, i32* %s, align 4, !tbaa !23
  %96 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub69 = sub nsw i32 %96, %95
  store i32 %sub69, i32* %bits_left, align 4, !tbaa !23
  %sh_prom70 = zext i32 %sub69 to i64
  %shr71 = ashr i64 %94, %sh_prom70
  %conv72 = trunc i64 %shr71 to i32
  %97 = load i32, i32* %s, align 4, !tbaa !23
  %idxprom73 = sext i32 %97 to i64
  %arrayidx74 = getelementptr inbounds [16 x i32], [16 x i32]* @bmask, i32 0, i64 %idxprom73
  %98 = load i32, i32* %arrayidx74, align 4, !tbaa !23
  %and75 = and i32 %conv72, %98
  store i32 %and75, i32* %r, align 4, !tbaa !23
  %99 = load i32, i32* %r, align 4, !tbaa !23
  %100 = load i32, i32* %s, align 4, !tbaa !23
  %sub76 = sub nsw i32 %100, 1
  %idxprom77 = sext i32 %sub76 to i64
  %arrayidx78 = getelementptr inbounds [16 x i32], [16 x i32]* @bmask, i32 0, i64 %idxprom77
  %101 = load i32, i32* %arrayidx78, align 4, !tbaa !23
  %cmp79 = icmp sle i32 %99, %101
  br i1 %cmp79, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.68
  %102 = load i32, i32* %r, align 4, !tbaa !23
  %103 = load i32, i32* %s, align 4, !tbaa !23
  %idxprom81 = sext i32 %103 to i64
  %arrayidx82 = getelementptr inbounds [16 x i32], [16 x i32]* @bmask, i32 0, i64 %idxprom81
  %104 = load i32, i32* %arrayidx82, align 4, !tbaa !23
  %sub83 = sub nsw i32 %102, %104
  br label %cond.end

cond.false:                                       ; preds = %if.end.68
  %105 = load i32, i32* %r, align 4, !tbaa !23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub83, %cond.true ], [ %105, %cond.false ]
  store i32 %cond, i32* %s, align 4, !tbaa !23
  br label %if.end.84

if.end.84:                                        ; preds = %cond.end, %if.then.56
  %106 = load i32, i32* %blkn, align 4, !tbaa !23
  %idxprom85 = sext i32 %106 to i64
  %107 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %MCU_membership = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %107, i32 0, i32 74
  %arrayidx86 = getelementptr inbounds [64 x i32], [64 x i32]* %MCU_membership, i32 0, i64 %idxprom85
  %108 = load i32, i32* %arrayidx86, align 4, !tbaa !23
  store i32 %108, i32* %ci, align 4, !tbaa !23
  %109 = load i32, i32* %ci, align 4, !tbaa !23
  %idxprom87 = sext i32 %109 to i64
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %state, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom87
  %110 = load i32, i32* %arrayidx88, align 4, !tbaa !23
  %111 = load i32, i32* %s, align 4, !tbaa !23
  %add = add nsw i32 %111, %110
  store i32 %add, i32* %s, align 4, !tbaa !23
  %112 = load i32, i32* %s, align 4, !tbaa !23
  %113 = load i32, i32* %ci, align 4, !tbaa !23
  %idxprom89 = sext i32 %113 to i64
  %last_dc_val90 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %state, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val90, i32 0, i64 %idxprom89
  store i32 %112, i32* %arrayidx91, align 4, !tbaa !23
  %114 = load i32, i32* %s, align 4, !tbaa !23
  %conv92 = trunc i32 %114 to i16
  %115 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !1
  %arrayidx93 = getelementptr inbounds [64 x i16], [64 x i16]* %115, i32 0, i64 0
  store i16 %conv92, i16* %arrayidx93, align 2, !tbaa !68
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc, %if.end.84
  %116 = load i32, i32* %k, align 4, !tbaa !23
  %117 = load i32, i32* %coef_limit, align 4, !tbaa !23
  %cmp95 = icmp slt i32 %116, %117
  br i1 %cmp95, label %for.body.97, label %for.end

for.body.97:                                      ; preds = %for.cond.94
  %118 = bitcast i32* %nb98 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %118) #1
  %119 = bitcast i32* %look99 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %119) #1
  %120 = load i32, i32* %bits_left, align 4, !tbaa !23
  %cmp100 = icmp slt i32 %120, 8
  br i1 %cmp100, label %if.then.102, label %if.end.113

if.then.102:                                      ; preds = %for.body.97
  %121 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %122 = load i32, i32* %bits_left, align 4, !tbaa !23
  %call103 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %121, i32 %122, i32 0) #3
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.end.106, label %if.then.105

if.then.105:                                      ; preds = %if.then.102
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.139

if.end.106:                                       ; preds = %if.then.102
  %get_buffer107 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %123 = load i64, i64* %get_buffer107, align 8, !tbaa !66
  store i64 %123, i64* %get_buffer, align 8, !tbaa !63
  %bits_left108 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %124 = load i32, i32* %bits_left108, align 4, !tbaa !67
  store i32 %124, i32* %bits_left, align 4, !tbaa !23
  %125 = load i32, i32* %bits_left, align 4, !tbaa !23
  %cmp109 = icmp slt i32 %125, 8
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.end.106
  store i32 1, i32* %nb98, align 4, !tbaa !23
  br label %label2

if.end.112:                                       ; preds = %if.end.106
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %for.body.97
  %126 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %127 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub114 = sub nsw i32 %127, 8
  %sh_prom115 = zext i32 %sub114 to i64
  %shr116 = ashr i64 %126, %sh_prom115
  %conv117 = trunc i64 %shr116 to i32
  %128 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bmask, i32 0, i64 8), align 4, !tbaa !23
  %and118 = and i32 %conv117, %128
  store i32 %and118, i32* %look99, align 4, !tbaa !23
  %129 = load i32, i32* %look99, align 4, !tbaa !23
  %idxprom119 = sext i32 %129 to i64
  %130 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl, align 8, !tbaa !1
  %look_nbits120 = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %130, i32 0, i32 3
  %arrayidx121 = getelementptr inbounds [256 x i32], [256 x i32]* %look_nbits120, i32 0, i64 %idxprom119
  %131 = load i32, i32* %arrayidx121, align 4, !tbaa !23
  store i32 %131, i32* %nb98, align 4, !tbaa !23
  %cmp122 = icmp ne i32 %131, 0
  br i1 %cmp122, label %if.then.124, label %if.else.130

if.then.124:                                      ; preds = %if.end.113
  %132 = load i32, i32* %nb98, align 4, !tbaa !23
  %133 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub125 = sub nsw i32 %133, %132
  store i32 %sub125, i32* %bits_left, align 4, !tbaa !23
  %134 = load i32, i32* %look99, align 4, !tbaa !23
  %idxprom126 = sext i32 %134 to i64
  %135 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl, align 8, !tbaa !1
  %look_sym127 = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %135, i32 0, i32 4
  %arrayidx128 = getelementptr inbounds [256 x i8], [256 x i8]* %look_sym127, i32 0, i64 %idxprom126
  %136 = load i8, i8* %arrayidx128, align 1, !tbaa !65
  %conv129 = zext i8 %136 to i32
  store i32 %conv129, i32* %s, align 4, !tbaa !23
  br label %if.end.138

if.else.130:                                      ; preds = %if.end.113
  store i32 9, i32* %nb98, align 4, !tbaa !23
  br label %label2

label2:                                           ; preds = %if.else.130, %if.then.111
  %137 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %138 = load i32, i32* %bits_left, align 4, !tbaa !23
  %139 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl, align 8, !tbaa !1
  %140 = load i32, i32* %nb98, align 4, !tbaa !23
  %call131 = call i32 @jpeg_huff_decode(%struct.bitread_working_state* %br_state, i64 %137, i32 %138, %struct.d_derived_tbl* %139, i32 %140) #3
  store i32 %call131, i32* %s, align 4, !tbaa !23
  %cmp132 = icmp slt i32 %call131, 0
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %label2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.139

if.end.135:                                       ; preds = %label2
  %get_buffer136 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %141 = load i64, i64* %get_buffer136, align 8, !tbaa !66
  store i64 %141, i64* %get_buffer, align 8, !tbaa !63
  %bits_left137 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %142 = load i32, i32* %bits_left137, align 4, !tbaa !67
  store i32 %142, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.135, %if.then.124
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.139

cleanup.139:                                      ; preds = %if.end.138, %if.then.134, %if.then.105
  %143 = bitcast i32* %look99 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = bitcast i32* %nb98 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %cleanup.dest.141 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.141, label %cleanup.280 [
    i32 0, label %cleanup.cont.142
  ]

cleanup.cont.142:                                 ; preds = %cleanup.139
  %145 = load i32, i32* %s, align 4, !tbaa !23
  %shr143 = ashr i32 %145, 4
  store i32 %shr143, i32* %r, align 4, !tbaa !23
  %146 = load i32, i32* %s, align 4, !tbaa !23
  %and144 = and i32 %146, 15
  store i32 %and144, i32* %s, align 4, !tbaa !23
  %147 = load i32, i32* %s, align 4, !tbaa !23
  %tobool145 = icmp ne i32 %147, 0
  br i1 %tobool145, label %if.then.146, label %if.else.182

if.then.146:                                      ; preds = %cleanup.cont.142
  %148 = load i32, i32* %r, align 4, !tbaa !23
  %149 = load i32, i32* %k, align 4, !tbaa !23
  %add147 = add nsw i32 %149, %148
  store i32 %add147, i32* %k, align 4, !tbaa !23
  %150 = load i32, i32* %bits_left, align 4, !tbaa !23
  %151 = load i32, i32* %s, align 4, !tbaa !23
  %cmp148 = icmp slt i32 %150, %151
  br i1 %cmp148, label %if.then.150, label %if.end.157

if.then.150:                                      ; preds = %if.then.146
  %152 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %153 = load i32, i32* %bits_left, align 4, !tbaa !23
  %154 = load i32, i32* %s, align 4, !tbaa !23
  %call151 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %152, i32 %153, i32 %154) #3
  %tobool152 = icmp ne i32 %call151, 0
  br i1 %tobool152, label %if.end.154, label %if.then.153

if.then.153:                                      ; preds = %if.then.150
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.280

if.end.154:                                       ; preds = %if.then.150
  %get_buffer155 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %155 = load i64, i64* %get_buffer155, align 8, !tbaa !66
  store i64 %155, i64* %get_buffer, align 8, !tbaa !63
  %bits_left156 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %156 = load i32, i32* %bits_left156, align 4, !tbaa !67
  store i32 %156, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.154, %if.then.146
  %157 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %158 = load i32, i32* %s, align 4, !tbaa !23
  %159 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub158 = sub nsw i32 %159, %158
  store i32 %sub158, i32* %bits_left, align 4, !tbaa !23
  %sh_prom159 = zext i32 %sub158 to i64
  %shr160 = ashr i64 %157, %sh_prom159
  %conv161 = trunc i64 %shr160 to i32
  %160 = load i32, i32* %s, align 4, !tbaa !23
  %idxprom162 = sext i32 %160 to i64
  %arrayidx163 = getelementptr inbounds [16 x i32], [16 x i32]* @bmask, i32 0, i64 %idxprom162
  %161 = load i32, i32* %arrayidx163, align 4, !tbaa !23
  %and164 = and i32 %conv161, %161
  store i32 %and164, i32* %r, align 4, !tbaa !23
  %162 = load i32, i32* %r, align 4, !tbaa !23
  %163 = load i32, i32* %s, align 4, !tbaa !23
  %sub165 = sub nsw i32 %163, 1
  %idxprom166 = sext i32 %sub165 to i64
  %arrayidx167 = getelementptr inbounds [16 x i32], [16 x i32]* @bmask, i32 0, i64 %idxprom166
  %164 = load i32, i32* %arrayidx167, align 4, !tbaa !23
  %cmp168 = icmp sle i32 %162, %164
  br i1 %cmp168, label %cond.true.170, label %cond.false.174

cond.true.170:                                    ; preds = %if.end.157
  %165 = load i32, i32* %r, align 4, !tbaa !23
  %166 = load i32, i32* %s, align 4, !tbaa !23
  %idxprom171 = sext i32 %166 to i64
  %arrayidx172 = getelementptr inbounds [16 x i32], [16 x i32]* @bmask, i32 0, i64 %idxprom171
  %167 = load i32, i32* %arrayidx172, align 4, !tbaa !23
  %sub173 = sub nsw i32 %165, %167
  br label %cond.end.175

cond.false.174:                                   ; preds = %if.end.157
  %168 = load i32, i32* %r, align 4, !tbaa !23
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.false.174, %cond.true.170
  %cond176 = phi i32 [ %sub173, %cond.true.170 ], [ %168, %cond.false.174 ]
  store i32 %cond176, i32* %s, align 4, !tbaa !23
  %169 = load i32, i32* %s, align 4, !tbaa !23
  %conv177 = trunc i32 %169 to i16
  %170 = load i32, i32* %k, align 4, !tbaa !23
  %idxprom178 = sext i32 %170 to i64
  %171 = load i32*, i32** %natural_order, align 8, !tbaa !1
  %arrayidx179 = getelementptr inbounds i32, i32* %171, i64 %idxprom178
  %172 = load i32, i32* %arrayidx179, align 4, !tbaa !23
  %idxprom180 = sext i32 %172 to i64
  %173 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !1
  %arrayidx181 = getelementptr inbounds [64 x i16], [64 x i16]* %173, i32 0, i64 %idxprom180
  store i16 %conv177, i16* %arrayidx181, align 2, !tbaa !68
  br label %if.end.188

if.else.182:                                      ; preds = %cleanup.cont.142
  %174 = load i32, i32* %r, align 4, !tbaa !23
  %cmp183 = icmp ne i32 %174, 15
  br i1 %cmp183, label %if.then.185, label %if.end.186

if.then.185:                                      ; preds = %if.else.182
  br label %EndOfBlock

if.end.186:                                       ; preds = %if.else.182
  %175 = load i32, i32* %k, align 4, !tbaa !23
  %add187 = add nsw i32 %175, 15
  store i32 %add187, i32* %k, align 4, !tbaa !23
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.186, %cond.end.175
  br label %for.inc

for.inc:                                          ; preds = %if.end.188
  %176 = load i32, i32* %k, align 4, !tbaa !23
  %inc = add nsw i32 %176, 1
  store i32 %inc, i32* %k, align 4, !tbaa !23
  br label %for.cond.94

for.end:                                          ; preds = %for.cond.94
  br label %if.end.204

if.else.189:                                      ; preds = %cleanup.cont
  %177 = load i32, i32* %s, align 4, !tbaa !23
  %tobool190 = icmp ne i32 %177, 0
  br i1 %tobool190, label %if.then.191, label %if.end.203

if.then.191:                                      ; preds = %if.else.189
  %178 = load i32, i32* %bits_left, align 4, !tbaa !23
  %179 = load i32, i32* %s, align 4, !tbaa !23
  %cmp192 = icmp slt i32 %178, %179
  br i1 %cmp192, label %if.then.194, label %if.end.201

if.then.194:                                      ; preds = %if.then.191
  %180 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %181 = load i32, i32* %bits_left, align 4, !tbaa !23
  %182 = load i32, i32* %s, align 4, !tbaa !23
  %call195 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %180, i32 %181, i32 %182) #3
  %tobool196 = icmp ne i32 %call195, 0
  br i1 %tobool196, label %if.end.198, label %if.then.197

if.then.197:                                      ; preds = %if.then.194
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.280

if.end.198:                                       ; preds = %if.then.194
  %get_buffer199 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %183 = load i64, i64* %get_buffer199, align 8, !tbaa !66
  store i64 %183, i64* %get_buffer, align 8, !tbaa !63
  %bits_left200 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %184 = load i32, i32* %bits_left200, align 4, !tbaa !67
  store i32 %184, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.198, %if.then.191
  %185 = load i32, i32* %s, align 4, !tbaa !23
  %186 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub202 = sub nsw i32 %186, %185
  store i32 %sub202, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.201, %if.else.189
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %for.end
  br label %for.cond.205

for.cond.205:                                     ; preds = %for.inc.277, %if.end.204
  %187 = load i32, i32* %k, align 4, !tbaa !23
  %188 = load i32, i32* %Se, align 4, !tbaa !23
  %cmp206 = icmp sle i32 %187, %188
  br i1 %cmp206, label %for.body.208, label %for.end.279

for.body.208:                                     ; preds = %for.cond.205
  %189 = bitcast i32* %nb209 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %189) #1
  %190 = bitcast i32* %look210 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %190) #1
  %191 = load i32, i32* %bits_left, align 4, !tbaa !23
  %cmp211 = icmp slt i32 %191, 8
  br i1 %cmp211, label %if.then.213, label %if.end.224

if.then.213:                                      ; preds = %for.body.208
  %192 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %193 = load i32, i32* %bits_left, align 4, !tbaa !23
  %call214 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %192, i32 %193, i32 0) #3
  %tobool215 = icmp ne i32 %call214, 0
  br i1 %tobool215, label %if.end.217, label %if.then.216

if.then.216:                                      ; preds = %if.then.213
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.250

if.end.217:                                       ; preds = %if.then.213
  %get_buffer218 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %194 = load i64, i64* %get_buffer218, align 8, !tbaa !66
  store i64 %194, i64* %get_buffer, align 8, !tbaa !63
  %bits_left219 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %195 = load i32, i32* %bits_left219, align 4, !tbaa !67
  store i32 %195, i32* %bits_left, align 4, !tbaa !23
  %196 = load i32, i32* %bits_left, align 4, !tbaa !23
  %cmp220 = icmp slt i32 %196, 8
  br i1 %cmp220, label %if.then.222, label %if.end.223

if.then.222:                                      ; preds = %if.end.217
  store i32 1, i32* %nb209, align 4, !tbaa !23
  br label %label3

if.end.223:                                       ; preds = %if.end.217
  br label %if.end.224

if.end.224:                                       ; preds = %if.end.223, %for.body.208
  %197 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %198 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub225 = sub nsw i32 %198, 8
  %sh_prom226 = zext i32 %sub225 to i64
  %shr227 = ashr i64 %197, %sh_prom226
  %conv228 = trunc i64 %shr227 to i32
  %199 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bmask, i32 0, i64 8), align 4, !tbaa !23
  %and229 = and i32 %conv228, %199
  store i32 %and229, i32* %look210, align 4, !tbaa !23
  %200 = load i32, i32* %look210, align 4, !tbaa !23
  %idxprom230 = sext i32 %200 to i64
  %201 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl, align 8, !tbaa !1
  %look_nbits231 = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %201, i32 0, i32 3
  %arrayidx232 = getelementptr inbounds [256 x i32], [256 x i32]* %look_nbits231, i32 0, i64 %idxprom230
  %202 = load i32, i32* %arrayidx232, align 4, !tbaa !23
  store i32 %202, i32* %nb209, align 4, !tbaa !23
  %cmp233 = icmp ne i32 %202, 0
  br i1 %cmp233, label %if.then.235, label %if.else.241

if.then.235:                                      ; preds = %if.end.224
  %203 = load i32, i32* %nb209, align 4, !tbaa !23
  %204 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub236 = sub nsw i32 %204, %203
  store i32 %sub236, i32* %bits_left, align 4, !tbaa !23
  %205 = load i32, i32* %look210, align 4, !tbaa !23
  %idxprom237 = sext i32 %205 to i64
  %206 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl, align 8, !tbaa !1
  %look_sym238 = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %206, i32 0, i32 4
  %arrayidx239 = getelementptr inbounds [256 x i8], [256 x i8]* %look_sym238, i32 0, i64 %idxprom237
  %207 = load i8, i8* %arrayidx239, align 1, !tbaa !65
  %conv240 = zext i8 %207 to i32
  store i32 %conv240, i32* %s, align 4, !tbaa !23
  br label %if.end.249

if.else.241:                                      ; preds = %if.end.224
  store i32 9, i32* %nb209, align 4, !tbaa !23
  br label %label3

label3:                                           ; preds = %if.else.241, %if.then.222
  %208 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %209 = load i32, i32* %bits_left, align 4, !tbaa !23
  %210 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl, align 8, !tbaa !1
  %211 = load i32, i32* %nb209, align 4, !tbaa !23
  %call242 = call i32 @jpeg_huff_decode(%struct.bitread_working_state* %br_state, i64 %208, i32 %209, %struct.d_derived_tbl* %210, i32 %211) #3
  store i32 %call242, i32* %s, align 4, !tbaa !23
  %cmp243 = icmp slt i32 %call242, 0
  br i1 %cmp243, label %if.then.245, label %if.end.246

if.then.245:                                      ; preds = %label3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.250

if.end.246:                                       ; preds = %label3
  %get_buffer247 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %212 = load i64, i64* %get_buffer247, align 8, !tbaa !66
  store i64 %212, i64* %get_buffer, align 8, !tbaa !63
  %bits_left248 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %213 = load i32, i32* %bits_left248, align 4, !tbaa !67
  store i32 %213, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.246, %if.then.235
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.250

cleanup.250:                                      ; preds = %if.end.249, %if.then.245, %if.then.216
  %214 = bitcast i32* %look210 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %215 = bitcast i32* %nb209 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %cleanup.dest.252 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.252, label %cleanup.280 [
    i32 0, label %cleanup.cont.253
  ]

cleanup.cont.253:                                 ; preds = %cleanup.250
  %216 = load i32, i32* %s, align 4, !tbaa !23
  %shr254 = ashr i32 %216, 4
  store i32 %shr254, i32* %r, align 4, !tbaa !23
  %217 = load i32, i32* %s, align 4, !tbaa !23
  %and255 = and i32 %217, 15
  store i32 %and255, i32* %s, align 4, !tbaa !23
  %218 = load i32, i32* %s, align 4, !tbaa !23
  %tobool256 = icmp ne i32 %218, 0
  br i1 %tobool256, label %if.then.257, label %if.else.270

if.then.257:                                      ; preds = %cleanup.cont.253
  %219 = load i32, i32* %r, align 4, !tbaa !23
  %220 = load i32, i32* %k, align 4, !tbaa !23
  %add258 = add nsw i32 %220, %219
  store i32 %add258, i32* %k, align 4, !tbaa !23
  %221 = load i32, i32* %bits_left, align 4, !tbaa !23
  %222 = load i32, i32* %s, align 4, !tbaa !23
  %cmp259 = icmp slt i32 %221, %222
  br i1 %cmp259, label %if.then.261, label %if.end.268

if.then.261:                                      ; preds = %if.then.257
  %223 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %224 = load i32, i32* %bits_left, align 4, !tbaa !23
  %225 = load i32, i32* %s, align 4, !tbaa !23
  %call262 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %223, i32 %224, i32 %225) #3
  %tobool263 = icmp ne i32 %call262, 0
  br i1 %tobool263, label %if.end.265, label %if.then.264

if.then.264:                                      ; preds = %if.then.261
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.280

if.end.265:                                       ; preds = %if.then.261
  %get_buffer266 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %226 = load i64, i64* %get_buffer266, align 8, !tbaa !66
  store i64 %226, i64* %get_buffer, align 8, !tbaa !63
  %bits_left267 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %227 = load i32, i32* %bits_left267, align 4, !tbaa !67
  store i32 %227, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.265, %if.then.257
  %228 = load i32, i32* %s, align 4, !tbaa !23
  %229 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub269 = sub nsw i32 %229, %228
  store i32 %sub269, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.276

if.else.270:                                      ; preds = %cleanup.cont.253
  %230 = load i32, i32* %r, align 4, !tbaa !23
  %cmp271 = icmp ne i32 %230, 15
  br i1 %cmp271, label %if.then.273, label %if.end.274

if.then.273:                                      ; preds = %if.else.270
  br label %for.end.279

if.end.274:                                       ; preds = %if.else.270
  %231 = load i32, i32* %k, align 4, !tbaa !23
  %add275 = add nsw i32 %231, 15
  store i32 %add275, i32* %k, align 4, !tbaa !23
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.274, %if.end.268
  br label %for.inc.277

for.inc.277:                                      ; preds = %if.end.276
  %232 = load i32, i32* %k, align 4, !tbaa !23
  %inc278 = add nsw i32 %232, 1
  store i32 %inc278, i32* %k, align 4, !tbaa !23
  br label %for.cond.205

for.end.279:                                      ; preds = %if.then.273, %for.cond.205
  br label %EndOfBlock

EndOfBlock:                                       ; preds = %for.end.279, %if.then.185
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.280

cleanup.280:                                      ; preds = %EndOfBlock, %if.then.264, %cleanup.250, %if.then.197, %if.then.153, %cleanup.139, %if.then.64, %cleanup
  %233 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %233) #1
  %234 = bitcast i32* %coef_limit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %234) #1
  %235 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %235) #1
  %236 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %236) #1
  %237 = bitcast i32* %s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %237) #1
  %238 = bitcast %struct.d_derived_tbl** %htbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %238) #1
  %239 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %239) #1
  %cleanup.dest.287 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.287, label %cleanup.305 [
    i32 0, label %cleanup.cont.288
  ]

cleanup.cont.288:                                 ; preds = %cleanup.280
  br label %for.inc.289

for.inc.289:                                      ; preds = %cleanup.cont.288
  %240 = load i32, i32* %blkn, align 4, !tbaa !23
  %inc290 = add nsw i32 %240, 1
  store i32 %inc290, i32* %blkn, align 4, !tbaa !23
  br label %for.cond

for.end.291:                                      ; preds = %for.cond
  %next_input_byte292 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  %241 = load i8*, i8** %next_input_byte292, align 8, !tbaa !60
  %242 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src293 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %242, i32 0, i32 6
  %243 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src293, align 8, !tbaa !57
  %next_input_byte294 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %243, i32 0, i32 0
  store i8* %241, i8** %next_input_byte294, align 8, !tbaa !58
  %bytes_in_buffer295 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  %244 = load i64, i64* %bytes_in_buffer295, align 8, !tbaa !62
  %245 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src296 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %245, i32 0, i32 6
  %246 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src296, align 8, !tbaa !57
  %bytes_in_buffer297 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %246, i32 0, i32 1
  store i64 %244, i64* %bytes_in_buffer297, align 8, !tbaa !61
  %247 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %248 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %bitstate298 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %248, i32 0, i32 1
  %get_buffer299 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate298, i32 0, i32 0
  store i64 %247, i64* %get_buffer299, align 8, !tbaa !48
  %249 = load i32, i32* %bits_left, align 4, !tbaa !23
  %250 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %bitstate300 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %250, i32 0, i32 1
  %bits_left301 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate300, i32 0, i32 1
  store i32 %249, i32* %bits_left301, align 4, !tbaa !47
  %251 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %saved302 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %251, i32 0, i32 2
  %252 = bitcast %struct.savable_state* %saved302 to i8*
  %253 = bitcast %struct.savable_state* %state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %252, i8* %253, i64 20, i32 4, i1 false), !tbaa.struct !64
  br label %if.end.303

if.end.303:                                       ; preds = %for.end.291, %if.end.6
  %254 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %restarts_to_go304 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %254, i32 0, i32 4
  %255 = load i32, i32* %restarts_to_go304, align 4, !tbaa !51
  %dec = add i32 %255, -1
  store i32 %dec, i32* %restarts_to_go304, align 4, !tbaa !51
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.305

cleanup.305:                                      ; preds = %if.end.303, %cleanup.280, %if.then.4
  %256 = bitcast %struct.savable_state* %state to i8*
  call void @llvm.lifetime.end(i64 20, i8* %256) #1
  %257 = bitcast %struct.bitread_working_state* %br_state to i8*
  call void @llvm.lifetime.end(i64 40, i8* %257) #1
  %258 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %258) #1
  %259 = bitcast i64* %get_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %259) #1
  %260 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %260) #1
  %261 = bitcast i32* %Se to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #1
  %262 = bitcast i32** %natural_order to i8*
  call void @llvm.lifetime.end(i64 8, i8* %262) #1
  %263 = bitcast %struct.huff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %263) #1
  %264 = load i32, i32* %retval
  ret i32 %264
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_mcu(%struct.jpeg_decompress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.huff_entropy_decoder*, align 8
  %blkn = alloca i32, align 4
  %get_buffer = alloca i64, align 8
  %bits_left = alloca i32, align 4
  %br_state = alloca %struct.bitread_working_state, align 8
  %state = alloca %struct.savable_state, align 4
  %cleanup.dest.slot = alloca i32
  %block = alloca [64 x i16]*, align 8
  %htbl = alloca %struct.d_derived_tbl*, align 8
  %s = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %coef_limit = alloca i32, align 4
  %ci = alloca i32, align 4
  %nb = alloca i32, align 4
  %look = alloca i32, align 4
  %nb97 = alloca i32, align 4
  %look98 = alloca i32, align 4
  %nb208 = alloca i32, align 4
  %look209 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.huff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 89
  %2 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_decoder* %2 to %struct.huff_entropy_decoder*
  store %struct.huff_entropy_decoder* %3, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %4 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i64* %get_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct.bitread_working_state* %br_state to i8*
  call void @llvm.lifetime.start(i64 40, i8* %7) #1
  %8 = bitcast %struct.savable_state* %state to i8*
  call void @llvm.lifetime.start(i64 20, i8* %8) #1
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 51
  %10 = load i32, i32* %restart_interval, align 4, !tbaa !50
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %11 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %11, i32 0, i32 4
  %12 = load i32, i32* %restarts_to_go, align 4, !tbaa !51
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.then
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 @process_restart(%struct.jpeg_decompress_struct* %13) #3
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then.2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.304

if.end:                                           ; preds = %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %entry
  %14 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %insufficient_data = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %14, i32 0, i32 3
  %15 = load i32, i32* %insufficient_data, align 4, !tbaa !49
  %tobool7 = icmp ne i32 %15, 0
  br i1 %tobool7, label %if.end.302, label %if.then.8

if.then.8:                                        ; preds = %if.end.6
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %cinfo9 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  store %struct.jpeg_decompress_struct* %16, %struct.jpeg_decompress_struct** %cinfo9, align 8, !tbaa !55
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 6
  %18 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !57
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %18, i32 0, i32 0
  %19 = load i8*, i8** %next_input_byte, align 8, !tbaa !58
  %next_input_byte10 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  store i8* %19, i8** %next_input_byte10, align 8, !tbaa !60
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 6
  %21 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src11, align 8, !tbaa !57
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %21, i32 0, i32 1
  %22 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !61
  %bytes_in_buffer12 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  store i64 %22, i64* %bytes_in_buffer12, align 8, !tbaa !62
  %23 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %bitstate = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %23, i32 0, i32 1
  %get_buffer13 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate, i32 0, i32 0
  %24 = load i64, i64* %get_buffer13, align 8, !tbaa !48
  store i64 %24, i64* %get_buffer, align 8, !tbaa !63
  %25 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %bitstate14 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %25, i32 0, i32 1
  %bits_left15 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate14, i32 0, i32 1
  %26 = load i32, i32* %bits_left15, align 4, !tbaa !47
  store i32 %26, i32* %bits_left, align 4, !tbaa !23
  %27 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %27, i32 0, i32 2
  %28 = bitcast %struct.savable_state* %state to i8*
  %29 = bitcast %struct.savable_state* %saved to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 20, i32 4, i1 false), !tbaa.struct !64
  store i32 0, i32* %blkn, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc.288, %if.then.8
  %30 = load i32, i32* %blkn, align 4, !tbaa !23
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 73
  %32 = load i32, i32* %blocks_in_MCU, align 4, !tbaa !43
  %cmp16 = icmp slt i32 %30, %32
  br i1 %cmp16, label %for.body, label %for.end.290

for.body:                                         ; preds = %for.cond
  %33 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = load i32, i32* %blkn, align 4, !tbaa !23
  %idxprom = sext i32 %34 to i64
  %35 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %35, i64 %idxprom
  %36 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !1
  store [64 x i16]* %36, [64 x i16]** %block, align 8, !tbaa !1
  %37 = bitcast %struct.d_derived_tbl** %htbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %38 = bitcast i32* %s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = bitcast i32* %coef_limit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = load i32, i32* %blkn, align 4, !tbaa !23
  %idxprom17 = sext i32 %43 to i64
  %44 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %dc_cur_tbls = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %44, i32 0, i32 9
  %arrayidx18 = getelementptr inbounds [64 x %struct.d_derived_tbl*], [64 x %struct.d_derived_tbl*]* %dc_cur_tbls, i32 0, i64 %idxprom17
  %45 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %arrayidx18, align 8, !tbaa !1
  store %struct.d_derived_tbl* %45, %struct.d_derived_tbl** %htbl, align 8, !tbaa !1
  %46 = bitcast i32* %nb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = bitcast i32* %look to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = load i32, i32* %bits_left, align 4, !tbaa !23
  %cmp19 = icmp slt i32 %48, 8
  br i1 %cmp19, label %if.then.20, label %if.end.30

if.then.20:                                       ; preds = %for.body
  %49 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %50 = load i32, i32* %bits_left, align 4, !tbaa !23
  %call21 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %49, i32 %50, i32 0) #3
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.then.20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.then.20
  %get_buffer25 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %51 = load i64, i64* %get_buffer25, align 8, !tbaa !66
  store i64 %51, i64* %get_buffer, align 8, !tbaa !63
  %bits_left26 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %52 = load i32, i32* %bits_left26, align 4, !tbaa !67
  store i32 %52, i32* %bits_left, align 4, !tbaa !23
  %53 = load i32, i32* %bits_left, align 4, !tbaa !23
  %cmp27 = icmp slt i32 %53, 8
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.24
  store i32 1, i32* %nb, align 4, !tbaa !23
  br label %label1

if.end.29:                                        ; preds = %if.end.24
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %for.body
  %54 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %55 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub = sub nsw i32 %55, 8
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %54, %sh_prom
  %conv = trunc i64 %shr to i32
  %56 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bmask, i32 0, i64 8), align 4, !tbaa !23
  %and = and i32 %conv, %56
  store i32 %and, i32* %look, align 4, !tbaa !23
  %57 = load i32, i32* %look, align 4, !tbaa !23
  %idxprom31 = sext i32 %57 to i64
  %58 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl, align 8, !tbaa !1
  %look_nbits = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %58, i32 0, i32 3
  %arrayidx32 = getelementptr inbounds [256 x i32], [256 x i32]* %look_nbits, i32 0, i64 %idxprom31
  %59 = load i32, i32* %arrayidx32, align 4, !tbaa !23
  store i32 %59, i32* %nb, align 4, !tbaa !23
  %cmp33 = icmp ne i32 %59, 0
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.end.30
  %60 = load i32, i32* %nb, align 4, !tbaa !23
  %61 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub36 = sub nsw i32 %61, %60
  store i32 %sub36, i32* %bits_left, align 4, !tbaa !23
  %62 = load i32, i32* %look, align 4, !tbaa !23
  %idxprom37 = sext i32 %62 to i64
  %63 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl, align 8, !tbaa !1
  %look_sym = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %63, i32 0, i32 4
  %arrayidx38 = getelementptr inbounds [256 x i8], [256 x i8]* %look_sym, i32 0, i64 %idxprom37
  %64 = load i8, i8* %arrayidx38, align 1, !tbaa !65
  %conv39 = zext i8 %64 to i32
  store i32 %conv39, i32* %s, align 4, !tbaa !23
  br label %if.end.47

if.else:                                          ; preds = %if.end.30
  store i32 9, i32* %nb, align 4, !tbaa !23
  br label %label1

label1:                                           ; preds = %if.else, %if.then.28
  %65 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %66 = load i32, i32* %bits_left, align 4, !tbaa !23
  %67 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl, align 8, !tbaa !1
  %68 = load i32, i32* %nb, align 4, !tbaa !23
  %call40 = call i32 @jpeg_huff_decode(%struct.bitread_working_state* %br_state, i64 %65, i32 %66, %struct.d_derived_tbl* %67, i32 %68) #3
  store i32 %call40, i32* %s, align 4, !tbaa !23
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %label1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %label1
  %get_buffer45 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %69 = load i64, i64* %get_buffer45, align 8, !tbaa !66
  store i64 %69, i64* %get_buffer, align 8, !tbaa !63
  %bits_left46 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %70 = load i32, i32* %bits_left46, align 4, !tbaa !67
  store i32 %70, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.44, %if.then.35
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.47, %if.then.43, %if.then.23
  %71 = bitcast i32* %look to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %nb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.279 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %73 = load i32, i32* %blkn, align 4, !tbaa !23
  %idxprom49 = sext i32 %73 to i64
  %74 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %ac_cur_tbls = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %74, i32 0, i32 10
  %arrayidx50 = getelementptr inbounds [64 x %struct.d_derived_tbl*], [64 x %struct.d_derived_tbl*]* %ac_cur_tbls, i32 0, i64 %idxprom49
  %75 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %arrayidx50, align 8, !tbaa !1
  store %struct.d_derived_tbl* %75, %struct.d_derived_tbl** %htbl, align 8, !tbaa !1
  store i32 1, i32* %k, align 4, !tbaa !23
  %76 = load i32, i32* %blkn, align 4, !tbaa !23
  %idxprom51 = sext i32 %76 to i64
  %77 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %coef_limit52 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %77, i32 0, i32 11
  %arrayidx53 = getelementptr inbounds [64 x i32], [64 x i32]* %coef_limit52, i32 0, i64 %idxprom51
  %78 = load i32, i32* %arrayidx53, align 4, !tbaa !23
  store i32 %78, i32* %coef_limit, align 4, !tbaa !23
  %79 = load i32, i32* %coef_limit, align 4, !tbaa !23
  %tobool54 = icmp ne i32 %79, 0
  br i1 %tobool54, label %if.then.55, label %if.else.188

if.then.55:                                       ; preds = %cleanup.cont
  %80 = load i32, i32* %s, align 4, !tbaa !23
  %tobool56 = icmp ne i32 %80, 0
  br i1 %tobool56, label %if.then.57, label %if.end.83

if.then.57:                                       ; preds = %if.then.55
  %81 = load i32, i32* %bits_left, align 4, !tbaa !23
  %82 = load i32, i32* %s, align 4, !tbaa !23
  %cmp58 = icmp slt i32 %81, %82
  br i1 %cmp58, label %if.then.60, label %if.end.67

if.then.60:                                       ; preds = %if.then.57
  %83 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %84 = load i32, i32* %bits_left, align 4, !tbaa !23
  %85 = load i32, i32* %s, align 4, !tbaa !23
  %call61 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %83, i32 %84, i32 %85) #3
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %if.then.60
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.279

if.end.64:                                        ; preds = %if.then.60
  %get_buffer65 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %86 = load i64, i64* %get_buffer65, align 8, !tbaa !66
  store i64 %86, i64* %get_buffer, align 8, !tbaa !63
  %bits_left66 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %87 = load i32, i32* %bits_left66, align 4, !tbaa !67
  store i32 %87, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.64, %if.then.57
  %88 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %89 = load i32, i32* %s, align 4, !tbaa !23
  %90 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub68 = sub nsw i32 %90, %89
  store i32 %sub68, i32* %bits_left, align 4, !tbaa !23
  %sh_prom69 = zext i32 %sub68 to i64
  %shr70 = ashr i64 %88, %sh_prom69
  %conv71 = trunc i64 %shr70 to i32
  %91 = load i32, i32* %s, align 4, !tbaa !23
  %idxprom72 = sext i32 %91 to i64
  %arrayidx73 = getelementptr inbounds [16 x i32], [16 x i32]* @bmask, i32 0, i64 %idxprom72
  %92 = load i32, i32* %arrayidx73, align 4, !tbaa !23
  %and74 = and i32 %conv71, %92
  store i32 %and74, i32* %r, align 4, !tbaa !23
  %93 = load i32, i32* %r, align 4, !tbaa !23
  %94 = load i32, i32* %s, align 4, !tbaa !23
  %sub75 = sub nsw i32 %94, 1
  %idxprom76 = sext i32 %sub75 to i64
  %arrayidx77 = getelementptr inbounds [16 x i32], [16 x i32]* @bmask, i32 0, i64 %idxprom76
  %95 = load i32, i32* %arrayidx77, align 4, !tbaa !23
  %cmp78 = icmp sle i32 %93, %95
  br i1 %cmp78, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.67
  %96 = load i32, i32* %r, align 4, !tbaa !23
  %97 = load i32, i32* %s, align 4, !tbaa !23
  %idxprom80 = sext i32 %97 to i64
  %arrayidx81 = getelementptr inbounds [16 x i32], [16 x i32]* @bmask, i32 0, i64 %idxprom80
  %98 = load i32, i32* %arrayidx81, align 4, !tbaa !23
  %sub82 = sub nsw i32 %96, %98
  br label %cond.end

cond.false:                                       ; preds = %if.end.67
  %99 = load i32, i32* %r, align 4, !tbaa !23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub82, %cond.true ], [ %99, %cond.false ]
  store i32 %cond, i32* %s, align 4, !tbaa !23
  br label %if.end.83

if.end.83:                                        ; preds = %cond.end, %if.then.55
  %100 = load i32, i32* %blkn, align 4, !tbaa !23
  %idxprom84 = sext i32 %100 to i64
  %101 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %MCU_membership = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %101, i32 0, i32 74
  %arrayidx85 = getelementptr inbounds [64 x i32], [64 x i32]* %MCU_membership, i32 0, i64 %idxprom84
  %102 = load i32, i32* %arrayidx85, align 4, !tbaa !23
  store i32 %102, i32* %ci, align 4, !tbaa !23
  %103 = load i32, i32* %ci, align 4, !tbaa !23
  %idxprom86 = sext i32 %103 to i64
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %state, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom86
  %104 = load i32, i32* %arrayidx87, align 4, !tbaa !23
  %105 = load i32, i32* %s, align 4, !tbaa !23
  %add = add nsw i32 %105, %104
  store i32 %add, i32* %s, align 4, !tbaa !23
  %106 = load i32, i32* %s, align 4, !tbaa !23
  %107 = load i32, i32* %ci, align 4, !tbaa !23
  %idxprom88 = sext i32 %107 to i64
  %last_dc_val89 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %state, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val89, i32 0, i64 %idxprom88
  store i32 %106, i32* %arrayidx90, align 4, !tbaa !23
  %108 = load i32, i32* %s, align 4, !tbaa !23
  %conv91 = trunc i32 %108 to i16
  %109 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds [64 x i16], [64 x i16]* %109, i32 0, i64 0
  store i16 %conv91, i16* %arrayidx92, align 2, !tbaa !68
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc, %if.end.83
  %110 = load i32, i32* %k, align 4, !tbaa !23
  %111 = load i32, i32* %coef_limit, align 4, !tbaa !23
  %cmp94 = icmp slt i32 %110, %111
  br i1 %cmp94, label %for.body.96, label %for.end

for.body.96:                                      ; preds = %for.cond.93
  %112 = bitcast i32* %nb97 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %112) #1
  %113 = bitcast i32* %look98 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %113) #1
  %114 = load i32, i32* %bits_left, align 4, !tbaa !23
  %cmp99 = icmp slt i32 %114, 8
  br i1 %cmp99, label %if.then.101, label %if.end.112

if.then.101:                                      ; preds = %for.body.96
  %115 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %116 = load i32, i32* %bits_left, align 4, !tbaa !23
  %call102 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %115, i32 %116, i32 0) #3
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.end.105, label %if.then.104

if.then.104:                                      ; preds = %if.then.101
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.138

if.end.105:                                       ; preds = %if.then.101
  %get_buffer106 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %117 = load i64, i64* %get_buffer106, align 8, !tbaa !66
  store i64 %117, i64* %get_buffer, align 8, !tbaa !63
  %bits_left107 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %118 = load i32, i32* %bits_left107, align 4, !tbaa !67
  store i32 %118, i32* %bits_left, align 4, !tbaa !23
  %119 = load i32, i32* %bits_left, align 4, !tbaa !23
  %cmp108 = icmp slt i32 %119, 8
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.end.105
  store i32 1, i32* %nb97, align 4, !tbaa !23
  br label %label2

if.end.111:                                       ; preds = %if.end.105
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %for.body.96
  %120 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %121 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub113 = sub nsw i32 %121, 8
  %sh_prom114 = zext i32 %sub113 to i64
  %shr115 = ashr i64 %120, %sh_prom114
  %conv116 = trunc i64 %shr115 to i32
  %122 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bmask, i32 0, i64 8), align 4, !tbaa !23
  %and117 = and i32 %conv116, %122
  store i32 %and117, i32* %look98, align 4, !tbaa !23
  %123 = load i32, i32* %look98, align 4, !tbaa !23
  %idxprom118 = sext i32 %123 to i64
  %124 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl, align 8, !tbaa !1
  %look_nbits119 = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %124, i32 0, i32 3
  %arrayidx120 = getelementptr inbounds [256 x i32], [256 x i32]* %look_nbits119, i32 0, i64 %idxprom118
  %125 = load i32, i32* %arrayidx120, align 4, !tbaa !23
  store i32 %125, i32* %nb97, align 4, !tbaa !23
  %cmp121 = icmp ne i32 %125, 0
  br i1 %cmp121, label %if.then.123, label %if.else.129

if.then.123:                                      ; preds = %if.end.112
  %126 = load i32, i32* %nb97, align 4, !tbaa !23
  %127 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub124 = sub nsw i32 %127, %126
  store i32 %sub124, i32* %bits_left, align 4, !tbaa !23
  %128 = load i32, i32* %look98, align 4, !tbaa !23
  %idxprom125 = sext i32 %128 to i64
  %129 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl, align 8, !tbaa !1
  %look_sym126 = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %129, i32 0, i32 4
  %arrayidx127 = getelementptr inbounds [256 x i8], [256 x i8]* %look_sym126, i32 0, i64 %idxprom125
  %130 = load i8, i8* %arrayidx127, align 1, !tbaa !65
  %conv128 = zext i8 %130 to i32
  store i32 %conv128, i32* %s, align 4, !tbaa !23
  br label %if.end.137

if.else.129:                                      ; preds = %if.end.112
  store i32 9, i32* %nb97, align 4, !tbaa !23
  br label %label2

label2:                                           ; preds = %if.else.129, %if.then.110
  %131 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %132 = load i32, i32* %bits_left, align 4, !tbaa !23
  %133 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl, align 8, !tbaa !1
  %134 = load i32, i32* %nb97, align 4, !tbaa !23
  %call130 = call i32 @jpeg_huff_decode(%struct.bitread_working_state* %br_state, i64 %131, i32 %132, %struct.d_derived_tbl* %133, i32 %134) #3
  store i32 %call130, i32* %s, align 4, !tbaa !23
  %cmp131 = icmp slt i32 %call130, 0
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %label2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.138

if.end.134:                                       ; preds = %label2
  %get_buffer135 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %135 = load i64, i64* %get_buffer135, align 8, !tbaa !66
  store i64 %135, i64* %get_buffer, align 8, !tbaa !63
  %bits_left136 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %136 = load i32, i32* %bits_left136, align 4, !tbaa !67
  store i32 %136, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.134, %if.then.123
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.138

cleanup.138:                                      ; preds = %if.end.137, %if.then.133, %if.then.104
  %137 = bitcast i32* %look98 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast i32* %nb97 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %cleanup.dest.140 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.140, label %cleanup.279 [
    i32 0, label %cleanup.cont.141
  ]

cleanup.cont.141:                                 ; preds = %cleanup.138
  %139 = load i32, i32* %s, align 4, !tbaa !23
  %shr142 = ashr i32 %139, 4
  store i32 %shr142, i32* %r, align 4, !tbaa !23
  %140 = load i32, i32* %s, align 4, !tbaa !23
  %and143 = and i32 %140, 15
  store i32 %and143, i32* %s, align 4, !tbaa !23
  %141 = load i32, i32* %s, align 4, !tbaa !23
  %tobool144 = icmp ne i32 %141, 0
  br i1 %tobool144, label %if.then.145, label %if.else.181

if.then.145:                                      ; preds = %cleanup.cont.141
  %142 = load i32, i32* %r, align 4, !tbaa !23
  %143 = load i32, i32* %k, align 4, !tbaa !23
  %add146 = add nsw i32 %143, %142
  store i32 %add146, i32* %k, align 4, !tbaa !23
  %144 = load i32, i32* %bits_left, align 4, !tbaa !23
  %145 = load i32, i32* %s, align 4, !tbaa !23
  %cmp147 = icmp slt i32 %144, %145
  br i1 %cmp147, label %if.then.149, label %if.end.156

if.then.149:                                      ; preds = %if.then.145
  %146 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %147 = load i32, i32* %bits_left, align 4, !tbaa !23
  %148 = load i32, i32* %s, align 4, !tbaa !23
  %call150 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %146, i32 %147, i32 %148) #3
  %tobool151 = icmp ne i32 %call150, 0
  br i1 %tobool151, label %if.end.153, label %if.then.152

if.then.152:                                      ; preds = %if.then.149
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.279

if.end.153:                                       ; preds = %if.then.149
  %get_buffer154 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %149 = load i64, i64* %get_buffer154, align 8, !tbaa !66
  store i64 %149, i64* %get_buffer, align 8, !tbaa !63
  %bits_left155 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %150 = load i32, i32* %bits_left155, align 4, !tbaa !67
  store i32 %150, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.153, %if.then.145
  %151 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %152 = load i32, i32* %s, align 4, !tbaa !23
  %153 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub157 = sub nsw i32 %153, %152
  store i32 %sub157, i32* %bits_left, align 4, !tbaa !23
  %sh_prom158 = zext i32 %sub157 to i64
  %shr159 = ashr i64 %151, %sh_prom158
  %conv160 = trunc i64 %shr159 to i32
  %154 = load i32, i32* %s, align 4, !tbaa !23
  %idxprom161 = sext i32 %154 to i64
  %arrayidx162 = getelementptr inbounds [16 x i32], [16 x i32]* @bmask, i32 0, i64 %idxprom161
  %155 = load i32, i32* %arrayidx162, align 4, !tbaa !23
  %and163 = and i32 %conv160, %155
  store i32 %and163, i32* %r, align 4, !tbaa !23
  %156 = load i32, i32* %r, align 4, !tbaa !23
  %157 = load i32, i32* %s, align 4, !tbaa !23
  %sub164 = sub nsw i32 %157, 1
  %idxprom165 = sext i32 %sub164 to i64
  %arrayidx166 = getelementptr inbounds [16 x i32], [16 x i32]* @bmask, i32 0, i64 %idxprom165
  %158 = load i32, i32* %arrayidx166, align 4, !tbaa !23
  %cmp167 = icmp sle i32 %156, %158
  br i1 %cmp167, label %cond.true.169, label %cond.false.173

cond.true.169:                                    ; preds = %if.end.156
  %159 = load i32, i32* %r, align 4, !tbaa !23
  %160 = load i32, i32* %s, align 4, !tbaa !23
  %idxprom170 = sext i32 %160 to i64
  %arrayidx171 = getelementptr inbounds [16 x i32], [16 x i32]* @bmask, i32 0, i64 %idxprom170
  %161 = load i32, i32* %arrayidx171, align 4, !tbaa !23
  %sub172 = sub nsw i32 %159, %161
  br label %cond.end.174

cond.false.173:                                   ; preds = %if.end.156
  %162 = load i32, i32* %r, align 4, !tbaa !23
  br label %cond.end.174

cond.end.174:                                     ; preds = %cond.false.173, %cond.true.169
  %cond175 = phi i32 [ %sub172, %cond.true.169 ], [ %162, %cond.false.173 ]
  store i32 %cond175, i32* %s, align 4, !tbaa !23
  %163 = load i32, i32* %s, align 4, !tbaa !23
  %conv176 = trunc i32 %163 to i16
  %164 = load i32, i32* %k, align 4, !tbaa !23
  %idxprom177 = sext i32 %164 to i64
  %arrayidx178 = getelementptr inbounds [0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i64 %idxprom177
  %165 = load i32, i32* %arrayidx178, align 4, !tbaa !23
  %idxprom179 = sext i32 %165 to i64
  %166 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !1
  %arrayidx180 = getelementptr inbounds [64 x i16], [64 x i16]* %166, i32 0, i64 %idxprom179
  store i16 %conv176, i16* %arrayidx180, align 2, !tbaa !68
  br label %if.end.187

if.else.181:                                      ; preds = %cleanup.cont.141
  %167 = load i32, i32* %r, align 4, !tbaa !23
  %cmp182 = icmp ne i32 %167, 15
  br i1 %cmp182, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %if.else.181
  br label %EndOfBlock

if.end.185:                                       ; preds = %if.else.181
  %168 = load i32, i32* %k, align 4, !tbaa !23
  %add186 = add nsw i32 %168, 15
  store i32 %add186, i32* %k, align 4, !tbaa !23
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.185, %cond.end.174
  br label %for.inc

for.inc:                                          ; preds = %if.end.187
  %169 = load i32, i32* %k, align 4, !tbaa !23
  %inc = add nsw i32 %169, 1
  store i32 %inc, i32* %k, align 4, !tbaa !23
  br label %for.cond.93

for.end:                                          ; preds = %for.cond.93
  br label %if.end.203

if.else.188:                                      ; preds = %cleanup.cont
  %170 = load i32, i32* %s, align 4, !tbaa !23
  %tobool189 = icmp ne i32 %170, 0
  br i1 %tobool189, label %if.then.190, label %if.end.202

if.then.190:                                      ; preds = %if.else.188
  %171 = load i32, i32* %bits_left, align 4, !tbaa !23
  %172 = load i32, i32* %s, align 4, !tbaa !23
  %cmp191 = icmp slt i32 %171, %172
  br i1 %cmp191, label %if.then.193, label %if.end.200

if.then.193:                                      ; preds = %if.then.190
  %173 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %174 = load i32, i32* %bits_left, align 4, !tbaa !23
  %175 = load i32, i32* %s, align 4, !tbaa !23
  %call194 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %173, i32 %174, i32 %175) #3
  %tobool195 = icmp ne i32 %call194, 0
  br i1 %tobool195, label %if.end.197, label %if.then.196

if.then.196:                                      ; preds = %if.then.193
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.279

if.end.197:                                       ; preds = %if.then.193
  %get_buffer198 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %176 = load i64, i64* %get_buffer198, align 8, !tbaa !66
  store i64 %176, i64* %get_buffer, align 8, !tbaa !63
  %bits_left199 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %177 = load i32, i32* %bits_left199, align 4, !tbaa !67
  store i32 %177, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.197, %if.then.190
  %178 = load i32, i32* %s, align 4, !tbaa !23
  %179 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub201 = sub nsw i32 %179, %178
  store i32 %sub201, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.200, %if.else.188
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %for.end
  br label %for.cond.204

for.cond.204:                                     ; preds = %for.inc.276, %if.end.203
  %180 = load i32, i32* %k, align 4, !tbaa !23
  %cmp205 = icmp slt i32 %180, 64
  br i1 %cmp205, label %for.body.207, label %for.end.278

for.body.207:                                     ; preds = %for.cond.204
  %181 = bitcast i32* %nb208 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %181) #1
  %182 = bitcast i32* %look209 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %182) #1
  %183 = load i32, i32* %bits_left, align 4, !tbaa !23
  %cmp210 = icmp slt i32 %183, 8
  br i1 %cmp210, label %if.then.212, label %if.end.223

if.then.212:                                      ; preds = %for.body.207
  %184 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %185 = load i32, i32* %bits_left, align 4, !tbaa !23
  %call213 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %184, i32 %185, i32 0) #3
  %tobool214 = icmp ne i32 %call213, 0
  br i1 %tobool214, label %if.end.216, label %if.then.215

if.then.215:                                      ; preds = %if.then.212
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.249

if.end.216:                                       ; preds = %if.then.212
  %get_buffer217 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %186 = load i64, i64* %get_buffer217, align 8, !tbaa !66
  store i64 %186, i64* %get_buffer, align 8, !tbaa !63
  %bits_left218 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %187 = load i32, i32* %bits_left218, align 4, !tbaa !67
  store i32 %187, i32* %bits_left, align 4, !tbaa !23
  %188 = load i32, i32* %bits_left, align 4, !tbaa !23
  %cmp219 = icmp slt i32 %188, 8
  br i1 %cmp219, label %if.then.221, label %if.end.222

if.then.221:                                      ; preds = %if.end.216
  store i32 1, i32* %nb208, align 4, !tbaa !23
  br label %label3

if.end.222:                                       ; preds = %if.end.216
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.222, %for.body.207
  %189 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %190 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub224 = sub nsw i32 %190, 8
  %sh_prom225 = zext i32 %sub224 to i64
  %shr226 = ashr i64 %189, %sh_prom225
  %conv227 = trunc i64 %shr226 to i32
  %191 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bmask, i32 0, i64 8), align 4, !tbaa !23
  %and228 = and i32 %conv227, %191
  store i32 %and228, i32* %look209, align 4, !tbaa !23
  %192 = load i32, i32* %look209, align 4, !tbaa !23
  %idxprom229 = sext i32 %192 to i64
  %193 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl, align 8, !tbaa !1
  %look_nbits230 = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %193, i32 0, i32 3
  %arrayidx231 = getelementptr inbounds [256 x i32], [256 x i32]* %look_nbits230, i32 0, i64 %idxprom229
  %194 = load i32, i32* %arrayidx231, align 4, !tbaa !23
  store i32 %194, i32* %nb208, align 4, !tbaa !23
  %cmp232 = icmp ne i32 %194, 0
  br i1 %cmp232, label %if.then.234, label %if.else.240

if.then.234:                                      ; preds = %if.end.223
  %195 = load i32, i32* %nb208, align 4, !tbaa !23
  %196 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub235 = sub nsw i32 %196, %195
  store i32 %sub235, i32* %bits_left, align 4, !tbaa !23
  %197 = load i32, i32* %look209, align 4, !tbaa !23
  %idxprom236 = sext i32 %197 to i64
  %198 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl, align 8, !tbaa !1
  %look_sym237 = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %198, i32 0, i32 4
  %arrayidx238 = getelementptr inbounds [256 x i8], [256 x i8]* %look_sym237, i32 0, i64 %idxprom236
  %199 = load i8, i8* %arrayidx238, align 1, !tbaa !65
  %conv239 = zext i8 %199 to i32
  store i32 %conv239, i32* %s, align 4, !tbaa !23
  br label %if.end.248

if.else.240:                                      ; preds = %if.end.223
  store i32 9, i32* %nb208, align 4, !tbaa !23
  br label %label3

label3:                                           ; preds = %if.else.240, %if.then.221
  %200 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %201 = load i32, i32* %bits_left, align 4, !tbaa !23
  %202 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl, align 8, !tbaa !1
  %203 = load i32, i32* %nb208, align 4, !tbaa !23
  %call241 = call i32 @jpeg_huff_decode(%struct.bitread_working_state* %br_state, i64 %200, i32 %201, %struct.d_derived_tbl* %202, i32 %203) #3
  store i32 %call241, i32* %s, align 4, !tbaa !23
  %cmp242 = icmp slt i32 %call241, 0
  br i1 %cmp242, label %if.then.244, label %if.end.245

if.then.244:                                      ; preds = %label3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.249

if.end.245:                                       ; preds = %label3
  %get_buffer246 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %204 = load i64, i64* %get_buffer246, align 8, !tbaa !66
  store i64 %204, i64* %get_buffer, align 8, !tbaa !63
  %bits_left247 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %205 = load i32, i32* %bits_left247, align 4, !tbaa !67
  store i32 %205, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.248

if.end.248:                                       ; preds = %if.end.245, %if.then.234
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.249

cleanup.249:                                      ; preds = %if.end.248, %if.then.244, %if.then.215
  %206 = bitcast i32* %look209 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast i32* %nb208 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #1
  %cleanup.dest.251 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.251, label %cleanup.279 [
    i32 0, label %cleanup.cont.252
  ]

cleanup.cont.252:                                 ; preds = %cleanup.249
  %208 = load i32, i32* %s, align 4, !tbaa !23
  %shr253 = ashr i32 %208, 4
  store i32 %shr253, i32* %r, align 4, !tbaa !23
  %209 = load i32, i32* %s, align 4, !tbaa !23
  %and254 = and i32 %209, 15
  store i32 %and254, i32* %s, align 4, !tbaa !23
  %210 = load i32, i32* %s, align 4, !tbaa !23
  %tobool255 = icmp ne i32 %210, 0
  br i1 %tobool255, label %if.then.256, label %if.else.269

if.then.256:                                      ; preds = %cleanup.cont.252
  %211 = load i32, i32* %r, align 4, !tbaa !23
  %212 = load i32, i32* %k, align 4, !tbaa !23
  %add257 = add nsw i32 %212, %211
  store i32 %add257, i32* %k, align 4, !tbaa !23
  %213 = load i32, i32* %bits_left, align 4, !tbaa !23
  %214 = load i32, i32* %s, align 4, !tbaa !23
  %cmp258 = icmp slt i32 %213, %214
  br i1 %cmp258, label %if.then.260, label %if.end.267

if.then.260:                                      ; preds = %if.then.256
  %215 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %216 = load i32, i32* %bits_left, align 4, !tbaa !23
  %217 = load i32, i32* %s, align 4, !tbaa !23
  %call261 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %215, i32 %216, i32 %217) #3
  %tobool262 = icmp ne i32 %call261, 0
  br i1 %tobool262, label %if.end.264, label %if.then.263

if.then.263:                                      ; preds = %if.then.260
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.279

if.end.264:                                       ; preds = %if.then.260
  %get_buffer265 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %218 = load i64, i64* %get_buffer265, align 8, !tbaa !66
  store i64 %218, i64* %get_buffer, align 8, !tbaa !63
  %bits_left266 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %219 = load i32, i32* %bits_left266, align 4, !tbaa !67
  store i32 %219, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.267

if.end.267:                                       ; preds = %if.end.264, %if.then.256
  %220 = load i32, i32* %s, align 4, !tbaa !23
  %221 = load i32, i32* %bits_left, align 4, !tbaa !23
  %sub268 = sub nsw i32 %221, %220
  store i32 %sub268, i32* %bits_left, align 4, !tbaa !23
  br label %if.end.275

if.else.269:                                      ; preds = %cleanup.cont.252
  %222 = load i32, i32* %r, align 4, !tbaa !23
  %cmp270 = icmp ne i32 %222, 15
  br i1 %cmp270, label %if.then.272, label %if.end.273

if.then.272:                                      ; preds = %if.else.269
  br label %for.end.278

if.end.273:                                       ; preds = %if.else.269
  %223 = load i32, i32* %k, align 4, !tbaa !23
  %add274 = add nsw i32 %223, 15
  store i32 %add274, i32* %k, align 4, !tbaa !23
  br label %if.end.275

if.end.275:                                       ; preds = %if.end.273, %if.end.267
  br label %for.inc.276

for.inc.276:                                      ; preds = %if.end.275
  %224 = load i32, i32* %k, align 4, !tbaa !23
  %inc277 = add nsw i32 %224, 1
  store i32 %inc277, i32* %k, align 4, !tbaa !23
  br label %for.cond.204

for.end.278:                                      ; preds = %if.then.272, %for.cond.204
  br label %EndOfBlock

EndOfBlock:                                       ; preds = %for.end.278, %if.then.184
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.279

cleanup.279:                                      ; preds = %EndOfBlock, %if.then.263, %cleanup.249, %if.then.196, %if.then.152, %cleanup.138, %if.then.63, %cleanup
  %225 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #1
  %226 = bitcast i32* %coef_limit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #1
  %227 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %227) #1
  %228 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %228) #1
  %229 = bitcast i32* %s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #1
  %230 = bitcast %struct.d_derived_tbl** %htbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #1
  %231 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %231) #1
  %cleanup.dest.286 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.286, label %cleanup.304 [
    i32 0, label %cleanup.cont.287
  ]

cleanup.cont.287:                                 ; preds = %cleanup.279
  br label %for.inc.288

for.inc.288:                                      ; preds = %cleanup.cont.287
  %232 = load i32, i32* %blkn, align 4, !tbaa !23
  %inc289 = add nsw i32 %232, 1
  store i32 %inc289, i32* %blkn, align 4, !tbaa !23
  br label %for.cond

for.end.290:                                      ; preds = %for.cond
  %next_input_byte291 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  %233 = load i8*, i8** %next_input_byte291, align 8, !tbaa !60
  %234 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src292 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %234, i32 0, i32 6
  %235 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src292, align 8, !tbaa !57
  %next_input_byte293 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %235, i32 0, i32 0
  store i8* %233, i8** %next_input_byte293, align 8, !tbaa !58
  %bytes_in_buffer294 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  %236 = load i64, i64* %bytes_in_buffer294, align 8, !tbaa !62
  %237 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %src295 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %237, i32 0, i32 6
  %238 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src295, align 8, !tbaa !57
  %bytes_in_buffer296 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %238, i32 0, i32 1
  store i64 %236, i64* %bytes_in_buffer296, align 8, !tbaa !61
  %239 = load i64, i64* %get_buffer, align 8, !tbaa !63
  %240 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %bitstate297 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %240, i32 0, i32 1
  %get_buffer298 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate297, i32 0, i32 0
  store i64 %239, i64* %get_buffer298, align 8, !tbaa !48
  %241 = load i32, i32* %bits_left, align 4, !tbaa !23
  %242 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %bitstate299 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %242, i32 0, i32 1
  %bits_left300 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate299, i32 0, i32 1
  store i32 %241, i32* %bits_left300, align 4, !tbaa !47
  %243 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %saved301 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %243, i32 0, i32 2
  %244 = bitcast %struct.savable_state* %saved301 to i8*
  %245 = bitcast %struct.savable_state* %state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %244, i8* %245, i64 20, i32 4, i1 false), !tbaa.struct !64
  br label %if.end.302

if.end.302:                                       ; preds = %for.end.290, %if.end.6
  %246 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %restarts_to_go303 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %246, i32 0, i32 4
  %247 = load i32, i32* %restarts_to_go303, align 4, !tbaa !51
  %dec = add i32 %247, -1
  store i32 %dec, i32* %restarts_to_go303, align 4, !tbaa !51
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.304

cleanup.304:                                      ; preds = %if.end.302, %cleanup.279, %if.then.4
  %248 = bitcast %struct.savable_state* %state to i8*
  call void @llvm.lifetime.end(i64 20, i8* %248) #1
  %249 = bitcast %struct.bitread_working_state* %br_state to i8*
  call void @llvm.lifetime.end(i64 40, i8* %249) #1
  %250 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %250) #1
  %251 = bitcast i64* %get_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %251) #1
  %252 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %252) #1
  %253 = bitcast %struct.huff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %253) #1
  %254 = load i32, i32* %retval
  ret i32 %254
}

; Function Attrs: nounwind uwtable
define internal i32 @process_restart(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %entropy = alloca %struct.huff_entropy_decoder*, align 8
  %ci = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.huff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 89
  %2 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !13
  %3 = bitcast %struct.jpeg_entropy_decoder* %2 to %struct.huff_entropy_decoder*
  store %struct.huff_entropy_decoder* %3, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  call void @finish_pass_huff(%struct.jpeg_decompress_struct* %5) #3
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 88
  %7 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8, !tbaa !52
  %read_restart_marker = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %7, i32 0, i32 2
  %8 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %read_restart_marker, align 8, !tbaa !72
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %call = call i32 %8(%struct.jpeg_decompress_struct* %9) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %ci, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %ci, align 4, !tbaa !23
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 69
  %12 = load i32, i32* %comps_in_scan, align 4, !tbaa !27
  %cmp = icmp slt i32 %10, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %ci, align 4, !tbaa !23
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %14, i32 0, i32 2
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4, !tbaa !23
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %ci, align 4, !tbaa !23
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %saved2 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %16, i32 0, i32 2
  %EOBRUN = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved2, i32 0, i32 0
  store i32 0, i32* %EOBRUN, align 4, !tbaa !41
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 51
  %18 = load i32, i32* %restart_interval, align 4, !tbaa !50
  %19 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %19, i32 0, i32 4
  store i32 %18, i32* %restarts_to_go, align 4, !tbaa !51
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 82
  %21 = load i32, i32* %unread_marker, align 4, !tbaa !73
  %cmp3 = icmp eq i32 %21, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.end
  %22 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !1
  %insufficient_data = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %22, i32 0, i32 3
  store i32 0, i32* %insufficient_data, align 4, !tbaa !49
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %for.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then
  %23 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast %struct.huff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %state, i64 %get_buffer, i32 %bits_left, i32 %nbits) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.bitread_working_state*, align 8
  %get_buffer.addr = alloca i64, align 8
  %bits_left.addr = alloca i32, align 4
  %nbits.addr = alloca i32, align 4
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cinfo = alloca %struct.jpeg_decompress_struct*, align 8
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.bitread_working_state* %state, %struct.bitread_working_state** %state.addr, align 8, !tbaa !1
  store i64 %get_buffer, i64* %get_buffer.addr, align 8, !tbaa !63
  store i32 %bits_left, i32* %bits_left.addr, align 4, !tbaa !23
  store i32 %nbits, i32* %nbits.addr, align 4, !tbaa !23
  %0 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !1
  %next_input_byte1 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %1, i32 0, i32 0
  %2 = load i8*, i8** %next_input_byte1, align 8, !tbaa !60
  store i8* %2, i8** %next_input_byte, align 8, !tbaa !1
  %3 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !1
  %bytes_in_buffer2 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %4, i32 0, i32 1
  %5 = load i64, i64* %bytes_in_buffer2, align 8, !tbaa !62
  store i64 %5, i64* %bytes_in_buffer, align 8, !tbaa !63
  %6 = bitcast %struct.jpeg_decompress_struct** %cinfo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !1
  %cinfo3 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %7, i32 0, i32 4
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo3, align 8, !tbaa !55
  store %struct.jpeg_decompress_struct* %8, %struct.jpeg_decompress_struct** %cinfo, align 8, !tbaa !1
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo, align 8, !tbaa !1
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 82
  %10 = load i32, i32* %unread_marker, align 4, !tbaa !73
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %if.else.42

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.then
  %11 = load i32, i32* %bits_left.addr, align 4, !tbaa !23
  %cmp4 = icmp slt i32 %11, 25
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !63
  %cmp5 = icmp eq i64 %13, 0
  br i1 %cmp5, label %if.then.6, label %if.end.12

if.then.6:                                        ; preds = %while.body
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 6
  %15 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !57
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %15, i32 0, i32 3
  %16 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8, !tbaa !74
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo, align 8, !tbaa !1
  %call = call i32 %16(%struct.jpeg_decompress_struct* %17) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then.6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.6
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo, align 8, !tbaa !1
  %src8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 6
  %19 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src8, align 8, !tbaa !57
  %next_input_byte9 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %19, i32 0, i32 0
  %20 = load i8*, i8** %next_input_byte9, align 8, !tbaa !58
  store i8* %20, i8** %next_input_byte, align 8, !tbaa !1
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo, align 8, !tbaa !1
  %src10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 6
  %22 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src10, align 8, !tbaa !57
  %bytes_in_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %22, i32 0, i32 1
  %23 = load i64, i64* %bytes_in_buffer11, align 8, !tbaa !61
  store i64 %23, i64* %bytes_in_buffer, align 8, !tbaa !63
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %while.body
  %24 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !63
  %dec = add i64 %24, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8, !tbaa !63
  %25 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !65
  %conv = zext i8 %26 to i32
  store i32 %conv, i32* %c, align 4, !tbaa !23
  %27 = load i32, i32* %c, align 4, !tbaa !23
  %cmp13 = icmp eq i32 %27, 255
  br i1 %cmp13, label %if.then.15, label %if.end.40

if.then.15:                                       ; preds = %if.end.12
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.15
  %28 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !63
  %cmp16 = icmp eq i64 %28, 0
  br i1 %cmp16, label %if.then.18, label %if.end.29

if.then.18:                                       ; preds = %do.body
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo, align 8, !tbaa !1
  %src19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 6
  %30 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src19, align 8, !tbaa !57
  %fill_input_buffer20 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %30, i32 0, i32 3
  %31 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer20, align 8, !tbaa !74
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo, align 8, !tbaa !1
  %call21 = call i32 %31(%struct.jpeg_decompress_struct* %32) #3
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.then.18
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.then.18
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo, align 8, !tbaa !1
  %src25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 6
  %34 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src25, align 8, !tbaa !57
  %next_input_byte26 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %34, i32 0, i32 0
  %35 = load i8*, i8** %next_input_byte26, align 8, !tbaa !58
  store i8* %35, i8** %next_input_byte, align 8, !tbaa !1
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo, align 8, !tbaa !1
  %src27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 6
  %37 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src27, align 8, !tbaa !57
  %bytes_in_buffer28 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %37, i32 0, i32 1
  %38 = load i64, i64* %bytes_in_buffer28, align 8, !tbaa !61
  store i64 %38, i64* %bytes_in_buffer, align 8, !tbaa !63
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.24, %do.body
  %39 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !63
  %dec30 = add i64 %39, -1
  store i64 %dec30, i64* %bytes_in_buffer, align 8, !tbaa !63
  %40 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %incdec.ptr31 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr31, i8** %next_input_byte, align 8, !tbaa !1
  %41 = load i8, i8* %40, align 1, !tbaa !65
  %conv32 = zext i8 %41 to i32
  store i32 %conv32, i32* %c, align 4, !tbaa !23
  br label %do.cond

do.cond:                                          ; preds = %if.end.29
  %42 = load i32, i32* %c, align 4, !tbaa !23
  %cmp33 = icmp eq i32 %42, 255
  br i1 %cmp33, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %43 = load i32, i32* %c, align 4, !tbaa !23
  %cmp35 = icmp eq i32 %43, 0
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %do.end
  store i32 255, i32* %c, align 4, !tbaa !23
  br label %if.end.39

if.else:                                          ; preds = %do.end
  %44 = load i32, i32* %c, align 4, !tbaa !23
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo, align 8, !tbaa !1
  %unread_marker38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 82
  store i32 %44, i32* %unread_marker38, align 4, !tbaa !73
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.then.37
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.12
  %46 = load i64, i64* %get_buffer.addr, align 8, !tbaa !63
  %shl = shl i64 %46, 8
  %47 = load i32, i32* %c, align 4, !tbaa !23
  %conv41 = sext i32 %47 to i64
  %or = or i64 %shl, %conv41
  store i64 %or, i64* %get_buffer.addr, align 8, !tbaa !63
  %48 = load i32, i32* %bits_left.addr, align 4, !tbaa !23
  %add = add nsw i32 %48, 8
  store i32 %add, i32* %bits_left.addr, align 4, !tbaa !23
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.40, %if.then.23, %if.then.7
  %49 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.59 [
    i32 0, label %cleanup.cont
    i32 6, label %no_more_bytes
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.54

if.else.42:                                       ; preds = %entry
  br label %no_more_bytes

no_more_bytes:                                    ; preds = %if.else.42, %cleanup
  %50 = load i32, i32* %nbits.addr, align 4, !tbaa !23
  %51 = load i32, i32* %bits_left.addr, align 4, !tbaa !23
  %cmp43 = icmp sgt i32 %50, %51
  br i1 %cmp43, label %if.then.45, label %if.end.53

if.then.45:                                       ; preds = %no_more_bytes
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo, align 8, !tbaa !1
  %entropy = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %52, i32 0, i32 89
  %53 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy, align 8, !tbaa !13
  %54 = bitcast %struct.jpeg_entropy_decoder* %53 to %struct.huff_entropy_decoder*
  %insufficient_data = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %54, i32 0, i32 3
  %55 = load i32, i32* %insufficient_data, align 4, !tbaa !49
  %tobool46 = icmp ne i32 %55, 0
  br i1 %tobool46, label %if.end.51, label %if.then.47

if.then.47:                                       ; preds = %if.then.45
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo, align 8, !tbaa !1
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %56, i32 0, i32 0
  %57 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !30
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %57, i32 0, i32 5
  store i32 120, i32* %msg_code, align 4, !tbaa !31
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo, align 8, !tbaa !1
  %err48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %58, i32 0, i32 0
  %59 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err48, align 8, !tbaa !30
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %59, i32 0, i32 1
  %60 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !36
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo, align 8, !tbaa !1
  %62 = bitcast %struct.jpeg_decompress_struct* %61 to %struct.jpeg_common_struct*
  call void %60(%struct.jpeg_common_struct* %62, i32 -1) #3
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo, align 8, !tbaa !1
  %entropy49 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %63, i32 0, i32 89
  %64 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy49, align 8, !tbaa !13
  %65 = bitcast %struct.jpeg_entropy_decoder* %64 to %struct.huff_entropy_decoder*
  %insufficient_data50 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %65, i32 0, i32 3
  store i32 1, i32* %insufficient_data50, align 4, !tbaa !49
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.47, %if.then.45
  %66 = load i32, i32* %bits_left.addr, align 4, !tbaa !23
  %sub = sub nsw i32 25, %66
  %67 = load i64, i64* %get_buffer.addr, align 8, !tbaa !63
  %sh_prom = zext i32 %sub to i64
  %shl52 = shl i64 %67, %sh_prom
  store i64 %shl52, i64* %get_buffer.addr, align 8, !tbaa !63
  store i32 25, i32* %bits_left.addr, align 4, !tbaa !23
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.51, %no_more_bytes
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %while.end
  %68 = load i8*, i8** %next_input_byte, align 8, !tbaa !1
  %69 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !1
  %next_input_byte55 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %69, i32 0, i32 0
  store i8* %68, i8** %next_input_byte55, align 8, !tbaa !60
  %70 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !63
  %71 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !1
  %bytes_in_buffer56 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %71, i32 0, i32 1
  store i64 %70, i64* %bytes_in_buffer56, align 8, !tbaa !62
  %72 = load i64, i64* %get_buffer.addr, align 8, !tbaa !63
  %73 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !1
  %get_buffer57 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %73, i32 0, i32 2
  store i64 %72, i64* %get_buffer57, align 8, !tbaa !66
  %74 = load i32, i32* %bits_left.addr, align 4, !tbaa !23
  %75 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !1
  %bits_left58 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %75, i32 0, i32 3
  store i32 %74, i32* %bits_left58, align 4, !tbaa !67
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

cleanup.59:                                       ; preds = %if.end.54, %cleanup
  %76 = bitcast %struct.jpeg_decompress_struct** %cinfo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = load i32, i32* %retval
  ret i32 %79
}

; Function Attrs: nounwind uwtable
define internal i32 @jpeg_huff_decode(%struct.bitread_working_state* %state, i64 %get_buffer, i32 %bits_left, %struct.d_derived_tbl* %htbl, i32 %min_bits) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.bitread_working_state*, align 8
  %get_buffer.addr = alloca i64, align 8
  %bits_left.addr = alloca i32, align 4
  %htbl.addr = alloca %struct.d_derived_tbl*, align 8
  %min_bits.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %code = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.bitread_working_state* %state, %struct.bitread_working_state** %state.addr, align 8, !tbaa !1
  store i64 %get_buffer, i64* %get_buffer.addr, align 8, !tbaa !63
  store i32 %bits_left, i32* %bits_left.addr, align 4, !tbaa !23
  store %struct.d_derived_tbl* %htbl, %struct.d_derived_tbl** %htbl.addr, align 8, !tbaa !1
  store i32 %min_bits, i32* %min_bits.addr, align 4, !tbaa !23
  %0 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %min_bits.addr, align 4, !tbaa !23
  store i32 %1, i32* %l, align 4, !tbaa !23
  %2 = bitcast i64* %code to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i32, i32* %bits_left.addr, align 4, !tbaa !23
  %4 = load i32, i32* %l, align 4, !tbaa !23
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %5 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !1
  %6 = load i64, i64* %get_buffer.addr, align 8, !tbaa !63
  %7 = load i32, i32* %bits_left.addr, align 4, !tbaa !23
  %8 = load i32, i32* %l, align 4, !tbaa !23
  %call = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %5, i64 %6, i32 %7, i32 %8) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %9 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !1
  %get_buffer2 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %9, i32 0, i32 2
  %10 = load i64, i64* %get_buffer2, align 8, !tbaa !66
  store i64 %10, i64* %get_buffer.addr, align 8, !tbaa !63
  %11 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !1
  %bits_left3 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %11, i32 0, i32 3
  %12 = load i32, i32* %bits_left3, align 4, !tbaa !67
  store i32 %12, i32* %bits_left.addr, align 4, !tbaa !23
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %13 = load i64, i64* %get_buffer.addr, align 8, !tbaa !63
  %14 = load i32, i32* %l, align 4, !tbaa !23
  %15 = load i32, i32* %bits_left.addr, align 4, !tbaa !23
  %sub = sub nsw i32 %15, %14
  store i32 %sub, i32* %bits_left.addr, align 4, !tbaa !23
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %13, %sh_prom
  %conv = trunc i64 %shr to i32
  %16 = load i32, i32* %l, align 4, !tbaa !23
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @bmask, i32 0, i64 %idxprom
  %17 = load i32, i32* %arrayidx, align 4, !tbaa !23
  %and = and i32 %conv, %17
  %conv5 = sext i32 %and to i64
  store i64 %conv5, i64* %code, align 8, !tbaa !63
  br label %while.cond

while.cond:                                       ; preds = %if.end.19, %if.end.4
  %18 = load i64, i64* %code, align 8, !tbaa !63
  %19 = load i32, i32* %l, align 4, !tbaa !23
  %idxprom6 = sext i32 %19 to i64
  %20 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl.addr, align 8, !tbaa !1
  %maxcode = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %20, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [18 x i64], [18 x i64]* %maxcode, i32 0, i64 %idxprom6
  %21 = load i64, i64* %arrayidx7, align 8, !tbaa !63
  %cmp8 = icmp sgt i64 %18, %21
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load i64, i64* %code, align 8, !tbaa !63
  %shl = shl i64 %22, 1
  store i64 %shl, i64* %code, align 8, !tbaa !63
  %23 = load i32, i32* %bits_left.addr, align 4, !tbaa !23
  %cmp10 = icmp slt i32 %23, 1
  br i1 %cmp10, label %if.then.12, label %if.end.19

if.then.12:                                       ; preds = %while.body
  %24 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !1
  %25 = load i64, i64* %get_buffer.addr, align 8, !tbaa !63
  %26 = load i32, i32* %bits_left.addr, align 4, !tbaa !23
  %call13 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %24, i64 %25, i32 %26, i32 1) #3
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.then.12
  %27 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !1
  %get_buffer17 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %27, i32 0, i32 2
  %28 = load i64, i64* %get_buffer17, align 8, !tbaa !66
  store i64 %28, i64* %get_buffer.addr, align 8, !tbaa !63
  %29 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !1
  %bits_left18 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %29, i32 0, i32 3
  %30 = load i32, i32* %bits_left18, align 4, !tbaa !67
  store i32 %30, i32* %bits_left.addr, align 4, !tbaa !23
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.16, %while.body
  %31 = load i64, i64* %get_buffer.addr, align 8, !tbaa !63
  %32 = load i32, i32* %bits_left.addr, align 4, !tbaa !23
  %sub20 = sub nsw i32 %32, 1
  store i32 %sub20, i32* %bits_left.addr, align 4, !tbaa !23
  %sh_prom21 = zext i32 %sub20 to i64
  %shr22 = ashr i64 %31, %sh_prom21
  %conv23 = trunc i64 %shr22 to i32
  %33 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bmask, i32 0, i64 1), align 4, !tbaa !23
  %and24 = and i32 %conv23, %33
  %conv25 = sext i32 %and24 to i64
  %34 = load i64, i64* %code, align 8, !tbaa !63
  %or = or i64 %34, %conv25
  store i64 %or, i64* %code, align 8, !tbaa !63
  %35 = load i32, i32* %l, align 4, !tbaa !23
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %l, align 4, !tbaa !23
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %36 = load i64, i64* %get_buffer.addr, align 8, !tbaa !63
  %37 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !1
  %get_buffer26 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %37, i32 0, i32 2
  store i64 %36, i64* %get_buffer26, align 8, !tbaa !66
  %38 = load i32, i32* %bits_left.addr, align 4, !tbaa !23
  %39 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !1
  %bits_left27 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %39, i32 0, i32 3
  store i32 %38, i32* %bits_left27, align 4, !tbaa !67
  %40 = load i32, i32* %l, align 4, !tbaa !23
  %cmp28 = icmp sgt i32 %40, 16
  br i1 %cmp28, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %while.end
  %41 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %41, i32 0, i32 4
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo, align 8, !tbaa !55
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 0
  %43 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !30
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %43, i32 0, i32 5
  store i32 121, i32* %msg_code, align 4, !tbaa !31
  %44 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !1
  %cinfo31 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %44, i32 0, i32 4
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo31, align 8, !tbaa !55
  %err32 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 0
  %46 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err32, align 8, !tbaa !30
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %46, i32 0, i32 1
  %47 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !36
  %48 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !1
  %cinfo33 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %48, i32 0, i32 4
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo33, align 8, !tbaa !55
  %50 = bitcast %struct.jpeg_decompress_struct* %49 to %struct.jpeg_common_struct*
  call void %47(%struct.jpeg_common_struct* %50, i32 -1) #3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %while.end
  %51 = load i64, i64* %code, align 8, !tbaa !63
  %52 = load i32, i32* %l, align 4, !tbaa !23
  %idxprom35 = sext i32 %52 to i64
  %53 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl.addr, align 8, !tbaa !1
  %valoffset = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %53, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [17 x i64], [17 x i64]* %valoffset, i32 0, i64 %idxprom35
  %54 = load i64, i64* %arrayidx36, align 8, !tbaa !63
  %add = add nsw i64 %51, %54
  %conv37 = trunc i64 %add to i32
  %idxprom38 = sext i32 %conv37 to i64
  %55 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl.addr, align 8, !tbaa !1
  %pub = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %55, i32 0, i32 2
  %56 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %pub, align 8, !tbaa !70
  %huffval = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %56, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval, i32 0, i64 %idxprom38
  %57 = load i8, i8* %arrayidx39, align 1, !tbaa !65
  %conv40 = zext i8 %57 to i32
  store i32 %conv40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.then.30, %if.then.15, %if.then.1
  %58 = bitcast i64* %code to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }
attributes #4 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 8}
!6 = !{!"jpeg_decompress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !7, i64 36, !2, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !3, i64 60, !3, i64 64, !7, i64 68, !7, i64 72, !8, i64 80, !3, i64 88, !3, i64 92, !3, i64 96, !3, i64 100, !3, i64 104, !3, i64 108, !3, i64 112, !3, i64 116, !7, i64 120, !3, i64 124, !3, i64 128, !3, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !2, i64 160, !7, i64 168, !7, i64 172, !7, i64 176, !7, i64 180, !7, i64 184, !2, i64 192, !3, i64 200, !3, i64 232, !3, i64 264, !7, i64 296, !2, i64 304, !3, i64 312, !3, i64 316, !3, i64 320, !3, i64 324, !3, i64 340, !3, i64 356, !7, i64 372, !3, i64 376, !3, i64 380, !3, i64 381, !3, i64 382, !9, i64 384, !9, i64 386, !3, i64 388, !3, i64 392, !3, i64 396, !3, i64 400, !2, i64 408, !7, i64 416, !7, i64 420, !7, i64 424, !7, i64 428, !7, i64 432, !2, i64 440, !7, i64 448, !3, i64 456, !7, i64 488, !7, i64 492, !7, i64 496, !3, i64 500, !7, i64 756, !7, i64 760, !7, i64 764, !7, i64 768, !7, i64 772, !2, i64 776, !7, i64 784, !7, i64 788, !2, i64 792, !2, i64 800, !2, i64 808, !2, i64 816, !2, i64 824, !2, i64 832, !2, i64 840, !2, i64 848, !2, i64 856, !2, i64 864, !2, i64 872}
!7 = !{!"int", !3, i64 0}
!8 = !{!"double", !3, i64 0}
!9 = !{!"short", !3, i64 0}
!10 = !{!11, !2, i64 0}
!11 = !{!"jpeg_memory_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !12, i64 88, !12, i64 96}
!12 = !{!"long", !3, i64 0}
!13 = !{!6, !2, i64 840}
!14 = !{!15, !2, i64 0}
!15 = !{!"", !16, i64 0, !17, i64 24, !18, i64 40, !3, i64 60, !7, i64 64, !3, i64 72, !2, i64 104, !3, i64 112, !3, i64 144, !3, i64 176, !3, i64 688, !3, i64 1200}
!16 = !{!"jpeg_entropy_decoder", !2, i64 0, !2, i64 8, !2, i64 16}
!17 = !{!"", !12, i64 0, !7, i64 8}
!18 = !{!"", !7, i64 0, !3, i64 4}
!19 = !{!15, !2, i64 16}
!20 = !{!6, !3, i64 316}
!21 = !{!6, !7, i64 56}
!22 = !{!6, !2, i64 192}
!23 = !{!7, !7, i64 0}
!24 = !{!6, !7, i64 756}
!25 = !{!6, !7, i64 760}
!26 = !{!6, !7, i64 784}
!27 = !{!6, !7, i64 448}
!28 = !{!6, !7, i64 764}
!29 = !{!6, !7, i64 768}
!30 = !{!6, !2, i64 0}
!31 = !{!32, !7, i64 40}
!32 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !3, i64 44, !7, i64 124, !12, i64 128, !2, i64 136, !7, i64 144, !2, i64 152, !7, i64 160, !7, i64 164}
!33 = !{!32, !2, i64 0}
!34 = !{!35, !7, i64 4}
!35 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !3, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !2, i64 80, !2, i64 88}
!36 = !{!32, !2, i64 8}
!37 = !{!15, !2, i64 8}
!38 = !{!35, !7, i64 20}
!39 = !{!35, !7, i64 24}
!40 = !{!15, !2, i64 104}
!41 = !{!15, !7, i64 40}
!42 = !{!6, !3, i64 312}
!43 = !{!6, !7, i64 496}
!44 = !{!35, !3, i64 52}
!45 = !{!35, !7, i64 40}
!46 = !{!35, !7, i64 36}
!47 = !{!15, !7, i64 32}
!48 = !{!15, !12, i64 24}
!49 = !{!15, !3, i64 60}
!50 = !{!6, !7, i64 372}
!51 = !{!15, !7, i64 64}
!52 = !{!6, !2, i64 832}
!53 = !{!54, !7, i64 36}
!54 = !{!"jpeg_marker_reader", !2, i64 0, !2, i64 8, !2, i64 16, !3, i64 24, !3, i64 28, !7, i64 32, !7, i64 36}
!55 = !{!56, !2, i64 32}
!56 = !{!"", !2, i64 0, !12, i64 8, !12, i64 16, !7, i64 24, !2, i64 32}
!57 = !{!6, !2, i64 40}
!58 = !{!59, !2, i64 0}
!59 = !{!"jpeg_source_mgr", !2, i64 0, !12, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!60 = !{!56, !2, i64 0}
!61 = !{!59, !12, i64 8}
!62 = !{!56, !12, i64 8}
!63 = !{!12, !12, i64 0}
!64 = !{i64 0, i64 4, !23, i64 4, i64 16, !65}
!65 = !{!3, !3, i64 0}
!66 = !{!56, !12, i64 16}
!67 = !{!56, !7, i64 24}
!68 = !{!9, !9, i64 0}
!69 = !{!6, !2, i64 776}
!70 = !{!71, !2, i64 280}
!71 = !{!"", !3, i64 0, !3, i64 144, !2, i64 280, !3, i64 288, !3, i64 1312}
!72 = !{!54, !2, i64 16}
!73 = !{!6, !7, i64 788}
!74 = !{!59, !2, i64 24}
