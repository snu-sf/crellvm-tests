; ModuleID = './MultiSource.Applications.JM/63.lencod.refbuf.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, %struct.EncodingEnvironment }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32 }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@width_pad = common global i32 0, align 4
@height_pad = common global i32 0, align 4
@width_pad_cr = common global i32 0, align 4
@chroma_shift_x = common global i32 0, align 4
@height_pad_cr = common global i32 0, align 4
@chroma_shift_y = common global i32 0, align 4
@chroma_mask_mv_x = common global i8 0, align 1
@chroma_mask_mv_y = common global i8 0, align 1
@color_formats = common global i32 0, align 4
@top_pic = common global %struct.Picture* null, align 8
@bottom_pic = common global %struct.Picture* null, align 8
@frame_pic = common global %struct.Picture* null, align 8
@frame_pic_1 = common global %struct.Picture* null, align 8
@frame_pic_2 = common global %struct.Picture* null, align 8
@frame_pic_3 = common global %struct.Picture* null, align 8
@frame_pic_si = common global %struct.Picture* null, align 8
@Bit_Buffer = common global i64* null, align 8
@imgY_org = common global i16** null, align 8
@imgUV_org = common global i16*** null, align 8
@imgY_sub_tmp = common global i32** null, align 8
@PicPos = common global i32** null, align 8
@log2_max_frame_num_minus4 = common global i32 0, align 4
@log2_max_pic_order_cnt_lsb_minus4 = common global i32 0, align 4
@me_tot_time = common global i64 0, align 8
@me_time = common global i64 0, align 8
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@dsr_new_search_range = common global i32 0, align 4
@mb_adaptive = common global i32 0, align 4
@MBPairIsField = common global i32 0, align 4
@wp_weight = common global i32*** null, align 8
@wp_offset = common global i32*** null, align 8
@wbp_weight = common global i32**** null, align 8
@luma_log_weight_denom = common global i32 0, align 4
@chroma_log_weight_denom = common global i32 0, align 4
@wp_luma_round = common global i32 0, align 4
@wp_chroma_round = common global i32 0, align 4
@imgY_org_top = common global i16** null, align 8
@imgY_org_bot = common global i16** null, align 8
@imgUV_org_top = common global i16*** null, align 8
@imgUV_org_bot = common global i16*** null, align 8
@imgY_org_frm = common global i16** null, align 8
@imgUV_org_frm = common global i16*** null, align 8
@imgY_com = common global i16** null, align 8
@imgUV_com = common global i16*** null, align 8
@direct_ref_idx = common global i8*** null, align 8
@direct_pdir = common global i8** null, align 8
@pixel_map = common global i8** null, align 8
@refresh_map = common global i8** null, align 8
@intras = common global i32 0, align 4
@frame_ctr = common global [5 x i32] zeroinitializer, align 16
@frame_no = common global i32 0, align 4
@nextP_tr_fld = common global i32 0, align 4
@nextP_tr_frm = common global i32 0, align 4
@tot_time = common global i64 0, align 8
@errortext = common global [300 x i8] zeroinitializer, align 16
@b8_ipredmode8x8 = common global [4 x [4 x i8]] zeroinitializer, align 16
@b8_intra_pred_modes8x8 = common global [16 x i8] zeroinitializer, align 16
@gop_structure = common global %struct.GOP_DATA* null, align 8
@rdopt = common global %struct.RD_DATA* null, align 8
@rddata_top_frame_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_frame_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_top_field_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_field_mb = common global %struct.RD_DATA zeroinitializer, align 8
@p_stat = common global %struct._IO_FILE* null, align 8
@p_log = common global %struct._IO_FILE* null, align 8
@p_trace = common global %struct._IO_FILE* null, align 8
@p_in = common global i32 0, align 4
@p_dec = common global i32 0, align 4
@mb16x16_cost_frame = common global double* null, align 8
@Bytes_After_Header = common global i32 0, align 4
@encode_one_macroblock = common global void ()* null, align 8
@lrec = common global i32** null, align 8
@lrec_uv = common global i32*** null, align 8
@si_frame_indicator = common global i32 0, align 4
@sp2_frame_indicator = common global i32 0, align 4
@number_sp2_frames = common global i32 0, align 4
@giRDOpt_B8OnlyFlag = common global i32 0, align 4
@imgY_tmp = common global i16** null, align 8
@imgUV_tmp = common global [2 x i16**] zeroinitializer, align 16
@frameNuminGOP = common global i32 0, align 4
@redundant_coding = common global i32 0, align 4
@key_frame = common global i32 0, align 4
@redundant_ref_idx = common global i32 0, align 4
@img_pad_size_uv_x = common global i32 0, align 4
@img_pad_size_uv_y = common global i32 0, align 4
@shift_cr_x = common global i32 0, align 4
@shift_cr_y = common global i32 0, align 4
@img_padded_size_x = common global i32 0, align 4
@img_cr_padded_size_x = common global i32 0, align 4
@start_me_refinement_hp = common global i32 0, align 4
@start_me_refinement_qp = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i16* @FastLine4X(i16**** %Pic, i32 %y, i32 %x) #0 {
entry:
  %Pic.addr = alloca i16****, align 8
  %y.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i16**** %Pic, i16***** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %shr = ashr i32 %0, 2
  %idxprom = sext i32 %shr to i64
  %1 = load i32, i32* %y.addr, align 4
  %shr1 = ashr i32 %1, 2
  %idxprom2 = sext i32 %shr1 to i64
  %2 = load i32, i32* %x.addr, align 4
  %and = and i32 %2, 3
  %idxprom3 = sext i32 %and to i64
  %3 = load i32, i32* %y.addr, align 4
  %and4 = and i32 %3, 3
  %idxprom5 = sext i32 %and4 to i64
  %4 = load i16****, i16***** %Pic.addr, align 8
  %arrayidx = getelementptr inbounds i16***, i16**** %4, i64 %idxprom5
  %5 = load i16***, i16**** %arrayidx, align 8
  %arrayidx6 = getelementptr inbounds i16**, i16*** %5, i64 %idxprom3
  %6 = load i16**, i16*** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i16*, i16** %6, i64 %idxprom2
  %7 = load i16*, i16** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom
  ret i16* %arrayidx8
}

