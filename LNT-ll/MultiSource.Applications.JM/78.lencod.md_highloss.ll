; ModuleID = './MultiSource.Applications.JM/78.lencod.md_highloss.bc'
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

@encode_one_macroblock_highloss.best_ref = private unnamed_addr constant [2 x i8] c"\00\FF", align 1
@encode_one_macroblock_highloss.bmcost = private unnamed_addr constant [5 x i32] [i32 2147483647, i32 0, i32 0, i32 0, i32 0], align 16
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
define void @encode_one_macroblock_highloss() #0 {
entry:
  %max_index = alloca i32, align 4
  %rerun = alloca i32, align 4
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
  %runs = alloca i16, align 2
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
  store double 0.000000e+00, double* %min_rdcost, align 8
  store double 1.000000e+30, double* %max_rdcost, align 8
  %0 = bitcast [2 x i8]* %best_ref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @encode_one_macroblock_highloss.best_ref, i32 0, i32 0), i64 2, i32 1, i1 false)
  %1 = bitcast [5 x i32]* %bmcost to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([5 x i32]* @encode_one_macroblock_highloss.bmcost to i8*), i64 20, i32 16, i1 false)
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
  %23 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RestrictRef = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %23, i32 0, i32 128
  %24 = load i32, i32* %RestrictRef, align 4
  %cmp25 = icmp eq i32 %24, 1
  br i1 %cmp25, label %land.rhs.27, label %land.end.39

land.rhs.27:                                      ; preds = %lor.end.22
  %25 = load i16, i16* %pslice, align 2
  %conv28 = sext i16 %25 to i32
  %tobool29 = icmp ne i32 %conv28, 0
  br i1 %tobool29, label %lor.end.37, label %lor.rhs.30

lor.rhs.30:                                       ; preds = %land.rhs.27
  %26 = load i16, i16* %bslice, align 2
  %conv31 = sext i16 %26 to i32
  %tobool32 = icmp ne i32 %conv31, 0
  br i1 %tobool32, label %land.rhs.33, label %land.end.36

land.rhs.33:                                      ; preds = %lor.rhs.30
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 122
  %28 = load i32, i32* %nal_reference_idc, align 4
  %cmp34 = icmp sgt i32 %28, 0
  br label %land.end.36

land.end.36:                                      ; preds = %land.rhs.33, %lor.rhs.30
  %29 = phi i1 [ false, %lor.rhs.30 ], [ %cmp34, %land.rhs.33 ]
  br label %lor.end.37

lor.end.37:                                       ; preds = %land.end.36, %land.rhs.27
  %30 = phi i1 [ true, %land.rhs.27 ], [ %29, %land.end.36 ]
  br label %land.end.39

land.end.39:                                      ; preds = %lor.end.37, %lor.end.22
  %31 = phi i1 [ false, %lor.end.22 ], [ %30, %lor.end.37 ]
  %cond = select i1 %31, i32 2, i32 1
  %conv40 = trunc i32 %cond to i16
  store i16 %conv40, i16* %runs, align 2
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 3
  %33 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %33 to i64
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 61
  %35 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %35, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %36 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr41 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %36, i32 0, i32 3
  %37 = load i32, i32* %current_mb_nr41, align 4
  %call = call i32 @FmoGetPreviousMBNr(i32 %37)
  store i32 %call, i32* %prev_mb_nr, align 4
  %38 = load i32, i32* %prev_mb_nr, align 4
  %cmp42 = icmp sge i32 %38, 0
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end.39
  %39 = load i32, i32* %prev_mb_nr, align 4
  %idxprom44 = sext i32 %39 to i64
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data45 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 61
  %41 = load %struct.macroblock*, %struct.macroblock** %mb_data45, align 8
  %arrayidx46 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %41, i64 %idxprom44
  br label %cond.end

cond.false:                                       ; preds = %land.end.39
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond47 = phi %struct.macroblock* [ %arrayidx46, %cond.true ], [ null, %cond.false ]
  store %struct.macroblock* %cond47, %struct.macroblock** %prevMB, align 8
  store i16 0, i16* %inter_skip, align 2
  store double 0.000000e+00, double* %min_rate, align 8
  %42 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %42, i32 0, i32 169
  %43 = load i32, i32* %SearchMode, align 4
  %cmp48 = icmp eq i32 %43, 1
  br i1 %cmp48, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  call void @UMHEX_decide_intrabk_SAD()
  br label %if.end.54

if.else:                                          ; preds = %cond.end
  %44 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode50 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %44, i32 0, i32 169
  %45 = load i32, i32* %SearchMode50, align 4
  %cmp51 = icmp eq i32 %45, 2
  br i1 %cmp51, label %if.then.53, label %if.end

if.then.53:                                       ; preds = %if.else
  call void @smpUMHEX_decide_intrabk_SAD()
  br label %if.end

if.end:                                           ; preds = %if.then.53, %if.else
  br label %if.end.54

if.end.54:                                        ; preds = %if.end, %if.then
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr55 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 3
  %47 = load i32, i32* %current_mb_nr55, align 4
  %call56 = call i32 @RandomIntra(i32 %47)
  %48 = load i16, i16* %intra, align 2
  %conv57 = sext i16 %48 to i32
  %or = or i32 %conv57, %call56
  %conv58 = trunc i32 %or to i16
  store i16 %conv58, i16* %intra, align 2
  %49 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %50 = load i16, i16* %intra, align 2
  %conv59 = sext i16 %50 to i32
  %51 = load i16, i16* %bslice, align 2
  %conv60 = sext i16 %51 to i32
  call void @init_enc_mb_params(%struct.macroblock* %49, %struct.RD_PARAMS* %enc_mb, i32 %conv59, i32 %conv60)
  store i32 0, i32* %rerun, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.626, %if.end.54
  %52 = load i32, i32* %rerun, align 4
  %53 = load i16, i16* %runs, align 2
  %conv61 = sext i16 %53 to i32
  %cmp62 = icmp slt i32 %52, %conv61
  br i1 %cmp62, label %for.body, label %for.end.628

for.body:                                         ; preds = %for.cond
  %54 = load i16, i16* %runs, align 2
  %conv64 = sext i16 %54 to i32
  %cmp65 = icmp eq i32 %conv64, 2
  br i1 %cmp65, label %if.then.67, label %if.end.71

if.then.67:                                       ; preds = %for.body
  %55 = load i32, i32* %rerun, align 4
  %cmp68 = icmp eq i32 %55, 0
  %cond70 = select i1 %cmp68, i32 1, i32 3
  %56 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %56, i32 0, i32 113
  store i32 %cond70, i32* %rdopt, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.67, %for.body
  %57 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %57, i32 0, i32 17
  store i32 0, i32* %c_ipred_mode, align 4
  %58 = load %struct.CSobj*, %struct.CSobj** @cs_cm, align 8
  call void @store_coding_state(%struct.CSobj* %58)
  %59 = load i16, i16* %intra, align 2
  %tobool72 = icmp ne i16 %59, 0
  br i1 %tobool72, label %if.else.322, label %if.then.73

if.then.73:                                       ; preds = %if.end.71
  store i16 1, i16* @best_mode, align 2
  %60 = load i16, i16* %bslice, align 2
  %tobool74 = icmp ne i16 %60, 0
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.then.73
  call void @Get_Direct_Motion_Vectors()
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %if.then.73
  %61 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %CtxAdptLagrangeMult = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %61, i32 0, i32 114
  %62 = load i32, i32* %CtxAdptLagrangeMult, align 4
  %cmp77 = icmp eq i32 %62, 1
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.end.76
  call void @get_initial_mb16x16_cost()
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %if.end.76
  store i32 2147483647, i32* %min_cost, align 4
  store i32 1, i32* %mode, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.247, %if.end.80
  %63 = load i32, i32* %mode, align 4
  %cmp82 = icmp slt i32 %63, 4
  br i1 %cmp82, label %for.body.84, label %for.end.249

for.body.84:                                      ; preds = %for.cond.81
  store i16 0, i16* @bi_pred_me, align 2
  %64 = load i32, i32* %mode, align 4
  %idxprom85 = sext i32 %64 to i64
  %65 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %65, i32 0, i32 83
  %arrayidx86 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me, i32 0, i64 %idxprom85
  store i16 0, i16* %arrayidx86, align 2
  %66 = load i32, i32* %mode, align 4
  %idxprom87 = sext i32 %66 to i64
  %valid = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 3
  %arrayidx88 = getelementptr inbounds [15 x i16], [15 x i16]* %valid, i32 0, i64 %idxprom87
  %67 = load i16, i16* %arrayidx88, align 2
  %tobool89 = icmp ne i16 %67, 0
  br i1 %tobool89, label %if.then.90, label %if.end.246

if.then.90:                                       ; preds = %for.body.84
  store i32 0, i32* %cost, align 4
  store i32 0, i32* %block, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.233, %if.then.90
  %68 = load i32, i32* %block, align 4
  %69 = load i32, i32* %mode, align 4
  %cmp92 = icmp eq i32 %69, 1
  %cond94 = select i1 %cmp92, i32 1, i32 2
  %cmp95 = icmp slt i32 %68, %cond94
  br i1 %cmp95, label %for.body.97, label %for.end.235

for.body.97:                                      ; preds = %for.cond.91
  store i32 0, i32* %MEPos, align 4
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc, %for.body.97
  %70 = load i32, i32* %MEPos, align 4
  %cmp99 = icmp slt i32 %70, 3
  br i1 %cmp99, label %for.body.101, label %for.end

for.body.101:                                     ; preds = %for.cond.98
  %71 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %CtxAdptLagrangeMult102 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %71, i32 0, i32 114
  %72 = load i32, i32* %CtxAdptLagrangeMult102, align 4
  %cmp103 = icmp eq i32 %72, 0
  br i1 %cmp103, label %cond.true.105, label %cond.false.109

cond.true.105:                                    ; preds = %for.body.101
  %73 = load i32, i32* %MEPos, align 4
  %idxprom106 = sext i32 %73 to i64
  %lambda_mf107 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 2
  %arrayidx108 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf107, i32 0, i64 %idxprom106
  %74 = load i32, i32* %arrayidx108, align 4
  br label %cond.end.116

