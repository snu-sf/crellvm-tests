; ModuleID = './MultiSource.Applications.JM/38.lencod.weighted_prediction.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16****, i16****, i16*****, i16***, i8*, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.SubImageContainer = type { i16****, [2 x i16****] }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@img = external global %struct.ImageParameters*, align 8
@luma_log_weight_denom = common global i32 0, align 4
@chroma_log_weight_denom = common global i32 0, align 4
@wp_luma_round = common global i32 0, align 4
@wp_chroma_round = common global i32 0, align 4
@listXsize = external global [6 x i32], align 16
@wp_weight = common global i32*** null, align 8
@wp_offset = common global i32*** null, align 8
@imgY_org = common global i16** null, align 8
@listX = external global [6 x %struct.storable_picture**], align 16
@ref_pic_sub = internal global %struct.SubImageContainer zeroinitializer, align 8
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@enc_picture = external global %struct.storable_picture*, align 8
@wbp_weight = common global i32**** null, align 8
@ref_qpic_sub = internal global %struct.SubImageContainer zeroinitializer, align 8
@input = external global %struct.InputParameters*, align 8
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@color_formats = common global i32 0, align 4
@top_pic = common global %struct.Picture* null, align 8
@bottom_pic = common global %struct.Picture* null, align 8
@frame_pic = common global %struct.Picture* null, align 8
@frame_pic_1 = common global %struct.Picture* null, align 8
@frame_pic_2 = common global %struct.Picture* null, align 8
@frame_pic_3 = common global %struct.Picture* null, align 8
@frame_pic_si = common global %struct.Picture* null, align 8
@Bit_Buffer = common global i64* null, align 8
@imgUV_org = common global i16*** null, align 8
@imgY_sub_tmp = common global i32** null, align 8
@PicPos = common global i32** null, align 8
@log2_max_frame_num_minus4 = common global i32 0, align 4
@log2_max_pic_order_cnt_lsb_minus4 = common global i32 0, align 4
@me_tot_time = common global i64 0, align 8
@me_time = common global i64 0, align 8
@dsr_new_search_range = common global i32 0, align 4
@mb_adaptive = common global i32 0, align 4
@MBPairIsField = common global i32 0, align 4
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
@shift_cr_x = common global i32 0, align 4
@shift_cr_y = common global i32 0, align 4
@img_padded_size_x = common global i32 0, align 4
@img_cr_padded_size_x = common global i32 0, align 4
@start_me_refinement_hp = common global i32 0, align 4
@start_me_refinement_qp = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @estimate_weighting_factor_P_slice(i32 %select_offset) #0 {
entry:
  %select_offset.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %dc_org = alloca double, align 8
  %index = alloca i32, align 4
  %comp = alloca i32, align 4
  %dc_ref = alloca [32 x double], align 16
  %default_weight = alloca [3 x i32], align 4
  %list_offset = alloca i32, align 4
  %weight = alloca [2 x [32 x [3 x i32]]], align 16
  %offset = alloca [2 x [32 x [3 x i32]]], align 16
  %clist = alloca i32, align 4
  %tmpPtr = alloca i16**, align 8
  store i32 %select_offset, i32* %select_offset.addr, align 4
  store double 0.000000e+00, double* %dc_org, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 100
  %1 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 3
  %3 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 61
  %5 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %5, i64 %idxprom
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 19
  %6 = load i32, i32* %mb_field, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 3
  %8 = load i32, i32* %current_mb_nr2, align 4
  %and = and i32 %8, 1
  %tobool3 = icmp ne i32 %and, 0
  %cond = select i1 %tobool3, i32 4, i32 2
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond4 = phi i32 [ %cond, %cond.true ], [ 0, %cond.false ]
  store i32 %cond4, i32* %list_offset, align 4
  store i32 5, i32* @luma_log_weight_denom, align 4
  store i32 5, i32* @chroma_log_weight_denom, align 4
  %9 = load i32, i32* @luma_log_weight_denom, align 4
  %sub = sub nsw i32 %9, 1
  %shl = shl i32 1, %sub
  store i32 %shl, i32* @wp_luma_round, align 4
  %10 = load i32, i32* @chroma_log_weight_denom, align 4
  %sub5 = sub nsw i32 %10, 1
  %shl6 = shl i32 1, %sub5
  store i32 %shl6, i32* @wp_chroma_round, align 4
  %11 = load i32, i32* @luma_log_weight_denom, align 4
  %shl7 = shl i32 1, %11
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 0
  store i32 %shl7, i32* %arrayidx8, align 4
  %12 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl9 = shl i32 1, %12
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 2
  store i32 %shl9, i32* %arrayidx10, align 4
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 1
  store i32 %shl9, i32* %arrayidx11, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.51, %cond.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %list_offset, align 4
  %add = add nsw i32 2, %14
  %cmp = icmp slt i32 %13, %add
  br i1 %cmp, label %for.body, label %for.end.53

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.48, %for.body
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom13
  %17 = load i32, i32* %arrayidx14, align 4
  %cmp15 = icmp slt i32 %15, %17
  br i1 %cmp15, label %for.body.16, label %for.end.50

for.body.16:                                      ; preds = %for.cond.12
  store i32 0, i32* %n, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %for.body.16
  %18 = load i32, i32* %n, align 4
  %cmp18 = icmp slt i32 %18, 3
  br i1 %cmp18, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.17
  %19 = load i32, i32* %n, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 %idxprom20
  %20 = load i32, i32* %arrayidx21, align 4
  %21 = load i32, i32* %n, align 4
  %idxprom22 = sext i32 %21 to i64
  %22 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %22 to i64
  %23 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %23 to i64
  %arrayidx25 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom24
  %arrayidx26 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx25, i32 0, i64 %idxprom23
  %arrayidx27 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx26, i32 0, i64 %idxprom22
  store i32 %20, i32* %arrayidx27, align 4
  %24 = load i32, i32* %n, align 4
  %idxprom28 = sext i32 %24 to i64
  %arrayidx29 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 %idxprom28
  %25 = load i32, i32* %arrayidx29, align 4
  %26 = load i32, i32* %n, align 4
  %idxprom30 = sext i32 %26 to i64
  %27 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %27 to i64
  %28 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %28 to i64
  %29 = load i32***, i32**** @wp_weight, align 8
  %arrayidx33 = getelementptr inbounds i32**, i32*** %29, i64 %idxprom32
  %30 = load i32**, i32*** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i32*, i32** %30, i64 %idxprom31
  %31 = load i32*, i32** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %31, i64 %idxprom30
  store i32 %25, i32* %arrayidx35, align 4
  %32 = load i32, i32* %n, align 4
  %idxprom36 = sext i32 %32 to i64
  %33 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %33 to i64
  %34 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %34 to i64
  %35 = load i32***, i32**** @wp_offset, align 8
  %arrayidx39 = getelementptr inbounds i32**, i32*** %35, i64 %idxprom38
  %36 = load i32**, i32*** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds i32*, i32** %36, i64 %idxprom37
  %37 = load i32*, i32** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %37, i64 %idxprom36
  store i32 0, i32* %arrayidx41, align 4
  %38 = load i32, i32* %n, align 4
  %idxprom42 = sext i32 %38 to i64
  %39 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %39 to i64
  %40 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %40 to i64
  %arrayidx45 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %offset, i32 0, i64 %idxprom44
  %arrayidx46 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx45, i32 0, i64 %idxprom43
  %arrayidx47 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx46, i32 0, i64 %idxprom42
  store i32 0, i32* %arrayidx47, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.19
  %41 = load i32, i32* %n, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.end
  %42 = load i32, i32* %j, align 4
  %inc49 = add nsw i32 %42, 1
  store i32 %inc49, i32* %j, align 4
  br label %for.cond.12

for.end.50:                                       ; preds = %for.cond.12
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.end.50
  %43 = load i32, i32* %i, align 4
  %inc52 = add nsw i32 %43, 1
  store i32 %inc52, i32* %i, align 4
  br label %for.cond

for.end.53:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.68, %for.end.53
  %44 = load i32, i32* %i, align 4
  %45 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %45, i32 0, i32 17
  %46 = load i32, i32* %height, align 4
  %cmp55 = icmp slt i32 %44, %46
  br i1 %cmp55, label %for.body.56, label %for.end.70

for.body.56:                                      ; preds = %for.cond.54
  store i32 0, i32* %j, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.65, %for.body.56
  %47 = load i32, i32* %j, align 4
  %48 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %48, i32 0, i32 13
  %49 = load i32, i32* %width, align 4
  %cmp58 = icmp slt i32 %47, %49
  br i1 %cmp58, label %for.body.59, label %for.end.67

for.body.59:                                      ; preds = %for.cond.57
  %50 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %50 to i64
  %51 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %51 to i64
  %52 = load i16**, i16*** @imgY_org, align 8
  %arrayidx62 = getelementptr inbounds i16*, i16** %52, i64 %idxprom61
  %53 = load i16*, i16** %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds i16, i16* %53, i64 %idxprom60
  %54 = load i16, i16* %arrayidx63, align 2
  %conv = uitofp i16 %54 to double
  %55 = load double, double* %dc_org, align 8
  %add64 = fadd double %55, %conv
  store double %add64, double* %dc_org, align 8
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.body.59
  %56 = load i32, i32* %j, align 4
  %inc66 = add nsw i32 %56, 1
  store i32 %inc66, i32* %j, align 4
  br label %for.cond.57

for.end.67:                                       ; preds = %for.cond.57
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.end.67
  %57 = load i32, i32* %i, align 4
  %inc69 = add nsw i32 %57, 1
  store i32 %inc69, i32* %i, align 4
  br label %for.cond.54

for.end.70:                                       ; preds = %for.cond.54
  store i32 0, i32* %clist, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.230, %for.end.70
  %58 = load i32, i32* %clist, align 4
  %59 = load i32, i32* %list_offset, align 4
  %add72 = add nsw i32 2, %59
  %cmp73 = icmp slt i32 %58, %add72
  br i1 %cmp73, label %for.body.75, label %for.end.232

for.body.75:                                      ; preds = %for.cond.71
  store i32 0, i32* %n, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.227, %for.body.75
  %60 = load i32, i32* %n, align 4
  %61 = load i32, i32* %clist, align 4
  %idxprom77 = sext i32 %61 to i64
  %arrayidx78 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom77
  %62 = load i32, i32* %arrayidx78, align 4
  %cmp79 = icmp slt i32 %60, %62
  br i1 %cmp79, label %for.body.81, label %for.end.229

for.body.81:                                      ; preds = %for.cond.76
  %63 = load i32, i32* %n, align 4
  %idxprom82 = sext i32 %63 to i64
  %arrayidx83 = getelementptr inbounds [32 x double], [32 x double]* %dc_ref, i32 0, i64 %idxprom82
  store double 0.000000e+00, double* %arrayidx83, align 8
  %64 = load i32, i32* %n, align 4
  %idxprom84 = sext i32 %64 to i64
  %65 = load i32, i32* %clist, align 4
  %idxprom85 = sext i32 %65 to i64
  %arrayidx86 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom85
  %66 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx86, align 8
  %arrayidx87 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %66, i64 %idxprom84
  %67 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx87, align 8
  %imgY_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %67, i32 0, i32 30
  %68 = load i16****, i16***** %imgY_sub, align 8
  store i16**** %68, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 0), align 8
  %69 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 0), align 8
  %arrayidx88 = getelementptr inbounds i16***, i16**** %69, i64 0
  %70 = load i16***, i16**** %arrayidx88, align 8
  %arrayidx89 = getelementptr inbounds i16**, i16*** %70, i64 0
  %71 = load i16**, i16*** %arrayidx89, align 8
  store i16** %71, i16*** %tmpPtr, align 8
  store i32 20, i32* %j, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.113, %for.body.81
  %72 = load i32, i32* %j, align 4
  %73 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height91 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %73, i32 0, i32 17
  %74 = load i32, i32* %height91, align 4
  %add92 = add nsw i32 %74, 20
  %cmp93 = icmp slt i32 %72, %add92
  br i1 %cmp93, label %for.body.95, label %for.end.115

for.body.95:                                      ; preds = %for.cond.90
  store i32 20, i32* %i, align 4
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc.110, %for.body.95
  %75 = load i32, i32* %i, align 4
  %76 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width97 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %76, i32 0, i32 13
  %77 = load i32, i32* %width97, align 4
  %add98 = add nsw i32 %77, 20
  %cmp99 = icmp slt i32 %75, %add98
  br i1 %cmp99, label %for.body.101, label %for.end.112

for.body.101:                                     ; preds = %for.cond.96
  %78 = load i32, i32* %i, align 4
  %idxprom102 = sext i32 %78 to i64
  %79 = load i32, i32* %j, align 4
  %idxprom103 = sext i32 %79 to i64
  %80 = load i16**, i16*** %tmpPtr, align 8
  %arrayidx104 = getelementptr inbounds i16*, i16** %80, i64 %idxprom103
  %81 = load i16*, i16** %arrayidx104, align 8
  %arrayidx105 = getelementptr inbounds i16, i16* %81, i64 %idxprom102
  %82 = load i16, i16* %arrayidx105, align 2
  %conv106 = uitofp i16 %82 to double
  %83 = load i32, i32* %n, align 4
  %idxprom107 = sext i32 %83 to i64
  %arrayidx108 = getelementptr inbounds [32 x double], [32 x double]* %dc_ref, i32 0, i64 %idxprom107
  %84 = load double, double* %arrayidx108, align 8
  %add109 = fadd double %84, %conv106
  store double %add109, double* %arrayidx108, align 8
  br label %for.inc.110

for.inc.110:                                      ; preds = %for.body.101
  %85 = load i32, i32* %i, align 4
  %inc111 = add nsw i32 %85, 1
  store i32 %inc111, i32* %i, align 4
  br label %for.cond.96

for.end.112:                                      ; preds = %for.cond.96
  br label %for.inc.113

for.inc.113:                                      ; preds = %for.end.112
  %86 = load i32, i32* %j, align 4
  %inc114 = add nsw i32 %86, 1
  store i32 %inc114, i32* %j, align 4
  br label %for.cond.90

for.end.115:                                      ; preds = %for.cond.90
  %87 = load i32, i32* %select_offset.addr, align 4
  %conv116 = sitofp i32 %87 to double
  %cmp117 = fcmp oeq double %conv116, 0.000000e+00
  br i1 %cmp117, label %if.then, label %if.else.163

if.then:                                          ; preds = %for.end.115
  %88 = load i32, i32* %n, align 4
  %idxprom119 = sext i32 %88 to i64
  %arrayidx120 = getelementptr inbounds [32 x double], [32 x double]* %dc_ref, i32 0, i64 %idxprom119
  %89 = load double, double* %arrayidx120, align 8
  %cmp121 = fcmp une double %89, 0.000000e+00
  br i1 %cmp121, label %if.then.123, label %if.else

if.then.123:                                      ; preds = %if.then
  %arrayidx124 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 0
  %90 = load i32, i32* %arrayidx124, align 4
  %conv125 = sitofp i32 %90 to double
  %91 = load double, double* %dc_org, align 8
  %mul = fmul double %conv125, %91
  %92 = load i32, i32* %n, align 4
  %idxprom126 = sext i32 %92 to i64
  %arrayidx127 = getelementptr inbounds [32 x double], [32 x double]* %dc_ref, i32 0, i64 %idxprom126
  %93 = load double, double* %arrayidx127, align 8
  %div = fdiv double %mul, %93
  %add128 = fadd double %div, 5.000000e-01
  %conv129 = fptosi double %add128 to i32
  %94 = load i32, i32* %n, align 4
  %idxprom130 = sext i32 %94 to i64
  %95 = load i32, i32* %clist, align 4
  %idxprom131 = sext i32 %95 to i64
  %arrayidx132 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom131
  %arrayidx133 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx132, i32 0, i64 %idxprom130
  %arrayidx134 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx133, i32 0, i64 0
  store i32 %conv129, i32* %arrayidx134, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %arrayidx135 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 0
  %96 = load i32, i32* %arrayidx135, align 4
  %97 = load i32, i32* %n, align 4
  %idxprom136 = sext i32 %97 to i64
  %98 = load i32, i32* %clist, align 4
  %idxprom137 = sext i32 %98 to i64
  %arrayidx138 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom137
  %arrayidx139 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx138, i32 0, i64 %idxprom136
  %arrayidx140 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx139, i32 0, i64 0
  store i32 %96, i32* %arrayidx140, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.123
  %99 = load i32, i32* %n, align 4
  %idxprom141 = sext i32 %99 to i64
  %100 = load i32, i32* %clist, align 4
  %idxprom142 = sext i32 %100 to i64
  %arrayidx143 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom142
  %arrayidx144 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx143, i32 0, i64 %idxprom141
  %arrayidx145 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx144, i32 0, i64 0
  %101 = load i32, i32* %arrayidx145, align 4
  %cmp146 = icmp slt i32 %101, -64
  br i1 %cmp146, label %if.then.155, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %102 = load i32, i32* %n, align 4
  %idxprom148 = sext i32 %102 to i64
  %103 = load i32, i32* %clist, align 4
  %idxprom149 = sext i32 %103 to i64
  %arrayidx150 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom149
  %arrayidx151 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx150, i32 0, i64 %idxprom148
  %arrayidx152 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx151, i32 0, i64 0
  %104 = load i32, i32* %arrayidx152, align 4
  %cmp153 = icmp sgt i32 %104, 127
  br i1 %cmp153, label %if.then.155, label %if.end.162

if.then.155:                                      ; preds = %lor.lhs.false, %if.end
  %arrayidx156 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 0
  %105 = load i32, i32* %arrayidx156, align 4
  %106 = load i32, i32* %n, align 4
  %idxprom157 = sext i32 %106 to i64
  %107 = load i32, i32* %clist, align 4
  %idxprom158 = sext i32 %107 to i64
  %arrayidx159 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom158
  %arrayidx160 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx159, i32 0, i64 %idxprom157
  %arrayidx161 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx160, i32 0, i64 0
  store i32 %105, i32* %arrayidx161, align 4
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.155, %lor.lhs.false
  br label %if.end.214

if.else.163:                                      ; preds = %for.end.115
  %108 = load double, double* %dc_org, align 8
  %109 = load i32, i32* %n, align 4
  %idxprom164 = sext i32 %109 to i64
  %arrayidx165 = getelementptr inbounds [32 x double], [32 x double]* %dc_ref, i32 0, i64 %idxprom164
  %110 = load double, double* %arrayidx165, align 8
  %sub166 = fsub double %108, %110
  %111 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %size = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %111, i32 0, i32 22
  %112 = load i32, i32* %size, align 4
  %conv167 = sitofp i32 %112 to double
  %div168 = fdiv double %sub166, %conv167
  %add169 = fadd double %div168, 5.000000e-01
  %conv170 = fptosi double %add169 to i32
  %113 = load i32, i32* %n, align 4
  %idxprom171 = sext i32 %113 to i64
  %114 = load i32, i32* %clist, align 4
  %idxprom172 = sext i32 %114 to i64
  %arrayidx173 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %offset, i32 0, i64 %idxprom172
  %arrayidx174 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx173, i32 0, i64 %idxprom171
  %arrayidx175 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx174, i32 0, i64 0
  store i32 %conv170, i32* %arrayidx175, align 4
  %115 = load i32, i32* %n, align 4
  %idxprom176 = sext i32 %115 to i64
  %116 = load i32, i32* %clist, align 4
  %idxprom177 = sext i32 %116 to i64
  %arrayidx178 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %offset, i32 0, i64 %idxprom177
  %arrayidx179 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx178, i32 0, i64 %idxprom176
  %arrayidx180 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx179, i32 0, i64 0
  %117 = load i32, i32* %arrayidx180, align 4
  %cmp181 = icmp slt i32 %117, -128
  br i1 %cmp181, label %cond.true.183, label %cond.false.184

cond.true.183:                                    ; preds = %if.else.163
  br label %cond.end.201

cond.false.184:                                   ; preds = %if.else.163
  %118 = load i32, i32* %n, align 4
  %idxprom185 = sext i32 %118 to i64
  %119 = load i32, i32* %clist, align 4
  %idxprom186 = sext i32 %119 to i64
  %arrayidx187 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %offset, i32 0, i64 %idxprom186
  %arrayidx188 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx187, i32 0, i64 %idxprom185
  %arrayidx189 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx188, i32 0, i64 0
  %120 = load i32, i32* %arrayidx189, align 4
  %cmp190 = icmp sgt i32 %120, 127
  br i1 %cmp190, label %cond.true.192, label %cond.false.193

cond.true.192:                                    ; preds = %cond.false.184
  br label %cond.end.199

cond.false.193:                                   ; preds = %cond.false.184
  %121 = load i32, i32* %n, align 4
  %idxprom194 = sext i32 %121 to i64
  %122 = load i32, i32* %clist, align 4
  %idxprom195 = sext i32 %122 to i64
  %arrayidx196 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %offset, i32 0, i64 %idxprom195
  %arrayidx197 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx196, i32 0, i64 %idxprom194
  %arrayidx198 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx197, i32 0, i64 0
  %123 = load i32, i32* %arrayidx198, align 4
  br label %cond.end.199

cond.end.199:                                     ; preds = %cond.false.193, %cond.true.192
  %cond200 = phi i32 [ 127, %cond.true.192 ], [ %123, %cond.false.193 ]
  br label %cond.end.201

cond.end.201:                                     ; preds = %cond.end.199, %cond.true.183
  %cond202 = phi i32 [ -128, %cond.true.183 ], [ %cond200, %cond.end.199 ]
  %124 = load i32, i32* %n, align 4
  %idxprom203 = sext i32 %124 to i64
  %125 = load i32, i32* %clist, align 4
  %idxprom204 = sext i32 %125 to i64
  %arrayidx205 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %offset, i32 0, i64 %idxprom204
  %arrayidx206 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx205, i32 0, i64 %idxprom203
  %arrayidx207 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx206, i32 0, i64 0
  store i32 %cond202, i32* %arrayidx207, align 4
  %arrayidx208 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 0
  %126 = load i32, i32* %arrayidx208, align 4
  %127 = load i32, i32* %n, align 4
  %idxprom209 = sext i32 %127 to i64
  %128 = load i32, i32* %clist, align 4
  %idxprom210 = sext i32 %128 to i64
  %arrayidx211 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom210
  %arrayidx212 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx211, i32 0, i64 %idxprom209
  %arrayidx213 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx212, i32 0, i64 0
  store i32 %126, i32* %arrayidx213, align 4
  br label %if.end.214

if.end.214:                                       ; preds = %cond.end.201, %if.end.162
  %arrayidx215 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 1
  %129 = load i32, i32* %arrayidx215, align 4
  %130 = load i32, i32* %n, align 4
  %idxprom216 = sext i32 %130 to i64
  %131 = load i32, i32* %clist, align 4
  %idxprom217 = sext i32 %131 to i64
  %arrayidx218 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom217
  %arrayidx219 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx218, i32 0, i64 %idxprom216
  %arrayidx220 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx219, i32 0, i64 1
  store i32 %129, i32* %arrayidx220, align 4
  %arrayidx221 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 2
  %132 = load i32, i32* %arrayidx221, align 4
  %133 = load i32, i32* %n, align 4
  %idxprom222 = sext i32 %133 to i64
  %134 = load i32, i32* %clist, align 4
  %idxprom223 = sext i32 %134 to i64
  %arrayidx224 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom223
  %arrayidx225 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx224, i32 0, i64 %idxprom222
  %arrayidx226 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx225, i32 0, i64 2
  store i32 %132, i32* %arrayidx226, align 4
  br label %for.inc.227

for.inc.227:                                      ; preds = %if.end.214
  %135 = load i32, i32* %n, align 4
  %inc228 = add nsw i32 %135, 1
  store i32 %inc228, i32* %n, align 4
  br label %for.cond.76

for.end.229:                                      ; preds = %for.cond.76
  br label %for.inc.230

for.inc.230:                                      ; preds = %for.end.229
  %136 = load i32, i32* %clist, align 4
  %inc231 = add nsw i32 %136, 1
  store i32 %inc231, i32* %clist, align 4
  br label %for.cond.71

