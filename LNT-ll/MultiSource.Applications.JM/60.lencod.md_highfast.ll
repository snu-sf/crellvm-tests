; ModuleID = './MultiSource.Applications.JM/60.lencod.md_highfast.bc'
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
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16****, i16****, i16*****, i16***, i8*, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
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

@encode_one_macroblock_highfast.best_ref = private unnamed_addr constant [2 x i8] c"\00\FF", align 1
@encode_one_macroblock_highfast.bmcost = private unnamed_addr constant [5 x i32] [i32 2147483647, i32 0, i32 0, i32 0, i32 0], align 16
@img = external global %struct.ImageParameters*, align 8
@input = external global %struct.InputParameters*, align 8
@cs_cm = external global %struct.CSobj*, align 8
@best_mode = external global i16, align 2
@bi_pred_me = external global i16, align 2
@lambda_mf_factor = external global double, align 8
@best8x8fwref = external global [15 x [4 x i8]], align 16
@best8x8pdir = external global [15 x [4 x i8]], align 16
@best8x8bwref = external global [15 x [4 x i8]], align 16
@enc_picture = external global %struct.storable_picture*, align 8
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
define void @encode_one_macroblock_highfast() #0 {
entry:
  %max_index = alloca i32, align 4
  %rerun = alloca i32, align 4
  %block = alloca i32, align 4
  %index = alloca i32, align 4
  %mode = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
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
  %lambda_mf = alloca [3 x i32], align 4
  %cost8x8_direct = alloca i32, align 4
  %islice = alloca i16, align 2
  %bslice = alloca i16, align 2
  %pslice = alloca i16, align 2
  %intra = alloca i16, align 2
  %runs = alloca i16, align 2
  %currMB = alloca %struct.macroblock*, align 8
  %prev_mb_nr = alloca i32, align 4
  %prevMB = alloca %struct.macroblock*, align 8
  %allmvs = alloca i16*, align 8
  %min_chroma_pred_mode = alloca i16, align 2
  %max_chroma_pred_mode = alloca i16, align 2
  %inter_skip = alloca i16, align 2
  %intra_skip = alloca i16, align 2
  %cost16 = alloca i32, align 4
  %mode16 = alloca i32, align 4
  %min_rate = alloca double, align 8
  %RDCost16 = alloca double, align 8
  %mb_available_up = alloca i32, align 4
  %mb_available_left = alloca i32, align 4
  %mb_available_up_left = alloca i32, align 4
  %cur_blk = alloca i32, align 4
  %cur_comp = alloca i32, align 4
  %weight_sum = alloca i32, align 4
  %invalid_mode = alloca i32, align 4
  store double 1.000000e+30, double* %max_rdcost, align 8
  %0 = bitcast [2 x i8]* %best_ref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @encode_one_macroblock_highfast.best_ref, i32 0, i32 0), i64 2, i32 1, i1 false)
  %1 = bitcast [5 x i32]* %bmcost to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([5 x i32]* @encode_one_macroblock_highfast.bmcost to i8*), i64 20, i32 16, i1 false)
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
  store i16 1, i16* %runs, align 2
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
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 80
  %34 = load i16******, i16******* %all_mv, align 8
  %arrayidx31 = getelementptr inbounds i16*****, i16****** %34, i64 0
  %35 = load i16*****, i16****** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds i16****, i16***** %35, i64 0
  %36 = load i16****, i16***** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds i16***, i16**** %36, i64 0
  %37 = load i16***, i16**** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i16**, i16*** %37, i64 0
  %38 = load i16**, i16*** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i16*, i16** %38, i64 0
  %39 = load i16*, i16** %arrayidx35, align 8
  store i16* %39, i16** %allmvs, align 8
  store i16 0, i16* %inter_skip, align 2
  store i16 0, i16* %intra_skip, align 2
  store i32 0, i32* %cost16, align 4
  store i32 0, i32* %mode16, align 4
  store double 0.000000e+00, double* %min_rate, align 8
  store double 0x7FEFFFFFFFFFFFFF, double* %RDCost16, align 8
  %40 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %40, i32 0, i32 169
  %41 = load i32, i32* %SearchMode, align 4
  %cmp36 = icmp eq i32 %41, 1
  br i1 %cmp36, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  call void @UMHEX_decide_intrabk_SAD()
  br label %if.end.42

if.else:                                          ; preds = %cond.end
  %42 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode38 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %42, i32 0, i32 169
  %43 = load i32, i32* %SearchMode38, align 4
  %cmp39 = icmp eq i32 %43, 2
  br i1 %cmp39, label %if.then.41, label %if.end

if.then.41:                                       ; preds = %if.else
  call void @smpUMHEX_decide_intrabk_SAD()
  br label %if.end

if.end:                                           ; preds = %if.then.41, %if.else
  br label %if.end.42

if.end.42:                                        ; preds = %if.end, %if.then
  %44 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr43 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %44, i32 0, i32 3
  %45 = load i32, i32* %current_mb_nr43, align 4
  %call44 = call i32 @RandomIntra(i32 %45)
  %46 = load i16, i16* %intra, align 2
  %conv45 = sext i16 %46 to i32
  %or = or i32 %conv45, %call44
  %conv46 = trunc i32 %or to i16
  store i16 %conv46, i16* %intra, align 2
  %47 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %48 = load i16, i16* %intra, align 2
  %conv47 = sext i16 %48 to i32
  %49 = load i16, i16* %bslice, align 2
  %conv48 = sext i16 %49 to i32
  call void @init_enc_mb_params(%struct.macroblock* %47, %struct.RD_PARAMS* %enc_mb, i32 %conv47, i32 %conv48)
  store i32 0, i32* %rerun, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.906, %if.end.42
  %50 = load i32, i32* %rerun, align 4
  %51 = load i16, i16* %runs, align 2
  %conv49 = sext i16 %51 to i32
  %cmp50 = icmp slt i32 %50, %conv49
  br i1 %cmp50, label %for.body, label %for.end.908

for.body:                                         ; preds = %for.cond
  %52 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %52, i32 0, i32 17
  store i32 0, i32* %c_ipred_mode, align 4
  %53 = load %struct.CSobj*, %struct.CSobj** @cs_cm, align 8
  call void @store_coding_state(%struct.CSobj* %53)
  %54 = load i16, i16* %intra, align 2
  %tobool52 = icmp ne i16 %54, 0
  br i1 %tobool52, label %if.else.440, label %if.then.53

if.then.53:                                       ; preds = %for.body
  store i16 1, i16* @best_mode, align 2
  %55 = load i16, i16* %bslice, align 2
  %tobool54 = icmp ne i16 %55, 0
  br i1 %tobool54, label %if.then.55, label %if.end.61

if.then.55:                                       ; preds = %if.then.53
  call void @Get_Direct_Motion_Vectors()
  %valid = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 3
  %arrayidx56 = getelementptr inbounds [15 x i16], [15 x i16]* %valid, i32 0, i64 0
  %56 = load i16, i16* %arrayidx56, align 2
  %tobool57 = icmp ne i16 %56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %if.then.55
  store i16 0, i16* @best_mode, align 2
  %57 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode59 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %57, i32 0, i32 17
  store i32 0, i32* %c_ipred_mode59, align 4
  %58 = load double, double* %max_rdcost, align 8
  store double %58, double* %min_rdcost, align 8
  %59 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %60 = load i32, i32* %i16mode, align 4
  %61 = load i16, i16* %bslice, align 2
  call void @compute_mode_RD_cost(i32 0, %struct.macroblock* %59, %struct.RD_PARAMS* byval align 8 %enc_mb, double* %min_rdcost, double* %min_rate, i32 %60, i16 signext %61, i16* %inter_skip)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.then.55
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.53
  %62 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %CtxAdptLagrangeMult = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %62, i32 0, i32 114
  %63 = load i32, i32* %CtxAdptLagrangeMult, align 4
  %cmp62 = icmp eq i32 %63, 1
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.61
  call void @get_initial_mb16x16_cost()
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %if.end.61
  store i32 2147483647, i32* %min_cost, align 4
  store i32 1, i32* %mode, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.365, %if.end.65
  %64 = load i32, i32* %mode, align 4
  %cmp67 = icmp slt i32 %64, 4
  br i1 %cmp67, label %for.body.69, label %for.end.367

for.body.69:                                      ; preds = %for.cond.66
  store i16 0, i16* @bi_pred_me, align 2
  %65 = load i32, i32* %mode, align 4
  %idxprom70 = sext i32 %65 to i64
  %66 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %66, i32 0, i32 83
  %arrayidx71 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me, i32 0, i64 %idxprom70
  store i16 0, i16* %arrayidx71, align 2
  %67 = load i32, i32* %mode, align 4
  %idxprom72 = sext i32 %67 to i64
  %valid73 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 3
  %arrayidx74 = getelementptr inbounds [15 x i16], [15 x i16]* %valid73, i32 0, i64 %idxprom72
  %68 = load i16, i16* %arrayidx74, align 2
  %conv75 = sext i16 %68 to i32
  %tobool76 = icmp ne i32 %conv75, 0
  br i1 %tobool76, label %land.lhs.true.77, label %if.end.364

land.lhs.true.77:                                 ; preds = %for.body.69
  %69 = load i16, i16* %inter_skip, align 2
  %tobool78 = icmp ne i16 %69, 0
  br i1 %tobool78, label %if.end.364, label %if.then.79

if.then.79:                                       ; preds = %land.lhs.true.77
  store i32 0, i32* %cost, align 4
  store i32 0, i32* %block, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.222, %if.then.79
  %70 = load i32, i32* %block, align 4
  %71 = load i32, i32* %mode, align 4
  %cmp81 = icmp eq i32 %71, 1
  %cond83 = select i1 %cmp81, i32 1, i32 2
  %cmp84 = icmp slt i32 %70, %cond83
  br i1 %cmp84, label %for.body.86, label %for.end.224

for.body.86:                                      ; preds = %for.cond.80
  store i32 0, i32* %MEPos, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc, %for.body.86
  %72 = load i32, i32* %MEPos, align 4
  %cmp88 = icmp slt i32 %72, 3
  br i1 %cmp88, label %for.body.90, label %for.end

for.body.90:                                      ; preds = %for.cond.87
  %73 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %CtxAdptLagrangeMult91 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %73, i32 0, i32 114
  %74 = load i32, i32* %CtxAdptLagrangeMult91, align 4
  %cmp92 = icmp eq i32 %74, 0
  br i1 %cmp92, label %cond.true.94, label %cond.false.98

cond.true.94:                                     ; preds = %for.body.90
  %75 = load i32, i32* %MEPos, align 4
  %idxprom95 = sext i32 %75 to i64
  %lambda_mf96 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 2
  %arrayidx97 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf96, i32 0, i64 %idxprom95
  %76 = load i32, i32* %arrayidx97, align 4
  br label %cond.end.105

cond.false.98:                                    ; preds = %for.body.90
  %77 = load i32, i32* %MEPos, align 4
  %idxprom99 = sext i32 %77 to i64
  %lambda_mf100 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 2
  %arrayidx101 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf100, i32 0, i64 %idxprom99
  %78 = load i32, i32* %arrayidx101, align 4
  %conv102 = sitofp i32 %78 to double
  %79 = load double, double* @lambda_mf_factor, align 8
  %call103 = call double @sqrt(double %79) #1
  %mul = fmul double %conv102, %call103
  %conv104 = fptosi double %mul to i32
  br label %cond.end.105

cond.end.105:                                     ; preds = %cond.false.98, %cond.true.94
  %cond106 = phi i32 [ %76, %cond.true.94 ], [ %conv104, %cond.false.98 ]
  %80 = load i32, i32* %MEPos, align 4
  %idxprom107 = sext i32 %80 to i64
  %arrayidx108 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf, i32 0, i64 %idxprom107
  store i32 %cond106, i32* %arrayidx108, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.105
  %81 = load i32, i32* %MEPos, align 4
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %MEPos, align 4
  br label %for.cond.87

for.end:                                          ; preds = %for.cond.87
  %82 = load i32, i32* %mode, align 4
  %83 = load i32, i32* %block, align 4
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf, i32 0, i32 0
  call void @PartitionMotionSearch(i32 %82, i32 %83, i32* %arraydecay)
  %84 = load i32, i32* %block, align 4
  %cmp109 = icmp eq i32 %84, 1
  br i1 %cmp109, label %land.rhs.111, label %land.end.114

land.rhs.111:                                     ; preds = %for.end
  %85 = load i32, i32* %mode, align 4
  %cmp112 = icmp eq i32 %85, 2
  br label %land.end.114

land.end.114:                                     ; preds = %land.rhs.111, %for.end
  %86 = phi i1 [ false, %for.end ], [ %cmp112, %land.rhs.111 ]
  %cond115 = select i1 %86, i32 2, i32 0
  store i32 %cond115, i32* %j, align 4
  %87 = load i32, i32* %block, align 4
  %cmp116 = icmp eq i32 %87, 1
  br i1 %cmp116, label %land.rhs.118, label %land.end.121

land.rhs.118:                                     ; preds = %land.end.114
  %88 = load i32, i32* %mode, align 4
  %cmp119 = icmp eq i32 %88, 3
  br label %land.end.121

land.end.121:                                     ; preds = %land.rhs.118, %land.end.114
  %89 = phi i1 [ false, %land.end.114 ], [ %cmp119, %land.rhs.118 ]
  %cond122 = select i1 %89, i32 2, i32 0
  store i32 %cond122, i32* %i, align 4
  %arrayidx123 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i64 0
  store i32 2147483647, i32* %arrayidx123, align 4
  %90 = load i32, i32* %block, align 4
  %91 = load i32, i32* %mode, align 4
  %arraydecay124 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i32 0
  %arraydecay125 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i32 0
  call void @list_prediction_cost(i32 0, i32 %90, i32 %91, %struct.RD_PARAMS* byval align 8 %enc_mb, i32* %arraydecay124, i8* %arraydecay125)
  %92 = load i16, i16* %bslice, align 2
  %tobool126 = icmp ne i16 %92, 0
  br i1 %tobool126, label %if.then.127, label %if.else.146

