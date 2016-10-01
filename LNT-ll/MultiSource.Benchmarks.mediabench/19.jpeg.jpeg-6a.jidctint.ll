; ModuleID = './MultiSource.Benchmarks.mediabench/19.jpeg.jpeg-6a.jidctint.bc'
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
  %z4 = alloca i64, align 8
  %z5 = alloca i64, align 8
  %inptr = alloca i16*, align 8
  %quantptr = alloca i32*, align 8
  %wsptr = alloca i32*, align 8
  %outptr = alloca i8*, align 8
  %range_limit = alloca i8*, align 8
  %ctr = alloca i32, align 4
  %workspace = alloca [64 x i32], align 16
  %dcval = alloca i32, align 4
  %dcval174 = alloca i8, align 1
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
  %shl = shl i32 %mul, 2
  store i32 %shl, i32* %dcval, align 4
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
  %arrayidx33 = getelementptr inbounds i16, i16* %44, i64 16
  %45 = load i16, i16* %arrayidx33, align 2
  %conv34 = sext i16 %45 to i32
  %46 = load i32*, i32** %quantptr, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %46, i64 16
  %47 = load i32, i32* %arrayidx35, align 4
  %mul36 = mul nsw i32 %conv34, %47
  %conv37 = sext i32 %mul36 to i64
  store i64 %conv37, i64* %z2, align 8
  %48 = load i16*, i16** %inptr, align 8
  %arrayidx38 = getelementptr inbounds i16, i16* %48, i64 48
  %49 = load i16, i16* %arrayidx38, align 2
  %conv39 = sext i16 %49 to i32
  %50 = load i32*, i32** %quantptr, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %50, i64 48
  %51 = load i32, i32* %arrayidx40, align 4
  %mul41 = mul nsw i32 %conv39, %51
  %conv42 = sext i32 %mul41 to i64
  store i64 %conv42, i64* %z3, align 8
  %52 = load i64, i64* %z2, align 8
  %53 = load i64, i64* %z3, align 8
  %add = add nsw i64 %52, %53
  %mul43 = mul nsw i64 %add, 4433
  store i64 %mul43, i64* %z1, align 8
  %54 = load i64, i64* %z1, align 8
  %55 = load i64, i64* %z3, align 8
  %mul44 = mul nsw i64 %55, -15137
  %add45 = add nsw i64 %54, %mul44
  store i64 %add45, i64* %tmp2, align 8
  %56 = load i64, i64* %z1, align 8
  %57 = load i64, i64* %z2, align 8
  %mul46 = mul nsw i64 %57, 6270
  %add47 = add nsw i64 %56, %mul46
  store i64 %add47, i64* %tmp3, align 8
  %58 = load i16*, i16** %inptr, align 8
  %arrayidx48 = getelementptr inbounds i16, i16* %58, i64 0
  %59 = load i16, i16* %arrayidx48, align 2
  %conv49 = sext i16 %59 to i32
  %60 = load i32*, i32** %quantptr, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %60, i64 0
  %61 = load i32, i32* %arrayidx50, align 4
  %mul51 = mul nsw i32 %conv49, %61
  %conv52 = sext i32 %mul51 to i64
  store i64 %conv52, i64* %z2, align 8
  %62 = load i16*, i16** %inptr, align 8
  %arrayidx53 = getelementptr inbounds i16, i16* %62, i64 32
  %63 = load i16, i16* %arrayidx53, align 2
  %conv54 = sext i16 %63 to i32
  %64 = load i32*, i32** %quantptr, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %64, i64 32
  %65 = load i32, i32* %arrayidx55, align 4
  %mul56 = mul nsw i32 %conv54, %65
  %conv57 = sext i32 %mul56 to i64
  store i64 %conv57, i64* %z3, align 8
  %66 = load i64, i64* %z2, align 8
  %67 = load i64, i64* %z3, align 8
  %add58 = add nsw i64 %66, %67
  %shl59 = shl i64 %add58, 13
  store i64 %shl59, i64* %tmp0, align 8
  %68 = load i64, i64* %z2, align 8
  %69 = load i64, i64* %z3, align 8
  %sub = sub nsw i64 %68, %69
  %shl60 = shl i64 %sub, 13
  store i64 %shl60, i64* %tmp1, align 8
  %70 = load i64, i64* %tmp0, align 8
  %71 = load i64, i64* %tmp3, align 8
  %add61 = add nsw i64 %70, %71
  store i64 %add61, i64* %tmp10, align 8
  %72 = load i64, i64* %tmp0, align 8
  %73 = load i64, i64* %tmp3, align 8
  %sub62 = sub nsw i64 %72, %73
  store i64 %sub62, i64* %tmp13, align 8
  %74 = load i64, i64* %tmp1, align 8
  %75 = load i64, i64* %tmp2, align 8
  %add63 = add nsw i64 %74, %75
  store i64 %add63, i64* %tmp11, align 8
  %76 = load i64, i64* %tmp1, align 8
  %77 = load i64, i64* %tmp2, align 8
  %sub64 = sub nsw i64 %76, %77
  store i64 %sub64, i64* %tmp12, align 8
  %78 = load i16*, i16** %inptr, align 8
  %arrayidx65 = getelementptr inbounds i16, i16* %78, i64 56
  %79 = load i16, i16* %arrayidx65, align 2
  %conv66 = sext i16 %79 to i32
  %80 = load i32*, i32** %quantptr, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %80, i64 56
  %81 = load i32, i32* %arrayidx67, align 4
  %mul68 = mul nsw i32 %conv66, %81
  %conv69 = sext i32 %mul68 to i64
  store i64 %conv69, i64* %tmp0, align 8
  %82 = load i16*, i16** %inptr, align 8
  %arrayidx70 = getelementptr inbounds i16, i16* %82, i64 40
  %83 = load i16, i16* %arrayidx70, align 2
  %conv71 = sext i16 %83 to i32
  %84 = load i32*, i32** %quantptr, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %84, i64 40
  %85 = load i32, i32* %arrayidx72, align 4
  %mul73 = mul nsw i32 %conv71, %85
  %conv74 = sext i32 %mul73 to i64
  store i64 %conv74, i64* %tmp1, align 8
  %86 = load i16*, i16** %inptr, align 8
  %arrayidx75 = getelementptr inbounds i16, i16* %86, i64 24
  %87 = load i16, i16* %arrayidx75, align 2
  %conv76 = sext i16 %87 to i32
  %88 = load i32*, i32** %quantptr, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %88, i64 24
  %89 = load i32, i32* %arrayidx77, align 4
  %mul78 = mul nsw i32 %conv76, %89
  %conv79 = sext i32 %mul78 to i64
  store i64 %conv79, i64* %tmp2, align 8
  %90 = load i16*, i16** %inptr, align 8
  %arrayidx80 = getelementptr inbounds i16, i16* %90, i64 8
  %91 = load i16, i16* %arrayidx80, align 2
  %conv81 = sext i16 %91 to i32
  %92 = load i32*, i32** %quantptr, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %92, i64 8
  %93 = load i32, i32* %arrayidx82, align 4
  %mul83 = mul nsw i32 %conv81, %93
  %conv84 = sext i32 %mul83 to i64
  store i64 %conv84, i64* %tmp3, align 8
  %94 = load i64, i64* %tmp0, align 8
  %95 = load i64, i64* %tmp3, align 8
  %add85 = add nsw i64 %94, %95
  store i64 %add85, i64* %z1, align 8
  %96 = load i64, i64* %tmp1, align 8
  %97 = load i64, i64* %tmp2, align 8
  %add86 = add nsw i64 %96, %97
  store i64 %add86, i64* %z2, align 8
  %98 = load i64, i64* %tmp0, align 8
  %99 = load i64, i64* %tmp2, align 8
  %add87 = add nsw i64 %98, %99
  store i64 %add87, i64* %z3, align 8
  %100 = load i64, i64* %tmp1, align 8
  %101 = load i64, i64* %tmp3, align 8
  %add88 = add nsw i64 %100, %101
  store i64 %add88, i64* %z4, align 8
  %102 = load i64, i64* %z3, align 8
  %103 = load i64, i64* %z4, align 8
  %add89 = add nsw i64 %102, %103
  %mul90 = mul nsw i64 %add89, 9633
  store i64 %mul90, i64* %z5, align 8
  %104 = load i64, i64* %tmp0, align 8
  %mul91 = mul nsw i64 %104, 2446
  store i64 %mul91, i64* %tmp0, align 8
  %105 = load i64, i64* %tmp1, align 8
  %mul92 = mul nsw i64 %105, 16819
  store i64 %mul92, i64* %tmp1, align 8
  %106 = load i64, i64* %tmp2, align 8
  %mul93 = mul nsw i64 %106, 25172
  store i64 %mul93, i64* %tmp2, align 8
  %107 = load i64, i64* %tmp3, align 8
  %mul94 = mul nsw i64 %107, 12299
  store i64 %mul94, i64* %tmp3, align 8
  %108 = load i64, i64* %z1, align 8
  %mul95 = mul nsw i64 %108, -7373
  store i64 %mul95, i64* %z1, align 8
  %109 = load i64, i64* %z2, align 8
  %mul96 = mul nsw i64 %109, -20995
  store i64 %mul96, i64* %z2, align 8
  %110 = load i64, i64* %z3, align 8
  %mul97 = mul nsw i64 %110, -16069
  store i64 %mul97, i64* %z3, align 8
  %111 = load i64, i64* %z4, align 8
  %mul98 = mul nsw i64 %111, -3196
  store i64 %mul98, i64* %z4, align 8
  %112 = load i64, i64* %z5, align 8
  %113 = load i64, i64* %z3, align 8
  %add99 = add nsw i64 %113, %112
  store i64 %add99, i64* %z3, align 8
  %114 = load i64, i64* %z5, align 8
  %115 = load i64, i64* %z4, align 8
  %add100 = add nsw i64 %115, %114
  store i64 %add100, i64* %z4, align 8
  %116 = load i64, i64* %z1, align 8
  %117 = load i64, i64* %z3, align 8
  %add101 = add nsw i64 %116, %117
  %118 = load i64, i64* %tmp0, align 8
  %add102 = add nsw i64 %118, %add101
  store i64 %add102, i64* %tmp0, align 8
  %119 = load i64, i64* %z2, align 8
  %120 = load i64, i64* %z4, align 8
  %add103 = add nsw i64 %119, %120
  %121 = load i64, i64* %tmp1, align 8
  %add104 = add nsw i64 %121, %add103
  store i64 %add104, i64* %tmp1, align 8
  %122 = load i64, i64* %z2, align 8
  %123 = load i64, i64* %z3, align 8
  %add105 = add nsw i64 %122, %123
  %124 = load i64, i64* %tmp2, align 8
  %add106 = add nsw i64 %124, %add105
  store i64 %add106, i64* %tmp2, align 8
  %125 = load i64, i64* %z1, align 8
  %126 = load i64, i64* %z4, align 8
  %add107 = add nsw i64 %125, %126
  %127 = load i64, i64* %tmp3, align 8
  %add108 = add nsw i64 %127, %add107
  store i64 %add108, i64* %tmp3, align 8
  %128 = load i64, i64* %tmp10, align 8
  %129 = load i64, i64* %tmp3, align 8
  %add109 = add nsw i64 %128, %129
  %add110 = add nsw i64 %add109, 1024
  %shr = ashr i64 %add110, 11
  %conv111 = trunc i64 %shr to i32
  %130 = load i32*, i32** %wsptr, align 8
  %arrayidx112 = getelementptr inbounds i32, i32* %130, i64 0
  store i32 %conv111, i32* %arrayidx112, align 4
  %131 = load i64, i64* %tmp10, align 8
  %132 = load i64, i64* %tmp3, align 8
  %sub113 = sub nsw i64 %131, %132
  %add114 = add nsw i64 %sub113, 1024
  %shr115 = ashr i64 %add114, 11
  %conv116 = trunc i64 %shr115 to i32
  %133 = load i32*, i32** %wsptr, align 8
  %arrayidx117 = getelementptr inbounds i32, i32* %133, i64 56
  store i32 %conv116, i32* %arrayidx117, align 4
  %134 = load i64, i64* %tmp11, align 8
  %135 = load i64, i64* %tmp2, align 8
  %add118 = add nsw i64 %134, %135
  %add119 = add nsw i64 %add118, 1024
  %shr120 = ashr i64 %add119, 11
  %conv121 = trunc i64 %shr120 to i32
  %136 = load i32*, i32** %wsptr, align 8
  %arrayidx122 = getelementptr inbounds i32, i32* %136, i64 8
  store i32 %conv121, i32* %arrayidx122, align 4
  %137 = load i64, i64* %tmp11, align 8
  %138 = load i64, i64* %tmp2, align 8
  %sub123 = sub nsw i64 %137, %138
  %add124 = add nsw i64 %sub123, 1024
  %shr125 = ashr i64 %add124, 11
  %conv126 = trunc i64 %shr125 to i32
  %139 = load i32*, i32** %wsptr, align 8
  %arrayidx127 = getelementptr inbounds i32, i32* %139, i64 48
  store i32 %conv126, i32* %arrayidx127, align 4
  %140 = load i64, i64* %tmp12, align 8
  %141 = load i64, i64* %tmp1, align 8
  %add128 = add nsw i64 %140, %141
  %add129 = add nsw i64 %add128, 1024
  %shr130 = ashr i64 %add129, 11
  %conv131 = trunc i64 %shr130 to i32
  %142 = load i32*, i32** %wsptr, align 8
  %arrayidx132 = getelementptr inbounds i32, i32* %142, i64 16
  store i32 %conv131, i32* %arrayidx132, align 4
  %143 = load i64, i64* %tmp12, align 8
  %144 = load i64, i64* %tmp1, align 8
  %sub133 = sub nsw i64 %143, %144
  %add134 = add nsw i64 %sub133, 1024
  %shr135 = ashr i64 %add134, 11
  %conv136 = trunc i64 %shr135 to i32
  %145 = load i32*, i32** %wsptr, align 8
  %arrayidx137 = getelementptr inbounds i32, i32* %145, i64 40
  store i32 %conv136, i32* %arrayidx137, align 4
  %146 = load i64, i64* %tmp13, align 8
  %147 = load i64, i64* %tmp0, align 8
  %add138 = add nsw i64 %146, %147
  %add139 = add nsw i64 %add138, 1024
  %shr140 = ashr i64 %add139, 11
  %conv141 = trunc i64 %shr140 to i32
  %148 = load i32*, i32** %wsptr, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %148, i64 24
  store i32 %conv141, i32* %arrayidx142, align 4
  %149 = load i64, i64* %tmp13, align 8
  %150 = load i64, i64* %tmp0, align 8
  %sub143 = sub nsw i64 %149, %150
  %add144 = add nsw i64 %sub143, 1024
  %shr145 = ashr i64 %add144, 11
  %conv146 = trunc i64 %shr145 to i32
  %151 = load i32*, i32** %wsptr, align 8
  %arrayidx147 = getelementptr inbounds i32, i32* %151, i64 32
  store i32 %conv146, i32* %arrayidx147, align 4
  %152 = load i16*, i16** %inptr, align 8
  %incdec.ptr148 = getelementptr inbounds i16, i16* %152, i32 1
  store i16* %incdec.ptr148, i16** %inptr, align 8
  %153 = load i32*, i32** %quantptr, align 8
  %incdec.ptr149 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %incdec.ptr149, i32** %quantptr, align 8
  %154 = load i32*, i32** %wsptr, align 8
  %incdec.ptr150 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %incdec.ptr150, i32** %wsptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %155 = load i32, i32* %ctr, align 4
  %dec = add nsw i32 %155, -1
  store i32 %dec, i32* %ctr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay151 = getelementptr inbounds [64 x i32], [64 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay151, i32** %wsptr, align 8
  store i32 0, i32* %ctr, align 4
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.315, %for.end
  %156 = load i32, i32* %ctr, align 4
  %cmp153 = icmp slt i32 %156, 8
  br i1 %cmp153, label %for.body.155, label %for.end.316

for.body.155:                                     ; preds = %for.cond.152
  %157 = load i32, i32* %ctr, align 4
  %idxprom = sext i32 %157 to i64
  %158 = load i8**, i8*** %output_buf.addr, align 8
  %arrayidx156 = getelementptr inbounds i8*, i8** %158, i64 %idxprom
  %159 = load i8*, i8** %arrayidx156, align 8
  %160 = load i32, i32* %output_col.addr, align 4
  %idx.ext = zext i32 %160 to i64
  %add.ptr157 = getelementptr inbounds i8, i8* %159, i64 %idx.ext
  store i8* %add.ptr157, i8** %outptr, align 8
  %161 = load i32*, i32** %wsptr, align 8
  %arrayidx158 = getelementptr inbounds i32, i32* %161, i64 1
  %162 = load i32, i32* %arrayidx158, align 4
  %163 = load i32*, i32** %wsptr, align 8
  %arrayidx159 = getelementptr inbounds i32, i32* %163, i64 2
  %164 = load i32, i32* %arrayidx159, align 4
  %or160 = or i32 %162, %164
  %165 = load i32*, i32** %wsptr, align 8
  %arrayidx161 = getelementptr inbounds i32, i32* %165, i64 3
  %166 = load i32, i32* %arrayidx161, align 4
  %or162 = or i32 %or160, %166
  %167 = load i32*, i32** %wsptr, align 8
  %arrayidx163 = getelementptr inbounds i32, i32* %167, i64 4
  %168 = load i32, i32* %arrayidx163, align 4
  %or164 = or i32 %or162, %168
  %169 = load i32*, i32** %wsptr, align 8
  %arrayidx165 = getelementptr inbounds i32, i32* %169, i64 5
  %170 = load i32, i32* %arrayidx165, align 4
  %or166 = or i32 %or164, %170
  %171 = load i32*, i32** %wsptr, align 8
  %arrayidx167 = getelementptr inbounds i32, i32* %171, i64 6
  %172 = load i32, i32* %arrayidx167, align 4
  %or168 = or i32 %or166, %172
  %173 = load i32*, i32** %wsptr, align 8
  %arrayidx169 = getelementptr inbounds i32, i32* %173, i64 7
  %174 = load i32, i32* %arrayidx169, align 4
  %or170 = or i32 %or168, %174
  %cmp171 = icmp eq i32 %or170, 0
  br i1 %cmp171, label %if.then.173, label %if.end.191

if.then.173:                                      ; preds = %for.body.155
  %175 = load i32*, i32** %wsptr, align 8
  %arrayidx175 = getelementptr inbounds i32, i32* %175, i64 0
  %176 = load i32, i32* %arrayidx175, align 4
  %conv176 = sext i32 %176 to i64
  %add177 = add nsw i64 %conv176, 16
  %shr178 = ashr i64 %add177, 5
  %conv179 = trunc i64 %shr178 to i32
  %and = and i32 %conv179, 1023
  %idxprom180 = sext i32 %and to i64
  %177 = load i8*, i8** %range_limit, align 8
  %arrayidx181 = getelementptr inbounds i8, i8* %177, i64 %idxprom180
  %178 = load i8, i8* %arrayidx181, align 1
  store i8 %178, i8* %dcval174, align 1
  %179 = load i8, i8* %dcval174, align 1
  %180 = load i8*, i8** %outptr, align 8
  %arrayidx182 = getelementptr inbounds i8, i8* %180, i64 0
  store i8 %179, i8* %arrayidx182, align 1
  %181 = load i8, i8* %dcval174, align 1
  %182 = load i8*, i8** %outptr, align 8
  %arrayidx183 = getelementptr inbounds i8, i8* %182, i64 1
  store i8 %181, i8* %arrayidx183, align 1
  %183 = load i8, i8* %dcval174, align 1
  %184 = load i8*, i8** %outptr, align 8
  %arrayidx184 = getelementptr inbounds i8, i8* %184, i64 2
  store i8 %183, i8* %arrayidx184, align 1
  %185 = load i8, i8* %dcval174, align 1
  %186 = load i8*, i8** %outptr, align 8
  %arrayidx185 = getelementptr inbounds i8, i8* %186, i64 3
  store i8 %185, i8* %arrayidx185, align 1
  %187 = load i8, i8* %dcval174, align 1
  %188 = load i8*, i8** %outptr, align 8
  %arrayidx186 = getelementptr inbounds i8, i8* %188, i64 4
  store i8 %187, i8* %arrayidx186, align 1
  %189 = load i8, i8* %dcval174, align 1
  %190 = load i8*, i8** %outptr, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %190, i64 5
  store i8 %189, i8* %arrayidx187, align 1
  %191 = load i8, i8* %dcval174, align 1
  %192 = load i8*, i8** %outptr, align 8
  %arrayidx188 = getelementptr inbounds i8, i8* %192, i64 6
  store i8 %191, i8* %arrayidx188, align 1
  %193 = load i8, i8* %dcval174, align 1
  %194 = load i8*, i8** %outptr, align 8
  %arrayidx189 = getelementptr inbounds i8, i8* %194, i64 7
  store i8 %193, i8* %arrayidx189, align 1
  %195 = load i32*, i32** %wsptr, align 8
  %add.ptr190 = getelementptr inbounds i32, i32* %195, i64 8
  store i32* %add.ptr190, i32** %wsptr, align 8
  br label %for.inc.315

if.end.191:                                       ; preds = %for.body.155
  %196 = load i32*, i32** %wsptr, align 8
  %arrayidx192 = getelementptr inbounds i32, i32* %196, i64 2
  %197 = load i32, i32* %arrayidx192, align 4
  %conv193 = sext i32 %197 to i64
  store i64 %conv193, i64* %z2, align 8
  %198 = load i32*, i32** %wsptr, align 8
  %arrayidx194 = getelementptr inbounds i32, i32* %198, i64 6
  %199 = load i32, i32* %arrayidx194, align 4
  %conv195 = sext i32 %199 to i64
  store i64 %conv195, i64* %z3, align 8
  %200 = load i64, i64* %z2, align 8
  %201 = load i64, i64* %z3, align 8
  %add196 = add nsw i64 %200, %201
  %mul197 = mul nsw i64 %add196, 4433
  store i64 %mul197, i64* %z1, align 8
  %202 = load i64, i64* %z1, align 8
  %203 = load i64, i64* %z3, align 8
  %mul198 = mul nsw i64 %203, -15137
  %add199 = add nsw i64 %202, %mul198
  store i64 %add199, i64* %tmp2, align 8
  %204 = load i64, i64* %z1, align 8
  %205 = load i64, i64* %z2, align 8
  %mul200 = mul nsw i64 %205, 6270
  %add201 = add nsw i64 %204, %mul200
  store i64 %add201, i64* %tmp3, align 8
  %206 = load i32*, i32** %wsptr, align 8
  %arrayidx202 = getelementptr inbounds i32, i32* %206, i64 0
  %207 = load i32, i32* %arrayidx202, align 4
  %conv203 = sext i32 %207 to i64
  %208 = load i32*, i32** %wsptr, align 8
  %arrayidx204 = getelementptr inbounds i32, i32* %208, i64 4
  %209 = load i32, i32* %arrayidx204, align 4
  %conv205 = sext i32 %209 to i64
  %add206 = add nsw i64 %conv203, %conv205
  %shl207 = shl i64 %add206, 13
  store i64 %shl207, i64* %tmp0, align 8
  %210 = load i32*, i32** %wsptr, align 8
  %arrayidx208 = getelementptr inbounds i32, i32* %210, i64 0
  %211 = load i32, i32* %arrayidx208, align 4
  %conv209 = sext i32 %211 to i64
  %212 = load i32*, i32** %wsptr, align 8
  %arrayidx210 = getelementptr inbounds i32, i32* %212, i64 4
  %213 = load i32, i32* %arrayidx210, align 4
  %conv211 = sext i32 %213 to i64
  %sub212 = sub nsw i64 %conv209, %conv211
  %shl213 = shl i64 %sub212, 13
  store i64 %shl213, i64* %tmp1, align 8
  %214 = load i64, i64* %tmp0, align 8
  %215 = load i64, i64* %tmp3, align 8
  %add214 = add nsw i64 %214, %215
  store i64 %add214, i64* %tmp10, align 8
  %216 = load i64, i64* %tmp0, align 8
  %217 = load i64, i64* %tmp3, align 8
  %sub215 = sub nsw i64 %216, %217
  store i64 %sub215, i64* %tmp13, align 8
  %218 = load i64, i64* %tmp1, align 8
  %219 = load i64, i64* %tmp2, align 8
  %add216 = add nsw i64 %218, %219
  store i64 %add216, i64* %tmp11, align 8
  %220 = load i64, i64* %tmp1, align 8
  %221 = load i64, i64* %tmp2, align 8
  %sub217 = sub nsw i64 %220, %221
  store i64 %sub217, i64* %tmp12, align 8
  %222 = load i32*, i32** %wsptr, align 8
  %arrayidx218 = getelementptr inbounds i32, i32* %222, i64 7
  %223 = load i32, i32* %arrayidx218, align 4
  %conv219 = sext i32 %223 to i64
  store i64 %conv219, i64* %tmp0, align 8
  %224 = load i32*, i32** %wsptr, align 8
  %arrayidx220 = getelementptr inbounds i32, i32* %224, i64 5
  %225 = load i32, i32* %arrayidx220, align 4
  %conv221 = sext i32 %225 to i64
  store i64 %conv221, i64* %tmp1, align 8
  %226 = load i32*, i32** %wsptr, align 8
  %arrayidx222 = getelementptr inbounds i32, i32* %226, i64 3
  %227 = load i32, i32* %arrayidx222, align 4
  %conv223 = sext i32 %227 to i64
  store i64 %conv223, i64* %tmp2, align 8
  %228 = load i32*, i32** %wsptr, align 8
  %arrayidx224 = getelementptr inbounds i32, i32* %228, i64 1
  %229 = load i32, i32* %arrayidx224, align 4
  %conv225 = sext i32 %229 to i64
  store i64 %conv225, i64* %tmp3, align 8
  %230 = load i64, i64* %tmp0, align 8
  %231 = load i64, i64* %tmp3, align 8
  %add226 = add nsw i64 %230, %231
  store i64 %add226, i64* %z1, align 8
  %232 = load i64, i64* %tmp1, align 8
  %233 = load i64, i64* %tmp2, align 8
  %add227 = add nsw i64 %232, %233
  store i64 %add227, i64* %z2, align 8
  %234 = load i64, i64* %tmp0, align 8
  %235 = load i64, i64* %tmp2, align 8
  %add228 = add nsw i64 %234, %235
  store i64 %add228, i64* %z3, align 8
  %236 = load i64, i64* %tmp1, align 8
  %237 = load i64, i64* %tmp3, align 8
  %add229 = add nsw i64 %236, %237
  store i64 %add229, i64* %z4, align 8
  %238 = load i64, i64* %z3, align 8
  %239 = load i64, i64* %z4, align 8
  %add230 = add nsw i64 %238, %239
  %mul231 = mul nsw i64 %add230, 9633
  store i64 %mul231, i64* %z5, align 8
  %240 = load i64, i64* %tmp0, align 8
  %mul232 = mul nsw i64 %240, 2446
  store i64 %mul232, i64* %tmp0, align 8
  %241 = load i64, i64* %tmp1, align 8
  %mul233 = mul nsw i64 %241, 16819
  store i64 %mul233, i64* %tmp1, align 8
  %242 = load i64, i64* %tmp2, align 8
  %mul234 = mul nsw i64 %242, 25172
  store i64 %mul234, i64* %tmp2, align 8
  %243 = load i64, i64* %tmp3, align 8
  %mul235 = mul nsw i64 %243, 12299
  store i64 %mul235, i64* %tmp3, align 8
  %244 = load i64, i64* %z1, align 8
  %mul236 = mul nsw i64 %244, -7373
  store i64 %mul236, i64* %z1, align 8
  %245 = load i64, i64* %z2, align 8
  %mul237 = mul nsw i64 %245, -20995
  store i64 %mul237, i64* %z2, align 8
  %246 = load i64, i64* %z3, align 8
  %mul238 = mul nsw i64 %246, -16069
  store i64 %mul238, i64* %z3, align 8
  %247 = load i64, i64* %z4, align 8
  %mul239 = mul nsw i64 %247, -3196
  store i64 %mul239, i64* %z4, align 8
  %248 = load i64, i64* %z5, align 8
  %249 = load i64, i64* %z3, align 8
  %add240 = add nsw i64 %249, %248
  store i64 %add240, i64* %z3, align 8
  %250 = load i64, i64* %z5, align 8
  %251 = load i64, i64* %z4, align 8
  %add241 = add nsw i64 %251, %250
  store i64 %add241, i64* %z4, align 8
  %252 = load i64, i64* %z1, align 8
  %253 = load i64, i64* %z3, align 8
  %add242 = add nsw i64 %252, %253
  %254 = load i64, i64* %tmp0, align 8
  %add243 = add nsw i64 %254, %add242
  store i64 %add243, i64* %tmp0, align 8
  %255 = load i64, i64* %z2, align 8
  %256 = load i64, i64* %z4, align 8
  %add244 = add nsw i64 %255, %256
  %257 = load i64, i64* %tmp1, align 8
  %add245 = add nsw i64 %257, %add244
  store i64 %add245, i64* %tmp1, align 8
  %258 = load i64, i64* %z2, align 8
  %259 = load i64, i64* %z3, align 8
  %add246 = add nsw i64 %258, %259
  %260 = load i64, i64* %tmp2, align 8
  %add247 = add nsw i64 %260, %add246
  store i64 %add247, i64* %tmp2, align 8
  %261 = load i64, i64* %z1, align 8
  %262 = load i64, i64* %z4, align 8
  %add248 = add nsw i64 %261, %262
  %263 = load i64, i64* %tmp3, align 8
  %add249 = add nsw i64 %263, %add248
  store i64 %add249, i64* %tmp3, align 8
  %264 = load i64, i64* %tmp10, align 8
  %265 = load i64, i64* %tmp3, align 8
  %add250 = add nsw i64 %264, %265
  %add251 = add nsw i64 %add250, 131072
  %shr252 = ashr i64 %add251, 18
  %conv253 = trunc i64 %shr252 to i32
  %and254 = and i32 %conv253, 1023
  %idxprom255 = sext i32 %and254 to i64
  %266 = load i8*, i8** %range_limit, align 8
  %arrayidx256 = getelementptr inbounds i8, i8* %266, i64 %idxprom255
  %267 = load i8, i8* %arrayidx256, align 1
  %268 = load i8*, i8** %outptr, align 8
  %arrayidx257 = getelementptr inbounds i8, i8* %268, i64 0
  store i8 %267, i8* %arrayidx257, align 1
  %269 = load i64, i64* %tmp10, align 8
  %270 = load i64, i64* %tmp3, align 8
  %sub258 = sub nsw i64 %269, %270
  %add259 = add nsw i64 %sub258, 131072
  %shr260 = ashr i64 %add259, 18
  %conv261 = trunc i64 %shr260 to i32
  %and262 = and i32 %conv261, 1023
  %idxprom263 = sext i32 %and262 to i64
  %271 = load i8*, i8** %range_limit, align 8
  %arrayidx264 = getelementptr inbounds i8, i8* %271, i64 %idxprom263
  %272 = load i8, i8* %arrayidx264, align 1
  %273 = load i8*, i8** %outptr, align 8
  %arrayidx265 = getelementptr inbounds i8, i8* %273, i64 7
  store i8 %272, i8* %arrayidx265, align 1
  %274 = load i64, i64* %tmp11, align 8
  %275 = load i64, i64* %tmp2, align 8
  %add266 = add nsw i64 %274, %275
  %add267 = add nsw i64 %add266, 131072
  %shr268 = ashr i64 %add267, 18
  %conv269 = trunc i64 %shr268 to i32
  %and270 = and i32 %conv269, 1023
  %idxprom271 = sext i32 %and270 to i64
  %276 = load i8*, i8** %range_limit, align 8
  %arrayidx272 = getelementptr inbounds i8, i8* %276, i64 %idxprom271
  %277 = load i8, i8* %arrayidx272, align 1
  %278 = load i8*, i8** %outptr, align 8
  %arrayidx273 = getelementptr inbounds i8, i8* %278, i64 1
  store i8 %277, i8* %arrayidx273, align 1
  %279 = load i64, i64* %tmp11, align 8
  %280 = load i64, i64* %tmp2, align 8
  %sub274 = sub nsw i64 %279, %280
  %add275 = add nsw i64 %sub274, 131072
  %shr276 = ashr i64 %add275, 18
  %conv277 = trunc i64 %shr276 to i32
  %and278 = and i32 %conv277, 1023
  %idxprom279 = sext i32 %and278 to i64
  %281 = load i8*, i8** %range_limit, align 8
  %arrayidx280 = getelementptr inbounds i8, i8* %281, i64 %idxprom279
  %282 = load i8, i8* %arrayidx280, align 1
  %283 = load i8*, i8** %outptr, align 8
  %arrayidx281 = getelementptr inbounds i8, i8* %283, i64 6
  store i8 %282, i8* %arrayidx281, align 1
  %284 = load i64, i64* %tmp12, align 8
  %285 = load i64, i64* %tmp1, align 8
  %add282 = add nsw i64 %284, %285
  %add283 = add nsw i64 %add282, 131072
  %shr284 = ashr i64 %add283, 18
  %conv285 = trunc i64 %shr284 to i32
  %and286 = and i32 %conv285, 1023
  %idxprom287 = sext i32 %and286 to i64
  %286 = load i8*, i8** %range_limit, align 8
  %arrayidx288 = getelementptr inbounds i8, i8* %286, i64 %idxprom287
  %287 = load i8, i8* %arrayidx288, align 1
  %288 = load i8*, i8** %outptr, align 8
  %arrayidx289 = getelementptr inbounds i8, i8* %288, i64 2
  store i8 %287, i8* %arrayidx289, align 1
  %289 = load i64, i64* %tmp12, align 8
  %290 = load i64, i64* %tmp1, align 8
  %sub290 = sub nsw i64 %289, %290
  %add291 = add nsw i64 %sub290, 131072
  %shr292 = ashr i64 %add291, 18
  %conv293 = trunc i64 %shr292 to i32
  %and294 = and i32 %conv293, 1023
  %idxprom295 = sext i32 %and294 to i64
  %291 = load i8*, i8** %range_limit, align 8
  %arrayidx296 = getelementptr inbounds i8, i8* %291, i64 %idxprom295
  %292 = load i8, i8* %arrayidx296, align 1
  %293 = load i8*, i8** %outptr, align 8
  %arrayidx297 = getelementptr inbounds i8, i8* %293, i64 5
  store i8 %292, i8* %arrayidx297, align 1
  %294 = load i64, i64* %tmp13, align 8
  %295 = load i64, i64* %tmp0, align 8
  %add298 = add nsw i64 %294, %295
  %add299 = add nsw i64 %add298, 131072
  %shr300 = ashr i64 %add299, 18
  %conv301 = trunc i64 %shr300 to i32
  %and302 = and i32 %conv301, 1023
  %idxprom303 = sext i32 %and302 to i64
  %296 = load i8*, i8** %range_limit, align 8
  %arrayidx304 = getelementptr inbounds i8, i8* %296, i64 %idxprom303
  %297 = load i8, i8* %arrayidx304, align 1
  %298 = load i8*, i8** %outptr, align 8
  %arrayidx305 = getelementptr inbounds i8, i8* %298, i64 3
  store i8 %297, i8* %arrayidx305, align 1
  %299 = load i64, i64* %tmp13, align 8
  %300 = load i64, i64* %tmp0, align 8
  %sub306 = sub nsw i64 %299, %300
  %add307 = add nsw i64 %sub306, 131072
  %shr308 = ashr i64 %add307, 18
  %conv309 = trunc i64 %shr308 to i32
  %and310 = and i32 %conv309, 1023
  %idxprom311 = sext i32 %and310 to i64
  %301 = load i8*, i8** %range_limit, align 8
  %arrayidx312 = getelementptr inbounds i8, i8* %301, i64 %idxprom311
  %302 = load i8, i8* %arrayidx312, align 1
  %303 = load i8*, i8** %outptr, align 8
  %arrayidx313 = getelementptr inbounds i8, i8* %303, i64 4
  store i8 %302, i8* %arrayidx313, align 1
  %304 = load i32*, i32** %wsptr, align 8
  %add.ptr314 = getelementptr inbounds i32, i32* %304, i64 8
  store i32* %add.ptr314, i32** %wsptr, align 8
  br label %for.inc.315

for.inc.315:                                      ; preds = %if.end.191, %if.then.173
  %305 = load i32, i32* %ctr, align 4
  %inc = add nsw i32 %305, 1
  store i32 %inc, i32* %ctr, align 4
  br label %for.cond.152

for.end.316:                                      ; preds = %for.cond.152
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