for.end.232:                                      ; preds = %for.cond.71
  store i32 0, i32* %clist, align 4
  br label %for.cond.233

for.cond.233:                                     ; preds = %for.inc.278, %for.end.232
  %137 = load i32, i32* %clist, align 4
  %138 = load i32, i32* %list_offset, align 4
  %add234 = add nsw i32 2, %138
  %cmp235 = icmp slt i32 %137, %add234
  br i1 %cmp235, label %for.body.237, label %for.end.280

for.body.237:                                     ; preds = %for.cond.233
  store i32 0, i32* %index, align 4
  br label %for.cond.238

for.cond.238:                                     ; preds = %for.inc.275, %for.body.237
  %139 = load i32, i32* %index, align 4
  %140 = load i32, i32* %clist, align 4
  %idxprom239 = sext i32 %140 to i64
  %arrayidx240 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom239
  %141 = load i32, i32* %arrayidx240, align 4
  %cmp241 = icmp slt i32 %139, %141
  br i1 %cmp241, label %for.body.243, label %for.end.277

for.body.243:                                     ; preds = %for.cond.238
  store i32 0, i32* %comp, align 4
  br label %for.cond.244

for.cond.244:                                     ; preds = %for.inc.272, %for.body.243
  %142 = load i32, i32* %comp, align 4
  %cmp245 = icmp slt i32 %142, 3
  br i1 %cmp245, label %for.body.247, label %for.end.274

for.body.247:                                     ; preds = %for.cond.244
  %143 = load i32, i32* %comp, align 4
  %idxprom248 = sext i32 %143 to i64
  %144 = load i32, i32* %index, align 4
  %idxprom249 = sext i32 %144 to i64
  %145 = load i32, i32* %clist, align 4
  %idxprom250 = sext i32 %145 to i64
  %arrayidx251 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom250
  %arrayidx252 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx251, i32 0, i64 %idxprom249
  %arrayidx253 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx252, i32 0, i64 %idxprom248
  %146 = load i32, i32* %arrayidx253, align 4
  %147 = load i32, i32* %comp, align 4
  %idxprom254 = sext i32 %147 to i64
  %148 = load i32, i32* %index, align 4
  %idxprom255 = sext i32 %148 to i64
  %149 = load i32, i32* %clist, align 4
  %idxprom256 = sext i32 %149 to i64
  %150 = load i32***, i32**** @wp_weight, align 8
  %arrayidx257 = getelementptr inbounds i32**, i32*** %150, i64 %idxprom256
  %151 = load i32**, i32*** %arrayidx257, align 8
  %arrayidx258 = getelementptr inbounds i32*, i32** %151, i64 %idxprom255
  %152 = load i32*, i32** %arrayidx258, align 8
  %arrayidx259 = getelementptr inbounds i32, i32* %152, i64 %idxprom254
  store i32 %146, i32* %arrayidx259, align 4
  %153 = load i32, i32* %comp, align 4
  %idxprom260 = sext i32 %153 to i64
  %154 = load i32, i32* %index, align 4
  %idxprom261 = sext i32 %154 to i64
  %155 = load i32, i32* %clist, align 4
  %idxprom262 = sext i32 %155 to i64
  %arrayidx263 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %offset, i32 0, i64 %idxprom262
  %arrayidx264 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx263, i32 0, i64 %idxprom261
  %arrayidx265 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx264, i32 0, i64 %idxprom260
  %156 = load i32, i32* %arrayidx265, align 4
  %157 = load i32, i32* %comp, align 4
  %idxprom266 = sext i32 %157 to i64
  %158 = load i32, i32* %index, align 4
  %idxprom267 = sext i32 %158 to i64
  %159 = load i32, i32* %clist, align 4
  %idxprom268 = sext i32 %159 to i64
  %160 = load i32***, i32**** @wp_offset, align 8
  %arrayidx269 = getelementptr inbounds i32**, i32*** %160, i64 %idxprom268
  %161 = load i32**, i32*** %arrayidx269, align 8
  %arrayidx270 = getelementptr inbounds i32*, i32** %161, i64 %idxprom267
  %162 = load i32*, i32** %arrayidx270, align 8
  %arrayidx271 = getelementptr inbounds i32, i32* %162, i64 %idxprom266
  store i32 %156, i32* %arrayidx271, align 4
  br label %for.inc.272

for.inc.272:                                      ; preds = %for.body.247
  %163 = load i32, i32* %comp, align 4
  %inc273 = add nsw i32 %163, 1
  store i32 %inc273, i32* %comp, align 4
  br label %for.cond.244

for.end.274:                                      ; preds = %for.cond.244
  br label %for.inc.275

for.inc.275:                                      ; preds = %for.end.274
  %164 = load i32, i32* %index, align 4
  %inc276 = add nsw i32 %164, 1
  store i32 %inc276, i32* %index, align 4
  br label %for.cond.238

for.end.277:                                      ; preds = %for.cond.238
  br label %for.inc.278

for.inc.278:                                      ; preds = %for.end.277
  %165 = load i32, i32* %clist, align 4
  %inc279 = add nsw i32 %165, 1
  store i32 %inc279, i32* %clist, align 4
  br label %for.cond.233

for.end.280:                                      ; preds = %for.cond.233
  ret void
}

; Function Attrs: nounwind uwtable
define void @estimate_weighting_factor_B_slice() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %tx = alloca i32, align 4
  %DistScaleFactor = alloca i32, align 4
  %dc_org = alloca double, align 8
  %index = alloca i32, align 4
  %comp = alloca i32, align 4
  %dc_ref = alloca [6 x [32 x double]], align 16
  %log_weight_denom = alloca i32, align 4
  %default_weight = alloca [3 x i32], align 4
  %list_offset = alloca i32, align 4
  %weight = alloca [6 x [32 x [3 x i32]]], align 16
  %offset = alloca [6 x [32 x [3 x i32]]], align 16
  %im_weight = alloca [6 x [32 x [32 x [3 x i32]]]], align 16
  %im_offset = alloca [6 x [32 x [32 x [3 x i32]]]], align 16
  %clist = alloca i32, align 4
  %wf_weight = alloca i32, align 4
  %wf_offset = alloca i32, align 4
  %tmpPtr = alloca i16**, align 8
  %td = alloca i32, align 4
  %tb = alloca i32, align 4
  store double 0.000000e+00, double* %dc_org, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 100
  %1 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 3
  %3 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 61
  %5 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %5, i64 %idxprom
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 19
  %6 = load i32, i32* %mb_field, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 3
  %8 = load i32, i32* %current_mb_nr2, align 4
  %and = and i32 %8, 1
  %tobool3 = icmp ne i32 %and, 0
  %cond = select i1 %tobool3, i32 4, i32 2
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond4 = phi i32 [ %cond, %cond.true ], [ 0, %cond.false ]
  store i32 %cond4, i32* %list_offset, align 4
  %9 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %9, i32 0, i32 20
  %10 = load i32, i32* %weighted_bipred_idc, align 4
  %cmp = icmp eq i32 %10, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  store i32 5, i32* @luma_log_weight_denom, align 4
  store i32 5, i32* @chroma_log_weight_denom, align 4
  br label %if.end

if.else:                                          ; preds = %cond.end
  store i32 5, i32* @luma_log_weight_denom, align 4
  store i32 5, i32* @chroma_log_weight_denom, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* @luma_log_weight_denom, align 4
  %sub = sub nsw i32 %11, 1
  %shl = shl i32 1, %sub
  store i32 %shl, i32* @wp_luma_round, align 4
  %12 = load i32, i32* @chroma_log_weight_denom, align 4
  %sub5 = sub nsw i32 %12, 1
  %shl6 = shl i32 1, %sub5
  store i32 %shl6, i32* @wp_chroma_round, align 4
  %13 = load i32, i32* @luma_log_weight_denom, align 4
  %shl7 = shl i32 1, %13
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 0
  store i32 %shl7, i32* %arrayidx8, align 4
  %14 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl9 = shl i32 1, %14
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 1
  store i32 %shl9, i32* %arrayidx10, align 4
  %15 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl11 = shl i32 1, %15
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 2
  store i32 %shl11, i32* %arrayidx12, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.53, %if.end
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %list_offset, align 4
  %add = add nsw i32 2, %17
  %cmp13 = icmp slt i32 %16, %add
  br i1 %cmp13, label %for.body, label %for.end.55

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.50, %for.body
  %18 = load i32, i32* %j, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom15
  %20 = load i32, i32* %arrayidx16, align 4
  %cmp17 = icmp slt i32 %18, %20
  br i1 %cmp17, label %for.body.18, label %for.end.52

for.body.18:                                      ; preds = %for.cond.14
  store i32 0, i32* %n, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %for.body.18
  %21 = load i32, i32* %n, align 4
  %cmp20 = icmp slt i32 %21, 3
  br i1 %cmp20, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.19
  %22 = load i32, i32* %n, align 4
  %idxprom22 = sext i32 %22 to i64
  %arrayidx23 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 %idxprom22
  %23 = load i32, i32* %arrayidx23, align 4
  %24 = load i32, i32* %n, align 4
  %idxprom24 = sext i32 %24 to i64
  %25 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %25 to i64
  %26 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %26 to i64
  %27 = load i32***, i32**** @wp_weight, align 8
  %arrayidx27 = getelementptr inbounds i32**, i32*** %27, i64 %idxprom26
  %28 = load i32**, i32*** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i32*, i32** %28, i64 %idxprom25
  %29 = load i32*, i32** %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %29, i64 %idxprom24
  store i32 %23, i32* %arrayidx29, align 4
  %30 = load i32, i32* %n, align 4
  %idxprom30 = sext i32 %30 to i64
  %31 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %31 to i64
  %32 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %32 to i64
  %33 = load i32***, i32**** @wp_offset, align 8
  %arrayidx33 = getelementptr inbounds i32**, i32*** %33, i64 %idxprom32
  %34 = load i32**, i32*** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i32*, i32** %34, i64 %idxprom31
  %35 = load i32*, i32** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %35, i64 %idxprom30
  store i32 0, i32* %arrayidx35, align 4
  %36 = load i32, i32* %n, align 4
  %idxprom36 = sext i32 %36 to i64
  %37 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %37 to i64
  %38 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %38 to i64
  %arrayidx39 = getelementptr inbounds [6 x [32 x [3 x i32]]], [6 x [32 x [3 x i32]]]* %offset, i32 0, i64 %idxprom38
  %arrayidx40 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx39, i32 0, i64 %idxprom37
  %arrayidx41 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx40, i32 0, i64 %idxprom36
  store i32 0, i32* %arrayidx41, align 4
  %39 = load i32, i32* %n, align 4
  %idxprom42 = sext i32 %39 to i64
  %arrayidx43 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 %idxprom42
  %40 = load i32, i32* %arrayidx43, align 4
  %41 = load i32, i32* %n, align 4
  %idxprom44 = sext i32 %41 to i64
  %42 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %42 to i64
  %43 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %43 to i64
  %arrayidx47 = getelementptr inbounds [6 x [32 x [3 x i32]]], [6 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom46
  %arrayidx48 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx47, i32 0, i64 %idxprom45
  %arrayidx49 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx48, i32 0, i64 %idxprom44
  store i32 %40, i32* %arrayidx49, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.21
  %44 = load i32, i32* %n, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.end
  %45 = load i32, i32* %j, align 4
  %inc51 = add nsw i32 %45, 1
  store i32 %inc51, i32* %j, align 4
  br label %for.cond.14

for.end.52:                                       ; preds = %for.cond.14
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.end.52
  %46 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %46, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond

for.end.55:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.188, %for.end.55
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %cmp57 = icmp slt i32 %47, %48
  br i1 %cmp57, label %for.body.58, label %for.end.190

for.body.58:                                      ; preds = %for.cond.56
  store i32 0, i32* %j, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.185, %for.body.58
  %49 = load i32, i32* %j, align 4
  %50 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  %cmp60 = icmp slt i32 %49, %50
  br i1 %cmp60, label %for.body.61, label %for.end.187

for.body.61:                                      ; preds = %for.cond.59
  %51 = load i32, i32* %j, align 4
  %idxprom62 = sext i32 %51 to i64
  %52 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx63 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %52, i64 %idxprom62
  %53 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx63, align 8
  %poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %53, i32 0, i32 1
  %54 = load i32, i32* %poc, align 4
  %55 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %55 to i64
  %56 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx65 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %56, i64 %idxprom64
  %57 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx65, align 8
  %poc66 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %57, i32 0, i32 1
  %58 = load i32, i32* %poc66, align 4
  %sub67 = sub nsw i32 %54, %58
  %call = call i32 @iClip3(i32 -128, i32 127, i32 %sub67)
  store i32 %call, i32* %td, align 4
  %59 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %poc68 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %59, i32 0, i32 1
  %60 = load i32, i32* %poc68, align 4
  %61 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %61 to i64
  %62 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx70 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %62, i64 %idxprom69
  %63 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx70, align 8
  %poc71 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %63, i32 0, i32 1
  %64 = load i32, i32* %poc71, align 4
  %sub72 = sub nsw i32 %60, %64
  %call73 = call i32 @iClip3(i32 -128, i32 127, i32 %sub72)
  store i32 %call73, i32* %tb, align 4
  store i32 0, i32* %comp, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.182, %for.body.61
  %65 = load i32, i32* %comp, align 4
  %cmp75 = icmp slt i32 %65, 3
  br i1 %cmp75, label %for.body.76, label %for.end.184

for.body.76:                                      ; preds = %for.cond.74
  %66 = load i32, i32* %td, align 4
  %cmp77 = icmp eq i32 %66, 0
  br i1 %cmp77, label %if.then.78, label %if.else.111

if.then.78:                                       ; preds = %for.body.76
  %67 = load i32, i32* %comp, align 4
  %idxprom79 = sext i32 %67 to i64
  %arrayidx80 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 %idxprom79
  %68 = load i32, i32* %arrayidx80, align 4
  %69 = load i32, i32* %comp, align 4
  %idxprom81 = sext i32 %69 to i64
  %70 = load i32, i32* %j, align 4
  %idxprom82 = sext i32 %70 to i64
  %71 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %71 to i64
  %arrayidx84 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], [6 x [32 x [32 x [3 x i32]]]]* %im_weight, i32 0, i64 1
  %arrayidx85 = getelementptr inbounds [32 x [32 x [3 x i32]]], [32 x [32 x [3 x i32]]]* %arrayidx84, i32 0, i64 %idxprom83
  %arrayidx86 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx85, i32 0, i64 %idxprom82
  %arrayidx87 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx86, i32 0, i64 %idxprom81
  store i32 %68, i32* %arrayidx87, align 4
  %72 = load i32, i32* %comp, align 4
  %idxprom88 = sext i32 %72 to i64
  %arrayidx89 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 %idxprom88
  %73 = load i32, i32* %arrayidx89, align 4
  %74 = load i32, i32* %comp, align 4
  %idxprom90 = sext i32 %74 to i64
  %75 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %75 to i64
  %76 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %76 to i64
  %arrayidx93 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], [6 x [32 x [32 x [3 x i32]]]]* %im_weight, i32 0, i64 0
  %arrayidx94 = getelementptr inbounds [32 x [32 x [3 x i32]]], [32 x [32 x [3 x i32]]]* %arrayidx93, i32 0, i64 %idxprom92
  %arrayidx95 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx94, i32 0, i64 %idxprom91
  %arrayidx96 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx95, i32 0, i64 %idxprom90
  store i32 %73, i32* %arrayidx96, align 4
  %77 = load i32, i32* %comp, align 4
  %idxprom97 = sext i32 %77 to i64
  %78 = load i32, i32* %j, align 4
  %idxprom98 = sext i32 %78 to i64
  %79 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %79 to i64
  %arrayidx100 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], [6 x [32 x [32 x [3 x i32]]]]* %im_offset, i32 0, i64 1
  %arrayidx101 = getelementptr inbounds [32 x [32 x [3 x i32]]], [32 x [32 x [3 x i32]]]* %arrayidx100, i32 0, i64 %idxprom99
  %arrayidx102 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx101, i32 0, i64 %idxprom98
  %arrayidx103 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx102, i32 0, i64 %idxprom97
  store i32 0, i32* %arrayidx103, align 4
  %80 = load i32, i32* %comp, align 4
  %idxprom104 = sext i32 %80 to i64
  %81 = load i32, i32* %j, align 4
  %idxprom105 = sext i32 %81 to i64
  %82 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %82 to i64
  %arrayidx107 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], [6 x [32 x [32 x [3 x i32]]]]* %im_offset, i32 0, i64 0
  %arrayidx108 = getelementptr inbounds [32 x [32 x [3 x i32]]], [32 x [32 x [3 x i32]]]* %arrayidx107, i32 0, i64 %idxprom106
  %arrayidx109 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx108, i32 0, i64 %idxprom105
  %arrayidx110 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx109, i32 0, i64 %idxprom104
  store i32 0, i32* %arrayidx110, align 4
  br label %if.end.181

if.else.111:                                      ; preds = %for.body.76
  %83 = load i32, i32* %td, align 4
  %div = sdiv i32 %83, 2
  %call112 = call i32 @iabs(i32 %div)
  %add113 = add nsw i32 16384, %call112
  %84 = load i32, i32* %td, align 4
  %div114 = sdiv i32 %add113, %84
  store i32 %div114, i32* %tx, align 4
  %85 = load i32, i32* %tx, align 4
  %86 = load i32, i32* %tb, align 4
  %mul = mul nsw i32 %85, %86
  %add115 = add nsw i32 %mul, 32
  %shr = ashr i32 %add115, 6
  %call116 = call i32 @iClip3(i32 -1024, i32 1023, i32 %shr)
  store i32 %call116, i32* %DistScaleFactor, align 4
  %87 = load i32, i32* %DistScaleFactor, align 4
  %shr117 = ashr i32 %87, 2
  %88 = load i32, i32* %comp, align 4
  %idxprom118 = sext i32 %88 to i64
  %89 = load i32, i32* %j, align 4
  %idxprom119 = sext i32 %89 to i64
  %90 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %90 to i64
  %arrayidx121 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], [6 x [32 x [32 x [3 x i32]]]]* %im_weight, i32 0, i64 1
  %arrayidx122 = getelementptr inbounds [32 x [32 x [3 x i32]]], [32 x [32 x [3 x i32]]]* %arrayidx121, i32 0, i64 %idxprom120
  %arrayidx123 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx122, i32 0, i64 %idxprom119
  %arrayidx124 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx123, i32 0, i64 %idxprom118
  store i32 %shr117, i32* %arrayidx124, align 4
  %91 = load i32, i32* %comp, align 4
  %idxprom125 = sext i32 %91 to i64
  %92 = load i32, i32* %j, align 4
  %idxprom126 = sext i32 %92 to i64
  %93 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %93 to i64
  %arrayidx128 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], [6 x [32 x [32 x [3 x i32]]]]* %im_weight, i32 0, i64 1
  %arrayidx129 = getelementptr inbounds [32 x [32 x [3 x i32]]], [32 x [32 x [3 x i32]]]* %arrayidx128, i32 0, i64 %idxprom127
  %arrayidx130 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx129, i32 0, i64 %idxprom126
  %arrayidx131 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx130, i32 0, i64 %idxprom125
  %94 = load i32, i32* %arrayidx131, align 4
  %cmp132 = icmp slt i32 %94, -64
  br i1 %cmp132, label %if.then.141, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.111
  %95 = load i32, i32* %comp, align 4
  %idxprom133 = sext i32 %95 to i64
  %96 = load i32, i32* %j, align 4
  %idxprom134 = sext i32 %96 to i64
  %97 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %97 to i64
  %arrayidx136 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], [6 x [32 x [32 x [3 x i32]]]]* %im_weight, i32 0, i64 1
  %arrayidx137 = getelementptr inbounds [32 x [32 x [3 x i32]]], [32 x [32 x [3 x i32]]]* %arrayidx136, i32 0, i64 %idxprom135
  %arrayidx138 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx137, i32 0, i64 %idxprom134
  %arrayidx139 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx138, i32 0, i64 %idxprom133
  %98 = load i32, i32* %arrayidx139, align 4
  %cmp140 = icmp sgt i32 %98, 128
  br i1 %cmp140, label %if.then.141, label %if.end.151

if.then.141:                                      ; preds = %lor.lhs.false, %if.else.111
  %99 = load i32, i32* %comp, align 4
  %idxprom142 = sext i32 %99 to i64
  %arrayidx143 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 %idxprom142
  %100 = load i32, i32* %arrayidx143, align 4
  %101 = load i32, i32* %comp, align 4
  %idxprom144 = sext i32 %101 to i64
  %102 = load i32, i32* %j, align 4
  %idxprom145 = sext i32 %102 to i64
  %103 = load i32, i32* %i, align 4
  %idxprom146 = sext i32 %103 to i64
  %arrayidx147 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], [6 x [32 x [32 x [3 x i32]]]]* %im_weight, i32 0, i64 1
  %arrayidx148 = getelementptr inbounds [32 x [32 x [3 x i32]]], [32 x [32 x [3 x i32]]]* %arrayidx147, i32 0, i64 %idxprom146
  %arrayidx149 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx148, i32 0, i64 %idxprom145
  %arrayidx150 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx149, i32 0, i64 %idxprom144
  store i32 %100, i32* %arrayidx150, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.141, %lor.lhs.false
  %104 = load i32, i32* %comp, align 4
  %idxprom152 = sext i32 %104 to i64
  %105 = load i32, i32* %j, align 4
  %idxprom153 = sext i32 %105 to i64
  %106 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %106 to i64
  %arrayidx155 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], [6 x [32 x [32 x [3 x i32]]]]* %im_weight, i32 0, i64 1
  %arrayidx156 = getelementptr inbounds [32 x [32 x [3 x i32]]], [32 x [32 x [3 x i32]]]* %arrayidx155, i32 0, i64 %idxprom154
  %arrayidx157 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx156, i32 0, i64 %idxprom153
  %arrayidx158 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx157, i32 0, i64 %idxprom152
  %107 = load i32, i32* %arrayidx158, align 4
  %sub159 = sub nsw i32 64, %107
  %108 = load i32, i32* %comp, align 4
  %idxprom160 = sext i32 %108 to i64
  %109 = load i32, i32* %j, align 4
  %idxprom161 = sext i32 %109 to i64
  %110 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %110 to i64
  %arrayidx163 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], [6 x [32 x [32 x [3 x i32]]]]* %im_weight, i32 0, i64 0
  %arrayidx164 = getelementptr inbounds [32 x [32 x [3 x i32]]], [32 x [32 x [3 x i32]]]* %arrayidx163, i32 0, i64 %idxprom162
  %arrayidx165 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx164, i32 0, i64 %idxprom161
  %arrayidx166 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx165, i32 0, i64 %idxprom160
  store i32 %sub159, i32* %arrayidx166, align 4
  %111 = load i32, i32* %comp, align 4
  %idxprom167 = sext i32 %111 to i64
  %112 = load i32, i32* %j, align 4
  %idxprom168 = sext i32 %112 to i64
  %113 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %113 to i64
  %arrayidx170 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], [6 x [32 x [32 x [3 x i32]]]]* %im_offset, i32 0, i64 1
  %arrayidx171 = getelementptr inbounds [32 x [32 x [3 x i32]]], [32 x [32 x [3 x i32]]]* %arrayidx170, i32 0, i64 %idxprom169
  %arrayidx172 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx171, i32 0, i64 %idxprom168
  %arrayidx173 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx172, i32 0, i64 %idxprom167
  store i32 0, i32* %arrayidx173, align 4
  %114 = load i32, i32* %comp, align 4
  %idxprom174 = sext i32 %114 to i64
  %115 = load i32, i32* %j, align 4
  %idxprom175 = sext i32 %115 to i64
  %116 = load i32, i32* %i, align 4
  %idxprom176 = sext i32 %116 to i64
  %arrayidx177 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], [6 x [32 x [32 x [3 x i32]]]]* %im_offset, i32 0, i64 0
  %arrayidx178 = getelementptr inbounds [32 x [32 x [3 x i32]]], [32 x [32 x [3 x i32]]]* %arrayidx177, i32 0, i64 %idxprom176
  %arrayidx179 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx178, i32 0, i64 %idxprom175
  %arrayidx180 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx179, i32 0, i64 %idxprom174
  store i32 0, i32* %arrayidx180, align 4
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.151, %if.then.78
  br label %for.inc.182

