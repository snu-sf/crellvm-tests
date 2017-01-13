; ModuleID = './MultiSource.Benchmarks.mediabench/9.jpeg.jpeg-6a.jidctred.bc'
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
define void @jpeg_idct_4x4(%struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i16* %coef_block, i8** %output_buf, i32 %output_col) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %coef_block.addr = alloca i16*, align 8
  %output_buf.addr = alloca i8**, align 8
  %output_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %z1 = alloca i64, align 8
  %z2 = alloca i64, align 8
  %z3 = alloca i64, align 8
  %z4 = alloca i64, align 8
  %inptr = alloca i16*, align 8
  %quantptr = alloca i32*, align 8
  %wsptr = alloca i32*, align 8
  %outptr = alloca i8*, align 8
  %range_limit = alloca i8*, align 8
  %ctr = alloca i32, align 4
  %workspace = alloca [32 x i32], align 16
  %dcval = alloca i32, align 4
  %dcval122 = alloca i8, align 1
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
  %arraydecay = getelementptr inbounds [32 x i32], [32 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay, i32** %wsptr, align 8
  store i32 8, i32* %ctr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %ctr, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %ctr, align 4
  %cmp1 = icmp eq i32 %7, 4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %8 = load i16*, i16** %inptr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 8
  %9 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %9 to i32
  %10 = load i16*, i16** %inptr, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %10, i64 16
  %11 = load i16, i16* %arrayidx2, align 2
  %conv3 = sext i16 %11 to i32
  %or = or i32 %conv, %conv3
  %12 = load i16*, i16** %inptr, align 8
  %arrayidx4 = getelementptr inbounds i16, i16* %12, i64 24
  %13 = load i16, i16* %arrayidx4, align 2
  %conv5 = sext i16 %13 to i32
  %or6 = or i32 %or, %conv5
  %14 = load i16*, i16** %inptr, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %14, i64 40
  %15 = load i16, i16* %arrayidx7, align 2
  %conv8 = sext i16 %15 to i32
  %or9 = or i32 %or6, %conv8
  %16 = load i16*, i16** %inptr, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %16, i64 48
  %17 = load i16, i16* %arrayidx10, align 2
  %conv11 = sext i16 %17 to i32
  %or12 = or i32 %or9, %conv11
  %18 = load i16*, i16** %inptr, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %18, i64 56
  %19 = load i16, i16* %arrayidx13, align 2
  %conv14 = sext i16 %19 to i32
  %or15 = or i32 %or12, %conv14
  %cmp16 = icmp eq i32 %or15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.26

if.then.18:                                       ; preds = %if.end
  %20 = load i16*, i16** %inptr, align 8
  %arrayidx19 = getelementptr inbounds i16, i16* %20, i64 0
  %21 = load i16, i16* %arrayidx19, align 2
  %conv20 = sext i16 %21 to i32
  %22 = load i32*, i32** %quantptr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %22, i64 0
  %23 = load i32, i32* %arrayidx21, align 4
  %mul = mul nsw i32 %conv20, %23
  %shl = shl i32 %mul, 2
  store i32 %shl, i32* %dcval, align 4
  %24 = load i32, i32* %dcval, align 4
  %25 = load i32*, i32** %wsptr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %24, i32* %arrayidx22, align 4
  %26 = load i32, i32* %dcval, align 4
  %27 = load i32*, i32** %wsptr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %27, i64 8
  store i32 %26, i32* %arrayidx23, align 4
  %28 = load i32, i32* %dcval, align 4
  %29 = load i32*, i32** %wsptr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %29, i64 16
  store i32 %28, i32* %arrayidx24, align 4
  %30 = load i32, i32* %dcval, align 4
  %31 = load i32*, i32** %wsptr, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %31, i64 24
  store i32 %30, i32* %arrayidx25, align 4
  br label %for.inc

if.end.26:                                        ; preds = %if.end
  %32 = load i16*, i16** %inptr, align 8
  %arrayidx27 = getelementptr inbounds i16, i16* %32, i64 0
  %33 = load i16, i16* %arrayidx27, align 2
  %conv28 = sext i16 %33 to i32
  %34 = load i32*, i32** %quantptr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %34, i64 0
  %35 = load i32, i32* %arrayidx29, align 4
  %mul30 = mul nsw i32 %conv28, %35
  %conv31 = sext i32 %mul30 to i64
  store i64 %conv31, i64* %tmp0, align 8
  %36 = load i64, i64* %tmp0, align 8
  %shl32 = shl i64 %36, 14
  store i64 %shl32, i64* %tmp0, align 8
  %37 = load i16*, i16** %inptr, align 8
  %arrayidx33 = getelementptr inbounds i16, i16* %37, i64 16
  %38 = load i16, i16* %arrayidx33, align 2
  %conv34 = sext i16 %38 to i32
  %39 = load i32*, i32** %quantptr, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %39, i64 16
  %40 = load i32, i32* %arrayidx35, align 4
  %mul36 = mul nsw i32 %conv34, %40
  %conv37 = sext i32 %mul36 to i64
  store i64 %conv37, i64* %z2, align 8
  %41 = load i16*, i16** %inptr, align 8
  %arrayidx38 = getelementptr inbounds i16, i16* %41, i64 48
  %42 = load i16, i16* %arrayidx38, align 2
  %conv39 = sext i16 %42 to i32
  %43 = load i32*, i32** %quantptr, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %43, i64 48
  %44 = load i32, i32* %arrayidx40, align 4
  %mul41 = mul nsw i32 %conv39, %44
  %conv42 = sext i32 %mul41 to i64
  store i64 %conv42, i64* %z3, align 8
  %45 = load i64, i64* %z2, align 8
  %mul43 = mul nsw i64 %45, 15137
  %46 = load i64, i64* %z3, align 8
  %mul44 = mul nsw i64 %46, -6270
  %add = add nsw i64 %mul43, %mul44
  store i64 %add, i64* %tmp2, align 8
  %47 = load i64, i64* %tmp0, align 8
  %48 = load i64, i64* %tmp2, align 8
  %add45 = add nsw i64 %47, %48
  store i64 %add45, i64* %tmp10, align 8
  %49 = load i64, i64* %tmp0, align 8
  %50 = load i64, i64* %tmp2, align 8
  %sub = sub nsw i64 %49, %50
  store i64 %sub, i64* %tmp12, align 8
  %51 = load i16*, i16** %inptr, align 8
  %arrayidx46 = getelementptr inbounds i16, i16* %51, i64 56
  %52 = load i16, i16* %arrayidx46, align 2
  %conv47 = sext i16 %52 to i32
  %53 = load i32*, i32** %quantptr, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %53, i64 56
  %54 = load i32, i32* %arrayidx48, align 4
  %mul49 = mul nsw i32 %conv47, %54
  %conv50 = sext i32 %mul49 to i64
  store i64 %conv50, i64* %z1, align 8
  %55 = load i16*, i16** %inptr, align 8
  %arrayidx51 = getelementptr inbounds i16, i16* %55, i64 40
  %56 = load i16, i16* %arrayidx51, align 2
  %conv52 = sext i16 %56 to i32
  %57 = load i32*, i32** %quantptr, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %57, i64 40
  %58 = load i32, i32* %arrayidx53, align 4
  %mul54 = mul nsw i32 %conv52, %58
  %conv55 = sext i32 %mul54 to i64
  store i64 %conv55, i64* %z2, align 8
  %59 = load i16*, i16** %inptr, align 8
  %arrayidx56 = getelementptr inbounds i16, i16* %59, i64 24
  %60 = load i16, i16* %arrayidx56, align 2
  %conv57 = sext i16 %60 to i32
  %61 = load i32*, i32** %quantptr, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %61, i64 24
  %62 = load i32, i32* %arrayidx58, align 4
  %mul59 = mul nsw i32 %conv57, %62
  %conv60 = sext i32 %mul59 to i64
  store i64 %conv60, i64* %z3, align 8
  %63 = load i16*, i16** %inptr, align 8
  %arrayidx61 = getelementptr inbounds i16, i16* %63, i64 8
  %64 = load i16, i16* %arrayidx61, align 2
  %conv62 = sext i16 %64 to i32
  %65 = load i32*, i32** %quantptr, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %65, i64 8
  %66 = load i32, i32* %arrayidx63, align 4
  %mul64 = mul nsw i32 %conv62, %66
  %conv65 = sext i32 %mul64 to i64
  store i64 %conv65, i64* %z4, align 8
  %67 = load i64, i64* %z1, align 8
  %mul66 = mul nsw i64 %67, -1730
  %68 = load i64, i64* %z2, align 8
  %mul67 = mul nsw i64 %68, 11893
  %add68 = add nsw i64 %mul66, %mul67
  %69 = load i64, i64* %z3, align 8
  %mul69 = mul nsw i64 %69, -17799
  %add70 = add nsw i64 %add68, %mul69
  %70 = load i64, i64* %z4, align 8
  %mul71 = mul nsw i64 %70, 8697
  %add72 = add nsw i64 %add70, %mul71
  store i64 %add72, i64* %tmp0, align 8
  %71 = load i64, i64* %z1, align 8
  %mul73 = mul nsw i64 %71, -4176
  %72 = load i64, i64* %z2, align 8
  %mul74 = mul nsw i64 %72, -4926
  %add75 = add nsw i64 %mul73, %mul74
  %73 = load i64, i64* %z3, align 8
  %mul76 = mul nsw i64 %73, 7373
  %add77 = add nsw i64 %add75, %mul76
  %74 = load i64, i64* %z4, align 8
  %mul78 = mul nsw i64 %74, 20995
  %add79 = add nsw i64 %add77, %mul78
  store i64 %add79, i64* %tmp2, align 8
  %75 = load i64, i64* %tmp10, align 8
  %76 = load i64, i64* %tmp2, align 8
  %add80 = add nsw i64 %75, %76
  %add81 = add nsw i64 %add80, 2048
  %shr = ashr i64 %add81, 12
  %conv82 = trunc i64 %shr to i32
  %77 = load i32*, i32** %wsptr, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %conv82, i32* %arrayidx83, align 4
  %78 = load i64, i64* %tmp10, align 8
  %79 = load i64, i64* %tmp2, align 8
  %sub84 = sub nsw i64 %78, %79
  %add85 = add nsw i64 %sub84, 2048
  %shr86 = ashr i64 %add85, 12
  %conv87 = trunc i64 %shr86 to i32
  %80 = load i32*, i32** %wsptr, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %80, i64 24
  store i32 %conv87, i32* %arrayidx88, align 4
  %81 = load i64, i64* %tmp12, align 8
  %82 = load i64, i64* %tmp0, align 8
  %add89 = add nsw i64 %81, %82
  %add90 = add nsw i64 %add89, 2048
  %shr91 = ashr i64 %add90, 12
  %conv92 = trunc i64 %shr91 to i32
  %83 = load i32*, i32** %wsptr, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %83, i64 8
  store i32 %conv92, i32* %arrayidx93, align 4
  %84 = load i64, i64* %tmp12, align 8
  %85 = load i64, i64* %tmp0, align 8
  %sub94 = sub nsw i64 %84, %85
  %add95 = add nsw i64 %sub94, 2048
  %shr96 = ashr i64 %add95, 12
  %conv97 = trunc i64 %shr96 to i32
  %86 = load i32*, i32** %wsptr, align 8
  %arrayidx98 = getelementptr inbounds i32, i32* %86, i64 16
  store i32 %conv97, i32* %arrayidx98, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.26, %if.then.18, %if.then
  %87 = load i16*, i16** %inptr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %87, i32 1
  store i16* %incdec.ptr, i16** %inptr, align 8
  %88 = load i32*, i32** %quantptr, align 8
  %incdec.ptr99 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %incdec.ptr99, i32** %quantptr, align 8
  %89 = load i32*, i32** %wsptr, align 8
  %incdec.ptr100 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %incdec.ptr100, i32** %wsptr, align 8
  %90 = load i32, i32* %ctr, align 4
  %dec = add nsw i32 %90, -1
  store i32 %dec, i32* %ctr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay101 = getelementptr inbounds [32 x i32], [32 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay101, i32** %wsptr, align 8
  store i32 0, i32* %ctr, align 4
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.203, %for.end
  %91 = load i32, i32* %ctr, align 4
  %cmp103 = icmp slt i32 %91, 4
  br i1 %cmp103, label %for.body.105, label %for.end.204

for.body.105:                                     ; preds = %for.cond.102
  %92 = load i32, i32* %ctr, align 4
  %idxprom = sext i32 %92 to i64
  %93 = load i8**, i8*** %output_buf.addr, align 8
  %arrayidx106 = getelementptr inbounds i8*, i8** %93, i64 %idxprom
  %94 = load i8*, i8** %arrayidx106, align 8
  %95 = load i32, i32* %output_col.addr, align 4
  %idx.ext = zext i32 %95 to i64
  %add.ptr107 = getelementptr inbounds i8, i8* %94, i64 %idx.ext
  store i8* %add.ptr107, i8** %outptr, align 8
  %96 = load i32*, i32** %wsptr, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %96, i64 1
  %97 = load i32, i32* %arrayidx108, align 4
  %98 = load i32*, i32** %wsptr, align 8
  %arrayidx109 = getelementptr inbounds i32, i32* %98, i64 2
  %99 = load i32, i32* %arrayidx109, align 4
  %or110 = or i32 %97, %99
  %100 = load i32*, i32** %wsptr, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %100, i64 3
  %101 = load i32, i32* %arrayidx111, align 4
  %or112 = or i32 %or110, %101
  %102 = load i32*, i32** %wsptr, align 8
  %arrayidx113 = getelementptr inbounds i32, i32* %102, i64 5
  %103 = load i32, i32* %arrayidx113, align 4
  %or114 = or i32 %or112, %103
  %104 = load i32*, i32** %wsptr, align 8
  %arrayidx115 = getelementptr inbounds i32, i32* %104, i64 6
  %105 = load i32, i32* %arrayidx115, align 4
  %or116 = or i32 %or114, %105
  %106 = load i32*, i32** %wsptr, align 8
  %arrayidx117 = getelementptr inbounds i32, i32* %106, i64 7
  %107 = load i32, i32* %arrayidx117, align 4
  %or118 = or i32 %or116, %107
  %cmp119 = icmp eq i32 %or118, 0
  br i1 %cmp119, label %if.then.121, label %if.end.135

if.then.121:                                      ; preds = %for.body.105
  %108 = load i32*, i32** %wsptr, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %108, i64 0
  %109 = load i32, i32* %arrayidx123, align 4
  %conv124 = sext i32 %109 to i64
  %add125 = add nsw i64 %conv124, 16
  %shr126 = ashr i64 %add125, 5
  %conv127 = trunc i64 %shr126 to i32
  %and = and i32 %conv127, 1023
  %idxprom128 = sext i32 %and to i64
  %110 = load i8*, i8** %range_limit, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %110, i64 %idxprom128
  %111 = load i8, i8* %arrayidx129, align 1
  store i8 %111, i8* %dcval122, align 1
  %112 = load i8, i8* %dcval122, align 1
  %113 = load i8*, i8** %outptr, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %113, i64 0
  store i8 %112, i8* %arrayidx130, align 1
  %114 = load i8, i8* %dcval122, align 1
  %115 = load i8*, i8** %outptr, align 8
  %arrayidx131 = getelementptr inbounds i8, i8* %115, i64 1
  store i8 %114, i8* %arrayidx131, align 1
  %116 = load i8, i8* %dcval122, align 1
  %117 = load i8*, i8** %outptr, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %117, i64 2
  store i8 %116, i8* %arrayidx132, align 1
  %118 = load i8, i8* %dcval122, align 1
  %119 = load i8*, i8** %outptr, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %119, i64 3
  store i8 %118, i8* %arrayidx133, align 1
  %120 = load i32*, i32** %wsptr, align 8
  %add.ptr134 = getelementptr inbounds i32, i32* %120, i64 8
  store i32* %add.ptr134, i32** %wsptr, align 8
  br label %for.inc.203

if.end.135:                                       ; preds = %for.body.105
  %121 = load i32*, i32** %wsptr, align 8
  %arrayidx136 = getelementptr inbounds i32, i32* %121, i64 0
  %122 = load i32, i32* %arrayidx136, align 4
  %conv137 = sext i32 %122 to i64
  %shl138 = shl i64 %conv137, 14
  store i64 %shl138, i64* %tmp0, align 8
  %123 = load i32*, i32** %wsptr, align 8
  %arrayidx139 = getelementptr inbounds i32, i32* %123, i64 2
  %124 = load i32, i32* %arrayidx139, align 4
  %conv140 = sext i32 %124 to i64
  %mul141 = mul nsw i64 %conv140, 15137
  %125 = load i32*, i32** %wsptr, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %125, i64 6
  %126 = load i32, i32* %arrayidx142, align 4
  %conv143 = sext i32 %126 to i64
  %mul144 = mul nsw i64 %conv143, -6270
  %add145 = add nsw i64 %mul141, %mul144
  store i64 %add145, i64* %tmp2, align 8
  %127 = load i64, i64* %tmp0, align 8
  %128 = load i64, i64* %tmp2, align 8
  %add146 = add nsw i64 %127, %128
  store i64 %add146, i64* %tmp10, align 8
  %129 = load i64, i64* %tmp0, align 8
  %130 = load i64, i64* %tmp2, align 8
  %sub147 = sub nsw i64 %129, %130
  store i64 %sub147, i64* %tmp12, align 8
  %131 = load i32*, i32** %wsptr, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %131, i64 7
  %132 = load i32, i32* %arrayidx148, align 4
  %conv149 = sext i32 %132 to i64
  store i64 %conv149, i64* %z1, align 8
  %133 = load i32*, i32** %wsptr, align 8
  %arrayidx150 = getelementptr inbounds i32, i32* %133, i64 5
  %134 = load i32, i32* %arrayidx150, align 4
  %conv151 = sext i32 %134 to i64
  store i64 %conv151, i64* %z2, align 8
  %135 = load i32*, i32** %wsptr, align 8
  %arrayidx152 = getelementptr inbounds i32, i32* %135, i64 3
  %136 = load i32, i32* %arrayidx152, align 4
  %conv153 = sext i32 %136 to i64
  store i64 %conv153, i64* %z3, align 8
  %137 = load i32*, i32** %wsptr, align 8
  %arrayidx154 = getelementptr inbounds i32, i32* %137, i64 1
  %138 = load i32, i32* %arrayidx154, align 4
  %conv155 = sext i32 %138 to i64
  store i64 %conv155, i64* %z4, align 8
  %139 = load i64, i64* %z1, align 8
  %mul156 = mul nsw i64 %139, -1730
  %140 = load i64, i64* %z2, align 8
  %mul157 = mul nsw i64 %140, 11893
  %add158 = add nsw i64 %mul156, %mul157
  %141 = load i64, i64* %z3, align 8
  %mul159 = mul nsw i64 %141, -17799
  %add160 = add nsw i64 %add158, %mul159
  %142 = load i64, i64* %z4, align 8
  %mul161 = mul nsw i64 %142, 8697
  %add162 = add nsw i64 %add160, %mul161
  store i64 %add162, i64* %tmp0, align 8
  %143 = load i64, i64* %z1, align 8
  %mul163 = mul nsw i64 %143, -4176
  %144 = load i64, i64* %z2, align 8
  %mul164 = mul nsw i64 %144, -4926
  %add165 = add nsw i64 %mul163, %mul164
  %145 = load i64, i64* %z3, align 8
  %mul166 = mul nsw i64 %145, 7373
  %add167 = add nsw i64 %add165, %mul166
  %146 = load i64, i64* %z4, align 8
  %mul168 = mul nsw i64 %146, 20995
  %add169 = add nsw i64 %add167, %mul168
  store i64 %add169, i64* %tmp2, align 8
  %147 = load i64, i64* %tmp10, align 8
  %148 = load i64, i64* %tmp2, align 8
  %add170 = add nsw i64 %147, %148
  %add171 = add nsw i64 %add170, 262144
  %shr172 = ashr i64 %add171, 19
  %conv173 = trunc i64 %shr172 to i32
  %and174 = and i32 %conv173, 1023
  %idxprom175 = sext i32 %and174 to i64
  %149 = load i8*, i8** %range_limit, align 8
  %arrayidx176 = getelementptr inbounds i8, i8* %149, i64 %idxprom175
  %150 = load i8, i8* %arrayidx176, align 1
  %151 = load i8*, i8** %outptr, align 8
  %arrayidx177 = getelementptr inbounds i8, i8* %151, i64 0
  store i8 %150, i8* %arrayidx177, align 1
  %152 = load i64, i64* %tmp10, align 8
  %153 = load i64, i64* %tmp2, align 8
  %sub178 = sub nsw i64 %152, %153
  %add179 = add nsw i64 %sub178, 262144
  %shr180 = ashr i64 %add179, 19
  %conv181 = trunc i64 %shr180 to i32
  %and182 = and i32 %conv181, 1023
  %idxprom183 = sext i32 %and182 to i64
  %154 = load i8*, i8** %range_limit, align 8
  %arrayidx184 = getelementptr inbounds i8, i8* %154, i64 %idxprom183
  %155 = load i8, i8* %arrayidx184, align 1
  %156 = load i8*, i8** %outptr, align 8
  %arrayidx185 = getelementptr inbounds i8, i8* %156, i64 3
  store i8 %155, i8* %arrayidx185, align 1
  %157 = load i64, i64* %tmp12, align 8
  %158 = load i64, i64* %tmp0, align 8
  %add186 = add nsw i64 %157, %158
  %add187 = add nsw i64 %add186, 262144
  %shr188 = ashr i64 %add187, 19
  %conv189 = trunc i64 %shr188 to i32
  %and190 = and i32 %conv189, 1023
  %idxprom191 = sext i32 %and190 to i64
  %159 = load i8*, i8** %range_limit, align 8
  %arrayidx192 = getelementptr inbounds i8, i8* %159, i64 %idxprom191
  %160 = load i8, i8* %arrayidx192, align 1
  %161 = load i8*, i8** %outptr, align 8
  %arrayidx193 = getelementptr inbounds i8, i8* %161, i64 1
  store i8 %160, i8* %arrayidx193, align 1
  %162 = load i64, i64* %tmp12, align 8
  %163 = load i64, i64* %tmp0, align 8
  %sub194 = sub nsw i64 %162, %163
  %add195 = add nsw i64 %sub194, 262144
  %shr196 = ashr i64 %add195, 19
  %conv197 = trunc i64 %shr196 to i32
  %and198 = and i32 %conv197, 1023
  %idxprom199 = sext i32 %and198 to i64
  %164 = load i8*, i8** %range_limit, align 8
  %arrayidx200 = getelementptr inbounds i8, i8* %164, i64 %idxprom199
  %165 = load i8, i8* %arrayidx200, align 1
  %166 = load i8*, i8** %outptr, align 8
  %arrayidx201 = getelementptr inbounds i8, i8* %166, i64 2
  store i8 %165, i8* %arrayidx201, align 1
  %167 = load i32*, i32** %wsptr, align 8
  %add.ptr202 = getelementptr inbounds i32, i32* %167, i64 8
  store i32* %add.ptr202, i32** %wsptr, align 8
  br label %for.inc.203

for.inc.203:                                      ; preds = %if.end.135, %if.then.121
  %168 = load i32, i32* %ctr, align 4
  %inc = add nsw i32 %168, 1
  store i32 %inc, i32* %ctr, align 4
  br label %for.cond.102

for.end.204:                                      ; preds = %for.cond.102
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_idct_2x2(%struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i16* %coef_block, i8** %output_buf, i32 %output_col) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %coef_block.addr = alloca i16*, align 8
  %output_buf.addr = alloca i8**, align 8
  %output_col.addr = alloca i32, align 4
  %tmp0 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %z1 = alloca i64, align 8
  %inptr = alloca i16*, align 8
  %quantptr = alloca i32*, align 8
  %wsptr = alloca i32*, align 8
  %outptr = alloca i8*, align 8
  %range_limit = alloca i8*, align 8
  %ctr = alloca i32, align 4
  %workspace = alloca [16 x i32], align 16
  %dcval = alloca i32, align 4
  %dcval81 = alloca i8, align 1
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
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay, i32** %wsptr, align 8
  store i32 8, i32* %ctr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %ctr, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %ctr, align 4
  %cmp1 = icmp eq i32 %7, 6
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %8 = load i32, i32* %ctr, align 4
  %cmp2 = icmp eq i32 %8, 4
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %9 = load i32, i32* %ctr, align 4
  %cmp4 = icmp eq i32 %9, 2
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false.3
  %10 = load i16*, i16** %inptr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %10, i64 8
  %11 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %11 to i32
  %12 = load i16*, i16** %inptr, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %12, i64 24
  %13 = load i16, i16* %arrayidx5, align 2
  %conv6 = sext i16 %13 to i32
  %or = or i32 %conv, %conv6
  %14 = load i16*, i16** %inptr, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %14, i64 40
  %15 = load i16, i16* %arrayidx7, align 2
  %conv8 = sext i16 %15 to i32
  %or9 = or i32 %or, %conv8
  %16 = load i16*, i16** %inptr, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %16, i64 56
  %17 = load i16, i16* %arrayidx10, align 2
  %conv11 = sext i16 %17 to i32
  %or12 = or i32 %or9, %conv11
  %cmp13 = icmp eq i32 %or12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %if.end
  %18 = load i16*, i16** %inptr, align 8
  %arrayidx16 = getelementptr inbounds i16, i16* %18, i64 0
  %19 = load i16, i16* %arrayidx16, align 2
  %conv17 = sext i16 %19 to i32
  %20 = load i32*, i32** %quantptr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %20, i64 0
  %21 = load i32, i32* %arrayidx18, align 4
  %mul = mul nsw i32 %conv17, %21
  %shl = shl i32 %mul, 2
  store i32 %shl, i32* %dcval, align 4
  %22 = load i32, i32* %dcval, align 4
  %23 = load i32*, i32** %wsptr, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %22, i32* %arrayidx19, align 4
  %24 = load i32, i32* %dcval, align 4
  %25 = load i32*, i32** %wsptr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %25, i64 8
  store i32 %24, i32* %arrayidx20, align 4
  br label %for.inc

if.end.21:                                        ; preds = %if.end
  %26 = load i16*, i16** %inptr, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %26, i64 0
  %27 = load i16, i16* %arrayidx22, align 2
  %conv23 = sext i16 %27 to i32
  %28 = load i32*, i32** %quantptr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %28, i64 0
  %29 = load i32, i32* %arrayidx24, align 4
  %mul25 = mul nsw i32 %conv23, %29
  %conv26 = sext i32 %mul25 to i64
  store i64 %conv26, i64* %z1, align 8
  %30 = load i64, i64* %z1, align 8
  %shl27 = shl i64 %30, 15
  store i64 %shl27, i64* %tmp10, align 8
  %31 = load i16*, i16** %inptr, align 8
  %arrayidx28 = getelementptr inbounds i16, i16* %31, i64 56
  %32 = load i16, i16* %arrayidx28, align 2
  %conv29 = sext i16 %32 to i32
  %33 = load i32*, i32** %quantptr, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %33, i64 56
  %34 = load i32, i32* %arrayidx30, align 4
  %mul31 = mul nsw i32 %conv29, %34
  %conv32 = sext i32 %mul31 to i64
  store i64 %conv32, i64* %z1, align 8
  %35 = load i64, i64* %z1, align 8
  %mul33 = mul nsw i64 %35, -5906
  store i64 %mul33, i64* %tmp0, align 8
  %36 = load i16*, i16** %inptr, align 8
  %arrayidx34 = getelementptr inbounds i16, i16* %36, i64 40
  %37 = load i16, i16* %arrayidx34, align 2
  %conv35 = sext i16 %37 to i32
  %38 = load i32*, i32** %quantptr, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %38, i64 40
  %39 = load i32, i32* %arrayidx36, align 4
  %mul37 = mul nsw i32 %conv35, %39
  %conv38 = sext i32 %mul37 to i64
  store i64 %conv38, i64* %z1, align 8
  %40 = load i64, i64* %z1, align 8
  %mul39 = mul nsw i64 %40, 6967
  %41 = load i64, i64* %tmp0, align 8
  %add = add nsw i64 %41, %mul39
  store i64 %add, i64* %tmp0, align 8
  %42 = load i16*, i16** %inptr, align 8
  %arrayidx40 = getelementptr inbounds i16, i16* %42, i64 24
  %43 = load i16, i16* %arrayidx40, align 2
  %conv41 = sext i16 %43 to i32
  %44 = load i32*, i32** %quantptr, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %44, i64 24
  %45 = load i32, i32* %arrayidx42, align 4
  %mul43 = mul nsw i32 %conv41, %45
  %conv44 = sext i32 %mul43 to i64
  store i64 %conv44, i64* %z1, align 8
  %46 = load i64, i64* %z1, align 8
  %mul45 = mul nsw i64 %46, -10426
  %47 = load i64, i64* %tmp0, align 8
  %add46 = add nsw i64 %47, %mul45
  store i64 %add46, i64* %tmp0, align 8
  %48 = load i16*, i16** %inptr, align 8
  %arrayidx47 = getelementptr inbounds i16, i16* %48, i64 8
  %49 = load i16, i16* %arrayidx47, align 2
  %conv48 = sext i16 %49 to i32
  %50 = load i32*, i32** %quantptr, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %50, i64 8
  %51 = load i32, i32* %arrayidx49, align 4
  %mul50 = mul nsw i32 %conv48, %51
  %conv51 = sext i32 %mul50 to i64
  store i64 %conv51, i64* %z1, align 8
  %52 = load i64, i64* %z1, align 8
  %mul52 = mul nsw i64 %52, 29692
  %53 = load i64, i64* %tmp0, align 8
  %add53 = add nsw i64 %53, %mul52
  store i64 %add53, i64* %tmp0, align 8
  %54 = load i64, i64* %tmp10, align 8
  %55 = load i64, i64* %tmp0, align 8
  %add54 = add nsw i64 %54, %55
  %add55 = add nsw i64 %add54, 4096
  %shr = ashr i64 %add55, 13
  %conv56 = trunc i64 %shr to i32
  %56 = load i32*, i32** %wsptr, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %conv56, i32* %arrayidx57, align 4
  %57 = load i64, i64* %tmp10, align 8
  %58 = load i64, i64* %tmp0, align 8
  %sub = sub nsw i64 %57, %58
  %add58 = add nsw i64 %sub, 4096
  %shr59 = ashr i64 %add58, 13
  %conv60 = trunc i64 %shr59 to i32
  %59 = load i32*, i32** %wsptr, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %59, i64 8
  store i32 %conv60, i32* %arrayidx61, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.21, %if.then.15, %if.then
  %60 = load i16*, i16** %inptr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %60, i32 1
  store i16* %incdec.ptr, i16** %inptr, align 8
  %61 = load i32*, i32** %quantptr, align 8
  %incdec.ptr62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %incdec.ptr62, i32** %quantptr, align 8
  %62 = load i32*, i32** %wsptr, align 8
  %incdec.ptr63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %incdec.ptr63, i32** %wsptr, align 8
  %63 = load i32, i32* %ctr, align 4
  %dec = add nsw i32 %63, -1
  store i32 %dec, i32* %ctr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay64 = getelementptr inbounds [16 x i32], [16 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay64, i32** %wsptr, align 8
  store i32 0, i32* %ctr, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.128, %for.end
  %64 = load i32, i32* %ctr, align 4
  %cmp66 = icmp slt i32 %64, 2
  br i1 %cmp66, label %for.body.68, label %for.end.129

for.body.68:                                      ; preds = %for.cond.65
  %65 = load i32, i32* %ctr, align 4
  %idxprom = sext i32 %65 to i64
  %66 = load i8**, i8*** %output_buf.addr, align 8
  %arrayidx69 = getelementptr inbounds i8*, i8** %66, i64 %idxprom
  %67 = load i8*, i8** %arrayidx69, align 8
  %68 = load i32, i32* %output_col.addr, align 4
  %idx.ext = zext i32 %68 to i64
  %add.ptr70 = getelementptr inbounds i8, i8* %67, i64 %idx.ext
  store i8* %add.ptr70, i8** %outptr, align 8
  %69 = load i32*, i32** %wsptr, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %69, i64 1
  %70 = load i32, i32* %arrayidx71, align 4
  %71 = load i32*, i32** %wsptr, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %71, i64 3
  %72 = load i32, i32* %arrayidx72, align 4
  %or73 = or i32 %70, %72
  %73 = load i32*, i32** %wsptr, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %73, i64 5
  %74 = load i32, i32* %arrayidx74, align 4
  %or75 = or i32 %or73, %74
  %75 = load i32*, i32** %wsptr, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %75, i64 7
  %76 = load i32, i32* %arrayidx76, align 4
  %or77 = or i32 %or75, %76
  %cmp78 = icmp eq i32 %or77, 0
  br i1 %cmp78, label %if.then.80, label %if.end.92

if.then.80:                                       ; preds = %for.body.68
  %77 = load i32*, i32** %wsptr, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %77, i64 0
  %78 = load i32, i32* %arrayidx82, align 4
  %conv83 = sext i32 %78 to i64
  %add84 = add nsw i64 %conv83, 16
  %shr85 = ashr i64 %add84, 5
  %conv86 = trunc i64 %shr85 to i32
  %and = and i32 %conv86, 1023
  %idxprom87 = sext i32 %and to i64
  %79 = load i8*, i8** %range_limit, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %79, i64 %idxprom87
  %80 = load i8, i8* %arrayidx88, align 1
  store i8 %80, i8* %dcval81, align 1
  %81 = load i8, i8* %dcval81, align 1
  %82 = load i8*, i8** %outptr, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %82, i64 0
  store i8 %81, i8* %arrayidx89, align 1
  %83 = load i8, i8* %dcval81, align 1
  %84 = load i8*, i8** %outptr, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %84, i64 1
  store i8 %83, i8* %arrayidx90, align 1
  %85 = load i32*, i32** %wsptr, align 8
  %add.ptr91 = getelementptr inbounds i32, i32* %85, i64 8
  store i32* %add.ptr91, i32** %wsptr, align 8
  br label %for.inc.128

if.end.92:                                        ; preds = %for.body.68
  %86 = load i32*, i32** %wsptr, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %86, i64 0
  %87 = load i32, i32* %arrayidx93, align 4
  %conv94 = sext i32 %87 to i64
  %shl95 = shl i64 %conv94, 15
  store i64 %shl95, i64* %tmp10, align 8
  %88 = load i32*, i32** %wsptr, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %88, i64 7
  %89 = load i32, i32* %arrayidx96, align 4
  %conv97 = sext i32 %89 to i64
  %mul98 = mul nsw i64 %conv97, -5906
  %90 = load i32*, i32** %wsptr, align 8
  %arrayidx99 = getelementptr inbounds i32, i32* %90, i64 5
  %91 = load i32, i32* %arrayidx99, align 4
  %conv100 = sext i32 %91 to i64
  %mul101 = mul nsw i64 %conv100, 6967
  %add102 = add nsw i64 %mul98, %mul101
  %92 = load i32*, i32** %wsptr, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %92, i64 3
  %93 = load i32, i32* %arrayidx103, align 4
  %conv104 = sext i32 %93 to i64
  %mul105 = mul nsw i64 %conv104, -10426
  %add106 = add nsw i64 %add102, %mul105
  %94 = load i32*, i32** %wsptr, align 8
  %arrayidx107 = getelementptr inbounds i32, i32* %94, i64 1
  %95 = load i32, i32* %arrayidx107, align 4
  %conv108 = sext i32 %95 to i64
  %mul109 = mul nsw i64 %conv108, 29692
  %add110 = add nsw i64 %add106, %mul109
  store i64 %add110, i64* %tmp0, align 8
  %96 = load i64, i64* %tmp10, align 8
  %97 = load i64, i64* %tmp0, align 8
  %add111 = add nsw i64 %96, %97
  %add112 = add nsw i64 %add111, 524288
  %shr113 = ashr i64 %add112, 20
  %conv114 = trunc i64 %shr113 to i32
  %and115 = and i32 %conv114, 1023
  %idxprom116 = sext i32 %and115 to i64
  %98 = load i8*, i8** %range_limit, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %98, i64 %idxprom116
  %99 = load i8, i8* %arrayidx117, align 1
  %100 = load i8*, i8** %outptr, align 8
  %arrayidx118 = getelementptr inbounds i8, i8* %100, i64 0
  store i8 %99, i8* %arrayidx118, align 1
  %101 = load i64, i64* %tmp10, align 8
  %102 = load i64, i64* %tmp0, align 8
  %sub119 = sub nsw i64 %101, %102
  %add120 = add nsw i64 %sub119, 524288
  %shr121 = ashr i64 %add120, 20
  %conv122 = trunc i64 %shr121 to i32
  %and123 = and i32 %conv122, 1023
  %idxprom124 = sext i32 %and123 to i64
  %103 = load i8*, i8** %range_limit, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %103, i64 %idxprom124
  %104 = load i8, i8* %arrayidx125, align 1
  %105 = load i8*, i8** %outptr, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %105, i64 1
  store i8 %104, i8* %arrayidx126, align 1
  %106 = load i32*, i32** %wsptr, align 8
  %add.ptr127 = getelementptr inbounds i32, i32* %106, i64 8
  store i32* %add.ptr127, i32** %wsptr, align 8
  br label %for.inc.128

for.inc.128:                                      ; preds = %if.end.92, %if.then.80
  %107 = load i32, i32* %ctr, align 4
  %inc = add nsw i32 %107, 1
  store i32 %inc, i32* %ctr, align 4
  br label %for.cond.65

for.end.129:                                      ; preds = %for.cond.65
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_idct_1x1(%struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i16* %coef_block, i8** %output_buf, i32 %output_col) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %coef_block.addr = alloca i16*, align 8
  %output_buf.addr = alloca i8**, align 8
  %output_col.addr = alloca i32, align 4
  %dcval = alloca i32, align 4
  %quantptr = alloca i32*, align 8
  %range_limit = alloca i8*, align 8
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
  %2 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %2, i32 0, i32 20
  %3 = load i8*, i8** %dct_table, align 8
  %4 = bitcast i8* %3 to i32*
  store i32* %4, i32** %quantptr, align 8
  %5 = load i16*, i16** %coef_block.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 0
  %6 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %6 to i32
  %7 = load i32*, i32** %quantptr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %7, i64 0
  %8 = load i32, i32* %arrayidx1, align 4
  %mul = mul nsw i32 %conv, %8
  store i32 %mul, i32* %dcval, align 4
  %9 = load i32, i32* %dcval, align 4
  %conv2 = sext i32 %9 to i64
  %add = add nsw i64 %conv2, 4
  %shr = ashr i64 %add, 3
  %conv3 = trunc i64 %shr to i32
  store i32 %conv3, i32* %dcval, align 4
  %10 = load i32, i32* %dcval, align 4
  %and = and i32 %10, 1023
  %idxprom = sext i32 %and to i64
  %11 = load i8*, i8** %range_limit, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx4, align 1
  %13 = load i32, i32* %output_col.addr, align 4
  %idxprom5 = zext i32 %13 to i64
  %14 = load i8**, i8*** %output_buf.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %14, i64 0
  %15 = load i8*, i8** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %15, i64 %idxprom5
  store i8 %12, i8* %arrayidx7, align 1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