if.then.127:                                      ; preds = %land.end.121
  %arrayidx128 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i64 1
  store i32 2147483647, i32* %arrayidx128, align 4
  %93 = load i32, i32* %block, align 4
  %94 = load i32, i32* %mode, align 4
  %arraydecay129 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i32 0
  %arraydecay130 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i32 0
  call void @list_prediction_cost(i32 1, i32 %93, i32 %94, %struct.RD_PARAMS* byval align 8 %enc_mb, i32* %arraydecay129, i8* %arraydecay130)
  %95 = load i32, i32* %block, align 4
  %96 = load i32, i32* %mode, align 4
  %arraydecay131 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i32 0
  %arraydecay132 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i32 0
  call void @list_prediction_cost(i32 2, i32 %95, i32 %96, %struct.RD_PARAMS* byval align 8 %enc_mb, i32* %arraydecay131, i8* %arraydecay132)
  %97 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %97, i32 0, i32 46
  %98 = load i32, i32* %BiPredMotionEstimation, align 4
  %tobool133 = icmp ne i32 %98, 0
  br i1 %tobool133, label %land.lhs.true.134, label %if.else.140

land.lhs.true.134:                                ; preds = %if.then.127
  %99 = load i32, i32* %mode, align 4
  %cmp135 = icmp eq i32 %99, 1
  br i1 %cmp135, label %if.then.137, label %if.else.140

if.then.137:                                      ; preds = %land.lhs.true.134
  %100 = load i32, i32* %block, align 4
  %101 = load i32, i32* %mode, align 4
  %arraydecay138 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i32 0
  call void @list_prediction_cost(i32 3, i32 %100, i32 %101, %struct.RD_PARAMS* byval align 8 %enc_mb, i32* %arraydecay138, i8* null)
  %102 = load i32, i32* %block, align 4
  %103 = load i32, i32* %mode, align 4
  %arraydecay139 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i32 0
  call void @list_prediction_cost(i32 4, i32 %102, i32 %103, %struct.RD_PARAMS* byval align 8 %enc_mb, i32* %arraydecay139, i8* null)
  br label %if.end.143

if.else.140:                                      ; preds = %land.lhs.true.134, %if.then.127
  %arrayidx141 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i64 3
  store i32 2147483647, i32* %arrayidx141, align 4
  %arrayidx142 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i64 4
  store i32 2147483647, i32* %arrayidx142, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.140, %if.then.137
  %104 = load i32, i32* %mode, align 4
  %arraydecay144 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i32 0
  %arraydecay145 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i32 0
  call void @determine_prediction_list(i32 %104, i32* %arraydecay144, i8* %arraydecay145, i8* %best_pdir, i32* %cost, i16* @bi_pred_me)
  br label %if.end.148

if.else.146:                                      ; preds = %land.end.121
  store i8 0, i8* %best_pdir, align 1
  %arrayidx147 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i64 0
  %105 = load i32, i32* %arrayidx147, align 4
  %106 = load i32, i32* %cost, align 4
  %add = add nsw i32 %106, %105
  store i32 %add, i32* %cost, align 4
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.146, %if.end.143
  %107 = load i32, i32* %mode, align 4
  %108 = load i8, i8* %best_pdir, align 1
  %109 = load i32, i32* %block, align 4
  %list_offset = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 4
  %arrayidx149 = getelementptr inbounds [2 x i16], [2 x i16]* %list_offset, i32 0, i64 0
  %110 = load i16, i16* %arrayidx149, align 2
  %conv150 = sext i16 %110 to i32
  %arrayidx151 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 0
  %111 = load i8, i8* %arrayidx151, align 1
  %conv152 = sext i8 %111 to i32
  %arrayidx153 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 1
  %112 = load i8, i8* %arrayidx153, align 1
  %conv154 = sext i8 %112 to i32
  %113 = load i16, i16* %bslice, align 2
  %conv155 = sext i16 %113 to i32
  call void @assign_enc_picture_params(i32 %107, i8 signext %108, i32 %109, i32 %conv150, i32 %conv152, i32 %conv154, i32 %conv155)
  %114 = load i32, i32* %mode, align 4
  %cmp156 = icmp eq i32 %114, 3
  br i1 %cmp156, label %if.then.158, label %if.else.176

if.then.158:                                      ; preds = %if.end.148
  %arrayidx159 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 0
  %115 = load i8, i8* %arrayidx159, align 1
  %116 = load i32, i32* %block, align 4
  %add160 = add nsw i32 %116, 2
  %idxprom161 = sext i32 %add160 to i64
  %arrayidx162 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 3), i32 0, i64 %idxprom161
  store i8 %115, i8* %arrayidx162, align 1
  %117 = load i32, i32* %block, align 4
  %idxprom163 = sext i32 %117 to i64
  %arrayidx164 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 3), i32 0, i64 %idxprom163
  store i8 %115, i8* %arrayidx164, align 1
  %118 = load i8, i8* %best_pdir, align 1
  %119 = load i32, i32* %block, align 4
  %add165 = add nsw i32 %119, 2
  %idxprom166 = sext i32 %add165 to i64
  %arrayidx167 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 3), i32 0, i64 %idxprom166
  store i8 %118, i8* %arrayidx167, align 1
  %120 = load i32, i32* %block, align 4
  %idxprom168 = sext i32 %120 to i64
  %arrayidx169 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 3), i32 0, i64 %idxprom168
  store i8 %118, i8* %arrayidx169, align 1
  %arrayidx170 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 1
  %121 = load i8, i8* %arrayidx170, align 1
  %122 = load i32, i32* %block, align 4
  %add171 = add nsw i32 %122, 2
  %idxprom172 = sext i32 %add171 to i64
  %arrayidx173 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 3), i32 0, i64 %idxprom172
  store i8 %121, i8* %arrayidx173, align 1
  %123 = load i32, i32* %block, align 4
  %idxprom174 = sext i32 %123 to i64
  %arrayidx175 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 3), i32 0, i64 %idxprom174
  store i8 %121, i8* %arrayidx175, align 1
  br label %if.end.209

if.else.176:                                      ; preds = %if.end.148
  %124 = load i32, i32* %mode, align 4
  %cmp177 = icmp eq i32 %124, 2
  br i1 %cmp177, label %if.then.179, label %if.else.203

if.then.179:                                      ; preds = %if.else.176
  %arrayidx180 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 0
  %125 = load i8, i8* %arrayidx180, align 1
  %126 = load i32, i32* %block, align 4
  %mul181 = mul nsw i32 2, %126
  %add182 = add nsw i32 %mul181, 1
  %idxprom183 = sext i32 %add182 to i64
  %arrayidx184 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 2), i32 0, i64 %idxprom183
  store i8 %125, i8* %arrayidx184, align 1
  %127 = load i32, i32* %block, align 4
  %mul185 = mul nsw i32 2, %127
  %idxprom186 = sext i32 %mul185 to i64
  %arrayidx187 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 2), i32 0, i64 %idxprom186
  store i8 %125, i8* %arrayidx187, align 1
  %128 = load i8, i8* %best_pdir, align 1
  %129 = load i32, i32* %block, align 4
  %mul188 = mul nsw i32 2, %129
  %add189 = add nsw i32 %mul188, 1
  %idxprom190 = sext i32 %add189 to i64
  %arrayidx191 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 2), i32 0, i64 %idxprom190
  store i8 %128, i8* %arrayidx191, align 1
  %130 = load i32, i32* %block, align 4
  %mul192 = mul nsw i32 2, %130
  %idxprom193 = sext i32 %mul192 to i64
  %arrayidx194 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 2), i32 0, i64 %idxprom193
  store i8 %128, i8* %arrayidx194, align 1
  %arrayidx195 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 1
  %131 = load i8, i8* %arrayidx195, align 1
  %132 = load i32, i32* %block, align 4
  %mul196 = mul nsw i32 2, %132
  %add197 = add nsw i32 %mul196, 1
  %idxprom198 = sext i32 %add197 to i64
  %arrayidx199 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 2), i32 0, i64 %idxprom198
  store i8 %131, i8* %arrayidx199, align 1
  %133 = load i32, i32* %block, align 4
  %mul200 = mul nsw i32 2, %133
  %idxprom201 = sext i32 %mul200 to i64
  %arrayidx202 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 2), i32 0, i64 %idxprom201
  store i8 %131, i8* %arrayidx202, align 1
  br label %if.end.208

if.else.203:                                      ; preds = %if.else.176
  %arrayidx204 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 0
  %134 = load i8, i8* %arrayidx204, align 1
  %conv205 = sext i8 %134 to i32
  %135 = trunc i32 %conv205 to i8
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 1, i64 0), i8 %135, i64 4, i32 1, i1 false)
  %arrayidx206 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 1
  %136 = load i8, i8* %arrayidx206, align 1
  %conv207 = sext i8 %136 to i32
  %137 = trunc i32 %conv207 to i8
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 1, i64 0), i8 %137, i64 4, i32 1, i1 false)
  %138 = load i8, i8* %best_pdir, align 1
  store i8 %138, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 3), align 1
  store i8 %138, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 2), align 1
  store i8 %138, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 1), align 1
  store i8 %138, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 0), align 1
  br label %if.end.208

if.end.208:                                       ; preds = %if.else.203, %if.then.179
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.then.158
  %139 = load i32, i32* %mode, align 4
  %cmp210 = icmp sgt i32 %139, 1
  br i1 %cmp210, label %land.lhs.true.212, label %if.end.221

land.lhs.true.212:                                ; preds = %if.end.209
  %140 = load i32, i32* %block, align 4
  %cmp213 = icmp eq i32 %140, 0
  br i1 %cmp213, label %if.then.215, label %if.end.221

if.then.215:                                      ; preds = %land.lhs.true.212
  %141 = load i32, i32* %block, align 4
  %142 = load i32, i32* %mode, align 4
  %143 = load i8, i8* %best_pdir, align 1
  %conv216 = sext i8 %143 to i32
  %arrayidx217 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 0
  %144 = load i8, i8* %arrayidx217, align 1
  %conv218 = sext i8 %144 to i32
  %arrayidx219 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 1
  %145 = load i8, i8* %arrayidx219, align 1
  %conv220 = sext i8 %145 to i32
  call void @SetRefAndMotionVectors(i32 %141, i32 %142, i32 %conv216, i32 %conv218, i32 %conv220)
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.215, %land.lhs.true.212, %if.end.209
  br label %for.inc.222

for.inc.222:                                      ; preds = %if.end.221
  %146 = load i32, i32* %block, align 4
  %inc223 = add nsw i32 %146, 1
  store i32 %inc223, i32* %block, align 4
  br label %for.cond.80

for.end.224:                                      ; preds = %for.cond.80
  %147 = load i32, i32* %mode, align 4
  %cmp225 = icmp eq i32 %147, 1
  br i1 %cmp225, label %if.then.227, label %if.end.351

if.then.227:                                      ; preds = %for.end.224
  %148 = load i16, i16* %pslice, align 2
  %tobool228 = icmp ne i16 %148, 0
  br i1 %tobool228, label %if.then.229, label %if.end.230

if.then.229:                                      ; preds = %if.then.227
  %149 = load double, double* %max_rdcost, align 8
  store double %149, double* %min_rdcost, align 8
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.229, %if.then.227
  store i32 0, i32* %ctr16x16, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.231

for.cond.231:                                     ; preds = %for.inc.299, %if.end.230
  %150 = load i32, i32* %k, align 4
  %cmp232 = icmp slt i32 %150, 1
  br i1 %cmp232, label %for.body.234, label %for.end.301

for.body.234:                                     ; preds = %for.cond.231
  store i32 0, i32* %i16mode, align 4
  %151 = load i16, i16* %bslice, align 2
  %tobool235 = icmp ne i16 %151, 0
  br i1 %tobool235, label %if.then.236, label %if.end.264

if.then.236:                                      ; preds = %for.body.234
  %152 = load i32, i32* %ctr16x16, align 4
  %conv237 = trunc i32 %152 to i8
  store i8 %conv237, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 3), align 1
  store i8 %conv237, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 2), align 1
  store i8 %conv237, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 1), align 1
  store i8 %conv237, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 0), align 1
  %153 = load i16, i16* %bslice, align 2
  %conv238 = sext i16 %153 to i32
  %tobool239 = icmp ne i32 %conv238, 0
  br i1 %tobool239, label %land.lhs.true.240, label %if.end.257

land.lhs.true.240:                                ; preds = %if.then.236
  %154 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation241 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %154, i32 0, i32 46
  %155 = load i32, i32* %BiPredMotionEstimation241, align 4
  %tobool242 = icmp ne i32 %155, 0
  br i1 %tobool242, label %land.lhs.true.243, label %if.end.257

land.lhs.true.243:                                ; preds = %land.lhs.true.240
  %156 = load i32, i32* %ctr16x16, align 4
  %cmp244 = icmp eq i32 %156, 2
  br i1 %cmp244, label %land.lhs.true.246, label %if.end.257

land.lhs.true.246:                                ; preds = %land.lhs.true.243
  %157 = load i32, i32* %mode, align 4
  %idxprom247 = sext i32 %157 to i64
  %158 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me248 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %158, i32 0, i32 83
  %arrayidx249 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me248, i32 0, i64 %idxprom247
  %159 = load i16, i16* %arrayidx249, align 2
  %conv250 = sext i16 %159 to i32
  %cmp251 = icmp slt i32 %conv250, 2
  br i1 %cmp251, label %land.lhs.true.253, label %if.end.257

land.lhs.true.253:                                ; preds = %land.lhs.true.246
  %160 = load i32, i32* %mode, align 4
  %cmp254 = icmp eq i32 %160, 1
  br i1 %cmp254, label %if.then.256, label %if.end.257

if.then.256:                                      ; preds = %land.lhs.true.253
  %161 = load i32, i32* %ctr16x16, align 4
  %dec = add nsw i32 %161, -1
  store i32 %dec, i32* %ctr16x16, align 4
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.256, %land.lhs.true.253, %land.lhs.true.246, %land.lhs.true.243, %land.lhs.true.240, %if.then.236
  %162 = load i32, i32* %ctr16x16, align 4
  %cmp258 = icmp slt i32 %162, 2
  br i1 %cmp258, label %if.then.260, label %if.end.262

if.then.260:                                      ; preds = %if.end.257
  %163 = load i32, i32* %index, align 4
  %dec261 = add nsw i32 %163, -1
  store i32 %dec261, i32* %index, align 4
  br label %if.end.262

if.end.262:                                       ; preds = %if.then.260, %if.end.257
  %164 = load i32, i32* %ctr16x16, align 4
  %inc263 = add nsw i32 %164, 1
  store i32 %inc263, i32* %ctr16x16, align 4
  br label %if.end.264

