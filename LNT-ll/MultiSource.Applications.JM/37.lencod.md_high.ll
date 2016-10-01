; ModuleID = './MultiSource.Applications.JM/37.lencod.md_high.bc'
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
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.CSobj = type { i32, %struct.EncodingEnvironment*, %struct.Bitstream*, i32, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, [8 x i32], [2 x [4 x [4 x [2 x i32]]]], i64 }
%struct.RD_8x8DATA = type { i32, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], [3 x [16 x [16 x i32]]], [4 x i16], [4 x i8], [4 x i8], [4 x i8], [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i32]] }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }
%struct.rc_generic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32*, i64, i32, i32, i32, [5 x i32], i32, [5 x i32], i32, i32 }
%struct.RD_PARAMS = type { double, [3 x double], [3 x i32], [15 x i16], [2 x i16], i16, [2 x i16], [2 x i32] }

@encode_one_macroblock_high.best_ref = private unnamed_addr constant [2 x i8] c"\00\FF", align 1
@encode_one_macroblock_high.bmcost = private unnamed_addr constant [5 x i32] [i32 2147483647, i32 0, i32 0, i32 0, i32 0], align 16
@img = external global %struct.ImageParameters*, align 8
@input = external global %struct.InputParameters*, align 8
@cs_cm = external global %struct.CSobj*, align 8
@best_mode = external global i16, align 2
@bi_pred_me = external global i16, align 2
@lambda_mf_factor = external global double, align 8
@best8x8fwref = external global [15 x [4 x i8]], align 16
@best8x8pdir = external global [15 x [4 x i8]], align 16
@best8x8bwref = external global [15 x [4 x i8]], align 16
@giRDOpt_B8OnlyFlag = common global i32 0, align 4
@tr8x8 = external global %struct.RD_8x8DATA, align 4
@tr4x4 = external global %struct.RD_8x8DATA, align 4
@cs_mb = external global %struct.CSobj*, align 8
@cnt_nonz_8x8 = external global i32, align 4
@cbp_blk8x8 = external global i32, align 4
@cbp8x8 = external global i32, align 4
@cofAC_8x8ts = external global i32****, align 8
@best8x8mode = external global [4 x i16], align 2
@cbp8_8x8ts = external global i32, align 4
@cbp_blk8_8x8ts = external global i64, align 8
@cnt_nonz8_8x8ts = external global i32, align 4
@cofAC8x8 = external global i32****, align 8
@mb_mode_table = external constant [9 x i32], align 16
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@wbp_weight = common global i32**** null, align 8
@cbp = external global i32, align 4
@rdopt = common global %struct.RD_DATA* null, align 8
@listXsize = external global [6 x i32], align 16
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
@getNeighbour = common global void (i32, i32, i32, i32, %struct.pix_pos*)* null, align 8
@get_mb_block_pos = common global void (i32, i32*, i32*)* null, align 8
@diffy = common global [16 x [16 x i32]] zeroinitializer, align 16
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

; Function Attrs: nounwind uwtable
define void @encode_one_macroblock_high() #0 {
entry:
  %max_index = alloca i32, align 4
  %block = alloca i32, align 4
  %index = alloca i32, align 4
  %mode = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ctr16x16 = alloca i32, align 4
  %MEPos = alloca i32, align 4
  %best_pdir = alloca i8, align 1
  %enc_mb = alloca %struct.RD_PARAMS, align 8
  %min_rdcost = alloca double, align 8
  %max_rdcost = alloca double, align 8
  %best_ref = alloca [2 x i8], align 1
  %bmcost = alloca [5 x i32], align 16
  %cost = alloca i32, align 4
  %min_cost = alloca i32, align 4
  %cost_direct = alloca i32, align 4
  %have_direct = alloca i32, align 4
  %i16mode = alloca i32, align 4
  %intra1 = alloca i32, align 4
  %cost8x8_direct = alloca i32, align 4
  %islice = alloca i16, align 2
  %bslice = alloca i16, align 2
  %pslice = alloca i16, align 2
  %intra = alloca i16, align 2
  %lambda_mf = alloca [3 x i32], align 4
  %currMB = alloca %struct.macroblock*, align 8
  %prev_mb_nr = alloca i32, align 4
  %prevMB = alloca %struct.macroblock*, align 8
  %min_chroma_pred_mode = alloca i16, align 2
  %max_chroma_pred_mode = alloca i16, align 2
  %inter_skip = alloca i16, align 2
  %min_rate = alloca double, align 8
  %mb_available_up = alloca i32, align 4
  %mb_available_left = alloca i32, align 4
  %mb_available_up_left = alloca i32, align 4
  %cur_blk = alloca i32, align 4
  %cur_comp = alloca i32, align 4
  %weight_sum = alloca i32, align 4
  %invalid_mode = alloca i32, align 4
  store double 1.000000e+30, double* %max_rdcost, align 8
  %0 = bitcast [2 x i8]* %best_ref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @encode_one_macroblock_high.best_ref, i32 0, i32 0), i64 2, i32 1, i1 false)
  %1 = bitcast [5 x i32]* %bmcost to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([5 x i32]* @encode_one_macroblock_high.bmcost to i8*), i64 20, i32 16, i1 false)
  store i32 0, i32* %cost, align 4
  store i32 2147483647, i32* %min_cost, align 4
  store i32 0, i32* %cost_direct, align 4
  store i32 0, i32* %have_direct, align 4
  store i32 0, i32* %i16mode, align 4
  store i32 0, i32* %intra1, align 4
  store i32 0, i32* %cost8x8_direct, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 5
  %3 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %3, 2
  %conv = zext i1 %cmp to i32
  %conv1 = trunc i32 %conv to i16
  store i16 %conv1, i16* %islice, align 2
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 5
  %5 = load i32, i32* %type2, align 4
  %cmp3 = icmp eq i32 %5, 1
  %conv4 = zext i1 %cmp3 to i32
  %conv5 = trunc i32 %conv4 to i16
  store i16 %conv5, i16* %bslice, align 2
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 5
  %7 = load i32, i32* %type6, align 4
  %cmp7 = icmp eq i32 %7, 0
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 5
  %9 = load i32, i32* %type9, align 4
  %cmp10 = icmp eq i32 %9, 3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %10 = phi i1 [ true, %entry ], [ %cmp10, %lor.rhs ]
  %lor.ext = zext i1 %10 to i32
  %conv12 = trunc i32 %lor.ext to i16
  store i16 %conv12, i16* %pslice, align 2
  %11 = load i16, i16* %islice, align 2
  %conv13 = sext i16 %11 to i32
  %tobool = icmp ne i32 %conv13, 0
  br i1 %tobool, label %lor.end.22, label %lor.rhs.14

lor.rhs.14:                                       ; preds = %lor.end
  %12 = load i16, i16* %pslice, align 2
  %conv15 = sext i16 %12 to i32
  %tobool16 = icmp ne i32 %conv15, 0
  br i1 %tobool16, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.rhs.14
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 36
  %14 = load i32, i32* %mb_y, align 4
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y_upd = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 28
  %16 = load i32, i32* %mb_y_upd, align 4
  %cmp17 = icmp eq i32 %14, %16
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y_upd19 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 28
  %18 = load i32, i32* %mb_y_upd19, align 4
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y_intra = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 29
  %20 = load i32, i32* %mb_y_intra, align 4
  %cmp20 = icmp ne i32 %18, %20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.rhs.14
  %21 = phi i1 [ false, %land.lhs.true ], [ false, %lor.rhs.14 ], [ %cmp20, %land.rhs ]
  br label %lor.end.22

lor.end.22:                                       ; preds = %land.end, %lor.end
  %22 = phi i1 [ true, %lor.end ], [ %21, %land.end ]
  %lor.ext23 = zext i1 %22 to i32
  %conv24 = trunc i32 %lor.ext23 to i16
  store i16 %conv24, i16* %intra, align 2
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 3
  %24 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 61
  %26 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %26, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr25 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 3
  %28 = load i32, i32* %current_mb_nr25, align 4
  %call = call i32 @FmoGetPreviousMBNr(i32 %28)
  store i32 %call, i32* %prev_mb_nr, align 4
  %29 = load i32, i32* %prev_mb_nr, align 4
  %cmp26 = icmp sge i32 %29, 0
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.end.22
  %30 = load i32, i32* %prev_mb_nr, align 4
  %idxprom28 = sext i32 %30 to i64
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data29 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 61
  %32 = load %struct.macroblock*, %struct.macroblock** %mb_data29, align 8
  %arrayidx30 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %32, i64 %idxprom28
  br label %cond.end

cond.false:                                       ; preds = %lor.end.22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.macroblock* [ %arrayidx30, %cond.true ], [ null, %cond.false ]
  store %struct.macroblock* %cond, %struct.macroblock** %prevMB, align 8
  store i16 0, i16* %inter_skip, align 2
  store double 0.000000e+00, double* %min_rate, align 8
  %33 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %33, i32 0, i32 169
  %34 = load i32, i32* %SearchMode, align 4
  %cmp31 = icmp eq i32 %34, 1
  br i1 %cmp31, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  call void @UMHEX_decide_intrabk_SAD()
  br label %if.end.37

if.else:                                          ; preds = %cond.end
  %35 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode33 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %35, i32 0, i32 169
  %36 = load i32, i32* %SearchMode33, align 4
  %cmp34 = icmp eq i32 %36, 2
  br i1 %cmp34, label %if.then.36, label %if.end

if.then.36:                                       ; preds = %if.else
  call void @smpUMHEX_decide_intrabk_SAD()
  br label %if.end

if.end:                                           ; preds = %if.then.36, %if.else
  br label %if.end.37

if.end.37:                                        ; preds = %if.end, %if.then
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr38 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 3
  %38 = load i32, i32* %current_mb_nr38, align 4
  %call39 = call i32 @RandomIntra(i32 %38)
  %39 = load i16, i16* %intra, align 2
  %conv40 = sext i16 %39 to i32
  %or = or i32 %conv40, %call39
  %conv41 = trunc i32 %or to i16
  store i16 %conv41, i16* %intra, align 2
  %40 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %41 = load i16, i16* %intra, align 2
  %conv42 = sext i16 %41 to i32
  %42 = load i16, i16* %bslice, align 2
  %conv43 = sext i16 %42 to i32
  call void @init_enc_mb_params(%struct.macroblock* %40, %struct.RD_PARAMS* %enc_mb, i32 %conv42, i32 %conv43)
  %43 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %43, i32 0, i32 17
  store i32 0, i32* %c_ipred_mode, align 4
  %44 = load %struct.CSobj*, %struct.CSobj** @cs_cm, align 8
  call void @store_coding_state(%struct.CSobj* %44)
  %45 = load i16, i16* %intra, align 2
  %tobool44 = icmp ne i16 %45, 0
  br i1 %tobool44, label %if.else.292, label %if.then.45