for.inc.182:                                      ; preds = %if.end.181
  %117 = load i32, i32* %comp, align 4
  %inc183 = add nsw i32 %117, 1
  store i32 %inc183, i32* %comp, align 4
  br label %for.cond.74

for.end.184:                                      ; preds = %for.cond.74
  br label %for.inc.185

for.inc.185:                                      ; preds = %for.end.184
  %118 = load i32, i32* %j, align 4
  %inc186 = add nsw i32 %118, 1
  store i32 %inc186, i32* %j, align 4
  br label %for.cond.59

for.end.187:                                      ; preds = %for.cond.59
  br label %for.inc.188

for.inc.188:                                      ; preds = %for.end.187
  %119 = load i32, i32* %i, align 4
  %inc189 = add nsw i32 %119, 1
  store i32 %inc189, i32* %i, align 4
  br label %for.cond.56

for.end.190:                                      ; preds = %for.cond.56
  %120 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc191 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %120, i32 0, i32 20
  %121 = load i32, i32* %weighted_bipred_idc191, align 4
  %cmp192 = icmp eq i32 %121, 2
  br i1 %cmp192, label %if.then.193, label %if.else.293

if.then.193:                                      ; preds = %for.end.190
  store i32 0, i32* %i, align 4
  br label %for.cond.194

for.cond.194:                                     ; preds = %for.inc.242, %if.then.193
  %122 = load i32, i32* %i, align 4
  %123 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %cmp195 = icmp slt i32 %122, %123
  br i1 %cmp195, label %for.body.196, label %for.end.244

for.body.196:                                     ; preds = %for.cond.194
  store i32 0, i32* %j, align 4
  br label %for.cond.197

for.cond.197:                                     ; preds = %for.inc.239, %for.body.196
  %124 = load i32, i32* %j, align 4
  %125 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  %cmp198 = icmp slt i32 %124, %125
  br i1 %cmp198, label %for.body.199, label %for.end.241

for.body.199:                                     ; preds = %for.cond.197
  store i32 0, i32* %comp, align 4
  br label %for.cond.200

for.cond.200:                                     ; preds = %for.inc.236, %for.body.199
  %126 = load i32, i32* %comp, align 4
  %cmp201 = icmp slt i32 %126, 3
  br i1 %cmp201, label %for.body.202, label %for.end.238

for.body.202:                                     ; preds = %for.cond.200
  %127 = load i32, i32* %comp, align 4
  %cmp203 = icmp eq i32 %127, 0
  br i1 %cmp203, label %cond.true.204, label %cond.false.205

cond.true.204:                                    ; preds = %for.body.202
  %128 = load i32, i32* @luma_log_weight_denom, align 4
  br label %cond.end.206

cond.false.205:                                   ; preds = %for.body.202
  %129 = load i32, i32* @chroma_log_weight_denom, align 4
  br label %cond.end.206

cond.end.206:                                     ; preds = %cond.false.205, %cond.true.204
  %cond207 = phi i32 [ %128, %cond.true.204 ], [ %129, %cond.false.205 ]
  store i32 %cond207, i32* %log_weight_denom, align 4
  %130 = load i32, i32* %comp, align 4
  %idxprom208 = sext i32 %130 to i64
  %131 = load i32, i32* %j, align 4
  %idxprom209 = sext i32 %131 to i64
  %132 = load i32, i32* %i, align 4
  %idxprom210 = sext i32 %132 to i64
  %arrayidx211 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], [6 x [32 x [32 x [3 x i32]]]]* %im_weight, i32 0, i64 1
  %arrayidx212 = getelementptr inbounds [32 x [32 x [3 x i32]]], [32 x [32 x [3 x i32]]]* %arrayidx211, i32 0, i64 %idxprom210
  %arrayidx213 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx212, i32 0, i64 %idxprom209
  %arrayidx214 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx213, i32 0, i64 %idxprom208
  %133 = load i32, i32* %arrayidx214, align 4
  %134 = load i32, i32* %comp, align 4
  %idxprom215 = sext i32 %134 to i64
  %135 = load i32, i32* %j, align 4
  %idxprom216 = sext i32 %135 to i64
  %136 = load i32, i32* %i, align 4
  %idxprom217 = sext i32 %136 to i64
  %137 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx218 = getelementptr inbounds i32***, i32**** %137, i64 1
  %138 = load i32***, i32**** %arrayidx218, align 8
  %arrayidx219 = getelementptr inbounds i32**, i32*** %138, i64 %idxprom217
  %139 = load i32**, i32*** %arrayidx219, align 8
  %arrayidx220 = getelementptr inbounds i32*, i32** %139, i64 %idxprom216
  %140 = load i32*, i32** %arrayidx220, align 8
  %arrayidx221 = getelementptr inbounds i32, i32* %140, i64 %idxprom215
  store i32 %133, i32* %arrayidx221, align 4
  %141 = load i32, i32* %comp, align 4
  %idxprom222 = sext i32 %141 to i64
  %142 = load i32, i32* %j, align 4
  %idxprom223 = sext i32 %142 to i64
  %143 = load i32, i32* %i, align 4
  %idxprom224 = sext i32 %143 to i64
  %arrayidx225 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], [6 x [32 x [32 x [3 x i32]]]]* %im_weight, i32 0, i64 0
  %arrayidx226 = getelementptr inbounds [32 x [32 x [3 x i32]]], [32 x [32 x [3 x i32]]]* %arrayidx225, i32 0, i64 %idxprom224
  %arrayidx227 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx226, i32 0, i64 %idxprom223
  %arrayidx228 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx227, i32 0, i64 %idxprom222
  %144 = load i32, i32* %arrayidx228, align 4
  %145 = load i32, i32* %comp, align 4
  %idxprom229 = sext i32 %145 to i64
  %146 = load i32, i32* %j, align 4
  %idxprom230 = sext i32 %146 to i64
  %147 = load i32, i32* %i, align 4
  %idxprom231 = sext i32 %147 to i64
  %148 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx232 = getelementptr inbounds i32***, i32**** %148, i64 0
  %149 = load i32***, i32**** %arrayidx232, align 8
  %arrayidx233 = getelementptr inbounds i32**, i32*** %149, i64 %idxprom231
  %150 = load i32**, i32*** %arrayidx233, align 8
  %arrayidx234 = getelementptr inbounds i32*, i32** %150, i64 %idxprom230
  %151 = load i32*, i32** %arrayidx234, align 8
  %arrayidx235 = getelementptr inbounds i32, i32* %151, i64 %idxprom229
  store i32 %144, i32* %arrayidx235, align 4
  br label %for.inc.236

for.inc.236:                                      ; preds = %cond.end.206
  %152 = load i32, i32* %comp, align 4
  %inc237 = add nsw i32 %152, 1
  store i32 %inc237, i32* %comp, align 4
  br label %for.cond.200

for.end.238:                                      ; preds = %for.cond.200
  br label %for.inc.239

for.inc.239:                                      ; preds = %for.end.238
  %153 = load i32, i32* %j, align 4
  %inc240 = add nsw i32 %153, 1
  store i32 %inc240, i32* %j, align 4
  br label %for.cond.197

for.end.241:                                      ; preds = %for.cond.197
  br label %for.inc.242

for.inc.242:                                      ; preds = %for.end.241
  %154 = load i32, i32* %i, align 4
  %inc243 = add nsw i32 %154, 1
  store i32 %inc243, i32* %i, align 4
  br label %for.cond.194

for.end.244:                                      ; preds = %for.cond.194
  store i32 0, i32* %clist, align 4
  br label %for.cond.245

for.cond.245:                                     ; preds = %for.inc.290, %for.end.244
  %155 = load i32, i32* %clist, align 4
  %156 = load i32, i32* %list_offset, align 4
  %add246 = add nsw i32 2, %156
  %cmp247 = icmp slt i32 %155, %add246
  br i1 %cmp247, label %for.body.248, label %for.end.292

for.body.248:                                     ; preds = %for.cond.245
  store i32 0, i32* %index, align 4
  br label %for.cond.249

for.cond.249:                                     ; preds = %for.inc.287, %for.body.248
  %157 = load i32, i32* %index, align 4
  %158 = load i32, i32* %clist, align 4
  %idxprom250 = sext i32 %158 to i64
  %arrayidx251 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom250
  %159 = load i32, i32* %arrayidx251, align 4
  %cmp252 = icmp slt i32 %157, %159
  br i1 %cmp252, label %for.body.253, label %for.end.289

for.body.253:                                     ; preds = %for.cond.249
  %arrayidx254 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 0
  %160 = load i32, i32* %arrayidx254, align 4
  %161 = load i32, i32* %index, align 4
  %idxprom255 = sext i32 %161 to i64
  %162 = load i32, i32* %clist, align 4
  %idxprom256 = sext i32 %162 to i64
  %163 = load i32***, i32**** @wp_weight, align 8
  %arrayidx257 = getelementptr inbounds i32**, i32*** %163, i64 %idxprom256
  %164 = load i32**, i32*** %arrayidx257, align 8
  %arrayidx258 = getelementptr inbounds i32*, i32** %164, i64 %idxprom255
  %165 = load i32*, i32** %arrayidx258, align 8
  %arrayidx259 = getelementptr inbounds i32, i32* %165, i64 0
  store i32 %160, i32* %arrayidx259, align 4
  %arrayidx260 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 1
  %166 = load i32, i32* %arrayidx260, align 4
  %167 = load i32, i32* %index, align 4
  %idxprom261 = sext i32 %167 to i64
  %168 = load i32, i32* %clist, align 4
  %idxprom262 = sext i32 %168 to i64
  %169 = load i32***, i32**** @wp_weight, align 8
  %arrayidx263 = getelementptr inbounds i32**, i32*** %169, i64 %idxprom262
  %170 = load i32**, i32*** %arrayidx263, align 8
  %arrayidx264 = getelementptr inbounds i32*, i32** %170, i64 %idxprom261
  %171 = load i32*, i32** %arrayidx264, align 8
  %arrayidx265 = getelementptr inbounds i32, i32* %171, i64 1
  store i32 %166, i32* %arrayidx265, align 4
  %arrayidx266 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 2
  %172 = load i32, i32* %arrayidx266, align 4
  %173 = load i32, i32* %index, align 4
  %idxprom267 = sext i32 %173 to i64
  %174 = load i32, i32* %clist, align 4
  %idxprom268 = sext i32 %174 to i64
  %175 = load i32***, i32**** @wp_weight, align 8
  %arrayidx269 = getelementptr inbounds i32**, i32*** %175, i64 %idxprom268
  %176 = load i32**, i32*** %arrayidx269, align 8
  %arrayidx270 = getelementptr inbounds i32*, i32** %176, i64 %idxprom267
  %177 = load i32*, i32** %arrayidx270, align 8
  %arrayidx271 = getelementptr inbounds i32, i32* %177, i64 2
  store i32 %172, i32* %arrayidx271, align 4
  %178 = load i32, i32* %index, align 4
  %idxprom272 = sext i32 %178 to i64
  %179 = load i32, i32* %clist, align 4
  %idxprom273 = sext i32 %179 to i64
  %180 = load i32***, i32**** @wp_offset, align 8
  %arrayidx274 = getelementptr inbounds i32**, i32*** %180, i64 %idxprom273
  %181 = load i32**, i32*** %arrayidx274, align 8
  %arrayidx275 = getelementptr inbounds i32*, i32** %181, i64 %idxprom272
  %182 = load i32*, i32** %arrayidx275, align 8
  %arrayidx276 = getelementptr inbounds i32, i32* %182, i64 0
  store i32 0, i32* %arrayidx276, align 4
  %183 = load i32, i32* %index, align 4
  %idxprom277 = sext i32 %183 to i64
  %184 = load i32, i32* %clist, align 4
  %idxprom278 = sext i32 %184 to i64
  %185 = load i32***, i32**** @wp_offset, align 8
  %arrayidx279 = getelementptr inbounds i32**, i32*** %185, i64 %idxprom278
  %186 = load i32**, i32*** %arrayidx279, align 8
  %arrayidx280 = getelementptr inbounds i32*, i32** %186, i64 %idxprom277
  %187 = load i32*, i32** %arrayidx280, align 8
  %arrayidx281 = getelementptr inbounds i32, i32* %187, i64 1
  store i32 0, i32* %arrayidx281, align 4
  %188 = load i32, i32* %index, align 4
  %idxprom282 = sext i32 %188 to i64
  %189 = load i32, i32* %clist, align 4
  %idxprom283 = sext i32 %189 to i64
  %190 = load i32***, i32**** @wp_offset, align 8
  %arrayidx284 = getelementptr inbounds i32**, i32*** %190, i64 %idxprom283
  %191 = load i32**, i32*** %arrayidx284, align 8
  %arrayidx285 = getelementptr inbounds i32*, i32** %191, i64 %idxprom282
  %192 = load i32*, i32** %arrayidx285, align 8
  %arrayidx286 = getelementptr inbounds i32, i32* %192, i64 2
  store i32 0, i32* %arrayidx286, align 4
  br label %for.inc.287

for.inc.287:                                      ; preds = %for.body.253
  %193 = load i32, i32* %index, align 4
  %inc288 = add nsw i32 %193, 1
  store i32 %inc288, i32* %index, align 4
  br label %for.cond.249

for.end.289:                                      ; preds = %for.cond.249
  br label %for.inc.290

for.inc.290:                                      ; preds = %for.end.289
  %194 = load i32, i32* %clist, align 4
  %inc291 = add nsw i32 %194, 1
  store i32 %inc291, i32* %clist, align 4
  br label %for.cond.245

for.end.292:                                      ; preds = %for.cond.245
  br label %if.end.581

if.else.293:                                      ; preds = %for.end.190
  store i32 0, i32* %i, align 4
  br label %for.cond.294

for.cond.294:                                     ; preds = %for.inc.308, %if.else.293
  %195 = load i32, i32* %i, align 4
  %196 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %196, i32 0, i32 17
  %197 = load i32, i32* %height, align 4
  %cmp295 = icmp slt i32 %195, %197
  br i1 %cmp295, label %for.body.296, label %for.end.310

for.body.296:                                     ; preds = %for.cond.294
  store i32 0, i32* %j, align 4
  br label %for.cond.297

for.cond.297:                                     ; preds = %for.inc.305, %for.body.296
  %198 = load i32, i32* %j, align 4
  %199 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %199, i32 0, i32 13
  %200 = load i32, i32* %width, align 4
  %cmp298 = icmp slt i32 %198, %200
  br i1 %cmp298, label %for.body.299, label %for.end.307

for.body.299:                                     ; preds = %for.cond.297
  %201 = load i32, i32* %j, align 4
  %idxprom300 = sext i32 %201 to i64
  %202 = load i32, i32* %i, align 4
  %idxprom301 = sext i32 %202 to i64
  %203 = load i16**, i16*** @imgY_org, align 8
  %arrayidx302 = getelementptr inbounds i16*, i16** %203, i64 %idxprom301
  %204 = load i16*, i16** %arrayidx302, align 8
  %arrayidx303 = getelementptr inbounds i16, i16* %204, i64 %idxprom300
  %205 = load i16, i16* %arrayidx303, align 2
  %conv = uitofp i16 %205 to double
  %206 = load double, double* %dc_org, align 8
  %add304 = fadd double %206, %conv
  store double %add304, double* %dc_org, align 8
  br label %for.inc.305

for.inc.305:                                      ; preds = %for.body.299
  %207 = load i32, i32* %j, align 4
  %inc306 = add nsw i32 %207, 1
  store i32 %inc306, i32* %j, align 4
  br label %for.cond.297

for.end.307:                                      ; preds = %for.cond.297
  br label %for.inc.308

for.inc.308:                                      ; preds = %for.end.307
  %208 = load i32, i32* %i, align 4
  %inc309 = add nsw i32 %208, 1
  store i32 %inc309, i32* %i, align 4
  br label %for.cond.294

for.end.310:                                      ; preds = %for.cond.294
  store i32 0, i32* %clist, align 4
  br label %for.cond.311

for.cond.311:                                     ; preds = %for.inc.423, %for.end.310
  %209 = load i32, i32* %clist, align 4
  %210 = load i32, i32* %list_offset, align 4
  %add312 = add nsw i32 2, %210
  %cmp313 = icmp slt i32 %209, %add312
  br i1 %cmp313, label %for.body.315, label %for.end.425

for.body.315:                                     ; preds = %for.cond.311
  store i32 0, i32* %n, align 4
  br label %for.cond.316

for.cond.316:                                     ; preds = %for.inc.420, %for.body.315
  %211 = load i32, i32* %n, align 4
  %212 = load i32, i32* %clist, align 4
  %idxprom317 = sext i32 %212 to i64
  %arrayidx318 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom317
  %213 = load i32, i32* %arrayidx318, align 4
  %cmp319 = icmp slt i32 %211, %213
  br i1 %cmp319, label %for.body.321, label %for.end.422

for.body.321:                                     ; preds = %for.cond.316
  %214 = load i32, i32* %n, align 4
  %idxprom322 = sext i32 %214 to i64
  %215 = load i32, i32* %clist, align 4
  %idxprom323 = sext i32 %215 to i64
  %arrayidx324 = getelementptr inbounds [6 x [32 x double]], [6 x [32 x double]]* %dc_ref, i32 0, i64 %idxprom323
  %arrayidx325 = getelementptr inbounds [32 x double], [32 x double]* %arrayidx324, i32 0, i64 %idxprom322
  store double 0.000000e+00, double* %arrayidx325, align 8
  %216 = load i32, i32* %n, align 4
  %idxprom326 = sext i32 %216 to i64
  %217 = load i32, i32* %clist, align 4
  %idxprom327 = sext i32 %217 to i64
  %arrayidx328 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom327
  %218 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx328, align 8
  %arrayidx329 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %218, i64 %idxprom326
  %219 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx329, align 8
  %imgY_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %219, i32 0, i32 30
  %220 = load i16****, i16***** %imgY_sub, align 8
  store i16**** %220, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_qpic_sub, i32 0, i32 0), align 8
  %221 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_qpic_sub, i32 0, i32 0), align 8
  %arrayidx330 = getelementptr inbounds i16***, i16**** %221, i64 0
  %222 = load i16***, i16**** %arrayidx330, align 8
  %arrayidx331 = getelementptr inbounds i16**, i16*** %222, i64 0
  %223 = load i16**, i16*** %arrayidx331, align 8
  store i16** %223, i16*** %tmpPtr, align 8
  store i32 20, i32* %j, align 4
  br label %for.cond.332

for.cond.332:                                     ; preds = %for.inc.357, %for.body.321
  %224 = load i32, i32* %j, align 4
  %225 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height333 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %225, i32 0, i32 17
  %226 = load i32, i32* %height333, align 4
  %add334 = add nsw i32 %226, 20
  %cmp335 = icmp slt i32 %224, %add334
  br i1 %cmp335, label %for.body.337, label %for.end.359

for.body.337:                                     ; preds = %for.cond.332
  store i32 20, i32* %i, align 4
  br label %for.cond.338

for.cond.338:                                     ; preds = %for.inc.354, %for.body.337
  %227 = load i32, i32* %i, align 4
  %228 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width339 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %228, i32 0, i32 13
  %229 = load i32, i32* %width339, align 4
  %add340 = add nsw i32 %229, 20
  %cmp341 = icmp slt i32 %227, %add340
  br i1 %cmp341, label %for.body.343, label %for.end.356

for.body.343:                                     ; preds = %for.cond.338
  %230 = load i32, i32* %i, align 4
  %idxprom344 = sext i32 %230 to i64
  %231 = load i32, i32* %j, align 4
  %idxprom345 = sext i32 %231 to i64
  %232 = load i16**, i16*** %tmpPtr, align 8
  %arrayidx346 = getelementptr inbounds i16*, i16** %232, i64 %idxprom345
  %233 = load i16*, i16** %arrayidx346, align 8
  %arrayidx347 = getelementptr inbounds i16, i16* %233, i64 %idxprom344
  %234 = load i16, i16* %arrayidx347, align 2
  %conv348 = uitofp i16 %234 to double
  %235 = load i32, i32* %n, align 4
  %idxprom349 = sext i32 %235 to i64
  %236 = load i32, i32* %clist, align 4
  %idxprom350 = sext i32 %236 to i64
  %arrayidx351 = getelementptr inbounds [6 x [32 x double]], [6 x [32 x double]]* %dc_ref, i32 0, i64 %idxprom350
  %arrayidx352 = getelementptr inbounds [32 x double], [32 x double]* %arrayidx351, i32 0, i64 %idxprom349
  %237 = load double, double* %arrayidx352, align 8
  %add353 = fadd double %237, %conv348
  store double %add353, double* %arrayidx352, align 8
  br label %for.inc.354

for.inc.354:                                      ; preds = %for.body.343
  %238 = load i32, i32* %i, align 4
  %inc355 = add nsw i32 %238, 1
  store i32 %inc355, i32* %i, align 4
  br label %for.cond.338

for.end.356:                                      ; preds = %for.cond.338
  br label %for.inc.357

for.inc.357:                                      ; preds = %for.end.356
  %239 = load i32, i32* %j, align 4
  %inc358 = add nsw i32 %239, 1
  store i32 %inc358, i32* %j, align 4
  br label %for.cond.332

for.end.359:                                      ; preds = %for.cond.332
  %240 = load i32, i32* %n, align 4
  %idxprom360 = sext i32 %240 to i64
  %241 = load i32, i32* %clist, align 4
  %idxprom361 = sext i32 %241 to i64
  %arrayidx362 = getelementptr inbounds [6 x [32 x double]], [6 x [32 x double]]* %dc_ref, i32 0, i64 %idxprom361
  %arrayidx363 = getelementptr inbounds [32 x double], [32 x double]* %arrayidx362, i32 0, i64 %idxprom360
  %242 = load double, double* %arrayidx363, align 8
  %cmp364 = fcmp une double %242, 0.000000e+00
  br i1 %cmp364, label %if.then.366, label %if.else.377

if.then.366:                                      ; preds = %for.end.359
  %arrayidx367 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 0
  %243 = load i32, i32* %arrayidx367, align 4
  %conv368 = sitofp i32 %243 to double
  %244 = load double, double* %dc_org, align 8
  %mul369 = fmul double %conv368, %244
  %245 = load i32, i32* %n, align 4
  %idxprom370 = sext i32 %245 to i64
  %246 = load i32, i32* %clist, align 4
  %idxprom371 = sext i32 %246 to i64
  %arrayidx372 = getelementptr inbounds [6 x [32 x double]], [6 x [32 x double]]* %dc_ref, i32 0, i64 %idxprom371
  %arrayidx373 = getelementptr inbounds [32 x double], [32 x double]* %arrayidx372, i32 0, i64 %idxprom370
  %247 = load double, double* %arrayidx373, align 8
  %div374 = fdiv double %mul369, %247
  %add375 = fadd double %div374, 5.000000e-01
  %conv376 = fptosi double %add375 to i32
  store i32 %conv376, i32* %wf_weight, align 4
  br label %if.end.379

if.else.377:                                      ; preds = %for.end.359
  %arrayidx378 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 0
  %248 = load i32, i32* %arrayidx378, align 4
  store i32 %248, i32* %wf_weight, align 4
  br label %if.end.379

if.end.379:                                       ; preds = %if.else.377, %if.then.366
  %249 = load i32, i32* %wf_weight, align 4
  %cmp380 = icmp slt i32 %249, -128
  br i1 %cmp380, label %if.then.385, label %lor.lhs.false.382

lor.lhs.false.382:                                ; preds = %if.end.379
  %250 = load i32, i32* %wf_weight, align 4
  %cmp383 = icmp sgt i32 %250, 127
  br i1 %cmp383, label %if.then.385, label %if.end.387

if.then.385:                                      ; preds = %lor.lhs.false.382, %if.end.379
  %arrayidx386 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 0
  %251 = load i32, i32* %arrayidx386, align 4
  store i32 %251, i32* %wf_weight, align 4
  br label %if.end.387