if.end.264:                                       ; preds = %if.end.262, %for.body.234
  %165 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode265 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %165, i32 0, i32 17
  store i32 0, i32* %c_ipred_mode265, align 4
  %166 = load i32, i32* %mode, align 4
  %167 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %168 = load i32, i32* %i16mode, align 4
  %169 = load i16, i16* %bslice, align 2
  call void @compute_mode_RD_cost(i32 %166, %struct.macroblock* %167, %struct.RD_PARAMS* byval align 8 %enc_mb, double* %min_rdcost, double* %min_rate, i32 %168, i16 signext %169, i16* %inter_skip)
  %170 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation266 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %170, i32 0, i32 46
  %171 = load i32, i32* %BiPredMotionEstimation266, align 4
  %tobool267 = icmp ne i32 %171, 0
  br i1 %tobool267, label %land.lhs.true.268, label %if.end.298

land.lhs.true.268:                                ; preds = %if.end.264
  %172 = load i16, i16* %bslice, align 2
  %conv269 = sext i16 %172 to i32
  %tobool270 = icmp ne i32 %conv269, 0
  br i1 %tobool270, label %land.lhs.true.271, label %if.end.298

land.lhs.true.271:                                ; preds = %land.lhs.true.268
  %173 = load i32, i32* %ctr16x16, align 4
  %cmp272 = icmp eq i32 %173, 2
  br i1 %cmp272, label %land.lhs.true.274, label %if.end.298

land.lhs.true.274:                                ; preds = %land.lhs.true.271
  %174 = load i32, i32* %mode, align 4
  %idxprom275 = sext i32 %174 to i64
  %175 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me276 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %175, i32 0, i32 83
  %arrayidx277 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me276, i32 0, i64 %idxprom275
  %176 = load i16, i16* %arrayidx277, align 2
  %conv278 = sext i16 %176 to i32
  %cmp279 = icmp slt i32 %conv278, 2
  br i1 %cmp279, label %land.lhs.true.281, label %if.end.298

land.lhs.true.281:                                ; preds = %land.lhs.true.274
  %177 = load i32, i32* %mode, align 4
  %cmp282 = icmp eq i32 %177, 1
  br i1 %cmp282, label %land.lhs.true.284, label %if.end.298

land.lhs.true.284:                                ; preds = %land.lhs.true.281
  %178 = load i8, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 0), align 1
  %conv285 = sext i8 %178 to i32
  %cmp286 = icmp eq i32 %conv285, 2
  br i1 %cmp286, label %if.then.288, label %if.end.298

if.then.288:                                      ; preds = %land.lhs.true.284
  %179 = load i32, i32* %mode, align 4
  %idxprom289 = sext i32 %179 to i64
  %180 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me290 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %180, i32 0, i32 83
  %arrayidx291 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me290, i32 0, i64 %idxprom289
  %181 = load i16, i16* %arrayidx291, align 2
  %conv292 = sext i16 %181 to i32
  %add293 = add nsw i32 %conv292, 1
  %conv294 = trunc i32 %add293 to i16
  %182 = load i32, i32* %mode, align 4
  %idxprom295 = sext i32 %182 to i64
  %183 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me296 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %183, i32 0, i32 83
  %arrayidx297 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me296, i32 0, i64 %idxprom295
  store i16 %conv294, i16* %arrayidx297, align 2
  br label %if.end.298

if.end.298:                                       ; preds = %if.then.288, %land.lhs.true.284, %land.lhs.true.281, %land.lhs.true.274, %land.lhs.true.271, %land.lhs.true.268, %if.end.264
  br label %for.inc.299

for.inc.299:                                      ; preds = %if.end.298
  %184 = load i32, i32* %k, align 4
  %inc300 = add nsw i32 %184, 1
  store i32 %inc300, i32* %k, align 4
  br label %for.cond.231

for.end.301:                                      ; preds = %for.cond.231
  %185 = load i16, i16* %pslice, align 2
  %tobool302 = icmp ne i16 %185, 0
  br i1 %tobool302, label %if.then.303, label %if.end.349

if.then.303:                                      ; preds = %for.end.301
  call void @FindSkipModeMotionVector()
  %186 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EarlySkipEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %186, i32 0, i32 190
  %187 = load i32, i32* %EarlySkipEnable, align 4
  %tobool304 = icmp ne i32 %187, 0
  br i1 %tobool304, label %if.then.305, label %if.end.348

if.then.305:                                      ; preds = %if.then.303
  %188 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %188, i32 0, i32 12
  %189 = load i32, i32* %cbp, align 4
  %cmp306 = icmp eq i32 %189, 0
  br i1 %cmp306, label %land.lhs.true.308, label %if.end.347

land.lhs.true.308:                                ; preds = %if.then.305
  %190 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %190, i32 0, i32 37
  %191 = load i32, i32* %block_x, align 4
  %idxprom309 = sext i32 %191 to i64
  %192 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %192, i32 0, i32 38
  %193 = load i32, i32* %block_y, align 4
  %idxprom310 = sext i32 %193 to i64
  %194 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %194, i32 0, i32 35
  %195 = load i8***, i8**** %ref_idx, align 8
  %arrayidx311 = getelementptr inbounds i8**, i8*** %195, i64 0
  %196 = load i8**, i8*** %arrayidx311, align 8
  %arrayidx312 = getelementptr inbounds i8*, i8** %196, i64 %idxprom310
  %197 = load i8*, i8** %arrayidx312, align 8
  %arrayidx313 = getelementptr inbounds i8, i8* %197, i64 %idxprom309
  %198 = load i8, i8* %arrayidx313, align 1
  %conv314 = sext i8 %198 to i32
  %cmp315 = icmp eq i32 %conv314, 0
  br i1 %cmp315, label %land.lhs.true.317, label %if.end.347

land.lhs.true.317:                                ; preds = %land.lhs.true.308
  %199 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x318 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %199, i32 0, i32 37
  %200 = load i32, i32* %block_x318, align 4
  %idxprom319 = sext i32 %200 to i64
  %201 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y320 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %201, i32 0, i32 38
  %202 = load i32, i32* %block_y320, align 4
  %idxprom321 = sext i32 %202 to i64
  %203 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %203, i32 0, i32 38
  %204 = load i16****, i16***** %mv, align 8
  %arrayidx322 = getelementptr inbounds i16***, i16**** %204, i64 0
  %205 = load i16***, i16**** %arrayidx322, align 8
  %arrayidx323 = getelementptr inbounds i16**, i16*** %205, i64 %idxprom321
  %206 = load i16**, i16*** %arrayidx323, align 8
  %arrayidx324 = getelementptr inbounds i16*, i16** %206, i64 %idxprom319
  %207 = load i16*, i16** %arrayidx324, align 8
  %arrayidx325 = getelementptr inbounds i16, i16* %207, i64 0
  %208 = load i16, i16* %arrayidx325, align 2
  %conv326 = sext i16 %208 to i32
  %209 = load i16*, i16** %allmvs, align 8
  %arrayidx327 = getelementptr inbounds i16, i16* %209, i64 0
  %210 = load i16, i16* %arrayidx327, align 2
  %conv328 = sext i16 %210 to i32
  %cmp329 = icmp eq i32 %conv326, %conv328
  br i1 %cmp329, label %land.lhs.true.331, label %if.end.347

land.lhs.true.331:                                ; preds = %land.lhs.true.317
  %211 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x332 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %211, i32 0, i32 37
  %212 = load i32, i32* %block_x332, align 4
  %idxprom333 = sext i32 %212 to i64
  %213 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y334 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %213, i32 0, i32 38
  %214 = load i32, i32* %block_y334, align 4
  %idxprom335 = sext i32 %214 to i64
  %215 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv336 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %215, i32 0, i32 38
  %216 = load i16****, i16***** %mv336, align 8
  %arrayidx337 = getelementptr inbounds i16***, i16**** %216, i64 0
  %217 = load i16***, i16**** %arrayidx337, align 8
  %arrayidx338 = getelementptr inbounds i16**, i16*** %217, i64 %idxprom335
  %218 = load i16**, i16*** %arrayidx338, align 8
  %arrayidx339 = getelementptr inbounds i16*, i16** %218, i64 %idxprom333
  %219 = load i16*, i16** %arrayidx339, align 8
  %arrayidx340 = getelementptr inbounds i16, i16* %219, i64 1
  %220 = load i16, i16* %arrayidx340, align 2
  %conv341 = sext i16 %220 to i32
  %221 = load i16*, i16** %allmvs, align 8
  %arrayidx342 = getelementptr inbounds i16, i16* %221, i64 1
  %222 = load i16, i16* %arrayidx342, align 2
  %conv343 = sext i16 %222 to i32
  %cmp344 = icmp eq i32 %conv341, %conv343
  br i1 %cmp344, label %if.then.346, label %if.end.347

if.then.346:                                      ; preds = %land.lhs.true.331
  store i16 1, i16* %inter_skip, align 2
  store i16 0, i16* @best_mode, align 2
  br label %if.end.347

if.end.347:                                       ; preds = %if.then.346, %land.lhs.true.331, %land.lhs.true.317, %land.lhs.true.308, %if.then.305
  br label %if.end.348

if.end.348:                                       ; preds = %if.end.347, %if.then.303
  br label %if.end.349

if.end.349:                                       ; preds = %if.end.348, %for.end.301
  %223 = load double, double* %min_rdcost, align 8
  store double %223, double* %RDCost16, align 8
  %224 = load i16, i16* @best_mode, align 2
  %conv350 = sext i16 %224 to i32
  store i32 %conv350, i32* %mode16, align 4
  %225 = load i32, i32* %cost, align 4
  store i32 %225, i32* %cost16, align 4
  br label %if.end.351

if.end.351:                                       ; preds = %if.end.349, %for.end.224
  %226 = load i16, i16* %inter_skip, align 2
  %tobool352 = icmp ne i16 %226, 0
  br i1 %tobool352, label %if.end.363, label %land.lhs.true.353

land.lhs.true.353:                                ; preds = %if.end.351
  %227 = load i32, i32* %cost, align 4
  %228 = load i32, i32* %min_cost, align 4
  %cmp354 = icmp slt i32 %227, %228
  br i1 %cmp354, label %if.then.356, label %if.end.363

if.then.356:                                      ; preds = %land.lhs.true.353
  %229 = load i32, i32* %mode, align 4
  %conv357 = trunc i32 %229 to i16
  store i16 %conv357, i16* @best_mode, align 2
  %230 = load i32, i32* %cost, align 4
  store i32 %230, i32* %min_cost, align 4
  %231 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %CtxAdptLagrangeMult358 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %231, i32 0, i32 114
  %232 = load i32, i32* %CtxAdptLagrangeMult358, align 4
  %cmp359 = icmp eq i32 %232, 1
  br i1 %cmp359, label %if.then.361, label %if.end.362

if.then.361:                                      ; preds = %if.then.356
  %233 = load i32, i32* %cost, align 4
  call void @adjust_mb16x16_cost(i32 %233)
  br label %if.end.362

if.end.362:                                       ; preds = %if.then.361, %if.then.356
  br label %if.end.363

if.end.363:                                       ; preds = %if.end.362, %land.lhs.true.353, %if.end.351
  br label %if.end.364

if.end.364:                                       ; preds = %if.end.363, %land.lhs.true.77, %for.body.69
  br label %for.inc.365

for.inc.365:                                      ; preds = %if.end.364
  %234 = load i32, i32* %mode, align 4
  %inc366 = add nsw i32 %234, 1
  store i32 %inc366, i32* %mode, align 4
  br label %for.cond.66

for.end.367:                                      ; preds = %for.cond.66
  %235 = load i16, i16* %inter_skip, align 2
  %tobool368 = icmp ne i16 %235, 0
  br i1 %tobool368, label %if.else.438, label %land.lhs.true.369

land.lhs.true.369:                                ; preds = %for.end.367
  %valid370 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 3
  %arrayidx371 = getelementptr inbounds [15 x i16], [15 x i16]* %valid370, i32 0, i64 8
  %236 = load i16, i16* %arrayidx371, align 2
  %conv372 = sext i16 %236 to i32
  %tobool373 = icmp ne i32 %conv372, 0
  br i1 %tobool373, label %if.then.374, label %if.else.438

if.then.374:                                      ; preds = %land.lhs.true.369
  store i32 1, i32* @giRDOpt_B8OnlyFlag, align 4
  store i32 2147483647, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 0), align 4
  store i32 2147483647, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 0), align 4
  %237 = load %struct.CSobj*, %struct.CSobj** @cs_mb, align 8
  call void @store_coding_state(%struct.CSobj* %237)
  %238 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %all_blk_8x8 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %238, i32 0, i32 30
  store i32 -1, i32* %all_blk_8x8, align 4
  %239 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %239, i32 0, i32 153
  %240 = load i32, i32* %Transform8x8Mode, align 4
  %tobool375 = icmp ne i32 %240, 0
  br i1 %tobool375, label %if.then.376, label %if.end.403

if.then.376:                                      ; preds = %if.then.374
  store i32 0, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 0), align 4
  store i32 0, i32* @cnt_nonz_8x8, align 4
  store i32 0, i32* @cbp_blk8x8, align 4
  store i32 0, i32* @cbp8x8, align 4
  store i32 0, i32* %cost_direct, align 4
  store i32 0, i32* %block, align 4
  br label %for.cond.377

for.cond.377:                                     ; preds = %for.inc.399, %if.then.376
  %241 = load i32, i32* %block, align 4
  %cmp378 = icmp slt i32 %241, 4
  br i1 %cmp378, label %for.body.380, label %for.end.401

