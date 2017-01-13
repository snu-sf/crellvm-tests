; ModuleID = './MultiSource.Applications.JM/68.lencod.mode_decision.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }
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
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.RD_8x8DATA = type { i32, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], [3 x [16 x [16 x i32]]], [4 x i16], [4 x i8], [4 x i8], [4 x i8], [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i32]] }
%struct.CSobj = type { i32, %struct.EncodingEnvironment*, %struct.Bitstream*, i32, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, [8 x i32], [2 x [4 x [4 x [2 x i32]]]], i64 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.rc_generic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32*, i64, i32, i32, i32, [5 x i32], i32, [5 x i32], i32, i32 }
%struct.RD_PARAMS = type { double, [3 x double], [3 x i32], [15 x i16], [2 x i16], i16, [2 x i16], [2 x i32] }

@b8_mode_table = constant [6 x i32] [i32 0, i32 4, i32 5, i32 6, i32 7, i32 0], align 16
@mb_mode_table = constant [9 x i32] [i32 0, i32 1, i32 2, i32 3, i32 8, i32 10, i32 9, i32 13, i32 14], align 16
@diffy = common global [16 x [16 x i32]] zeroinitializer, align 16
@imgY_org = common global i16** null, align 8
@getNeighbour = common global void (i32, i32, i32, i32, %struct.pix_pos*)* null, align 8
@img = external global %struct.ImageParameters*, align 8
@enc_picture = external global %struct.storable_picture*, align 8
@imgUV_org = common global i16*** null, align 8
@input = external global %struct.InputParameters*, align 8
@si_frame_indicator = common global i32 0, align 4
@sp2_frame_indicator = common global i32 0, align 4
@listXsize = external global [6 x i32], align 16
@listX = external global [6 x %struct.storable_picture**], align 16
@refbits = external global i32*, align 8
@motion_cost = external global i32****, align 8
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@wbp_weight = common global i32**** null, align 8
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@tr8x8 = external global %struct.RD_8x8DATA, align 4
@tr4x4 = external global %struct.RD_8x8DATA, align 4
@pred = external global [16 x [16 x i16]], align 16
@submacroblock_mode_decision.bmcost = private unnamed_addr constant [5 x i32] [i32 2147483647, i32 0, i32 0, i32 0, i32 0], align 16
@submacroblock_mode_decision.fadjust = internal global [16 x [16 x i32]] zeroinitializer, align 16
@submacroblock_mode_decision.fadjustCr = internal global [2 x [16 x [16 x i32]]] zeroinitializer, align 16
@submacroblock_mode_decision.best_ref = private unnamed_addr constant [2 x i8] c"\00\FF", align 1
@cs_cm = external global %struct.CSobj*, align 8
@direct_ref_idx = common global i8*** null, align 8
@direct_pdir = common global i8** null, align 8
@lambda_mf_factor = external global double, align 8
@cbp_blk8x8 = external global i32, align 4
@lrec = common global i32** null, align 8
@cs_b8 = external global %struct.CSobj*, align 8
@cbp8x8 = external global i32, align 4
@cnt_nonz_8x8 = external global i32, align 4
@mb16x16_cost_frame = common global double* null, align 8
@mb16x16_cost = external global double, align 8
@color_formats = common global i32 0, align 4
@top_pic = common global %struct.Picture* null, align 8
@bottom_pic = common global %struct.Picture* null, align 8
@frame_pic = common global %struct.Picture* null, align 8
@frame_pic_1 = common global %struct.Picture* null, align 8
@frame_pic_2 = common global %struct.Picture* null, align 8
@frame_pic_3 = common global %struct.Picture* null, align 8
@frame_pic_si = common global %struct.Picture* null, align 8
@Bit_Buffer = common global i64* null, align 8
@imgY_sub_tmp = common global i32** null, align 8
@PicPos = common global i32** null, align 8
@log2_max_frame_num_minus4 = common global i32 0, align 4
@log2_max_pic_order_cnt_lsb_minus4 = common global i32 0, align 4
@me_tot_time = common global i64 0, align 8
@me_time = common global i64 0, align 8
@dsr_new_search_range = common global i32 0, align 4
@mb_adaptive = common global i32 0, align 4
@MBPairIsField = common global i32 0, align 4
@wp_weight = common global i32*** null, align 8
@wp_offset = common global i32*** null, align 8
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
@Bytes_After_Header = common global i32 0, align 4
@encode_one_macroblock = common global void ()* null, align 8
@lrec_uv = common global i32*** null, align 8
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
@get_mb_block_pos = common global void (i32, i32*, i32*)* null, align 8
@qp_mbaff = common global [2 x [2 x i32]] zeroinitializer, align 16
@delta_qp_mbaff = common global [2 x [2 x i32]] zeroinitializer, align 16
@generic_RC = common global %struct.rc_generic* null, align 8
@generic_RC_init = common global %struct.rc_generic* null, align 8
@generic_RC_best = common global %struct.rc_generic* null, align 8
@McostState = common global i8** null, align 8
@SearchState = common global i8** null, align 8
@fastme_ref_cost = common global i32**** null, align 8
@fastme_l0_cost = common global i32*** null, align 8
@fastme_l1_cost = common global i32*** null, align 8
@fastme_l0_cost_bipred = common global i32*** null, align 8
@fastme_l1_cost_bipred = common global i32*** null, align 8
@bipred_flag = common global i32 0, align 4
@fastme_best_cost = common global i32** null, align 8
@pred_SAD = common global i32 0, align 4
@pred_MV_ref = common global [2 x i32] zeroinitializer, align 4
@pred_MV_uplayer = common global [2 x i32] zeroinitializer, align 4
@UMHEX_blocktype = common global i32 0, align 4
@predict_point = common global [5 x [2 x i32]] zeroinitializer, align 16
@SAD_a = common global i32 0, align 4
@SAD_b = common global i32 0, align 4
@SAD_c = common global i32 0, align 4
@SAD_d = common global i32 0, align 4
@Threshold_DSR_MB = common global [8 x i32] zeroinitializer, align 16
@Bsize = common global [8 x float] zeroinitializer, align 16
@AlphaFourth_1 = common global [8 x float] zeroinitializer, align 16
@AlphaFourth_2 = common global [8 x float] zeroinitializer, align 16
@flag_intra = common global i8* null, align 8
@flag_intra_SAD = common global i32 0, align 4
@SymmetricalCrossSearchThreshold1 = common global i16 0, align 2
@SymmetricalCrossSearchThreshold2 = common global i16 0, align 2
@ConvergeThreshold = common global i16 0, align 2
@SubPelThreshold1 = common global i16 0, align 2
@SubPelThreshold3 = common global i16 0, align 2
@smpUMHEX_SearchState = common global i8** null, align 8
@smpUMHEX_l0_cost = common global i32*** null, align 8
@smpUMHEX_l1_cost = common global i32*** null, align 8
@smpUMHEX_flag_intra = common global i8* null, align 8
@smpUMHEX_flag_intra_SAD = common global i32 0, align 4
@smpUMHEX_pred_SAD_uplayer = common global i32 0, align 4
@smpUMHEX_pred_MV_uplayer_X = common global i16 0, align 2
@smpUMHEX_pred_MV_uplayer_Y = common global i16 0, align 2
@temp_imgY = common global [16 x [16 x i16]] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @rc_store_diff(i32 %cpix_x, i32 %cpix_y, [16 x i16]* %prediction) #0 {
entry:
  %cpix_x.addr = alloca i32, align 4
  %cpix_y.addr = alloca i32, align 4
  %prediction.addr = alloca [16 x i16]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %iDst = alloca i32*, align 8
  %Src1 = alloca i16*, align 8
  %Src2 = alloca i16*, align 8
  store i32 %cpix_x, i32* %cpix_x.addr, align 4
  store i32 %cpix_y, i32* %cpix_y.addr, align 4
  store [16 x i16]* %prediction, [16 x i16]** %prediction.addr, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.17, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %j, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @diffy, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx, i32 0, i32 0
  store i32* %arraydecay, i32** %iDst, align 8
  %2 = load i32, i32* %cpix_y.addr, align 4
  %3 = load i32, i32* %j, align 4
  %add = add nsw i32 %2, %3
  %idxprom1 = sext i32 %add to i64
  %4 = load i16**, i16*** @imgY_org, align 8
  %arrayidx2 = getelementptr inbounds i16*, i16** %4, i64 %idxprom1
  %5 = load i16*, i16** %arrayidx2, align 8
  store i16* %5, i16** %Src1, align 8
  %6 = load i32, i32* %j, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load [16 x i16]*, [16 x i16]** %prediction.addr, align 8
  %arrayidx4 = getelementptr inbounds [16 x i16], [16 x i16]* %7, i64 %idxprom3
  %arraydecay5 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx4, i32 0, i32 0
  store i16* %arraydecay5, i16** %Src2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %8, 16
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %9 = load i32, i32* %cpix_x.addr, align 4
  %10 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %9, %10
  %idxprom10 = sext i32 %add9 to i64
  %11 = load i16*, i16** %Src1, align 8
  %arrayidx11 = getelementptr inbounds i16, i16* %11, i64 %idxprom10
  %12 = load i16, i16* %arrayidx11, align 2
  %conv = zext i16 %12 to i32
  %13 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %13 to i64
  %14 = load i16*, i16** %Src2, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %14, i64 %idxprom12
  %15 = load i16, i16* %arrayidx13, align 2
  %conv14 = zext i16 %15 to i32
  %sub = sub nsw i32 %conv, %conv14
  %16 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %16 to i64
  %17 = load i32*, i32** %iDst, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %17, i64 %idxprom15
  store i32 %sub, i32* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end
  %19 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %19, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @fast_mode_intra_decision(i16* %intra_skip, double %min_rate) #0 {
entry:
  %intra_skip.addr = alloca i16*, align 8
  %min_rate.addr = alloca double, align 8
  %i = alloca i32, align 4
  %mb_available_up = alloca i32, align 4
  %mb_available_left = alloca i32, align 4
  %mb_available_up_left = alloca i32, align 4
  %SBE = alloca i64, align 8
  %AR = alloca double, align 8
  %ABE = alloca double, align 8
  %up = alloca %struct.pix_pos, align 4
  %left = alloca [2 x %struct.pix_pos], align 16
  store i16* %intra_skip, i16** %intra_skip.addr, align 8
  store double %min_rate, double* %min_rate.addr, align 8
  store double 0.000000e+00, double* %AR, align 8
  store double 0.000000e+00, double* %ABE, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 3
  %3 = load i32, i32* %current_mb_nr, align 4
  %4 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %4, 1
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.pix_pos], [2 x %struct.pix_pos]* %left, i32 0, i64 %idxprom
  call void %1(i32 %3, i32 -1, i32 %sub, i32 0, %struct.pix_pos* %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 3
  %9 = load i32, i32* %current_mb_nr1, align 4
  call void %7(i32 %9, i32 0, i32 -1, i32 0, %struct.pix_pos* %up)
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 0
  %10 = load i32, i32* %available, align 4
  store i32 %10, i32* %mb_available_up, align 4
  %arrayidx2 = getelementptr inbounds [2 x %struct.pix_pos], [2 x %struct.pix_pos]* %left, i32 0, i64 0
  %available3 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx2, i32 0, i32 0
  %11 = load i32, i32* %available3, align 4
  store i32 %11, i32* %mb_available_up_left, align 4
  %arrayidx4 = getelementptr inbounds [2 x %struct.pix_pos], [2 x %struct.pix_pos]* %left, i32 0, i64 1
  %available5 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx4, i32 0, i32 0
  %12 = load i32, i32* %available5, align 4
  store i32 %12, i32* %mb_available_left, align 4
  %13 = load double, double* %min_rate.addr, align 8
  %mul = fmul double 0x3F65555555555555, %13
  store double %mul, double* %AR, align 8
  store i64 0, i64* %SBE, align 8
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 36
  %15 = load i32, i32* %mb_y, align 4
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameHeightInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 118
  %17 = load i32, i32* %FrameHeightInMbs, align 4
  %sub6 = sub nsw i32 %17, 1
  %cmp7 = icmp ne i32 %15, %sub6
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 35
  %19 = load i32, i32* %mb_x, align 4
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 116
  %21 = load i32, i32* %PicWidthInMbs, align 4
  %sub8 = sub nsw i32 %21, 1
  %cmp9 = icmp ne i32 %19, %sub8
  br i1 %cmp9, label %land.lhs.true.10, label %if.else

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %22 = load i32, i32* %mb_available_left, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %land.lhs.true.11, label %if.else

land.lhs.true.11:                                 ; preds = %land.lhs.true.10
  %23 = load i32, i32* %mb_available_up, align 4
  %tobool12 = icmp ne i32 %23, 0
  br i1 %tobool12, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.11
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.52, %if.then
  %24 = load i32, i32* %i, align 4
  %cmp14 = icmp slt i32 %24, 16
  br i1 %cmp14, label %for.body.15, label %for.end.54

for.body.15:                                      ; preds = %for.cond.13
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 43
  %26 = load i32, i32* %opix_x, align 4
  %27 = load i32, i32* %i, align 4
  %add = add nsw i32 %26, %27
  %idxprom16 = sext i32 %add to i64
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 44
  %29 = load i32, i32* %opix_y, align 4
  %idxprom17 = sext i32 %29 to i64
  %30 = load i16**, i16*** @imgY_org, align 8
  %arrayidx18 = getelementptr inbounds i16*, i16** %30, i64 %idxprom17
  %31 = load i16*, i16** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds i16, i16* %31, i64 %idxprom16
  %32 = load i16, i16* %arrayidx19, align 2
  %conv = zext i16 %32 to i32
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 39
  %34 = load i32, i32* %pix_x, align 4
  %35 = load i32, i32* %i, align 4
  %add20 = add nsw i32 %34, %35
  %idxprom21 = sext i32 %add20 to i64
  %36 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %36, i32 0, i32 40
  %37 = load i32, i32* %pix_y, align 4
  %sub22 = sub nsw i32 %37, 1
  %idxprom23 = sext i32 %sub22 to i64
  %38 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %38, i32 0, i32 29
  %39 = load i16**, i16*** %imgY, align 8
  %arrayidx24 = getelementptr inbounds i16*, i16** %39, i64 %idxprom23
  %40 = load i16*, i16** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds i16, i16* %40, i64 %idxprom21
  %41 = load i16, i16* %arrayidx25, align 2
  %conv26 = zext i16 %41 to i32
  %sub27 = sub nsw i32 %conv, %conv26
  %call = call i32 @iabs(i32 %sub27)
  %conv28 = sext i32 %call to i64
  %42 = load i64, i64* %SBE, align 8
  %add29 = add nsw i64 %42, %conv28
  store i64 %add29, i64* %SBE, align 8
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x30 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 43
  %44 = load i32, i32* %opix_x30, align 4
  %idxprom31 = sext i32 %44 to i64
  %45 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y32 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %45, i32 0, i32 44
  %46 = load i32, i32* %opix_y32, align 4
  %47 = load i32, i32* %i, align 4
  %add33 = add nsw i32 %46, %47
  %idxprom34 = sext i32 %add33 to i64
  %48 = load i16**, i16*** @imgY_org, align 8
  %arrayidx35 = getelementptr inbounds i16*, i16** %48, i64 %idxprom34
  %49 = load i16*, i16** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i16, i16* %49, i64 %idxprom31
  %50 = load i16, i16* %arrayidx36, align 2
  %conv37 = zext i16 %50 to i32
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x38 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %51, i32 0, i32 39
  %52 = load i32, i32* %pix_x38, align 4
  %sub39 = sub nsw i32 %52, 1
  %idxprom40 = sext i32 %sub39 to i64
  %53 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y41 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %53, i32 0, i32 40
  %54 = load i32, i32* %pix_y41, align 4
  %55 = load i32, i32* %i, align 4
  %add42 = add nsw i32 %54, %55
  %idxprom43 = sext i32 %add42 to i64
  %56 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY44 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %56, i32 0, i32 29
  %57 = load i16**, i16*** %imgY44, align 8
  %arrayidx45 = getelementptr inbounds i16*, i16** %57, i64 %idxprom43
  %58 = load i16*, i16** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds i16, i16* %58, i64 %idxprom40
  %59 = load i16, i16* %arrayidx46, align 2
  %conv47 = zext i16 %59 to i32
  %sub48 = sub nsw i32 %conv37, %conv47
  %call49 = call i32 @iabs(i32 %sub48)
  %conv50 = sext i32 %call49 to i64
  %60 = load i64, i64* %SBE, align 8
  %add51 = add nsw i64 %60, %conv50
  store i64 %add51, i64* %SBE, align 8
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.15
  %61 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %61, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.13

for.end.54:                                       ; preds = %for.cond.13
  store i32 0, i32* %i, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.150, %for.end.54
  %62 = load i32, i32* %i, align 4
  %cmp56 = icmp slt i32 %62, 8
  br i1 %cmp56, label %for.body.58, label %for.end.152

for.body.58:                                      ; preds = %for.cond.55
  %63 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_c_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %63, i32 0, i32 45
  %64 = load i32, i32* %opix_c_x, align 4
  %65 = load i32, i32* %i, align 4
  %add59 = add nsw i32 %64, %65
  %idxprom60 = sext i32 %add59 to i64
  %66 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_c_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %66, i32 0, i32 46
  %67 = load i32, i32* %opix_c_y, align 4
  %idxprom61 = sext i32 %67 to i64
  %68 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx62 = getelementptr inbounds i16**, i16*** %68, i64 0
  %69 = load i16**, i16*** %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds i16*, i16** %69, i64 %idxprom61
  %70 = load i16*, i16** %arrayidx63, align 8
  %arrayidx64 = getelementptr inbounds i16, i16* %70, i64 %idxprom60
  %71 = load i16, i16* %arrayidx64, align 2
  %conv65 = zext i16 %71 to i32
  %72 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %72, i32 0, i32 41
  %73 = load i32, i32* %pix_c_x, align 4
  %74 = load i32, i32* %i, align 4
  %add66 = add nsw i32 %73, %74
  %idxprom67 = sext i32 %add66 to i64
  %75 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %75, i32 0, i32 42
  %76 = load i32, i32* %pix_c_y, align 4
  %sub68 = sub nsw i32 %76, 1
  %idxprom69 = sext i32 %sub68 to i64
  %77 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %77, i32 0, i32 33
  %78 = load i16***, i16**** %imgUV, align 8
  %arrayidx70 = getelementptr inbounds i16**, i16*** %78, i64 0
  %79 = load i16**, i16*** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds i16*, i16** %79, i64 %idxprom69
  %80 = load i16*, i16** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i16, i16* %80, i64 %idxprom67
  %81 = load i16, i16* %arrayidx72, align 2
  %conv73 = zext i16 %81 to i32
  %sub74 = sub nsw i32 %conv65, %conv73
  %call75 = call i32 @iabs(i32 %sub74)
  %conv76 = sext i32 %call75 to i64
  %82 = load i64, i64* %SBE, align 8
  %add77 = add nsw i64 %82, %conv76
  store i64 %add77, i64* %SBE, align 8
  %83 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_c_x78 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %83, i32 0, i32 45
  %84 = load i32, i32* %opix_c_x78, align 4
  %idxprom79 = sext i32 %84 to i64
  %85 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_c_y80 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %85, i32 0, i32 46
  %86 = load i32, i32* %opix_c_y80, align 4
  %87 = load i32, i32* %i, align 4
  %add81 = add nsw i32 %86, %87
  %idxprom82 = sext i32 %add81 to i64
  %88 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx83 = getelementptr inbounds i16**, i16*** %88, i64 0
  %89 = load i16**, i16*** %arrayidx83, align 8
  %arrayidx84 = getelementptr inbounds i16*, i16** %89, i64 %idxprom82
  %90 = load i16*, i16** %arrayidx84, align 8
  %arrayidx85 = getelementptr inbounds i16, i16* %90, i64 %idxprom79
  %91 = load i16, i16* %arrayidx85, align 2
  %conv86 = zext i16 %91 to i32
  %92 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_x87 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %92, i32 0, i32 41
  %93 = load i32, i32* %pix_c_x87, align 4
  %sub88 = sub nsw i32 %93, 1
  %idxprom89 = sext i32 %sub88 to i64
  %94 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_y90 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %94, i32 0, i32 42
  %95 = load i32, i32* %pix_c_y90, align 4
  %96 = load i32, i32* %i, align 4
  %add91 = add nsw i32 %95, %96
  %idxprom92 = sext i32 %add91 to i64
  %97 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV93 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %97, i32 0, i32 33
  %98 = load i16***, i16**** %imgUV93, align 8
  %arrayidx94 = getelementptr inbounds i16**, i16*** %98, i64 0
  %99 = load i16**, i16*** %arrayidx94, align 8
  %arrayidx95 = getelementptr inbounds i16*, i16** %99, i64 %idxprom92
  %100 = load i16*, i16** %arrayidx95, align 8
  %arrayidx96 = getelementptr inbounds i16, i16* %100, i64 %idxprom89
  %101 = load i16, i16* %arrayidx96, align 2
  %conv97 = zext i16 %101 to i32
  %sub98 = sub nsw i32 %conv86, %conv97
  %call99 = call i32 @iabs(i32 %sub98)
  %conv100 = sext i32 %call99 to i64
  %102 = load i64, i64* %SBE, align 8
  %add101 = add nsw i64 %102, %conv100
  store i64 %add101, i64* %SBE, align 8
  %103 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_c_x102 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %103, i32 0, i32 45
  %104 = load i32, i32* %opix_c_x102, align 4
  %105 = load i32, i32* %i, align 4
  %add103 = add nsw i32 %104, %105
  %idxprom104 = sext i32 %add103 to i64
  %106 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_c_y105 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %106, i32 0, i32 46
  %107 = load i32, i32* %opix_c_y105, align 4
  %idxprom106 = sext i32 %107 to i64
  %108 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx107 = getelementptr inbounds i16**, i16*** %108, i64 1
  %109 = load i16**, i16*** %arrayidx107, align 8
  %arrayidx108 = getelementptr inbounds i16*, i16** %109, i64 %idxprom106
  %110 = load i16*, i16** %arrayidx108, align 8
  %arrayidx109 = getelementptr inbounds i16, i16* %110, i64 %idxprom104
  %111 = load i16, i16* %arrayidx109, align 2
  %conv110 = zext i16 %111 to i32
  %112 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_x111 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %112, i32 0, i32 41
  %113 = load i32, i32* %pix_c_x111, align 4
  %114 = load i32, i32* %i, align 4
  %add112 = add nsw i32 %113, %114
  %idxprom113 = sext i32 %add112 to i64
  %115 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_y114 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %115, i32 0, i32 42
  %116 = load i32, i32* %pix_c_y114, align 4
  %sub115 = sub nsw i32 %116, 1
  %idxprom116 = sext i32 %sub115 to i64
  %117 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV117 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %117, i32 0, i32 33
  %118 = load i16***, i16**** %imgUV117, align 8
  %arrayidx118 = getelementptr inbounds i16**, i16*** %118, i64 1
  %119 = load i16**, i16*** %arrayidx118, align 8
  %arrayidx119 = getelementptr inbounds i16*, i16** %119, i64 %idxprom116
  %120 = load i16*, i16** %arrayidx119, align 8
  %arrayidx120 = getelementptr inbounds i16, i16* %120, i64 %idxprom113
  %121 = load i16, i16* %arrayidx120, align 2
  %conv121 = zext i16 %121 to i32
  %sub122 = sub nsw i32 %conv110, %conv121
  %call123 = call i32 @iabs(i32 %sub122)
  %conv124 = sext i32 %call123 to i64
  %122 = load i64, i64* %SBE, align 8
  %add125 = add nsw i64 %122, %conv124
  store i64 %add125, i64* %SBE, align 8
  %123 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_c_x126 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %123, i32 0, i32 45
  %124 = load i32, i32* %opix_c_x126, align 4
  %idxprom127 = sext i32 %124 to i64
  %125 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_c_y128 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %125, i32 0, i32 46
  %126 = load i32, i32* %opix_c_y128, align 4
  %127 = load i32, i32* %i, align 4
  %add129 = add nsw i32 %126, %127
  %idxprom130 = sext i32 %add129 to i64
  %128 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx131 = getelementptr inbounds i16**, i16*** %128, i64 1
  %129 = load i16**, i16*** %arrayidx131, align 8
  %arrayidx132 = getelementptr inbounds i16*, i16** %129, i64 %idxprom130
  %130 = load i16*, i16** %arrayidx132, align 8
  %arrayidx133 = getelementptr inbounds i16, i16* %130, i64 %idxprom127
  %131 = load i16, i16* %arrayidx133, align 2
  %conv134 = zext i16 %131 to i32
  %132 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_x135 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %132, i32 0, i32 41
  %133 = load i32, i32* %pix_c_x135, align 4
  %sub136 = sub nsw i32 %133, 1
  %idxprom137 = sext i32 %sub136 to i64
  %134 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_c_y138 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %134, i32 0, i32 42
  %135 = load i32, i32* %pix_c_y138, align 4
  %136 = load i32, i32* %i, align 4
  %add139 = add nsw i32 %135, %136
  %idxprom140 = sext i32 %add139 to i64
  %137 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV141 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %137, i32 0, i32 33
  %138 = load i16***, i16**** %imgUV141, align 8
  %arrayidx142 = getelementptr inbounds i16**, i16*** %138, i64 1
  %139 = load i16**, i16*** %arrayidx142, align 8
  %arrayidx143 = getelementptr inbounds i16*, i16** %139, i64 %idxprom140
  %140 = load i16*, i16** %arrayidx143, align 8
  %arrayidx144 = getelementptr inbounds i16, i16* %140, i64 %idxprom137
  %141 = load i16, i16* %arrayidx144, align 2
  %conv145 = zext i16 %141 to i32
  %sub146 = sub nsw i32 %conv134, %conv145
  %call147 = call i32 @iabs(i32 %sub146)
  %conv148 = sext i32 %call147 to i64
  %142 = load i64, i64* %SBE, align 8
  %add149 = add nsw i64 %142, %conv148
  store i64 %add149, i64* %SBE, align 8
  br label %for.inc.150

for.inc.150:                                      ; preds = %for.body.58
  %143 = load i32, i32* %i, align 4
  %inc151 = add nsw i32 %143, 1
  store i32 %inc151, i32* %i, align 4
  br label %for.cond.55

for.end.152:                                      ; preds = %for.cond.55
  %144 = load i64, i64* %SBE, align 8
  %conv153 = sitofp i64 %144 to double
  %mul154 = fmul double 1.562500e-02, %conv153
  store double %mul154, double* %ABE, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.11, %land.lhs.true.10, %land.lhs.true, %for.end
  store double 0.000000e+00, double* %ABE, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end.152
  %145 = load double, double* %AR, align 8
  %146 = load double, double* %ABE, align 8
  %cmp155 = fcmp ole double %145, %146
  br i1 %cmp155, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %if.end
  %147 = load i16*, i16** %intra_skip.addr, align 8
  store i16 1, i16* %147, align 2
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.157, %if.end
  ret void
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
define void @init_enc_mb_params(%struct.macroblock* %currMB, %struct.RD_PARAMS* %enc_mb, i32 %intra, i32 %bslice) #0 {
entry:
  %currMB.addr = alloca %struct.macroblock*, align 8
  %enc_mb.addr = alloca %struct.RD_PARAMS*, align 8
  %intra.addr = alloca i32, align 4
  %bslice.addr = alloca i32, align 4
  %mode = alloca i32, align 4
  %l = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.macroblock* %currMB, %struct.macroblock** %currMB.addr, align 8
  store %struct.RD_PARAMS* %enc_mb, %struct.RD_PARAMS** %enc_mb.addr, align 8
  store i32 %intra, i32* %intra.addr, align 4
  store i32 %bslice, i32* %bslice.addr, align 4
  %0 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %list_offset = getelementptr inbounds %struct.macroblock, %struct.macroblock* %0, i32 0, i32 21
  %1 = load i32, i32* %list_offset, align 4
  %add = add nsw i32 0, %1
  %conv = trunc i32 %add to i16
  %2 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %list_offset1 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %2, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i16], [2 x i16]* %list_offset1, i32 0, i64 0
  store i16 %conv, i16* %arrayidx, align 2
  %3 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %list_offset2 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i32 0, i32 21
  %4 = load i32, i32* %list_offset2, align 4
  %add3 = add nsw i32 1, %4
  %conv4 = trunc i32 %add3 to i16
  %5 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %list_offset5 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %5, i32 0, i32 4
  %arrayidx6 = getelementptr inbounds [2 x i16], [2 x i16]* %list_offset5, i32 0, i64 1
  store i16 %conv4, i16* %arrayidx6, align 2
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 100
  %7 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %8 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %8, i32 0, i32 19
  %9 = load i32, i32* %mb_field, align 4
  %tobool7 = icmp ne i32 %9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %10 = phi i1 [ false, %entry ], [ %tobool7, %land.rhs ]
  %land.ext = zext i1 %10 to i32
  %conv8 = trunc i32 %land.ext to i16
  %11 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %curr_mb_field = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %11, i32 0, i32 5
  store i16 %conv8, i16* %curr_mb_field, align 2
  %12 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %best_ref = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %12, i32 0, i32 6
  %arrayidx9 = getelementptr inbounds [2 x i16], [2 x i16]* %best_ref, i32 0, i64 0
  store i16 0, i16* %arrayidx9, align 2
  %13 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %best_ref10 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %13, i32 0, i32 6
  %arrayidx11 = getelementptr inbounds [2 x i16], [2 x i16]* %best_ref10, i32 0, i64 1
  store i16 -1, i16* %arrayidx11, align 2
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 153
  %15 = load i32, i32* %Transform8x8Mode, align 4
  %conv12 = trunc i32 %15 to i16
  %16 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %16, i32 0, i32 3
  %arrayidx13 = getelementptr inbounds [15 x i16], [15 x i16]* %valid, i32 0, i64 13
  store i16 %conv12, i16* %arrayidx13, align 2
  %17 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode14 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %17, i32 0, i32 153
  %18 = load i32, i32* %Transform8x8Mode14, align 4
  %cmp = icmp eq i32 %18, 2
  %cond = select i1 %cmp, i32 0, i32 1
  %conv16 = trunc i32 %cond to i16
  %19 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid17 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %19, i32 0, i32 3
  %arrayidx18 = getelementptr inbounds [15 x i16], [15 x i16]* %valid17, i32 0, i64 9
  store i16 %conv16, i16* %arrayidx18, align 2
  %20 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid19 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %20, i32 0, i32 3
  %arrayidx20 = getelementptr inbounds [15 x i16], [15 x i16]* %valid19, i32 0, i64 10
  store i16 1, i16* %arrayidx20, align 2
  %21 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EnableIPCM = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %21, i32 0, i32 91
  %22 = load i32, i32* %EnableIPCM, align 4
  %conv21 = trunc i32 %22 to i16
  %23 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid22 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %23, i32 0, i32 3
  %arrayidx23 = getelementptr inbounds [15 x i16], [15 x i16]* %valid22, i32 0, i64 14
  store i16 %conv21, i16* %arrayidx23, align 2
  %24 = load i32, i32* %intra.addr, align 4
  %tobool24 = icmp ne i32 %24, 0
  %lnot = xor i1 %tobool24, true
  %lnot.ext = zext i1 %lnot to i32
  %conv25 = trunc i32 %lnot.ext to i16
  %25 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid26 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %25, i32 0, i32 3
  %arrayidx27 = getelementptr inbounds [15 x i16], [15 x i16]* %valid26, i32 0, i64 0
  store i16 %conv25, i16* %arrayidx27, align 2
  %26 = load i32, i32* %intra.addr, align 4
  %tobool28 = icmp ne i32 %26, 0
  br i1 %tobool28, label %land.end.31, label %land.rhs.29