if.then.45:                                       ; preds = %if.end.37
  store i16 1, i16* @best_mode, align 2
  %46 = load i16, i16* %bslice, align 2
  %tobool46 = icmp ne i16 %46, 0
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.then.45
  call void @Get_Direct_Motion_Vectors()
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.then.45
  %47 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %CtxAdptLagrangeMult = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %47, i32 0, i32 114
  %48 = load i32, i32* %CtxAdptLagrangeMult, align 4
  %cmp49 = icmp eq i32 %48, 1
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.48
  call void @get_initial_mb16x16_cost()
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.end.48
  store i32 2147483647, i32* %min_cost, align 4
  store i32 1, i32* %mode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.217, %if.end.52
  %49 = load i32, i32* %mode, align 4
  %cmp53 = icmp slt i32 %49, 4
  br i1 %cmp53, label %for.body, label %for.end.219

for.body:                                         ; preds = %for.cond
  store i16 0, i16* @bi_pred_me, align 2
  %50 = load i32, i32* %mode, align 4
  %idxprom55 = sext i32 %50 to i64
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %51, i32 0, i32 83
  %arrayidx56 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me, i32 0, i64 %idxprom55
  store i16 0, i16* %arrayidx56, align 2
  %52 = load i32, i32* %mode, align 4
  %idxprom57 = sext i32 %52 to i64
  %valid = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 3
  %arrayidx58 = getelementptr inbounds [15 x i16], [15 x i16]* %valid, i32 0, i64 %idxprom57
  %53 = load i16, i16* %arrayidx58, align 2
  %tobool59 = icmp ne i16 %53, 0
  br i1 %tobool59, label %if.then.60, label %if.end.216

if.then.60:                                       ; preds = %for.body
  store i32 0, i32* %cost, align 4
  store i32 0, i32* %block, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.203, %if.then.60
  %54 = load i32, i32* %block, align 4
  %55 = load i32, i32* %mode, align 4
  %cmp62 = icmp eq i32 %55, 1
  %cond64 = select i1 %cmp62, i32 1, i32 2
  %cmp65 = icmp slt i32 %54, %cond64
  br i1 %cmp65, label %for.body.67, label %for.end.205

for.body.67:                                      ; preds = %for.cond.61
  store i32 0, i32* %MEPos, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc, %for.body.67
  %56 = load i32, i32* %MEPos, align 4
  %cmp69 = icmp slt i32 %56, 3
  br i1 %cmp69, label %for.body.71, label %for.end

for.body.71:                                      ; preds = %for.cond.68
  %57 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %CtxAdptLagrangeMult72 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %57, i32 0, i32 114
  %58 = load i32, i32* %CtxAdptLagrangeMult72, align 4
  %cmp73 = icmp eq i32 %58, 0
  br i1 %cmp73, label %cond.true.75, label %cond.false.79

cond.true.75:                                     ; preds = %for.body.71
  %59 = load i32, i32* %MEPos, align 4
  %idxprom76 = sext i32 %59 to i64
  %lambda_mf77 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 2
  %arrayidx78 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf77, i32 0, i64 %idxprom76
  %60 = load i32, i32* %arrayidx78, align 4
  br label %cond.end.86

cond.false.79:                                    ; preds = %for.body.71
  %61 = load i32, i32* %MEPos, align 4
  %idxprom80 = sext i32 %61 to i64
  %lambda_mf81 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 2
  %arrayidx82 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf81, i32 0, i64 %idxprom80
  %62 = load i32, i32* %arrayidx82, align 4
  %conv83 = sitofp i32 %62 to double
  %63 = load double, double* @lambda_mf_factor, align 8
  %call84 = call double @sqrt(double %63) #1
  %mul = fmul double %conv83, %call84
  %conv85 = fptosi double %mul to i32
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.79, %cond.true.75
  %cond87 = phi i32 [ %60, %cond.true.75 ], [ %conv85, %cond.false.79 ]
  %64 = load i32, i32* %MEPos, align 4
  %idxprom88 = sext i32 %64 to i64
  %arrayidx89 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf, i32 0, i64 %idxprom88
  store i32 %cond87, i32* %arrayidx89, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.86
  %65 = load i32, i32* %MEPos, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %MEPos, align 4
  br label %for.cond.68

for.end:                                          ; preds = %for.cond.68
  %66 = load i32, i32* %mode, align 4
  %67 = load i32, i32* %block, align 4
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf, i32 0, i32 0
  call void @PartitionMotionSearch(i32 %66, i32 %67, i32* %arraydecay)
  %68 = load i32, i32* %block, align 4
  %cmp90 = icmp eq i32 %68, 1
  br i1 %cmp90, label %land.rhs.92, label %land.end.95

land.rhs.92:                                      ; preds = %for.end
  %69 = load i32, i32* %mode, align 4
  %cmp93 = icmp eq i32 %69, 2
  br label %land.end.95

land.end.95:                                      ; preds = %land.rhs.92, %for.end
  %70 = phi i1 [ false, %for.end ], [ %cmp93, %land.rhs.92 ]
  %cond96 = select i1 %70, i32 2, i32 0
  store i32 %cond96, i32* %j, align 4
  %71 = load i32, i32* %block, align 4
  %cmp97 = icmp eq i32 %71, 1
  br i1 %cmp97, label %land.rhs.99, label %land.end.102

land.rhs.99:                                      ; preds = %land.end.95
  %72 = load i32, i32* %mode, align 4
  %cmp100 = icmp eq i32 %72, 3
  br label %land.end.102

land.end.102:                                     ; preds = %land.rhs.99, %land.end.95
  %73 = phi i1 [ false, %land.end.95 ], [ %cmp100, %land.rhs.99 ]
  %cond103 = select i1 %73, i32 2, i32 0
  store i32 %cond103, i32* %i, align 4
  %arrayidx104 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i64 0
  store i32 2147483647, i32* %arrayidx104, align 4
  %74 = load i32, i32* %block, align 4
  %75 = load i32, i32* %mode, align 4
  %arraydecay105 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i32 0
  %arraydecay106 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i32 0
  call void @list_prediction_cost(i32 0, i32 %74, i32 %75, %struct.RD_PARAMS* byval align 8 %enc_mb, i32* %arraydecay105, i8* %arraydecay106)
  %76 = load i16, i16* %bslice, align 2
  %tobool107 = icmp ne i16 %76, 0
  br i1 %tobool107, label %if.then.108, label %if.else.127

if.then.108:                                      ; preds = %land.end.102
  %arrayidx109 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i64 1
  store i32 2147483647, i32* %arrayidx109, align 4
  %77 = load i32, i32* %block, align 4
  %78 = load i32, i32* %mode, align 4
  %arraydecay110 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i32 0
  %arraydecay111 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i32 0
  call void @list_prediction_cost(i32 1, i32 %77, i32 %78, %struct.RD_PARAMS* byval align 8 %enc_mb, i32* %arraydecay110, i8* %arraydecay111)
  %79 = load i32, i32* %block, align 4
  %80 = load i32, i32* %mode, align 4
  %arraydecay112 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i32 0
  %arraydecay113 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i32 0
  call void @list_prediction_cost(i32 2, i32 %79, i32 %80, %struct.RD_PARAMS* byval align 8 %enc_mb, i32* %arraydecay112, i8* %arraydecay113)
  %81 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %81, i32 0, i32 46
  %82 = load i32, i32* %BiPredMotionEstimation, align 4
  %tobool114 = icmp ne i32 %82, 0
  br i1 %tobool114, label %land.lhs.true.115, label %if.else.121

land.lhs.true.115:                                ; preds = %if.then.108
  %83 = load i32, i32* %mode, align 4
  %cmp116 = icmp eq i32 %83, 1
  br i1 %cmp116, label %if.then.118, label %if.else.121

if.then.118:                                      ; preds = %land.lhs.true.115
  %84 = load i32, i32* %block, align 4
  %85 = load i32, i32* %mode, align 4
  %arraydecay119 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i32 0
  call void @list_prediction_cost(i32 3, i32 %84, i32 %85, %struct.RD_PARAMS* byval align 8 %enc_mb, i32* %arraydecay119, i8* null)
  %86 = load i32, i32* %block, align 4
  %87 = load i32, i32* %mode, align 4
  %arraydecay120 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i32 0
  call void @list_prediction_cost(i32 4, i32 %86, i32 %87, %struct.RD_PARAMS* byval align 8 %enc_mb, i32* %arraydecay120, i8* null)
  br label %if.end.124

if.else.121:                                      ; preds = %land.lhs.true.115, %if.then.108
  %arrayidx122 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i64 3
  store i32 2147483647, i32* %arrayidx122, align 4
  %arrayidx123 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i64 4
  store i32 2147483647, i32* %arrayidx123, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.121, %if.then.118
  %88 = load i32, i32* %mode, align 4
  %arraydecay125 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i32 0
  %arraydecay126 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i32 0
  call void @determine_prediction_list(i32 %88, i32* %arraydecay125, i8* %arraydecay126, i8* %best_pdir, i32* %cost, i16* @bi_pred_me)
  br label %if.end.129

if.else.127:                                      ; preds = %land.end.102
  store i8 0, i8* %best_pdir, align 1
  %arrayidx128 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i64 0
  %89 = load i32, i32* %arrayidx128, align 4
  %90 = load i32, i32* %cost, align 4
  %add = add nsw i32 %90, %89
  store i32 %add, i32* %cost, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.127, %if.end.124
  %91 = load i32, i32* %mode, align 4
  %92 = load i8, i8* %best_pdir, align 1
  %93 = load i32, i32* %block, align 4
  %list_offset = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 4
  %arrayidx130 = getelementptr inbounds [2 x i16], [2 x i16]* %list_offset, i32 0, i64 0
  %94 = load i16, i16* %arrayidx130, align 2
  %conv131 = sext i16 %94 to i32
  %arrayidx132 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 0
  %95 = load i8, i8* %arrayidx132, align 1
  %conv133 = sext i8 %95 to i32
  %arrayidx134 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 1
  %96 = load i8, i8* %arrayidx134, align 1
  %conv135 = sext i8 %96 to i32
  %97 = load i16, i16* %bslice, align 2
  %conv136 = sext i16 %97 to i32
  call void @assign_enc_picture_params(i32 %91, i8 signext %92, i32 %93, i32 %conv131, i32 %conv133, i32 %conv135, i32 %conv136)
  %98 = load i32, i32* %mode, align 4
  %cmp137 = icmp eq i32 %98, 3
  br i1 %cmp137, label %if.then.139, label %if.else.157