for.body.380:                                     ; preds = %for.cond.377
  %242 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %243 = load i32, i32* %block, align 4
  %idxprom381 = sext i32 %243 to i64
  %244 = load i32****, i32***** @cofAC_8x8ts, align 8
  %arrayidx382 = getelementptr inbounds i32***, i32**** %244, i64 %idxprom381
  %245 = load i32***, i32**** %arrayidx382, align 8
  %246 = load i16, i16* %bslice, align 2
  %247 = load i32, i32* %block, align 4
  call void @submacroblock_mode_decision(%struct.RD_PARAMS* byval align 8 %enc_mb, %struct.RD_8x8DATA* @tr8x8, %struct.macroblock* %242, i32*** %245, i32* %have_direct, i16 signext %246, i32 %247, i32* %cost_direct, i32* %cost, i32* %cost8x8_direct, i32 1)
  %248 = load i32, i32* %block, align 4
  %idxprom383 = sext i32 %248 to i64
  %arrayidx384 = getelementptr inbounds [4 x i16], [4 x i16]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 5), i32 0, i64 %idxprom383
  %249 = load i16, i16* %arrayidx384, align 2
  %250 = load i32, i32* %block, align 4
  %idxprom385 = sext i32 %250 to i64
  %arrayidx386 = getelementptr inbounds [4 x i16], [4 x i16]* @best8x8mode, i32 0, i64 %idxprom385
  store i16 %249, i16* %arrayidx386, align 2
  %251 = load i32, i32* %block, align 4
  %idxprom387 = sext i32 %251 to i64
  %arrayidx388 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 6), i32 0, i64 %idxprom387
  %252 = load i8, i8* %arrayidx388, align 1
  %253 = load i32, i32* %block, align 4
  %idxprom389 = sext i32 %253 to i64
  %arrayidx390 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 8), i32 0, i64 %idxprom389
  store i8 %252, i8* %arrayidx390, align 1
  %254 = load i32, i32* %block, align 4
  %idxprom391 = sext i32 %254 to i64
  %arrayidx392 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 7), i32 0, i64 %idxprom391
  %255 = load i8, i8* %arrayidx392, align 1
  %256 = load i32, i32* %block, align 4
  %idxprom393 = sext i32 %256 to i64
  %arrayidx394 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 8), i32 0, i64 %idxprom393
  store i8 %255, i8* %arrayidx394, align 1
  %257 = load i32, i32* %block, align 4
  %idxprom395 = sext i32 %257 to i64
  %arrayidx396 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 8), i32 0, i64 %idxprom395
  %258 = load i8, i8* %arrayidx396, align 1
  %259 = load i32, i32* %block, align 4
  %idxprom397 = sext i32 %259 to i64
  %arrayidx398 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 8), i32 0, i64 %idxprom397
  store i8 %258, i8* %arrayidx398, align 1
  br label %for.inc.399

for.inc.399:                                      ; preds = %for.body.380
  %260 = load i32, i32* %block, align 4
  %inc400 = add nsw i32 %260, 1
  store i32 %inc400, i32* %block, align 4
  br label %for.cond.377

for.end.401:                                      ; preds = %for.cond.377
  %261 = load i32, i32* @cbp8x8, align 4
  store i32 %261, i32* @cbp8_8x8ts, align 4
  %262 = load i32, i32* @cbp_blk8x8, align 4
  %conv402 = sext i32 %262 to i64
  store i64 %conv402, i64* @cbp_blk8_8x8ts, align 8
  %263 = load i32, i32* @cnt_nonz_8x8, align 4
  store i32 %263, i32* @cnt_nonz8_8x8ts, align 4
  %264 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %264, i32 0, i32 31
  store i32 0, i32* %luma_transform_size_8x8_flag, align 4
  br label %if.end.403

if.end.403:                                       ; preds = %for.end.401, %if.then.374
  %265 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode404 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %265, i32 0, i32 153
  %266 = load i32, i32* %Transform8x8Mode404, align 4
  %cmp405 = icmp ne i32 %266, 2
  br i1 %cmp405, label %if.then.407, label %if.end.433

if.then.407:                                      ; preds = %if.end.403
  store i32 0, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 0), align 4
  store i32 0, i32* @cnt_nonz_8x8, align 4
  store i32 0, i32* @cbp_blk8x8, align 4
  store i32 0, i32* @cbp8x8, align 4
  store i32 0, i32* %cost_direct, align 4
  store i32 0, i32* %block, align 4
  br label %for.cond.408

for.cond.408:                                     ; preds = %for.inc.430, %if.then.407
  %267 = load i32, i32* %block, align 4
  %cmp409 = icmp slt i32 %267, 4
  br i1 %cmp409, label %for.body.411, label %for.end.432

for.body.411:                                     ; preds = %for.cond.408
  %268 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %269 = load i32, i32* %block, align 4
  %idxprom412 = sext i32 %269 to i64
  %270 = load i32****, i32***** @cofAC8x8, align 8
  %arrayidx413 = getelementptr inbounds i32***, i32**** %270, i64 %idxprom412
  %271 = load i32***, i32**** %arrayidx413, align 8
  %272 = load i16, i16* %bslice, align 2
  %273 = load i32, i32* %block, align 4
  call void @submacroblock_mode_decision(%struct.RD_PARAMS* byval align 8 %enc_mb, %struct.RD_8x8DATA* @tr4x4, %struct.macroblock* %268, i32*** %271, i32* %have_direct, i16 signext %272, i32 %273, i32* %cost_direct, i32* %cost, i32* %cost8x8_direct, i32 0)
  %274 = load i32, i32* %block, align 4
  %idxprom414 = sext i32 %274 to i64
  %arrayidx415 = getelementptr inbounds [4 x i16], [4 x i16]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 5), i32 0, i64 %idxprom414
  %275 = load i16, i16* %arrayidx415, align 2
  %276 = load i32, i32* %block, align 4
  %idxprom416 = sext i32 %276 to i64
  %arrayidx417 = getelementptr inbounds [4 x i16], [4 x i16]* @best8x8mode, i32 0, i64 %idxprom416
  store i16 %275, i16* %arrayidx417, align 2
  %277 = load i32, i32* %block, align 4
  %idxprom418 = sext i32 %277 to i64
  %arrayidx419 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 6), i32 0, i64 %idxprom418
  %278 = load i8, i8* %arrayidx419, align 1
  %279 = load i32, i32* %block, align 4
  %idxprom420 = sext i32 %279 to i64
  %arrayidx421 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 8), i32 0, i64 %idxprom420
  store i8 %278, i8* %arrayidx421, align 1
  %280 = load i32, i32* %block, align 4
  %idxprom422 = sext i32 %280 to i64
  %arrayidx423 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 7), i32 0, i64 %idxprom422
  %281 = load i8, i8* %arrayidx423, align 1
  %282 = load i32, i32* %block, align 4
  %idxprom424 = sext i32 %282 to i64
  %arrayidx425 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 8), i32 0, i64 %idxprom424
  store i8 %281, i8* %arrayidx425, align 1
  %283 = load i32, i32* %block, align 4
  %idxprom426 = sext i32 %283 to i64
  %arrayidx427 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 8), i32 0, i64 %idxprom426
  %284 = load i8, i8* %arrayidx427, align 1
  %285 = load i32, i32* %block, align 4
  %idxprom428 = sext i32 %285 to i64
  %arrayidx429 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 8), i32 0, i64 %idxprom428
  store i8 %284, i8* %arrayidx429, align 1
  br label %for.inc.430

for.inc.430:                                      ; preds = %for.body.411
  %286 = load i32, i32* %block, align 4
  %inc431 = add nsw i32 %286, 1
  store i32 %inc431, i32* %block, align 4
  br label %for.cond.408

for.end.432:                                      ; preds = %for.cond.408
  br label %if.end.433

if.end.433:                                       ; preds = %for.end.432, %if.end.403
  %287 = load %struct.CSobj*, %struct.CSobj** @cs_mb, align 8
  call void @reset_coding_state(%struct.CSobj* %287)
  %288 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %288, i32 0, i32 157
  %289 = load i32, i32* %RCEnable, align 4
  %tobool434 = icmp ne i32 %289, 0
  br i1 %tobool434, label %if.then.435, label %if.end.437

if.then.435:                                      ; preds = %if.end.433
  %290 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %290, i32 0, i32 43
  %291 = load i32, i32* %opix_x, align 4
  %292 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %292, i32 0, i32 44
  %293 = load i32, i32* %opix_y, align 4
  %294 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %294, i32 0, i32 51
  %arraydecay436 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i32 0
  call void @rc_store_diff(i32 %291, i32 %293, [16 x i16]* %arraydecay436)
  br label %if.end.437

if.end.437:                                       ; preds = %if.then.435, %if.end.433
  store i32 0, i32* @giRDOpt_B8OnlyFlag, align 4
  br label %if.end.439

if.else.438:                                      ; preds = %land.lhs.true.369, %for.end.367
  store i32 2147483647, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 0), align 4
  br label %if.end.439

if.end.439:                                       ; preds = %if.else.438, %if.end.437
  br label %if.end.441

if.else.440:                                      ; preds = %for.body
  store i32 2147483647, i32* %min_cost, align 4
  br label %if.end.441

if.end.441:                                       ; preds = %if.else.440, %if.end.439
  %295 = load i16, i16* %inter_skip, align 2
  %tobool442 = icmp ne i16 %295, 0
  br i1 %tobool442, label %if.end.885, label %if.then.443

if.then.443:                                      ; preds = %if.end.441
  %296 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type444 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %296, i32 0, i32 5
  %297 = load i32, i32* %type444, align 4
  %cmp445 = icmp ne i32 %297, 2
  br i1 %cmp445, label %if.then.447, label %if.else.449

if.then.447:                                      ; preds = %if.then.443
  %298 = load double, double* %RDCost16, align 8
  store double %298, double* %min_rdcost, align 8
  %299 = load i32, i32* %mode16, align 4
  %conv448 = trunc i32 %299 to i16
  store i16 %conv448, i16* @best_mode, align 2
  br label %if.end.450

if.else.449:                                      ; preds = %if.then.443
  %300 = load double, double* %max_rdcost, align 8
  store double %300, double* %min_rdcost, align 8
  br label %if.end.450

if.end.450:                                       ; preds = %if.else.449, %if.then.447
  %301 = load i16, i16* %intra, align 2
  %tobool451 = icmp ne i16 %301, 0
  br i1 %tobool451, label %land.end.454, label %land.rhs.452

land.rhs.452:                                     ; preds = %if.end.450
  %302 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SelectiveIntraEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %302, i32 0, i32 191
  %303 = load i32, i32* %SelectiveIntraEnable, align 4
  %tobool453 = icmp ne i32 %303, 0
  br label %land.end.454

land.end.454:                                     ; preds = %land.rhs.452, %if.end.450
  %304 = phi i1 [ false, %if.end.450 ], [ %tobool453, %land.rhs.452 ]
  %cond455 = select i1 %304, i32 5, i32 9
  store i32 %cond455, i32* %max_index, align 4
  %305 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation456 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %305, i32 0, i32 46
  %306 = load i32, i32* %BiPredMotionEstimation456, align 4
  %tobool457 = icmp ne i32 %306, 0
  br i1 %tobool457, label %if.then.458, label %if.end.461

if.then.458:                                      ; preds = %land.end.454
  %307 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me459 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %307, i32 0, i32 83
  %arrayidx460 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me459, i32 0, i64 1
  store i16 0, i16* %arrayidx460, align 2
  br label %if.end.461

if.end.461:                                       ; preds = %if.then.458, %land.end.454
  %308 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %308, i32 0, i32 160
  %309 = load i32, i32* %yuv_format, align 4
  %cmp462 = icmp ne i32 %309, 0
  br i1 %cmp462, label %land.lhs.true.464, label %if.else.476

land.lhs.true.464:                                ; preds = %if.end.461
  %310 = load i32, i32* %max_index, align 4
  %cmp465 = icmp ne i32 %310, 5
  br i1 %cmp465, label %if.then.467, label %if.else.476

if.then.467:                                      ; preds = %land.lhs.true.464
  call void @IntraChromaPrediction(i32* %mb_available_up, i32* %mb_available_left, i32* %mb_available_up_left)
  %311 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %FastCrIntraDecision = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %311, i32 0, i32 115
  %312 = load i32, i32* %FastCrIntraDecision, align 4
  %tobool468 = icmp ne i32 %312, 0
  br i1 %tobool468, label %if.then.469, label %if.else.474

if.then.469:                                      ; preds = %if.then.467
  call void @IntraChromaRDDecision(%struct.RD_PARAMS* byval align 8 %enc_mb)
  %313 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode470 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %313, i32 0, i32 17
  %314 = load i32, i32* %c_ipred_mode470, align 4
  %conv471 = trunc i32 %314 to i16
  store i16 %conv471, i16* %min_chroma_pred_mode, align 2
  %315 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode472 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %315, i32 0, i32 17
  %316 = load i32, i32* %c_ipred_mode472, align 4
  %conv473 = trunc i32 %316 to i16
  store i16 %conv473, i16* %max_chroma_pred_mode, align 2
  br label %if.end.475

if.else.474:                                      ; preds = %if.then.467
  store i16 0, i16* %min_chroma_pred_mode, align 2
  store i16 3, i16* %max_chroma_pred_mode, align 2
  br label %if.end.475

if.end.475:                                       ; preds = %if.else.474, %if.then.469
  br label %if.end.477

if.else.476:                                      ; preds = %land.lhs.true.464, %if.end.461
  store i16 0, i16* %min_chroma_pred_mode, align 2
  store i16 0, i16* %max_chroma_pred_mode, align 2
  br label %if.end.477

if.end.477:                                       ; preds = %if.else.476, %if.end.475
  %317 = load i16, i16* %min_chroma_pred_mode, align 2
  %conv478 = sext i16 %317 to i32
  %318 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode479 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %318, i32 0, i32 17
  store i32 %conv478, i32* %c_ipred_mode479, align 4
  br label %for.cond.480

for.cond.480:                                     ; preds = %for.inc.751, %if.end.477
  %319 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode481 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %319, i32 0, i32 17
  %320 = load i32, i32* %c_ipred_mode481, align 4
  %321 = load i16, i16* %max_chroma_pred_mode, align 2
  %conv482 = sext i16 %321 to i32
  %cmp483 = icmp sle i32 %320, %conv482
  br i1 %cmp483, label %for.body.485, label %for.end.754

for.body.485:                                     ; preds = %for.cond.480
  %322 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format486 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %322, i32 0, i32 160
  %323 = load i32, i32* %yuv_format486, align 4
  %cmp487 = icmp ne i32 %323, 0
  br i1 %cmp487, label %land.lhs.true.489, label %if.end.522

land.lhs.true.489:                                ; preds = %for.body.485
  %324 = load i16, i16* %intra, align 2
  %tobool490 = icmp ne i16 %324, 0
  br i1 %tobool490, label %lor.lhs.false, label %land.lhs.true.492