land.rhs.29:                                      ; preds = %land.end
  %27 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %InterSearch16x16 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %27, i32 0, i32 77
  %28 = load i32, i32* %InterSearch16x16, align 4
  %tobool30 = icmp ne i32 %28, 0
  br label %land.end.31

land.end.31:                                      ; preds = %land.rhs.29, %land.end
  %29 = phi i1 [ false, %land.end ], [ %tobool30, %land.rhs.29 ]
  %land.ext32 = zext i1 %29 to i32
  %conv33 = trunc i32 %land.ext32 to i16
  %30 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid34 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %30, i32 0, i32 3
  %arrayidx35 = getelementptr inbounds [15 x i16], [15 x i16]* %valid34, i32 0, i64 1
  store i16 %conv33, i16* %arrayidx35, align 2
  %31 = load i32, i32* %intra.addr, align 4
  %tobool36 = icmp ne i32 %31, 0
  br i1 %tobool36, label %land.end.39, label %land.rhs.37

land.rhs.37:                                      ; preds = %land.end.31
  %32 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %InterSearch16x8 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %32, i32 0, i32 78
  %33 = load i32, i32* %InterSearch16x8, align 4
  %tobool38 = icmp ne i32 %33, 0
  br label %land.end.39

land.end.39:                                      ; preds = %land.rhs.37, %land.end.31
  %34 = phi i1 [ false, %land.end.31 ], [ %tobool38, %land.rhs.37 ]
  %land.ext40 = zext i1 %34 to i32
  %conv41 = trunc i32 %land.ext40 to i16
  %35 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid42 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %35, i32 0, i32 3
  %arrayidx43 = getelementptr inbounds [15 x i16], [15 x i16]* %valid42, i32 0, i64 2
  store i16 %conv41, i16* %arrayidx43, align 2
  %36 = load i32, i32* %intra.addr, align 4
  %tobool44 = icmp ne i32 %36, 0
  br i1 %tobool44, label %land.end.47, label %land.rhs.45

land.rhs.45:                                      ; preds = %land.end.39
  %37 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %InterSearch8x16 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %37, i32 0, i32 79
  %38 = load i32, i32* %InterSearch8x16, align 4
  %tobool46 = icmp ne i32 %38, 0
  br label %land.end.47

land.end.47:                                      ; preds = %land.rhs.45, %land.end.39
  %39 = phi i1 [ false, %land.end.39 ], [ %tobool46, %land.rhs.45 ]
  %land.ext48 = zext i1 %39 to i32
  %conv49 = trunc i32 %land.ext48 to i16
  %40 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid50 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %40, i32 0, i32 3
  %arrayidx51 = getelementptr inbounds [15 x i16], [15 x i16]* %valid50, i32 0, i64 3
  store i16 %conv49, i16* %arrayidx51, align 2
  %41 = load i32, i32* %intra.addr, align 4
  %tobool52 = icmp ne i32 %41, 0
  br i1 %tobool52, label %land.end.55, label %land.rhs.53

land.rhs.53:                                      ; preds = %land.end.47
  %42 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %InterSearch8x8 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %42, i32 0, i32 80
  %43 = load i32, i32* %InterSearch8x8, align 4
  %tobool54 = icmp ne i32 %43, 0
  br label %land.end.55

land.end.55:                                      ; preds = %land.rhs.53, %land.end.47
  %44 = phi i1 [ false, %land.end.47 ], [ %tobool54, %land.rhs.53 ]
  %land.ext56 = zext i1 %44 to i32
  %conv57 = trunc i32 %land.ext56 to i16
  %45 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid58 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %45, i32 0, i32 3
  %arrayidx59 = getelementptr inbounds [15 x i16], [15 x i16]* %valid58, i32 0, i64 4
  store i16 %conv57, i16* %arrayidx59, align 2
  %46 = load i32, i32* %intra.addr, align 4
  %tobool60 = icmp ne i32 %46, 0
  br i1 %tobool60, label %land.end.68, label %land.lhs.true

land.lhs.true:                                    ; preds = %land.end.55
  %47 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %InterSearch8x4 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %47, i32 0, i32 81
  %48 = load i32, i32* %InterSearch8x4, align 4
  %tobool61 = icmp ne i32 %48, 0
  br i1 %tobool61, label %land.rhs.62, label %land.end.68

land.rhs.62:                                      ; preds = %land.lhs.true
  %49 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode63 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %49, i32 0, i32 153
  %50 = load i32, i32* %Transform8x8Mode63, align 4
  %cmp64 = icmp eq i32 %50, 2
  %lnot66 = xor i1 %cmp64, true
  br label %land.end.68

land.end.68:                                      ; preds = %land.rhs.62, %land.lhs.true, %land.end.55
  %51 = phi i1 [ false, %land.lhs.true ], [ false, %land.end.55 ], [ %lnot66, %land.rhs.62 ]
  %land.ext69 = zext i1 %51 to i32
  %conv70 = trunc i32 %land.ext69 to i16
  %52 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid71 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %52, i32 0, i32 3
  %arrayidx72 = getelementptr inbounds [15 x i16], [15 x i16]* %valid71, i32 0, i64 5
  store i16 %conv70, i16* %arrayidx72, align 2
  %53 = load i32, i32* %intra.addr, align 4
  %tobool73 = icmp ne i32 %53, 0
  br i1 %tobool73, label %land.end.82, label %land.lhs.true.74

land.lhs.true.74:                                 ; preds = %land.end.68
  %54 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %InterSearch4x8 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %54, i32 0, i32 82
  %55 = load i32, i32* %InterSearch4x8, align 4
  %tobool75 = icmp ne i32 %55, 0
  br i1 %tobool75, label %land.rhs.76, label %land.end.82

land.rhs.76:                                      ; preds = %land.lhs.true.74
  %56 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode77 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %56, i32 0, i32 153
  %57 = load i32, i32* %Transform8x8Mode77, align 4
  %cmp78 = icmp eq i32 %57, 2
  %lnot80 = xor i1 %cmp78, true
  br label %land.end.82

land.end.82:                                      ; preds = %land.rhs.76, %land.lhs.true.74, %land.end.68
  %58 = phi i1 [ false, %land.lhs.true.74 ], [ false, %land.end.68 ], [ %lnot80, %land.rhs.76 ]
  %land.ext83 = zext i1 %58 to i32
  %conv84 = trunc i32 %land.ext83 to i16
  %59 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid85 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %59, i32 0, i32 3
  %arrayidx86 = getelementptr inbounds [15 x i16], [15 x i16]* %valid85, i32 0, i64 6
  store i16 %conv84, i16* %arrayidx86, align 2
  %60 = load i32, i32* %intra.addr, align 4
  %tobool87 = icmp ne i32 %60, 0
  br i1 %tobool87, label %land.end.96, label %land.lhs.true.88

land.lhs.true.88:                                 ; preds = %land.end.82
  %61 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %InterSearch4x4 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %61, i32 0, i32 83
  %62 = load i32, i32* %InterSearch4x4, align 4
  %tobool89 = icmp ne i32 %62, 0
  br i1 %tobool89, label %land.rhs.90, label %land.end.96

land.rhs.90:                                      ; preds = %land.lhs.true.88
  %63 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode91 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %63, i32 0, i32 153
  %64 = load i32, i32* %Transform8x8Mode91, align 4
  %cmp92 = icmp eq i32 %64, 2
  %lnot94 = xor i1 %cmp92, true
  br label %land.end.96

land.end.96:                                      ; preds = %land.rhs.90, %land.lhs.true.88, %land.end.82
  %65 = phi i1 [ false, %land.lhs.true.88 ], [ false, %land.end.82 ], [ %lnot94, %land.rhs.90 ]
  %land.ext97 = zext i1 %65 to i32
  %conv98 = trunc i32 %land.ext97 to i16
  %66 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid99 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %66, i32 0, i32 3
  %arrayidx100 = getelementptr inbounds [15 x i16], [15 x i16]* %valid99, i32 0, i64 7
  store i16 %conv98, i16* %arrayidx100, align 2
  %67 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid101 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %67, i32 0, i32 3
  %arrayidx102 = getelementptr inbounds [15 x i16], [15 x i16]* %valid101, i32 0, i64 4
  %68 = load i16, i16* %arrayidx102, align 2
  %conv103 = sext i16 %68 to i32
  %tobool104 = icmp ne i32 %conv103, 0
  br i1 %tobool104, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.end.96
  %69 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid105 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %69, i32 0, i32 3
  %arrayidx106 = getelementptr inbounds [15 x i16], [15 x i16]* %valid105, i32 0, i64 5
  %70 = load i16, i16* %arrayidx106, align 2
  %conv107 = sext i16 %70 to i32
  %tobool108 = icmp ne i32 %conv107, 0
  br i1 %tobool108, label %lor.end, label %lor.lhs.false.109

lor.lhs.false.109:                                ; preds = %lor.lhs.false
  %71 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid110 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %71, i32 0, i32 3
  %arrayidx111 = getelementptr inbounds [15 x i16], [15 x i16]* %valid110, i32 0, i64 6
  %72 = load i16, i16* %arrayidx111, align 2
  %conv112 = sext i16 %72 to i32
  %tobool113 = icmp ne i32 %conv112, 0
  br i1 %tobool113, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.109
  %73 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid114 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %73, i32 0, i32 3
  %arrayidx115 = getelementptr inbounds [15 x i16], [15 x i16]* %valid114, i32 0, i64 7
  %74 = load i16, i16* %arrayidx115, align 2
  %conv116 = sext i16 %74 to i32
  %tobool117 = icmp ne i32 %conv116, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.109, %lor.lhs.false, %land.end.96
  %75 = phi i1 [ true, %lor.lhs.false.109 ], [ true, %lor.lhs.false ], [ true, %land.end.96 ], [ %tobool117, %lor.rhs ]
  %lor.ext = zext i1 %75 to i32
  %conv118 = trunc i32 %lor.ext to i16
  %76 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid119 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %76, i32 0, i32 3
  %arrayidx120 = getelementptr inbounds [15 x i16], [15 x i16]* %valid119, i32 0, i64 8
  store i16 %conv118, i16* %arrayidx120, align 2
  %77 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %77, i32 0, i32 5
  %78 = load i32, i32* %type, align 4
  %cmp121 = icmp eq i32 %78, 4
  %conv122 = zext i1 %cmp121 to i32
  %conv123 = trunc i32 %conv122 to i16
  %79 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid124 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %79, i32 0, i32 3
  %arrayidx125 = getelementptr inbounds [15 x i16], [15 x i16]* %valid124, i32 0, i64 12
  store i16 %conv123, i16* %arrayidx125, align 2
  %80 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type126 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %80, i32 0, i32 5
  %81 = load i32, i32* %type126, align 4
  %cmp127 = icmp eq i32 %81, 3
  br i1 %cmp127, label %if.then, label %if.end.166

if.then:                                          ; preds = %lor.end
  %82 = load i32, i32* @si_frame_indicator, align 4
  %tobool129 = icmp ne i32 %82, 0
  br i1 %tobool129, label %if.then.130, label %if.end.165

if.then.130:                                      ; preds = %if.then
  %83 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid131 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %83, i32 0, i32 3
  %arrayidx132 = getelementptr inbounds [15 x i16], [15 x i16]* %valid131, i32 0, i64 13
  store i16 0, i16* %arrayidx132, align 2
  %84 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid133 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %84, i32 0, i32 3
  %arrayidx134 = getelementptr inbounds [15 x i16], [15 x i16]* %valid133, i32 0, i64 14
  store i16 0, i16* %arrayidx134, align 2
  %85 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid135 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %85, i32 0, i32 3
  %arrayidx136 = getelementptr inbounds [15 x i16], [15 x i16]* %valid135, i32 0, i64 0
  store i16 0, i16* %arrayidx136, align 2
  %86 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid137 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %86, i32 0, i32 3
  %arrayidx138 = getelementptr inbounds [15 x i16], [15 x i16]* %valid137, i32 0, i64 1
  store i16 0, i16* %arrayidx138, align 2
  %87 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid139 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %87, i32 0, i32 3
  %arrayidx140 = getelementptr inbounds [15 x i16], [15 x i16]* %valid139, i32 0, i64 2
  store i16 0, i16* %arrayidx140, align 2
  %88 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid141 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %88, i32 0, i32 3
  %arrayidx142 = getelementptr inbounds [15 x i16], [15 x i16]* %valid141, i32 0, i64 3
  store i16 0, i16* %arrayidx142, align 2
  %89 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid143 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %89, i32 0, i32 3
  %arrayidx144 = getelementptr inbounds [15 x i16], [15 x i16]* %valid143, i32 0, i64 4
  store i16 0, i16* %arrayidx144, align 2
  %90 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid145 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %90, i32 0, i32 3
  %arrayidx146 = getelementptr inbounds [15 x i16], [15 x i16]* %valid145, i32 0, i64 5
  store i16 0, i16* %arrayidx146, align 2
  %91 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid147 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %91, i32 0, i32 3
  %arrayidx148 = getelementptr inbounds [15 x i16], [15 x i16]* %valid147, i32 0, i64 6
  store i16 0, i16* %arrayidx148, align 2
  %92 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid149 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %92, i32 0, i32 3
  %arrayidx150 = getelementptr inbounds [15 x i16], [15 x i16]* %valid149, i32 0, i64 7
  store i16 0, i16* %arrayidx150, align 2
  %93 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid151 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %93, i32 0, i32 3
  %arrayidx152 = getelementptr inbounds [15 x i16], [15 x i16]* %valid151, i32 0, i64 8
  store i16 0, i16* %arrayidx152, align 2
  %94 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid153 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %94, i32 0, i32 3
  %arrayidx154 = getelementptr inbounds [15 x i16], [15 x i16]* %valid153, i32 0, i64 12
  store i16 0, i16* %arrayidx154, align 2
  %call = call i32 @check_for_SI16()
  %tobool155 = icmp ne i32 %call, 0
  br i1 %tobool155, label %if.then.156, label %if.else

if.then.156:                                      ; preds = %if.then.130
  %95 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid157 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %95, i32 0, i32 3
  %arrayidx158 = getelementptr inbounds [15 x i16], [15 x i16]* %valid157, i32 0, i64 9
  store i16 0, i16* %arrayidx158, align 2
  %96 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid159 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %96, i32 0, i32 3
  %arrayidx160 = getelementptr inbounds [15 x i16], [15 x i16]* %valid159, i32 0, i64 10
  store i16 1, i16* %arrayidx160, align 2
  br label %if.end

if.else:                                          ; preds = %if.then.130
  %97 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid161 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %97, i32 0, i32 3
  %arrayidx162 = getelementptr inbounds [15 x i16], [15 x i16]* %valid161, i32 0, i64 9
  store i16 1, i16* %arrayidx162, align 2
  %98 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid163 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %98, i32 0, i32 3
  %arrayidx164 = getelementptr inbounds [15 x i16], [15 x i16]* %valid163, i32 0, i64 10
  store i16 0, i16* %arrayidx164, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.156
  br label %if.end.165

if.end.165:                                       ; preds = %if.end, %if.then
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %lor.end
  %99 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type167 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %99, i32 0, i32 5
  %100 = load i32, i32* %type167, align 4
  %cmp168 = icmp eq i32 %100, 3
  br i1 %cmp168, label %if.then.170, label %if.end.215

if.then.170:                                      ; preds = %if.end.166
  %101 = load i32, i32* @sp2_frame_indicator, align 4
  %tobool171 = icmp ne i32 %101, 0
  br i1 %tobool171, label %if.then.172, label %if.end.214

if.then.172:                                      ; preds = %if.then.170
  %call173 = call i32 @check_for_SI16()
  %tobool174 = icmp ne i32 %call173, 0
  br i1 %tobool174, label %if.then.175, label %if.else.204

if.then.175:                                      ; preds = %if.then.172
  %102 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid176 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %102, i32 0, i32 3
  %arrayidx177 = getelementptr inbounds [15 x i16], [15 x i16]* %valid176, i32 0, i64 13
  store i16 0, i16* %arrayidx177, align 2
  %103 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid178 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %103, i32 0, i32 3
  %arrayidx179 = getelementptr inbounds [15 x i16], [15 x i16]* %valid178, i32 0, i64 14
  store i16 0, i16* %arrayidx179, align 2
  %104 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid180 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %104, i32 0, i32 3
  %arrayidx181 = getelementptr inbounds [15 x i16], [15 x i16]* %valid180, i32 0, i64 0
  store i16 0, i16* %arrayidx181, align 2
  %105 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid182 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %105, i32 0, i32 3
  %arrayidx183 = getelementptr inbounds [15 x i16], [15 x i16]* %valid182, i32 0, i64 1
  store i16 0, i16* %arrayidx183, align 2
  %106 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid184 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %106, i32 0, i32 3
  %arrayidx185 = getelementptr inbounds [15 x i16], [15 x i16]* %valid184, i32 0, i64 2
  store i16 0, i16* %arrayidx185, align 2
  %107 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid186 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %107, i32 0, i32 3
  %arrayidx187 = getelementptr inbounds [15 x i16], [15 x i16]* %valid186, i32 0, i64 3
  store i16 0, i16* %arrayidx187, align 2
  %108 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid188 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %108, i32 0, i32 3
  %arrayidx189 = getelementptr inbounds [15 x i16], [15 x i16]* %valid188, i32 0, i64 4
  store i16 0, i16* %arrayidx189, align 2
  %109 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid190 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %109, i32 0, i32 3
  %arrayidx191 = getelementptr inbounds [15 x i16], [15 x i16]* %valid190, i32 0, i64 5
  store i16 0, i16* %arrayidx191, align 2
  %110 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid192 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %110, i32 0, i32 3
  %arrayidx193 = getelementptr inbounds [15 x i16], [15 x i16]* %valid192, i32 0, i64 6
  store i16 0, i16* %arrayidx193, align 2
  %111 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid194 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %111, i32 0, i32 3
  %arrayidx195 = getelementptr inbounds [15 x i16], [15 x i16]* %valid194, i32 0, i64 7
  store i16 0, i16* %arrayidx195, align 2
  %112 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid196 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %112, i32 0, i32 3
  %arrayidx197 = getelementptr inbounds [15 x i16], [15 x i16]* %valid196, i32 0, i64 8
  store i16 0, i16* %arrayidx197, align 2
  %113 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid198 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %113, i32 0, i32 3
  %arrayidx199 = getelementptr inbounds [15 x i16], [15 x i16]* %valid198, i32 0, i64 12
  store i16 0, i16* %arrayidx199, align 2
  %114 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid200 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %114, i32 0, i32 3
  %arrayidx201 = getelementptr inbounds [15 x i16], [15 x i16]* %valid200, i32 0, i64 9
  store i16 0, i16* %arrayidx201, align 2
  %115 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid202 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %115, i32 0, i32 3
  %arrayidx203 = getelementptr inbounds [15 x i16], [15 x i16]* %valid202, i32 0, i64 10
  store i16 1, i16* %arrayidx203, align 2
  br label %if.end.213

if.else.204:                                      ; preds = %if.then.172
  %116 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid205 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %116, i32 0, i32 3
  %arrayidx206 = getelementptr inbounds [15 x i16], [15 x i16]* %valid205, i32 0, i64 13
  store i16 0, i16* %arrayidx206, align 2
  %117 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid207 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %117, i32 0, i32 3
  %arrayidx208 = getelementptr inbounds [15 x i16], [15 x i16]* %valid207, i32 0, i64 14
  store i16 0, i16* %arrayidx208, align 2
  %118 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid209 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %118, i32 0, i32 3
  %arrayidx210 = getelementptr inbounds [15 x i16], [15 x i16]* %valid209, i32 0, i64 0
  store i16 0, i16* %arrayidx210, align 2
  %119 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %valid211 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %119, i32 0, i32 3
  %arrayidx212 = getelementptr inbounds [15 x i16], [15 x i16]* %valid211, i32 0, i64 10
  store i16 0, i16* %arrayidx212, align 2
  br label %if.end.213

if.end.213:                                       ; preds = %if.else.204, %if.then.175
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %if.then.170
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %if.end.166
  %120 = load i32, i32* %bslice.addr, align 4
  %tobool216 = icmp ne i32 %120, 0
  br i1 %tobool216, label %land.lhs.true.217, label %if.else.270

land.lhs.true.217:                                ; preds = %if.end.215
  %121 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %121, i32 0, i32 122
  %122 = load i32, i32* %nal_reference_idc, align 4
  %tobool218 = icmp ne i32 %122, 0
  br i1 %tobool218, label %if.then.219, label %if.else.270

if.then.219:                                      ; preds = %land.lhs.true.217
  %123 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %123, i32 0, i32 9
  %124 = load i32, i32* %qp, align 4
  %idxprom = sext i32 %124 to i64
  %125 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %125, i32 0, i32 150
  %126 = load double**, double*** %lambda_md, align 8
  %arrayidx220 = getelementptr inbounds double*, double** %126, i64 5
  %127 = load double*, double** %arrayidx220, align 8
  %arrayidx221 = getelementptr inbounds double, double* %127, i64 %idxprom
  %128 = load double, double* %arrayidx221, align 8
  %129 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %lambda_md222 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %129, i32 0, i32 0
  store double %128, double* %lambda_md222, align 8
  %130 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp223 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %130, i32 0, i32 9
  %131 = load i32, i32* %qp223, align 4
  %idxprom224 = sext i32 %131 to i64
  %132 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_me = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %132, i32 0, i32 151
  %133 = load double***, double**** %lambda_me, align 8
  %arrayidx225 = getelementptr inbounds double**, double*** %133, i64 5
  %134 = load double**, double*** %arrayidx225, align 8
  %arrayidx226 = getelementptr inbounds double*, double** %134, i64 %idxprom224
  %135 = load double*, double** %arrayidx226, align 8
  %arrayidx227 = getelementptr inbounds double, double* %135, i64 0
  %136 = load double, double* %arrayidx227, align 8
  %137 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %lambda_me228 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %137, i32 0, i32 1
  %arrayidx229 = getelementptr inbounds [3 x double], [3 x double]* %lambda_me228, i32 0, i64 0
  store double %136, double* %arrayidx229, align 8
  %138 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp230 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %138, i32 0, i32 9
  %139 = load i32, i32* %qp230, align 4
  %idxprom231 = sext i32 %139 to i64
  %140 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_me232 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %140, i32 0, i32 151
  %141 = load double***, double**** %lambda_me232, align 8
  %arrayidx233 = getelementptr inbounds double**, double*** %141, i64 5
  %142 = load double**, double*** %arrayidx233, align 8
  %arrayidx234 = getelementptr inbounds double*, double** %142, i64 %idxprom231
  %143 = load double*, double** %arrayidx234, align 8
  %arrayidx235 = getelementptr inbounds double, double* %143, i64 1
  %144 = load double, double* %arrayidx235, align 8
  %145 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %lambda_me236 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %145, i32 0, i32 1
  %arrayidx237 = getelementptr inbounds [3 x double], [3 x double]* %lambda_me236, i32 0, i64 1
  store double %144, double* %arrayidx237, align 8
  %146 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp238 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %146, i32 0, i32 9
  %147 = load i32, i32* %qp238, align 4
  %idxprom239 = sext i32 %147 to i64
  %148 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_mf = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %148, i32 0, i32 152
  %149 = load i32***, i32**** %lambda_mf, align 8
  %arrayidx240 = getelementptr inbounds i32**, i32*** %149, i64 5
  %150 = load i32**, i32*** %arrayidx240, align 8
  %arrayidx241 = getelementptr inbounds i32*, i32** %150, i64 %idxprom239
  %151 = load i32*, i32** %arrayidx241, align 8
  %arrayidx242 = getelementptr inbounds i32, i32* %151, i64 2
  %152 = load i32, i32* %arrayidx242, align 4
  %conv243 = sitofp i32 %152 to double
  %153 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %lambda_me244 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %153, i32 0, i32 1
  %arrayidx245 = getelementptr inbounds [3 x double], [3 x double]* %lambda_me244, i32 0, i64 2
  store double %conv243, double* %arrayidx245, align 8
  %154 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp246 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %154, i32 0, i32 9
  %155 = load i32, i32* %qp246, align 4
  %idxprom247 = sext i32 %155 to i64
  %156 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_mf248 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %156, i32 0, i32 152
  %157 = load i32***, i32**** %lambda_mf248, align 8
  %arrayidx249 = getelementptr inbounds i32**, i32*** %157, i64 5
  %158 = load i32**, i32*** %arrayidx249, align 8
  %arrayidx250 = getelementptr inbounds i32*, i32** %158, i64 %idxprom247
  %159 = load i32*, i32** %arrayidx250, align 8
  %arrayidx251 = getelementptr inbounds i32, i32* %159, i64 0
  %160 = load i32, i32* %arrayidx251, align 4
  %161 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %lambda_mf252 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %161, i32 0, i32 2
  %arrayidx253 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf252, i32 0, i64 0
  store i32 %160, i32* %arrayidx253, align 4
  %162 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp254 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %162, i32 0, i32 9
  %163 = load i32, i32* %qp254, align 4
  %idxprom255 = sext i32 %163 to i64
  %164 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_mf256 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %164, i32 0, i32 152
  %165 = load i32***, i32**** %lambda_mf256, align 8
  %arrayidx257 = getelementptr inbounds i32**, i32*** %165, i64 5
  %166 = load i32**, i32*** %arrayidx257, align 8
  %arrayidx258 = getelementptr inbounds i32*, i32** %166, i64 %idxprom255
  %167 = load i32*, i32** %arrayidx258, align 8
  %arrayidx259 = getelementptr inbounds i32, i32* %167, i64 1
  %168 = load i32, i32* %arrayidx259, align 4
  %169 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %lambda_mf260 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %169, i32 0, i32 2
  %arrayidx261 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf260, i32 0, i64 1
  store i32 %168, i32* %arrayidx261, align 4
  %170 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp262 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %170, i32 0, i32 9
  %171 = load i32, i32* %qp262, align 4
  %idxprom263 = sext i32 %171 to i64
  %172 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_mf264 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %172, i32 0, i32 152
  %173 = load i32***, i32**** %lambda_mf264, align 8
  %arrayidx265 = getelementptr inbounds i32**, i32*** %173, i64 5
  %174 = load i32**, i32*** %arrayidx265, align 8
  %arrayidx266 = getelementptr inbounds i32*, i32** %174, i64 %idxprom263
  %175 = load i32*, i32** %arrayidx266, align 8
  %arrayidx267 = getelementptr inbounds i32, i32* %175, i64 2
  %176 = load i32, i32* %arrayidx267, align 4
  %177 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %lambda_mf268 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %177, i32 0, i32 2
  %arrayidx269 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf268, i32 0, i64 2
  store i32 %176, i32* %arrayidx269, align 4
  br label %if.end.339

if.else.270:                                      ; preds = %land.lhs.true.217, %if.end.215
  %178 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp271 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %178, i32 0, i32 9
  %179 = load i32, i32* %qp271, align 4
  %idxprom272 = sext i32 %179 to i64
  %180 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type273 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %180, i32 0, i32 5
  %181 = load i32, i32* %type273, align 4
  %idxprom274 = sext i32 %181 to i64
  %182 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_md275 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %182, i32 0, i32 150
  %183 = load double**, double*** %lambda_md275, align 8
  %arrayidx276 = getelementptr inbounds double*, double** %183, i64 %idxprom274
  %184 = load double*, double** %arrayidx276, align 8
  %arrayidx277 = getelementptr inbounds double, double* %184, i64 %idxprom272
  %185 = load double, double* %arrayidx277, align 8
  %186 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %lambda_md278 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %186, i32 0, i32 0
  store double %185, double* %lambda_md278, align 8
  %187 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp279 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %187, i32 0, i32 9
  %188 = load i32, i32* %qp279, align 4
  %idxprom280 = sext i32 %188 to i64
  %189 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type281 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %189, i32 0, i32 5
  %190 = load i32, i32* %type281, align 4
  %idxprom282 = sext i32 %190 to i64
  %191 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_me283 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %191, i32 0, i32 151
  %192 = load double***, double**** %lambda_me283, align 8
  %arrayidx284 = getelementptr inbounds double**, double*** %192, i64 %idxprom282
  %193 = load double**, double*** %arrayidx284, align 8
  %arrayidx285 = getelementptr inbounds double*, double** %193, i64 %idxprom280
  %194 = load double*, double** %arrayidx285, align 8
  %arrayidx286 = getelementptr inbounds double, double* %194, i64 0
  %195 = load double, double* %arrayidx286, align 8
  %196 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %lambda_me287 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %196, i32 0, i32 1
  %arrayidx288 = getelementptr inbounds [3 x double], [3 x double]* %lambda_me287, i32 0, i64 0
  store double %195, double* %arrayidx288, align 8
  %197 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp289 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %197, i32 0, i32 9
  %198 = load i32, i32* %qp289, align 4
  %idxprom290 = sext i32 %198 to i64
  %199 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type291 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %199, i32 0, i32 5
  %200 = load i32, i32* %type291, align 4
  %idxprom292 = sext i32 %200 to i64
  %201 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_me293 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %201, i32 0, i32 151
  %202 = load double***, double**** %lambda_me293, align 8
  %arrayidx294 = getelementptr inbounds double**, double*** %202, i64 %idxprom292
  %203 = load double**, double*** %arrayidx294, align 8
  %arrayidx295 = getelementptr inbounds double*, double** %203, i64 %idxprom290
  %204 = load double*, double** %arrayidx295, align 8
  %arrayidx296 = getelementptr inbounds double, double* %204, i64 1
  %205 = load double, double* %arrayidx296, align 8
  %206 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %lambda_me297 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %206, i32 0, i32 1
  %arrayidx298 = getelementptr inbounds [3 x double], [3 x double]* %lambda_me297, i32 0, i64 1
  store double %205, double* %arrayidx298, align 8
  %207 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp299 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %207, i32 0, i32 9
  %208 = load i32, i32* %qp299, align 4
  %idxprom300 = sext i32 %208 to i64
  %209 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type301 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %209, i32 0, i32 5
  %210 = load i32, i32* %type301, align 4
  %idxprom302 = sext i32 %210 to i64
  %211 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_me303 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %211, i32 0, i32 151
  %212 = load double***, double**** %lambda_me303, align 8
  %arrayidx304 = getelementptr inbounds double**, double*** %212, i64 %idxprom302
  %213 = load double**, double*** %arrayidx304, align 8
  %arrayidx305 = getelementptr inbounds double*, double** %213, i64 %idxprom300
  %214 = load double*, double** %arrayidx305, align 8
  %arrayidx306 = getelementptr inbounds double, double* %214, i64 2
  %215 = load double, double* %arrayidx306, align 8
  %216 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %lambda_me307 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %216, i32 0, i32 1
  %arrayidx308 = getelementptr inbounds [3 x double], [3 x double]* %lambda_me307, i32 0, i64 2
  store double %215, double* %arrayidx308, align 8
  %217 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp309 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %217, i32 0, i32 9
  %218 = load i32, i32* %qp309, align 4
  %idxprom310 = sext i32 %218 to i64
  %219 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type311 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %219, i32 0, i32 5
  %220 = load i32, i32* %type311, align 4
  %idxprom312 = sext i32 %220 to i64
  %221 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_mf313 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %221, i32 0, i32 152
  %222 = load i32***, i32**** %lambda_mf313, align 8
  %arrayidx314 = getelementptr inbounds i32**, i32*** %222, i64 %idxprom312
  %223 = load i32**, i32*** %arrayidx314, align 8
  %arrayidx315 = getelementptr inbounds i32*, i32** %223, i64 %idxprom310
  %224 = load i32*, i32** %arrayidx315, align 8
  %arrayidx316 = getelementptr inbounds i32, i32* %224, i64 0
  %225 = load i32, i32* %arrayidx316, align 4
  %226 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %lambda_mf317 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %226, i32 0, i32 2
  %arrayidx318 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf317, i32 0, i64 0
  store i32 %225, i32* %arrayidx318, align 4
  %227 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp319 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %227, i32 0, i32 9
  %228 = load i32, i32* %qp319, align 4
  %idxprom320 = sext i32 %228 to i64
  %229 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type321 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %229, i32 0, i32 5
  %230 = load i32, i32* %type321, align 4
  %idxprom322 = sext i32 %230 to i64
  %231 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_mf323 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %231, i32 0, i32 152
  %232 = load i32***, i32**** %lambda_mf323, align 8
  %arrayidx324 = getelementptr inbounds i32**, i32*** %232, i64 %idxprom322
  %233 = load i32**, i32*** %arrayidx324, align 8
  %arrayidx325 = getelementptr inbounds i32*, i32** %233, i64 %idxprom320
  %234 = load i32*, i32** %arrayidx325, align 8
  %arrayidx326 = getelementptr inbounds i32, i32* %234, i64 1
  %235 = load i32, i32* %arrayidx326, align 4
  %236 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %lambda_mf327 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %236, i32 0, i32 2
  %arrayidx328 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf327, i32 0, i64 1
  store i32 %235, i32* %arrayidx328, align 4
  %237 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp329 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %237, i32 0, i32 9
  %238 = load i32, i32* %qp329, align 4
  %idxprom330 = sext i32 %238 to i64
  %239 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type331 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %239, i32 0, i32 5
  %240 = load i32, i32* %type331, align 4
  %idxprom332 = sext i32 %240 to i64
  %241 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_mf333 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %241, i32 0, i32 152
  %242 = load i32***, i32**** %lambda_mf333, align 8
  %arrayidx334 = getelementptr inbounds i32**, i32*** %242, i64 %idxprom332
  %243 = load i32**, i32*** %arrayidx334, align 8
  %arrayidx335 = getelementptr inbounds i32*, i32** %243, i64 %idxprom330
  %244 = load i32*, i32** %arrayidx335, align 8
  %arrayidx336 = getelementptr inbounds i32, i32* %244, i64 2
  %245 = load i32, i32* %arrayidx336, align 4
  %246 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %lambda_mf337 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %246, i32 0, i32 2
  %arrayidx338 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf337, i32 0, i64 2
  store i32 %245, i32* %arrayidx338, align 4
  br label %if.end.339

