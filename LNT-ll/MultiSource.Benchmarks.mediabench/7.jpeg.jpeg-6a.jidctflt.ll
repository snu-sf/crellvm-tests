; ModuleID = './MultiSource.Benchmarks.mediabench/7.jpeg.jpeg-6a.jidctflt.bc'
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
define void @jpeg_idct_float(%struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i16* %coef_block, i8** %output_buf, i32 %output_col) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %coef_block.addr = alloca i16*, align 8
  %output_buf.addr = alloca i8**, align 8
  %output_col.addr = alloca i32, align 4
  %tmp0 = alloca float, align 4
  %tmp1 = alloca float, align 4
  %tmp2 = alloca float, align 4
  %tmp3 = alloca float, align 4
  %tmp4 = alloca float, align 4
  %tmp5 = alloca float, align 4
  %tmp6 = alloca float, align 4
  %tmp7 = alloca float, align 4
  %tmp10 = alloca float, align 4
  %tmp11 = alloca float, align 4
  %tmp12 = alloca float, align 4
  %tmp13 = alloca float, align 4
  %z5 = alloca float, align 4
  %z10 = alloca float, align 4
  %z11 = alloca float, align 4
  %z12 = alloca float, align 4
  %z13 = alloca float, align 4
  %inptr = alloca i16*, align 8
  %quantptr = alloca float*, align 8
  %wsptr = alloca float*, align 8
  %outptr = alloca i8*, align 8
  %range_limit = alloca i8*, align 8
  %ctr = alloca i32, align 4
  %workspace = alloca [64 x float], align 16
  %dcval = alloca float, align 4
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
  %5 = bitcast i8* %4 to float*
  store float* %5, float** %quantptr, align 8
  %arraydecay = getelementptr inbounds [64 x float], [64 x float]* %workspace, i32 0, i32 0
  store float* %arraydecay, float** %wsptr, align 8
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
  %conv21 = sitofp i16 %22 to float
  %23 = load float*, float** %quantptr, align 8
  %arrayidx22 = getelementptr inbounds float, float* %23, i64 0
  %24 = load float, float* %arrayidx22, align 4
  %mul = fmul float %conv21, %24
  store float %mul, float* %dcval, align 4
  %25 = load float, float* %dcval, align 4
  %26 = load float*, float** %wsptr, align 8
  %arrayidx23 = getelementptr inbounds float, float* %26, i64 0
  store float %25, float* %arrayidx23, align 4
  %27 = load float, float* %dcval, align 4
  %28 = load float*, float** %wsptr, align 8
  %arrayidx24 = getelementptr inbounds float, float* %28, i64 8
  store float %27, float* %arrayidx24, align 4
  %29 = load float, float* %dcval, align 4
  %30 = load float*, float** %wsptr, align 8
  %arrayidx25 = getelementptr inbounds float, float* %30, i64 16
  store float %29, float* %arrayidx25, align 4
  %31 = load float, float* %dcval, align 4
  %32 = load float*, float** %wsptr, align 8
  %arrayidx26 = getelementptr inbounds float, float* %32, i64 24
  store float %31, float* %arrayidx26, align 4
  %33 = load float, float* %dcval, align 4
  %34 = load float*, float** %wsptr, align 8
  %arrayidx27 = getelementptr inbounds float, float* %34, i64 32
  store float %33, float* %arrayidx27, align 4
  %35 = load float, float* %dcval, align 4
  %36 = load float*, float** %wsptr, align 8
  %arrayidx28 = getelementptr inbounds float, float* %36, i64 40
  store float %35, float* %arrayidx28, align 4
  %37 = load float, float* %dcval, align 4
  %38 = load float*, float** %wsptr, align 8
  %arrayidx29 = getelementptr inbounds float, float* %38, i64 48
  store float %37, float* %arrayidx29, align 4
  %39 = load float, float* %dcval, align 4
  %40 = load float*, float** %wsptr, align 8
  %arrayidx30 = getelementptr inbounds float, float* %40, i64 56
  store float %39, float* %arrayidx30, align 4
  %41 = load i16*, i16** %inptr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %41, i32 1
  store i16* %incdec.ptr, i16** %inptr, align 8
  %42 = load float*, float** %quantptr, align 8
  %incdec.ptr31 = getelementptr inbounds float, float* %42, i32 1
  store float* %incdec.ptr31, float** %quantptr, align 8
  %43 = load float*, float** %wsptr, align 8
  %incdec.ptr32 = getelementptr inbounds float, float* %43, i32 1
  store float* %incdec.ptr32, float** %wsptr, align 8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %44 = load i16*, i16** %inptr, align 8
  %arrayidx33 = getelementptr inbounds i16, i16* %44, i64 0
  %45 = load i16, i16* %arrayidx33, align 2
  %conv34 = sitofp i16 %45 to float
  %46 = load float*, float** %quantptr, align 8
  %arrayidx35 = getelementptr inbounds float, float* %46, i64 0
  %47 = load float, float* %arrayidx35, align 4
  %mul36 = fmul float %conv34, %47
  store float %mul36, float* %tmp0, align 4
  %48 = load i16*, i16** %inptr, align 8
  %arrayidx37 = getelementptr inbounds i16, i16* %48, i64 16
  %49 = load i16, i16* %arrayidx37, align 2
  %conv38 = sitofp i16 %49 to float
  %50 = load float*, float** %quantptr, align 8
  %arrayidx39 = getelementptr inbounds float, float* %50, i64 16
  %51 = load float, float* %arrayidx39, align 4
  %mul40 = fmul float %conv38, %51
  store float %mul40, float* %tmp1, align 4
  %52 = load i16*, i16** %inptr, align 8
  %arrayidx41 = getelementptr inbounds i16, i16* %52, i64 32
  %53 = load i16, i16* %arrayidx41, align 2
  %conv42 = sitofp i16 %53 to float
  %54 = load float*, float** %quantptr, align 8
  %arrayidx43 = getelementptr inbounds float, float* %54, i64 32
  %55 = load float, float* %arrayidx43, align 4
  %mul44 = fmul float %conv42, %55
  store float %mul44, float* %tmp2, align 4
  %56 = load i16*, i16** %inptr, align 8
  %arrayidx45 = getelementptr inbounds i16, i16* %56, i64 48
  %57 = load i16, i16* %arrayidx45, align 2
  %conv46 = sitofp i16 %57 to float
  %58 = load float*, float** %quantptr, align 8
  %arrayidx47 = getelementptr inbounds float, float* %58, i64 48
  %59 = load float, float* %arrayidx47, align 4
  %mul48 = fmul float %conv46, %59
  store float %mul48, float* %tmp3, align 4
  %60 = load float, float* %tmp0, align 4
  %61 = load float, float* %tmp2, align 4
  %add = fadd float %60, %61
  store float %add, float* %tmp10, align 4
  %62 = load float, float* %tmp0, align 4
  %63 = load float, float* %tmp2, align 4
  %sub = fsub float %62, %63
  store float %sub, float* %tmp11, align 4
  %64 = load float, float* %tmp1, align 4
  %65 = load float, float* %tmp3, align 4
  %add49 = fadd float %64, %65
  store float %add49, float* %tmp13, align 4
  %66 = load float, float* %tmp1, align 4
  %67 = load float, float* %tmp3, align 4
  %sub50 = fsub float %66, %67
  %mul51 = fmul float %sub50, 0x3FF6A09E60000000
  %68 = load float, float* %tmp13, align 4
  %sub52 = fsub float %mul51, %68
  store float %sub52, float* %tmp12, align 4
  %69 = load float, float* %tmp10, align 4
  %70 = load float, float* %tmp13, align 4
  %add53 = fadd float %69, %70
  store float %add53, float* %tmp0, align 4
  %71 = load float, float* %tmp10, align 4
  %72 = load float, float* %tmp13, align 4
  %sub54 = fsub float %71, %72
  store float %sub54, float* %tmp3, align 4
  %73 = load float, float* %tmp11, align 4
  %74 = load float, float* %tmp12, align 4
  %add55 = fadd float %73, %74
  store float %add55, float* %tmp1, align 4
  %75 = load float, float* %tmp11, align 4
  %76 = load float, float* %tmp12, align 4
  %sub56 = fsub float %75, %76
  store float %sub56, float* %tmp2, align 4
  %77 = load i16*, i16** %inptr, align 8
  %arrayidx57 = getelementptr inbounds i16, i16* %77, i64 8
  %78 = load i16, i16* %arrayidx57, align 2
  %conv58 = sitofp i16 %78 to float
  %79 = load float*, float** %quantptr, align 8
  %arrayidx59 = getelementptr inbounds float, float* %79, i64 8
  %80 = load float, float* %arrayidx59, align 4
  %mul60 = fmul float %conv58, %80
  store float %mul60, float* %tmp4, align 4
  %81 = load i16*, i16** %inptr, align 8
  %arrayidx61 = getelementptr inbounds i16, i16* %81, i64 24
  %82 = load i16, i16* %arrayidx61, align 2
  %conv62 = sitofp i16 %82 to float
  %83 = load float*, float** %quantptr, align 8
  %arrayidx63 = getelementptr inbounds float, float* %83, i64 24
  %84 = load float, float* %arrayidx63, align 4
  %mul64 = fmul float %conv62, %84
  store float %mul64, float* %tmp5, align 4
  %85 = load i16*, i16** %inptr, align 8
  %arrayidx65 = getelementptr inbounds i16, i16* %85, i64 40
  %86 = load i16, i16* %arrayidx65, align 2
  %conv66 = sitofp i16 %86 to float
  %87 = load float*, float** %quantptr, align 8
  %arrayidx67 = getelementptr inbounds float, float* %87, i64 40
  %88 = load float, float* %arrayidx67, align 4
  %mul68 = fmul float %conv66, %88
  store float %mul68, float* %tmp6, align 4
  %89 = load i16*, i16** %inptr, align 8
  %arrayidx69 = getelementptr inbounds i16, i16* %89, i64 56
  %90 = load i16, i16* %arrayidx69, align 2
  %conv70 = sitofp i16 %90 to float
  %91 = load float*, float** %quantptr, align 8
  %arrayidx71 = getelementptr inbounds float, float* %91, i64 56
  %92 = load float, float* %arrayidx71, align 4
  %mul72 = fmul float %conv70, %92
  store float %mul72, float* %tmp7, align 4
  %93 = load float, float* %tmp6, align 4
  %94 = load float, float* %tmp5, align 4
  %add73 = fadd float %93, %94
  store float %add73, float* %z13, align 4
  %95 = load float, float* %tmp6, align 4
  %96 = load float, float* %tmp5, align 4
  %sub74 = fsub float %95, %96
  store float %sub74, float* %z10, align 4
  %97 = load float, float* %tmp4, align 4
  %98 = load float, float* %tmp7, align 4
  %add75 = fadd float %97, %98
  store float %add75, float* %z11, align 4
  %99 = load float, float* %tmp4, align 4
  %100 = load float, float* %tmp7, align 4
  %sub76 = fsub float %99, %100
  store float %sub76, float* %z12, align 4
  %101 = load float, float* %z11, align 4
  %102 = load float, float* %z13, align 4
  %add77 = fadd float %101, %102
  store float %add77, float* %tmp7, align 4
  %103 = load float, float* %z11, align 4
  %104 = load float, float* %z13, align 4
  %sub78 = fsub float %103, %104
  %mul79 = fmul float %sub78, 0x3FF6A09E60000000
  store float %mul79, float* %tmp11, align 4
  %105 = load float, float* %z10, align 4
  %106 = load float, float* %z12, align 4
  %add80 = fadd float %105, %106
  %mul81 = fmul float %add80, 0x3FFD906BC0000000
  store float %mul81, float* %z5, align 4
  %107 = load float, float* %z12, align 4
  %mul82 = fmul float 0x3FF1517A80000000, %107
  %108 = load float, float* %z5, align 4
  %sub83 = fsub float %mul82, %108
  store float %sub83, float* %tmp10, align 4
  %109 = load float, float* %z10, align 4
  %mul84 = fmul float 0xC004E7AEA0000000, %109
  %110 = load float, float* %z5, align 4
  %add85 = fadd float %mul84, %110
  store float %add85, float* %tmp12, align 4
  %111 = load float, float* %tmp12, align 4
  %112 = load float, float* %tmp7, align 4
  %sub86 = fsub float %111, %112
  store float %sub86, float* %tmp6, align 4
  %113 = load float, float* %tmp11, align 4
  %114 = load float, float* %tmp6, align 4
  %sub87 = fsub float %113, %114
  store float %sub87, float* %tmp5, align 4
  %115 = load float, float* %tmp10, align 4
  %116 = load float, float* %tmp5, align 4
  %add88 = fadd float %115, %116
  store float %add88, float* %tmp4, align 4
  %117 = load float, float* %tmp0, align 4
  %118 = load float, float* %tmp7, align 4
  %add89 = fadd float %117, %118
  %119 = load float*, float** %wsptr, align 8
  %arrayidx90 = getelementptr inbounds float, float* %119, i64 0
  store float %add89, float* %arrayidx90, align 4
  %120 = load float, float* %tmp0, align 4
  %121 = load float, float* %tmp7, align 4
  %sub91 = fsub float %120, %121
  %122 = load float*, float** %wsptr, align 8
  %arrayidx92 = getelementptr inbounds float, float* %122, i64 56
  store float %sub91, float* %arrayidx92, align 4
  %123 = load float, float* %tmp1, align 4
  %124 = load float, float* %tmp6, align 4
  %add93 = fadd float %123, %124
  %125 = load float*, float** %wsptr, align 8
  %arrayidx94 = getelementptr inbounds float, float* %125, i64 8
  store float %add93, float* %arrayidx94, align 4
  %126 = load float, float* %tmp1, align 4
  %127 = load float, float* %tmp6, align 4
  %sub95 = fsub float %126, %127
  %128 = load float*, float** %wsptr, align 8
  %arrayidx96 = getelementptr inbounds float, float* %128, i64 48
  store float %sub95, float* %arrayidx96, align 4
  %129 = load float, float* %tmp2, align 4
  %130 = load float, float* %tmp5, align 4
  %add97 = fadd float %129, %130
  %131 = load float*, float** %wsptr, align 8
  %arrayidx98 = getelementptr inbounds float, float* %131, i64 16
  store float %add97, float* %arrayidx98, align 4
  %132 = load float, float* %tmp2, align 4
  %133 = load float, float* %tmp5, align 4
  %sub99 = fsub float %132, %133
  %134 = load float*, float** %wsptr, align 8
  %arrayidx100 = getelementptr inbounds float, float* %134, i64 40
  store float %sub99, float* %arrayidx100, align 4
  %135 = load float, float* %tmp3, align 4
  %136 = load float, float* %tmp4, align 4
  %add101 = fadd float %135, %136
  %137 = load float*, float** %wsptr, align 8
  %arrayidx102 = getelementptr inbounds float, float* %137, i64 32
  store float %add101, float* %arrayidx102, align 4
  %138 = load float, float* %tmp3, align 4
  %139 = load float, float* %tmp4, align 4
  %sub103 = fsub float %138, %139
  %140 = load float*, float** %wsptr, align 8
  %arrayidx104 = getelementptr inbounds float, float* %140, i64 24
  store float %sub103, float* %arrayidx104, align 4
  %141 = load i16*, i16** %inptr, align 8
  %incdec.ptr105 = getelementptr inbounds i16, i16* %141, i32 1
  store i16* %incdec.ptr105, i16** %inptr, align 8
  %142 = load float*, float** %quantptr, align 8
  %incdec.ptr106 = getelementptr inbounds float, float* %142, i32 1
  store float* %incdec.ptr106, float** %quantptr, align 8
  %143 = load float*, float** %wsptr, align 8
  %incdec.ptr107 = getelementptr inbounds float, float* %143, i32 1
  store float* %incdec.ptr107, float** %wsptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %144 = load i32, i32* %ctr, align 4
  %dec = add nsw i32 %144, -1
  store i32 %dec, i32* %ctr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay108 = getelementptr inbounds [64 x float], [64 x float]* %workspace, i32 0, i32 0
  store float* %arraydecay108, float** %wsptr, align 8
  store i32 0, i32* %ctr, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.228, %for.end
  %145 = load i32, i32* %ctr, align 4
  %cmp110 = icmp slt i32 %145, 8
  br i1 %cmp110, label %for.body.112, label %for.end.229