lor.lhs.false:                                    ; preds = %land.lhs.true.489
  %325 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %IntraDisableInterOnly = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %325, i32 0, i32 84
  %326 = load i32, i32* %IntraDisableInterOnly, align 4
  %tobool491 = icmp ne i32 %326, 0
  br i1 %tobool491, label %lor.lhs.false.499, label %land.lhs.true.492

land.lhs.true.492:                                ; preds = %lor.lhs.false, %land.lhs.true.489
  %327 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ChromaIntraDisable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %327, i32 0, i32 90
  %328 = load i32, i32* %ChromaIntraDisable, align 4
  %cmp493 = icmp eq i32 %328, 1
  br i1 %cmp493, label %land.lhs.true.495, label %lor.lhs.false.499

land.lhs.true.495:                                ; preds = %land.lhs.true.492
  %329 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode496 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %329, i32 0, i32 17
  %330 = load i32, i32* %c_ipred_mode496, align 4
  %cmp497 = icmp ne i32 %330, 0
  br i1 %cmp497, label %if.then.521, label %lor.lhs.false.499

lor.lhs.false.499:                                ; preds = %land.lhs.true.495, %land.lhs.true.492, %lor.lhs.false
  %331 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode500 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %331, i32 0, i32 17
  %332 = load i32, i32* %c_ipred_mode500, align 4
  %cmp501 = icmp eq i32 %332, 2
  br i1 %cmp501, label %land.lhs.true.503, label %lor.lhs.false.505

land.lhs.true.503:                                ; preds = %lor.lhs.false.499
  %333 = load i32, i32* %mb_available_up, align 4
  %tobool504 = icmp ne i32 %333, 0
  br i1 %tobool504, label %lor.lhs.false.505, label %if.then.521

lor.lhs.false.505:                                ; preds = %land.lhs.true.503, %lor.lhs.false.499
  %334 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode506 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %334, i32 0, i32 17
  %335 = load i32, i32* %c_ipred_mode506, align 4
  %cmp507 = icmp eq i32 %335, 1
  br i1 %cmp507, label %land.lhs.true.509, label %lor.lhs.false.511

land.lhs.true.509:                                ; preds = %lor.lhs.false.505
  %336 = load i32, i32* %mb_available_left, align 4
  %tobool510 = icmp ne i32 %336, 0
  br i1 %tobool510, label %lor.lhs.false.511, label %if.then.521

lor.lhs.false.511:                                ; preds = %land.lhs.true.509, %lor.lhs.false.505
  %337 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode512 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %337, i32 0, i32 17
  %338 = load i32, i32* %c_ipred_mode512, align 4
  %cmp513 = icmp eq i32 %338, 3
  br i1 %cmp513, label %land.lhs.true.515, label %if.end.522

land.lhs.true.515:                                ; preds = %lor.lhs.false.511
  %339 = load i32, i32* %mb_available_left, align 4
  %tobool516 = icmp ne i32 %339, 0
  br i1 %tobool516, label %lor.lhs.false.517, label %if.then.521

lor.lhs.false.517:                                ; preds = %land.lhs.true.515
  %340 = load i32, i32* %mb_available_up, align 4
  %tobool518 = icmp ne i32 %340, 0
  br i1 %tobool518, label %lor.lhs.false.519, label %if.then.521

lor.lhs.false.519:                                ; preds = %lor.lhs.false.517
  %341 = load i32, i32* %mb_available_up_left, align 4
  %tobool520 = icmp ne i32 %341, 0
  br i1 %tobool520, label %if.end.522, label %if.then.521

if.then.521:                                      ; preds = %lor.lhs.false.519, %lor.lhs.false.517, %land.lhs.true.515, %land.lhs.true.509, %land.lhs.true.503, %land.lhs.true.495
  br label %for.inc.751

if.end.522:                                       ; preds = %lor.lhs.false.519, %lor.lhs.false.511, %for.body.485
  store i32 0, i32* %ctr16x16, align 4
  store i32 0, i32* %index, align 4
  br label %for.cond.523

for.cond.523:                                     ; preds = %for.inc.748, %if.end.522
  %342 = load i32, i32* %index, align 4
  %343 = load i32, i32* %max_index, align 4
  %cmp524 = icmp slt i32 %342, %343
  br i1 %cmp524, label %for.body.526, label %for.end.750

for.body.526:                                     ; preds = %for.cond.523
  %344 = load i32, i32* %index, align 4
  %idxprom527 = sext i32 %344 to i64
  %arrayidx528 = getelementptr inbounds [9 x i32], [9 x i32]* @mb_mode_table, i32 0, i64 %idxprom527
  %345 = load i32, i32* %arrayidx528, align 4
  store i32 %345, i32* %mode, align 4
  %346 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format529 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %346, i32 0, i32 160
  %347 = load i32, i32* %yuv_format529, align 4
  %cmp530 = icmp ne i32 %347, 0
  br i1 %cmp530, label %if.then.532, label %if.end.545

if.then.532:                                      ; preds = %for.body.526
  store i32 0, i32* %i16mode, align 4
  %348 = load i16, i16* %bslice, align 2
  %conv533 = sext i16 %348 to i32
  %tobool534 = icmp ne i32 %conv533, 0
  br i1 %tobool534, label %land.lhs.true.535, label %lor.lhs.false.538

land.lhs.true.535:                                ; preds = %if.then.532
  %349 = load i32, i32* %mode, align 4
  %cmp536 = icmp eq i32 %349, 0
  br i1 %cmp536, label %if.then.543, label %lor.lhs.false.538

lor.lhs.false.538:                                ; preds = %land.lhs.true.535, %if.then.532
  %350 = load i16, i16* %islice, align 2
  %tobool539 = icmp ne i16 %350, 0
  br i1 %tobool539, label %if.end.544, label %land.lhs.true.540

land.lhs.true.540:                                ; preds = %lor.lhs.false.538
  %351 = load i32, i32* %mode, align 4
  %cmp541 = icmp eq i32 %351, 1
  br i1 %cmp541, label %if.then.543, label %if.end.544

if.then.543:                                      ; preds = %land.lhs.true.540, %land.lhs.true.535
  br label %for.inc.748

if.end.544:                                       ; preds = %land.lhs.true.540, %lor.lhs.false.538
  br label %if.end.545

if.end.545:                                       ; preds = %if.end.544, %for.body.526
  %352 = load i32, i32* %mode, align 4
  %cmp546 = icmp eq i32 %352, 1
  br i1 %cmp546, label %land.lhs.true.548, label %if.end.580

land.lhs.true.548:                                ; preds = %if.end.545
  %353 = load i16, i16* %bslice, align 2
  %conv549 = sext i16 %353 to i32
  %tobool550 = icmp ne i32 %conv549, 0
  br i1 %tobool550, label %if.then.551, label %if.end.580

if.then.551:                                      ; preds = %land.lhs.true.548
  %354 = load i32, i32* %ctr16x16, align 4
  %conv552 = trunc i32 %354 to i8
  store i8 %conv552, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 3), align 1
  store i8 %conv552, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 2), align 1
  store i8 %conv552, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 1), align 1
  store i8 %conv552, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 0), align 1
  %355 = load i16, i16* %bslice, align 2
  %conv553 = sext i16 %355 to i32
  %tobool554 = icmp ne i32 %conv553, 0
  br i1 %tobool554, label %land.lhs.true.555, label %if.end.573

land.lhs.true.555:                                ; preds = %if.then.551
  %356 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation556 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %356, i32 0, i32 46
  %357 = load i32, i32* %BiPredMotionEstimation556, align 4
  %tobool557 = icmp ne i32 %357, 0
  br i1 %tobool557, label %land.lhs.true.558, label %if.end.573

land.lhs.true.558:                                ; preds = %land.lhs.true.555
  %358 = load i32, i32* %ctr16x16, align 4
  %cmp559 = icmp eq i32 %358, 2
  br i1 %cmp559, label %land.lhs.true.561, label %if.end.573

land.lhs.true.561:                                ; preds = %land.lhs.true.558
  %359 = load i32, i32* %mode, align 4
  %idxprom562 = sext i32 %359 to i64
  %360 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me563 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %360, i32 0, i32 83
  %arrayidx564 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me563, i32 0, i64 %idxprom562
  %361 = load i16, i16* %arrayidx564, align 2
  %conv565 = sext i16 %361 to i32
  %cmp566 = icmp slt i32 %conv565, 2
  br i1 %cmp566, label %land.lhs.true.568, label %if.end.573

land.lhs.true.568:                                ; preds = %land.lhs.true.561
  %362 = load i32, i32* %mode, align 4
  %cmp569 = icmp eq i32 %362, 1
  br i1 %cmp569, label %if.then.571, label %if.end.573

if.then.571:                                      ; preds = %land.lhs.true.568
  %363 = load i32, i32* %ctr16x16, align 4
  %dec572 = add nsw i32 %363, -1
  store i32 %dec572, i32* %ctr16x16, align 4
  br label %if.end.573

if.end.573:                                       ; preds = %if.then.571, %land.lhs.true.568, %land.lhs.true.561, %land.lhs.true.558, %land.lhs.true.555, %if.then.551
  %364 = load i32, i32* %ctr16x16, align 4
  %cmp574 = icmp slt i32 %364, 2
  br i1 %cmp574, label %if.then.576, label %if.end.578

if.then.576:                                      ; preds = %if.end.573
  %365 = load i32, i32* %index, align 4
  %dec577 = add nsw i32 %365, -1
  store i32 %dec577, i32* %index, align 4
  br label %if.end.578

if.end.578:                                       ; preds = %if.then.576, %if.end.573
  %366 = load i32, i32* %ctr16x16, align 4
  %inc579 = add nsw i32 %366, 1
  store i32 %inc579, i32* %ctr16x16, align 4
  br label %if.end.580

if.end.580:                                       ; preds = %if.end.578, %land.lhs.true.548, %if.end.545
  %367 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SkipIntraInInterSlices = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %367, i32 0, i32 67
  %368 = load i32, i32* %SkipIntraInInterSlices, align 4
  %tobool581 = icmp ne i32 %368, 0
  br i1 %tobool581, label %land.lhs.true.582, label %if.end.596

land.lhs.true.582:                                ; preds = %if.end.580
  %369 = load i16, i16* %intra, align 2
  %tobool583 = icmp ne i16 %369, 0
  br i1 %tobool583, label %if.end.596, label %land.lhs.true.584

land.lhs.true.584:                                ; preds = %land.lhs.true.582
  %370 = load i32, i32* %mode, align 4
  %cmp585 = icmp sge i32 %370, 10
  br i1 %cmp585, label %land.lhs.true.587, label %if.end.596

land.lhs.true.587:                                ; preds = %land.lhs.true.584
  %371 = load i16, i16* @best_mode, align 2
  %conv588 = sext i16 %371 to i32
  %cmp589 = icmp sle i32 %conv588, 3
  br i1 %cmp589, label %land.lhs.true.591, label %if.end.596

land.lhs.true.591:                                ; preds = %land.lhs.true.587
  %372 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp592 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %372, i32 0, i32 12
  %373 = load i32, i32* %cbp592, align 4
  %cmp593 = icmp eq i32 %373, 0
  br i1 %cmp593, label %if.then.595, label %if.end.596

if.then.595:                                      ; preds = %land.lhs.true.591
  br label %for.inc.748

if.end.596:                                       ; preds = %land.lhs.true.591, %land.lhs.true.587, %land.lhs.true.584, %land.lhs.true.582, %if.end.580
  %374 = load i16, i16* %bslice, align 2
  %conv597 = sext i16 %374 to i32
  %tobool598 = icmp ne i32 %conv597, 0
  br i1 %tobool598, label %land.lhs.true.599, label %if.end.708

land.lhs.true.599:                                ; preds = %if.end.596
  %375 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %375, i32 0, i32 20
  %376 = load i32, i32* %weighted_bipred_idc, align 4
  %cmp600 = icmp eq i32 %376, 1
  br i1 %cmp600, label %land.lhs.true.602, label %if.end.708

land.lhs.true.602:                                ; preds = %land.lhs.true.599
  %377 = load i32, i32* %mode, align 4
  %cmp603 = icmp slt i32 %377, 8
  br i1 %cmp603, label %if.then.605, label %if.end.708

if.then.605:                                      ; preds = %land.lhs.true.602
  store i32 0, i32* %invalid_mode, align 4
  store i32 0, i32* %cur_blk, align 4
  br label %for.cond.606

for.cond.606:                                     ; preds = %for.inc.675, %if.then.605
  %378 = load i32, i32* %cur_blk, align 4
  %cmp607 = icmp slt i32 %378, 4
  br i1 %cmp607, label %for.body.609, label %for.end.677