cond.false.109:                                   ; preds = %for.body.101
  %75 = load i32, i32* %MEPos, align 4
  %idxprom110 = sext i32 %75 to i64
  %lambda_mf111 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 2
  %arrayidx112 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf111, i32 0, i64 %idxprom110
  %76 = load i32, i32* %arrayidx112, align 4
  %conv113 = sitofp i32 %76 to double
  %77 = load double, double* @lambda_mf_factor, align 8
  %call114 = call double @sqrt(double %77) #1
  %mul = fmul double %conv113, %call114
  %conv115 = fptosi double %mul to i32
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.109, %cond.true.105
  %cond117 = phi i32 [ %74, %cond.true.105 ], [ %conv115, %cond.false.109 ]
  %78 = load i32, i32* %MEPos, align 4
  %idxprom118 = sext i32 %78 to i64
  %arrayidx119 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf, i32 0, i64 %idxprom118
  store i32 %cond117, i32* %arrayidx119, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.116
  %79 = load i32, i32* %MEPos, align 4
  %inc = add nsw i32 %79, 1
  store i32 %inc, i32* %MEPos, align 4
  br label %for.cond.98

for.end:                                          ; preds = %for.cond.98
  %80 = load i32, i32* %mode, align 4
  %81 = load i32, i32* %block, align 4
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf, i32 0, i32 0
  call void @PartitionMotionSearch(i32 %80, i32 %81, i32* %arraydecay)
  %82 = load i32, i32* %block, align 4
  %cmp120 = icmp eq i32 %82, 1
  br i1 %cmp120, label %land.rhs.122, label %land.end.125

land.rhs.122:                                     ; preds = %for.end
  %83 = load i32, i32* %mode, align 4
  %cmp123 = icmp eq i32 %83, 2
  br label %land.end.125

land.end.125:                                     ; preds = %land.rhs.122, %for.end
  %84 = phi i1 [ false, %for.end ], [ %cmp123, %land.rhs.122 ]
  %cond126 = select i1 %84, i32 2, i32 0
  store i32 %cond126, i32* %j, align 4
  %85 = load i32, i32* %block, align 4
  %cmp127 = icmp eq i32 %85, 1
  br i1 %cmp127, label %land.rhs.129, label %land.end.132

land.rhs.129:                                     ; preds = %land.end.125
  %86 = load i32, i32* %mode, align 4
  %cmp130 = icmp eq i32 %86, 3
  br label %land.end.132

land.end.132:                                     ; preds = %land.rhs.129, %land.end.125
  %87 = phi i1 [ false, %land.end.125 ], [ %cmp130, %land.rhs.129 ]
  %cond133 = select i1 %87, i32 2, i32 0
  store i32 %cond133, i32* %i, align 4
  %arrayidx134 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i64 0
  store i32 2147483647, i32* %arrayidx134, align 4
  %88 = load i32, i32* %block, align 4
  %89 = load i32, i32* %mode, align 4
  %arraydecay135 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i32 0
  %arraydecay136 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i32 0
  call void @list_prediction_cost(i32 0, i32 %88, i32 %89, %struct.RD_PARAMS* byval align 8 %enc_mb, i32* %arraydecay135, i8* %arraydecay136)
  %90 = load i16, i16* %bslice, align 2
  %tobool137 = icmp ne i16 %90, 0
  br i1 %tobool137, label %if.then.138, label %if.else.157

if.then.138:                                      ; preds = %land.end.132
  %arrayidx139 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i64 1
  store i32 2147483647, i32* %arrayidx139, align 4
  %91 = load i32, i32* %block, align 4
  %92 = load i32, i32* %mode, align 4
  %arraydecay140 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i32 0
  %arraydecay141 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i32 0
  call void @list_prediction_cost(i32 1, i32 %91, i32 %92, %struct.RD_PARAMS* byval align 8 %enc_mb, i32* %arraydecay140, i8* %arraydecay141)
  %93 = load i32, i32* %block, align 4
  %94 = load i32, i32* %mode, align 4
  %arraydecay142 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i32 0
  %arraydecay143 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i32 0
  call void @list_prediction_cost(i32 2, i32 %93, i32 %94, %struct.RD_PARAMS* byval align 8 %enc_mb, i32* %arraydecay142, i8* %arraydecay143)
  %95 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %95, i32 0, i32 46
  %96 = load i32, i32* %BiPredMotionEstimation, align 4
  %tobool144 = icmp ne i32 %96, 0
  br i1 %tobool144, label %land.lhs.true.145, label %if.else.151

land.lhs.true.145:                                ; preds = %if.then.138
  %97 = load i32, i32* %mode, align 4
  %cmp146 = icmp eq i32 %97, 1
  br i1 %cmp146, label %if.then.148, label %if.else.151

if.then.148:                                      ; preds = %land.lhs.true.145
  %98 = load i32, i32* %block, align 4
  %99 = load i32, i32* %mode, align 4
  %arraydecay149 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i32 0
  call void @list_prediction_cost(i32 3, i32 %98, i32 %99, %struct.RD_PARAMS* byval align 8 %enc_mb, i32* %arraydecay149, i8* null)
  %100 = load i32, i32* %block, align 4
  %101 = load i32, i32* %mode, align 4
  %arraydecay150 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i32 0
  call void @list_prediction_cost(i32 4, i32 %100, i32 %101, %struct.RD_PARAMS* byval align 8 %enc_mb, i32* %arraydecay150, i8* null)
  br label %if.end.154

if.else.151:                                      ; preds = %land.lhs.true.145, %if.then.138
  %arrayidx152 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i64 3
  store i32 2147483647, i32* %arrayidx152, align 4
  %arrayidx153 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i64 4
  store i32 2147483647, i32* %arrayidx153, align 4
  br label %if.end.154

if.end.154:                                       ; preds = %if.else.151, %if.then.148
  %102 = load i32, i32* %mode, align 4
  %arraydecay155 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i32 0
  %arraydecay156 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i32 0
  call void @determine_prediction_list(i32 %102, i32* %arraydecay155, i8* %arraydecay156, i8* %best_pdir, i32* %cost, i16* @bi_pred_me)
  br label %if.end.159

if.else.157:                                      ; preds = %land.end.132
  store i8 0, i8* %best_pdir, align 1
  %arrayidx158 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i64 0
  %103 = load i32, i32* %arrayidx158, align 4
  %104 = load i32, i32* %cost, align 4
  %add = add nsw i32 %104, %103
  store i32 %add, i32* %cost, align 4
  br label %if.end.159

if.end.159:                                       ; preds = %if.else.157, %if.end.154
  %105 = load i32, i32* %mode, align 4
  %106 = load i8, i8* %best_pdir, align 1
  %107 = load i32, i32* %block, align 4
  %list_offset = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 4
  %arrayidx160 = getelementptr inbounds [2 x i16], [2 x i16]* %list_offset, i32 0, i64 0
  %108 = load i16, i16* %arrayidx160, align 2
  %conv161 = sext i16 %108 to i32
  %arrayidx162 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 0
  %109 = load i8, i8* %arrayidx162, align 1
  %conv163 = sext i8 %109 to i32
  %arrayidx164 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 1
  %110 = load i8, i8* %arrayidx164, align 1
  %conv165 = sext i8 %110 to i32
  %111 = load i16, i16* %bslice, align 2
  %conv166 = sext i16 %111 to i32
  call void @assign_enc_picture_params(i32 %105, i8 signext %106, i32 %107, i32 %conv161, i32 %conv163, i32 %conv165, i32 %conv166)
  %112 = load i32, i32* %mode, align 4
  %cmp167 = icmp eq i32 %112, 3
  br i1 %cmp167, label %if.then.169, label %if.else.187

if.then.169:                                      ; preds = %if.end.159
  %arrayidx170 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 0
  %113 = load i8, i8* %arrayidx170, align 1
  %114 = load i32, i32* %block, align 4
  %add171 = add nsw i32 %114, 2
  %idxprom172 = sext i32 %add171 to i64
  %arrayidx173 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 3), i32 0, i64 %idxprom172
  store i8 %113, i8* %arrayidx173, align 1
  %115 = load i32, i32* %block, align 4
  %idxprom174 = sext i32 %115 to i64
  %arrayidx175 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 3), i32 0, i64 %idxprom174
  store i8 %113, i8* %arrayidx175, align 1
  %116 = load i8, i8* %best_pdir, align 1
  %117 = load i32, i32* %block, align 4
  %add176 = add nsw i32 %117, 2
  %idxprom177 = sext i32 %add176 to i64
  %arrayidx178 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 3), i32 0, i64 %idxprom177
  store i8 %116, i8* %arrayidx178, align 1
  %118 = load i32, i32* %block, align 4
  %idxprom179 = sext i32 %118 to i64
  %arrayidx180 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 3), i32 0, i64 %idxprom179
  store i8 %116, i8* %arrayidx180, align 1
  %arrayidx181 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 1
  %119 = load i8, i8* %arrayidx181, align 1
  %120 = load i32, i32* %block, align 4
  %add182 = add nsw i32 %120, 2
  %idxprom183 = sext i32 %add182 to i64
  %arrayidx184 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 3), i32 0, i64 %idxprom183
  store i8 %119, i8* %arrayidx184, align 1
  %121 = load i32, i32* %block, align 4
  %idxprom185 = sext i32 %121 to i64
  %arrayidx186 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 3), i32 0, i64 %idxprom185
  store i8 %119, i8* %arrayidx186, align 1
  br label %if.end.220

if.else.187:                                      ; preds = %if.end.159
  %122 = load i32, i32* %mode, align 4
  %cmp188 = icmp eq i32 %122, 2
  br i1 %cmp188, label %if.then.190, label %if.else.214

