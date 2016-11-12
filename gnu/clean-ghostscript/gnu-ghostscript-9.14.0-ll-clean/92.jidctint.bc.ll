; ModuleID = './jidctint.bc'
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
%struct.jpeg_source_mgr = type { i8*, i64, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*)* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_marker_struct = type { %struct.jpeg_marker_struct*, i8, i32, i32, i8* }
%struct.jpeg_decomp_master = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 }
%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
%struct.jpeg_d_coef_controller = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
%struct.jpeg_input_controller = type { i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32, i32 }
%struct.jpeg_marker_reader = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32, i32, i32, i32 }
%struct.jpeg_entropy_decoder = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)*, void (%struct.jpeg_decompress_struct*)* }
%struct.jpeg_inverse_dct = type { void (%struct.jpeg_decompress_struct*)*, [10 x {}*] }
%struct.jpeg_upsampler = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, i32 }
%struct.jpeg_color_deconverter = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* }
%struct.jpeg_color_quantizer = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }

; Function Attrs: nounwind uwtable
define void @jpeg_idct_islow(%struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i16* %coef_block, i8** %output_buf, i32 %output_col) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %coef_block.addr = alloca i16*, align 8
  %output_buf.addr = alloca i8**, align 8
  %output_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  %z1 = alloca i64, align 8
  %z2 = alloca i64, align 8
  %z3 = alloca i64, align 8
  %inptr = alloca i16*, align 8
  %quantptr = alloca i32*, align 8
  %wsptr = alloca i32*, align 8
  %outptr = alloca i8*, align 8
  %range_limit = alloca i8*, align 8
  %ctr = alloca i32, align 4
  %workspace = alloca [64 x i32], align 16
  %dcval = alloca i32, align 4
  %dcval194 = alloca i8, align 1
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !1
  store i16* %coef_block, i16** %coef_block.addr, align 8, !tbaa !1
  store i8** %output_buf, i8*** %output_buf.addr, align 8, !tbaa !1
  store i32 %output_col, i32* %output_col.addr, align 4, !tbaa !5
  %0 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i64* %z2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i64* %z3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i16** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i32** %quantptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !1
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 68
  %17 = load i8*, i8** %sample_range_limit, align 8, !tbaa !7
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 -384
  store i8* %add.ptr, i8** %range_limit, align 8, !tbaa !1
  %18 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast [64 x i32]* %workspace to i8*
  call void @llvm.lifetime.start(i64 256, i8* %19) #1
  %20 = load i16*, i16** %coef_block.addr, align 8, !tbaa !1
  store i16* %20, i16** %inptr, align 8, !tbaa !1
  %21 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !1
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %21, i32 0, i32 21
  %22 = load i8*, i8** %dct_table, align 8, !tbaa !11
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %quantptr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [64 x i32], [64 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay, i32** %wsptr, align 8, !tbaa !1
  store i32 8, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %24 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %24, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i16*, i16** %inptr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %25, i64 8
  %26 = load i16, i16* %arrayidx, align 2, !tbaa !13
  %conv = sext i16 %26 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %27 = load i16*, i16** %inptr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %27, i64 16
  %28 = load i16, i16* %arrayidx3, align 2, !tbaa !13
  %conv4 = sext i16 %28 to i32
  %cmp5 = icmp eq i32 %conv4, 0
  br i1 %cmp5, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %29 = load i16*, i16** %inptr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i16, i16* %29, i64 24
  %30 = load i16, i16* %arrayidx8, align 2, !tbaa !13
  %conv9 = sext i16 %30 to i32
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %land.lhs.true.7
  %31 = load i16*, i16** %inptr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i16, i16* %31, i64 32
  %32 = load i16, i16* %arrayidx13, align 2, !tbaa !13
  %conv14 = sext i16 %32 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %land.lhs.true.17, label %if.end

land.lhs.true.17:                                 ; preds = %land.lhs.true.12
  %33 = load i16*, i16** %inptr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i16, i16* %33, i64 40
  %34 = load i16, i16* %arrayidx18, align 2, !tbaa !13
  %conv19 = sext i16 %34 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %land.lhs.true.22, label %if.end

land.lhs.true.22:                                 ; preds = %land.lhs.true.17
  %35 = load i16*, i16** %inptr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i16, i16* %35, i64 48
  %36 = load i16, i16* %arrayidx23, align 2, !tbaa !13
  %conv24 = sext i16 %36 to i32
  %cmp25 = icmp eq i32 %conv24, 0
  br i1 %cmp25, label %land.lhs.true.27, label %if.end

land.lhs.true.27:                                 ; preds = %land.lhs.true.22
  %37 = load i16*, i16** %inptr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i16, i16* %37, i64 56
  %38 = load i16, i16* %arrayidx28, align 2, !tbaa !13
  %conv29 = sext i16 %38 to i32
  %cmp30 = icmp eq i32 %conv29, 0
  br i1 %cmp30, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.27
  %39 = bitcast i32* %dcval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = load i16*, i16** %inptr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i16, i16* %40, i64 0
  %41 = load i16, i16* %arrayidx32, align 2, !tbaa !13
  %conv33 = sext i16 %41 to i32
  %42 = load i32*, i32** %quantptr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i32, i32* %42, i64 0
  %43 = load i32, i32* %arrayidx34, align 4, !tbaa !5
  %mul = mul nsw i32 %conv33, %43
  %shl = shl i32 %mul, 2
  store i32 %shl, i32* %dcval, align 4, !tbaa !5
  %44 = load i32, i32* %dcval, align 4, !tbaa !5
  %45 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %44, i32* %arrayidx35, align 4, !tbaa !5
  %46 = load i32, i32* %dcval, align 4, !tbaa !5
  %47 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i32, i32* %47, i64 8
  store i32 %46, i32* %arrayidx36, align 4, !tbaa !5
  %48 = load i32, i32* %dcval, align 4, !tbaa !5
  %49 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i32, i32* %49, i64 16
  store i32 %48, i32* %arrayidx37, align 4, !tbaa !5
  %50 = load i32, i32* %dcval, align 4, !tbaa !5
  %51 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i32, i32* %51, i64 24
  store i32 %50, i32* %arrayidx38, align 4, !tbaa !5
  %52 = load i32, i32* %dcval, align 4, !tbaa !5
  %53 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i32, i32* %53, i64 32
  store i32 %52, i32* %arrayidx39, align 4, !tbaa !5
  %54 = load i32, i32* %dcval, align 4, !tbaa !5
  %55 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i32, i32* %55, i64 40
  store i32 %54, i32* %arrayidx40, align 4, !tbaa !5
  %56 = load i32, i32* %dcval, align 4, !tbaa !5
  %57 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i32, i32* %57, i64 48
  store i32 %56, i32* %arrayidx41, align 4, !tbaa !5
  %58 = load i32, i32* %dcval, align 4, !tbaa !5
  %59 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i32, i32* %59, i64 56
  store i32 %58, i32* %arrayidx42, align 4, !tbaa !5
  %60 = load i16*, i16** %inptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %60, i32 1
  store i16* %incdec.ptr, i16** %inptr, align 8, !tbaa !1
  %61 = load i32*, i32** %quantptr, align 8, !tbaa !1
  %incdec.ptr43 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %incdec.ptr43, i32** %quantptr, align 8, !tbaa !1
  %62 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %incdec.ptr44 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %incdec.ptr44, i32** %wsptr, align 8, !tbaa !1
  %63 = bitcast i32* %dcval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true.27, %land.lhs.true.22, %land.lhs.true.17, %land.lhs.true.12, %land.lhs.true.7, %land.lhs.true, %for.body
  %64 = load i16*, i16** %inptr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i16, i16* %64, i64 0
  %65 = load i16, i16* %arrayidx45, align 2, !tbaa !13
  %conv46 = sext i16 %65 to i32
  %66 = load i32*, i32** %quantptr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i32, i32* %66, i64 0
  %67 = load i32, i32* %arrayidx47, align 4, !tbaa !5
  %mul48 = mul nsw i32 %conv46, %67
  %conv49 = sext i32 %mul48 to i64
  store i64 %conv49, i64* %z2, align 8, !tbaa !14
  %68 = load i16*, i16** %inptr, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i16, i16* %68, i64 32
  %69 = load i16, i16* %arrayidx50, align 2, !tbaa !13
  %conv51 = sext i16 %69 to i32
  %70 = load i32*, i32** %quantptr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i32, i32* %70, i64 32
  %71 = load i32, i32* %arrayidx52, align 4, !tbaa !5
  %mul53 = mul nsw i32 %conv51, %71
  %conv54 = sext i32 %mul53 to i64
  store i64 %conv54, i64* %z3, align 8, !tbaa !14
  %72 = load i64, i64* %z2, align 8, !tbaa !14
  %shl55 = shl i64 %72, 13
  store i64 %shl55, i64* %z2, align 8, !tbaa !14
  %73 = load i64, i64* %z3, align 8, !tbaa !14
  %shl56 = shl i64 %73, 13
  store i64 %shl56, i64* %z3, align 8, !tbaa !14
  %74 = load i64, i64* %z2, align 8, !tbaa !14
  %add = add nsw i64 %74, 1024
  store i64 %add, i64* %z2, align 8, !tbaa !14
  %75 = load i64, i64* %z2, align 8, !tbaa !14
  %76 = load i64, i64* %z3, align 8, !tbaa !14
  %add57 = add nsw i64 %75, %76
  store i64 %add57, i64* %tmp0, align 8, !tbaa !14
  %77 = load i64, i64* %z2, align 8, !tbaa !14
  %78 = load i64, i64* %z3, align 8, !tbaa !14
  %sub = sub nsw i64 %77, %78
  store i64 %sub, i64* %tmp1, align 8, !tbaa !14
  %79 = load i16*, i16** %inptr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i16, i16* %79, i64 16
  %80 = load i16, i16* %arrayidx58, align 2, !tbaa !13
  %conv59 = sext i16 %80 to i32
  %81 = load i32*, i32** %quantptr, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i32, i32* %81, i64 16
  %82 = load i32, i32* %arrayidx60, align 4, !tbaa !5
  %mul61 = mul nsw i32 %conv59, %82
  %conv62 = sext i32 %mul61 to i64
  store i64 %conv62, i64* %z2, align 8, !tbaa !14
  %83 = load i16*, i16** %inptr, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i16, i16* %83, i64 48
  %84 = load i16, i16* %arrayidx63, align 2, !tbaa !13
  %conv64 = sext i16 %84 to i32
  %85 = load i32*, i32** %quantptr, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds i32, i32* %85, i64 48
  %86 = load i32, i32* %arrayidx65, align 4, !tbaa !5
  %mul66 = mul nsw i32 %conv64, %86
  %conv67 = sext i32 %mul66 to i64
  store i64 %conv67, i64* %z3, align 8, !tbaa !14
  %87 = load i64, i64* %z2, align 8, !tbaa !14
  %88 = load i64, i64* %z3, align 8, !tbaa !14
  %add68 = add nsw i64 %87, %88
  %mul69 = mul nsw i64 %add68, 4433
  store i64 %mul69, i64* %z1, align 8, !tbaa !14
  %89 = load i64, i64* %z1, align 8, !tbaa !14
  %90 = load i64, i64* %z2, align 8, !tbaa !14
  %mul70 = mul nsw i64 %90, 6270
  %add71 = add nsw i64 %89, %mul70
  store i64 %add71, i64* %tmp2, align 8, !tbaa !14
  %91 = load i64, i64* %z1, align 8, !tbaa !14
  %92 = load i64, i64* %z3, align 8, !tbaa !14
  %mul72 = mul nsw i64 %92, 15137
  %sub73 = sub nsw i64 %91, %mul72
  store i64 %sub73, i64* %tmp3, align 8, !tbaa !14
  %93 = load i64, i64* %tmp0, align 8, !tbaa !14
  %94 = load i64, i64* %tmp2, align 8, !tbaa !14
  %add74 = add nsw i64 %93, %94
  store i64 %add74, i64* %tmp10, align 8, !tbaa !14
  %95 = load i64, i64* %tmp0, align 8, !tbaa !14
  %96 = load i64, i64* %tmp2, align 8, !tbaa !14
  %sub75 = sub nsw i64 %95, %96
  store i64 %sub75, i64* %tmp13, align 8, !tbaa !14
  %97 = load i64, i64* %tmp1, align 8, !tbaa !14
  %98 = load i64, i64* %tmp3, align 8, !tbaa !14
  %add76 = add nsw i64 %97, %98
  store i64 %add76, i64* %tmp11, align 8, !tbaa !14
  %99 = load i64, i64* %tmp1, align 8, !tbaa !14
  %100 = load i64, i64* %tmp3, align 8, !tbaa !14
  %sub77 = sub nsw i64 %99, %100
  store i64 %sub77, i64* %tmp12, align 8, !tbaa !14
  %101 = load i16*, i16** %inptr, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i16, i16* %101, i64 56
  %102 = load i16, i16* %arrayidx78, align 2, !tbaa !13
  %conv79 = sext i16 %102 to i32
  %103 = load i32*, i32** %quantptr, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds i32, i32* %103, i64 56
  %104 = load i32, i32* %arrayidx80, align 4, !tbaa !5
  %mul81 = mul nsw i32 %conv79, %104
  %conv82 = sext i32 %mul81 to i64
  store i64 %conv82, i64* %tmp0, align 8, !tbaa !14
  %105 = load i16*, i16** %inptr, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i16, i16* %105, i64 40
  %106 = load i16, i16* %arrayidx83, align 2, !tbaa !13
  %conv84 = sext i16 %106 to i32
  %107 = load i32*, i32** %quantptr, align 8, !tbaa !1
  %arrayidx85 = getelementptr inbounds i32, i32* %107, i64 40
  %108 = load i32, i32* %arrayidx85, align 4, !tbaa !5
  %mul86 = mul nsw i32 %conv84, %108
  %conv87 = sext i32 %mul86 to i64
  store i64 %conv87, i64* %tmp1, align 8, !tbaa !14
  %109 = load i16*, i16** %inptr, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds i16, i16* %109, i64 24
  %110 = load i16, i16* %arrayidx88, align 2, !tbaa !13
  %conv89 = sext i16 %110 to i32
  %111 = load i32*, i32** %quantptr, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds i32, i32* %111, i64 24
  %112 = load i32, i32* %arrayidx90, align 4, !tbaa !5
  %mul91 = mul nsw i32 %conv89, %112
  %conv92 = sext i32 %mul91 to i64
  store i64 %conv92, i64* %tmp2, align 8, !tbaa !14
  %113 = load i16*, i16** %inptr, align 8, !tbaa !1
  %arrayidx93 = getelementptr inbounds i16, i16* %113, i64 8
  %114 = load i16, i16* %arrayidx93, align 2, !tbaa !13
  %conv94 = sext i16 %114 to i32
  %115 = load i32*, i32** %quantptr, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i32, i32* %115, i64 8
  %116 = load i32, i32* %arrayidx95, align 4, !tbaa !5
  %mul96 = mul nsw i32 %conv94, %116
  %conv97 = sext i32 %mul96 to i64
  store i64 %conv97, i64* %tmp3, align 8, !tbaa !14
  %117 = load i64, i64* %tmp0, align 8, !tbaa !14
  %118 = load i64, i64* %tmp2, align 8, !tbaa !14
  %add98 = add nsw i64 %117, %118
  store i64 %add98, i64* %z2, align 8, !tbaa !14
  %119 = load i64, i64* %tmp1, align 8, !tbaa !14
  %120 = load i64, i64* %tmp3, align 8, !tbaa !14
  %add99 = add nsw i64 %119, %120
  store i64 %add99, i64* %z3, align 8, !tbaa !14
  %121 = load i64, i64* %z2, align 8, !tbaa !14
  %122 = load i64, i64* %z3, align 8, !tbaa !14
  %add100 = add nsw i64 %121, %122
  %mul101 = mul nsw i64 %add100, 9633
  store i64 %mul101, i64* %z1, align 8, !tbaa !14
  %123 = load i64, i64* %z2, align 8, !tbaa !14
  %mul102 = mul nsw i64 %123, -16069
  store i64 %mul102, i64* %z2, align 8, !tbaa !14
  %124 = load i64, i64* %z3, align 8, !tbaa !14
  %mul103 = mul nsw i64 %124, -3196
  store i64 %mul103, i64* %z3, align 8, !tbaa !14
  %125 = load i64, i64* %z1, align 8, !tbaa !14
  %126 = load i64, i64* %z2, align 8, !tbaa !14
  %add104 = add nsw i64 %126, %125
  store i64 %add104, i64* %z2, align 8, !tbaa !14
  %127 = load i64, i64* %z1, align 8, !tbaa !14
  %128 = load i64, i64* %z3, align 8, !tbaa !14
  %add105 = add nsw i64 %128, %127
  store i64 %add105, i64* %z3, align 8, !tbaa !14
  %129 = load i64, i64* %tmp0, align 8, !tbaa !14
  %130 = load i64, i64* %tmp3, align 8, !tbaa !14
  %add106 = add nsw i64 %129, %130
  %mul107 = mul nsw i64 %add106, -7373
  store i64 %mul107, i64* %z1, align 8, !tbaa !14
  %131 = load i64, i64* %tmp0, align 8, !tbaa !14
  %mul108 = mul nsw i64 %131, 2446
  store i64 %mul108, i64* %tmp0, align 8, !tbaa !14
  %132 = load i64, i64* %tmp3, align 8, !tbaa !14
  %mul109 = mul nsw i64 %132, 12299
  store i64 %mul109, i64* %tmp3, align 8, !tbaa !14
  %133 = load i64, i64* %z1, align 8, !tbaa !14
  %134 = load i64, i64* %z2, align 8, !tbaa !14
  %add110 = add nsw i64 %133, %134
  %135 = load i64, i64* %tmp0, align 8, !tbaa !14
  %add111 = add nsw i64 %135, %add110
  store i64 %add111, i64* %tmp0, align 8, !tbaa !14
  %136 = load i64, i64* %z1, align 8, !tbaa !14
  %137 = load i64, i64* %z3, align 8, !tbaa !14
  %add112 = add nsw i64 %136, %137
  %138 = load i64, i64* %tmp3, align 8, !tbaa !14
  %add113 = add nsw i64 %138, %add112
  store i64 %add113, i64* %tmp3, align 8, !tbaa !14
  %139 = load i64, i64* %tmp1, align 8, !tbaa !14
  %140 = load i64, i64* %tmp2, align 8, !tbaa !14
  %add114 = add nsw i64 %139, %140
  %mul115 = mul nsw i64 %add114, -20995
  store i64 %mul115, i64* %z1, align 8, !tbaa !14
  %141 = load i64, i64* %tmp1, align 8, !tbaa !14
  %mul116 = mul nsw i64 %141, 16819
  store i64 %mul116, i64* %tmp1, align 8, !tbaa !14
  %142 = load i64, i64* %tmp2, align 8, !tbaa !14
  %mul117 = mul nsw i64 %142, 25172
  store i64 %mul117, i64* %tmp2, align 8, !tbaa !14
  %143 = load i64, i64* %z1, align 8, !tbaa !14
  %144 = load i64, i64* %z3, align 8, !tbaa !14
  %add118 = add nsw i64 %143, %144
  %145 = load i64, i64* %tmp1, align 8, !tbaa !14
  %add119 = add nsw i64 %145, %add118
  store i64 %add119, i64* %tmp1, align 8, !tbaa !14
  %146 = load i64, i64* %z1, align 8, !tbaa !14
  %147 = load i64, i64* %z2, align 8, !tbaa !14
  %add120 = add nsw i64 %146, %147
  %148 = load i64, i64* %tmp2, align 8, !tbaa !14
  %add121 = add nsw i64 %148, %add120
  store i64 %add121, i64* %tmp2, align 8, !tbaa !14
  %149 = load i64, i64* %tmp10, align 8, !tbaa !14
  %150 = load i64, i64* %tmp3, align 8, !tbaa !14
  %add122 = add nsw i64 %149, %150
  %shr = ashr i64 %add122, 11
  %conv123 = trunc i64 %shr to i32
  %151 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx124 = getelementptr inbounds i32, i32* %151, i64 0
  store i32 %conv123, i32* %arrayidx124, align 4, !tbaa !5
  %152 = load i64, i64* %tmp10, align 8, !tbaa !14
  %153 = load i64, i64* %tmp3, align 8, !tbaa !14
  %sub125 = sub nsw i64 %152, %153
  %shr126 = ashr i64 %sub125, 11
  %conv127 = trunc i64 %shr126 to i32
  %154 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx128 = getelementptr inbounds i32, i32* %154, i64 56
  store i32 %conv127, i32* %arrayidx128, align 4, !tbaa !5
  %155 = load i64, i64* %tmp11, align 8, !tbaa !14
  %156 = load i64, i64* %tmp2, align 8, !tbaa !14
  %add129 = add nsw i64 %155, %156
  %shr130 = ashr i64 %add129, 11
  %conv131 = trunc i64 %shr130 to i32
  %157 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i32, i32* %157, i64 8
  store i32 %conv131, i32* %arrayidx132, align 4, !tbaa !5
  %158 = load i64, i64* %tmp11, align 8, !tbaa !14
  %159 = load i64, i64* %tmp2, align 8, !tbaa !14
  %sub133 = sub nsw i64 %158, %159
  %shr134 = ashr i64 %sub133, 11
  %conv135 = trunc i64 %shr134 to i32
  %160 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx136 = getelementptr inbounds i32, i32* %160, i64 48
  store i32 %conv135, i32* %arrayidx136, align 4, !tbaa !5
  %161 = load i64, i64* %tmp12, align 8, !tbaa !14
  %162 = load i64, i64* %tmp1, align 8, !tbaa !14
  %add137 = add nsw i64 %161, %162
  %shr138 = ashr i64 %add137, 11
  %conv139 = trunc i64 %shr138 to i32
  %163 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx140 = getelementptr inbounds i32, i32* %163, i64 16
  store i32 %conv139, i32* %arrayidx140, align 4, !tbaa !5
  %164 = load i64, i64* %tmp12, align 8, !tbaa !14
  %165 = load i64, i64* %tmp1, align 8, !tbaa !14
  %sub141 = sub nsw i64 %164, %165
  %shr142 = ashr i64 %sub141, 11
  %conv143 = trunc i64 %shr142 to i32
  %166 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx144 = getelementptr inbounds i32, i32* %166, i64 40
  store i32 %conv143, i32* %arrayidx144, align 4, !tbaa !5
  %167 = load i64, i64* %tmp13, align 8, !tbaa !14
  %168 = load i64, i64* %tmp0, align 8, !tbaa !14
  %add145 = add nsw i64 %167, %168
  %shr146 = ashr i64 %add145, 11
  %conv147 = trunc i64 %shr146 to i32
  %169 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx148 = getelementptr inbounds i32, i32* %169, i64 24
  store i32 %conv147, i32* %arrayidx148, align 4, !tbaa !5
  %170 = load i64, i64* %tmp13, align 8, !tbaa !14
  %171 = load i64, i64* %tmp0, align 8, !tbaa !14
  %sub149 = sub nsw i64 %170, %171
  %shr150 = ashr i64 %sub149, 11
  %conv151 = trunc i64 %shr150 to i32
  %172 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx152 = getelementptr inbounds i32, i32* %172, i64 32
  store i32 %conv151, i32* %arrayidx152, align 4, !tbaa !5
  %173 = load i16*, i16** %inptr, align 8, !tbaa !1
  %incdec.ptr153 = getelementptr inbounds i16, i16* %173, i32 1
  store i16* %incdec.ptr153, i16** %inptr, align 8, !tbaa !1
  %174 = load i32*, i32** %quantptr, align 8, !tbaa !1
  %incdec.ptr154 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %incdec.ptr154, i32** %quantptr, align 8, !tbaa !1
  %175 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %incdec.ptr155 = getelementptr inbounds i32, i32* %175, i32 1
  store i32* %incdec.ptr155, i32** %wsptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %176 = load i32, i32* %ctr, align 4, !tbaa !5
  %dec = add nsw i32 %176, -1
  store i32 %dec, i32* %ctr, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay156 = getelementptr inbounds [64 x i32], [64 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay156, i32** %wsptr, align 8, !tbaa !1
  store i32 0, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.157

for.cond.157:                                     ; preds = %for.inc.318, %for.end
  %177 = load i32, i32* %ctr, align 4, !tbaa !5
  %cmp158 = icmp slt i32 %177, 8
  br i1 %cmp158, label %for.body.160, label %for.end.319

for.body.160:                                     ; preds = %for.cond.157
  %178 = load i32, i32* %ctr, align 4, !tbaa !5
  %idxprom = sext i32 %178 to i64
  %179 = load i8**, i8*** %output_buf.addr, align 8, !tbaa !1
  %arrayidx161 = getelementptr inbounds i8*, i8** %179, i64 %idxprom
  %180 = load i8*, i8** %arrayidx161, align 8, !tbaa !1
  %181 = load i32, i32* %output_col.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %181 to i64
  %add.ptr162 = getelementptr inbounds i8, i8* %180, i64 %idx.ext
  store i8* %add.ptr162, i8** %outptr, align 8, !tbaa !1
  %182 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds i32, i32* %182, i64 0
  %183 = load i32, i32* %arrayidx163, align 4, !tbaa !5
  %conv164 = sext i32 %183 to i64
  %add165 = add nsw i64 %conv164, 16400
  store i64 %add165, i64* %z2, align 8, !tbaa !14
  %184 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx166 = getelementptr inbounds i32, i32* %184, i64 1
  %185 = load i32, i32* %arrayidx166, align 4, !tbaa !5
  %cmp167 = icmp eq i32 %185, 0
  br i1 %cmp167, label %land.lhs.true.169, label %if.end.208

land.lhs.true.169:                                ; preds = %for.body.160
  %186 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx170 = getelementptr inbounds i32, i32* %186, i64 2
  %187 = load i32, i32* %arrayidx170, align 4, !tbaa !5
  %cmp171 = icmp eq i32 %187, 0
  br i1 %cmp171, label %land.lhs.true.173, label %if.end.208

land.lhs.true.173:                                ; preds = %land.lhs.true.169
  %188 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx174 = getelementptr inbounds i32, i32* %188, i64 3
  %189 = load i32, i32* %arrayidx174, align 4, !tbaa !5
  %cmp175 = icmp eq i32 %189, 0
  br i1 %cmp175, label %land.lhs.true.177, label %if.end.208

land.lhs.true.177:                                ; preds = %land.lhs.true.173
  %190 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx178 = getelementptr inbounds i32, i32* %190, i64 4
  %191 = load i32, i32* %arrayidx178, align 4, !tbaa !5
  %cmp179 = icmp eq i32 %191, 0
  br i1 %cmp179, label %land.lhs.true.181, label %if.end.208

land.lhs.true.181:                                ; preds = %land.lhs.true.177
  %192 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx182 = getelementptr inbounds i32, i32* %192, i64 5
  %193 = load i32, i32* %arrayidx182, align 4, !tbaa !5
  %cmp183 = icmp eq i32 %193, 0
  br i1 %cmp183, label %land.lhs.true.185, label %if.end.208

land.lhs.true.185:                                ; preds = %land.lhs.true.181
  %194 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx186 = getelementptr inbounds i32, i32* %194, i64 6
  %195 = load i32, i32* %arrayidx186, align 4, !tbaa !5
  %cmp187 = icmp eq i32 %195, 0
  br i1 %cmp187, label %land.lhs.true.189, label %if.end.208

land.lhs.true.189:                                ; preds = %land.lhs.true.185
  %196 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx190 = getelementptr inbounds i32, i32* %196, i64 7
  %197 = load i32, i32* %arrayidx190, align 4, !tbaa !5
  %cmp191 = icmp eq i32 %197, 0
  br i1 %cmp191, label %if.then.193, label %if.end.208

if.then.193:                                      ; preds = %land.lhs.true.189
  call void @llvm.lifetime.start(i64 1, i8* %dcval194) #1
  %198 = load i64, i64* %z2, align 8, !tbaa !14
  %shr195 = ashr i64 %198, 5
  %conv196 = trunc i64 %shr195 to i32
  %and = and i32 %conv196, 1023
  %idxprom197 = sext i32 %and to i64
  %199 = load i8*, i8** %range_limit, align 8, !tbaa !1
  %arrayidx198 = getelementptr inbounds i8, i8* %199, i64 %idxprom197
  %200 = load i8, i8* %arrayidx198, align 1, !tbaa !16
  store i8 %200, i8* %dcval194, align 1, !tbaa !16
  %201 = load i8, i8* %dcval194, align 1, !tbaa !16
  %202 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds i8, i8* %202, i64 0
  store i8 %201, i8* %arrayidx199, align 1, !tbaa !16
  %203 = load i8, i8* %dcval194, align 1, !tbaa !16
  %204 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx200 = getelementptr inbounds i8, i8* %204, i64 1
  store i8 %203, i8* %arrayidx200, align 1, !tbaa !16
  %205 = load i8, i8* %dcval194, align 1, !tbaa !16
  %206 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx201 = getelementptr inbounds i8, i8* %206, i64 2
  store i8 %205, i8* %arrayidx201, align 1, !tbaa !16
  %207 = load i8, i8* %dcval194, align 1, !tbaa !16
  %208 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx202 = getelementptr inbounds i8, i8* %208, i64 3
  store i8 %207, i8* %arrayidx202, align 1, !tbaa !16
  %209 = load i8, i8* %dcval194, align 1, !tbaa !16
  %210 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx203 = getelementptr inbounds i8, i8* %210, i64 4
  store i8 %209, i8* %arrayidx203, align 1, !tbaa !16
  %211 = load i8, i8* %dcval194, align 1, !tbaa !16
  %212 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx204 = getelementptr inbounds i8, i8* %212, i64 5
  store i8 %211, i8* %arrayidx204, align 1, !tbaa !16
  %213 = load i8, i8* %dcval194, align 1, !tbaa !16
  %214 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx205 = getelementptr inbounds i8, i8* %214, i64 6
  store i8 %213, i8* %arrayidx205, align 1, !tbaa !16
  %215 = load i8, i8* %dcval194, align 1, !tbaa !16
  %216 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx206 = getelementptr inbounds i8, i8* %216, i64 7
  store i8 %215, i8* %arrayidx206, align 1, !tbaa !16
  %217 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %add.ptr207 = getelementptr inbounds i32, i32* %217, i64 8
  store i32* %add.ptr207, i32** %wsptr, align 8, !tbaa !1
  call void @llvm.lifetime.end(i64 1, i8* %dcval194) #1
  br label %for.inc.318

if.end.208:                                       ; preds = %land.lhs.true.189, %land.lhs.true.185, %land.lhs.true.181, %land.lhs.true.177, %land.lhs.true.173, %land.lhs.true.169, %for.body.160
  %218 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx209 = getelementptr inbounds i32, i32* %218, i64 4
  %219 = load i32, i32* %arrayidx209, align 4, !tbaa !5
  %conv210 = sext i32 %219 to i64
  store i64 %conv210, i64* %z3, align 8, !tbaa !14
  %220 = load i64, i64* %z2, align 8, !tbaa !14
  %221 = load i64, i64* %z3, align 8, !tbaa !14
  %add211 = add nsw i64 %220, %221
  %shl212 = shl i64 %add211, 13
  store i64 %shl212, i64* %tmp0, align 8, !tbaa !14
  %222 = load i64, i64* %z2, align 8, !tbaa !14
  %223 = load i64, i64* %z3, align 8, !tbaa !14
  %sub213 = sub nsw i64 %222, %223
  %shl214 = shl i64 %sub213, 13
  store i64 %shl214, i64* %tmp1, align 8, !tbaa !14
  %224 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx215 = getelementptr inbounds i32, i32* %224, i64 2
  %225 = load i32, i32* %arrayidx215, align 4, !tbaa !5
  %conv216 = sext i32 %225 to i64
  store i64 %conv216, i64* %z2, align 8, !tbaa !14
  %226 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx217 = getelementptr inbounds i32, i32* %226, i64 6
  %227 = load i32, i32* %arrayidx217, align 4, !tbaa !5
  %conv218 = sext i32 %227 to i64
  store i64 %conv218, i64* %z3, align 8, !tbaa !14
  %228 = load i64, i64* %z2, align 8, !tbaa !14
  %229 = load i64, i64* %z3, align 8, !tbaa !14
  %add219 = add nsw i64 %228, %229
  %mul220 = mul nsw i64 %add219, 4433
  store i64 %mul220, i64* %z1, align 8, !tbaa !14
  %230 = load i64, i64* %z1, align 8, !tbaa !14
  %231 = load i64, i64* %z2, align 8, !tbaa !14
  %mul221 = mul nsw i64 %231, 6270
  %add222 = add nsw i64 %230, %mul221
  store i64 %add222, i64* %tmp2, align 8, !tbaa !14
  %232 = load i64, i64* %z1, align 8, !tbaa !14
  %233 = load i64, i64* %z3, align 8, !tbaa !14
  %mul223 = mul nsw i64 %233, 15137
  %sub224 = sub nsw i64 %232, %mul223
  store i64 %sub224, i64* %tmp3, align 8, !tbaa !14
  %234 = load i64, i64* %tmp0, align 8, !tbaa !14
  %235 = load i64, i64* %tmp2, align 8, !tbaa !14
  %add225 = add nsw i64 %234, %235
  store i64 %add225, i64* %tmp10, align 8, !tbaa !14
  %236 = load i64, i64* %tmp0, align 8, !tbaa !14
  %237 = load i64, i64* %tmp2, align 8, !tbaa !14
  %sub226 = sub nsw i64 %236, %237
  store i64 %sub226, i64* %tmp13, align 8, !tbaa !14
  %238 = load i64, i64* %tmp1, align 8, !tbaa !14
  %239 = load i64, i64* %tmp3, align 8, !tbaa !14
  %add227 = add nsw i64 %238, %239
  store i64 %add227, i64* %tmp11, align 8, !tbaa !14
  %240 = load i64, i64* %tmp1, align 8, !tbaa !14
  %241 = load i64, i64* %tmp3, align 8, !tbaa !14
  %sub228 = sub nsw i64 %240, %241
  store i64 %sub228, i64* %tmp12, align 8, !tbaa !14
  %242 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx229 = getelementptr inbounds i32, i32* %242, i64 7
  %243 = load i32, i32* %arrayidx229, align 4, !tbaa !5
  %conv230 = sext i32 %243 to i64
  store i64 %conv230, i64* %tmp0, align 8, !tbaa !14
  %244 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx231 = getelementptr inbounds i32, i32* %244, i64 5
  %245 = load i32, i32* %arrayidx231, align 4, !tbaa !5
  %conv232 = sext i32 %245 to i64
  store i64 %conv232, i64* %tmp1, align 8, !tbaa !14
  %246 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx233 = getelementptr inbounds i32, i32* %246, i64 3
  %247 = load i32, i32* %arrayidx233, align 4, !tbaa !5
  %conv234 = sext i32 %247 to i64
  store i64 %conv234, i64* %tmp2, align 8, !tbaa !14
  %248 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %arrayidx235 = getelementptr inbounds i32, i32* %248, i64 1
  %249 = load i32, i32* %arrayidx235, align 4, !tbaa !5
  %conv236 = sext i32 %249 to i64
  store i64 %conv236, i64* %tmp3, align 8, !tbaa !14
  %250 = load i64, i64* %tmp0, align 8, !tbaa !14
  %251 = load i64, i64* %tmp2, align 8, !tbaa !14
  %add237 = add nsw i64 %250, %251
  store i64 %add237, i64* %z2, align 8, !tbaa !14
  %252 = load i64, i64* %tmp1, align 8, !tbaa !14
  %253 = load i64, i64* %tmp3, align 8, !tbaa !14
  %add238 = add nsw i64 %252, %253
  store i64 %add238, i64* %z3, align 8, !tbaa !14
  %254 = load i64, i64* %z2, align 8, !tbaa !14
  %255 = load i64, i64* %z3, align 8, !tbaa !14
  %add239 = add nsw i64 %254, %255
  %mul240 = mul nsw i64 %add239, 9633
  store i64 %mul240, i64* %z1, align 8, !tbaa !14
  %256 = load i64, i64* %z2, align 8, !tbaa !14
  %mul241 = mul nsw i64 %256, -16069
  store i64 %mul241, i64* %z2, align 8, !tbaa !14
  %257 = load i64, i64* %z3, align 8, !tbaa !14
  %mul242 = mul nsw i64 %257, -3196
  store i64 %mul242, i64* %z3, align 8, !tbaa !14
  %258 = load i64, i64* %z1, align 8, !tbaa !14
  %259 = load i64, i64* %z2, align 8, !tbaa !14
  %add243 = add nsw i64 %259, %258
  store i64 %add243, i64* %z2, align 8, !tbaa !14
  %260 = load i64, i64* %z1, align 8, !tbaa !14
  %261 = load i64, i64* %z3, align 8, !tbaa !14
  %add244 = add nsw i64 %261, %260
  store i64 %add244, i64* %z3, align 8, !tbaa !14
  %262 = load i64, i64* %tmp0, align 8, !tbaa !14
  %263 = load i64, i64* %tmp3, align 8, !tbaa !14
  %add245 = add nsw i64 %262, %263
  %mul246 = mul nsw i64 %add245, -7373
  store i64 %mul246, i64* %z1, align 8, !tbaa !14
  %264 = load i64, i64* %tmp0, align 8, !tbaa !14
  %mul247 = mul nsw i64 %264, 2446
  store i64 %mul247, i64* %tmp0, align 8, !tbaa !14
  %265 = load i64, i64* %tmp3, align 8, !tbaa !14
  %mul248 = mul nsw i64 %265, 12299
  store i64 %mul248, i64* %tmp3, align 8, !tbaa !14
  %266 = load i64, i64* %z1, align 8, !tbaa !14
  %267 = load i64, i64* %z2, align 8, !tbaa !14
  %add249 = add nsw i64 %266, %267
  %268 = load i64, i64* %tmp0, align 8, !tbaa !14
  %add250 = add nsw i64 %268, %add249
  store i64 %add250, i64* %tmp0, align 8, !tbaa !14
  %269 = load i64, i64* %z1, align 8, !tbaa !14
  %270 = load i64, i64* %z3, align 8, !tbaa !14
  %add251 = add nsw i64 %269, %270
  %271 = load i64, i64* %tmp3, align 8, !tbaa !14
  %add252 = add nsw i64 %271, %add251
  store i64 %add252, i64* %tmp3, align 8, !tbaa !14
  %272 = load i64, i64* %tmp1, align 8, !tbaa !14
  %273 = load i64, i64* %tmp2, align 8, !tbaa !14
  %add253 = add nsw i64 %272, %273
  %mul254 = mul nsw i64 %add253, -20995
  store i64 %mul254, i64* %z1, align 8, !tbaa !14
  %274 = load i64, i64* %tmp1, align 8, !tbaa !14
  %mul255 = mul nsw i64 %274, 16819
  store i64 %mul255, i64* %tmp1, align 8, !tbaa !14
  %275 = load i64, i64* %tmp2, align 8, !tbaa !14
  %mul256 = mul nsw i64 %275, 25172
  store i64 %mul256, i64* %tmp2, align 8, !tbaa !14
  %276 = load i64, i64* %z1, align 8, !tbaa !14
  %277 = load i64, i64* %z3, align 8, !tbaa !14
  %add257 = add nsw i64 %276, %277
  %278 = load i64, i64* %tmp1, align 8, !tbaa !14
  %add258 = add nsw i64 %278, %add257
  store i64 %add258, i64* %tmp1, align 8, !tbaa !14
  %279 = load i64, i64* %z1, align 8, !tbaa !14
  %280 = load i64, i64* %z2, align 8, !tbaa !14
  %add259 = add nsw i64 %279, %280
  %281 = load i64, i64* %tmp2, align 8, !tbaa !14
  %add260 = add nsw i64 %281, %add259
  store i64 %add260, i64* %tmp2, align 8, !tbaa !14
  %282 = load i64, i64* %tmp10, align 8, !tbaa !14
  %283 = load i64, i64* %tmp3, align 8, !tbaa !14
  %add261 = add nsw i64 %282, %283
  %shr262 = ashr i64 %add261, 18
  %conv263 = trunc i64 %shr262 to i32
  %and264 = and i32 %conv263, 1023
  %idxprom265 = sext i32 %and264 to i64
  %284 = load i8*, i8** %range_limit, align 8, !tbaa !1
  %arrayidx266 = getelementptr inbounds i8, i8* %284, i64 %idxprom265
  %285 = load i8, i8* %arrayidx266, align 1, !tbaa !16
  %286 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx267 = getelementptr inbounds i8, i8* %286, i64 0
  store i8 %285, i8* %arrayidx267, align 1, !tbaa !16
  %287 = load i64, i64* %tmp10, align 8, !tbaa !14
  %288 = load i64, i64* %tmp3, align 8, !tbaa !14
  %sub268 = sub nsw i64 %287, %288
  %shr269 = ashr i64 %sub268, 18
  %conv270 = trunc i64 %shr269 to i32
  %and271 = and i32 %conv270, 1023
  %idxprom272 = sext i32 %and271 to i64
  %289 = load i8*, i8** %range_limit, align 8, !tbaa !1
  %arrayidx273 = getelementptr inbounds i8, i8* %289, i64 %idxprom272
  %290 = load i8, i8* %arrayidx273, align 1, !tbaa !16
  %291 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx274 = getelementptr inbounds i8, i8* %291, i64 7
  store i8 %290, i8* %arrayidx274, align 1, !tbaa !16
  %292 = load i64, i64* %tmp11, align 8, !tbaa !14
  %293 = load i64, i64* %tmp2, align 8, !tbaa !14
  %add275 = add nsw i64 %292, %293
  %shr276 = ashr i64 %add275, 18
  %conv277 = trunc i64 %shr276 to i32
  %and278 = and i32 %conv277, 1023
  %idxprom279 = sext i32 %and278 to i64
  %294 = load i8*, i8** %range_limit, align 8, !tbaa !1
  %arrayidx280 = getelementptr inbounds i8, i8* %294, i64 %idxprom279
  %295 = load i8, i8* %arrayidx280, align 1, !tbaa !16
  %296 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx281 = getelementptr inbounds i8, i8* %296, i64 1
  store i8 %295, i8* %arrayidx281, align 1, !tbaa !16
  %297 = load i64, i64* %tmp11, align 8, !tbaa !14
  %298 = load i64, i64* %tmp2, align 8, !tbaa !14
  %sub282 = sub nsw i64 %297, %298
  %shr283 = ashr i64 %sub282, 18
  %conv284 = trunc i64 %shr283 to i32
  %and285 = and i32 %conv284, 1023
  %idxprom286 = sext i32 %and285 to i64
  %299 = load i8*, i8** %range_limit, align 8, !tbaa !1
  %arrayidx287 = getelementptr inbounds i8, i8* %299, i64 %idxprom286
  %300 = load i8, i8* %arrayidx287, align 1, !tbaa !16
  %301 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx288 = getelementptr inbounds i8, i8* %301, i64 6
  store i8 %300, i8* %arrayidx288, align 1, !tbaa !16
  %302 = load i64, i64* %tmp12, align 8, !tbaa !14
  %303 = load i64, i64* %tmp1, align 8, !tbaa !14
  %add289 = add nsw i64 %302, %303
  %shr290 = ashr i64 %add289, 18
  %conv291 = trunc i64 %shr290 to i32
  %and292 = and i32 %conv291, 1023
  %idxprom293 = sext i32 %and292 to i64
  %304 = load i8*, i8** %range_limit, align 8, !tbaa !1
  %arrayidx294 = getelementptr inbounds i8, i8* %304, i64 %idxprom293
  %305 = load i8, i8* %arrayidx294, align 1, !tbaa !16
  %306 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx295 = getelementptr inbounds i8, i8* %306, i64 2
  store i8 %305, i8* %arrayidx295, align 1, !tbaa !16
  %307 = load i64, i64* %tmp12, align 8, !tbaa !14
  %308 = load i64, i64* %tmp1, align 8, !tbaa !14
  %sub296 = sub nsw i64 %307, %308
  %shr297 = ashr i64 %sub296, 18
  %conv298 = trunc i64 %shr297 to i32
  %and299 = and i32 %conv298, 1023
  %idxprom300 = sext i32 %and299 to i64
  %309 = load i8*, i8** %range_limit, align 8, !tbaa !1
  %arrayidx301 = getelementptr inbounds i8, i8* %309, i64 %idxprom300
  %310 = load i8, i8* %arrayidx301, align 1, !tbaa !16
  %311 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx302 = getelementptr inbounds i8, i8* %311, i64 5
  store i8 %310, i8* %arrayidx302, align 1, !tbaa !16
  %312 = load i64, i64* %tmp13, align 8, !tbaa !14
  %313 = load i64, i64* %tmp0, align 8, !tbaa !14
  %add303 = add nsw i64 %312, %313
  %shr304 = ashr i64 %add303, 18
  %conv305 = trunc i64 %shr304 to i32
  %and306 = and i32 %conv305, 1023
  %idxprom307 = sext i32 %and306 to i64
  %314 = load i8*, i8** %range_limit, align 8, !tbaa !1
  %arrayidx308 = getelementptr inbounds i8, i8* %314, i64 %idxprom307
  %315 = load i8, i8* %arrayidx308, align 1, !tbaa !16
  %316 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx309 = getelementptr inbounds i8, i8* %316, i64 3
  store i8 %315, i8* %arrayidx309, align 1, !tbaa !16
  %317 = load i64, i64* %tmp13, align 8, !tbaa !14
  %318 = load i64, i64* %tmp0, align 8, !tbaa !14
  %sub310 = sub nsw i64 %317, %318
  %shr311 = ashr i64 %sub310, 18
  %conv312 = trunc i64 %shr311 to i32
  %and313 = and i32 %conv312, 1023
  %idxprom314 = sext i32 %and313 to i64
  %319 = load i8*, i8** %range_limit, align 8, !tbaa !1
  %arrayidx315 = getelementptr inbounds i8, i8* %319, i64 %idxprom314
  %320 = load i8, i8* %arrayidx315, align 1, !tbaa !16
  %321 = load i8*, i8** %outptr, align 8, !tbaa !1
  %arrayidx316 = getelementptr inbounds i8, i8* %321, i64 4
  store i8 %320, i8* %arrayidx316, align 1, !tbaa !16
  %322 = load i32*, i32** %wsptr, align 8, !tbaa !1
  %add.ptr317 = getelementptr inbounds i32, i32* %322, i64 8
  store i32* %add.ptr317, i32** %wsptr, align 8, !tbaa !1
  br label %for.inc.318

for.inc.318:                                      ; preds = %if.end.208, %if.then.193
  %323 = load i32, i32* %ctr, align 4, !tbaa !5
  %inc = add nsw i32 %323, 1
  store i32 %inc, i32* %ctr, align 4, !tbaa !5
  br label %for.cond.157

for.end.319:                                      ; preds = %for.cond.157
  %324 = bitcast [64 x i32]* %workspace to i8*
  call void @llvm.lifetime.end(i64 256, i8* %324) #1
  %325 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %325) #1
  %326 = bitcast i8** %range_limit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %326) #1
  %327 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %327) #1
  %328 = bitcast i32** %wsptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %328) #1
  %329 = bitcast i32** %quantptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %329) #1
  %330 = bitcast i16** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %330) #1
  %331 = bitcast i64* %z3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %331) #1
  %332 = bitcast i64* %z2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %332) #1
  %333 = bitcast i64* %z1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %333) #1
  %334 = bitcast i64* %tmp13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %334) #1
  %335 = bitcast i64* %tmp12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %335) #1
  %336 = bitcast i64* %tmp11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %336) #1
  %337 = bitcast i64* %tmp10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %337) #1
  %338 = bitcast i64* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %338) #1
  %339 = bitcast i64* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %339) #1
  %340 = bitcast i64* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %340) #1
  %341 = bitcast i64* %tmp0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %341) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 440}