if.then.139:                                      ; preds = %if.end.129
  %arrayidx140 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 0
  %99 = load i8, i8* %arrayidx140, align 1
  %100 = load i32, i32* %block, align 4
  %add141 = add nsw i32 %100, 2
  %idxprom142 = sext i32 %add141 to i64
  %arrayidx143 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 3), i32 0, i64 %idxprom142
  store i8 %99, i8* %arrayidx143, align 1
  %101 = load i32, i32* %block, align 4
  %idxprom144 = sext i32 %101 to i64
  %arrayidx145 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 3), i32 0, i64 %idxprom144
  store i8 %99, i8* %arrayidx145, align 1
  %102 = load i8, i8* %best_pdir, align 1
  %103 = load i32, i32* %block, align 4
  %add146 = add nsw i32 %103, 2
  %idxprom147 = sext i32 %add146 to i64
  %arrayidx148 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 3), i32 0, i64 %idxprom147
  store i8 %102, i8* %arrayidx148, align 1
  %104 = load i32, i32* %block, align 4
  %idxprom149 = sext i32 %104 to i64
  %arrayidx150 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 3), i32 0, i64 %idxprom149
  store i8 %102, i8* %arrayidx150, align 1
  %arrayidx151 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 1
  %105 = load i8, i8* %arrayidx151, align 1
  %106 = load i32, i32* %block, align 4
  %add152 = add nsw i32 %106, 2
  %idxprom153 = sext i32 %add152 to i64
  %arrayidx154 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 3), i32 0, i64 %idxprom153
  store i8 %105, i8* %arrayidx154, align 1
  %107 = load i32, i32* %block, align 4
  %idxprom155 = sext i32 %107 to i64
  %arrayidx156 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 3), i32 0, i64 %idxprom155
  store i8 %105, i8* %arrayidx156, align 1
  br label %if.end.190

if.else.157:                                      ; preds = %if.end.129
  %108 = load i32, i32* %mode, align 4
  %cmp158 = icmp eq i32 %108, 2
  br i1 %cmp158, label %if.then.160, label %if.else.184

if.then.160:                                      ; preds = %if.else.157
  %arrayidx161 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 0
  %109 = load i8, i8* %arrayidx161, align 1
  %110 = load i32, i32* %block, align 4
  %mul162 = mul nsw i32 2, %110
  %add163 = add nsw i32 %mul162, 1
  %idxprom164 = sext i32 %add163 to i64
  %arrayidx165 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 2), i32 0, i64 %idxprom164
  store i8 %109, i8* %arrayidx165, align 1
  %111 = load i32, i32* %block, align 4
  %mul166 = mul nsw i32 2, %111
  %idxprom167 = sext i32 %mul166 to i64
  %arrayidx168 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 2), i32 0, i64 %idxprom167
  store i8 %109, i8* %arrayidx168, align 1
  %112 = load i8, i8* %best_pdir, align 1
  %113 = load i32, i32* %block, align 4
  %mul169 = mul nsw i32 2, %113
  %add170 = add nsw i32 %mul169, 1
  %idxprom171 = sext i32 %add170 to i64
  %arrayidx172 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 2), i32 0, i64 %idxprom171
  store i8 %112, i8* %arrayidx172, align 1
  %114 = load i32, i32* %block, align 4
  %mul173 = mul nsw i32 2, %114
  %idxprom174 = sext i32 %mul173 to i64
  %arrayidx175 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 2), i32 0, i64 %idxprom174
  store i8 %112, i8* %arrayidx175, align 1
  %arrayidx176 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 1
  %115 = load i8, i8* %arrayidx176, align 1
  %116 = load i32, i32* %block, align 4
  %mul177 = mul nsw i32 2, %116
  %add178 = add nsw i32 %mul177, 1
  %idxprom179 = sext i32 %add178 to i64
  %arrayidx180 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 2), i32 0, i64 %idxprom179
  store i8 %115, i8* %arrayidx180, align 1
  %117 = load i32, i32* %block, align 4
  %mul181 = mul nsw i32 2, %117
  %idxprom182 = sext i32 %mul181 to i64
  %arrayidx183 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 2), i32 0, i64 %idxprom182
  store i8 %115, i8* %arrayidx183, align 1
  br label %if.end.189

if.else.184:                                      ; preds = %if.else.157
  %arrayidx185 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 0
  %118 = load i8, i8* %arrayidx185, align 1
  %conv186 = sext i8 %118 to i32
  %119 = trunc i32 %conv186 to i8
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 1, i64 0), i8 %119, i64 4, i32 1, i1 false)
  %arrayidx187 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 1
  %120 = load i8, i8* %arrayidx187, align 1
  %conv188 = sext i8 %120 to i32
  %121 = trunc i32 %conv188 to i8
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 1, i64 0), i8 %121, i64 4, i32 1, i1 false)
  %122 = load i8, i8* %best_pdir, align 1
  store i8 %122, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 3), align 1
  store i8 %122, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 2), align 1
  store i8 %122, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 1), align 1
  store i8 %122, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 0), align 1
  br label %if.end.189

if.end.189:                                       ; preds = %if.else.184, %if.then.160
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.then.139
  %123 = load i32, i32* %mode, align 4
  %cmp191 = icmp sgt i32 %123, 1
  br i1 %cmp191, label %land.lhs.true.193, label %if.end.202

land.lhs.true.193:                                ; preds = %if.end.190
  %124 = load i32, i32* %block, align 4
  %cmp194 = icmp eq i32 %124, 0
  br i1 %cmp194, label %if.then.196, label %if.end.202

if.then.196:                                      ; preds = %land.lhs.true.193
  %125 = load i32, i32* %block, align 4
  %126 = load i32, i32* %mode, align 4
  %127 = load i8, i8* %best_pdir, align 1
  %conv197 = sext i8 %127 to i32
  %arrayidx198 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 0
  %128 = load i8, i8* %arrayidx198, align 1
  %conv199 = sext i8 %128 to i32
  %arrayidx200 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 1
  %129 = load i8, i8* %arrayidx200, align 1
  %conv201 = sext i8 %129 to i32
  call void @SetRefAndMotionVectors(i32 %125, i32 %126, i32 %conv197, i32 %conv199, i32 %conv201)
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.196, %land.lhs.true.193, %if.end.190
  br label %for.inc.203

for.inc.203:                                      ; preds = %if.end.202
  %130 = load i32, i32* %block, align 4
  %inc204 = add nsw i32 %130, 1
  store i32 %inc204, i32* %block, align 4
  br label %for.cond.61

for.end.205:                                      ; preds = %for.cond.61
  %131 = load i32, i32* %cost, align 4
  %132 = load i32, i32* %min_cost, align 4
  %cmp206 = icmp slt i32 %131, %132
  br i1 %cmp206, label %if.then.208, label %if.end.215

if.then.208:                                      ; preds = %for.end.205
  %133 = load i32, i32* %mode, align 4
  %conv209 = trunc i32 %133 to i16
  store i16 %conv209, i16* @best_mode, align 2
  %134 = load i32, i32* %cost, align 4
  store i32 %134, i32* %min_cost, align 4
  %135 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %CtxAdptLagrangeMult210 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %135, i32 0, i32 114
  %136 = load i32, i32* %CtxAdptLagrangeMult210, align 4
  %cmp211 = icmp eq i32 %136, 1
  br i1 %cmp211, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %if.then.208
  %137 = load i32, i32* %cost, align 4
  call void @adjust_mb16x16_cost(i32 %137)
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.213, %if.then.208
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %for.end.205
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %for.body
  br label %for.inc.217

for.inc.217:                                      ; preds = %if.end.216
  %138 = load i32, i32* %mode, align 4
  %inc218 = add nsw i32 %138, 1
  store i32 %inc218, i32* %mode, align 4
  br label %for.cond

for.end.219:                                      ; preds = %for.cond
  %valid220 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 3
  %arrayidx221 = getelementptr inbounds [15 x i16], [15 x i16]* %valid220, i32 0, i64 8
  %139 = load i16, i16* %arrayidx221, align 2
  %tobool222 = icmp ne i16 %139, 0
  br i1 %tobool222, label %if.then.223, label %if.else.287

if.then.223:                                      ; preds = %for.end.219
  store i32 1, i32* @giRDOpt_B8OnlyFlag, align 4
  store i32 2147483647, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 0), align 4
  store i32 2147483647, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 0), align 4
  %140 = load %struct.CSobj*, %struct.CSobj** @cs_mb, align 8
  call void @store_coding_state(%struct.CSobj* %140)
  %141 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %all_blk_8x8 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %141, i32 0, i32 30
  store i32 -1, i32* %all_blk_8x8, align 4
  %142 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %142, i32 0, i32 153
  %143 = load i32, i32* %Transform8x8Mode, align 4
  %tobool224 = icmp ne i32 %143, 0
  br i1 %tobool224, label %if.then.225, label %if.end.252

if.then.225:                                      ; preds = %if.then.223
  store i32 0, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 0), align 4
  store i32 0, i32* @cnt_nonz_8x8, align 4
  store i32 0, i32* @cbp_blk8x8, align 4
  store i32 0, i32* @cbp8x8, align 4
  store i32 0, i32* %cost_direct, align 4
  store i32 0, i32* %block, align 4
  br label %for.cond.226

for.cond.226:                                     ; preds = %for.inc.248, %if.then.225
  %144 = load i32, i32* %block, align 4
  %cmp227 = icmp slt i32 %144, 4
  br i1 %cmp227, label %for.body.229, label %for.end.250

for.body.229:                                     ; preds = %for.cond.226
  %145 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %146 = load i32, i32* %block, align 4
  %idxprom230 = sext i32 %146 to i64
  %147 = load i32****, i32***** @cofAC_8x8ts, align 8
  %arrayidx231 = getelementptr inbounds i32***, i32**** %147, i64 %idxprom230
  %148 = load i32***, i32**** %arrayidx231, align 8
  %149 = load i16, i16* %bslice, align 2
  %150 = load i32, i32* %block, align 4
  call void @submacroblock_mode_decision(%struct.RD_PARAMS* byval align 8 %enc_mb, %struct.RD_8x8DATA* @tr8x8, %struct.macroblock* %145, i32*** %148, i32* %have_direct, i16 signext %149, i32 %150, i32* %cost_direct, i32* %cost, i32* %cost8x8_direct, i32 1)
  %151 = load i32, i32* %block, align 4
  %idxprom232 = sext i32 %151 to i64
  %arrayidx233 = getelementptr inbounds [4 x i16], [4 x i16]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 5), i32 0, i64 %idxprom232
  %152 = load i16, i16* %arrayidx233, align 2
  %153 = load i32, i32* %block, align 4
  %idxprom234 = sext i32 %153 to i64
  %arrayidx235 = getelementptr inbounds [4 x i16], [4 x i16]* @best8x8mode, i32 0, i64 %idxprom234
  store i16 %152, i16* %arrayidx235, align 2
  %154 = load i32, i32* %block, align 4
  %idxprom236 = sext i32 %154 to i64
  %arrayidx237 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 6), i32 0, i64 %idxprom236
  %155 = load i8, i8* %arrayidx237, align 1
  %156 = load i32, i32* %block, align 4
  %idxprom238 = sext i32 %156 to i64
  %arrayidx239 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 8), i32 0, i64 %idxprom238
  store i8 %155, i8* %arrayidx239, align 1
  %157 = load i32, i32* %block, align 4
  %idxprom240 = sext i32 %157 to i64
  %arrayidx241 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 7), i32 0, i64 %idxprom240
  %158 = load i8, i8* %arrayidx241, align 1
  %159 = load i32, i32* %block, align 4
  %idxprom242 = sext i32 %159 to i64
  %arrayidx243 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 8), i32 0, i64 %idxprom242
  store i8 %158, i8* %arrayidx243, align 1
  %160 = load i32, i32* %block, align 4
  %idxprom244 = sext i32 %160 to i64
  %arrayidx245 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 8), i32 0, i64 %idxprom244
  %161 = load i8, i8* %arrayidx245, align 1
  %162 = load i32, i32* %block, align 4
  %idxprom246 = sext i32 %162 to i64
  %arrayidx247 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 8), i32 0, i64 %idxprom246
  store i8 %161, i8* %arrayidx247, align 1
  br label %for.inc.248