if.end.387:                                       ; preds = %if.then.385, %lor.lhs.false.382
  store i32 0, i32* %wf_offset, align 4
  %252 = load i32, i32* %wf_weight, align 4
  %253 = load i32, i32* %n, align 4
  %idxprom388 = sext i32 %253 to i64
  %254 = load i32, i32* %clist, align 4
  %idxprom389 = sext i32 %254 to i64
  %arrayidx390 = getelementptr inbounds [6 x [32 x [3 x i32]]], [6 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom389
  %arrayidx391 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx390, i32 0, i64 %idxprom388
  %arrayidx392 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx391, i32 0, i64 0
  store i32 %252, i32* %arrayidx392, align 4
  %arrayidx393 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 1
  %255 = load i32, i32* %arrayidx393, align 4
  %256 = load i32, i32* %n, align 4
  %idxprom394 = sext i32 %256 to i64
  %257 = load i32, i32* %clist, align 4
  %idxprom395 = sext i32 %257 to i64
  %arrayidx396 = getelementptr inbounds [6 x [32 x [3 x i32]]], [6 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom395
  %arrayidx397 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx396, i32 0, i64 %idxprom394
  %arrayidx398 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx397, i32 0, i64 1
  store i32 %255, i32* %arrayidx398, align 4
  %arrayidx399 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 2
  %258 = load i32, i32* %arrayidx399, align 4
  %259 = load i32, i32* %n, align 4
  %idxprom400 = sext i32 %259 to i64
  %260 = load i32, i32* %clist, align 4
  %idxprom401 = sext i32 %260 to i64
  %arrayidx402 = getelementptr inbounds [6 x [32 x [3 x i32]]], [6 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom401
  %arrayidx403 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx402, i32 0, i64 %idxprom400
  %arrayidx404 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx403, i32 0, i64 2
  store i32 %258, i32* %arrayidx404, align 4
  %261 = load i32, i32* %n, align 4
  %idxprom405 = sext i32 %261 to i64
  %262 = load i32, i32* %clist, align 4
  %idxprom406 = sext i32 %262 to i64
  %arrayidx407 = getelementptr inbounds [6 x [32 x [3 x i32]]], [6 x [32 x [3 x i32]]]* %offset, i32 0, i64 %idxprom406
  %arrayidx408 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx407, i32 0, i64 %idxprom405
  %arrayidx409 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx408, i32 0, i64 0
  store i32 0, i32* %arrayidx409, align 4
  %263 = load i32, i32* %n, align 4
  %idxprom410 = sext i32 %263 to i64
  %264 = load i32, i32* %clist, align 4
  %idxprom411 = sext i32 %264 to i64
  %arrayidx412 = getelementptr inbounds [6 x [32 x [3 x i32]]], [6 x [32 x [3 x i32]]]* %offset, i32 0, i64 %idxprom411
  %arrayidx413 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx412, i32 0, i64 %idxprom410
  %arrayidx414 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx413, i32 0, i64 1
  store i32 0, i32* %arrayidx414, align 4
  %265 = load i32, i32* %n, align 4
  %idxprom415 = sext i32 %265 to i64
  %266 = load i32, i32* %clist, align 4
  %idxprom416 = sext i32 %266 to i64
  %arrayidx417 = getelementptr inbounds [6 x [32 x [3 x i32]]], [6 x [32 x [3 x i32]]]* %offset, i32 0, i64 %idxprom416
  %arrayidx418 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx417, i32 0, i64 %idxprom415
  %arrayidx419 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx418, i32 0, i64 2
  store i32 0, i32* %arrayidx419, align 4
  br label %for.inc.420

for.inc.420:                                      ; preds = %if.end.387
  %267 = load i32, i32* %n, align 4
  %inc421 = add nsw i32 %267, 1
  store i32 %inc421, i32* %n, align 4
  br label %for.cond.316

for.end.422:                                      ; preds = %for.cond.316
  br label %for.inc.423

for.inc.423:                                      ; preds = %for.end.422
  %268 = load i32, i32* %clist, align 4
  %inc424 = add nsw i32 %268, 1
  store i32 %inc424, i32* %clist, align 4
  br label %for.cond.311

for.end.425:                                      ; preds = %for.cond.311
  %269 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc426 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %269, i32 0, i32 20
  %270 = load i32, i32* %weighted_bipred_idc426, align 4
  %cmp427 = icmp eq i32 %270, 1
  br i1 %cmp427, label %if.then.429, label %if.else.478

if.then.429:                                      ; preds = %for.end.425
  store i32 0, i32* %clist, align 4
  br label %for.cond.430

for.cond.430:                                     ; preds = %for.inc.475, %if.then.429
  %271 = load i32, i32* %clist, align 4
  %272 = load i32, i32* %list_offset, align 4
  %add431 = add nsw i32 2, %272
  %cmp432 = icmp slt i32 %271, %add431
  br i1 %cmp432, label %for.body.434, label %for.end.477

for.body.434:                                     ; preds = %for.cond.430
  store i32 0, i32* %index, align 4
  br label %for.cond.435

for.cond.435:                                     ; preds = %for.inc.472, %for.body.434
  %273 = load i32, i32* %index, align 4
  %274 = load i32, i32* %clist, align 4
  %idxprom436 = sext i32 %274 to i64
  %arrayidx437 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom436
  %275 = load i32, i32* %arrayidx437, align 4
  %cmp438 = icmp slt i32 %273, %275
  br i1 %cmp438, label %for.body.440, label %for.end.474

for.body.440:                                     ; preds = %for.cond.435
  store i32 0, i32* %comp, align 4
  br label %for.cond.441

for.cond.441:                                     ; preds = %for.inc.469, %for.body.440
  %276 = load i32, i32* %comp, align 4
  %cmp442 = icmp slt i32 %276, 3
  br i1 %cmp442, label %for.body.444, label %for.end.471

for.body.444:                                     ; preds = %for.cond.441
  %277 = load i32, i32* %comp, align 4
  %idxprom445 = sext i32 %277 to i64
  %278 = load i32, i32* %index, align 4
  %idxprom446 = sext i32 %278 to i64
  %279 = load i32, i32* %clist, align 4
  %idxprom447 = sext i32 %279 to i64
  %arrayidx448 = getelementptr inbounds [6 x [32 x [3 x i32]]], [6 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom447
  %arrayidx449 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx448, i32 0, i64 %idxprom446
  %arrayidx450 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx449, i32 0, i64 %idxprom445
  %280 = load i32, i32* %arrayidx450, align 4
  %281 = load i32, i32* %comp, align 4
  %idxprom451 = sext i32 %281 to i64
  %282 = load i32, i32* %index, align 4
  %idxprom452 = sext i32 %282 to i64
  %283 = load i32, i32* %clist, align 4
  %idxprom453 = sext i32 %283 to i64
  %284 = load i32***, i32**** @wp_weight, align 8
  %arrayidx454 = getelementptr inbounds i32**, i32*** %284, i64 %idxprom453
  %285 = load i32**, i32*** %arrayidx454, align 8
  %arrayidx455 = getelementptr inbounds i32*, i32** %285, i64 %idxprom452
  %286 = load i32*, i32** %arrayidx455, align 8
  %arrayidx456 = getelementptr inbounds i32, i32* %286, i64 %idxprom451
  store i32 %280, i32* %arrayidx456, align 4
  %287 = load i32, i32* %comp, align 4
  %idxprom457 = sext i32 %287 to i64
  %288 = load i32, i32* %index, align 4
  %idxprom458 = sext i32 %288 to i64
  %289 = load i32, i32* %clist, align 4
  %idxprom459 = sext i32 %289 to i64
  %arrayidx460 = getelementptr inbounds [6 x [32 x [3 x i32]]], [6 x [32 x [3 x i32]]]* %offset, i32 0, i64 %idxprom459
  %arrayidx461 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx460, i32 0, i64 %idxprom458
  %arrayidx462 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx461, i32 0, i64 %idxprom457
  %290 = load i32, i32* %arrayidx462, align 4
  %291 = load i32, i32* %comp, align 4
  %idxprom463 = sext i32 %291 to i64
  %292 = load i32, i32* %index, align 4
  %idxprom464 = sext i32 %292 to i64
  %293 = load i32, i32* %clist, align 4
  %idxprom465 = sext i32 %293 to i64
  %294 = load i32***, i32**** @wp_offset, align 8
  %arrayidx466 = getelementptr inbounds i32**, i32*** %294, i64 %idxprom465
  %295 = load i32**, i32*** %arrayidx466, align 8
  %arrayidx467 = getelementptr inbounds i32*, i32** %295, i64 %idxprom464
  %296 = load i32*, i32** %arrayidx467, align 8
  %arrayidx468 = getelementptr inbounds i32, i32* %296, i64 %idxprom463
  store i32 %290, i32* %arrayidx468, align 4
  br label %for.inc.469

for.inc.469:                                      ; preds = %for.body.444
  %297 = load i32, i32* %comp, align 4
  %inc470 = add nsw i32 %297, 1
  store i32 %inc470, i32* %comp, align 4
  br label %for.cond.441

for.end.471:                                      ; preds = %for.cond.441
  br label %for.inc.472

for.inc.472:                                      ; preds = %for.end.471
  %298 = load i32, i32* %index, align 4
  %inc473 = add nsw i32 %298, 1
  store i32 %inc473, i32* %index, align 4
  br label %for.cond.435

for.end.474:                                      ; preds = %for.cond.435
  br label %for.inc.475

for.inc.475:                                      ; preds = %for.end.474
  %299 = load i32, i32* %clist, align 4
  %inc476 = add nsw i32 %299, 1
  store i32 %inc476, i32* %clist, align 4
  br label %for.cond.430

for.end.477:                                      ; preds = %for.cond.430
  br label %if.end.529

if.else.478:                                      ; preds = %for.end.425
  store i32 0, i32* %clist, align 4
  br label %for.cond.479

for.cond.479:                                     ; preds = %for.inc.526, %if.else.478
  %300 = load i32, i32* %clist, align 4
  %301 = load i32, i32* %list_offset, align 4
  %add480 = add nsw i32 2, %301
  %cmp481 = icmp slt i32 %300, %add480
  br i1 %cmp481, label %for.body.483, label %for.end.528

for.body.483:                                     ; preds = %for.cond.479
  store i32 0, i32* %index, align 4
  br label %for.cond.484

for.cond.484:                                     ; preds = %for.inc.523, %for.body.483
  %302 = load i32, i32* %index, align 4
  %303 = load i32, i32* %clist, align 4
  %idxprom485 = sext i32 %303 to i64
  %arrayidx486 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom485
  %304 = load i32, i32* %arrayidx486, align 4
  %cmp487 = icmp slt i32 %302, %304
  br i1 %cmp487, label %for.body.489, label %for.end.525

for.body.489:                                     ; preds = %for.cond.484
  %arrayidx490 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 0
  %305 = load i32, i32* %arrayidx490, align 4
  %306 = load i32, i32* %index, align 4
  %idxprom491 = sext i32 %306 to i64
  %307 = load i32, i32* %clist, align 4
  %idxprom492 = sext i32 %307 to i64
  %308 = load i32***, i32**** @wp_weight, align 8
  %arrayidx493 = getelementptr inbounds i32**, i32*** %308, i64 %idxprom492
  %309 = load i32**, i32*** %arrayidx493, align 8
  %arrayidx494 = getelementptr inbounds i32*, i32** %309, i64 %idxprom491
  %310 = load i32*, i32** %arrayidx494, align 8
  %arrayidx495 = getelementptr inbounds i32, i32* %310, i64 0
  store i32 %305, i32* %arrayidx495, align 4
  %arrayidx496 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 1
  %311 = load i32, i32* %arrayidx496, align 4
  %312 = load i32, i32* %index, align 4
  %idxprom497 = sext i32 %312 to i64
  %313 = load i32, i32* %clist, align 4
  %idxprom498 = sext i32 %313 to i64
  %314 = load i32***, i32**** @wp_weight, align 8
  %arrayidx499 = getelementptr inbounds i32**, i32*** %314, i64 %idxprom498
  %315 = load i32**, i32*** %arrayidx499, align 8
  %arrayidx500 = getelementptr inbounds i32*, i32** %315, i64 %idxprom497
  %316 = load i32*, i32** %arrayidx500, align 8
  %arrayidx501 = getelementptr inbounds i32, i32* %316, i64 1
  store i32 %311, i32* %arrayidx501, align 4
  %arrayidx502 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 2
  %317 = load i32, i32* %arrayidx502, align 4
  %318 = load i32, i32* %index, align 4
  %idxprom503 = sext i32 %318 to i64
  %319 = load i32, i32* %clist, align 4
  %idxprom504 = sext i32 %319 to i64
  %320 = load i32***, i32**** @wp_weight, align 8
  %arrayidx505 = getelementptr inbounds i32**, i32*** %320, i64 %idxprom504
  %321 = load i32**, i32*** %arrayidx505, align 8
  %arrayidx506 = getelementptr inbounds i32*, i32** %321, i64 %idxprom503
  %322 = load i32*, i32** %arrayidx506, align 8
  %arrayidx507 = getelementptr inbounds i32, i32* %322, i64 2
  store i32 %317, i32* %arrayidx507, align 4
  %323 = load i32, i32* %index, align 4
  %idxprom508 = sext i32 %323 to i64
  %324 = load i32, i32* %clist, align 4
  %idxprom509 = sext i32 %324 to i64
  %325 = load i32***, i32**** @wp_offset, align 8
  %arrayidx510 = getelementptr inbounds i32**, i32*** %325, i64 %idxprom509
  %326 = load i32**, i32*** %arrayidx510, align 8
  %arrayidx511 = getelementptr inbounds i32*, i32** %326, i64 %idxprom508
  %327 = load i32*, i32** %arrayidx511, align 8
  %arrayidx512 = getelementptr inbounds i32, i32* %327, i64 0
  store i32 0, i32* %arrayidx512, align 4
  %328 = load i32, i32* %index, align 4
  %idxprom513 = sext i32 %328 to i64
  %329 = load i32, i32* %clist, align 4
  %idxprom514 = sext i32 %329 to i64
  %330 = load i32***, i32**** @wp_offset, align 8
  %arrayidx515 = getelementptr inbounds i32**, i32*** %330, i64 %idxprom514
  %331 = load i32**, i32*** %arrayidx515, align 8
  %arrayidx516 = getelementptr inbounds i32*, i32** %331, i64 %idxprom513
  %332 = load i32*, i32** %arrayidx516, align 8
  %arrayidx517 = getelementptr inbounds i32, i32* %332, i64 1
  store i32 0, i32* %arrayidx517, align 4
  %333 = load i32, i32* %index, align 4
  %idxprom518 = sext i32 %333 to i64
  %334 = load i32, i32* %clist, align 4
  %idxprom519 = sext i32 %334 to i64
  %335 = load i32***, i32**** @wp_offset, align 8
  %arrayidx520 = getelementptr inbounds i32**, i32*** %335, i64 %idxprom519
  %336 = load i32**, i32*** %arrayidx520, align 8
  %arrayidx521 = getelementptr inbounds i32*, i32** %336, i64 %idxprom518
  %337 = load i32*, i32** %arrayidx521, align 8
  %arrayidx522 = getelementptr inbounds i32, i32* %337, i64 2
  store i32 0, i32* %arrayidx522, align 4
  br label %for.inc.523

for.inc.523:                                      ; preds = %for.body.489
  %338 = load i32, i32* %index, align 4
  %inc524 = add nsw i32 %338, 1
  store i32 %inc524, i32* %index, align 4
  br label %for.cond.484

for.end.525:                                      ; preds = %for.cond.484
  br label %for.inc.526

for.inc.526:                                      ; preds = %for.end.525
  %339 = load i32, i32* %clist, align 4
  %inc527 = add nsw i32 %339, 1
  store i32 %inc527, i32* %clist, align 4
  br label %for.cond.479

for.end.528:                                      ; preds = %for.cond.479
  br label %if.end.529

if.end.529:                                       ; preds = %for.end.528, %for.end.477
  store i32 0, i32* %i, align 4
  br label %for.cond.530

for.cond.530:                                     ; preds = %for.inc.578, %if.end.529
  %340 = load i32, i32* %i, align 4
  %341 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %cmp531 = icmp slt i32 %340, %341
  br i1 %cmp531, label %for.body.533, label %for.end.580

for.body.533:                                     ; preds = %for.cond.530
  store i32 0, i32* %j, align 4
  br label %for.cond.534

for.cond.534:                                     ; preds = %for.inc.575, %for.body.533
  %342 = load i32, i32* %j, align 4
  %343 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  %cmp535 = icmp slt i32 %342, %343
  br i1 %cmp535, label %for.body.537, label %for.end.577

for.body.537:                                     ; preds = %for.cond.534
  store i32 0, i32* %comp, align 4
  br label %for.cond.538

for.cond.538:                                     ; preds = %for.inc.572, %for.body.537
  %344 = load i32, i32* %comp, align 4
  %cmp539 = icmp slt i32 %344, 3
  br i1 %cmp539, label %for.body.541, label %for.end.574

for.body.541:                                     ; preds = %for.cond.538
  %345 = load i32, i32* %comp, align 4
  %cmp542 = icmp eq i32 %345, 0
  br i1 %cmp542, label %cond.true.544, label %cond.false.545

cond.true.544:                                    ; preds = %for.body.541
  %346 = load i32, i32* @luma_log_weight_denom, align 4
  br label %cond.end.546

cond.false.545:                                   ; preds = %for.body.541
  %347 = load i32, i32* @chroma_log_weight_denom, align 4
  br label %cond.end.546

cond.end.546:                                     ; preds = %cond.false.545, %cond.true.544
  %cond547 = phi i32 [ %346, %cond.true.544 ], [ %347, %cond.false.545 ]
  store i32 %cond547, i32* %log_weight_denom, align 4
  %348 = load i32, i32* %comp, align 4
  %idxprom548 = sext i32 %348 to i64
  %349 = load i32, i32* %i, align 4
  %idxprom549 = sext i32 %349 to i64
  %350 = load i32***, i32**** @wp_weight, align 8
  %arrayidx550 = getelementptr inbounds i32**, i32*** %350, i64 0
  %351 = load i32**, i32*** %arrayidx550, align 8
  %arrayidx551 = getelementptr inbounds i32*, i32** %351, i64 %idxprom549
  %352 = load i32*, i32** %arrayidx551, align 8
  %arrayidx552 = getelementptr inbounds i32, i32* %352, i64 %idxprom548
  %353 = load i32, i32* %arrayidx552, align 4
  %354 = load i32, i32* %comp, align 4
  %idxprom553 = sext i32 %354 to i64
  %355 = load i32, i32* %j, align 4
  %idxprom554 = sext i32 %355 to i64
  %356 = load i32, i32* %i, align 4
  %idxprom555 = sext i32 %356 to i64
  %357 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx556 = getelementptr inbounds i32***, i32**** %357, i64 0
  %358 = load i32***, i32**** %arrayidx556, align 8
  %arrayidx557 = getelementptr inbounds i32**, i32*** %358, i64 %idxprom555
  %359 = load i32**, i32*** %arrayidx557, align 8
  %arrayidx558 = getelementptr inbounds i32*, i32** %359, i64 %idxprom554
  %360 = load i32*, i32** %arrayidx558, align 8
  %arrayidx559 = getelementptr inbounds i32, i32* %360, i64 %idxprom553
  store i32 %353, i32* %arrayidx559, align 4
  %361 = load i32, i32* %comp, align 4
  %idxprom560 = sext i32 %361 to i64
  %362 = load i32, i32* %j, align 4
  %idxprom561 = sext i32 %362 to i64
  %363 = load i32***, i32**** @wp_weight, align 8
  %arrayidx562 = getelementptr inbounds i32**, i32*** %363, i64 1
  %364 = load i32**, i32*** %arrayidx562, align 8
  %arrayidx563 = getelementptr inbounds i32*, i32** %364, i64 %idxprom561
  %365 = load i32*, i32** %arrayidx563, align 8
  %arrayidx564 = getelementptr inbounds i32, i32* %365, i64 %idxprom560
  %366 = load i32, i32* %arrayidx564, align 4
  %367 = load i32, i32* %comp, align 4
  %idxprom565 = sext i32 %367 to i64
  %368 = load i32, i32* %j, align 4
  %idxprom566 = sext i32 %368 to i64
  %369 = load i32, i32* %i, align 4
  %idxprom567 = sext i32 %369 to i64
  %370 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx568 = getelementptr inbounds i32***, i32**** %370, i64 1
  %371 = load i32***, i32**** %arrayidx568, align 8
  %arrayidx569 = getelementptr inbounds i32**, i32*** %371, i64 %idxprom567
  %372 = load i32**, i32*** %arrayidx569, align 8
  %arrayidx570 = getelementptr inbounds i32*, i32** %372, i64 %idxprom566
  %373 = load i32*, i32** %arrayidx570, align 8
  %arrayidx571 = getelementptr inbounds i32, i32* %373, i64 %idxprom565
  store i32 %366, i32* %arrayidx571, align 4
  br label %for.inc.572

for.inc.572:                                      ; preds = %cond.end.546
  %374 = load i32, i32* %comp, align 4
  %inc573 = add nsw i32 %374, 1
  store i32 %inc573, i32* %comp, align 4
  br label %for.cond.538

for.end.574:                                      ; preds = %for.cond.538
  br label %for.inc.575

for.inc.575:                                      ; preds = %for.end.574
  %375 = load i32, i32* %j, align 4
  %inc576 = add nsw i32 %375, 1
  store i32 %inc576, i32* %j, align 4
  br label %for.cond.534

for.end.577:                                      ; preds = %for.cond.534
  br label %for.inc.578

for.inc.578:                                      ; preds = %for.end.577
  %376 = load i32, i32* %i, align 4
  %inc579 = add nsw i32 %376, 1
  store i32 %inc579, i32* %i, align 4
  br label %for.cond.530

for.end.580:                                      ; preds = %for.cond.530
  br label %if.end.581

if.end.581:                                       ; preds = %for.end.580, %for.end.292
  ret void
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
define i32 @test_wp_P_slice(i32 %select_offset) #0 {
entry:
  %select_offset.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %dc_org = alloca double, align 8
  %index = alloca i32, align 4
  %comp = alloca i32, align 4
  %dc_ref = alloca [32 x double], align 16
  %default_weight = alloca i32, align 4
  %default_weight_chroma = alloca i32, align 4
  %list_offset = alloca i32, align 4
  %weight = alloca [2 x [32 x [3 x i32]]], align 16
  %offset = alloca [2 x [32 x [3 x i32]]], align 16
  %clist = alloca i32, align 4
  %perform_wp = alloca i32, align 4
  %tmpPtr = alloca i16**, align 8
  %offset_test = alloca i32, align 4
  store i32 %select_offset, i32* %select_offset.addr, align 4
  store double 0.000000e+00, double* %dc_org, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 100
  %1 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 3
  %3 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 61
  %5 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %5, i64 %idxprom
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 19
  %6 = load i32, i32* %mb_field, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 3
  %8 = load i32, i32* %current_mb_nr2, align 4
  %and = and i32 %8, 1
  %tobool3 = icmp ne i32 %and, 0
  %cond = select i1 %tobool3, i32 4, i32 2
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond4 = phi i32 [ %cond, %cond.true ], [ 0, %cond.false ]
  store i32 %cond4, i32* %list_offset, align 4
  store i32 0, i32* %perform_wp, align 4
  store i32 5, i32* @luma_log_weight_denom, align 4
  store i32 5, i32* @chroma_log_weight_denom, align 4
  %9 = load i32, i32* @luma_log_weight_denom, align 4
  %sub = sub nsw i32 %9, 1
  %shl = shl i32 1, %sub
  store i32 %shl, i32* @wp_luma_round, align 4
  %10 = load i32, i32* @chroma_log_weight_denom, align 4
  %sub5 = sub nsw i32 %10, 1
  %shl6 = shl i32 1, %sub5
  store i32 %shl6, i32* @wp_chroma_round, align 4
  %11 = load i32, i32* @luma_log_weight_denom, align 4
  %shl7 = shl i32 1, %11
  store i32 %shl7, i32* %default_weight, align 4
  %12 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl8 = shl i32 1, %12
  store i32 %shl8, i32* %default_weight_chroma, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.44, %cond.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %list_offset, align 4
  %add = add nsw i32 2, %14
  %cmp = icmp slt i32 %13, %add
  br i1 %cmp, label %for.body, label %for.end.46

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.41, %for.body
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom10
  %17 = load i32, i32* %arrayidx11, align 4
  %cmp12 = icmp slt i32 %15, %17
  br i1 %cmp12, label %for.body.13, label %for.end.43

for.body.13:                                      ; preds = %for.cond.9
  store i32 0, i32* %n, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body.13
  %18 = load i32, i32* %n, align 4
  %cmp15 = icmp slt i32 %18, 3
  br i1 %cmp15, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.14
  %19 = load i32, i32* %default_weight, align 4
  %20 = load i32, i32* %n, align 4
  %idxprom17 = sext i32 %20 to i64
  %21 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %21 to i64
  %22 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx20, i32 0, i64 %idxprom18
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx21, i32 0, i64 %idxprom17
  store i32 %19, i32* %arrayidx22, align 4
  %23 = load i32, i32* %default_weight, align 4
  %24 = load i32, i32* %n, align 4
  %idxprom23 = sext i32 %24 to i64
  %25 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %25 to i64
  %26 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %26 to i64
  %27 = load i32***, i32**** @wp_weight, align 8
  %arrayidx26 = getelementptr inbounds i32**, i32*** %27, i64 %idxprom25
  %28 = load i32**, i32*** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i32*, i32** %28, i64 %idxprom24
  %29 = load i32*, i32** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %29, i64 %idxprom23
  store i32 %23, i32* %arrayidx28, align 4
  %30 = load i32, i32* %n, align 4
  %idxprom29 = sext i32 %30 to i64
  %31 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %31 to i64
  %32 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %32 to i64
  %33 = load i32***, i32**** @wp_offset, align 8
  %arrayidx32 = getelementptr inbounds i32**, i32*** %33, i64 %idxprom31
  %34 = load i32**, i32*** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds i32*, i32** %34, i64 %idxprom30
  %35 = load i32*, i32** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %35, i64 %idxprom29
  store i32 0, i32* %arrayidx34, align 4
  %36 = load i32, i32* %n, align 4
  %idxprom35 = sext i32 %36 to i64
  %37 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %37 to i64
  %38 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %38 to i64
  %arrayidx38 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %offset, i32 0, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx38, i32 0, i64 %idxprom36
  %arrayidx40 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx39, i32 0, i64 %idxprom35
  store i32 0, i32* %arrayidx40, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.16
  %39 = load i32, i32* %n, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.end
  %40 = load i32, i32* %j, align 4
  %inc42 = add nsw i32 %40, 1
  store i32 %inc42, i32* %j, align 4
  br label %for.cond.9

for.end.43:                                       ; preds = %for.cond.9
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.end.43
  %41 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %41, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond

for.end.46:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.61, %for.end.46
  %42 = load i32, i32* %i, align 4
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 17
  %44 = load i32, i32* %height, align 4
  %cmp48 = icmp slt i32 %42, %44
  br i1 %cmp48, label %for.body.49, label %for.end.63

for.body.49:                                      ; preds = %for.cond.47
  store i32 0, i32* %j, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.58, %for.body.49
  %45 = load i32, i32* %j, align 4
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 13
  %47 = load i32, i32* %width, align 4
  %cmp51 = icmp slt i32 %45, %47
  br i1 %cmp51, label %for.body.52, label %for.end.60

for.body.52:                                      ; preds = %for.cond.50
  %48 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %48 to i64
  %49 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %49 to i64
  %50 = load i16**, i16*** @imgY_org, align 8
  %arrayidx55 = getelementptr inbounds i16*, i16** %50, i64 %idxprom54
  %51 = load i16*, i16** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i16, i16* %51, i64 %idxprom53
  %52 = load i16, i16* %arrayidx56, align 2
  %conv = uitofp i16 %52 to double
  %53 = load double, double* %dc_org, align 8
  %add57 = fadd double %53, %conv
  store double %add57, double* %dc_org, align 8
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.body.52
  %54 = load i32, i32* %j, align 4
  %inc59 = add nsw i32 %54, 1
  store i32 %inc59, i32* %j, align 4
  br label %for.cond.50

for.end.60:                                       ; preds = %for.cond.50
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.end.60
  %55 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %55, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond.47

for.end.63:                                       ; preds = %for.cond.47
  store i32 0, i32* %clist, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.216, %for.end.63
  %56 = load i32, i32* %clist, align 4
  %57 = load i32, i32* %list_offset, align 4
  %add65 = add nsw i32 2, %57
  %cmp66 = icmp slt i32 %56, %add65
  br i1 %cmp66, label %for.body.68, label %for.end.218

for.body.68:                                      ; preds = %for.cond.64
  store i32 0, i32* %n, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.213, %for.body.68
  %58 = load i32, i32* %n, align 4
  %59 = load i32, i32* %clist, align 4
  %idxprom70 = sext i32 %59 to i64
  %arrayidx71 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom70
  %60 = load i32, i32* %arrayidx71, align 4
  %cmp72 = icmp slt i32 %58, %60
  br i1 %cmp72, label %for.body.74, label %for.end.215

for.body.74:                                      ; preds = %for.cond.69
  %61 = load i32, i32* %n, align 4
  %idxprom75 = sext i32 %61 to i64
  %arrayidx76 = getelementptr inbounds [32 x double], [32 x double]* %dc_ref, i32 0, i64 %idxprom75
  store double 0.000000e+00, double* %arrayidx76, align 8
  %62 = load i32, i32* %n, align 4
  %idxprom77 = sext i32 %62 to i64
  %63 = load i32, i32* %clist, align 4
  %idxprom78 = sext i32 %63 to i64
  %arrayidx79 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom78
  %64 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %64, i64 %idxprom77
  %65 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx80, align 8
  %imgY_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %65, i32 0, i32 30
  %66 = load i16****, i16***** %imgY_sub, align 8
  store i16**** %66, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 0), align 8
  %67 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 0), align 8
  %arrayidx81 = getelementptr inbounds i16***, i16**** %67, i64 0
  %68 = load i16***, i16**** %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds i16**, i16*** %68, i64 0
  %69 = load i16**, i16*** %arrayidx82, align 8
  store i16** %69, i16*** %tmpPtr, align 8
  store i32 20, i32* %j, align 4
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.106, %for.body.74
  %70 = load i32, i32* %j, align 4
  %71 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height84 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %71, i32 0, i32 17
  %72 = load i32, i32* %height84, align 4
  %add85 = add nsw i32 %72, 20
  %cmp86 = icmp slt i32 %70, %add85
  br i1 %cmp86, label %for.body.88, label %for.end.108

for.body.88:                                      ; preds = %for.cond.83
  store i32 20, i32* %i, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.103, %for.body.88
  %73 = load i32, i32* %i, align 4
  %74 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width90 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %74, i32 0, i32 13
  %75 = load i32, i32* %width90, align 4
  %add91 = add nsw i32 %75, 20
  %cmp92 = icmp slt i32 %73, %add91
  br i1 %cmp92, label %for.body.94, label %for.end.105

for.body.94:                                      ; preds = %for.cond.89
  %76 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %76 to i64
  %77 = load i32, i32* %j, align 4
  %idxprom96 = sext i32 %77 to i64
  %78 = load i16**, i16*** %tmpPtr, align 8
  %arrayidx97 = getelementptr inbounds i16*, i16** %78, i64 %idxprom96
  %79 = load i16*, i16** %arrayidx97, align 8
  %arrayidx98 = getelementptr inbounds i16, i16* %79, i64 %idxprom95
  %80 = load i16, i16* %arrayidx98, align 2
  %conv99 = uitofp i16 %80 to double
  %81 = load i32, i32* %n, align 4
  %idxprom100 = sext i32 %81 to i64
  %arrayidx101 = getelementptr inbounds [32 x double], [32 x double]* %dc_ref, i32 0, i64 %idxprom100
  %82 = load double, double* %arrayidx101, align 8
  %add102 = fadd double %82, %conv99
  store double %add102, double* %arrayidx101, align 8
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.body.94
  %83 = load i32, i32* %i, align 4
  %inc104 = add nsw i32 %83, 1
  store i32 %inc104, i32* %i, align 4
  br label %for.cond.89

for.end.105:                                      ; preds = %for.cond.89
  br label %for.inc.106

for.inc.106:                                      ; preds = %for.end.105
  %84 = load i32, i32* %j, align 4
  %inc107 = add nsw i32 %84, 1
  store i32 %inc107, i32* %j, align 4
  br label %for.cond.83

for.end.108:                                      ; preds = %for.cond.83
  %85 = load i32, i32* %select_offset.addr, align 4
  %cmp109 = icmp eq i32 %85, 0
  br i1 %cmp109, label %if.then, label %if.else.152

if.then:                                          ; preds = %for.end.108
  %86 = load i32, i32* %n, align 4
  %idxprom111 = sext i32 %86 to i64
  %arrayidx112 = getelementptr inbounds [32 x double], [32 x double]* %dc_ref, i32 0, i64 %idxprom111
  %87 = load double, double* %arrayidx112, align 8
  %cmp113 = fcmp une double %87, 0.000000e+00
  br i1 %cmp113, label %if.then.115, label %if.else

if.then.115:                                      ; preds = %if.then
  %88 = load i32, i32* %default_weight, align 4
  %conv116 = sitofp i32 %88 to double
  %89 = load double, double* %dc_org, align 8
  %mul = fmul double %conv116, %89
  %90 = load i32, i32* %n, align 4
  %idxprom117 = sext i32 %90 to i64
  %arrayidx118 = getelementptr inbounds [32 x double], [32 x double]* %dc_ref, i32 0, i64 %idxprom117
  %91 = load double, double* %arrayidx118, align 8
  %div = fdiv double %mul, %91
  %add119 = fadd double %div, 5.000000e-01
  %conv120 = fptosi double %add119 to i32
  %92 = load i32, i32* %n, align 4
  %idxprom121 = sext i32 %92 to i64
  %93 = load i32, i32* %clist, align 4
  %idxprom122 = sext i32 %93 to i64
  %arrayidx123 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom122
  %arrayidx124 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx123, i32 0, i64 %idxprom121
  %arrayidx125 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx124, i32 0, i64 0
  store i32 %conv120, i32* %arrayidx125, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %94 = load i32, i32* %default_weight, align 4
  %95 = load i32, i32* %n, align 4
  %idxprom126 = sext i32 %95 to i64
  %96 = load i32, i32* %clist, align 4
  %idxprom127 = sext i32 %96 to i64
  %arrayidx128 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom127
  %arrayidx129 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx128, i32 0, i64 %idxprom126
  %arrayidx130 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx129, i32 0, i64 0
  store i32 %94, i32* %arrayidx130, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.115
  %97 = load i32, i32* %n, align 4
  %idxprom131 = sext i32 %97 to i64
  %98 = load i32, i32* %clist, align 4
  %idxprom132 = sext i32 %98 to i64
  %arrayidx133 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom132
  %arrayidx134 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx133, i32 0, i64 %idxprom131
  %arrayidx135 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx134, i32 0, i64 0
  %99 = load i32, i32* %arrayidx135, align 4
  %cmp136 = icmp slt i32 %99, -64
  br i1 %cmp136, label %if.then.145, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %100 = load i32, i32* %n, align 4
  %idxprom138 = sext i32 %100 to i64
  %101 = load i32, i32* %clist, align 4
  %idxprom139 = sext i32 %101 to i64
  %arrayidx140 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom139
  %arrayidx141 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx140, i32 0, i64 %idxprom138
  %arrayidx142 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx141, i32 0, i64 0
  %102 = load i32, i32* %arrayidx142, align 4
  %cmp143 = icmp sgt i32 %102, 127
  br i1 %cmp143, label %if.then.145, label %if.end.151

if.then.145:                                      ; preds = %lor.lhs.false, %if.end
  %103 = load i32, i32* %n, align 4
  %idxprom146 = sext i32 %103 to i64
  %104 = load i32, i32* %clist, align 4
  %idxprom147 = sext i32 %104 to i64
  %arrayidx148 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom147
  %arrayidx149 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx148, i32 0, i64 %idxprom146
  %arrayidx150 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx149, i32 0, i64 0
  store i32 32, i32* %arrayidx150, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.145, %lor.lhs.false
  br label %if.end.202

if.else.152:                                      ; preds = %for.end.108
  %105 = load double, double* %dc_org, align 8
  %106 = load i32, i32* %n, align 4
  %idxprom153 = sext i32 %106 to i64
  %arrayidx154 = getelementptr inbounds [32 x double], [32 x double]* %dc_ref, i32 0, i64 %idxprom153
  %107 = load double, double* %arrayidx154, align 8
  %sub155 = fsub double %105, %107
  %108 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %size = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %108, i32 0, i32 22
  %109 = load i32, i32* %size, align 4
  %conv156 = sitofp i32 %109 to double
  %div157 = fdiv double %sub155, %conv156
  %add158 = fadd double %div157, 5.000000e-01
  %conv159 = fptosi double %add158 to i32
  %110 = load i32, i32* %n, align 4
  %idxprom160 = sext i32 %110 to i64
  %111 = load i32, i32* %clist, align 4
  %idxprom161 = sext i32 %111 to i64
  %arrayidx162 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %offset, i32 0, i64 %idxprom161
  %arrayidx163 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx162, i32 0, i64 %idxprom160
  %arrayidx164 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx163, i32 0, i64 0
  store i32 %conv159, i32* %arrayidx164, align 4
  %112 = load i32, i32* %n, align 4
  %idxprom165 = sext i32 %112 to i64
  %113 = load i32, i32* %clist, align 4
  %idxprom166 = sext i32 %113 to i64
  %arrayidx167 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %offset, i32 0, i64 %idxprom166
  %arrayidx168 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx167, i32 0, i64 %idxprom165
  %arrayidx169 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx168, i32 0, i64 0
  %114 = load i32, i32* %arrayidx169, align 4
  %cmp170 = icmp slt i32 %114, -128
  br i1 %cmp170, label %cond.true.172, label %cond.false.173

cond.true.172:                                    ; preds = %if.else.152
  br label %cond.end.190

cond.false.173:                                   ; preds = %if.else.152
  %115 = load i32, i32* %n, align 4
  %idxprom174 = sext i32 %115 to i64
  %116 = load i32, i32* %clist, align 4
  %idxprom175 = sext i32 %116 to i64
  %arrayidx176 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %offset, i32 0, i64 %idxprom175
  %arrayidx177 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx176, i32 0, i64 %idxprom174
  %arrayidx178 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx177, i32 0, i64 0
  %117 = load i32, i32* %arrayidx178, align 4
  %cmp179 = icmp sgt i32 %117, 127
  br i1 %cmp179, label %cond.true.181, label %cond.false.182

cond.true.181:                                    ; preds = %cond.false.173
  br label %cond.end.188

cond.false.182:                                   ; preds = %cond.false.173
  %118 = load i32, i32* %n, align 4
  %idxprom183 = sext i32 %118 to i64
  %119 = load i32, i32* %clist, align 4
  %idxprom184 = sext i32 %119 to i64
  %arrayidx185 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %offset, i32 0, i64 %idxprom184
  %arrayidx186 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx185, i32 0, i64 %idxprom183
  %arrayidx187 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx186, i32 0, i64 0
  %120 = load i32, i32* %arrayidx187, align 4
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.182, %cond.true.181
  %cond189 = phi i32 [ 127, %cond.true.181 ], [ %120, %cond.false.182 ]
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.end.188, %cond.true.172
  %cond191 = phi i32 [ -128, %cond.true.172 ], [ %cond189, %cond.end.188 ]
  %121 = load i32, i32* %n, align 4
  %idxprom192 = sext i32 %121 to i64
  %122 = load i32, i32* %clist, align 4
  %idxprom193 = sext i32 %122 to i64
  %arrayidx194 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %offset, i32 0, i64 %idxprom193
  %arrayidx195 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx194, i32 0, i64 %idxprom192
  %arrayidx196 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx195, i32 0, i64 0
  store i32 %cond191, i32* %arrayidx196, align 4
  %123 = load i32, i32* %default_weight, align 4
  %124 = load i32, i32* %n, align 4
  %idxprom197 = sext i32 %124 to i64
  %125 = load i32, i32* %clist, align 4
  %idxprom198 = sext i32 %125 to i64
  %arrayidx199 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom198
  %arrayidx200 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx199, i32 0, i64 %idxprom197
  %arrayidx201 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx200, i32 0, i64 0
  store i32 %123, i32* %arrayidx201, align 4
  br label %if.end.202

if.end.202:                                       ; preds = %cond.end.190, %if.end.151
  %126 = load i32, i32* %default_weight_chroma, align 4
  %127 = load i32, i32* %n, align 4
  %idxprom203 = sext i32 %127 to i64
  %128 = load i32, i32* %clist, align 4
  %idxprom204 = sext i32 %128 to i64
  %arrayidx205 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom204
  %arrayidx206 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx205, i32 0, i64 %idxprom203
  %arrayidx207 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx206, i32 0, i64 1
  store i32 %126, i32* %arrayidx207, align 4
  %129 = load i32, i32* %default_weight_chroma, align 4
  %130 = load i32, i32* %n, align 4
  %idxprom208 = sext i32 %130 to i64
  %131 = load i32, i32* %clist, align 4
  %idxprom209 = sext i32 %131 to i64
  %arrayidx210 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom209
  %arrayidx211 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx210, i32 0, i64 %idxprom208
  %arrayidx212 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx211, i32 0, i64 2
  store i32 %129, i32* %arrayidx212, align 4
  br label %for.inc.213

for.inc.213:                                      ; preds = %if.end.202
  %132 = load i32, i32* %n, align 4
  %inc214 = add nsw i32 %132, 1
  store i32 %inc214, i32* %n, align 4
  br label %for.cond.69

for.end.215:                                      ; preds = %for.cond.69
  br label %for.inc.216

for.inc.216:                                      ; preds = %for.end.215
  %133 = load i32, i32* %clist, align 4
  %inc217 = add nsw i32 %133, 1
  store i32 %inc217, i32* %clist, align 4
  br label %for.cond.64

for.end.218:                                      ; preds = %for.cond.64
  store i32 0, i32* %clist, align 4
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.284, %for.end.218
  %134 = load i32, i32* %clist, align 4
  %135 = load i32, i32* %list_offset, align 4
  %add220 = add nsw i32 2, %135
  %cmp221 = icmp slt i32 %134, %add220
  br i1 %cmp221, label %for.body.223, label %for.end.286

for.body.223:                                     ; preds = %for.cond.219
  store i32 0, i32* %index, align 4
  br label %for.cond.224

for.cond.224:                                     ; preds = %for.inc.277, %for.body.223
  %136 = load i32, i32* %index, align 4
  %137 = load i32, i32* %clist, align 4
  %idxprom225 = sext i32 %137 to i64
  %arrayidx226 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom225
  %138 = load i32, i32* %arrayidx226, align 4
  %cmp227 = icmp slt i32 %136, %138
  br i1 %cmp227, label %for.body.229, label %for.end.279

for.body.229:                                     ; preds = %for.cond.224
  store i32 0, i32* %comp, align 4
  br label %for.cond.230

for.cond.230:                                     ; preds = %for.inc.270, %for.body.229
  %139 = load i32, i32* %comp, align 4
  %cmp231 = icmp slt i32 %139, 3
  br i1 %cmp231, label %for.body.233, label %for.end.272

for.body.233:                                     ; preds = %for.cond.230
  %140 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RDPSliceBTest = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %140, i32 0, i32 65
  %141 = load i32, i32* %RDPSliceBTest, align 4
  %tobool234 = icmp ne i32 %141, 0
  br i1 %tobool234, label %land.lhs.true.235, label %cond.false.247

land.lhs.true.235:                                ; preds = %for.body.233
  %142 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %profile_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %142, i32 0, i32 1
  %143 = load i32, i32* %profile_idc, align 4
  %cmp236 = icmp ne i32 %143, 66
  br i1 %cmp236, label %cond.true.238, label %cond.false.247

cond.true.238:                                    ; preds = %land.lhs.true.235
  %144 = load i32, i32* %comp, align 4
  %idxprom239 = sext i32 %144 to i64
  %145 = load i32, i32* %index, align 4
  %idxprom240 = sext i32 %145 to i64
  %146 = load i32, i32* %clist, align 4
  %idxprom241 = sext i32 %146 to i64
  %arrayidx242 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %offset, i32 0, i64 %idxprom241
  %arrayidx243 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx242, i32 0, i64 %idxprom240
  %arrayidx244 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx243, i32 0, i64 %idxprom239
  %147 = load i32, i32* %arrayidx244, align 4
  %call = call i32 @iabs(i32 %147)
  %cmp245 = icmp sgt i32 %call, 2
  %conv246 = zext i1 %cmp245 to i32
  br label %cond.end.256

cond.false.247:                                   ; preds = %land.lhs.true.235, %for.body.233
  %148 = load i32, i32* %comp, align 4
  %idxprom248 = sext i32 %148 to i64
  %149 = load i32, i32* %index, align 4
  %idxprom249 = sext i32 %149 to i64
  %150 = load i32, i32* %clist, align 4
  %idxprom250 = sext i32 %150 to i64
  %arrayidx251 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %offset, i32 0, i64 %idxprom250
  %arrayidx252 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx251, i32 0, i64 %idxprom249
  %arrayidx253 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx252, i32 0, i64 %idxprom248
  %151 = load i32, i32* %arrayidx253, align 4
  %cmp254 = icmp ne i32 %151, 0
  %conv255 = zext i1 %cmp254 to i32
  br label %cond.end.256

cond.end.256:                                     ; preds = %cond.false.247, %cond.true.238
  %cond257 = phi i32 [ %conv246, %cond.true.238 ], [ %conv255, %cond.false.247 ]
  store i32 %cond257, i32* %offset_test, align 4
  %152 = load i32, i32* %comp, align 4
  %idxprom258 = sext i32 %152 to i64
  %153 = load i32, i32* %index, align 4
  %idxprom259 = sext i32 %153 to i64
  %154 = load i32, i32* %clist, align 4
  %idxprom260 = sext i32 %154 to i64
  %arrayidx261 = getelementptr inbounds [2 x [32 x [3 x i32]]], [2 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom260
  %arrayidx262 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx261, i32 0, i64 %idxprom259
  %arrayidx263 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx262, i32 0, i64 %idxprom258
  %155 = load i32, i32* %arrayidx263, align 4
  %156 = load i32, i32* %default_weight, align 4
  %cmp264 = icmp ne i32 %155, %156
  br i1 %cmp264, label %if.then.268, label %lor.lhs.false.266

lor.lhs.false.266:                                ; preds = %cond.end.256
  %157 = load i32, i32* %offset_test, align 4
  %tobool267 = icmp ne i32 %157, 0
  br i1 %tobool267, label %if.then.268, label %if.end.269

if.then.268:                                      ; preds = %lor.lhs.false.266, %cond.end.256
  store i32 1, i32* %perform_wp, align 4
  br label %for.end.272

if.end.269:                                       ; preds = %lor.lhs.false.266
  br label %for.inc.270

for.inc.270:                                      ; preds = %if.end.269
  %158 = load i32, i32* %comp, align 4
  %inc271 = add nsw i32 %158, 1
  store i32 %inc271, i32* %comp, align 4
  br label %for.cond.230

for.end.272:                                      ; preds = %if.then.268, %for.cond.230
  %159 = load i32, i32* %perform_wp, align 4
  %cmp273 = icmp eq i32 %159, 1
  br i1 %cmp273, label %if.then.275, label %if.end.276

if.then.275:                                      ; preds = %for.end.272
  br label %for.end.279

if.end.276:                                       ; preds = %for.end.272
  br label %for.inc.277

for.inc.277:                                      ; preds = %if.end.276
  %160 = load i32, i32* %index, align 4
  %inc278 = add nsw i32 %160, 1
  store i32 %inc278, i32* %index, align 4
  br label %for.cond.224

for.end.279:                                      ; preds = %if.then.275, %for.cond.224
  %161 = load i32, i32* %perform_wp, align 4
  %cmp280 = icmp eq i32 %161, 1
  br i1 %cmp280, label %if.then.282, label %if.end.283

if.then.282:                                      ; preds = %for.end.279
  br label %for.end.286

if.end.283:                                       ; preds = %for.end.279
  br label %for.inc.284

for.inc.284:                                      ; preds = %if.end.283
  %162 = load i32, i32* %clist, align 4
  %inc285 = add nsw i32 %162, 1
  store i32 %inc285, i32* %clist, align 4
  br label %for.cond.219

for.end.286:                                      ; preds = %if.then.282, %for.cond.219
  %163 = load i32, i32* %perform_wp, align 4
  ret i32 %163
}

; Function Attrs: nounwind uwtable
define i32 @test_wp_B_slice(i32 %select_method) #0 {
entry:
  %select_method.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %tx = alloca i32, align 4
  %DistScaleFactor = alloca i32, align 4
  %dc_org = alloca double, align 8
  %index = alloca i32, align 4
  %comp = alloca i32, align 4
  %dc_ref = alloca [6 x [32 x double]], align 16
  %log_weight_denom = alloca i32, align 4
  %default_weight = alloca [3 x i32], align 4
  %list_offset = alloca i32, align 4
  %weight = alloca [6 x [32 x [3 x i32]]], align 16
  %offset = alloca [6 x [32 x [3 x i32]]], align 16
  %im_weight = alloca [6 x [32 x [32 x [3 x i32]]]], align 16
  %im_offset = alloca [6 x [32 x [32 x [3 x i32]]]], align 16
  %clist = alloca i32, align 4
  %wf_weight = alloca i32, align 4
  %wf_offset = alloca i32, align 4
  %perform_wp = alloca i32, align 4
  %tmpPtr = alloca i16**, align 8
  %td = alloca i32, align 4
  %tb = alloca i32, align 4
  %active_refs = alloca [2 x i32], align 4
  store i32 %select_method, i32* %select_method.addr, align 4
  store double 0.000000e+00, double* %dc_org, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 100
  %1 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 3
  %3 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 61
  %5 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %5, i64 %idxprom
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 19
  %6 = load i32, i32* %mb_field, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 3
  %8 = load i32, i32* %current_mb_nr2, align 4
  %and = and i32 %8, 1
  %tobool3 = icmp ne i32 %and, 0
  %cond = select i1 %tobool3, i32 4, i32 2
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond4 = phi i32 [ %cond, %cond.true ], [ 0, %cond.false ]
  store i32 %cond4, i32* %list_offset, align 4
  store i32 0, i32* %perform_wp, align 4
  %9 = load i32, i32* %select_method.addr, align 4
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  store i32 5, i32* @luma_log_weight_denom, align 4
  store i32 5, i32* @chroma_log_weight_denom, align 4
  br label %if.end

if.else:                                          ; preds = %cond.end
  store i32 6, i32* @luma_log_weight_denom, align 4
  store i32 6, i32* @chroma_log_weight_denom, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i32, i32* @luma_log_weight_denom, align 4
  %sub = sub nsw i32 %10, 1
  %shl = shl i32 1, %sub
  store i32 %shl, i32* @wp_luma_round, align 4
  %11 = load i32, i32* @chroma_log_weight_denom, align 4
  %sub5 = sub nsw i32 %11, 1
  %shl6 = shl i32 1, %sub5
  store i32 %shl6, i32* @wp_chroma_round, align 4
  %12 = load i32, i32* @luma_log_weight_denom, align 4
  %shl7 = shl i32 1, %12
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 0
  store i32 %shl7, i32* %arrayidx8, align 4
  %13 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl9 = shl i32 1, %13
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 1
  store i32 %shl9, i32* %arrayidx10, align 4
  %14 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl11 = shl i32 1, %14
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 2
  store i32 %shl11, i32* %arrayidx12, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.53, %if.end
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %list_offset, align 4
  %add = add nsw i32 2, %16
  %cmp13 = icmp slt i32 %15, %add
  br i1 %cmp13, label %for.body, label %for.end.55

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.50, %for.body
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom15
  %19 = load i32, i32* %arrayidx16, align 4
  %cmp17 = icmp slt i32 %17, %19
  br i1 %cmp17, label %for.body.18, label %for.end.52

for.body.18:                                      ; preds = %for.cond.14
  store i32 0, i32* %n, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %for.body.18
  %20 = load i32, i32* %n, align 4
  %cmp20 = icmp slt i32 %20, 3
  br i1 %cmp20, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.19
  %21 = load i32, i32* %n, align 4
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 %idxprom22
  %22 = load i32, i32* %arrayidx23, align 4
  %23 = load i32, i32* %n, align 4
  %idxprom24 = sext i32 %23 to i64
  %24 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %24 to i64
  %25 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %25 to i64
  %26 = load i32***, i32**** @wp_weight, align 8
  %arrayidx27 = getelementptr inbounds i32**, i32*** %26, i64 %idxprom26
  %27 = load i32**, i32*** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i32*, i32** %27, i64 %idxprom25
  %28 = load i32*, i32** %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %28, i64 %idxprom24
  store i32 %22, i32* %arrayidx29, align 4
  %29 = load i32, i32* %n, align 4
  %idxprom30 = sext i32 %29 to i64
  %30 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %30 to i64
  %31 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %31 to i64
  %32 = load i32***, i32**** @wp_offset, align 8
  %arrayidx33 = getelementptr inbounds i32**, i32*** %32, i64 %idxprom32
  %33 = load i32**, i32*** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i32*, i32** %33, i64 %idxprom31
  %34 = load i32*, i32** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %34, i64 %idxprom30
  store i32 0, i32* %arrayidx35, align 4
  %35 = load i32, i32* %n, align 4
  %idxprom36 = sext i32 %35 to i64
  %36 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %36 to i64
  %37 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %37 to i64
  %arrayidx39 = getelementptr inbounds [6 x [32 x [3 x i32]]], [6 x [32 x [3 x i32]]]* %offset, i32 0, i64 %idxprom38
  %arrayidx40 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx39, i32 0, i64 %idxprom37
  %arrayidx41 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx40, i32 0, i64 %idxprom36
  store i32 0, i32* %arrayidx41, align 4
  %38 = load i32, i32* %n, align 4
  %idxprom42 = sext i32 %38 to i64
  %arrayidx43 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 %idxprom42
  %39 = load i32, i32* %arrayidx43, align 4
  %40 = load i32, i32* %n, align 4
  %idxprom44 = sext i32 %40 to i64
  %41 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %41 to i64
  %42 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %42 to i64
  %arrayidx47 = getelementptr inbounds [6 x [32 x [3 x i32]]], [6 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom46
  %arrayidx48 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx47, i32 0, i64 %idxprom45
  %arrayidx49 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx48, i32 0, i64 %idxprom44
  store i32 %39, i32* %arrayidx49, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.21
  %43 = load i32, i32* %n, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.end
  %44 = load i32, i32* %j, align 4
  %inc51 = add nsw i32 %44, 1
  store i32 %inc51, i32* %j, align 4
  br label %for.cond.14

for.end.52:                                       ; preds = %for.cond.14
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.end.52
  %45 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %45, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond

for.end.55:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.186, %for.end.55
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %cmp57 = icmp slt i32 %46, %47
  br i1 %cmp57, label %for.body.58, label %for.end.188

for.body.58:                                      ; preds = %for.cond.56
  store i32 0, i32* %j, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.183, %for.body.58
  %48 = load i32, i32* %j, align 4
  %49 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  %cmp60 = icmp slt i32 %48, %49
  br i1 %cmp60, label %for.body.61, label %for.end.185

for.body.61:                                      ; preds = %for.cond.59
  %50 = load i32, i32* %j, align 4
  %idxprom62 = sext i32 %50 to i64
  %51 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx63 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %51, i64 %idxprom62
  %52 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx63, align 8
  %poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %52, i32 0, i32 1
  %53 = load i32, i32* %poc, align 4
  %54 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %54 to i64
  %55 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx65 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %55, i64 %idxprom64
  %56 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx65, align 8
  %poc66 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %56, i32 0, i32 1
  %57 = load i32, i32* %poc66, align 4
  %sub67 = sub nsw i32 %53, %57
  %call = call i32 @iClip3(i32 -128, i32 127, i32 %sub67)
  store i32 %call, i32* %td, align 4
  %58 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %poc68 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %58, i32 0, i32 1
  %59 = load i32, i32* %poc68, align 4
  %60 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %60 to i64
  %61 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx70 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %61, i64 %idxprom69
  %62 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx70, align 8
  %poc71 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %62, i32 0, i32 1
  %63 = load i32, i32* %poc71, align 4
  %sub72 = sub nsw i32 %59, %63
  %call73 = call i32 @iClip3(i32 -128, i32 127, i32 %sub72)
  store i32 %call73, i32* %tb, align 4
  store i32 0, i32* %comp, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.180, %for.body.61
  %64 = load i32, i32* %comp, align 4
  %cmp75 = icmp slt i32 %64, 3
  br i1 %cmp75, label %for.body.76, label %for.end.182

for.body.76:                                      ; preds = %for.cond.74
  %65 = load i32, i32* %td, align 4
  %cmp77 = icmp eq i32 %65, 0
  br i1 %cmp77, label %if.then.78, label %if.else.111

if.then.78:                                       ; preds = %for.body.76
  %66 = load i32, i32* %comp, align 4
  %idxprom79 = sext i32 %66 to i64
  %arrayidx80 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 %idxprom79
  %67 = load i32, i32* %arrayidx80, align 4
  %68 = load i32, i32* %comp, align 4
  %idxprom81 = sext i32 %68 to i64
  %69 = load i32, i32* %j, align 4
  %idxprom82 = sext i32 %69 to i64
  %70 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %70 to i64
  %arrayidx84 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], [6 x [32 x [32 x [3 x i32]]]]* %im_weight, i32 0, i64 1
  %arrayidx85 = getelementptr inbounds [32 x [32 x [3 x i32]]], [32 x [32 x [3 x i32]]]* %arrayidx84, i32 0, i64 %idxprom83
  %arrayidx86 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx85, i32 0, i64 %idxprom82
  %arrayidx87 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx86, i32 0, i64 %idxprom81
  store i32 %67, i32* %arrayidx87, align 4
  %71 = load i32, i32* %comp, align 4
  %idxprom88 = sext i32 %71 to i64
  %arrayidx89 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 %idxprom88
  %72 = load i32, i32* %arrayidx89, align 4
  %73 = load i32, i32* %comp, align 4
  %idxprom90 = sext i32 %73 to i64
  %74 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %74 to i64
  %75 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %75 to i64
  %arrayidx93 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], [6 x [32 x [32 x [3 x i32]]]]* %im_weight, i32 0, i64 0
  %arrayidx94 = getelementptr inbounds [32 x [32 x [3 x i32]]], [32 x [32 x [3 x i32]]]* %arrayidx93, i32 0, i64 %idxprom92
  %arrayidx95 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx94, i32 0, i64 %idxprom91
  %arrayidx96 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx95, i32 0, i64 %idxprom90
  store i32 %72, i32* %arrayidx96, align 4
  %76 = load i32, i32* %comp, align 4
  %idxprom97 = sext i32 %76 to i64
  %77 = load i32, i32* %j, align 4
  %idxprom98 = sext i32 %77 to i64
  %78 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %78 to i64
  %arrayidx100 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], [6 x [32 x [32 x [3 x i32]]]]* %im_offset, i32 0, i64 1
  %arrayidx101 = getelementptr inbounds [32 x [32 x [3 x i32]]], [32 x [32 x [3 x i32]]]* %arrayidx100, i32 0, i64 %idxprom99
  %arrayidx102 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx101, i32 0, i64 %idxprom98
  %arrayidx103 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx102, i32 0, i64 %idxprom97
  store i32 0, i32* %arrayidx103, align 4
  %79 = load i32, i32* %comp, align 4
  %idxprom104 = sext i32 %79 to i64
  %80 = load i32, i32* %j, align 4
  %idxprom105 = sext i32 %80 to i64
  %81 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %81 to i64
  %arrayidx107 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], [6 x [32 x [32 x [3 x i32]]]]* %im_offset, i32 0, i64 0
  %arrayidx108 = getelementptr inbounds [32 x [32 x [3 x i32]]], [32 x [32 x [3 x i32]]]* %arrayidx107, i32 0, i64 %idxprom106
  %arrayidx109 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx108, i32 0, i64 %idxprom105
  %arrayidx110 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx109, i32 0, i64 %idxprom104
  store i32 0, i32* %arrayidx110, align 4
  br label %if.end.179