for.body.112:                                     ; preds = %for.cond.109
  %146 = load i32, i32* %ctr, align 4
  %idxprom = sext i32 %146 to i64
  %147 = load i8**, i8*** %output_buf.addr, align 8
  %arrayidx113 = getelementptr inbounds i8*, i8** %147, i64 %idxprom
  %148 = load i8*, i8** %arrayidx113, align 8
  %149 = load i32, i32* %output_col.addr, align 4
  %idx.ext = zext i32 %149 to i64
  %add.ptr114 = getelementptr inbounds i8, i8* %148, i64 %idx.ext
  store i8* %add.ptr114, i8** %outptr, align 8
  %150 = load float*, float** %wsptr, align 8
  %arrayidx115 = getelementptr inbounds float, float* %150, i64 0
  %151 = load float, float* %arrayidx115, align 4
  %152 = load float*, float** %wsptr, align 8
  %arrayidx116 = getelementptr inbounds float, float* %152, i64 4
  %153 = load float, float* %arrayidx116, align 4
  %add117 = fadd float %151, %153
  store float %add117, float* %tmp10, align 4
  %154 = load float*, float** %wsptr, align 8
  %arrayidx118 = getelementptr inbounds float, float* %154, i64 0
  %155 = load float, float* %arrayidx118, align 4
  %156 = load float*, float** %wsptr, align 8
  %arrayidx119 = getelementptr inbounds float, float* %156, i64 4
  %157 = load float, float* %arrayidx119, align 4
  %sub120 = fsub float %155, %157
  store float %sub120, float* %tmp11, align 4
  %158 = load float*, float** %wsptr, align 8
  %arrayidx121 = getelementptr inbounds float, float* %158, i64 2
  %159 = load float, float* %arrayidx121, align 4
  %160 = load float*, float** %wsptr, align 8
  %arrayidx122 = getelementptr inbounds float, float* %160, i64 6
  %161 = load float, float* %arrayidx122, align 4
  %add123 = fadd float %159, %161
  store float %add123, float* %tmp13, align 4
  %162 = load float*, float** %wsptr, align 8
  %arrayidx124 = getelementptr inbounds float, float* %162, i64 2
  %163 = load float, float* %arrayidx124, align 4
  %164 = load float*, float** %wsptr, align 8
  %arrayidx125 = getelementptr inbounds float, float* %164, i64 6
  %165 = load float, float* %arrayidx125, align 4
  %sub126 = fsub float %163, %165
  %mul127 = fmul float %sub126, 0x3FF6A09E60000000
  %166 = load float, float* %tmp13, align 4
  %sub128 = fsub float %mul127, %166
  store float %sub128, float* %tmp12, align 4
  %167 = load float, float* %tmp10, align 4
  %168 = load float, float* %tmp13, align 4
  %add129 = fadd float %167, %168
  store float %add129, float* %tmp0, align 4
  %169 = load float, float* %tmp10, align 4
  %170 = load float, float* %tmp13, align 4
  %sub130 = fsub float %169, %170
  store float %sub130, float* %tmp3, align 4
  %171 = load float, float* %tmp11, align 4
  %172 = load float, float* %tmp12, align 4
  %add131 = fadd float %171, %172
  store float %add131, float* %tmp1, align 4
  %173 = load float, float* %tmp11, align 4
  %174 = load float, float* %tmp12, align 4
  %sub132 = fsub float %173, %174
  store float %sub132, float* %tmp2, align 4
  %175 = load float*, float** %wsptr, align 8
  %arrayidx133 = getelementptr inbounds float, float* %175, i64 5
  %176 = load float, float* %arrayidx133, align 4
  %177 = load float*, float** %wsptr, align 8
  %arrayidx134 = getelementptr inbounds float, float* %177, i64 3
  %178 = load float, float* %arrayidx134, align 4
  %add135 = fadd float %176, %178
  store float %add135, float* %z13, align 4
  %179 = load float*, float** %wsptr, align 8
  %arrayidx136 = getelementptr inbounds float, float* %179, i64 5
  %180 = load float, float* %arrayidx136, align 4
  %181 = load float*, float** %wsptr, align 8
  %arrayidx137 = getelementptr inbounds float, float* %181, i64 3
  %182 = load float, float* %arrayidx137, align 4
  %sub138 = fsub float %180, %182
  store float %sub138, float* %z10, align 4
  %183 = load float*, float** %wsptr, align 8
  %arrayidx139 = getelementptr inbounds float, float* %183, i64 1
  %184 = load float, float* %arrayidx139, align 4
  %185 = load float*, float** %wsptr, align 8
  %arrayidx140 = getelementptr inbounds float, float* %185, i64 7
  %186 = load float, float* %arrayidx140, align 4
  %add141 = fadd float %184, %186
  store float %add141, float* %z11, align 4
  %187 = load float*, float** %wsptr, align 8
  %arrayidx142 = getelementptr inbounds float, float* %187, i64 1
  %188 = load float, float* %arrayidx142, align 4
  %189 = load float*, float** %wsptr, align 8
  %arrayidx143 = getelementptr inbounds float, float* %189, i64 7
  %190 = load float, float* %arrayidx143, align 4
  %sub144 = fsub float %188, %190
  store float %sub144, float* %z12, align 4
  %191 = load float, float* %z11, align 4
  %192 = load float, float* %z13, align 4
  %add145 = fadd float %191, %192
  store float %add145, float* %tmp7, align 4
  %193 = load float, float* %z11, align 4
  %194 = load float, float* %z13, align 4
  %sub146 = fsub float %193, %194
  %mul147 = fmul float %sub146, 0x3FF6A09E60000000
  store float %mul147, float* %tmp11, align 4
  %195 = load float, float* %z10, align 4
  %196 = load float, float* %z12, align 4
  %add148 = fadd float %195, %196
  %mul149 = fmul float %add148, 0x3FFD906BC0000000
  store float %mul149, float* %z5, align 4
  %197 = load float, float* %z12, align 4
  %mul150 = fmul float 0x3FF1517A80000000, %197
  %198 = load float, float* %z5, align 4
  %sub151 = fsub float %mul150, %198
  store float %sub151, float* %tmp10, align 4
  %199 = load float, float* %z10, align 4
  %mul152 = fmul float 0xC004E7AEA0000000, %199
  %200 = load float, float* %z5, align 4
  %add153 = fadd float %mul152, %200
  store float %add153, float* %tmp12, align 4
  %201 = load float, float* %tmp12, align 4
  %202 = load float, float* %tmp7, align 4
  %sub154 = fsub float %201, %202
  store float %sub154, float* %tmp6, align 4
  %203 = load float, float* %tmp11, align 4
  %204 = load float, float* %tmp6, align 4
  %sub155 = fsub float %203, %204
  store float %sub155, float* %tmp5, align 4
  %205 = load float, float* %tmp10, align 4
  %206 = load float, float* %tmp5, align 4
  %add156 = fadd float %205, %206
  store float %add156, float* %tmp4, align 4
  %207 = load float, float* %tmp0, align 4
  %208 = load float, float* %tmp7, align 4
  %add157 = fadd float %207, %208
  %conv158 = fptosi float %add157 to i64
  %add159 = add nsw i64 %conv158, 4
  %shr = ashr i64 %add159, 3
  %conv160 = trunc i64 %shr to i32
  %and = and i32 %conv160, 1023
  %idxprom161 = sext i32 %and to i64
  %209 = load i8*, i8** %range_limit, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %209, i64 %idxprom161
  %210 = load i8, i8* %arrayidx162, align 1
  %211 = load i8*, i8** %outptr, align 8
  %arrayidx163 = getelementptr inbounds i8, i8* %211, i64 0
  store i8 %210, i8* %arrayidx163, align 1
  %212 = load float, float* %tmp0, align 4
  %213 = load float, float* %tmp7, align 4
  %sub164 = fsub float %212, %213
  %conv165 = fptosi float %sub164 to i64
  %add166 = add nsw i64 %conv165, 4
  %shr167 = ashr i64 %add166, 3
  %conv168 = trunc i64 %shr167 to i32
  %and169 = and i32 %conv168, 1023
  %idxprom170 = sext i32 %and169 to i64
  %214 = load i8*, i8** %range_limit, align 8
  %arrayidx171 = getelementptr inbounds i8, i8* %214, i64 %idxprom170
  %215 = load i8, i8* %arrayidx171, align 1
  %216 = load i8*, i8** %outptr, align 8
  %arrayidx172 = getelementptr inbounds i8, i8* %216, i64 7
  store i8 %215, i8* %arrayidx172, align 1
  %217 = load float, float* %tmp1, align 4
  %218 = load float, float* %tmp6, align 4
  %add173 = fadd float %217, %218
  %conv174 = fptosi float %add173 to i64
  %add175 = add nsw i64 %conv174, 4
  %shr176 = ashr i64 %add175, 3
  %conv177 = trunc i64 %shr176 to i32
  %and178 = and i32 %conv177, 1023
  %idxprom179 = sext i32 %and178 to i64
  %219 = load i8*, i8** %range_limit, align 8
  %arrayidx180 = getelementptr inbounds i8, i8* %219, i64 %idxprom179
  %220 = load i8, i8* %arrayidx180, align 1
  %221 = load i8*, i8** %outptr, align 8
  %arrayidx181 = getelementptr inbounds i8, i8* %221, i64 1
  store i8 %220, i8* %arrayidx181, align 1
  %222 = load float, float* %tmp1, align 4
  %223 = load float, float* %tmp6, align 4
  %sub182 = fsub float %222, %223
  %conv183 = fptosi float %sub182 to i64
  %add184 = add nsw i64 %conv183, 4
  %shr185 = ashr i64 %add184, 3
  %conv186 = trunc i64 %shr185 to i32
  %and187 = and i32 %conv186, 1023
  %idxprom188 = sext i32 %and187 to i64
  %224 = load i8*, i8** %range_limit, align 8
  %arrayidx189 = getelementptr inbounds i8, i8* %224, i64 %idxprom188
  %225 = load i8, i8* %arrayidx189, align 1
  %226 = load i8*, i8** %outptr, align 8
  %arrayidx190 = getelementptr inbounds i8, i8* %226, i64 6
  store i8 %225, i8* %arrayidx190, align 1
  %227 = load float, float* %tmp2, align 4
  %228 = load float, float* %tmp5, align 4
  %add191 = fadd float %227, %228
  %conv192 = fptosi float %add191 to i64
  %add193 = add nsw i64 %conv192, 4
  %shr194 = ashr i64 %add193, 3
  %conv195 = trunc i64 %shr194 to i32
  %and196 = and i32 %conv195, 1023
  %idxprom197 = sext i32 %and196 to i64
  %229 = load i8*, i8** %range_limit, align 8
  %arrayidx198 = getelementptr inbounds i8, i8* %229, i64 %idxprom197
  %230 = load i8, i8* %arrayidx198, align 1
  %231 = load i8*, i8** %outptr, align 8
  %arrayidx199 = getelementptr inbounds i8, i8* %231, i64 2
  store i8 %230, i8* %arrayidx199, align 1
  %232 = load float, float* %tmp2, align 4
  %233 = load float, float* %tmp5, align 4
  %sub200 = fsub float %232, %233
  %conv201 = fptosi float %sub200 to i64
  %add202 = add nsw i64 %conv201, 4
  %shr203 = ashr i64 %add202, 3
  %conv204 = trunc i64 %shr203 to i32
  %and205 = and i32 %conv204, 1023
  %idxprom206 = sext i32 %and205 to i64
  %234 = load i8*, i8** %range_limit, align 8
  %arrayidx207 = getelementptr inbounds i8, i8* %234, i64 %idxprom206
  %235 = load i8, i8* %arrayidx207, align 1
  %236 = load i8*, i8** %outptr, align 8
  %arrayidx208 = getelementptr inbounds i8, i8* %236, i64 5
  store i8 %235, i8* %arrayidx208, align 1
  %237 = load float, float* %tmp3, align 4
  %238 = load float, float* %tmp4, align 4
  %add209 = fadd float %237, %238
  %conv210 = fptosi float %add209 to i64
  %add211 = add nsw i64 %conv210, 4
  %shr212 = ashr i64 %add211, 3
  %conv213 = trunc i64 %shr212 to i32
  %and214 = and i32 %conv213, 1023
  %idxprom215 = sext i32 %and214 to i64
  %239 = load i8*, i8** %range_limit, align 8
  %arrayidx216 = getelementptr inbounds i8, i8* %239, i64 %idxprom215
  %240 = load i8, i8* %arrayidx216, align 1
  %241 = load i8*, i8** %outptr, align 8
  %arrayidx217 = getelementptr inbounds i8, i8* %241, i64 4
  store i8 %240, i8* %arrayidx217, align 1
  %242 = load float, float* %tmp3, align 4
  %243 = load float, float* %tmp4, align 4
  %sub218 = fsub float %242, %243
  %conv219 = fptosi float %sub218 to i64
  %add220 = add nsw i64 %conv219, 4
  %shr221 = ashr i64 %add220, 3
  %conv222 = trunc i64 %shr221 to i32
  %and223 = and i32 %conv222, 1023
  %idxprom224 = sext i32 %and223 to i64
  %244 = load i8*, i8** %range_limit, align 8
  %arrayidx225 = getelementptr inbounds i8, i8* %244, i64 %idxprom224
  %245 = load i8, i8* %arrayidx225, align 1
  %246 = load i8*, i8** %outptr, align 8
  %arrayidx226 = getelementptr inbounds i8, i8* %246, i64 3
  store i8 %245, i8* %arrayidx226, align 1
  %247 = load float*, float** %wsptr, align 8
  %add.ptr227 = getelementptr inbounds float, float* %247, i64 8
  store float* %add.ptr227, float** %wsptr, align 8
  br label %for.inc.228

for.inc.228:                                      ; preds = %for.body.112
  %248 = load i32, i32* %ctr, align 4
  %inc = add nsw i32 %248, 1
  store i32 %inc, i32* %ctr, align 4
  br label %for.cond.109

for.end.229:                                      ; preds = %for.cond.109
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