if.then.190:                                      ; preds = %if.else.187
  %arrayidx191 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 0
  %123 = load i8, i8* %arrayidx191, align 1
  %124 = load i32, i32* %block, align 4
  %mul192 = mul nsw i32 2, %124
  %add193 = add nsw i32 %mul192, 1
  %idxprom194 = sext i32 %add193 to i64
  %arrayidx195 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 2), i32 0, i64 %idxprom194
  store i8 %123, i8* %arrayidx195, align 1
  %125 = load i32, i32* %block, align 4
  %mul196 = mul nsw i32 2, %125
  %idxprom197 = sext i32 %mul196 to i64
  %arrayidx198 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 2), i32 0, i64 %idxprom197
  store i8 %123, i8* %arrayidx198, align 1
  %126 = load i8, i8* %best_pdir, align 1
  %127 = load i32, i32* %block, align 4
  %mul199 = mul nsw i32 2, %127
  %add200 = add nsw i32 %mul199, 1
  %idxprom201 = sext i32 %add200 to i64
  %arrayidx202 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 2), i32 0, i64 %idxprom201
  store i8 %126, i8* %arrayidx202, align 1
  %128 = load i32, i32* %block, align 4
  %mul203 = mul nsw i32 2, %128
  %idxprom204 = sext i32 %mul203 to i64
  %arrayidx205 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 2), i32 0, i64 %idxprom204
  store i8 %126, i8* %arrayidx205, align 1
  %arrayidx206 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 1
  %129 = load i8, i8* %arrayidx206, align 1
  %130 = load i32, i32* %block, align 4
  %mul207 = mul nsw i32 2, %130
  %add208 = add nsw i32 %mul207, 1
  %idxprom209 = sext i32 %add208 to i64
  %arrayidx210 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 2), i32 0, i64 %idxprom209
  store i8 %129, i8* %arrayidx210, align 1
  %131 = load i32, i32* %block, align 4
  %mul211 = mul nsw i32 2, %131
  %idxprom212 = sext i32 %mul211 to i64
  %arrayidx213 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 2), i32 0, i64 %idxprom212
  store i8 %129, i8* %arrayidx213, align 1
  br label %if.end.219

if.else.214:                                      ; preds = %if.else.187
  %arrayidx215 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 0
  %132 = load i8, i8* %arrayidx215, align 1
  %conv216 = sext i8 %132 to i32
  %133 = trunc i32 %conv216 to i8
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 1, i64 0), i8 %133, i64 4, i32 1, i1 false)
  %arrayidx217 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 1
  %134 = load i8, i8* %arrayidx217, align 1
  %conv218 = sext i8 %134 to i32
  %135 = trunc i32 %conv218 to i8
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 1, i64 0), i8 %135, i64 4, i32 1, i1 false)
  %136 = load i8, i8* %best_pdir, align 1
  store i8 %136, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 3), align 1
  store i8 %136, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 2), align 1
  store i8 %136, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 1), align 1
  store i8 %136, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 0), align 1
  br label %if.end.219

if.end.219:                                       ; preds = %if.else.214, %if.then.190
  br label %if.end.220

if.end.220:                                       ; preds = %if.end.219, %if.then.169
  %137 = load i32, i32* %mode, align 4
  %cmp221 = icmp sgt i32 %137, 1
  br i1 %cmp221, label %land.lhs.true.223, label %if.end.232

land.lhs.true.223:                                ; preds = %if.end.220
  %138 = load i32, i32* %block, align 4
  %cmp224 = icmp eq i32 %138, 0
  br i1 %cmp224, label %if.then.226, label %if.end.232

if.then.226:                                      ; preds = %land.lhs.true.223
  %139 = load i32, i32* %block, align 4
  %140 = load i32, i32* %mode, align 4
  %141 = load i8, i8* %best_pdir, align 1
  %conv227 = sext i8 %141 to i32
  %arrayidx228 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 0
  %142 = load i8, i8* %arrayidx228, align 1
  %conv229 = sext i8 %142 to i32
  %arrayidx230 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 1
  %143 = load i8, i8* %arrayidx230, align 1
  %conv231 = sext i8 %143 to i32
  call void @SetRefAndMotionVectors(i32 %139, i32 %140, i32 %conv227, i32 %conv229, i32 %conv231)
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.226, %land.lhs.true.223, %if.end.220
  br label %for.inc.233

for.inc.233:                                      ; preds = %if.end.232
  %144 = load i32, i32* %block, align 4
  %inc234 = add nsw i32 %144, 1
  store i32 %inc234, i32* %block, align 4
  br label %for.cond.91

for.end.235:                                      ; preds = %for.cond.91
  %145 = load i32, i32* %cost, align 4
  %146 = load i32, i32* %min_cost, align 4
  %cmp236 = icmp slt i32 %145, %146
  br i1 %cmp236, label %if.then.238, label %if.end.245

if.then.238:                                      ; preds = %for.end.235
  %147 = load i32, i32* %mode, align 4
  %conv239 = trunc i32 %147 to i16
  store i16 %conv239, i16* @best_mode, align 2
  %148 = load i32, i32* %cost, align 4
  store i32 %148, i32* %min_cost, align 4
  %149 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %CtxAdptLagrangeMult240 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %149, i32 0, i32 114
  %150 = load i32, i32* %CtxAdptLagrangeMult240, align 4
  %cmp241 = icmp eq i32 %150, 1
  br i1 %cmp241, label %if.then.243, label %if.end.244

if.then.243:                                      ; preds = %if.then.238
  %151 = load i32, i32* %cost, align 4
  call void @adjust_mb16x16_cost(i32 %151)
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.243, %if.then.238
  br label %if.end.245

if.end.245:                                       ; preds = %if.end.244, %for.end.235
  br label %if.end.246

if.end.246:                                       ; preds = %if.end.245, %for.body.84
  br label %for.inc.247

for.inc.247:                                      ; preds = %if.end.246
  %152 = load i32, i32* %mode, align 4
  %inc248 = add nsw i32 %152, 1
  store i32 %inc248, i32* %mode, align 4
  br label %for.cond.81

for.end.249:                                      ; preds = %for.cond.81
  %valid250 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 3
  %arrayidx251 = getelementptr inbounds [15 x i16], [15 x i16]* %valid250, i32 0, i64 8
  %153 = load i16, i16* %arrayidx251, align 2
  %tobool252 = icmp ne i16 %153, 0
  br i1 %tobool252, label %if.then.253, label %if.else.317

if.then.253:                                      ; preds = %for.end.249
  store i32 1, i32* @giRDOpt_B8OnlyFlag, align 4
  store i32 2147483647, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 0), align 4
  store i32 2147483647, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 0), align 4
  %154 = load %struct.CSobj*, %struct.CSobj** @cs_mb, align 8
  call void @store_coding_state(%struct.CSobj* %154)
  %155 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %all_blk_8x8 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %155, i32 0, i32 30
  store i32 -1, i32* %all_blk_8x8, align 4
  %156 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %156, i32 0, i32 153
  %157 = load i32, i32* %Transform8x8Mode, align 4
  %tobool254 = icmp ne i32 %157, 0
  br i1 %tobool254, label %if.then.255, label %if.end.282

if.then.255:                                      ; preds = %if.then.253
  store i32 0, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 0), align 4
  store i32 0, i32* @cnt_nonz_8x8, align 4
  store i32 0, i32* @cbp_blk8x8, align 4
  store i32 0, i32* @cbp8x8, align 4
  store i32 0, i32* %cost_direct, align 4
  store i32 0, i32* %block, align 4
  br label %for.cond.256

for.cond.256:                                     ; preds = %for.inc.278, %if.then.255
  %158 = load i32, i32* %block, align 4
  %cmp257 = icmp slt i32 %158, 4
  br i1 %cmp257, label %for.body.259, label %for.end.280

for.body.259:                                     ; preds = %for.cond.256
  %159 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %160 = load i32, i32* %block, align 4
  %idxprom260 = sext i32 %160 to i64
  %161 = load i32****, i32***** @cofAC_8x8ts, align 8
  %arrayidx261 = getelementptr inbounds i32***, i32**** %161, i64 %idxprom260
  %162 = load i32***, i32**** %arrayidx261, align 8
  %163 = load i16, i16* %bslice, align 2
  %164 = load i32, i32* %block, align 4
  call void @submacroblock_mode_decision(%struct.RD_PARAMS* byval align 8 %enc_mb, %struct.RD_8x8DATA* @tr8x8, %struct.macroblock* %159, i32*** %162, i32* %have_direct, i16 signext %163, i32 %164, i32* %cost_direct, i32* %cost, i32* %cost8x8_direct, i32 1)
  %165 = load i32, i32* %block, align 4
  %idxprom262 = sext i32 %165 to i64
  %arrayidx263 = getelementptr inbounds [4 x i16], [4 x i16]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 5), i32 0, i64 %idxprom262
  %166 = load i16, i16* %arrayidx263, align 2
  %167 = load i32, i32* %block, align 4
  %idxprom264 = sext i32 %167 to i64
  %arrayidx265 = getelementptr inbounds [4 x i16], [4 x i16]* @best8x8mode, i32 0, i64 %idxprom264
  store i16 %166, i16* %arrayidx265, align 2
  %168 = load i32, i32* %block, align 4
  %idxprom266 = sext i32 %168 to i64
  %arrayidx267 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 6), i32 0, i64 %idxprom266
  %169 = load i8, i8* %arrayidx267, align 1
  %170 = load i32, i32* %block, align 4
  %idxprom268 = sext i32 %170 to i64
  %arrayidx269 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 8), i32 0, i64 %idxprom268
  store i8 %169, i8* %arrayidx269, align 1
  %171 = load i32, i32* %block, align 4
  %idxprom270 = sext i32 %171 to i64
  %arrayidx271 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 7), i32 0, i64 %idxprom270
  %172 = load i8, i8* %arrayidx271, align 1
  %173 = load i32, i32* %block, align 4
  %idxprom272 = sext i32 %173 to i64
  %arrayidx273 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 8), i32 0, i64 %idxprom272
  store i8 %172, i8* %arrayidx273, align 1
  %174 = load i32, i32* %block, align 4
  %idxprom274 = sext i32 %174 to i64
  %arrayidx275 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 8), i32 0, i64 %idxprom274
  %175 = load i8, i8* %arrayidx275, align 1
  %176 = load i32, i32* %block, align 4
  %idxprom276 = sext i32 %176 to i64
  %arrayidx277 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 8), i32 0, i64 %idxprom276
  store i8 %175, i8* %arrayidx277, align 1
  br label %for.inc.278

for.inc.278:                                      ; preds = %for.body.259
  %177 = load i32, i32* %block, align 4
  %inc279 = add nsw i32 %177, 1
  store i32 %inc279, i32* %block, align 4
  br label %for.cond.256