if.else.111:                                      ; preds = %for.body.76
  %82 = load i32, i32* %td, align 4
  %div = sdiv i32 %82, 2
  %call112 = call i32 @iabs(i32 %div)
  %add113 = add nsw i32 16384, %call112
  %83 = load i32, i32* %td, align 4
  %div114 = sdiv i32 %add113, %83
  store i32 %div114, i32* %tx, align 4
  %84 = load i32, i32* %tx, align 4
  %85 = load i32, i32* %tb, align 4
  %mul = mul nsw i32 %84, %85
  %add115 = add nsw i32 %mul, 32
  %shr = ashr i32 %add115, 6
  %call116 = call i32 @iClip3(i32 -1024, i32 1023, i32 %shr)
  store i32 %call116, i32* %DistScaleFactor, align 4
  %86 = load i32, i32* %DistScaleFactor, align 4
  %shr117 = ashr i32 %86, 2
  %87 = load i32, i32* %comp, align 4
  %idxprom118 = sext i32 %87 to i64
  %88 = load i32, i32* %j, align 4
  %idxprom119 = sext i32 %88 to i64
  %89 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %89 to i64
  %arrayidx121 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], [6 x [32 x [32 x [3 x i32]]]]* %im_weight, i32 0, i64 1
  %arrayidx122 = getelementptr inbounds [32 x [32 x [3 x i32]]], [32 x [32 x [3 x i32]]]* %arrayidx121, i32 0, i64 %idxprom120
  %arrayidx123 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx122, i32 0, i64 %idxprom119
  %arrayidx124 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx123, i32 0, i64 %idxprom118
  store i32 %shr117, i32* %arrayidx124, align 4
  %90 = load i32, i32* %comp, align 4
  %idxprom125 = sext i32 %90 to i64
  %91 = load i32, i32* %j, align 4
  %idxprom126 = sext i32 %91 to i64
  %92 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %92 to i64
  %arrayidx128 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], [6 x [32 x [32 x [3 x i32]]]]* %im_weight, i32 0, i64 1
  %arrayidx129 = getelementptr inbounds [32 x [32 x [3 x i32]]], [32 x [32 x [3 x i32]]]* %arrayidx128, i32 0, i64 %idxprom127
  %arrayidx130 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx129, i32 0, i64 %idxprom126
  %arrayidx131 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx130, i32 0, i64 %idxprom125
  %93 = load i32, i32* %arrayidx131, align 4
  %cmp132 = icmp slt i32 %93, -64
  br i1 %cmp132, label %if.then.141, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.111
  %94 = load i32, i32* %comp, align 4
  %idxprom133 = sext i32 %94 to i64
  %95 = load i32, i32* %j, align 4
  %idxprom134 = sext i32 %95 to i64
  %96 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %96 to i64
  %arrayidx136 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], [6 x [32 x [32 x [3 x i32]]]]* %im_weight, i32 0, i64 1
  %arrayidx137 = getelementptr inbounds [32 x [32 x [3 x i32]]], [32 x [32 x [3 x i32]]]* %arrayidx136, i32 0, i64 %idxprom135
  %arrayidx138 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx137, i32 0, i64 %idxprom134
  %arrayidx139 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx138, i32 0, i64 %idxprom133
  %97 = load i32, i32* %arrayidx139, align 4
  %cmp140 = icmp sgt i32 %97, 128
  br i1 %cmp140, label %if.then.141, label %if.end.149