for.body.609:                                     ; preds = %for.cond.606
  %379 = load i32, i32* %cur_blk, align 4
  %idxprom610 = sext i32 %379 to i64
  %380 = load i32, i32* %mode, align 4
  %idxprom611 = sext i32 %380 to i64
  %arrayidx612 = getelementptr inbounds [15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 %idxprom611
  %arrayidx613 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx612, i32 0, i64 %idxprom610
  %381 = load i8, i8* %arrayidx613, align 1
  %conv614 = sext i8 %381 to i32
  %cmp615 = icmp eq i32 %conv614, 2
  br i1 %cmp615, label %if.then.617, label %if.end.674

if.then.617:                                      ; preds = %for.body.609
  store i32 0, i32* %cur_comp, align 4
  br label %for.cond.618

for.cond.618:                                     ; preds = %for.inc.667, %if.then.617
  %382 = load i32, i32* %cur_comp, align 4
  %383 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %383, i32 0, i32 8
  %384 = load i32, i32* %chroma_format_idc, align 4
  %cmp619 = icmp eq i32 %384, 0
  %cond621 = select i1 %cmp619, i32 1, i32 3
  %cmp622 = icmp slt i32 %382, %cond621
  br i1 %cmp622, label %for.body.624, label %for.end.669

for.body.624:                                     ; preds = %for.cond.618
  %385 = load i32, i32* %cur_comp, align 4
  %idxprom625 = sext i32 %385 to i64
  %386 = load i32, i32* %cur_blk, align 4
  %idxprom626 = sext i32 %386 to i64
  %387 = load i32, i32* %mode, align 4
  %idxprom627 = sext i32 %387 to i64
  %arrayidx628 = getelementptr inbounds [15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 %idxprom627
  %arrayidx629 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx628, i32 0, i64 %idxprom626
  %388 = load i8, i8* %arrayidx629, align 1
  %conv630 = sext i8 %388 to i32
  %idxprom631 = sext i32 %conv630 to i64
  %389 = load i32, i32* %cur_blk, align 4
  %idxprom632 = sext i32 %389 to i64
  %390 = load i32, i32* %mode, align 4
  %idxprom633 = sext i32 %390 to i64
  %arrayidx634 = getelementptr inbounds [15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 %idxprom633
  %arrayidx635 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx634, i32 0, i64 %idxprom632
  %391 = load i8, i8* %arrayidx635, align 1
  %conv636 = sext i8 %391 to i32
  %idxprom637 = sext i32 %conv636 to i64
  %392 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx638 = getelementptr inbounds i32***, i32**** %392, i64 0
  %393 = load i32***, i32**** %arrayidx638, align 8
  %arrayidx639 = getelementptr inbounds i32**, i32*** %393, i64 %idxprom637
  %394 = load i32**, i32*** %arrayidx639, align 8
  %arrayidx640 = getelementptr inbounds i32*, i32** %394, i64 %idxprom631
  %395 = load i32*, i32** %arrayidx640, align 8
  %arrayidx641 = getelementptr inbounds i32, i32* %395, i64 %idxprom625
  %396 = load i32, i32* %arrayidx641, align 4
  %397 = load i32, i32* %cur_comp, align 4
  %idxprom642 = sext i32 %397 to i64
  %398 = load i32, i32* %cur_blk, align 4
  %idxprom643 = sext i32 %398 to i64
  %399 = load i32, i32* %mode, align 4
  %idxprom644 = sext i32 %399 to i64
  %arrayidx645 = getelementptr inbounds [15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 %idxprom644
  %arrayidx646 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx645, i32 0, i64 %idxprom643
  %400 = load i8, i8* %arrayidx646, align 1
  %conv647 = sext i8 %400 to i32
  %idxprom648 = sext i32 %conv647 to i64
  %401 = load i32, i32* %cur_blk, align 4
  %idxprom649 = sext i32 %401 to i64
  %402 = load i32, i32* %mode, align 4
  %idxprom650 = sext i32 %402 to i64
  %arrayidx651 = getelementptr inbounds [15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 %idxprom650
  %arrayidx652 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx651, i32 0, i64 %idxprom649
  %403 = load i8, i8* %arrayidx652, align 1
  %conv653 = sext i8 %403 to i32
  %idxprom654 = sext i32 %conv653 to i64
  %404 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx655 = getelementptr inbounds i32***, i32**** %404, i64 1
  %405 = load i32***, i32**** %arrayidx655, align 8
  %arrayidx656 = getelementptr inbounds i32**, i32*** %405, i64 %idxprom654
  %406 = load i32**, i32*** %arrayidx656, align 8
  %arrayidx657 = getelementptr inbounds i32*, i32** %406, i64 %idxprom648
  %407 = load i32*, i32** %arrayidx657, align 8
  %arrayidx658 = getelementptr inbounds i32, i32* %407, i64 %idxprom642
  %408 = load i32, i32* %arrayidx658, align 4
  %add659 = add nsw i32 %396, %408
  store i32 %add659, i32* %weight_sum, align 4
  %409 = load i32, i32* %weight_sum, align 4
  %cmp660 = icmp slt i32 %409, -128
  br i1 %cmp660, label %if.then.665, label %lor.lhs.false.662

lor.lhs.false.662:                                ; preds = %for.body.624
  %410 = load i32, i32* %weight_sum, align 4
  %cmp663 = icmp sgt i32 %410, 127
  br i1 %cmp663, label %if.then.665, label %if.end.666

if.then.665:                                      ; preds = %lor.lhs.false.662, %for.body.624
  store i32 1, i32* %invalid_mode, align 4
  br label %for.end.669

if.end.666:                                       ; preds = %lor.lhs.false.662
  br label %for.inc.667

for.inc.667:                                      ; preds = %if.end.666
  %411 = load i32, i32* %cur_comp, align 4
  %inc668 = add nsw i32 %411, 1
  store i32 %inc668, i32* %cur_comp, align 4
  br label %for.cond.618

for.end.669:                                      ; preds = %if.then.665, %for.cond.618
  %412 = load i32, i32* %invalid_mode, align 4
  %cmp670 = icmp eq i32 %412, 1
  br i1 %cmp670, label %if.then.672, label %if.end.673

if.then.672:                                      ; preds = %for.end.669
  br label %for.end.677

if.end.673:                                       ; preds = %for.end.669
  br label %if.end.674

if.end.674:                                       ; preds = %if.end.673, %for.body.609
  br label %for.inc.675

for.inc.675:                                      ; preds = %if.end.674
  %413 = load i32, i32* %cur_blk, align 4
  %inc676 = add nsw i32 %413, 1
  store i32 %inc676, i32* %cur_blk, align 4
  br label %for.cond.606

for.end.677:                                      ; preds = %if.then.672, %for.cond.606
  %414 = load i32, i32* %invalid_mode, align 4
  %cmp678 = icmp eq i32 %414, 1
  br i1 %cmp678, label %if.then.680, label %if.end.707

if.then.680:                                      ; preds = %for.end.677
  %415 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation681 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %415, i32 0, i32 46
  %416 = load i32, i32* %BiPredMotionEstimation681, align 4
  %tobool682 = icmp ne i32 %416, 0
  br i1 %tobool682, label %land.lhs.true.683, label %if.end.706

land.lhs.true.683:                                ; preds = %if.then.680
  %417 = load i32, i32* %ctr16x16, align 4
  %cmp684 = icmp eq i32 %417, 2
  br i1 %cmp684, label %land.lhs.true.686, label %if.end.706

land.lhs.true.686:                                ; preds = %land.lhs.true.683
  %418 = load i32, i32* %mode, align 4
  %idxprom687 = sext i32 %418 to i64
  %419 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me688 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %419, i32 0, i32 83
  %arrayidx689 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me688, i32 0, i64 %idxprom687
  %420 = load i16, i16* %arrayidx689, align 2
  %conv690 = sext i16 %420 to i32
  %cmp691 = icmp slt i32 %conv690, 2
  br i1 %cmp691, label %land.lhs.true.693, label %if.end.706

land.lhs.true.693:                                ; preds = %land.lhs.true.686
  %421 = load i32, i32* %mode, align 4
  %cmp694 = icmp eq i32 %421, 1
  br i1 %cmp694, label %if.then.696, label %if.end.706

if.then.696:                                      ; preds = %land.lhs.true.693
  %422 = load i32, i32* %mode, align 4
  %idxprom697 = sext i32 %422 to i64
  %423 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me698 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %423, i32 0, i32 83
  %arrayidx699 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me698, i32 0, i64 %idxprom697
  %424 = load i16, i16* %arrayidx699, align 2
  %conv700 = sext i16 %424 to i32
  %add701 = add nsw i32 %conv700, 1
  %conv702 = trunc i32 %add701 to i16
  %425 = load i32, i32* %mode, align 4
  %idxprom703 = sext i32 %425 to i64
  %426 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me704 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %426, i32 0, i32 83
  %arrayidx705 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me704, i32 0, i64 %idxprom703
  store i16 %conv702, i16* %arrayidx705, align 2
  br label %if.end.706

if.end.706:                                       ; preds = %if.then.696, %land.lhs.true.693, %land.lhs.true.686, %land.lhs.true.683, %if.then.680
  br label %for.inc.748

if.end.707:                                       ; preds = %for.end.677
  br label %if.end.708

if.end.708:                                       ; preds = %if.end.707, %land.lhs.true.602, %land.lhs.true.599, %if.end.596
  %427 = load i32, i32* %mode, align 4
  %idxprom709 = sext i32 %427 to i64
  %valid710 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 3
  %arrayidx711 = getelementptr inbounds [15 x i16], [15 x i16]* %valid710, i32 0, i64 %idxprom709
  %428 = load i16, i16* %arrayidx711, align 2
  %tobool712 = icmp ne i16 %428, 0
  br i1 %tobool712, label %if.then.713, label %if.end.714

if.then.713:                                      ; preds = %if.end.708
  %429 = load i32, i32* %mode, align 4
  %430 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %431 = load i32, i32* %i16mode, align 4
  %432 = load i16, i16* %bslice, align 2
  call void @compute_mode_RD_cost(i32 %429, %struct.macroblock* %430, %struct.RD_PARAMS* byval align 8 %enc_mb, double* %min_rdcost, double* %min_rate, i32 %431, i16 signext %432, i16* %inter_skip)
  br label %if.end.714

if.end.714:                                       ; preds = %if.then.713, %if.end.708
  %433 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation715 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %433, i32 0, i32 46
  %434 = load i32, i32* %BiPredMotionEstimation715, align 4
  %tobool716 = icmp ne i32 %434, 0
  br i1 %tobool716, label %land.lhs.true.717, label %if.end.747

land.lhs.true.717:                                ; preds = %if.end.714
  %435 = load i16, i16* %bslice, align 2
  %conv718 = sext i16 %435 to i32
  %tobool719 = icmp ne i32 %conv718, 0
  br i1 %tobool719, label %land.lhs.true.720, label %if.end.747

land.lhs.true.720:                                ; preds = %land.lhs.true.717
  %436 = load i32, i32* %ctr16x16, align 4
  %cmp721 = icmp eq i32 %436, 2
  br i1 %cmp721, label %land.lhs.true.723, label %if.end.747

land.lhs.true.723:                                ; preds = %land.lhs.true.720
  %437 = load i32, i32* %mode, align 4
  %idxprom724 = sext i32 %437 to i64
  %438 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me725 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %438, i32 0, i32 83
  %arrayidx726 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me725, i32 0, i64 %idxprom724
  %439 = load i16, i16* %arrayidx726, align 2
  %conv727 = sext i16 %439 to i32
  %cmp728 = icmp slt i32 %conv727, 2
  br i1 %cmp728, label %land.lhs.true.730, label %if.end.747

land.lhs.true.730:                                ; preds = %land.lhs.true.723
  %440 = load i32, i32* %mode, align 4
  %cmp731 = icmp eq i32 %440, 1
  br i1 %cmp731, label %land.lhs.true.733, label %if.end.747

land.lhs.true.733:                                ; preds = %land.lhs.true.730
  %441 = load i8, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 0), align 1
  %conv734 = sext i8 %441 to i32
  %cmp735 = icmp eq i32 %conv734, 2
  br i1 %cmp735, label %if.then.737, label %if.end.747

if.then.737:                                      ; preds = %land.lhs.true.733
  %442 = load i32, i32* %mode, align 4
  %idxprom738 = sext i32 %442 to i64
  %443 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me739 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %443, i32 0, i32 83
  %arrayidx740 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me739, i32 0, i64 %idxprom738
  %444 = load i16, i16* %arrayidx740, align 2
  %conv741 = sext i16 %444 to i32
  %add742 = add nsw i32 %conv741, 1
  %conv743 = trunc i32 %add742 to i16
  %445 = load i32, i32* %mode, align 4
  %idxprom744 = sext i32 %445 to i64
  %446 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me745 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %446, i32 0, i32 83
  %arrayidx746 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me745, i32 0, i64 %idxprom744
  store i16 %conv743, i16* %arrayidx746, align 2
  br label %if.end.747

if.end.747:                                       ; preds = %if.then.737, %land.lhs.true.733, %land.lhs.true.730, %land.lhs.true.723, %land.lhs.true.720, %land.lhs.true.717, %if.end.714
  br label %for.inc.748

for.inc.748:                                      ; preds = %if.end.747, %if.end.706, %if.then.595, %if.then.543
  %447 = load i32, i32* %index, align 4
  %inc749 = add nsw i32 %447, 1
  store i32 %inc749, i32* %index, align 4
  br label %for.cond.523

for.end.750:                                      ; preds = %for.cond.523
  br label %for.inc.751

for.inc.751:                                      ; preds = %for.end.750, %if.then.521
  %448 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode752 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %448, i32 0, i32 17
  %449 = load i32, i32* %c_ipred_mode752, align 4
  %inc753 = add nsw i32 %449, 1
  store i32 %inc753, i32* %c_ipred_mode752, align 4
  br label %for.cond.480

for.end.754:                                      ; preds = %for.cond.480
  %450 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type755 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %450, i32 0, i32 5
  %451 = load i32, i32* %type755, align 4
  %cmp756 = icmp ne i32 %451, 2
  br i1 %cmp756, label %land.lhs.true.758, label %if.end.884

land.lhs.true.758:                                ; preds = %for.end.754
  %452 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SelectiveIntraEnable759 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %452, i32 0, i32 191
  %453 = load i32, i32* %SelectiveIntraEnable759, align 4
  %tobool760 = icmp ne i32 %453, 0
  br i1 %tobool760, label %land.lhs.true.761, label %if.end.884

land.lhs.true.761:                                ; preds = %land.lhs.true.758
  %454 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ProfileIDC = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %454, i32 0, i32 0
  %455 = load i32, i32* %ProfileIDC, align 4
  %cmp762 = icmp slt i32 %455, 100
  br i1 %cmp762, label %if.then.764, label %if.end.884

if.then.764:                                      ; preds = %land.lhs.true.761
  %456 = load double, double* %min_rate, align 8
  call void @fast_mode_intra_decision(i16* %intra_skip, double %456)
  %457 = load i16, i16* %intra_skip, align 2
  %tobool765 = icmp ne i16 %457, 0
  br i1 %tobool765, label %if.end.883, label %if.then.766

if.then.766:                                      ; preds = %if.then.764
  %458 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format767 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %458, i32 0, i32 160
  %459 = load i32, i32* %yuv_format767, align 4
  %cmp768 = icmp ne i32 %459, 0
  br i1 %cmp768, label %if.then.770, label %if.else.780

if.then.770:                                      ; preds = %if.then.766
  call void @IntraChromaPrediction(i32* %mb_available_up, i32* %mb_available_left, i32* %mb_available_up_left)
  %460 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %FastCrIntraDecision771 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %460, i32 0, i32 115
  %461 = load i32, i32* %FastCrIntraDecision771, align 4
  %tobool772 = icmp ne i32 %461, 0
  br i1 %tobool772, label %if.then.773, label %if.else.778

if.then.773:                                      ; preds = %if.then.770
  call void @IntraChromaRDDecision(%struct.RD_PARAMS* byval align 8 %enc_mb)
  %462 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode774 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %462, i32 0, i32 17
  %463 = load i32, i32* %c_ipred_mode774, align 4
  %conv775 = trunc i32 %463 to i16
  store i16 %conv775, i16* %min_chroma_pred_mode, align 2
  %464 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode776 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %464, i32 0, i32 17
  %465 = load i32, i32* %c_ipred_mode776, align 4
  %conv777 = trunc i32 %465 to i16
  store i16 %conv777, i16* %max_chroma_pred_mode, align 2
  br label %if.end.779

if.else.778:                                      ; preds = %if.then.770
  store i16 0, i16* %min_chroma_pred_mode, align 2
  store i16 3, i16* %max_chroma_pred_mode, align 2
  br label %if.end.779

if.end.779:                                       ; preds = %if.else.778, %if.then.773
  br label %if.end.781

if.else.780:                                      ; preds = %if.then.766
  store i16 0, i16* %min_chroma_pred_mode, align 2
  store i16 0, i16* %max_chroma_pred_mode, align 2
  br label %if.end.781

if.end.781:                                       ; preds = %if.else.780, %if.end.779
  store i32 9, i32* %max_index, align 4
  %466 = load i16, i16* %min_chroma_pred_mode, align 2
  %conv782 = sext i16 %466 to i32
  %467 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode783 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %467, i32 0, i32 17
  store i32 %conv782, i32* %c_ipred_mode783, align 4
  br label %for.cond.784

for.cond.784:                                     ; preds = %for.inc.879, %if.end.781
  %468 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode785 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %468, i32 0, i32 17
  %469 = load i32, i32* %c_ipred_mode785, align 4
  %470 = load i16, i16* %max_chroma_pred_mode, align 2
  %conv786 = sext i16 %470 to i32
  %cmp787 = icmp sle i32 %469, %conv786
  br i1 %cmp787, label %for.body.789, label %for.end.882

for.body.789:                                     ; preds = %for.cond.784
  %471 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format790 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %471, i32 0, i32 160
  %472 = load i32, i32* %yuv_format790, align 4
  %cmp791 = icmp ne i32 %472, 0
  br i1 %cmp791, label %land.lhs.true.793, label %if.end.829

land.lhs.true.793:                                ; preds = %for.body.789
  %473 = load i16, i16* %intra, align 2
  %tobool794 = icmp ne i16 %473, 0
  br i1 %tobool794, label %lor.lhs.false.795, label %land.lhs.true.798

lor.lhs.false.795:                                ; preds = %land.lhs.true.793
  %474 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %IntraDisableInterOnly796 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %474, i32 0, i32 84
  %475 = load i32, i32* %IntraDisableInterOnly796, align 4
  %tobool797 = icmp ne i32 %475, 0
  br i1 %tobool797, label %lor.lhs.false.806, label %land.lhs.true.798

land.lhs.true.798:                                ; preds = %lor.lhs.false.795, %land.lhs.true.793
  %476 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ChromaIntraDisable799 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %476, i32 0, i32 90
  %477 = load i32, i32* %ChromaIntraDisable799, align 4
  %cmp800 = icmp eq i32 %477, 1
  br i1 %cmp800, label %land.lhs.true.802, label %lor.lhs.false.806

land.lhs.true.802:                                ; preds = %land.lhs.true.798
  %478 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode803 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %478, i32 0, i32 17
  %479 = load i32, i32* %c_ipred_mode803, align 4
  %cmp804 = icmp ne i32 %479, 0
  br i1 %cmp804, label %if.then.828, label %lor.lhs.false.806

lor.lhs.false.806:                                ; preds = %land.lhs.true.802, %land.lhs.true.798, %lor.lhs.false.795
  %480 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode807 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %480, i32 0, i32 17
  %481 = load i32, i32* %c_ipred_mode807, align 4
  %cmp808 = icmp eq i32 %481, 2
  br i1 %cmp808, label %land.lhs.true.810, label %lor.lhs.false.812

land.lhs.true.810:                                ; preds = %lor.lhs.false.806
  %482 = load i32, i32* %mb_available_up, align 4
  %tobool811 = icmp ne i32 %482, 0
  br i1 %tobool811, label %lor.lhs.false.812, label %if.then.828

lor.lhs.false.812:                                ; preds = %land.lhs.true.810, %lor.lhs.false.806
  %483 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode813 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %483, i32 0, i32 17
  %484 = load i32, i32* %c_ipred_mode813, align 4
  %cmp814 = icmp eq i32 %484, 1
  br i1 %cmp814, label %land.lhs.true.816, label %lor.lhs.false.818

land.lhs.true.816:                                ; preds = %lor.lhs.false.812
  %485 = load i32, i32* %mb_available_left, align 4
  %tobool817 = icmp ne i32 %485, 0
  br i1 %tobool817, label %lor.lhs.false.818, label %if.then.828

lor.lhs.false.818:                                ; preds = %land.lhs.true.816, %lor.lhs.false.812
  %486 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode819 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %486, i32 0, i32 17
  %487 = load i32, i32* %c_ipred_mode819, align 4
  %cmp820 = icmp eq i32 %487, 3
  br i1 %cmp820, label %land.lhs.true.822, label %if.end.829

land.lhs.true.822:                                ; preds = %lor.lhs.false.818
  %488 = load i32, i32* %mb_available_left, align 4
  %tobool823 = icmp ne i32 %488, 0
  br i1 %tobool823, label %lor.lhs.false.824, label %if.then.828

lor.lhs.false.824:                                ; preds = %land.lhs.true.822
  %489 = load i32, i32* %mb_available_up, align 4
  %tobool825 = icmp ne i32 %489, 0
  br i1 %tobool825, label %lor.lhs.false.826, label %if.then.828

lor.lhs.false.826:                                ; preds = %lor.lhs.false.824
  %490 = load i32, i32* %mb_available_up_left, align 4
  %tobool827 = icmp ne i32 %490, 0
  br i1 %tobool827, label %if.end.829, label %if.then.828

if.then.828:                                      ; preds = %lor.lhs.false.826, %lor.lhs.false.824, %land.lhs.true.822, %land.lhs.true.816, %land.lhs.true.810, %land.lhs.true.802
  br label %for.inc.879

if.end.829:                                       ; preds = %lor.lhs.false.826, %lor.lhs.false.818, %for.body.789
  store i32 5, i32* %index, align 4
  br label %for.cond.830

for.cond.830:                                     ; preds = %for.inc.876, %if.end.829
  %491 = load i32, i32* %index, align 4
  %492 = load i32, i32* %max_index, align 4
  %cmp831 = icmp slt i32 %491, %492
  br i1 %cmp831, label %for.body.833, label %for.end.878

for.body.833:                                     ; preds = %for.cond.830
  %493 = load i32, i32* %index, align 4
  %idxprom834 = sext i32 %493 to i64
  %arrayidx835 = getelementptr inbounds [9 x i32], [9 x i32]* @mb_mode_table, i32 0, i64 %idxprom834
  %494 = load i32, i32* %arrayidx835, align 4
  store i32 %494, i32* %mode, align 4
  %495 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SkipIntraInInterSlices836 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %495, i32 0, i32 67
  %496 = load i32, i32* %SkipIntraInInterSlices836, align 4
  %tobool837 = icmp ne i32 %496, 0
  br i1 %tobool837, label %land.lhs.true.838, label %if.end.852

land.lhs.true.838:                                ; preds = %for.body.833
  %497 = load i16, i16* %intra, align 2
  %tobool839 = icmp ne i16 %497, 0
  br i1 %tobool839, label %if.end.852, label %land.lhs.true.840

land.lhs.true.840:                                ; preds = %land.lhs.true.838
  %498 = load i32, i32* %mode, align 4
  %cmp841 = icmp sge i32 %498, 10
  br i1 %cmp841, label %land.lhs.true.843, label %if.end.852

land.lhs.true.843:                                ; preds = %land.lhs.true.840
  %499 = load i16, i16* @best_mode, align 2
  %conv844 = sext i16 %499 to i32
  %cmp845 = icmp sle i32 %conv844, 3
  br i1 %cmp845, label %land.lhs.true.847, label %if.end.852

land.lhs.true.847:                                ; preds = %land.lhs.true.843
  %500 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp848 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %500, i32 0, i32 12
  %501 = load i32, i32* %cbp848, align 4
  %cmp849 = icmp eq i32 %501, 0
  br i1 %cmp849, label %if.then.851, label %if.end.852

if.then.851:                                      ; preds = %land.lhs.true.847
  br label %for.inc.876

if.end.852:                                       ; preds = %land.lhs.true.847, %land.lhs.true.843, %land.lhs.true.840, %land.lhs.true.838, %for.body.833
  %502 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format853 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %502, i32 0, i32 160
  %503 = load i32, i32* %yuv_format853, align 4
  %cmp854 = icmp ne i32 %503, 0
  br i1 %cmp854, label %if.then.856, label %if.end.869

if.then.856:                                      ; preds = %if.end.852
  store i32 0, i32* %i16mode, align 4
  %504 = load i16, i16* %bslice, align 2
  %conv857 = sext i16 %504 to i32
  %tobool858 = icmp ne i32 %conv857, 0
  br i1 %tobool858, label %land.lhs.true.859, label %lor.lhs.false.862

land.lhs.true.859:                                ; preds = %if.then.856
  %505 = load i32, i32* %mode, align 4
  %cmp860 = icmp eq i32 %505, 0
  br i1 %cmp860, label %if.then.867, label %lor.lhs.false.862

lor.lhs.false.862:                                ; preds = %land.lhs.true.859, %if.then.856
  %506 = load i16, i16* %islice, align 2
  %tobool863 = icmp ne i16 %506, 0
  br i1 %tobool863, label %if.end.868, label %land.lhs.true.864

land.lhs.true.864:                                ; preds = %lor.lhs.false.862
  %507 = load i32, i32* %mode, align 4
  %cmp865 = icmp eq i32 %507, 1
  br i1 %cmp865, label %if.then.867, label %if.end.868

if.then.867:                                      ; preds = %land.lhs.true.864, %land.lhs.true.859
  br label %for.inc.876

if.end.868:                                       ; preds = %land.lhs.true.864, %lor.lhs.false.862
  br label %if.end.869

if.end.869:                                       ; preds = %if.end.868, %if.end.852
  %508 = load i32, i32* %mode, align 4
  %idxprom870 = sext i32 %508 to i64
  %valid871 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 3
  %arrayidx872 = getelementptr inbounds [15 x i16], [15 x i16]* %valid871, i32 0, i64 %idxprom870
  %509 = load i16, i16* %arrayidx872, align 2
  %tobool873 = icmp ne i16 %509, 0
  br i1 %tobool873, label %if.then.874, label %if.end.875

if.then.874:                                      ; preds = %if.end.869
  %510 = load i32, i32* %mode, align 4
  %511 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %512 = load i32, i32* %i16mode, align 4
  %513 = load i16, i16* %bslice, align 2
  call void @compute_mode_RD_cost(i32 %510, %struct.macroblock* %511, %struct.RD_PARAMS* byval align 8 %enc_mb, double* %min_rdcost, double* %min_rate, i32 %512, i16 signext %513, i16* %inter_skip)
  br label %if.end.875

if.end.875:                                       ; preds = %if.then.874, %if.end.869
  br label %for.inc.876

for.inc.876:                                      ; preds = %if.end.875, %if.then.867, %if.then.851
  %514 = load i32, i32* %index, align 4
  %inc877 = add nsw i32 %514, 1
  store i32 %inc877, i32* %index, align 4
  br label %for.cond.830

for.end.878:                                      ; preds = %for.cond.830
  br label %for.inc.879

for.inc.879:                                      ; preds = %for.end.878, %if.then.828
  %515 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode880 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %515, i32 0, i32 17
  %516 = load i32, i32* %c_ipred_mode880, align 4
  %inc881 = add nsw i32 %516, 1
  store i32 %inc881, i32* %c_ipred_mode880, align 4
  br label %for.cond.784

for.end.882:                                      ; preds = %for.cond.784
  br label %if.end.883

if.end.883:                                       ; preds = %for.end.882, %if.then.764
  br label %if.end.884

if.end.884:                                       ; preds = %if.end.883, %land.lhs.true.761, %land.lhs.true.758, %for.end.754
  br label %if.end.885

if.end.885:                                       ; preds = %if.end.884, %if.end.441
  %517 = load i32, i32* %rerun, align 4
  %cmp886 = icmp eq i32 %517, 0
  br i1 %cmp886, label %if.then.888, label %if.end.905

if.then.888:                                      ; preds = %if.end.885
  %518 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %518, i32 0, i32 8
  %519 = load i32, i32* %mb_type, align 4
  %cmp889 = icmp eq i32 %519, 9
  br i1 %cmp889, label %lor.end.903, label %lor.lhs.false.891

lor.lhs.false.891:                                ; preds = %if.then.888
  %520 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type892 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %520, i32 0, i32 8
  %521 = load i32, i32* %mb_type892, align 4
  %cmp893 = icmp eq i32 %521, 10
  br i1 %cmp893, label %lor.end.903, label %lor.lhs.false.895

lor.lhs.false.895:                                ; preds = %lor.lhs.false.891
  %522 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type896 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %522, i32 0, i32 8
  %523 = load i32, i32* %mb_type896, align 4
  %cmp897 = icmp eq i32 %523, 13
  br i1 %cmp897, label %lor.end.903, label %lor.rhs.899

lor.rhs.899:                                      ; preds = %lor.lhs.false.895
  %524 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type900 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %524, i32 0, i32 8
  %525 = load i32, i32* %mb_type900, align 4
  %cmp901 = icmp eq i32 %525, 14
  br label %lor.end.903

lor.end.903:                                      ; preds = %lor.rhs.899, %lor.lhs.false.895, %lor.lhs.false.891, %if.then.888
  %526 = phi i1 [ true, %lor.lhs.false.895 ], [ true, %lor.lhs.false.891 ], [ true, %if.then.888 ], [ %cmp901, %lor.rhs.899 ]
  %lor.ext904 = zext i1 %526 to i32
  store i32 %lor.ext904, i32* %intra1, align 4
  br label %if.end.905

if.end.905:                                       ; preds = %lor.end.903, %if.end.885
  br label %for.inc.906

for.inc.906:                                      ; preds = %if.end.905
  %527 = load i32, i32* %rerun, align 4
  %inc907 = add nsw i32 %527, 1
  store i32 %inc907, i32* %rerun, align 4
  br label %for.cond

for.end.908:                                      ; preds = %for.cond
  %528 = load i32, i32* @cbp, align 4
  %cmp909 = icmp ne i32 %528, 0
  br i1 %cmp909, label %land.lhs.true.915, label %lor.lhs.false.911

lor.lhs.false.911:                                ; preds = %for.end.908
  %529 = load i16, i16* @best_mode, align 2
  %conv912 = sext i16 %529 to i32
  %cmp913 = icmp eq i32 %conv912, 10
  br i1 %cmp913, label %land.lhs.true.915, label %if.else.920

land.lhs.true.915:                                ; preds = %lor.lhs.false.911, %for.end.908
  %530 = load i16, i16* @best_mode, align 2
  %conv916 = sext i16 %530 to i32
  %cmp917 = icmp ne i32 %conv916, 14
  br i1 %cmp917, label %if.then.919, label %if.else.920

if.then.919:                                      ; preds = %land.lhs.true.915
  %531 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %prev_cbp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %531, i32 0, i32 37
  store i32 1, i32* %prev_cbp, align 4
  br label %if.end.935

if.else.920:                                      ; preds = %land.lhs.true.915, %lor.lhs.false.911
  %532 = load i32, i32* @cbp, align 4
  %cmp921 = icmp eq i32 %532, 0
  br i1 %cmp921, label %land.lhs.true.923, label %lor.lhs.false.926

land.lhs.true.923:                                ; preds = %if.else.920
  %533 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable924 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %533, i32 0, i32 157
  %534 = load i32, i32* %RCEnable924, align 4
  %tobool925 = icmp ne i32 %534, 0
  br i1 %tobool925, label %lor.lhs.false.926, label %if.then.930

lor.lhs.false.926:                                ; preds = %land.lhs.true.923, %if.else.920
  %535 = load i16, i16* @best_mode, align 2
  %conv927 = sext i16 %535 to i32
  %cmp928 = icmp eq i32 %conv927, 14
  br i1 %cmp928, label %if.then.930, label %if.end.934

if.then.930:                                      ; preds = %lor.lhs.false.926, %land.lhs.true.923
  %536 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %delta_qp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %536, i32 0, i32 1
  store i32 0, i32* %delta_qp, align 4
  %537 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %prev_qp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %537, i32 0, i32 35
  %538 = load i32, i32* %prev_qp, align 4
  %539 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %539, i32 0, i32 2
  store i32 %538, i32* %qp, align 4
  %540 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  call void @set_chroma_qp(%struct.macroblock* %540)
  %541 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %qp931 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %541, i32 0, i32 2
  %542 = load i32, i32* %qp931, align 4
  %543 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp932 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %543, i32 0, i32 9
  store i32 %542, i32* %qp932, align 4
  %544 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %prev_cbp933 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %544, i32 0, i32 37
  store i32 0, i32* %prev_cbp933, align 4
  br label %if.end.934

if.end.934:                                       ; preds = %if.then.930, %lor.lhs.false.926
  br label %if.end.935

if.end.935:                                       ; preds = %if.end.934, %if.then.919
  call void @set_stored_macroblock_parameters()
  %545 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable936 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %545, i32 0, i32 157
  %546 = load i32, i32* %RCEnable936, align 4
  %tobool937 = icmp ne i32 %546, 0
  br i1 %tobool937, label %if.then.938, label %if.end.939

if.then.938:                                      ; preds = %if.end.935
  %547 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %548 = load i16, i16* @best_mode, align 2
  call void @update_rc(%struct.macroblock* %547, i16 signext %548)
  br label %if.end.939

if.end.939:                                       ; preds = %if.then.938, %if.end.935
  %549 = load double, double* %min_rdcost, align 8
  %550 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %min_rdcost940 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %550, i32 0, i32 0
  store double %549, double* %min_rdcost940, align 8
  %551 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %551, i32 0, i32 100
  %552 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool941 = icmp ne i32 %552, 0
  br i1 %tobool941, label %land.lhs.true.942, label %if.end.974

land.lhs.true.942:                                ; preds = %if.end.939
  %553 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr943 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %553, i32 0, i32 3
  %554 = load i32, i32* %current_mb_nr943, align 4
  %rem = srem i32 %554, 2
  %tobool944 = icmp ne i32 %rem, 0
  br i1 %tobool944, label %land.lhs.true.945, label %if.end.974

land.lhs.true.945:                                ; preds = %land.lhs.true.942
  %555 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type946 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %555, i32 0, i32 8
  %556 = load i32, i32* %mb_type946, align 4
  %tobool947 = icmp ne i32 %556, 0
  br i1 %tobool947, label %cond.true.948, label %cond.false.949

cond.true.948:                                    ; preds = %land.lhs.true.945
  br i1 false, label %land.lhs.true.956, label %if.end.974

cond.false.949:                                   ; preds = %land.lhs.true.945
  %557 = load i16, i16* %bslice, align 2
  %conv950 = sext i16 %557 to i32
  %tobool951 = icmp ne i32 %conv950, 0
  br i1 %tobool951, label %cond.true.952, label %cond.false.955

cond.true.952:                                    ; preds = %cond.false.949
  %558 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp953 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %558, i32 0, i32 12
  %559 = load i32, i32* %cbp953, align 4
  %tobool954 = icmp ne i32 %559, 0
  br i1 %tobool954, label %if.end.974, label %land.lhs.true.956

cond.false.955:                                   ; preds = %cond.false.949
  br i1 true, label %land.lhs.true.956, label %if.end.974

land.lhs.true.956:                                ; preds = %cond.false.955, %cond.true.952, %cond.true.948
  %560 = load %struct.macroblock*, %struct.macroblock** %prevMB, align 8
  %mb_type957 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %560, i32 0, i32 8
  %561 = load i32, i32* %mb_type957, align 4
  %tobool958 = icmp ne i32 %561, 0
  br i1 %tobool958, label %cond.true.959, label %cond.false.960

cond.true.959:                                    ; preds = %land.lhs.true.956
  br i1 false, label %land.lhs.true.967, label %if.end.974

cond.false.960:                                   ; preds = %land.lhs.true.956
  %562 = load i16, i16* %bslice, align 2
  %conv961 = sext i16 %562 to i32
  %tobool962 = icmp ne i32 %conv961, 0
  br i1 %tobool962, label %cond.true.963, label %cond.false.966

cond.true.963:                                    ; preds = %cond.false.960
  %563 = load %struct.macroblock*, %struct.macroblock** %prevMB, align 8
  %cbp964 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %563, i32 0, i32 12
  %564 = load i32, i32* %cbp964, align 4
  %tobool965 = icmp ne i32 %564, 0
  br i1 %tobool965, label %if.end.974, label %land.lhs.true.967

cond.false.966:                                   ; preds = %cond.false.960
  br i1 true, label %land.lhs.true.967, label %if.end.974

land.lhs.true.967:                                ; preds = %cond.false.966, %cond.true.963, %cond.true.959
  %call968 = call i32 @field_flag_inference()
  %curr_mb_field = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 5
  %565 = load i16, i16* %curr_mb_field, align 2
  %conv969 = sext i16 %565 to i32
  %cmp970 = icmp eq i32 %call968, %conv969
  br i1 %cmp970, label %if.end.974, label %if.then.972

if.then.972:                                      ; preds = %land.lhs.true.967
  %566 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %min_rdcost973 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %566, i32 0, i32 0
  store double 1.000000e+30, double* %min_rdcost973, align 8
  br label %if.end.974

if.end.974:                                       ; preds = %if.then.972, %land.lhs.true.967, %cond.false.966, %cond.true.963, %cond.true.959, %cond.false.955, %cond.true.952, %cond.true.948, %land.lhs.true.942, %if.end.939
  %567 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RestrictRef = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %567, i32 0, i32 128
  %568 = load i32, i32* %RestrictRef, align 4
  %tobool975 = icmp ne i32 %568, 0
  br i1 %tobool975, label %if.then.976, label %if.end.978

if.then.976:                                      ; preds = %if.end.974
  %569 = load i16, i16* %intra, align 2
  %conv977 = sext i16 %569 to i32
  %570 = load i32, i32* %intra1, align 4
  %571 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  call void @update_refresh_map(i32 %conv977, i32 %570, %struct.macroblock* %571)
  br label %if.end.978

if.end.978:                                       ; preds = %if.then.976, %if.end.974
  %572 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode979 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %572, i32 0, i32 169
  %573 = load i32, i32* %SearchMode979, align 4
  %cmp980 = icmp eq i32 %573, 1
  br i1 %cmp980, label %if.then.982, label %if.else.988

if.then.982:                                      ; preds = %if.end.978
  %574 = load i16, i16* @best_mode, align 2
  %conv983 = sext i16 %574 to i32
  %list_offset984 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 4
  %arrayidx985 = getelementptr inbounds [2 x i16], [2 x i16]* %list_offset984, i32 0, i64 0
  %575 = load i16, i16* %arrayidx985, align 2
  %idxprom986 = sext i16 %575 to i64
  %arrayidx987 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom986
  %576 = load i32, i32* %arrayidx987, align 4
  call void @UMHEX_skip_intrabk_SAD(i32 %conv983, i32 %576)
  br label %if.end.999

if.else.988:                                      ; preds = %if.end.978
  %577 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode989 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %577, i32 0, i32 169
  %578 = load i32, i32* %SearchMode989, align 4
  %cmp990 = icmp eq i32 %578, 2
  br i1 %cmp990, label %if.then.992, label %if.end.998

if.then.992:                                      ; preds = %if.else.988
  %579 = load i16, i16* @best_mode, align 2
  %conv993 = sext i16 %579 to i32
  %list_offset994 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 4
  %arrayidx995 = getelementptr inbounds [2 x i16], [2 x i16]* %list_offset994, i32 0, i64 0
  %580 = load i16, i16* %arrayidx995, align 2
  %idxprom996 = sext i16 %580 to i64
  %arrayidx997 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom996
  %581 = load i32, i32* %arrayidx997, align 4
  call void @smpUMHEX_skip_intrabk_SAD(i32 %conv993, i32 %581)
  br label %if.end.998

if.end.998:                                       ; preds = %if.then.992, %if.else.988
  br label %if.end.999

if.end.999:                                       ; preds = %if.end.998, %if.then.982
  %582 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %582, i32 0, i32 23
  %583 = load i32, i32* %UseConstrainedIntraPred, align 4
  %tobool1000 = icmp ne i32 %583, 0
  br i1 %tobool1000, label %land.lhs.true.1001, label %if.end.1030

land.lhs.true.1001:                               ; preds = %if.end.999
  %584 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type1002 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %584, i32 0, i32 5
  %585 = load i32, i32* %type1002, align 4
  %cmp1003 = icmp eq i32 %585, 0
  br i1 %cmp1003, label %if.then.1009, label %lor.lhs.false.1005

lor.lhs.false.1005:                               ; preds = %land.lhs.true.1001
  %586 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type1006 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %586, i32 0, i32 5
  %587 = load i32, i32* %type1006, align 4
  %cmp1007 = icmp eq i32 %587, 1
  br i1 %cmp1007, label %if.then.1009, label %if.end.1030

if.then.1009:                                     ; preds = %lor.lhs.false.1005, %land.lhs.true.1001
  %588 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type1010 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %588, i32 0, i32 8
  %589 = load i32, i32* %mb_type1010, align 4
  %cmp1011 = icmp eq i32 %589, 9
  br i1 %cmp1011, label %lor.end.1025, label %lor.lhs.false.1013

lor.lhs.false.1013:                               ; preds = %if.then.1009
  %590 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type1014 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %590, i32 0, i32 8
  %591 = load i32, i32* %mb_type1014, align 4
  %cmp1015 = icmp eq i32 %591, 10
  br i1 %cmp1015, label %lor.end.1025, label %lor.lhs.false.1017

lor.lhs.false.1017:                               ; preds = %lor.lhs.false.1013
  %592 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type1018 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %592, i32 0, i32 8
  %593 = load i32, i32* %mb_type1018, align 4
  %cmp1019 = icmp eq i32 %593, 13
  br i1 %cmp1019, label %lor.end.1025, label %lor.rhs.1021

lor.rhs.1021:                                     ; preds = %lor.lhs.false.1017
  %594 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type1022 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %594, i32 0, i32 8
  %595 = load i32, i32* %mb_type1022, align 4
  %cmp1023 = icmp eq i32 %595, 14
  br label %lor.end.1025

lor.end.1025:                                     ; preds = %lor.rhs.1021, %lor.lhs.false.1017, %lor.lhs.false.1013, %if.then.1009
  %596 = phi i1 [ true, %lor.lhs.false.1017 ], [ true, %lor.lhs.false.1013 ], [ true, %if.then.1009 ], [ %cmp1023, %lor.rhs.1021 ]
  %lor.ext1026 = zext i1 %596 to i32
  %597 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr1027 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %597, i32 0, i32 3
  %598 = load i32, i32* %current_mb_nr1027, align 4
  %idxprom1028 = sext i32 %598 to i64
  %599 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %599, i32 0, i32 63
  %600 = load i32*, i32** %intra_block, align 8
  %arrayidx1029 = getelementptr inbounds i32, i32* %600, i64 %idxprom1028
  store i32 %lor.ext1026, i32* %arrayidx1029, align 4
  br label %if.end.1030

if.end.1030:                                      ; preds = %lor.end.1025, %lor.lhs.false.1005, %if.end.999
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

declare void @compute_mode_RD_cost(i32, %struct.macroblock*, %struct.RD_PARAMS* byval align 8, double*, double*, i32, i16 signext, i16*) #2

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

declare void @FindSkipModeMotionVector() #2

declare void @adjust_mb16x16_cost(i32) #2

declare void @submacroblock_mode_decision(%struct.RD_PARAMS* byval align 8, %struct.RD_8x8DATA*, %struct.macroblock*, i32***, i32*, i16 signext, i32, i32*, i32*, i32*, i32) #2

declare void @reset_coding_state(%struct.CSobj*) #2

declare void @rc_store_diff(i32, i32, [16 x i16]*) #2

declare void @IntraChromaPrediction(i32*, i32*, i32*) #2

declare void @IntraChromaRDDecision(%struct.RD_PARAMS* byval align 8) #2

declare void @fast_mode_intra_decision(i16*, double) #2

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