if.end.339:                                       ; preds = %if.else.270, %if.then.219
  store i32 0, i32* %mode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.339
  %247 = load i32, i32* %mode, align 4
  %cmp340 = icmp slt i32 %247, 15
  br i1 %cmp340, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %248 = load i32, i32* %mode, align 4
  %idxprom342 = sext i32 %248 to i64
  %249 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %249, i32 0, i32 83
  %arrayidx343 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me, i32 0, i64 %idxprom342
  store i16 0, i16* %arrayidx343, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %250 = load i32, i32* %mode, align 4
  %inc = add nsw i32 %250, 1
  store i32 %inc, i32* %mode, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %251 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag344 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %251, i32 0, i32 100
  %252 = load i32, i32* %MbaffFrameFlag344, align 4
  %tobool345 = icmp ne i32 %252, 0
  br i1 %tobool345, label %if.else.404, label %if.then.346

if.then.346:                                      ; preds = %for.end
  store i32 0, i32* %l, align 4
  br label %for.cond.347

for.cond.347:                                     ; preds = %for.inc.401, %if.then.346
  %253 = load i32, i32* %l, align 4
  %cmp348 = icmp slt i32 %253, 2
  br i1 %cmp348, label %for.body.350, label %for.end.403

for.body.350:                                     ; preds = %for.cond.347
  store i32 0, i32* %k, align 4
  br label %for.cond.351

for.cond.351:                                     ; preds = %for.inc.398, %for.body.350
  %254 = load i32, i32* %k, align 4
  %255 = load i32, i32* %l, align 4
  %idxprom352 = sext i32 %255 to i64
  %arrayidx353 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom352
  %256 = load i32, i32* %arrayidx353, align 4
  %cmp354 = icmp slt i32 %254, %256
  br i1 %cmp354, label %for.body.356, label %for.end.400

for.body.356:                                     ; preds = %for.cond.351
  %257 = load i32, i32* %k, align 4
  %idxprom357 = sext i32 %257 to i64
  %258 = load i32, i32* %l, align 4
  %idxprom358 = sext i32 %258 to i64
  %arrayidx359 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom358
  %259 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx359, align 8
  %arrayidx360 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %259, i64 %idxprom357
  %260 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx360, align 8
  %chroma_vector_adjustment = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %260, i32 0, i32 26
  store i32 0, i32* %chroma_vector_adjustment, align 4
  %261 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %261, i32 0, i32 6
  %262 = load i32, i32* %structure, align 4
  %cmp361 = icmp eq i32 %262, 1
  br i1 %cmp361, label %land.lhs.true.363, label %if.end.378

land.lhs.true.363:                                ; preds = %for.body.356
  %263 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure364 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %263, i32 0, i32 6
  %264 = load i32, i32* %structure364, align 4
  %265 = load i32, i32* %k, align 4
  %idxprom365 = sext i32 %265 to i64
  %266 = load i32, i32* %l, align 4
  %idxprom366 = sext i32 %266 to i64
  %arrayidx367 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom366
  %267 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx367, align 8
  %arrayidx368 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %267, i64 %idxprom365
  %268 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx368, align 8
  %structure369 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %268, i32 0, i32 0
  %269 = load i32, i32* %structure369, align 4
  %cmp370 = icmp ne i32 %264, %269
  br i1 %cmp370, label %if.then.372, label %if.end.378

if.then.372:                                      ; preds = %land.lhs.true.363
  %270 = load i32, i32* %k, align 4
  %idxprom373 = sext i32 %270 to i64
  %271 = load i32, i32* %l, align 4
  %idxprom374 = sext i32 %271 to i64
  %arrayidx375 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom374
  %272 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx375, align 8
  %arrayidx376 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %272, i64 %idxprom373
  %273 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx376, align 8
  %chroma_vector_adjustment377 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %273, i32 0, i32 26
  store i32 -2, i32* %chroma_vector_adjustment377, align 4
  br label %if.end.378

if.end.378:                                       ; preds = %if.then.372, %land.lhs.true.363, %for.body.356
  %274 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure379 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %274, i32 0, i32 6
  %275 = load i32, i32* %structure379, align 4
  %cmp380 = icmp eq i32 %275, 2
  br i1 %cmp380, label %land.lhs.true.382, label %if.end.397

land.lhs.true.382:                                ; preds = %if.end.378
  %276 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure383 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %276, i32 0, i32 6
  %277 = load i32, i32* %structure383, align 4
  %278 = load i32, i32* %k, align 4
  %idxprom384 = sext i32 %278 to i64
  %279 = load i32, i32* %l, align 4
  %idxprom385 = sext i32 %279 to i64
  %arrayidx386 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom385
  %280 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx386, align 8
  %arrayidx387 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %280, i64 %idxprom384
  %281 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx387, align 8
  %structure388 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %281, i32 0, i32 0
  %282 = load i32, i32* %structure388, align 4
  %cmp389 = icmp ne i32 %277, %282
  br i1 %cmp389, label %if.then.391, label %if.end.397

if.then.391:                                      ; preds = %land.lhs.true.382
  %283 = load i32, i32* %k, align 4
  %idxprom392 = sext i32 %283 to i64
  %284 = load i32, i32* %l, align 4
  %idxprom393 = sext i32 %284 to i64
  %arrayidx394 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom393
  %285 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx394, align 8
  %arrayidx395 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %285, i64 %idxprom392
  %286 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx395, align 8
  %chroma_vector_adjustment396 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %286, i32 0, i32 26
  store i32 2, i32* %chroma_vector_adjustment396, align 4
  br label %if.end.397

if.end.397:                                       ; preds = %if.then.391, %land.lhs.true.382, %if.end.378
  br label %for.inc.398

for.inc.398:                                      ; preds = %if.end.397
  %287 = load i32, i32* %k, align 4
  %inc399 = add nsw i32 %287, 1
  store i32 %inc399, i32* %k, align 4
  br label %for.cond.351

for.end.400:                                      ; preds = %for.cond.351
  br label %for.inc.401

for.inc.401:                                      ; preds = %for.end.400
  %288 = load i32, i32* %l, align 4
  %inc402 = add nsw i32 %288, 1
  store i32 %inc402, i32* %l, align 4
  br label %for.cond.347

for.end.403:                                      ; preds = %for.cond.347
  br label %if.end.500

if.else.404:                                      ; preds = %for.end
  %289 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %curr_mb_field405 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %289, i32 0, i32 5
  %290 = load i16, i16* %curr_mb_field405, align 2
  %tobool406 = icmp ne i16 %290, 0
  br i1 %tobool406, label %if.then.407, label %if.else.471

if.then.407:                                      ; preds = %if.else.404
  %291 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %list_offset408 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %291, i32 0, i32 4
  %arrayidx409 = getelementptr inbounds [2 x i16], [2 x i16]* %list_offset408, i32 0, i64 0
  %292 = load i16, i16* %arrayidx409, align 2
  %conv410 = sext i16 %292 to i32
  store i32 %conv410, i32* %l, align 4
  br label %for.cond.411

for.cond.411:                                     ; preds = %for.inc.468, %if.then.407
  %293 = load i32, i32* %l, align 4
  %294 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %list_offset412 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %294, i32 0, i32 4
  %arrayidx413 = getelementptr inbounds [2 x i16], [2 x i16]* %list_offset412, i32 0, i64 1
  %295 = load i16, i16* %arrayidx413, align 2
  %conv414 = sext i16 %295 to i32
  %cmp415 = icmp sle i32 %293, %conv414
  br i1 %cmp415, label %for.body.417, label %for.end.470

for.body.417:                                     ; preds = %for.cond.411
  store i32 0, i32* %k, align 4
  br label %for.cond.418

for.cond.418:                                     ; preds = %for.inc.465, %for.body.417
  %296 = load i32, i32* %k, align 4
  %297 = load i32, i32* %l, align 4
  %idxprom419 = sext i32 %297 to i64
  %arrayidx420 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom419
  %298 = load i32, i32* %arrayidx420, align 4
  %cmp421 = icmp slt i32 %296, %298
  br i1 %cmp421, label %for.body.423, label %for.end.467

for.body.423:                                     ; preds = %for.cond.418
  %299 = load i32, i32* %k, align 4
  %idxprom424 = sext i32 %299 to i64
  %300 = load i32, i32* %l, align 4
  %idxprom425 = sext i32 %300 to i64
  %arrayidx426 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom425
  %301 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx426, align 8
  %arrayidx427 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %301, i64 %idxprom424
  %302 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx427, align 8
  %chroma_vector_adjustment428 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %302, i32 0, i32 26
  store i32 0, i32* %chroma_vector_adjustment428, align 4
  %303 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %303, i32 0, i32 3
  %304 = load i32, i32* %current_mb_nr, align 4
  %rem = srem i32 %304, 2
  %cmp429 = icmp eq i32 %rem, 0
  br i1 %cmp429, label %land.lhs.true.431, label %if.end.445

land.lhs.true.431:                                ; preds = %for.body.423
  %305 = load i32, i32* %k, align 4
  %idxprom432 = sext i32 %305 to i64
  %306 = load i32, i32* %l, align 4
  %idxprom433 = sext i32 %306 to i64
  %arrayidx434 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom433
  %307 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx434, align 8
  %arrayidx435 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %307, i64 %idxprom432
  %308 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx435, align 8
  %structure436 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %308, i32 0, i32 0
  %309 = load i32, i32* %structure436, align 4
  %cmp437 = icmp eq i32 %309, 2
  br i1 %cmp437, label %if.then.439, label %if.end.445

if.then.439:                                      ; preds = %land.lhs.true.431
  %310 = load i32, i32* %k, align 4
  %idxprom440 = sext i32 %310 to i64
  %311 = load i32, i32* %l, align 4
  %idxprom441 = sext i32 %311 to i64
  %arrayidx442 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom441
  %312 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx442, align 8
  %arrayidx443 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %312, i64 %idxprom440
  %313 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx443, align 8
  %chroma_vector_adjustment444 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %313, i32 0, i32 26
  store i32 -2, i32* %chroma_vector_adjustment444, align 4
  br label %if.end.445

if.end.445:                                       ; preds = %if.then.439, %land.lhs.true.431, %for.body.423
  %314 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr446 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %314, i32 0, i32 3
  %315 = load i32, i32* %current_mb_nr446, align 4
  %rem447 = srem i32 %315, 2
  %cmp448 = icmp eq i32 %rem447, 1
  br i1 %cmp448, label %land.lhs.true.450, label %if.end.464

land.lhs.true.450:                                ; preds = %if.end.445
  %316 = load i32, i32* %k, align 4
  %idxprom451 = sext i32 %316 to i64
  %317 = load i32, i32* %l, align 4
  %idxprom452 = sext i32 %317 to i64
  %arrayidx453 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom452
  %318 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx453, align 8
  %arrayidx454 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %318, i64 %idxprom451
  %319 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx454, align 8
  %structure455 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %319, i32 0, i32 0
  %320 = load i32, i32* %structure455, align 4
  %cmp456 = icmp eq i32 %320, 1
  br i1 %cmp456, label %if.then.458, label %if.end.464

if.then.458:                                      ; preds = %land.lhs.true.450
  %321 = load i32, i32* %k, align 4
  %idxprom459 = sext i32 %321 to i64
  %322 = load i32, i32* %l, align 4
  %idxprom460 = sext i32 %322 to i64
  %arrayidx461 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom460
  %323 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx461, align 8
  %arrayidx462 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %323, i64 %idxprom459
  %324 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx462, align 8
  %chroma_vector_adjustment463 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %324, i32 0, i32 26
  store i32 2, i32* %chroma_vector_adjustment463, align 4
  br label %if.end.464

if.end.464:                                       ; preds = %if.then.458, %land.lhs.true.450, %if.end.445
  br label %for.inc.465

for.inc.465:                                      ; preds = %if.end.464
  %325 = load i32, i32* %k, align 4
  %inc466 = add nsw i32 %325, 1
  store i32 %inc466, i32* %k, align 4
  br label %for.cond.418

for.end.467:                                      ; preds = %for.cond.418
  br label %for.inc.468

for.inc.468:                                      ; preds = %for.end.467
  %326 = load i32, i32* %l, align 4
  %inc469 = add nsw i32 %326, 1
  store i32 %inc469, i32* %l, align 4
  br label %for.cond.411

for.end.470:                                      ; preds = %for.cond.411
  br label %if.end.499

if.else.471:                                      ; preds = %if.else.404
  %327 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %list_offset472 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %327, i32 0, i32 4
  %arrayidx473 = getelementptr inbounds [2 x i16], [2 x i16]* %list_offset472, i32 0, i64 0
  %328 = load i16, i16* %arrayidx473, align 2
  %conv474 = sext i16 %328 to i32
  store i32 %conv474, i32* %l, align 4
  br label %for.cond.475

for.cond.475:                                     ; preds = %for.inc.496, %if.else.471
  %329 = load i32, i32* %l, align 4
  %330 = load %struct.RD_PARAMS*, %struct.RD_PARAMS** %enc_mb.addr, align 8
  %list_offset476 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %330, i32 0, i32 4
  %arrayidx477 = getelementptr inbounds [2 x i16], [2 x i16]* %list_offset476, i32 0, i64 1
  %331 = load i16, i16* %arrayidx477, align 2
  %conv478 = sext i16 %331 to i32
  %cmp479 = icmp sle i32 %329, %conv478
  br i1 %cmp479, label %for.body.481, label %for.end.498

for.body.481:                                     ; preds = %for.cond.475
  store i32 0, i32* %k, align 4
  br label %for.cond.482

for.cond.482:                                     ; preds = %for.inc.493, %for.body.481
  %332 = load i32, i32* %k, align 4
  %333 = load i32, i32* %l, align 4
  %idxprom483 = sext i32 %333 to i64
  %arrayidx484 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom483
  %334 = load i32, i32* %arrayidx484, align 4
  %cmp485 = icmp slt i32 %332, %334
  br i1 %cmp485, label %for.body.487, label %for.end.495

for.body.487:                                     ; preds = %for.cond.482
  %335 = load i32, i32* %k, align 4
  %idxprom488 = sext i32 %335 to i64
  %336 = load i32, i32* %l, align 4
  %idxprom489 = sext i32 %336 to i64
  %arrayidx490 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom489
  %337 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx490, align 8
  %arrayidx491 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %337, i64 %idxprom488
  %338 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx491, align 8
  %chroma_vector_adjustment492 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %338, i32 0, i32 26
  store i32 0, i32* %chroma_vector_adjustment492, align 4
  br label %for.inc.493

for.inc.493:                                      ; preds = %for.body.487
  %339 = load i32, i32* %k, align 4
  %inc494 = add nsw i32 %339, 1
  store i32 %inc494, i32* %k, align 4
  br label %for.cond.482

for.end.495:                                      ; preds = %for.cond.482
  br label %for.inc.496

for.inc.496:                                      ; preds = %for.end.495
  %340 = load i32, i32* %l, align 4
  %inc497 = add nsw i32 %340, 1
  store i32 %inc497, i32* %l, align 4
  br label %for.cond.475

for.end.498:                                      ; preds = %for.cond.475
  br label %if.end.499

if.end.499:                                       ; preds = %for.end.498, %for.end.470
  br label %if.end.500

if.end.500:                                       ; preds = %if.end.499, %for.end.403
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @check_for_SI16() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 40
  %1 = load i32, i32* %pix_y, align 4
  store i32 %1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 40
  %4 = load i32, i32* %pix_y1, align 4
  %add = add nsw i32 %4, 16
  %cmp = icmp slt i32 %2, %add
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 39
  %6 = load i32, i32* %pix_x, align 4
  store i32 %6, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %j, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 39
  %9 = load i32, i32* %pix_x3, align 4
  %add4 = add nsw i32 %9, 16
  %cmp5 = icmp slt i32 %7, %add4
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.2
  %10 = load i32, i32* %j, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load i32**, i32*** @lrec, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %12, i64 %idxprom7
  %13 = load i32*, i32** %arrayidx, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %13, i64 %idxprom
  %14 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp ne i32 %14, -16
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %j, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %16 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %16, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.12, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define void @list_prediction_cost(i32 %list, i32 %block, i32 %mode, %struct.RD_PARAMS* byval align 8 %enc_mb, i32* %bmcost, i8* %best_ref) #0 {
entry:
  %list.addr = alloca i32, align 4
  %block.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %bmcost.addr = alloca i32*, align 8
  %best_ref.addr = alloca i8*, align 8
  %ref = alloca i16, align 2
  %mcost = alloca i32, align 4
  %cur_list = alloca i32, align 4
  %weight_sum = alloca i32, align 4
  store i32 %list, i32* %list.addr, align 4
  store i32 %block, i32* %block.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32* %bmcost, i32** %bmcost.addr, align 8
  store i8* %best_ref, i8** %best_ref.addr, align 8
  %0 = load i32, i32* %list.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %list.addr, align 4
  %idxprom = sext i32 %1 to i64
  %list_offset = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i16], [2 x i16]* %list_offset, i32 0, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %list_offset1 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 4
  %arrayidx2 = getelementptr inbounds [2 x i16], [2 x i16]* %list_offset1, i32 0, i64 0
  %3 = load i16, i16* %arrayidx2, align 2
  %conv3 = sext i16 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv3, %cond.false ]
  store i32 %cond, i32* %cur_list, align 4
  %4 = load i32, i32* %list.addr, align 4
  %cmp4 = icmp slt i32 %4, 2
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  store i16 0, i16* %ref, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i16, i16* %ref, align 2
  %conv6 = sext i16 %5 to i32
  %6 = load i32, i32* %cur_list, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom7
  %7 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp slt i32 %conv6, %7
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %checkref = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 168
  %9 = load i16, i16* %checkref, align 2
  %tobool = icmp ne i16 %9, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.20

lor.lhs.false:                                    ; preds = %for.body
  %10 = load i32, i32* %list.addr, align 4
  %tobool11 = icmp ne i32 %10, 0
  br i1 %tobool11, label %if.then.20, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %11 = load i16, i16* %ref, align 2
  %conv13 = sext i16 %11 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %if.then.20, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.12
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RestrictRef = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 128
  %13 = load i32, i32* %RestrictRef, align 4
  %tobool17 = icmp ne i32 %13, 0
  br i1 %tobool17, label %land.lhs.true, label %if.end.98

land.lhs.true:                                    ; preds = %lor.lhs.false.16
  %14 = load i32, i32* %block.addr, align 4
  %15 = load i32, i32* %list.addr, align 4
  %16 = load i16, i16* %ref, align 2
  %conv18 = sext i16 %16 to i32
  %17 = load i32, i32* %mode.addr, align 4
  %call = call i32 @CheckReliabilityOfRef(i32 %14, i32 %15, i32 %conv18, i32 %17)
  %tobool19 = icmp ne i32 %call, 0
  br i1 %tobool19, label %if.then.20, label %if.end.98

if.then.20:                                       ; preds = %land.lhs.true, %lor.lhs.false.12, %lor.lhs.false, %for.body
  %18 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp2_frame_indicator = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %18, i32 0, i32 54
  %19 = load i32, i32* %sp2_frame_indicator, align 4
  %tobool21 = icmp ne i32 %19, 0
  br i1 %tobool21, label %lor.lhs.false.24, label %land.lhs.true.22

land.lhs.true.22:                                 ; preds = %if.then.20
  %20 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp_output_indicator = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %20, i32 0, i32 55
  %21 = load i32, i32* %sp_output_indicator, align 4
  %tobool23 = icmp ne i32 %21, 0
  br i1 %tobool23, label %lor.lhs.false.24, label %if.then.55

lor.lhs.false.24:                                 ; preds = %land.lhs.true.22, %if.then.20
  %22 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp2_frame_indicator25 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %22, i32 0, i32 54
  %23 = load i32, i32* %sp2_frame_indicator25, align 4
  %tobool26 = icmp ne i32 %23, 0
  br i1 %tobool26, label %land.lhs.true.30, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.24
  %24 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp_output_indicator28 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %24, i32 0, i32 55
  %25 = load i32, i32* %sp_output_indicator28, align 4
  %tobool29 = icmp ne i32 %25, 0
  br i1 %tobool29, label %land.lhs.true.30, label %lor.lhs.false.37

land.lhs.true.30:                                 ; preds = %lor.lhs.false.27, %lor.lhs.false.24
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 5
  %27 = load i32, i32* %type, align 4
  %cmp31 = icmp ne i32 %27, 0
  br i1 %cmp31, label %land.lhs.true.33, label %lor.lhs.false.37

land.lhs.true.33:                                 ; preds = %land.lhs.true.30
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type34 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 5
  %29 = load i32, i32* %type34, align 4
  %cmp35 = icmp ne i32 %29, 3
  br i1 %cmp35, label %if.then.55, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %land.lhs.true.33, %land.lhs.true.30, %lor.lhs.false.27
  %30 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp2_frame_indicator38 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %30, i32 0, i32 54
  %31 = load i32, i32* %sp2_frame_indicator38, align 4
  %tobool39 = icmp ne i32 %31, 0
  br i1 %tobool39, label %land.lhs.true.43, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false.37
  %32 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp_output_indicator41 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %32, i32 0, i32 55
  %33 = load i32, i32* %sp_output_indicator41, align 4
  %tobool42 = icmp ne i32 %33, 0
  br i1 %tobool42, label %land.lhs.true.43, label %if.end.97

land.lhs.true.43:                                 ; preds = %lor.lhs.false.40, %lor.lhs.false.37
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type44 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 5
  %35 = load i32, i32* %type44, align 4
  %cmp45 = icmp eq i32 %35, 0
  br i1 %cmp45, label %land.lhs.true.51, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %land.lhs.true.43
  %36 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type48 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %36, i32 0, i32 5
  %37 = load i32, i32* %type48, align 4
  %cmp49 = icmp eq i32 %37, 3
  br i1 %cmp49, label %land.lhs.true.51, label %if.end.97

land.lhs.true.51:                                 ; preds = %lor.lhs.false.47, %land.lhs.true.43
  %38 = load i16, i16* %ref, align 2
  %conv52 = sext i16 %38 to i32
  %cmp53 = icmp eq i32 %conv52, 0
  br i1 %cmp53, label %if.then.55, label %if.end.97

if.then.55:                                       ; preds = %land.lhs.true.51, %land.lhs.true.33, %land.lhs.true.22
  %39 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %39, i32 0, i32 113
  %40 = load i32, i32* %rdopt, align 4
  %tobool56 = icmp ne i32 %40, 0
  br i1 %tobool56, label %cond.true.57, label %cond.false.69

cond.true.57:                                     ; preds = %if.then.55
  %lambda_mf = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 2
  %arrayidx58 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf, i32 0, i64 2
  %41 = load i32, i32* %arrayidx58, align 4
  %42 = load i32, i32* %cur_list, align 4
  %idxprom59 = sext i32 %42 to i64
  %arrayidx60 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom59
  %43 = load i32, i32* %arrayidx60, align 4
  %cmp61 = icmp sle i32 %43, 1
  br i1 %cmp61, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %cond.true.57
  br label %cond.end.67

cond.false.64:                                    ; preds = %cond.true.57
  %44 = load i16, i16* %ref, align 2
  %idxprom65 = sext i16 %44 to i64
  %45 = load i32*, i32** @refbits, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %45, i64 %idxprom65
  %46 = load i32, i32* %arrayidx66, align 4
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.64, %cond.true.63
  %cond68 = phi i32 [ 0, %cond.true.63 ], [ %46, %cond.false.64 ]
  %mul = mul nsw i32 %41, %cond68
  %shr = ashr i32 %mul, 16
  br label %cond.end.77

cond.false.69:                                    ; preds = %if.then.55
  %lambda_me = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [3 x double], [3 x double]* %lambda_me, i32 0, i64 2
  %47 = load double, double* %arrayidx70, align 8
  %mul71 = fmul double 2.000000e+00, %47
  %48 = load i16, i16* %ref, align 2
  %conv72 = sext i16 %48 to i32
  %call73 = call i32 @imin(i32 %conv72, i32 1)
  %conv74 = sitofp i32 %call73 to double
  %mul75 = fmul double %mul71, %conv74
  %conv76 = fptosi double %mul75 to i32
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.69, %cond.end.67
  %cond78 = phi i32 [ %shr, %cond.end.67 ], [ %conv76, %cond.false.69 ]
  store i32 %cond78, i32* %mcost, align 4
  %49 = load i32, i32* %block.addr, align 4
  %idxprom79 = sext i32 %49 to i64
  %50 = load i16, i16* %ref, align 2
  %idxprom80 = sext i16 %50 to i64
  %51 = load i32, i32* %list.addr, align 4
  %idxprom81 = sext i32 %51 to i64
  %52 = load i32, i32* %mode.addr, align 4
  %idxprom82 = sext i32 %52 to i64
  %53 = load i32****, i32***** @motion_cost, align 8
  %arrayidx83 = getelementptr inbounds i32***, i32**** %53, i64 %idxprom82
  %54 = load i32***, i32**** %arrayidx83, align 8
  %arrayidx84 = getelementptr inbounds i32**, i32*** %54, i64 %idxprom81
  %55 = load i32**, i32*** %arrayidx84, align 8
  %arrayidx85 = getelementptr inbounds i32*, i32** %55, i64 %idxprom80
  %56 = load i32*, i32** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %56, i64 %idxprom79
  %57 = load i32, i32* %arrayidx86, align 4
  %58 = load i32, i32* %mcost, align 4
  %add = add nsw i32 %58, %57
  store i32 %add, i32* %mcost, align 4
  %59 = load i32, i32* %mcost, align 4
  %60 = load i32, i32* %list.addr, align 4
  %idxprom87 = sext i32 %60 to i64
  %61 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %61, i64 %idxprom87
  %62 = load i32, i32* %arrayidx88, align 4
  %cmp89 = icmp slt i32 %59, %62
  br i1 %cmp89, label %if.then.91, label %if.end

if.then.91:                                       ; preds = %cond.end.77
  %63 = load i32, i32* %mcost, align 4
  %64 = load i32, i32* %list.addr, align 4
  %idxprom92 = sext i32 %64 to i64
  %65 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %65, i64 %idxprom92
  store i32 %63, i32* %arrayidx93, align 4
  %66 = load i16, i16* %ref, align 2
  %conv94 = trunc i16 %66 to i8
  %67 = load i32, i32* %list.addr, align 4
  %idxprom95 = sext i32 %67 to i64
  %68 = load i8*, i8** %best_ref.addr, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %68, i64 %idxprom95
  store i8 %conv94, i8* %arrayidx96, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.91, %cond.end.77
  br label %if.end.97

if.end.97:                                        ; preds = %if.end, %land.lhs.true.51, %lor.lhs.false.47, %lor.lhs.false.40
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %land.lhs.true, %lor.lhs.false.16
  br label %for.inc

for.inc:                                          ; preds = %if.end.98
  %69 = load i16, i16* %ref, align 2
  %inc = add i16 %69, 1
  store i16 %inc, i16* %ref, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.321

if.else:                                          ; preds = %cond.end
  %70 = load i32, i32* %list.addr, align 4
  %cmp99 = icmp eq i32 %70, 2
  br i1 %cmp99, label %if.then.101, label %if.else.272

if.then.101:                                      ; preds = %if.else
  %71 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %71, i32 0, i32 20
  %72 = load i32, i32* %weighted_bipred_idc, align 4
  %cmp102 = icmp eq i32 %72, 1
  br i1 %cmp102, label %if.then.104, label %if.else.203