for.end.280:                                      ; preds = %for.cond.256
  %178 = load i32, i32* @cbp8x8, align 4
  store i32 %178, i32* @cbp8_8x8ts, align 4
  %179 = load i32, i32* @cbp_blk8x8, align 4
  %conv281 = sext i32 %179 to i64
  store i64 %conv281, i64* @cbp_blk8_8x8ts, align 8
  %180 = load i32, i32* @cnt_nonz_8x8, align 4
  store i32 %180, i32* @cnt_nonz8_8x8ts, align 4
  %181 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %181, i32 0, i32 31
  store i32 0, i32* %luma_transform_size_8x8_flag, align 4
  br label %if.end.282

if.end.282:                                       ; preds = %for.end.280, %if.then.253
  %182 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode283 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %182, i32 0, i32 153
  %183 = load i32, i32* %Transform8x8Mode283, align 4
  %cmp284 = icmp ne i32 %183, 2
  br i1 %cmp284, label %if.then.286, label %if.end.312

if.then.286:                                      ; preds = %if.end.282
  store i32 0, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 0), align 4
  store i32 0, i32* @cnt_nonz_8x8, align 4
  store i32 0, i32* @cbp_blk8x8, align 4
  store i32 0, i32* @cbp8x8, align 4
  store i32 0, i32* %cost_direct, align 4
  store i32 0, i32* %block, align 4
  br label %for.cond.287

for.cond.287:                                     ; preds = %for.inc.309, %if.then.286
  %184 = load i32, i32* %block, align 4
  %cmp288 = icmp slt i32 %184, 4
  br i1 %cmp288, label %for.body.290, label %for.end.311

for.body.290:                                     ; preds = %for.cond.287
  %185 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %186 = load i32, i32* %block, align 4
  %idxprom291 = sext i32 %186 to i64
  %187 = load i32****, i32***** @cofAC8x8, align 8
  %arrayidx292 = getelementptr inbounds i32***, i32**** %187, i64 %idxprom291
  %188 = load i32***, i32**** %arrayidx292, align 8
  %189 = load i16, i16* %bslice, align 2
  %190 = load i32, i32* %block, align 4
  call void @submacroblock_mode_decision(%struct.RD_PARAMS* byval align 8 %enc_mb, %struct.RD_8x8DATA* @tr4x4, %struct.macroblock* %185, i32*** %188, i32* %have_direct, i16 signext %189, i32 %190, i32* %cost_direct, i32* %cost, i32* %cost8x8_direct, i32 0)
  %191 = load i32, i32* %block, align 4
  %idxprom293 = sext i32 %191 to i64
  %arrayidx294 = getelementptr inbounds [4 x i16], [4 x i16]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 5), i32 0, i64 %idxprom293
  %192 = load i16, i16* %arrayidx294, align 2
  %193 = load i32, i32* %block, align 4
  %idxprom295 = sext i32 %193 to i64
  %arrayidx296 = getelementptr inbounds [4 x i16], [4 x i16]* @best8x8mode, i32 0, i64 %idxprom295
  store i16 %192, i16* %arrayidx296, align 2
  %194 = load i32, i32* %block, align 4
  %idxprom297 = sext i32 %194 to i64
  %arrayidx298 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 6), i32 0, i64 %idxprom297
  %195 = load i8, i8* %arrayidx298, align 1
  %196 = load i32, i32* %block, align 4
  %idxprom299 = sext i32 %196 to i64
  %arrayidx300 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 8), i32 0, i64 %idxprom299
  store i8 %195, i8* %arrayidx300, align 1
  %197 = load i32, i32* %block, align 4
  %idxprom301 = sext i32 %197 to i64
  %arrayidx302 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 7), i32 0, i64 %idxprom301
  %198 = load i8, i8* %arrayidx302, align 1
  %199 = load i32, i32* %block, align 4
  %idxprom303 = sext i32 %199 to i64
  %arrayidx304 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 8), i32 0, i64 %idxprom303
  store i8 %198, i8* %arrayidx304, align 1
  %200 = load i32, i32* %block, align 4
  %idxprom305 = sext i32 %200 to i64
  %arrayidx306 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 8), i32 0, i64 %idxprom305
  %201 = load i8, i8* %arrayidx306, align 1
  %202 = load i32, i32* %block, align 4
  %idxprom307 = sext i32 %202 to i64
  %arrayidx308 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 8), i32 0, i64 %idxprom307
  store i8 %201, i8* %arrayidx308, align 1
  br label %for.inc.309

for.inc.309:                                      ; preds = %for.body.290
  %203 = load i32, i32* %block, align 4
  %inc310 = add nsw i32 %203, 1
  store i32 %inc310, i32* %block, align 4
  br label %for.cond.287

for.end.311:                                      ; preds = %for.cond.287
  br label %if.end.312

if.end.312:                                       ; preds = %for.end.311, %if.end.282
  %204 = load %struct.CSobj*, %struct.CSobj** @cs_mb, align 8
  call void @reset_coding_state(%struct.CSobj* %204)
  %205 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %205, i32 0, i32 157
  %206 = load i32, i32* %RCEnable, align 4
  %tobool313 = icmp ne i32 %206, 0
  br i1 %tobool313, label %if.then.314, label %if.end.316

if.then.314:                                      ; preds = %if.end.312
  %207 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %207, i32 0, i32 43
  %208 = load i32, i32* %opix_x, align 4
  %209 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %209, i32 0, i32 44
  %210 = load i32, i32* %opix_y, align 4
  %211 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %211, i32 0, i32 51
  %arraydecay315 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i32 0
  call void @rc_store_diff(i32 %208, i32 %210, [16 x i16]* %arraydecay315)
  br label %if.end.316

if.end.316:                                       ; preds = %if.then.314, %if.end.312
  store i32 0, i32* @giRDOpt_B8OnlyFlag, align 4
  br label %if.end.318

if.else.317:                                      ; preds = %for.end.249
  store i32 2147483647, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 0), align 4
  br label %if.end.318

if.end.318:                                       ; preds = %if.else.317, %if.end.316
  %212 = load i16, i16* %pslice, align 2
  %tobool319 = icmp ne i16 %212, 0
  br i1 %tobool319, label %if.then.320, label %if.end.321

if.then.320:                                      ; preds = %if.end.318
  call void @FindSkipModeMotionVector()
  br label %if.end.321

if.end.321:                                       ; preds = %if.then.320, %if.end.318
  br label %if.end.323

if.else.322:                                      ; preds = %if.end.71
  store i32 2147483647, i32* %min_cost, align 4
  br label %if.end.323

if.end.323:                                       ; preds = %if.else.322, %if.end.321
  %213 = load double, double* %max_rdcost, align 8
  store double %213, double* %min_rdcost, align 8
  store i32 9, i32* %max_index, align 4
  %214 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation324 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %214, i32 0, i32 46
  %215 = load i32, i32* %BiPredMotionEstimation324, align 4
  %tobool325 = icmp ne i32 %215, 0
  br i1 %tobool325, label %if.then.326, label %if.end.329

if.then.326:                                      ; preds = %if.end.323
  %216 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me327 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %216, i32 0, i32 83
  %arrayidx328 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me327, i32 0, i64 1
  store i16 0, i16* %arrayidx328, align 2
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.326, %if.end.323
  %217 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %217, i32 0, i32 160
  %218 = load i32, i32* %yuv_format, align 4
  %cmp330 = icmp ne i32 %218, 0
  br i1 %cmp330, label %if.then.332, label %if.else.341

if.then.332:                                      ; preds = %if.end.329
  call void @IntraChromaPrediction(i32* %mb_available_up, i32* %mb_available_left, i32* %mb_available_up_left)
  %219 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %FastCrIntraDecision = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %219, i32 0, i32 115
  %220 = load i32, i32* %FastCrIntraDecision, align 4
  %tobool333 = icmp ne i32 %220, 0
  br i1 %tobool333, label %if.then.334, label %if.else.339

if.then.334:                                      ; preds = %if.then.332
  call void @IntraChromaRDDecision(%struct.RD_PARAMS* byval align 8 %enc_mb)
  %221 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode335 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %221, i32 0, i32 17
  %222 = load i32, i32* %c_ipred_mode335, align 4
  %conv336 = trunc i32 %222 to i16
  store i16 %conv336, i16* %min_chroma_pred_mode, align 2
  %223 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode337 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %223, i32 0, i32 17
  %224 = load i32, i32* %c_ipred_mode337, align 4
  %conv338 = trunc i32 %224 to i16
  store i16 %conv338, i16* %max_chroma_pred_mode, align 2
  br label %if.end.340

if.else.339:                                      ; preds = %if.then.332
  store i16 0, i16* %min_chroma_pred_mode, align 2
  store i16 3, i16* %max_chroma_pred_mode, align 2
  br label %if.end.340

if.end.340:                                       ; preds = %if.else.339, %if.then.334
  br label %if.end.342

if.else.341:                                      ; preds = %if.end.329
  store i16 0, i16* %min_chroma_pred_mode, align 2
  store i16 0, i16* %max_chroma_pred_mode, align 2
  br label %if.end.342

if.end.342:                                       ; preds = %if.else.341, %if.end.340
  %225 = load i16, i16* %min_chroma_pred_mode, align 2
  %conv343 = sext i16 %225 to i32
  %226 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode344 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %226, i32 0, i32 17
  store i32 %conv343, i32* %c_ipred_mode344, align 4
  br label %for.cond.345

for.cond.345:                                     ; preds = %for.inc.602, %if.end.342
  %227 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode346 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %227, i32 0, i32 17
  %228 = load i32, i32* %c_ipred_mode346, align 4
  %229 = load i16, i16* %max_chroma_pred_mode, align 2
  %conv347 = sext i16 %229 to i32
  %cmp348 = icmp sle i32 %228, %conv347
  br i1 %cmp348, label %for.body.350, label %for.end.605

for.body.350:                                     ; preds = %for.cond.345
  %230 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format351 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %230, i32 0, i32 160
  %231 = load i32, i32* %yuv_format351, align 4
  %cmp352 = icmp ne i32 %231, 0
  br i1 %cmp352, label %land.lhs.true.354, label %if.end.387

land.lhs.true.354:                                ; preds = %for.body.350
  %232 = load i16, i16* %intra, align 2
  %tobool355 = icmp ne i16 %232, 0
  br i1 %tobool355, label %lor.lhs.false, label %land.lhs.true.357