!8 = !{!"jpeg_decompress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !6, i64 36, !2, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !3, i64 60, !3, i64 64, !6, i64 68, !6, i64 72, !9, i64 80, !3, i64 88, !3, i64 92, !3, i64 96, !3, i64 100, !3, i64 104, !3, i64 108, !3, i64 112, !3, i64 116, !6, i64 120, !3, i64 124, !3, i64 128, !3, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !2, i64 160, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !2, i64 192, !3, i64 200, !3, i64 232, !3, i64 264, !6, i64 296, !2, i64 304, !3, i64 312, !3, i64 316, !3, i64 320, !3, i64 324, !3, i64 340, !3, i64 356, !6, i64 372, !3, i64 376, !3, i64 380, !3, i64 381, !3, i64 382, !10, i64 384, !10, i64 386, !3, i64 388, !3, i64 392, !3, i64 396, !3, i64 400, !2, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !6, i64 428, !6, i64 432, !2, i64 440, !6, i64 448, !3, i64 456, !6, i64 488, !6, i64 492, !6, i64 496, !3, i64 500, !6, i64 756, !6, i64 760, !6, i64 764, !6, i64 768, !6, i64 772, !2, i64 776, !6, i64 784, !6, i64 788, !2, i64 792, !2, i64 800, !2, i64 808, !2, i64 816, !2, i64 824, !2, i64 832, !2, i64 840, !2, i64 848, !2, i64 856, !2, i64 864, !2, i64 872}
!9 = !{!"double", !3, i64 0}
!10 = !{!"short", !3, i64 0}
!11 = !{!12, !2, i64 88}
!12 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !3, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !2, i64 80, !2, i64 88}
!13 = !{!10, !10, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !3, i64 0}
!16 = !{!3, !3, i64 0}