if.then.141:                                      ; preds = %lor.lhs.false, %if.else.111
  %98 = load i32, i32* %comp, align 4
  %idxprom142 = sext i32 %98 to i64
  %99 = load i32, i32* %j, align 4
  %idxprom143 = sext i32 %99 to i64
  %100 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %100 to i64
  %arrayidx145 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], [6 x [32 x [32 x [3 x i32]]]]* %im_weight, i32 0, i64 1
  %arrayidx146 = getelementptr inbounds [32 x [32 x [3 x i32]]], [32 x [32 x [3 x i32]]]* %arrayidx145, i32 0, i64 %idxprom144
  %arrayidx147 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx146, i32 0, i64 %idxprom143
  %arrayidx148 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx147, i32 0, i64 %idxprom142
  store i32 32, i32* %arrayidx148, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.141, %lor.lhs.false
  %101 = load i32, i32* %comp, align 4
  %idxprom150 = sext i32 %101 to i64
  %102 = load i32, i32* %j, align 4
  %idxprom151 = sext i32 %102 to i64
  %103 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %103 to i64
  %arrayidx153 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], [6 x [32 x [32 x [3 x i32]]]]* %im_weight, i32 0, i64 1
  %arrayidx154 = getelementptr inbounds [32 x [32 x [3 x i32]]], [32 x [32 x [3 x i32]]]* %arrayidx153, i32 0, i64 %idxprom152
  %arrayidx155 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx154, i32 0, i64 %idxprom151
  %arrayidx156 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx155, i32 0, i64 %idxprom150
  %104 = load i32, i32* %arrayidx156, align 4
  %sub157 = sub nsw i32 64, %104
  %105 = load i32, i32* %comp, align 4
  %idxprom158 = sext i32 %105 to i64
  %106 = load i32, i32* %j, align 4
  %idxprom159 = sext i32 %106 to i64
  %107 = load i32, i32* %i, align 4
  %idxprom160 = sext i32 %107 to i64
  %arrayidx161 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], [6 x [32 x [32 x [3 x i32]]]]* %im_weight, i32 0, i64 0
  %arrayidx162 = getelementptr inbounds [32 x [32 x [3 x i32]]], [32 x [32 x [3 x i32]]]* %arrayidx161, i32 0, i64 %idxprom160
  %arrayidx163 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx162, i32 0, i64 %idxprom159
  %arrayidx164 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx163, i32 0, i64 %idxprom158
  store i32 %sub157, i32* %arrayidx164, align 4
  %108 = load i32, i32* %comp, align 4
  %idxprom165 = sext i32 %108 to i64
  %109 = load i32, i32* %j, align 4
  %idxprom166 = sext i32 %109 to i64
  %110 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %110 to i64
  %arrayidx168 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], [6 x [32 x [32 x [3 x i32]]]]* %im_offset, i32 0, i64 1
  %arrayidx169 = getelementptr inbounds [32 x [32 x [3 x i32]]], [32 x [32 x [3 x i32]]]* %arrayidx168, i32 0, i64 %idxprom167
  %arrayidx170 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx169, i32 0, i64 %idxprom166
  %arrayidx171 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx170, i32 0, i64 %idxprom165
  store i32 0, i32* %arrayidx171, align 4
  %111 = load i32, i32* %comp, align 4
  %idxprom172 = sext i32 %111 to i64
  %112 = load i32, i32* %j, align 4
  %idxprom173 = sext i32 %112 to i64
  %113 = load i32, i32* %i, align 4
  %idxprom174 = sext i32 %113 to i64
  %arrayidx175 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], [6 x [32 x [32 x [3 x i32]]]]* %im_offset, i32 0, i64 0
  %arrayidx176 = getelementptr inbounds [32 x [32 x [3 x i32]]], [32 x [32 x [3 x i32]]]* %arrayidx175, i32 0, i64 %idxprom174
  %arrayidx177 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx176, i32 0, i64 %idxprom173
  %arrayidx178 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx177, i32 0, i64 %idxprom172
  store i32 0, i32* %arrayidx178, align 4
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.149, %if.then.78
  br label %for.inc.180

for.inc.180:                                      ; preds = %if.end.179
  %114 = load i32, i32* %comp, align 4
  %inc181 = add nsw i32 %114, 1
  store i32 %inc181, i32* %comp, align 4
  br label %for.cond.74

for.end.182:                                      ; preds = %for.cond.74
  br label %for.inc.183

for.inc.183:                                      ; preds = %for.end.182
  %115 = load i32, i32* %j, align 4
  %inc184 = add nsw i32 %115, 1
  store i32 %inc184, i32* %j, align 4
  br label %for.cond.59

for.end.185:                                      ; preds = %for.cond.59
  br label %for.inc.186

for.inc.186:                                      ; preds = %for.end.185
  %116 = load i32, i32* %i, align 4
  %inc187 = add nsw i32 %116, 1
  store i32 %inc187, i32* %i, align 4
  br label %for.cond.56

for.end.188:                                      ; preds = %for.cond.56
  %117 = load i32, i32* %select_method.addr, align 4
  %cmp189 = icmp eq i32 %117, 1
  br i1 %cmp189, label %if.then.190, label %if.else.290

if.then.190:                                      ; preds = %for.end.188
  store i32 0, i32* %i, align 4
  br label %for.cond.191

for.cond.191:                                     ; preds = %for.inc.239, %if.then.190
  %118 = load i32, i32* %i, align 4
  %119 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %cmp192 = icmp slt i32 %118, %119
  br i1 %cmp192, label %for.body.193, label %for.end.241

for.body.193:                                     ; preds = %for.cond.191
  store i32 0, i32* %j, align 4
  br label %for.cond.194

for.cond.194:                                     ; preds = %for.inc.236, %for.body.193
  %120 = load i32, i32* %j, align 4
  %121 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  %cmp195 = icmp slt i32 %120, %121
  br i1 %cmp195, label %for.body.196, label %for.end.238

for.body.196:                                     ; preds = %for.cond.194
  store i32 0, i32* %comp, align 4
  br label %for.cond.197

for.cond.197:                                     ; preds = %for.inc.233, %for.body.196
  %122 = load i32, i32* %comp, align 4
  %cmp198 = icmp slt i32 %122, 3
  br i1 %cmp198, label %for.body.199, label %for.end.235

for.body.199:                                     ; preds = %for.cond.197
  %123 = load i32, i32* %comp, align 4
  %cmp200 = icmp eq i32 %123, 0
  br i1 %cmp200, label %cond.true.201, label %cond.false.202

cond.true.201:                                    ; preds = %for.body.199
  %124 = load i32, i32* @luma_log_weight_denom, align 4
  br label %cond.end.203

cond.false.202:                                   ; preds = %for.body.199
  %125 = load i32, i32* @chroma_log_weight_denom, align 4
  br label %cond.end.203