lor.lhs.false:                                    ; preds = %land.lhs.true.354
  %233 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %IntraDisableInterOnly = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %233, i32 0, i32 84
  %234 = load i32, i32* %IntraDisableInterOnly, align 4
  %tobool356 = icmp ne i32 %234, 0
  br i1 %tobool356, label %lor.lhs.false.364, label %land.lhs.true.357

land.lhs.true.357:                                ; preds = %lor.lhs.false, %land.lhs.true.354
  %235 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ChromaIntraDisable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %235, i32 0, i32 90
  %236 = load i32, i32* %ChromaIntraDisable, align 4
  %cmp358 = icmp eq i32 %236, 1
  br i1 %cmp358, label %land.lhs.true.360, label %lor.lhs.false.364

land.lhs.true.360:                                ; preds = %land.lhs.true.357
  %237 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode361 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %237, i32 0, i32 17
  %238 = load i32, i32* %c_ipred_mode361, align 4
  %cmp362 = icmp ne i32 %238, 0
  br i1 %cmp362, label %if.then.386, label %lor.lhs.false.364

lor.lhs.false.364:                                ; preds = %land.lhs.true.360, %land.lhs.true.357, %lor.lhs.false
  %239 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode365 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %239, i32 0, i32 17
  %240 = load i32, i32* %c_ipred_mode365, align 4
  %cmp366 = icmp eq i32 %240, 2
  br i1 %cmp366, label %land.lhs.true.368, label %lor.lhs.false.370

land.lhs.true.368:                                ; preds = %lor.lhs.false.364
  %241 = load i32, i32* %mb_available_up, align 4
  %tobool369 = icmp ne i32 %241, 0
  br i1 %tobool369, label %lor.lhs.false.370, label %if.then.386

lor.lhs.false.370:                                ; preds = %land.lhs.true.368, %lor.lhs.false.364
  %242 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode371 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %242, i32 0, i32 17
  %243 = load i32, i32* %c_ipred_mode371, align 4
  %cmp372 = icmp eq i32 %243, 1
  br i1 %cmp372, label %land.lhs.true.374, label %lor.lhs.false.376

land.lhs.true.374:                                ; preds = %lor.lhs.false.370
  %244 = load i32, i32* %mb_available_left, align 4
  %tobool375 = icmp ne i32 %244, 0
  br i1 %tobool375, label %lor.lhs.false.376, label %if.then.386

lor.lhs.false.376:                                ; preds = %land.lhs.true.374, %lor.lhs.false.370
  %245 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode377 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %245, i32 0, i32 17
  %246 = load i32, i32* %c_ipred_mode377, align 4
  %cmp378 = icmp eq i32 %246, 3
  br i1 %cmp378, label %land.lhs.true.380, label %if.end.387

land.lhs.true.380:                                ; preds = %lor.lhs.false.376
  %247 = load i32, i32* %mb_available_left, align 4
  %tobool381 = icmp ne i32 %247, 0
  br i1 %tobool381, label %lor.lhs.false.382, label %if.then.386

lor.lhs.false.382:                                ; preds = %land.lhs.true.380
  %248 = load i32, i32* %mb_available_up, align 4
  %tobool383 = icmp ne i32 %248, 0
  br i1 %tobool383, label %lor.lhs.false.384, label %if.then.386

lor.lhs.false.384:                                ; preds = %lor.lhs.false.382
  %249 = load i32, i32* %mb_available_up_left, align 4
  %tobool385 = icmp ne i32 %249, 0
  br i1 %tobool385, label %if.end.387, label %if.then.386

if.then.386:                                      ; preds = %lor.lhs.false.384, %lor.lhs.false.382, %land.lhs.true.380, %land.lhs.true.374, %land.lhs.true.368, %land.lhs.true.360
  br label %for.inc.602

if.end.387:                                       ; preds = %lor.lhs.false.384, %lor.lhs.false.376, %for.body.350
  store i32 0, i32* %ctr16x16, align 4
  store i32 0, i32* %index, align 4
  br label %for.cond.388

for.cond.388:                                     ; preds = %for.inc.599, %if.end.387
  %250 = load i32, i32* %index, align 4
  %251 = load i32, i32* %max_index, align 4
  %cmp389 = icmp slt i32 %250, %251
  br i1 %cmp389, label %for.body.391, label %for.end.601

for.body.391:                                     ; preds = %for.cond.388
  %252 = load i32, i32* %index, align 4
  %idxprom392 = sext i32 %252 to i64
  %arrayidx393 = getelementptr inbounds [9 x i32], [9 x i32]* @mb_mode_table, i32 0, i64 %idxprom392
  %253 = load i32, i32* %arrayidx393, align 4
  store i32 %253, i32* %mode, align 4
  %254 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format394 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %254, i32 0, i32 160
  %255 = load i32, i32* %yuv_format394, align 4
  %cmp395 = icmp ne i32 %255, 0
  br i1 %cmp395, label %if.then.397, label %if.end.398

if.then.397:                                      ; preds = %for.body.391
  store i32 0, i32* %i16mode, align 4
  br label %if.end.398

if.end.398:                                       ; preds = %if.then.397, %for.body.391
  %256 = load i32, i32* %mode, align 4
  %cmp399 = icmp eq i32 %256, 1
  br i1 %cmp399, label %land.lhs.true.401, label %if.end.432

land.lhs.true.401:                                ; preds = %if.end.398
  %257 = load i16, i16* %bslice, align 2
  %conv402 = sext i16 %257 to i32
  %tobool403 = icmp ne i32 %conv402, 0
  br i1 %tobool403, label %if.then.404, label %if.end.432

if.then.404:                                      ; preds = %land.lhs.true.401
  %258 = load i32, i32* %ctr16x16, align 4
  %conv405 = trunc i32 %258 to i8
  store i8 %conv405, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 3), align 1
  store i8 %conv405, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 2), align 1
  store i8 %conv405, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 1), align 1
  store i8 %conv405, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 0), align 1
  %259 = load i16, i16* %bslice, align 2
  %conv406 = sext i16 %259 to i32
  %tobool407 = icmp ne i32 %conv406, 0
  br i1 %tobool407, label %land.lhs.true.408, label %if.end.425

land.lhs.true.408:                                ; preds = %if.then.404
  %260 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation409 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %260, i32 0, i32 46
  %261 = load i32, i32* %BiPredMotionEstimation409, align 4
  %tobool410 = icmp ne i32 %261, 0
  br i1 %tobool410, label %land.lhs.true.411, label %if.end.425

land.lhs.true.411:                                ; preds = %land.lhs.true.408
  %262 = load i32, i32* %ctr16x16, align 4
  %cmp412 = icmp eq i32 %262, 2
  br i1 %cmp412, label %land.lhs.true.414, label %if.end.425

land.lhs.true.414:                                ; preds = %land.lhs.true.411
  %263 = load i32, i32* %mode, align 4
  %idxprom415 = sext i32 %263 to i64
  %264 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me416 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %264, i32 0, i32 83
  %arrayidx417 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me416, i32 0, i64 %idxprom415
  %265 = load i16, i16* %arrayidx417, align 2
  %conv418 = sext i16 %265 to i32
  %cmp419 = icmp slt i32 %conv418, 2
  br i1 %cmp419, label %land.lhs.true.421, label %if.end.425

land.lhs.true.421:                                ; preds = %land.lhs.true.414
  %266 = load i32, i32* %mode, align 4
  %cmp422 = icmp eq i32 %266, 1
  br i1 %cmp422, label %if.then.424, label %if.end.425

if.then.424:                                      ; preds = %land.lhs.true.421
  %267 = load i32, i32* %ctr16x16, align 4
  %dec = add nsw i32 %267, -1
  store i32 %dec, i32* %ctr16x16, align 4
  br label %if.end.425

if.end.425:                                       ; preds = %if.then.424, %land.lhs.true.421, %land.lhs.true.414, %land.lhs.true.411, %land.lhs.true.408, %if.then.404
  %268 = load i32, i32* %ctr16x16, align 4
  %cmp426 = icmp slt i32 %268, 2
  br i1 %cmp426, label %if.then.428, label %if.end.430

if.then.428:                                      ; preds = %if.end.425
  %269 = load i32, i32* %index, align 4
  %dec429 = add nsw i32 %269, -1
  store i32 %dec429, i32* %index, align 4
  br label %if.end.430

if.end.430:                                       ; preds = %if.then.428, %if.end.425
  %270 = load i32, i32* %ctr16x16, align 4
  %inc431 = add nsw i32 %270, 1
  store i32 %inc431, i32* %ctr16x16, align 4
  br label %if.end.432

if.end.432:                                       ; preds = %if.end.430, %land.lhs.true.401, %if.end.398
  %271 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SkipIntraInInterSlices = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %271, i32 0, i32 67
  %272 = load i32, i32* %SkipIntraInInterSlices, align 4
  %tobool433 = icmp ne i32 %272, 0
  br i1 %tobool433, label %land.lhs.true.434, label %if.end.447

land.lhs.true.434:                                ; preds = %if.end.432
  %273 = load i16, i16* %intra, align 2
  %tobool435 = icmp ne i16 %273, 0
  br i1 %tobool435, label %if.end.447, label %land.lhs.true.436

land.lhs.true.436:                                ; preds = %land.lhs.true.434
  %274 = load i32, i32* %mode, align 4
  %cmp437 = icmp sge i32 %274, 10
  br i1 %cmp437, label %land.lhs.true.439, label %if.end.447

land.lhs.true.439:                                ; preds = %land.lhs.true.436
  %275 = load i16, i16* @best_mode, align 2
  %conv440 = sext i16 %275 to i32
  %cmp441 = icmp sle i32 %conv440, 3
  br i1 %cmp441, label %land.lhs.true.443, label %if.end.447

land.lhs.true.443:                                ; preds = %land.lhs.true.439
  %276 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %276, i32 0, i32 12
  %277 = load i32, i32* %cbp, align 4
  %cmp444 = icmp eq i32 %277, 0
  br i1 %cmp444, label %if.then.446, label %if.end.447

if.then.446:                                      ; preds = %land.lhs.true.443
  br label %for.inc.599