for.inc.248:                                      ; preds = %for.body.229
  %163 = load i32, i32* %block, align 4
  %inc249 = add nsw i32 %163, 1
  store i32 %inc249, i32* %block, align 4
  br label %for.cond.226

for.end.250:                                      ; preds = %for.cond.226
  %164 = load i32, i32* @cbp8x8, align 4
  store i32 %164, i32* @cbp8_8x8ts, align 4
  %165 = load i32, i32* @cbp_blk8x8, align 4
  %conv251 = sext i32 %165 to i64
  store i64 %conv251, i64* @cbp_blk8_8x8ts, align 8
  %166 = load i32, i32* @cnt_nonz_8x8, align 4
  store i32 %166, i32* @cnt_nonz8_8x8ts, align 4
  %167 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %167, i32 0, i32 31
  store i32 0, i32* %luma_transform_size_8x8_flag, align 4
  br label %if.end.252

if.end.252:                                       ; preds = %for.end.250, %if.then.223
  %168 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode253 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %168, i32 0, i32 153
  %169 = load i32, i32* %Transform8x8Mode253, align 4
  %cmp254 = icmp ne i32 %169, 2
  br i1 %cmp254, label %if.then.256, label %if.end.282

if.then.256:                                      ; preds = %if.end.252
  store i32 0, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 0), align 4
  store i32 0, i32* @cnt_nonz_8x8, align 4
  store i32 0, i32* @cbp_blk8x8, align 4
  store i32 0, i32* @cbp8x8, align 4
  store i32 0, i32* %cost_direct, align 4
  store i32 0, i32* %block, align 4
  br label %for.cond.257

for.cond.257:                                     ; preds = %for.inc.279, %if.then.256
  %170 = load i32, i32* %block, align 4
  %cmp258 = icmp slt i32 %170, 4
  br i1 %cmp258, label %for.body.260, label %for.end.281

for.body.260:                                     ; preds = %for.cond.257
  %171 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %172 = load i32, i32* %block, align 4
  %idxprom261 = sext i32 %172 to i64
  %173 = load i32****, i32***** @cofAC8x8, align 8
  %arrayidx262 = getelementptr inbounds i32***, i32**** %173, i64 %idxprom261
  %174 = load i32***, i32**** %arrayidx262, align 8
  %175 = load i16, i16* %bslice, align 2
  %176 = load i32, i32* %block, align 4
  call void @submacroblock_mode_decision(%struct.RD_PARAMS* byval align 8 %enc_mb, %struct.RD_8x8DATA* @tr4x4, %struct.macroblock* %171, i32*** %174, i32* %have_direct, i16 signext %175, i32 %176, i32* %cost_direct, i32* %cost, i32* %cost8x8_direct, i32 0)
  %177 = load i32, i32* %block, align 4
  %idxprom263 = sext i32 %177 to i64
  %arrayidx264 = getelementptr inbounds [4 x i16], [4 x i16]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 5), i32 0, i64 %idxprom263
  %178 = load i16, i16* %arrayidx264, align 2
  %179 = load i32, i32* %block, align 4
  %idxprom265 = sext i32 %179 to i64
  %arrayidx266 = getelementptr inbounds [4 x i16], [4 x i16]* @best8x8mode, i32 0, i64 %idxprom265
  store i16 %178, i16* %arrayidx266, align 2
  %180 = load i32, i32* %block, align 4
  %idxprom267 = sext i32 %180 to i64
  %arrayidx268 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 6), i32 0, i64 %idxprom267
  %181 = load i8, i8* %arrayidx268, align 1
  %182 = load i32, i32* %block, align 4
  %idxprom269 = sext i32 %182 to i64
  %arrayidx270 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 8), i32 0, i64 %idxprom269
  store i8 %181, i8* %arrayidx270, align 1
  %183 = load i32, i32* %block, align 4
  %idxprom271 = sext i32 %183 to i64
  %arrayidx272 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 7), i32 0, i64 %idxprom271
  %184 = load i8, i8* %arrayidx272, align 1
  %185 = load i32, i32* %block, align 4
  %idxprom273 = sext i32 %185 to i64
  %arrayidx274 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 8), i32 0, i64 %idxprom273
  store i8 %184, i8* %arrayidx274, align 1
  %186 = load i32, i32* %block, align 4
  %idxprom275 = sext i32 %186 to i64
  %arrayidx276 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 8), i32 0, i64 %idxprom275
  %187 = load i8, i8* %arrayidx276, align 1
  %188 = load i32, i32* %block, align 4
  %idxprom277 = sext i32 %188 to i64
  %arrayidx278 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 8), i32 0, i64 %idxprom277
  store i8 %187, i8* %arrayidx278, align 1
  br label %for.inc.279

for.inc.279:                                      ; preds = %for.body.260
  %189 = load i32, i32* %block, align 4
  %inc280 = add nsw i32 %189, 1
  store i32 %inc280, i32* %block, align 4
  br label %for.cond.257

for.end.281:                                      ; preds = %for.cond.257
  br label %if.end.282

if.end.282:                                       ; preds = %for.end.281, %if.end.252
  %190 = load %struct.CSobj*, %struct.CSobj** @cs_mb, align 8
  call void @reset_coding_state(%struct.CSobj* %190)
  %191 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %191, i32 0, i32 157
  %192 = load i32, i32* %RCEnable, align 4
  %tobool283 = icmp ne i32 %192, 0
  br i1 %tobool283, label %if.then.284, label %if.end.286

if.then.284:                                      ; preds = %if.end.282
  %193 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %193, i32 0, i32 43
  %194 = load i32, i32* %opix_x, align 4
  %195 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %195, i32 0, i32 44
  %196 = load i32, i32* %opix_y, align 4
  %197 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %197, i32 0, i32 51
  %arraydecay285 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i32 0
  call void @rc_store_diff(i32 %194, i32 %196, [16 x i16]* %arraydecay285)
  br label %if.end.286

if.end.286:                                       ; preds = %if.then.284, %if.end.282
  store i32 0, i32* @giRDOpt_B8OnlyFlag, align 4
  br label %if.end.288

if.else.287:                                      ; preds = %for.end.219
  store i32 2147483647, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 0), align 4
  br label %if.end.288

if.end.288:                                       ; preds = %if.else.287, %if.end.286
  %198 = load i16, i16* %pslice, align 2
  %tobool289 = icmp ne i16 %198, 0
  br i1 %tobool289, label %if.then.290, label %if.end.291

if.then.290:                                      ; preds = %if.end.288
  call void @FindSkipModeMotionVector()
  br label %if.end.291

if.end.291:                                       ; preds = %if.then.290, %if.end.288
  br label %if.end.293

if.else.292:                                      ; preds = %if.end.37
  store i32 2147483647, i32* %min_cost, align 4
  br label %if.end.293

if.end.293:                                       ; preds = %if.else.292, %if.end.291
  %199 = load double, double* %max_rdcost, align 8
  store double %199, double* %min_rdcost, align 8
  store i32 9, i32* %max_index, align 4
  %200 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation294 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %200, i32 0, i32 46
  %201 = load i32, i32* %BiPredMotionEstimation294, align 4
  %tobool295 = icmp ne i32 %201, 0
  br i1 %tobool295, label %if.then.296, label %if.end.299

if.then.296:                                      ; preds = %if.end.293
  %202 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me297 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %202, i32 0, i32 83
  %arrayidx298 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me297, i32 0, i64 1
  store i16 0, i16* %arrayidx298, align 2
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.296, %if.end.293
  %203 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %203, i32 0, i32 160
  %204 = load i32, i32* %yuv_format, align 4
  %cmp300 = icmp ne i32 %204, 0
  br i1 %cmp300, label %if.then.302, label %if.else.311

if.then.302:                                      ; preds = %if.end.299
  call void @IntraChromaPrediction(i32* %mb_available_up, i32* %mb_available_left, i32* %mb_available_up_left)
  %205 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %FastCrIntraDecision = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %205, i32 0, i32 115
  %206 = load i32, i32* %FastCrIntraDecision, align 4
  %tobool303 = icmp ne i32 %206, 0
  br i1 %tobool303, label %if.then.304, label %if.else.309

if.then.304:                                      ; preds = %if.then.302
  call void @IntraChromaRDDecision(%struct.RD_PARAMS* byval align 8 %enc_mb)
  %207 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode305 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %207, i32 0, i32 17
  %208 = load i32, i32* %c_ipred_mode305, align 4
  %conv306 = trunc i32 %208 to i16
  store i16 %conv306, i16* %min_chroma_pred_mode, align 2
  %209 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode307 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %209, i32 0, i32 17
  %210 = load i32, i32* %c_ipred_mode307, align 4
  %conv308 = trunc i32 %210 to i16
  store i16 %conv308, i16* %max_chroma_pred_mode, align 2
  br label %if.end.310

if.else.309:                                      ; preds = %if.then.302
  store i16 0, i16* %min_chroma_pred_mode, align 2
  store i16 3, i16* %max_chroma_pred_mode, align 2
  br label %if.end.310

if.end.310:                                       ; preds = %if.else.309, %if.then.304
  br label %if.end.312

if.else.311:                                      ; preds = %if.end.299
  store i16 0, i16* %min_chroma_pred_mode, align 2
  store i16 0, i16* %max_chroma_pred_mode, align 2
  br label %if.end.312

if.end.312:                                       ; preds = %if.else.311, %if.end.310
  %211 = load i16, i16* %min_chroma_pred_mode, align 2
  %conv313 = sext i16 %211 to i32
  %212 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode314 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %212, i32 0, i32 17
  store i32 %conv313, i32* %c_ipred_mode314, align 4
  br label %for.cond.315

for.cond.315:                                     ; preds = %for.inc.574, %if.end.312
  %213 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode316 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %213, i32 0, i32 17
  %214 = load i32, i32* %c_ipred_mode316, align 4
  %215 = load i16, i16* %max_chroma_pred_mode, align 2
  %conv317 = sext i16 %215 to i32
  %cmp318 = icmp sle i32 %214, %conv317
  br i1 %cmp318, label %for.body.320, label %for.end.577