if.then.104:                                      ; preds = %if.then.101
  %73 = load i8*, i8** %best_ref.addr, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %73, i64 1
  %74 = load i8, i8* %arrayidx105, align 1
  %conv106 = sext i8 %74 to i32
  %idxprom107 = sext i32 %conv106 to i64
  %75 = load i8*, i8** %best_ref.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %75, i64 0
  %76 = load i8, i8* %arrayidx108, align 1
  %conv109 = sext i8 %76 to i32
  %idxprom110 = sext i32 %conv109 to i64
  %77 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx111 = getelementptr inbounds i32***, i32**** %77, i64 0
  %78 = load i32***, i32**** %arrayidx111, align 8
  %arrayidx112 = getelementptr inbounds i32**, i32*** %78, i64 %idxprom110
  %79 = load i32**, i32*** %arrayidx112, align 8
  %arrayidx113 = getelementptr inbounds i32*, i32** %79, i64 %idxprom107
  %80 = load i32*, i32** %arrayidx113, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %80, i64 0
  %81 = load i32, i32* %arrayidx114, align 4
  %82 = load i8*, i8** %best_ref.addr, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %82, i64 1
  %83 = load i8, i8* %arrayidx115, align 1
  %conv116 = sext i8 %83 to i32
  %idxprom117 = sext i32 %conv116 to i64
  %84 = load i8*, i8** %best_ref.addr, align 8
  %arrayidx118 = getelementptr inbounds i8, i8* %84, i64 0
  %85 = load i8, i8* %arrayidx118, align 1
  %conv119 = sext i8 %85 to i32
  %idxprom120 = sext i32 %conv119 to i64
  %86 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx121 = getelementptr inbounds i32***, i32**** %86, i64 1
  %87 = load i32***, i32**** %arrayidx121, align 8
  %arrayidx122 = getelementptr inbounds i32**, i32*** %87, i64 %idxprom120
  %88 = load i32**, i32*** %arrayidx122, align 8
  %arrayidx123 = getelementptr inbounds i32*, i32** %88, i64 %idxprom117
  %89 = load i32*, i32** %arrayidx123, align 8
  %arrayidx124 = getelementptr inbounds i32, i32* %89, i64 0
  %90 = load i32, i32* %arrayidx124, align 4
  %add125 = add nsw i32 %81, %90
  store i32 %add125, i32* %weight_sum, align 4
  %91 = load i32, i32* %weight_sum, align 4
  %cmp126 = icmp slt i32 %91, -128
  br i1 %cmp126, label %if.then.131, label %lor.lhs.false.128

lor.lhs.false.128:                                ; preds = %if.then.104
  %92 = load i32, i32* %weight_sum, align 4
  %cmp129 = icmp sgt i32 %92, 127
  br i1 %cmp129, label %if.then.131, label %if.else.134

if.then.131:                                      ; preds = %lor.lhs.false.128, %if.then.104
  %93 = load i32, i32* %list.addr, align 4
  %idxprom132 = sext i32 %93 to i64
  %94 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx133 = getelementptr inbounds i32, i32* %94, i64 %idxprom132
  store i32 2147483647, i32* %arrayidx133, align 4
  br label %if.end.202

if.else.134:                                      ; preds = %lor.lhs.false.128
  %95 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt135 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %95, i32 0, i32 113
  %96 = load i32, i32* %rdopt135, align 4
  %tobool136 = icmp ne i32 %96, 0
  br i1 %tobool136, label %cond.true.137, label %cond.false.172

cond.true.137:                                    ; preds = %if.else.134
  %lambda_mf138 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 2
  %arrayidx139 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf138, i32 0, i64 2
  %97 = load i32, i32* %arrayidx139, align 4
  %98 = load i32, i32* %cur_list, align 4
  %idxprom140 = sext i32 %98 to i64
  %arrayidx141 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom140
  %99 = load i32, i32* %arrayidx141, align 4
  %cmp142 = icmp sle i32 %99, 1
  br i1 %cmp142, label %cond.true.144, label %cond.false.145

cond.true.144:                                    ; preds = %cond.true.137
  br label %cond.end.150

cond.false.145:                                   ; preds = %cond.true.137
  %100 = load i8*, i8** %best_ref.addr, align 8
  %arrayidx146 = getelementptr inbounds i8, i8* %100, i64 0
  %101 = load i8, i8* %arrayidx146, align 1
  %conv147 = sext i8 %101 to i16
  %idxprom148 = sext i16 %conv147 to i64
  %102 = load i32*, i32** @refbits, align 8
  %arrayidx149 = getelementptr inbounds i32, i32* %102, i64 %idxprom148
  %103 = load i32, i32* %arrayidx149, align 4
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.false.145, %cond.true.144
  %cond151 = phi i32 [ 0, %cond.true.144 ], [ %103, %cond.false.145 ]
  %mul152 = mul nsw i32 %97, %cond151
  %shr153 = ashr i32 %mul152, 16
  %lambda_mf154 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 2
  %arrayidx155 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf154, i32 0, i64 2
  %104 = load i32, i32* %arrayidx155, align 4
  %105 = load i32, i32* %cur_list, align 4
  %add156 = add nsw i32 %105, 1
  %idxprom157 = sext i32 %add156 to i64
  %arrayidx158 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom157
  %106 = load i32, i32* %arrayidx158, align 4
  %cmp159 = icmp sle i32 %106, 1
  br i1 %cmp159, label %cond.true.161, label %cond.false.162

cond.true.161:                                    ; preds = %cond.end.150
  br label %cond.end.167

cond.false.162:                                   ; preds = %cond.end.150
  %107 = load i8*, i8** %best_ref.addr, align 8
  %arrayidx163 = getelementptr inbounds i8, i8* %107, i64 1
  %108 = load i8, i8* %arrayidx163, align 1
  %conv164 = sext i8 %108 to i16
  %idxprom165 = sext i16 %conv164 to i64
  %109 = load i32*, i32** @refbits, align 8
  %arrayidx166 = getelementptr inbounds i32, i32* %109, i64 %idxprom165
  %110 = load i32, i32* %arrayidx166, align 4
  br label %cond.end.167

cond.end.167:                                     ; preds = %cond.false.162, %cond.true.161
  %cond168 = phi i32 [ 0, %cond.true.161 ], [ %110, %cond.false.162 ]
  %mul169 = mul nsw i32 %104, %cond168
  %shr170 = ashr i32 %mul169, 16
  %add171 = add nsw i32 %shr153, %shr170
  br label %cond.end.188

cond.false.172:                                   ; preds = %if.else.134
  %lambda_me173 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 1
  %arrayidx174 = getelementptr inbounds [3 x double], [3 x double]* %lambda_me173, i32 0, i64 2
  %111 = load double, double* %arrayidx174, align 8
  %112 = load i8*, i8** %best_ref.addr, align 8
  %arrayidx175 = getelementptr inbounds i8, i8* %112, i64 0
  %113 = load i8, i8* %arrayidx175, align 1
  %conv176 = sext i8 %113 to i16
  %conv177 = sext i16 %conv176 to i32
  %call178 = call i32 @imin(i32 %conv177, i32 1)
  %114 = load i8*, i8** %best_ref.addr, align 8
  %arrayidx179 = getelementptr inbounds i8, i8* %114, i64 1
  %115 = load i8, i8* %arrayidx179, align 1
  %conv180 = sext i8 %115 to i16
  %conv181 = sext i16 %conv180 to i32
  %call182 = call i32 @imin(i32 %conv181, i32 1)
  %add183 = add nsw i32 %call178, %call182
  %conv184 = sitofp i32 %add183 to double
  %mul185 = fmul double %111, %conv184
  %mul186 = fmul double 2.000000e+00, %mul185
  %conv187 = fptosi double %mul186 to i32
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.172, %cond.end.167
  %cond189 = phi i32 [ %add171, %cond.end.167 ], [ %conv187, %cond.false.172 ]
  %116 = load i32, i32* %list.addr, align 4
  %idxprom190 = sext i32 %116 to i64
  %117 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx191 = getelementptr inbounds i32, i32* %117, i64 %idxprom190
  store i32 %cond189, i32* %arrayidx191, align 4
  %118 = load i32, i32* %mode.addr, align 4
  %119 = load i32, i32* %block.addr, align 4
  %120 = load i8*, i8** %best_ref.addr, align 8
  %arrayidx192 = getelementptr inbounds i8, i8* %120, i64 0
  %121 = load i8, i8* %arrayidx192, align 1
  %conv193 = sext i8 %121 to i16
  %122 = load i8*, i8** %best_ref.addr, align 8
  %arrayidx194 = getelementptr inbounds i8, i8* %122, i64 1
  %123 = load i8, i8* %arrayidx194, align 1
  %conv195 = sext i8 %123 to i16
  %lambda_mf196 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 2
  %arrayidx197 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf196, i32 0, i64 2
  %124 = load i32, i32* %arrayidx197, align 4
  %call198 = call i32 @BIDPartitionCost(i32 %118, i32 %119, i16 signext %conv193, i16 signext %conv195, i32 %124)
  %125 = load i32, i32* %list.addr, align 4
  %idxprom199 = sext i32 %125 to i64
  %126 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx200 = getelementptr inbounds i32, i32* %126, i64 %idxprom199
  %127 = load i32, i32* %arrayidx200, align 4
  %add201 = add nsw i32 %127, %call198
  store i32 %add201, i32* %arrayidx200, align 4
  br label %if.end.202

if.end.202:                                       ; preds = %cond.end.188, %if.then.131
  br label %if.end.271

if.else.203:                                      ; preds = %if.then.101
  %128 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt204 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %128, i32 0, i32 113
  %129 = load i32, i32* %rdopt204, align 4
  %tobool205 = icmp ne i32 %129, 0
  br i1 %tobool205, label %cond.true.206, label %cond.false.241

cond.true.206:                                    ; preds = %if.else.203
  %lambda_mf207 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 2
  %arrayidx208 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf207, i32 0, i64 2
  %130 = load i32, i32* %arrayidx208, align 4
  %131 = load i32, i32* %cur_list, align 4
  %idxprom209 = sext i32 %131 to i64
  %arrayidx210 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom209
  %132 = load i32, i32* %arrayidx210, align 4
  %cmp211 = icmp sle i32 %132, 1
  br i1 %cmp211, label %cond.true.213, label %cond.false.214

cond.true.213:                                    ; preds = %cond.true.206
  br label %cond.end.219

cond.false.214:                                   ; preds = %cond.true.206
  %133 = load i8*, i8** %best_ref.addr, align 8
  %arrayidx215 = getelementptr inbounds i8, i8* %133, i64 0
  %134 = load i8, i8* %arrayidx215, align 1
  %conv216 = sext i8 %134 to i16
  %idxprom217 = sext i16 %conv216 to i64
  %135 = load i32*, i32** @refbits, align 8
  %arrayidx218 = getelementptr inbounds i32, i32* %135, i64 %idxprom217
  %136 = load i32, i32* %arrayidx218, align 4
  br label %cond.end.219

cond.end.219:                                     ; preds = %cond.false.214, %cond.true.213
  %cond220 = phi i32 [ 0, %cond.true.213 ], [ %136, %cond.false.214 ]
  %mul221 = mul nsw i32 %130, %cond220
  %shr222 = ashr i32 %mul221, 16
  %lambda_mf223 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 2
  %arrayidx224 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf223, i32 0, i64 2
  %137 = load i32, i32* %arrayidx224, align 4
  %138 = load i32, i32* %cur_list, align 4
  %add225 = add nsw i32 %138, 1
  %idxprom226 = sext i32 %add225 to i64
  %arrayidx227 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom226
  %139 = load i32, i32* %arrayidx227, align 4
  %cmp228 = icmp sle i32 %139, 1
  br i1 %cmp228, label %cond.true.230, label %cond.false.231

cond.true.230:                                    ; preds = %cond.end.219
  br label %cond.end.236

cond.false.231:                                   ; preds = %cond.end.219
  %140 = load i8*, i8** %best_ref.addr, align 8
  %arrayidx232 = getelementptr inbounds i8, i8* %140, i64 1
  %141 = load i8, i8* %arrayidx232, align 1
  %conv233 = sext i8 %141 to i16
  %idxprom234 = sext i16 %conv233 to i64
  %142 = load i32*, i32** @refbits, align 8
  %arrayidx235 = getelementptr inbounds i32, i32* %142, i64 %idxprom234
  %143 = load i32, i32* %arrayidx235, align 4
  br label %cond.end.236

cond.end.236:                                     ; preds = %cond.false.231, %cond.true.230
  %cond237 = phi i32 [ 0, %cond.true.230 ], [ %143, %cond.false.231 ]
  %mul238 = mul nsw i32 %137, %cond237
  %shr239 = ashr i32 %mul238, 16
  %add240 = add nsw i32 %shr222, %shr239
  br label %cond.end.257

cond.false.241:                                   ; preds = %if.else.203
  %lambda_me242 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 1
  %arrayidx243 = getelementptr inbounds [3 x double], [3 x double]* %lambda_me242, i32 0, i64 2
  %144 = load double, double* %arrayidx243, align 8
  %145 = load i8*, i8** %best_ref.addr, align 8
  %arrayidx244 = getelementptr inbounds i8, i8* %145, i64 0
  %146 = load i8, i8* %arrayidx244, align 1
  %conv245 = sext i8 %146 to i16
  %conv246 = sext i16 %conv245 to i32
  %call247 = call i32 @imin(i32 %conv246, i32 1)
  %147 = load i8*, i8** %best_ref.addr, align 8
  %arrayidx248 = getelementptr inbounds i8, i8* %147, i64 1
  %148 = load i8, i8* %arrayidx248, align 1
  %conv249 = sext i8 %148 to i16
  %conv250 = sext i16 %conv249 to i32
  %call251 = call i32 @imin(i32 %conv250, i32 1)
  %add252 = add nsw i32 %call247, %call251
  %conv253 = sitofp i32 %add252 to double
  %mul254 = fmul double %144, %conv253
  %mul255 = fmul double 2.000000e+00, %mul254
  %conv256 = fptosi double %mul255 to i32
  br label %cond.end.257

cond.end.257:                                     ; preds = %cond.false.241, %cond.end.236
  %cond258 = phi i32 [ %add240, %cond.end.236 ], [ %conv256, %cond.false.241 ]
  %149 = load i32, i32* %list.addr, align 4
  %idxprom259 = sext i32 %149 to i64
  %150 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx260 = getelementptr inbounds i32, i32* %150, i64 %idxprom259
  store i32 %cond258, i32* %arrayidx260, align 4
  %151 = load i32, i32* %mode.addr, align 4
  %152 = load i32, i32* %block.addr, align 4
  %153 = load i8*, i8** %best_ref.addr, align 8
  %arrayidx261 = getelementptr inbounds i8, i8* %153, i64 0
  %154 = load i8, i8* %arrayidx261, align 1
  %conv262 = sext i8 %154 to i16
  %155 = load i8*, i8** %best_ref.addr, align 8
  %arrayidx263 = getelementptr inbounds i8, i8* %155, i64 1
  %156 = load i8, i8* %arrayidx263, align 1
  %conv264 = sext i8 %156 to i16
  %lambda_mf265 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 2
  %arrayidx266 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf265, i32 0, i64 2
  %157 = load i32, i32* %arrayidx266, align 4
  %call267 = call i32 @BIDPartitionCost(i32 %151, i32 %152, i16 signext %conv262, i16 signext %conv264, i32 %157)
  %158 = load i32, i32* %list.addr, align 4
  %idxprom268 = sext i32 %158 to i64
  %159 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx269 = getelementptr inbounds i32, i32* %159, i64 %idxprom268
  %160 = load i32, i32* %arrayidx269, align 4
  %add270 = add nsw i32 %160, %call267
  store i32 %add270, i32* %arrayidx269, align 4
  br label %if.end.271

if.end.271:                                       ; preds = %cond.end.257, %if.end.202
  br label %if.end.320

if.else.272:                                      ; preds = %if.else
  %161 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt273 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %161, i32 0, i32 113
  %162 = load i32, i32* %rdopt273, align 4
  %tobool274 = icmp ne i32 %162, 0
  br i1 %tobool274, label %cond.true.275, label %cond.false.304

cond.true.275:                                    ; preds = %if.else.272
  %lambda_mf276 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 2
  %arrayidx277 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf276, i32 0, i64 2
  %163 = load i32, i32* %arrayidx277, align 4
  %164 = load i32, i32* %cur_list, align 4
  %idxprom278 = sext i32 %164 to i64
  %arrayidx279 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom278
  %165 = load i32, i32* %arrayidx279, align 4
  %cmp280 = icmp sle i32 %165, 1
  br i1 %cmp280, label %cond.true.282, label %cond.false.283

cond.true.282:                                    ; preds = %cond.true.275
  br label %cond.end.285

cond.false.283:                                   ; preds = %cond.true.275
  %166 = load i32*, i32** @refbits, align 8
  %arrayidx284 = getelementptr inbounds i32, i32* %166, i64 0
  %167 = load i32, i32* %arrayidx284, align 4
  br label %cond.end.285

cond.end.285:                                     ; preds = %cond.false.283, %cond.true.282
  %cond286 = phi i32 [ 0, %cond.true.282 ], [ %167, %cond.false.283 ]
  %mul287 = mul nsw i32 %163, %cond286
  %shr288 = ashr i32 %mul287, 16
  %lambda_mf289 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 2
  %arrayidx290 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf289, i32 0, i64 2
  %168 = load i32, i32* %arrayidx290, align 4
  %169 = load i32, i32* %cur_list, align 4
  %add291 = add nsw i32 %169, 1
  %idxprom292 = sext i32 %add291 to i64
  %arrayidx293 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom292
  %170 = load i32, i32* %arrayidx293, align 4
  %cmp294 = icmp sle i32 %170, 1
  br i1 %cmp294, label %cond.true.296, label %cond.false.297

cond.true.296:                                    ; preds = %cond.end.285
  br label %cond.end.299

cond.false.297:                                   ; preds = %cond.end.285
  %171 = load i32*, i32** @refbits, align 8
  %arrayidx298 = getelementptr inbounds i32, i32* %171, i64 0
  %172 = load i32, i32* %arrayidx298, align 4
  br label %cond.end.299

cond.end.299:                                     ; preds = %cond.false.297, %cond.true.296
  %cond300 = phi i32 [ 0, %cond.true.296 ], [ %172, %cond.false.297 ]
  %mul301 = mul nsw i32 %168, %cond300
  %shr302 = ashr i32 %mul301, 16
  %add303 = add nsw i32 %shr288, %shr302
  br label %cond.end.309

cond.false.304:                                   ; preds = %if.else.272
  %lambda_me305 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 1
  %arrayidx306 = getelementptr inbounds [3 x double], [3 x double]* %lambda_me305, i32 0, i64 2
  %173 = load double, double* %arrayidx306, align 8
  %mul307 = fmul double 4.000000e+00, %173
  %conv308 = fptosi double %mul307 to i32
  br label %cond.end.309

cond.end.309:                                     ; preds = %cond.false.304, %cond.end.299
  %cond310 = phi i32 [ %add303, %cond.end.299 ], [ %conv308, %cond.false.304 ]
  %174 = load i32, i32* %list.addr, align 4
  %idxprom311 = sext i32 %174 to i64
  %175 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx312 = getelementptr inbounds i32, i32* %175, i64 %idxprom311
  store i32 %cond310, i32* %arrayidx312, align 4
  %176 = load i32, i32* %mode.addr, align 4
  %177 = load i32, i32* %block.addr, align 4
  %lambda_mf313 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 2
  %arrayidx314 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf313, i32 0, i64 2
  %178 = load i32, i32* %arrayidx314, align 4
  %179 = load i32, i32* %list.addr, align 4
  %and = and i32 %179, 1
  %tobool315 = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool315, true
  %lnot.ext = zext i1 %lnot to i32
  %call316 = call i32 @BPredPartitionCost(i32 %176, i32 %177, i16 signext 0, i16 signext 0, i32 %178, i32 %lnot.ext)
  %180 = load i32, i32* %list.addr, align 4
  %idxprom317 = sext i32 %180 to i64
  %181 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx318 = getelementptr inbounds i32, i32* %181, i64 %idxprom317
  %182 = load i32, i32* %arrayidx318, align 4
  %add319 = add nsw i32 %182, %call316
  store i32 %add319, i32* %arrayidx318, align 4
  br label %if.end.320

if.end.320:                                       ; preds = %cond.end.309, %if.end.271
  br label %if.end.321

if.end.321:                                       ; preds = %if.end.320, %for.end
  ret void
}

declare i32 @CheckReliabilityOfRef(i32, i32, i32, i32) #2

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

declare i32 @BIDPartitionCost(i32, i32, i16 signext, i16 signext, i32) #2

declare i32 @BPredPartitionCost(i32, i32, i16 signext, i16 signext, i32, i32) #2

; Function Attrs: nounwind uwtable
define i32 @compute_ref_cost(%struct.RD_PARAMS* byval align 8 %enc_mb, i32 %ref, i32 %list) #0 {
entry:
  %ref.addr = alloca i32, align 4
  %list.addr = alloca i32, align 4
  store i32 %ref, i32* %ref.addr, align 4
  store i32 %list, i32* %list.addr, align 4
  %lambda_mf = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf, i32 0, i64 2
  %0 = load i32, i32* %arrayidx, align 4
  %1 = load i32, i32* %list.addr, align 4
  %idxprom = sext i32 %1 to i64
  %list_offset = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 4
  %arrayidx1 = getelementptr inbounds [2 x i16], [2 x i16]* %list_offset, i32 0, i64 %idxprom
  %2 = load i16, i16* %arrayidx1, align 2
  %idxprom2 = sext i16 %2 to i64
  %arrayidx3 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom2
  %3 = load i32, i32* %arrayidx3, align 4
  %cmp = icmp sle i32 %3, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %ref.addr, align 4
  %idxprom4 = sext i32 %4 to i64
  %5 = load i32*, i32** @refbits, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %5, i64 %idxprom4
  %6 = load i32, i32* %arrayidx5, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %6, %cond.false ]
  %mul = mul nsw i32 %0, %cond
  %shr = ashr i32 %mul, 16
  ret i32 %shr
}

; Function Attrs: nounwind uwtable
define void @determine_prediction_list(i32 %mode, i32* %bmcost, i8* %best_ref, i8* %best_pdir, i32* %cost, i16* %bi_pred_me) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %bmcost.addr = alloca i32*, align 8
  %best_ref.addr = alloca i8*, align 8
  %best_pdir.addr = alloca i8*, align 8
  %cost.addr = alloca i32*, align 8
  %bi_pred_me.addr = alloca i16*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32* %bmcost, i32** %bmcost.addr, align 8
  store i8* %best_ref, i8** %best_ref.addr, align 8
  store i8* %best_pdir, i8** %best_pdir.addr, align 8
  store i32* %cost, i32** %cost.addr, align 8
  store i16* %bi_pred_me, i16** %bi_pred_me.addr, align 8
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 46
  %1 = load i32, i32* %BiPredMotionEstimation, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %mode.addr, align 4
  %cmp = icmp ne i32 %2, 1
  br i1 %cmp, label %if.then, label %if.else.22

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 0
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %5, i64 1
  %6 = load i32, i32* %arrayidx1, align 4
  %cmp2 = icmp sle i32 %4, %6
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %7 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 0
  %8 = load i32, i32* %arrayidx3, align 4
  %9 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %9, i64 2
  %10 = load i32, i32* %arrayidx4, align 4
  %cmp5 = icmp sle i32 %8, %10
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true
  %11 = load i8*, i8** %best_pdir.addr, align 8
  store i8 0, i8* %11, align 1
  %12 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %12, i64 0
  %13 = load i32, i32* %arrayidx7, align 4
  %14 = load i32*, i32** %cost.addr, align 8
  %15 = load i32, i32* %14, align 4
  %add = add nsw i32 %15, %13
  store i32 %add, i32* %14, align 4
  br label %if.end.21

if.else:                                          ; preds = %land.lhs.true, %if.then
  %16 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %16, i64 1
  %17 = load i32, i32* %arrayidx8, align 4
  %18 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %18, i64 0
  %19 = load i32, i32* %arrayidx9, align 4
  %cmp10 = icmp sle i32 %17, %19
  br i1 %cmp10, label %land.lhs.true.11, label %if.else.18

land.lhs.true.11:                                 ; preds = %if.else
  %20 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %20, i64 1
  %21 = load i32, i32* %arrayidx12, align 4
  %22 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %22, i64 2
  %23 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp sle i32 %21, %23
  br i1 %cmp14, label %if.then.15, label %if.else.18

if.then.15:                                       ; preds = %land.lhs.true.11
  %24 = load i8*, i8** %best_pdir.addr, align 8
  store i8 1, i8* %24, align 1
  %25 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %25, i64 1
  %26 = load i32, i32* %arrayidx16, align 4
  %27 = load i32*, i32** %cost.addr, align 8
  %28 = load i32, i32* %27, align 4
  %add17 = add nsw i32 %28, %26
  store i32 %add17, i32* %27, align 4
  br label %if.end

if.else.18:                                       ; preds = %land.lhs.true.11, %if.else
  %29 = load i8*, i8** %best_pdir.addr, align 8
  store i8 2, i8* %29, align 1
  %30 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %30, i64 2
  %31 = load i32, i32* %arrayidx19, align 4
  %32 = load i32*, i32** %cost.addr, align 8
  %33 = load i32, i32* %32, align 4
  %add20 = add nsw i32 %33, %31
  store i32 %add20, i32* %32, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.18, %if.then.15
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %if.then.6
  br label %if.end.117

if.else.22:                                       ; preds = %lor.lhs.false
  %34 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %34 to i64
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me23 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 83
  %arrayidx24 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me23, i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx24, align 2
  %36 = load i16*, i16** %bi_pred_me.addr, align 8
  store i16 0, i16* %36, align 2
  %37 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %37, i64 0
  %38 = load i32, i32* %arrayidx25, align 4
  %39 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %39, i64 1
  %40 = load i32, i32* %arrayidx26, align 4
  %cmp27 = icmp sle i32 %38, %40
  br i1 %cmp27, label %land.lhs.true.28, label %if.else.43

land.lhs.true.28:                                 ; preds = %if.else.22
  %41 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %41, i64 0
  %42 = load i32, i32* %arrayidx29, align 4
  %43 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %43, i64 2
  %44 = load i32, i32* %arrayidx30, align 4
  %cmp31 = icmp sle i32 %42, %44
  br i1 %cmp31, label %land.lhs.true.32, label %if.else.43

land.lhs.true.32:                                 ; preds = %land.lhs.true.28
  %45 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %45, i64 0
  %46 = load i32, i32* %arrayidx33, align 4
  %47 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %47, i64 3
  %48 = load i32, i32* %arrayidx34, align 4
  %cmp35 = icmp sle i32 %46, %48
  br i1 %cmp35, label %land.lhs.true.36, label %if.else.43

land.lhs.true.36:                                 ; preds = %land.lhs.true.32
  %49 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %49, i64 0
  %50 = load i32, i32* %arrayidx37, align 4
  %51 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %51, i64 4
  %52 = load i32, i32* %arrayidx38, align 4
  %cmp39 = icmp sle i32 %50, %52
  br i1 %cmp39, label %if.then.40, label %if.else.43

if.then.40:                                       ; preds = %land.lhs.true.36
  %53 = load i8*, i8** %best_pdir.addr, align 8
  store i8 0, i8* %53, align 1
  %54 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %54, i64 0
  %55 = load i32, i32* %arrayidx41, align 4
  %56 = load i32*, i32** %cost.addr, align 8
  %57 = load i32, i32* %56, align 4
  %add42 = add nsw i32 %57, %55
  store i32 %add42, i32* %56, align 4
  br label %if.end.116

if.else.43:                                       ; preds = %land.lhs.true.36, %land.lhs.true.32, %land.lhs.true.28, %if.else.22
  %58 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %58, i64 1
  %59 = load i32, i32* %arrayidx44, align 4
  %60 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %60, i64 0
  %61 = load i32, i32* %arrayidx45, align 4
  %cmp46 = icmp sle i32 %59, %61
  br i1 %cmp46, label %land.lhs.true.47, label %if.else.62

land.lhs.true.47:                                 ; preds = %if.else.43
  %62 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %62, i64 1
  %63 = load i32, i32* %arrayidx48, align 4
  %64 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %64, i64 2
  %65 = load i32, i32* %arrayidx49, align 4
  %cmp50 = icmp sle i32 %63, %65
  br i1 %cmp50, label %land.lhs.true.51, label %if.else.62

land.lhs.true.51:                                 ; preds = %land.lhs.true.47
  %66 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %66, i64 1
  %67 = load i32, i32* %arrayidx52, align 4
  %68 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %68, i64 3
  %69 = load i32, i32* %arrayidx53, align 4
  %cmp54 = icmp sle i32 %67, %69
  br i1 %cmp54, label %land.lhs.true.55, label %if.else.62

land.lhs.true.55:                                 ; preds = %land.lhs.true.51
  %70 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %70, i64 1
  %71 = load i32, i32* %arrayidx56, align 4
  %72 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %72, i64 4
  %73 = load i32, i32* %arrayidx57, align 4
  %cmp58 = icmp sle i32 %71, %73
  br i1 %cmp58, label %if.then.59, label %if.else.62

if.then.59:                                       ; preds = %land.lhs.true.55
  %74 = load i8*, i8** %best_pdir.addr, align 8
  store i8 1, i8* %74, align 1
  %75 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %75, i64 1
  %76 = load i32, i32* %arrayidx60, align 4
  %77 = load i32*, i32** %cost.addr, align 8
  %78 = load i32, i32* %77, align 4
  %add61 = add nsw i32 %78, %76
  store i32 %add61, i32* %77, align 4
  br label %if.end.115

if.else.62:                                       ; preds = %land.lhs.true.55, %land.lhs.true.51, %land.lhs.true.47, %if.else.43
  %79 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %79, i64 2
  %80 = load i32, i32* %arrayidx63, align 4
  %81 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %81, i64 0
  %82 = load i32, i32* %arrayidx64, align 4
  %cmp65 = icmp sle i32 %80, %82
  br i1 %cmp65, label %land.lhs.true.66, label %if.else.81

land.lhs.true.66:                                 ; preds = %if.else.62
  %83 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %83, i64 2
  %84 = load i32, i32* %arrayidx67, align 4
  %85 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %85, i64 1
  %86 = load i32, i32* %arrayidx68, align 4
  %cmp69 = icmp sle i32 %84, %86
  br i1 %cmp69, label %land.lhs.true.70, label %if.else.81

land.lhs.true.70:                                 ; preds = %land.lhs.true.66
  %87 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %87, i64 2
  %88 = load i32, i32* %arrayidx71, align 4
  %89 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %89, i64 3
  %90 = load i32, i32* %arrayidx72, align 4
  %cmp73 = icmp sle i32 %88, %90
  br i1 %cmp73, label %land.lhs.true.74, label %if.else.81

land.lhs.true.74:                                 ; preds = %land.lhs.true.70
  %91 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %91, i64 2
  %92 = load i32, i32* %arrayidx75, align 4
  %93 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %93, i64 4
  %94 = load i32, i32* %arrayidx76, align 4
  %cmp77 = icmp sle i32 %92, %94
  br i1 %cmp77, label %if.then.78, label %if.else.81

if.then.78:                                       ; preds = %land.lhs.true.74
  %95 = load i8*, i8** %best_pdir.addr, align 8
  store i8 2, i8* %95, align 1
  %96 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %96, i64 2
  %97 = load i32, i32* %arrayidx79, align 4
  %98 = load i32*, i32** %cost.addr, align 8
  %99 = load i32, i32* %98, align 4
  %add80 = add nsw i32 %99, %97
  store i32 %add80, i32* %98, align 4
  br label %if.end.114

if.else.81:                                       ; preds = %land.lhs.true.74, %land.lhs.true.70, %land.lhs.true.66, %if.else.62
  %100 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %100, i64 3
  %101 = load i32, i32* %arrayidx82, align 4
  %102 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %102, i64 0
  %103 = load i32, i32* %arrayidx83, align 4
  %cmp84 = icmp sle i32 %101, %103
  br i1 %cmp84, label %land.lhs.true.85, label %if.else.105