if.end.447:                                       ; preds = %land.lhs.true.443, %land.lhs.true.439, %land.lhs.true.436, %land.lhs.true.434, %if.end.432
  %278 = load i16, i16* %bslice, align 2
  %conv448 = sext i16 %278 to i32
  %tobool449 = icmp ne i32 %conv448, 0
  br i1 %tobool449, label %land.lhs.true.450, label %if.end.559

land.lhs.true.450:                                ; preds = %if.end.447
  %279 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %279, i32 0, i32 20
  %280 = load i32, i32* %weighted_bipred_idc, align 4
  %cmp451 = icmp eq i32 %280, 1
  br i1 %cmp451, label %land.lhs.true.453, label %if.end.559

land.lhs.true.453:                                ; preds = %land.lhs.true.450
  %281 = load i32, i32* %mode, align 4
  %cmp454 = icmp slt i32 %281, 8
  br i1 %cmp454, label %if.then.456, label %if.end.559

if.then.456:                                      ; preds = %land.lhs.true.453
  store i32 0, i32* %invalid_mode, align 4
  store i32 0, i32* %cur_blk, align 4
  br label %for.cond.457

for.cond.457:                                     ; preds = %for.inc.526, %if.then.456
  %282 = load i32, i32* %cur_blk, align 4
  %cmp458 = icmp slt i32 %282, 4
  br i1 %cmp458, label %for.body.460, label %for.end.528