for.body.320:                                     ; preds = %for.cond.315
  %216 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format321 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %216, i32 0, i32 160
  %217 = load i32, i32* %yuv_format321, align 4
  %cmp322 = icmp ne i32 %217, 0
  br i1 %cmp322, label %land.lhs.true.324, label %if.end.357

land.lhs.true.324:                                ; preds = %for.body.320
  %218 = load i16, i16* %intra, align 2
  %tobool325 = icmp ne i16 %218, 0
  br i1 %tobool325, label %lor.lhs.false, label %land.lhs.true.327

lor.lhs.false:                                    ; preds = %land.lhs.true.324
  %219 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %IntraDisableInterOnly = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %219, i32 0, i32 84
  %220 = load i32, i32* %IntraDisableInterOnly, align 4
  %tobool326 = icmp ne i32 %220, 0
  br i1 %tobool326, label %lor.lhs.false.334, label %land.lhs.true.327

land.lhs.true.327:                                ; preds = %lor.lhs.false, %land.lhs.true.324
  %221 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ChromaIntraDisable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %221, i32 0, i32 90
  %222 = load i32, i32* %ChromaIntraDisable, align 4
  %cmp328 = icmp eq i32 %222, 1
  br i1 %cmp328, label %land.lhs.true.330, label %lor.lhs.false.334

land.lhs.true.330:                                ; preds = %land.lhs.true.327
  %223 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode331 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %223, i32 0, i32 17
  %224 = load i32, i32* %c_ipred_mode331, align 4
  %cmp332 = icmp ne i32 %224, 0
  br i1 %cmp332, label %if.then.356, label %lor.lhs.false.334

lor.lhs.false.334:                                ; preds = %land.lhs.true.330, %land.lhs.true.327, %lor.lhs.false
  %225 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode335 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %225, i32 0, i32 17
  %226 = load i32, i32* %c_ipred_mode335, align 4
  %cmp336 = icmp eq i32 %226, 2
  br i1 %cmp336, label %land.lhs.true.338, label %lor.lhs.false.340

land.lhs.true.338:                                ; preds = %lor.lhs.false.334
  %227 = load i32, i32* %mb_available_up, align 4
  %tobool339 = icmp ne i32 %227, 0
  br i1 %tobool339, label %lor.lhs.false.340, label %if.then.356

lor.lhs.false.340:                                ; preds = %land.lhs.true.338, %lor.lhs.false.334
  %228 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode341 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %228, i32 0, i32 17
  %229 = load i32, i32* %c_ipred_mode341, align 4
  %cmp342 = icmp eq i32 %229, 1
  br i1 %cmp342, label %land.lhs.true.344, label %lor.lhs.false.346

land.lhs.true.344:                                ; preds = %lor.lhs.false.340
  %230 = load i32, i32* %mb_available_left, align 4
  %tobool345 = icmp ne i32 %230, 0
  br i1 %tobool345, label %lor.lhs.false.346, label %if.then.356

lor.lhs.false.346:                                ; preds = %land.lhs.true.344, %lor.lhs.false.340
  %231 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode347 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %231, i32 0, i32 17
  %232 = load i32, i32* %c_ipred_mode347, align 4
  %cmp348 = icmp eq i32 %232, 3
  br i1 %cmp348, label %land.lhs.true.350, label %if.end.357

land.lhs.true.350:                                ; preds = %lor.lhs.false.346
  %233 = load i32, i32* %mb_available_left, align 4
  %tobool351 = icmp ne i32 %233, 0
  br i1 %tobool351, label %lor.lhs.false.352, label %if.then.356

lor.lhs.false.352:                                ; preds = %land.lhs.true.350
  %234 = load i32, i32* %mb_available_up, align 4
  %tobool353 = icmp ne i32 %234, 0
  br i1 %tobool353, label %lor.lhs.false.354, label %if.then.356

lor.lhs.false.354:                                ; preds = %lor.lhs.false.352
  %235 = load i32, i32* %mb_available_up_left, align 4
  %tobool355 = icmp ne i32 %235, 0
  br i1 %tobool355, label %if.end.357, label %if.then.356

if.then.356:                                      ; preds = %lor.lhs.false.354, %lor.lhs.false.352, %land.lhs.true.350, %land.lhs.true.344, %land.lhs.true.338, %land.lhs.true.330
  br label %for.inc.574

if.end.357:                                       ; preds = %lor.lhs.false.354, %lor.lhs.false.346, %for.body.320
  store i32 0, i32* %ctr16x16, align 4
  store i32 0, i32* %index, align 4
  br label %for.cond.358

for.cond.358:                                     ; preds = %for.inc.571, %if.end.357
  %236 = load i32, i32* %index, align 4
  %237 = load i32, i32* %max_index, align 4
  %cmp359 = icmp slt i32 %236, %237
  br i1 %cmp359, label %for.body.361, label %for.end.573

for.body.361:                                     ; preds = %for.cond.358
  %238 = load i32, i32* %index, align 4
  %idxprom362 = sext i32 %238 to i64
  %arrayidx363 = getelementptr inbounds [9 x i32], [9 x i32]* @mb_mode_table, i32 0, i64 %idxprom362
  %239 = load i32, i32* %arrayidx363, align 4
  store i32 %239, i32* %mode, align 4
  %240 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format364 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %240, i32 0, i32 160
  %241 = load i32, i32* %yuv_format364, align 4
  %cmp365 = icmp ne i32 %241, 0
  br i1 %cmp365, label %if.then.367, label %if.end.370

if.then.367:                                      ; preds = %for.body.361
  %242 = load i32, i32* %index, align 4
  %idxprom368 = sext i32 %242 to i64
  %arrayidx369 = getelementptr inbounds [9 x i32], [9 x i32]* @mb_mode_table, i32 0, i64 %idxprom368
  %243 = load i32, i32* %arrayidx369, align 4
  store i32 %243, i32* %mode, align 4
  store i32 0, i32* %i16mode, align 4
  br label %if.end.370

if.end.370:                                       ; preds = %if.then.367, %for.body.361
  %244 = load i32, i32* %mode, align 4
  %cmp371 = icmp eq i32 %244, 1
  br i1 %cmp371, label %land.lhs.true.373, label %if.end.404

land.lhs.true.373:                                ; preds = %if.end.370
  %245 = load i16, i16* %bslice, align 2
  %conv374 = sext i16 %245 to i32
  %tobool375 = icmp ne i32 %conv374, 0
  br i1 %tobool375, label %if.then.376, label %if.end.404

if.then.376:                                      ; preds = %land.lhs.true.373
  %246 = load i32, i32* %ctr16x16, align 4
  %conv377 = trunc i32 %246 to i8
  store i8 %conv377, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 3), align 1
  store i8 %conv377, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 2), align 1
  store i8 %conv377, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 1), align 1
  store i8 %conv377, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 0), align 1
  %247 = load i16, i16* %bslice, align 2
  %conv378 = sext i16 %247 to i32
  %tobool379 = icmp ne i32 %conv378, 0
  br i1 %tobool379, label %land.lhs.true.380, label %if.end.397

land.lhs.true.380:                                ; preds = %if.then.376
  %248 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation381 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %248, i32 0, i32 46
  %249 = load i32, i32* %BiPredMotionEstimation381, align 4
  %tobool382 = icmp ne i32 %249, 0
  br i1 %tobool382, label %land.lhs.true.383, label %if.end.397

land.lhs.true.383:                                ; preds = %land.lhs.true.380
  %250 = load i32, i32* %ctr16x16, align 4
  %cmp384 = icmp eq i32 %250, 2
  br i1 %cmp384, label %land.lhs.true.386, label %if.end.397

land.lhs.true.386:                                ; preds = %land.lhs.true.383
  %251 = load i32, i32* %mode, align 4
  %idxprom387 = sext i32 %251 to i64
  %252 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me388 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %252, i32 0, i32 83
  %arrayidx389 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me388, i32 0, i64 %idxprom387
  %253 = load i16, i16* %arrayidx389, align 2
  %conv390 = sext i16 %253 to i32
  %cmp391 = icmp slt i32 %conv390, 2
  br i1 %cmp391, label %land.lhs.true.393, label %if.end.397

land.lhs.true.393:                                ; preds = %land.lhs.true.386
  %254 = load i32, i32* %mode, align 4
  %cmp394 = icmp eq i32 %254, 1
  br i1 %cmp394, label %if.then.396, label %if.end.397

if.then.396:                                      ; preds = %land.lhs.true.393
  %255 = load i32, i32* %ctr16x16, align 4
  %dec = add nsw i32 %255, -1
  store i32 %dec, i32* %ctr16x16, align 4
  br label %if.end.397

if.end.397:                                       ; preds = %if.then.396, %land.lhs.true.393, %land.lhs.true.386, %land.lhs.true.383, %land.lhs.true.380, %if.then.376
  %256 = load i32, i32* %ctr16x16, align 4
  %cmp398 = icmp slt i32 %256, 2
  br i1 %cmp398, label %if.then.400, label %if.end.402

if.then.400:                                      ; preds = %if.end.397
  %257 = load i32, i32* %index, align 4
  %dec401 = add nsw i32 %257, -1
  store i32 %dec401, i32* %index, align 4
  br label %if.end.402

if.end.402:                                       ; preds = %if.then.400, %if.end.397
  %258 = load i32, i32* %ctr16x16, align 4
  %inc403 = add nsw i32 %258, 1
  store i32 %inc403, i32* %ctr16x16, align 4
  br label %if.end.404

if.end.404:                                       ; preds = %if.end.402, %land.lhs.true.373, %if.end.370
  %259 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SkipIntraInInterSlices = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %259, i32 0, i32 67
  %260 = load i32, i32* %SkipIntraInInterSlices, align 4
  %tobool405 = icmp ne i32 %260, 0
  br i1 %tobool405, label %land.lhs.true.406, label %if.end.419

land.lhs.true.406:                                ; preds = %if.end.404
  %261 = load i16, i16* %intra, align 2
  %tobool407 = icmp ne i16 %261, 0
  br i1 %tobool407, label %if.end.419, label %land.lhs.true.408

land.lhs.true.408:                                ; preds = %land.lhs.true.406
  %262 = load i32, i32* %mode, align 4
  %cmp409 = icmp sge i32 %262, 10
  br i1 %cmp409, label %land.lhs.true.411, label %if.end.419

land.lhs.true.411:                                ; preds = %land.lhs.true.408
  %263 = load i16, i16* @best_mode, align 2
  %conv412 = sext i16 %263 to i32
  %cmp413 = icmp sle i32 %conv412, 3
  br i1 %cmp413, label %land.lhs.true.415, label %if.end.419

land.lhs.true.415:                                ; preds = %land.lhs.true.411
  %264 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %264, i32 0, i32 12
  %265 = load i32, i32* %cbp, align 4
  %cmp416 = icmp eq i32 %265, 0
  br i1 %cmp416, label %if.then.418, label %if.end.419