cond.end.203:                                     ; preds = %cond.false.202, %cond.true.201
  %cond204 = phi i32 [ %124, %cond.true.201 ], [ %125, %cond.false.202 ]
  store i32 %cond204, i32* %log_weight_denom, align 4
  %126 = load i32, i32* %comp, align 4
  %idxprom205 = sext i32 %126 to i64
  %127 = load i32, i32* %j, align 4
  %idxprom206 = sext i32 %127 to i64
  %128 = load i32, i32* %i, align 4
  %idxprom207 = sext i32 %128 to i64
  %arrayidx208 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], [6 x [32 x [32 x [3 x i32]]]]* %im_weight, i32 0, i64 1
  %arrayidx209 = getelementptr inbounds [32 x [32 x [3 x i32]]], [32 x [32 x [3 x i32]]]* %arrayidx208, i32 0, i64 %idxprom207
  %arrayidx210 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx209, i32 0, i64 %idxprom206
  %arrayidx211 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx210, i32 0, i64 %idxprom205
  %129 = load i32, i32* %arrayidx211, align 4
  %130 = load i32, i32* %comp, align 4
  %idxprom212 = sext i32 %130 to i64
  %131 = load i32, i32* %j, align 4
  %idxprom213 = sext i32 %131 to i64
  %132 = load i32, i32* %i, align 4
  %idxprom214 = sext i32 %132 to i64
  %133 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx215 = getelementptr inbounds i32***, i32**** %133, i64 1
  %134 = load i32***, i32**** %arrayidx215, align 8
  %arrayidx216 = getelementptr inbounds i32**, i32*** %134, i64 %idxprom214
  %135 = load i32**, i32*** %arrayidx216, align 8
  %arrayidx217 = getelementptr inbounds i32*, i32** %135, i64 %idxprom213
  %136 = load i32*, i32** %arrayidx217, align 8
  %arrayidx218 = getelementptr inbounds i32, i32* %136, i64 %idxprom212
  store i32 %129, i32* %arrayidx218, align 4
  %137 = load i32, i32* %comp, align 4
  %idxprom219 = sext i32 %137 to i64
  %138 = load i32, i32* %j, align 4
  %idxprom220 = sext i32 %138 to i64
  %139 = load i32, i32* %i, align 4
  %idxprom221 = sext i32 %139 to i64
  %arrayidx222 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], [6 x [32 x [32 x [3 x i32]]]]* %im_weight, i32 0, i64 0
  %arrayidx223 = getelementptr inbounds [32 x [32 x [3 x i32]]], [32 x [32 x [3 x i32]]]* %arrayidx222, i32 0, i64 %idxprom221
  %arrayidx224 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx223, i32 0, i64 %idxprom220
  %arrayidx225 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx224, i32 0, i64 %idxprom219
  %140 = load i32, i32* %arrayidx225, align 4
  %141 = load i32, i32* %comp, align 4
  %idxprom226 = sext i32 %141 to i64
  %142 = load i32, i32* %j, align 4
  %idxprom227 = sext i32 %142 to i64
  %143 = load i32, i32* %i, align 4
  %idxprom228 = sext i32 %143 to i64
  %144 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx229 = getelementptr inbounds i32***, i32**** %144, i64 0
  %145 = load i32***, i32**** %arrayidx229, align 8
  %arrayidx230 = getelementptr inbounds i32**, i32*** %145, i64 %idxprom228
  %146 = load i32**, i32*** %arrayidx230, align 8
  %arrayidx231 = getelementptr inbounds i32*, i32** %146, i64 %idxprom227
  %147 = load i32*, i32** %arrayidx231, align 8
  %arrayidx232 = getelementptr inbounds i32, i32* %147, i64 %idxprom226
  store i32 %140, i32* %arrayidx232, align 4
  br label %for.inc.233

for.inc.233:                                      ; preds = %cond.end.203
  %148 = load i32, i32* %comp, align 4
  %inc234 = add nsw i32 %148, 1
  store i32 %inc234, i32* %comp, align 4
  br label %for.cond.197

for.end.235:                                      ; preds = %for.cond.197
  br label %for.inc.236

for.inc.236:                                      ; preds = %for.end.235
  %149 = load i32, i32* %j, align 4
  %inc237 = add nsw i32 %149, 1
  store i32 %inc237, i32* %j, align 4
  br label %for.cond.194

for.end.238:                                      ; preds = %for.cond.194
  br label %for.inc.239

for.inc.239:                                      ; preds = %for.end.238
  %150 = load i32, i32* %i, align 4
  %inc240 = add nsw i32 %150, 1
  store i32 %inc240, i32* %i, align 4
  br label %for.cond.191

for.end.241:                                      ; preds = %for.cond.191
  store i32 0, i32* %clist, align 4
  br label %for.cond.242

for.cond.242:                                     ; preds = %for.inc.287, %for.end.241
  %151 = load i32, i32* %clist, align 4
  %152 = load i32, i32* %list_offset, align 4
  %add243 = add nsw i32 2, %152
  %cmp244 = icmp slt i32 %151, %add243
  br i1 %cmp244, label %for.body.245, label %for.end.289

for.body.245:                                     ; preds = %for.cond.242
  store i32 0, i32* %index, align 4
  br label %for.cond.246

for.cond.246:                                     ; preds = %for.inc.284, %for.body.245
  %153 = load i32, i32* %index, align 4
  %154 = load i32, i32* %clist, align 4
  %idxprom247 = sext i32 %154 to i64
  %arrayidx248 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom247
  %155 = load i32, i32* %arrayidx248, align 4
  %cmp249 = icmp slt i32 %153, %155
  br i1 %cmp249, label %for.body.250, label %for.end.286

for.body.250:                                     ; preds = %for.cond.246
  %arrayidx251 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 0
  %156 = load i32, i32* %arrayidx251, align 4
  %157 = load i32, i32* %index, align 4
  %idxprom252 = sext i32 %157 to i64
  %158 = load i32, i32* %clist, align 4
  %idxprom253 = sext i32 %158 to i64
  %159 = load i32***, i32**** @wp_weight, align 8
  %arrayidx254 = getelementptr inbounds i32**, i32*** %159, i64 %idxprom253
  %160 = load i32**, i32*** %arrayidx254, align 8
  %arrayidx255 = getelementptr inbounds i32*, i32** %160, i64 %idxprom252
  %161 = load i32*, i32** %arrayidx255, align 8
  %arrayidx256 = getelementptr inbounds i32, i32* %161, i64 0
  store i32 %156, i32* %arrayidx256, align 4
  %arrayidx257 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 1
  %162 = load i32, i32* %arrayidx257, align 4
  %163 = load i32, i32* %index, align 4
  %idxprom258 = sext i32 %163 to i64
  %164 = load i32, i32* %clist, align 4
  %idxprom259 = sext i32 %164 to i64
  %165 = load i32***, i32**** @wp_weight, align 8
  %arrayidx260 = getelementptr inbounds i32**, i32*** %165, i64 %idxprom259
  %166 = load i32**, i32*** %arrayidx260, align 8
  %arrayidx261 = getelementptr inbounds i32*, i32** %166, i64 %idxprom258
  %167 = load i32*, i32** %arrayidx261, align 8
  %arrayidx262 = getelementptr inbounds i32, i32* %167, i64 1
  store i32 %162, i32* %arrayidx262, align 4
  %arrayidx263 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 2
  %168 = load i32, i32* %arrayidx263, align 4
  %169 = load i32, i32* %index, align 4
  %idxprom264 = sext i32 %169 to i64
  %170 = load i32, i32* %clist, align 4
  %idxprom265 = sext i32 %170 to i64
  %171 = load i32***, i32**** @wp_weight, align 8
  %arrayidx266 = getelementptr inbounds i32**, i32*** %171, i64 %idxprom265
  %172 = load i32**, i32*** %arrayidx266, align 8
  %arrayidx267 = getelementptr inbounds i32*, i32** %172, i64 %idxprom264
  %173 = load i32*, i32** %arrayidx267, align 8
  %arrayidx268 = getelementptr inbounds i32, i32* %173, i64 2
  store i32 %168, i32* %arrayidx268, align 4
  %174 = load i32, i32* %index, align 4
  %idxprom269 = sext i32 %174 to i64
  %175 = load i32, i32* %clist, align 4
  %idxprom270 = sext i32 %175 to i64
  %176 = load i32***, i32**** @wp_offset, align 8
  %arrayidx271 = getelementptr inbounds i32**, i32*** %176, i64 %idxprom270
  %177 = load i32**, i32*** %arrayidx271, align 8
  %arrayidx272 = getelementptr inbounds i32*, i32** %177, i64 %idxprom269
  %178 = load i32*, i32** %arrayidx272, align 8
  %arrayidx273 = getelementptr inbounds i32, i32* %178, i64 0
  store i32 0, i32* %arrayidx273, align 4
  %179 = load i32, i32* %index, align 4
  %idxprom274 = sext i32 %179 to i64
  %180 = load i32, i32* %clist, align 4
  %idxprom275 = sext i32 %180 to i64
  %181 = load i32***, i32**** @wp_offset, align 8
  %arrayidx276 = getelementptr inbounds i32**, i32*** %181, i64 %idxprom275
  %182 = load i32**, i32*** %arrayidx276, align 8
  %arrayidx277 = getelementptr inbounds i32*, i32** %182, i64 %idxprom274
  %183 = load i32*, i32** %arrayidx277, align 8
  %arrayidx278 = getelementptr inbounds i32, i32* %183, i64 1
  store i32 0, i32* %arrayidx278, align 4
  %184 = load i32, i32* %index, align 4
  %idxprom279 = sext i32 %184 to i64
  %185 = load i32, i32* %clist, align 4
  %idxprom280 = sext i32 %185 to i64
  %186 = load i32***, i32**** @wp_offset, align 8
  %arrayidx281 = getelementptr inbounds i32**, i32*** %186, i64 %idxprom280
  %187 = load i32**, i32*** %arrayidx281, align 8
  %arrayidx282 = getelementptr inbounds i32*, i32** %187, i64 %idxprom279
  %188 = load i32*, i32** %arrayidx282, align 8
  %arrayidx283 = getelementptr inbounds i32, i32* %188, i64 2
  store i32 0, i32* %arrayidx283, align 4
  br label %for.inc.284

for.inc.284:                                      ; preds = %for.body.250
  %189 = load i32, i32* %index, align 4
  %inc285 = add nsw i32 %189, 1
  store i32 %inc285, i32* %index, align 4
  br label %for.cond.246

for.end.286:                                      ; preds = %for.cond.246
  br label %for.inc.287

for.inc.287:                                      ; preds = %for.end.286
  %190 = load i32, i32* %clist, align 4
  %inc288 = add nsw i32 %190, 1
  store i32 %inc288, i32* %clist, align 4
  br label %for.cond.242

for.end.289:                                      ; preds = %for.cond.242
  br label %if.end.577

if.else.290:                                      ; preds = %for.end.188
  store i32 0, i32* %i, align 4
  br label %for.cond.291

for.cond.291:                                     ; preds = %for.inc.305, %if.else.290
  %191 = load i32, i32* %i, align 4
  %192 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %192, i32 0, i32 17
  %193 = load i32, i32* %height, align 4
  %cmp292 = icmp slt i32 %191, %193
  br i1 %cmp292, label %for.body.293, label %for.end.307

for.body.293:                                     ; preds = %for.cond.291
  store i32 0, i32* %j, align 4
  br label %for.cond.294

for.cond.294:                                     ; preds = %for.inc.302, %for.body.293
  %194 = load i32, i32* %j, align 4
  %195 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %195, i32 0, i32 13
  %196 = load i32, i32* %width, align 4
  %cmp295 = icmp slt i32 %194, %196
  br i1 %cmp295, label %for.body.296, label %for.end.304

for.body.296:                                     ; preds = %for.cond.294
  %197 = load i32, i32* %j, align 4
  %idxprom297 = sext i32 %197 to i64
  %198 = load i32, i32* %i, align 4
  %idxprom298 = sext i32 %198 to i64
  %199 = load i16**, i16*** @imgY_org, align 8
  %arrayidx299 = getelementptr inbounds i16*, i16** %199, i64 %idxprom298
  %200 = load i16*, i16** %arrayidx299, align 8
  %arrayidx300 = getelementptr inbounds i16, i16* %200, i64 %idxprom297
  %201 = load i16, i16* %arrayidx300, align 2
  %conv = uitofp i16 %201 to double
  %202 = load double, double* %dc_org, align 8
  %add301 = fadd double %202, %conv
  store double %add301, double* %dc_org, align 8
  br label %for.inc.302

for.inc.302:                                      ; preds = %for.body.296
  %203 = load i32, i32* %j, align 4
  %inc303 = add nsw i32 %203, 1
  store i32 %inc303, i32* %j, align 4
  br label %for.cond.294

for.end.304:                                      ; preds = %for.cond.294
  br label %for.inc.305

for.inc.305:                                      ; preds = %for.end.304
  %204 = load i32, i32* %i, align 4
  %inc306 = add nsw i32 %204, 1
  store i32 %inc306, i32* %i, align 4
  br label %for.cond.291

for.end.307:                                      ; preds = %for.cond.291
  store i32 0, i32* %clist, align 4
  br label %for.cond.308

for.cond.308:                                     ; preds = %for.inc.420, %for.end.307
  %205 = load i32, i32* %clist, align 4
  %206 = load i32, i32* %list_offset, align 4
  %add309 = add nsw i32 2, %206
  %cmp310 = icmp slt i32 %205, %add309
  br i1 %cmp310, label %for.body.312, label %for.end.422

for.body.312:                                     ; preds = %for.cond.308
  store i32 0, i32* %n, align 4
  br label %for.cond.313

for.cond.313:                                     ; preds = %for.inc.417, %for.body.312
  %207 = load i32, i32* %n, align 4
  %208 = load i32, i32* %clist, align 4
  %idxprom314 = sext i32 %208 to i64
  %arrayidx315 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom314
  %209 = load i32, i32* %arrayidx315, align 4
  %cmp316 = icmp slt i32 %207, %209
  br i1 %cmp316, label %for.body.318, label %for.end.419

for.body.318:                                     ; preds = %for.cond.313
  %210 = load i32, i32* %n, align 4
  %idxprom319 = sext i32 %210 to i64
  %211 = load i32, i32* %clist, align 4
  %idxprom320 = sext i32 %211 to i64
  %arrayidx321 = getelementptr inbounds [6 x [32 x double]], [6 x [32 x double]]* %dc_ref, i32 0, i64 %idxprom320
  %arrayidx322 = getelementptr inbounds [32 x double], [32 x double]* %arrayidx321, i32 0, i64 %idxprom319
  store double 0.000000e+00, double* %arrayidx322, align 8
  %212 = load i32, i32* %n, align 4
  %idxprom323 = sext i32 %212 to i64
  %213 = load i32, i32* %clist, align 4
  %idxprom324 = sext i32 %213 to i64
  %arrayidx325 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom324
  %214 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx325, align 8
  %arrayidx326 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %214, i64 %idxprom323
  %215 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx326, align 8
  %imgY_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %215, i32 0, i32 30
  %216 = load i16****, i16***** %imgY_sub, align 8
  store i16**** %216, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 0), align 8
  %217 = load i16****, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 0), align 8
  %arrayidx327 = getelementptr inbounds i16***, i16**** %217, i64 0
  %218 = load i16***, i16**** %arrayidx327, align 8
  %arrayidx328 = getelementptr inbounds i16**, i16*** %218, i64 0
  %219 = load i16**, i16*** %arrayidx328, align 8
  store i16** %219, i16*** %tmpPtr, align 8
  store i32 20, i32* %j, align 4
  br label %for.cond.329

for.cond.329:                                     ; preds = %for.inc.354, %for.body.318
  %220 = load i32, i32* %j, align 4
  %221 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height330 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %221, i32 0, i32 17
  %222 = load i32, i32* %height330, align 4
  %add331 = add nsw i32 %222, 20
  %cmp332 = icmp slt i32 %220, %add331
  br i1 %cmp332, label %for.body.334, label %for.end.356

for.body.334:                                     ; preds = %for.cond.329
  store i32 20, i32* %i, align 4
  br label %for.cond.335

for.cond.335:                                     ; preds = %for.inc.351, %for.body.334
  %223 = load i32, i32* %i, align 4
  %224 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width336 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %224, i32 0, i32 13
  %225 = load i32, i32* %width336, align 4
  %add337 = add nsw i32 %225, 20
  %cmp338 = icmp slt i32 %223, %add337
  br i1 %cmp338, label %for.body.340, label %for.end.353

for.body.340:                                     ; preds = %for.cond.335
  %226 = load i32, i32* %i, align 4
  %idxprom341 = sext i32 %226 to i64
  %227 = load i32, i32* %j, align 4
  %idxprom342 = sext i32 %227 to i64
  %228 = load i16**, i16*** %tmpPtr, align 8
  %arrayidx343 = getelementptr inbounds i16*, i16** %228, i64 %idxprom342
  %229 = load i16*, i16** %arrayidx343, align 8
  %arrayidx344 = getelementptr inbounds i16, i16* %229, i64 %idxprom341
  %230 = load i16, i16* %arrayidx344, align 2
  %conv345 = uitofp i16 %230 to double
  %231 = load i32, i32* %n, align 4
  %idxprom346 = sext i32 %231 to i64
  %232 = load i32, i32* %clist, align 4
  %idxprom347 = sext i32 %232 to i64
  %arrayidx348 = getelementptr inbounds [6 x [32 x double]], [6 x [32 x double]]* %dc_ref, i32 0, i64 %idxprom347
  %arrayidx349 = getelementptr inbounds [32 x double], [32 x double]* %arrayidx348, i32 0, i64 %idxprom346
  %233 = load double, double* %arrayidx349, align 8
  %add350 = fadd double %233, %conv345
  store double %add350, double* %arrayidx349, align 8
  br label %for.inc.351

for.inc.351:                                      ; preds = %for.body.340
  %234 = load i32, i32* %i, align 4
  %inc352 = add nsw i32 %234, 1
  store i32 %inc352, i32* %i, align 4
  br label %for.cond.335

for.end.353:                                      ; preds = %for.cond.335
  br label %for.inc.354

for.inc.354:                                      ; preds = %for.end.353
  %235 = load i32, i32* %j, align 4
  %inc355 = add nsw i32 %235, 1
  store i32 %inc355, i32* %j, align 4
  br label %for.cond.329

for.end.356:                                      ; preds = %for.cond.329
  %236 = load i32, i32* %n, align 4
  %idxprom357 = sext i32 %236 to i64
  %237 = load i32, i32* %clist, align 4
  %idxprom358 = sext i32 %237 to i64
  %arrayidx359 = getelementptr inbounds [6 x [32 x double]], [6 x [32 x double]]* %dc_ref, i32 0, i64 %idxprom358
  %arrayidx360 = getelementptr inbounds [32 x double], [32 x double]* %arrayidx359, i32 0, i64 %idxprom357
  %238 = load double, double* %arrayidx360, align 8
  %cmp361 = fcmp une double %238, 0.000000e+00
  br i1 %cmp361, label %if.then.363, label %if.else.374

if.then.363:                                      ; preds = %for.end.356
  %arrayidx364 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 0
  %239 = load i32, i32* %arrayidx364, align 4
  %conv365 = sitofp i32 %239 to double
  %240 = load double, double* %dc_org, align 8
  %mul366 = fmul double %conv365, %240
  %241 = load i32, i32* %n, align 4
  %idxprom367 = sext i32 %241 to i64
  %242 = load i32, i32* %clist, align 4
  %idxprom368 = sext i32 %242 to i64
  %arrayidx369 = getelementptr inbounds [6 x [32 x double]], [6 x [32 x double]]* %dc_ref, i32 0, i64 %idxprom368
  %arrayidx370 = getelementptr inbounds [32 x double], [32 x double]* %arrayidx369, i32 0, i64 %idxprom367
  %243 = load double, double* %arrayidx370, align 8
  %div371 = fdiv double %mul366, %243
  %add372 = fadd double %div371, 5.000000e-01
  %conv373 = fptosi double %add372 to i32
  store i32 %conv373, i32* %wf_weight, align 4
  br label %if.end.376

if.else.374:                                      ; preds = %for.end.356
  %arrayidx375 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 0
  %244 = load i32, i32* %arrayidx375, align 4
  store i32 %244, i32* %wf_weight, align 4
  br label %if.end.376

if.end.376:                                       ; preds = %if.else.374, %if.then.363
  %245 = load i32, i32* %wf_weight, align 4
  %cmp377 = icmp slt i32 %245, -64
  br i1 %cmp377, label %if.then.382, label %lor.lhs.false.379

lor.lhs.false.379:                                ; preds = %if.end.376
  %246 = load i32, i32* %wf_weight, align 4
  %cmp380 = icmp sgt i32 %246, 127
  br i1 %cmp380, label %if.then.382, label %if.end.384

if.then.382:                                      ; preds = %lor.lhs.false.379, %if.end.376
  %arrayidx383 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 0
  %247 = load i32, i32* %arrayidx383, align 4
  store i32 %247, i32* %wf_weight, align 4
  br label %if.end.384