; Function Attrs: nounwind uwtable
define i16* @UMVLine4X(i16**** %Pic, i32 %y, i32 %x) #0 {
entry:
  %Pic.addr = alloca i16****, align 8
  %y.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %xpos = alloca i32, align 4
  %ypos = alloca i32, align 4
  store i16**** %Pic, i16***** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* @width_pad, align 4
  %1 = load i32, i32* %x.addr, align 4
  %shr = ashr i32 %1, 2
  %call = call i32 @iClip3(i32 0, i32 %0, i32 %shr)
  store i32 %call, i32* %xpos, align 4
  %2 = load i32, i32* @height_pad, align 4
  %3 = load i32, i32* %y.addr, align 4
  %shr1 = ashr i32 %3, 2
  %call2 = call i32 @iClip3(i32 0, i32 %2, i32 %shr1)
  store i32 %call2, i32* %ypos, align 4
  %4 = load i32, i32* %xpos, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %ypos, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load i32, i32* %x.addr, align 4
  %and = and i32 %6, 3
  %idxprom4 = sext i32 %and to i64
  %7 = load i32, i32* %y.addr, align 4
  %and5 = and i32 %7, 3
  %idxprom6 = sext i32 %and5 to i64
  %8 = load i16****, i16***** %Pic.addr, align 8
  %arrayidx = getelementptr inbounds i16***, i16**** %8, i64 %idxprom6
  %9 = load i16***, i16**** %arrayidx, align 8
  %arrayidx7 = getelementptr inbounds i16**, i16*** %9, i64 %idxprom4
  %10 = load i16**, i16*** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i16*, i16** %10, i64 %idxprom3
  %11 = load i16*, i16** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i16, i16* %11, i64 %idxprom
  ret i16* %arrayidx9
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iClip3(i32 %low, i32 %high, i32 %x) #1 {
entry:
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %low, i32* %low.addr, align 4
  store i32 %high, i32* %high.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %low.addr, align 4
  %call = call i32 @imax(i32 %0, i32 %1)
  store i32 %call, i32* %x.addr, align 4
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %high.addr, align 4
  %call1 = call i32 @imin(i32 %2, i32 %3)
  store i32 %call1, i32* %x.addr, align 4
  %4 = load i32, i32* %x.addr, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i16* @UMVLine8X_chroma(i16**** %Pic, i32 %y, i32 %x) #0 {