if.then.418:                                      ; preds = %land.lhs.true.415
  br label %for.inc.571

if.end.419:                                       ; preds = %land.lhs.true.415, %land.lhs.true.411, %land.lhs.true.408, %land.lhs.true.406, %if.end.404
  %266 = load i16, i16* %bslice, align 2
  %conv420 = sext i16 %266 to i32
  %tobool421 = icmp ne i32 %conv420, 0
  br i1 %tobool421, label %land.lhs.true.422, label %if.end.531

land.lhs.true.422:                                ; preds = %if.end.419
  %267 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %267, i32 0, i32 20
  %268 = load i32, i32* %weighted_bipred_idc, align 4
  %cmp423 = icmp eq i32 %268, 1
  br i1 %cmp423, label %land.lhs.true.425, label %if.end.531

land.lhs.true.425:                                ; preds = %land.lhs.true.422
  %269 = load i32, i32* %mode, align 4
  %cmp426 = icmp slt i32 %269, 8
  br i1 %cmp426, label %if.then.428, label %if.end.531

if.then.428:                                      ; preds = %land.lhs.true.425
  store i32 0, i32* %invalid_mode, align 4
  store i32 0, i32* %cur_blk, align 4
  br label %for.cond.429

for.cond.429:                                     ; preds = %for.inc.498, %if.then.428
  %270 = load i32, i32* %cur_blk, align 4
  %cmp430 = icmp slt i32 %270, 4
  br i1 %cmp430, label %for.body.432, label %for.end.500

