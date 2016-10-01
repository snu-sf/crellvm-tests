; ModuleID = './MultiSource.Benchmarks.MiBench/102.consumer-jpeg.jidctfst.bc'
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
%struct.jpeg_decomp_master = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 }
%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
%struct.jpeg_d_coef_controller = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
%struct.jpeg_input_controller = type { i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32, i32 }
%struct.jpeg_marker_reader = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, [16 x i32 (%struct.jpeg_decompress_struct*)*], i32, i32, i32, i32 }
%struct.jpeg_entropy_decoder = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* }
%struct.jpeg_inverse_dct = type { void (%struct.jpeg_decompress_struct*)*, [10 x {}*] }
%struct.jpeg_upsampler = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, i32 }
%struct.jpeg_color_deconverter = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* }
%struct.jpeg_color_quantizer = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }

; Function Attrs: nounwind uwtable
define void @jpeg_idct_ifast(%struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i16* %coef_block, i8** %output_buf, i32 %output_col) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %coef_block.addr = alloca i16*, align 8
  %output_buf.addr = alloca i8**, align 8
  %output_col.addr = alloca i32, align 4
  %tmp0 = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  %z5 = alloca i32, align 4
  %z10 = alloca i32, align 4
  %z11 = alloca i32, align 4
  %z12 = alloca i32, align 4
  %z13 = alloca i32, align 4
  %inptr = alloca i16*, align 8
  %quantptr = alloca i32*, align 8
  %wsptr = alloca i32*, align 8
  %outptr = alloca i8*, align 8
  %range_limit = alloca i8*, align 8
  %ctr = alloca i32, align 4
  %workspace = alloca [64 x i32], align 16
  %dcval = alloca i32, align 4
  %dcval145 = alloca i8, align 1
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8
  store i16* %coef_block, i16** %coef_block.addr, align 8
  store i8** %output_buf, i8*** %output_buf.addr, align 8
  store i32 %output_col, i32* %output_col.addr, align 4
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 61
  %1 = load i8*, i8** %sample_range_limit, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 128
  store i8* %add.ptr, i8** %range_limit, align 8
  %2 = load i16*, i16** %coef_block.addr, align 8
  store i16* %2, i16** %inptr, align 8
  %3 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %3, i32 0, i32 20
  %4 = load i8*, i8** %dct_table, align 8
  %5 = bitcast i8* %4 to i32*
  store i32* %5, i32** %quantptr, align 8
  %arraydecay = getelementptr inbounds [64 x i32], [64 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay, i32** %wsptr, align 8
  store i32 8, i32* %ctr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %ctr, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i16*, i16** %inptr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 8
  %8 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %8 to i32
  %9 = load i16*, i16** %inptr, align 8
  %arrayidx1 = getelementptr inbounds i16, i16* %9, i64 16
  %10 = load i16, i16* %arrayidx1, align 2
  %conv2 = sext i16 %10 to i32
  %or = or i32 %conv, %conv2
  %11 = load i16*, i16** %inptr, align 8
  %arrayidx3 = getelementptr inbounds i16, i16* %11, i64 24
  %12 = load i16, i16* %arrayidx3, align 2
  %conv4 = sext i16 %12 to i32
  %or5 = or i32 %or, %conv4
  %13 = load i16*, i16** %inptr, align 8
  %arrayidx6 = getelementptr inbounds i16, i16* %13, i64 32
  %14 = load i16, i16* %arrayidx6, align 2
  %conv7 = sext i16 %14 to i32
  %or8 = or i32 %or5, %conv7
  %15 = load i16*, i16** %inptr, align 8
  %arrayidx9 = getelementptr inbounds i16, i16* %15, i64 40
  %16 = load i16, i16* %arrayidx9, align 2
  %conv10 = sext i16 %16 to i32
  %or11 = or i32 %or8, %conv10
  %17 = load i16*, i16** %inptr, align 8
  %arrayidx12 = getelementptr inbounds i16, i16* %17, i64 48
  %18 = load i16, i16* %arrayidx12, align 2
  %conv13 = sext i16 %18 to i32
  %or14 = or i32 %or11, %conv13
  %19 = load i16*, i16** %inptr, align 8
  %arrayidx15 = getelementptr inbounds i16, i16* %19, i64 56
  %20 = load i16, i16* %arrayidx15, align 2
  %conv16 = sext i16 %20 to i32
  %or17 = or i32 %or14, %conv16
  %cmp18 = icmp eq i32 %or17, 0
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %21 = load i16*, i16** %inptr, align 8
  %arrayidx20 = getelementptr inbounds i16, i16* %21, i64 0
  %22 = load i16, i16* %arrayidx20, align 2
  %conv21 = sext i16 %22 to i32
  %23 = load i32*, i32** %quantptr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %23, i64 0
  %24 = load i32, i32* %arrayidx22, align 4
  %mul = mul nsw i32 %conv21, %24
  store i32 %mul, i32* %dcval, align 4
  %25 = load i32, i32* %dcval, align 4
  %26 = load i32*, i32** %wsptr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %25, i32* %arrayidx23, align 4
  %27 = load i32, i32* %dcval, align 4
  %28 = load i32*, i32** %wsptr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %28, i64 8
  store i32 %27, i32* %arrayidx24, align 4
  %29 = load i32, i32* %dcval, align 4
  %30 = load i32*, i32** %wsptr, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %30, i64 16
  store i32 %29, i32* %arrayidx25, align 4
  %31 = load i32, i32* %dcval, align 4
  %32 = load i32*, i32** %wsptr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %32, i64 24
  store i32 %31, i32* %arrayidx26, align 4
  %33 = load i32, i32* %dcval, align 4
  %34 = load i32*, i32** %wsptr, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %34, i64 32
  store i32 %33, i32* %arrayidx27, align 4
  %35 = load i32, i32* %dcval, align 4
  %36 = load i32*, i32** %wsptr, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %36, i64 40
  store i32 %35, i32* %arrayidx28, align 4
  %37 = load i32, i32* %dcval, align 4
  %38 = load i32*, i32** %wsptr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %38, i64 48
  store i32 %37, i32* %arrayidx29, align 4
  %39 = load i32, i32* %dcval, align 4
  %40 = load i32*, i32** %wsptr, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %40, i64 56
  store i32 %39, i32* %arrayidx30, align 4
  %41 = load i16*, i16** %inptr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %41, i32 1
  store i16* %incdec.ptr, i16** %inptr, align 8
  %42 = load i32*, i32** %quantptr, align 8
  %incdec.ptr31 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %incdec.ptr31, i32** %quantptr, align 8
  %43 = load i32*, i32** %wsptr, align 8
  %incdec.ptr32 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %incdec.ptr32, i32** %wsptr, align 8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %44 = load i16*, i16** %inptr, align 8
  %arrayidx33 = getelementptr inbounds i16, i16* %44, i64 0
  %45 = load i16, i16* %arrayidx33, align 2
  %conv34 = sext i16 %45 to i32
  %46 = load i32*, i32** %quantptr, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %46, i64 0
  %47 = load i32, i32* %arrayidx35, align 4
  %mul36 = mul nsw i32 %conv34, %47
  store i32 %mul36, i32* %tmp0, align 4
  %48 = load i16*, i16** %inptr, align 8
  %arrayidx37 = getelementptr inbounds i16, i16* %48, i64 16
  %49 = load i16, i16* %arrayidx37, align 2
  %conv38 = sext i16 %49 to i32
  %50 = load i32*, i32** %quantptr, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %50, i64 16
  %51 = load i32, i32* %arrayidx39, align 4
  %mul40 = mul nsw i32 %conv38, %51
  store i32 %mul40, i32* %tmp1, align 4
  %52 = load i16*, i16** %inptr, align 8
  %arrayidx41 = getelementptr inbounds i16, i16* %52, i64 32
  %53 = load i16, i16* %arrayidx41, align 2
  %conv42 = sext i16 %53 to i32
  %54 = load i32*, i32** %quantptr, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %54, i64 32
  %55 = load i32, i32* %arrayidx43, align 4
  %mul44 = mul nsw i32 %conv42, %55
  store i32 %mul44, i32* %tmp2, align 4
  %56 = load i16*, i16** %inptr, align 8
  %arrayidx45 = getelementptr inbounds i16, i16* %56, i64 48
  %57 = load i16, i16* %arrayidx45, align 2
  %conv46 = sext i16 %57 to i32
  %58 = load i32*, i32** %quantptr, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %58, i64 48
  %59 = load i32, i32* %arrayidx47, align 4
  %mul48 = mul nsw i32 %conv46, %59
  store i32 %mul48, i32* %tmp3, align 4
  %60 = load i32, i32* %tmp0, align 4
  %61 = load i32, i32* %tmp2, align 4
  %add = add nsw i32 %60, %61
  store i32 %add, i32* %tmp10, align 4
  %62 = load i32, i32* %tmp0, align 4
  %63 = load i32, i32* %tmp2, align 4
  %sub = sub nsw i32 %62, %63
  store i32 %sub, i32* %tmp11, align 4
  %64 = load i32, i32* %tmp1, align 4
  %65 = load i32, i32* %tmp3, align 4
  %add49 = add nsw i32 %64, %65
  store i32 %add49, i32* %tmp13, align 4
  %66 = load i32, i32* %tmp1, align 4
  %67 = load i32, i32* %tmp3, align 4
  %sub50 = sub nsw i32 %66, %67
  %conv51 = sext i32 %sub50 to i64
  %mul52 = mul nsw i64 %conv51, 362
  %shr = ashr i64 %mul52, 8
  %conv53 = trunc i64 %shr to i32
  %68 = load i32, i32* %tmp13, align 4
  %sub54 = sub nsw i32 %conv53, %68
  store i32 %sub54, i32* %tmp12, align 4
  %69 = load i32, i32* %tmp10, align 4
  %70 = load i32, i32* %tmp13, align 4
  %add55 = add nsw i32 %69, %70
  store i32 %add55, i32* %tmp0, align 4
  %71 = load i32, i32* %tmp10, align 4
  %72 = load i32, i32* %tmp13, align 4
  %sub56 = sub nsw i32 %71, %72
  store i32 %sub56, i32* %tmp3, align 4
  %73 = load i32, i32* %tmp11, align 4
  %74 = load i32, i32* %tmp12, align 4
  %add57 = add nsw i32 %73, %74
  store i32 %add57, i32* %tmp1, align 4
  %75 = load i32, i32* %tmp11, align 4
  %76 = load i32, i32* %tmp12, align 4
  %sub58 = sub nsw i32 %75, %76
  store i32 %sub58, i32* %tmp2, align 4
  %77 = load i16*, i16** %inptr, align 8
  %arrayidx59 = getelementptr inbounds i16, i16* %77, i64 8
  %78 = load i16, i16* %arrayidx59, align 2
  %conv60 = sext i16 %78 to i32
  %79 = load i32*, i32** %quantptr, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %79, i64 8
  %80 = load i32, i32* %arrayidx61, align 4
  %mul62 = mul nsw i32 %conv60, %80
  store i32 %mul62, i32* %tmp4, align 4
  %81 = load i16*, i16** %inptr, align 8
  %arrayidx63 = getelementptr inbounds i16, i16* %81, i64 24
  %82 = load i16, i16* %arrayidx63, align 2
  %conv64 = sext i16 %82 to i32
  %83 = load i32*, i32** %quantptr, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %83, i64 24
  %84 = load i32, i32* %arrayidx65, align 4
  %mul66 = mul nsw i32 %conv64, %84
  store i32 %mul66, i32* %tmp5, align 4
  %85 = load i16*, i16** %inptr, align 8
  %arrayidx67 = getelementptr inbounds i16, i16* %85, i64 40
  %86 = load i16, i16* %arrayidx67, align 2
  %conv68 = sext i16 %86 to i32
  %87 = load i32*, i32** %quantptr, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %87, i64 40
  %88 = load i32, i32* %arrayidx69, align 4
  %mul70 = mul nsw i32 %conv68, %88
  store i32 %mul70, i32* %tmp6, align 4
  %89 = load i16*, i16** %inptr, align 8
  %arrayidx71 = getelementptr inbounds i16, i16* %89, i64 56
  %90 = load i16, i16* %arrayidx71, align 2
  %conv72 = sext i16 %90 to i32
  %91 = load i32*, i32** %quantptr, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %91, i64 56
  %92 = load i32, i32* %arrayidx73, align 4
  %mul74 = mul nsw i32 %conv72, %92
  store i32 %mul74, i32* %tmp7, align 4
  %93 = load i32, i32* %tmp6, align 4
  %94 = load i32, i32* %tmp5, align 4
  %add75 = add nsw i32 %93, %94
  store i32 %add75, i32* %z13, align 4
  %95 = load i32, i32* %tmp6, align 4
  %96 = load i32, i32* %tmp5, align 4
  %sub76 = sub nsw i32 %95, %96
  store i32 %sub76, i32* %z10, align 4
  %97 = load i32, i32* %tmp4, align 4
  %98 = load i32, i32* %tmp7, align 4
  %add77 = add nsw i32 %97, %98
  store i32 %add77, i32* %z11, align 4
  %99 = load i32, i32* %tmp4, align 4
  %100 = load i32, i32* %tmp7, align 4
  %sub78 = sub nsw i32 %99, %100
  store i32 %sub78, i32* %z12, align 4
  %101 = load i32, i32* %z11, align 4
  %102 = load i32, i32* %z13, align 4
  %add79 = add nsw i32 %101, %102
  store i32 %add79, i32* %tmp7, align 4
  %103 = load i32, i32* %z11, align 4
  %104 = load i32, i32* %z13, align 4
  %sub80 = sub nsw i32 %103, %104
  %conv81 = sext i32 %sub80 to i64
  %mul82 = mul nsw i64 %conv81, 362
  %shr83 = ashr i64 %mul82, 8
  %conv84 = trunc i64 %shr83 to i32
  store i32 %conv84, i32* %tmp11, align 4
  %105 = load i32, i32* %z10, align 4
  %106 = load i32, i32* %z12, align 4
  %add85 = add nsw i32 %105, %106
  %conv86 = sext i32 %add85 to i64
  %mul87 = mul nsw i64 %conv86, 473
  %shr88 = ashr i64 %mul87, 8
  %conv89 = trunc i64 %shr88 to i32
  store i32 %conv89, i32* %z5, align 4
  %107 = load i32, i32* %z12, align 4
  %conv90 = sext i32 %107 to i64
  %mul91 = mul nsw i64 %conv90, 277
  %shr92 = ashr i64 %mul91, 8
  %conv93 = trunc i64 %shr92 to i32
  %108 = load i32, i32* %z5, align 4
  %sub94 = sub nsw i32 %conv93, %108
  store i32 %sub94, i32* %tmp10, align 4
  %109 = load i32, i32* %z10, align 4
  %conv95 = sext i32 %109 to i64
  %mul96 = mul nsw i64 %conv95, -669
  %shr97 = ashr i64 %mul96, 8
  %conv98 = trunc i64 %shr97 to i32
  %110 = load i32, i32* %z5, align 4
  %add99 = add nsw i32 %conv98, %110
  store i32 %add99, i32* %tmp12, align 4
  %111 = load i32, i32* %tmp12, align 4
  %112 = load i32, i32* %tmp7, align 4
  %sub100 = sub nsw i32 %111, %112
  store i32 %sub100, i32* %tmp6, align 4
  %113 = load i32, i32* %tmp11, align 4
  %114 = load i32, i32* %tmp6, align 4
  %sub101 = sub nsw i32 %113, %114
  store i32 %sub101, i32* %tmp5, align 4
  %115 = load i32, i32* %tmp10, align 4
  %116 = load i32, i32* %tmp5, align 4
  %add102 = add nsw i32 %115, %116
  store i32 %add102, i32* %tmp4, align 4
  %117 = load i32, i32* %tmp0, align 4
  %118 = load i32, i32* %tmp7, align 4
  %add103 = add nsw i32 %117, %118
  %119 = load i32*, i32** %wsptr, align 8
  %arrayidx104 = getelementptr inbounds i32, i32* %119, i64 0
  store i32 %add103, i32* %arrayidx104, align 4
  %120 = load i32, i32* %tmp0, align 4
  %121 = load i32, i32* %tmp7, align 4
  %sub105 = sub nsw i32 %120, %121
  %122 = load i32*, i32** %wsptr, align 8
  %arrayidx106 = getelementptr inbounds i32, i32* %122, i64 56
  store i32 %sub105, i32* %arrayidx106, align 4
  %123 = load i32, i32* %tmp1, align 4
  %124 = load i32, i32* %tmp6, align 4
  %add107 = add nsw i32 %123, %124
  %125 = load i32*, i32** %wsptr, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %125, i64 8
  store i32 %add107, i32* %arrayidx108, align 4
  %126 = load i32, i32* %tmp1, align 4
  %127 = load i32, i32* %tmp6, align 4
  %sub109 = sub nsw i32 %126, %127
  %128 = load i32*, i32** %wsptr, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %128, i64 48
  store i32 %sub109, i32* %arrayidx110, align 4
  %129 = load i32, i32* %tmp2, align 4
  %130 = load i32, i32* %tmp5, align 4
  %add111 = add nsw i32 %129, %130
  %131 = load i32*, i32** %wsptr, align 8
  %arrayidx112 = getelementptr inbounds i32, i32* %131, i64 16
  store i32 %add111, i32* %arrayidx112, align 4
  %132 = load i32, i32* %tmp2, align 4
  %133 = load i32, i32* %tmp5, align 4
  %sub113 = sub nsw i32 %132, %133
  %134 = load i32*, i32** %wsptr, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %134, i64 40
  store i32 %sub113, i32* %arrayidx114, align 4
  %135 = load i32, i32* %tmp3, align 4
  %136 = load i32, i32* %tmp4, align 4
  %add115 = add nsw i32 %135, %136
  %137 = load i32*, i32** %wsptr, align 8
  %arrayidx116 = getelementptr inbounds i32, i32* %137, i64 32
  store i32 %add115, i32* %arrayidx116, align 4
  %138 = load i32, i32* %tmp3, align 4
  %139 = load i32, i32* %tmp4, align 4
  %sub117 = sub nsw i32 %138, %139
  %140 = load i32*, i32** %wsptr, align 8
  %arrayidx118 = getelementptr inbounds i32, i32* %140, i64 24
  store i32 %sub117, i32* %arrayidx118, align 4
  %141 = load i16*, i16** %inptr, align 8
  %incdec.ptr119 = getelementptr inbounds i16, i16* %141, i32 1
  store i16* %incdec.ptr119, i16** %inptr, align 8
  %142 = load i32*, i32** %quantptr, align 8
  %incdec.ptr120 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %incdec.ptr120, i32** %quantptr, align 8
  %143 = load i32*, i32** %wsptr, align 8
  %incdec.ptr121 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %incdec.ptr121, i32** %wsptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %144 = load i32, i32* %ctr, align 4
  %dec = add nsw i32 %144, -1
  store i32 %dec, i32* %ctr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay122 = getelementptr inbounds [64 x i32], [64 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay122, i32** %wsptr, align 8
  store i32 0, i32* %ctr, align 4
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.266, %for.end
  %145 = load i32, i32* %ctr, align 4
  %cmp124 = icmp slt i32 %145, 8
  br i1 %cmp124, label %for.body.126, label %for.end.267

for.body.126:                                     ; preds = %for.cond.123
  %146 = load i32, i32* %ctr, align 4
  %idxprom = sext i32 %146 to i64
  %147 = load i8**, i8*** %output_buf.addr, align 8
  %arrayidx127 = getelementptr inbounds i8*, i8** %147, i64 %idxprom
  %148 = load i8*, i8** %arrayidx127, align 8
  %149 = load i32, i32* %output_col.addr, align 4
  %idx.ext = zext i32 %149 to i64
  %add.ptr128 = getelementptr inbounds i8, i8* %148, i64 %idx.ext
  store i8* %add.ptr128, i8** %outptr, align 8
  %150 = load i32*, i32** %wsptr, align 8
  %arrayidx129 = getelementptr inbounds i32, i32* %150, i64 1
  %151 = load i32, i32* %arrayidx129, align 4
  %152 = load i32*, i32** %wsptr, align 8
  %arrayidx130 = getelementptr inbounds i32, i32* %152, i64 2
  %153 = load i32, i32* %arrayidx130, align 4
  %or131 = or i32 %151, %153
  %154 = load i32*, i32** %wsptr, align 8
  %arrayidx132 = getelementptr inbounds i32, i32* %154, i64 3
  %155 = load i32, i32* %arrayidx132, align 4
  %or133 = or i32 %or131, %155
  %156 = load i32*, i32** %wsptr, align 8
  %arrayidx134 = getelementptr inbounds i32, i32* %156, i64 4
  %157 = load i32, i32* %arrayidx134, align 4
  %or135 = or i32 %or133, %157
  %158 = load i32*, i32** %wsptr, align 8
  %arrayidx136 = getelementptr inbounds i32, i32* %158, i64 5
  %159 = load i32, i32* %arrayidx136, align 4
  %or137 = or i32 %or135, %159
  %160 = load i32*, i32** %wsptr, align 8
  %arrayidx138 = getelementptr inbounds i32, i32* %160, i64 6
  %161 = load i32, i32* %arrayidx138, align 4
  %or139 = or i32 %or137, %161
  %162 = load i32*, i32** %wsptr, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %162, i64 7
  %163 = load i32, i32* %arrayidx140, align 4
  %or141 = or i32 %or139, %163
  %cmp142 = icmp eq i32 %or141, 0
  br i1 %cmp142, label %if.then.144, label %if.end.159

if.then.144:                                      ; preds = %for.body.126
  %164 = load i32*, i32** %wsptr, align 8
  %arrayidx146 = getelementptr inbounds i32, i32* %164, i64 0
  %165 = load i32, i32* %arrayidx146, align 4
  %shr147 = ashr i32 %165, 5
  %and = and i32 %shr147, 1023
  %idxprom148 = sext i32 %and to i64
  %166 = load i8*, i8** %range_limit, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %166, i64 %idxprom148
  %167 = load i8, i8* %arrayidx149, align 1
  store i8 %167, i8* %dcval145, align 1
  %168 = load i8, i8* %dcval145, align 1
  %169 = load i8*, i8** %outptr, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %169, i64 0
  store i8 %168, i8* %arrayidx150, align 1
  %170 = load i8, i8* %dcval145, align 1
  %171 = load i8*, i8** %outptr, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %171, i64 1
  store i8 %170, i8* %arrayidx151, align 1
  %172 = load i8, i8* %dcval145, align 1
  %173 = load i8*, i8** %outptr, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %173, i64 2
  store i8 %172, i8* %arrayidx152, align 1
  %174 = load i8, i8* %dcval145, align 1
  %175 = load i8*, i8** %outptr, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %175, i64 3
  store i8 %174, i8* %arrayidx153, align 1
  %176 = load i8, i8* %dcval145, align 1
  %177 = load i8*, i8** %outptr, align 8
  %arrayidx154 = getelementptr inbounds i8, i8* %177, i64 4
  store i8 %176, i8* %arrayidx154, align 1
  %178 = load i8, i8* %dcval145, align 1
  %179 = load i8*, i8** %outptr, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %179, i64 5
  store i8 %178, i8* %arrayidx155, align 1
  %180 = load i8, i8* %dcval145, align 1
  %181 = load i8*, i8** %outptr, align 8
  %arrayidx156 = getelementptr inbounds i8, i8* %181, i64 6
  store i8 %180, i8* %arrayidx156, align 1
  %182 = load i8, i8* %dcval145, align 1
  %183 = load i8*, i8** %outptr, align 8
  %arrayidx157 = getelementptr inbounds i8, i8* %183, i64 7
  store i8 %182, i8* %arrayidx157, align 1
  %184 = load i32*, i32** %wsptr, align 8
  %add.ptr158 = getelementptr inbounds i32, i32* %184, i64 8
  store i32* %add.ptr158, i32** %wsptr, align 8
  br label %for.inc.266

if.end.159:                                       ; preds = %for.body.126
  %185 = load i32*, i32** %wsptr, align 8
  %arrayidx160 = getelementptr inbounds i32, i32* %185, i64 0
  %186 = load i32, i32* %arrayidx160, align 4
  %187 = load i32*, i32** %wsptr, align 8
  %arrayidx161 = getelementptr inbounds i32, i32* %187, i64 4
  %188 = load i32, i32* %arrayidx161, align 4
  %add162 = add nsw i32 %186, %188
  store i32 %add162, i32* %tmp10, align 4
  %189 = load i32*, i32** %wsptr, align 8
  %arrayidx163 = getelementptr inbounds i32, i32* %189, i64 0
  %190 = load i32, i32* %arrayidx163, align 4
  %191 = load i32*, i32** %wsptr, align 8
  %arrayidx164 = getelementptr inbounds i32, i32* %191, i64 4
  %192 = load i32, i32* %arrayidx164, align 4
  %sub165 = sub nsw i32 %190, %192
  store i32 %sub165, i32* %tmp11, align 4
  %193 = load i32*, i32** %wsptr, align 8
  %arrayidx166 = getelementptr inbounds i32, i32* %193, i64 2
  %194 = load i32, i32* %arrayidx166, align 4
  %195 = load i32*, i32** %wsptr, align 8
  %arrayidx167 = getelementptr inbounds i32, i32* %195, i64 6
  %196 = load i32, i32* %arrayidx167, align 4
  %add168 = add nsw i32 %194, %196
  store i32 %add168, i32* %tmp13, align 4
  %197 = load i32*, i32** %wsptr, align 8
  %arrayidx169 = getelementptr inbounds i32, i32* %197, i64 2
  %198 = load i32, i32* %arrayidx169, align 4
  %199 = load i32*, i32** %wsptr, align 8
  %arrayidx170 = getelementptr inbounds i32, i32* %199, i64 6
  %200 = load i32, i32* %arrayidx170, align 4
  %sub171 = sub nsw i32 %198, %200
  %conv172 = sext i32 %sub171 to i64
  %mul173 = mul nsw i64 %conv172, 362
  %shr174 = ashr i64 %mul173, 8
  %conv175 = trunc i64 %shr174 to i32
  %201 = load i32, i32* %tmp13, align 4
  %sub176 = sub nsw i32 %conv175, %201
  store i32 %sub176, i32* %tmp12, align 4
  %202 = load i32, i32* %tmp10, align 4
  %203 = load i32, i32* %tmp13, align 4
  %add177 = add nsw i32 %202, %203
  store i32 %add177, i32* %tmp0, align 4
  %204 = load i32, i32* %tmp10, align 4
  %205 = load i32, i32* %tmp13, align 4
  %sub178 = sub nsw i32 %204, %205
  store i32 %sub178, i32* %tmp3, align 4
  %206 = load i32, i32* %tmp11, align 4
  %207 = load i32, i32* %tmp12, align 4
  %add179 = add nsw i32 %206, %207
  store i32 %add179, i32* %tmp1, align 4
  %208 = load i32, i32* %tmp11, align 4
  %209 = load i32, i32* %tmp12, align 4
  %sub180 = sub nsw i32 %208, %209
  store i32 %sub180, i32* %tmp2, align 4
  %210 = load i32*, i32** %wsptr, align 8
  %arrayidx181 = getelementptr inbounds i32, i32* %210, i64 5
  %211 = load i32, i32* %arrayidx181, align 4
  %212 = load i32*, i32** %wsptr, align 8
  %arrayidx182 = getelementptr inbounds i32, i32* %212, i64 3
  %213 = load i32, i32* %arrayidx182, align 4
  %add183 = add nsw i32 %211, %213
  store i32 %add183, i32* %z13, align 4
  %214 = load i32*, i32** %wsptr, align 8
  %arrayidx184 = getelementptr inbounds i32, i32* %214, i64 5
  %215 = load i32, i32* %arrayidx184, align 4
  %216 = load i32*, i32** %wsptr, align 8
  %arrayidx185 = getelementptr inbounds i32, i32* %216, i64 3
  %217 = load i32, i32* %arrayidx185, align 4
  %sub186 = sub nsw i32 %215, %217
  store i32 %sub186, i32* %z10, align 4
  %218 = load i32*, i32** %wsptr, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %218, i64 1
  %219 = load i32, i32* %arrayidx187, align 4
  %220 = load i32*, i32** %wsptr, align 8
  %arrayidx188 = getelementptr inbounds i32, i32* %220, i64 7
  %221 = load i32, i32* %arrayidx188, align 4
  %add189 = add nsw i32 %219, %221
  store i32 %add189, i32* %z11, align 4
  %222 = load i32*, i32** %wsptr, align 8
  %arrayidx190 = getelementptr inbounds i32, i32* %222, i64 1
  %223 = load i32, i32* %arrayidx190, align 4
  %224 = load i32*, i32** %wsptr, align 8
  %arrayidx191 = getelementptr inbounds i32, i32* %224, i64 7
  %225 = load i32, i32* %arrayidx191, align 4
  %sub192 = sub nsw i32 %223, %225
  store i32 %sub192, i32* %z12, align 4
  %226 = load i32, i32* %z11, align 4
  %227 = load i32, i32* %z13, align 4
  %add193 = add nsw i32 %226, %227
  store i32 %add193, i32* %tmp7, align 4
  %228 = load i32, i32* %z11, align 4
  %229 = load i32, i32* %z13, align 4
  %sub194 = sub nsw i32 %228, %229
  %conv195 = sext i32 %sub194 to i64
  %mul196 = mul nsw i64 %conv195, 362
  %shr197 = ashr i64 %mul196, 8
  %conv198 = trunc i64 %shr197 to i32
  store i32 %conv198, i32* %tmp11, align 4
  %230 = load i32, i32* %z10, align 4
  %231 = load i32, i32* %z12, align 4
  %add199 = add nsw i32 %230, %231
  %conv200 = sext i32 %add199 to i64
  %mul201 = mul nsw i64 %conv200, 473
  %shr202 = ashr i64 %mul201, 8
  %conv203 = trunc i64 %shr202 to i32
  store i32 %conv203, i32* %z5, align 4
  %232 = load i32, i32* %z12, align 4
  %conv204 = sext i32 %232 to i64
  %mul205 = mul nsw i64 %conv204, 277
  %shr206 = ashr i64 %mul205, 8
  %conv207 = trunc i64 %shr206 to i32
  %233 = load i32, i32* %z5, align 4
  %sub208 = sub nsw i32 %conv207, %233
  store i32 %sub208, i32* %tmp10, align 4
  %234 = load i32, i32* %z10, align 4
  %conv209 = sext i32 %234 to i64
  %mul210 = mul nsw i64 %conv209, -669
  %shr211 = ashr i64 %mul210, 8
  %conv212 = trunc i64 %shr211 to i32
  %235 = load i32, i32* %z5, align 4
  %add213 = add nsw i32 %conv212, %235
  store i32 %add213, i32* %tmp12, align 4
  %236 = load i32, i32* %tmp12, align 4
  %237 = load i32, i32* %tmp7, align 4
  %sub214 = sub nsw i32 %236, %237
  store i32 %sub214, i32* %tmp6, align 4
  %238 = load i32, i32* %tmp11, align 4
  %239 = load i32, i32* %tmp6, align 4
  %sub215 = sub nsw i32 %238, %239
  store i32 %sub215, i32* %tmp5, align 4
  %240 = load i32, i32* %tmp10, align 4
  %241 = load i32, i32* %tmp5, align 4
  %add216 = add nsw i32 %240, %241
  store i32 %add216, i32* %tmp4, align 4
  %242 = load i32, i32* %tmp0, align 4
  %243 = load i32, i32* %tmp7, align 4
  %add217 = add nsw i32 %242, %243
  %shr218 = ashr i32 %add217, 5
  %and219 = and i32 %shr218, 1023
  %idxprom220 = sext i32 %and219 to i64
  %244 = load i8*, i8** %range_limit, align 8
  %arrayidx221 = getelementptr inbounds i8, i8* %244, i64 %idxprom220
  %245 = load i8, i8* %arrayidx221, align 1
  %246 = load i8*, i8** %outptr, align 8
  %arrayidx222 = getelementptr inbounds i8, i8* %246, i64 0
  store i8 %245, i8* %arrayidx222, align 1
  %247 = load i32, i32* %tmp0, align 4
  %248 = load i32, i32* %tmp7, align 4
  %sub223 = sub nsw i32 %247, %248
  %shr224 = ashr i32 %sub223, 5
  %and225 = and i32 %shr224, 1023
  %idxprom226 = sext i32 %and225 to i64
  %249 = load i8*, i8** %range_limit, align 8
  %arrayidx227 = getelementptr inbounds i8, i8* %249, i64 %idxprom226
  %250 = load i8, i8* %arrayidx227, align 1
  %251 = load i8*, i8** %outptr, align 8
  %arrayidx228 = getelementptr inbounds i8, i8* %251, i64 7
  store i8 %250, i8* %arrayidx228, align 1
  %252 = load i32, i32* %tmp1, align 4
  %253 = load i32, i32* %tmp6, align 4
  %add229 = add nsw i32 %252, %253
  %shr230 = ashr i32 %add229, 5
  %and231 = and i32 %shr230, 1023
  %idxprom232 = sext i32 %and231 to i64
  %254 = load i8*, i8** %range_limit, align 8
  %arrayidx233 = getelementptr inbounds i8, i8* %254, i64 %idxprom232
  %255 = load i8, i8* %arrayidx233, align 1
  %256 = load i8*, i8** %outptr, align 8
  %arrayidx234 = getelementptr inbounds i8, i8* %256, i64 1
  store i8 %255, i8* %arrayidx234, align 1
  %257 = load i32, i32* %tmp1, align 4
  %258 = load i32, i32* %tmp6, align 4
  %sub235 = sub nsw i32 %257, %258
  %shr236 = ashr i32 %sub235, 5
  %and237 = and i32 %shr236, 1023
  %idxprom238 = sext i32 %and237 to i64
  %259 = load i8*, i8** %range_limit, align 8
  %arrayidx239 = getelementptr inbounds i8, i8* %259, i64 %idxprom238
  %260 = load i8, i8* %arrayidx239, align 1
  %261 = load i8*, i8** %outptr, align 8
  %arrayidx240 = getelementptr inbounds i8, i8* %261, i64 6
  store i8 %260, i8* %arrayidx240, align 1
  %262 = load i32, i32* %tmp2, align 4
  %263 = load i32, i32* %tmp5, align 4
  %add241 = add nsw i32 %262, %263
  %shr242 = ashr i32 %add241, 5
  %and243 = and i32 %shr242, 1023
  %idxprom244 = sext i32 %and243 to i64
  %264 = load i8*, i8** %range_limit, align 8
  %arrayidx245 = getelementptr inbounds i8, i8* %264, i64 %idxprom244
  %265 = load i8, i8* %arrayidx245, align 1
  %266 = load i8*, i8** %outptr, align 8
  %arrayidx246 = getelementptr inbounds i8, i8* %266, i64 2
  store i8 %265, i8* %arrayidx246, align 1
  %267 = load i32, i32* %tmp2, align 4
  %268 = load i32, i32* %tmp5, align 4
  %sub247 = sub nsw i32 %267, %268
  %shr248 = ashr i32 %sub247, 5
  %and249 = and i32 %shr248, 1023
  %idxprom250 = sext i32 %and249 to i64
  %269 = load i8*, i8** %range_limit, align 8
  %arrayidx251 = getelementptr inbounds i8, i8* %269, i64 %idxprom250
  %270 = load i8, i8* %arrayidx251, align 1
  %271 = load i8*, i8** %outptr, align 8
  %arrayidx252 = getelementptr inbounds i8, i8* %271, i64 5
  store i8 %270, i8* %arrayidx252, align 1
  %272 = load i32, i32* %tmp3, align 4
  %273 = load i32, i32* %tmp4, align 4
  %add253 = add nsw i32 %272, %273
  %shr254 = ashr i32 %add253, 5
  %and255 = and i32 %shr254, 1023
  %idxprom256 = sext i32 %and255 to i64
  %274 = load i8*, i8** %range_limit, align 8
  %arrayidx257 = getelementptr inbounds i8, i8* %274, i64 %idxprom256
  %275 = load i8, i8* %arrayidx257, align 1
  %276 = load i8*, i8** %outptr, align 8
  %arrayidx258 = getelementptr inbounds i8, i8* %276, i64 4
  store i8 %275, i8* %arrayidx258, align 1
  %277 = load i32, i32* %tmp3, align 4
  %278 = load i32, i32* %tmp4, align 4
  %sub259 = sub nsw i32 %277, %278
  %shr260 = ashr i32 %sub259, 5
  %and261 = and i32 %shr260, 1023
  %idxprom262 = sext i32 %and261 to i64
  %279 = load i8*, i8** %range_limit, align 8
  %arrayidx263 = getelementptr inbounds i8, i8* %279, i64 %idxprom262
  %280 = load i8, i8* %arrayidx263, align 1
  %281 = load i8*, i8** %outptr, align 8
  %arrayidx264 = getelementptr inbounds i8, i8* %281, i64 3
  store i8 %280, i8* %arrayidx264, align 1
  %282 = load i32*, i32** %wsptr, align 8
  %add.ptr265 = getelementptr inbounds i32, i32* %282, i64 8
  store i32* %add.ptr265, i32** %wsptr, align 8
  br label %for.inc.266

for.inc.266:                                      ; preds = %if.end.159, %if.then.144
  %283 = load i32, i32* %ctr, align 4
  %inc = add nsw i32 %283, 1
  store i32 %inc, i32* %ctr, align 4
  br label %for.cond.123

for.end.267:                                      ; preds = %for.cond.123
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