land.lhs.true.85:                                 ; preds = %if.else.81
  %104 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %104, i64 3
  %105 = load i32, i32* %arrayidx86, align 4
  %106 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %106, i64 1
  %107 = load i32, i32* %arrayidx87, align 4
  %cmp88 = icmp sle i32 %105, %107
  br i1 %cmp88, label %land.lhs.true.89, label %if.else.105

land.lhs.true.89:                                 ; preds = %land.lhs.true.85
  %108 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %108, i64 3
  %109 = load i32, i32* %arrayidx90, align 4
  %110 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %110, i64 2
  %111 = load i32, i32* %arrayidx91, align 4
  %cmp92 = icmp sle i32 %109, %111
  br i1 %cmp92, label %land.lhs.true.93, label %if.else.105

land.lhs.true.93:                                 ; preds = %land.lhs.true.89
  %112 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %112, i64 3
  %113 = load i32, i32* %arrayidx94, align 4
  %114 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx95 = getelementptr inbounds i32, i32* %114, i64 4
  %115 = load i32, i32* %arrayidx95, align 4
  %cmp96 = icmp sle i32 %113, %115
  br i1 %cmp96, label %if.then.97, label %if.else.105

if.then.97:                                       ; preds = %land.lhs.true.93
  %116 = load i8*, i8** %best_pdir.addr, align 8
  store i8 2, i8* %116, align 1
  %117 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx98 = getelementptr inbounds i32, i32* %117, i64 3
  %118 = load i32, i32* %arrayidx98, align 4
  %119 = load i32*, i32** %cost.addr, align 8
  %120 = load i32, i32* %119, align 4
  %add99 = add nsw i32 %120, %118
  store i32 %add99, i32* %119, align 4
  %121 = load i16*, i16** %bi_pred_me.addr, align 8
  store i16 1, i16* %121, align 2
  %122 = load i32, i32* %mode.addr, align 4
  %idxprom100 = sext i32 %122 to i64
  %123 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me101 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %123, i32 0, i32 83
  %arrayidx102 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me101, i32 0, i64 %idxprom100
  store i16 1, i16* %arrayidx102, align 2
  %124 = load i8*, i8** %best_ref.addr, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %124, i64 1
  store i8 0, i8* %arrayidx103, align 1
  %125 = load i8*, i8** %best_ref.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %125, i64 0
  store i8 0, i8* %arrayidx104, align 1
  br label %if.end.113

if.else.105:                                      ; preds = %land.lhs.true.93, %land.lhs.true.89, %land.lhs.true.85, %if.else.81
  %126 = load i8*, i8** %best_pdir.addr, align 8
  store i8 2, i8* %126, align 1
  %127 = load i32*, i32** %bmcost.addr, align 8
  %arrayidx106 = getelementptr inbounds i32, i32* %127, i64 4
  %128 = load i32, i32* %arrayidx106, align 4
  %129 = load i32*, i32** %cost.addr, align 8
  %130 = load i32, i32* %129, align 4
  %add107 = add nsw i32 %130, %128
  store i32 %add107, i32* %129, align 4
  %131 = load i16*, i16** %bi_pred_me.addr, align 8
  store i16 2, i16* %131, align 2
  %132 = load i8*, i8** %best_ref.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %132, i64 1
  store i8 0, i8* %arrayidx108, align 1
  %133 = load i8*, i8** %best_ref.addr, align 8
  %arrayidx109 = getelementptr inbounds i8, i8* %133, i64 0
  store i8 0, i8* %arrayidx109, align 1
  %134 = load i32, i32* %mode.addr, align 4
  %idxprom110 = sext i32 %134 to i64
  %135 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me111 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %135, i32 0, i32 83
  %arrayidx112 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me111, i32 0, i64 %idxprom110
  store i16 2, i16* %arrayidx112, align 2
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.105, %if.then.97
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.then.78
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.then.59
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.then.40
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.end.21
  ret void
}

; Function Attrs: nounwind uwtable
define void @compute_mode_RD_cost(i32 %mode, %struct.macroblock* %currMB, %struct.RD_PARAMS* byval align 8 %enc_mb, double* %min_rdcost, double* %min_rate, i32 %i16mode, i16 signext %bslice, i16* %inter_skip) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %currMB.addr = alloca %struct.macroblock*, align 8
  %min_rdcost.addr = alloca double*, align 8
  %min_rate.addr = alloca double*, align 8
  %i16mode.addr = alloca i32, align 4
  %bslice.addr = alloca i16, align 2
  %inter_skip.addr = alloca i16*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.macroblock* %currMB, %struct.macroblock** %currMB.addr, align 8
  store double* %min_rdcost, double** %min_rdcost.addr, align 8
  store double* %min_rate, double** %min_rate.addr, align 8
  store i32 %i16mode, i32* %i16mode.addr, align 4
  store i16 %bslice, i16* %bslice.addr, align 2
  store i16* %inter_skip, i16** %inter_skip.addr, align 8
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 153
  %1 = load i32, i32* %Transform8x8Mode, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %mode.addr, align 4
  %cmp1 = icmp sge i32 %2, 1
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %cond.true
  %3 = load i32, i32* %mode.addr, align 4
  %cmp2 = icmp sle i32 %3, 3
  br i1 %cmp2, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %cond.true
  %4 = load i32, i32* %mode.addr, align 4
  %cmp3 = icmp eq i32 %4, 0
  br i1 %cmp3, label %land.lhs.true.4, label %lor.rhs

land.lhs.true.4:                                  ; preds = %lor.lhs.false
  %5 = load i16, i16* %bslice.addr, align 2
  %conv = sext i16 %5 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true.5, label %lor.rhs

land.lhs.true.5:                                  ; preds = %land.lhs.true.4
  %6 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %direct_8x8_inference_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %6, i32 0, i32 27
  %7 = load i32, i32* %direct_8x8_inference_flag, align 4
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.5, %land.lhs.true.4, %lor.lhs.false
  %8 = load i32, i32* %mode.addr, align 4
  %cmp7 = icmp eq i32 %8, 8
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %valid = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 3
  %arrayidx = getelementptr inbounds [15 x i16], [15 x i16]* %valid, i32 0, i64 4
  %9 = load i16, i16* %arrayidx, align 2
  %conv9 = sext i16 %9 to i32
  %tobool10 = icmp ne i32 %conv9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %10 = phi i1 [ false, %lor.rhs ], [ %tobool10, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true.5, %land.lhs.true
  %11 = phi i1 [ true, %land.lhs.true.5 ], [ true, %land.lhs.true ], [ %10, %land.end ]
  %lor.ext = zext i1 %11 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %lor.end
  %cond = phi i32 [ %lor.ext, %lor.end ], [ 0, %cond.false ]
  %12 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %12, i32 0, i32 31
  store i32 %cond, i32* %luma_transform_size_8x8_flag, align 4
  %13 = load i32, i32* %mode.addr, align 4
  call void @SetModesAndRefframeForBlocks(i32 %13)
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NoResidueDirect = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 97
  store i32 0, i32* %NoResidueDirect, align 4
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %FastCrIntraDecision = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 115
  %16 = load i32, i32* %FastCrIntraDecision, align 4
  %tobool11 = icmp ne i32 %16, 0
  br i1 %tobool11, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %cond.end
  %17 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %c_ipred_mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %17, i32 0, i32 17
  %18 = load i32, i32* %c_ipred_mode, align 4
  %cmp13 = icmp eq i32 %18, 0
  br i1 %cmp13, label %if.then, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.12
  %19 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %19, i32 0, i32 8
  %20 = load i32, i32* %mb_type, align 4
  %cmp16 = icmp eq i32 %20, 9
  br i1 %cmp16, label %if.then, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.15
  %21 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %mb_type19 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %21, i32 0, i32 8
  %22 = load i32, i32* %mb_type19, align 4
  %cmp20 = icmp eq i32 %22, 10
  br i1 %cmp20, label %if.then, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.18
  %23 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %mb_type23 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %23, i32 0, i32 8
  %24 = load i32, i32* %mb_type23, align 4
  %cmp24 = icmp eq i32 %24, 13
  br i1 %cmp24, label %if.then, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false.22
  %25 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %mb_type27 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %25, i32 0, i32 8
  %26 = load i32, i32* %mb_type27, align 4
  %cmp28 = icmp eq i32 %26, 14
  br i1 %cmp28, label %if.then, label %if.end.142

if.then:                                          ; preds = %lor.lhs.false.26, %lor.lhs.false.22, %lor.lhs.false.18, %lor.lhs.false.15, %lor.lhs.false.12, %cond.end
  br label %while.body

while.body:                                       ; preds = %if.then, %if.then.71, %if.then.86, %if.then.100
  %lambda_md = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 0
  %27 = load double, double* %lambda_md, align 8
  %28 = load i32, i32* %mode.addr, align 4
  %29 = load double*, double** %min_rdcost.addr, align 8
  %30 = load double*, double** %min_rate.addr, align 8
  %31 = load i32, i32* %i16mode.addr, align 4
  %call = call i32 @RDCost_for_macroblocks(double %27, i32 %28, double* %29, double* %30, i32 %31)
  %tobool30 = icmp ne i32 %call, 0
  br i1 %tobool30, label %if.then.31, label %if.end.57

if.then.31:                                       ; preds = %while.body
  %32 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %32, i32 0, i32 157
  %33 = load i32, i32* %RCEnable, align 4
  %tobool32 = icmp ne i32 %33, 0
  br i1 %tobool32, label %if.then.33, label %if.end.43

if.then.33:                                       ; preds = %if.then.31
  %34 = load i32, i32* %mode.addr, align 4
  %cmp34 = icmp eq i32 %34, 8
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %if.then.33
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 43
  %36 = load i32, i32* %opix_x, align 4
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 44
  %38 = load i32, i32* %opix_y, align 4
  %39 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %luma_transform_size_8x8_flag37 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %39, i32 0, i32 31
  %40 = load i32, i32* %luma_transform_size_8x8_flag37, align 4
  %cmp38 = icmp eq i32 %40, 1
  %cond40 = select i1 %cmp38, [16 x i16]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 10, i32 0), [16 x i16]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 10, i32 0)
  call void @rc_store_diff(i32 %36, i32 %38, [16 x i16]* %cond40)
  br label %if.end

if.else:                                          ; preds = %if.then.33
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x41 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 43
  %42 = load i32, i32* %opix_x41, align 4
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y42 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 44
  %44 = load i32, i32* %opix_y42, align 4
  call void @rc_store_diff(i32 %42, i32 %44, [16 x i16]* getelementptr inbounds ([16 x [16 x i16]], [16 x [16 x i16]]* @pred, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.36
  br label %if.end.43

if.end.43:                                        ; preds = %if.end, %if.then.31
  %45 = load i32, i32* %mode.addr, align 4
  call void @store_macroblock_parameters(i32 %45)
  %46 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %46, i32 0, i32 113
  %47 = load i32, i32* %rdopt, align 4
  %cmp44 = icmp eq i32 %47, 2
  br i1 %cmp44, label %land.lhs.true.46, label %if.end.56

land.lhs.true.46:                                 ; preds = %if.end.43
  %48 = load i32, i32* %mode.addr, align 4
  %cmp47 = icmp eq i32 %48, 0
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.56

land.lhs.true.49:                                 ; preds = %land.lhs.true.46
  %49 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EarlySkipEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %49, i32 0, i32 190
  %50 = load i32, i32* %EarlySkipEnable, align 4
  %tobool50 = icmp ne i32 %50, 0
  br i1 %tobool50, label %if.then.51, label %if.end.56

if.then.51:                                       ; preds = %land.lhs.true.49
  %51 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %51, i32 0, i32 12
  %52 = load i32, i32* %cbp, align 4
  %cmp52 = icmp eq i32 %52, 0
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.then.51
  %53 = load i16*, i16** %inter_skip.addr, align 8
  store i16 1, i16* %53, align 2
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.then.51
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %land.lhs.true.49, %land.lhs.true.46, %if.end.43
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %while.body
  %54 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode58 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %54, i32 0, i32 153
  %55 = load i32, i32* %Transform8x8Mode58, align 4
  %cmp59 = icmp eq i32 %55, 1
  br i1 %cmp59, label %if.then.61, label %if.else.104

if.then.61:                                       ; preds = %if.end.57
  %56 = load i32, i32* %mode.addr, align 4
  %cmp62 = icmp sge i32 %56, 1
  br i1 %cmp62, label %land.lhs.true.64, label %if.else.73

land.lhs.true.64:                                 ; preds = %if.then.61
  %57 = load i32, i32* %mode.addr, align 4
  %cmp65 = icmp sle i32 %57, 3
  br i1 %cmp65, label %land.lhs.true.67, label %if.else.73

land.lhs.true.67:                                 ; preds = %land.lhs.true.64
  %58 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %luma_transform_size_8x8_flag68 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %58, i32 0, i32 31
  %59 = load i32, i32* %luma_transform_size_8x8_flag68, align 4
  %cmp69 = icmp eq i32 %59, 0
  br i1 %cmp69, label %if.then.71, label %if.else.73

if.then.71:                                       ; preds = %land.lhs.true.67
  %60 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %luma_transform_size_8x8_flag72 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %60, i32 0, i32 31
  store i32 1, i32* %luma_transform_size_8x8_flag72, align 4
  br label %while.body

if.else.73:                                       ; preds = %land.lhs.true.67, %land.lhs.true.64, %if.then.61
  %61 = load i32, i32* %mode.addr, align 4
  %cmp74 = icmp eq i32 %61, 0
  br i1 %cmp74, label %land.lhs.true.76, label %if.else.88

land.lhs.true.76:                                 ; preds = %if.else.73
  %62 = load i16, i16* %bslice.addr, align 2
  %conv77 = sext i16 %62 to i32
  %tobool78 = icmp ne i32 %conv77, 0
  br i1 %tobool78, label %land.lhs.true.79, label %if.else.88

land.lhs.true.79:                                 ; preds = %land.lhs.true.76
  %63 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %direct_8x8_inference_flag80 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %63, i32 0, i32 27
  %64 = load i32, i32* %direct_8x8_inference_flag80, align 4
  %tobool81 = icmp ne i32 %64, 0
  br i1 %tobool81, label %land.lhs.true.82, label %if.else.88

land.lhs.true.82:                                 ; preds = %land.lhs.true.79
  %65 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %luma_transform_size_8x8_flag83 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %65, i32 0, i32 31
  %66 = load i32, i32* %luma_transform_size_8x8_flag83, align 4
  %cmp84 = icmp eq i32 %66, 0
  br i1 %cmp84, label %if.then.86, label %if.else.88

if.then.86:                                       ; preds = %land.lhs.true.82
  %67 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %luma_transform_size_8x8_flag87 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %67, i32 0, i32 31
  store i32 1, i32* %luma_transform_size_8x8_flag87, align 4
  br label %while.body

if.else.88:                                       ; preds = %land.lhs.true.82, %land.lhs.true.79, %land.lhs.true.76, %if.else.73
  %68 = load i32, i32* %mode.addr, align 4
  %cmp89 = icmp eq i32 %68, 8
  br i1 %cmp89, label %land.lhs.true.91, label %if.else.102

land.lhs.true.91:                                 ; preds = %if.else.88
  %valid92 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 3
  %arrayidx93 = getelementptr inbounds [15 x i16], [15 x i16]* %valid92, i32 0, i64 4
  %69 = load i16, i16* %arrayidx93, align 2
  %conv94 = sext i16 %69 to i32
  %tobool95 = icmp ne i32 %conv94, 0
  br i1 %tobool95, label %land.lhs.true.96, label %if.else.102

land.lhs.true.96:                                 ; preds = %land.lhs.true.91
  %70 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %luma_transform_size_8x8_flag97 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %70, i32 0, i32 31
  %71 = load i32, i32* %luma_transform_size_8x8_flag97, align 4
  %cmp98 = icmp eq i32 %71, 0
  br i1 %cmp98, label %if.then.100, label %if.else.102

if.then.100:                                      ; preds = %land.lhs.true.96
  %72 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %luma_transform_size_8x8_flag101 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %72, i32 0, i32 31
  store i32 1, i32* %luma_transform_size_8x8_flag101, align 4
  br label %while.body

if.else.102:                                      ; preds = %land.lhs.true.96, %land.lhs.true.91, %if.else.88
  %73 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %luma_transform_size_8x8_flag103 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %73, i32 0, i32 31
  store i32 0, i32* %luma_transform_size_8x8_flag103, align 4
  br label %while.end

if.else.104:                                      ; preds = %if.end.57
  br label %while.end

while.end:                                        ; preds = %if.else.104, %if.else.102
  %74 = load i16, i16* %bslice.addr, align 2
  %conv105 = sext i16 %74 to i32
  %tobool106 = icmp ne i32 %conv105, 0
  br i1 %tobool106, label %land.lhs.true.107, label %if.end.141

land.lhs.true.107:                                ; preds = %while.end
  %75 = load i32, i32* %mode.addr, align 4
  %cmp108 = icmp eq i32 %75, 0
  br i1 %cmp108, label %land.lhs.true.110, label %if.end.141

land.lhs.true.110:                                ; preds = %land.lhs.true.107
  %76 = load i16*, i16** %inter_skip.addr, align 8
  %77 = load i16, i16* %76, align 2
  %conv111 = sext i16 %77 to i32
  %cmp112 = icmp eq i32 %conv111, 0
  br i1 %cmp112, label %land.lhs.true.114, label %if.end.141

land.lhs.true.114:                                ; preds = %land.lhs.true.110
  %78 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %78 to i64
  %valid115 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 3
  %arrayidx116 = getelementptr inbounds [15 x i16], [15 x i16]* %valid115, i32 0, i64 %idxprom
  %79 = load i16, i16* %arrayidx116, align 2
  %conv117 = sext i16 %79 to i32
  %tobool118 = icmp ne i32 %conv117, 0
  br i1 %tobool118, label %land.lhs.true.119, label %if.end.141

land.lhs.true.119:                                ; preds = %land.lhs.true.114
  %80 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp120 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %80, i32 0, i32 12
  %81 = load i32, i32* %cbp120, align 4
  %tobool121 = icmp ne i32 %81, 0
  br i1 %tobool121, label %land.lhs.true.122, label %if.end.141

land.lhs.true.122:                                ; preds = %land.lhs.true.119
  %82 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp123 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %82, i32 0, i32 12
  %83 = load i32, i32* %cbp123, align 4
  %and = and i32 %83, 15
  %cmp124 = icmp ne i32 %and, 15
  br i1 %cmp124, label %land.lhs.true.126, label %if.end.141

land.lhs.true.126:                                ; preds = %land.lhs.true.122
  %84 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %nobskip = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %84, i32 0, i32 117
  %85 = load i32, i32* %nobskip, align 4
  %tobool127 = icmp ne i32 %85, 0
  br i1 %tobool127, label %if.end.141, label %if.then.128

if.then.128:                                      ; preds = %land.lhs.true.126
  %86 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NoResidueDirect129 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %86, i32 0, i32 97
  store i32 1, i32* %NoResidueDirect129, align 4
  %lambda_md130 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 0
  %87 = load double, double* %lambda_md130, align 8
  %88 = load i32, i32* %mode.addr, align 4
  %89 = load double*, double** %min_rdcost.addr, align 8
  %90 = load double*, double** %min_rate.addr, align 8
  %91 = load i32, i32* %i16mode.addr, align 4
  %call131 = call i32 @RDCost_for_macroblocks(double %87, i32 %88, double* %89, double* %90, i32 %91)
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %if.then.133, label %if.end.140

if.then.133:                                      ; preds = %if.then.128
  %92 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable134 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %92, i32 0, i32 157
  %93 = load i32, i32* %RCEnable134, align 4
  %tobool135 = icmp ne i32 %93, 0
  br i1 %tobool135, label %if.then.136, label %if.end.139

if.then.136:                                      ; preds = %if.then.133
  %94 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x137 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %94, i32 0, i32 43
  %95 = load i32, i32* %opix_x137, align 4
  %96 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y138 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %96, i32 0, i32 44
  %97 = load i32, i32* %opix_y138, align 4
  call void @rc_store_diff(i32 %95, i32 %97, [16 x i16]* getelementptr inbounds ([16 x [16 x i16]], [16 x [16 x i16]]* @pred, i32 0, i32 0))
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.136, %if.then.133
  %98 = load i32, i32* %mode.addr, align 4
  call void @store_macroblock_parameters(i32 %98)
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %if.then.128
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %land.lhs.true.126, %land.lhs.true.122, %land.lhs.true.119, %land.lhs.true.114, %land.lhs.true.110, %land.lhs.true.107, %while.end
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %lor.lhs.false.26
  ret void
}

declare void @SetModesAndRefframeForBlocks(i32) #2

declare i32 @RDCost_for_macroblocks(double, i32, double*, double*, i32) #2

declare void @store_macroblock_parameters(i32) #2

; Function Attrs: nounwind uwtable
define void @submacroblock_mode_decision(%struct.RD_PARAMS* byval align 8 %enc_mb, %struct.RD_8x8DATA* %dataTr, %struct.macroblock* %currMB, i32*** %cofACtr, i32* %have_direct, i16 signext %bslice, i32 %block, i32* %cost_direct, i32* %cost, i32* %cost8x8_direct, i32 %transform8x8) #0 {
entry:
  %dataTr.addr = alloca %struct.RD_8x8DATA*, align 8
  %currMB.addr = alloca %struct.macroblock*, align 8
  %cofACtr.addr = alloca i32***, align 8
  %have_direct.addr = alloca i32*, align 8
  %bslice.addr = alloca i16, align 2
  %block.addr = alloca i32, align 4
  %cost_direct.addr = alloca i32*, align 8
  %cost.addr = alloca i32*, align 8
  %cost8x8_direct.addr = alloca i32*, align 8
  %transform8x8.addr = alloca i32, align 4
  %curr_cbp_blk = alloca i64, align 8
  %min_rdcost = alloca double, align 8
  %rdcost = alloca double, align 8
  %j0 = alloca i32, align 4
  %i0 = alloca i32, align 4
  %j1 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %min_cost8x8 = alloca i32, align 4
  %index = alloca i32, align 4
  %mode = alloca i32, align 4
  %direct4x4_tmp = alloca i32, align 4
  %direct8x8_tmp = alloca i32, align 4
  %bmcost = alloca [5 x i32], align 16
  %cnt_nonz = alloca i32, align 4
  %dummy = alloca i32, align 4
  %best_cnt_nonz = alloca i32, align 4
  %maxindex = alloca i32, align 4
  %pix_x = alloca i32, align 4
  %pix_y = alloca i32, align 4
  %block_x = alloca i32, align 4
  %block_y = alloca i32, align 4
  %lambda_mf = alloca [3 x i32], align 4
  %fadjustTransform = alloca i32***, align 8
  %fadjustTransformCr = alloca i32****, align 8
  %lumaAdjustIndex = alloca i32, align 4
  %chromaAdjustIndex = alloca i32, align 4
  %pdir = alloca i16, align 2
  %bi_pred_me = alloca i16, align 2
  %best_pdir = alloca i8, align 1
  %best_ref = alloca [2 x i8], align 1
  %j0_cr = alloca i32, align 4
  %i0_cr = alloca i32, align 4
  %j0_cr721 = alloca i32, align 4
  %i0_cr725 = alloca i32, align 4
  store %struct.RD_8x8DATA* %dataTr, %struct.RD_8x8DATA** %dataTr.addr, align 8
  store %struct.macroblock* %currMB, %struct.macroblock** %currMB.addr, align 8
  store i32*** %cofACtr, i32**** %cofACtr.addr, align 8
  store i32* %have_direct, i32** %have_direct.addr, align 8
  store i16 %bslice, i16* %bslice.addr, align 2
  store i32 %block, i32* %block.addr, align 4
  store i32* %cost_direct, i32** %cost_direct.addr, align 8
  store i32* %cost, i32** %cost.addr, align 8
  store i32* %cost8x8_direct, i32** %cost8x8_direct.addr, align 8
  store i32 %transform8x8, i32* %transform8x8.addr, align 4
  store double 0.000000e+00, double* %rdcost, align 8
  %0 = bitcast [5 x i32]* %bmcost to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([5 x i32]* @submacroblock_mode_decision.bmcost to i8*), i64 20, i32 16, i1 false)
  store i32 0, i32* %cnt_nonz, align 4
  store i32 0, i32* %best_cnt_nonz, align 4
  %1 = load i32, i32* %transform8x8.addr, align 4
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, i32 2, i32 5
  store i32 %cond, i32* %maxindex, align 4
  %2 = load i32, i32* %transform8x8.addr, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fadjust8x8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 56
  %4 = load i32***, i32**** %fadjust8x8, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fadjust4x4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 55
  %6 = load i32***, i32**** %fadjust4x4, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi i32*** [ %4, %cond.true ], [ %6, %cond.false ]
  store i32*** %cond2, i32**** %fadjustTransform, align 8
  %7 = load i32, i32* %transform8x8.addr, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.end
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fadjust8x8Cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 58
  %9 = load i32****, i32***** %fadjust8x8Cr, align 8
  br label %cond.end.6

cond.false.5:                                     ; preds = %cond.end
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fadjust4x4Cr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 57
  %11 = load i32****, i32***** %fadjust4x4Cr, align 8
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.5, %cond.true.4
  %cond7 = phi i32**** [ %9, %cond.true.4 ], [ %11, %cond.false.5 ]
  store i32**** %cond7, i32***** %fadjustTransformCr, align 8
  %12 = load i32, i32* %transform8x8.addr, align 4
  %tobool8 = icmp ne i32 %12, 0
  %cond9 = select i1 %tobool8, i32 2, i32 3
  store i32 %cond9, i32* %lumaAdjustIndex, align 4
  %13 = load i32, i32* %transform8x8.addr, align 4
  %tobool10 = icmp ne i32 %13, 0
  %cond11 = select i1 %tobool10, i32 0, i32 2
  store i32 %cond11, i32* %chromaAdjustIndex, align 4
  store i8 0, i8* %best_pdir, align 1
  %14 = bitcast [2 x i8]* %best_ref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @submacroblock_mode_decision.best_ref, i32 0, i32 0), i64 2, i32 1, i1 false)
  %15 = load i32, i32* %block.addr, align 4
  %shr = ashr i32 %15, 1
  %shl = shl i32 %shr, 3
  store i32 %shl, i32* %j0, align 4
  %16 = load i32, i32* %j0, align 4
  %shr12 = ashr i32 %16, 2
  store i32 %shr12, i32* %j1, align 4
  %17 = load i32, i32* %block.addr, align 4
  %and = and i32 %17, 1
  %shl13 = shl i32 %and, 3
  store i32 %shl13, i32* %i0, align 4
  %18 = load i32, i32* %i0, align 4
  %shr14 = ashr i32 %18, 2
  store i32 %shr14, i32* %i1, align 4
  %19 = load i32, i32* %transform8x8.addr, align 4
  %tobool15 = icmp ne i32 %19, 0
  br i1 %tobool15, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.6
  %20 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %20, i32 0, i32 31
  store i32 1, i32* %luma_transform_size_8x8_flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.6
  %21 = load %struct.CSobj*, %struct.CSobj** @cs_cm, align 8
  call void @store_coding_state(%struct.CSobj* %21)
  store i32 2147483647, i32* %min_cost8x8, align 4
  store double 1.000000e+30, double* %min_rdcost, align 8
  %22 = load i16, i16* %bslice.addr, align 2
  %conv = sext i16 %22 to i32
  %tobool16 = icmp ne i32 %conv, 0
  %cond17 = select i1 %tobool16, i32 0, i32 1
  store i32 %cond17, i32* %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.454, %if.end
  %23 = load i32, i32* %index, align 4
  %24 = load i32, i32* %maxindex, align 4
  %cmp = icmp slt i32 %23, %24
  br i1 %cmp, label %for.body, label %for.end.456

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %index, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* @b8_mode_table, i32 0, i64 %idxprom
  %26 = load i32, i32* %arrayidx, align 4
  store i32 %26, i32* %mode, align 4
  %27 = load i32*, i32** %cost.addr, align 8
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* %mode, align 4
  %idxprom19 = sext i32 %28 to i64
  %valid = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 3
  %arrayidx20 = getelementptr inbounds [15 x i16], [15 x i16]* %valid, i32 0, i64 %idxprom19
  %29 = load i16, i16* %arrayidx20, align 2
  %conv21 = sext i16 %29 to i32
  %tobool22 = icmp ne i32 %conv21, 0
  br i1 %tobool22, label %land.lhs.true, label %if.end.453

land.lhs.true:                                    ; preds = %for.body
  %30 = load i32, i32* %transform8x8.addr, align 4
  %cmp23 = icmp eq i32 %30, 0
  br i1 %cmp23, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %31 = load i32, i32* %mode, align 4
  %cmp25 = icmp ne i32 %31, 0
  br i1 %cmp25, label %if.then.32, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false
  %32 = load i32, i32* %mode, align 4
  %cmp28 = icmp eq i32 %32, 0
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.453

land.lhs.true.30:                                 ; preds = %lor.lhs.false.27
  %33 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %direct_8x8_inference_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %33, i32 0, i32 27
  %34 = load i32, i32* %direct_8x8_inference_flag, align 4
  %tobool31 = icmp ne i32 %34, 0
  br i1 %tobool31, label %if.then.32, label %if.end.453

if.then.32:                                       ; preds = %land.lhs.true.30, %lor.lhs.false, %land.lhs.true
  store i64 0, i64* %curr_cbp_blk, align 8
  %35 = load i32, i32* %mode, align 4
  %cmp33 = icmp eq i32 %35, 0
  br i1 %cmp33, label %if.then.35, label %if.else.105

if.then.35:                                       ; preds = %if.then.32
  %36 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %36, i32 0, i32 113
  %37 = load i32, i32* %rdopt, align 4
  %tobool36 = icmp ne i32 %37, 0
  br i1 %tobool36, label %if.end.82, label %if.then.37

if.then.37:                                       ; preds = %if.then.35
  store i32 0, i32* %direct4x4_tmp, align 4
  store i32 0, i32* %direct8x8_tmp, align 4
  %38 = load i32, i32* %block.addr, align 4
  %call = call i32 @GetDirectCost8x8(i32 %38, i32* %direct8x8_tmp)
  store i32 %call, i32* %direct4x4_tmp, align 4
  %39 = load i32, i32* %direct4x4_tmp, align 4
  %cmp38 = icmp eq i32 %39, 2147483647
  br i1 %cmp38, label %if.then.43, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %if.then.37
  %40 = load i32*, i32** %cost_direct.addr, align 8
  %41 = load i32, i32* %40, align 4
  %cmp41 = icmp eq i32 %41, 2147483647
  br i1 %cmp41, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %lor.lhs.false.40, %if.then.37
  %42 = load i32*, i32** %cost_direct.addr, align 8
  store i32 2147483647, i32* %42, align 4
  %43 = load i32, i32* %transform8x8.addr, align 4
  %tobool44 = icmp ne i32 %43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.43
  %44 = load i32*, i32** %cost8x8_direct.addr, align 8
  store i32 2147483647, i32* %44, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.then.43
  br label %if.end.51