entry:
  %Pic.addr = alloca i16****, align 8
  %y.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %xpos = alloca i32, align 4
  %ypos = alloca i32, align 4
  store i16**** %Pic, i16***** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* @width_pad_cr, align 4
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* @chroma_shift_x, align 4
  %shr = ashr i32 %1, %2
  %call = call i32 @iClip3(i32 0, i32 %0, i32 %shr)
  store i32 %call, i32* %xpos, align 4
  %3 = load i32, i32* @height_pad_cr, align 4
  %4 = load i32, i32* %y.addr, align 4
  %5 = load i32, i32* @chroma_shift_y, align 4
  %shr1 = ashr i32 %4, %5
  %call2 = call i32 @iClip3(i32 0, i32 %3, i32 %shr1)
  store i32 %call2, i32* %ypos, align 4
  %6 = load i32, i32* %xpos, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %ypos, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i8, i8* @chroma_mask_mv_x, align 1
  %conv = zext i8 %9 to i32
  %and = and i32 %8, %conv
  %idxprom4 = sext i32 %and to i64
  %10 = load i32, i32* %y.addr, align 4
  %11 = load i8, i8* @chroma_mask_mv_y, align 1
  %conv5 = zext i8 %11 to i32
  %and6 = and i32 %10, %conv5
  %idxprom7 = sext i32 %and6 to i64
  %12 = load i16****, i16***** %Pic.addr, align 8
  %arrayidx = getelementptr inbounds i16***, i16**** %12, i64 %idxprom7
  %13 = load i16***, i16**** %arrayidx, align 8
  %arrayidx8 = getelementptr inbounds i16**, i16*** %13, i64 %idxprom4
  %14 = load i16**, i16*** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i16*, i16** %14, i64 %idxprom3
  %15 = load i16*, i16** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %15, i64 %idxprom
  ret i16* %arrayidx10
}

; Function Attrs: nounwind uwtable
define i16* @FastLine8X_chroma(i16**** %Pic, i32 %y, i32 %x) #0 {
entry:
  %Pic.addr = alloca i16****, align 8
  %y.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i16**** %Pic, i16***** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* @chroma_shift_x, align 4
  %shr = ashr i32 %0, %1
  %idxprom = sext i32 %shr to i64
  %2 = load i32, i32* %y.addr, align 4
  %3 = load i32, i32* @chroma_shift_y, align 4
  %shr1 = ashr i32 %2, %3
  %idxprom2 = sext i32 %shr1 to i64
  %4 = load i32, i32* %x.addr, align 4
  %5 = load i8, i8* @chroma_mask_mv_x, align 1
  %conv = zext i8 %5 to i32
  %and = and i32 %4, %conv
  %idxprom3 = sext i32 %and to i64
  %6 = load i32, i32* %y.addr, align 4
  %7 = load i8, i8* @chroma_mask_mv_y, align 1
  %conv4 = zext i8 %7 to i32
  %and5 = and i32 %6, %conv4
  %idxprom6 = sext i32 %and5 to i64
  %8 = load i16****, i16***** %Pic.addr, align 8
  %arrayidx = getelementptr inbounds i16***, i16**** %8, i64 %idxprom6
  %9 = load i16***, i16**** %arrayidx, align 8
  %arrayidx7 = getelementptr inbounds i16**, i16*** %9, i64 %idxprom3
  %10 = load i16**, i16*** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i16*, i16** %10, i64 %idxprom2
  %11 = load i16*, i16** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i16, i16* %11, i64 %idxprom
  ret i16* %arrayidx9
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imax(i32 %a, i32 %b) #1 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imin(i32 %a, i32 %b) #1 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