for.body.432:                                     ; preds = %for.cond.429
  %271 = load i32, i32* %cur_blk, align 4
  %idxprom433 = sext i32 %271 to i64
  %272 = load i32, i32* %mode, align 4
  %idxprom434 = sext i32 %272 to i64
  %arrayidx435 = getelementptr inbounds [15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 %idxprom434
  %arrayidx436 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx435, i32 0, i64 %idxprom433
  %273 = load i8, i8* %arrayidx436, align 1
  %conv437 = sext i8 %273 to i32
  %cmp438 = icmp eq i32 %conv437, 2
  br i1 %cmp438, label %if.then.440, label %if.end.497

if.then.440:                                      ; preds = %for.body.432
  store i32 0, i32* %cur_comp, align 4
  br label %for.cond.441

for.cond.441:                                     ; preds = %for.inc.490, %if.then.440
  %274 = load i32, i32* %cur_comp, align 4
  %275 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %275, i32 0, i32 8
  %276 = load i32, i32* %chroma_format_idc, align 4
  %cmp442 = icmp eq i32 %276, 0
  %cond444 = select i1 %cmp442, i32 1, i32 3
  %cmp445 = icmp slt i32 %274, %cond444
  br i1 %cmp445, label %for.body.447, label %for.end.492

for.body.447:                                     ; preds = %for.cond.441
  %277 = load i32, i32* %cur_comp, align 4
  %idxprom448 = sext i32 %277 to i64
  %278 = load i32, i32* %cur_blk, align 4
  %idxprom449 = sext i32 %278 to i64
  %279 = load i32, i32* %mode, align 4
  %idxprom450 = sext i32 %279 to i64
  %arrayidx451 = getelementptr inbounds [15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 %idxprom450
  %arrayidx452 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx451, i32 0, i64 %idxprom449
  %280 = load i8, i8* %arrayidx452, align 1
  %conv453 = sext i8 %280 to i32
  %idxprom454 = sext i32 %conv453 to i64
  %281 = load i32, i32* %cur_blk, align 4
  %idxprom455 = sext i32 %281 to i64
  %282 = load i32, i32* %mode, align 4
  %idxprom456 = sext i32 %282 to i64
  %arrayidx457 = getelementptr inbounds [15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 %idxprom456
  %arrayidx458 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx457, i32 0, i64 %idxprom455
  %283 = load i8, i8* %arrayidx458, align 1
  %conv459 = sext i8 %283 to i32
  %idxprom460 = sext i32 %conv459 to i64
  %284 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx461 = getelementptr inbounds i32***, i32**** %284, i64 0
  %285 = load i32***, i32**** %arrayidx461, align 8
  %arrayidx462 = getelementptr inbounds i32**, i32*** %285, i64 %idxprom460
  %286 = load i32**, i32*** %arrayidx462, align 8
  %arrayidx463 = getelementptr inbounds i32*, i32** %286, i64 %idxprom454
  %287 = load i32*, i32** %arrayidx463, align 8
  %arrayidx464 = getelementptr inbounds i32, i32* %287, i64 %idxprom448
  %288 = load i32, i32* %arrayidx464, align 4
  %289 = load i32, i32* %cur_comp, align 4
  %idxprom465 = sext i32 %289 to i64
  %290 = load i32, i32* %cur_blk, align 4
  %idxprom466 = sext i32 %290 to i64
  %291 = load i32, i32* %mode, align 4
  %idxprom467 = sext i32 %291 to i64
  %arrayidx468 = getelementptr inbounds [15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 %idxprom467
  %arrayidx469 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx468, i32 0, i64 %idxprom466
  %292 = load i8, i8* %arrayidx469, align 1
  %conv470 = sext i8 %292 to i32
  %idxprom471 = sext i32 %conv470 to i64
  %293 = load i32, i32* %cur_blk, align 4
  %idxprom472 = sext i32 %293 to i64
  %294 = load i32, i32* %mode, align 4
  %idxprom473 = sext i32 %294 to i64
  %arrayidx474 = getelementptr inbounds [15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 %idxprom473
  %arrayidx475 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx474, i32 0, i64 %idxprom472
  %295 = load i8, i8* %arrayidx475, align 1
  %conv476 = sext i8 %295 to i32
  %idxprom477 = sext i32 %conv476 to i64
  %296 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx478 = getelementptr inbounds i32***, i32**** %296, i64 1
  %297 = load i32***, i32**** %arrayidx478, align 8
  %arrayidx479 = getelementptr inbounds i32**, i32*** %297, i64 %idxprom477
  %298 = load i32**, i32*** %arrayidx479, align 8
  %arrayidx480 = getelementptr inbounds i32*, i32** %298, i64 %idxprom471
  %299 = load i32*, i32** %arrayidx480, align 8
  %arrayidx481 = getelementptr inbounds i32, i32* %299, i64 %idxprom465
  %300 = load i32, i32* %arrayidx481, align 4
  %add482 = add nsw i32 %288, %300
  store i32 %add482, i32* %weight_sum, align 4
  %301 = load i32, i32* %weight_sum, align 4
  %cmp483 = icmp slt i32 %301, -128
  br i1 %cmp483, label %if.then.488, label %lor.lhs.false.485

lor.lhs.false.485:                                ; preds = %for.body.447
  %302 = load i32, i32* %weight_sum, align 4
  %cmp486 = icmp sgt i32 %302, 127
  br i1 %cmp486, label %if.then.488, label %if.end.489

if.then.488:                                      ; preds = %lor.lhs.false.485, %for.body.447
  store i32 1, i32* %invalid_mode, align 4
  br label %for.end.492

if.end.489:                                       ; preds = %lor.lhs.false.485
  br label %for.inc.490

for.inc.490:                                      ; preds = %if.end.489
  %303 = load i32, i32* %cur_comp, align 4
  %inc491 = add nsw i32 %303, 1
  store i32 %inc491, i32* %cur_comp, align 4
  br label %for.cond.441

for.end.492:                                      ; preds = %if.then.488, %for.cond.441
  %304 = load i32, i32* %invalid_mode, align 4
  %cmp493 = icmp eq i32 %304, 1
  br i1 %cmp493, label %if.then.495, label %if.end.496

if.then.495:                                      ; preds = %for.end.492
  br label %for.end.500

if.end.496:                                       ; preds = %for.end.492
  br label %if.end.497

if.end.497:                                       ; preds = %if.end.496, %for.body.432
  br label %for.inc.498

for.inc.498:                                      ; preds = %if.end.497
  %305 = load i32, i32* %cur_blk, align 4
  %inc499 = add nsw i32 %305, 1
  store i32 %inc499, i32* %cur_blk, align 4
  br label %for.cond.429

for.end.500:                                      ; preds = %if.then.495, %for.cond.429
  %306 = load i32, i32* %invalid_mode, align 4
  %cmp501 = icmp eq i32 %306, 1
  br i1 %cmp501, label %if.then.503, label %if.end.530

if.then.503:                                      ; preds = %for.end.500
  %307 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation504 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %307, i32 0, i32 46
  %308 = load i32, i32* %BiPredMotionEstimation504, align 4
  %tobool505 = icmp ne i32 %308, 0
  br i1 %tobool505, label %land.lhs.true.506, label %if.end.529

land.lhs.true.506:                                ; preds = %if.then.503
  %309 = load i32, i32* %ctr16x16, align 4
  %cmp507 = icmp eq i32 %309, 2
  br i1 %cmp507, label %land.lhs.true.509, label %if.end.529

land.lhs.true.509:                                ; preds = %land.lhs.true.506
  %310 = load i32, i32* %mode, align 4
  %idxprom510 = sext i32 %310 to i64
  %311 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me511 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %311, i32 0, i32 83
  %arrayidx512 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me511, i32 0, i64 %idxprom510
  %312 = load i16, i16* %arrayidx512, align 2
  %conv513 = sext i16 %312 to i32
  %cmp514 = icmp slt i32 %conv513, 2
  br i1 %cmp514, label %land.lhs.true.516, label %if.end.529

land.lhs.true.516:                                ; preds = %land.lhs.true.509
  %313 = load i32, i32* %mode, align 4
  %cmp517 = icmp eq i32 %313, 1
  br i1 %cmp517, label %if.then.519, label %if.end.529

if.then.519:                                      ; preds = %land.lhs.true.516
  %314 = load i32, i32* %mode, align 4
  %idxprom520 = sext i32 %314 to i64
  %315 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me521 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %315, i32 0, i32 83
  %arrayidx522 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me521, i32 0, i64 %idxprom520
  %316 = load i16, i16* %arrayidx522, align 2
  %conv523 = sext i16 %316 to i32
  %add524 = add nsw i32 %conv523, 1
  %conv525 = trunc i32 %add524 to i16
  %317 = load i32, i32* %mode, align 4
  %idxprom526 = sext i32 %317 to i64
  %318 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me527 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %318, i32 0, i32 83
  %arrayidx528 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me527, i32 0, i64 %idxprom526
  store i16 %conv525, i16* %arrayidx528, align 2
  br label %if.end.529

if.end.529:                                       ; preds = %if.then.519, %land.lhs.true.516, %land.lhs.true.509, %land.lhs.true.506, %if.then.503
  br label %for.inc.571

if.end.530:                                       ; preds = %for.end.500
  br label %if.end.531

if.end.531:                                       ; preds = %if.end.530, %land.lhs.true.425, %land.lhs.true.422, %if.end.419
  %319 = load i32, i32* %mode, align 4
  %idxprom532 = sext i32 %319 to i64
  %valid533 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 3
  %arrayidx534 = getelementptr inbounds [15 x i16], [15 x i16]* %valid533, i32 0, i64 %idxprom532
  %320 = load i16, i16* %arrayidx534, align 2
  %tobool535 = icmp ne i16 %320, 0
  br i1 %tobool535, label %if.then.536, label %if.end.537

if.then.536:                                      ; preds = %if.end.531
  %321 = load i32, i32* %mode, align 4
  %322 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %323 = load i32, i32* %i16mode, align 4
  %324 = load i16, i16* %bslice, align 2
  call void @compute_mode_RD_cost(i32 %321, %struct.macroblock* %322, %struct.RD_PARAMS* byval align 8 %enc_mb, double* %min_rdcost, double* %min_rate, i32 %323, i16 signext %324, i16* %inter_skip)
  br label %if.end.537

if.end.537:                                       ; preds = %if.then.536, %if.end.531
  %325 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation538 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %325, i32 0, i32 46
  %326 = load i32, i32* %BiPredMotionEstimation538, align 4
  %tobool539 = icmp ne i32 %326, 0
  br i1 %tobool539, label %land.lhs.true.540, label %if.end.570

land.lhs.true.540:                                ; preds = %if.end.537
  %327 = load i16, i16* %bslice, align 2
  %conv541 = sext i16 %327 to i32
  %tobool542 = icmp ne i32 %conv541, 0
  br i1 %tobool542, label %land.lhs.true.543, label %if.end.570

land.lhs.true.543:                                ; preds = %land.lhs.true.540
  %328 = load i32, i32* %ctr16x16, align 4
  %cmp544 = icmp eq i32 %328, 2
  br i1 %cmp544, label %land.lhs.true.546, label %if.end.570

land.lhs.true.546:                                ; preds = %land.lhs.true.543
  %329 = load i32, i32* %mode, align 4
  %idxprom547 = sext i32 %329 to i64
  %330 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me548 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %330, i32 0, i32 83
  %arrayidx549 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me548, i32 0, i64 %idxprom547
  %331 = load i16, i16* %arrayidx549, align 2
  %conv550 = sext i16 %331 to i32
  %cmp551 = icmp slt i32 %conv550, 2
  br i1 %cmp551, label %land.lhs.true.553, label %if.end.570

land.lhs.true.553:                                ; preds = %land.lhs.true.546
  %332 = load i32, i32* %mode, align 4
  %cmp554 = icmp eq i32 %332, 1
  br i1 %cmp554, label %land.lhs.true.556, label %if.end.570

land.lhs.true.556:                                ; preds = %land.lhs.true.553
  %333 = load i8, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 0), align 1
  %conv557 = sext i8 %333 to i32
  %cmp558 = icmp eq i32 %conv557, 2
  br i1 %cmp558, label %if.then.560, label %if.end.570

if.then.560:                                      ; preds = %land.lhs.true.556
  %334 = load i32, i32* %mode, align 4
  %idxprom561 = sext i32 %334 to i64
  %335 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me562 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %335, i32 0, i32 83
  %arrayidx563 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me562, i32 0, i64 %idxprom561
  %336 = load i16, i16* %arrayidx563, align 2
  %conv564 = sext i16 %336 to i32
  %add565 = add nsw i32 %conv564, 1
  %conv566 = trunc i32 %add565 to i16
  %337 = load i32, i32* %mode, align 4
  %idxprom567 = sext i32 %337 to i64
  %338 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me568 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %338, i32 0, i32 83
  %arrayidx569 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me568, i32 0, i64 %idxprom567
  store i16 %conv566, i16* %arrayidx569, align 2
  br label %if.end.570

if.end.570:                                       ; preds = %if.then.560, %land.lhs.true.556, %land.lhs.true.553, %land.lhs.true.546, %land.lhs.true.543, %land.lhs.true.540, %if.end.537
  br label %for.inc.571

for.inc.571:                                      ; preds = %if.end.570, %if.end.529, %if.then.418
  %339 = load i32, i32* %index, align 4
  %inc572 = add nsw i32 %339, 1
  store i32 %inc572, i32* %index, align 4
  br label %for.cond.358

for.end.573:                                      ; preds = %for.cond.358
  br label %for.inc.574

for.inc.574:                                      ; preds = %for.end.573, %if.then.356
  %340 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode575 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %340, i32 0, i32 17
  %341 = load i32, i32* %c_ipred_mode575, align 4
  %inc576 = add nsw i32 %341, 1
  store i32 %inc576, i32* %c_ipred_mode575, align 4
  br label %for.cond.315

for.end.577:                                      ; preds = %for.cond.315
  %342 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %342, i32 0, i32 8
  %343 = load i32, i32* %mb_type, align 4
  %cmp578 = icmp eq i32 %343, 9
  br i1 %cmp578, label %lor.end.592, label %lor.lhs.false.580

lor.lhs.false.580:                                ; preds = %for.end.577
  %344 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type581 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %344, i32 0, i32 8
  %345 = load i32, i32* %mb_type581, align 4
  %cmp582 = icmp eq i32 %345, 10
  br i1 %cmp582, label %lor.end.592, label %lor.lhs.false.584

lor.lhs.false.584:                                ; preds = %lor.lhs.false.580
  %346 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type585 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %346, i32 0, i32 8
  %347 = load i32, i32* %mb_type585, align 4
  %cmp586 = icmp eq i32 %347, 13
  br i1 %cmp586, label %lor.end.592, label %lor.rhs.588

lor.rhs.588:                                      ; preds = %lor.lhs.false.584
  %348 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type589 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %348, i32 0, i32 8
  %349 = load i32, i32* %mb_type589, align 4
  %cmp590 = icmp eq i32 %349, 14
  br label %lor.end.592

lor.end.592:                                      ; preds = %lor.rhs.588, %lor.lhs.false.584, %lor.lhs.false.580, %for.end.577
  %350 = phi i1 [ true, %lor.lhs.false.584 ], [ true, %lor.lhs.false.580 ], [ true, %for.end.577 ], [ %cmp590, %lor.rhs.588 ]
  %lor.ext593 = zext i1 %350 to i32
  store i32 %lor.ext593, i32* %intra1, align 4
  %351 = load i32, i32* @cbp, align 4
  %cmp594 = icmp ne i32 %351, 0
  br i1 %cmp594, label %land.lhs.true.600, label %lor.lhs.false.596

lor.lhs.false.596:                                ; preds = %lor.end.592
  %352 = load i16, i16* @best_mode, align 2
  %conv597 = sext i16 %352 to i32
  %cmp598 = icmp eq i32 %conv597, 10
  br i1 %cmp598, label %land.lhs.true.600, label %if.else.605

land.lhs.true.600:                                ; preds = %lor.lhs.false.596, %lor.end.592
  %353 = load i16, i16* @best_mode, align 2
  %conv601 = sext i16 %353 to i32
  %cmp602 = icmp ne i32 %conv601, 14
  br i1 %cmp602, label %if.then.604, label %if.else.605

if.then.604:                                      ; preds = %land.lhs.true.600
  %354 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %prev_cbp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %354, i32 0, i32 37
  store i32 1, i32* %prev_cbp, align 4
  br label %if.end.620

if.else.605:                                      ; preds = %land.lhs.true.600, %lor.lhs.false.596
  %355 = load i32, i32* @cbp, align 4
  %cmp606 = icmp eq i32 %355, 0
  br i1 %cmp606, label %land.lhs.true.608, label %lor.lhs.false.611

land.lhs.true.608:                                ; preds = %if.else.605
  %356 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable609 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %356, i32 0, i32 157
  %357 = load i32, i32* %RCEnable609, align 4
  %tobool610 = icmp ne i32 %357, 0
  br i1 %tobool610, label %lor.lhs.false.611, label %if.then.615

lor.lhs.false.611:                                ; preds = %land.lhs.true.608, %if.else.605
  %358 = load i16, i16* @best_mode, align 2
  %conv612 = sext i16 %358 to i32
  %cmp613 = icmp eq i32 %conv612, 14
  br i1 %cmp613, label %if.then.615, label %if.end.619

if.then.615:                                      ; preds = %lor.lhs.false.611, %land.lhs.true.608
  %359 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %delta_qp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %359, i32 0, i32 1
  store i32 0, i32* %delta_qp, align 4
  %360 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %prev_qp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %360, i32 0, i32 35
  %361 = load i32, i32* %prev_qp, align 4
  %362 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %362, i32 0, i32 2
  store i32 %361, i32* %qp, align 4
  %363 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  call void @set_chroma_qp(%struct.macroblock* %363)
  %364 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp616 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %364, i32 0, i32 2
  %365 = load i32, i32* %qp616, align 4
  %366 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp617 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %366, i32 0, i32 9
  store i32 %365, i32* %qp617, align 4
  %367 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %prev_cbp618 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %367, i32 0, i32 37
  store i32 0, i32* %prev_cbp618, align 4
  br label %if.end.619

if.end.619:                                       ; preds = %if.then.615, %lor.lhs.false.611
  br label %if.end.620

if.end.620:                                       ; preds = %if.end.619, %if.then.604
  call void @set_stored_macroblock_parameters()
  %368 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable621 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %368, i32 0, i32 157
  %369 = load i32, i32* %RCEnable621, align 4
  %tobool622 = icmp ne i32 %369, 0
  br i1 %tobool622, label %if.then.623, label %if.end.624

if.then.623:                                      ; preds = %if.end.620
  %370 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %371 = load i16, i16* @best_mode, align 2
  call void @update_rc(%struct.macroblock* %370, i16 signext %371)
  br label %if.end.624

if.end.624:                                       ; preds = %if.then.623, %if.end.620
  %372 = load double, double* %min_rdcost, align 8
  %373 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %min_rdcost625 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %373, i32 0, i32 0
  store double %372, double* %min_rdcost625, align 8
  %374 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %374, i32 0, i32 100
  %375 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool626 = icmp ne i32 %375, 0
  br i1 %tobool626, label %land.lhs.true.627, label %if.end.659

land.lhs.true.627:                                ; preds = %if.end.624
  %376 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr628 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %376, i32 0, i32 3
  %377 = load i32, i32* %current_mb_nr628, align 4
  %rem = srem i32 %377, 2
  %tobool629 = icmp ne i32 %rem, 0
  br i1 %tobool629, label %land.lhs.true.630, label %if.end.659

land.lhs.true.630:                                ; preds = %land.lhs.true.627
  %378 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type631 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %378, i32 0, i32 8
  %379 = load i32, i32* %mb_type631, align 4
  %tobool632 = icmp ne i32 %379, 0
  br i1 %tobool632, label %cond.true.633, label %cond.false.634

cond.true.633:                                    ; preds = %land.lhs.true.630
  br i1 false, label %land.lhs.true.641, label %if.end.659

cond.false.634:                                   ; preds = %land.lhs.true.630
  %380 = load i16, i16* %bslice, align 2
  %conv635 = sext i16 %380 to i32
  %tobool636 = icmp ne i32 %conv635, 0
  br i1 %tobool636, label %cond.true.637, label %cond.false.640

cond.true.637:                                    ; preds = %cond.false.634
  %381 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp638 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %381, i32 0, i32 12
  %382 = load i32, i32* %cbp638, align 4
  %tobool639 = icmp ne i32 %382, 0
  br i1 %tobool639, label %if.end.659, label %land.lhs.true.641

cond.false.640:                                   ; preds = %cond.false.634
  br i1 true, label %land.lhs.true.641, label %if.end.659

land.lhs.true.641:                                ; preds = %cond.false.640, %cond.true.637, %cond.true.633
  %383 = load %struct.macroblock*, %struct.macroblock** %prevMB, align 8
  %mb_type642 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %383, i32 0, i32 8
  %384 = load i32, i32* %mb_type642, align 4
  %tobool643 = icmp ne i32 %384, 0
  br i1 %tobool643, label %cond.true.644, label %cond.false.645

cond.true.644:                                    ; preds = %land.lhs.true.641
  br i1 false, label %land.lhs.true.652, label %if.end.659

cond.false.645:                                   ; preds = %land.lhs.true.641
  %385 = load i16, i16* %bslice, align 2
  %conv646 = sext i16 %385 to i32
  %tobool647 = icmp ne i32 %conv646, 0
  br i1 %tobool647, label %cond.true.648, label %cond.false.651

cond.true.648:                                    ; preds = %cond.false.645
  %386 = load %struct.macroblock*, %struct.macroblock** %prevMB, align 8
  %cbp649 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %386, i32 0, i32 12
  %387 = load i32, i32* %cbp649, align 4
  %tobool650 = icmp ne i32 %387, 0
  br i1 %tobool650, label %if.end.659, label %land.lhs.true.652

cond.false.651:                                   ; preds = %cond.false.645
  br i1 true, label %land.lhs.true.652, label %if.end.659

land.lhs.true.652:                                ; preds = %cond.false.651, %cond.true.648, %cond.true.644
  %call653 = call i32 @field_flag_inference()
  %curr_mb_field = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 5
  %388 = load i16, i16* %curr_mb_field, align 2
  %conv654 = sext i16 %388 to i32
  %cmp655 = icmp eq i32 %call653, %conv654
  br i1 %cmp655, label %if.end.659, label %if.then.657

if.then.657:                                      ; preds = %land.lhs.true.652
  %389 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %min_rdcost658 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %389, i32 0, i32 0
  store double 1.000000e+30, double* %min_rdcost658, align 8
  br label %if.end.659

if.end.659:                                       ; preds = %if.then.657, %land.lhs.true.652, %cond.false.651, %cond.true.648, %cond.true.644, %cond.false.640, %cond.true.637, %cond.true.633, %land.lhs.true.627, %if.end.624
  %390 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RestrictRef = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %390, i32 0, i32 128
  %391 = load i32, i32* %RestrictRef, align 4
  %tobool660 = icmp ne i32 %391, 0
  br i1 %tobool660, label %if.then.661, label %if.end.663

if.then.661:                                      ; preds = %if.end.659
  %392 = load i16, i16* %intra, align 2
  %conv662 = sext i16 %392 to i32
  %393 = load i32, i32* %intra1, align 4
  %394 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  call void @update_refresh_map(i32 %conv662, i32 %393, %struct.macroblock* %394)
  br label %if.end.663

if.end.663:                                       ; preds = %if.then.661, %if.end.659
  %395 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode664 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %395, i32 0, i32 169
  %396 = load i32, i32* %SearchMode664, align 4
  %cmp665 = icmp eq i32 %396, 1
  br i1 %cmp665, label %if.then.667, label %if.else.673

if.then.667:                                      ; preds = %if.end.663
  %397 = load i16, i16* @best_mode, align 2
  %conv668 = sext i16 %397 to i32
  %list_offset669 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 4
  %arrayidx670 = getelementptr inbounds [2 x i16], [2 x i16]* %list_offset669, i32 0, i64 0
  %398 = load i16, i16* %arrayidx670, align 2
  %idxprom671 = sext i16 %398 to i64
  %arrayidx672 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom671
  %399 = load i32, i32* %arrayidx672, align 4
  call void @UMHEX_skip_intrabk_SAD(i32 %conv668, i32 %399)
  br label %if.end.684

if.else.673:                                      ; preds = %if.end.663
  %400 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode674 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %400, i32 0, i32 169
  %401 = load i32, i32* %SearchMode674, align 4
  %cmp675 = icmp eq i32 %401, 2
  br i1 %cmp675, label %if.then.677, label %if.end.683

if.then.677:                                      ; preds = %if.else.673
  %402 = load i16, i16* @best_mode, align 2
  %conv678 = sext i16 %402 to i32
  %list_offset679 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 4
  %arrayidx680 = getelementptr inbounds [2 x i16], [2 x i16]* %list_offset679, i32 0, i64 0
  %403 = load i16, i16* %arrayidx680, align 2
  %idxprom681 = sext i16 %403 to i64
  %arrayidx682 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom681
  %404 = load i32, i32* %arrayidx682, align 4
  call void @smpUMHEX_skip_intrabk_SAD(i32 %conv678, i32 %404)
  br label %if.end.683

if.end.683:                                       ; preds = %if.then.677, %if.else.673
  br label %if.end.684

if.end.684:                                       ; preds = %if.end.683, %if.then.667
  %405 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %405, i32 0, i32 23
  %406 = load i32, i32* %UseConstrainedIntraPred, align 4
  %tobool685 = icmp ne i32 %406, 0
  br i1 %tobool685, label %land.lhs.true.686, label %if.end.715

land.lhs.true.686:                                ; preds = %if.end.684
  %407 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type687 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %407, i32 0, i32 5
  %408 = load i32, i32* %type687, align 4
  %cmp688 = icmp eq i32 %408, 0
  br i1 %cmp688, label %if.then.694, label %lor.lhs.false.690

lor.lhs.false.690:                                ; preds = %land.lhs.true.686
  %409 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type691 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %409, i32 0, i32 5
  %410 = load i32, i32* %type691, align 4
  %cmp692 = icmp eq i32 %410, 1
  br i1 %cmp692, label %if.then.694, label %if.end.715

if.then.694:                                      ; preds = %lor.lhs.false.690, %land.lhs.true.686
  %411 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type695 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %411, i32 0, i32 8
  %412 = load i32, i32* %mb_type695, align 4
  %cmp696 = icmp eq i32 %412, 9
  br i1 %cmp696, label %lor.end.710, label %lor.lhs.false.698

lor.lhs.false.698:                                ; preds = %if.then.694
  %413 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type699 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %413, i32 0, i32 8
  %414 = load i32, i32* %mb_type699, align 4
  %cmp700 = icmp eq i32 %414, 10
  br i1 %cmp700, label %lor.end.710, label %lor.lhs.false.702

lor.lhs.false.702:                                ; preds = %lor.lhs.false.698
  %415 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type703 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %415, i32 0, i32 8
  %416 = load i32, i32* %mb_type703, align 4
  %cmp704 = icmp eq i32 %416, 13
  br i1 %cmp704, label %lor.end.710, label %lor.rhs.706

lor.rhs.706:                                      ; preds = %lor.lhs.false.702
  %417 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type707 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %417, i32 0, i32 8
  %418 = load i32, i32* %mb_type707, align 4
  %cmp708 = icmp eq i32 %418, 14
  br label %lor.end.710

lor.end.710:                                      ; preds = %lor.rhs.706, %lor.lhs.false.702, %lor.lhs.false.698, %if.then.694
  %419 = phi i1 [ true, %lor.lhs.false.702 ], [ true, %lor.lhs.false.698 ], [ true, %if.then.694 ], [ %cmp708, %lor.rhs.706 ]
  %lor.ext711 = zext i1 %419 to i32
  %420 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr712 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %420, i32 0, i32 3
  %421 = load i32, i32* %current_mb_nr712, align 4
  %idxprom713 = sext i32 %421 to i64
  %422 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %422, i32 0, i32 63
  %423 = load i32*, i32** %intra_block, align 8
  %arrayidx714 = getelementptr inbounds i32, i32* %423, i64 %idxprom713
  store i32 %lor.ext711, i32* %arrayidx714, align 4
  br label %if.end.715

if.end.715:                                       ; preds = %lor.end.710, %lor.lhs.false.690, %if.end.684
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @FmoGetPreviousMBNr(i32) #2

declare void @UMHEX_decide_intrabk_SAD() #2

declare void @smpUMHEX_decide_intrabk_SAD() #2

declare i32 @RandomIntra(i32) #2

declare void @init_enc_mb_params(%struct.macroblock*, %struct.RD_PARAMS*, i32, i32) #2

declare void @store_coding_state(%struct.CSobj*) #2

declare void @Get_Direct_Motion_Vectors() #2

declare void @get_initial_mb16x16_cost() #2

; Function Attrs: nounwind
declare double @sqrt(double) #3

declare void @PartitionMotionSearch(i32, i32, i32*) #2

declare void @list_prediction_cost(i32, i32, i32, %struct.RD_PARAMS* byval align 8, i32*, i8*) #2

declare void @determine_prediction_list(i32, i32*, i8*, i8*, i32*, i16*) #2

declare void @assign_enc_picture_params(i32, i8 signext, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare void @SetRefAndMotionVectors(i32, i32, i32, i32, i32) #2

declare void @adjust_mb16x16_cost(i32) #2

declare void @submacroblock_mode_decision(%struct.RD_PARAMS* byval align 8, %struct.RD_8x8DATA*, %struct.macroblock*, i32***, i32*, i16 signext, i32, i32*, i32*, i32*, i32) #2

declare void @reset_coding_state(%struct.CSobj*) #2

declare void @rc_store_diff(i32, i32, [16 x i16]*) #2

declare void @FindSkipModeMotionVector() #2

declare void @IntraChromaPrediction(i32*, i32*, i32*) #2

declare void @IntraChromaRDDecision(%struct.RD_PARAMS* byval align 8) #2

declare void @compute_mode_RD_cost(i32, %struct.macroblock*, %struct.RD_PARAMS* byval align 8, double*, double*, i32, i16 signext, i16*) #2

declare void @set_chroma_qp(%struct.macroblock*) #2

declare void @set_stored_macroblock_parameters() #2

declare void @update_rc(%struct.macroblock*, i16 signext) #2

declare i32 @field_flag_inference() #2

declare void @update_refresh_map(i32, i32, %struct.macroblock*) #2

declare void @UMHEX_skip_intrabk_SAD(i32, i32) #2

declare void @smpUMHEX_skip_intrabk_SAD(i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