if.else:                                          ; preds = %lor.lhs.false.40
  %45 = load i32, i32* %direct4x4_tmp, align 4
  %46 = load i32*, i32** %cost_direct.addr, align 8
  %47 = load i32, i32* %46, align 4
  %add = add nsw i32 %47, %45
  store i32 %add, i32* %46, align 4
  %48 = load i32, i32* %transform8x8.addr, align 4
  %tobool47 = icmp ne i32 %48, 0
  br i1 %tobool47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.else
  %49 = load i32, i32* %direct8x8_tmp, align 4
  %50 = load i32*, i32** %cost8x8_direct.addr, align 8
  %51 = load i32, i32* %50, align 4
  %add49 = add nsw i32 %51, %49
  store i32 %add49, i32* %50, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.else
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.46
  %52 = load i32*, i32** %have_direct.addr, align 8
  %53 = load i32, i32* %52, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %52, align 4
  %54 = load i32, i32* %transform8x8.addr, align 4
  %tobool52 = icmp ne i32 %54, 0
  br i1 %tobool52, label %if.then.53, label %if.else.80

if.then.53:                                       ; preds = %if.end.51
  %55 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %55, i32 0, i32 153
  %56 = load i32, i32* %Transform8x8Mode, align 4
  switch i32 %56, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.74
  ]

sw.bb:                                            ; preds = %if.then.53
  %57 = load i32, i32* %direct8x8_tmp, align 4
  %58 = load i32, i32* %direct4x4_tmp, align 4
  %cmp54 = icmp slt i32 %57, %58
  br i1 %cmp54, label %if.then.71, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %sw.bb
  %valid57 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 3
  %arrayidx58 = getelementptr inbounds [15 x i16], [15 x i16]* %valid57, i32 0, i64 5
  %59 = load i16, i16* %arrayidx58, align 2
  %conv59 = sext i16 %59 to i32
  %tobool60 = icmp ne i32 %conv59, 0
  br i1 %tobool60, label %land.lhs.true.61, label %if.then.71

land.lhs.true.61:                                 ; preds = %lor.lhs.false.56
  %valid62 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 3
  %arrayidx63 = getelementptr inbounds [15 x i16], [15 x i16]* %valid62, i32 0, i64 6
  %60 = load i16, i16* %arrayidx63, align 2
  %conv64 = sext i16 %60 to i32
  %tobool65 = icmp ne i32 %conv64, 0
  br i1 %tobool65, label %land.lhs.true.66, label %if.then.71

land.lhs.true.66:                                 ; preds = %land.lhs.true.61
  %valid67 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 3
  %arrayidx68 = getelementptr inbounds [15 x i16], [15 x i16]* %valid67, i32 0, i64 7
  %61 = load i16, i16* %arrayidx68, align 2
  %conv69 = sext i16 %61 to i32
  %tobool70 = icmp ne i32 %conv69, 0
  br i1 %tobool70, label %if.else.72, label %if.then.71

if.then.71:                                       ; preds = %land.lhs.true.66, %land.lhs.true.61, %lor.lhs.false.56, %sw.bb
  %62 = load i32, i32* %direct8x8_tmp, align 4
  %63 = load i32*, i32** %cost.addr, align 8
  store i32 %62, i32* %63, align 4
  br label %if.end.73

if.else.72:                                       ; preds = %land.lhs.true.66
  %64 = load i32, i32* %direct4x4_tmp, align 4
  %65 = load i32*, i32** %cost.addr, align 8
  store i32 %64, i32* %65, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.72, %if.then.71
  br label %sw.epilog

sw.bb.74:                                         ; preds = %if.then.53
  %66 = load i32, i32* %direct8x8_tmp, align 4
  %67 = load i32*, i32** %cost.addr, align 8
  store i32 %66, i32* %67, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.53
  %68 = load i32, i32* %direct4x4_tmp, align 4
  %69 = load i32*, i32** %cost.addr, align 8
  store i32 %68, i32* %69, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.74, %if.end.73
  %70 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode75 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %70, i32 0, i32 153
  %71 = load i32, i32* %Transform8x8Mode75, align 4
  %cmp76 = icmp eq i32 %71, 2
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %sw.epilog
  %72 = load i32*, i32** %cost.addr, align 8
  store i32 2147483647, i32* %72, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %sw.epilog
  br label %if.end.81

if.else.80:                                       ; preds = %if.end.51
  %73 = load i32, i32* %direct4x4_tmp, align 4
  %74 = load i32*, i32** %cost.addr, align 8
  store i32 %73, i32* %74, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.80, %if.end.79
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.35
  %75 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x83 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %75, i32 0, i32 37
  %76 = load i32, i32* %block_x83, align 4
  %77 = load i32, i32* %block.addr, align 4
  %and84 = and i32 %77, 1
  %mul = mul nsw i32 %and84, 2
  %add85 = add nsw i32 %76, %mul
  store i32 %add85, i32* %block_x, align 4
  %78 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y86 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %78, i32 0, i32 38
  %79 = load i32, i32* %block_y86, align 4
  %80 = load i32, i32* %block.addr, align 4
  %and87 = and i32 %80, 2
  %add88 = add nsw i32 %79, %and87
  store i32 %add88, i32* %block_y, align 4
  %81 = load i32, i32* %block_x, align 4
  %idxprom89 = sext i32 %81 to i64
  %82 = load i32, i32* %block_y, align 4
  %idxprom90 = sext i32 %82 to i64
  %83 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx91 = getelementptr inbounds i8**, i8*** %83, i64 0
  %84 = load i8**, i8*** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds i8*, i8** %84, i64 %idxprom90
  %85 = load i8*, i8** %arrayidx92, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %85, i64 %idxprom89
  %86 = load i8, i8* %arrayidx93, align 1
  %arrayidx94 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 0
  store i8 %86, i8* %arrayidx94, align 1
  %87 = load i32, i32* %block_x, align 4
  %idxprom95 = sext i32 %87 to i64
  %88 = load i32, i32* %block_y, align 4
  %idxprom96 = sext i32 %88 to i64
  %89 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx97 = getelementptr inbounds i8**, i8*** %89, i64 1
  %90 = load i8**, i8*** %arrayidx97, align 8
  %arrayidx98 = getelementptr inbounds i8*, i8** %90, i64 %idxprom96
  %91 = load i8*, i8** %arrayidx98, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %91, i64 %idxprom95
  %92 = load i8, i8* %arrayidx99, align 1
  %arrayidx100 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 1
  store i8 %92, i8* %arrayidx100, align 1
  %93 = load i32, i32* %block_x, align 4
  %idxprom101 = sext i32 %93 to i64
  %94 = load i32, i32* %block_y, align 4
  %idxprom102 = sext i32 %94 to i64
  %95 = load i8**, i8*** @direct_pdir, align 8
  %arrayidx103 = getelementptr inbounds i8*, i8** %95, i64 %idxprom102
  %96 = load i8*, i8** %arrayidx103, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %96, i64 %idxprom101
  %97 = load i8, i8* %arrayidx104, align 1
  store i8 %97, i8* %best_pdir, align 1
  br label %if.end.229

if.else.105:                                      ; preds = %if.then.32
  %98 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %CtxAdptLagrangeMult = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %98, i32 0, i32 114
  %99 = load i32, i32* %CtxAdptLagrangeMult, align 4
  %cmp106 = icmp eq i32 %99, 0
  br i1 %cmp106, label %cond.true.108, label %cond.false.111

cond.true.108:                                    ; preds = %if.else.105
  %lambda_mf109 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 2
  %arrayidx110 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf109, i32 0, i64 0
  %100 = load i32, i32* %arrayidx110, align 4
  br label %cond.end.117

cond.false.111:                                   ; preds = %if.else.105
  %lambda_mf112 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 2
  %arrayidx113 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf112, i32 0, i64 0
  %101 = load i32, i32* %arrayidx113, align 4
  %conv114 = sitofp i32 %101 to double
  %102 = load double, double* @lambda_mf_factor, align 8
  %mul115 = fmul double %conv114, %102
  %conv116 = fptosi double %mul115 to i32
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.false.111, %cond.true.108
  %cond118 = phi i32 [ %100, %cond.true.108 ], [ %conv116, %cond.false.111 ]
  %arrayidx119 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf, i32 0, i64 0
  store i32 %cond118, i32* %arrayidx119, align 4
  %103 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %CtxAdptLagrangeMult120 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %103, i32 0, i32 114
  %104 = load i32, i32* %CtxAdptLagrangeMult120, align 4
  %cmp121 = icmp eq i32 %104, 0
  br i1 %cmp121, label %cond.true.123, label %cond.false.126

cond.true.123:                                    ; preds = %cond.end.117
  %lambda_mf124 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 2
  %arrayidx125 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf124, i32 0, i64 1
  %105 = load i32, i32* %arrayidx125, align 4
  br label %cond.end.132

cond.false.126:                                   ; preds = %cond.end.117
  %lambda_mf127 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 2
  %arrayidx128 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf127, i32 0, i64 1
  %106 = load i32, i32* %arrayidx128, align 4
  %conv129 = sitofp i32 %106 to double
  %107 = load double, double* @lambda_mf_factor, align 8
  %mul130 = fmul double %conv129, %107
  %conv131 = fptosi double %mul130 to i32
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.126, %cond.true.123
  %cond133 = phi i32 [ %105, %cond.true.123 ], [ %conv131, %cond.false.126 ]
  %arrayidx134 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf, i32 0, i64 1
  store i32 %cond133, i32* %arrayidx134, align 4
  %108 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %CtxAdptLagrangeMult135 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %108, i32 0, i32 114
  %109 = load i32, i32* %CtxAdptLagrangeMult135, align 4
  %cmp136 = icmp eq i32 %109, 0
  br i1 %cmp136, label %cond.true.138, label %cond.false.141

cond.true.138:                                    ; preds = %cond.end.132
  %lambda_mf139 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 2
  %arrayidx140 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf139, i32 0, i64 2
  %110 = load i32, i32* %arrayidx140, align 4
  br label %cond.end.147

cond.false.141:                                   ; preds = %cond.end.132
  %lambda_mf142 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 2
  %arrayidx143 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf142, i32 0, i64 2
  %111 = load i32, i32* %arrayidx143, align 4
  %conv144 = sitofp i32 %111 to double
  %112 = load double, double* @lambda_mf_factor, align 8
  %mul145 = fmul double %conv144, %112
  %conv146 = fptosi double %mul145 to i32
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.141, %cond.true.138
  %cond148 = phi i32 [ %110, %cond.true.138 ], [ %conv146, %cond.false.141 ]
  %arrayidx149 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf, i32 0, i64 2
  store i32 %cond148, i32* %arrayidx149, align 4
  %113 = load i32, i32* %mode, align 4
  %114 = load i32, i32* %block.addr, align 4
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf, i32 0, i32 0
  call void @PartitionMotionSearch(i32 %113, i32 %114, i32* %arraydecay)
  %arrayidx150 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i64 0
  store i32 2147483647, i32* %arrayidx150, align 4
  %115 = load i32, i32* %block.addr, align 4
  %116 = load i32, i32* %mode, align 4
  %arraydecay151 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i32 0
  %arraydecay152 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i32 0
  call void @list_prediction_cost(i32 0, i32 %115, i32 %116, %struct.RD_PARAMS* byval align 8 %enc_mb, i32* %arraydecay151, i8* %arraydecay152)
  %117 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x153 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %117, i32 0, i32 37
  %118 = load i32, i32* %block_x153, align 4
  %119 = load i32, i32* %block.addr, align 4
  %and154 = and i32 %119, 1
  %mul155 = mul nsw i32 %and154, 2
  %add156 = add nsw i32 %118, %mul155
  store i32 %add156, i32* %block_x, align 4
  %120 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y157 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %120, i32 0, i32 38
  %121 = load i32, i32* %block_y157, align 4
  %122 = load i32, i32* %block.addr, align 4
  %and158 = and i32 %122, 2
  %add159 = add nsw i32 %121, %and158
  store i32 %add159, i32* %block_y, align 4
  %123 = load i32, i32* %block_y, align 4
  store i32 %123, i32* %j, align 4
  br label %for.cond.160

for.cond.160:                                     ; preds = %for.inc.189, %cond.end.147
  %124 = load i32, i32* %j, align 4
  %125 = load i32, i32* %block_y, align 4
  %add161 = add nsw i32 %125, 2
  %cmp162 = icmp slt i32 %124, %add161
  br i1 %cmp162, label %for.body.164, label %for.end.191

for.body.164:                                     ; preds = %for.cond.160
  %126 = load i32, i32* %block_x, align 4
  store i32 %126, i32* %i, align 4
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc, %for.body.164
  %127 = load i32, i32* %i, align 4
  %128 = load i32, i32* %block_x, align 4
  %add166 = add nsw i32 %128, 2
  %cmp167 = icmp slt i32 %127, %add166
  br i1 %cmp167, label %for.body.169, label %for.end

for.body.169:                                     ; preds = %for.cond.165
  %arrayidx170 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 0
  %129 = load i8, i8* %arrayidx170, align 1
  %130 = load i32, i32* %i, align 4
  %idxprom171 = sext i32 %130 to i64
  %131 = load i32, i32* %j, align 4
  %idxprom172 = sext i32 %131 to i64
  %132 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %132, i32 0, i32 35
  %133 = load i8***, i8**** %ref_idx, align 8
  %arrayidx173 = getelementptr inbounds i8**, i8*** %133, i64 0
  %134 = load i8**, i8*** %arrayidx173, align 8
  %arrayidx174 = getelementptr inbounds i8*, i8** %134, i64 %idxprom172
  %135 = load i8*, i8** %arrayidx174, align 8
  %arrayidx175 = getelementptr inbounds i8, i8* %135, i64 %idxprom171
  store i8 %129, i8* %arrayidx175, align 1
  %arrayidx176 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 0
  %136 = load i8, i8* %arrayidx176, align 1
  %conv177 = sext i8 %136 to i16
  %idxprom178 = sext i16 %conv177 to i64
  %list_offset = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 4
  %arrayidx179 = getelementptr inbounds [2 x i16], [2 x i16]* %list_offset, i32 0, i64 0
  %137 = load i16, i16* %arrayidx179, align 2
  %idxprom180 = sext i16 %137 to i64
  %138 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %138, i32 0, i32 6
  %arrayidx181 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %ref_pic_num, i32 0, i64 %idxprom180
  %arrayidx182 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx181, i32 0, i64 %idxprom178
  %139 = load i64, i64* %arrayidx182, align 8
  %140 = load i32, i32* %i, align 4
  %idxprom183 = sext i32 %140 to i64
  %141 = load i32, i32* %j, align 4
  %idxprom184 = sext i32 %141 to i64
  %142 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_id = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %142, i32 0, i32 36
  %143 = load i64***, i64**** %ref_pic_id, align 8
  %arrayidx185 = getelementptr inbounds i64**, i64*** %143, i64 0
  %144 = load i64**, i64*** %arrayidx185, align 8
  %arrayidx186 = getelementptr inbounds i64*, i64** %144, i64 %idxprom184
  %145 = load i64*, i64** %arrayidx186, align 8
  %arrayidx187 = getelementptr inbounds i64, i64* %145, i64 %idxprom183
  store i64 %139, i64* %arrayidx187, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.169
  %146 = load i32, i32* %i, align 4
  %inc188 = add nsw i32 %146, 1
  store i32 %inc188, i32* %i, align 4
  br label %for.cond.165

for.end:                                          ; preds = %for.cond.165
  br label %for.inc.189

for.inc.189:                                      ; preds = %for.end
  %147 = load i32, i32* %j, align 4
  %inc190 = add nsw i32 %147, 1
  store i32 %inc190, i32* %j, align 4
  br label %for.cond.160

for.end.191:                                      ; preds = %for.cond.160
  %148 = load i16, i16* %bslice.addr, align 2
  %tobool192 = icmp ne i16 %148, 0
  br i1 %tobool192, label %if.then.193, label %if.else.226

if.then.193:                                      ; preds = %for.end.191
  %arrayidx194 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i64 1
  store i32 2147483647, i32* %arrayidx194, align 4
  %arrayidx195 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i64 2
  store i32 2147483647, i32* %arrayidx195, align 4
  %149 = load i32, i32* %block.addr, align 4
  %150 = load i32, i32* %mode, align 4
  %arraydecay196 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i32 0
  %arraydecay197 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i32 0
  call void @list_prediction_cost(i32 1, i32 %149, i32 %150, %struct.RD_PARAMS* byval align 8 %enc_mb, i32* %arraydecay196, i8* %arraydecay197)
  %151 = load i32, i32* %block.addr, align 4
  %152 = load i32, i32* %mode, align 4
  %arraydecay198 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i32 0
  %arraydecay199 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i32 0
  call void @list_prediction_cost(i32 2, i32 %151, i32 %152, %struct.RD_PARAMS* byval align 8 %enc_mb, i32* %arraydecay198, i8* %arraydecay199)
  %153 = load i32, i32* %mode, align 4
  %arraydecay200 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i32 0
  %arraydecay201 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i32 0
  %154 = load i32*, i32** %cost.addr, align 8
  call void @determine_prediction_list(i32 %153, i32* %arraydecay200, i8* %arraydecay201, i8* %best_pdir, i32* %154, i16* %bi_pred_me)
  %155 = load i32, i32* %block_y, align 4
  store i32 %155, i32* %j, align 4
  br label %for.cond.202

for.cond.202:                                     ; preds = %for.inc.223, %if.then.193
  %156 = load i32, i32* %j, align 4
  %157 = load i32, i32* %block_y, align 4
  %add203 = add nsw i32 %157, 2
  %cmp204 = icmp slt i32 %156, %add203
  br i1 %cmp204, label %for.body.206, label %for.end.225

for.body.206:                                     ; preds = %for.cond.202
  %158 = load i32, i32* %block_x, align 4
  %idxprom207 = sext i32 %158 to i64
  %159 = load i32, i32* %j, align 4
  %idxprom208 = sext i32 %159 to i64
  %160 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx209 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %160, i32 0, i32 35
  %161 = load i8***, i8**** %ref_idx209, align 8
  %arrayidx210 = getelementptr inbounds i8**, i8*** %161, i64 0
  %162 = load i8**, i8*** %arrayidx210, align 8
  %arrayidx211 = getelementptr inbounds i8*, i8** %162, i64 %idxprom208
  %163 = load i8*, i8** %arrayidx211, align 8
  %arrayidx212 = getelementptr inbounds i8, i8* %163, i64 %idxprom207
  %arrayidx213 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 0
  %164 = load i8, i8* %arrayidx213, align 1
  %conv214 = sext i8 %164 to i32
  %165 = trunc i32 %conv214 to i8
  call void @llvm.memset.p0i8.i64(i8* %arrayidx212, i8 %165, i64 2, i32 1, i1 false)
  %166 = load i32, i32* %block_x, align 4
  %idxprom215 = sext i32 %166 to i64
  %167 = load i32, i32* %j, align 4
  %idxprom216 = sext i32 %167 to i64
  %168 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx217 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %168, i32 0, i32 35
  %169 = load i8***, i8**** %ref_idx217, align 8
  %arrayidx218 = getelementptr inbounds i8**, i8*** %169, i64 1
  %170 = load i8**, i8*** %arrayidx218, align 8
  %arrayidx219 = getelementptr inbounds i8*, i8** %170, i64 %idxprom216
  %171 = load i8*, i8** %arrayidx219, align 8
  %arrayidx220 = getelementptr inbounds i8, i8* %171, i64 %idxprom215
  %arrayidx221 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 1
  %172 = load i8, i8* %arrayidx221, align 1
  %conv222 = sext i8 %172 to i32
  %173 = trunc i32 %conv222 to i8
  call void @llvm.memset.p0i8.i64(i8* %arrayidx220, i8 %173, i64 2, i32 1, i1 false)
  br label %for.inc.223

for.inc.223:                                      ; preds = %for.body.206
  %174 = load i32, i32* %j, align 4
  %inc224 = add nsw i32 %174, 1
  store i32 %inc224, i32* %j, align 4
  br label %for.cond.202

for.end.225:                                      ; preds = %for.cond.202
  br label %if.end.228

if.else.226:                                      ; preds = %for.end.191
  store i8 0, i8* %best_pdir, align 1
  %arrayidx227 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i64 0
  %175 = load i32, i32* %arrayidx227, align 4
  %176 = load i32*, i32** %cost.addr, align 8
  store i32 %175, i32* %176, align 4
  br label %if.end.228

if.end.228:                                       ; preds = %if.else.226, %for.end.225
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228, %if.end.82
  %177 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt230 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %177, i32 0, i32 113
  %178 = load i32, i32* %rdopt230, align 4
  %tobool231 = icmp ne i32 %178, 0
  br i1 %tobool231, label %if.then.232, label %if.else.239

if.then.232:                                      ; preds = %if.end.229
  %lambda_md = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 0
  %179 = load double, double* %lambda_md, align 8
  %180 = load i32, i32* %block.addr, align 4
  %181 = load i32, i32* %mode, align 4
  %182 = load i8, i8* %best_pdir, align 1
  %conv233 = sext i8 %182 to i16
  %arrayidx234 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 0
  %183 = load i8, i8* %arrayidx234, align 1
  %conv235 = sext i8 %183 to i16
  %arrayidx236 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 1
  %184 = load i8, i8* %arrayidx236, align 1
  %conv237 = sext i8 %184 to i16
  %call238 = call double @RDCost_for_8x8blocks(i32* %cnt_nonz, i64* %curr_cbp_blk, double %179, i32 %180, i32 %181, i16 signext %conv233, i16 signext %conv235, i16 signext %conv237)
  store double %call238, double* %rdcost, align 8
  br label %if.end.268

if.else.239:                                      ; preds = %if.end.229
  %185 = load i32*, i32** %cost.addr, align 8
  %186 = load i32, i32* %185, align 4
  %cmp240 = icmp ne i32 %186, 2147483647
  br i1 %cmp240, label %if.then.242, label %if.end.267

if.then.242:                                      ; preds = %if.else.239
  %lambda_mf243 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 2
  %arrayidx244 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf243, i32 0, i64 2
  %187 = load i32, i32* %arrayidx244, align 4
  %188 = load i8, i8* %best_pdir, align 1
  %conv245 = sext i8 %188 to i32
  %cmp246 = icmp slt i32 %conv245, 1
  %cond248 = select i1 %cmp246, i32 0, i32 1
  %idxprom249 = sext i32 %cond248 to i64
  %list_offset250 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 4
  %arrayidx251 = getelementptr inbounds [2 x i16], [2 x i16]* %list_offset250, i32 0, i64 %idxprom249
  %189 = load i16, i16* %arrayidx251, align 2
  %idxprom252 = sext i16 %189 to i64
  %arrayidx253 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom252
  %190 = load i32, i32* %arrayidx253, align 4
  %cmp254 = icmp sle i32 %190, 1
  br i1 %cmp254, label %cond.true.256, label %cond.false.257

cond.true.256:                                    ; preds = %if.then.242
  br label %cond.end.262

cond.false.257:                                   ; preds = %if.then.242
  %191 = load i32, i32* %mode, align 4
  %192 = load i8, i8* %best_pdir, align 1
  %conv258 = sext i8 %192 to i32
  %call259 = call i32 @B8Mode2Value(i32 %191, i32 %conv258)
  %idxprom260 = sext i32 %call259 to i64
  %193 = load i32*, i32** @refbits, align 8
  %arrayidx261 = getelementptr inbounds i32, i32* %193, i64 %idxprom260
  %194 = load i32, i32* %arrayidx261, align 4
  br label %cond.end.262

cond.end.262:                                     ; preds = %cond.false.257, %cond.true.256
  %cond263 = phi i32 [ 0, %cond.true.256 ], [ %194, %cond.false.257 ]
  %mul264 = mul nsw i32 %187, %cond263
  %shr265 = ashr i32 %mul264, 16
  %sub = sub nsw i32 %shr265, 1
  %195 = load i32*, i32** %cost.addr, align 8
  %196 = load i32, i32* %195, align 4
  %add266 = add nsw i32 %196, %sub
  store i32 %add266, i32* %195, align 4
  br label %if.end.267

if.end.267:                                       ; preds = %cond.end.262, %if.else.239
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.267, %if.then.232
  %197 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt269 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %197, i32 0, i32 113
  %198 = load i32, i32* %rdopt269, align 4
  %tobool270 = icmp ne i32 %198, 0
  br i1 %tobool270, label %land.lhs.true.271, label %lor.lhs.false.274

land.lhs.true.271:                                ; preds = %if.end.268
  %199 = load double, double* %rdcost, align 8
  %200 = load double, double* %min_rdcost, align 8
  %cmp272 = fcmp olt double %199, %200
  br i1 %cmp272, label %if.then.280, label %lor.lhs.false.274

lor.lhs.false.274:                                ; preds = %land.lhs.true.271, %if.end.268
  %201 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt275 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %201, i32 0, i32 113
  %202 = load i32, i32* %rdopt275, align 4
  %tobool276 = icmp ne i32 %202, 0
  br i1 %tobool276, label %if.end.452, label %land.lhs.true.277

land.lhs.true.277:                                ; preds = %lor.lhs.false.274
  %203 = load i32*, i32** %cost.addr, align 8
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %min_cost8x8, align 4
  %cmp278 = icmp slt i32 %204, %205
  br i1 %cmp278, label %if.then.280, label %if.end.452

if.then.280:                                      ; preds = %land.lhs.true.277, %land.lhs.true.271
  %206 = load i32*, i32** %cost.addr, align 8
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %min_cost8x8, align 4
  %208 = load double, double* %rdcost, align 8
  store double %208, double* %min_rdcost, align 8
  %209 = load i32, i32* %mode, align 4
  %conv281 = trunc i32 %209 to i16
  %210 = load i32, i32* %block.addr, align 4
  %idxprom282 = sext i32 %210 to i64
  %211 = load %struct.RD_8x8DATA*, %struct.RD_8x8DATA** %dataTr.addr, align 8
  %part8x8mode = getelementptr inbounds %struct.RD_8x8DATA, %struct.RD_8x8DATA* %211, i32 0, i32 5
  %arrayidx283 = getelementptr inbounds [4 x i16], [4 x i16]* %part8x8mode, i32 0, i64 %idxprom282
  store i16 %conv281, i16* %arrayidx283, align 2
  %212 = load i8, i8* %best_pdir, align 1
  %213 = load i32, i32* %block.addr, align 4
  %idxprom284 = sext i32 %213 to i64
  %214 = load %struct.RD_8x8DATA*, %struct.RD_8x8DATA** %dataTr.addr, align 8
  %part8x8pdir = getelementptr inbounds %struct.RD_8x8DATA, %struct.RD_8x8DATA* %214, i32 0, i32 6
  %arrayidx285 = getelementptr inbounds [4 x i8], [4 x i8]* %part8x8pdir, i32 0, i64 %idxprom284
  store i8 %212, i8* %arrayidx285, align 1
  %arrayidx286 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 0
  %215 = load i8, i8* %arrayidx286, align 1
  %216 = load i32, i32* %block.addr, align 4
  %idxprom287 = sext i32 %216 to i64
  %217 = load %struct.RD_8x8DATA*, %struct.RD_8x8DATA** %dataTr.addr, align 8
  %part8x8fwref = getelementptr inbounds %struct.RD_8x8DATA, %struct.RD_8x8DATA* %217, i32 0, i32 7
  %arrayidx288 = getelementptr inbounds [4 x i8], [4 x i8]* %part8x8fwref, i32 0, i64 %idxprom287
  store i8 %215, i8* %arrayidx288, align 1
  %arrayidx289 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 1
  %218 = load i8, i8* %arrayidx289, align 1
  %219 = load i32, i32* %block.addr, align 4
  %idxprom290 = sext i32 %219 to i64
  %220 = load %struct.RD_8x8DATA*, %struct.RD_8x8DATA** %dataTr.addr, align 8
  %part8x8bwref = getelementptr inbounds %struct.RD_8x8DATA, %struct.RD_8x8DATA* %220, i32 0, i32 8
  %arrayidx291 = getelementptr inbounds [4 x i8], [4 x i8]* %part8x8bwref, i32 0, i64 %idxprom290
  store i8 %218, i8* %arrayidx291, align 1
  %221 = load i32, i32* %mode, align 4
  %222 = load i32, i32* %block.addr, align 4
  %idxprom292 = sext i32 %222 to i64
  %223 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %223, i32 0, i32 3
  %224 = load i32, i32* %current_mb_nr, align 4
  %idxprom293 = sext i32 %224 to i64
  %225 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %225, i32 0, i32 61
  %226 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx294 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %226, i64 %idxprom293
  %b8mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx294, i32 0, i32 14
  %arrayidx295 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode, i32 0, i64 %idxprom292
  store i32 %221, i32* %arrayidx295, align 4
  %227 = load i32, i32* %cnt_nonz, align 4
  store i32 %227, i32* %best_cnt_nonz, align 4
  %228 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt296 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %228, i32 0, i32 113
  %229 = load i32, i32* %rdopt296, align 4
  %tobool297 = icmp ne i32 %229, 0
  br i1 %tobool297, label %if.then.298, label %if.end.383

if.then.298:                                      ; preds = %if.then.280
  %230 = load i32, i32* %block.addr, align 4
  %shr299 = ashr i32 %230, 1
  %shl300 = shl i32 %shr299, 3
  %231 = load i32, i32* %block.addr, align 4
  %rem = srem i32 %231, 2
  %shl301 = shl i32 %rem, 1
  %add302 = add nsw i32 %shl300, %shl301
  %shl303 = shl i32 51, %add302
  %neg = xor i32 %shl303, -1
  %232 = load i32, i32* @cbp_blk8x8, align 4
  %and304 = and i32 %232, %neg
  store i32 %and304, i32* @cbp_blk8x8, align 4
  %233 = load i64, i64* %curr_cbp_blk, align 8
  %234 = load i32, i32* @cbp_blk8x8, align 4
  %conv305 = sext i32 %234 to i64
  %or = or i64 %conv305, %233
  %conv306 = trunc i64 %or to i32
  store i32 %conv306, i32* @cbp_blk8x8, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.307

for.cond.307:                                     ; preds = %for.inc.330, %if.then.298
  %235 = load i32, i32* %k, align 4
  %cmp308 = icmp slt i32 %235, 4
  br i1 %cmp308, label %for.body.310, label %for.end.332

for.body.310:                                     ; preds = %for.cond.307
  store i32 0, i32* %j, align 4
  br label %for.cond.311

for.cond.311:                                     ; preds = %for.inc.327, %for.body.310
  %236 = load i32, i32* %j, align 4
  %cmp312 = icmp slt i32 %236, 2
  br i1 %cmp312, label %for.body.314, label %for.end.329

for.body.314:                                     ; preds = %for.cond.311
  %237 = load i32, i32* %j, align 4
  %idxprom315 = sext i32 %237 to i64
  %238 = load i32, i32* %k, align 4
  %idxprom316 = sext i32 %238 to i64
  %239 = load i32***, i32**** %cofACtr.addr, align 8
  %arrayidx317 = getelementptr inbounds i32**, i32*** %239, i64 %idxprom316
  %240 = load i32**, i32*** %arrayidx317, align 8
  %arrayidx318 = getelementptr inbounds i32*, i32** %240, i64 %idxprom315
  %241 = load i32*, i32** %arrayidx318, align 8
  %arrayidx319 = getelementptr inbounds i32, i32* %241, i64 0
  %242 = bitcast i32* %arrayidx319 to i8*
  %243 = load i32, i32* %j, align 4
  %idxprom320 = sext i32 %243 to i64
  %244 = load i32, i32* %k, align 4
  %idxprom321 = sext i32 %244 to i64
  %245 = load i32, i32* %block.addr, align 4
  %idxprom322 = sext i32 %245 to i64
  %246 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %246, i32 0, i32 53
  %247 = load i32****, i32***** %cofAC, align 8
  %arrayidx323 = getelementptr inbounds i32***, i32**** %247, i64 %idxprom322
  %248 = load i32***, i32**** %arrayidx323, align 8
  %arrayidx324 = getelementptr inbounds i32**, i32*** %248, i64 %idxprom321
  %249 = load i32**, i32*** %arrayidx324, align 8
  %arrayidx325 = getelementptr inbounds i32*, i32** %249, i64 %idxprom320
  %250 = load i32*, i32** %arrayidx325, align 8
  %arrayidx326 = getelementptr inbounds i32, i32* %250, i64 0
  %251 = bitcast i32* %arrayidx326 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %242, i8* %251, i64 260, i32 4, i1 false)
  br label %for.inc.327

