; ModuleID = './MultiSource.Applications.JM/43.lencod.me_distortion.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i8**, i32, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], i32****, i32***, i32***, i32***, i32****, i32****, %struct.Picture*, %struct.Slice*, %struct.macroblock*, i32*, i32*, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i16******, i16******, i16******, i16******, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [32 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double**, double***, i32***, double**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [2 x i32], i32, i32, i16, i32, i32, i32, i32, i32 }
%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, %struct.EncodingEnvironment }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32 }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.macroblock = type { i32, i32, i32, [2 x i32], i32, [8 x i32], %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.SubImageContainer = type { i16****, [2 x i16****] }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }

@input = external global %struct.InputParameters*, align 8
@byte_abs = external global i32*, align 8
@img = external global %struct.ImageParameters*, align 8
@m = internal global [16 x i32] zeroinitializer, align 16
@d = internal global [16 x i32] zeroinitializer, align 16
@m2 = internal global [8 x [8 x i32]] zeroinitializer, align 16
@m1 = internal global [8 x [8 x i32]] zeroinitializer, align 16
@m3 = internal global [8 x [8 x i32]] zeroinitializer, align 16
@img_padded_size_x = common global i32 0, align 4
@src_line = internal global i16* null, align 8
@ref_access_method = common global i32 0, align 4
@get_line = common global [2 x i16* (i16****, i32, i32)*] zeroinitializer, align 16
@ref_pic_sub = common global %struct.SubImageContainer zeroinitializer, align 8
@ref_line = internal global i16* null, align 8
@ChromaMEEnable = common global i32 0, align 4
@shift_cr_x = common global i32 0, align 4
@shift_cr_y = common global i32 0, align 4
@img_cr_padded_size_x = common global i32 0, align 4
@get_crline = common global [2 x i16* (i16****, i32, i32)*] zeroinitializer, align 16
@weight_luma = common global i32 0, align 4
@wp_luma_round = common global i32 0, align 4
@luma_log_weight_denom = common global i32 0, align 4
@offset_luma = common global i32 0, align 4
@weight_cr = common global [2 x i32] zeroinitializer, align 4
@wp_chroma_round = common global i32 0, align 4
@chroma_log_weight_denom = common global i32 0, align 4
@offset_cr = common global [2 x i32] zeroinitializer, align 4
@bipred2_access_method = common global i32 0, align 4
@ref_pic2_sub = common global %struct.SubImageContainer zeroinitializer, align 8
@ref2_line = internal global i16* null, align 8
@bipred1_access_method = common global i32 0, align 4
@ref_pic1_sub = common global %struct.SubImageContainer zeroinitializer, align 8
@ref1_line = internal global i16* null, align 8
@weight1 = common global i16 0, align 2
@weight2 = common global i16 0, align 2
@offsetBi = common global i16 0, align 2
@weight1_cr = common global [2 x i16] zeroinitializer, align 2
@weight2_cr = common global [2 x i16] zeroinitializer, align 2
@offsetBi_cr = common global [2 x i16] zeroinitializer, align 2
@test8x8transform = common global i32 0, align 4
@diff = internal global [256 x i32] zeroinitializer, align 16
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
@chroma_mask_mv_y = common global i8 0, align 1
@chroma_mask_mv_x = common global i8 0, align 1
@chroma_shift_y = common global i32 0, align 4
@chroma_shift_x = common global i32 0, align 4
@start_me_refinement_hp = common global i32 0, align 4
@start_me_refinement_qp = common global i32 0, align 4
@getNeighbour = common global void (i32, i32, i32, i32, %struct.pix_pos*)* null, align 8
@get_mb_block_pos = common global void (i32, i32*, i32*)* null, align 8
@height_pad = common global i32 0, align 4
@width_pad = common global i32 0, align 4
@height_pad_cr = common global i32 0, align 4
@width_pad_cr = common global i32 0, align 4
@get_line1 = common global [2 x i16* (i16****, i32, i32)*] zeroinitializer, align 16
@get_line2 = common global [2 x i16* (i16****, i32, i32)*] zeroinitializer, align 16
@get_crline1 = common global [2 x i16* (i16****, i32, i32)*] zeroinitializer, align 16
@get_crline2 = common global [2 x i16* (i16****, i32, i32)*] zeroinitializer, align 16
@img_width = common global i16 0, align 2
@img_height = common global i16 0, align 2
@computeUniPred = common global [6 x i32 (i16*, i32, i32, i32, i32, i32)*] zeroinitializer, align 16
@computeBiPred = common global i32 (i16*, i32, i32, i32, i32, i32, i32, i32)* null, align 8
@computeBiPred1 = common global [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*] zeroinitializer, align 16
@computeBiPred2 = common global [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @distortion4x4(i32* %diff) #0 {
entry:
  %diff.addr = alloca i32*, align 8
  %distortion = alloca i32, align 4
  %k = alloca i32, align 4
  %byte_sse = alloca i32*, align 8
  store i32* %diff, i32** %diff.addr, align 8
  store i32 0, i32* %distortion, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ModeDecisionMetric = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 200
  %1 = load i32, i32* %ModeDecisionMetric, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.3
    i32 2, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %2 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %2, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %diff.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i32*, i32** @byte_abs, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %8 = load i32, i32* %distortion, align 4
  %add = add i32 %8, %7
  store i32 %add, i32* %distortion, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %k, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 62
  %11 = load i32*, i32** %quad, align 8
  store i32* %11, i32** %byte_sse, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.12, %sw.bb.3
  %12 = load i32, i32* %k, align 4
  %cmp5 = icmp slt i32 %12, 16
  br i1 %cmp5, label %for.body.6, label %for.end.14

for.body.6:                                       ; preds = %for.cond.4
  %13 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load i32*, i32** %diff.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %14, i64 %idxprom7
  %15 = load i32, i32* %arrayidx8, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load i32*, i32** %byte_sse, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %16, i64 %idxprom9
  %17 = load i32, i32* %arrayidx10, align 4
  %18 = load i32, i32* %distortion, align 4
  %add11 = add nsw i32 %18, %17
  store i32 %add11, i32* %distortion, align 4
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.6
  %19 = load i32, i32* %k, align 4
  %inc13 = add nsw i32 %19, 1
  store i32 %inc13, i32* %k, align 4
  br label %for.cond.4

for.end.14:                                       ; preds = %for.cond.4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.15
  %20 = load i32*, i32** %diff.addr, align 8
  %call = call i32 @HadamardSAD4x4(i32* %20)
  store i32 %call, i32* %distortion, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.14, %for.end
  %21 = load i32, i32* %distortion, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @HadamardSAD4x4(i32* %diff) #0 {
entry:
  %diff.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  %satd = alloca i32, align 4
  store i32* %diff, i32** %diff.addr, align 8
  store i32 0, i32* %satd, align 4
  %0 = load i32*, i32** %diff.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load i32*, i32** %diff.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 12
  %3 = load i32, i32* %arrayidx1, align 4
  %add = add nsw i32 %1, %3
  store i32 %add, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 0), align 4
  %4 = load i32*, i32** %diff.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32*, i32** %diff.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 13
  %7 = load i32, i32* %arrayidx3, align 4
  %add4 = add nsw i32 %5, %7
  store i32 %add4, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 1), align 4
  %8 = load i32*, i32** %diff.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %8, i64 2
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32*, i32** %diff.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %10, i64 14
  %11 = load i32, i32* %arrayidx6, align 4
  %add7 = add nsw i32 %9, %11
  store i32 %add7, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 2), align 4
  %12 = load i32*, i32** %diff.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %12, i64 3
  %13 = load i32, i32* %arrayidx8, align 4
  %14 = load i32*, i32** %diff.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 15
  %15 = load i32, i32* %arrayidx9, align 4
  %add10 = add nsw i32 %13, %15
  store i32 %add10, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 3), align 4
  %16 = load i32*, i32** %diff.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %16, i64 4
  %17 = load i32, i32* %arrayidx11, align 4
  %18 = load i32*, i32** %diff.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %18, i64 8
  %19 = load i32, i32* %arrayidx12, align 4
  %add13 = add nsw i32 %17, %19
  store i32 %add13, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 4), align 4
  %20 = load i32*, i32** %diff.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %20, i64 5
  %21 = load i32, i32* %arrayidx14, align 4
  %22 = load i32*, i32** %diff.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %22, i64 9
  %23 = load i32, i32* %arrayidx15, align 4
  %add16 = add nsw i32 %21, %23
  store i32 %add16, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 5), align 4
  %24 = load i32*, i32** %diff.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %24, i64 6
  %25 = load i32, i32* %arrayidx17, align 4
  %26 = load i32*, i32** %diff.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %26, i64 10
  %27 = load i32, i32* %arrayidx18, align 4
  %add19 = add nsw i32 %25, %27
  store i32 %add19, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 6), align 4
  %28 = load i32*, i32** %diff.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %28, i64 7
  %29 = load i32, i32* %arrayidx20, align 4
  %30 = load i32*, i32** %diff.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %30, i64 11
  %31 = load i32, i32* %arrayidx21, align 4
  %add22 = add nsw i32 %29, %31
  store i32 %add22, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 7), align 4
  %32 = load i32*, i32** %diff.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %32, i64 4
  %33 = load i32, i32* %arrayidx23, align 4
  %34 = load i32*, i32** %diff.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %34, i64 8
  %35 = load i32, i32* %arrayidx24, align 4
  %sub = sub nsw i32 %33, %35
  store i32 %sub, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 8), align 4
  %36 = load i32*, i32** %diff.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %36, i64 5
  %37 = load i32, i32* %arrayidx25, align 4
  %38 = load i32*, i32** %diff.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %38, i64 9
  %39 = load i32, i32* %arrayidx26, align 4
  %sub27 = sub nsw i32 %37, %39
  store i32 %sub27, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 9), align 4
  %40 = load i32*, i32** %diff.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %40, i64 6
  %41 = load i32, i32* %arrayidx28, align 4
  %42 = load i32*, i32** %diff.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %42, i64 10
  %43 = load i32, i32* %arrayidx29, align 4
  %sub30 = sub nsw i32 %41, %43
  store i32 %sub30, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 10), align 4
  %44 = load i32*, i32** %diff.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %44, i64 7
  %45 = load i32, i32* %arrayidx31, align 4
  %46 = load i32*, i32** %diff.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %46, i64 11
  %47 = load i32, i32* %arrayidx32, align 4
  %sub33 = sub nsw i32 %45, %47
  store i32 %sub33, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 11), align 4
  %48 = load i32*, i32** %diff.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %48, i64 0
  %49 = load i32, i32* %arrayidx34, align 4
  %50 = load i32*, i32** %diff.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %50, i64 12
  %51 = load i32, i32* %arrayidx35, align 4
  %sub36 = sub nsw i32 %49, %51
  store i32 %sub36, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 12), align 4
  %52 = load i32*, i32** %diff.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %52, i64 1
  %53 = load i32, i32* %arrayidx37, align 4
  %54 = load i32*, i32** %diff.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %54, i64 13
  %55 = load i32, i32* %arrayidx38, align 4
  %sub39 = sub nsw i32 %53, %55
  store i32 %sub39, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 13), align 4
  %56 = load i32*, i32** %diff.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %56, i64 2
  %57 = load i32, i32* %arrayidx40, align 4
  %58 = load i32*, i32** %diff.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %58, i64 14
  %59 = load i32, i32* %arrayidx41, align 4
  %sub42 = sub nsw i32 %57, %59
  store i32 %sub42, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 14), align 4
  %60 = load i32*, i32** %diff.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %60, i64 3
  %61 = load i32, i32* %arrayidx43, align 4
  %62 = load i32*, i32** %diff.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %62, i64 15
  %63 = load i32, i32* %arrayidx44, align 4
  %sub45 = sub nsw i32 %61, %63
  store i32 %sub45, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 15), align 4
  %64 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 0), align 4
  %65 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 4), align 4
  %add46 = add nsw i32 %64, %65
  store i32 %add46, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 0), align 4
  %66 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 1), align 4
  %67 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 5), align 4
  %add47 = add nsw i32 %66, %67
  store i32 %add47, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 1), align 4
  %68 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 2), align 4
  %69 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 6), align 4
  %add48 = add nsw i32 %68, %69
  store i32 %add48, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 2), align 4
  %70 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 3), align 4
  %71 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 7), align 4
  %add49 = add nsw i32 %70, %71
  store i32 %add49, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 3), align 4
  %72 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 8), align 4
  %73 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 12), align 4
  %add50 = add nsw i32 %72, %73
  store i32 %add50, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 4), align 4
  %74 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 9), align 4
  %75 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 13), align 4
  %add51 = add nsw i32 %74, %75
  store i32 %add51, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 5), align 4
  %76 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 10), align 4
  %77 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 14), align 4
  %add52 = add nsw i32 %76, %77
  store i32 %add52, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 6), align 4
  %78 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 11), align 4
  %79 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 15), align 4
  %add53 = add nsw i32 %78, %79
  store i32 %add53, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 7), align 4
  %80 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 0), align 4
  %81 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 4), align 4
  %sub54 = sub nsw i32 %80, %81
  store i32 %sub54, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 8), align 4
  %82 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 1), align 4
  %83 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 5), align 4
  %sub55 = sub nsw i32 %82, %83
  store i32 %sub55, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 9), align 4
  %84 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 2), align 4
  %85 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 6), align 4
  %sub56 = sub nsw i32 %84, %85
  store i32 %sub56, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 10), align 4
  %86 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 3), align 4
  %87 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 7), align 4
  %sub57 = sub nsw i32 %86, %87
  store i32 %sub57, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 11), align 4
  %88 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 12), align 4
  %89 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 8), align 4
  %sub58 = sub nsw i32 %88, %89
  store i32 %sub58, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 12), align 4
  %90 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 13), align 4
  %91 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 9), align 4
  %sub59 = sub nsw i32 %90, %91
  store i32 %sub59, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 13), align 4
  %92 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 14), align 4
  %93 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 10), align 4
  %sub60 = sub nsw i32 %92, %93
  store i32 %sub60, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 14), align 4
  %94 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 15), align 4
  %95 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 11), align 4
  %sub61 = sub nsw i32 %94, %95
  store i32 %sub61, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 15), align 4
  %96 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 0), align 4
  %97 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 3), align 4
  %add62 = add nsw i32 %96, %97
  store i32 %add62, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 0), align 4
  %98 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 1), align 4
  %99 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 2), align 4
  %add63 = add nsw i32 %98, %99
  store i32 %add63, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 1), align 4
  %100 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 1), align 4
  %101 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 2), align 4
  %sub64 = sub nsw i32 %100, %101
  store i32 %sub64, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 2), align 4
  %102 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 0), align 4
  %103 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 3), align 4
  %sub65 = sub nsw i32 %102, %103
  store i32 %sub65, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 3), align 4
  %104 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 4), align 4
  %105 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 7), align 4
  %add66 = add nsw i32 %104, %105
  store i32 %add66, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 4), align 4
  %106 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 5), align 4
  %107 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 6), align 4
  %add67 = add nsw i32 %106, %107
  store i32 %add67, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 5), align 4
  %108 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 5), align 4
  %109 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 6), align 4
  %sub68 = sub nsw i32 %108, %109
  store i32 %sub68, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 6), align 4
  %110 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 4), align 4
  %111 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 7), align 4
  %sub69 = sub nsw i32 %110, %111
  store i32 %sub69, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 7), align 4
  %112 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 8), align 4
  %113 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 11), align 4
  %add70 = add nsw i32 %112, %113
  store i32 %add70, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 8), align 4
  %114 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 9), align 4
  %115 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 10), align 4
  %add71 = add nsw i32 %114, %115
  store i32 %add71, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 9), align 4
  %116 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 9), align 4
  %117 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 10), align 4
  %sub72 = sub nsw i32 %116, %117
  store i32 %sub72, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 10), align 4
  %118 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 8), align 4
  %119 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 11), align 4
  %sub73 = sub nsw i32 %118, %119
  store i32 %sub73, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 11), align 4
  %120 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 12), align 4
  %121 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 15), align 4
  %add74 = add nsw i32 %120, %121
  store i32 %add74, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 12), align 4
  %122 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 13), align 4
  %123 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 14), align 4
  %add75 = add nsw i32 %122, %123
  store i32 %add75, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 13), align 4
  %124 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 13), align 4
  %125 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 14), align 4
  %sub76 = sub nsw i32 %124, %125
  store i32 %sub76, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 14), align 4
  %126 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 12), align 4
  %127 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 15), align 4
  %sub77 = sub nsw i32 %126, %127
  store i32 %sub77, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 15), align 4
  %128 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 0), align 4
  %129 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 1), align 4
  %add78 = add nsw i32 %128, %129
  store i32 %add78, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 0), align 4
  %130 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 0), align 4
  %131 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 1), align 4
  %sub79 = sub nsw i32 %130, %131
  store i32 %sub79, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 1), align 4
  %132 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 2), align 4
  %133 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 3), align 4
  %add80 = add nsw i32 %132, %133
  store i32 %add80, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 2), align 4
  %134 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 3), align 4
  %135 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 2), align 4
  %sub81 = sub nsw i32 %134, %135
  store i32 %sub81, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 3), align 4
  %136 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 4), align 4
  %137 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 5), align 4
  %add82 = add nsw i32 %136, %137
  store i32 %add82, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 4), align 4
  %138 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 4), align 4
  %139 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 5), align 4
  %sub83 = sub nsw i32 %138, %139
  store i32 %sub83, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 5), align 4
  %140 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 6), align 4
  %141 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 7), align 4
  %add84 = add nsw i32 %140, %141
  store i32 %add84, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 6), align 4
  %142 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 7), align 4
  %143 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 6), align 4
  %sub85 = sub nsw i32 %142, %143
  store i32 %sub85, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 7), align 4
  %144 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 8), align 4
  %145 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 9), align 4
  %add86 = add nsw i32 %144, %145
  store i32 %add86, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 8), align 4
  %146 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 8), align 4
  %147 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 9), align 4
  %sub87 = sub nsw i32 %146, %147
  store i32 %sub87, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 9), align 4
  %148 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 10), align 4
  %149 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 11), align 4
  %add88 = add nsw i32 %148, %149
  store i32 %add88, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 10), align 4
  %150 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 11), align 4
  %151 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 10), align 4
  %sub89 = sub nsw i32 %150, %151
  store i32 %sub89, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 11), align 4
  %152 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 12), align 4
  %153 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 13), align 4
  %add90 = add nsw i32 %152, %153
  store i32 %add90, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 12), align 4
  %154 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 12), align 4
  %155 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 13), align 4
  %sub91 = sub nsw i32 %154, %155
  store i32 %sub91, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 13), align 4
  %156 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 14), align 4
  %157 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 15), align 4
  %add92 = add nsw i32 %156, %157
  store i32 %add92, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 14), align 4
  %158 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 15), align 4
  %159 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @m, i32 0, i64 14), align 4
  %sub93 = sub nsw i32 %158, %159
  store i32 %sub93, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @d, i32 0, i64 15), align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %160 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %160, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %161 = load i32, i32* %k, align 4
  %idxprom = sext i32 %161 to i64
  %arrayidx94 = getelementptr inbounds [16 x i32], [16 x i32]* @d, i32 0, i64 %idxprom
  %162 = load i32, i32* %arrayidx94, align 4
  %idxprom95 = sext i32 %162 to i64
  %163 = load i32*, i32** @byte_abs, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %163, i64 %idxprom95
  %164 = load i32, i32* %arrayidx96, align 4
  %165 = load i32, i32* %satd, align 4
  %add97 = add i32 %165, %164
  store i32 %add97, i32* %satd, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %166 = load i32, i32* %k, align 4
  %inc = add nsw i32 %166, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %167 = load i32, i32* %satd, align 4
  %add98 = add nsw i32 %167, 1
  %shr = ashr i32 %add98, 1
  ret i32 %shr
}

; Function Attrs: nounwind uwtable
define i32 @distortion8x8(i32* %diff) #0 {
entry:
  %diff.addr = alloca i32*, align 8
  %distortion = alloca i32, align 4
  %k = alloca i32, align 4
  %byte_sse = alloca i32*, align 8
  store i32* %diff, i32** %diff.addr, align 8
  store i32 0, i32* %distortion, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ModeDecisionMetric = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 200
  %1 = load i32, i32* %ModeDecisionMetric, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.3
    i32 2, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %2 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %2, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %diff.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i32*, i32** @byte_abs, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %8 = load i32, i32* %distortion, align 4
  %add = add i32 %8, %7
  store i32 %add, i32* %distortion, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %k, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 62
  %11 = load i32*, i32** %quad, align 8
  store i32* %11, i32** %byte_sse, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.12, %sw.bb.3
  %12 = load i32, i32* %k, align 4
  %cmp5 = icmp slt i32 %12, 64
  br i1 %cmp5, label %for.body.6, label %for.end.14

for.body.6:                                       ; preds = %for.cond.4
  %13 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load i32*, i32** %diff.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %14, i64 %idxprom7
  %15 = load i32, i32* %arrayidx8, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load i32*, i32** %byte_sse, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %16, i64 %idxprom9
  %17 = load i32, i32* %arrayidx10, align 4
  %18 = load i32, i32* %distortion, align 4
  %add11 = add nsw i32 %18, %17
  store i32 %add11, i32* %distortion, align 4
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.6
  %19 = load i32, i32* %k, align 4
  %inc13 = add nsw i32 %19, 1
  store i32 %inc13, i32* %k, align 4
  br label %for.cond.4

for.end.14:                                       ; preds = %for.cond.4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.15
  %20 = load i32*, i32** %diff.addr, align 8
  %call = call i32 @HadamardSAD8x8(i32* %20)
  store i32 %call, i32* %distortion, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.14, %for.end
  %21 = load i32, i32* %distortion, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @HadamardSAD8x8(i32* %diff) #0 {
entry:
  %diff.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %jj = alloca i32, align 4
  %sad = alloca i32, align 4
  store i32* %diff, i32** %diff.addr, align 8
  store i32 0, i32* %sad, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %j, align 4
  %shl = shl i32 %1, 3
  store i32 %shl, i32* %jj, align 4
  %2 = load i32, i32* %jj, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %diff.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %jj, align 4
  %add = add nsw i32 %5, 4
  %idxprom1 = sext i32 %add to i64
  %6 = load i32*, i32** %diff.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %add3 = add nsw i32 %4, %7
  %8 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx5, i32 0, i64 0
  store i32 %add3, i32* %arrayidx6, align 4
  %9 = load i32, i32* %jj, align 4
  %add7 = add nsw i32 %9, 1
  %idxprom8 = sext i32 %add7 to i64
  %10 = load i32*, i32** %diff.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %10, i64 %idxprom8
  %11 = load i32, i32* %arrayidx9, align 4
  %12 = load i32, i32* %jj, align 4
  %add10 = add nsw i32 %12, 5
  %idxprom11 = sext i32 %add10 to i64
  %13 = load i32*, i32** %diff.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %13, i64 %idxprom11
  %14 = load i32, i32* %arrayidx12, align 4
  %add13 = add nsw i32 %11, %14
  %15 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %15 to i64
  %arrayidx15 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx15, i32 0, i64 1
  store i32 %add13, i32* %arrayidx16, align 4
  %16 = load i32, i32* %jj, align 4
  %add17 = add nsw i32 %16, 2
  %idxprom18 = sext i32 %add17 to i64
  %17 = load i32*, i32** %diff.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %17, i64 %idxprom18
  %18 = load i32, i32* %arrayidx19, align 4
  %19 = load i32, i32* %jj, align 4
  %add20 = add nsw i32 %19, 6
  %idxprom21 = sext i32 %add20 to i64
  %20 = load i32*, i32** %diff.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %20, i64 %idxprom21
  %21 = load i32, i32* %arrayidx22, align 4
  %add23 = add nsw i32 %18, %21
  %22 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %22 to i64
  %arrayidx25 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom24
  %arrayidx26 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx25, i32 0, i64 2
  store i32 %add23, i32* %arrayidx26, align 4
  %23 = load i32, i32* %jj, align 4
  %add27 = add nsw i32 %23, 3
  %idxprom28 = sext i32 %add27 to i64
  %24 = load i32*, i32** %diff.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %24, i64 %idxprom28
  %25 = load i32, i32* %arrayidx29, align 4
  %26 = load i32, i32* %jj, align 4
  %add30 = add nsw i32 %26, 7
  %idxprom31 = sext i32 %add30 to i64
  %27 = load i32*, i32** %diff.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %27, i64 %idxprom31
  %28 = load i32, i32* %arrayidx32, align 4
  %add33 = add nsw i32 %25, %28
  %29 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %29 to i64
  %arrayidx35 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom34
  %arrayidx36 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx35, i32 0, i64 3
  store i32 %add33, i32* %arrayidx36, align 4
  %30 = load i32, i32* %jj, align 4
  %idxprom37 = sext i32 %30 to i64
  %31 = load i32*, i32** %diff.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %31, i64 %idxprom37
  %32 = load i32, i32* %arrayidx38, align 4
  %33 = load i32, i32* %jj, align 4
  %add39 = add nsw i32 %33, 4
  %idxprom40 = sext i32 %add39 to i64
  %34 = load i32*, i32** %diff.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %34, i64 %idxprom40
  %35 = load i32, i32* %arrayidx41, align 4
  %sub = sub nsw i32 %32, %35
  %36 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %36 to i64
  %arrayidx43 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom42
  %arrayidx44 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx43, i32 0, i64 4
  store i32 %sub, i32* %arrayidx44, align 4
  %37 = load i32, i32* %jj, align 4
  %add45 = add nsw i32 %37, 1
  %idxprom46 = sext i32 %add45 to i64
  %38 = load i32*, i32** %diff.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %38, i64 %idxprom46
  %39 = load i32, i32* %arrayidx47, align 4
  %40 = load i32, i32* %jj, align 4
  %add48 = add nsw i32 %40, 5
  %idxprom49 = sext i32 %add48 to i64
  %41 = load i32*, i32** %diff.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %41, i64 %idxprom49
  %42 = load i32, i32* %arrayidx50, align 4
  %sub51 = sub nsw i32 %39, %42
  %43 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %43 to i64
  %arrayidx53 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom52
  %arrayidx54 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx53, i32 0, i64 5
  store i32 %sub51, i32* %arrayidx54, align 4
  %44 = load i32, i32* %jj, align 4
  %add55 = add nsw i32 %44, 2
  %idxprom56 = sext i32 %add55 to i64
  %45 = load i32*, i32** %diff.addr, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %45, i64 %idxprom56
  %46 = load i32, i32* %arrayidx57, align 4
  %47 = load i32, i32* %jj, align 4
  %add58 = add nsw i32 %47, 6
  %idxprom59 = sext i32 %add58 to i64
  %48 = load i32*, i32** %diff.addr, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %48, i64 %idxprom59
  %49 = load i32, i32* %arrayidx60, align 4
  %sub61 = sub nsw i32 %46, %49
  %50 = load i32, i32* %j, align 4
  %idxprom62 = sext i32 %50 to i64
  %arrayidx63 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom62
  %arrayidx64 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx63, i32 0, i64 6
  store i32 %sub61, i32* %arrayidx64, align 4
  %51 = load i32, i32* %jj, align 4
  %add65 = add nsw i32 %51, 3
  %idxprom66 = sext i32 %add65 to i64
  %52 = load i32*, i32** %diff.addr, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %52, i64 %idxprom66
  %53 = load i32, i32* %arrayidx67, align 4
  %54 = load i32, i32* %jj, align 4
  %add68 = add nsw i32 %54, 7
  %idxprom69 = sext i32 %add68 to i64
  %55 = load i32*, i32** %diff.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %55, i64 %idxprom69
  %56 = load i32, i32* %arrayidx70, align 4
  %sub71 = sub nsw i32 %53, %56
  %57 = load i32, i32* %j, align 4
  %idxprom72 = sext i32 %57 to i64
  %arrayidx73 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom72
  %arrayidx74 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx73, i32 0, i64 7
  store i32 %sub71, i32* %arrayidx74, align 4
  %58 = load i32, i32* %j, align 4
  %idxprom75 = sext i32 %58 to i64
  %arrayidx76 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom75
  %arrayidx77 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx76, i32 0, i64 0
  %59 = load i32, i32* %arrayidx77, align 4
  %60 = load i32, i32* %j, align 4
  %idxprom78 = sext i32 %60 to i64
  %arrayidx79 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom78
  %arrayidx80 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx79, i32 0, i64 2
  %61 = load i32, i32* %arrayidx80, align 4
  %add81 = add nsw i32 %59, %61
  %62 = load i32, i32* %j, align 4
  %idxprom82 = sext i32 %62 to i64
  %arrayidx83 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 %idxprom82
  %arrayidx84 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx83, i32 0, i64 0
  store i32 %add81, i32* %arrayidx84, align 4
  %63 = load i32, i32* %j, align 4
  %idxprom85 = sext i32 %63 to i64
  %arrayidx86 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom85
  %arrayidx87 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx86, i32 0, i64 1
  %64 = load i32, i32* %arrayidx87, align 4
  %65 = load i32, i32* %j, align 4
  %idxprom88 = sext i32 %65 to i64
  %arrayidx89 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom88
  %arrayidx90 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx89, i32 0, i64 3
  %66 = load i32, i32* %arrayidx90, align 4
  %add91 = add nsw i32 %64, %66
  %67 = load i32, i32* %j, align 4
  %idxprom92 = sext i32 %67 to i64
  %arrayidx93 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 %idxprom92
  %arrayidx94 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx93, i32 0, i64 1
  store i32 %add91, i32* %arrayidx94, align 4
  %68 = load i32, i32* %j, align 4
  %idxprom95 = sext i32 %68 to i64
  %arrayidx96 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom95
  %arrayidx97 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx96, i32 0, i64 0
  %69 = load i32, i32* %arrayidx97, align 4
  %70 = load i32, i32* %j, align 4
  %idxprom98 = sext i32 %70 to i64
  %arrayidx99 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom98
  %arrayidx100 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx99, i32 0, i64 2
  %71 = load i32, i32* %arrayidx100, align 4
  %sub101 = sub nsw i32 %69, %71
  %72 = load i32, i32* %j, align 4
  %idxprom102 = sext i32 %72 to i64
  %arrayidx103 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 %idxprom102
  %arrayidx104 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx103, i32 0, i64 2
  store i32 %sub101, i32* %arrayidx104, align 4
  %73 = load i32, i32* %j, align 4
  %idxprom105 = sext i32 %73 to i64
  %arrayidx106 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom105
  %arrayidx107 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx106, i32 0, i64 1
  %74 = load i32, i32* %arrayidx107, align 4
  %75 = load i32, i32* %j, align 4
  %idxprom108 = sext i32 %75 to i64
  %arrayidx109 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom108
  %arrayidx110 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx109, i32 0, i64 3
  %76 = load i32, i32* %arrayidx110, align 4
  %sub111 = sub nsw i32 %74, %76
  %77 = load i32, i32* %j, align 4
  %idxprom112 = sext i32 %77 to i64
  %arrayidx113 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 %idxprom112
  %arrayidx114 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx113, i32 0, i64 3
  store i32 %sub111, i32* %arrayidx114, align 4
  %78 = load i32, i32* %j, align 4
  %idxprom115 = sext i32 %78 to i64
  %arrayidx116 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom115
  %arrayidx117 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx116, i32 0, i64 4
  %79 = load i32, i32* %arrayidx117, align 4
  %80 = load i32, i32* %j, align 4
  %idxprom118 = sext i32 %80 to i64
  %arrayidx119 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom118
  %arrayidx120 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx119, i32 0, i64 6
  %81 = load i32, i32* %arrayidx120, align 4
  %add121 = add nsw i32 %79, %81
  %82 = load i32, i32* %j, align 4
  %idxprom122 = sext i32 %82 to i64
  %arrayidx123 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 %idxprom122
  %arrayidx124 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx123, i32 0, i64 4
  store i32 %add121, i32* %arrayidx124, align 4
  %83 = load i32, i32* %j, align 4
  %idxprom125 = sext i32 %83 to i64
  %arrayidx126 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom125
  %arrayidx127 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx126, i32 0, i64 5
  %84 = load i32, i32* %arrayidx127, align 4
  %85 = load i32, i32* %j, align 4
  %idxprom128 = sext i32 %85 to i64
  %arrayidx129 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom128
  %arrayidx130 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx129, i32 0, i64 7
  %86 = load i32, i32* %arrayidx130, align 4
  %add131 = add nsw i32 %84, %86
  %87 = load i32, i32* %j, align 4
  %idxprom132 = sext i32 %87 to i64
  %arrayidx133 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 %idxprom132
  %arrayidx134 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx133, i32 0, i64 5
  store i32 %add131, i32* %arrayidx134, align 4
  %88 = load i32, i32* %j, align 4
  %idxprom135 = sext i32 %88 to i64
  %arrayidx136 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom135
  %arrayidx137 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx136, i32 0, i64 4
  %89 = load i32, i32* %arrayidx137, align 4
  %90 = load i32, i32* %j, align 4
  %idxprom138 = sext i32 %90 to i64
  %arrayidx139 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom138
  %arrayidx140 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx139, i32 0, i64 6
  %91 = load i32, i32* %arrayidx140, align 4
  %sub141 = sub nsw i32 %89, %91
  %92 = load i32, i32* %j, align 4
  %idxprom142 = sext i32 %92 to i64
  %arrayidx143 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 %idxprom142
  %arrayidx144 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx143, i32 0, i64 6
  store i32 %sub141, i32* %arrayidx144, align 4
  %93 = load i32, i32* %j, align 4
  %idxprom145 = sext i32 %93 to i64
  %arrayidx146 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom145
  %arrayidx147 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx146, i32 0, i64 5
  %94 = load i32, i32* %arrayidx147, align 4
  %95 = load i32, i32* %j, align 4
  %idxprom148 = sext i32 %95 to i64
  %arrayidx149 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom148
  %arrayidx150 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx149, i32 0, i64 7
  %96 = load i32, i32* %arrayidx150, align 4
  %sub151 = sub nsw i32 %94, %96
  %97 = load i32, i32* %j, align 4
  %idxprom152 = sext i32 %97 to i64
  %arrayidx153 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 %idxprom152
  %arrayidx154 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx153, i32 0, i64 7
  store i32 %sub151, i32* %arrayidx154, align 4
  %98 = load i32, i32* %j, align 4
  %idxprom155 = sext i32 %98 to i64
  %arrayidx156 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 %idxprom155
  %arrayidx157 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx156, i32 0, i64 0
  %99 = load i32, i32* %arrayidx157, align 4
  %100 = load i32, i32* %j, align 4
  %idxprom158 = sext i32 %100 to i64
  %arrayidx159 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 %idxprom158
  %arrayidx160 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx159, i32 0, i64 1
  %101 = load i32, i32* %arrayidx160, align 4
  %add161 = add nsw i32 %99, %101
  %102 = load i32, i32* %j, align 4
  %idxprom162 = sext i32 %102 to i64
  %arrayidx163 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom162
  %arrayidx164 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx163, i32 0, i64 0
  store i32 %add161, i32* %arrayidx164, align 4
  %103 = load i32, i32* %j, align 4
  %idxprom165 = sext i32 %103 to i64
  %arrayidx166 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 %idxprom165
  %arrayidx167 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx166, i32 0, i64 0
  %104 = load i32, i32* %arrayidx167, align 4
  %105 = load i32, i32* %j, align 4
  %idxprom168 = sext i32 %105 to i64
  %arrayidx169 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 %idxprom168
  %arrayidx170 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx169, i32 0, i64 1
  %106 = load i32, i32* %arrayidx170, align 4
  %sub171 = sub nsw i32 %104, %106
  %107 = load i32, i32* %j, align 4
  %idxprom172 = sext i32 %107 to i64
  %arrayidx173 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom172
  %arrayidx174 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx173, i32 0, i64 1
  store i32 %sub171, i32* %arrayidx174, align 4
  %108 = load i32, i32* %j, align 4
  %idxprom175 = sext i32 %108 to i64
  %arrayidx176 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 %idxprom175
  %arrayidx177 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx176, i32 0, i64 2
  %109 = load i32, i32* %arrayidx177, align 4
  %110 = load i32, i32* %j, align 4
  %idxprom178 = sext i32 %110 to i64
  %arrayidx179 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 %idxprom178
  %arrayidx180 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx179, i32 0, i64 3
  %111 = load i32, i32* %arrayidx180, align 4
  %add181 = add nsw i32 %109, %111
  %112 = load i32, i32* %j, align 4
  %idxprom182 = sext i32 %112 to i64
  %arrayidx183 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom182
  %arrayidx184 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx183, i32 0, i64 2
  store i32 %add181, i32* %arrayidx184, align 4
  %113 = load i32, i32* %j, align 4
  %idxprom185 = sext i32 %113 to i64
  %arrayidx186 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 %idxprom185
  %arrayidx187 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx186, i32 0, i64 2
  %114 = load i32, i32* %arrayidx187, align 4
  %115 = load i32, i32* %j, align 4
  %idxprom188 = sext i32 %115 to i64
  %arrayidx189 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 %idxprom188
  %arrayidx190 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx189, i32 0, i64 3
  %116 = load i32, i32* %arrayidx190, align 4
  %sub191 = sub nsw i32 %114, %116
  %117 = load i32, i32* %j, align 4
  %idxprom192 = sext i32 %117 to i64
  %arrayidx193 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom192
  %arrayidx194 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx193, i32 0, i64 3
  store i32 %sub191, i32* %arrayidx194, align 4
  %118 = load i32, i32* %j, align 4
  %idxprom195 = sext i32 %118 to i64
  %arrayidx196 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 %idxprom195
  %arrayidx197 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx196, i32 0, i64 4
  %119 = load i32, i32* %arrayidx197, align 4
  %120 = load i32, i32* %j, align 4
  %idxprom198 = sext i32 %120 to i64
  %arrayidx199 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 %idxprom198
  %arrayidx200 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx199, i32 0, i64 5
  %121 = load i32, i32* %arrayidx200, align 4
  %add201 = add nsw i32 %119, %121
  %122 = load i32, i32* %j, align 4
  %idxprom202 = sext i32 %122 to i64
  %arrayidx203 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom202
  %arrayidx204 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx203, i32 0, i64 4
  store i32 %add201, i32* %arrayidx204, align 4
  %123 = load i32, i32* %j, align 4
  %idxprom205 = sext i32 %123 to i64
  %arrayidx206 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 %idxprom205
  %arrayidx207 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx206, i32 0, i64 4
  %124 = load i32, i32* %arrayidx207, align 4
  %125 = load i32, i32* %j, align 4
  %idxprom208 = sext i32 %125 to i64
  %arrayidx209 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 %idxprom208
  %arrayidx210 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx209, i32 0, i64 5
  %126 = load i32, i32* %arrayidx210, align 4
  %sub211 = sub nsw i32 %124, %126
  %127 = load i32, i32* %j, align 4
  %idxprom212 = sext i32 %127 to i64
  %arrayidx213 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom212
  %arrayidx214 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx213, i32 0, i64 5
  store i32 %sub211, i32* %arrayidx214, align 4
  %128 = load i32, i32* %j, align 4
  %idxprom215 = sext i32 %128 to i64
  %arrayidx216 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 %idxprom215
  %arrayidx217 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx216, i32 0, i64 6
  %129 = load i32, i32* %arrayidx217, align 4
  %130 = load i32, i32* %j, align 4
  %idxprom218 = sext i32 %130 to i64
  %arrayidx219 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 %idxprom218
  %arrayidx220 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx219, i32 0, i64 7
  %131 = load i32, i32* %arrayidx220, align 4
  %add221 = add nsw i32 %129, %131
  %132 = load i32, i32* %j, align 4
  %idxprom222 = sext i32 %132 to i64
  %arrayidx223 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom222
  %arrayidx224 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx223, i32 0, i64 6
  store i32 %add221, i32* %arrayidx224, align 4
  %133 = load i32, i32* %j, align 4
  %idxprom225 = sext i32 %133 to i64
  %arrayidx226 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 %idxprom225
  %arrayidx227 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx226, i32 0, i64 6
  %134 = load i32, i32* %arrayidx227, align 4
  %135 = load i32, i32* %j, align 4
  %idxprom228 = sext i32 %135 to i64
  %arrayidx229 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 %idxprom228
  %arrayidx230 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx229, i32 0, i64 7
  %136 = load i32, i32* %arrayidx230, align 4
  %sub231 = sub nsw i32 %134, %136
  %137 = load i32, i32* %j, align 4
  %idxprom232 = sext i32 %137 to i64
  %arrayidx233 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom232
  %arrayidx234 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx233, i32 0, i64 7
  store i32 %sub231, i32* %arrayidx234, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %138 = load i32, i32* %j, align 4
  %inc = add nsw i32 %138, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.235

for.cond.235:                                     ; preds = %for.inc.406, %for.end
  %139 = load i32, i32* %i, align 4
  %cmp236 = icmp slt i32 %139, 8
  br i1 %cmp236, label %for.body.237, label %for.end.408

for.body.237:                                     ; preds = %for.cond.235
  %140 = load i32, i32* %i, align 4
  %idxprom238 = sext i32 %140 to i64
  %arrayidx239 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 0), i32 0, i64 %idxprom238
  %141 = load i32, i32* %arrayidx239, align 4
  %142 = load i32, i32* %i, align 4
  %idxprom240 = sext i32 %142 to i64
  %arrayidx241 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 4), i32 0, i64 %idxprom240
  %143 = load i32, i32* %arrayidx241, align 4
  %add242 = add nsw i32 %141, %143
  %144 = load i32, i32* %i, align 4
  %idxprom243 = sext i32 %144 to i64
  %arrayidx244 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m3, i32 0, i64 0), i32 0, i64 %idxprom243
  store i32 %add242, i32* %arrayidx244, align 4
  %145 = load i32, i32* %i, align 4
  %idxprom245 = sext i32 %145 to i64
  %arrayidx246 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 1), i32 0, i64 %idxprom245
  %146 = load i32, i32* %arrayidx246, align 4
  %147 = load i32, i32* %i, align 4
  %idxprom247 = sext i32 %147 to i64
  %arrayidx248 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 5), i32 0, i64 %idxprom247
  %148 = load i32, i32* %arrayidx248, align 4
  %add249 = add nsw i32 %146, %148
  %149 = load i32, i32* %i, align 4
  %idxprom250 = sext i32 %149 to i64
  %arrayidx251 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m3, i32 0, i64 1), i32 0, i64 %idxprom250
  store i32 %add249, i32* %arrayidx251, align 4
  %150 = load i32, i32* %i, align 4
  %idxprom252 = sext i32 %150 to i64
  %arrayidx253 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 2), i32 0, i64 %idxprom252
  %151 = load i32, i32* %arrayidx253, align 4
  %152 = load i32, i32* %i, align 4
  %idxprom254 = sext i32 %152 to i64
  %arrayidx255 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 6), i32 0, i64 %idxprom254
  %153 = load i32, i32* %arrayidx255, align 4
  %add256 = add nsw i32 %151, %153
  %154 = load i32, i32* %i, align 4
  %idxprom257 = sext i32 %154 to i64
  %arrayidx258 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m3, i32 0, i64 2), i32 0, i64 %idxprom257
  store i32 %add256, i32* %arrayidx258, align 4
  %155 = load i32, i32* %i, align 4
  %idxprom259 = sext i32 %155 to i64
  %arrayidx260 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 3), i32 0, i64 %idxprom259
  %156 = load i32, i32* %arrayidx260, align 4
  %157 = load i32, i32* %i, align 4
  %idxprom261 = sext i32 %157 to i64
  %arrayidx262 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 7), i32 0, i64 %idxprom261
  %158 = load i32, i32* %arrayidx262, align 4
  %add263 = add nsw i32 %156, %158
  %159 = load i32, i32* %i, align 4
  %idxprom264 = sext i32 %159 to i64
  %arrayidx265 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m3, i32 0, i64 3), i32 0, i64 %idxprom264
  store i32 %add263, i32* %arrayidx265, align 4
  %160 = load i32, i32* %i, align 4
  %idxprom266 = sext i32 %160 to i64
  %arrayidx267 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 0), i32 0, i64 %idxprom266
  %161 = load i32, i32* %arrayidx267, align 4
  %162 = load i32, i32* %i, align 4
  %idxprom268 = sext i32 %162 to i64
  %arrayidx269 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 4), i32 0, i64 %idxprom268
  %163 = load i32, i32* %arrayidx269, align 4
  %sub270 = sub nsw i32 %161, %163
  %164 = load i32, i32* %i, align 4
  %idxprom271 = sext i32 %164 to i64
  %arrayidx272 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m3, i32 0, i64 4), i32 0, i64 %idxprom271
  store i32 %sub270, i32* %arrayidx272, align 4
  %165 = load i32, i32* %i, align 4
  %idxprom273 = sext i32 %165 to i64
  %arrayidx274 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 1), i32 0, i64 %idxprom273
  %166 = load i32, i32* %arrayidx274, align 4
  %167 = load i32, i32* %i, align 4
  %idxprom275 = sext i32 %167 to i64
  %arrayidx276 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 5), i32 0, i64 %idxprom275
  %168 = load i32, i32* %arrayidx276, align 4
  %sub277 = sub nsw i32 %166, %168
  %169 = load i32, i32* %i, align 4
  %idxprom278 = sext i32 %169 to i64
  %arrayidx279 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m3, i32 0, i64 5), i32 0, i64 %idxprom278
  store i32 %sub277, i32* %arrayidx279, align 4
  %170 = load i32, i32* %i, align 4
  %idxprom280 = sext i32 %170 to i64
  %arrayidx281 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 2), i32 0, i64 %idxprom280
  %171 = load i32, i32* %arrayidx281, align 4
  %172 = load i32, i32* %i, align 4
  %idxprom282 = sext i32 %172 to i64
  %arrayidx283 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 6), i32 0, i64 %idxprom282
  %173 = load i32, i32* %arrayidx283, align 4
  %sub284 = sub nsw i32 %171, %173
  %174 = load i32, i32* %i, align 4
  %idxprom285 = sext i32 %174 to i64
  %arrayidx286 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m3, i32 0, i64 6), i32 0, i64 %idxprom285
  store i32 %sub284, i32* %arrayidx286, align 4
  %175 = load i32, i32* %i, align 4
  %idxprom287 = sext i32 %175 to i64
  %arrayidx288 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 3), i32 0, i64 %idxprom287
  %176 = load i32, i32* %arrayidx288, align 4
  %177 = load i32, i32* %i, align 4
  %idxprom289 = sext i32 %177 to i64
  %arrayidx290 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 7), i32 0, i64 %idxprom289
  %178 = load i32, i32* %arrayidx290, align 4
  %sub291 = sub nsw i32 %176, %178
  %179 = load i32, i32* %i, align 4
  %idxprom292 = sext i32 %179 to i64
  %arrayidx293 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m3, i32 0, i64 7), i32 0, i64 %idxprom292
  store i32 %sub291, i32* %arrayidx293, align 4
  %180 = load i32, i32* %i, align 4
  %idxprom294 = sext i32 %180 to i64
  %arrayidx295 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m3, i32 0, i64 0), i32 0, i64 %idxprom294
  %181 = load i32, i32* %arrayidx295, align 4
  %182 = load i32, i32* %i, align 4
  %idxprom296 = sext i32 %182 to i64
  %arrayidx297 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m3, i32 0, i64 2), i32 0, i64 %idxprom296
  %183 = load i32, i32* %arrayidx297, align 4
  %add298 = add nsw i32 %181, %183
  %184 = load i32, i32* %i, align 4
  %idxprom299 = sext i32 %184 to i64
  %arrayidx300 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 0), i32 0, i64 %idxprom299
  store i32 %add298, i32* %arrayidx300, align 4
  %185 = load i32, i32* %i, align 4
  %idxprom301 = sext i32 %185 to i64
  %arrayidx302 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m3, i32 0, i64 1), i32 0, i64 %idxprom301
  %186 = load i32, i32* %arrayidx302, align 4
  %187 = load i32, i32* %i, align 4
  %idxprom303 = sext i32 %187 to i64
  %arrayidx304 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m3, i32 0, i64 3), i32 0, i64 %idxprom303
  %188 = load i32, i32* %arrayidx304, align 4
  %add305 = add nsw i32 %186, %188
  %189 = load i32, i32* %i, align 4
  %idxprom306 = sext i32 %189 to i64
  %arrayidx307 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 1), i32 0, i64 %idxprom306
  store i32 %add305, i32* %arrayidx307, align 4
  %190 = load i32, i32* %i, align 4
  %idxprom308 = sext i32 %190 to i64
  %arrayidx309 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m3, i32 0, i64 0), i32 0, i64 %idxprom308
  %191 = load i32, i32* %arrayidx309, align 4
  %192 = load i32, i32* %i, align 4
  %idxprom310 = sext i32 %192 to i64
  %arrayidx311 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m3, i32 0, i64 2), i32 0, i64 %idxprom310
  %193 = load i32, i32* %arrayidx311, align 4
  %sub312 = sub nsw i32 %191, %193
  %194 = load i32, i32* %i, align 4
  %idxprom313 = sext i32 %194 to i64
  %arrayidx314 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 2), i32 0, i64 %idxprom313
  store i32 %sub312, i32* %arrayidx314, align 4
  %195 = load i32, i32* %i, align 4
  %idxprom315 = sext i32 %195 to i64
  %arrayidx316 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m3, i32 0, i64 1), i32 0, i64 %idxprom315
  %196 = load i32, i32* %arrayidx316, align 4
  %197 = load i32, i32* %i, align 4
  %idxprom317 = sext i32 %197 to i64
  %arrayidx318 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m3, i32 0, i64 3), i32 0, i64 %idxprom317
  %198 = load i32, i32* %arrayidx318, align 4
  %sub319 = sub nsw i32 %196, %198
  %199 = load i32, i32* %i, align 4
  %idxprom320 = sext i32 %199 to i64
  %arrayidx321 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 3), i32 0, i64 %idxprom320
  store i32 %sub319, i32* %arrayidx321, align 4
  %200 = load i32, i32* %i, align 4
  %idxprom322 = sext i32 %200 to i64
  %arrayidx323 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m3, i32 0, i64 4), i32 0, i64 %idxprom322
  %201 = load i32, i32* %arrayidx323, align 4
  %202 = load i32, i32* %i, align 4
  %idxprom324 = sext i32 %202 to i64
  %arrayidx325 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m3, i32 0, i64 6), i32 0, i64 %idxprom324
  %203 = load i32, i32* %arrayidx325, align 4
  %add326 = add nsw i32 %201, %203
  %204 = load i32, i32* %i, align 4
  %idxprom327 = sext i32 %204 to i64
  %arrayidx328 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 4), i32 0, i64 %idxprom327
  store i32 %add326, i32* %arrayidx328, align 4
  %205 = load i32, i32* %i, align 4
  %idxprom329 = sext i32 %205 to i64
  %arrayidx330 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m3, i32 0, i64 5), i32 0, i64 %idxprom329
  %206 = load i32, i32* %arrayidx330, align 4
  %207 = load i32, i32* %i, align 4
  %idxprom331 = sext i32 %207 to i64
  %arrayidx332 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m3, i32 0, i64 7), i32 0, i64 %idxprom331
  %208 = load i32, i32* %arrayidx332, align 4
  %add333 = add nsw i32 %206, %208
  %209 = load i32, i32* %i, align 4
  %idxprom334 = sext i32 %209 to i64
  %arrayidx335 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 5), i32 0, i64 %idxprom334
  store i32 %add333, i32* %arrayidx335, align 4
  %210 = load i32, i32* %i, align 4
  %idxprom336 = sext i32 %210 to i64
  %arrayidx337 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m3, i32 0, i64 4), i32 0, i64 %idxprom336
  %211 = load i32, i32* %arrayidx337, align 4
  %212 = load i32, i32* %i, align 4
  %idxprom338 = sext i32 %212 to i64
  %arrayidx339 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m3, i32 0, i64 6), i32 0, i64 %idxprom338
  %213 = load i32, i32* %arrayidx339, align 4
  %sub340 = sub nsw i32 %211, %213
  %214 = load i32, i32* %i, align 4
  %idxprom341 = sext i32 %214 to i64
  %arrayidx342 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 6), i32 0, i64 %idxprom341
  store i32 %sub340, i32* %arrayidx342, align 4
  %215 = load i32, i32* %i, align 4
  %idxprom343 = sext i32 %215 to i64
  %arrayidx344 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m3, i32 0, i64 5), i32 0, i64 %idxprom343
  %216 = load i32, i32* %arrayidx344, align 4
  %217 = load i32, i32* %i, align 4
  %idxprom345 = sext i32 %217 to i64
  %arrayidx346 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m3, i32 0, i64 7), i32 0, i64 %idxprom345
  %218 = load i32, i32* %arrayidx346, align 4
  %sub347 = sub nsw i32 %216, %218
  %219 = load i32, i32* %i, align 4
  %idxprom348 = sext i32 %219 to i64
  %arrayidx349 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 7), i32 0, i64 %idxprom348
  store i32 %sub347, i32* %arrayidx349, align 4
  %220 = load i32, i32* %i, align 4
  %idxprom350 = sext i32 %220 to i64
  %arrayidx351 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 0), i32 0, i64 %idxprom350
  %221 = load i32, i32* %arrayidx351, align 4
  %222 = load i32, i32* %i, align 4
  %idxprom352 = sext i32 %222 to i64
  %arrayidx353 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 1), i32 0, i64 %idxprom352
  %223 = load i32, i32* %arrayidx353, align 4
  %add354 = add nsw i32 %221, %223
  %224 = load i32, i32* %i, align 4
  %idxprom355 = sext i32 %224 to i64
  %arrayidx356 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 0), i32 0, i64 %idxprom355
  store i32 %add354, i32* %arrayidx356, align 4
  %225 = load i32, i32* %i, align 4
  %idxprom357 = sext i32 %225 to i64
  %arrayidx358 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 0), i32 0, i64 %idxprom357
  %226 = load i32, i32* %arrayidx358, align 4
  %227 = load i32, i32* %i, align 4
  %idxprom359 = sext i32 %227 to i64
  %arrayidx360 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 1), i32 0, i64 %idxprom359
  %228 = load i32, i32* %arrayidx360, align 4
  %sub361 = sub nsw i32 %226, %228
  %229 = load i32, i32* %i, align 4
  %idxprom362 = sext i32 %229 to i64
  %arrayidx363 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 1), i32 0, i64 %idxprom362
  store i32 %sub361, i32* %arrayidx363, align 4
  %230 = load i32, i32* %i, align 4
  %idxprom364 = sext i32 %230 to i64
  %arrayidx365 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 2), i32 0, i64 %idxprom364
  %231 = load i32, i32* %arrayidx365, align 4
  %232 = load i32, i32* %i, align 4
  %idxprom366 = sext i32 %232 to i64
  %arrayidx367 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 3), i32 0, i64 %idxprom366
  %233 = load i32, i32* %arrayidx367, align 4
  %add368 = add nsw i32 %231, %233
  %234 = load i32, i32* %i, align 4
  %idxprom369 = sext i32 %234 to i64
  %arrayidx370 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 2), i32 0, i64 %idxprom369
  store i32 %add368, i32* %arrayidx370, align 4
  %235 = load i32, i32* %i, align 4
  %idxprom371 = sext i32 %235 to i64
  %arrayidx372 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 2), i32 0, i64 %idxprom371
  %236 = load i32, i32* %arrayidx372, align 4
  %237 = load i32, i32* %i, align 4
  %idxprom373 = sext i32 %237 to i64
  %arrayidx374 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 3), i32 0, i64 %idxprom373
  %238 = load i32, i32* %arrayidx374, align 4
  %sub375 = sub nsw i32 %236, %238
  %239 = load i32, i32* %i, align 4
  %idxprom376 = sext i32 %239 to i64
  %arrayidx377 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 3), i32 0, i64 %idxprom376
  store i32 %sub375, i32* %arrayidx377, align 4
  %240 = load i32, i32* %i, align 4
  %idxprom378 = sext i32 %240 to i64
  %arrayidx379 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 4), i32 0, i64 %idxprom378
  %241 = load i32, i32* %arrayidx379, align 4
  %242 = load i32, i32* %i, align 4
  %idxprom380 = sext i32 %242 to i64
  %arrayidx381 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 5), i32 0, i64 %idxprom380
  %243 = load i32, i32* %arrayidx381, align 4
  %add382 = add nsw i32 %241, %243
  %244 = load i32, i32* %i, align 4
  %idxprom383 = sext i32 %244 to i64
  %arrayidx384 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 4), i32 0, i64 %idxprom383
  store i32 %add382, i32* %arrayidx384, align 4
  %245 = load i32, i32* %i, align 4
  %idxprom385 = sext i32 %245 to i64
  %arrayidx386 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 4), i32 0, i64 %idxprom385
  %246 = load i32, i32* %arrayidx386, align 4
  %247 = load i32, i32* %i, align 4
  %idxprom387 = sext i32 %247 to i64
  %arrayidx388 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 5), i32 0, i64 %idxprom387
  %248 = load i32, i32* %arrayidx388, align 4
  %sub389 = sub nsw i32 %246, %248
  %249 = load i32, i32* %i, align 4
  %idxprom390 = sext i32 %249 to i64
  %arrayidx391 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 5), i32 0, i64 %idxprom390
  store i32 %sub389, i32* %arrayidx391, align 4
  %250 = load i32, i32* %i, align 4
  %idxprom392 = sext i32 %250 to i64
  %arrayidx393 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 6), i32 0, i64 %idxprom392
  %251 = load i32, i32* %arrayidx393, align 4
  %252 = load i32, i32* %i, align 4
  %idxprom394 = sext i32 %252 to i64
  %arrayidx395 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 7), i32 0, i64 %idxprom394
  %253 = load i32, i32* %arrayidx395, align 4
  %add396 = add nsw i32 %251, %253
  %254 = load i32, i32* %i, align 4
  %idxprom397 = sext i32 %254 to i64
  %arrayidx398 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 6), i32 0, i64 %idxprom397
  store i32 %add396, i32* %arrayidx398, align 4
  %255 = load i32, i32* %i, align 4
  %idxprom399 = sext i32 %255 to i64
  %arrayidx400 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 6), i32 0, i64 %idxprom399
  %256 = load i32, i32* %arrayidx400, align 4
  %257 = load i32, i32* %i, align 4
  %idxprom401 = sext i32 %257 to i64
  %arrayidx402 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m1, i32 0, i64 7), i32 0, i64 %idxprom401
  %258 = load i32, i32* %arrayidx402, align 4
  %sub403 = sub nsw i32 %256, %258
  %259 = load i32, i32* %i, align 4
  %idxprom404 = sext i32 %259 to i64
  %arrayidx405 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 7), i32 0, i64 %idxprom404
  store i32 %sub403, i32* %arrayidx405, align 4
  br label %for.inc.406

for.inc.406:                                      ; preds = %for.body.237
  %260 = load i32, i32* %i, align 4
  %inc407 = add nsw i32 %260, 1
  store i32 %inc407, i32* %i, align 4
  br label %for.cond.235

for.end.408:                                      ; preds = %for.cond.235
  store i32 0, i32* %j, align 4
  br label %for.cond.409

for.cond.409:                                     ; preds = %for.inc.423, %for.end.408
  %261 = load i32, i32* %j, align 4
  %cmp410 = icmp slt i32 %261, 8
  br i1 %cmp410, label %for.body.411, label %for.end.425

for.body.411:                                     ; preds = %for.cond.409
  store i32 0, i32* %i, align 4
  br label %for.cond.412

for.cond.412:                                     ; preds = %for.inc.420, %for.body.411
  %262 = load i32, i32* %i, align 4
  %cmp413 = icmp slt i32 %262, 8
  br i1 %cmp413, label %for.body.414, label %for.end.422

for.body.414:                                     ; preds = %for.cond.412
  %263 = load i32, i32* %i, align 4
  %idxprom415 = sext i32 %263 to i64
  %264 = load i32, i32* %j, align 4
  %idxprom416 = sext i32 %264 to i64
  %arrayidx417 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @m2, i32 0, i64 %idxprom416
  %arrayidx418 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx417, i32 0, i64 %idxprom415
  %265 = load i32, i32* %arrayidx418, align 4
  %call = call i32 @iabs(i32 %265)
  %266 = load i32, i32* %sad, align 4
  %add419 = add nsw i32 %266, %call
  store i32 %add419, i32* %sad, align 4
  br label %for.inc.420

for.inc.420:                                      ; preds = %for.body.414
  %267 = load i32, i32* %i, align 4
  %inc421 = add nsw i32 %267, 1
  store i32 %inc421, i32* %i, align 4
  br label %for.cond.412

for.end.422:                                      ; preds = %for.cond.412
  br label %for.inc.423

for.inc.423:                                      ; preds = %for.end.422
  %268 = load i32, i32* %j, align 4
  %inc424 = add nsw i32 %268, 1
  store i32 %inc424, i32* %j, align 4
  br label %for.cond.409

for.end.425:                                      ; preds = %for.cond.409
  %269 = load i32, i32* %sad, align 4
  %add426 = add nsw i32 %269, 2
  %shr = ashr i32 %add426, 2
  ret i32 %shr
}

; Function Attrs: nounwind uwtable
define i32 @HadamardMB(i32* %c_diff, i32 %blocktype) #0 {
entry:
  %c_diff.addr = alloca i32*, align 8
  %blocktype.addr = alloca i32, align 4
  %sad = alloca i32, align 4
  store i32* %c_diff, i32** %c_diff.addr, align 8
  store i32 %blocktype, i32* %blocktype.addr, align 4
  store i32 0, i32* %sad, align 4
  %0 = load i32, i32* %blocktype.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.8
    i32 3, label %sw.bb.8
    i32 4, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32*, i32** %c_diff.addr, align 8
  %call = call i32 @HadamardSAD8x8(i32* %1)
  store i32 %call, i32* %sad, align 4
  %2 = load i32*, i32** %c_diff.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 64
  %call1 = call i32 @HadamardSAD8x8(i32* %arrayidx)
  %3 = load i32, i32* %sad, align 4
  %add = add nsw i32 %3, %call1
  store i32 %add, i32* %sad, align 4
  %4 = load i32*, i32** %c_diff.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 128
  %call3 = call i32 @HadamardSAD8x8(i32* %arrayidx2)
  %5 = load i32, i32* %sad, align 4
  %add4 = add nsw i32 %5, %call3
  store i32 %add4, i32* %sad, align 4
  %6 = load i32*, i32** %c_diff.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %6, i64 192
  %call6 = call i32 @HadamardSAD8x8(i32* %arrayidx5)
  %7 = load i32, i32* %sad, align 4
  %add7 = add nsw i32 %7, %call6
  store i32 %add7, i32* %sad, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry, %entry
  %8 = load i32*, i32** %c_diff.addr, align 8
  %call9 = call i32 @HadamardSAD8x8(i32* %8)
  store i32 %call9, i32* %sad, align 4
  %9 = load i32*, i32** %c_diff.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %9, i64 64
  %call11 = call i32 @HadamardSAD8x8(i32* %arrayidx10)
  %10 = load i32, i32* %sad, align 4
  %add12 = add nsw i32 %10, %call11
  store i32 %add12, i32* %sad, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %11 = load i32*, i32** %c_diff.addr, align 8
  %call14 = call i32 @HadamardSAD8x8(i32* %11)
  store i32 %call14, i32* %sad, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -1, i32* %sad, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.13, %sw.bb.8, %sw.bb
  %12 = load i32, i32* %sad, align 4
  ret i32 %12
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iabs(i32 %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 0, %1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %2, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @computeSAD(i16* %src_pic, i32 %blocksize_y, i32 %blocksize_x, i32 %min_mcost, i32 %cand_x, i32 %cand_y) #0 {
entry:
  %retval = alloca i32, align 4
  %src_pic.addr = alloca i16*, align 8
  %blocksize_y.addr = alloca i32, align 4
  %blocksize_x.addr = alloca i32, align 4
  %min_mcost.addr = alloca i32, align 4
  %cand_x.addr = alloca i32, align 4
  %cand_y.addr = alloca i32, align 4
  %mcost = alloca i32, align 4
  %y = alloca i32, align 4
  %x4 = alloca i32, align 4
  %pad_size_x = alloca i32, align 4
  %blocksize_x_c2 = alloca i32, align 4
  %blocksize_y_c = alloca i32, align 4
  %cr_pad_size_x = alloca i32, align 4
  %k = alloca i32, align 4
  store i16* %src_pic, i16** %src_pic.addr, align 8
  store i32 %blocksize_y, i32* %blocksize_y.addr, align 4
  store i32 %blocksize_x, i32* %blocksize_x.addr, align 4
  store i32 %min_mcost, i32* %min_mcost.addr, align 4
  store i32 %cand_x, i32* %cand_x.addr, align 4
  store i32 %cand_y, i32* %cand_y.addr, align 4
  store i32 0, i32* %mcost, align 4
  %0 = load i32, i32* @img_padded_size_x, align 4
  %1 = load i32, i32* %blocksize_x.addr, align 4
  %sub = sub nsw i32 %0, %1
  store i32 %sub, i32* %pad_size_x, align 4
  %2 = load i16*, i16** %src_pic.addr, align 8
  store i16* %2, i16** @src_line, align 8
  %3 = load i32, i32* @ref_access_method, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_line, i32 0, i64 %idxprom
  %4 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx, align 8
  %5 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 0), align 8
  %6 = load i32, i32* %cand_y.addr, align 4
  %7 = load i32, i32* %cand_x.addr, align 4
  %call = call i16* %4(i16**** %5, i32 %6, i32 %7)
  store i16* %call, i16** @ref_line, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.36, %entry
  %8 = load i32, i32* %y, align 4
  %9 = load i32, i32* %blocksize_y.addr, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end.37

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x4, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %10 = load i32, i32* %x4, align 4
  %11 = load i32, i32* %blocksize_x.addr, align 4
  %cmp2 = icmp slt i32 %10, %11
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %12 = load i16*, i16** @src_line, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %12, i32 1
  store i16* %incdec.ptr, i16** @src_line, align 8
  %13 = load i16, i16* %12, align 2
  %conv = zext i16 %13 to i32
  %14 = load i16*, i16** @ref_line, align 8
  %incdec.ptr4 = getelementptr inbounds i16, i16* %14, i32 1
  store i16* %incdec.ptr4, i16** @ref_line, align 8
  %15 = load i16, i16* %14, align 2
  %conv5 = zext i16 %15 to i32
  %sub6 = sub nsw i32 %conv, %conv5
  %idxprom7 = sext i32 %sub6 to i64
  %16 = load i32*, i32** @byte_abs, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %16, i64 %idxprom7
  %17 = load i32, i32* %arrayidx8, align 4
  %18 = load i32, i32* %mcost, align 4
  %add = add i32 %18, %17
  store i32 %add, i32* %mcost, align 4
  %19 = load i16*, i16** @src_line, align 8
  %incdec.ptr9 = getelementptr inbounds i16, i16* %19, i32 1
  store i16* %incdec.ptr9, i16** @src_line, align 8
  %20 = load i16, i16* %19, align 2
  %conv10 = zext i16 %20 to i32
  %21 = load i16*, i16** @ref_line, align 8
  %incdec.ptr11 = getelementptr inbounds i16, i16* %21, i32 1
  store i16* %incdec.ptr11, i16** @ref_line, align 8
  %22 = load i16, i16* %21, align 2
  %conv12 = zext i16 %22 to i32
  %sub13 = sub nsw i32 %conv10, %conv12
  %idxprom14 = sext i32 %sub13 to i64
  %23 = load i32*, i32** @byte_abs, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %23, i64 %idxprom14
  %24 = load i32, i32* %arrayidx15, align 4
  %25 = load i32, i32* %mcost, align 4
  %add16 = add i32 %25, %24
  store i32 %add16, i32* %mcost, align 4
  %26 = load i16*, i16** @src_line, align 8
  %incdec.ptr17 = getelementptr inbounds i16, i16* %26, i32 1
  store i16* %incdec.ptr17, i16** @src_line, align 8
  %27 = load i16, i16* %26, align 2
  %conv18 = zext i16 %27 to i32
  %28 = load i16*, i16** @ref_line, align 8
  %incdec.ptr19 = getelementptr inbounds i16, i16* %28, i32 1
  store i16* %incdec.ptr19, i16** @ref_line, align 8
  %29 = load i16, i16* %28, align 2
  %conv20 = zext i16 %29 to i32
  %sub21 = sub nsw i32 %conv18, %conv20
  %idxprom22 = sext i32 %sub21 to i64
  %30 = load i32*, i32** @byte_abs, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %30, i64 %idxprom22
  %31 = load i32, i32* %arrayidx23, align 4
  %32 = load i32, i32* %mcost, align 4
  %add24 = add i32 %32, %31
  store i32 %add24, i32* %mcost, align 4
  %33 = load i16*, i16** @src_line, align 8
  %incdec.ptr25 = getelementptr inbounds i16, i16* %33, i32 1
  store i16* %incdec.ptr25, i16** @src_line, align 8
  %34 = load i16, i16* %33, align 2
  %conv26 = zext i16 %34 to i32
  %35 = load i16*, i16** @ref_line, align 8
  %incdec.ptr27 = getelementptr inbounds i16, i16* %35, i32 1
  store i16* %incdec.ptr27, i16** @ref_line, align 8
  %36 = load i16, i16* %35, align 2
  %conv28 = zext i16 %36 to i32
  %sub29 = sub nsw i32 %conv26, %conv28
  %idxprom30 = sext i32 %sub29 to i64
  %37 = load i32*, i32** @byte_abs, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %37, i64 %idxprom30
  %38 = load i32, i32* %arrayidx31, align 4
  %39 = load i32, i32* %mcost, align 4
  %add32 = add i32 %39, %38
  store i32 %add32, i32* %mcost, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %40 = load i32, i32* %x4, align 4
  %add33 = add nsw i32 %40, 4
  store i32 %add33, i32* %x4, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %41 = load i32, i32* %mcost, align 4
  %42 = load i32, i32* %min_mcost.addr, align 4
  %cmp34 = icmp sge i32 %41, %42
  br i1 %cmp34, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %43 = load i32, i32* %mcost, align 4
  store i32 %43, i32* %retval
  br label %return

if.end:                                           ; preds = %for.end
  %44 = load i32, i32* %pad_size_x, align 4
  %45 = load i16*, i16** @ref_line, align 8
  %idx.ext = sext i32 %44 to i64
  %add.ptr = getelementptr inbounds i16, i16* %45, i64 %idx.ext
  store i16* %add.ptr, i16** @ref_line, align 8
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end
  %46 = load i32, i32* %y, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end.37:                                       ; preds = %for.cond
  %47 = load i32, i32* @ChromaMEEnable, align 4
  %tobool = icmp ne i32 %47, 0
  br i1 %tobool, label %if.then.38, label %if.end.91

if.then.38:                                       ; preds = %for.end.37
  %48 = load i32, i32* %blocksize_x.addr, align 4
  %49 = load i32, i32* @shift_cr_x, align 4
  %shr = ashr i32 %48, %49
  store i32 %shr, i32* %blocksize_x_c2, align 4
  %50 = load i32, i32* %blocksize_y.addr, align 4
  %51 = load i32, i32* @shift_cr_y, align 4
  %shr39 = ashr i32 %50, %51
  store i32 %shr39, i32* %blocksize_y_c, align 4
  %52 = load i32, i32* @img_cr_padded_size_x, align 4
  %53 = load i32, i32* %blocksize_x_c2, align 4
  %sub40 = sub nsw i32 %52, %53
  store i32 %sub40, i32* %cr_pad_size_x, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.88, %if.then.38
  %54 = load i32, i32* %k, align 4
  %cmp42 = icmp slt i32 %54, 2
  br i1 %cmp42, label %for.body.44, label %for.end.90

for.body.44:                                      ; preds = %for.cond.41
  %55 = load i16*, i16** %src_pic.addr, align 8
  %56 = load i32, i32* %k, align 4
  %shl = shl i32 256, %56
  %idx.ext45 = sext i32 %shl to i64
  %add.ptr46 = getelementptr inbounds i16, i16* %55, i64 %idx.ext45
  store i16* %add.ptr46, i16** @src_line, align 8
  %57 = load i32, i32* @ref_access_method, align 4
  %idxprom47 = sext i32 %57 to i64
  %arrayidx48 = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_crline, i32 0, i64 %idxprom47
  %58 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx48, align 8
  %59 = load i32, i32* %k, align 4
  %idxprom49 = sext i32 %59 to i64
  %arrayidx50 = getelementptr inbounds [2 x i16****], [2 x i16****]* getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 1), i32 0, i64 %idxprom49
  %60 = load i16****, i16***** %arrayidx50, align 8
  %61 = load i32, i32* %cand_y.addr, align 4
  %62 = load i32, i32* %cand_x.addr, align 4
  %call51 = call i16* %58(i16**** %60, i32 %61, i32 %62)
  store i16* %call51, i16** @ref_line, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.85, %for.body.44
  %63 = load i32, i32* %y, align 4
  %64 = load i32, i32* %blocksize_y_c, align 4
  %cmp53 = icmp slt i32 %63, %64
  br i1 %cmp53, label %for.body.55, label %for.end.87

for.body.55:                                      ; preds = %for.cond.52
  store i32 0, i32* %x4, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.76, %for.body.55
  %65 = load i32, i32* %x4, align 4
  %66 = load i32, i32* %blocksize_x_c2, align 4
  %cmp57 = icmp slt i32 %65, %66
  br i1 %cmp57, label %for.body.59, label %for.end.78

for.body.59:                                      ; preds = %for.cond.56
  %67 = load i16*, i16** @src_line, align 8
  %incdec.ptr60 = getelementptr inbounds i16, i16* %67, i32 1
  store i16* %incdec.ptr60, i16** @src_line, align 8
  %68 = load i16, i16* %67, align 2
  %conv61 = zext i16 %68 to i32
  %69 = load i16*, i16** @ref_line, align 8
  %incdec.ptr62 = getelementptr inbounds i16, i16* %69, i32 1
  store i16* %incdec.ptr62, i16** @ref_line, align 8
  %70 = load i16, i16* %69, align 2
  %conv63 = zext i16 %70 to i32
  %sub64 = sub nsw i32 %conv61, %conv63
  %idxprom65 = sext i32 %sub64 to i64
  %71 = load i32*, i32** @byte_abs, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %71, i64 %idxprom65
  %72 = load i32, i32* %arrayidx66, align 4
  %73 = load i32, i32* %mcost, align 4
  %add67 = add i32 %73, %72
  store i32 %add67, i32* %mcost, align 4
  %74 = load i16*, i16** @src_line, align 8
  %incdec.ptr68 = getelementptr inbounds i16, i16* %74, i32 1
  store i16* %incdec.ptr68, i16** @src_line, align 8
  %75 = load i16, i16* %74, align 2
  %conv69 = zext i16 %75 to i32
  %76 = load i16*, i16** @ref_line, align 8
  %incdec.ptr70 = getelementptr inbounds i16, i16* %76, i32 1
  store i16* %incdec.ptr70, i16** @ref_line, align 8
  %77 = load i16, i16* %76, align 2
  %conv71 = zext i16 %77 to i32
  %sub72 = sub nsw i32 %conv69, %conv71
  %idxprom73 = sext i32 %sub72 to i64
  %78 = load i32*, i32** @byte_abs, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %78, i64 %idxprom73
  %79 = load i32, i32* %arrayidx74, align 4
  %80 = load i32, i32* %mcost, align 4
  %add75 = add i32 %80, %79
  store i32 %add75, i32* %mcost, align 4
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.59
  %81 = load i32, i32* %x4, align 4
  %inc77 = add nsw i32 %81, 1
  store i32 %inc77, i32* %x4, align 4
  br label %for.cond.56

for.end.78:                                       ; preds = %for.cond.56
  %82 = load i32, i32* %mcost, align 4
  %83 = load i32, i32* %min_mcost.addr, align 4
  %cmp79 = icmp sge i32 %82, %83
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %for.end.78
  %84 = load i32, i32* %mcost, align 4
  store i32 %84, i32* %retval
  br label %return

if.end.82:                                        ; preds = %for.end.78
  %85 = load i32, i32* %cr_pad_size_x, align 4
  %86 = load i16*, i16** @ref_line, align 8
  %idx.ext83 = sext i32 %85 to i64
  %add.ptr84 = getelementptr inbounds i16, i16* %86, i64 %idx.ext83
  store i16* %add.ptr84, i16** @ref_line, align 8
  br label %for.inc.85

for.inc.85:                                       ; preds = %if.end.82
  %87 = load i32, i32* %y, align 4
  %inc86 = add nsw i32 %87, 1
  store i32 %inc86, i32* %y, align 4
  br label %for.cond.52

for.end.87:                                       ; preds = %for.cond.52
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.end.87
  %88 = load i32, i32* %k, align 4
  %inc89 = add nsw i32 %88, 1
  store i32 %inc89, i32* %k, align 4
  br label %for.cond.41

for.end.90:                                       ; preds = %for.cond.41
  br label %if.end.91

if.end.91:                                        ; preds = %for.end.90, %for.end.37
  %89 = load i32, i32* %mcost, align 4
  store i32 %89, i32* %retval
  br label %return

return:                                           ; preds = %if.end.91, %if.then.81, %if.then
  %90 = load i32, i32* %retval
  ret i32 %90
}

; Function Attrs: nounwind uwtable
define i32 @computeSADWP(i16* %src_pic, i32 %blocksize_y, i32 %blocksize_x, i32 %min_mcost, i32 %cand_x, i32 %cand_y) #0 {
entry:
  %retval = alloca i32, align 4
  %src_pic.addr = alloca i16*, align 8
  %blocksize_y.addr = alloca i32, align 4
  %blocksize_x.addr = alloca i32, align 4
  %min_mcost.addr = alloca i32, align 4
  %cand_x.addr = alloca i32, align 4
  %cand_y.addr = alloca i32, align 4
  %mcost = alloca i32, align 4
  %y = alloca i32, align 4
  %x4 = alloca i32, align 4
  %weighted_pel = alloca i32, align 4
  %pad_size_x = alloca i32, align 4
  %blocksize_x_c2 = alloca i32, align 4
  %blocksize_y_c = alloca i32, align 4
  %cr_pad_size_x = alloca i32, align 4
  %k = alloca i32, align 4
  store i16* %src_pic, i16** %src_pic.addr, align 8
  store i32 %blocksize_y, i32* %blocksize_y.addr, align 4
  store i32 %blocksize_x, i32* %blocksize_x.addr, align 4
  store i32 %min_mcost, i32* %min_mcost.addr, align 4
  store i32 %cand_x, i32* %cand_x.addr, align 4
  store i32 %cand_y, i32* %cand_y.addr, align 4
  store i32 0, i32* %mcost, align 4
  %0 = load i32, i32* @img_padded_size_x, align 4
  %1 = load i32, i32* %blocksize_x.addr, align 4
  %sub = sub nsw i32 %0, %1
  store i32 %sub, i32* %pad_size_x, align 4
  %2 = load i16*, i16** %src_pic.addr, align 8
  store i16* %2, i16** @src_line, align 8
  %3 = load i32, i32* @ref_access_method, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_line, i32 0, i64 %idxprom
  %4 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx, align 8
  %5 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 0), align 8
  %6 = load i32, i32* %cand_y.addr, align 4
  %7 = load i32, i32* %cand_x.addr, align 4
  %call = call i16* %4(i16**** %5, i32 %6, i32 %7)
  store i16* %call, i16** @ref_line, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.57, %entry
  %8 = load i32, i32* %y, align 4
  %9 = load i32, i32* %blocksize_y.addr, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end.58

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x4, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %10 = load i32, i32* %x4, align 4
  %11 = load i32, i32* %blocksize_x.addr, align 4
  %cmp2 = icmp slt i32 %10, %11
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 156
  %13 = load i32, i32* %max_imgpel_value, align 4
  %14 = load i32, i32* @weight_luma, align 4
  %15 = load i16*, i16** @ref_line, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %15, i32 1
  store i16* %incdec.ptr, i16** @ref_line, align 8
  %16 = load i16, i16* %15, align 2
  %conv = zext i16 %16 to i32
  %mul = mul nsw i32 %14, %conv
  %17 = load i32, i32* @wp_luma_round, align 4
  %add = add nsw i32 %mul, %17
  %18 = load i32, i32* @luma_log_weight_denom, align 4
  %shr = ashr i32 %add, %18
  %19 = load i32, i32* @offset_luma, align 4
  %add4 = add nsw i32 %shr, %19
  %call5 = call i32 @iClip1(i32 %13, i32 %add4)
  store i32 %call5, i32* %weighted_pel, align 4
  %20 = load i16*, i16** @src_line, align 8
  %incdec.ptr6 = getelementptr inbounds i16, i16* %20, i32 1
  store i16* %incdec.ptr6, i16** @src_line, align 8
  %21 = load i16, i16* %20, align 2
  %conv7 = zext i16 %21 to i32
  %22 = load i32, i32* %weighted_pel, align 4
  %sub8 = sub nsw i32 %conv7, %22
  %idxprom9 = sext i32 %sub8 to i64
  %23 = load i32*, i32** @byte_abs, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %23, i64 %idxprom9
  %24 = load i32, i32* %arrayidx10, align 4
  %25 = load i32, i32* %mcost, align 4
  %add11 = add i32 %25, %24
  store i32 %add11, i32* %mcost, align 4
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 156
  %27 = load i32, i32* %max_imgpel_value12, align 4
  %28 = load i32, i32* @weight_luma, align 4
  %29 = load i16*, i16** @ref_line, align 8
  %incdec.ptr13 = getelementptr inbounds i16, i16* %29, i32 1
  store i16* %incdec.ptr13, i16** @ref_line, align 8
  %30 = load i16, i16* %29, align 2
  %conv14 = zext i16 %30 to i32
  %mul15 = mul nsw i32 %28, %conv14
  %31 = load i32, i32* @wp_luma_round, align 4
  %add16 = add nsw i32 %mul15, %31
  %32 = load i32, i32* @luma_log_weight_denom, align 4
  %shr17 = ashr i32 %add16, %32
  %33 = load i32, i32* @offset_luma, align 4
  %add18 = add nsw i32 %shr17, %33
  %call19 = call i32 @iClip1(i32 %27, i32 %add18)
  store i32 %call19, i32* %weighted_pel, align 4
  %34 = load i16*, i16** @src_line, align 8
  %incdec.ptr20 = getelementptr inbounds i16, i16* %34, i32 1
  store i16* %incdec.ptr20, i16** @src_line, align 8
  %35 = load i16, i16* %34, align 2
  %conv21 = zext i16 %35 to i32
  %36 = load i32, i32* %weighted_pel, align 4
  %sub22 = sub nsw i32 %conv21, %36
  %idxprom23 = sext i32 %sub22 to i64
  %37 = load i32*, i32** @byte_abs, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %37, i64 %idxprom23
  %38 = load i32, i32* %arrayidx24, align 4
  %39 = load i32, i32* %mcost, align 4
  %add25 = add i32 %39, %38
  store i32 %add25, i32* %mcost, align 4
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value26 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 156
  %41 = load i32, i32* %max_imgpel_value26, align 4
  %42 = load i32, i32* @weight_luma, align 4
  %43 = load i16*, i16** @ref_line, align 8
  %incdec.ptr27 = getelementptr inbounds i16, i16* %43, i32 1
  store i16* %incdec.ptr27, i16** @ref_line, align 8
  %44 = load i16, i16* %43, align 2
  %conv28 = zext i16 %44 to i32
  %mul29 = mul nsw i32 %42, %conv28
  %45 = load i32, i32* @wp_luma_round, align 4
  %add30 = add nsw i32 %mul29, %45
  %46 = load i32, i32* @luma_log_weight_denom, align 4
  %shr31 = ashr i32 %add30, %46
  %47 = load i32, i32* @offset_luma, align 4
  %add32 = add nsw i32 %shr31, %47
  %call33 = call i32 @iClip1(i32 %41, i32 %add32)
  store i32 %call33, i32* %weighted_pel, align 4
  %48 = load i16*, i16** @src_line, align 8
  %incdec.ptr34 = getelementptr inbounds i16, i16* %48, i32 1
  store i16* %incdec.ptr34, i16** @src_line, align 8
  %49 = load i16, i16* %48, align 2
  %conv35 = zext i16 %49 to i32
  %50 = load i32, i32* %weighted_pel, align 4
  %sub36 = sub nsw i32 %conv35, %50
  %idxprom37 = sext i32 %sub36 to i64
  %51 = load i32*, i32** @byte_abs, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %51, i64 %idxprom37
  %52 = load i32, i32* %arrayidx38, align 4
  %53 = load i32, i32* %mcost, align 4
  %add39 = add i32 %53, %52
  store i32 %add39, i32* %mcost, align 4
  %54 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value40 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %54, i32 0, i32 156
  %55 = load i32, i32* %max_imgpel_value40, align 4
  %56 = load i32, i32* @weight_luma, align 4
  %57 = load i16*, i16** @ref_line, align 8
  %incdec.ptr41 = getelementptr inbounds i16, i16* %57, i32 1
  store i16* %incdec.ptr41, i16** @ref_line, align 8
  %58 = load i16, i16* %57, align 2
  %conv42 = zext i16 %58 to i32
  %mul43 = mul nsw i32 %56, %conv42
  %59 = load i32, i32* @wp_luma_round, align 4
  %add44 = add nsw i32 %mul43, %59
  %60 = load i32, i32* @luma_log_weight_denom, align 4
  %shr45 = ashr i32 %add44, %60
  %61 = load i32, i32* @offset_luma, align 4
  %add46 = add nsw i32 %shr45, %61
  %call47 = call i32 @iClip1(i32 %55, i32 %add46)
  store i32 %call47, i32* %weighted_pel, align 4
  %62 = load i16*, i16** @src_line, align 8
  %incdec.ptr48 = getelementptr inbounds i16, i16* %62, i32 1
  store i16* %incdec.ptr48, i16** @src_line, align 8
  %63 = load i16, i16* %62, align 2
  %conv49 = zext i16 %63 to i32
  %64 = load i32, i32* %weighted_pel, align 4
  %sub50 = sub nsw i32 %conv49, %64
  %idxprom51 = sext i32 %sub50 to i64
  %65 = load i32*, i32** @byte_abs, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %65, i64 %idxprom51
  %66 = load i32, i32* %arrayidx52, align 4
  %67 = load i32, i32* %mcost, align 4
  %add53 = add i32 %67, %66
  store i32 %add53, i32* %mcost, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %68 = load i32, i32* %x4, align 4
  %add54 = add nsw i32 %68, 4
  store i32 %add54, i32* %x4, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %69 = load i32, i32* %mcost, align 4
  %70 = load i32, i32* %min_mcost.addr, align 4
  %cmp55 = icmp sge i32 %69, %70
  br i1 %cmp55, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %71 = load i32, i32* %mcost, align 4
  store i32 %71, i32* %retval
  br label %return

if.end:                                           ; preds = %for.end
  %72 = load i32, i32* %pad_size_x, align 4
  %73 = load i16*, i16** @ref_line, align 8
  %idx.ext = sext i32 %72 to i64
  %add.ptr = getelementptr inbounds i16, i16* %73, i64 %idx.ext
  store i16* %add.ptr, i16** @ref_line, align 8
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end
  %74 = load i32, i32* %y, align 4
  %inc = add nsw i32 %74, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end.58:                                       ; preds = %for.cond
  %75 = load i32, i32* @ChromaMEEnable, align 4
  %tobool = icmp ne i32 %75, 0
  br i1 %tobool, label %if.then.59, label %if.end.132

if.then.59:                                       ; preds = %for.end.58
  %76 = load i32, i32* %blocksize_x.addr, align 4
  %77 = load i32, i32* @shift_cr_x, align 4
  %shr60 = ashr i32 %76, %77
  store i32 %shr60, i32* %blocksize_x_c2, align 4
  %78 = load i32, i32* %blocksize_y.addr, align 4
  %79 = load i32, i32* @shift_cr_y, align 4
  %shr61 = ashr i32 %78, %79
  store i32 %shr61, i32* %blocksize_y_c, align 4
  %80 = load i32, i32* @img_cr_padded_size_x, align 4
  %81 = load i32, i32* %blocksize_x_c2, align 4
  %sub62 = sub nsw i32 %80, %81
  store i32 %sub62, i32* %cr_pad_size_x, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.129, %if.then.59
  %82 = load i32, i32* %k, align 4
  %cmp64 = icmp slt i32 %82, 2
  br i1 %cmp64, label %for.body.66, label %for.end.131

for.body.66:                                      ; preds = %for.cond.63
  %83 = load i16*, i16** %src_pic.addr, align 8
  %84 = load i32, i32* %k, align 4
  %shl = shl i32 256, %84
  %idx.ext67 = sext i32 %shl to i64
  %add.ptr68 = getelementptr inbounds i16, i16* %83, i64 %idx.ext67
  store i16* %add.ptr68, i16** @src_line, align 8
  %85 = load i32, i32* @ref_access_method, align 4
  %idxprom69 = sext i32 %85 to i64
  %arrayidx70 = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_crline, i32 0, i64 %idxprom69
  %86 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx70, align 8
  %87 = load i32, i32* %k, align 4
  %idxprom71 = sext i32 %87 to i64
  %arrayidx72 = getelementptr inbounds [2 x i16****], [2 x i16****]* getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 1), i32 0, i64 %idxprom71
  %88 = load i16****, i16***** %arrayidx72, align 8
  %89 = load i32, i32* %cand_y.addr, align 4
  %90 = load i32, i32* %cand_x.addr, align 4
  %call73 = call i16* %86(i16**** %88, i32 %89, i32 %90)
  store i16* %call73, i16** @ref_line, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.126, %for.body.66
  %91 = load i32, i32* %y, align 4
  %92 = load i32, i32* %blocksize_y_c, align 4
  %cmp75 = icmp slt i32 %91, %92
  br i1 %cmp75, label %for.body.77, label %for.end.128

for.body.77:                                      ; preds = %for.cond.74
  store i32 0, i32* %x4, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.117, %for.body.77
  %93 = load i32, i32* %x4, align 4
  %94 = load i32, i32* %blocksize_x_c2, align 4
  %cmp79 = icmp slt i32 %93, %94
  br i1 %cmp79, label %for.body.81, label %for.end.119

for.body.81:                                      ; preds = %for.cond.78
  %95 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %95, i32 0, i32 157
  %96 = load i32, i32* %max_imgpel_value_uv, align 4
  %97 = load i32, i32* %k, align 4
  %idxprom82 = sext i32 %97 to i64
  %arrayidx83 = getelementptr inbounds [2 x i32], [2 x i32]* @weight_cr, i32 0, i64 %idxprom82
  %98 = load i32, i32* %arrayidx83, align 4
  %99 = load i16*, i16** @ref_line, align 8
  %incdec.ptr84 = getelementptr inbounds i16, i16* %99, i32 1
  store i16* %incdec.ptr84, i16** @ref_line, align 8
  %100 = load i16, i16* %99, align 2
  %conv85 = zext i16 %100 to i32
  %mul86 = mul nsw i32 %98, %conv85
  %101 = load i32, i32* @wp_chroma_round, align 4
  %add87 = add nsw i32 %mul86, %101
  %102 = load i32, i32* @chroma_log_weight_denom, align 4
  %shr88 = ashr i32 %add87, %102
  %103 = load i32, i32* %k, align 4
  %idxprom89 = sext i32 %103 to i64
  %arrayidx90 = getelementptr inbounds [2 x i32], [2 x i32]* @offset_cr, i32 0, i64 %idxprom89
  %104 = load i32, i32* %arrayidx90, align 4
  %add91 = add nsw i32 %shr88, %104
  %call92 = call i32 @iClip1(i32 %96, i32 %add91)
  store i32 %call92, i32* %weighted_pel, align 4
  %105 = load i16*, i16** @src_line, align 8
  %incdec.ptr93 = getelementptr inbounds i16, i16* %105, i32 1
  store i16* %incdec.ptr93, i16** @src_line, align 8
  %106 = load i16, i16* %105, align 2
  %conv94 = zext i16 %106 to i32
  %107 = load i32, i32* %weighted_pel, align 4
  %sub95 = sub nsw i32 %conv94, %107
  %idxprom96 = sext i32 %sub95 to i64
  %108 = load i32*, i32** @byte_abs, align 8
  %arrayidx97 = getelementptr inbounds i32, i32* %108, i64 %idxprom96
  %109 = load i32, i32* %arrayidx97, align 4
  %110 = load i32, i32* %mcost, align 4
  %add98 = add i32 %110, %109
  store i32 %add98, i32* %mcost, align 4
  %111 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv99 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %111, i32 0, i32 157
  %112 = load i32, i32* %max_imgpel_value_uv99, align 4
  %113 = load i32, i32* %k, align 4
  %idxprom100 = sext i32 %113 to i64
  %arrayidx101 = getelementptr inbounds [2 x i32], [2 x i32]* @weight_cr, i32 0, i64 %idxprom100
  %114 = load i32, i32* %arrayidx101, align 4
  %115 = load i16*, i16** @ref_line, align 8
  %incdec.ptr102 = getelementptr inbounds i16, i16* %115, i32 1
  store i16* %incdec.ptr102, i16** @ref_line, align 8
  %116 = load i16, i16* %115, align 2
  %conv103 = zext i16 %116 to i32
  %mul104 = mul nsw i32 %114, %conv103
  %117 = load i32, i32* @wp_chroma_round, align 4
  %add105 = add nsw i32 %mul104, %117
  %118 = load i32, i32* @chroma_log_weight_denom, align 4
  %shr106 = ashr i32 %add105, %118
  %119 = load i32, i32* %k, align 4
  %idxprom107 = sext i32 %119 to i64
  %arrayidx108 = getelementptr inbounds [2 x i32], [2 x i32]* @offset_cr, i32 0, i64 %idxprom107
  %120 = load i32, i32* %arrayidx108, align 4
  %add109 = add nsw i32 %shr106, %120
  %call110 = call i32 @iClip1(i32 %112, i32 %add109)
  store i32 %call110, i32* %weighted_pel, align 4
  %121 = load i16*, i16** @src_line, align 8
  %incdec.ptr111 = getelementptr inbounds i16, i16* %121, i32 1
  store i16* %incdec.ptr111, i16** @src_line, align 8
  %122 = load i16, i16* %121, align 2
  %conv112 = zext i16 %122 to i32
  %123 = load i32, i32* %weighted_pel, align 4
  %sub113 = sub nsw i32 %conv112, %123
  %idxprom114 = sext i32 %sub113 to i64
  %124 = load i32*, i32** @byte_abs, align 8
  %arrayidx115 = getelementptr inbounds i32, i32* %124, i64 %idxprom114
  %125 = load i32, i32* %arrayidx115, align 4
  %126 = load i32, i32* %mcost, align 4
  %add116 = add i32 %126, %125
  store i32 %add116, i32* %mcost, align 4
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.body.81
  %127 = load i32, i32* %x4, align 4
  %inc118 = add nsw i32 %127, 1
  store i32 %inc118, i32* %x4, align 4
  br label %for.cond.78

for.end.119:                                      ; preds = %for.cond.78
  %128 = load i32, i32* %mcost, align 4
  %129 = load i32, i32* %min_mcost.addr, align 4
  %cmp120 = icmp sge i32 %128, %129
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %for.end.119
  %130 = load i32, i32* %mcost, align 4
  store i32 %130, i32* %retval
  br label %return

if.end.123:                                       ; preds = %for.end.119
  %131 = load i32, i32* %cr_pad_size_x, align 4
  %132 = load i16*, i16** @ref_line, align 8
  %idx.ext124 = sext i32 %131 to i64
  %add.ptr125 = getelementptr inbounds i16, i16* %132, i64 %idx.ext124
  store i16* %add.ptr125, i16** @ref_line, align 8
  br label %for.inc.126

for.inc.126:                                      ; preds = %if.end.123
  %133 = load i32, i32* %y, align 4
  %inc127 = add nsw i32 %133, 1
  store i32 %inc127, i32* %y, align 4
  br label %for.cond.74

for.end.128:                                      ; preds = %for.cond.74
  br label %for.inc.129

for.inc.129:                                      ; preds = %for.end.128
  %134 = load i32, i32* %k, align 4
  %inc130 = add nsw i32 %134, 1
  store i32 %inc130, i32* %k, align 4
  br label %for.cond.63

for.end.131:                                      ; preds = %for.cond.63
  br label %if.end.132

if.end.132:                                       ; preds = %for.end.131, %for.end.58
  %135 = load i32, i32* %mcost, align 4
  store i32 %135, i32* %retval
  br label %return

return:                                           ; preds = %if.end.132, %if.then.122, %if.then
  %136 = load i32, i32* %retval
  ret i32 %136
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iClip1(i32 %high, i32 %x) #1 {
entry:
  %high.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %high, i32* %high.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %call = call i32 @imax(i32 %0, i32 0)
  store i32 %call, i32* %x.addr, align 4
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %high.addr, align 4
  %call1 = call i32 @imin(i32 %1, i32 %2)
  store i32 %call1, i32* %x.addr, align 4
  %3 = load i32, i32* %x.addr, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @computeBiPredSAD1(i16* %src_pic, i32 %blocksize_y, i32 %blocksize_x, i32 %min_mcost, i32 %cand_x1, i32 %cand_y1, i32 %cand_x2, i32 %cand_y2) #0 {
entry:
  %retval = alloca i32, align 4
  %src_pic.addr = alloca i16*, align 8
  %blocksize_y.addr = alloca i32, align 4
  %blocksize_x.addr = alloca i32, align 4
  %min_mcost.addr = alloca i32, align 4
  %cand_x1.addr = alloca i32, align 4
  %cand_y1.addr = alloca i32, align 4
  %cand_x2.addr = alloca i32, align 4
  %cand_y2.addr = alloca i32, align 4
  %mcost = alloca i32, align 4
  %bi_diff = alloca i32, align 4
  %y = alloca i32, align 4
  %x4 = alloca i32, align 4
  %pad_size_x = alloca i32, align 4
  %blocksize_x_c2 = alloca i32, align 4
  %blocksize_y_c = alloca i32, align 4
  %cr_pad_size_x = alloca i32, align 4
  %k = alloca i32, align 4
  store i16* %src_pic, i16** %src_pic.addr, align 8
  store i32 %blocksize_y, i32* %blocksize_y.addr, align 4
  store i32 %blocksize_x, i32* %blocksize_x.addr, align 4
  store i32 %min_mcost, i32* %min_mcost.addr, align 4
  store i32 %cand_x1, i32* %cand_x1.addr, align 4
  store i32 %cand_y1, i32* %cand_y1.addr, align 4
  store i32 %cand_x2, i32* %cand_x2.addr, align 4
  store i32 %cand_y2, i32* %cand_y2.addr, align 4
  store i32 0, i32* %mcost, align 4
  %0 = load i32, i32* @img_padded_size_x, align 4
  %1 = load i32, i32* %blocksize_x.addr, align 4
  %sub = sub nsw i32 %0, %1
  store i32 %sub, i32* %pad_size_x, align 4
  %2 = load i16*, i16** %src_pic.addr, align 8
  store i16* %2, i16** @src_line, align 8
  %3 = load i32, i32* @bipred2_access_method, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_line, i32 0, i64 %idxprom
  %4 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx, align 8
  %5 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 0), align 8
  %6 = load i32, i32* %cand_y2.addr, align 4
  %7 = load i32, i32* %cand_x2.addr, align 4
  %call = call i16* %4(i16**** %5, i32 %6, i32 %7)
  store i16* %call, i16** @ref2_line, align 8
  %8 = load i32, i32* @bipred1_access_method, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_line, i32 0, i64 %idxprom1
  %9 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx2, align 8
  %10 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 0), align 8
  %11 = load i32, i32* %cand_y1.addr, align 4
  %12 = load i32, i32* %cand_x1.addr, align 4
  %call3 = call i16* %9(i16**** %10, i32 %11, i32 %12)
  store i16* %call3, i16** @ref1_line, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.60, %entry
  %13 = load i32, i32* %y, align 4
  %14 = load i32, i32* %blocksize_y.addr, align 4
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end.61

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x4, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %15 = load i32, i32* %x4, align 4
  %16 = load i32, i32* %blocksize_x.addr, align 4
  %cmp5 = icmp slt i32 %15, %16
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %17 = load i16*, i16** @src_line, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %17, i32 1
  store i16* %incdec.ptr, i16** @src_line, align 8
  %18 = load i16, i16* %17, align 2
  %conv = zext i16 %18 to i32
  %19 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr7 = getelementptr inbounds i16, i16* %19, i32 1
  store i16* %incdec.ptr7, i16** @ref1_line, align 8
  %20 = load i16, i16* %19, align 2
  %conv8 = zext i16 %20 to i32
  %21 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr9 = getelementptr inbounds i16, i16* %21, i32 1
  store i16* %incdec.ptr9, i16** @ref2_line, align 8
  %22 = load i16, i16* %21, align 2
  %conv10 = zext i16 %22 to i32
  %add = add nsw i32 %conv8, %conv10
  %add11 = add nsw i32 %add, 1
  %shr = ashr i32 %add11, 1
  %sub12 = sub nsw i32 %conv, %shr
  store i32 %sub12, i32* %bi_diff, align 4
  %23 = load i32, i32* %bi_diff, align 4
  %idxprom13 = sext i32 %23 to i64
  %24 = load i32*, i32** @byte_abs, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %24, i64 %idxprom13
  %25 = load i32, i32* %arrayidx14, align 4
  %26 = load i32, i32* %mcost, align 4
  %add15 = add i32 %26, %25
  store i32 %add15, i32* %mcost, align 4
  %27 = load i16*, i16** @src_line, align 8
  %incdec.ptr16 = getelementptr inbounds i16, i16* %27, i32 1
  store i16* %incdec.ptr16, i16** @src_line, align 8
  %28 = load i16, i16* %27, align 2
  %conv17 = zext i16 %28 to i32
  %29 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr18 = getelementptr inbounds i16, i16* %29, i32 1
  store i16* %incdec.ptr18, i16** @ref1_line, align 8
  %30 = load i16, i16* %29, align 2
  %conv19 = zext i16 %30 to i32
  %31 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr20 = getelementptr inbounds i16, i16* %31, i32 1
  store i16* %incdec.ptr20, i16** @ref2_line, align 8
  %32 = load i16, i16* %31, align 2
  %conv21 = zext i16 %32 to i32
  %add22 = add nsw i32 %conv19, %conv21
  %add23 = add nsw i32 %add22, 1
  %shr24 = ashr i32 %add23, 1
  %sub25 = sub nsw i32 %conv17, %shr24
  store i32 %sub25, i32* %bi_diff, align 4
  %33 = load i32, i32* %bi_diff, align 4
  %idxprom26 = sext i32 %33 to i64
  %34 = load i32*, i32** @byte_abs, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %34, i64 %idxprom26
  %35 = load i32, i32* %arrayidx27, align 4
  %36 = load i32, i32* %mcost, align 4
  %add28 = add i32 %36, %35
  store i32 %add28, i32* %mcost, align 4
  %37 = load i16*, i16** @src_line, align 8
  %incdec.ptr29 = getelementptr inbounds i16, i16* %37, i32 1
  store i16* %incdec.ptr29, i16** @src_line, align 8
  %38 = load i16, i16* %37, align 2
  %conv30 = zext i16 %38 to i32
  %39 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr31 = getelementptr inbounds i16, i16* %39, i32 1
  store i16* %incdec.ptr31, i16** @ref1_line, align 8
  %40 = load i16, i16* %39, align 2
  %conv32 = zext i16 %40 to i32
  %41 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr33 = getelementptr inbounds i16, i16* %41, i32 1
  store i16* %incdec.ptr33, i16** @ref2_line, align 8
  %42 = load i16, i16* %41, align 2
  %conv34 = zext i16 %42 to i32
  %add35 = add nsw i32 %conv32, %conv34
  %add36 = add nsw i32 %add35, 1
  %shr37 = ashr i32 %add36, 1
  %sub38 = sub nsw i32 %conv30, %shr37
  store i32 %sub38, i32* %bi_diff, align 4
  %43 = load i32, i32* %bi_diff, align 4
  %idxprom39 = sext i32 %43 to i64
  %44 = load i32*, i32** @byte_abs, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %44, i64 %idxprom39
  %45 = load i32, i32* %arrayidx40, align 4
  %46 = load i32, i32* %mcost, align 4
  %add41 = add i32 %46, %45
  store i32 %add41, i32* %mcost, align 4
  %47 = load i16*, i16** @src_line, align 8
  %incdec.ptr42 = getelementptr inbounds i16, i16* %47, i32 1
  store i16* %incdec.ptr42, i16** @src_line, align 8
  %48 = load i16, i16* %47, align 2
  %conv43 = zext i16 %48 to i32
  %49 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr44 = getelementptr inbounds i16, i16* %49, i32 1
  store i16* %incdec.ptr44, i16** @ref1_line, align 8
  %50 = load i16, i16* %49, align 2
  %conv45 = zext i16 %50 to i32
  %51 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr46 = getelementptr inbounds i16, i16* %51, i32 1
  store i16* %incdec.ptr46, i16** @ref2_line, align 8
  %52 = load i16, i16* %51, align 2
  %conv47 = zext i16 %52 to i32
  %add48 = add nsw i32 %conv45, %conv47
  %add49 = add nsw i32 %add48, 1
  %shr50 = ashr i32 %add49, 1
  %sub51 = sub nsw i32 %conv43, %shr50
  store i32 %sub51, i32* %bi_diff, align 4
  %53 = load i32, i32* %bi_diff, align 4
  %idxprom52 = sext i32 %53 to i64
  %54 = load i32*, i32** @byte_abs, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %54, i64 %idxprom52
  %55 = load i32, i32* %arrayidx53, align 4
  %56 = load i32, i32* %mcost, align 4
  %add54 = add i32 %56, %55
  store i32 %add54, i32* %mcost, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %57 = load i32, i32* %x4, align 4
  %add55 = add nsw i32 %57, 4
  store i32 %add55, i32* %x4, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %58 = load i32, i32* %mcost, align 4
  %59 = load i32, i32* %min_mcost.addr, align 4
  %cmp56 = icmp sge i32 %58, %59
  br i1 %cmp56, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %60 = load i32, i32* %mcost, align 4
  store i32 %60, i32* %retval
  br label %return

if.end:                                           ; preds = %for.end
  %61 = load i32, i32* %pad_size_x, align 4
  %62 = load i16*, i16** @ref2_line, align 8
  %idx.ext = sext i32 %61 to i64
  %add.ptr = getelementptr inbounds i16, i16* %62, i64 %idx.ext
  store i16* %add.ptr, i16** @ref2_line, align 8
  %63 = load i32, i32* %pad_size_x, align 4
  %64 = load i16*, i16** @ref1_line, align 8
  %idx.ext58 = sext i32 %63 to i64
  %add.ptr59 = getelementptr inbounds i16, i16* %64, i64 %idx.ext58
  store i16* %add.ptr59, i16** @ref1_line, align 8
  br label %for.inc.60

for.inc.60:                                       ; preds = %if.end
  %65 = load i32, i32* %y, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end.61:                                       ; preds = %for.cond
  %66 = load i32, i32* @ChromaMEEnable, align 4
  %tobool = icmp ne i32 %66, 0
  br i1 %tobool, label %if.then.62, label %if.end.133

if.then.62:                                       ; preds = %for.end.61
  %67 = load i32, i32* %blocksize_x.addr, align 4
  %68 = load i32, i32* @shift_cr_x, align 4
  %shr63 = ashr i32 %67, %68
  store i32 %shr63, i32* %blocksize_x_c2, align 4
  %69 = load i32, i32* %blocksize_y.addr, align 4
  %70 = load i32, i32* @shift_cr_y, align 4
  %shr64 = ashr i32 %69, %70
  store i32 %shr64, i32* %blocksize_y_c, align 4
  %71 = load i32, i32* @img_cr_padded_size_x, align 4
  %72 = load i32, i32* %blocksize_x_c2, align 4
  %sub65 = sub nsw i32 %71, %72
  store i32 %sub65, i32* %cr_pad_size_x, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.130, %if.then.62
  %73 = load i32, i32* %k, align 4
  %cmp67 = icmp slt i32 %73, 2
  br i1 %cmp67, label %for.body.69, label %for.end.132

for.body.69:                                      ; preds = %for.cond.66
  %74 = load i16*, i16** %src_pic.addr, align 8
  %75 = load i32, i32* %k, align 4
  %shl = shl i32 256, %75
  %idx.ext70 = sext i32 %shl to i64
  %add.ptr71 = getelementptr inbounds i16, i16* %74, i64 %idx.ext70
  store i16* %add.ptr71, i16** @src_line, align 8
  %76 = load i32, i32* @bipred2_access_method, align 4
  %idxprom72 = sext i32 %76 to i64
  %arrayidx73 = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_crline, i32 0, i64 %idxprom72
  %77 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx73, align 8
  %78 = load i32, i32* %k, align 4
  %idxprom74 = sext i32 %78 to i64
  %arrayidx75 = getelementptr inbounds [2 x i16****], [2 x i16****]* getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 1), i32 0, i64 %idxprom74
  %79 = load i16****, i16***** %arrayidx75, align 8
  %80 = load i32, i32* %cand_y2.addr, align 4
  %81 = load i32, i32* %cand_x2.addr, align 4
  %call76 = call i16* %77(i16**** %79, i32 %80, i32 %81)
  store i16* %call76, i16** @ref2_line, align 8
  %82 = load i32, i32* @bipred1_access_method, align 4
  %idxprom77 = sext i32 %82 to i64
  %arrayidx78 = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_crline, i32 0, i64 %idxprom77
  %83 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx78, align 8
  %84 = load i32, i32* %k, align 4
  %idxprom79 = sext i32 %84 to i64
  %arrayidx80 = getelementptr inbounds [2 x i16****], [2 x i16****]* getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 1), i32 0, i64 %idxprom79
  %85 = load i16****, i16***** %arrayidx80, align 8
  %86 = load i32, i32* %cand_y1.addr, align 4
  %87 = load i32, i32* %cand_x1.addr, align 4
  %call81 = call i16* %83(i16**** %85, i32 %86, i32 %87)
  store i16* %call81, i16** @ref1_line, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.127, %for.body.69
  %88 = load i32, i32* %y, align 4
  %89 = load i32, i32* %blocksize_y_c, align 4
  %cmp83 = icmp slt i32 %88, %89
  br i1 %cmp83, label %for.body.85, label %for.end.129

for.body.85:                                      ; preds = %for.cond.82
  store i32 0, i32* %x4, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.116, %for.body.85
  %90 = load i32, i32* %x4, align 4
  %91 = load i32, i32* %blocksize_x_c2, align 4
  %cmp87 = icmp slt i32 %90, %91
  br i1 %cmp87, label %for.body.89, label %for.end.118

for.body.89:                                      ; preds = %for.cond.86
  %92 = load i16*, i16** @src_line, align 8
  %incdec.ptr90 = getelementptr inbounds i16, i16* %92, i32 1
  store i16* %incdec.ptr90, i16** @src_line, align 8
  %93 = load i16, i16* %92, align 2
  %conv91 = zext i16 %93 to i32
  %94 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr92 = getelementptr inbounds i16, i16* %94, i32 1
  store i16* %incdec.ptr92, i16** @ref1_line, align 8
  %95 = load i16, i16* %94, align 2
  %conv93 = zext i16 %95 to i32
  %96 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr94 = getelementptr inbounds i16, i16* %96, i32 1
  store i16* %incdec.ptr94, i16** @ref2_line, align 8
  %97 = load i16, i16* %96, align 2
  %conv95 = zext i16 %97 to i32
  %add96 = add nsw i32 %conv93, %conv95
  %add97 = add nsw i32 %add96, 1
  %shr98 = ashr i32 %add97, 1
  %sub99 = sub nsw i32 %conv91, %shr98
  store i32 %sub99, i32* %bi_diff, align 4
  %98 = load i32, i32* %bi_diff, align 4
  %idxprom100 = sext i32 %98 to i64
  %99 = load i32*, i32** @byte_abs, align 8
  %arrayidx101 = getelementptr inbounds i32, i32* %99, i64 %idxprom100
  %100 = load i32, i32* %arrayidx101, align 4
  %101 = load i32, i32* %mcost, align 4
  %add102 = add i32 %101, %100
  store i32 %add102, i32* %mcost, align 4
  %102 = load i16*, i16** @src_line, align 8
  %incdec.ptr103 = getelementptr inbounds i16, i16* %102, i32 1
  store i16* %incdec.ptr103, i16** @src_line, align 8
  %103 = load i16, i16* %102, align 2
  %conv104 = zext i16 %103 to i32
  %104 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr105 = getelementptr inbounds i16, i16* %104, i32 1
  store i16* %incdec.ptr105, i16** @ref1_line, align 8
  %105 = load i16, i16* %104, align 2
  %conv106 = zext i16 %105 to i32
  %106 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr107 = getelementptr inbounds i16, i16* %106, i32 1
  store i16* %incdec.ptr107, i16** @ref2_line, align 8
  %107 = load i16, i16* %106, align 2
  %conv108 = zext i16 %107 to i32
  %add109 = add nsw i32 %conv106, %conv108
  %add110 = add nsw i32 %add109, 1
  %shr111 = ashr i32 %add110, 1
  %sub112 = sub nsw i32 %conv104, %shr111
  store i32 %sub112, i32* %bi_diff, align 4
  %108 = load i32, i32* %bi_diff, align 4
  %idxprom113 = sext i32 %108 to i64
  %109 = load i32*, i32** @byte_abs, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %109, i64 %idxprom113
  %110 = load i32, i32* %arrayidx114, align 4
  %111 = load i32, i32* %mcost, align 4
  %add115 = add i32 %111, %110
  store i32 %add115, i32* %mcost, align 4
  br label %for.inc.116

for.inc.116:                                      ; preds = %for.body.89
  %112 = load i32, i32* %x4, align 4
  %inc117 = add nsw i32 %112, 1
  store i32 %inc117, i32* %x4, align 4
  br label %for.cond.86

for.end.118:                                      ; preds = %for.cond.86
  %113 = load i32, i32* %mcost, align 4
  %114 = load i32, i32* %min_mcost.addr, align 4
  %cmp119 = icmp sge i32 %113, %114
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %for.end.118
  %115 = load i32, i32* %mcost, align 4
  store i32 %115, i32* %retval
  br label %return

if.end.122:                                       ; preds = %for.end.118
  %116 = load i32, i32* %cr_pad_size_x, align 4
  %117 = load i16*, i16** @ref2_line, align 8
  %idx.ext123 = sext i32 %116 to i64
  %add.ptr124 = getelementptr inbounds i16, i16* %117, i64 %idx.ext123
  store i16* %add.ptr124, i16** @ref2_line, align 8
  %118 = load i32, i32* %cr_pad_size_x, align 4
  %119 = load i16*, i16** @ref1_line, align 8
  %idx.ext125 = sext i32 %118 to i64
  %add.ptr126 = getelementptr inbounds i16, i16* %119, i64 %idx.ext125
  store i16* %add.ptr126, i16** @ref1_line, align 8
  br label %for.inc.127

for.inc.127:                                      ; preds = %if.end.122
  %120 = load i32, i32* %y, align 4
  %inc128 = add nsw i32 %120, 1
  store i32 %inc128, i32* %y, align 4
  br label %for.cond.82

for.end.129:                                      ; preds = %for.cond.82
  br label %for.inc.130

for.inc.130:                                      ; preds = %for.end.129
  %121 = load i32, i32* %k, align 4
  %inc131 = add nsw i32 %121, 1
  store i32 %inc131, i32* %k, align 4
  br label %for.cond.66

for.end.132:                                      ; preds = %for.cond.66
  br label %if.end.133

if.end.133:                                       ; preds = %for.end.132, %for.end.61
  %122 = load i32, i32* %mcost, align 4
  store i32 %122, i32* %retval
  br label %return

return:                                           ; preds = %if.end.133, %if.then.121, %if.then
  %123 = load i32, i32* %retval
  ret i32 %123
}

; Function Attrs: nounwind uwtable
define i32 @computeBiPredSAD2(i16* %src_pic, i32 %blocksize_y, i32 %blocksize_x, i32 %min_mcost, i32 %cand_x1, i32 %cand_y1, i32 %cand_x2, i32 %cand_y2) #0 {
entry:
  %retval = alloca i32, align 4
  %src_pic.addr = alloca i16*, align 8
  %blocksize_y.addr = alloca i32, align 4
  %blocksize_x.addr = alloca i32, align 4
  %min_mcost.addr = alloca i32, align 4
  %cand_x1.addr = alloca i32, align 4
  %cand_y1.addr = alloca i32, align 4
  %cand_x2.addr = alloca i32, align 4
  %cand_y2.addr = alloca i32, align 4
  %mcost = alloca i32, align 4
  %bi_diff = alloca i32, align 4
  %denom = alloca i32, align 4
  %lround = alloca i32, align 4
  %y = alloca i32, align 4
  %x4 = alloca i32, align 4
  %weighted_pel = alloca i32, align 4
  %pixel1 = alloca i32, align 4
  %pixel2 = alloca i32, align 4
  %pad_size_x = alloca i32, align 4
  %blocksize_x_c2 = alloca i32, align 4
  %blocksize_y_c = alloca i32, align 4
  %cr_pad_size_x = alloca i32, align 4
  %k = alloca i32, align 4
  store i16* %src_pic, i16** %src_pic.addr, align 8
  store i32 %blocksize_y, i32* %blocksize_y.addr, align 4
  store i32 %blocksize_x, i32* %blocksize_x.addr, align 4
  store i32 %min_mcost, i32* %min_mcost.addr, align 4
  store i32 %cand_x1, i32* %cand_x1.addr, align 4
  store i32 %cand_y1, i32* %cand_y1.addr, align 4
  store i32 %cand_x2, i32* %cand_x2.addr, align 4
  store i32 %cand_y2, i32* %cand_y2.addr, align 4
  store i32 0, i32* %mcost, align 4
  %0 = load i32, i32* @luma_log_weight_denom, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %denom, align 4
  %1 = load i32, i32* @wp_luma_round, align 4
  %mul = mul nsw i32 2, %1
  store i32 %mul, i32* %lround, align 4
  %2 = load i32, i32* @img_padded_size_x, align 4
  %3 = load i32, i32* %blocksize_x.addr, align 4
  %sub = sub nsw i32 %2, %3
  store i32 %sub, i32* %pad_size_x, align 4
  %4 = load i16*, i16** %src_pic.addr, align 8
  store i16* %4, i16** @src_line, align 8
  %5 = load i32, i32* @bipred2_access_method, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_line, i32 0, i64 %idxprom
  %6 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx, align 8
  %7 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 0), align 8
  %8 = load i32, i32* %cand_y2.addr, align 4
  %9 = load i32, i32* %cand_x2.addr, align 4
  %call = call i16* %6(i16**** %7, i32 %8, i32 %9)
  store i16* %call, i16** @ref2_line, align 8
  %10 = load i32, i32* @bipred1_access_method, align 4
  %idxprom1 = sext i32 %10 to i64
  %arrayidx2 = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_line, i32 0, i64 %idxprom1
  %11 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx2, align 8
  %12 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 0), align 8
  %13 = load i32, i32* %cand_y1.addr, align 4
  %14 = load i32, i32* %cand_x1.addr, align 4
  %call3 = call i16* %11(i16**** %12, i32 %13, i32 %14)
  store i16* %call3, i16** @ref1_line, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.92, %entry
  %15 = load i32, i32* %y, align 4
  %16 = load i32, i32* %blocksize_y.addr, align 4
  %cmp = icmp slt i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end.93

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x4, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %17 = load i32, i32* %x4, align 4
  %18 = load i32, i32* %blocksize_x.addr, align 4
  %cmp5 = icmp slt i32 %17, %18
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %19 = load i16, i16* @weight1, align 2
  %conv = sext i16 %19 to i32
  %20 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %20, i32 1
  store i16* %incdec.ptr, i16** @ref1_line, align 8
  %21 = load i16, i16* %20, align 2
  %conv7 = zext i16 %21 to i32
  %mul8 = mul nsw i32 %conv, %conv7
  store i32 %mul8, i32* %pixel1, align 4
  %22 = load i16, i16* @weight2, align 2
  %conv9 = sext i16 %22 to i32
  %23 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr10 = getelementptr inbounds i16, i16* %23, i32 1
  store i16* %incdec.ptr10, i16** @ref2_line, align 8
  %24 = load i16, i16* %23, align 2
  %conv11 = zext i16 %24 to i32
  %mul12 = mul nsw i32 %conv9, %conv11
  store i32 %mul12, i32* %pixel2, align 4
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 156
  %26 = load i32, i32* %max_imgpel_value, align 4
  %27 = load i32, i32* %pixel1, align 4
  %28 = load i32, i32* %pixel2, align 4
  %add13 = add nsw i32 %27, %28
  %29 = load i32, i32* %lround, align 4
  %add14 = add nsw i32 %add13, %29
  %30 = load i32, i32* %denom, align 4
  %shr = ashr i32 %add14, %30
  %31 = load i16, i16* @offsetBi, align 2
  %conv15 = sext i16 %31 to i32
  %add16 = add nsw i32 %shr, %conv15
  %call17 = call i32 @iClip1(i32 %26, i32 %add16)
  store i32 %call17, i32* %weighted_pel, align 4
  %32 = load i16*, i16** @src_line, align 8
  %incdec.ptr18 = getelementptr inbounds i16, i16* %32, i32 1
  store i16* %incdec.ptr18, i16** @src_line, align 8
  %33 = load i16, i16* %32, align 2
  %conv19 = zext i16 %33 to i32
  %34 = load i32, i32* %weighted_pel, align 4
  %sub20 = sub nsw i32 %conv19, %34
  store i32 %sub20, i32* %bi_diff, align 4
  %35 = load i32, i32* %bi_diff, align 4
  %idxprom21 = sext i32 %35 to i64
  %36 = load i32*, i32** @byte_abs, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %36, i64 %idxprom21
  %37 = load i32, i32* %arrayidx22, align 4
  %38 = load i32, i32* %mcost, align 4
  %add23 = add i32 %38, %37
  store i32 %add23, i32* %mcost, align 4
  %39 = load i16, i16* @weight1, align 2
  %conv24 = sext i16 %39 to i32
  %40 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr25 = getelementptr inbounds i16, i16* %40, i32 1
  store i16* %incdec.ptr25, i16** @ref1_line, align 8
  %41 = load i16, i16* %40, align 2
  %conv26 = zext i16 %41 to i32
  %mul27 = mul nsw i32 %conv24, %conv26
  store i32 %mul27, i32* %pixel1, align 4
  %42 = load i16, i16* @weight2, align 2
  %conv28 = sext i16 %42 to i32
  %43 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr29 = getelementptr inbounds i16, i16* %43, i32 1
  store i16* %incdec.ptr29, i16** @ref2_line, align 8
  %44 = load i16, i16* %43, align 2
  %conv30 = zext i16 %44 to i32
  %mul31 = mul nsw i32 %conv28, %conv30
  store i32 %mul31, i32* %pixel2, align 4
  %45 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value32 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %45, i32 0, i32 156
  %46 = load i32, i32* %max_imgpel_value32, align 4
  %47 = load i32, i32* %pixel1, align 4
  %48 = load i32, i32* %pixel2, align 4
  %add33 = add nsw i32 %47, %48
  %49 = load i32, i32* %lround, align 4
  %add34 = add nsw i32 %add33, %49
  %50 = load i32, i32* %denom, align 4
  %shr35 = ashr i32 %add34, %50
  %51 = load i16, i16* @offsetBi, align 2
  %conv36 = sext i16 %51 to i32
  %add37 = add nsw i32 %shr35, %conv36
  %call38 = call i32 @iClip1(i32 %46, i32 %add37)
  store i32 %call38, i32* %weighted_pel, align 4
  %52 = load i16*, i16** @src_line, align 8
  %incdec.ptr39 = getelementptr inbounds i16, i16* %52, i32 1
  store i16* %incdec.ptr39, i16** @src_line, align 8
  %53 = load i16, i16* %52, align 2
  %conv40 = zext i16 %53 to i32
  %54 = load i32, i32* %weighted_pel, align 4
  %sub41 = sub nsw i32 %conv40, %54
  store i32 %sub41, i32* %bi_diff, align 4
  %55 = load i32, i32* %bi_diff, align 4
  %idxprom42 = sext i32 %55 to i64
  %56 = load i32*, i32** @byte_abs, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %56, i64 %idxprom42
  %57 = load i32, i32* %arrayidx43, align 4
  %58 = load i32, i32* %mcost, align 4
  %add44 = add i32 %58, %57
  store i32 %add44, i32* %mcost, align 4
  %59 = load i16, i16* @weight1, align 2
  %conv45 = sext i16 %59 to i32
  %60 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr46 = getelementptr inbounds i16, i16* %60, i32 1
  store i16* %incdec.ptr46, i16** @ref1_line, align 8
  %61 = load i16, i16* %60, align 2
  %conv47 = zext i16 %61 to i32
  %mul48 = mul nsw i32 %conv45, %conv47
  store i32 %mul48, i32* %pixel1, align 4
  %62 = load i16, i16* @weight2, align 2
  %conv49 = sext i16 %62 to i32
  %63 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr50 = getelementptr inbounds i16, i16* %63, i32 1
  store i16* %incdec.ptr50, i16** @ref2_line, align 8
  %64 = load i16, i16* %63, align 2
  %conv51 = zext i16 %64 to i32
  %mul52 = mul nsw i32 %conv49, %conv51
  store i32 %mul52, i32* %pixel2, align 4
  %65 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value53 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %65, i32 0, i32 156
  %66 = load i32, i32* %max_imgpel_value53, align 4
  %67 = load i32, i32* %pixel1, align 4
  %68 = load i32, i32* %pixel2, align 4
  %add54 = add nsw i32 %67, %68
  %69 = load i32, i32* %lround, align 4
  %add55 = add nsw i32 %add54, %69
  %70 = load i32, i32* %denom, align 4
  %shr56 = ashr i32 %add55, %70
  %71 = load i16, i16* @offsetBi, align 2
  %conv57 = sext i16 %71 to i32
  %add58 = add nsw i32 %shr56, %conv57
  %call59 = call i32 @iClip1(i32 %66, i32 %add58)
  store i32 %call59, i32* %weighted_pel, align 4
  %72 = load i16*, i16** @src_line, align 8
  %incdec.ptr60 = getelementptr inbounds i16, i16* %72, i32 1
  store i16* %incdec.ptr60, i16** @src_line, align 8
  %73 = load i16, i16* %72, align 2
  %conv61 = zext i16 %73 to i32
  %74 = load i32, i32* %weighted_pel, align 4
  %sub62 = sub nsw i32 %conv61, %74
  store i32 %sub62, i32* %bi_diff, align 4
  %75 = load i32, i32* %bi_diff, align 4
  %idxprom63 = sext i32 %75 to i64
  %76 = load i32*, i32** @byte_abs, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %76, i64 %idxprom63
  %77 = load i32, i32* %arrayidx64, align 4
  %78 = load i32, i32* %mcost, align 4
  %add65 = add i32 %78, %77
  store i32 %add65, i32* %mcost, align 4
  %79 = load i16, i16* @weight1, align 2
  %conv66 = sext i16 %79 to i32
  %80 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr67 = getelementptr inbounds i16, i16* %80, i32 1
  store i16* %incdec.ptr67, i16** @ref1_line, align 8
  %81 = load i16, i16* %80, align 2
  %conv68 = zext i16 %81 to i32
  %mul69 = mul nsw i32 %conv66, %conv68
  store i32 %mul69, i32* %pixel1, align 4
  %82 = load i16, i16* @weight2, align 2
  %conv70 = sext i16 %82 to i32
  %83 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr71 = getelementptr inbounds i16, i16* %83, i32 1
  store i16* %incdec.ptr71, i16** @ref2_line, align 8
  %84 = load i16, i16* %83, align 2
  %conv72 = zext i16 %84 to i32
  %mul73 = mul nsw i32 %conv70, %conv72
  store i32 %mul73, i32* %pixel2, align 4
  %85 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value74 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %85, i32 0, i32 156
  %86 = load i32, i32* %max_imgpel_value74, align 4
  %87 = load i32, i32* %pixel1, align 4
  %88 = load i32, i32* %pixel2, align 4
  %add75 = add nsw i32 %87, %88
  %89 = load i32, i32* %lround, align 4
  %add76 = add nsw i32 %add75, %89
  %90 = load i32, i32* %denom, align 4
  %shr77 = ashr i32 %add76, %90
  %91 = load i16, i16* @offsetBi, align 2
  %conv78 = sext i16 %91 to i32
  %add79 = add nsw i32 %shr77, %conv78
  %call80 = call i32 @iClip1(i32 %86, i32 %add79)
  store i32 %call80, i32* %weighted_pel, align 4
  %92 = load i16*, i16** @src_line, align 8
  %incdec.ptr81 = getelementptr inbounds i16, i16* %92, i32 1
  store i16* %incdec.ptr81, i16** @src_line, align 8
  %93 = load i16, i16* %92, align 2
  %conv82 = zext i16 %93 to i32
  %94 = load i32, i32* %weighted_pel, align 4
  %sub83 = sub nsw i32 %conv82, %94
  store i32 %sub83, i32* %bi_diff, align 4
  %95 = load i32, i32* %bi_diff, align 4
  %idxprom84 = sext i32 %95 to i64
  %96 = load i32*, i32** @byte_abs, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %96, i64 %idxprom84
  %97 = load i32, i32* %arrayidx85, align 4
  %98 = load i32, i32* %mcost, align 4
  %add86 = add i32 %98, %97
  store i32 %add86, i32* %mcost, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %99 = load i32, i32* %x4, align 4
  %add87 = add nsw i32 %99, 4
  store i32 %add87, i32* %x4, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %100 = load i32, i32* %mcost, align 4
  %101 = load i32, i32* %min_mcost.addr, align 4
  %cmp88 = icmp sge i32 %100, %101
  br i1 %cmp88, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %102 = load i32, i32* %mcost, align 4
  store i32 %102, i32* %retval
  br label %return

if.end:                                           ; preds = %for.end
  %103 = load i32, i32* %pad_size_x, align 4
  %104 = load i16*, i16** @ref2_line, align 8
  %idx.ext = sext i32 %103 to i64
  %add.ptr = getelementptr inbounds i16, i16* %104, i64 %idx.ext
  store i16* %add.ptr, i16** @ref2_line, align 8
  %105 = load i32, i32* %pad_size_x, align 4
  %106 = load i16*, i16** @ref1_line, align 8
  %idx.ext90 = sext i32 %105 to i64
  %add.ptr91 = getelementptr inbounds i16, i16* %106, i64 %idx.ext90
  store i16* %add.ptr91, i16** @ref1_line, align 8
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end
  %107 = load i32, i32* %y, align 4
  %inc = add nsw i32 %107, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end.93:                                       ; preds = %for.cond
  %108 = load i32, i32* @ChromaMEEnable, align 4
  %tobool = icmp ne i32 %108, 0
  br i1 %tobool, label %if.then.94, label %if.end.192

if.then.94:                                       ; preds = %for.end.93
  %109 = load i32, i32* %blocksize_x.addr, align 4
  %110 = load i32, i32* @shift_cr_x, align 4
  %shr95 = ashr i32 %109, %110
  store i32 %shr95, i32* %blocksize_x_c2, align 4
  %111 = load i32, i32* %blocksize_y.addr, align 4
  %112 = load i32, i32* @shift_cr_y, align 4
  %shr96 = ashr i32 %111, %112
  store i32 %shr96, i32* %blocksize_y_c, align 4
  %113 = load i32, i32* @img_cr_padded_size_x, align 4
  %114 = load i32, i32* %blocksize_x_c2, align 4
  %sub97 = sub nsw i32 %113, %114
  store i32 %sub97, i32* %cr_pad_size_x, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.189, %if.then.94
  %115 = load i32, i32* %k, align 4
  %cmp99 = icmp slt i32 %115, 2
  br i1 %cmp99, label %for.body.101, label %for.end.191

for.body.101:                                     ; preds = %for.cond.98
  %116 = load i16*, i16** %src_pic.addr, align 8
  %117 = load i32, i32* %k, align 4
  %shl = shl i32 256, %117
  %idx.ext102 = sext i32 %shl to i64
  %add.ptr103 = getelementptr inbounds i16, i16* %116, i64 %idx.ext102
  store i16* %add.ptr103, i16** @src_line, align 8
  %118 = load i32, i32* @bipred2_access_method, align 4
  %idxprom104 = sext i32 %118 to i64
  %arrayidx105 = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_crline, i32 0, i64 %idxprom104
  %119 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx105, align 8
  %120 = load i32, i32* %k, align 4
  %idxprom106 = sext i32 %120 to i64
  %arrayidx107 = getelementptr inbounds [2 x i16****], [2 x i16****]* getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 1), i32 0, i64 %idxprom106
  %121 = load i16****, i16***** %arrayidx107, align 8
  %122 = load i32, i32* %cand_y2.addr, align 4
  %123 = load i32, i32* %cand_x2.addr, align 4
  %call108 = call i16* %119(i16**** %121, i32 %122, i32 %123)
  store i16* %call108, i16** @ref2_line, align 8
  %124 = load i32, i32* @bipred1_access_method, align 4
  %idxprom109 = sext i32 %124 to i64
  %arrayidx110 = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_crline, i32 0, i64 %idxprom109
  %125 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx110, align 8
  %126 = load i32, i32* %k, align 4
  %idxprom111 = sext i32 %126 to i64
  %arrayidx112 = getelementptr inbounds [2 x i16****], [2 x i16****]* getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 1), i32 0, i64 %idxprom111
  %127 = load i16****, i16***** %arrayidx112, align 8
  %128 = load i32, i32* %cand_y1.addr, align 4
  %129 = load i32, i32* %cand_x1.addr, align 4
  %call113 = call i16* %125(i16**** %127, i32 %128, i32 %129)
  store i16* %call113, i16** @ref1_line, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.186, %for.body.101
  %130 = load i32, i32* %y, align 4
  %131 = load i32, i32* %blocksize_y_c, align 4
  %cmp115 = icmp slt i32 %130, %131
  br i1 %cmp115, label %for.body.117, label %for.end.188

for.body.117:                                     ; preds = %for.cond.114
  store i32 0, i32* %x4, align 4
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.175, %for.body.117
  %132 = load i32, i32* %x4, align 4
  %133 = load i32, i32* %blocksize_x_c2, align 4
  %cmp119 = icmp slt i32 %132, %133
  br i1 %cmp119, label %for.body.121, label %for.end.177

for.body.121:                                     ; preds = %for.cond.118
  %134 = load i32, i32* %k, align 4
  %idxprom122 = sext i32 %134 to i64
  %arrayidx123 = getelementptr inbounds [2 x i16], [2 x i16]* @weight1_cr, i32 0, i64 %idxprom122
  %135 = load i16, i16* %arrayidx123, align 2
  %conv124 = sext i16 %135 to i32
  %136 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr125 = getelementptr inbounds i16, i16* %136, i32 1
  store i16* %incdec.ptr125, i16** @ref1_line, align 8
  %137 = load i16, i16* %136, align 2
  %conv126 = zext i16 %137 to i32
  %mul127 = mul nsw i32 %conv124, %conv126
  store i32 %mul127, i32* %pixel1, align 4
  %138 = load i32, i32* %k, align 4
  %idxprom128 = sext i32 %138 to i64
  %arrayidx129 = getelementptr inbounds [2 x i16], [2 x i16]* @weight2_cr, i32 0, i64 %idxprom128
  %139 = load i16, i16* %arrayidx129, align 2
  %conv130 = sext i16 %139 to i32
  %140 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr131 = getelementptr inbounds i16, i16* %140, i32 1
  store i16* %incdec.ptr131, i16** @ref2_line, align 8
  %141 = load i16, i16* %140, align 2
  %conv132 = zext i16 %141 to i32
  %mul133 = mul nsw i32 %conv130, %conv132
  store i32 %mul133, i32* %pixel2, align 4
  %142 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %142, i32 0, i32 157
  %143 = load i32, i32* %max_imgpel_value_uv, align 4
  %144 = load i32, i32* %pixel1, align 4
  %145 = load i32, i32* %pixel2, align 4
  %add134 = add nsw i32 %144, %145
  %146 = load i32, i32* %lround, align 4
  %add135 = add nsw i32 %add134, %146
  %147 = load i32, i32* %denom, align 4
  %shr136 = ashr i32 %add135, %147
  %148 = load i32, i32* %k, align 4
  %idxprom137 = sext i32 %148 to i64
  %arrayidx138 = getelementptr inbounds [2 x i16], [2 x i16]* @offsetBi_cr, i32 0, i64 %idxprom137
  %149 = load i16, i16* %arrayidx138, align 2
  %conv139 = sext i16 %149 to i32
  %add140 = add nsw i32 %shr136, %conv139
  %call141 = call i32 @iClip1(i32 %143, i32 %add140)
  store i32 %call141, i32* %weighted_pel, align 4
  %150 = load i16*, i16** @src_line, align 8
  %incdec.ptr142 = getelementptr inbounds i16, i16* %150, i32 1
  store i16* %incdec.ptr142, i16** @src_line, align 8
  %151 = load i16, i16* %150, align 2
  %conv143 = zext i16 %151 to i32
  %152 = load i32, i32* %weighted_pel, align 4
  %sub144 = sub nsw i32 %conv143, %152
  store i32 %sub144, i32* %bi_diff, align 4
  %153 = load i32, i32* %bi_diff, align 4
  %idxprom145 = sext i32 %153 to i64
  %154 = load i32*, i32** @byte_abs, align 8
  %arrayidx146 = getelementptr inbounds i32, i32* %154, i64 %idxprom145
  %155 = load i32, i32* %arrayidx146, align 4
  %156 = load i32, i32* %mcost, align 4
  %add147 = add i32 %156, %155
  store i32 %add147, i32* %mcost, align 4
  %157 = load i32, i32* %k, align 4
  %idxprom148 = sext i32 %157 to i64
  %arrayidx149 = getelementptr inbounds [2 x i16], [2 x i16]* @weight1_cr, i32 0, i64 %idxprom148
  %158 = load i16, i16* %arrayidx149, align 2
  %conv150 = sext i16 %158 to i32
  %159 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr151 = getelementptr inbounds i16, i16* %159, i32 1
  store i16* %incdec.ptr151, i16** @ref1_line, align 8
  %160 = load i16, i16* %159, align 2
  %conv152 = zext i16 %160 to i32
  %mul153 = mul nsw i32 %conv150, %conv152
  store i32 %mul153, i32* %pixel1, align 4
  %161 = load i32, i32* %k, align 4
  %idxprom154 = sext i32 %161 to i64
  %arrayidx155 = getelementptr inbounds [2 x i16], [2 x i16]* @weight2_cr, i32 0, i64 %idxprom154
  %162 = load i16, i16* %arrayidx155, align 2
  %conv156 = sext i16 %162 to i32
  %163 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr157 = getelementptr inbounds i16, i16* %163, i32 1
  store i16* %incdec.ptr157, i16** @ref2_line, align 8
  %164 = load i16, i16* %163, align 2
  %conv158 = zext i16 %164 to i32
  %mul159 = mul nsw i32 %conv156, %conv158
  store i32 %mul159, i32* %pixel2, align 4
  %165 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv160 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %165, i32 0, i32 157
  %166 = load i32, i32* %max_imgpel_value_uv160, align 4
  %167 = load i32, i32* %pixel1, align 4
  %168 = load i32, i32* %pixel2, align 4
  %add161 = add nsw i32 %167, %168
  %169 = load i32, i32* %lround, align 4
  %add162 = add nsw i32 %add161, %169
  %170 = load i32, i32* %denom, align 4
  %shr163 = ashr i32 %add162, %170
  %171 = load i32, i32* %k, align 4
  %idxprom164 = sext i32 %171 to i64
  %arrayidx165 = getelementptr inbounds [2 x i16], [2 x i16]* @offsetBi_cr, i32 0, i64 %idxprom164
  %172 = load i16, i16* %arrayidx165, align 2
  %conv166 = sext i16 %172 to i32
  %add167 = add nsw i32 %shr163, %conv166
  %call168 = call i32 @iClip1(i32 %166, i32 %add167)
  store i32 %call168, i32* %weighted_pel, align 4
  %173 = load i16*, i16** @src_line, align 8
  %incdec.ptr169 = getelementptr inbounds i16, i16* %173, i32 1
  store i16* %incdec.ptr169, i16** @src_line, align 8
  %174 = load i16, i16* %173, align 2
  %conv170 = zext i16 %174 to i32
  %175 = load i32, i32* %weighted_pel, align 4
  %sub171 = sub nsw i32 %conv170, %175
  store i32 %sub171, i32* %bi_diff, align 4
  %176 = load i32, i32* %bi_diff, align 4
  %idxprom172 = sext i32 %176 to i64
  %177 = load i32*, i32** @byte_abs, align 8
  %arrayidx173 = getelementptr inbounds i32, i32* %177, i64 %idxprom172
  %178 = load i32, i32* %arrayidx173, align 4
  %179 = load i32, i32* %mcost, align 4
  %add174 = add i32 %179, %178
  store i32 %add174, i32* %mcost, align 4
  br label %for.inc.175

for.inc.175:                                      ; preds = %for.body.121
  %180 = load i32, i32* %x4, align 4
  %inc176 = add nsw i32 %180, 1
  store i32 %inc176, i32* %x4, align 4
  br label %for.cond.118

for.end.177:                                      ; preds = %for.cond.118
  %181 = load i32, i32* %mcost, align 4
  %182 = load i32, i32* %min_mcost.addr, align 4
  %cmp178 = icmp sge i32 %181, %182
  br i1 %cmp178, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %for.end.177
  %183 = load i32, i32* %mcost, align 4
  store i32 %183, i32* %retval
  br label %return

if.end.181:                                       ; preds = %for.end.177
  %184 = load i32, i32* %cr_pad_size_x, align 4
  %185 = load i16*, i16** @ref2_line, align 8
  %idx.ext182 = sext i32 %184 to i64
  %add.ptr183 = getelementptr inbounds i16, i16* %185, i64 %idx.ext182
  store i16* %add.ptr183, i16** @ref2_line, align 8
  %186 = load i32, i32* %cr_pad_size_x, align 4
  %187 = load i16*, i16** @ref1_line, align 8
  %idx.ext184 = sext i32 %186 to i64
  %add.ptr185 = getelementptr inbounds i16, i16* %187, i64 %idx.ext184
  store i16* %add.ptr185, i16** @ref1_line, align 8
  br label %for.inc.186

for.inc.186:                                      ; preds = %if.end.181
  %188 = load i32, i32* %y, align 4
  %inc187 = add nsw i32 %188, 1
  store i32 %inc187, i32* %y, align 4
  br label %for.cond.114

for.end.188:                                      ; preds = %for.cond.114
  br label %for.inc.189

for.inc.189:                                      ; preds = %for.end.188
  %189 = load i32, i32* %k, align 4
  %inc190 = add nsw i32 %189, 1
  store i32 %inc190, i32* %k, align 4
  br label %for.cond.98

for.end.191:                                      ; preds = %for.cond.98
  br label %if.end.192

if.end.192:                                       ; preds = %for.end.191, %for.end.93
  %190 = load i32, i32* %mcost, align 4
  store i32 %190, i32* %retval
  br label %return

return:                                           ; preds = %if.end.192, %if.then.180, %if.then
  %191 = load i32, i32* %retval
  ret i32 %191
}

; Function Attrs: nounwind uwtable
define i32 @computeSATD(i16* %src_pic, i32 %blocksize_y, i32 %blocksize_x, i32 %min_mcost, i32 %cand_x, i32 %cand_y) #0 {
entry:
  %retval = alloca i32, align 4
  %src_pic.addr = alloca i16*, align 8
  %blocksize_y.addr = alloca i32, align 4
  %blocksize_x.addr = alloca i32, align 4
  %min_mcost.addr = alloca i32, align 4
  %cand_x.addr = alloca i32, align 4
  %cand_y.addr = alloca i32, align 4
  %mcost = alloca i32, align 4
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  %y4 = alloca i32, align 4
  %d = alloca i32*, align 8
  %pad_size_x = alloca i32, align 4
  %src_size_x = alloca i32, align 4
  %src_size_mul = alloca i32, align 4
  %src_tmp = alloca i16*, align 8
  store i16* %src_pic, i16** %src_pic.addr, align 8
  store i32 %blocksize_y, i32* %blocksize_y.addr, align 4
  store i32 %blocksize_x, i32* %blocksize_x.addr, align 4
  store i32 %min_mcost, i32* %min_mcost.addr, align 4
  store i32 %cand_x, i32* %cand_x.addr, align 4
  store i32 %cand_y, i32* %cand_y.addr, align 4
  store i32 0, i32* %mcost, align 4
  %0 = load i16*, i16** %src_pic.addr, align 8
  store i16* %0, i16** %src_tmp, align 8
  %1 = load i32, i32* @test8x8transform, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @img_padded_size_x, align 4
  %sub = sub nsw i32 %2, 4
  store i32 %sub, i32* %pad_size_x, align 4
  %3 = load i32, i32* %blocksize_x.addr, align 4
  %sub1 = sub nsw i32 %3, 4
  store i32 %sub1, i32* %src_size_x, align 4
  %4 = load i32, i32* %blocksize_x.addr, align 4
  %mul = mul nsw i32 %4, 4
  store i32 %mul, i32* %src_size_mul, align 4
  %5 = load i32, i32* %cand_y.addr, align 4
  store i32 %5, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.46, %if.then
  %6 = load i32, i32* %y, align 4
  %7 = load i32, i32* %cand_y.addr, align 4
  %8 = load i32, i32* %blocksize_y.addr, align 4
  %shl = shl i32 %8, 2
  %add = add nsw i32 %7, %shl
  %cmp = icmp slt i32 %6, %add
  br i1 %cmp, label %for.body, label %for.end.48

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.41, %for.body
  %9 = load i32, i32* %x, align 4
  %10 = load i32, i32* %blocksize_x.addr, align 4
  %cmp3 = icmp slt i32 %9, %10
  br i1 %cmp3, label %for.body.4, label %for.end.43

for.body.4:                                       ; preds = %for.cond.2
  store i32* getelementptr inbounds ([256 x i32], [256 x i32]* @diff, i32 0, i32 0), i32** %d, align 8
  %11 = load i32, i32* @ref_access_method, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_line, i32 0, i64 %idxprom
  %12 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx, align 8
  %13 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 0), align 8
  %14 = load i32, i32* %y, align 4
  %15 = load i32, i32* %cand_x.addr, align 4
  %16 = load i32, i32* %x, align 4
  %shl5 = shl i32 %16, 2
  %add6 = add nsw i32 %15, %shl5
  %call = call i16* %12(i16**** %13, i32 %14, i32 %add6)
  store i16* %call, i16** @ref_line, align 8
  %17 = load i16*, i16** %src_tmp, align 8
  %18 = load i32, i32* %x, align 4
  %idx.ext = sext i32 %18 to i64
  %add.ptr = getelementptr inbounds i16, i16* %17, i64 %idx.ext
  store i16* %add.ptr, i16** @src_line, align 8
  store i32 0, i32* %y4, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body.4
  %19 = load i32, i32* %y4, align 4
  %cmp8 = icmp slt i32 %19, 4
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %20 = load i16*, i16** @src_line, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %20, i32 1
  store i16* %incdec.ptr, i16** @src_line, align 8
  %21 = load i16, i16* %20, align 2
  %conv = zext i16 %21 to i32
  %22 = load i16*, i16** @ref_line, align 8
  %incdec.ptr10 = getelementptr inbounds i16, i16* %22, i32 1
  store i16* %incdec.ptr10, i16** @ref_line, align 8
  %23 = load i16, i16* %22, align 2
  %conv11 = zext i16 %23 to i32
  %sub12 = sub nsw i32 %conv, %conv11
  %24 = load i32*, i32** %d, align 8
  %incdec.ptr13 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %incdec.ptr13, i32** %d, align 8
  store i32 %sub12, i32* %24, align 4
  %25 = load i16*, i16** @src_line, align 8
  %incdec.ptr14 = getelementptr inbounds i16, i16* %25, i32 1
  store i16* %incdec.ptr14, i16** @src_line, align 8
  %26 = load i16, i16* %25, align 2
  %conv15 = zext i16 %26 to i32
  %27 = load i16*, i16** @ref_line, align 8
  %incdec.ptr16 = getelementptr inbounds i16, i16* %27, i32 1
  store i16* %incdec.ptr16, i16** @ref_line, align 8
  %28 = load i16, i16* %27, align 2
  %conv17 = zext i16 %28 to i32
  %sub18 = sub nsw i32 %conv15, %conv17
  %29 = load i32*, i32** %d, align 8
  %incdec.ptr19 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %incdec.ptr19, i32** %d, align 8
  store i32 %sub18, i32* %29, align 4
  %30 = load i16*, i16** @src_line, align 8
  %incdec.ptr20 = getelementptr inbounds i16, i16* %30, i32 1
  store i16* %incdec.ptr20, i16** @src_line, align 8
  %31 = load i16, i16* %30, align 2
  %conv21 = zext i16 %31 to i32
  %32 = load i16*, i16** @ref_line, align 8
  %incdec.ptr22 = getelementptr inbounds i16, i16* %32, i32 1
  store i16* %incdec.ptr22, i16** @ref_line, align 8
  %33 = load i16, i16* %32, align 2
  %conv23 = zext i16 %33 to i32
  %sub24 = sub nsw i32 %conv21, %conv23
  %34 = load i32*, i32** %d, align 8
  %incdec.ptr25 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %incdec.ptr25, i32** %d, align 8
  store i32 %sub24, i32* %34, align 4
  %35 = load i16*, i16** @src_line, align 8
  %incdec.ptr26 = getelementptr inbounds i16, i16* %35, i32 1
  store i16* %incdec.ptr26, i16** @src_line, align 8
  %36 = load i16, i16* %35, align 2
  %conv27 = zext i16 %36 to i32
  %37 = load i16*, i16** @ref_line, align 8
  %incdec.ptr28 = getelementptr inbounds i16, i16* %37, i32 1
  store i16* %incdec.ptr28, i16** @ref_line, align 8
  %38 = load i16, i16* %37, align 2
  %conv29 = zext i16 %38 to i32
  %sub30 = sub nsw i32 %conv27, %conv29
  %39 = load i32*, i32** %d, align 8
  %incdec.ptr31 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %incdec.ptr31, i32** %d, align 8
  store i32 %sub30, i32* %39, align 4
  %40 = load i32, i32* %pad_size_x, align 4
  %41 = load i16*, i16** @ref_line, align 8
  %idx.ext32 = sext i32 %40 to i64
  %add.ptr33 = getelementptr inbounds i16, i16* %41, i64 %idx.ext32
  store i16* %add.ptr33, i16** @ref_line, align 8
  %42 = load i32, i32* %src_size_x, align 4
  %43 = load i16*, i16** @src_line, align 8
  %idx.ext34 = sext i32 %42 to i64
  %add.ptr35 = getelementptr inbounds i16, i16* %43, i64 %idx.ext34
  store i16* %add.ptr35, i16** @src_line, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %44 = load i32, i32* %y4, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %y4, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  %call36 = call i32 @HadamardSAD4x4(i32* getelementptr inbounds ([256 x i32], [256 x i32]* @diff, i32 0, i32 0))
  %45 = load i32, i32* %mcost, align 4
  %add37 = add nsw i32 %45, %call36
  store i32 %add37, i32* %mcost, align 4
  %46 = load i32, i32* %min_mcost.addr, align 4
  %cmp38 = icmp sgt i32 %add37, %46
  br i1 %cmp38, label %if.then.40, label %if.end

if.then.40:                                       ; preds = %for.end
  %47 = load i32, i32* %mcost, align 4
  store i32 %47, i32* %retval
  br label %return

if.end:                                           ; preds = %for.end
  br label %for.inc.41

for.inc.41:                                       ; preds = %if.end
  %48 = load i32, i32* %x, align 4
  %add42 = add nsw i32 %48, 4
  store i32 %add42, i32* %x, align 4
  br label %for.cond.2

for.end.43:                                       ; preds = %for.cond.2
  %49 = load i32, i32* %src_size_mul, align 4
  %50 = load i16*, i16** %src_tmp, align 8
  %idx.ext44 = sext i32 %49 to i64
  %add.ptr45 = getelementptr inbounds i16, i16* %50, i64 %idx.ext44
  store i16* %add.ptr45, i16** %src_tmp, align 8
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.end.43
  %51 = load i32, i32* %y, align 4
  %add47 = add nsw i32 %51, 16
  store i32 %add47, i32* %y, align 4
  br label %for.cond

for.end.48:                                       ; preds = %for.cond
  br label %if.end.142

if.else:                                          ; preds = %entry
  %52 = load i32, i32* @img_padded_size_x, align 4
  %sub49 = sub nsw i32 %52, 8
  store i32 %sub49, i32* %pad_size_x, align 4
  %53 = load i32, i32* %blocksize_x.addr, align 4
  %sub50 = sub nsw i32 %53, 8
  store i32 %sub50, i32* %src_size_x, align 4
  %54 = load i32, i32* %blocksize_x.addr, align 4
  %mul51 = mul nsw i32 %54, 8
  store i32 %mul51, i32* %src_size_mul, align 4
  %55 = load i32, i32* %cand_y.addr, align 4
  store i32 %55, i32* %y, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.139, %if.else
  %56 = load i32, i32* %y, align 4
  %57 = load i32, i32* %cand_y.addr, align 4
  %58 = load i32, i32* %blocksize_y.addr, align 4
  %shl53 = shl i32 %58, 2
  %add54 = add nsw i32 %57, %shl53
  %cmp55 = icmp slt i32 %56, %add54
  br i1 %cmp55, label %for.body.57, label %for.end.141

for.body.57:                                      ; preds = %for.cond.52
  store i32 0, i32* %x, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.134, %for.body.57
  %59 = load i32, i32* %x, align 4
  %60 = load i32, i32* %blocksize_x.addr, align 4
  %cmp59 = icmp slt i32 %59, %60
  br i1 %cmp59, label %for.body.61, label %for.end.136

for.body.61:                                      ; preds = %for.cond.58
  store i32* getelementptr inbounds ([256 x i32], [256 x i32]* @diff, i32 0, i32 0), i32** %d, align 8
  %61 = load i32, i32* @ref_access_method, align 4
  %idxprom62 = sext i32 %61 to i64
  %arrayidx63 = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_line, i32 0, i64 %idxprom62
  %62 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx63, align 8
  %63 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 0), align 8
  %64 = load i32, i32* %y, align 4
  %65 = load i32, i32* %cand_x.addr, align 4
  %66 = load i32, i32* %x, align 4
  %shl64 = shl i32 %66, 2
  %add65 = add nsw i32 %65, %shl64
  %call66 = call i16* %62(i16**** %63, i32 %64, i32 %add65)
  store i16* %call66, i16** @ref_line, align 8
  %67 = load i16*, i16** %src_tmp, align 8
  %68 = load i32, i32* %x, align 4
  %idx.ext67 = sext i32 %68 to i64
  %add.ptr68 = getelementptr inbounds i16, i16* %67, i64 %idx.ext67
  store i16* %add.ptr68, i16** @src_line, align 8
  store i32 0, i32* %y4, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.125, %for.body.61
  %69 = load i32, i32* %y4, align 4
  %cmp70 = icmp slt i32 %69, 8
  br i1 %cmp70, label %for.body.72, label %for.end.127

for.body.72:                                      ; preds = %for.cond.69
  %70 = load i16*, i16** @src_line, align 8
  %incdec.ptr73 = getelementptr inbounds i16, i16* %70, i32 1
  store i16* %incdec.ptr73, i16** @src_line, align 8
  %71 = load i16, i16* %70, align 2
  %conv74 = zext i16 %71 to i32
  %72 = load i16*, i16** @ref_line, align 8
  %incdec.ptr75 = getelementptr inbounds i16, i16* %72, i32 1
  store i16* %incdec.ptr75, i16** @ref_line, align 8
  %73 = load i16, i16* %72, align 2
  %conv76 = zext i16 %73 to i32
  %sub77 = sub nsw i32 %conv74, %conv76
  %74 = load i32*, i32** %d, align 8
  %incdec.ptr78 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %incdec.ptr78, i32** %d, align 8
  store i32 %sub77, i32* %74, align 4
  %75 = load i16*, i16** @src_line, align 8
  %incdec.ptr79 = getelementptr inbounds i16, i16* %75, i32 1
  store i16* %incdec.ptr79, i16** @src_line, align 8
  %76 = load i16, i16* %75, align 2
  %conv80 = zext i16 %76 to i32
  %77 = load i16*, i16** @ref_line, align 8
  %incdec.ptr81 = getelementptr inbounds i16, i16* %77, i32 1
  store i16* %incdec.ptr81, i16** @ref_line, align 8
  %78 = load i16, i16* %77, align 2
  %conv82 = zext i16 %78 to i32
  %sub83 = sub nsw i32 %conv80, %conv82
  %79 = load i32*, i32** %d, align 8
  %incdec.ptr84 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %incdec.ptr84, i32** %d, align 8
  store i32 %sub83, i32* %79, align 4
  %80 = load i16*, i16** @src_line, align 8
  %incdec.ptr85 = getelementptr inbounds i16, i16* %80, i32 1
  store i16* %incdec.ptr85, i16** @src_line, align 8
  %81 = load i16, i16* %80, align 2
  %conv86 = zext i16 %81 to i32
  %82 = load i16*, i16** @ref_line, align 8
  %incdec.ptr87 = getelementptr inbounds i16, i16* %82, i32 1
  store i16* %incdec.ptr87, i16** @ref_line, align 8
  %83 = load i16, i16* %82, align 2
  %conv88 = zext i16 %83 to i32
  %sub89 = sub nsw i32 %conv86, %conv88
  %84 = load i32*, i32** %d, align 8
  %incdec.ptr90 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %incdec.ptr90, i32** %d, align 8
  store i32 %sub89, i32* %84, align 4
  %85 = load i16*, i16** @src_line, align 8
  %incdec.ptr91 = getelementptr inbounds i16, i16* %85, i32 1
  store i16* %incdec.ptr91, i16** @src_line, align 8
  %86 = load i16, i16* %85, align 2
  %conv92 = zext i16 %86 to i32
  %87 = load i16*, i16** @ref_line, align 8
  %incdec.ptr93 = getelementptr inbounds i16, i16* %87, i32 1
  store i16* %incdec.ptr93, i16** @ref_line, align 8
  %88 = load i16, i16* %87, align 2
  %conv94 = zext i16 %88 to i32
  %sub95 = sub nsw i32 %conv92, %conv94
  %89 = load i32*, i32** %d, align 8
  %incdec.ptr96 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %incdec.ptr96, i32** %d, align 8
  store i32 %sub95, i32* %89, align 4
  %90 = load i16*, i16** @src_line, align 8
  %incdec.ptr97 = getelementptr inbounds i16, i16* %90, i32 1
  store i16* %incdec.ptr97, i16** @src_line, align 8
  %91 = load i16, i16* %90, align 2
  %conv98 = zext i16 %91 to i32
  %92 = load i16*, i16** @ref_line, align 8
  %incdec.ptr99 = getelementptr inbounds i16, i16* %92, i32 1
  store i16* %incdec.ptr99, i16** @ref_line, align 8
  %93 = load i16, i16* %92, align 2
  %conv100 = zext i16 %93 to i32
  %sub101 = sub nsw i32 %conv98, %conv100
  %94 = load i32*, i32** %d, align 8
  %incdec.ptr102 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %incdec.ptr102, i32** %d, align 8
  store i32 %sub101, i32* %94, align 4
  %95 = load i16*, i16** @src_line, align 8
  %incdec.ptr103 = getelementptr inbounds i16, i16* %95, i32 1
  store i16* %incdec.ptr103, i16** @src_line, align 8
  %96 = load i16, i16* %95, align 2
  %conv104 = zext i16 %96 to i32
  %97 = load i16*, i16** @ref_line, align 8
  %incdec.ptr105 = getelementptr inbounds i16, i16* %97, i32 1
  store i16* %incdec.ptr105, i16** @ref_line, align 8
  %98 = load i16, i16* %97, align 2
  %conv106 = zext i16 %98 to i32
  %sub107 = sub nsw i32 %conv104, %conv106
  %99 = load i32*, i32** %d, align 8
  %incdec.ptr108 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %incdec.ptr108, i32** %d, align 8
  store i32 %sub107, i32* %99, align 4
  %100 = load i16*, i16** @src_line, align 8
  %incdec.ptr109 = getelementptr inbounds i16, i16* %100, i32 1
  store i16* %incdec.ptr109, i16** @src_line, align 8
  %101 = load i16, i16* %100, align 2
  %conv110 = zext i16 %101 to i32
  %102 = load i16*, i16** @ref_line, align 8
  %incdec.ptr111 = getelementptr inbounds i16, i16* %102, i32 1
  store i16* %incdec.ptr111, i16** @ref_line, align 8
  %103 = load i16, i16* %102, align 2
  %conv112 = zext i16 %103 to i32
  %sub113 = sub nsw i32 %conv110, %conv112
  %104 = load i32*, i32** %d, align 8
  %incdec.ptr114 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %incdec.ptr114, i32** %d, align 8
  store i32 %sub113, i32* %104, align 4
  %105 = load i16*, i16** @src_line, align 8
  %incdec.ptr115 = getelementptr inbounds i16, i16* %105, i32 1
  store i16* %incdec.ptr115, i16** @src_line, align 8
  %106 = load i16, i16* %105, align 2
  %conv116 = zext i16 %106 to i32
  %107 = load i16*, i16** @ref_line, align 8
  %incdec.ptr117 = getelementptr inbounds i16, i16* %107, i32 1
  store i16* %incdec.ptr117, i16** @ref_line, align 8
  %108 = load i16, i16* %107, align 2
  %conv118 = zext i16 %108 to i32
  %sub119 = sub nsw i32 %conv116, %conv118
  %109 = load i32*, i32** %d, align 8
  %incdec.ptr120 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %incdec.ptr120, i32** %d, align 8
  store i32 %sub119, i32* %109, align 4
  %110 = load i32, i32* %pad_size_x, align 4
  %111 = load i16*, i16** @ref_line, align 8
  %idx.ext121 = sext i32 %110 to i64
  %add.ptr122 = getelementptr inbounds i16, i16* %111, i64 %idx.ext121
  store i16* %add.ptr122, i16** @ref_line, align 8
  %112 = load i32, i32* %src_size_x, align 4
  %113 = load i16*, i16** @src_line, align 8
  %idx.ext123 = sext i32 %112 to i64
  %add.ptr124 = getelementptr inbounds i16, i16* %113, i64 %idx.ext123
  store i16* %add.ptr124, i16** @src_line, align 8
  br label %for.inc.125

for.inc.125:                                      ; preds = %for.body.72
  %114 = load i32, i32* %y4, align 4
  %inc126 = add nsw i32 %114, 1
  store i32 %inc126, i32* %y4, align 4
  br label %for.cond.69

for.end.127:                                      ; preds = %for.cond.69
  %call128 = call i32 @HadamardSAD8x8(i32* getelementptr inbounds ([256 x i32], [256 x i32]* @diff, i32 0, i32 0))
  %115 = load i32, i32* %mcost, align 4
  %add129 = add nsw i32 %115, %call128
  store i32 %add129, i32* %mcost, align 4
  %116 = load i32, i32* %min_mcost.addr, align 4
  %cmp130 = icmp sgt i32 %add129, %116
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %for.end.127
  %117 = load i32, i32* %mcost, align 4
  store i32 %117, i32* %retval
  br label %return

if.end.133:                                       ; preds = %for.end.127
  br label %for.inc.134

for.inc.134:                                      ; preds = %if.end.133
  %118 = load i32, i32* %x, align 4
  %add135 = add nsw i32 %118, 8
  store i32 %add135, i32* %x, align 4
  br label %for.cond.58

for.end.136:                                      ; preds = %for.cond.58
  %119 = load i32, i32* %src_size_mul, align 4
  %120 = load i16*, i16** %src_tmp, align 8
  %idx.ext137 = sext i32 %119 to i64
  %add.ptr138 = getelementptr inbounds i16, i16* %120, i64 %idx.ext137
  store i16* %add.ptr138, i16** %src_tmp, align 8
  br label %for.inc.139

for.inc.139:                                      ; preds = %for.end.136
  %121 = load i32, i32* %y, align 4
  %add140 = add nsw i32 %121, 32
  store i32 %add140, i32* %y, align 4
  br label %for.cond.52

for.end.141:                                      ; preds = %for.cond.52
  br label %if.end.142

if.end.142:                                       ; preds = %for.end.141, %for.end.48
  %122 = load i32, i32* %mcost, align 4
  store i32 %122, i32* %retval
  br label %return

return:                                           ; preds = %if.end.142, %if.then.132, %if.then.40
  %123 = load i32, i32* %retval
  ret i32 %123
}

; Function Attrs: nounwind uwtable
define i32 @computeSATDWP(i16* %src_pic, i32 %blocksize_y, i32 %blocksize_x, i32 %min_mcost, i32 %cand_x, i32 %cand_y) #0 {
entry:
  %retval = alloca i32, align 4
  %src_pic.addr = alloca i16*, align 8
  %blocksize_y.addr = alloca i32, align 4
  %blocksize_x.addr = alloca i32, align 4
  %min_mcost.addr = alloca i32, align 4
  %cand_x.addr = alloca i32, align 4
  %cand_y.addr = alloca i32, align 4
  %mcost = alloca i32, align 4
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  %y4 = alloca i32, align 4
  %d = alloca i32*, align 8
  %weighted_pel = alloca i32, align 4
  %pad_size_x = alloca i32, align 4
  %src_size_x = alloca i32, align 4
  %src_size_mul = alloca i32, align 4
  %src_tmp = alloca i16*, align 8
  store i16* %src_pic, i16** %src_pic.addr, align 8
  store i32 %blocksize_y, i32* %blocksize_y.addr, align 4
  store i32 %blocksize_x, i32* %blocksize_x.addr, align 4
  store i32 %min_mcost, i32* %min_mcost.addr, align 4
  store i32 %cand_x, i32* %cand_x.addr, align 4
  store i32 %cand_y, i32* %cand_y.addr, align 4
  store i32 0, i32* %mcost, align 4
  %0 = load i16*, i16** %src_pic.addr, align 8
  store i16* %0, i16** %src_tmp, align 8
  %1 = load i32, i32* @test8x8transform, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @img_padded_size_x, align 4
  %sub = sub nsw i32 %2, 4
  store i32 %sub, i32* %pad_size_x, align 4
  %3 = load i32, i32* %blocksize_x.addr, align 4
  %sub1 = sub nsw i32 %3, 4
  store i32 %sub1, i32* %src_size_x, align 4
  %4 = load i32, i32* %blocksize_x.addr, align 4
  %mul = mul nsw i32 %4, 4
  store i32 %mul, i32* %src_size_mul, align 4
  %5 = load i32, i32* %cand_y.addr, align 4
  store i32 %5, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.68, %if.then
  %6 = load i32, i32* %y, align 4
  %7 = load i32, i32* %cand_y.addr, align 4
  %8 = load i32, i32* %blocksize_y.addr, align 4
  %shl = shl i32 %8, 2
  %add = add nsw i32 %7, %shl
  %cmp = icmp slt i32 %6, %add
  br i1 %cmp, label %for.body, label %for.end.70

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.63, %for.body
  %9 = load i32, i32* %x, align 4
  %10 = load i32, i32* %blocksize_x.addr, align 4
  %cmp3 = icmp slt i32 %9, %10
  br i1 %cmp3, label %for.body.4, label %for.end.65

for.body.4:                                       ; preds = %for.cond.2
  store i32* getelementptr inbounds ([256 x i32], [256 x i32]* @diff, i32 0, i32 0), i32** %d, align 8
  %11 = load i32, i32* @ref_access_method, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_line, i32 0, i64 %idxprom
  %12 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx, align 8
  %13 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 0), align 8
  %14 = load i32, i32* %y, align 4
  %15 = load i32, i32* %cand_x.addr, align 4
  %16 = load i32, i32* %x, align 4
  %shl5 = shl i32 %16, 2
  %add6 = add nsw i32 %15, %shl5
  %call = call i16* %12(i16**** %13, i32 %14, i32 %add6)
  store i16* %call, i16** @ref_line, align 8
  %17 = load i16*, i16** %src_tmp, align 8
  %18 = load i32, i32* %x, align 4
  %idx.ext = sext i32 %18 to i64
  %add.ptr = getelementptr inbounds i16, i16* %17, i64 %idx.ext
  store i16* %add.ptr, i16** @src_line, align 8
  store i32 0, i32* %y4, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body.4
  %19 = load i32, i32* %y4, align 4
  %cmp8 = icmp slt i32 %19, 4
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 156
  %21 = load i32, i32* %max_imgpel_value, align 4
  %22 = load i32, i32* @weight_luma, align 4
  %23 = load i16*, i16** @ref_line, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %23, i32 1
  store i16* %incdec.ptr, i16** @ref_line, align 8
  %24 = load i16, i16* %23, align 2
  %conv = zext i16 %24 to i32
  %mul10 = mul nsw i32 %22, %conv
  %25 = load i32, i32* @wp_luma_round, align 4
  %add11 = add nsw i32 %mul10, %25
  %26 = load i32, i32* @luma_log_weight_denom, align 4
  %shr = ashr i32 %add11, %26
  %27 = load i32, i32* @offset_luma, align 4
  %add12 = add nsw i32 %shr, %27
  %call13 = call i32 @iClip1(i32 %21, i32 %add12)
  store i32 %call13, i32* %weighted_pel, align 4
  %28 = load i16*, i16** @src_line, align 8
  %incdec.ptr14 = getelementptr inbounds i16, i16* %28, i32 1
  store i16* %incdec.ptr14, i16** @src_line, align 8
  %29 = load i16, i16* %28, align 2
  %conv15 = zext i16 %29 to i32
  %30 = load i32, i32* %weighted_pel, align 4
  %sub16 = sub nsw i32 %conv15, %30
  %31 = load i32*, i32** %d, align 8
  %incdec.ptr17 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %incdec.ptr17, i32** %d, align 8
  store i32 %sub16, i32* %31, align 4
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value18 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 156
  %33 = load i32, i32* %max_imgpel_value18, align 4
  %34 = load i32, i32* @weight_luma, align 4
  %35 = load i16*, i16** @ref_line, align 8
  %incdec.ptr19 = getelementptr inbounds i16, i16* %35, i32 1
  store i16* %incdec.ptr19, i16** @ref_line, align 8
  %36 = load i16, i16* %35, align 2
  %conv20 = zext i16 %36 to i32
  %mul21 = mul nsw i32 %34, %conv20
  %37 = load i32, i32* @wp_luma_round, align 4
  %add22 = add nsw i32 %mul21, %37
  %38 = load i32, i32* @luma_log_weight_denom, align 4
  %shr23 = ashr i32 %add22, %38
  %39 = load i32, i32* @offset_luma, align 4
  %add24 = add nsw i32 %shr23, %39
  %call25 = call i32 @iClip1(i32 %33, i32 %add24)
  store i32 %call25, i32* %weighted_pel, align 4
  %40 = load i16*, i16** @src_line, align 8
  %incdec.ptr26 = getelementptr inbounds i16, i16* %40, i32 1
  store i16* %incdec.ptr26, i16** @src_line, align 8
  %41 = load i16, i16* %40, align 2
  %conv27 = zext i16 %41 to i32
  %42 = load i32, i32* %weighted_pel, align 4
  %sub28 = sub nsw i32 %conv27, %42
  %43 = load i32*, i32** %d, align 8
  %incdec.ptr29 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %incdec.ptr29, i32** %d, align 8
  store i32 %sub28, i32* %43, align 4
  %44 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value30 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %44, i32 0, i32 156
  %45 = load i32, i32* %max_imgpel_value30, align 4
  %46 = load i32, i32* @weight_luma, align 4
  %47 = load i16*, i16** @ref_line, align 8
  %incdec.ptr31 = getelementptr inbounds i16, i16* %47, i32 1
  store i16* %incdec.ptr31, i16** @ref_line, align 8
  %48 = load i16, i16* %47, align 2
  %conv32 = zext i16 %48 to i32
  %mul33 = mul nsw i32 %46, %conv32
  %49 = load i32, i32* @wp_luma_round, align 4
  %add34 = add nsw i32 %mul33, %49
  %50 = load i32, i32* @luma_log_weight_denom, align 4
  %shr35 = ashr i32 %add34, %50
  %51 = load i32, i32* @offset_luma, align 4
  %add36 = add nsw i32 %shr35, %51
  %call37 = call i32 @iClip1(i32 %45, i32 %add36)
  store i32 %call37, i32* %weighted_pel, align 4
  %52 = load i16*, i16** @src_line, align 8
  %incdec.ptr38 = getelementptr inbounds i16, i16* %52, i32 1
  store i16* %incdec.ptr38, i16** @src_line, align 8
  %53 = load i16, i16* %52, align 2
  %conv39 = zext i16 %53 to i32
  %54 = load i32, i32* %weighted_pel, align 4
  %sub40 = sub nsw i32 %conv39, %54
  %55 = load i32*, i32** %d, align 8
  %incdec.ptr41 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %incdec.ptr41, i32** %d, align 8
  store i32 %sub40, i32* %55, align 4
  %56 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value42 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %56, i32 0, i32 156
  %57 = load i32, i32* %max_imgpel_value42, align 4
  %58 = load i32, i32* @weight_luma, align 4
  %59 = load i16*, i16** @ref_line, align 8
  %incdec.ptr43 = getelementptr inbounds i16, i16* %59, i32 1
  store i16* %incdec.ptr43, i16** @ref_line, align 8
  %60 = load i16, i16* %59, align 2
  %conv44 = zext i16 %60 to i32
  %mul45 = mul nsw i32 %58, %conv44
  %61 = load i32, i32* @wp_luma_round, align 4
  %add46 = add nsw i32 %mul45, %61
  %62 = load i32, i32* @luma_log_weight_denom, align 4
  %shr47 = ashr i32 %add46, %62
  %63 = load i32, i32* @offset_luma, align 4
  %add48 = add nsw i32 %shr47, %63
  %call49 = call i32 @iClip1(i32 %57, i32 %add48)
  store i32 %call49, i32* %weighted_pel, align 4
  %64 = load i16*, i16** @src_line, align 8
  %incdec.ptr50 = getelementptr inbounds i16, i16* %64, i32 1
  store i16* %incdec.ptr50, i16** @src_line, align 8
  %65 = load i16, i16* %64, align 2
  %conv51 = zext i16 %65 to i32
  %66 = load i32, i32* %weighted_pel, align 4
  %sub52 = sub nsw i32 %conv51, %66
  %67 = load i32*, i32** %d, align 8
  %incdec.ptr53 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %incdec.ptr53, i32** %d, align 8
  store i32 %sub52, i32* %67, align 4
  %68 = load i32, i32* %pad_size_x, align 4
  %69 = load i16*, i16** @ref_line, align 8
  %idx.ext54 = sext i32 %68 to i64
  %add.ptr55 = getelementptr inbounds i16, i16* %69, i64 %idx.ext54
  store i16* %add.ptr55, i16** @ref_line, align 8
  %70 = load i32, i32* %src_size_x, align 4
  %71 = load i16*, i16** @src_line, align 8
  %idx.ext56 = sext i32 %70 to i64
  %add.ptr57 = getelementptr inbounds i16, i16* %71, i64 %idx.ext56
  store i16* %add.ptr57, i16** @src_line, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %72 = load i32, i32* %y4, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %y4, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  %call58 = call i32 @HadamardSAD4x4(i32* getelementptr inbounds ([256 x i32], [256 x i32]* @diff, i32 0, i32 0))
  %73 = load i32, i32* %mcost, align 4
  %add59 = add nsw i32 %73, %call58
  store i32 %add59, i32* %mcost, align 4
  %74 = load i32, i32* %min_mcost.addr, align 4
  %cmp60 = icmp sgt i32 %add59, %74
  br i1 %cmp60, label %if.then.62, label %if.end

if.then.62:                                       ; preds = %for.end
  %75 = load i32, i32* %mcost, align 4
  store i32 %75, i32* %retval
  br label %return

if.end:                                           ; preds = %for.end
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end
  %76 = load i32, i32* %x, align 4
  %add64 = add nsw i32 %76, 4
  store i32 %add64, i32* %x, align 4
  br label %for.cond.2

for.end.65:                                       ; preds = %for.cond.2
  %77 = load i32, i32* %src_size_mul, align 4
  %78 = load i16*, i16** %src_tmp, align 8
  %idx.ext66 = sext i32 %77 to i64
  %add.ptr67 = getelementptr inbounds i16, i16* %78, i64 %idx.ext66
  store i16* %add.ptr67, i16** %src_tmp, align 8
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.end.65
  %79 = load i32, i32* %y, align 4
  %add69 = add nsw i32 %79, 16
  store i32 %add69, i32* %y, align 4
  br label %for.cond

for.end.70:                                       ; preds = %for.cond
  br label %if.end.212

if.else:                                          ; preds = %entry
  %80 = load i32, i32* @img_padded_size_x, align 4
  %sub71 = sub nsw i32 %80, 8
  store i32 %sub71, i32* %pad_size_x, align 4
  %81 = load i32, i32* %blocksize_x.addr, align 4
  %sub72 = sub nsw i32 %81, 8
  store i32 %sub72, i32* %src_size_x, align 4
  %82 = load i32, i32* %blocksize_x.addr, align 4
  %mul73 = mul nsw i32 %82, 8
  store i32 %mul73, i32* %src_size_mul, align 4
  %83 = load i32, i32* %cand_y.addr, align 4
  store i32 %83, i32* %y, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.209, %if.else
  %84 = load i32, i32* %y, align 4
  %85 = load i32, i32* %cand_y.addr, align 4
  %86 = load i32, i32* %blocksize_y.addr, align 4
  %shl75 = shl i32 %86, 2
  %add76 = add nsw i32 %85, %shl75
  %cmp77 = icmp slt i32 %84, %add76
  br i1 %cmp77, label %for.body.79, label %for.end.211

for.body.79:                                      ; preds = %for.cond.74
  store i32 0, i32* %x, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.204, %for.body.79
  %87 = load i32, i32* %x, align 4
  %88 = load i32, i32* %blocksize_x.addr, align 4
  %cmp81 = icmp slt i32 %87, %88
  br i1 %cmp81, label %for.body.83, label %for.end.206

for.body.83:                                      ; preds = %for.cond.80
  store i32* getelementptr inbounds ([256 x i32], [256 x i32]* @diff, i32 0, i32 0), i32** %d, align 8
  %89 = load i32, i32* @ref_access_method, align 4
  %idxprom84 = sext i32 %89 to i64
  %arrayidx85 = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_line, i32 0, i64 %idxprom84
  %90 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx85, align 8
  %91 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 0), align 8
  %92 = load i32, i32* %y, align 4
  %93 = load i32, i32* %cand_x.addr, align 4
  %94 = load i32, i32* %x, align 4
  %shl86 = shl i32 %94, 2
  %add87 = add nsw i32 %93, %shl86
  %call88 = call i16* %90(i16**** %91, i32 %92, i32 %add87)
  store i16* %call88, i16** @ref_line, align 8
  %95 = load i16*, i16** %src_tmp, align 8
  %96 = load i32, i32* %x, align 4
  %idx.ext89 = sext i32 %96 to i64
  %add.ptr90 = getelementptr inbounds i16, i16* %95, i64 %idx.ext89
  store i16* %add.ptr90, i16** @src_line, align 8
  store i32 0, i32* %y4, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.195, %for.body.83
  %97 = load i32, i32* %y4, align 4
  %cmp92 = icmp slt i32 %97, 8
  br i1 %cmp92, label %for.body.94, label %for.end.197

for.body.94:                                      ; preds = %for.cond.91
  %98 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value95 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %98, i32 0, i32 156
  %99 = load i32, i32* %max_imgpel_value95, align 4
  %100 = load i32, i32* @weight_luma, align 4
  %101 = load i16*, i16** @ref_line, align 8
  %incdec.ptr96 = getelementptr inbounds i16, i16* %101, i32 1
  store i16* %incdec.ptr96, i16** @ref_line, align 8
  %102 = load i16, i16* %101, align 2
  %conv97 = zext i16 %102 to i32
  %mul98 = mul nsw i32 %100, %conv97
  %103 = load i32, i32* @wp_luma_round, align 4
  %add99 = add nsw i32 %mul98, %103
  %104 = load i32, i32* @luma_log_weight_denom, align 4
  %shr100 = ashr i32 %add99, %104
  %105 = load i32, i32* @offset_luma, align 4
  %add101 = add nsw i32 %shr100, %105
  %call102 = call i32 @iClip1(i32 %99, i32 %add101)
  store i32 %call102, i32* %weighted_pel, align 4
  %106 = load i16*, i16** @src_line, align 8
  %incdec.ptr103 = getelementptr inbounds i16, i16* %106, i32 1
  store i16* %incdec.ptr103, i16** @src_line, align 8
  %107 = load i16, i16* %106, align 2
  %conv104 = zext i16 %107 to i32
  %108 = load i32, i32* %weighted_pel, align 4
  %sub105 = sub nsw i32 %conv104, %108
  %109 = load i32*, i32** %d, align 8
  %incdec.ptr106 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %incdec.ptr106, i32** %d, align 8
  store i32 %sub105, i32* %109, align 4
  %110 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value107 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %110, i32 0, i32 156
  %111 = load i32, i32* %max_imgpel_value107, align 4
  %112 = load i32, i32* @weight_luma, align 4
  %113 = load i16*, i16** @ref_line, align 8
  %incdec.ptr108 = getelementptr inbounds i16, i16* %113, i32 1
  store i16* %incdec.ptr108, i16** @ref_line, align 8
  %114 = load i16, i16* %113, align 2
  %conv109 = zext i16 %114 to i32
  %mul110 = mul nsw i32 %112, %conv109
  %115 = load i32, i32* @wp_luma_round, align 4
  %add111 = add nsw i32 %mul110, %115
  %116 = load i32, i32* @luma_log_weight_denom, align 4
  %shr112 = ashr i32 %add111, %116
  %117 = load i32, i32* @offset_luma, align 4
  %add113 = add nsw i32 %shr112, %117
  %call114 = call i32 @iClip1(i32 %111, i32 %add113)
  store i32 %call114, i32* %weighted_pel, align 4
  %118 = load i16*, i16** @src_line, align 8
  %incdec.ptr115 = getelementptr inbounds i16, i16* %118, i32 1
  store i16* %incdec.ptr115, i16** @src_line, align 8
  %119 = load i16, i16* %118, align 2
  %conv116 = zext i16 %119 to i32
  %120 = load i32, i32* %weighted_pel, align 4
  %sub117 = sub nsw i32 %conv116, %120
  %121 = load i32*, i32** %d, align 8
  %incdec.ptr118 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %incdec.ptr118, i32** %d, align 8
  store i32 %sub117, i32* %121, align 4
  %122 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value119 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %122, i32 0, i32 156
  %123 = load i32, i32* %max_imgpel_value119, align 4
  %124 = load i32, i32* @weight_luma, align 4
  %125 = load i16*, i16** @ref_line, align 8
  %incdec.ptr120 = getelementptr inbounds i16, i16* %125, i32 1
  store i16* %incdec.ptr120, i16** @ref_line, align 8
  %126 = load i16, i16* %125, align 2
  %conv121 = zext i16 %126 to i32
  %mul122 = mul nsw i32 %124, %conv121
  %127 = load i32, i32* @wp_luma_round, align 4
  %add123 = add nsw i32 %mul122, %127
  %128 = load i32, i32* @luma_log_weight_denom, align 4
  %shr124 = ashr i32 %add123, %128
  %129 = load i32, i32* @offset_luma, align 4
  %add125 = add nsw i32 %shr124, %129
  %call126 = call i32 @iClip1(i32 %123, i32 %add125)
  store i32 %call126, i32* %weighted_pel, align 4
  %130 = load i16*, i16** @src_line, align 8
  %incdec.ptr127 = getelementptr inbounds i16, i16* %130, i32 1
  store i16* %incdec.ptr127, i16** @src_line, align 8
  %131 = load i16, i16* %130, align 2
  %conv128 = zext i16 %131 to i32
  %132 = load i32, i32* %weighted_pel, align 4
  %sub129 = sub nsw i32 %conv128, %132
  %133 = load i32*, i32** %d, align 8
  %incdec.ptr130 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %incdec.ptr130, i32** %d, align 8
  store i32 %sub129, i32* %133, align 4
  %134 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value131 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %134, i32 0, i32 156
  %135 = load i32, i32* %max_imgpel_value131, align 4
  %136 = load i32, i32* @weight_luma, align 4
  %137 = load i16*, i16** @ref_line, align 8
  %incdec.ptr132 = getelementptr inbounds i16, i16* %137, i32 1
  store i16* %incdec.ptr132, i16** @ref_line, align 8
  %138 = load i16, i16* %137, align 2
  %conv133 = zext i16 %138 to i32
  %mul134 = mul nsw i32 %136, %conv133
  %139 = load i32, i32* @wp_luma_round, align 4
  %add135 = add nsw i32 %mul134, %139
  %140 = load i32, i32* @luma_log_weight_denom, align 4
  %shr136 = ashr i32 %add135, %140
  %141 = load i32, i32* @offset_luma, align 4
  %add137 = add nsw i32 %shr136, %141
  %call138 = call i32 @iClip1(i32 %135, i32 %add137)
  store i32 %call138, i32* %weighted_pel, align 4
  %142 = load i16*, i16** @src_line, align 8
  %incdec.ptr139 = getelementptr inbounds i16, i16* %142, i32 1
  store i16* %incdec.ptr139, i16** @src_line, align 8
  %143 = load i16, i16* %142, align 2
  %conv140 = zext i16 %143 to i32
  %144 = load i32, i32* %weighted_pel, align 4
  %sub141 = sub nsw i32 %conv140, %144
  %145 = load i32*, i32** %d, align 8
  %incdec.ptr142 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %incdec.ptr142, i32** %d, align 8
  store i32 %sub141, i32* %145, align 4
  %146 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value143 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %146, i32 0, i32 156
  %147 = load i32, i32* %max_imgpel_value143, align 4
  %148 = load i32, i32* @weight_luma, align 4
  %149 = load i16*, i16** @ref_line, align 8
  %incdec.ptr144 = getelementptr inbounds i16, i16* %149, i32 1
  store i16* %incdec.ptr144, i16** @ref_line, align 8
  %150 = load i16, i16* %149, align 2
  %conv145 = zext i16 %150 to i32
  %mul146 = mul nsw i32 %148, %conv145
  %151 = load i32, i32* @wp_luma_round, align 4
  %add147 = add nsw i32 %mul146, %151
  %152 = load i32, i32* @luma_log_weight_denom, align 4
  %shr148 = ashr i32 %add147, %152
  %153 = load i32, i32* @offset_luma, align 4
  %add149 = add nsw i32 %shr148, %153
  %call150 = call i32 @iClip1(i32 %147, i32 %add149)
  store i32 %call150, i32* %weighted_pel, align 4
  %154 = load i16*, i16** @src_line, align 8
  %incdec.ptr151 = getelementptr inbounds i16, i16* %154, i32 1
  store i16* %incdec.ptr151, i16** @src_line, align 8
  %155 = load i16, i16* %154, align 2
  %conv152 = zext i16 %155 to i32
  %156 = load i32, i32* %weighted_pel, align 4
  %sub153 = sub nsw i32 %conv152, %156
  %157 = load i32*, i32** %d, align 8
  %incdec.ptr154 = getelementptr inbounds i32, i32* %157, i32 1
  store i32* %incdec.ptr154, i32** %d, align 8
  store i32 %sub153, i32* %157, align 4
  %158 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value155 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %158, i32 0, i32 156
  %159 = load i32, i32* %max_imgpel_value155, align 4
  %160 = load i32, i32* @weight_luma, align 4
  %161 = load i16*, i16** @ref_line, align 8
  %incdec.ptr156 = getelementptr inbounds i16, i16* %161, i32 1
  store i16* %incdec.ptr156, i16** @ref_line, align 8
  %162 = load i16, i16* %161, align 2
  %conv157 = zext i16 %162 to i32
  %mul158 = mul nsw i32 %160, %conv157
  %163 = load i32, i32* @wp_luma_round, align 4
  %add159 = add nsw i32 %mul158, %163
  %164 = load i32, i32* @luma_log_weight_denom, align 4
  %shr160 = ashr i32 %add159, %164
  %165 = load i32, i32* @offset_luma, align 4
  %add161 = add nsw i32 %shr160, %165
  %call162 = call i32 @iClip1(i32 %159, i32 %add161)
  store i32 %call162, i32* %weighted_pel, align 4
  %166 = load i16*, i16** @src_line, align 8
  %incdec.ptr163 = getelementptr inbounds i16, i16* %166, i32 1
  store i16* %incdec.ptr163, i16** @src_line, align 8
  %167 = load i16, i16* %166, align 2
  %conv164 = zext i16 %167 to i32
  %168 = load i32, i32* %weighted_pel, align 4
  %sub165 = sub nsw i32 %conv164, %168
  %169 = load i32*, i32** %d, align 8
  %incdec.ptr166 = getelementptr inbounds i32, i32* %169, i32 1
  store i32* %incdec.ptr166, i32** %d, align 8
  store i32 %sub165, i32* %169, align 4
  %170 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value167 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %170, i32 0, i32 156
  %171 = load i32, i32* %max_imgpel_value167, align 4
  %172 = load i32, i32* @weight_luma, align 4
  %173 = load i16*, i16** @ref_line, align 8
  %incdec.ptr168 = getelementptr inbounds i16, i16* %173, i32 1
  store i16* %incdec.ptr168, i16** @ref_line, align 8
  %174 = load i16, i16* %173, align 2
  %conv169 = zext i16 %174 to i32
  %mul170 = mul nsw i32 %172, %conv169
  %175 = load i32, i32* @wp_luma_round, align 4
  %add171 = add nsw i32 %mul170, %175
  %176 = load i32, i32* @luma_log_weight_denom, align 4
  %shr172 = ashr i32 %add171, %176
  %177 = load i32, i32* @offset_luma, align 4
  %add173 = add nsw i32 %shr172, %177
  %call174 = call i32 @iClip1(i32 %171, i32 %add173)
  store i32 %call174, i32* %weighted_pel, align 4
  %178 = load i16*, i16** @src_line, align 8
  %incdec.ptr175 = getelementptr inbounds i16, i16* %178, i32 1
  store i16* %incdec.ptr175, i16** @src_line, align 8
  %179 = load i16, i16* %178, align 2
  %conv176 = zext i16 %179 to i32
  %180 = load i32, i32* %weighted_pel, align 4
  %sub177 = sub nsw i32 %conv176, %180
  %181 = load i32*, i32** %d, align 8
  %incdec.ptr178 = getelementptr inbounds i32, i32* %181, i32 1
  store i32* %incdec.ptr178, i32** %d, align 8
  store i32 %sub177, i32* %181, align 4
  %182 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value179 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %182, i32 0, i32 156
  %183 = load i32, i32* %max_imgpel_value179, align 4
  %184 = load i32, i32* @weight_luma, align 4
  %185 = load i16*, i16** @ref_line, align 8
  %incdec.ptr180 = getelementptr inbounds i16, i16* %185, i32 1
  store i16* %incdec.ptr180, i16** @ref_line, align 8
  %186 = load i16, i16* %185, align 2
  %conv181 = zext i16 %186 to i32
  %mul182 = mul nsw i32 %184, %conv181
  %187 = load i32, i32* @wp_luma_round, align 4
  %add183 = add nsw i32 %mul182, %187
  %188 = load i32, i32* @luma_log_weight_denom, align 4
  %shr184 = ashr i32 %add183, %188
  %189 = load i32, i32* @offset_luma, align 4
  %add185 = add nsw i32 %shr184, %189
  %call186 = call i32 @iClip1(i32 %183, i32 %add185)
  store i32 %call186, i32* %weighted_pel, align 4
  %190 = load i16*, i16** @src_line, align 8
  %incdec.ptr187 = getelementptr inbounds i16, i16* %190, i32 1
  store i16* %incdec.ptr187, i16** @src_line, align 8
  %191 = load i16, i16* %190, align 2
  %conv188 = zext i16 %191 to i32
  %192 = load i32, i32* %weighted_pel, align 4
  %sub189 = sub nsw i32 %conv188, %192
  %193 = load i32*, i32** %d, align 8
  %incdec.ptr190 = getelementptr inbounds i32, i32* %193, i32 1
  store i32* %incdec.ptr190, i32** %d, align 8
  store i32 %sub189, i32* %193, align 4
  %194 = load i32, i32* %pad_size_x, align 4
  %195 = load i16*, i16** @ref_line, align 8
  %idx.ext191 = sext i32 %194 to i64
  %add.ptr192 = getelementptr inbounds i16, i16* %195, i64 %idx.ext191
  store i16* %add.ptr192, i16** @ref_line, align 8
  %196 = load i32, i32* %src_size_x, align 4
  %197 = load i16*, i16** @src_line, align 8
  %idx.ext193 = sext i32 %196 to i64
  %add.ptr194 = getelementptr inbounds i16, i16* %197, i64 %idx.ext193
  store i16* %add.ptr194, i16** @src_line, align 8
  br label %for.inc.195

for.inc.195:                                      ; preds = %for.body.94
  %198 = load i32, i32* %y4, align 4
  %inc196 = add nsw i32 %198, 1
  store i32 %inc196, i32* %y4, align 4
  br label %for.cond.91

for.end.197:                                      ; preds = %for.cond.91
  %call198 = call i32 @HadamardSAD8x8(i32* getelementptr inbounds ([256 x i32], [256 x i32]* @diff, i32 0, i32 0))
  %199 = load i32, i32* %mcost, align 4
  %add199 = add nsw i32 %199, %call198
  store i32 %add199, i32* %mcost, align 4
  %200 = load i32, i32* %min_mcost.addr, align 4
  %cmp200 = icmp sgt i32 %add199, %200
  br i1 %cmp200, label %if.then.202, label %if.end.203

if.then.202:                                      ; preds = %for.end.197
  %201 = load i32, i32* %mcost, align 4
  store i32 %201, i32* %retval
  br label %return

if.end.203:                                       ; preds = %for.end.197
  br label %for.inc.204

for.inc.204:                                      ; preds = %if.end.203
  %202 = load i32, i32* %x, align 4
  %add205 = add nsw i32 %202, 8
  store i32 %add205, i32* %x, align 4
  br label %for.cond.80

for.end.206:                                      ; preds = %for.cond.80
  %203 = load i32, i32* %src_size_mul, align 4
  %204 = load i16*, i16** %src_tmp, align 8
  %idx.ext207 = sext i32 %203 to i64
  %add.ptr208 = getelementptr inbounds i16, i16* %204, i64 %idx.ext207
  store i16* %add.ptr208, i16** %src_tmp, align 8
  br label %for.inc.209

for.inc.209:                                      ; preds = %for.end.206
  %205 = load i32, i32* %y, align 4
  %add210 = add nsw i32 %205, 32
  store i32 %add210, i32* %y, align 4
  br label %for.cond.74

for.end.211:                                      ; preds = %for.cond.74
  br label %if.end.212

if.end.212:                                       ; preds = %for.end.211, %for.end.70
  %206 = load i32, i32* %mcost, align 4
  store i32 %206, i32* %retval
  br label %return

return:                                           ; preds = %if.end.212, %if.then.202, %if.then.62
  %207 = load i32, i32* %retval
  ret i32 %207
}

; Function Attrs: nounwind uwtable
define i32 @computeBiPredSATD1(i16* %src_pic, i32 %blocksize_y, i32 %blocksize_x, i32 %min_mcost, i32 %cand_x1, i32 %cand_y1, i32 %cand_x2, i32 %cand_y2) #0 {
entry:
  %retval = alloca i32, align 4
  %src_pic.addr = alloca i16*, align 8
  %blocksize_y.addr = alloca i32, align 4
  %blocksize_x.addr = alloca i32, align 4
  %min_mcost.addr = alloca i32, align 4
  %cand_x1.addr = alloca i32, align 4
  %cand_y1.addr = alloca i32, align 4
  %cand_x2.addr = alloca i32, align 4
  %cand_y2.addr = alloca i32, align 4
  %mcost = alloca i32, align 4
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  %y4 = alloca i32, align 4
  %d = alloca i32*, align 8
  %pad_size_x = alloca i32, align 4
  %src_size_x = alloca i32, align 4
  %src_size_mul = alloca i32, align 4
  %src_tmp = alloca i16*, align 8
  %y_pos2 = alloca i32, align 4
  %y_pos1 = alloca i32, align 4
  store i16* %src_pic, i16** %src_pic.addr, align 8
  store i32 %blocksize_y, i32* %blocksize_y.addr, align 4
  store i32 %blocksize_x, i32* %blocksize_x.addr, align 4
  store i32 %min_mcost, i32* %min_mcost.addr, align 4
  store i32 %cand_x1, i32* %cand_x1.addr, align 4
  store i32 %cand_y1, i32* %cand_y1.addr, align 4
  store i32 %cand_x2, i32* %cand_x2.addr, align 4
  store i32 %cand_y2, i32* %cand_y2.addr, align 4
  store i32 0, i32* %mcost, align 4
  %0 = load i16*, i16** %src_pic.addr, align 8
  store i16* %0, i16** %src_tmp, align 8
  %1 = load i32, i32* @test8x8transform, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @img_padded_size_x, align 4
  %sub = sub nsw i32 %2, 4
  store i32 %sub, i32* %pad_size_x, align 4
  %3 = load i32, i32* %blocksize_x.addr, align 4
  %sub1 = sub nsw i32 %3, 4
  store i32 %sub1, i32* %src_size_x, align 4
  %4 = load i32, i32* %blocksize_x.addr, align 4
  %mul = mul nsw i32 %4, 4
  store i32 %mul, i32* %src_size_mul, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.73, %if.then
  %5 = load i32, i32* %y, align 4
  %6 = load i32, i32* %blocksize_y.addr, align 4
  %shl = shl i32 %6, 2
  %cmp = icmp slt i32 %5, %shl
  br i1 %cmp, label %for.body, label %for.end.75

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.68, %for.body
  %7 = load i32, i32* %x, align 4
  %8 = load i32, i32* %blocksize_x.addr, align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %for.body.4, label %for.end.70

for.body.4:                                       ; preds = %for.cond.2
  store i32* getelementptr inbounds ([256 x i32], [256 x i32]* @diff, i32 0, i32 0), i32** %d, align 8
  %9 = load i16*, i16** %src_tmp, align 8
  %10 = load i32, i32* %x, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i16, i16* %9, i64 %idx.ext
  store i16* %add.ptr, i16** @src_line, align 8
  %11 = load i32, i32* @bipred2_access_method, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_line, i32 0, i64 %idxprom
  %12 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx, align 8
  %13 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 0), align 8
  %14 = load i32, i32* %cand_y2.addr, align 4
  %15 = load i32, i32* %y, align 4
  %add = add nsw i32 %14, %15
  %16 = load i32, i32* %cand_x2.addr, align 4
  %17 = load i32, i32* %x, align 4
  %shl5 = shl i32 %17, 2
  %add6 = add nsw i32 %16, %shl5
  %call = call i16* %12(i16**** %13, i32 %add, i32 %add6)
  store i16* %call, i16** @ref2_line, align 8
  %18 = load i32, i32* @bipred1_access_method, align 4
  %idxprom7 = sext i32 %18 to i64
  %arrayidx8 = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_line, i32 0, i64 %idxprom7
  %19 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx8, align 8
  %20 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 0), align 8
  %21 = load i32, i32* %cand_y1.addr, align 4
  %22 = load i32, i32* %y, align 4
  %add9 = add nsw i32 %21, %22
  %23 = load i32, i32* %cand_x1.addr, align 4
  %24 = load i32, i32* %x, align 4
  %shl10 = shl i32 %24, 2
  %add11 = add nsw i32 %23, %shl10
  %call12 = call i16* %19(i16**** %20, i32 %add9, i32 %add11)
  store i16* %call12, i16** @ref1_line, align 8
  store i32 0, i32* %y4, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %for.body.4
  %25 = load i32, i32* %y4, align 4
  %cmp14 = icmp slt i32 %25, 4
  br i1 %cmp14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.13
  %26 = load i16*, i16** @src_line, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %26, i32 1
  store i16* %incdec.ptr, i16** @src_line, align 8
  %27 = load i16, i16* %26, align 2
  %conv = zext i16 %27 to i32
  %28 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr16 = getelementptr inbounds i16, i16* %28, i32 1
  store i16* %incdec.ptr16, i16** @ref1_line, align 8
  %29 = load i16, i16* %28, align 2
  %conv17 = zext i16 %29 to i32
  %30 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr18 = getelementptr inbounds i16, i16* %30, i32 1
  store i16* %incdec.ptr18, i16** @ref2_line, align 8
  %31 = load i16, i16* %30, align 2
  %conv19 = zext i16 %31 to i32
  %add20 = add nsw i32 %conv17, %conv19
  %add21 = add nsw i32 %add20, 1
  %shr = ashr i32 %add21, 1
  %sub22 = sub nsw i32 %conv, %shr
  %32 = load i32*, i32** %d, align 8
  %incdec.ptr23 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %incdec.ptr23, i32** %d, align 8
  store i32 %sub22, i32* %32, align 4
  %33 = load i16*, i16** @src_line, align 8
  %incdec.ptr24 = getelementptr inbounds i16, i16* %33, i32 1
  store i16* %incdec.ptr24, i16** @src_line, align 8
  %34 = load i16, i16* %33, align 2
  %conv25 = zext i16 %34 to i32
  %35 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr26 = getelementptr inbounds i16, i16* %35, i32 1
  store i16* %incdec.ptr26, i16** @ref1_line, align 8
  %36 = load i16, i16* %35, align 2
  %conv27 = zext i16 %36 to i32
  %37 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr28 = getelementptr inbounds i16, i16* %37, i32 1
  store i16* %incdec.ptr28, i16** @ref2_line, align 8
  %38 = load i16, i16* %37, align 2
  %conv29 = zext i16 %38 to i32
  %add30 = add nsw i32 %conv27, %conv29
  %add31 = add nsw i32 %add30, 1
  %shr32 = ashr i32 %add31, 1
  %sub33 = sub nsw i32 %conv25, %shr32
  %39 = load i32*, i32** %d, align 8
  %incdec.ptr34 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %incdec.ptr34, i32** %d, align 8
  store i32 %sub33, i32* %39, align 4
  %40 = load i16*, i16** @src_line, align 8
  %incdec.ptr35 = getelementptr inbounds i16, i16* %40, i32 1
  store i16* %incdec.ptr35, i16** @src_line, align 8
  %41 = load i16, i16* %40, align 2
  %conv36 = zext i16 %41 to i32
  %42 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr37 = getelementptr inbounds i16, i16* %42, i32 1
  store i16* %incdec.ptr37, i16** @ref1_line, align 8
  %43 = load i16, i16* %42, align 2
  %conv38 = zext i16 %43 to i32
  %44 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr39 = getelementptr inbounds i16, i16* %44, i32 1
  store i16* %incdec.ptr39, i16** @ref2_line, align 8
  %45 = load i16, i16* %44, align 2
  %conv40 = zext i16 %45 to i32
  %add41 = add nsw i32 %conv38, %conv40
  %add42 = add nsw i32 %add41, 1
  %shr43 = ashr i32 %add42, 1
  %sub44 = sub nsw i32 %conv36, %shr43
  %46 = load i32*, i32** %d, align 8
  %incdec.ptr45 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %incdec.ptr45, i32** %d, align 8
  store i32 %sub44, i32* %46, align 4
  %47 = load i16*, i16** @src_line, align 8
  %incdec.ptr46 = getelementptr inbounds i16, i16* %47, i32 1
  store i16* %incdec.ptr46, i16** @src_line, align 8
  %48 = load i16, i16* %47, align 2
  %conv47 = zext i16 %48 to i32
  %49 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr48 = getelementptr inbounds i16, i16* %49, i32 1
  store i16* %incdec.ptr48, i16** @ref1_line, align 8
  %50 = load i16, i16* %49, align 2
  %conv49 = zext i16 %50 to i32
  %51 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr50 = getelementptr inbounds i16, i16* %51, i32 1
  store i16* %incdec.ptr50, i16** @ref2_line, align 8
  %52 = load i16, i16* %51, align 2
  %conv51 = zext i16 %52 to i32
  %add52 = add nsw i32 %conv49, %conv51
  %add53 = add nsw i32 %add52, 1
  %shr54 = ashr i32 %add53, 1
  %sub55 = sub nsw i32 %conv47, %shr54
  %53 = load i32*, i32** %d, align 8
  %incdec.ptr56 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %incdec.ptr56, i32** %d, align 8
  store i32 %sub55, i32* %53, align 4
  %54 = load i32, i32* %pad_size_x, align 4
  %55 = load i16*, i16** @ref1_line, align 8
  %idx.ext57 = sext i32 %54 to i64
  %add.ptr58 = getelementptr inbounds i16, i16* %55, i64 %idx.ext57
  store i16* %add.ptr58, i16** @ref1_line, align 8
  %56 = load i32, i32* %pad_size_x, align 4
  %57 = load i16*, i16** @ref2_line, align 8
  %idx.ext59 = sext i32 %56 to i64
  %add.ptr60 = getelementptr inbounds i16, i16* %57, i64 %idx.ext59
  store i16* %add.ptr60, i16** @ref2_line, align 8
  %58 = load i32, i32* %src_size_x, align 4
  %59 = load i16*, i16** @src_line, align 8
  %idx.ext61 = sext i32 %58 to i64
  %add.ptr62 = getelementptr inbounds i16, i16* %59, i64 %idx.ext61
  store i16* %add.ptr62, i16** @src_line, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %60 = load i32, i32* %y4, align 4
  %inc = add nsw i32 %60, 1
  store i32 %inc, i32* %y4, align 4
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  %call63 = call i32 @HadamardSAD4x4(i32* getelementptr inbounds ([256 x i32], [256 x i32]* @diff, i32 0, i32 0))
  %61 = load i32, i32* %mcost, align 4
  %add64 = add nsw i32 %61, %call63
  store i32 %add64, i32* %mcost, align 4
  %62 = load i32, i32* %min_mcost.addr, align 4
  %cmp65 = icmp sgt i32 %add64, %62
  br i1 %cmp65, label %if.then.67, label %if.end

if.then.67:                                       ; preds = %for.end
  %63 = load i32, i32* %mcost, align 4
  store i32 %63, i32* %retval
  br label %return

if.end:                                           ; preds = %for.end
  br label %for.inc.68

for.inc.68:                                       ; preds = %if.end
  %64 = load i32, i32* %x, align 4
  %add69 = add nsw i32 %64, 4
  store i32 %add69, i32* %x, align 4
  br label %for.cond.2

for.end.70:                                       ; preds = %for.cond.2
  %65 = load i32, i32* %src_size_mul, align 4
  %66 = load i16*, i16** %src_tmp, align 8
  %idx.ext71 = sext i32 %65 to i64
  %add.ptr72 = getelementptr inbounds i16, i16* %66, i64 %idx.ext71
  store i16* %add.ptr72, i16** %src_tmp, align 8
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.end.70
  %67 = load i32, i32* %y, align 4
  %add74 = add nsw i32 %67, 16
  store i32 %add74, i32* %y, align 4
  br label %for.cond

for.end.75:                                       ; preds = %for.cond
  br label %if.end.218

if.else:                                          ; preds = %entry
  %68 = load i32, i32* @img_padded_size_x, align 4
  %sub76 = sub nsw i32 %68, 8
  store i32 %sub76, i32* %pad_size_x, align 4
  %69 = load i32, i32* %blocksize_x.addr, align 4
  %sub77 = sub nsw i32 %69, 8
  store i32 %sub77, i32* %src_size_x, align 4
  %70 = load i32, i32* %blocksize_x.addr, align 4
  %mul78 = mul nsw i32 %70, 8
  store i32 %mul78, i32* %src_size_mul, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.215, %if.else
  %71 = load i32, i32* %y, align 4
  %72 = load i32, i32* %blocksize_y.addr, align 4
  %cmp80 = icmp slt i32 %71, %72
  br i1 %cmp80, label %for.body.82, label %for.end.217

for.body.82:                                      ; preds = %for.cond.79
  %73 = load i32, i32* %cand_y2.addr, align 4
  %74 = load i32, i32* %y, align 4
  %shl83 = shl i32 %74, 2
  %add84 = add nsw i32 %73, %shl83
  store i32 %add84, i32* %y_pos2, align 4
  %75 = load i32, i32* %cand_y1.addr, align 4
  %76 = load i32, i32* %y, align 4
  %shl85 = shl i32 %76, 2
  %add86 = add nsw i32 %75, %shl85
  store i32 %add86, i32* %y_pos1, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.210, %for.body.82
  %77 = load i32, i32* %x, align 4
  %78 = load i32, i32* %blocksize_x.addr, align 4
  %cmp88 = icmp slt i32 %77, %78
  br i1 %cmp88, label %for.body.90, label %for.end.212

for.body.90:                                      ; preds = %for.cond.87
  store i32* getelementptr inbounds ([256 x i32], [256 x i32]* @diff, i32 0, i32 0), i32** %d, align 8
  %79 = load i16*, i16** %src_tmp, align 8
  %80 = load i32, i32* %x, align 4
  %idx.ext91 = sext i32 %80 to i64
  %add.ptr92 = getelementptr inbounds i16, i16* %79, i64 %idx.ext91
  store i16* %add.ptr92, i16** @src_line, align 8
  %81 = load i32, i32* @bipred2_access_method, align 4
  %idxprom93 = sext i32 %81 to i64
  %arrayidx94 = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_line, i32 0, i64 %idxprom93
  %82 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx94, align 8
  %83 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 0), align 8
  %84 = load i32, i32* %y_pos2, align 4
  %85 = load i32, i32* %cand_x2.addr, align 4
  %86 = load i32, i32* %x, align 4
  %shl95 = shl i32 %86, 2
  %add96 = add nsw i32 %85, %shl95
  %call97 = call i16* %82(i16**** %83, i32 %84, i32 %add96)
  store i16* %call97, i16** @ref2_line, align 8
  %87 = load i32, i32* @bipred1_access_method, align 4
  %idxprom98 = sext i32 %87 to i64
  %arrayidx99 = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_line, i32 0, i64 %idxprom98
  %88 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx99, align 8
  %89 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 0), align 8
  %90 = load i32, i32* %y_pos1, align 4
  %91 = load i32, i32* %cand_x1.addr, align 4
  %92 = load i32, i32* %x, align 4
  %shl100 = shl i32 %92, 2
  %add101 = add nsw i32 %91, %shl100
  %call102 = call i16* %88(i16**** %89, i32 %90, i32 %add101)
  store i16* %call102, i16** @ref1_line, align 8
  store i32 0, i32* %y4, align 4
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.201, %for.body.90
  %93 = load i32, i32* %y4, align 4
  %cmp104 = icmp slt i32 %93, 8
  br i1 %cmp104, label %for.body.106, label %for.end.203

for.body.106:                                     ; preds = %for.cond.103
  %94 = load i16*, i16** @src_line, align 8
  %incdec.ptr107 = getelementptr inbounds i16, i16* %94, i32 1
  store i16* %incdec.ptr107, i16** @src_line, align 8
  %95 = load i16, i16* %94, align 2
  %conv108 = zext i16 %95 to i32
  %96 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr109 = getelementptr inbounds i16, i16* %96, i32 1
  store i16* %incdec.ptr109, i16** @ref1_line, align 8
  %97 = load i16, i16* %96, align 2
  %conv110 = zext i16 %97 to i32
  %98 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr111 = getelementptr inbounds i16, i16* %98, i32 1
  store i16* %incdec.ptr111, i16** @ref2_line, align 8
  %99 = load i16, i16* %98, align 2
  %conv112 = zext i16 %99 to i32
  %add113 = add nsw i32 %conv110, %conv112
  %add114 = add nsw i32 %add113, 1
  %shr115 = ashr i32 %add114, 1
  %sub116 = sub nsw i32 %conv108, %shr115
  %100 = load i32*, i32** %d, align 8
  %incdec.ptr117 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %incdec.ptr117, i32** %d, align 8
  store i32 %sub116, i32* %100, align 4
  %101 = load i16*, i16** @src_line, align 8
  %incdec.ptr118 = getelementptr inbounds i16, i16* %101, i32 1
  store i16* %incdec.ptr118, i16** @src_line, align 8
  %102 = load i16, i16* %101, align 2
  %conv119 = zext i16 %102 to i32
  %103 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr120 = getelementptr inbounds i16, i16* %103, i32 1
  store i16* %incdec.ptr120, i16** @ref1_line, align 8
  %104 = load i16, i16* %103, align 2
  %conv121 = zext i16 %104 to i32
  %105 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr122 = getelementptr inbounds i16, i16* %105, i32 1
  store i16* %incdec.ptr122, i16** @ref2_line, align 8
  %106 = load i16, i16* %105, align 2
  %conv123 = zext i16 %106 to i32
  %add124 = add nsw i32 %conv121, %conv123
  %add125 = add nsw i32 %add124, 1
  %shr126 = ashr i32 %add125, 1
  %sub127 = sub nsw i32 %conv119, %shr126
  %107 = load i32*, i32** %d, align 8
  %incdec.ptr128 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %incdec.ptr128, i32** %d, align 8
  store i32 %sub127, i32* %107, align 4
  %108 = load i16*, i16** @src_line, align 8
  %incdec.ptr129 = getelementptr inbounds i16, i16* %108, i32 1
  store i16* %incdec.ptr129, i16** @src_line, align 8
  %109 = load i16, i16* %108, align 2
  %conv130 = zext i16 %109 to i32
  %110 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr131 = getelementptr inbounds i16, i16* %110, i32 1
  store i16* %incdec.ptr131, i16** @ref1_line, align 8
  %111 = load i16, i16* %110, align 2
  %conv132 = zext i16 %111 to i32
  %112 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr133 = getelementptr inbounds i16, i16* %112, i32 1
  store i16* %incdec.ptr133, i16** @ref2_line, align 8
  %113 = load i16, i16* %112, align 2
  %conv134 = zext i16 %113 to i32
  %add135 = add nsw i32 %conv132, %conv134
  %add136 = add nsw i32 %add135, 1
  %shr137 = ashr i32 %add136, 1
  %sub138 = sub nsw i32 %conv130, %shr137
  %114 = load i32*, i32** %d, align 8
  %incdec.ptr139 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %incdec.ptr139, i32** %d, align 8
  store i32 %sub138, i32* %114, align 4
  %115 = load i16*, i16** @src_line, align 8
  %incdec.ptr140 = getelementptr inbounds i16, i16* %115, i32 1
  store i16* %incdec.ptr140, i16** @src_line, align 8
  %116 = load i16, i16* %115, align 2
  %conv141 = zext i16 %116 to i32
  %117 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr142 = getelementptr inbounds i16, i16* %117, i32 1
  store i16* %incdec.ptr142, i16** @ref1_line, align 8
  %118 = load i16, i16* %117, align 2
  %conv143 = zext i16 %118 to i32
  %119 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr144 = getelementptr inbounds i16, i16* %119, i32 1
  store i16* %incdec.ptr144, i16** @ref2_line, align 8
  %120 = load i16, i16* %119, align 2
  %conv145 = zext i16 %120 to i32
  %add146 = add nsw i32 %conv143, %conv145
  %add147 = add nsw i32 %add146, 1
  %shr148 = ashr i32 %add147, 1
  %sub149 = sub nsw i32 %conv141, %shr148
  %121 = load i32*, i32** %d, align 8
  %incdec.ptr150 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %incdec.ptr150, i32** %d, align 8
  store i32 %sub149, i32* %121, align 4
  %122 = load i16*, i16** @src_line, align 8
  %incdec.ptr151 = getelementptr inbounds i16, i16* %122, i32 1
  store i16* %incdec.ptr151, i16** @src_line, align 8
  %123 = load i16, i16* %122, align 2
  %conv152 = zext i16 %123 to i32
  %124 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr153 = getelementptr inbounds i16, i16* %124, i32 1
  store i16* %incdec.ptr153, i16** @ref1_line, align 8
  %125 = load i16, i16* %124, align 2
  %conv154 = zext i16 %125 to i32
  %126 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr155 = getelementptr inbounds i16, i16* %126, i32 1
  store i16* %incdec.ptr155, i16** @ref2_line, align 8
  %127 = load i16, i16* %126, align 2
  %conv156 = zext i16 %127 to i32
  %add157 = add nsw i32 %conv154, %conv156
  %add158 = add nsw i32 %add157, 1
  %shr159 = ashr i32 %add158, 1
  %sub160 = sub nsw i32 %conv152, %shr159
  %128 = load i32*, i32** %d, align 8
  %incdec.ptr161 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %incdec.ptr161, i32** %d, align 8
  store i32 %sub160, i32* %128, align 4
  %129 = load i16*, i16** @src_line, align 8
  %incdec.ptr162 = getelementptr inbounds i16, i16* %129, i32 1
  store i16* %incdec.ptr162, i16** @src_line, align 8
  %130 = load i16, i16* %129, align 2
  %conv163 = zext i16 %130 to i32
  %131 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr164 = getelementptr inbounds i16, i16* %131, i32 1
  store i16* %incdec.ptr164, i16** @ref1_line, align 8
  %132 = load i16, i16* %131, align 2
  %conv165 = zext i16 %132 to i32
  %133 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr166 = getelementptr inbounds i16, i16* %133, i32 1
  store i16* %incdec.ptr166, i16** @ref2_line, align 8
  %134 = load i16, i16* %133, align 2
  %conv167 = zext i16 %134 to i32
  %add168 = add nsw i32 %conv165, %conv167
  %add169 = add nsw i32 %add168, 1
  %shr170 = ashr i32 %add169, 1
  %sub171 = sub nsw i32 %conv163, %shr170
  %135 = load i32*, i32** %d, align 8
  %incdec.ptr172 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %incdec.ptr172, i32** %d, align 8
  store i32 %sub171, i32* %135, align 4
  %136 = load i16*, i16** @src_line, align 8
  %incdec.ptr173 = getelementptr inbounds i16, i16* %136, i32 1
  store i16* %incdec.ptr173, i16** @src_line, align 8
  %137 = load i16, i16* %136, align 2
  %conv174 = zext i16 %137 to i32
  %138 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr175 = getelementptr inbounds i16, i16* %138, i32 1
  store i16* %incdec.ptr175, i16** @ref1_line, align 8
  %139 = load i16, i16* %138, align 2
  %conv176 = zext i16 %139 to i32
  %140 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr177 = getelementptr inbounds i16, i16* %140, i32 1
  store i16* %incdec.ptr177, i16** @ref2_line, align 8
  %141 = load i16, i16* %140, align 2
  %conv178 = zext i16 %141 to i32
  %add179 = add nsw i32 %conv176, %conv178
  %add180 = add nsw i32 %add179, 1
  %shr181 = ashr i32 %add180, 1
  %sub182 = sub nsw i32 %conv174, %shr181
  %142 = load i32*, i32** %d, align 8
  %incdec.ptr183 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %incdec.ptr183, i32** %d, align 8
  store i32 %sub182, i32* %142, align 4
  %143 = load i16*, i16** @src_line, align 8
  %incdec.ptr184 = getelementptr inbounds i16, i16* %143, i32 1
  store i16* %incdec.ptr184, i16** @src_line, align 8
  %144 = load i16, i16* %143, align 2
  %conv185 = zext i16 %144 to i32
  %145 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr186 = getelementptr inbounds i16, i16* %145, i32 1
  store i16* %incdec.ptr186, i16** @ref1_line, align 8
  %146 = load i16, i16* %145, align 2
  %conv187 = zext i16 %146 to i32
  %147 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr188 = getelementptr inbounds i16, i16* %147, i32 1
  store i16* %incdec.ptr188, i16** @ref2_line, align 8
  %148 = load i16, i16* %147, align 2
  %conv189 = zext i16 %148 to i32
  %add190 = add nsw i32 %conv187, %conv189
  %add191 = add nsw i32 %add190, 1
  %shr192 = ashr i32 %add191, 1
  %sub193 = sub nsw i32 %conv185, %shr192
  %149 = load i32*, i32** %d, align 8
  %incdec.ptr194 = getelementptr inbounds i32, i32* %149, i32 1
  store i32* %incdec.ptr194, i32** %d, align 8
  store i32 %sub193, i32* %149, align 4
  %150 = load i32, i32* %pad_size_x, align 4
  %151 = load i16*, i16** @ref1_line, align 8
  %idx.ext195 = sext i32 %150 to i64
  %add.ptr196 = getelementptr inbounds i16, i16* %151, i64 %idx.ext195
  store i16* %add.ptr196, i16** @ref1_line, align 8
  %152 = load i32, i32* %pad_size_x, align 4
  %153 = load i16*, i16** @ref2_line, align 8
  %idx.ext197 = sext i32 %152 to i64
  %add.ptr198 = getelementptr inbounds i16, i16* %153, i64 %idx.ext197
  store i16* %add.ptr198, i16** @ref2_line, align 8
  %154 = load i32, i32* %src_size_x, align 4
  %155 = load i16*, i16** @src_line, align 8
  %idx.ext199 = sext i32 %154 to i64
  %add.ptr200 = getelementptr inbounds i16, i16* %155, i64 %idx.ext199
  store i16* %add.ptr200, i16** @src_line, align 8
  br label %for.inc.201

for.inc.201:                                      ; preds = %for.body.106
  %156 = load i32, i32* %y4, align 4
  %inc202 = add nsw i32 %156, 1
  store i32 %inc202, i32* %y4, align 4
  br label %for.cond.103

for.end.203:                                      ; preds = %for.cond.103
  %call204 = call i32 @HadamardSAD8x8(i32* getelementptr inbounds ([256 x i32], [256 x i32]* @diff, i32 0, i32 0))
  %157 = load i32, i32* %mcost, align 4
  %add205 = add nsw i32 %157, %call204
  store i32 %add205, i32* %mcost, align 4
  %158 = load i32, i32* %min_mcost.addr, align 4
  %cmp206 = icmp sgt i32 %add205, %158
  br i1 %cmp206, label %if.then.208, label %if.end.209

if.then.208:                                      ; preds = %for.end.203
  %159 = load i32, i32* %mcost, align 4
  store i32 %159, i32* %retval
  br label %return

if.end.209:                                       ; preds = %for.end.203
  br label %for.inc.210

for.inc.210:                                      ; preds = %if.end.209
  %160 = load i32, i32* %x, align 4
  %add211 = add nsw i32 %160, 8
  store i32 %add211, i32* %x, align 4
  br label %for.cond.87

for.end.212:                                      ; preds = %for.cond.87
  %161 = load i32, i32* %src_size_mul, align 4
  %162 = load i16*, i16** %src_tmp, align 8
  %idx.ext213 = sext i32 %161 to i64
  %add.ptr214 = getelementptr inbounds i16, i16* %162, i64 %idx.ext213
  store i16* %add.ptr214, i16** %src_tmp, align 8
  br label %for.inc.215

for.inc.215:                                      ; preds = %for.end.212
  %163 = load i32, i32* %y, align 4
  %add216 = add nsw i32 %163, 8
  store i32 %add216, i32* %y, align 4
  br label %for.cond.79

for.end.217:                                      ; preds = %for.cond.79
  br label %if.end.218

if.end.218:                                       ; preds = %for.end.217, %for.end.75
  %164 = load i32, i32* %mcost, align 4
  store i32 %164, i32* %retval
  br label %return

return:                                           ; preds = %if.end.218, %if.then.208, %if.then.67
  %165 = load i32, i32* %retval
  ret i32 %165
}

; Function Attrs: nounwind uwtable
define i32 @computeBiPredSATD2(i16* %src_pic, i32 %blocksize_y, i32 %blocksize_x, i32 %min_mcost, i32 %cand_x1, i32 %cand_y1, i32 %cand_x2, i32 %cand_y2) #0 {
entry:
  %retval = alloca i32, align 4
  %src_pic.addr = alloca i16*, align 8
  %blocksize_y.addr = alloca i32, align 4
  %blocksize_x.addr = alloca i32, align 4
  %min_mcost.addr = alloca i32, align 4
  %cand_x1.addr = alloca i32, align 4
  %cand_y1.addr = alloca i32, align 4
  %cand_x2.addr = alloca i32, align 4
  %cand_y2.addr = alloca i32, align 4
  %mcost = alloca i32, align 4
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  %y4 = alloca i32, align 4
  %d = alloca i32*, align 8
  %weighted_pel = alloca i32, align 4
  %pixel1 = alloca i32, align 4
  %pixel2 = alloca i32, align 4
  %denom = alloca i32, align 4
  %lround = alloca i32, align 4
  %pad_size_x = alloca i32, align 4
  %src_size_x = alloca i32, align 4
  %src_size_mul = alloca i32, align 4
  %src_tmp = alloca i16*, align 8
  %y_pos2 = alloca i32, align 4
  %y_pos1 = alloca i32, align 4
  store i16* %src_pic, i16** %src_pic.addr, align 8
  store i32 %blocksize_y, i32* %blocksize_y.addr, align 4
  store i32 %blocksize_x, i32* %blocksize_x.addr, align 4
  store i32 %min_mcost, i32* %min_mcost.addr, align 4
  store i32 %cand_x1, i32* %cand_x1.addr, align 4
  store i32 %cand_y1, i32* %cand_y1.addr, align 4
  store i32 %cand_x2, i32* %cand_x2.addr, align 4
  store i32 %cand_y2, i32* %cand_y2.addr, align 4
  store i32 0, i32* %mcost, align 4
  %0 = load i32, i32* @luma_log_weight_denom, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %denom, align 4
  %1 = load i32, i32* @wp_luma_round, align 4
  %mul = mul nsw i32 2, %1
  store i32 %mul, i32* %lround, align 4
  %2 = load i16*, i16** %src_pic.addr, align 8
  store i16* %2, i16** %src_tmp, align 8
  %3 = load i32, i32* @test8x8transform, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i32, i32* @img_padded_size_x, align 4
  %sub = sub nsw i32 %4, 4
  store i32 %sub, i32* %pad_size_x, align 4
  %5 = load i32, i32* %blocksize_x.addr, align 4
  %sub1 = sub nsw i32 %5, 4
  store i32 %sub1, i32* %src_size_x, align 4
  %6 = load i32, i32* %blocksize_x.addr, align 4
  %mul2 = mul nsw i32 %6, 4
  store i32 %mul2, i32* %src_size_mul, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.106, %if.then
  %7 = load i32, i32* %y, align 4
  %8 = load i32, i32* %blocksize_y.addr, align 4
  %shl = shl i32 %8, 2
  %cmp = icmp slt i32 %7, %shl
  br i1 %cmp, label %for.body, label %for.end.108

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.101, %for.body
  %9 = load i32, i32* %x, align 4
  %10 = load i32, i32* %blocksize_x.addr, align 4
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %for.body.5, label %for.end.103

for.body.5:                                       ; preds = %for.cond.3
  store i32* getelementptr inbounds ([256 x i32], [256 x i32]* @diff, i32 0, i32 0), i32** %d, align 8
  %11 = load i16*, i16** %src_tmp, align 8
  %12 = load i32, i32* %x, align 4
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i16, i16* %11, i64 %idx.ext
  store i16* %add.ptr, i16** @src_line, align 8
  %13 = load i32, i32* @bipred2_access_method, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_line, i32 0, i64 %idxprom
  %14 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx, align 8
  %15 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 0), align 8
  %16 = load i32, i32* %cand_y2.addr, align 4
  %17 = load i32, i32* %y, align 4
  %add6 = add nsw i32 %16, %17
  %18 = load i32, i32* %cand_x2.addr, align 4
  %19 = load i32, i32* %x, align 4
  %shl7 = shl i32 %19, 2
  %add8 = add nsw i32 %18, %shl7
  %call = call i16* %14(i16**** %15, i32 %add6, i32 %add8)
  store i16* %call, i16** @ref2_line, align 8
  %20 = load i32, i32* @bipred1_access_method, align 4
  %idxprom9 = sext i32 %20 to i64
  %arrayidx10 = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_line, i32 0, i64 %idxprom9
  %21 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx10, align 8
  %22 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 0), align 8
  %23 = load i32, i32* %cand_y1.addr, align 4
  %24 = load i32, i32* %y, align 4
  %add11 = add nsw i32 %23, %24
  %25 = load i32, i32* %cand_x1.addr, align 4
  %26 = load i32, i32* %x, align 4
  %shl12 = shl i32 %26, 2
  %add13 = add nsw i32 %25, %shl12
  %call14 = call i16* %21(i16**** %22, i32 %add11, i32 %add13)
  store i16* %call14, i16** @ref1_line, align 8
  store i32 0, i32* %y4, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %for.body.5
  %27 = load i32, i32* %y4, align 4
  %cmp16 = icmp slt i32 %27, 4
  br i1 %cmp16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.15
  %28 = load i16, i16* @weight1, align 2
  %conv = sext i16 %28 to i32
  %29 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %29, i32 1
  store i16* %incdec.ptr, i16** @ref1_line, align 8
  %30 = load i16, i16* %29, align 2
  %conv18 = zext i16 %30 to i32
  %mul19 = mul nsw i32 %conv, %conv18
  store i32 %mul19, i32* %pixel1, align 4
  %31 = load i16, i16* @weight2, align 2
  %conv20 = sext i16 %31 to i32
  %32 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr21 = getelementptr inbounds i16, i16* %32, i32 1
  store i16* %incdec.ptr21, i16** @ref2_line, align 8
  %33 = load i16, i16* %32, align 2
  %conv22 = zext i16 %33 to i32
  %mul23 = mul nsw i32 %conv20, %conv22
  store i32 %mul23, i32* %pixel2, align 4
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 156
  %35 = load i32, i32* %max_imgpel_value, align 4
  %36 = load i32, i32* %pixel1, align 4
  %37 = load i32, i32* %pixel2, align 4
  %add24 = add nsw i32 %36, %37
  %38 = load i32, i32* %lround, align 4
  %add25 = add nsw i32 %add24, %38
  %39 = load i32, i32* %denom, align 4
  %shr = ashr i32 %add25, %39
  %40 = load i16, i16* @offsetBi, align 2
  %conv26 = sext i16 %40 to i32
  %add27 = add nsw i32 %shr, %conv26
  %call28 = call i32 @iClip1(i32 %35, i32 %add27)
  store i32 %call28, i32* %weighted_pel, align 4
  %41 = load i16*, i16** @src_line, align 8
  %incdec.ptr29 = getelementptr inbounds i16, i16* %41, i32 1
  store i16* %incdec.ptr29, i16** @src_line, align 8
  %42 = load i16, i16* %41, align 2
  %conv30 = zext i16 %42 to i32
  %43 = load i32, i32* %weighted_pel, align 4
  %sub31 = sub nsw i32 %conv30, %43
  %44 = load i32*, i32** %d, align 8
  %incdec.ptr32 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %incdec.ptr32, i32** %d, align 8
  store i32 %sub31, i32* %44, align 4
  %45 = load i16, i16* @weight1, align 2
  %conv33 = sext i16 %45 to i32
  %46 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr34 = getelementptr inbounds i16, i16* %46, i32 1
  store i16* %incdec.ptr34, i16** @ref1_line, align 8
  %47 = load i16, i16* %46, align 2
  %conv35 = zext i16 %47 to i32
  %mul36 = mul nsw i32 %conv33, %conv35
  store i32 %mul36, i32* %pixel1, align 4
  %48 = load i16, i16* @weight2, align 2
  %conv37 = sext i16 %48 to i32
  %49 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr38 = getelementptr inbounds i16, i16* %49, i32 1
  store i16* %incdec.ptr38, i16** @ref2_line, align 8
  %50 = load i16, i16* %49, align 2
  %conv39 = zext i16 %50 to i32
  %mul40 = mul nsw i32 %conv37, %conv39
  store i32 %mul40, i32* %pixel2, align 4
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value41 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %51, i32 0, i32 156
  %52 = load i32, i32* %max_imgpel_value41, align 4
  %53 = load i32, i32* %pixel1, align 4
  %54 = load i32, i32* %pixel2, align 4
  %add42 = add nsw i32 %53, %54
  %55 = load i32, i32* %lround, align 4
  %add43 = add nsw i32 %add42, %55
  %56 = load i32, i32* %denom, align 4
  %shr44 = ashr i32 %add43, %56
  %57 = load i16, i16* @offsetBi, align 2
  %conv45 = sext i16 %57 to i32
  %add46 = add nsw i32 %shr44, %conv45
  %call47 = call i32 @iClip1(i32 %52, i32 %add46)
  store i32 %call47, i32* %weighted_pel, align 4
  %58 = load i16*, i16** @src_line, align 8
  %incdec.ptr48 = getelementptr inbounds i16, i16* %58, i32 1
  store i16* %incdec.ptr48, i16** @src_line, align 8
  %59 = load i16, i16* %58, align 2
  %conv49 = zext i16 %59 to i32
  %60 = load i32, i32* %weighted_pel, align 4
  %sub50 = sub nsw i32 %conv49, %60
  %61 = load i32*, i32** %d, align 8
  %incdec.ptr51 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %incdec.ptr51, i32** %d, align 8
  store i32 %sub50, i32* %61, align 4
  %62 = load i16, i16* @weight1, align 2
  %conv52 = sext i16 %62 to i32
  %63 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr53 = getelementptr inbounds i16, i16* %63, i32 1
  store i16* %incdec.ptr53, i16** @ref1_line, align 8
  %64 = load i16, i16* %63, align 2
  %conv54 = zext i16 %64 to i32
  %mul55 = mul nsw i32 %conv52, %conv54
  store i32 %mul55, i32* %pixel1, align 4
  %65 = load i16, i16* @weight2, align 2
  %conv56 = sext i16 %65 to i32
  %66 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr57 = getelementptr inbounds i16, i16* %66, i32 1
  store i16* %incdec.ptr57, i16** @ref2_line, align 8
  %67 = load i16, i16* %66, align 2
  %conv58 = zext i16 %67 to i32
  %mul59 = mul nsw i32 %conv56, %conv58
  store i32 %mul59, i32* %pixel2, align 4
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value60 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 156
  %69 = load i32, i32* %max_imgpel_value60, align 4
  %70 = load i32, i32* %pixel1, align 4
  %71 = load i32, i32* %pixel2, align 4
  %add61 = add nsw i32 %70, %71
  %72 = load i32, i32* %lround, align 4
  %add62 = add nsw i32 %add61, %72
  %73 = load i32, i32* %denom, align 4
  %shr63 = ashr i32 %add62, %73
  %74 = load i16, i16* @offsetBi, align 2
  %conv64 = sext i16 %74 to i32
  %add65 = add nsw i32 %shr63, %conv64
  %call66 = call i32 @iClip1(i32 %69, i32 %add65)
  store i32 %call66, i32* %weighted_pel, align 4
  %75 = load i16*, i16** @src_line, align 8
  %incdec.ptr67 = getelementptr inbounds i16, i16* %75, i32 1
  store i16* %incdec.ptr67, i16** @src_line, align 8
  %76 = load i16, i16* %75, align 2
  %conv68 = zext i16 %76 to i32
  %77 = load i32, i32* %weighted_pel, align 4
  %sub69 = sub nsw i32 %conv68, %77
  %78 = load i32*, i32** %d, align 8
  %incdec.ptr70 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %incdec.ptr70, i32** %d, align 8
  store i32 %sub69, i32* %78, align 4
  %79 = load i16, i16* @weight1, align 2
  %conv71 = sext i16 %79 to i32
  %80 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr72 = getelementptr inbounds i16, i16* %80, i32 1
  store i16* %incdec.ptr72, i16** @ref1_line, align 8
  %81 = load i16, i16* %80, align 2
  %conv73 = zext i16 %81 to i32
  %mul74 = mul nsw i32 %conv71, %conv73
  store i32 %mul74, i32* %pixel1, align 4
  %82 = load i16, i16* @weight2, align 2
  %conv75 = sext i16 %82 to i32
  %83 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr76 = getelementptr inbounds i16, i16* %83, i32 1
  store i16* %incdec.ptr76, i16** @ref2_line, align 8
  %84 = load i16, i16* %83, align 2
  %conv77 = zext i16 %84 to i32
  %mul78 = mul nsw i32 %conv75, %conv77
  store i32 %mul78, i32* %pixel2, align 4
  %85 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value79 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %85, i32 0, i32 156
  %86 = load i32, i32* %max_imgpel_value79, align 4
  %87 = load i32, i32* %pixel1, align 4
  %88 = load i32, i32* %pixel2, align 4
  %add80 = add nsw i32 %87, %88
  %89 = load i32, i32* %lround, align 4
  %add81 = add nsw i32 %add80, %89
  %90 = load i32, i32* %denom, align 4
  %shr82 = ashr i32 %add81, %90
  %91 = load i16, i16* @offsetBi, align 2
  %conv83 = sext i16 %91 to i32
  %add84 = add nsw i32 %shr82, %conv83
  %call85 = call i32 @iClip1(i32 %86, i32 %add84)
  store i32 %call85, i32* %weighted_pel, align 4
  %92 = load i16*, i16** @src_line, align 8
  %incdec.ptr86 = getelementptr inbounds i16, i16* %92, i32 1
  store i16* %incdec.ptr86, i16** @src_line, align 8
  %93 = load i16, i16* %92, align 2
  %conv87 = zext i16 %93 to i32
  %94 = load i32, i32* %weighted_pel, align 4
  %sub88 = sub nsw i32 %conv87, %94
  %95 = load i32*, i32** %d, align 8
  %incdec.ptr89 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %incdec.ptr89, i32** %d, align 8
  store i32 %sub88, i32* %95, align 4
  %96 = load i32, i32* %pad_size_x, align 4
  %97 = load i16*, i16** @ref1_line, align 8
  %idx.ext90 = sext i32 %96 to i64
  %add.ptr91 = getelementptr inbounds i16, i16* %97, i64 %idx.ext90
  store i16* %add.ptr91, i16** @ref1_line, align 8
  %98 = load i32, i32* %pad_size_x, align 4
  %99 = load i16*, i16** @ref2_line, align 8
  %idx.ext92 = sext i32 %98 to i64
  %add.ptr93 = getelementptr inbounds i16, i16* %99, i64 %idx.ext92
  store i16* %add.ptr93, i16** @ref2_line, align 8
  %100 = load i32, i32* %src_size_x, align 4
  %101 = load i16*, i16** @src_line, align 8
  %idx.ext94 = sext i32 %100 to i64
  %add.ptr95 = getelementptr inbounds i16, i16* %101, i64 %idx.ext94
  store i16* %add.ptr95, i16** @src_line, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %102 = load i32, i32* %y4, align 4
  %inc = add nsw i32 %102, 1
  store i32 %inc, i32* %y4, align 4
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  %call96 = call i32 @HadamardSAD4x4(i32* getelementptr inbounds ([256 x i32], [256 x i32]* @diff, i32 0, i32 0))
  %103 = load i32, i32* %mcost, align 4
  %add97 = add nsw i32 %103, %call96
  store i32 %add97, i32* %mcost, align 4
  %104 = load i32, i32* %min_mcost.addr, align 4
  %cmp98 = icmp sgt i32 %add97, %104
  br i1 %cmp98, label %if.then.100, label %if.end

if.then.100:                                      ; preds = %for.end
  %105 = load i32, i32* %mcost, align 4
  store i32 %105, i32* %retval
  br label %return

if.end:                                           ; preds = %for.end
  br label %for.inc.101

for.inc.101:                                      ; preds = %if.end
  %106 = load i32, i32* %x, align 4
  %add102 = add nsw i32 %106, 4
  store i32 %add102, i32* %x, align 4
  br label %for.cond.3

for.end.103:                                      ; preds = %for.cond.3
  %107 = load i32, i32* %src_size_mul, align 4
  %108 = load i16*, i16** %src_tmp, align 8
  %idx.ext104 = sext i32 %107 to i64
  %add.ptr105 = getelementptr inbounds i16, i16* %108, i64 %idx.ext104
  store i16* %add.ptr105, i16** %src_tmp, align 8
  br label %for.inc.106

for.inc.106:                                      ; preds = %for.end.103
  %109 = load i32, i32* %y, align 4
  %add107 = add nsw i32 %109, 16
  store i32 %add107, i32* %y, align 4
  br label %for.cond

for.end.108:                                      ; preds = %for.cond
  br label %if.end.314

if.else:                                          ; preds = %entry
  %110 = load i32, i32* @img_padded_size_x, align 4
  %sub109 = sub nsw i32 %110, 8
  store i32 %sub109, i32* %pad_size_x, align 4
  %111 = load i32, i32* %blocksize_x.addr, align 4
  %sub110 = sub nsw i32 %111, 8
  store i32 %sub110, i32* %src_size_x, align 4
  %112 = load i32, i32* %blocksize_x.addr, align 4
  %mul111 = mul nsw i32 %112, 8
  store i32 %mul111, i32* %src_size_mul, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.311, %if.else
  %113 = load i32, i32* %y, align 4
  %114 = load i32, i32* %blocksize_y.addr, align 4
  %cmp113 = icmp slt i32 %113, %114
  br i1 %cmp113, label %for.body.115, label %for.end.313

for.body.115:                                     ; preds = %for.cond.112
  %115 = load i32, i32* %cand_y2.addr, align 4
  %116 = load i32, i32* %y, align 4
  %shl116 = shl i32 %116, 2
  %add117 = add nsw i32 %115, %shl116
  store i32 %add117, i32* %y_pos2, align 4
  %117 = load i32, i32* %cand_y1.addr, align 4
  %118 = load i32, i32* %y, align 4
  %shl118 = shl i32 %118, 2
  %add119 = add nsw i32 %117, %shl118
  store i32 %add119, i32* %y_pos1, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.306, %for.body.115
  %119 = load i32, i32* %x, align 4
  %120 = load i32, i32* %blocksize_x.addr, align 4
  %cmp121 = icmp slt i32 %119, %120
  br i1 %cmp121, label %for.body.123, label %for.end.308

for.body.123:                                     ; preds = %for.cond.120
  store i32* getelementptr inbounds ([256 x i32], [256 x i32]* @diff, i32 0, i32 0), i32** %d, align 8
  %121 = load i16*, i16** %src_tmp, align 8
  %122 = load i32, i32* %x, align 4
  %idx.ext124 = sext i32 %122 to i64
  %add.ptr125 = getelementptr inbounds i16, i16* %121, i64 %idx.ext124
  store i16* %add.ptr125, i16** @src_line, align 8
  %123 = load i32, i32* @bipred2_access_method, align 4
  %idxprom126 = sext i32 %123 to i64
  %arrayidx127 = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_line, i32 0, i64 %idxprom126
  %124 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx127, align 8
  %125 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 0), align 8
  %126 = load i32, i32* %y_pos2, align 4
  %127 = load i32, i32* %cand_x2.addr, align 4
  %128 = load i32, i32* %x, align 4
  %shl128 = shl i32 %128, 2
  %add129 = add nsw i32 %127, %shl128
  %call130 = call i16* %124(i16**** %125, i32 %126, i32 %add129)
  store i16* %call130, i16** @ref2_line, align 8
  %129 = load i32, i32* @bipred1_access_method, align 4
  %idxprom131 = sext i32 %129 to i64
  %arrayidx132 = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_line, i32 0, i64 %idxprom131
  %130 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx132, align 8
  %131 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 0), align 8
  %132 = load i32, i32* %y_pos1, align 4
  %133 = load i32, i32* %cand_x1.addr, align 4
  %134 = load i32, i32* %x, align 4
  %shl133 = shl i32 %134, 2
  %add134 = add nsw i32 %133, %shl133
  %call135 = call i16* %130(i16**** %131, i32 %132, i32 %add134)
  store i16* %call135, i16** @ref1_line, align 8
  store i32 0, i32* %y4, align 4
  br label %for.cond.136

for.cond.136:                                     ; preds = %for.inc.297, %for.body.123
  %135 = load i32, i32* %y4, align 4
  %cmp137 = icmp slt i32 %135, 8
  br i1 %cmp137, label %for.body.139, label %for.end.299

for.body.139:                                     ; preds = %for.cond.136
  %136 = load i16, i16* @weight1, align 2
  %conv140 = sext i16 %136 to i32
  %137 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr141 = getelementptr inbounds i16, i16* %137, i32 1
  store i16* %incdec.ptr141, i16** @ref1_line, align 8
  %138 = load i16, i16* %137, align 2
  %conv142 = zext i16 %138 to i32
  %mul143 = mul nsw i32 %conv140, %conv142
  store i32 %mul143, i32* %pixel1, align 4
  %139 = load i16, i16* @weight2, align 2
  %conv144 = sext i16 %139 to i32
  %140 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr145 = getelementptr inbounds i16, i16* %140, i32 1
  store i16* %incdec.ptr145, i16** @ref2_line, align 8
  %141 = load i16, i16* %140, align 2
  %conv146 = zext i16 %141 to i32
  %mul147 = mul nsw i32 %conv144, %conv146
  store i32 %mul147, i32* %pixel2, align 4
  %142 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value148 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %142, i32 0, i32 156
  %143 = load i32, i32* %max_imgpel_value148, align 4
  %144 = load i32, i32* %pixel1, align 4
  %145 = load i32, i32* %pixel2, align 4
  %add149 = add nsw i32 %144, %145
  %146 = load i32, i32* %lround, align 4
  %add150 = add nsw i32 %add149, %146
  %147 = load i32, i32* %denom, align 4
  %shr151 = ashr i32 %add150, %147
  %148 = load i16, i16* @offsetBi, align 2
  %conv152 = sext i16 %148 to i32
  %add153 = add nsw i32 %shr151, %conv152
  %call154 = call i32 @iClip1(i32 %143, i32 %add153)
  store i32 %call154, i32* %weighted_pel, align 4
  %149 = load i16*, i16** @src_line, align 8
  %incdec.ptr155 = getelementptr inbounds i16, i16* %149, i32 1
  store i16* %incdec.ptr155, i16** @src_line, align 8
  %150 = load i16, i16* %149, align 2
  %conv156 = zext i16 %150 to i32
  %151 = load i32, i32* %weighted_pel, align 4
  %sub157 = sub nsw i32 %conv156, %151
  %152 = load i32*, i32** %d, align 8
  %incdec.ptr158 = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %incdec.ptr158, i32** %d, align 8
  store i32 %sub157, i32* %152, align 4
  %153 = load i16, i16* @weight1, align 2
  %conv159 = sext i16 %153 to i32
  %154 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr160 = getelementptr inbounds i16, i16* %154, i32 1
  store i16* %incdec.ptr160, i16** @ref1_line, align 8
  %155 = load i16, i16* %154, align 2
  %conv161 = zext i16 %155 to i32
  %mul162 = mul nsw i32 %conv159, %conv161
  store i32 %mul162, i32* %pixel1, align 4
  %156 = load i16, i16* @weight2, align 2
  %conv163 = sext i16 %156 to i32
  %157 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr164 = getelementptr inbounds i16, i16* %157, i32 1
  store i16* %incdec.ptr164, i16** @ref2_line, align 8
  %158 = load i16, i16* %157, align 2
  %conv165 = zext i16 %158 to i32
  %mul166 = mul nsw i32 %conv163, %conv165
  store i32 %mul166, i32* %pixel2, align 4
  %159 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value167 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %159, i32 0, i32 156
  %160 = load i32, i32* %max_imgpel_value167, align 4
  %161 = load i32, i32* %pixel1, align 4
  %162 = load i32, i32* %pixel2, align 4
  %add168 = add nsw i32 %161, %162
  %163 = load i32, i32* %lround, align 4
  %add169 = add nsw i32 %add168, %163
  %164 = load i32, i32* %denom, align 4
  %shr170 = ashr i32 %add169, %164
  %165 = load i16, i16* @offsetBi, align 2
  %conv171 = sext i16 %165 to i32
  %add172 = add nsw i32 %shr170, %conv171
  %call173 = call i32 @iClip1(i32 %160, i32 %add172)
  store i32 %call173, i32* %weighted_pel, align 4
  %166 = load i16*, i16** @src_line, align 8
  %incdec.ptr174 = getelementptr inbounds i16, i16* %166, i32 1
  store i16* %incdec.ptr174, i16** @src_line, align 8
  %167 = load i16, i16* %166, align 2
  %conv175 = zext i16 %167 to i32
  %168 = load i32, i32* %weighted_pel, align 4
  %sub176 = sub nsw i32 %conv175, %168
  %169 = load i32*, i32** %d, align 8
  %incdec.ptr177 = getelementptr inbounds i32, i32* %169, i32 1
  store i32* %incdec.ptr177, i32** %d, align 8
  store i32 %sub176, i32* %169, align 4
  %170 = load i16, i16* @weight1, align 2
  %conv178 = sext i16 %170 to i32
  %171 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr179 = getelementptr inbounds i16, i16* %171, i32 1
  store i16* %incdec.ptr179, i16** @ref1_line, align 8
  %172 = load i16, i16* %171, align 2
  %conv180 = zext i16 %172 to i32
  %mul181 = mul nsw i32 %conv178, %conv180
  store i32 %mul181, i32* %pixel1, align 4
  %173 = load i16, i16* @weight2, align 2
  %conv182 = sext i16 %173 to i32
  %174 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr183 = getelementptr inbounds i16, i16* %174, i32 1
  store i16* %incdec.ptr183, i16** @ref2_line, align 8
  %175 = load i16, i16* %174, align 2
  %conv184 = zext i16 %175 to i32
  %mul185 = mul nsw i32 %conv182, %conv184
  store i32 %mul185, i32* %pixel2, align 4
  %176 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value186 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %176, i32 0, i32 156
  %177 = load i32, i32* %max_imgpel_value186, align 4
  %178 = load i32, i32* %pixel1, align 4
  %179 = load i32, i32* %pixel2, align 4
  %add187 = add nsw i32 %178, %179
  %180 = load i32, i32* %lround, align 4
  %add188 = add nsw i32 %add187, %180
  %181 = load i32, i32* %denom, align 4
  %shr189 = ashr i32 %add188, %181
  %182 = load i16, i16* @offsetBi, align 2
  %conv190 = sext i16 %182 to i32
  %add191 = add nsw i32 %shr189, %conv190
  %call192 = call i32 @iClip1(i32 %177, i32 %add191)
  store i32 %call192, i32* %weighted_pel, align 4
  %183 = load i16*, i16** @src_line, align 8
  %incdec.ptr193 = getelementptr inbounds i16, i16* %183, i32 1
  store i16* %incdec.ptr193, i16** @src_line, align 8
  %184 = load i16, i16* %183, align 2
  %conv194 = zext i16 %184 to i32
  %185 = load i32, i32* %weighted_pel, align 4
  %sub195 = sub nsw i32 %conv194, %185
  %186 = load i32*, i32** %d, align 8
  %incdec.ptr196 = getelementptr inbounds i32, i32* %186, i32 1
  store i32* %incdec.ptr196, i32** %d, align 8
  store i32 %sub195, i32* %186, align 4
  %187 = load i16, i16* @weight1, align 2
  %conv197 = sext i16 %187 to i32
  %188 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr198 = getelementptr inbounds i16, i16* %188, i32 1
  store i16* %incdec.ptr198, i16** @ref1_line, align 8
  %189 = load i16, i16* %188, align 2
  %conv199 = zext i16 %189 to i32
  %mul200 = mul nsw i32 %conv197, %conv199
  store i32 %mul200, i32* %pixel1, align 4
  %190 = load i16, i16* @weight2, align 2
  %conv201 = sext i16 %190 to i32
  %191 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr202 = getelementptr inbounds i16, i16* %191, i32 1
  store i16* %incdec.ptr202, i16** @ref2_line, align 8
  %192 = load i16, i16* %191, align 2
  %conv203 = zext i16 %192 to i32
  %mul204 = mul nsw i32 %conv201, %conv203
  store i32 %mul204, i32* %pixel2, align 4
  %193 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value205 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %193, i32 0, i32 156
  %194 = load i32, i32* %max_imgpel_value205, align 4
  %195 = load i32, i32* %pixel1, align 4
  %196 = load i32, i32* %pixel2, align 4
  %add206 = add nsw i32 %195, %196
  %197 = load i32, i32* %lround, align 4
  %add207 = add nsw i32 %add206, %197
  %198 = load i32, i32* %denom, align 4
  %shr208 = ashr i32 %add207, %198
  %199 = load i16, i16* @offsetBi, align 2
  %conv209 = sext i16 %199 to i32
  %add210 = add nsw i32 %shr208, %conv209
  %call211 = call i32 @iClip1(i32 %194, i32 %add210)
  store i32 %call211, i32* %weighted_pel, align 4
  %200 = load i16*, i16** @src_line, align 8
  %incdec.ptr212 = getelementptr inbounds i16, i16* %200, i32 1
  store i16* %incdec.ptr212, i16** @src_line, align 8
  %201 = load i16, i16* %200, align 2
  %conv213 = zext i16 %201 to i32
  %202 = load i32, i32* %weighted_pel, align 4
  %sub214 = sub nsw i32 %conv213, %202
  %203 = load i32*, i32** %d, align 8
  %incdec.ptr215 = getelementptr inbounds i32, i32* %203, i32 1
  store i32* %incdec.ptr215, i32** %d, align 8
  store i32 %sub214, i32* %203, align 4
  %204 = load i16, i16* @weight1, align 2
  %conv216 = sext i16 %204 to i32
  %205 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr217 = getelementptr inbounds i16, i16* %205, i32 1
  store i16* %incdec.ptr217, i16** @ref1_line, align 8
  %206 = load i16, i16* %205, align 2
  %conv218 = zext i16 %206 to i32
  %mul219 = mul nsw i32 %conv216, %conv218
  store i32 %mul219, i32* %pixel1, align 4
  %207 = load i16, i16* @weight2, align 2
  %conv220 = sext i16 %207 to i32
  %208 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr221 = getelementptr inbounds i16, i16* %208, i32 1
  store i16* %incdec.ptr221, i16** @ref2_line, align 8
  %209 = load i16, i16* %208, align 2
  %conv222 = zext i16 %209 to i32
  %mul223 = mul nsw i32 %conv220, %conv222
  store i32 %mul223, i32* %pixel2, align 4
  %210 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value224 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %210, i32 0, i32 156
  %211 = load i32, i32* %max_imgpel_value224, align 4
  %212 = load i32, i32* %pixel1, align 4
  %213 = load i32, i32* %pixel2, align 4
  %add225 = add nsw i32 %212, %213
  %214 = load i32, i32* %lround, align 4
  %add226 = add nsw i32 %add225, %214
  %215 = load i32, i32* %denom, align 4
  %shr227 = ashr i32 %add226, %215
  %216 = load i16, i16* @offsetBi, align 2
  %conv228 = sext i16 %216 to i32
  %add229 = add nsw i32 %shr227, %conv228
  %call230 = call i32 @iClip1(i32 %211, i32 %add229)
  store i32 %call230, i32* %weighted_pel, align 4
  %217 = load i16*, i16** @src_line, align 8
  %incdec.ptr231 = getelementptr inbounds i16, i16* %217, i32 1
  store i16* %incdec.ptr231, i16** @src_line, align 8
  %218 = load i16, i16* %217, align 2
  %conv232 = zext i16 %218 to i32
  %219 = load i32, i32* %weighted_pel, align 4
  %sub233 = sub nsw i32 %conv232, %219
  %220 = load i32*, i32** %d, align 8
  %incdec.ptr234 = getelementptr inbounds i32, i32* %220, i32 1
  store i32* %incdec.ptr234, i32** %d, align 8
  store i32 %sub233, i32* %220, align 4
  %221 = load i16, i16* @weight1, align 2
  %conv235 = sext i16 %221 to i32
  %222 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr236 = getelementptr inbounds i16, i16* %222, i32 1
  store i16* %incdec.ptr236, i16** @ref1_line, align 8
  %223 = load i16, i16* %222, align 2
  %conv237 = zext i16 %223 to i32
  %mul238 = mul nsw i32 %conv235, %conv237
  store i32 %mul238, i32* %pixel1, align 4
  %224 = load i16, i16* @weight2, align 2
  %conv239 = sext i16 %224 to i32
  %225 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr240 = getelementptr inbounds i16, i16* %225, i32 1
  store i16* %incdec.ptr240, i16** @ref2_line, align 8
  %226 = load i16, i16* %225, align 2
  %conv241 = zext i16 %226 to i32
  %mul242 = mul nsw i32 %conv239, %conv241
  store i32 %mul242, i32* %pixel2, align 4
  %227 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value243 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %227, i32 0, i32 156
  %228 = load i32, i32* %max_imgpel_value243, align 4
  %229 = load i32, i32* %pixel1, align 4
  %230 = load i32, i32* %pixel2, align 4
  %add244 = add nsw i32 %229, %230
  %231 = load i32, i32* %lround, align 4
  %add245 = add nsw i32 %add244, %231
  %232 = load i32, i32* %denom, align 4
  %shr246 = ashr i32 %add245, %232
  %233 = load i16, i16* @offsetBi, align 2
  %conv247 = sext i16 %233 to i32
  %add248 = add nsw i32 %shr246, %conv247
  %call249 = call i32 @iClip1(i32 %228, i32 %add248)
  store i32 %call249, i32* %weighted_pel, align 4
  %234 = load i16*, i16** @src_line, align 8
  %incdec.ptr250 = getelementptr inbounds i16, i16* %234, i32 1
  store i16* %incdec.ptr250, i16** @src_line, align 8
  %235 = load i16, i16* %234, align 2
  %conv251 = zext i16 %235 to i32
  %236 = load i32, i32* %weighted_pel, align 4
  %sub252 = sub nsw i32 %conv251, %236
  %237 = load i32*, i32** %d, align 8
  %incdec.ptr253 = getelementptr inbounds i32, i32* %237, i32 1
  store i32* %incdec.ptr253, i32** %d, align 8
  store i32 %sub252, i32* %237, align 4
  %238 = load i16, i16* @weight1, align 2
  %conv254 = sext i16 %238 to i32
  %239 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr255 = getelementptr inbounds i16, i16* %239, i32 1
  store i16* %incdec.ptr255, i16** @ref1_line, align 8
  %240 = load i16, i16* %239, align 2
  %conv256 = zext i16 %240 to i32
  %mul257 = mul nsw i32 %conv254, %conv256
  store i32 %mul257, i32* %pixel1, align 4
  %241 = load i16, i16* @weight2, align 2
  %conv258 = sext i16 %241 to i32
  %242 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr259 = getelementptr inbounds i16, i16* %242, i32 1
  store i16* %incdec.ptr259, i16** @ref2_line, align 8
  %243 = load i16, i16* %242, align 2
  %conv260 = zext i16 %243 to i32
  %mul261 = mul nsw i32 %conv258, %conv260
  store i32 %mul261, i32* %pixel2, align 4
  %244 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value262 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %244, i32 0, i32 156
  %245 = load i32, i32* %max_imgpel_value262, align 4
  %246 = load i32, i32* %pixel1, align 4
  %247 = load i32, i32* %pixel2, align 4
  %add263 = add nsw i32 %246, %247
  %248 = load i32, i32* %lround, align 4
  %add264 = add nsw i32 %add263, %248
  %249 = load i32, i32* %denom, align 4
  %shr265 = ashr i32 %add264, %249
  %250 = load i16, i16* @offsetBi, align 2
  %conv266 = sext i16 %250 to i32
  %add267 = add nsw i32 %shr265, %conv266
  %call268 = call i32 @iClip1(i32 %245, i32 %add267)
  store i32 %call268, i32* %weighted_pel, align 4
  %251 = load i16*, i16** @src_line, align 8
  %incdec.ptr269 = getelementptr inbounds i16, i16* %251, i32 1
  store i16* %incdec.ptr269, i16** @src_line, align 8
  %252 = load i16, i16* %251, align 2
  %conv270 = zext i16 %252 to i32
  %253 = load i32, i32* %weighted_pel, align 4
  %sub271 = sub nsw i32 %conv270, %253
  %254 = load i32*, i32** %d, align 8
  %incdec.ptr272 = getelementptr inbounds i32, i32* %254, i32 1
  store i32* %incdec.ptr272, i32** %d, align 8
  store i32 %sub271, i32* %254, align 4
  %255 = load i16, i16* @weight1, align 2
  %conv273 = sext i16 %255 to i32
  %256 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr274 = getelementptr inbounds i16, i16* %256, i32 1
  store i16* %incdec.ptr274, i16** @ref1_line, align 8
  %257 = load i16, i16* %256, align 2
  %conv275 = zext i16 %257 to i32
  %mul276 = mul nsw i32 %conv273, %conv275
  store i32 %mul276, i32* %pixel1, align 4
  %258 = load i16, i16* @weight2, align 2
  %conv277 = sext i16 %258 to i32
  %259 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr278 = getelementptr inbounds i16, i16* %259, i32 1
  store i16* %incdec.ptr278, i16** @ref2_line, align 8
  %260 = load i16, i16* %259, align 2
  %conv279 = zext i16 %260 to i32
  %mul280 = mul nsw i32 %conv277, %conv279
  store i32 %mul280, i32* %pixel2, align 4
  %261 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value281 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %261, i32 0, i32 156
  %262 = load i32, i32* %max_imgpel_value281, align 4
  %263 = load i32, i32* %pixel1, align 4
  %264 = load i32, i32* %pixel2, align 4
  %add282 = add nsw i32 %263, %264
  %265 = load i32, i32* %lround, align 4
  %add283 = add nsw i32 %add282, %265
  %266 = load i32, i32* %denom, align 4
  %shr284 = ashr i32 %add283, %266
  %267 = load i16, i16* @offsetBi, align 2
  %conv285 = sext i16 %267 to i32
  %add286 = add nsw i32 %shr284, %conv285
  %call287 = call i32 @iClip1(i32 %262, i32 %add286)
  store i32 %call287, i32* %weighted_pel, align 4
  %268 = load i16*, i16** @src_line, align 8
  %269 = load i16, i16* %268, align 2
  %conv288 = zext i16 %269 to i32
  %270 = load i32, i32* %weighted_pel, align 4
  %sub289 = sub nsw i32 %conv288, %270
  %271 = load i32*, i32** %d, align 8
  %incdec.ptr290 = getelementptr inbounds i32, i32* %271, i32 1
  store i32* %incdec.ptr290, i32** %d, align 8
  store i32 %sub289, i32* %271, align 4
  %272 = load i32, i32* %pad_size_x, align 4
  %273 = load i16*, i16** @ref1_line, align 8
  %idx.ext291 = sext i32 %272 to i64
  %add.ptr292 = getelementptr inbounds i16, i16* %273, i64 %idx.ext291
  store i16* %add.ptr292, i16** @ref1_line, align 8
  %274 = load i32, i32* %pad_size_x, align 4
  %275 = load i16*, i16** @ref2_line, align 8
  %idx.ext293 = sext i32 %274 to i64
  %add.ptr294 = getelementptr inbounds i16, i16* %275, i64 %idx.ext293
  store i16* %add.ptr294, i16** @ref2_line, align 8
  %276 = load i32, i32* %src_size_x, align 4
  %277 = load i16*, i16** @src_line, align 8
  %idx.ext295 = sext i32 %276 to i64
  %add.ptr296 = getelementptr inbounds i16, i16* %277, i64 %idx.ext295
  store i16* %add.ptr296, i16** @src_line, align 8
  br label %for.inc.297

for.inc.297:                                      ; preds = %for.body.139
  %278 = load i32, i32* %y4, align 4
  %inc298 = add nsw i32 %278, 1
  store i32 %inc298, i32* %y4, align 4
  br label %for.cond.136

for.end.299:                                      ; preds = %for.cond.136
  %call300 = call i32 @HadamardSAD8x8(i32* getelementptr inbounds ([256 x i32], [256 x i32]* @diff, i32 0, i32 0))
  %279 = load i32, i32* %mcost, align 4
  %add301 = add nsw i32 %279, %call300
  store i32 %add301, i32* %mcost, align 4
  %280 = load i32, i32* %min_mcost.addr, align 4
  %cmp302 = icmp sgt i32 %add301, %280
  br i1 %cmp302, label %if.then.304, label %if.end.305

if.then.304:                                      ; preds = %for.end.299
  %281 = load i32, i32* %mcost, align 4
  store i32 %281, i32* %retval
  br label %return

if.end.305:                                       ; preds = %for.end.299
  br label %for.inc.306

for.inc.306:                                      ; preds = %if.end.305
  %282 = load i32, i32* %x, align 4
  %add307 = add nsw i32 %282, 8
  store i32 %add307, i32* %x, align 4
  br label %for.cond.120

for.end.308:                                      ; preds = %for.cond.120
  %283 = load i32, i32* %src_size_mul, align 4
  %284 = load i16*, i16** %src_tmp, align 8
  %idx.ext309 = sext i32 %283 to i64
  %add.ptr310 = getelementptr inbounds i16, i16* %284, i64 %idx.ext309
  store i16* %add.ptr310, i16** %src_tmp, align 8
  br label %for.inc.311

for.inc.311:                                      ; preds = %for.end.308
  %285 = load i32, i32* %y, align 4
  %add312 = add nsw i32 %285, 8
  store i32 %add312, i32* %y, align 4
  br label %for.cond.112

for.end.313:                                      ; preds = %for.cond.112
  br label %if.end.314

if.end.314:                                       ; preds = %for.end.313, %for.end.108
  %286 = load i32, i32* %mcost, align 4
  store i32 %286, i32* %retval
  br label %return

return:                                           ; preds = %if.end.314, %if.then.304, %if.then.100
  %287 = load i32, i32* %retval
  ret i32 %287
}

; Function Attrs: nounwind uwtable
define i32 @computeSSE(i16* %src_pic, i32 %blocksize_y, i32 %blocksize_x, i32 %min_mcost, i32 %cand_x, i32 %cand_y) #0 {
entry:
  %retval = alloca i32, align 4
  %src_pic.addr = alloca i16*, align 8
  %blocksize_y.addr = alloca i32, align 4
  %blocksize_x.addr = alloca i32, align 4
  %min_mcost.addr = alloca i32, align 4
  %cand_x.addr = alloca i32, align 4
  %cand_y.addr = alloca i32, align 4
  %mcost = alloca i32, align 4
  %y = alloca i32, align 4
  %x4 = alloca i32, align 4
  %byte_sse = alloca i32*, align 8
  %pad_size_x = alloca i32, align 4
  %blocksize_x_c2 = alloca i32, align 4
  %blocksize_y_c = alloca i32, align 4
  %cr_pad_size_x = alloca i32, align 4
  %k = alloca i32, align 4
  store i16* %src_pic, i16** %src_pic.addr, align 8
  store i32 %blocksize_y, i32* %blocksize_y.addr, align 4
  store i32 %blocksize_x, i32* %blocksize_x.addr, align 4
  store i32 %min_mcost, i32* %min_mcost.addr, align 4
  store i32 %cand_x, i32* %cand_x.addr, align 4
  store i32 %cand_y, i32* %cand_y.addr, align 4
  store i32 0, i32* %mcost, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 62
  %1 = load i32*, i32** %quad, align 8
  store i32* %1, i32** %byte_sse, align 8
  %2 = load i32, i32* @img_padded_size_x, align 4
  %3 = load i32, i32* %blocksize_x.addr, align 4
  %sub = sub nsw i32 %2, %3
  store i32 %sub, i32* %pad_size_x, align 4
  %4 = load i16*, i16** %src_pic.addr, align 8
  store i16* %4, i16** @src_line, align 8
  %5 = load i32, i32* @ref_access_method, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_line, i32 0, i64 %idxprom
  %6 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx, align 8
  %7 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 0), align 8
  %8 = load i32, i32* %cand_y.addr, align 4
  %9 = load i32, i32* %cand_x.addr, align 4
  %call = call i16* %6(i16**** %7, i32 %8, i32 %9)
  store i16* %call, i16** @ref_line, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.36, %entry
  %10 = load i32, i32* %y, align 4
  %11 = load i32, i32* %blocksize_y.addr, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end.37

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x4, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %12 = load i32, i32* %x4, align 4
  %13 = load i32, i32* %blocksize_x.addr, align 4
  %cmp2 = icmp slt i32 %12, %13
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %14 = load i16*, i16** @src_line, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %14, i32 1
  store i16* %incdec.ptr, i16** @src_line, align 8
  %15 = load i16, i16* %14, align 2
  %conv = zext i16 %15 to i32
  %16 = load i16*, i16** @ref_line, align 8
  %incdec.ptr4 = getelementptr inbounds i16, i16* %16, i32 1
  store i16* %incdec.ptr4, i16** @ref_line, align 8
  %17 = load i16, i16* %16, align 2
  %conv5 = zext i16 %17 to i32
  %sub6 = sub nsw i32 %conv, %conv5
  %idxprom7 = sext i32 %sub6 to i64
  %18 = load i32*, i32** %byte_sse, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %18, i64 %idxprom7
  %19 = load i32, i32* %arrayidx8, align 4
  %20 = load i32, i32* %mcost, align 4
  %add = add nsw i32 %20, %19
  store i32 %add, i32* %mcost, align 4
  %21 = load i16*, i16** @src_line, align 8
  %incdec.ptr9 = getelementptr inbounds i16, i16* %21, i32 1
  store i16* %incdec.ptr9, i16** @src_line, align 8
  %22 = load i16, i16* %21, align 2
  %conv10 = zext i16 %22 to i32
  %23 = load i16*, i16** @ref_line, align 8
  %incdec.ptr11 = getelementptr inbounds i16, i16* %23, i32 1
  store i16* %incdec.ptr11, i16** @ref_line, align 8
  %24 = load i16, i16* %23, align 2
  %conv12 = zext i16 %24 to i32
  %sub13 = sub nsw i32 %conv10, %conv12
  %idxprom14 = sext i32 %sub13 to i64
  %25 = load i32*, i32** %byte_sse, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %25, i64 %idxprom14
  %26 = load i32, i32* %arrayidx15, align 4
  %27 = load i32, i32* %mcost, align 4
  %add16 = add nsw i32 %27, %26
  store i32 %add16, i32* %mcost, align 4
  %28 = load i16*, i16** @src_line, align 8
  %incdec.ptr17 = getelementptr inbounds i16, i16* %28, i32 1
  store i16* %incdec.ptr17, i16** @src_line, align 8
  %29 = load i16, i16* %28, align 2
  %conv18 = zext i16 %29 to i32
  %30 = load i16*, i16** @ref_line, align 8
  %incdec.ptr19 = getelementptr inbounds i16, i16* %30, i32 1
  store i16* %incdec.ptr19, i16** @ref_line, align 8
  %31 = load i16, i16* %30, align 2
  %conv20 = zext i16 %31 to i32
  %sub21 = sub nsw i32 %conv18, %conv20
  %idxprom22 = sext i32 %sub21 to i64
  %32 = load i32*, i32** %byte_sse, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %32, i64 %idxprom22
  %33 = load i32, i32* %arrayidx23, align 4
  %34 = load i32, i32* %mcost, align 4
  %add24 = add nsw i32 %34, %33
  store i32 %add24, i32* %mcost, align 4
  %35 = load i16*, i16** @src_line, align 8
  %incdec.ptr25 = getelementptr inbounds i16, i16* %35, i32 1
  store i16* %incdec.ptr25, i16** @src_line, align 8
  %36 = load i16, i16* %35, align 2
  %conv26 = zext i16 %36 to i32
  %37 = load i16*, i16** @ref_line, align 8
  %incdec.ptr27 = getelementptr inbounds i16, i16* %37, i32 1
  store i16* %incdec.ptr27, i16** @ref_line, align 8
  %38 = load i16, i16* %37, align 2
  %conv28 = zext i16 %38 to i32
  %sub29 = sub nsw i32 %conv26, %conv28
  %idxprom30 = sext i32 %sub29 to i64
  %39 = load i32*, i32** %byte_sse, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %39, i64 %idxprom30
  %40 = load i32, i32* %arrayidx31, align 4
  %41 = load i32, i32* %mcost, align 4
  %add32 = add nsw i32 %41, %40
  store i32 %add32, i32* %mcost, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %42 = load i32, i32* %x4, align 4
  %add33 = add nsw i32 %42, 4
  store i32 %add33, i32* %x4, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %43 = load i32, i32* %mcost, align 4
  %44 = load i32, i32* %min_mcost.addr, align 4
  %cmp34 = icmp sge i32 %43, %44
  br i1 %cmp34, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %45 = load i32, i32* %mcost, align 4
  store i32 %45, i32* %retval
  br label %return

if.end:                                           ; preds = %for.end
  %46 = load i32, i32* %pad_size_x, align 4
  %47 = load i16*, i16** @ref_line, align 8
  %idx.ext = sext i32 %46 to i64
  %add.ptr = getelementptr inbounds i16, i16* %47, i64 %idx.ext
  store i16* %add.ptr, i16** @ref_line, align 8
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end
  %48 = load i32, i32* %y, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end.37:                                       ; preds = %for.cond
  %49 = load i32, i32* @ChromaMEEnable, align 4
  %tobool = icmp ne i32 %49, 0
  br i1 %tobool, label %if.then.38, label %if.end.91

if.then.38:                                       ; preds = %for.end.37
  %50 = load i32, i32* %blocksize_x.addr, align 4
  %51 = load i32, i32* @shift_cr_x, align 4
  %shr = ashr i32 %50, %51
  store i32 %shr, i32* %blocksize_x_c2, align 4
  %52 = load i32, i32* %blocksize_y.addr, align 4
  %53 = load i32, i32* @shift_cr_y, align 4
  %shr39 = ashr i32 %52, %53
  store i32 %shr39, i32* %blocksize_y_c, align 4
  %54 = load i32, i32* @img_cr_padded_size_x, align 4
  %55 = load i32, i32* %blocksize_x_c2, align 4
  %sub40 = sub nsw i32 %54, %55
  store i32 %sub40, i32* %cr_pad_size_x, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.88, %if.then.38
  %56 = load i32, i32* %k, align 4
  %cmp42 = icmp slt i32 %56, 2
  br i1 %cmp42, label %for.body.44, label %for.end.90

for.body.44:                                      ; preds = %for.cond.41
  %57 = load i16*, i16** %src_pic.addr, align 8
  %58 = load i32, i32* %k, align 4
  %shl = shl i32 256, %58
  %idx.ext45 = sext i32 %shl to i64
  %add.ptr46 = getelementptr inbounds i16, i16* %57, i64 %idx.ext45
  store i16* %add.ptr46, i16** @src_line, align 8
  %59 = load i32, i32* @ref_access_method, align 4
  %idxprom47 = sext i32 %59 to i64
  %arrayidx48 = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_crline, i32 0, i64 %idxprom47
  %60 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx48, align 8
  %61 = load i32, i32* %k, align 4
  %idxprom49 = sext i32 %61 to i64
  %arrayidx50 = getelementptr inbounds [2 x i16****], [2 x i16****]* getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 1), i32 0, i64 %idxprom49
  %62 = load i16****, i16***** %arrayidx50, align 8
  %63 = load i32, i32* %cand_y.addr, align 4
  %64 = load i32, i32* %cand_x.addr, align 4
  %call51 = call i16* %60(i16**** %62, i32 %63, i32 %64)
  store i16* %call51, i16** @ref_line, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.85, %for.body.44
  %65 = load i32, i32* %y, align 4
  %66 = load i32, i32* %blocksize_y_c, align 4
  %cmp53 = icmp slt i32 %65, %66
  br i1 %cmp53, label %for.body.55, label %for.end.87

for.body.55:                                      ; preds = %for.cond.52
  store i32 0, i32* %x4, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.76, %for.body.55
  %67 = load i32, i32* %x4, align 4
  %68 = load i32, i32* %blocksize_x_c2, align 4
  %cmp57 = icmp slt i32 %67, %68
  br i1 %cmp57, label %for.body.59, label %for.end.78

for.body.59:                                      ; preds = %for.cond.56
  %69 = load i16*, i16** @src_line, align 8
  %incdec.ptr60 = getelementptr inbounds i16, i16* %69, i32 1
  store i16* %incdec.ptr60, i16** @src_line, align 8
  %70 = load i16, i16* %69, align 2
  %conv61 = zext i16 %70 to i32
  %71 = load i16*, i16** @ref_line, align 8
  %incdec.ptr62 = getelementptr inbounds i16, i16* %71, i32 1
  store i16* %incdec.ptr62, i16** @ref_line, align 8
  %72 = load i16, i16* %71, align 2
  %conv63 = zext i16 %72 to i32
  %sub64 = sub nsw i32 %conv61, %conv63
  %idxprom65 = sext i32 %sub64 to i64
  %73 = load i32*, i32** %byte_sse, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %73, i64 %idxprom65
  %74 = load i32, i32* %arrayidx66, align 4
  %75 = load i32, i32* %mcost, align 4
  %add67 = add nsw i32 %75, %74
  store i32 %add67, i32* %mcost, align 4
  %76 = load i16*, i16** @src_line, align 8
  %incdec.ptr68 = getelementptr inbounds i16, i16* %76, i32 1
  store i16* %incdec.ptr68, i16** @src_line, align 8
  %77 = load i16, i16* %76, align 2
  %conv69 = zext i16 %77 to i32
  %78 = load i16*, i16** @ref_line, align 8
  %incdec.ptr70 = getelementptr inbounds i16, i16* %78, i32 1
  store i16* %incdec.ptr70, i16** @ref_line, align 8
  %79 = load i16, i16* %78, align 2
  %conv71 = zext i16 %79 to i32
  %sub72 = sub nsw i32 %conv69, %conv71
  %idxprom73 = sext i32 %sub72 to i64
  %80 = load i32*, i32** %byte_sse, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %80, i64 %idxprom73
  %81 = load i32, i32* %arrayidx74, align 4
  %82 = load i32, i32* %mcost, align 4
  %add75 = add nsw i32 %82, %81
  store i32 %add75, i32* %mcost, align 4
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.59
  %83 = load i32, i32* %x4, align 4
  %inc77 = add nsw i32 %83, 1
  store i32 %inc77, i32* %x4, align 4
  br label %for.cond.56

for.end.78:                                       ; preds = %for.cond.56
  %84 = load i32, i32* %mcost, align 4
  %85 = load i32, i32* %min_mcost.addr, align 4
  %cmp79 = icmp sge i32 %84, %85
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %for.end.78
  %86 = load i32, i32* %mcost, align 4
  store i32 %86, i32* %retval
  br label %return

if.end.82:                                        ; preds = %for.end.78
  %87 = load i32, i32* %cr_pad_size_x, align 4
  %88 = load i16*, i16** @ref_line, align 8
  %idx.ext83 = sext i32 %87 to i64
  %add.ptr84 = getelementptr inbounds i16, i16* %88, i64 %idx.ext83
  store i16* %add.ptr84, i16** @ref_line, align 8
  br label %for.inc.85

for.inc.85:                                       ; preds = %if.end.82
  %89 = load i32, i32* %y, align 4
  %inc86 = add nsw i32 %89, 1
  store i32 %inc86, i32* %y, align 4
  br label %for.cond.52

for.end.87:                                       ; preds = %for.cond.52
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.end.87
  %90 = load i32, i32* %k, align 4
  %inc89 = add nsw i32 %90, 1
  store i32 %inc89, i32* %k, align 4
  br label %for.cond.41

for.end.90:                                       ; preds = %for.cond.41
  br label %if.end.91

if.end.91:                                        ; preds = %for.end.90, %for.end.37
  %91 = load i32, i32* %mcost, align 4
  store i32 %91, i32* %retval
  br label %return

return:                                           ; preds = %if.end.91, %if.then.81, %if.then
  %92 = load i32, i32* %retval
  ret i32 %92
}

; Function Attrs: nounwind uwtable
define i32 @computeSSEWP(i16* %src_pic, i32 %blocksize_y, i32 %blocksize_x, i32 %min_mcost, i32 %cand_x, i32 %cand_y) #0 {
entry:
  %retval = alloca i32, align 4
  %src_pic.addr = alloca i16*, align 8
  %blocksize_y.addr = alloca i32, align 4
  %blocksize_x.addr = alloca i32, align 4
  %min_mcost.addr = alloca i32, align 4
  %cand_x.addr = alloca i32, align 4
  %cand_y.addr = alloca i32, align 4
  %mcost = alloca i32, align 4
  %y = alloca i32, align 4
  %x4 = alloca i32, align 4
  %weighted_pel = alloca i32, align 4
  %byte_sse = alloca i32*, align 8
  %pad_size_x = alloca i32, align 4
  %blocksize_x_c2 = alloca i32, align 4
  %blocksize_y_c = alloca i32, align 4
  %cr_pad_size_x = alloca i32, align 4
  %k = alloca i32, align 4
  store i16* %src_pic, i16** %src_pic.addr, align 8
  store i32 %blocksize_y, i32* %blocksize_y.addr, align 4
  store i32 %blocksize_x, i32* %blocksize_x.addr, align 4
  store i32 %min_mcost, i32* %min_mcost.addr, align 4
  store i32 %cand_x, i32* %cand_x.addr, align 4
  store i32 %cand_y, i32* %cand_y.addr, align 4
  store i32 0, i32* %mcost, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 62
  %1 = load i32*, i32** %quad, align 8
  store i32* %1, i32** %byte_sse, align 8
  %2 = load i32, i32* @img_padded_size_x, align 4
  %3 = load i32, i32* %blocksize_x.addr, align 4
  %sub = sub nsw i32 %2, %3
  store i32 %sub, i32* %pad_size_x, align 4
  %4 = load i16*, i16** %src_pic.addr, align 8
  store i16* %4, i16** @src_line, align 8
  %5 = load i32, i32* @ref_access_method, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_line, i32 0, i64 %idxprom
  %6 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx, align 8
  %7 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 0), align 8
  %8 = load i32, i32* %cand_y.addr, align 4
  %9 = load i32, i32* %cand_x.addr, align 4
  %call = call i16* %6(i16**** %7, i32 %8, i32 %9)
  store i16* %call, i16** @ref_line, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.57, %entry
  %10 = load i32, i32* %y, align 4
  %11 = load i32, i32* %blocksize_y.addr, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end.58

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x4, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %12 = load i32, i32* %x4, align 4
  %13 = load i32, i32* %blocksize_x.addr, align 4
  %cmp2 = icmp slt i32 %12, %13
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 156
  %15 = load i32, i32* %max_imgpel_value, align 4
  %16 = load i32, i32* @weight_luma, align 4
  %17 = load i16*, i16** @ref_line, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %17, i32 1
  store i16* %incdec.ptr, i16** @ref_line, align 8
  %18 = load i16, i16* %17, align 2
  %conv = zext i16 %18 to i32
  %mul = mul nsw i32 %16, %conv
  %19 = load i32, i32* @wp_luma_round, align 4
  %add = add nsw i32 %mul, %19
  %20 = load i32, i32* @luma_log_weight_denom, align 4
  %shr = ashr i32 %add, %20
  %21 = load i32, i32* @offset_luma, align 4
  %add4 = add nsw i32 %shr, %21
  %call5 = call i32 @iClip1(i32 %15, i32 %add4)
  store i32 %call5, i32* %weighted_pel, align 4
  %22 = load i16*, i16** @src_line, align 8
  %incdec.ptr6 = getelementptr inbounds i16, i16* %22, i32 1
  store i16* %incdec.ptr6, i16** @src_line, align 8
  %23 = load i16, i16* %22, align 2
  %conv7 = zext i16 %23 to i32
  %24 = load i32, i32* %weighted_pel, align 4
  %sub8 = sub nsw i32 %conv7, %24
  %idxprom9 = sext i32 %sub8 to i64
  %25 = load i32*, i32** %byte_sse, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %25, i64 %idxprom9
  %26 = load i32, i32* %arrayidx10, align 4
  %27 = load i32, i32* %mcost, align 4
  %add11 = add nsw i32 %27, %26
  store i32 %add11, i32* %mcost, align 4
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 156
  %29 = load i32, i32* %max_imgpel_value12, align 4
  %30 = load i32, i32* @weight_luma, align 4
  %31 = load i16*, i16** @ref_line, align 8
  %incdec.ptr13 = getelementptr inbounds i16, i16* %31, i32 1
  store i16* %incdec.ptr13, i16** @ref_line, align 8
  %32 = load i16, i16* %31, align 2
  %conv14 = zext i16 %32 to i32
  %mul15 = mul nsw i32 %30, %conv14
  %33 = load i32, i32* @wp_luma_round, align 4
  %add16 = add nsw i32 %mul15, %33
  %34 = load i32, i32* @luma_log_weight_denom, align 4
  %shr17 = ashr i32 %add16, %34
  %35 = load i32, i32* @offset_luma, align 4
  %add18 = add nsw i32 %shr17, %35
  %call19 = call i32 @iClip1(i32 %29, i32 %add18)
  store i32 %call19, i32* %weighted_pel, align 4
  %36 = load i16*, i16** @src_line, align 8
  %incdec.ptr20 = getelementptr inbounds i16, i16* %36, i32 1
  store i16* %incdec.ptr20, i16** @src_line, align 8
  %37 = load i16, i16* %36, align 2
  %conv21 = zext i16 %37 to i32
  %38 = load i32, i32* %weighted_pel, align 4
  %sub22 = sub nsw i32 %conv21, %38
  %idxprom23 = sext i32 %sub22 to i64
  %39 = load i32*, i32** %byte_sse, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %39, i64 %idxprom23
  %40 = load i32, i32* %arrayidx24, align 4
  %41 = load i32, i32* %mcost, align 4
  %add25 = add nsw i32 %41, %40
  store i32 %add25, i32* %mcost, align 4
  %42 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value26 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %42, i32 0, i32 156
  %43 = load i32, i32* %max_imgpel_value26, align 4
  %44 = load i32, i32* @weight_luma, align 4
  %45 = load i16*, i16** @ref_line, align 8
  %incdec.ptr27 = getelementptr inbounds i16, i16* %45, i32 1
  store i16* %incdec.ptr27, i16** @ref_line, align 8
  %46 = load i16, i16* %45, align 2
  %conv28 = zext i16 %46 to i32
  %mul29 = mul nsw i32 %44, %conv28
  %47 = load i32, i32* @wp_luma_round, align 4
  %add30 = add nsw i32 %mul29, %47
  %48 = load i32, i32* @luma_log_weight_denom, align 4
  %shr31 = ashr i32 %add30, %48
  %49 = load i32, i32* @offset_luma, align 4
  %add32 = add nsw i32 %shr31, %49
  %call33 = call i32 @iClip1(i32 %43, i32 %add32)
  store i32 %call33, i32* %weighted_pel, align 4
  %50 = load i16*, i16** @src_line, align 8
  %incdec.ptr34 = getelementptr inbounds i16, i16* %50, i32 1
  store i16* %incdec.ptr34, i16** @src_line, align 8
  %51 = load i16, i16* %50, align 2
  %conv35 = zext i16 %51 to i32
  %52 = load i32, i32* %weighted_pel, align 4
  %sub36 = sub nsw i32 %conv35, %52
  %idxprom37 = sext i32 %sub36 to i64
  %53 = load i32*, i32** %byte_sse, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %53, i64 %idxprom37
  %54 = load i32, i32* %arrayidx38, align 4
  %55 = load i32, i32* %mcost, align 4
  %add39 = add nsw i32 %55, %54
  store i32 %add39, i32* %mcost, align 4
  %56 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value40 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %56, i32 0, i32 156
  %57 = load i32, i32* %max_imgpel_value40, align 4
  %58 = load i32, i32* @weight_luma, align 4
  %59 = load i16*, i16** @ref_line, align 8
  %incdec.ptr41 = getelementptr inbounds i16, i16* %59, i32 1
  store i16* %incdec.ptr41, i16** @ref_line, align 8
  %60 = load i16, i16* %59, align 2
  %conv42 = zext i16 %60 to i32
  %mul43 = mul nsw i32 %58, %conv42
  %61 = load i32, i32* @wp_luma_round, align 4
  %add44 = add nsw i32 %mul43, %61
  %62 = load i32, i32* @luma_log_weight_denom, align 4
  %shr45 = ashr i32 %add44, %62
  %63 = load i32, i32* @offset_luma, align 4
  %add46 = add nsw i32 %shr45, %63
  %call47 = call i32 @iClip1(i32 %57, i32 %add46)
  store i32 %call47, i32* %weighted_pel, align 4
  %64 = load i16*, i16** @src_line, align 8
  %incdec.ptr48 = getelementptr inbounds i16, i16* %64, i32 1
  store i16* %incdec.ptr48, i16** @src_line, align 8
  %65 = load i16, i16* %64, align 2
  %conv49 = zext i16 %65 to i32
  %66 = load i32, i32* %weighted_pel, align 4
  %sub50 = sub nsw i32 %conv49, %66
  %idxprom51 = sext i32 %sub50 to i64
  %67 = load i32*, i32** %byte_sse, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %67, i64 %idxprom51
  %68 = load i32, i32* %arrayidx52, align 4
  %69 = load i32, i32* %mcost, align 4
  %add53 = add nsw i32 %69, %68
  store i32 %add53, i32* %mcost, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %70 = load i32, i32* %x4, align 4
  %add54 = add nsw i32 %70, 4
  store i32 %add54, i32* %x4, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %71 = load i32, i32* %mcost, align 4
  %72 = load i32, i32* %min_mcost.addr, align 4
  %cmp55 = icmp sge i32 %71, %72
  br i1 %cmp55, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %73 = load i32, i32* %mcost, align 4
  store i32 %73, i32* %retval
  br label %return

if.end:                                           ; preds = %for.end
  %74 = load i32, i32* %pad_size_x, align 4
  %75 = load i16*, i16** @ref_line, align 8
  %idx.ext = sext i32 %74 to i64
  %add.ptr = getelementptr inbounds i16, i16* %75, i64 %idx.ext
  store i16* %add.ptr, i16** @ref_line, align 8
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end
  %76 = load i32, i32* %y, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end.58:                                       ; preds = %for.cond
  %77 = load i32, i32* @ChromaMEEnable, align 4
  %tobool = icmp ne i32 %77, 0
  br i1 %tobool, label %if.then.59, label %if.end.132

if.then.59:                                       ; preds = %for.end.58
  %78 = load i32, i32* %blocksize_x.addr, align 4
  %79 = load i32, i32* @shift_cr_x, align 4
  %shr60 = ashr i32 %78, %79
  store i32 %shr60, i32* %blocksize_x_c2, align 4
  %80 = load i32, i32* %blocksize_y.addr, align 4
  %81 = load i32, i32* @shift_cr_y, align 4
  %shr61 = ashr i32 %80, %81
  store i32 %shr61, i32* %blocksize_y_c, align 4
  %82 = load i32, i32* @img_cr_padded_size_x, align 4
  %83 = load i32, i32* %blocksize_x_c2, align 4
  %sub62 = sub nsw i32 %82, %83
  store i32 %sub62, i32* %cr_pad_size_x, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.129, %if.then.59
  %84 = load i32, i32* %k, align 4
  %cmp64 = icmp slt i32 %84, 2
  br i1 %cmp64, label %for.body.66, label %for.end.131

for.body.66:                                      ; preds = %for.cond.63
  %85 = load i16*, i16** %src_pic.addr, align 8
  %86 = load i32, i32* %k, align 4
  %shl = shl i32 256, %86
  %idx.ext67 = sext i32 %shl to i64
  %add.ptr68 = getelementptr inbounds i16, i16* %85, i64 %idx.ext67
  store i16* %add.ptr68, i16** @src_line, align 8
  %87 = load i32, i32* @ref_access_method, align 4
  %idxprom69 = sext i32 %87 to i64
  %arrayidx70 = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_crline, i32 0, i64 %idxprom69
  %88 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx70, align 8
  %89 = load i32, i32* %k, align 4
  %idxprom71 = sext i32 %89 to i64
  %arrayidx72 = getelementptr inbounds [2 x i16****], [2 x i16****]* getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 1), i32 0, i64 %idxprom71
  %90 = load i16****, i16***** %arrayidx72, align 8
  %91 = load i32, i32* %cand_y.addr, align 4
  %92 = load i32, i32* %cand_x.addr, align 4
  %call73 = call i16* %88(i16**** %90, i32 %91, i32 %92)
  store i16* %call73, i16** @ref_line, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.126, %for.body.66
  %93 = load i32, i32* %y, align 4
  %94 = load i32, i32* %blocksize_y_c, align 4
  %cmp75 = icmp slt i32 %93, %94
  br i1 %cmp75, label %for.body.77, label %for.end.128

for.body.77:                                      ; preds = %for.cond.74
  store i32 0, i32* %x4, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.117, %for.body.77
  %95 = load i32, i32* %x4, align 4
  %96 = load i32, i32* %blocksize_x_c2, align 4
  %cmp79 = icmp slt i32 %95, %96
  br i1 %cmp79, label %for.body.81, label %for.end.119

for.body.81:                                      ; preds = %for.cond.78
  %97 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %97, i32 0, i32 157
  %98 = load i32, i32* %max_imgpel_value_uv, align 4
  %99 = load i32, i32* %k, align 4
  %idxprom82 = sext i32 %99 to i64
  %arrayidx83 = getelementptr inbounds [2 x i32], [2 x i32]* @weight_cr, i32 0, i64 %idxprom82
  %100 = load i32, i32* %arrayidx83, align 4
  %101 = load i16*, i16** @ref_line, align 8
  %incdec.ptr84 = getelementptr inbounds i16, i16* %101, i32 1
  store i16* %incdec.ptr84, i16** @ref_line, align 8
  %102 = load i16, i16* %101, align 2
  %conv85 = zext i16 %102 to i32
  %mul86 = mul nsw i32 %100, %conv85
  %103 = load i32, i32* @wp_chroma_round, align 4
  %add87 = add nsw i32 %mul86, %103
  %104 = load i32, i32* @chroma_log_weight_denom, align 4
  %shr88 = ashr i32 %add87, %104
  %105 = load i32, i32* %k, align 4
  %idxprom89 = sext i32 %105 to i64
  %arrayidx90 = getelementptr inbounds [2 x i32], [2 x i32]* @offset_cr, i32 0, i64 %idxprom89
  %106 = load i32, i32* %arrayidx90, align 4
  %add91 = add nsw i32 %shr88, %106
  %call92 = call i32 @iClip1(i32 %98, i32 %add91)
  store i32 %call92, i32* %weighted_pel, align 4
  %107 = load i16*, i16** @src_line, align 8
  %incdec.ptr93 = getelementptr inbounds i16, i16* %107, i32 1
  store i16* %incdec.ptr93, i16** @src_line, align 8
  %108 = load i16, i16* %107, align 2
  %conv94 = zext i16 %108 to i32
  %109 = load i32, i32* %weighted_pel, align 4
  %sub95 = sub nsw i32 %conv94, %109
  %idxprom96 = sext i32 %sub95 to i64
  %110 = load i32*, i32** %byte_sse, align 8
  %arrayidx97 = getelementptr inbounds i32, i32* %110, i64 %idxprom96
  %111 = load i32, i32* %arrayidx97, align 4
  %112 = load i32, i32* %mcost, align 4
  %add98 = add nsw i32 %112, %111
  store i32 %add98, i32* %mcost, align 4
  %113 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv99 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %113, i32 0, i32 157
  %114 = load i32, i32* %max_imgpel_value_uv99, align 4
  %115 = load i32, i32* %k, align 4
  %idxprom100 = sext i32 %115 to i64
  %arrayidx101 = getelementptr inbounds [2 x i32], [2 x i32]* @weight_cr, i32 0, i64 %idxprom100
  %116 = load i32, i32* %arrayidx101, align 4
  %117 = load i16*, i16** @ref_line, align 8
  %incdec.ptr102 = getelementptr inbounds i16, i16* %117, i32 1
  store i16* %incdec.ptr102, i16** @ref_line, align 8
  %118 = load i16, i16* %117, align 2
  %conv103 = zext i16 %118 to i32
  %mul104 = mul nsw i32 %116, %conv103
  %119 = load i32, i32* @wp_chroma_round, align 4
  %add105 = add nsw i32 %mul104, %119
  %120 = load i32, i32* @chroma_log_weight_denom, align 4
  %shr106 = ashr i32 %add105, %120
  %121 = load i32, i32* %k, align 4
  %idxprom107 = sext i32 %121 to i64
  %arrayidx108 = getelementptr inbounds [2 x i32], [2 x i32]* @offset_cr, i32 0, i64 %idxprom107
  %122 = load i32, i32* %arrayidx108, align 4
  %add109 = add nsw i32 %shr106, %122
  %call110 = call i32 @iClip1(i32 %114, i32 %add109)
  store i32 %call110, i32* %weighted_pel, align 4
  %123 = load i16*, i16** @src_line, align 8
  %incdec.ptr111 = getelementptr inbounds i16, i16* %123, i32 1
  store i16* %incdec.ptr111, i16** @src_line, align 8
  %124 = load i16, i16* %123, align 2
  %conv112 = zext i16 %124 to i32
  %125 = load i32, i32* %weighted_pel, align 4
  %sub113 = sub nsw i32 %conv112, %125
  %idxprom114 = sext i32 %sub113 to i64
  %126 = load i32*, i32** %byte_sse, align 8
  %arrayidx115 = getelementptr inbounds i32, i32* %126, i64 %idxprom114
  %127 = load i32, i32* %arrayidx115, align 4
  %128 = load i32, i32* %mcost, align 4
  %add116 = add nsw i32 %128, %127
  store i32 %add116, i32* %mcost, align 4
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.body.81
  %129 = load i32, i32* %x4, align 4
  %inc118 = add nsw i32 %129, 1
  store i32 %inc118, i32* %x4, align 4
  br label %for.cond.78

for.end.119:                                      ; preds = %for.cond.78
  %130 = load i32, i32* %mcost, align 4
  %131 = load i32, i32* %min_mcost.addr, align 4
  %cmp120 = icmp sge i32 %130, %131
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %for.end.119
  %132 = load i32, i32* %mcost, align 4
  store i32 %132, i32* %retval
  br label %return

if.end.123:                                       ; preds = %for.end.119
  %133 = load i32, i32* %cr_pad_size_x, align 4
  %134 = load i16*, i16** @ref_line, align 8
  %idx.ext124 = sext i32 %133 to i64
  %add.ptr125 = getelementptr inbounds i16, i16* %134, i64 %idx.ext124
  store i16* %add.ptr125, i16** @ref_line, align 8
  br label %for.inc.126

for.inc.126:                                      ; preds = %if.end.123
  %135 = load i32, i32* %y, align 4
  %inc127 = add nsw i32 %135, 1
  store i32 %inc127, i32* %y, align 4
  br label %for.cond.74

for.end.128:                                      ; preds = %for.cond.74
  br label %for.inc.129

for.inc.129:                                      ; preds = %for.end.128
  %136 = load i32, i32* %k, align 4
  %inc130 = add nsw i32 %136, 1
  store i32 %inc130, i32* %k, align 4
  br label %for.cond.63

for.end.131:                                      ; preds = %for.cond.63
  br label %if.end.132

if.end.132:                                       ; preds = %for.end.131, %for.end.58
  %137 = load i32, i32* %mcost, align 4
  store i32 %137, i32* %retval
  br label %return

return:                                           ; preds = %if.end.132, %if.then.122, %if.then
  %138 = load i32, i32* %retval
  ret i32 %138
}

; Function Attrs: nounwind uwtable
define i32 @computeBiPredSSE1(i16* %src_pic, i32 %blocksize_y, i32 %blocksize_x, i32 %min_mcost, i32 %cand_x1, i32 %cand_y1, i32 %cand_x2, i32 %cand_y2) #0 {
entry:
  %retval = alloca i32, align 4
  %src_pic.addr = alloca i16*, align 8
  %blocksize_y.addr = alloca i32, align 4
  %blocksize_x.addr = alloca i32, align 4
  %min_mcost.addr = alloca i32, align 4
  %cand_x1.addr = alloca i32, align 4
  %cand_y1.addr = alloca i32, align 4
  %cand_x2.addr = alloca i32, align 4
  %cand_y2.addr = alloca i32, align 4
  %mcost = alloca i32, align 4
  %bi_diff = alloca i32, align 4
  %y = alloca i32, align 4
  %x4 = alloca i32, align 4
  %byte_sse = alloca i32*, align 8
  %pad_size_x = alloca i32, align 4
  %blocksize_x_c2 = alloca i32, align 4
  %blocksize_y_c = alloca i32, align 4
  %cr_pad_size_x = alloca i32, align 4
  %k = alloca i32, align 4
  store i16* %src_pic, i16** %src_pic.addr, align 8
  store i32 %blocksize_y, i32* %blocksize_y.addr, align 4
  store i32 %blocksize_x, i32* %blocksize_x.addr, align 4
  store i32 %min_mcost, i32* %min_mcost.addr, align 4
  store i32 %cand_x1, i32* %cand_x1.addr, align 4
  store i32 %cand_y1, i32* %cand_y1.addr, align 4
  store i32 %cand_x2, i32* %cand_x2.addr, align 4
  store i32 %cand_y2, i32* %cand_y2.addr, align 4
  store i32 0, i32* %mcost, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 62
  %1 = load i32*, i32** %quad, align 8
  store i32* %1, i32** %byte_sse, align 8
  %2 = load i32, i32* @img_padded_size_x, align 4
  %3 = load i32, i32* %blocksize_x.addr, align 4
  %sub = sub nsw i32 %2, %3
  store i32 %sub, i32* %pad_size_x, align 4
  %4 = load i16*, i16** %src_pic.addr, align 8
  store i16* %4, i16** @src_line, align 8
  %5 = load i32, i32* @bipred2_access_method, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_line, i32 0, i64 %idxprom
  %6 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx, align 8
  %7 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 0), align 8
  %8 = load i32, i32* %cand_y2.addr, align 4
  %9 = load i32, i32* %cand_x2.addr, align 4
  %call = call i16* %6(i16**** %7, i32 %8, i32 %9)
  store i16* %call, i16** @ref2_line, align 8
  %10 = load i32, i32* @bipred1_access_method, align 4
  %idxprom1 = sext i32 %10 to i64
  %arrayidx2 = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_line, i32 0, i64 %idxprom1
  %11 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx2, align 8
  %12 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 0), align 8
  %13 = load i32, i32* %cand_y1.addr, align 4
  %14 = load i32, i32* %cand_x1.addr, align 4
  %call3 = call i16* %11(i16**** %12, i32 %13, i32 %14)
  store i16* %call3, i16** @ref1_line, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.60, %entry
  %15 = load i32, i32* %y, align 4
  %16 = load i32, i32* %blocksize_y.addr, align 4
  %cmp = icmp slt i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end.61

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x4, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %17 = load i32, i32* %x4, align 4
  %18 = load i32, i32* %blocksize_x.addr, align 4
  %cmp5 = icmp slt i32 %17, %18
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %19 = load i16*, i16** @src_line, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %19, i32 1
  store i16* %incdec.ptr, i16** @src_line, align 8
  %20 = load i16, i16* %19, align 2
  %conv = zext i16 %20 to i32
  %21 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr7 = getelementptr inbounds i16, i16* %21, i32 1
  store i16* %incdec.ptr7, i16** @ref1_line, align 8
  %22 = load i16, i16* %21, align 2
  %conv8 = zext i16 %22 to i32
  %23 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr9 = getelementptr inbounds i16, i16* %23, i32 1
  store i16* %incdec.ptr9, i16** @ref2_line, align 8
  %24 = load i16, i16* %23, align 2
  %conv10 = zext i16 %24 to i32
  %add = add nsw i32 %conv8, %conv10
  %add11 = add nsw i32 %add, 1
  %shr = ashr i32 %add11, 1
  %sub12 = sub nsw i32 %conv, %shr
  store i32 %sub12, i32* %bi_diff, align 4
  %25 = load i32, i32* %bi_diff, align 4
  %idxprom13 = sext i32 %25 to i64
  %26 = load i32*, i32** %byte_sse, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %26, i64 %idxprom13
  %27 = load i32, i32* %arrayidx14, align 4
  %28 = load i32, i32* %mcost, align 4
  %add15 = add nsw i32 %28, %27
  store i32 %add15, i32* %mcost, align 4
  %29 = load i16*, i16** @src_line, align 8
  %incdec.ptr16 = getelementptr inbounds i16, i16* %29, i32 1
  store i16* %incdec.ptr16, i16** @src_line, align 8
  %30 = load i16, i16* %29, align 2
  %conv17 = zext i16 %30 to i32
  %31 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr18 = getelementptr inbounds i16, i16* %31, i32 1
  store i16* %incdec.ptr18, i16** @ref1_line, align 8
  %32 = load i16, i16* %31, align 2
  %conv19 = zext i16 %32 to i32
  %33 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr20 = getelementptr inbounds i16, i16* %33, i32 1
  store i16* %incdec.ptr20, i16** @ref2_line, align 8
  %34 = load i16, i16* %33, align 2
  %conv21 = zext i16 %34 to i32
  %add22 = add nsw i32 %conv19, %conv21
  %add23 = add nsw i32 %add22, 1
  %shr24 = ashr i32 %add23, 1
  %sub25 = sub nsw i32 %conv17, %shr24
  store i32 %sub25, i32* %bi_diff, align 4
  %35 = load i32, i32* %bi_diff, align 4
  %idxprom26 = sext i32 %35 to i64
  %36 = load i32*, i32** %byte_sse, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %36, i64 %idxprom26
  %37 = load i32, i32* %arrayidx27, align 4
  %38 = load i32, i32* %mcost, align 4
  %add28 = add nsw i32 %38, %37
  store i32 %add28, i32* %mcost, align 4
  %39 = load i16*, i16** @src_line, align 8
  %incdec.ptr29 = getelementptr inbounds i16, i16* %39, i32 1
  store i16* %incdec.ptr29, i16** @src_line, align 8
  %40 = load i16, i16* %39, align 2
  %conv30 = zext i16 %40 to i32
  %41 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr31 = getelementptr inbounds i16, i16* %41, i32 1
  store i16* %incdec.ptr31, i16** @ref1_line, align 8
  %42 = load i16, i16* %41, align 2
  %conv32 = zext i16 %42 to i32
  %43 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr33 = getelementptr inbounds i16, i16* %43, i32 1
  store i16* %incdec.ptr33, i16** @ref2_line, align 8
  %44 = load i16, i16* %43, align 2
  %conv34 = zext i16 %44 to i32
  %add35 = add nsw i32 %conv32, %conv34
  %add36 = add nsw i32 %add35, 1
  %shr37 = ashr i32 %add36, 1
  %sub38 = sub nsw i32 %conv30, %shr37
  store i32 %sub38, i32* %bi_diff, align 4
  %45 = load i32, i32* %bi_diff, align 4
  %idxprom39 = sext i32 %45 to i64
  %46 = load i32*, i32** %byte_sse, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %46, i64 %idxprom39
  %47 = load i32, i32* %arrayidx40, align 4
  %48 = load i32, i32* %mcost, align 4
  %add41 = add nsw i32 %48, %47
  store i32 %add41, i32* %mcost, align 4
  %49 = load i16*, i16** @src_line, align 8
  %incdec.ptr42 = getelementptr inbounds i16, i16* %49, i32 1
  store i16* %incdec.ptr42, i16** @src_line, align 8
  %50 = load i16, i16* %49, align 2
  %conv43 = zext i16 %50 to i32
  %51 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr44 = getelementptr inbounds i16, i16* %51, i32 1
  store i16* %incdec.ptr44, i16** @ref1_line, align 8
  %52 = load i16, i16* %51, align 2
  %conv45 = zext i16 %52 to i32
  %53 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr46 = getelementptr inbounds i16, i16* %53, i32 1
  store i16* %incdec.ptr46, i16** @ref2_line, align 8
  %54 = load i16, i16* %53, align 2
  %conv47 = zext i16 %54 to i32
  %add48 = add nsw i32 %conv45, %conv47
  %add49 = add nsw i32 %add48, 1
  %shr50 = ashr i32 %add49, 1
  %sub51 = sub nsw i32 %conv43, %shr50
  store i32 %sub51, i32* %bi_diff, align 4
  %55 = load i32, i32* %bi_diff, align 4
  %idxprom52 = sext i32 %55 to i64
  %56 = load i32*, i32** %byte_sse, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %56, i64 %idxprom52
  %57 = load i32, i32* %arrayidx53, align 4
  %58 = load i32, i32* %mcost, align 4
  %add54 = add nsw i32 %58, %57
  store i32 %add54, i32* %mcost, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %59 = load i32, i32* %x4, align 4
  %add55 = add nsw i32 %59, 4
  store i32 %add55, i32* %x4, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %60 = load i32, i32* %mcost, align 4
  %61 = load i32, i32* %min_mcost.addr, align 4
  %cmp56 = icmp sge i32 %60, %61
  br i1 %cmp56, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %62 = load i32, i32* %mcost, align 4
  store i32 %62, i32* %retval
  br label %return

if.end:                                           ; preds = %for.end
  %63 = load i32, i32* %pad_size_x, align 4
  %64 = load i16*, i16** @ref2_line, align 8
  %idx.ext = sext i32 %63 to i64
  %add.ptr = getelementptr inbounds i16, i16* %64, i64 %idx.ext
  store i16* %add.ptr, i16** @ref2_line, align 8
  %65 = load i32, i32* %pad_size_x, align 4
  %66 = load i16*, i16** @ref1_line, align 8
  %idx.ext58 = sext i32 %65 to i64
  %add.ptr59 = getelementptr inbounds i16, i16* %66, i64 %idx.ext58
  store i16* %add.ptr59, i16** @ref1_line, align 8
  br label %for.inc.60

for.inc.60:                                       ; preds = %if.end
  %67 = load i32, i32* %y, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end.61:                                       ; preds = %for.cond
  %68 = load i32, i32* @ChromaMEEnable, align 4
  %tobool = icmp ne i32 %68, 0
  br i1 %tobool, label %if.then.62, label %if.end.133

if.then.62:                                       ; preds = %for.end.61
  %69 = load i32, i32* %blocksize_x.addr, align 4
  %70 = load i32, i32* @shift_cr_x, align 4
  %shr63 = ashr i32 %69, %70
  store i32 %shr63, i32* %blocksize_x_c2, align 4
  %71 = load i32, i32* %blocksize_y.addr, align 4
  %72 = load i32, i32* @shift_cr_y, align 4
  %shr64 = ashr i32 %71, %72
  store i32 %shr64, i32* %blocksize_y_c, align 4
  %73 = load i32, i32* @img_cr_padded_size_x, align 4
  %74 = load i32, i32* %blocksize_x_c2, align 4
  %sub65 = sub nsw i32 %73, %74
  store i32 %sub65, i32* %cr_pad_size_x, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.130, %if.then.62
  %75 = load i32, i32* %k, align 4
  %cmp67 = icmp slt i32 %75, 2
  br i1 %cmp67, label %for.body.69, label %for.end.132

for.body.69:                                      ; preds = %for.cond.66
  %76 = load i16*, i16** %src_pic.addr, align 8
  %77 = load i32, i32* %k, align 4
  %shl = shl i32 256, %77
  %idx.ext70 = sext i32 %shl to i64
  %add.ptr71 = getelementptr inbounds i16, i16* %76, i64 %idx.ext70
  store i16* %add.ptr71, i16** @src_line, align 8
  %78 = load i32, i32* @bipred2_access_method, align 4
  %idxprom72 = sext i32 %78 to i64
  %arrayidx73 = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_crline, i32 0, i64 %idxprom72
  %79 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx73, align 8
  %80 = load i32, i32* %k, align 4
  %idxprom74 = sext i32 %80 to i64
  %arrayidx75 = getelementptr inbounds [2 x i16****], [2 x i16****]* getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 1), i32 0, i64 %idxprom74
  %81 = load i16****, i16***** %arrayidx75, align 8
  %82 = load i32, i32* %cand_y2.addr, align 4
  %83 = load i32, i32* %cand_x2.addr, align 4
  %call76 = call i16* %79(i16**** %81, i32 %82, i32 %83)
  store i16* %call76, i16** @ref2_line, align 8
  %84 = load i32, i32* @bipred1_access_method, align 4
  %idxprom77 = sext i32 %84 to i64
  %arrayidx78 = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_crline, i32 0, i64 %idxprom77
  %85 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx78, align 8
  %86 = load i32, i32* %k, align 4
  %idxprom79 = sext i32 %86 to i64
  %arrayidx80 = getelementptr inbounds [2 x i16****], [2 x i16****]* getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 1), i32 0, i64 %idxprom79
  %87 = load i16****, i16***** %arrayidx80, align 8
  %88 = load i32, i32* %cand_y1.addr, align 4
  %89 = load i32, i32* %cand_x1.addr, align 4
  %call81 = call i16* %85(i16**** %87, i32 %88, i32 %89)
  store i16* %call81, i16** @ref1_line, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.127, %for.body.69
  %90 = load i32, i32* %y, align 4
  %91 = load i32, i32* %blocksize_y_c, align 4
  %cmp83 = icmp slt i32 %90, %91
  br i1 %cmp83, label %for.body.85, label %for.end.129

for.body.85:                                      ; preds = %for.cond.82
  store i32 0, i32* %x4, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.116, %for.body.85
  %92 = load i32, i32* %x4, align 4
  %93 = load i32, i32* %blocksize_x_c2, align 4
  %cmp87 = icmp slt i32 %92, %93
  br i1 %cmp87, label %for.body.89, label %for.end.118

for.body.89:                                      ; preds = %for.cond.86
  %94 = load i16*, i16** @src_line, align 8
  %incdec.ptr90 = getelementptr inbounds i16, i16* %94, i32 1
  store i16* %incdec.ptr90, i16** @src_line, align 8
  %95 = load i16, i16* %94, align 2
  %conv91 = zext i16 %95 to i32
  %96 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr92 = getelementptr inbounds i16, i16* %96, i32 1
  store i16* %incdec.ptr92, i16** @ref1_line, align 8
  %97 = load i16, i16* %96, align 2
  %conv93 = zext i16 %97 to i32
  %98 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr94 = getelementptr inbounds i16, i16* %98, i32 1
  store i16* %incdec.ptr94, i16** @ref2_line, align 8
  %99 = load i16, i16* %98, align 2
  %conv95 = zext i16 %99 to i32
  %add96 = add nsw i32 %conv93, %conv95
  %add97 = add nsw i32 %add96, 1
  %shr98 = ashr i32 %add97, 1
  %sub99 = sub nsw i32 %conv91, %shr98
  store i32 %sub99, i32* %bi_diff, align 4
  %100 = load i32, i32* %bi_diff, align 4
  %idxprom100 = sext i32 %100 to i64
  %101 = load i32*, i32** %byte_sse, align 8
  %arrayidx101 = getelementptr inbounds i32, i32* %101, i64 %idxprom100
  %102 = load i32, i32* %arrayidx101, align 4
  %103 = load i32, i32* %mcost, align 4
  %add102 = add nsw i32 %103, %102
  store i32 %add102, i32* %mcost, align 4
  %104 = load i16*, i16** @src_line, align 8
  %incdec.ptr103 = getelementptr inbounds i16, i16* %104, i32 1
  store i16* %incdec.ptr103, i16** @src_line, align 8
  %105 = load i16, i16* %104, align 2
  %conv104 = zext i16 %105 to i32
  %106 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr105 = getelementptr inbounds i16, i16* %106, i32 1
  store i16* %incdec.ptr105, i16** @ref1_line, align 8
  %107 = load i16, i16* %106, align 2
  %conv106 = zext i16 %107 to i32
  %108 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr107 = getelementptr inbounds i16, i16* %108, i32 1
  store i16* %incdec.ptr107, i16** @ref2_line, align 8
  %109 = load i16, i16* %108, align 2
  %conv108 = zext i16 %109 to i32
  %add109 = add nsw i32 %conv106, %conv108
  %add110 = add nsw i32 %add109, 1
  %shr111 = ashr i32 %add110, 1
  %sub112 = sub nsw i32 %conv104, %shr111
  store i32 %sub112, i32* %bi_diff, align 4
  %110 = load i32, i32* %bi_diff, align 4
  %idxprom113 = sext i32 %110 to i64
  %111 = load i32*, i32** %byte_sse, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %111, i64 %idxprom113
  %112 = load i32, i32* %arrayidx114, align 4
  %113 = load i32, i32* %mcost, align 4
  %add115 = add nsw i32 %113, %112
  store i32 %add115, i32* %mcost, align 4
  br label %for.inc.116

for.inc.116:                                      ; preds = %for.body.89
  %114 = load i32, i32* %x4, align 4
  %inc117 = add nsw i32 %114, 1
  store i32 %inc117, i32* %x4, align 4
  br label %for.cond.86

for.end.118:                                      ; preds = %for.cond.86
  %115 = load i32, i32* %mcost, align 4
  %116 = load i32, i32* %min_mcost.addr, align 4
  %cmp119 = icmp sge i32 %115, %116
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %for.end.118
  %117 = load i32, i32* %mcost, align 4
  store i32 %117, i32* %retval
  br label %return

if.end.122:                                       ; preds = %for.end.118
  %118 = load i32, i32* %cr_pad_size_x, align 4
  %119 = load i16*, i16** @ref2_line, align 8
  %idx.ext123 = sext i32 %118 to i64
  %add.ptr124 = getelementptr inbounds i16, i16* %119, i64 %idx.ext123
  store i16* %add.ptr124, i16** @ref2_line, align 8
  %120 = load i32, i32* %cr_pad_size_x, align 4
  %121 = load i16*, i16** @ref1_line, align 8
  %idx.ext125 = sext i32 %120 to i64
  %add.ptr126 = getelementptr inbounds i16, i16* %121, i64 %idx.ext125
  store i16* %add.ptr126, i16** @ref1_line, align 8
  br label %for.inc.127

for.inc.127:                                      ; preds = %if.end.122
  %122 = load i32, i32* %y, align 4
  %inc128 = add nsw i32 %122, 1
  store i32 %inc128, i32* %y, align 4
  br label %for.cond.82

for.end.129:                                      ; preds = %for.cond.82
  br label %for.inc.130

for.inc.130:                                      ; preds = %for.end.129
  %123 = load i32, i32* %k, align 4
  %inc131 = add nsw i32 %123, 1
  store i32 %inc131, i32* %k, align 4
  br label %for.cond.66

for.end.132:                                      ; preds = %for.cond.66
  br label %if.end.133

if.end.133:                                       ; preds = %for.end.132, %for.end.61
  %124 = load i32, i32* %mcost, align 4
  store i32 %124, i32* %retval
  br label %return

return:                                           ; preds = %if.end.133, %if.then.121, %if.then
  %125 = load i32, i32* %retval
  ret i32 %125
}

; Function Attrs: nounwind uwtable
define i32 @computeBiPredSSE2(i16* %src_pic, i32 %blocksize_y, i32 %blocksize_x, i32 %min_mcost, i32 %cand_x1, i32 %cand_y1, i32 %cand_x2, i32 %cand_y2) #0 {
entry:
  %retval = alloca i32, align 4
  %src_pic.addr = alloca i16*, align 8
  %blocksize_y.addr = alloca i32, align 4
  %blocksize_x.addr = alloca i32, align 4
  %min_mcost.addr = alloca i32, align 4
  %cand_x1.addr = alloca i32, align 4
  %cand_y1.addr = alloca i32, align 4
  %cand_x2.addr = alloca i32, align 4
  %cand_y2.addr = alloca i32, align 4
  %mcost = alloca i32, align 4
  %bi_diff = alloca i32, align 4
  %denom = alloca i32, align 4
  %lround = alloca i32, align 4
  %y = alloca i32, align 4
  %x4 = alloca i32, align 4
  %weighted_pel = alloca i32, align 4
  %pixel1 = alloca i32, align 4
  %pixel2 = alloca i32, align 4
  %pad_size_x = alloca i32, align 4
  %blocksize_x_c2 = alloca i32, align 4
  %blocksize_y_c = alloca i32, align 4
  %cr_pad_size_x = alloca i32, align 4
  %k = alloca i32, align 4
  store i16* %src_pic, i16** %src_pic.addr, align 8
  store i32 %blocksize_y, i32* %blocksize_y.addr, align 4
  store i32 %blocksize_x, i32* %blocksize_x.addr, align 4
  store i32 %min_mcost, i32* %min_mcost.addr, align 4
  store i32 %cand_x1, i32* %cand_x1.addr, align 4
  store i32 %cand_y1, i32* %cand_y1.addr, align 4
  store i32 %cand_x2, i32* %cand_x2.addr, align 4
  store i32 %cand_y2, i32* %cand_y2.addr, align 4
  store i32 0, i32* %mcost, align 4
  %0 = load i32, i32* @luma_log_weight_denom, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %denom, align 4
  %1 = load i32, i32* @wp_luma_round, align 4
  %mul = mul nsw i32 2, %1
  store i32 %mul, i32* %lround, align 4
  %2 = load i32, i32* @img_padded_size_x, align 4
  %3 = load i32, i32* %blocksize_x.addr, align 4
  %sub = sub nsw i32 %2, %3
  store i32 %sub, i32* %pad_size_x, align 4
  %4 = load i16*, i16** %src_pic.addr, align 8
  store i16* %4, i16** @src_line, align 8
  %5 = load i32, i32* @bipred2_access_method, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_line, i32 0, i64 %idxprom
  %6 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx, align 8
  %7 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 0), align 8
  %8 = load i32, i32* %cand_y2.addr, align 4
  %9 = load i32, i32* %cand_x2.addr, align 4
  %call = call i16* %6(i16**** %7, i32 %8, i32 %9)
  store i16* %call, i16** @ref2_line, align 8
  %10 = load i32, i32* @bipred1_access_method, align 4
  %idxprom1 = sext i32 %10 to i64
  %arrayidx2 = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_line, i32 0, i64 %idxprom1
  %11 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx2, align 8
  %12 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 0), align 8
  %13 = load i32, i32* %cand_y1.addr, align 4
  %14 = load i32, i32* %cand_x1.addr, align 4
  %call3 = call i16* %11(i16**** %12, i32 %13, i32 %14)
  store i16* %call3, i16** @ref1_line, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.88, %entry
  %15 = load i32, i32* %y, align 4
  %16 = load i32, i32* %blocksize_y.addr, align 4
  %cmp = icmp slt i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end.89

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x4, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %17 = load i32, i32* %x4, align 4
  %18 = load i32, i32* %blocksize_x.addr, align 4
  %cmp5 = icmp slt i32 %17, %18
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %19 = load i16, i16* @weight1, align 2
  %conv = sext i16 %19 to i32
  %20 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %20, i32 1
  store i16* %incdec.ptr, i16** @ref1_line, align 8
  %21 = load i16, i16* %20, align 2
  %conv7 = zext i16 %21 to i32
  %mul8 = mul nsw i32 %conv, %conv7
  store i32 %mul8, i32* %pixel1, align 4
  %22 = load i16, i16* @weight2, align 2
  %conv9 = sext i16 %22 to i32
  %23 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr10 = getelementptr inbounds i16, i16* %23, i32 1
  store i16* %incdec.ptr10, i16** @ref2_line, align 8
  %24 = load i16, i16* %23, align 2
  %conv11 = zext i16 %24 to i32
  %mul12 = mul nsw i32 %conv9, %conv11
  store i32 %mul12, i32* %pixel2, align 4
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 156
  %26 = load i32, i32* %max_imgpel_value, align 4
  %27 = load i32, i32* %pixel1, align 4
  %28 = load i32, i32* %pixel2, align 4
  %add13 = add nsw i32 %27, %28
  %29 = load i32, i32* %lround, align 4
  %add14 = add nsw i32 %add13, %29
  %30 = load i32, i32* %denom, align 4
  %shr = ashr i32 %add14, %30
  %31 = load i16, i16* @offsetBi, align 2
  %conv15 = sext i16 %31 to i32
  %add16 = add nsw i32 %shr, %conv15
  %call17 = call i32 @iClip1(i32 %26, i32 %add16)
  store i32 %call17, i32* %weighted_pel, align 4
  %32 = load i16*, i16** @src_line, align 8
  %incdec.ptr18 = getelementptr inbounds i16, i16* %32, i32 1
  store i16* %incdec.ptr18, i16** @src_line, align 8
  %33 = load i16, i16* %32, align 2
  %conv19 = zext i16 %33 to i32
  %34 = load i32, i32* %weighted_pel, align 4
  %sub20 = sub nsw i32 %conv19, %34
  store i32 %sub20, i32* %bi_diff, align 4
  %35 = load i32, i32* %bi_diff, align 4
  %36 = load i32, i32* %bi_diff, align 4
  %mul21 = mul nsw i32 %35, %36
  %37 = load i32, i32* %mcost, align 4
  %add22 = add nsw i32 %37, %mul21
  store i32 %add22, i32* %mcost, align 4
  %38 = load i16, i16* @weight1, align 2
  %conv23 = sext i16 %38 to i32
  %39 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr24 = getelementptr inbounds i16, i16* %39, i32 1
  store i16* %incdec.ptr24, i16** @ref1_line, align 8
  %40 = load i16, i16* %39, align 2
  %conv25 = zext i16 %40 to i32
  %mul26 = mul nsw i32 %conv23, %conv25
  store i32 %mul26, i32* %pixel1, align 4
  %41 = load i16, i16* @weight2, align 2
  %conv27 = sext i16 %41 to i32
  %42 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr28 = getelementptr inbounds i16, i16* %42, i32 1
  store i16* %incdec.ptr28, i16** @ref2_line, align 8
  %43 = load i16, i16* %42, align 2
  %conv29 = zext i16 %43 to i32
  %mul30 = mul nsw i32 %conv27, %conv29
  store i32 %mul30, i32* %pixel2, align 4
  %44 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %44, i32 0, i32 156
  %45 = load i32, i32* %max_imgpel_value31, align 4
  %46 = load i32, i32* %pixel1, align 4
  %47 = load i32, i32* %pixel2, align 4
  %add32 = add nsw i32 %46, %47
  %48 = load i32, i32* %lround, align 4
  %add33 = add nsw i32 %add32, %48
  %49 = load i32, i32* %denom, align 4
  %shr34 = ashr i32 %add33, %49
  %50 = load i16, i16* @offsetBi, align 2
  %conv35 = sext i16 %50 to i32
  %add36 = add nsw i32 %shr34, %conv35
  %call37 = call i32 @iClip1(i32 %45, i32 %add36)
  store i32 %call37, i32* %weighted_pel, align 4
  %51 = load i16*, i16** @src_line, align 8
  %incdec.ptr38 = getelementptr inbounds i16, i16* %51, i32 1
  store i16* %incdec.ptr38, i16** @src_line, align 8
  %52 = load i16, i16* %51, align 2
  %conv39 = zext i16 %52 to i32
  %53 = load i32, i32* %weighted_pel, align 4
  %sub40 = sub nsw i32 %conv39, %53
  store i32 %sub40, i32* %bi_diff, align 4
  %54 = load i32, i32* %bi_diff, align 4
  %55 = load i32, i32* %bi_diff, align 4
  %mul41 = mul nsw i32 %54, %55
  %56 = load i32, i32* %mcost, align 4
  %add42 = add nsw i32 %56, %mul41
  store i32 %add42, i32* %mcost, align 4
  %57 = load i16, i16* @weight1, align 2
  %conv43 = sext i16 %57 to i32
  %58 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr44 = getelementptr inbounds i16, i16* %58, i32 1
  store i16* %incdec.ptr44, i16** @ref1_line, align 8
  %59 = load i16, i16* %58, align 2
  %conv45 = zext i16 %59 to i32
  %mul46 = mul nsw i32 %conv43, %conv45
  store i32 %mul46, i32* %pixel1, align 4
  %60 = load i16, i16* @weight2, align 2
  %conv47 = sext i16 %60 to i32
  %61 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr48 = getelementptr inbounds i16, i16* %61, i32 1
  store i16* %incdec.ptr48, i16** @ref2_line, align 8
  %62 = load i16, i16* %61, align 2
  %conv49 = zext i16 %62 to i32
  %mul50 = mul nsw i32 %conv47, %conv49
  store i32 %mul50, i32* %pixel2, align 4
  %63 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value51 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %63, i32 0, i32 156
  %64 = load i32, i32* %max_imgpel_value51, align 4
  %65 = load i32, i32* %pixel1, align 4
  %66 = load i32, i32* %pixel2, align 4
  %add52 = add nsw i32 %65, %66
  %67 = load i32, i32* %lround, align 4
  %add53 = add nsw i32 %add52, %67
  %68 = load i32, i32* %denom, align 4
  %shr54 = ashr i32 %add53, %68
  %69 = load i16, i16* @offsetBi, align 2
  %conv55 = sext i16 %69 to i32
  %add56 = add nsw i32 %shr54, %conv55
  %call57 = call i32 @iClip1(i32 %64, i32 %add56)
  store i32 %call57, i32* %weighted_pel, align 4
  %70 = load i16*, i16** @src_line, align 8
  %incdec.ptr58 = getelementptr inbounds i16, i16* %70, i32 1
  store i16* %incdec.ptr58, i16** @src_line, align 8
  %71 = load i16, i16* %70, align 2
  %conv59 = zext i16 %71 to i32
  %72 = load i32, i32* %weighted_pel, align 4
  %sub60 = sub nsw i32 %conv59, %72
  store i32 %sub60, i32* %bi_diff, align 4
  %73 = load i32, i32* %bi_diff, align 4
  %74 = load i32, i32* %bi_diff, align 4
  %mul61 = mul nsw i32 %73, %74
  %75 = load i32, i32* %mcost, align 4
  %add62 = add nsw i32 %75, %mul61
  store i32 %add62, i32* %mcost, align 4
  %76 = load i16, i16* @weight1, align 2
  %conv63 = sext i16 %76 to i32
  %77 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr64 = getelementptr inbounds i16, i16* %77, i32 1
  store i16* %incdec.ptr64, i16** @ref1_line, align 8
  %78 = load i16, i16* %77, align 2
  %conv65 = zext i16 %78 to i32
  %mul66 = mul nsw i32 %conv63, %conv65
  store i32 %mul66, i32* %pixel1, align 4
  %79 = load i16, i16* @weight2, align 2
  %conv67 = sext i16 %79 to i32
  %80 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr68 = getelementptr inbounds i16, i16* %80, i32 1
  store i16* %incdec.ptr68, i16** @ref2_line, align 8
  %81 = load i16, i16* %80, align 2
  %conv69 = zext i16 %81 to i32
  %mul70 = mul nsw i32 %conv67, %conv69
  store i32 %mul70, i32* %pixel2, align 4
  %82 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value71 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %82, i32 0, i32 156
  %83 = load i32, i32* %max_imgpel_value71, align 4
  %84 = load i32, i32* %pixel1, align 4
  %85 = load i32, i32* %pixel2, align 4
  %add72 = add nsw i32 %84, %85
  %86 = load i32, i32* %lround, align 4
  %add73 = add nsw i32 %add72, %86
  %87 = load i32, i32* %denom, align 4
  %shr74 = ashr i32 %add73, %87
  %88 = load i16, i16* @offsetBi, align 2
  %conv75 = sext i16 %88 to i32
  %add76 = add nsw i32 %shr74, %conv75
  %call77 = call i32 @iClip1(i32 %83, i32 %add76)
  store i32 %call77, i32* %weighted_pel, align 4
  %89 = load i16*, i16** @src_line, align 8
  %incdec.ptr78 = getelementptr inbounds i16, i16* %89, i32 1
  store i16* %incdec.ptr78, i16** @src_line, align 8
  %90 = load i16, i16* %89, align 2
  %conv79 = zext i16 %90 to i32
  %91 = load i32, i32* %weighted_pel, align 4
  %sub80 = sub nsw i32 %conv79, %91
  store i32 %sub80, i32* %bi_diff, align 4
  %92 = load i32, i32* %bi_diff, align 4
  %93 = load i32, i32* %bi_diff, align 4
  %mul81 = mul nsw i32 %92, %93
  %94 = load i32, i32* %mcost, align 4
  %add82 = add nsw i32 %94, %mul81
  store i32 %add82, i32* %mcost, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %95 = load i32, i32* %x4, align 4
  %add83 = add nsw i32 %95, 4
  store i32 %add83, i32* %x4, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %96 = load i32, i32* %mcost, align 4
  %97 = load i32, i32* %min_mcost.addr, align 4
  %cmp84 = icmp sge i32 %96, %97
  br i1 %cmp84, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %98 = load i32, i32* %mcost, align 4
  store i32 %98, i32* %retval
  br label %return

if.end:                                           ; preds = %for.end
  %99 = load i32, i32* %pad_size_x, align 4
  %100 = load i16*, i16** @ref2_line, align 8
  %idx.ext = sext i32 %99 to i64
  %add.ptr = getelementptr inbounds i16, i16* %100, i64 %idx.ext
  store i16* %add.ptr, i16** @ref2_line, align 8
  %101 = load i32, i32* %pad_size_x, align 4
  %102 = load i16*, i16** @ref1_line, align 8
  %idx.ext86 = sext i32 %101 to i64
  %add.ptr87 = getelementptr inbounds i16, i16* %102, i64 %idx.ext86
  store i16* %add.ptr87, i16** @ref1_line, align 8
  br label %for.inc.88

for.inc.88:                                       ; preds = %if.end
  %103 = load i32, i32* %y, align 4
  %inc = add nsw i32 %103, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end.89:                                       ; preds = %for.cond
  %104 = load i32, i32* @ChromaMEEnable, align 4
  %tobool = icmp ne i32 %104, 0
  br i1 %tobool, label %if.then.90, label %if.end.186

if.then.90:                                       ; preds = %for.end.89
  %105 = load i32, i32* %blocksize_x.addr, align 4
  %106 = load i32, i32* @shift_cr_x, align 4
  %shr91 = ashr i32 %105, %106
  store i32 %shr91, i32* %blocksize_x_c2, align 4
  %107 = load i32, i32* %blocksize_y.addr, align 4
  %108 = load i32, i32* @shift_cr_y, align 4
  %shr92 = ashr i32 %107, %108
  store i32 %shr92, i32* %blocksize_y_c, align 4
  %109 = load i32, i32* @img_cr_padded_size_x, align 4
  %110 = load i32, i32* %blocksize_x_c2, align 4
  %sub93 = sub nsw i32 %109, %110
  store i32 %sub93, i32* %cr_pad_size_x, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.183, %if.then.90
  %111 = load i32, i32* %k, align 4
  %cmp95 = icmp slt i32 %111, 2
  br i1 %cmp95, label %for.body.97, label %for.end.185

for.body.97:                                      ; preds = %for.cond.94
  %112 = load i16*, i16** %src_pic.addr, align 8
  %113 = load i32, i32* %k, align 4
  %shl = shl i32 256, %113
  %idx.ext98 = sext i32 %shl to i64
  %add.ptr99 = getelementptr inbounds i16, i16* %112, i64 %idx.ext98
  store i16* %add.ptr99, i16** @src_line, align 8
  %114 = load i32, i32* @bipred2_access_method, align 4
  %idxprom100 = sext i32 %114 to i64
  %arrayidx101 = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_crline, i32 0, i64 %idxprom100
  %115 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx101, align 8
  %116 = load i32, i32* %k, align 4
  %idxprom102 = sext i32 %116 to i64
  %arrayidx103 = getelementptr inbounds [2 x i16****], [2 x i16****]* getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 1), i32 0, i64 %idxprom102
  %117 = load i16****, i16***** %arrayidx103, align 8
  %118 = load i32, i32* %cand_y2.addr, align 4
  %119 = load i32, i32* %cand_x2.addr, align 4
  %call104 = call i16* %115(i16**** %117, i32 %118, i32 %119)
  store i16* %call104, i16** @ref2_line, align 8
  %120 = load i32, i32* @bipred1_access_method, align 4
  %idxprom105 = sext i32 %120 to i64
  %arrayidx106 = getelementptr inbounds [2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_crline, i32 0, i64 %idxprom105
  %121 = load i16* (i16****, i32, i32)*, i16* (i16****, i32, i32)** %arrayidx106, align 8
  %122 = load i32, i32* %k, align 4
  %idxprom107 = sext i32 %122 to i64
  %arrayidx108 = getelementptr inbounds [2 x i16****], [2 x i16****]* getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 1), i32 0, i64 %idxprom107
  %123 = load i16****, i16***** %arrayidx108, align 8
  %124 = load i32, i32* %cand_y1.addr, align 4
  %125 = load i32, i32* %cand_x1.addr, align 4
  %call109 = call i16* %121(i16**** %123, i32 %124, i32 %125)
  store i16* %call109, i16** @ref1_line, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.180, %for.body.97
  %126 = load i32, i32* %y, align 4
  %127 = load i32, i32* %blocksize_y_c, align 4
  %cmp111 = icmp slt i32 %126, %127
  br i1 %cmp111, label %for.body.113, label %for.end.182

for.body.113:                                     ; preds = %for.cond.110
  store i32 0, i32* %x4, align 4
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.169, %for.body.113
  %128 = load i32, i32* %x4, align 4
  %129 = load i32, i32* %blocksize_x_c2, align 4
  %cmp115 = icmp slt i32 %128, %129
  br i1 %cmp115, label %for.body.117, label %for.end.171

for.body.117:                                     ; preds = %for.cond.114
  %130 = load i32, i32* %k, align 4
  %idxprom118 = sext i32 %130 to i64
  %arrayidx119 = getelementptr inbounds [2 x i16], [2 x i16]* @weight1_cr, i32 0, i64 %idxprom118
  %131 = load i16, i16* %arrayidx119, align 2
  %conv120 = sext i16 %131 to i32
  %132 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr121 = getelementptr inbounds i16, i16* %132, i32 1
  store i16* %incdec.ptr121, i16** @ref1_line, align 8
  %133 = load i16, i16* %132, align 2
  %conv122 = zext i16 %133 to i32
  %mul123 = mul nsw i32 %conv120, %conv122
  store i32 %mul123, i32* %pixel1, align 4
  %134 = load i32, i32* %k, align 4
  %idxprom124 = sext i32 %134 to i64
  %arrayidx125 = getelementptr inbounds [2 x i16], [2 x i16]* @weight2_cr, i32 0, i64 %idxprom124
  %135 = load i16, i16* %arrayidx125, align 2
  %conv126 = sext i16 %135 to i32
  %136 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr127 = getelementptr inbounds i16, i16* %136, i32 1
  store i16* %incdec.ptr127, i16** @ref2_line, align 8
  %137 = load i16, i16* %136, align 2
  %conv128 = zext i16 %137 to i32
  %mul129 = mul nsw i32 %conv126, %conv128
  store i32 %mul129, i32* %pixel2, align 4
  %138 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %138, i32 0, i32 157
  %139 = load i32, i32* %max_imgpel_value_uv, align 4
  %140 = load i32, i32* %pixel1, align 4
  %141 = load i32, i32* %pixel2, align 4
  %add130 = add nsw i32 %140, %141
  %142 = load i32, i32* %lround, align 4
  %add131 = add nsw i32 %add130, %142
  %143 = load i32, i32* %denom, align 4
  %shr132 = ashr i32 %add131, %143
  %144 = load i32, i32* %k, align 4
  %idxprom133 = sext i32 %144 to i64
  %arrayidx134 = getelementptr inbounds [2 x i16], [2 x i16]* @offsetBi_cr, i32 0, i64 %idxprom133
  %145 = load i16, i16* %arrayidx134, align 2
  %conv135 = sext i16 %145 to i32
  %add136 = add nsw i32 %shr132, %conv135
  %call137 = call i32 @iClip1(i32 %139, i32 %add136)
  store i32 %call137, i32* %weighted_pel, align 4
  %146 = load i16*, i16** @src_line, align 8
  %incdec.ptr138 = getelementptr inbounds i16, i16* %146, i32 1
  store i16* %incdec.ptr138, i16** @src_line, align 8
  %147 = load i16, i16* %146, align 2
  %conv139 = zext i16 %147 to i32
  %148 = load i32, i32* %weighted_pel, align 4
  %sub140 = sub nsw i32 %conv139, %148
  store i32 %sub140, i32* %bi_diff, align 4
  %149 = load i32, i32* %bi_diff, align 4
  %150 = load i32, i32* %bi_diff, align 4
  %mul141 = mul nsw i32 %149, %150
  %151 = load i32, i32* %mcost, align 4
  %add142 = add nsw i32 %151, %mul141
  store i32 %add142, i32* %mcost, align 4
  %152 = load i32, i32* %k, align 4
  %idxprom143 = sext i32 %152 to i64
  %arrayidx144 = getelementptr inbounds [2 x i16], [2 x i16]* @weight1_cr, i32 0, i64 %idxprom143
  %153 = load i16, i16* %arrayidx144, align 2
  %conv145 = sext i16 %153 to i32
  %154 = load i16*, i16** @ref1_line, align 8
  %incdec.ptr146 = getelementptr inbounds i16, i16* %154, i32 1
  store i16* %incdec.ptr146, i16** @ref1_line, align 8
  %155 = load i16, i16* %154, align 2
  %conv147 = zext i16 %155 to i32
  %mul148 = mul nsw i32 %conv145, %conv147
  store i32 %mul148, i32* %pixel1, align 4
  %156 = load i32, i32* %k, align 4
  %idxprom149 = sext i32 %156 to i64
  %arrayidx150 = getelementptr inbounds [2 x i16], [2 x i16]* @weight2_cr, i32 0, i64 %idxprom149
  %157 = load i16, i16* %arrayidx150, align 2
  %conv151 = sext i16 %157 to i32
  %158 = load i16*, i16** @ref2_line, align 8
  %incdec.ptr152 = getelementptr inbounds i16, i16* %158, i32 1
  store i16* %incdec.ptr152, i16** @ref2_line, align 8
  %159 = load i16, i16* %158, align 2
  %conv153 = zext i16 %159 to i32
  %mul154 = mul nsw i32 %conv151, %conv153
  store i32 %mul154, i32* %pixel2, align 4
  %160 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv155 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %160, i32 0, i32 157
  %161 = load i32, i32* %max_imgpel_value_uv155, align 4
  %162 = load i32, i32* %pixel1, align 4
  %163 = load i32, i32* %pixel2, align 4
  %add156 = add nsw i32 %162, %163
  %164 = load i32, i32* %lround, align 4
  %add157 = add nsw i32 %add156, %164
  %165 = load i32, i32* %denom, align 4
  %shr158 = ashr i32 %add157, %165
  %166 = load i32, i32* %k, align 4
  %idxprom159 = sext i32 %166 to i64
  %arrayidx160 = getelementptr inbounds [2 x i16], [2 x i16]* @offsetBi_cr, i32 0, i64 %idxprom159
  %167 = load i16, i16* %arrayidx160, align 2
  %conv161 = sext i16 %167 to i32
  %add162 = add nsw i32 %shr158, %conv161
  %call163 = call i32 @iClip1(i32 %161, i32 %add162)
  store i32 %call163, i32* %weighted_pel, align 4
  %168 = load i16*, i16** @src_line, align 8
  %incdec.ptr164 = getelementptr inbounds i16, i16* %168, i32 1
  store i16* %incdec.ptr164, i16** @src_line, align 8
  %169 = load i16, i16* %168, align 2
  %conv165 = zext i16 %169 to i32
  %170 = load i32, i32* %weighted_pel, align 4
  %sub166 = sub nsw i32 %conv165, %170
  store i32 %sub166, i32* %bi_diff, align 4
  %171 = load i32, i32* %bi_diff, align 4
  %172 = load i32, i32* %bi_diff, align 4
  %mul167 = mul nsw i32 %171, %172
  %173 = load i32, i32* %mcost, align 4
  %add168 = add nsw i32 %173, %mul167
  store i32 %add168, i32* %mcost, align 4
  br label %for.inc.169

for.inc.169:                                      ; preds = %for.body.117
  %174 = load i32, i32* %x4, align 4
  %inc170 = add nsw i32 %174, 1
  store i32 %inc170, i32* %x4, align 4
  br label %for.cond.114

for.end.171:                                      ; preds = %for.cond.114
  %175 = load i32, i32* %mcost, align 4
  %176 = load i32, i32* %min_mcost.addr, align 4
  %cmp172 = icmp sge i32 %175, %176
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %for.end.171
  %177 = load i32, i32* %mcost, align 4
  store i32 %177, i32* %retval
  br label %return

if.end.175:                                       ; preds = %for.end.171
  %178 = load i32, i32* %cr_pad_size_x, align 4
  %179 = load i16*, i16** @ref2_line, align 8
  %idx.ext176 = sext i32 %178 to i64
  %add.ptr177 = getelementptr inbounds i16, i16* %179, i64 %idx.ext176
  store i16* %add.ptr177, i16** @ref2_line, align 8
  %180 = load i32, i32* %cr_pad_size_x, align 4
  %181 = load i16*, i16** @ref1_line, align 8
  %idx.ext178 = sext i32 %180 to i64
  %add.ptr179 = getelementptr inbounds i16, i16* %181, i64 %idx.ext178
  store i16* %add.ptr179, i16** @ref1_line, align 8
  br label %for.inc.180

for.inc.180:                                      ; preds = %if.end.175
  %182 = load i32, i32* %y, align 4
  %inc181 = add nsw i32 %182, 1
  store i32 %inc181, i32* %y, align 4
  br label %for.cond.110

for.end.182:                                      ; preds = %for.cond.110
  br label %for.inc.183

for.inc.183:                                      ; preds = %for.end.182
  %183 = load i32, i32* %k, align 4
  %inc184 = add nsw i32 %183, 1
  store i32 %inc184, i32* %k, align 4
  br label %for.cond.94

for.end.185:                                      ; preds = %for.cond.94
  br label %if.end.186

if.end.186:                                       ; preds = %for.end.185, %for.end.89
  %184 = load i32, i32* %mcost, align 4
  store i32 %184, i32* %retval
  br label %return

return:                                           ; preds = %if.end.186, %if.then.174, %if.then
  %185 = load i32, i32* %retval
  ret i32 %185
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