for.body.460:                                     ; preds = %for.cond.457
  %283 = load i32, i32* %cur_blk, align 4
  %idxprom461 = sext i32 %283 to i64
  %284 = load i32, i32* %mode, align 4
  %idxprom462 = sext i32 %284 to i64
  %arrayidx463 = getelementptr inbounds [15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 %idxprom462
  %arrayidx464 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx463, i32 0, i64 %idxprom461
  %285 = load i8, i8* %arrayidx464, align 1
  %conv465 = sext i8 %285 to i32
  %cmp466 = icmp eq i32 %conv465, 2
  br i1 %cmp466, label %if.then.468, label %if.end.525

if.then.468:                                      ; preds = %for.body.460
  store i32 0, i32* %cur_comp, align 4
  br label %for.cond.469

for.cond.469:                                     ; preds = %for.inc.518, %if.then.468
  %286 = load i32, i32* %cur_comp, align 4
  %287 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %287, i32 0, i32 8
  %288 = load i32, i32* %chroma_format_idc, align 4
  %cmp470 = icmp eq i32 %288, 0
  %cond472 = select i1 %cmp470, i32 1, i32 3
  %cmp473 = icmp slt i32 %286, %cond472
  br i1 %cmp473, label %for.body.475, label %for.end.520

for.body.475:                                     ; preds = %for.cond.469
  %289 = load i32, i32* %cur_comp, align 4
  %idxprom476 = sext i32 %289 to i64
  %290 = load i32, i32* %cur_blk, align 4
  %idxprom477 = sext i32 %290 to i64
  %291 = load i32, i32* %mode, align 4
  %idxprom478 = sext i32 %291 to i64
  %arrayidx479 = getelementptr inbounds [15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 %idxprom478
  %arrayidx480 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx479, i32 0, i64 %idxprom477
  %292 = load i8, i8* %arrayidx480, align 1
  %conv481 = sext i8 %292 to i32
  %idxprom482 = sext i32 %conv481 to i64
  %293 = load i32, i32* %cur_blk, align 4
  %idxprom483 = sext i32 %293 to i64
  %294 = load i32, i32* %mode, align 4
  %idxprom484 = sext i32 %294 to i64
  %arrayidx485 = getelementptr inbounds [15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 %idxprom484
  %arrayidx486 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx485, i32 0, i64 %idxprom483
  %295 = load i8, i8* %arrayidx486, align 1
  %conv487 = sext i8 %295 to i32
  %idxprom488 = sext i32 %conv487 to i64
  %296 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx489 = getelementptr inbounds i32***, i32**** %296, i64 0
  %297 = load i32***, i32**** %arrayidx489, align 8
  %arrayidx490 = getelementptr inbounds i32**, i32*** %297, i64 %idxprom488
  %298 = load i32**, i32*** %arrayidx490, align 8
  %arrayidx491 = getelementptr inbounds i32*, i32** %298, i64 %idxprom482
  %299 = load i32*, i32** %arrayidx491, align 8
  %arrayidx492 = getelementptr inbounds i32, i32* %299, i64 %idxprom476
  %300 = load i32, i32* %arrayidx492, align 4
  %301 = load i32, i32* %cur_comp, align 4
  %idxprom493 = sext i32 %301 to i64
  %302 = load i32, i32* %cur_blk, align 4
  %idxprom494 = sext i32 %302 to i64
  %303 = load i32, i32* %mode, align 4
  %idxprom495 = sext i32 %303 to i64
  %arrayidx496 = getelementptr inbounds [15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 %idxprom495
  %arrayidx497 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx496, i32 0, i64 %idxprom494
  %304 = load i8, i8* %arrayidx497, align 1
  %conv498 = sext i8 %304 to i32
  %idxprom499 = sext i32 %conv498 to i64
  %305 = load i32, i32* %cur_blk, align 4
  %idxprom500 = sext i32 %305 to i64
  %306 = load i32, i32* %mode, align 4
  %idxprom501 = sext i32 %306 to i64
  %arrayidx502 = getelementptr inbounds [15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 %idxprom501
  %arrayidx503 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx502, i32 0, i64 %idxprom500
  %307 = load i8, i8* %arrayidx503, align 1
  %conv504 = sext i8 %307 to i32
  %idxprom505 = sext i32 %conv504 to i64
  %308 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx506 = getelementptr inbounds i32***, i32**** %308, i64 1
  %309 = load i32***, i32**** %arrayidx506, align 8
  %arrayidx507 = getelementptr inbounds i32**, i32*** %309, i64 %idxprom505
  %310 = load i32**, i32*** %arrayidx507, align 8
  %arrayidx508 = getelementptr inbounds i32*, i32** %310, i64 %idxprom499
  %311 = load i32*, i32** %arrayidx508, align 8
  %arrayidx509 = getelementptr inbounds i32, i32* %311, i64 %idxprom493
  %312 = load i32, i32* %arrayidx509, align 4
  %add510 = add nsw i32 %300, %312
  store i32 %add510, i32* %weight_sum, align 4
  %313 = load i32, i32* %weight_sum, align 4
  %cmp511 = icmp slt i32 %313, -128
  br i1 %cmp511, label %if.then.516, label %lor.lhs.false.513

lor.lhs.false.513:                                ; preds = %for.body.475
  %314 = load i32, i32* %weight_sum, align 4
  %cmp514 = icmp sgt i32 %314, 127
  br i1 %cmp514, label %if.then.516, label %if.end.517

if.then.516:                                      ; preds = %lor.lhs.false.513, %for.body.475
  store i32 1, i32* %invalid_mode, align 4
  br label %for.end.520

if.end.517:                                       ; preds = %lor.lhs.false.513
  br label %for.inc.518

for.inc.518:                                      ; preds = %if.end.517
  %315 = load i32, i32* %cur_comp, align 4
  %inc519 = add nsw i32 %315, 1
  store i32 %inc519, i32* %cur_comp, align 4
  br label %for.cond.469

for.end.520:                                      ; preds = %if.then.516, %for.cond.469
  %316 = load i32, i32* %invalid_mode, align 4
  %cmp521 = icmp eq i32 %316, 1
  br i1 %cmp521, label %if.then.523, label %if.end.524

if.then.523:                                      ; preds = %for.end.520
  br label %for.end.528

if.end.524:                                       ; preds = %for.end.520
  br label %if.end.525

if.end.525:                                       ; preds = %if.end.524, %for.body.460
  br label %for.inc.526

for.inc.526:                                      ; preds = %if.end.525
  %317 = load i32, i32* %cur_blk, align 4
  %inc527 = add nsw i32 %317, 1
  store i32 %inc527, i32* %cur_blk, align 4
  br label %for.cond.457

for.end.528:                                      ; preds = %if.then.523, %for.cond.457
  %318 = load i32, i32* %invalid_mode, align 4
  %cmp529 = icmp eq i32 %318, 1
  br i1 %cmp529, label %if.then.531, label %if.end.558

if.then.531:                                      ; preds = %for.end.528
  %319 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation532 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %319, i32 0, i32 46
  %320 = load i32, i32* %BiPredMotionEstimation532, align 4
  %tobool533 = icmp ne i32 %320, 0
  br i1 %tobool533, label %land.lhs.true.534, label %if.end.557

land.lhs.true.534:                                ; preds = %if.then.531
  %321 = load i32, i32* %ctr16x16, align 4
  %cmp535 = icmp eq i32 %321, 2
  br i1 %cmp535, label %land.lhs.true.537, label %if.end.557

land.lhs.true.537:                                ; preds = %land.lhs.true.534
  %322 = load i32, i32* %mode, align 4
  %idxprom538 = sext i32 %322 to i64
  %323 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me539 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %323, i32 0, i32 83
  %arrayidx540 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me539, i32 0, i64 %idxprom538
  %324 = load i16, i16* %arrayidx540, align 2
  %conv541 = sext i16 %324 to i32
  %cmp542 = icmp slt i32 %conv541, 2
  br i1 %cmp542, label %land.lhs.true.544, label %if.end.557

land.lhs.true.544:                                ; preds = %land.lhs.true.537
  %325 = load i32, i32* %mode, align 4
  %cmp545 = icmp eq i32 %325, 1
  br i1 %cmp545, label %if.then.547, label %if.end.557

if.then.547:                                      ; preds = %land.lhs.true.544
  %326 = load i32, i32* %mode, align 4
  %idxprom548 = sext i32 %326 to i64
  %327 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me549 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %327, i32 0, i32 83
  %arrayidx550 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me549, i32 0, i64 %idxprom548
  %328 = load i16, i16* %arrayidx550, align 2
  %conv551 = sext i16 %328 to i32
  %add552 = add nsw i32 %conv551, 1
  %conv553 = trunc i32 %add552 to i16
  %329 = load i32, i32* %mode, align 4
  %idxprom554 = sext i32 %329 to i64
  %330 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me555 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %330, i32 0, i32 83
  %arrayidx556 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me555, i32 0, i64 %idxprom554
  store i16 %conv553, i16* %arrayidx556, align 2
  br label %if.end.557

if.end.557:                                       ; preds = %if.then.547, %land.lhs.true.544, %land.lhs.true.537, %land.lhs.true.534, %if.then.531
  br label %for.inc.599

if.end.558:                                       ; preds = %for.end.528
  br label %if.end.559

if.end.559:                                       ; preds = %if.end.558, %land.lhs.true.453, %land.lhs.true.450, %if.end.447
  %331 = load i32, i32* %mode, align 4
  %idxprom560 = sext i32 %331 to i64
  %valid561 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 3
  %arrayidx562 = getelementptr inbounds [15 x i16], [15 x i16]* %valid561, i32 0, i64 %idxprom560
  %332 = load i16, i16* %arrayidx562, align 2
  %tobool563 = icmp ne i16 %332, 0
  br i1 %tobool563, label %if.then.564, label %if.end.565

if.then.564:                                      ; preds = %if.end.559
  %333 = load i32, i32* %mode, align 4
  %334 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %335 = load i32, i32* %i16mode, align 4
  %336 = load i16, i16* %bslice, align 2
  call void @compute_mode_RD_cost(i32 %333, %struct.macroblock* %334, %struct.RD_PARAMS* byval align 8 %enc_mb, double* %min_rdcost, double* %min_rate, i32 %335, i16 signext %336, i16* %inter_skip)
  br label %if.end.565

if.end.565:                                       ; preds = %if.then.564, %if.end.559
  %337 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation566 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %337, i32 0, i32 46
  %338 = load i32, i32* %BiPredMotionEstimation566, align 4
  %tobool567 = icmp ne i32 %338, 0
  br i1 %tobool567, label %land.lhs.true.568, label %if.end.598

land.lhs.true.568:                                ; preds = %if.end.565
  %339 = load i16, i16* %bslice, align 2
  %conv569 = sext i16 %339 to i32
  %tobool570 = icmp ne i32 %conv569, 0
  br i1 %tobool570, label %land.lhs.true.571, label %if.end.598

land.lhs.true.571:                                ; preds = %land.lhs.true.568
  %340 = load i32, i32* %ctr16x16, align 4
  %cmp572 = icmp eq i32 %340, 2
  br i1 %cmp572, label %land.lhs.true.574, label %if.end.598

land.lhs.true.574:                                ; preds = %land.lhs.true.571
  %341 = load i32, i32* %mode, align 4
  %idxprom575 = sext i32 %341 to i64
  %342 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me576 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %342, i32 0, i32 83
  %arrayidx577 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me576, i32 0, i64 %idxprom575
  %343 = load i16, i16* %arrayidx577, align 2
  %conv578 = sext i16 %343 to i32
  %cmp579 = icmp slt i32 %conv578, 2
  br i1 %cmp579, label %land.lhs.true.581, label %if.end.598

land.lhs.true.581:                                ; preds = %land.lhs.true.574
  %344 = load i32, i32* %mode, align 4
  %cmp582 = icmp eq i32 %344, 1
  br i1 %cmp582, label %land.lhs.true.584, label %if.end.598

land.lhs.true.584:                                ; preds = %land.lhs.true.581
  %345 = load i8, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 0), align 1
  %conv585 = sext i8 %345 to i32
  %cmp586 = icmp eq i32 %conv585, 2
  br i1 %cmp586, label %if.then.588, label %if.end.598

if.then.588:                                      ; preds = %land.lhs.true.584
  %346 = load i32, i32* %mode, align 4
  %idxprom589 = sext i32 %346 to i64
  %347 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me590 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %347, i32 0, i32 83
  %arrayidx591 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me590, i32 0, i64 %idxprom589
  %348 = load i16, i16* %arrayidx591, align 2
  %conv592 = sext i16 %348 to i32
  %add593 = add nsw i32 %conv592, 1
  %conv594 = trunc i32 %add593 to i16
  %349 = load i32, i32* %mode, align 4
  %idxprom595 = sext i32 %349 to i64
  %350 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me596 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %350, i32 0, i32 83
  %arrayidx597 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me596, i32 0, i64 %idxprom595
  store i16 %conv594, i16* %arrayidx597, align 2
  br label %if.end.598

if.end.598:                                       ; preds = %if.then.588, %land.lhs.true.584, %land.lhs.true.581, %land.lhs.true.574, %land.lhs.true.571, %land.lhs.true.568, %if.end.565
  br label %for.inc.599

for.inc.599:                                      ; preds = %if.end.598, %if.end.557, %if.then.446
  %351 = load i32, i32* %index, align 4
  %inc600 = add nsw i32 %351, 1
  store i32 %inc600, i32* %index, align 4
  br label %for.cond.388

for.end.601:                                      ; preds = %for.cond.388
  br label %for.inc.602

for.inc.602:                                      ; preds = %for.end.601, %if.then.386
  %352 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode603 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %352, i32 0, i32 17
  %353 = load i32, i32* %c_ipred_mode603, align 4
  %inc604 = add nsw i32 %353, 1
  store i32 %inc604, i32* %c_ipred_mode603, align 4
  br label %for.cond.345

for.end.605:                                      ; preds = %for.cond.345
  %354 = load i32, i32* %rerun, align 4
  %cmp606 = icmp eq i32 %354, 0
  br i1 %cmp606, label %if.then.608, label %if.end.625

if.then.608:                                      ; preds = %for.end.605
  %355 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %355, i32 0, i32 8
  %356 = load i32, i32* %mb_type, align 4
  %cmp609 = icmp eq i32 %356, 9
  br i1 %cmp609, label %lor.end.623, label %lor.lhs.false.611

lor.lhs.false.611:                                ; preds = %if.then.608
  %357 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type612 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %357, i32 0, i32 8
  %358 = load i32, i32* %mb_type612, align 4
  %cmp613 = icmp eq i32 %358, 10
  br i1 %cmp613, label %lor.end.623, label %lor.lhs.false.615

lor.lhs.false.615:                                ; preds = %lor.lhs.false.611
  %359 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type616 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %359, i32 0, i32 8
  %360 = load i32, i32* %mb_type616, align 4
  %cmp617 = icmp eq i32 %360, 13
  br i1 %cmp617, label %lor.end.623, label %lor.rhs.619

lor.rhs.619:                                      ; preds = %lor.lhs.false.615
  %361 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type620 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %361, i32 0, i32 8
  %362 = load i32, i32* %mb_type620, align 4
  %cmp621 = icmp eq i32 %362, 14
  br label %lor.end.623

lor.end.623:                                      ; preds = %lor.rhs.619, %lor.lhs.false.615, %lor.lhs.false.611, %if.then.608
  %363 = phi i1 [ true, %lor.lhs.false.615 ], [ true, %lor.lhs.false.611 ], [ true, %if.then.608 ], [ %cmp621, %lor.rhs.619 ]
  %lor.ext624 = zext i1 %363 to i32
  store i32 %lor.ext624, i32* %intra1, align 4
  br label %if.end.625

if.end.625:                                       ; preds = %lor.end.623, %for.end.605
  br label %for.inc.626

for.inc.626:                                      ; preds = %if.end.625
  %364 = load i32, i32* %rerun, align 4
  %inc627 = add nsw i32 %364, 1
  store i32 %inc627, i32* %rerun, align 4
  br label %for.cond

for.end.628:                                      ; preds = %for.cond
  %365 = load i32, i32* @cbp, align 4
  %cmp629 = icmp ne i32 %365, 0
  br i1 %cmp629, label %land.lhs.true.635, label %lor.lhs.false.631

lor.lhs.false.631:                                ; preds = %for.end.628
  %366 = load i16, i16* @best_mode, align 2
  %conv632 = sext i16 %366 to i32
  %cmp633 = icmp eq i32 %conv632, 10
  br i1 %cmp633, label %land.lhs.true.635, label %if.else.640

land.lhs.true.635:                                ; preds = %lor.lhs.false.631, %for.end.628
  %367 = load i16, i16* @best_mode, align 2
  %conv636 = sext i16 %367 to i32
  %cmp637 = icmp ne i32 %conv636, 14
  br i1 %cmp637, label %if.then.639, label %if.else.640

if.then.639:                                      ; preds = %land.lhs.true.635
  %368 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %prev_cbp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %368, i32 0, i32 37
  store i32 1, i32* %prev_cbp, align 4
  br label %if.end.655

if.else.640:                                      ; preds = %land.lhs.true.635, %lor.lhs.false.631
  %369 = load i32, i32* @cbp, align 4
  %cmp641 = icmp eq i32 %369, 0
  br i1 %cmp641, label %land.lhs.true.643, label %lor.lhs.false.646

land.lhs.true.643:                                ; preds = %if.else.640
  %370 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable644 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %370, i32 0, i32 157
  %371 = load i32, i32* %RCEnable644, align 4
  %tobool645 = icmp ne i32 %371, 0
  br i1 %tobool645, label %lor.lhs.false.646, label %if.then.650

lor.lhs.false.646:                                ; preds = %land.lhs.true.643, %if.else.640
  %372 = load i16, i16* @best_mode, align 2
  %conv647 = sext i16 %372 to i32
  %cmp648 = icmp eq i32 %conv647, 14
  br i1 %cmp648, label %if.then.650, label %if.end.654

if.then.650:                                      ; preds = %lor.lhs.false.646, %land.lhs.true.643
  %373 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %delta_qp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %373, i32 0, i32 1
  store i32 0, i32* %delta_qp, align 4
  %374 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %prev_qp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %374, i32 0, i32 35
  %375 = load i32, i32* %prev_qp, align 4
  %376 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %376, i32 0, i32 2
  store i32 %375, i32* %qp, align 4
  %377 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  call void @set_chroma_qp(%struct.macroblock* %377)
  %378 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp651 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %378, i32 0, i32 2
  %379 = load i32, i32* %qp651, align 4
  %380 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp652 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %380, i32 0, i32 9
  store i32 %379, i32* %qp652, align 4
  %381 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %prev_cbp653 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %381, i32 0, i32 37
  store i32 0, i32* %prev_cbp653, align 4
  br label %if.end.654

if.end.654:                                       ; preds = %if.then.650, %lor.lhs.false.646
  br label %if.end.655

if.end.655:                                       ; preds = %if.end.654, %if.then.639
  call void @set_stored_macroblock_parameters()
  %382 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable656 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %382, i32 0, i32 157
  %383 = load i32, i32* %RCEnable656, align 4
  %tobool657 = icmp ne i32 %383, 0
  br i1 %tobool657, label %if.then.658, label %if.end.659

if.then.658:                                      ; preds = %if.end.655
  %384 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %385 = load i16, i16* @best_mode, align 2
  call void @update_rc(%struct.macroblock* %384, i16 signext %385)
  br label %if.end.659

if.end.659:                                       ; preds = %if.then.658, %if.end.655
  %386 = load double, double* %min_rdcost, align 8
  %387 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %min_rdcost660 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %387, i32 0, i32 0
  store double %386, double* %min_rdcost660, align 8
  %388 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %388, i32 0, i32 100
  %389 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool661 = icmp ne i32 %389, 0
  br i1 %tobool661, label %land.lhs.true.662, label %if.end.694

land.lhs.true.662:                                ; preds = %if.end.659
  %390 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr663 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %390, i32 0, i32 3
  %391 = load i32, i32* %current_mb_nr663, align 4
  %rem = srem i32 %391, 2
  %tobool664 = icmp ne i32 %rem, 0
  br i1 %tobool664, label %land.lhs.true.665, label %if.end.694

land.lhs.true.665:                                ; preds = %land.lhs.true.662
  %392 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type666 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %392, i32 0, i32 8
  %393 = load i32, i32* %mb_type666, align 4
  %tobool667 = icmp ne i32 %393, 0
  br i1 %tobool667, label %cond.true.668, label %cond.false.669

cond.true.668:                                    ; preds = %land.lhs.true.665
  br i1 false, label %land.lhs.true.676, label %if.end.694

cond.false.669:                                   ; preds = %land.lhs.true.665
  %394 = load i16, i16* %bslice, align 2
  %conv670 = sext i16 %394 to i32
  %tobool671 = icmp ne i32 %conv670, 0
  br i1 %tobool671, label %cond.true.672, label %cond.false.675

cond.true.672:                                    ; preds = %cond.false.669
  %395 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp673 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %395, i32 0, i32 12
  %396 = load i32, i32* %cbp673, align 4
  %tobool674 = icmp ne i32 %396, 0
  br i1 %tobool674, label %if.end.694, label %land.lhs.true.676

cond.false.675:                                   ; preds = %cond.false.669
  br i1 true, label %land.lhs.true.676, label %if.end.694

land.lhs.true.676:                                ; preds = %cond.false.675, %cond.true.672, %cond.true.668
  %397 = load %struct.macroblock*, %struct.macroblock** %prevMB, align 8
  %mb_type677 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %397, i32 0, i32 8
  %398 = load i32, i32* %mb_type677, align 4
  %tobool678 = icmp ne i32 %398, 0
  br i1 %tobool678, label %cond.true.679, label %cond.false.680

cond.true.679:                                    ; preds = %land.lhs.true.676
  br i1 false, label %land.lhs.true.687, label %if.end.694

cond.false.680:                                   ; preds = %land.lhs.true.676
  %399 = load i16, i16* %bslice, align 2
  %conv681 = sext i16 %399 to i32
  %tobool682 = icmp ne i32 %conv681, 0
  br i1 %tobool682, label %cond.true.683, label %cond.false.686

cond.true.683:                                    ; preds = %cond.false.680
  %400 = load %struct.macroblock*, %struct.macroblock** %prevMB, align 8
  %cbp684 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %400, i32 0, i32 12
  %401 = load i32, i32* %cbp684, align 4
  %tobool685 = icmp ne i32 %401, 0
  br i1 %tobool685, label %if.end.694, label %land.lhs.true.687

cond.false.686:                                   ; preds = %cond.false.680
  br i1 true, label %land.lhs.true.687, label %if.end.694

land.lhs.true.687:                                ; preds = %cond.false.686, %cond.true.683, %cond.true.679
  %call688 = call i32 @field_flag_inference()
  %curr_mb_field = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 5
  %402 = load i16, i16* %curr_mb_field, align 2
  %conv689 = sext i16 %402 to i32
  %cmp690 = icmp eq i32 %call688, %conv689
  br i1 %cmp690, label %if.end.694, label %if.then.692

if.then.692:                                      ; preds = %land.lhs.true.687
  %403 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %min_rdcost693 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %403, i32 0, i32 0
  store double 1.000000e+30, double* %min_rdcost693, align 8
  br label %if.end.694

if.end.694:                                       ; preds = %if.then.692, %land.lhs.true.687, %cond.false.686, %cond.true.683, %cond.true.679, %cond.false.675, %cond.true.672, %cond.true.668, %land.lhs.true.662, %if.end.659
  %404 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RestrictRef695 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %404, i32 0, i32 128
  %405 = load i32, i32* %RestrictRef695, align 4
  %tobool696 = icmp ne i32 %405, 0
  br i1 %tobool696, label %if.then.697, label %if.end.699

if.then.697:                                      ; preds = %if.end.694
  %406 = load i16, i16* %intra, align 2
  %conv698 = sext i16 %406 to i32
  %407 = load i32, i32* %intra1, align 4
  %408 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  call void @update_refresh_map(i32 %conv698, i32 %407, %struct.macroblock* %408)
  br label %if.end.699

if.end.699:                                       ; preds = %if.then.697, %if.end.694
  %409 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode700 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %409, i32 0, i32 169
  %410 = load i32, i32* %SearchMode700, align 4
  %cmp701 = icmp eq i32 %410, 1
  br i1 %cmp701, label %if.then.703, label %if.else.709

if.then.703:                                      ; preds = %if.end.699
  %411 = load i16, i16* @best_mode, align 2
  %conv704 = sext i16 %411 to i32
  %list_offset705 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 4
  %arrayidx706 = getelementptr inbounds [2 x i16], [2 x i16]* %list_offset705, i32 0, i64 0
  %412 = load i16, i16* %arrayidx706, align 2
  %idxprom707 = sext i16 %412 to i64
  %arrayidx708 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom707
  %413 = load i32, i32* %arrayidx708, align 4
  call void @UMHEX_skip_intrabk_SAD(i32 %conv704, i32 %413)
  br label %if.end.720

if.else.709:                                      ; preds = %if.end.699
  %414 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode710 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %414, i32 0, i32 169
  %415 = load i32, i32* %SearchMode710, align 4
  %cmp711 = icmp eq i32 %415, 2
  br i1 %cmp711, label %if.then.713, label %if.end.719

if.then.713:                                      ; preds = %if.else.709
  %416 = load i16, i16* @best_mode, align 2
  %conv714 = sext i16 %416 to i32
  %list_offset715 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 4
  %arrayidx716 = getelementptr inbounds [2 x i16], [2 x i16]* %list_offset715, i32 0, i64 0
  %417 = load i16, i16* %arrayidx716, align 2
  %idxprom717 = sext i16 %417 to i64
  %arrayidx718 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom717
  %418 = load i32, i32* %arrayidx718, align 4
  call void @smpUMHEX_skip_intrabk_SAD(i32 %conv714, i32 %418)
  br label %if.end.719

if.end.719:                                       ; preds = %if.then.713, %if.else.709
  br label %if.end.720

if.end.720:                                       ; preds = %if.end.719, %if.then.703
  %419 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %419, i32 0, i32 23
  %420 = load i32, i32* %UseConstrainedIntraPred, align 4
  %tobool721 = icmp ne i32 %420, 0
  br i1 %tobool721, label %land.lhs.true.722, label %if.end.751

land.lhs.true.722:                                ; preds = %if.end.720
  %421 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type723 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %421, i32 0, i32 5
  %422 = load i32, i32* %type723, align 4
  %cmp724 = icmp eq i32 %422, 0
  br i1 %cmp724, label %if.then.730, label %lor.lhs.false.726

lor.lhs.false.726:                                ; preds = %land.lhs.true.722
  %423 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type727 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %423, i32 0, i32 5
  %424 = load i32, i32* %type727, align 4
  %cmp728 = icmp eq i32 %424, 1
  br i1 %cmp728, label %if.then.730, label %if.end.751

if.then.730:                                      ; preds = %lor.lhs.false.726, %land.lhs.true.722
  %425 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type731 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %425, i32 0, i32 8
  %426 = load i32, i32* %mb_type731, align 4
  %cmp732 = icmp eq i32 %426, 9
  br i1 %cmp732, label %lor.end.746, label %lor.lhs.false.734

lor.lhs.false.734:                                ; preds = %if.then.730
  %427 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type735 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %427, i32 0, i32 8
  %428 = load i32, i32* %mb_type735, align 4
  %cmp736 = icmp eq i32 %428, 10
  br i1 %cmp736, label %lor.end.746, label %lor.lhs.false.738

lor.lhs.false.738:                                ; preds = %lor.lhs.false.734
  %429 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type739 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %429, i32 0, i32 8
  %430 = load i32, i32* %mb_type739, align 4
  %cmp740 = icmp eq i32 %430, 13
  br i1 %cmp740, label %lor.end.746, label %lor.rhs.742

lor.rhs.742:                                      ; preds = %lor.lhs.false.738
  %431 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type743 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %431, i32 0, i32 8
  %432 = load i32, i32* %mb_type743, align 4
  %cmp744 = icmp eq i32 %432, 14
  br label %lor.end.746

lor.end.746:                                      ; preds = %lor.rhs.742, %lor.lhs.false.738, %lor.lhs.false.734, %if.then.730
  %433 = phi i1 [ true, %lor.lhs.false.738 ], [ true, %lor.lhs.false.734 ], [ true, %if.then.730 ], [ %cmp744, %lor.rhs.742 ]
  %lor.ext747 = zext i1 %433 to i32
  %434 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr748 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %434, i32 0, i32 3
  %435 = load i32, i32* %current_mb_nr748, align 4
  %idxprom749 = sext i32 %435 to i64
  %436 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %436, i32 0, i32 63
  %437 = load i32*, i32** %intra_block, align 8
  %arrayidx750 = getelementptr inbounds i32, i32* %437, i64 %idxprom749
  store i32 %lor.ext747, i32* %arrayidx750, align 4
  br label %if.end.751

if.end.751:                                       ; preds = %lor.end.746, %lor.lhs.false.726, %if.end.720
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