for.inc.327:                                      ; preds = %for.body.314
  %252 = load i32, i32* %j, align 4
  %inc328 = add nsw i32 %252, 1
  store i32 %inc328, i32* %j, align 4
  br label %for.cond.311

for.end.329:                                      ; preds = %for.cond.311
  br label %for.inc.330

for.inc.330:                                      ; preds = %for.end.329
  %253 = load i32, i32* %k, align 4
  %inc331 = add nsw i32 %253, 1
  store i32 %inc331, i32* %k, align 4
  br label %for.cond.307

for.end.332:                                      ; preds = %for.cond.307
  %254 = load i32, i32* %j0, align 4
  store i32 %254, i32* %j, align 4
  br label %for.cond.333

for.cond.333:                                     ; preds = %for.inc.380, %for.end.332
  %255 = load i32, i32* %j, align 4
  %256 = load i32, i32* %j0, align 4
  %add334 = add nsw i32 %256, 8
  %cmp335 = icmp slt i32 %255, %add334
  br i1 %cmp335, label %for.body.337, label %for.end.382

for.body.337:                                     ; preds = %for.cond.333
  %257 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y338 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %257, i32 0, i32 40
  %258 = load i32, i32* %pix_y338, align 4
  %259 = load i32, i32* %j, align 4
  %add339 = add nsw i32 %258, %259
  store i32 %add339, i32* %pix_y, align 4
  %260 = load i32, i32* %i0, align 4
  store i32 %260, i32* %i, align 4
  br label %for.cond.340

for.cond.340:                                     ; preds = %for.inc.377, %for.body.337
  %261 = load i32, i32* %i, align 4
  %262 = load i32, i32* %i0, align 4
  %add341 = add nsw i32 %262, 8
  %cmp342 = icmp slt i32 %261, %add341
  br i1 %cmp342, label %for.body.344, label %for.end.379

for.body.344:                                     ; preds = %for.cond.340
  %263 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x345 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %263, i32 0, i32 39
  %264 = load i32, i32* %pix_x345, align 4
  %265 = load i32, i32* %i, align 4
  %add346 = add nsw i32 %264, %265
  store i32 %add346, i32* %pix_x, align 4
  %266 = load i32, i32* %pix_x, align 4
  %idxprom347 = sext i32 %266 to i64
  %267 = load i32, i32* %pix_y, align 4
  %idxprom348 = sext i32 %267 to i64
  %268 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %268, i32 0, i32 29
  %269 = load i16**, i16*** %imgY, align 8
  %arrayidx349 = getelementptr inbounds i16*, i16** %269, i64 %idxprom348
  %270 = load i16*, i16** %arrayidx349, align 8
  %arrayidx350 = getelementptr inbounds i16, i16* %270, i64 %idxprom347
  %271 = load i16, i16* %arrayidx350, align 2
  %272 = load i32, i32* %i, align 4
  %idxprom351 = sext i32 %272 to i64
  %273 = load i32, i32* %j, align 4
  %idxprom352 = sext i32 %273 to i64
  %274 = load %struct.RD_8x8DATA*, %struct.RD_8x8DATA** %dataTr.addr, align 8
  %rec_mbY8x8 = getelementptr inbounds %struct.RD_8x8DATA, %struct.RD_8x8DATA* %274, i32 0, i32 9
  %arrayidx353 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %rec_mbY8x8, i32 0, i64 %idxprom352
  %arrayidx354 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx353, i32 0, i64 %idxprom351
  store i16 %271, i16* %arrayidx354, align 2
  %275 = load i32, i32* %i, align 4
  %idxprom355 = sext i32 %275 to i64
  %276 = load i32, i32* %j, align 4
  %idxprom356 = sext i32 %276 to i64
  %277 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %277, i32 0, i32 51
  %arrayidx357 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i64 %idxprom356
  %arrayidx358 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx357, i32 0, i64 %idxprom355
  %278 = load i16, i16* %arrayidx358, align 2
  %279 = load i32, i32* %i, align 4
  %idxprom359 = sext i32 %279 to i64
  %280 = load i32, i32* %j, align 4
  %idxprom360 = sext i32 %280 to i64
  %281 = load %struct.RD_8x8DATA*, %struct.RD_8x8DATA** %dataTr.addr, align 8
  %mpr8x8 = getelementptr inbounds %struct.RD_8x8DATA, %struct.RD_8x8DATA* %281, i32 0, i32 10
  %arrayidx361 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr8x8, i32 0, i64 %idxprom360
  %arrayidx362 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx361, i32 0, i64 %idxprom359
  store i16 %278, i16* %arrayidx362, align 2
  %282 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %282, i32 0, i32 5
  %283 = load i32, i32* %type, align 4
  %cmp363 = icmp eq i32 %283, 3
  br i1 %cmp363, label %land.lhs.true.365, label %if.end.376

land.lhs.true.365:                                ; preds = %for.body.344
  %284 = load i32, i32* @si_frame_indicator, align 4
  %tobool366 = icmp ne i32 %284, 0
  br i1 %tobool366, label %if.end.376, label %if.then.367

if.then.367:                                      ; preds = %land.lhs.true.365
  %285 = load i32, i32* %pix_x, align 4
  %idxprom368 = sext i32 %285 to i64
  %286 = load i32, i32* %pix_y, align 4
  %idxprom369 = sext i32 %286 to i64
  %287 = load i32**, i32*** @lrec, align 8
  %arrayidx370 = getelementptr inbounds i32*, i32** %287, i64 %idxprom369
  %288 = load i32*, i32** %arrayidx370, align 8
  %arrayidx371 = getelementptr inbounds i32, i32* %288, i64 %idxprom368
  %289 = load i32, i32* %arrayidx371, align 4
  %290 = load i32, i32* %i, align 4
  %idxprom372 = sext i32 %290 to i64
  %291 = load i32, i32* %j, align 4
  %idxprom373 = sext i32 %291 to i64
  %292 = load %struct.RD_8x8DATA*, %struct.RD_8x8DATA** %dataTr.addr, align 8
  %lrec = getelementptr inbounds %struct.RD_8x8DATA, %struct.RD_8x8DATA* %292, i32 0, i32 11
  %arrayidx374 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %lrec, i32 0, i64 %idxprom373
  %arrayidx375 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx374, i32 0, i64 %idxprom372
  store i32 %289, i32* %arrayidx375, align 4
  br label %if.end.376

if.end.376:                                       ; preds = %if.then.367, %land.lhs.true.365, %for.body.344
  br label %for.inc.377

for.inc.377:                                      ; preds = %if.end.376
  %293 = load i32, i32* %i, align 4
  %inc378 = add nsw i32 %293, 1
  store i32 %inc378, i32* %i, align 4
  br label %for.cond.340

for.end.379:                                      ; preds = %for.cond.340
  br label %for.inc.380

for.inc.380:                                      ; preds = %for.end.379
  %294 = load i32, i32* %j, align 4
  %inc381 = add nsw i32 %294, 1
  store i32 %inc381, i32* %j, align 4
  br label %for.cond.333

for.end.382:                                      ; preds = %for.cond.333
  br label %if.end.383

if.end.383:                                       ; preds = %for.end.382, %if.then.280
  %295 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %AdaptiveRounding = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %295, i32 0, i32 98
  %296 = load i32, i32* %AdaptiveRounding, align 4
  %tobool384 = icmp ne i32 %296, 0
  br i1 %tobool384, label %if.then.385, label %if.end.447

if.then.385:                                      ; preds = %if.end.383
  %297 = load i32, i32* %j0, align 4
  store i32 %297, i32* %j, align 4
  br label %for.cond.386

for.cond.386:                                     ; preds = %for.inc.400, %if.then.385
  %298 = load i32, i32* %j, align 4
  %299 = load i32, i32* %j0, align 4
  %add387 = add nsw i32 %299, 8
  %cmp388 = icmp slt i32 %298, %add387
  br i1 %cmp388, label %for.body.390, label %for.end.402

for.body.390:                                     ; preds = %for.cond.386
  %300 = load i32, i32* %i0, align 4
  %idxprom391 = sext i32 %300 to i64
  %301 = load i32, i32* %j, align 4
  %idxprom392 = sext i32 %301 to i64
  %arrayidx393 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @submacroblock_mode_decision.fadjust, i32 0, i64 %idxprom392
  %arrayidx394 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx393, i32 0, i64 %idxprom391
  %302 = bitcast i32* %arrayidx394 to i8*
  %303 = load i32, i32* %i0, align 4
  %idxprom395 = sext i32 %303 to i64
  %304 = load i32, i32* %j, align 4
  %idxprom396 = sext i32 %304 to i64
  %305 = load i32***, i32**** %fadjustTransform, align 8
  %arrayidx397 = getelementptr inbounds i32**, i32*** %305, i64 0
  %306 = load i32**, i32*** %arrayidx397, align 8
  %arrayidx398 = getelementptr inbounds i32*, i32** %306, i64 %idxprom396
  %307 = load i32*, i32** %arrayidx398, align 8
  %arrayidx399 = getelementptr inbounds i32, i32* %307, i64 %idxprom395
  %308 = bitcast i32* %arrayidx399 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %302, i8* %308, i64 32, i32 4, i1 false)
  br label %for.inc.400

for.inc.400:                                      ; preds = %for.body.390
  %309 = load i32, i32* %j, align 4
  %inc401 = add nsw i32 %309, 1
  store i32 %inc401, i32* %j, align 4
  br label %for.cond.386

for.end.402:                                      ; preds = %for.cond.386
  %310 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %AdaptRndChroma = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %310, i32 0, i32 187
  %311 = load i32, i32* %AdaptRndChroma, align 4
  %tobool403 = icmp ne i32 %311, 0
  br i1 %tobool403, label %if.then.404, label %if.end.446

if.then.404:                                      ; preds = %for.end.402
  %312 = load i32, i32* %j0, align 4
  %313 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %313, i32 0, i32 163
  %314 = load i32, i32* %mb_cr_size_y, align 4
  %mul405 = mul nsw i32 %312, %314
  %div = sdiv i32 %mul405, 16
  store i32 %div, i32* %j0_cr, align 4
  %315 = load i32, i32* %i0, align 4
  %316 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %316, i32 0, i32 162
  %317 = load i32, i32* %mb_cr_size_x, align 4
  %mul406 = mul nsw i32 %315, %317
  %div407 = sdiv i32 %mul406, 16
  store i32 %div407, i32* %i0_cr, align 4
  %318 = load i32, i32* %j0_cr, align 4
  store i32 %318, i32* %j, align 4
  br label %for.cond.408

for.cond.408:                                     ; preds = %for.inc.443, %if.then.404
  %319 = load i32, i32* %j, align 4
  %320 = load i32, i32* %j0_cr, align 4
  %321 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y409 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %321, i32 0, i32 163
  %322 = load i32, i32* %mb_cr_size_y409, align 4
  %shr410 = ashr i32 %322, 1
  %add411 = add nsw i32 %320, %shr410
  %cmp412 = icmp slt i32 %319, %add411
  br i1 %cmp412, label %for.body.414, label %for.end.445

for.body.414:                                     ; preds = %for.cond.408
  %323 = load i32, i32* %i0_cr, align 4
  %idxprom415 = sext i32 %323 to i64
  %324 = load i32, i32* %j, align 4
  %idxprom416 = sext i32 %324 to i64
  %arrayidx417 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* getelementptr inbounds ([2 x [16 x [16 x i32]]], [2 x [16 x [16 x i32]]]* @submacroblock_mode_decision.fadjustCr, i32 0, i64 0), i32 0, i64 %idxprom416
  %arrayidx418 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx417, i32 0, i64 %idxprom415
  %325 = bitcast i32* %arrayidx418 to i8*
  %326 = load i32, i32* %i0_cr, align 4
  %idxprom419 = sext i32 %326 to i64
  %327 = load i32, i32* %j, align 4
  %idxprom420 = sext i32 %327 to i64
  %328 = load i32****, i32***** %fadjustTransformCr, align 8
  %arrayidx421 = getelementptr inbounds i32***, i32**** %328, i64 0
  %329 = load i32***, i32**** %arrayidx421, align 8
  %arrayidx422 = getelementptr inbounds i32**, i32*** %329, i64 0
  %330 = load i32**, i32*** %arrayidx422, align 8
  %arrayidx423 = getelementptr inbounds i32*, i32** %330, i64 %idxprom420
  %331 = load i32*, i32** %arrayidx423, align 8
  %arrayidx424 = getelementptr inbounds i32, i32* %331, i64 %idxprom419
  %332 = bitcast i32* %arrayidx424 to i8*
  %333 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x425 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %333, i32 0, i32 162
  %334 = load i32, i32* %mb_cr_size_x425, align 4
  %shr426 = ashr i32 %334, 1
  %conv427 = sext i32 %shr426 to i64
  %mul428 = mul i64 %conv427, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %325, i8* %332, i64 %mul428, i32 4, i1 false)
  %335 = load i32, i32* %i0_cr, align 4
  %idxprom429 = sext i32 %335 to i64
  %336 = load i32, i32* %j, align 4
  %idxprom430 = sext i32 %336 to i64
  %arrayidx431 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* getelementptr inbounds ([2 x [16 x [16 x i32]]], [2 x [16 x [16 x i32]]]* @submacroblock_mode_decision.fadjustCr, i32 0, i64 1), i32 0, i64 %idxprom430
  %arrayidx432 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx431, i32 0, i64 %idxprom429
  %337 = bitcast i32* %arrayidx432 to i8*
  %338 = load i32, i32* %i0_cr, align 4
  %idxprom433 = sext i32 %338 to i64
  %339 = load i32, i32* %j, align 4
  %idxprom434 = sext i32 %339 to i64
  %340 = load i32****, i32***** %fadjustTransformCr, align 8
  %arrayidx435 = getelementptr inbounds i32***, i32**** %340, i64 0
  %341 = load i32***, i32**** %arrayidx435, align 8
  %arrayidx436 = getelementptr inbounds i32**, i32*** %341, i64 1
  %342 = load i32**, i32*** %arrayidx436, align 8
  %arrayidx437 = getelementptr inbounds i32*, i32** %342, i64 %idxprom434
  %343 = load i32*, i32** %arrayidx437, align 8
  %arrayidx438 = getelementptr inbounds i32, i32* %343, i64 %idxprom433
  %344 = bitcast i32* %arrayidx438 to i8*
  %345 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x439 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %345, i32 0, i32 162
  %346 = load i32, i32* %mb_cr_size_x439, align 4
  %shr440 = ashr i32 %346, 1
  %conv441 = sext i32 %shr440 to i64
  %mul442 = mul i64 %conv441, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %337, i8* %344, i64 %mul442, i32 4, i1 false)
  br label %for.inc.443

for.inc.443:                                      ; preds = %for.body.414
  %347 = load i32, i32* %j, align 4
  %inc444 = add nsw i32 %347, 1
  store i32 %inc444, i32* %j, align 4
  br label %for.cond.408

for.end.445:                                      ; preds = %for.cond.408
  br label %if.end.446

if.end.446:                                       ; preds = %for.end.445, %for.end.402
  br label %if.end.447

if.end.447:                                       ; preds = %if.end.446, %if.end.383
  %348 = load i32, i32* %block.addr, align 4
  %cmp448 = icmp slt i32 %348, 3
  br i1 %cmp448, label %if.then.450, label %if.end.451

if.then.450:                                      ; preds = %if.end.447
  %349 = load %struct.CSobj*, %struct.CSobj** @cs_b8, align 8
  call void @store_coding_state(%struct.CSobj* %349)
  br label %if.end.451

if.end.451:                                       ; preds = %if.then.450, %if.end.447
  br label %if.end.452

if.end.452:                                       ; preds = %if.end.451, %land.lhs.true.277, %lor.lhs.false.274
  %350 = load %struct.CSobj*, %struct.CSobj** @cs_cm, align 8
  call void @reset_coding_state(%struct.CSobj* %350)
  br label %if.end.453

if.end.453:                                       ; preds = %if.end.452, %land.lhs.true.30, %lor.lhs.false.27, %for.body
  br label %for.inc.454

for.inc.454:                                      ; preds = %if.end.453
  %351 = load i32, i32* %index, align 4
  %inc455 = add nsw i32 %351, 1
  store i32 %inc455, i32* %index, align 4
  br label %for.cond

for.end.456:                                      ; preds = %for.cond
  %352 = load i32, i32* %transform8x8.addr, align 4
  %tobool457 = icmp ne i32 %352, 0
  br i1 %tobool457, label %if.end.460, label %if.then.458

if.then.458:                                      ; preds = %for.end.456
  %353 = load i32, i32* %min_cost8x8, align 4
  %354 = load %struct.RD_8x8DATA*, %struct.RD_8x8DATA** %dataTr.addr, align 8
  %cost8x8 = getelementptr inbounds %struct.RD_8x8DATA, %struct.RD_8x8DATA* %354, i32 0, i32 0
  %355 = load i32, i32* %cost8x8, align 4
  %add459 = add nsw i32 %355, %353
  store i32 %add459, i32* %cost8x8, align 4
  br label %if.end.460

if.end.460:                                       ; preds = %if.then.458, %for.end.456
  %356 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt461 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %356, i32 0, i32 113
  %357 = load i32, i32* %rdopt461, align 4
  %tobool462 = icmp ne i32 %357, 0
  br i1 %tobool462, label %if.end.605, label %if.then.463

if.then.463:                                      ; preds = %if.end.460
  %358 = load i32, i32* %transform8x8.addr, align 4
  %tobool464 = icmp ne i32 %358, 0
  br i1 %tobool464, label %if.then.465, label %if.else.476

if.then.465:                                      ; preds = %if.then.463
  %359 = load i32, i32* %min_cost8x8, align 4
  %360 = load %struct.RD_8x8DATA*, %struct.RD_8x8DATA** %dataTr.addr, align 8
  %cost8x8466 = getelementptr inbounds %struct.RD_8x8DATA, %struct.RD_8x8DATA* %360, i32 0, i32 0
  %361 = load i32, i32* %cost8x8466, align 4
  %add467 = add nsw i32 %361, %359
  store i32 %add467, i32* %cost8x8466, align 4
  %362 = load i32, i32* %block.addr, align 4
  %idxprom468 = sext i32 %362 to i64
  %363 = load %struct.RD_8x8DATA*, %struct.RD_8x8DATA** %dataTr.addr, align 8
  %part8x8mode469 = getelementptr inbounds %struct.RD_8x8DATA, %struct.RD_8x8DATA* %363, i32 0, i32 5
  %arrayidx470 = getelementptr inbounds [4 x i16], [4 x i16]* %part8x8mode469, i32 0, i64 %idxprom468
  %364 = load i16, i16* %arrayidx470, align 2
  %conv471 = sext i16 %364 to i32
  store i32 %conv471, i32* %mode, align 4
  %365 = load i32, i32* %block.addr, align 4
  %idxprom472 = sext i32 %365 to i64
  %366 = load %struct.RD_8x8DATA*, %struct.RD_8x8DATA** %dataTr.addr, align 8
  %part8x8pdir473 = getelementptr inbounds %struct.RD_8x8DATA, %struct.RD_8x8DATA* %366, i32 0, i32 6
  %arrayidx474 = getelementptr inbounds [4 x i8], [4 x i8]* %part8x8pdir473, i32 0, i64 %idxprom472
  %367 = load i8, i8* %arrayidx474, align 1
  %conv475 = sext i8 %367 to i16
  store i16 %conv475, i16* %pdir, align 2
  br label %if.end.485

if.else.476:                                      ; preds = %if.then.463
  %368 = load i32, i32* %block.addr, align 4
  %idxprom477 = sext i32 %368 to i64
  %369 = load %struct.RD_8x8DATA*, %struct.RD_8x8DATA** %dataTr.addr, align 8
  %part8x8mode478 = getelementptr inbounds %struct.RD_8x8DATA, %struct.RD_8x8DATA* %369, i32 0, i32 5
  %arrayidx479 = getelementptr inbounds [4 x i16], [4 x i16]* %part8x8mode478, i32 0, i64 %idxprom477
  %370 = load i16, i16* %arrayidx479, align 2
  %conv480 = sext i16 %370 to i32
  store i32 %conv480, i32* %mode, align 4
  %371 = load i32, i32* %block.addr, align 4
  %idxprom481 = sext i32 %371 to i64
  %372 = load %struct.RD_8x8DATA*, %struct.RD_8x8DATA** %dataTr.addr, align 8
  %part8x8pdir482 = getelementptr inbounds %struct.RD_8x8DATA, %struct.RD_8x8DATA* %372, i32 0, i32 6
  %arrayidx483 = getelementptr inbounds [4 x i8], [4 x i8]* %part8x8pdir482, i32 0, i64 %idxprom481
  %373 = load i8, i8* %arrayidx483, align 1
  %conv484 = sext i8 %373 to i16
  store i16 %conv484, i16* %pdir, align 2
  br label %if.end.485

if.end.485:                                       ; preds = %if.else.476, %if.then.465
  store i64 0, i64* %curr_cbp_blk, align 8
  %374 = load i32, i32* %block.addr, align 4
  %375 = load i16, i16* %pdir, align 2
  %376 = load i16, i16* %pdir, align 2
  %conv486 = sext i16 %376 to i32
  %cmp487 = icmp eq i32 %conv486, 0
  br i1 %cmp487, label %cond.true.493, label %lor.lhs.false.489

lor.lhs.false.489:                                ; preds = %if.end.485
  %377 = load i16, i16* %pdir, align 2
  %conv490 = sext i16 %377 to i32
  %cmp491 = icmp eq i32 %conv490, 2
  br i1 %cmp491, label %cond.true.493, label %cond.false.494

cond.true.493:                                    ; preds = %lor.lhs.false.489, %if.end.485
  %378 = load i32, i32* %mode, align 4
  br label %cond.end.495

cond.false.494:                                   ; preds = %lor.lhs.false.489
  br label %cond.end.495

cond.end.495:                                     ; preds = %cond.false.494, %cond.true.493
  %cond496 = phi i32 [ %378, %cond.true.493 ], [ 0, %cond.false.494 ]
  %379 = load i16, i16* %pdir, align 2
  %conv497 = sext i16 %379 to i32
  %cmp498 = icmp eq i32 %conv497, 1
  br i1 %cmp498, label %cond.true.504, label %lor.lhs.false.500

lor.lhs.false.500:                                ; preds = %cond.end.495
  %380 = load i16, i16* %pdir, align 2
  %conv501 = sext i16 %380 to i32
  %cmp502 = icmp eq i32 %conv501, 2
  br i1 %cmp502, label %cond.true.504, label %cond.false.505

cond.true.504:                                    ; preds = %lor.lhs.false.500, %cond.end.495
  %381 = load i32, i32* %mode, align 4
  br label %cond.end.506

cond.false.505:                                   ; preds = %lor.lhs.false.500
  br label %cond.end.506

cond.end.506:                                     ; preds = %cond.false.505, %cond.true.504
  %cond507 = phi i32 [ %381, %cond.true.504 ], [ 0, %cond.false.505 ]
  %382 = load i32, i32* %block.addr, align 4
  %idxprom508 = sext i32 %382 to i64
  %383 = load %struct.RD_8x8DATA*, %struct.RD_8x8DATA** %dataTr.addr, align 8
  %part8x8fwref509 = getelementptr inbounds %struct.RD_8x8DATA, %struct.RD_8x8DATA* %383, i32 0, i32 7
  %arrayidx510 = getelementptr inbounds [4 x i8], [4 x i8]* %part8x8fwref509, i32 0, i64 %idxprom508
  %384 = load i8, i8* %arrayidx510, align 1
  %conv511 = sext i8 %384 to i16
  %385 = load i32, i32* %block.addr, align 4
  %idxprom512 = sext i32 %385 to i64
  %386 = load %struct.RD_8x8DATA*, %struct.RD_8x8DATA** %dataTr.addr, align 8
  %part8x8bwref513 = getelementptr inbounds %struct.RD_8x8DATA, %struct.RD_8x8DATA* %386, i32 0, i32 8
  %arrayidx514 = getelementptr inbounds [4 x i8], [4 x i8]* %part8x8bwref513, i32 0, i64 %idxprom512
  %387 = load i8, i8* %arrayidx514, align 1
  %conv515 = sext i8 %387 to i16
  %call516 = call i32 @LumaResidualCoding8x8(i32* %dummy, i64* %curr_cbp_blk, i32 %374, i16 signext %375, i32 %cond496, i32 %cond507, i16 signext %conv511, i16 signext %conv515)
  store i32 %call516, i32* %best_cnt_nonz, align 4
  %388 = load i32, i32* %block.addr, align 4
  %shr517 = ashr i32 %388, 1
  %shl518 = shl i32 %shr517, 3
  %389 = load i32, i32* %block.addr, align 4
  %rem519 = srem i32 %389, 2
  %shl520 = shl i32 %rem519, 1
  %add521 = add nsw i32 %shl518, %shl520
  %shl522 = shl i32 51, %add521
  %neg523 = xor i32 %shl522, -1
  %390 = load i32, i32* @cbp_blk8x8, align 4
  %and524 = and i32 %390, %neg523
  store i32 %and524, i32* @cbp_blk8x8, align 4
  %391 = load i64, i64* %curr_cbp_blk, align 8
  %392 = load i32, i32* @cbp_blk8x8, align 4
  %conv525 = sext i32 %392 to i64
  %or526 = or i64 %conv525, %391
  %conv527 = trunc i64 %or526 to i32
  store i32 %conv527, i32* @cbp_blk8x8, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.528

for.cond.528:                                     ; preds = %for.inc.550, %cond.end.506
  %393 = load i32, i32* %k, align 4
  %cmp529 = icmp slt i32 %393, 4
  br i1 %cmp529, label %for.body.531, label %for.end.552

for.body.531:                                     ; preds = %for.cond.528
  store i32 0, i32* %j, align 4
  br label %for.cond.532

for.cond.532:                                     ; preds = %for.inc.547, %for.body.531
  %394 = load i32, i32* %j, align 4
  %cmp533 = icmp slt i32 %394, 2
  br i1 %cmp533, label %for.body.535, label %for.end.549

for.body.535:                                     ; preds = %for.cond.532
  %395 = load i32, i32* %j, align 4
  %idxprom536 = sext i32 %395 to i64
  %396 = load i32, i32* %k, align 4
  %idxprom537 = sext i32 %396 to i64
  %397 = load i32***, i32**** %cofACtr.addr, align 8
  %arrayidx538 = getelementptr inbounds i32**, i32*** %397, i64 %idxprom537
  %398 = load i32**, i32*** %arrayidx538, align 8
  %arrayidx539 = getelementptr inbounds i32*, i32** %398, i64 %idxprom536
  %399 = load i32*, i32** %arrayidx539, align 8
  %400 = bitcast i32* %399 to i8*
  %401 = load i32, i32* %j, align 4
  %idxprom540 = sext i32 %401 to i64
  %402 = load i32, i32* %k, align 4
  %idxprom541 = sext i32 %402 to i64
  %403 = load i32, i32* %block.addr, align 4
  %idxprom542 = sext i32 %403 to i64
  %404 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC543 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %404, i32 0, i32 53
  %405 = load i32****, i32***** %cofAC543, align 8
  %arrayidx544 = getelementptr inbounds i32***, i32**** %405, i64 %idxprom542
  %406 = load i32***, i32**** %arrayidx544, align 8
  %arrayidx545 = getelementptr inbounds i32**, i32*** %406, i64 %idxprom541
  %407 = load i32**, i32*** %arrayidx545, align 8
  %arrayidx546 = getelementptr inbounds i32*, i32** %407, i64 %idxprom540
  %408 = load i32*, i32** %arrayidx546, align 8
  %409 = bitcast i32* %408 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %400, i8* %409, i64 260, i32 4, i1 false)
  br label %for.inc.547

for.inc.547:                                      ; preds = %for.body.535
  %410 = load i32, i32* %j, align 4
  %inc548 = add nsw i32 %410, 1
  store i32 %inc548, i32* %j, align 4
  br label %for.cond.532

for.end.549:                                      ; preds = %for.cond.532
  br label %for.inc.550

for.inc.550:                                      ; preds = %for.end.549
  %411 = load i32, i32* %k, align 4
  %inc551 = add nsw i32 %411, 1
  store i32 %inc551, i32* %k, align 4
  br label %for.cond.528

for.end.552:                                      ; preds = %for.cond.528
  %412 = load i32, i32* %j0, align 4
  store i32 %412, i32* %j, align 4
  br label %for.cond.553

for.cond.553:                                     ; preds = %for.inc.602, %for.end.552
  %413 = load i32, i32* %j, align 4
  %414 = load i32, i32* %j0, align 4
  %add554 = add nsw i32 %414, 8
  %cmp555 = icmp slt i32 %413, %add554
  br i1 %cmp555, label %for.body.557, label %for.end.604

for.body.557:                                     ; preds = %for.cond.553
  %415 = load i32, i32* %i0, align 4
  %idxprom558 = sext i32 %415 to i64
  %416 = load i32, i32* %j, align 4
  %idxprom559 = sext i32 %416 to i64
  %417 = load %struct.RD_8x8DATA*, %struct.RD_8x8DATA** %dataTr.addr, align 8
  %rec_mbY8x8560 = getelementptr inbounds %struct.RD_8x8DATA, %struct.RD_8x8DATA* %417, i32 0, i32 9
  %arrayidx561 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %rec_mbY8x8560, i32 0, i64 %idxprom559
  %arrayidx562 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx561, i32 0, i64 %idxprom558
  %418 = bitcast i16* %arrayidx562 to i8*
  %419 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x563 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %419, i32 0, i32 39
  %420 = load i32, i32* %pix_x563, align 4
  %421 = load i32, i32* %i0, align 4
  %add564 = add nsw i32 %420, %421
  %idxprom565 = sext i32 %add564 to i64
  %422 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y566 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %422, i32 0, i32 40
  %423 = load i32, i32* %pix_y566, align 4
  %424 = load i32, i32* %j, align 4
  %add567 = add nsw i32 %423, %424
  %idxprom568 = sext i32 %add567 to i64
  %425 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY569 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %425, i32 0, i32 29
  %426 = load i16**, i16*** %imgY569, align 8
  %arrayidx570 = getelementptr inbounds i16*, i16** %426, i64 %idxprom568
  %427 = load i16*, i16** %arrayidx570, align 8
  %arrayidx571 = getelementptr inbounds i16, i16* %427, i64 %idxprom565
  %428 = bitcast i16* %arrayidx571 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %418, i8* %428, i64 16, i32 2, i1 false)
  %429 = load i32, i32* %i0, align 4
  %idxprom572 = sext i32 %429 to i64
  %430 = load i32, i32* %j, align 4
  %idxprom573 = sext i32 %430 to i64
  %431 = load %struct.RD_8x8DATA*, %struct.RD_8x8DATA** %dataTr.addr, align 8
  %mpr8x8574 = getelementptr inbounds %struct.RD_8x8DATA, %struct.RD_8x8DATA* %431, i32 0, i32 10
  %arrayidx575 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr8x8574, i32 0, i64 %idxprom573
  %arrayidx576 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx575, i32 0, i64 %idxprom572
  %432 = bitcast i16* %arrayidx576 to i8*
  %433 = load i32, i32* %i0, align 4
  %idxprom577 = sext i32 %433 to i64
  %434 = load i32, i32* %j, align 4
  %idxprom578 = sext i32 %434 to i64
  %435 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr579 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %435, i32 0, i32 51
  %arrayidx580 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr579, i32 0, i64 %idxprom578
  %arrayidx581 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx580, i32 0, i64 %idxprom577
  %436 = bitcast i16* %arrayidx581 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %432, i8* %436, i64 16, i32 2, i1 false)
  %437 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type582 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %437, i32 0, i32 5
  %438 = load i32, i32* %type582, align 4
  %cmp583 = icmp eq i32 %438, 3
  br i1 %cmp583, label %land.lhs.true.585, label %if.end.601