if.end.384:                                       ; preds = %if.then.382, %lor.lhs.false.379
  store i32 0, i32* %wf_offset, align 4
  %248 = load i32, i32* %wf_weight, align 4
  %249 = load i32, i32* %n, align 4
  %idxprom385 = sext i32 %249 to i64
  %250 = load i32, i32* %clist, align 4
  %idxprom386 = sext i32 %250 to i64
  %arrayidx387 = getelementptr inbounds [6 x [32 x [3 x i32]]], [6 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom386
  %arrayidx388 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx387, i32 0, i64 %idxprom385
  %arrayidx389 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx388, i32 0, i64 0
  store i32 %248, i32* %arrayidx389, align 4
  %arrayidx390 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 1
  %251 = load i32, i32* %arrayidx390, align 4
  %252 = load i32, i32* %n, align 4
  %idxprom391 = sext i32 %252 to i64
  %253 = load i32, i32* %clist, align 4
  %idxprom392 = sext i32 %253 to i64
  %arrayidx393 = getelementptr inbounds [6 x [32 x [3 x i32]]], [6 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom392
  %arrayidx394 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx393, i32 0, i64 %idxprom391
  %arrayidx395 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx394, i32 0, i64 1
  store i32 %251, i32* %arrayidx395, align 4
  %arrayidx396 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 2
  %254 = load i32, i32* %arrayidx396, align 4
  %255 = load i32, i32* %n, align 4
  %idxprom397 = sext i32 %255 to i64
  %256 = load i32, i32* %clist, align 4
  %idxprom398 = sext i32 %256 to i64
  %arrayidx399 = getelementptr inbounds [6 x [32 x [3 x i32]]], [6 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom398
  %arrayidx400 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx399, i32 0, i64 %idxprom397
  %arrayidx401 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx400, i32 0, i64 2
  store i32 %254, i32* %arrayidx401, align 4
  %257 = load i32, i32* %n, align 4
  %idxprom402 = sext i32 %257 to i64
  %258 = load i32, i32* %clist, align 4
  %idxprom403 = sext i32 %258 to i64
  %arrayidx404 = getelementptr inbounds [6 x [32 x [3 x i32]]], [6 x [32 x [3 x i32]]]* %offset, i32 0, i64 %idxprom403
  %arrayidx405 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx404, i32 0, i64 %idxprom402
  %arrayidx406 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx405, i32 0, i64 0
  store i32 0, i32* %arrayidx406, align 4
  %259 = load i32, i32* %n, align 4
  %idxprom407 = sext i32 %259 to i64
  %260 = load i32, i32* %clist, align 4
  %idxprom408 = sext i32 %260 to i64
  %arrayidx409 = getelementptr inbounds [6 x [32 x [3 x i32]]], [6 x [32 x [3 x i32]]]* %offset, i32 0, i64 %idxprom408
  %arrayidx410 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx409, i32 0, i64 %idxprom407
  %arrayidx411 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx410, i32 0, i64 1
  store i32 0, i32* %arrayidx411, align 4
  %261 = load i32, i32* %n, align 4
  %idxprom412 = sext i32 %261 to i64
  %262 = load i32, i32* %clist, align 4
  %idxprom413 = sext i32 %262 to i64
  %arrayidx414 = getelementptr inbounds [6 x [32 x [3 x i32]]], [6 x [32 x [3 x i32]]]* %offset, i32 0, i64 %idxprom413
  %arrayidx415 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx414, i32 0, i64 %idxprom412
  %arrayidx416 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx415, i32 0, i64 2
  store i32 0, i32* %arrayidx416, align 4
  br label %for.inc.417

for.inc.417:                                      ; preds = %if.end.384
  %263 = load i32, i32* %n, align 4
  %inc418 = add nsw i32 %263, 1
  store i32 %inc418, i32* %n, align 4
  br label %for.cond.313

for.end.419:                                      ; preds = %for.cond.313
  br label %for.inc.420

for.inc.420:                                      ; preds = %for.end.419
  %264 = load i32, i32* %clist, align 4
  %inc421 = add nsw i32 %264, 1
  store i32 %inc421, i32* %clist, align 4
  br label %for.cond.308

for.end.422:                                      ; preds = %for.cond.308
  %265 = load i32, i32* %select_method.addr, align 4
  %cmp423 = icmp eq i32 %265, 0
  br i1 %cmp423, label %if.then.425, label %if.else.474

if.then.425:                                      ; preds = %for.end.422
  store i32 0, i32* %clist, align 4
  br label %for.cond.426

for.cond.426:                                     ; preds = %for.inc.471, %if.then.425
  %266 = load i32, i32* %clist, align 4
  %267 = load i32, i32* %list_offset, align 4
  %add427 = add nsw i32 2, %267
  %cmp428 = icmp slt i32 %266, %add427
  br i1 %cmp428, label %for.body.430, label %for.end.473

for.body.430:                                     ; preds = %for.cond.426
  store i32 0, i32* %index, align 4
  br label %for.cond.431

for.cond.431:                                     ; preds = %for.inc.468, %for.body.430
  %268 = load i32, i32* %index, align 4
  %269 = load i32, i32* %clist, align 4
  %idxprom432 = sext i32 %269 to i64
  %arrayidx433 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom432
  %270 = load i32, i32* %arrayidx433, align 4
  %cmp434 = icmp slt i32 %268, %270
  br i1 %cmp434, label %for.body.436, label %for.end.470

for.body.436:                                     ; preds = %for.cond.431
  store i32 0, i32* %comp, align 4
  br label %for.cond.437

for.cond.437:                                     ; preds = %for.inc.465, %for.body.436
  %271 = load i32, i32* %comp, align 4
  %cmp438 = icmp slt i32 %271, 3
  br i1 %cmp438, label %for.body.440, label %for.end.467

for.body.440:                                     ; preds = %for.cond.437
  %272 = load i32, i32* %comp, align 4
  %idxprom441 = sext i32 %272 to i64
  %273 = load i32, i32* %index, align 4
  %idxprom442 = sext i32 %273 to i64
  %274 = load i32, i32* %clist, align 4
  %idxprom443 = sext i32 %274 to i64
  %arrayidx444 = getelementptr inbounds [6 x [32 x [3 x i32]]], [6 x [32 x [3 x i32]]]* %weight, i32 0, i64 %idxprom443
  %arrayidx445 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx444, i32 0, i64 %idxprom442
  %arrayidx446 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx445, i32 0, i64 %idxprom441
  %275 = load i32, i32* %arrayidx446, align 4
  %276 = load i32, i32* %comp, align 4
  %idxprom447 = sext i32 %276 to i64
  %277 = load i32, i32* %index, align 4
  %idxprom448 = sext i32 %277 to i64
  %278 = load i32, i32* %clist, align 4
  %idxprom449 = sext i32 %278 to i64
  %279 = load i32***, i32**** @wp_weight, align 8
  %arrayidx450 = getelementptr inbounds i32**, i32*** %279, i64 %idxprom449
  %280 = load i32**, i32*** %arrayidx450, align 8
  %arrayidx451 = getelementptr inbounds i32*, i32** %280, i64 %idxprom448
  %281 = load i32*, i32** %arrayidx451, align 8
  %arrayidx452 = getelementptr inbounds i32, i32* %281, i64 %idxprom447
  store i32 %275, i32* %arrayidx452, align 4
  %282 = load i32, i32* %comp, align 4
  %idxprom453 = sext i32 %282 to i64
  %283 = load i32, i32* %index, align 4
  %idxprom454 = sext i32 %283 to i64
  %284 = load i32, i32* %clist, align 4
  %idxprom455 = sext i32 %284 to i64
  %arrayidx456 = getelementptr inbounds [6 x [32 x [3 x i32]]], [6 x [32 x [3 x i32]]]* %offset, i32 0, i64 %idxprom455
  %arrayidx457 = getelementptr inbounds [32 x [3 x i32]], [32 x [3 x i32]]* %arrayidx456, i32 0, i64 %idxprom454
  %arrayidx458 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx457, i32 0, i64 %idxprom453
  %285 = load i32, i32* %arrayidx458, align 4
  %286 = load i32, i32* %comp, align 4
  %idxprom459 = sext i32 %286 to i64
  %287 = load i32, i32* %index, align 4
  %idxprom460 = sext i32 %287 to i64
  %288 = load i32, i32* %clist, align 4
  %idxprom461 = sext i32 %288 to i64
  %289 = load i32***, i32**** @wp_offset, align 8
  %arrayidx462 = getelementptr inbounds i32**, i32*** %289, i64 %idxprom461
  %290 = load i32**, i32*** %arrayidx462, align 8
  %arrayidx463 = getelementptr inbounds i32*, i32** %290, i64 %idxprom460
  %291 = load i32*, i32** %arrayidx463, align 8
  %arrayidx464 = getelementptr inbounds i32, i32* %291, i64 %idxprom459
  store i32 %285, i32* %arrayidx464, align 4
  br label %for.inc.465

for.inc.465:                                      ; preds = %for.body.440
  %292 = load i32, i32* %comp, align 4
  %inc466 = add nsw i32 %292, 1
  store i32 %inc466, i32* %comp, align 4
  br label %for.cond.437

for.end.467:                                      ; preds = %for.cond.437
  br label %for.inc.468

for.inc.468:                                      ; preds = %for.end.467
  %293 = load i32, i32* %index, align 4
  %inc469 = add nsw i32 %293, 1
  store i32 %inc469, i32* %index, align 4
  br label %for.cond.431

for.end.470:                                      ; preds = %for.cond.431
  br label %for.inc.471

for.inc.471:                                      ; preds = %for.end.470
  %294 = load i32, i32* %clist, align 4
  %inc472 = add nsw i32 %294, 1
  store i32 %inc472, i32* %clist, align 4
  br label %for.cond.426

for.end.473:                                      ; preds = %for.cond.426
  br label %if.end.525

if.else.474:                                      ; preds = %for.end.422
  store i32 0, i32* %clist, align 4
  br label %for.cond.475

for.cond.475:                                     ; preds = %for.inc.522, %if.else.474
  %295 = load i32, i32* %clist, align 4
  %296 = load i32, i32* %list_offset, align 4
  %add476 = add nsw i32 2, %296
  %cmp477 = icmp slt i32 %295, %add476
  br i1 %cmp477, label %for.body.479, label %for.end.524

for.body.479:                                     ; preds = %for.cond.475
  store i32 0, i32* %index, align 4
  br label %for.cond.480

for.cond.480:                                     ; preds = %for.inc.519, %for.body.479
  %297 = load i32, i32* %index, align 4
  %298 = load i32, i32* %clist, align 4
  %idxprom481 = sext i32 %298 to i64
  %arrayidx482 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom481
  %299 = load i32, i32* %arrayidx482, align 4
  %cmp483 = icmp slt i32 %297, %299
  br i1 %cmp483, label %for.body.485, label %for.end.521

for.body.485:                                     ; preds = %for.cond.480
  %arrayidx486 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 0
  %300 = load i32, i32* %arrayidx486, align 4
  %301 = load i32, i32* %index, align 4
  %idxprom487 = sext i32 %301 to i64
  %302 = load i32, i32* %clist, align 4
  %idxprom488 = sext i32 %302 to i64
  %303 = load i32***, i32**** @wp_weight, align 8
  %arrayidx489 = getelementptr inbounds i32**, i32*** %303, i64 %idxprom488
  %304 = load i32**, i32*** %arrayidx489, align 8
  %arrayidx490 = getelementptr inbounds i32*, i32** %304, i64 %idxprom487
  %305 = load i32*, i32** %arrayidx490, align 8
  %arrayidx491 = getelementptr inbounds i32, i32* %305, i64 0
  store i32 %300, i32* %arrayidx491, align 4
  %arrayidx492 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 1
  %306 = load i32, i32* %arrayidx492, align 4
  %307 = load i32, i32* %index, align 4
  %idxprom493 = sext i32 %307 to i64
  %308 = load i32, i32* %clist, align 4
  %idxprom494 = sext i32 %308 to i64
  %309 = load i32***, i32**** @wp_weight, align 8
  %arrayidx495 = getelementptr inbounds i32**, i32*** %309, i64 %idxprom494
  %310 = load i32**, i32*** %arrayidx495, align 8
  %arrayidx496 = getelementptr inbounds i32*, i32** %310, i64 %idxprom493
  %311 = load i32*, i32** %arrayidx496, align 8
  %arrayidx497 = getelementptr inbounds i32, i32* %311, i64 1
  store i32 %306, i32* %arrayidx497, align 4
  %arrayidx498 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 2
  %312 = load i32, i32* %arrayidx498, align 4
  %313 = load i32, i32* %index, align 4
  %idxprom499 = sext i32 %313 to i64
  %314 = load i32, i32* %clist, align 4
  %idxprom500 = sext i32 %314 to i64
  %315 = load i32***, i32**** @wp_weight, align 8
  %arrayidx501 = getelementptr inbounds i32**, i32*** %315, i64 %idxprom500
  %316 = load i32**, i32*** %arrayidx501, align 8
  %arrayidx502 = getelementptr inbounds i32*, i32** %316, i64 %idxprom499
  %317 = load i32*, i32** %arrayidx502, align 8
  %arrayidx503 = getelementptr inbounds i32, i32* %317, i64 2
  store i32 %312, i32* %arrayidx503, align 4
  %318 = load i32, i32* %index, align 4
  %idxprom504 = sext i32 %318 to i64
  %319 = load i32, i32* %clist, align 4
  %idxprom505 = sext i32 %319 to i64
  %320 = load i32***, i32**** @wp_offset, align 8
  %arrayidx506 = getelementptr inbounds i32**, i32*** %320, i64 %idxprom505
  %321 = load i32**, i32*** %arrayidx506, align 8
  %arrayidx507 = getelementptr inbounds i32*, i32** %321, i64 %idxprom504
  %322 = load i32*, i32** %arrayidx507, align 8
  %arrayidx508 = getelementptr inbounds i32, i32* %322, i64 0
  store i32 0, i32* %arrayidx508, align 4
  %323 = load i32, i32* %index, align 4
  %idxprom509 = sext i32 %323 to i64
  %324 = load i32, i32* %clist, align 4
  %idxprom510 = sext i32 %324 to i64
  %325 = load i32***, i32**** @wp_offset, align 8
  %arrayidx511 = getelementptr inbounds i32**, i32*** %325, i64 %idxprom510
  %326 = load i32**, i32*** %arrayidx511, align 8
  %arrayidx512 = getelementptr inbounds i32*, i32** %326, i64 %idxprom509
  %327 = load i32*, i32** %arrayidx512, align 8
  %arrayidx513 = getelementptr inbounds i32, i32* %327, i64 1
  store i32 0, i32* %arrayidx513, align 4
  %328 = load i32, i32* %index, align 4
  %idxprom514 = sext i32 %328 to i64
  %329 = load i32, i32* %clist, align 4
  %idxprom515 = sext i32 %329 to i64
  %330 = load i32***, i32**** @wp_offset, align 8
  %arrayidx516 = getelementptr inbounds i32**, i32*** %330, i64 %idxprom515
  %331 = load i32**, i32*** %arrayidx516, align 8
  %arrayidx517 = getelementptr inbounds i32*, i32** %331, i64 %idxprom514
  %332 = load i32*, i32** %arrayidx517, align 8
  %arrayidx518 = getelementptr inbounds i32, i32* %332, i64 2
  store i32 0, i32* %arrayidx518, align 4
  br label %for.inc.519

for.inc.519:                                      ; preds = %for.body.485
  %333 = load i32, i32* %index, align 4
  %inc520 = add nsw i32 %333, 1
  store i32 %inc520, i32* %index, align 4
  br label %for.cond.480

for.end.521:                                      ; preds = %for.cond.480
  br label %for.inc.522

for.inc.522:                                      ; preds = %for.end.521
  %334 = load i32, i32* %clist, align 4
  %inc523 = add nsw i32 %334, 1
  store i32 %inc523, i32* %clist, align 4
  br label %for.cond.475

for.end.524:                                      ; preds = %for.cond.475
  br label %if.end.525

if.end.525:                                       ; preds = %for.end.524, %for.end.473
  store i32 0, i32* %i, align 4
  br label %for.cond.526

for.cond.526:                                     ; preds = %for.inc.574, %if.end.525
  %335 = load i32, i32* %i, align 4
  %336 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %cmp527 = icmp slt i32 %335, %336
  br i1 %cmp527, label %for.body.529, label %for.end.576

for.body.529:                                     ; preds = %for.cond.526
  store i32 0, i32* %j, align 4
  br label %for.cond.530

for.cond.530:                                     ; preds = %for.inc.571, %for.body.529
  %337 = load i32, i32* %j, align 4
  %338 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  %cmp531 = icmp slt i32 %337, %338
  br i1 %cmp531, label %for.body.533, label %for.end.573

for.body.533:                                     ; preds = %for.cond.530
  store i32 0, i32* %comp, align 4
  br label %for.cond.534

for.cond.534:                                     ; preds = %for.inc.568, %for.body.533
  %339 = load i32, i32* %comp, align 4
  %cmp535 = icmp slt i32 %339, 3
  br i1 %cmp535, label %for.body.537, label %for.end.570

for.body.537:                                     ; preds = %for.cond.534
  %340 = load i32, i32* %comp, align 4
  %cmp538 = icmp eq i32 %340, 0
  br i1 %cmp538, label %cond.true.540, label %cond.false.541

cond.true.540:                                    ; preds = %for.body.537
  %341 = load i32, i32* @luma_log_weight_denom, align 4
  br label %cond.end.542

cond.false.541:                                   ; preds = %for.body.537
  %342 = load i32, i32* @chroma_log_weight_denom, align 4
  br label %cond.end.542

cond.end.542:                                     ; preds = %cond.false.541, %cond.true.540
  %cond543 = phi i32 [ %341, %cond.true.540 ], [ %342, %cond.false.541 ]
  store i32 %cond543, i32* %log_weight_denom, align 4
  %343 = load i32, i32* %comp, align 4
  %idxprom544 = sext i32 %343 to i64
  %344 = load i32, i32* %i, align 4
  %idxprom545 = sext i32 %344 to i64
  %345 = load i32***, i32**** @wp_weight, align 8
  %arrayidx546 = getelementptr inbounds i32**, i32*** %345, i64 0
  %346 = load i32**, i32*** %arrayidx546, align 8
  %arrayidx547 = getelementptr inbounds i32*, i32** %346, i64 %idxprom545
  %347 = load i32*, i32** %arrayidx547, align 8
  %arrayidx548 = getelementptr inbounds i32, i32* %347, i64 %idxprom544
  %348 = load i32, i32* %arrayidx548, align 4
  %349 = load i32, i32* %comp, align 4
  %idxprom549 = sext i32 %349 to i64
  %350 = load i32, i32* %j, align 4
  %idxprom550 = sext i32 %350 to i64
  %351 = load i32, i32* %i, align 4
  %idxprom551 = sext i32 %351 to i64
  %352 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx552 = getelementptr inbounds i32***, i32**** %352, i64 0
  %353 = load i32***, i32**** %arrayidx552, align 8
  %arrayidx553 = getelementptr inbounds i32**, i32*** %353, i64 %idxprom551
  %354 = load i32**, i32*** %arrayidx553, align 8
  %arrayidx554 = getelementptr inbounds i32*, i32** %354, i64 %idxprom550
  %355 = load i32*, i32** %arrayidx554, align 8
  %arrayidx555 = getelementptr inbounds i32, i32* %355, i64 %idxprom549
  store i32 %348, i32* %arrayidx555, align 4
  %356 = load i32, i32* %comp, align 4
  %idxprom556 = sext i32 %356 to i64
  %357 = load i32, i32* %j, align 4
  %idxprom557 = sext i32 %357 to i64
  %358 = load i32***, i32**** @wp_weight, align 8
  %arrayidx558 = getelementptr inbounds i32**, i32*** %358, i64 1
  %359 = load i32**, i32*** %arrayidx558, align 8
  %arrayidx559 = getelementptr inbounds i32*, i32** %359, i64 %idxprom557
  %360 = load i32*, i32** %arrayidx559, align 8
  %arrayidx560 = getelementptr inbounds i32, i32* %360, i64 %idxprom556
  %361 = load i32, i32* %arrayidx560, align 4
  %362 = load i32, i32* %comp, align 4
  %idxprom561 = sext i32 %362 to i64
  %363 = load i32, i32* %j, align 4
  %idxprom562 = sext i32 %363 to i64
  %364 = load i32, i32* %i, align 4
  %idxprom563 = sext i32 %364 to i64
  %365 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx564 = getelementptr inbounds i32***, i32**** %365, i64 1
  %366 = load i32***, i32**** %arrayidx564, align 8
  %arrayidx565 = getelementptr inbounds i32**, i32*** %366, i64 %idxprom563
  %367 = load i32**, i32*** %arrayidx565, align 8
  %arrayidx566 = getelementptr inbounds i32*, i32** %367, i64 %idxprom562
  %368 = load i32*, i32** %arrayidx566, align 8
  %arrayidx567 = getelementptr inbounds i32, i32* %368, i64 %idxprom561
  store i32 %361, i32* %arrayidx567, align 4
  br label %for.inc.568

for.inc.568:                                      ; preds = %cond.end.542
  %369 = load i32, i32* %comp, align 4
  %inc569 = add nsw i32 %369, 1
  store i32 %inc569, i32* %comp, align 4
  br label %for.cond.534

for.end.570:                                      ; preds = %for.cond.534
  br label %for.inc.571

for.inc.571:                                      ; preds = %for.end.570
  %370 = load i32, i32* %j, align 4
  %inc572 = add nsw i32 %370, 1
  store i32 %inc572, i32* %j, align 4
  br label %for.cond.530

for.end.573:                                      ; preds = %for.cond.530
  br label %for.inc.574

for.inc.574:                                      ; preds = %for.end.573
  %371 = load i32, i32* %i, align 4
  %inc575 = add nsw i32 %371, 1
  store i32 %inc575, i32* %i, align 4
  br label %for.cond.526

for.end.576:                                      ; preds = %for.cond.526
  br label %if.end.577

if.end.577:                                       ; preds = %for.end.576, %for.end.289
  %372 = load i32, i32* %select_method.addr, align 4
  %cmp578 = icmp eq i32 %372, 0
  br i1 %cmp578, label %if.then.580, label %if.end.643

if.then.580:                                      ; preds = %if.end.577
  %373 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List0_refs = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %373, i32 0, i32 10
  %374 = load i32, i32* %B_List0_refs, align 4
  %cmp581 = icmp eq i32 %374, 0
  br i1 %cmp581, label %cond.true.583, label %cond.false.584

cond.true.583:                                    ; preds = %if.then.580
  %375 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  br label %cond.end.587

cond.false.584:                                   ; preds = %if.then.580
  %376 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List0_refs585 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %376, i32 0, i32 10
  %377 = load i32, i32* %B_List0_refs585, align 4
  %378 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %call586 = call i32 @imin(i32 %377, i32 %378)
  br label %cond.end.587

cond.end.587:                                     ; preds = %cond.false.584, %cond.true.583
  %cond588 = phi i32 [ %375, %cond.true.583 ], [ %call586, %cond.false.584 ]
  %arrayidx589 = getelementptr inbounds [2 x i32], [2 x i32]* %active_refs, i32 0, i64 0
  store i32 %cond588, i32* %arrayidx589, align 4
  %379 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List1_refs = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %379, i32 0, i32 11
  %380 = load i32, i32* %B_List1_refs, align 4
  %cmp590 = icmp eq i32 %380, 0
  br i1 %cmp590, label %cond.true.592, label %cond.false.593

cond.true.592:                                    ; preds = %cond.end.587
  %381 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  br label %cond.end.596

cond.false.593:                                   ; preds = %cond.end.587
  %382 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List0_refs594 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %382, i32 0, i32 10
  %383 = load i32, i32* %B_List0_refs594, align 4
  %384 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  %call595 = call i32 @imin(i32 %383, i32 %384)
  br label %cond.end.596

cond.end.596:                                     ; preds = %cond.false.593, %cond.true.592
  %cond597 = phi i32 [ %381, %cond.true.592 ], [ %call595, %cond.false.593 ]
  %arrayidx598 = getelementptr inbounds [2 x i32], [2 x i32]* %active_refs, i32 0, i64 1
  store i32 %cond597, i32* %arrayidx598, align 4
  store i32 0, i32* %clist, align 4
  br label %for.cond.599

for.cond.599:                                     ; preds = %for.inc.640, %cond.end.596
  %385 = load i32, i32* %clist, align 4
  %386 = load i32, i32* %list_offset, align 4
  %add600 = add nsw i32 2, %386
  %cmp601 = icmp slt i32 %385, %add600
  br i1 %cmp601, label %for.body.603, label %for.end.642

for.body.603:                                     ; preds = %for.cond.599
  store i32 0, i32* %index, align 4
  br label %for.cond.604

for.cond.604:                                     ; preds = %for.inc.633, %for.body.603
  %387 = load i32, i32* %index, align 4
  %388 = load i32, i32* %clist, align 4
  %idxprom605 = sext i32 %388 to i64
  %arrayidx606 = getelementptr inbounds [2 x i32], [2 x i32]* %active_refs, i32 0, i64 %idxprom605
  %389 = load i32, i32* %arrayidx606, align 4
  %cmp607 = icmp slt i32 %387, %389
  br i1 %cmp607, label %for.body.609, label %for.end.635

for.body.609:                                     ; preds = %for.cond.604
  store i32 0, i32* %comp, align 4
  br label %for.cond.610

for.cond.610:                                     ; preds = %for.inc.626, %for.body.609
  %390 = load i32, i32* %comp, align 4
  %cmp611 = icmp slt i32 %390, 3
  br i1 %cmp611, label %for.body.613, label %for.end.628

for.body.613:                                     ; preds = %for.cond.610
  %391 = load i32, i32* %comp, align 4
  %idxprom614 = sext i32 %391 to i64
  %392 = load i32, i32* %index, align 4
  %idxprom615 = sext i32 %392 to i64
  %393 = load i32, i32* %clist, align 4
  %idxprom616 = sext i32 %393 to i64
  %394 = load i32***, i32**** @wp_weight, align 8
  %arrayidx617 = getelementptr inbounds i32**, i32*** %394, i64 %idxprom616
  %395 = load i32**, i32*** %arrayidx617, align 8
  %arrayidx618 = getelementptr inbounds i32*, i32** %395, i64 %idxprom615
  %396 = load i32*, i32** %arrayidx618, align 8
  %arrayidx619 = getelementptr inbounds i32, i32* %396, i64 %idxprom614
  %397 = load i32, i32* %arrayidx619, align 4
  %398 = load i32, i32* %comp, align 4
  %idxprom620 = sext i32 %398 to i64
  %arrayidx621 = getelementptr inbounds [3 x i32], [3 x i32]* %default_weight, i32 0, i64 %idxprom620
  %399 = load i32, i32* %arrayidx621, align 4
  %cmp622 = icmp ne i32 %397, %399
  br i1 %cmp622, label %if.then.624, label %if.end.625

if.then.624:                                      ; preds = %for.body.613
  store i32 1, i32* %perform_wp, align 4
  br label %for.end.628

if.end.625:                                       ; preds = %for.body.613
  br label %for.inc.626

for.inc.626:                                      ; preds = %if.end.625
  %400 = load i32, i32* %comp, align 4
  %inc627 = add nsw i32 %400, 1
  store i32 %inc627, i32* %comp, align 4
  br label %for.cond.610

for.end.628:                                      ; preds = %if.then.624, %for.cond.610
  %401 = load i32, i32* %perform_wp, align 4
  %cmp629 = icmp eq i32 %401, 1
  br i1 %cmp629, label %if.then.631, label %if.end.632

if.then.631:                                      ; preds = %for.end.628
  br label %for.end.635

if.end.632:                                       ; preds = %for.end.628
  br label %for.inc.633

for.inc.633:                                      ; preds = %if.end.632
  %402 = load i32, i32* %index, align 4
  %inc634 = add nsw i32 %402, 1
  store i32 %inc634, i32* %index, align 4
  br label %for.cond.604

for.end.635:                                      ; preds = %if.then.631, %for.cond.604
  %403 = load i32, i32* %perform_wp, align 4
  %cmp636 = icmp eq i32 %403, 1
  br i1 %cmp636, label %if.then.638, label %if.end.639

if.then.638:                                      ; preds = %for.end.635
  br label %for.end.642

if.end.639:                                       ; preds = %for.end.635
  br label %for.inc.640

for.inc.640:                                      ; preds = %if.end.639
  %404 = load i32, i32* %clist, align 4
  %inc641 = add nsw i32 %404, 1
  store i32 %inc641, i32* %clist, align 4
  br label %for.cond.599

for.end.642:                                      ; preds = %if.then.638, %for.cond.599
  br label %if.end.643

if.end.643:                                       ; preds = %for.end.642, %if.end.577
  %405 = load i32, i32* %perform_wp, align 4
  ret i32 %405
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

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