land.lhs.true.585:                                ; preds = %for.body.557
  %439 = load i32, i32* @si_frame_indicator, align 4
  %tobool586 = icmp ne i32 %439, 0
  br i1 %tobool586, label %if.end.601, label %if.then.587

if.then.587:                                      ; preds = %land.lhs.true.585
  %440 = load i32, i32* %i0, align 4
  %idxprom588 = sext i32 %440 to i64
  %441 = load i32, i32* %j, align 4
  %idxprom589 = sext i32 %441 to i64
  %442 = load %struct.RD_8x8DATA*, %struct.RD_8x8DATA** %dataTr.addr, align 8
  %lrec590 = getelementptr inbounds %struct.RD_8x8DATA, %struct.RD_8x8DATA* %442, i32 0, i32 11
  %arrayidx591 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %lrec590, i32 0, i64 %idxprom589
  %arrayidx592 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx591, i32 0, i64 %idxprom588
  %443 = bitcast i32* %arrayidx592 to i8*
  %444 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x593 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %444, i32 0, i32 39
  %445 = load i32, i32* %pix_x593, align 4
  %446 = load i32, i32* %i0, align 4
  %add594 = add nsw i32 %445, %446
  %idxprom595 = sext i32 %add594 to i64
  %447 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y596 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %447, i32 0, i32 40
  %448 = load i32, i32* %pix_y596, align 4
  %449 = load i32, i32* %j, align 4
  %add597 = add nsw i32 %448, %449
  %idxprom598 = sext i32 %add597 to i64
  %450 = load i32**, i32*** @lrec, align 8
  %arrayidx599 = getelementptr inbounds i32*, i32** %450, i64 %idxprom598
  %451 = load i32*, i32** %arrayidx599, align 8
  %arrayidx600 = getelementptr inbounds i32, i32* %451, i64 %idxprom595
  %452 = bitcast i32* %arrayidx600 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %443, i8* %452, i64 32, i32 4, i1 false)
  br label %if.end.601

if.end.601:                                       ; preds = %if.then.587, %land.lhs.true.585, %for.body.557
  br label %for.inc.602

for.inc.602:                                      ; preds = %if.end.601
  %453 = load i32, i32* %j, align 4
  %inc603 = add nsw i32 %453, 1
  store i32 %inc603, i32* %j, align 4
  br label %for.cond.553

for.end.604:                                      ; preds = %for.cond.553
  br label %if.end.605

if.end.605:                                       ; preds = %for.end.604, %if.end.460
  %454 = load i32, i32* %best_cnt_nonz, align 4
  %tobool606 = icmp ne i32 %454, 0
  br i1 %tobool606, label %if.then.607, label %if.end.611

if.then.607:                                      ; preds = %if.end.605
  %455 = load i32, i32* %block.addr, align 4
  %shl608 = shl i32 1, %455
  %456 = load i32, i32* @cbp8x8, align 4
  %or609 = or i32 %456, %shl608
  store i32 %or609, i32* @cbp8x8, align 4
  %457 = load i32, i32* %best_cnt_nonz, align 4
  %458 = load i32, i32* @cnt_nonz_8x8, align 4
  %add610 = add nsw i32 %458, %457
  store i32 %add610, i32* @cnt_nonz_8x8, align 4
  br label %if.end.611

if.end.611:                                       ; preds = %if.then.607, %if.end.605
  %459 = load i32, i32* %transform8x8.addr, align 4
  %tobool612 = icmp ne i32 %459, 0
  br i1 %tobool612, label %if.else.658, label %if.then.613

if.then.613:                                      ; preds = %if.end.611
  %460 = load i32, i32* %block.addr, align 4
  %cmp614 = icmp slt i32 %460, 3
  br i1 %cmp614, label %if.then.616, label %if.end.657

if.then.616:                                      ; preds = %if.then.613
  %461 = load i32, i32* %block.addr, align 4
  %shr617 = ashr i32 %461, 1
  %mul618 = mul nsw i32 8, %shr617
  store i32 %mul618, i32* %j0, align 4
  %462 = load i32, i32* %block.addr, align 4
  %and619 = and i32 %462, 1
  %mul620 = mul nsw i32 8, %and619
  store i32 %mul620, i32* %i0, align 4
  %463 = load i32, i32* %j0, align 4
  store i32 %463, i32* %j, align 4
  br label %for.cond.621

for.cond.621:                                     ; preds = %for.inc.654, %if.then.616
  %464 = load i32, i32* %j, align 4
  %465 = load i32, i32* %j0, align 4
  %add622 = add nsw i32 %465, 8
  %cmp623 = icmp slt i32 %464, %add622
  br i1 %cmp623, label %for.body.625, label %for.end.656

for.body.625:                                     ; preds = %for.cond.621
  %466 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x626 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %466, i32 0, i32 39
  %467 = load i32, i32* %pix_x626, align 4
  %idxprom627 = sext i32 %467 to i64
  %468 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y628 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %468, i32 0, i32 40
  %469 = load i32, i32* %pix_y628, align 4
  %470 = load i32, i32* %j, align 4
  %add629 = add nsw i32 %469, %470
  %idxprom630 = sext i32 %add629 to i64
  %471 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY631 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %471, i32 0, i32 29
  %472 = load i16**, i16*** %imgY631, align 8
  %arrayidx632 = getelementptr inbounds i16*, i16** %472, i64 %idxprom630
  %473 = load i16*, i16** %arrayidx632, align 8
  %arrayidx633 = getelementptr inbounds i16, i16* %473, i64 %idxprom627
  %474 = bitcast i16* %arrayidx633 to i8*
  %475 = load i32, i32* %j, align 4
  %idxprom634 = sext i32 %475 to i64
  %476 = load %struct.RD_8x8DATA*, %struct.RD_8x8DATA** %dataTr.addr, align 8
  %rec_mbY8x8635 = getelementptr inbounds %struct.RD_8x8DATA, %struct.RD_8x8DATA* %476, i32 0, i32 9
  %arrayidx636 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %rec_mbY8x8635, i32 0, i64 %idxprom634
  %477 = bitcast [16 x i16]* %arrayidx636 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %474, i8* %477, i64 16, i32 2, i1 false)
  %478 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type637 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %478, i32 0, i32 5
  %479 = load i32, i32* %type637, align 4
  %cmp638 = icmp eq i32 %479, 3
  br i1 %cmp638, label %land.lhs.true.640, label %if.end.653

land.lhs.true.640:                                ; preds = %for.body.625
  %480 = load i32, i32* @si_frame_indicator, align 4
  %tobool641 = icmp ne i32 %480, 0
  br i1 %tobool641, label %if.end.653, label %if.then.642

if.then.642:                                      ; preds = %land.lhs.true.640
  %481 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x643 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %481, i32 0, i32 39
  %482 = load i32, i32* %pix_x643, align 4
  %idxprom644 = sext i32 %482 to i64
  %483 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y645 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %483, i32 0, i32 40
  %484 = load i32, i32* %pix_y645, align 4
  %485 = load i32, i32* %j, align 4
  %add646 = add nsw i32 %484, %485
  %idxprom647 = sext i32 %add646 to i64
  %486 = load i32**, i32*** @lrec, align 8
  %arrayidx648 = getelementptr inbounds i32*, i32** %486, i64 %idxprom647
  %487 = load i32*, i32** %arrayidx648, align 8
  %arrayidx649 = getelementptr inbounds i32, i32* %487, i64 %idxprom644
  %488 = bitcast i32* %arrayidx649 to i8*
  %489 = load i32, i32* %j, align 4
  %idxprom650 = sext i32 %489 to i64
  %490 = load %struct.RD_8x8DATA*, %struct.RD_8x8DATA** %dataTr.addr, align 8
  %lrec651 = getelementptr inbounds %struct.RD_8x8DATA, %struct.RD_8x8DATA* %490, i32 0, i32 11
  %arrayidx652 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %lrec651, i32 0, i64 %idxprom650
  %491 = bitcast [16 x i32]* %arrayidx652 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %488, i8* %491, i64 16, i32 4, i1 false)
  br label %if.end.653

if.end.653:                                       ; preds = %if.then.642, %land.lhs.true.640, %for.body.625
  br label %for.inc.654

for.inc.654:                                      ; preds = %if.end.653
  %492 = load i32, i32* %j, align 4
  %inc655 = add nsw i32 %492, 1
  store i32 %inc655, i32* %j, align 4
  br label %for.cond.621

for.end.656:                                      ; preds = %for.cond.621
  br label %if.end.657

if.end.657:                                       ; preds = %for.end.656, %if.then.613
  br label %if.end.676

if.else.658:                                      ; preds = %if.end.611
  %493 = load i32, i32* %block.addr, align 4
  %494 = load i32, i32* %block.addr, align 4
  %idxprom659 = sext i32 %494 to i64
  %495 = load %struct.RD_8x8DATA*, %struct.RD_8x8DATA** %dataTr.addr, align 8
  %part8x8mode660 = getelementptr inbounds %struct.RD_8x8DATA, %struct.RD_8x8DATA* %495, i32 0, i32 5
  %arrayidx661 = getelementptr inbounds [4 x i16], [4 x i16]* %part8x8mode660, i32 0, i64 %idxprom659
  %496 = load i16, i16* %arrayidx661, align 2
  %conv662 = sext i16 %496 to i32
  %497 = load i32, i32* %block.addr, align 4
  %idxprom663 = sext i32 %497 to i64
  %498 = load %struct.RD_8x8DATA*, %struct.RD_8x8DATA** %dataTr.addr, align 8
  %part8x8fwref664 = getelementptr inbounds %struct.RD_8x8DATA, %struct.RD_8x8DATA* %498, i32 0, i32 7
  %arrayidx665 = getelementptr inbounds [4 x i8], [4 x i8]* %part8x8fwref664, i32 0, i64 %idxprom663
  %499 = load i8, i8* %arrayidx665, align 1
  %conv666 = sext i8 %499 to i32
  %500 = load i32, i32* %block.addr, align 4
  %idxprom667 = sext i32 %500 to i64
  %501 = load %struct.RD_8x8DATA*, %struct.RD_8x8DATA** %dataTr.addr, align 8
  %part8x8bwref668 = getelementptr inbounds %struct.RD_8x8DATA, %struct.RD_8x8DATA* %501, i32 0, i32 8
  %arrayidx669 = getelementptr inbounds [4 x i8], [4 x i8]* %part8x8bwref668, i32 0, i64 %idxprom667
  %502 = load i8, i8* %arrayidx669, align 1
  %conv670 = sext i8 %502 to i32
  %503 = load i32, i32* %block.addr, align 4
  %idxprom671 = sext i32 %503 to i64
  %504 = load %struct.RD_8x8DATA*, %struct.RD_8x8DATA** %dataTr.addr, align 8
  %part8x8pdir672 = getelementptr inbounds %struct.RD_8x8DATA, %struct.RD_8x8DATA* %504, i32 0, i32 6
  %arrayidx673 = getelementptr inbounds [4 x i8], [4 x i8]* %part8x8pdir672, i32 0, i64 %idxprom671
  %505 = load i8, i8* %arrayidx673, align 1
  %conv674 = sext i8 %505 to i32
  %506 = load i16, i16* %bslice.addr, align 2
  %conv675 = sext i16 %506 to i32
  call void @StoreNewMotionVectorsBlock8x8(i32 0, i32 %493, i32 %conv662, i32 %conv666, i32 %conv670, i32 %conv674, i32 %conv675)
  br label %if.end.676

if.end.676:                                       ; preds = %if.else.658, %if.end.657
  %507 = load i32, i32* %block.addr, align 4
  %508 = load i32, i32* %block.addr, align 4
  %idxprom677 = sext i32 %508 to i64
  %509 = load %struct.RD_8x8DATA*, %struct.RD_8x8DATA** %dataTr.addr, align 8
  %part8x8mode678 = getelementptr inbounds %struct.RD_8x8DATA, %struct.RD_8x8DATA* %509, i32 0, i32 5
  %arrayidx679 = getelementptr inbounds [4 x i16], [4 x i16]* %part8x8mode678, i32 0, i64 %idxprom677
  %510 = load i16, i16* %arrayidx679, align 2
  %conv680 = sext i16 %510 to i32
  %511 = load i32, i32* %block.addr, align 4
  %idxprom681 = sext i32 %511 to i64
  %512 = load %struct.RD_8x8DATA*, %struct.RD_8x8DATA** %dataTr.addr, align 8
  %part8x8pdir682 = getelementptr inbounds %struct.RD_8x8DATA, %struct.RD_8x8DATA* %512, i32 0, i32 6
  %arrayidx683 = getelementptr inbounds [4 x i8], [4 x i8]* %part8x8pdir682, i32 0, i64 %idxprom681
  %513 = load i8, i8* %arrayidx683, align 1
  %conv684 = sext i8 %513 to i32
  %514 = load i32, i32* %block.addr, align 4
  %idxprom685 = sext i32 %514 to i64
  %515 = load %struct.RD_8x8DATA*, %struct.RD_8x8DATA** %dataTr.addr, align 8
  %part8x8fwref686 = getelementptr inbounds %struct.RD_8x8DATA, %struct.RD_8x8DATA* %515, i32 0, i32 7
  %arrayidx687 = getelementptr inbounds [4 x i8], [4 x i8]* %part8x8fwref686, i32 0, i64 %idxprom685
  %516 = load i8, i8* %arrayidx687, align 1
  %conv688 = sext i8 %516 to i32
  %517 = load i32, i32* %block.addr, align 4
  %idxprom689 = sext i32 %517 to i64
  %518 = load %struct.RD_8x8DATA*, %struct.RD_8x8DATA** %dataTr.addr, align 8
  %part8x8bwref690 = getelementptr inbounds %struct.RD_8x8DATA, %struct.RD_8x8DATA* %518, i32 0, i32 8
  %arrayidx691 = getelementptr inbounds [4 x i8], [4 x i8]* %part8x8bwref690, i32 0, i64 %idxprom689
  %519 = load i8, i8* %arrayidx691, align 1
  %conv692 = sext i8 %519 to i32
  call void @SetRefAndMotionVectors(i32 %507, i32 %conv680, i32 %conv684, i32 %conv688, i32 %conv692)
  %520 = load i32, i32* %block.addr, align 4
  %cmp693 = icmp slt i32 %520, 3
  br i1 %cmp693, label %if.then.695, label %if.end.696

if.then.695:                                      ; preds = %if.end.676
  %521 = load %struct.CSobj*, %struct.CSobj** @cs_b8, align 8
  call void @reset_coding_state(%struct.CSobj* %521)
  br label %if.end.696

if.end.696:                                       ; preds = %if.then.695, %if.end.676
  %522 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %AdaptiveRounding697 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %522, i32 0, i32 98
  %523 = load i32, i32* %AdaptiveRounding697, align 4
  %tobool698 = icmp ne i32 %523, 0
  br i1 %tobool698, label %if.then.699, label %if.end.770

if.then.699:                                      ; preds = %if.end.696
  %524 = load i32, i32* %j0, align 4
  store i32 %524, i32* %j, align 4
  br label %for.cond.700

for.cond.700:                                     ; preds = %for.inc.715, %if.then.699
  %525 = load i32, i32* %j, align 4
  %526 = load i32, i32* %j0, align 4
  %add701 = add nsw i32 %526, 8
  %cmp702 = icmp slt i32 %525, %add701
  br i1 %cmp702, label %for.body.704, label %for.end.717

for.body.704:                                     ; preds = %for.cond.700
  %527 = load i32, i32* %i0, align 4
  %idxprom705 = sext i32 %527 to i64
  %528 = load i32, i32* %j, align 4
  %idxprom706 = sext i32 %528 to i64
  %529 = load i32, i32* %lumaAdjustIndex, align 4
  %idxprom707 = sext i32 %529 to i64
  %530 = load i32***, i32**** %fadjustTransform, align 8
  %arrayidx708 = getelementptr inbounds i32**, i32*** %530, i64 %idxprom707
  %531 = load i32**, i32*** %arrayidx708, align 8
  %arrayidx709 = getelementptr inbounds i32*, i32** %531, i64 %idxprom706
  %532 = load i32*, i32** %arrayidx709, align 8
  %arrayidx710 = getelementptr inbounds i32, i32* %532, i64 %idxprom705
  %533 = bitcast i32* %arrayidx710 to i8*
  %534 = load i32, i32* %i0, align 4
  %idxprom711 = sext i32 %534 to i64
  %535 = load i32, i32* %j, align 4
  %idxprom712 = sext i32 %535 to i64
  %arrayidx713 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @submacroblock_mode_decision.fadjust, i32 0, i64 %idxprom712
  %arrayidx714 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx713, i32 0, i64 %idxprom711
  %536 = bitcast i32* %arrayidx714 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %533, i8* %536, i64 32, i32 4, i1 false)
  br label %for.inc.715

for.inc.715:                                      ; preds = %for.body.704
  %537 = load i32, i32* %j, align 4
  %inc716 = add nsw i32 %537, 1
  store i32 %inc716, i32* %j, align 4
  br label %for.cond.700

for.end.717:                                      ; preds = %for.cond.700
  %538 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %AdaptRndChroma718 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %538, i32 0, i32 187
  %539 = load i32, i32* %AdaptRndChroma718, align 4
  %tobool719 = icmp ne i32 %539, 0
  br i1 %tobool719, label %if.then.720, label %if.end.769

if.then.720:                                      ; preds = %for.end.717
  %540 = load i32, i32* %j0, align 4
  %541 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y722 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %541, i32 0, i32 163
  %542 = load i32, i32* %mb_cr_size_y722, align 4
  %mul723 = mul nsw i32 %540, %542
  %shr724 = ashr i32 %mul723, 4
  store i32 %shr724, i32* %j0_cr721, align 4
  %543 = load i32, i32* %i0, align 4
  %544 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x726 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %544, i32 0, i32 162
  %545 = load i32, i32* %mb_cr_size_x726, align 4
  %mul727 = mul nsw i32 %543, %545
  %shr728 = ashr i32 %mul727, 4
  store i32 %shr728, i32* %i0_cr725, align 4
  %546 = load i32, i32* %j0_cr721, align 4
  store i32 %546, i32* %j, align 4
  br label %for.cond.729

for.cond.729:                                     ; preds = %for.inc.766, %if.then.720
  %547 = load i32, i32* %j, align 4
  %548 = load i32, i32* %j0_cr721, align 4
  %549 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_y730 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %549, i32 0, i32 163
  %550 = load i32, i32* %mb_cr_size_y730, align 4
  %shr731 = ashr i32 %550, 1
  %add732 = add nsw i32 %548, %shr731
  %cmp733 = icmp slt i32 %547, %add732
  br i1 %cmp733, label %for.body.735, label %for.end.768

for.body.735:                                     ; preds = %for.cond.729
  %551 = load i32, i32* %i0_cr725, align 4
  %idxprom736 = sext i32 %551 to i64
  %552 = load i32, i32* %j, align 4
  %idxprom737 = sext i32 %552 to i64
  %553 = load i32, i32* %chromaAdjustIndex, align 4
  %idxprom738 = sext i32 %553 to i64
  %554 = load i32****, i32***** %fadjustTransformCr, align 8
  %arrayidx739 = getelementptr inbounds i32***, i32**** %554, i64 %idxprom738
  %555 = load i32***, i32**** %arrayidx739, align 8
  %arrayidx740 = getelementptr inbounds i32**, i32*** %555, i64 0
  %556 = load i32**, i32*** %arrayidx740, align 8
  %arrayidx741 = getelementptr inbounds i32*, i32** %556, i64 %idxprom737
  %557 = load i32*, i32** %arrayidx741, align 8
  %arrayidx742 = getelementptr inbounds i32, i32* %557, i64 %idxprom736
  %558 = bitcast i32* %arrayidx742 to i8*
  %559 = load i32, i32* %i0_cr725, align 4
  %idxprom743 = sext i32 %559 to i64
  %560 = load i32, i32* %j, align 4
  %idxprom744 = sext i32 %560 to i64
  %arrayidx745 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* getelementptr inbounds ([2 x [16 x [16 x i32]]], [2 x [16 x [16 x i32]]]* @submacroblock_mode_decision.fadjustCr, i32 0, i64 0), i32 0, i64 %idxprom744
  %arrayidx746 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx745, i32 0, i64 %idxprom743
  %561 = bitcast i32* %arrayidx746 to i8*
  %562 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x747 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %562, i32 0, i32 162
  %563 = load i32, i32* %mb_cr_size_x747, align 4
  %shr748 = ashr i32 %563, 1
  %conv749 = sext i32 %shr748 to i64
  %mul750 = mul i64 %conv749, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %558, i8* %561, i64 %mul750, i32 4, i1 false)
  %564 = load i32, i32* %i0_cr725, align 4
  %idxprom751 = sext i32 %564 to i64
  %565 = load i32, i32* %j, align 4
  %idxprom752 = sext i32 %565 to i64
  %566 = load i32, i32* %chromaAdjustIndex, align 4
  %idxprom753 = sext i32 %566 to i64
  %567 = load i32****, i32***** %fadjustTransformCr, align 8
  %arrayidx754 = getelementptr inbounds i32***, i32**** %567, i64 %idxprom753
  %568 = load i32***, i32**** %arrayidx754, align 8
  %arrayidx755 = getelementptr inbounds i32**, i32*** %568, i64 1
  %569 = load i32**, i32*** %arrayidx755, align 8
  %arrayidx756 = getelementptr inbounds i32*, i32** %569, i64 %idxprom752
  %570 = load i32*, i32** %arrayidx756, align 8
  %arrayidx757 = getelementptr inbounds i32, i32* %570, i64 %idxprom751
  %571 = bitcast i32* %arrayidx757 to i8*
  %572 = load i32, i32* %i0_cr725, align 4
  %idxprom758 = sext i32 %572 to i64
  %573 = load i32, i32* %j, align 4
  %idxprom759 = sext i32 %573 to i64
  %arrayidx760 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* getelementptr inbounds ([2 x [16 x [16 x i32]]], [2 x [16 x [16 x i32]]]* @submacroblock_mode_decision.fadjustCr, i32 0, i64 1), i32 0, i64 %idxprom759
  %arrayidx761 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx760, i32 0, i64 %idxprom758
  %574 = bitcast i32* %arrayidx761 to i8*
  %575 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_cr_size_x762 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %575, i32 0, i32 162
  %576 = load i32, i32* %mb_cr_size_x762, align 4
  %shr763 = ashr i32 %576, 1
  %conv764 = sext i32 %shr763 to i64
  %mul765 = mul i64 %conv764, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %571, i8* %574, i64 %mul765, i32 4, i1 false)
  br label %for.inc.766

for.inc.766:                                      ; preds = %for.body.735
  %577 = load i32, i32* %j, align 4
  %inc767 = add nsw i32 %577, 1
  store i32 %inc767, i32* %j, align 4
  br label %for.cond.729

for.end.768:                                      ; preds = %for.cond.729
  br label %if.end.769

if.end.769:                                       ; preds = %for.end.768, %for.end.717
  br label %if.end.770

if.end.770:                                       ; preds = %if.end.769, %if.end.696
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @store_coding_state(%struct.CSobj*) #2

declare i32 @GetDirectCost8x8(i32, i32*) #2

declare void @PartitionMotionSearch(i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare double @RDCost_for_8x8blocks(i32*, i64*, double, i32, i32, i16 signext, i16 signext, i16 signext) #2

declare i32 @B8Mode2Value(i32, i32) #2

declare void @reset_coding_state(%struct.CSobj*) #2

declare i32 @LumaResidualCoding8x8(i32*, i64*, i32, i16 signext, i32, i32, i16 signext, i16 signext) #2

declare void @StoreNewMotionVectorsBlock8x8(i32, i32, i32, i32, i32, i32, i32) #2

declare void @SetRefAndMotionVectors(i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @get_initial_mb16x16_cost() #0 {
entry:
  %currMB = alloca %struct.macroblock*, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 61
  %3 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %4 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left = getelementptr inbounds %struct.macroblock, %struct.macroblock* %4, i32 0, i32 7
  %5 = load %struct.macroblock*, %struct.macroblock** %mb_available_left, align 8
  %tobool = icmp ne %struct.macroblock* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up = getelementptr inbounds %struct.macroblock, %struct.macroblock* %6, i32 0, i32 6
  %7 = load %struct.macroblock*, %struct.macroblock** %mb_available_up, align 8
  %tobool1 = icmp ne %struct.macroblock* %7, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 3
  %9 = load i32, i32* %current_mb_nr2, align 4
  %sub = sub nsw i32 %9, 1
  %idxprom3 = sext i32 %sub to i64
  %10 = load double*, double** @mb16x16_cost_frame, align 8
  %arrayidx4 = getelementptr inbounds double, double* %10, i64 %idxprom3
  %11 = load double, double* %arrayidx4, align 8
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 3
  %13 = load i32, i32* %current_mb_nr5, align 4
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 13
  %15 = load i32, i32* %width, align 4
  %shr = ashr i32 %15, 4
  %sub6 = sub nsw i32 %13, %shr
  %idxprom7 = sext i32 %sub6 to i64
  %16 = load double*, double** @mb16x16_cost_frame, align 8
  %arrayidx8 = getelementptr inbounds double, double* %16, i64 %idxprom7
  %17 = load double, double* %arrayidx8, align 8
  %add = fadd double %11, %17
  %add9 = fadd double %add, 1.000000e+00
  %div = fdiv double %add9, 2.000000e+00
  store double %div, double* @mb16x16_cost, align 8
  br label %if.end.29

if.else:                                          ; preds = %land.lhs.true, %entry
  %18 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_left10 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %18, i32 0, i32 7
  %19 = load %struct.macroblock*, %struct.macroblock** %mb_available_left10, align 8
  %tobool11 = icmp ne %struct.macroblock* %19, null
  br i1 %tobool11, label %if.then.12, label %if.else.17

if.then.12:                                       ; preds = %if.else
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 3
  %21 = load i32, i32* %current_mb_nr13, align 4
  %sub14 = sub nsw i32 %21, 1
  %idxprom15 = sext i32 %sub14 to i64
  %22 = load double*, double** @mb16x16_cost_frame, align 8
  %arrayidx16 = getelementptr inbounds double, double* %22, i64 %idxprom15
  %23 = load double, double* %arrayidx16, align 8
  store double %23, double* @mb16x16_cost, align 8
  br label %if.end.28

if.else.17:                                       ; preds = %if.else
  %24 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_available_up18 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %24, i32 0, i32 6
  %25 = load %struct.macroblock*, %struct.macroblock** %mb_available_up18, align 8
  %tobool19 = icmp ne %struct.macroblock* %25, null
  br i1 %tobool19, label %if.then.20, label %if.else.27

if.then.20:                                       ; preds = %if.else.17
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr21 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 3
  %27 = load i32, i32* %current_mb_nr21, align 4
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width22 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 13
  %29 = load i32, i32* %width22, align 4
  %shr23 = ashr i32 %29, 4
  %sub24 = sub nsw i32 %27, %shr23
  %idxprom25 = sext i32 %sub24 to i64
  %30 = load double*, double** @mb16x16_cost_frame, align 8
  %arrayidx26 = getelementptr inbounds double, double* %30, i64 %idxprom25
  %31 = load double, double* %arrayidx26, align 8
  store double %31, double* @mb16x16_cost, align 8
  br label %if.end

if.else.27:                                       ; preds = %if.else.17
  store double 5.120000e+02, double* @mb16x16_cost, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.27, %if.then.20
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %if.then.12
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then
  %32 = load double, double* @mb16x16_cost, align 8
  %cmp = fcmp olt double %32, 5.120000e+02
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.29
  br label %cond.end

cond.false:                                       ; preds = %if.end.29
  %33 = load double, double* @mb16x16_cost, align 8
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 9
  %35 = load i32, i32* %qp, align 4
  %idxprom30 = sext i32 %35 to i64
  %36 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %36, i32 0, i32 5
  %37 = load i32, i32* %type, align 4
  %idxprom31 = sext i32 %37 to i64
  %38 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_mf_factor = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %38, i32 0, i32 153
  %39 = load double**, double*** %lambda_mf_factor, align 8
  %arrayidx32 = getelementptr inbounds double*, double** %39, i64 %idxprom31
  %40 = load double*, double** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds double, double* %40, i64 %idxprom30
  %41 = load double, double* %arrayidx33, align 8
  %mul = fmul double 5.120000e+02, %41
  %div34 = fdiv double %33, %mul
  %call = call double @sqrt(double %div34) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 1.000000e+00, %cond.true ], [ %call, %cond.false ]
  store double %cond, double* @lambda_mf_factor, align 8
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind uwtable
define void @adjust_mb16x16_cost(i32 %cost) #0 {
entry:
  %cost.addr = alloca i32, align 4
  store i32 %cost, i32* %cost.addr, align 4
  %0 = load i32, i32* %cost.addr, align 4
  %conv = sitofp i32 %0 to double
  store double %conv, double* @mb16x16_cost, align 8
  %1 = load double, double* @mb16x16_cost, align 8
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 3
  %3 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load double*, double** @mb16x16_cost_frame, align 8
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  store double %1, double* %arrayidx, align 8
  %5 = load double, double* @mb16x16_cost, align 8
  %cmp = fcmp olt double %5, 5.120000e+02
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load double, double* @mb16x16_cost, align 8
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 9
  %8 = load i32, i32* %qp, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 5
  %10 = load i32, i32* %type, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lambda_mf_factor = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 153
  %12 = load double**, double*** %lambda_mf_factor, align 8
  %arrayidx4 = getelementptr inbounds double*, double** %12, i64 %idxprom3
  %13 = load double*, double** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds double, double* %13, i64 %idxprom2
  %14 = load double, double* %arrayidx5, align 8
  %mul = fmul double 5.120000e+02, %14
  %div = fdiv double %6, %mul
  %call = call double @sqrt(double %div) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 1.000000e+00, %cond.true ], [ %call, %cond.false ]
  store double %cond, double* @lambda_mf_factor, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
