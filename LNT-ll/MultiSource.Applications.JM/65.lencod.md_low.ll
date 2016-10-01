; ModuleID = './MultiSource.Applications.JM/65.lencod.md_low.bc'
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
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16****, i16****, i16*****, i16***, i8*, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }
%struct.rc_generic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32*, i64, i32, i32, i32, [5 x i32], i32, [5 x i32], i32, i32 }
%struct.RD_PARAMS = type { double, [3 x double], [3 x i32], [15 x i16], [2 x i16], i16, [2 x i16], [2 x i32] }

@encode_one_macroblock_low.best_ref = private unnamed_addr constant [2 x i8] c"\00\FF", align 1
@encode_one_macroblock_low.bmcost = private unnamed_addr constant [5 x i32] [i32 2147483647, i32 0, i32 0, i32 0, i32 0], align 16
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
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@cofAC = external global i32****, align 8
@enc_picture = external global %struct.storable_picture*, align 8
@temp_imgY = internal global [16 x [16 x i16]] zeroinitializer, align 16
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
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
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
define void @encode_one_macroblock_low() #0 {
entry:
  %block = alloca i32, align 4
  %mode = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %dummy = alloca i32, align 4
  %MEPos = alloca i32, align 4
  %best_pdir = alloca i8, align 1
  %enc_mb = alloca %struct.RD_PARAMS, align 8
  %best_ref = alloca [2 x i8], align 1
  %bmcost = alloca [5 x i32], align 16
  %cost = alloca i32, align 4
  %min_cost = alloca i32, align 4
  %cost_direct = alloca i32, align 4
  %have_direct = alloca i32, align 4
  %i16mode = alloca i32, align 4
  %intra1 = alloca i32, align 4
  %temp_cpb = alloca i32, align 4
  %best_transform_flag = alloca i32, align 4
  %cost8x8_direct = alloca i32, align 4
  %islice = alloca i16, align 2
  %bslice = alloca i16, align 2
  %pslice = alloca i16, align 2
  %intra = alloca i16, align 2
  %lambda_mf = alloca [3 x i32], align 4
  %pix_x = alloca i32, align 4
  %pix_y = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  %prev_mb_nr = alloca i32, align 4
  %prevMB = alloca %struct.macroblock*, align 8
  %ipredmodes = alloca i8**, align 8
  %allmvs = alloca i16*, align 8
  %i4p = alloca i32****, align 8
  %tmp_8x8_flag = alloca i32, align 4
  %tmp_no_mbpart = alloca i32, align 4
  %inter_skip = alloca i16, align 2
  %0 = bitcast [2 x i8]* %best_ref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @encode_one_macroblock_low.best_ref, i32 0, i32 0), i64 2, i32 1, i1 false)
  %1 = bitcast [5 x i32]* %bmcost to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([5 x i32]* @encode_one_macroblock_low.bmcost to i8*), i64 20, i32 16, i1 false)
  store i32 0, i32* %cost, align 4
  store i32 2147483647, i32* %min_cost, align 4
  store i32 0, i32* %cost_direct, align 4
  store i32 0, i32* %have_direct, align 4
  store i32 0, i32* %i16mode, align 4
  store i32 0, i32* %intra1, align 4
  store i32 0, i32* %temp_cpb, align 4
  store i32 0, i32* %best_transform_flag, align 4
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
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 31
  %34 = load i8**, i8*** %ipredmode, align 8
  store i8** %34, i8*** %ipredmodes, align 8
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 80
  %36 = load i16******, i16******* %all_mv, align 8
  %arrayidx31 = getelementptr inbounds i16*****, i16****** %36, i64 0
  %37 = load i16*****, i16****** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds i16****, i16***** %37, i64 0
  %38 = load i16****, i16***** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds i16***, i16**** %38, i64 0
  %39 = load i16***, i16**** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i16**, i16*** %39, i64 0
  %40 = load i16**, i16*** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i16*, i16** %40, i64 0
  %41 = load i16*, i16** %arrayidx35, align 8
  store i16* %41, i16** %allmvs, align 8
  store i16 0, i16* %inter_skip, align 2
  %42 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %42, i32 0, i32 169
  %43 = load i32, i32* %SearchMode, align 4
  %cmp36 = icmp eq i32 %43, 1
  br i1 %cmp36, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  call void @UMHEX_decide_intrabk_SAD()
  br label %if.end.42

if.else:                                          ; preds = %cond.end
  %44 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode38 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %44, i32 0, i32 169
  %45 = load i32, i32* %SearchMode38, align 4
  %cmp39 = icmp eq i32 %45, 2
  br i1 %cmp39, label %if.then.41, label %if.end

if.then.41:                                       ; preds = %if.else
  call void @smpUMHEX_decide_intrabk_SAD()
  br label %if.end

if.end:                                           ; preds = %if.then.41, %if.else
  br label %if.end.42

if.end.42:                                        ; preds = %if.end, %if.then
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr43 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 3
  %47 = load i32, i32* %current_mb_nr43, align 4
  %call44 = call i32 @RandomIntra(i32 %47)
  %48 = load i16, i16* %intra, align 2
  %conv45 = sext i16 %48 to i32
  %or = or i32 %conv45, %call44
  %conv46 = trunc i32 %or to i16
  store i16 %conv46, i16* %intra, align 2
  %49 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %50 = load i16, i16* %intra, align 2
  %conv47 = sext i16 %50 to i32
  %51 = load i16, i16* %bslice, align 2
  %conv48 = sext i16 %51 to i32
  call void @init_enc_mb_params(%struct.macroblock* %49, %struct.RD_PARAMS* %enc_mb, i32 %conv47, i32 %conv48)
  %52 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %52, i32 0, i32 17
  store i32 0, i32* %c_ipred_mode, align 4
  %53 = load %struct.CSobj*, %struct.CSobj** @cs_cm, align 8
  call void @store_coding_state(%struct.CSobj* %53)
  %54 = load i16, i16* %intra, align 2
  %tobool49 = icmp ne i16 %54, 0
  br i1 %tobool49, label %if.else.352, label %if.then.50

if.then.50:                                       ; preds = %if.end.42
  store i16 1, i16* @best_mode, align 2
  %55 = load i16, i16* %bslice, align 2
  %tobool51 = icmp ne i16 %55, 0
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.then.50
  call void @Get_Direct_Motion_Vectors()
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.then.50
  %56 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %CtxAdptLagrangeMult = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %56, i32 0, i32 114
  %57 = load i32, i32* %CtxAdptLagrangeMult, align 4
  %cmp54 = icmp eq i32 %57, 1
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.53
  call void @get_initial_mb16x16_cost()
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.end.53
  store i32 2147483647, i32* %min_cost, align 4
  store i32 1, i32* %mode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.233, %if.end.57
  %58 = load i32, i32* %mode, align 4
  %cmp58 = icmp slt i32 %58, 4
  br i1 %cmp58, label %for.body, label %for.end.235

for.body:                                         ; preds = %for.cond
  store i16 0, i16* @bi_pred_me, align 2
  %59 = load i32, i32* %mode, align 4
  %idxprom60 = sext i32 %59 to i64
  %60 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bi_pred_me = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %60, i32 0, i32 83
  %arrayidx61 = getelementptr inbounds [15 x i16], [15 x i16]* %bi_pred_me, i32 0, i64 %idxprom60
  store i16 0, i16* %arrayidx61, align 2
  %61 = load i32, i32* %mode, align 4
  %idxprom62 = sext i32 %61 to i64
  %valid = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 3
  %arrayidx63 = getelementptr inbounds [15 x i16], [15 x i16]* %valid, i32 0, i64 %idxprom62
  %62 = load i16, i16* %arrayidx63, align 2
  %conv64 = sext i16 %62 to i32
  %tobool65 = icmp ne i32 %conv64, 0
  br i1 %tobool65, label %land.lhs.true.66, label %if.end.232

land.lhs.true.66:                                 ; preds = %for.body
  %63 = load i16, i16* %inter_skip, align 2
  %tobool67 = icmp ne i16 %63, 0
  br i1 %tobool67, label %if.end.232, label %if.then.68

if.then.68:                                       ; preds = %land.lhs.true.66
  store i32 0, i32* %cost, align 4
  store i32 0, i32* %block, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.211, %if.then.68
  %64 = load i32, i32* %block, align 4
  %65 = load i32, i32* %mode, align 4
  %cmp70 = icmp eq i32 %65, 1
  %cond72 = select i1 %cmp70, i32 1, i32 2
  %cmp73 = icmp slt i32 %64, %cond72
  br i1 %cmp73, label %for.body.75, label %for.end.213

for.body.75:                                      ; preds = %for.cond.69
  store i32 0, i32* %MEPos, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc, %for.body.75
  %66 = load i32, i32* %MEPos, align 4
  %cmp77 = icmp slt i32 %66, 3
  br i1 %cmp77, label %for.body.79, label %for.end

for.body.79:                                      ; preds = %for.cond.76
  %67 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %CtxAdptLagrangeMult80 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %67, i32 0, i32 114
  %68 = load i32, i32* %CtxAdptLagrangeMult80, align 4
  %cmp81 = icmp eq i32 %68, 0
  br i1 %cmp81, label %cond.true.83, label %cond.false.87

cond.true.83:                                     ; preds = %for.body.79
  %69 = load i32, i32* %MEPos, align 4
  %idxprom84 = sext i32 %69 to i64
  %lambda_mf85 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 2
  %arrayidx86 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf85, i32 0, i64 %idxprom84
  %70 = load i32, i32* %arrayidx86, align 4
  br label %cond.end.94

cond.false.87:                                    ; preds = %for.body.79
  %71 = load i32, i32* %MEPos, align 4
  %idxprom88 = sext i32 %71 to i64
  %lambda_mf89 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 2
  %arrayidx90 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf89, i32 0, i64 %idxprom88
  %72 = load i32, i32* %arrayidx90, align 4
  %conv91 = sitofp i32 %72 to double
  %73 = load double, double* @lambda_mf_factor, align 8
  %call92 = call double @sqrt(double %73) #1
  %mul = fmul double %conv91, %call92
  %conv93 = fptosi double %mul to i32
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.87, %cond.true.83
  %cond95 = phi i32 [ %70, %cond.true.83 ], [ %conv93, %cond.false.87 ]
  %74 = load i32, i32* %MEPos, align 4
  %idxprom96 = sext i32 %74 to i64
  %arrayidx97 = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf, i32 0, i64 %idxprom96
  store i32 %cond95, i32* %arrayidx97, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.94
  %75 = load i32, i32* %MEPos, align 4
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* %MEPos, align 4
  br label %for.cond.76

for.end:                                          ; preds = %for.cond.76
  %76 = load i32, i32* %mode, align 4
  %77 = load i32, i32* %block, align 4
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %lambda_mf, i32 0, i32 0
  call void @PartitionMotionSearch(i32 %76, i32 %77, i32* %arraydecay)
  %78 = load i32, i32* %block, align 4
  %cmp98 = icmp eq i32 %78, 1
  br i1 %cmp98, label %land.rhs.100, label %land.end.103

land.rhs.100:                                     ; preds = %for.end
  %79 = load i32, i32* %mode, align 4
  %cmp101 = icmp eq i32 %79, 2
  br label %land.end.103

land.end.103:                                     ; preds = %land.rhs.100, %for.end
  %80 = phi i1 [ false, %for.end ], [ %cmp101, %land.rhs.100 ]
  %cond104 = select i1 %80, i32 2, i32 0
  store i32 %cond104, i32* %j, align 4
  %81 = load i32, i32* %block, align 4
  %cmp105 = icmp eq i32 %81, 1
  br i1 %cmp105, label %land.rhs.107, label %land.end.110

land.rhs.107:                                     ; preds = %land.end.103
  %82 = load i32, i32* %mode, align 4
  %cmp108 = icmp eq i32 %82, 3
  br label %land.end.110

land.end.110:                                     ; preds = %land.rhs.107, %land.end.103
  %83 = phi i1 [ false, %land.end.103 ], [ %cmp108, %land.rhs.107 ]
  %cond111 = select i1 %83, i32 2, i32 0
  store i32 %cond111, i32* %i, align 4
  %arrayidx112 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i64 0
  store i32 2147483647, i32* %arrayidx112, align 4
  %84 = load i32, i32* %block, align 4
  %85 = load i32, i32* %mode, align 4
  %arraydecay113 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i32 0
  %arraydecay114 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i32 0
  call void @list_prediction_cost(i32 0, i32 %84, i32 %85, %struct.RD_PARAMS* byval align 8 %enc_mb, i32* %arraydecay113, i8* %arraydecay114)
  %86 = load i16, i16* %bslice, align 2
  %tobool115 = icmp ne i16 %86, 0
  br i1 %tobool115, label %if.then.116, label %if.else.135

if.then.116:                                      ; preds = %land.end.110
  %arrayidx117 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i64 1
  store i32 2147483647, i32* %arrayidx117, align 4
  %87 = load i32, i32* %block, align 4
  %88 = load i32, i32* %mode, align 4
  %arraydecay118 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i32 0
  %arraydecay119 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i32 0
  call void @list_prediction_cost(i32 1, i32 %87, i32 %88, %struct.RD_PARAMS* byval align 8 %enc_mb, i32* %arraydecay118, i8* %arraydecay119)
  %89 = load i32, i32* %block, align 4
  %90 = load i32, i32* %mode, align 4
  %arraydecay120 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i32 0
  %arraydecay121 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i32 0
  call void @list_prediction_cost(i32 2, i32 %89, i32 %90, %struct.RD_PARAMS* byval align 8 %enc_mb, i32* %arraydecay120, i8* %arraydecay121)
  %91 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %91, i32 0, i32 46
  %92 = load i32, i32* %BiPredMotionEstimation, align 4
  %tobool122 = icmp ne i32 %92, 0
  br i1 %tobool122, label %land.lhs.true.123, label %if.else.129

land.lhs.true.123:                                ; preds = %if.then.116
  %93 = load i32, i32* %mode, align 4
  %cmp124 = icmp eq i32 %93, 1
  br i1 %cmp124, label %if.then.126, label %if.else.129

if.then.126:                                      ; preds = %land.lhs.true.123
  %94 = load i32, i32* %block, align 4
  %95 = load i32, i32* %mode, align 4
  %arraydecay127 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i32 0
  call void @list_prediction_cost(i32 3, i32 %94, i32 %95, %struct.RD_PARAMS* byval align 8 %enc_mb, i32* %arraydecay127, i8* null)
  %96 = load i32, i32* %block, align 4
  %97 = load i32, i32* %mode, align 4
  %arraydecay128 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i32 0
  call void @list_prediction_cost(i32 4, i32 %96, i32 %97, %struct.RD_PARAMS* byval align 8 %enc_mb, i32* %arraydecay128, i8* null)
  br label %if.end.132

if.else.129:                                      ; preds = %land.lhs.true.123, %if.then.116
  %arrayidx130 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i64 3
  store i32 2147483647, i32* %arrayidx130, align 4
  %arrayidx131 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i64 4
  store i32 2147483647, i32* %arrayidx131, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.129, %if.then.126
  %98 = load i32, i32* %mode, align 4
  %arraydecay133 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i32 0
  %arraydecay134 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i32 0
  call void @determine_prediction_list(i32 %98, i32* %arraydecay133, i8* %arraydecay134, i8* %best_pdir, i32* %cost, i16* @bi_pred_me)
  br label %if.end.137

if.else.135:                                      ; preds = %land.end.110
  store i8 0, i8* %best_pdir, align 1
  %arrayidx136 = getelementptr inbounds [5 x i32], [5 x i32]* %bmcost, i32 0, i64 0
  %99 = load i32, i32* %arrayidx136, align 4
  %100 = load i32, i32* %cost, align 4
  %add = add nsw i32 %100, %99
  store i32 %add, i32* %cost, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.135, %if.end.132
  %101 = load i32, i32* %mode, align 4
  %102 = load i8, i8* %best_pdir, align 1
  %103 = load i32, i32* %block, align 4
  %list_offset = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 4
  %arrayidx138 = getelementptr inbounds [2 x i16], [2 x i16]* %list_offset, i32 0, i64 0
  %104 = load i16, i16* %arrayidx138, align 2
  %conv139 = sext i16 %104 to i32
  %arrayidx140 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 0
  %105 = load i8, i8* %arrayidx140, align 1
  %conv141 = sext i8 %105 to i32
  %arrayidx142 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 1
  %106 = load i8, i8* %arrayidx142, align 1
  %conv143 = sext i8 %106 to i32
  %107 = load i16, i16* %bslice, align 2
  %conv144 = sext i16 %107 to i32
  call void @assign_enc_picture_params(i32 %101, i8 signext %102, i32 %103, i32 %conv139, i32 %conv141, i32 %conv143, i32 %conv144)
  %108 = load i32, i32* %mode, align 4
  %cmp145 = icmp eq i32 %108, 3
  br i1 %cmp145, label %if.then.147, label %if.else.165

if.then.147:                                      ; preds = %if.end.137
  %arrayidx148 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 0
  %109 = load i8, i8* %arrayidx148, align 1
  %110 = load i32, i32* %block, align 4
  %add149 = add nsw i32 %110, 2
  %idxprom150 = sext i32 %add149 to i64
  %arrayidx151 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 3), i32 0, i64 %idxprom150
  store i8 %109, i8* %arrayidx151, align 1
  %111 = load i32, i32* %block, align 4
  %idxprom152 = sext i32 %111 to i64
  %arrayidx153 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 3), i32 0, i64 %idxprom152
  store i8 %109, i8* %arrayidx153, align 1
  %112 = load i8, i8* %best_pdir, align 1
  %113 = load i32, i32* %block, align 4
  %add154 = add nsw i32 %113, 2
  %idxprom155 = sext i32 %add154 to i64
  %arrayidx156 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 3), i32 0, i64 %idxprom155
  store i8 %112, i8* %arrayidx156, align 1
  %114 = load i32, i32* %block, align 4
  %idxprom157 = sext i32 %114 to i64
  %arrayidx158 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 3), i32 0, i64 %idxprom157
  store i8 %112, i8* %arrayidx158, align 1
  %arrayidx159 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 1
  %115 = load i8, i8* %arrayidx159, align 1
  %116 = load i32, i32* %block, align 4
  %add160 = add nsw i32 %116, 2
  %idxprom161 = sext i32 %add160 to i64
  %arrayidx162 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 3), i32 0, i64 %idxprom161
  store i8 %115, i8* %arrayidx162, align 1
  %117 = load i32, i32* %block, align 4
  %idxprom163 = sext i32 %117 to i64
  %arrayidx164 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 3), i32 0, i64 %idxprom163
  store i8 %115, i8* %arrayidx164, align 1
  br label %if.end.198

if.else.165:                                      ; preds = %if.end.137
  %118 = load i32, i32* %mode, align 4
  %cmp166 = icmp eq i32 %118, 2
  br i1 %cmp166, label %if.then.168, label %if.else.192

if.then.168:                                      ; preds = %if.else.165
  %arrayidx169 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 0
  %119 = load i8, i8* %arrayidx169, align 1
  %120 = load i32, i32* %block, align 4
  %mul170 = mul nsw i32 2, %120
  %add171 = add nsw i32 %mul170, 1
  %idxprom172 = sext i32 %add171 to i64
  %arrayidx173 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 2), i32 0, i64 %idxprom172
  store i8 %119, i8* %arrayidx173, align 1
  %121 = load i32, i32* %block, align 4
  %mul174 = mul nsw i32 2, %121
  %idxprom175 = sext i32 %mul174 to i64
  %arrayidx176 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 2), i32 0, i64 %idxprom175
  store i8 %119, i8* %arrayidx176, align 1
  %122 = load i8, i8* %best_pdir, align 1
  %123 = load i32, i32* %block, align 4
  %mul177 = mul nsw i32 2, %123
  %add178 = add nsw i32 %mul177, 1
  %idxprom179 = sext i32 %add178 to i64
  %arrayidx180 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 2), i32 0, i64 %idxprom179
  store i8 %122, i8* %arrayidx180, align 1
  %124 = load i32, i32* %block, align 4
  %mul181 = mul nsw i32 2, %124
  %idxprom182 = sext i32 %mul181 to i64
  %arrayidx183 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 2), i32 0, i64 %idxprom182
  store i8 %122, i8* %arrayidx183, align 1
  %arrayidx184 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 1
  %125 = load i8, i8* %arrayidx184, align 1
  %126 = load i32, i32* %block, align 4
  %mul185 = mul nsw i32 2, %126
  %add186 = add nsw i32 %mul185, 1
  %idxprom187 = sext i32 %add186 to i64
  %arrayidx188 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 2), i32 0, i64 %idxprom187
  store i8 %125, i8* %arrayidx188, align 1
  %127 = load i32, i32* %block, align 4
  %mul189 = mul nsw i32 2, %127
  %idxprom190 = sext i32 %mul189 to i64
  %arrayidx191 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 2), i32 0, i64 %idxprom190
  store i8 %125, i8* %arrayidx191, align 1
  br label %if.end.197

if.else.192:                                      ; preds = %if.else.165
  %arrayidx193 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 0
  %128 = load i8, i8* %arrayidx193, align 1
  %conv194 = sext i8 %128 to i32
  %129 = trunc i32 %conv194 to i8
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 1, i64 0), i8 %129, i64 4, i32 1, i1 false)
  %arrayidx195 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 1
  %130 = load i8, i8* %arrayidx195, align 1
  %conv196 = sext i8 %130 to i32
  %131 = trunc i32 %conv196 to i8
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 1, i64 0), i8 %131, i64 4, i32 1, i1 false)
  %132 = load i8, i8* %best_pdir, align 1
  store i8 %132, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 3), align 1
  store i8 %132, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 2), align 1
  store i8 %132, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 1), align 1
  store i8 %132, i8* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 1, i64 0), align 1
  br label %if.end.197

if.end.197:                                       ; preds = %if.else.192, %if.then.168
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %if.then.147
  %133 = load i32, i32* %mode, align 4
  %cmp199 = icmp sgt i32 %133, 1
  br i1 %cmp199, label %land.lhs.true.201, label %if.end.210

land.lhs.true.201:                                ; preds = %if.end.198
  %134 = load i32, i32* %block, align 4
  %cmp202 = icmp eq i32 %134, 0
  br i1 %cmp202, label %if.then.204, label %if.end.210

if.then.204:                                      ; preds = %land.lhs.true.201
  %135 = load i32, i32* %block, align 4
  %136 = load i32, i32* %mode, align 4
  %137 = load i8, i8* %best_pdir, align 1
  %conv205 = sext i8 %137 to i32
  %arrayidx206 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 0
  %138 = load i8, i8* %arrayidx206, align 1
  %conv207 = sext i8 %138 to i32
  %arrayidx208 = getelementptr inbounds [2 x i8], [2 x i8]* %best_ref, i32 0, i64 1
  %139 = load i8, i8* %arrayidx208, align 1
  %conv209 = sext i8 %139 to i32
  call void @SetRefAndMotionVectors(i32 %135, i32 %136, i32 %conv205, i32 %conv207, i32 %conv209)
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.204, %land.lhs.true.201, %if.end.198
  br label %for.inc.211

for.inc.211:                                      ; preds = %if.end.210
  %140 = load i32, i32* %block, align 4
  %inc212 = add nsw i32 %140, 1
  store i32 %inc212, i32* %block, align 4
  br label %for.cond.69

for.end.213:                                      ; preds = %for.cond.69
  %141 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %141, i32 0, i32 31
  store i32 0, i32* %luma_transform_size_8x8_flag, align 4
  %142 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %142, i32 0, i32 153
  %143 = load i32, i32* %Transform8x8Mode, align 4
  %tobool214 = icmp ne i32 %143, 0
  br i1 %tobool214, label %if.then.215, label %if.end.218

if.then.215:                                      ; preds = %for.end.213
  %144 = load i32, i32* %mode, align 4
  call void @SetModesAndRefframeForBlocks(i32 %144)
  %call216 = call i32 @TransformDecision(i32 -1, i32* %cost)
  %145 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag217 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %145, i32 0, i32 31
  store i32 %call216, i32* %luma_transform_size_8x8_flag217, align 4
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.215, %for.end.213
  %146 = load i16, i16* %inter_skip, align 2
  %tobool219 = icmp ne i16 %146, 0
  br i1 %tobool219, label %if.end.231, label %land.lhs.true.220

land.lhs.true.220:                                ; preds = %if.end.218
  %147 = load i32, i32* %cost, align 4
  %148 = load i32, i32* %min_cost, align 4
  %cmp221 = icmp slt i32 %147, %148
  br i1 %cmp221, label %if.then.223, label %if.end.231

if.then.223:                                      ; preds = %land.lhs.true.220
  %149 = load i32, i32* %mode, align 4
  %conv224 = trunc i32 %149 to i16
  store i16 %conv224, i16* @best_mode, align 2
  %150 = load i32, i32* %cost, align 4
  store i32 %150, i32* %min_cost, align 4
  %151 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag225 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %151, i32 0, i32 31
  %152 = load i32, i32* %luma_transform_size_8x8_flag225, align 4
  store i32 %152, i32* %best_transform_flag, align 4
  %153 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %CtxAdptLagrangeMult226 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %153, i32 0, i32 114
  %154 = load i32, i32* %CtxAdptLagrangeMult226, align 4
  %cmp227 = icmp eq i32 %154, 1
  br i1 %cmp227, label %if.then.229, label %if.end.230

if.then.229:                                      ; preds = %if.then.223
  %155 = load i32, i32* %cost, align 4
  call void @adjust_mb16x16_cost(i32 %155)
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.229, %if.then.223
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %land.lhs.true.220, %if.end.218
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %land.lhs.true.66, %for.body
  br label %for.inc.233

for.inc.233:                                      ; preds = %if.end.232
  %156 = load i32, i32* %mode, align 4
  %inc234 = add nsw i32 %156, 1
  store i32 %inc234, i32* %mode, align 4
  br label %for.cond

for.end.235:                                      ; preds = %for.cond
  %157 = load i16, i16* %inter_skip, align 2
  %tobool236 = icmp ne i16 %157, 0
  br i1 %tobool236, label %if.else.347, label %land.lhs.true.237

land.lhs.true.237:                                ; preds = %for.end.235
  %valid238 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 3
  %arrayidx239 = getelementptr inbounds [15 x i16], [15 x i16]* %valid238, i32 0, i64 8
  %158 = load i16, i16* %arrayidx239, align 2
  %conv240 = sext i16 %158 to i32
  %tobool241 = icmp ne i32 %conv240, 0
  br i1 %tobool241, label %if.then.242, label %if.else.347

if.then.242:                                      ; preds = %land.lhs.true.237
  store i32 1, i32* @giRDOpt_B8OnlyFlag, align 4
  store i32 2147483647, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 0), align 4
  store i32 2147483647, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 0), align 4
  %159 = load %struct.CSobj*, %struct.CSobj** @cs_mb, align 8
  call void @store_coding_state(%struct.CSobj* %159)
  %160 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %all_blk_8x8 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %160, i32 0, i32 30
  store i32 -1, i32* %all_blk_8x8, align 4
  %161 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode243 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %161, i32 0, i32 153
  %162 = load i32, i32* %Transform8x8Mode243, align 4
  %tobool244 = icmp ne i32 %162, 0
  br i1 %tobool244, label %if.then.245, label %if.end.273

if.then.245:                                      ; preds = %if.then.242
  store i32 0, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 0), align 4
  store i32 0, i32* @cnt_nonz_8x8, align 4
  store i32 0, i32* @cbp_blk8x8, align 4
  store i32 0, i32* @cbp8x8, align 4
  store i32 0, i32* %cost_direct, align 4
  store i32 0, i32* %block, align 4
  br label %for.cond.246

for.cond.246:                                     ; preds = %for.inc.268, %if.then.245
  %163 = load i32, i32* %block, align 4
  %cmp247 = icmp slt i32 %163, 4
  br i1 %cmp247, label %for.body.249, label %for.end.270

for.body.249:                                     ; preds = %for.cond.246
  %164 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %165 = load i32, i32* %block, align 4
  %idxprom250 = sext i32 %165 to i64
  %166 = load i32****, i32***** @cofAC_8x8ts, align 8
  %arrayidx251 = getelementptr inbounds i32***, i32**** %166, i64 %idxprom250
  %167 = load i32***, i32**** %arrayidx251, align 8
  %168 = load i16, i16* %bslice, align 2
  %169 = load i32, i32* %block, align 4
  call void @submacroblock_mode_decision(%struct.RD_PARAMS* byval align 8 %enc_mb, %struct.RD_8x8DATA* @tr8x8, %struct.macroblock* %164, i32*** %167, i32* %have_direct, i16 signext %168, i32 %169, i32* %cost_direct, i32* %cost, i32* %cost8x8_direct, i32 1)
  %170 = load i32, i32* %block, align 4
  %idxprom252 = sext i32 %170 to i64
  %arrayidx253 = getelementptr inbounds [4 x i16], [4 x i16]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 5), i32 0, i64 %idxprom252
  %171 = load i16, i16* %arrayidx253, align 2
  %172 = load i32, i32* %block, align 4
  %idxprom254 = sext i32 %172 to i64
  %arrayidx255 = getelementptr inbounds [4 x i16], [4 x i16]* @best8x8mode, i32 0, i64 %idxprom254
  store i16 %171, i16* %arrayidx255, align 2
  %173 = load i32, i32* %block, align 4
  %idxprom256 = sext i32 %173 to i64
  %arrayidx257 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 6), i32 0, i64 %idxprom256
  %174 = load i8, i8* %arrayidx257, align 1
  %175 = load i32, i32* %block, align 4
  %idxprom258 = sext i32 %175 to i64
  %arrayidx259 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 8), i32 0, i64 %idxprom258
  store i8 %174, i8* %arrayidx259, align 1
  %176 = load i32, i32* %block, align 4
  %idxprom260 = sext i32 %176 to i64
  %arrayidx261 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 7), i32 0, i64 %idxprom260
  %177 = load i8, i8* %arrayidx261, align 1
  %178 = load i32, i32* %block, align 4
  %idxprom262 = sext i32 %178 to i64
  %arrayidx263 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 8), i32 0, i64 %idxprom262
  store i8 %177, i8* %arrayidx263, align 1
  %179 = load i32, i32* %block, align 4
  %idxprom264 = sext i32 %179 to i64
  %arrayidx265 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 8), i32 0, i64 %idxprom264
  %180 = load i8, i8* %arrayidx265, align 1
  %181 = load i32, i32* %block, align 4
  %idxprom266 = sext i32 %181 to i64
  %arrayidx267 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 8), i32 0, i64 %idxprom266
  store i8 %180, i8* %arrayidx267, align 1
  br label %for.inc.268

for.inc.268:                                      ; preds = %for.body.249
  %182 = load i32, i32* %block, align 4
  %inc269 = add nsw i32 %182, 1
  store i32 %inc269, i32* %block, align 4
  br label %for.cond.246

for.end.270:                                      ; preds = %for.cond.246
  %183 = load i32, i32* @cbp8x8, align 4
  store i32 %183, i32* @cbp8_8x8ts, align 4
  %184 = load i32, i32* @cbp_blk8x8, align 4
  %conv271 = sext i32 %184 to i64
  store i64 %conv271, i64* @cbp_blk8_8x8ts, align 8
  %185 = load i32, i32* @cnt_nonz_8x8, align 4
  store i32 %185, i32* @cnt_nonz8_8x8ts, align 4
  %186 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag272 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %186, i32 0, i32 31
  store i32 0, i32* %luma_transform_size_8x8_flag272, align 4
  br label %if.end.273

if.end.273:                                       ; preds = %for.end.270, %if.then.242
  %187 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode274 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %187, i32 0, i32 153
  %188 = load i32, i32* %Transform8x8Mode274, align 4
  %cmp275 = icmp ne i32 %188, 2
  br i1 %cmp275, label %if.then.277, label %if.end.303

if.then.277:                                      ; preds = %if.end.273
  store i32 0, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 0), align 4
  store i32 0, i32* @cnt_nonz_8x8, align 4
  store i32 0, i32* @cbp_blk8x8, align 4
  store i32 0, i32* @cbp8x8, align 4
  store i32 0, i32* %cost_direct, align 4
  store i32 0, i32* %block, align 4
  br label %for.cond.278

for.cond.278:                                     ; preds = %for.inc.300, %if.then.277
  %189 = load i32, i32* %block, align 4
  %cmp279 = icmp slt i32 %189, 4
  br i1 %cmp279, label %for.body.281, label %for.end.302

for.body.281:                                     ; preds = %for.cond.278
  %190 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %191 = load i32, i32* %block, align 4
  %idxprom282 = sext i32 %191 to i64
  %192 = load i32****, i32***** @cofAC8x8, align 8
  %arrayidx283 = getelementptr inbounds i32***, i32**** %192, i64 %idxprom282
  %193 = load i32***, i32**** %arrayidx283, align 8
  %194 = load i16, i16* %bslice, align 2
  %195 = load i32, i32* %block, align 4
  call void @submacroblock_mode_decision(%struct.RD_PARAMS* byval align 8 %enc_mb, %struct.RD_8x8DATA* @tr4x4, %struct.macroblock* %190, i32*** %193, i32* %have_direct, i16 signext %194, i32 %195, i32* %cost_direct, i32* %cost, i32* %cost8x8_direct, i32 0)
  %196 = load i32, i32* %block, align 4
  %idxprom284 = sext i32 %196 to i64
  %arrayidx285 = getelementptr inbounds [4 x i16], [4 x i16]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 5), i32 0, i64 %idxprom284
  %197 = load i16, i16* %arrayidx285, align 2
  %198 = load i32, i32* %block, align 4
  %idxprom286 = sext i32 %198 to i64
  %arrayidx287 = getelementptr inbounds [4 x i16], [4 x i16]* @best8x8mode, i32 0, i64 %idxprom286
  store i16 %197, i16* %arrayidx287, align 2
  %199 = load i32, i32* %block, align 4
  %idxprom288 = sext i32 %199 to i64
  %arrayidx289 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 6), i32 0, i64 %idxprom288
  %200 = load i8, i8* %arrayidx289, align 1
  %201 = load i32, i32* %block, align 4
  %idxprom290 = sext i32 %201 to i64
  %arrayidx291 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8pdir, i32 0, i64 8), i32 0, i64 %idxprom290
  store i8 %200, i8* %arrayidx291, align 1
  %202 = load i32, i32* %block, align 4
  %idxprom292 = sext i32 %202 to i64
  %arrayidx293 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 7), i32 0, i64 %idxprom292
  %203 = load i8, i8* %arrayidx293, align 1
  %204 = load i32, i32* %block, align 4
  %idxprom294 = sext i32 %204 to i64
  %arrayidx295 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8fwref, i32 0, i64 8), i32 0, i64 %idxprom294
  store i8 %203, i8* %arrayidx295, align 1
  %205 = load i32, i32* %block, align 4
  %idxprom296 = sext i32 %205 to i64
  %arrayidx297 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 8), i32 0, i64 %idxprom296
  %206 = load i8, i8* %arrayidx297, align 1
  %207 = load i32, i32* %block, align 4
  %idxprom298 = sext i32 %207 to i64
  %arrayidx299 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds ([15 x [4 x i8]], [15 x [4 x i8]]* @best8x8bwref, i32 0, i64 8), i32 0, i64 %idxprom298
  store i8 %206, i8* %arrayidx299, align 1
  br label %for.inc.300

for.inc.300:                                      ; preds = %for.body.281
  %208 = load i32, i32* %block, align 4
  %inc301 = add nsw i32 %208, 1
  store i32 %inc301, i32* %block, align 4
  br label %for.cond.278

for.end.302:                                      ; preds = %for.cond.278
  br label %if.end.303

if.end.303:                                       ; preds = %for.end.302, %if.end.273
  %209 = load %struct.CSobj*, %struct.CSobj** @cs_mb, align 8
  call void @reset_coding_state(%struct.CSobj* %209)
  %210 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %210, i32 0, i32 157
  %211 = load i32, i32* %RCEnable, align 4
  %tobool304 = icmp ne i32 %211, 0
  br i1 %tobool304, label %if.then.305, label %if.end.307

if.then.305:                                      ; preds = %if.end.303
  %212 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %212, i32 0, i32 43
  %213 = load i32, i32* %opix_x, align 4
  %214 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %214, i32 0, i32 44
  %215 = load i32, i32* %opix_y, align 4
  %216 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %216, i32 0, i32 51
  %arraydecay306 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i32 0
  call void @rc_store_diff(i32 %213, i32 %215, [16 x i16]* %arraydecay306)
  br label %if.end.307

if.end.307:                                       ; preds = %if.then.305, %if.end.303
  %217 = load i32, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 0), align 4
  %218 = load i32, i32* %min_cost, align 4
  %cmp308 = icmp slt i32 %217, %218
  br i1 %cmp308, label %if.then.312, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.307
  %219 = load i32, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 0), align 4
  %220 = load i32, i32* %min_cost, align 4
  %cmp310 = icmp slt i32 %219, %220
  br i1 %cmp310, label %if.then.312, label %if.end.346

if.then.312:                                      ; preds = %lor.lhs.false, %if.end.307
  store i16 8, i16* @best_mode, align 2
  %221 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode313 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %221, i32 0, i32 153
  %222 = load i32, i32* %Transform8x8Mode313, align 4
  %cmp314 = icmp eq i32 %222, 2
  br i1 %cmp314, label %if.then.316, label %if.else.318

if.then.316:                                      ; preds = %if.then.312
  %223 = load i32, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 0), align 4
  store i32 %223, i32* %min_cost, align 4
  %224 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag317 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %224, i32 0, i32 31
  store i32 1, i32* %luma_transform_size_8x8_flag317, align 4
  br label %if.end.345

if.else.318:                                      ; preds = %if.then.312
  %225 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode319 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %225, i32 0, i32 153
  %226 = load i32, i32* %Transform8x8Mode319, align 4
  %tobool320 = icmp ne i32 %226, 0
  br i1 %tobool320, label %if.then.321, label %if.else.342

if.then.321:                                      ; preds = %if.else.318
  %227 = load i32, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 0), align 4
  %228 = load i32, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 0), align 4
  %cmp322 = icmp slt i32 %227, %228
  br i1 %cmp322, label %if.then.324, label %if.else.326

if.then.324:                                      ; preds = %if.then.321
  %229 = load i32, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 0), align 4
  store i32 %229, i32* %min_cost, align 4
  %230 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag325 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %230, i32 0, i32 31
  store i32 1, i32* %luma_transform_size_8x8_flag325, align 4
  br label %if.end.341

if.else.326:                                      ; preds = %if.then.321
  %231 = load i32, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 0), align 4
  %232 = load i32, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 0), align 4
  %cmp327 = icmp slt i32 %231, %232
  br i1 %cmp327, label %if.then.329, label %if.else.331

if.then.329:                                      ; preds = %if.else.326
  %233 = load i32, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 0), align 4
  store i32 %233, i32* %min_cost, align 4
  %234 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag330 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %234, i32 0, i32 31
  store i32 0, i32* %luma_transform_size_8x8_flag330, align 4
  br label %if.end.340

if.else.331:                                      ; preds = %if.else.326
  %call332 = call i32 @GetBestTransformP8x8()
  %cmp333 = icmp eq i32 %call332, 0
  br i1 %cmp333, label %if.then.335, label %if.else.337

if.then.335:                                      ; preds = %if.else.331
  %235 = load i32, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 0), align 4
  store i32 %235, i32* %min_cost, align 4
  %236 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag336 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %236, i32 0, i32 31
  store i32 0, i32* %luma_transform_size_8x8_flag336, align 4
  br label %if.end.339

if.else.337:                                      ; preds = %if.else.331
  %237 = load i32, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 0), align 4
  store i32 %237, i32* %min_cost, align 4
  %238 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag338 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %238, i32 0, i32 31
  store i32 1, i32* %luma_transform_size_8x8_flag338, align 4
  br label %if.end.339

if.end.339:                                       ; preds = %if.else.337, %if.then.335
  br label %if.end.340

if.end.340:                                       ; preds = %if.end.339, %if.then.329
  br label %if.end.341

if.end.341:                                       ; preds = %if.end.340, %if.then.324
  br label %if.end.344

if.else.342:                                      ; preds = %if.else.318
  %239 = load i32, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 0), align 4
  store i32 %239, i32* %min_cost, align 4
  %240 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag343 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %240, i32 0, i32 31
  store i32 0, i32* %luma_transform_size_8x8_flag343, align 4
  br label %if.end.344

if.end.344:                                       ; preds = %if.else.342, %if.end.341
  br label %if.end.345

if.end.345:                                       ; preds = %if.end.344, %if.then.316
  br label %if.end.346

if.end.346:                                       ; preds = %if.end.345, %lor.lhs.false
  store i32 0, i32* @giRDOpt_B8OnlyFlag, align 4
  br label %if.end.348

if.else.347:                                      ; preds = %land.lhs.true.237, %for.end.235
  store i32 2147483647, i32* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 0), align 4
  br label %if.end.348

if.end.348:                                       ; preds = %if.else.347, %if.end.346
  %241 = load i16, i16* %pslice, align 2
  %tobool349 = icmp ne i16 %241, 0
  br i1 %tobool349, label %if.then.350, label %if.end.351

if.then.350:                                      ; preds = %if.end.348
  call void @FindSkipModeMotionVector()
  br label %if.end.351

if.end.351:                                       ; preds = %if.then.350, %if.end.348
  br label %if.end.353

if.else.352:                                      ; preds = %if.end.42
  store i32 2147483647, i32* %min_cost, align 4
  br label %if.end.353

if.end.353:                                       ; preds = %if.else.352, %if.end.351
  %242 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag354 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %242, i32 0, i32 31
  %243 = load i32, i32* %luma_transform_size_8x8_flag354, align 4
  store i32 %243, i32* %tmp_8x8_flag, align 4
  %244 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %NoMbPartLessThan8x8Flag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %244, i32 0, i32 32
  %245 = load i32, i32* %NoMbPartLessThan8x8Flag, align 4
  store i32 %245, i32* %tmp_no_mbpart, align 4
  %246 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %246, i32 0, i32 160
  %247 = load i32, i32* %yuv_format, align 4
  %cmp355 = icmp ne i32 %247, 0
  br i1 %cmp355, label %if.then.357, label %if.end.358

if.then.357:                                      ; preds = %if.end.353
  call void @IntraChromaPrediction(i32* null, i32* null, i32* null)
  br label %if.end.358

if.end.358:                                       ; preds = %if.then.357, %if.end.353
  %valid359 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 3
  %arrayidx360 = getelementptr inbounds [15 x i16], [15 x i16]* %valid359, i32 0, i64 0
  %248 = load i16, i16* %arrayidx360, align 2
  %conv361 = sext i16 %248 to i32
  %tobool362 = icmp ne i32 %conv361, 0
  br i1 %tobool362, label %land.lhs.true.363, label %if.end.441

land.lhs.true.363:                                ; preds = %if.end.358
  %249 = load i16, i16* %bslice, align 2
  %conv364 = sext i16 %249 to i32
  %tobool365 = icmp ne i32 %conv364, 0
  br i1 %tobool365, label %if.then.366, label %if.end.441

if.then.366:                                      ; preds = %land.lhs.true.363
  %250 = load i32, i32* %have_direct, align 4
  %tobool367 = icmp ne i32 %250, 0
  br i1 %tobool367, label %if.then.368, label %if.else.392

if.then.368:                                      ; preds = %if.then.366
  %251 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode369 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %251, i32 0, i32 153
  %252 = load i32, i32* %Transform8x8Mode369, align 4
  switch i32 %252, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.391
  ]

sw.bb:                                            ; preds = %if.then.368
  %253 = load i32, i32* %cost8x8_direct, align 4
  %254 = load i32, i32* %cost_direct, align 4
  %cmp370 = icmp slt i32 %253, %254
  br i1 %cmp370, label %cond.true.387, label %lor.lhs.false.372

lor.lhs.false.372:                                ; preds = %sw.bb
  %valid373 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 3
  %arrayidx374 = getelementptr inbounds [15 x i16], [15 x i16]* %valid373, i32 0, i64 5
  %255 = load i16, i16* %arrayidx374, align 2
  %conv375 = sext i16 %255 to i32
  %tobool376 = icmp ne i32 %conv375, 0
  br i1 %tobool376, label %land.lhs.true.377, label %cond.true.387

land.lhs.true.377:                                ; preds = %lor.lhs.false.372
  %valid378 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 3
  %arrayidx379 = getelementptr inbounds [15 x i16], [15 x i16]* %valid378, i32 0, i64 6
  %256 = load i16, i16* %arrayidx379, align 2
  %conv380 = sext i16 %256 to i32
  %tobool381 = icmp ne i32 %conv380, 0
  br i1 %tobool381, label %land.lhs.true.382, label %cond.true.387

land.lhs.true.382:                                ; preds = %land.lhs.true.377
  %valid383 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 3
  %arrayidx384 = getelementptr inbounds [15 x i16], [15 x i16]* %valid383, i32 0, i64 7
  %257 = load i16, i16* %arrayidx384, align 2
  %conv385 = sext i16 %257 to i32
  %tobool386 = icmp ne i32 %conv385, 0
  br i1 %tobool386, label %cond.false.388, label %cond.true.387

cond.true.387:                                    ; preds = %land.lhs.true.382, %land.lhs.true.377, %lor.lhs.false.372, %sw.bb
  %258 = load i32, i32* %cost8x8_direct, align 4
  br label %cond.end.389

cond.false.388:                                   ; preds = %land.lhs.true.382
  %259 = load i32, i32* %cost_direct, align 4
  br label %cond.end.389

cond.end.389:                                     ; preds = %cond.false.388, %cond.true.387
  %cond390 = phi i32 [ %258, %cond.true.387 ], [ %259, %cond.false.388 ]
  store i32 %cond390, i32* %cost, align 4
  br label %sw.epilog

sw.bb.391:                                        ; preds = %if.then.368
  %260 = load i32, i32* %cost8x8_direct, align 4
  store i32 %260, i32* %cost, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.368
  %261 = load i32, i32* %cost_direct, align 4
  store i32 %261, i32* %cost, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.391, %cond.end.389
  br label %if.end.394

if.else.392:                                      ; preds = %if.then.366
  %call393 = call i32 @GetDirectCostMB()
  store i32 %call393, i32* %cost, align 4
  br label %if.end.394

if.end.394:                                       ; preds = %if.else.392, %sw.epilog
  %262 = load i32, i32* %cost, align 4
  %cmp395 = icmp ne i32 %262, 2147483647
  br i1 %cmp395, label %if.then.397, label %if.end.402

if.then.397:                                      ; preds = %if.end.394
  %lambda_md = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 0
  %263 = load double, double* %lambda_md, align 8
  %mul398 = fmul double 1.600000e+01, %263
  %add399 = fadd double %mul398, 4.999000e-01
  %call400 = call double @floor(double %add399) #5
  %conv401 = fptosi double %call400 to i32
  %264 = load i32, i32* %cost, align 4
  %sub = sub nsw i32 %264, %conv401
  store i32 %sub, i32* %cost, align 4
  br label %if.end.402

if.end.402:                                       ; preds = %if.then.397, %if.end.394
  %265 = load i32, i32* %cost, align 4
  %266 = load i32, i32* %min_cost, align 4
  %cmp403 = icmp sle i32 %265, %266
  br i1 %cmp403, label %if.then.405, label %if.else.437

if.then.405:                                      ; preds = %if.end.402
  %267 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %direct_8x8_inference_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %267, i32 0, i32 27
  %268 = load i32, i32* %direct_8x8_inference_flag, align 4
  %tobool406 = icmp ne i32 %268, 0
  br i1 %tobool406, label %land.lhs.true.407, label %if.else.425

land.lhs.true.407:                                ; preds = %if.then.405
  %269 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode408 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %269, i32 0, i32 153
  %270 = load i32, i32* %Transform8x8Mode408, align 4
  %tobool409 = icmp ne i32 %270, 0
  br i1 %tobool409, label %if.then.410, label %if.else.425

if.then.410:                                      ; preds = %land.lhs.true.407
  %271 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode411 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %271, i32 0, i32 153
  %272 = load i32, i32* %Transform8x8Mode411, align 4
  %cmp412 = icmp eq i32 %272, 2
  br i1 %cmp412, label %if.then.414, label %if.else.416

if.then.414:                                      ; preds = %if.then.410
  %273 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag415 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %273, i32 0, i32 31
  store i32 1, i32* %luma_transform_size_8x8_flag415, align 4
  br label %if.end.424

if.else.416:                                      ; preds = %if.then.410
  %274 = load i32, i32* %cost8x8_direct, align 4
  %275 = load i32, i32* %cost_direct, align 4
  %cmp417 = icmp slt i32 %274, %275
  br i1 %cmp417, label %if.then.419, label %if.else.421

if.then.419:                                      ; preds = %if.else.416
  %276 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag420 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %276, i32 0, i32 31
  store i32 1, i32* %luma_transform_size_8x8_flag420, align 4
  br label %if.end.423

if.else.421:                                      ; preds = %if.else.416
  %277 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag422 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %277, i32 0, i32 31
  store i32 0, i32* %luma_transform_size_8x8_flag422, align 4
  br label %if.end.423

if.end.423:                                       ; preds = %if.else.421, %if.then.419
  br label %if.end.424

if.end.424:                                       ; preds = %if.end.423, %if.then.414
  br label %if.end.427

if.else.425:                                      ; preds = %land.lhs.true.407, %if.then.405
  %278 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag426 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %278, i32 0, i32 31
  store i32 0, i32* %luma_transform_size_8x8_flag426, align 4
  br label %if.end.427

if.end.427:                                       ; preds = %if.else.425, %if.end.424
  %279 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable428 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %279, i32 0, i32 157
  %280 = load i32, i32* %RCEnable428, align 4
  %tobool429 = icmp ne i32 %280, 0
  br i1 %tobool429, label %if.then.430, label %if.end.435

if.then.430:                                      ; preds = %if.end.427
  %281 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x431 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %281, i32 0, i32 43
  %282 = load i32, i32* %opix_x431, align 4
  %283 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y432 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %283, i32 0, i32 44
  %284 = load i32, i32* %opix_y432, align 4
  %285 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr433 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %285, i32 0, i32 51
  %arraydecay434 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr433, i32 0, i32 0
  call void @rc_store_diff(i32 %282, i32 %284, [16 x i16]* %arraydecay434)
  br label %if.end.435

if.end.435:                                       ; preds = %if.then.430, %if.end.427
  %286 = load i32, i32* %cost, align 4
  store i32 %286, i32* %min_cost, align 4
  store i16 0, i16* @best_mode, align 2
  %287 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag436 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %287, i32 0, i32 31
  %288 = load i32, i32* %luma_transform_size_8x8_flag436, align 4
  store i32 %288, i32* %tmp_8x8_flag, align 4
  br label %if.end.440

if.else.437:                                      ; preds = %if.end.402
  %289 = load i32, i32* %tmp_8x8_flag, align 4
  %290 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag438 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %290, i32 0, i32 31
  store i32 %289, i32* %luma_transform_size_8x8_flag438, align 4
  %291 = load i32, i32* %tmp_no_mbpart, align 4
  %292 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %NoMbPartLessThan8x8Flag439 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %292, i32 0, i32 32
  store i32 %291, i32* %NoMbPartLessThan8x8Flag439, align 4
  br label %if.end.440

if.end.440:                                       ; preds = %if.else.437, %if.end.435
  br label %if.end.441

if.end.441:                                       ; preds = %if.end.440, %land.lhs.true.363, %if.end.358
  %valid442 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 3
  %arrayidx443 = getelementptr inbounds [15 x i16], [15 x i16]* %valid442, i32 0, i64 13
  %293 = load i16, i16* %arrayidx443, align 2
  %tobool444 = icmp ne i16 %293, 0
  br i1 %tobool444, label %if.then.445, label %if.end.496

if.then.445:                                      ; preds = %if.end.441
  %294 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag446 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %294, i32 0, i32 31
  store i32 1, i32* %luma_transform_size_8x8_flag446, align 4
  %295 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type = getelementptr inbounds %struct.macroblock, %struct.macroblock* %295, i32 0, i32 8
  store i32 13, i32* %mb_type, align 4
  %lambda_md447 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 0
  %296 = load double, double* %lambda_md447, align 8
  %call448 = call i32 @Mode_Decision_for_new_Intra8x8Macroblock(double %296, i32* %cost)
  store i32 %call448, i32* %temp_cpb, align 4
  %297 = load i32, i32* %cost, align 4
  %298 = load i32, i32* %min_cost, align 4
  %cmp449 = icmp sle i32 %297, %298
  br i1 %cmp449, label %if.then.451, label %if.else.493

if.then.451:                                      ; preds = %if.then.445
  %299 = load i32, i32* %temp_cpb, align 4
  %300 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %300, i32 0, i32 12
  store i32 %299, i32* %cbp, align 4
  %301 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode452 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %301, i32 0, i32 153
  %302 = load i32, i32* %Transform8x8Mode452, align 4
  %cmp453 = icmp ne i32 %302, 2
  br i1 %cmp453, label %if.then.455, label %if.end.457

if.then.455:                                      ; preds = %if.then.451
  %303 = load i32****, i32***** @cofAC, align 8
  store i32**** %303, i32***** %i4p, align 8
  %304 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %304, i32 0, i32 53
  %305 = load i32****, i32***** %cofAC, align 8
  store i32**** %305, i32***** @cofAC, align 8
  %306 = load i32****, i32***** %i4p, align 8
  %307 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC456 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %307, i32 0, i32 53
  store i32**** %306, i32***** %cofAC456, align 8
  br label %if.end.457

if.end.457:                                       ; preds = %if.then.455, %if.then.451
  store i32 0, i32* %j, align 4
  br label %for.cond.458

for.cond.458:                                     ; preds = %for.inc.481, %if.end.457
  %308 = load i32, i32* %j, align 4
  %cmp459 = icmp slt i32 %308, 16
  br i1 %cmp459, label %for.body.461, label %for.end.483

for.body.461:                                     ; preds = %for.cond.458
  %309 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y462 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %309, i32 0, i32 40
  %310 = load i32, i32* %pix_y462, align 4
  %311 = load i32, i32* %j, align 4
  %add463 = add nsw i32 %310, %311
  store i32 %add463, i32* %pix_y, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.464

for.cond.464:                                     ; preds = %for.inc.478, %for.body.461
  %312 = load i32, i32* %i, align 4
  %cmp465 = icmp slt i32 %312, 16
  br i1 %cmp465, label %for.body.467, label %for.end.480

for.body.467:                                     ; preds = %for.cond.464
  %313 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x468 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %313, i32 0, i32 39
  %314 = load i32, i32* %pix_x468, align 4
  %315 = load i32, i32* %i, align 4
  %add469 = add nsw i32 %314, %315
  store i32 %add469, i32* %pix_x, align 4
  %316 = load i32, i32* %pix_x, align 4
  %idxprom470 = sext i32 %316 to i64
  %317 = load i32, i32* %pix_y, align 4
  %idxprom471 = sext i32 %317 to i64
  %318 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %318, i32 0, i32 29
  %319 = load i16**, i16*** %imgY, align 8
  %arrayidx472 = getelementptr inbounds i16*, i16** %319, i64 %idxprom471
  %320 = load i16*, i16** %arrayidx472, align 8
  %arrayidx473 = getelementptr inbounds i16, i16* %320, i64 %idxprom470
  %321 = load i16, i16* %arrayidx473, align 2
  %322 = load i32, i32* %i, align 4
  %idxprom474 = sext i32 %322 to i64
  %323 = load i32, i32* %j, align 4
  %idxprom475 = sext i32 %323 to i64
  %arrayidx476 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* @temp_imgY, i32 0, i64 %idxprom475
  %arrayidx477 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx476, i32 0, i64 %idxprom474
  store i16 %321, i16* %arrayidx477, align 2
  br label %for.inc.478

for.inc.478:                                      ; preds = %for.body.467
  %324 = load i32, i32* %i, align 4
  %inc479 = add nsw i32 %324, 1
  store i32 %inc479, i32* %i, align 4
  br label %for.cond.464

for.end.480:                                      ; preds = %for.cond.464
  br label %for.inc.481

for.inc.481:                                      ; preds = %for.end.480
  %325 = load i32, i32* %j, align 4
  %inc482 = add nsw i32 %325, 1
  store i32 %inc482, i32* %j, align 4
  br label %for.cond.458

for.end.483:                                      ; preds = %for.cond.458
  %326 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable484 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %326, i32 0, i32 157
  %327 = load i32, i32* %RCEnable484, align 4
  %tobool485 = icmp ne i32 %327, 0
  br i1 %tobool485, label %if.then.486, label %if.end.491

if.then.486:                                      ; preds = %for.end.483
  %328 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x487 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %328, i32 0, i32 43
  %329 = load i32, i32* %opix_x487, align 4
  %330 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y488 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %330, i32 0, i32 44
  %331 = load i32, i32* %opix_y488, align 4
  %332 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr489 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %332, i32 0, i32 51
  %arraydecay490 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr489, i32 0, i32 0
  call void @rc_store_diff(i32 %329, i32 %331, [16 x i16]* %arraydecay490)
  br label %if.end.491

if.end.491:                                       ; preds = %if.then.486, %for.end.483
  %333 = load i32, i32* %cost, align 4
  store i32 %333, i32* %min_cost, align 4
  store i16 13, i16* @best_mode, align 2
  %334 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag492 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %334, i32 0, i32 31
  %335 = load i32, i32* %luma_transform_size_8x8_flag492, align 4
  store i32 %335, i32* %tmp_8x8_flag, align 4
  br label %if.end.495

if.else.493:                                      ; preds = %if.then.445
  %336 = load i32, i32* %tmp_8x8_flag, align 4
  %337 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag494 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %337, i32 0, i32 31
  store i32 %336, i32* %luma_transform_size_8x8_flag494, align 4
  br label %if.end.495

if.end.495:                                       ; preds = %if.else.493, %if.end.491
  br label %if.end.496

if.end.496:                                       ; preds = %if.end.495, %if.end.441
  %valid497 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 3
  %arrayidx498 = getelementptr inbounds [15 x i16], [15 x i16]* %valid497, i32 0, i64 9
  %338 = load i16, i16* %arrayidx498, align 2
  %tobool499 = icmp ne i16 %338, 0
  br i1 %tobool499, label %if.then.500, label %if.end.523

if.then.500:                                      ; preds = %if.end.496
  %339 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag501 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %339, i32 0, i32 31
  store i32 0, i32* %luma_transform_size_8x8_flag501, align 4
  %340 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type502 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %340, i32 0, i32 8
  store i32 9, i32* %mb_type502, align 4
  %lambda_md503 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 0
  %341 = load double, double* %lambda_md503, align 8
  %call504 = call i32 @Mode_Decision_for_Intra4x4Macroblock(double %341, i32* %cost)
  store i32 %call504, i32* %temp_cpb, align 4
  %342 = load i32, i32* %cost, align 4
  %343 = load i32, i32* %min_cost, align 4
  %cmp505 = icmp sle i32 %342, %343
  br i1 %cmp505, label %if.then.507, label %if.else.518

if.then.507:                                      ; preds = %if.then.500
  %344 = load i32, i32* %temp_cpb, align 4
  %345 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp508 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %345, i32 0, i32 12
  store i32 %344, i32* %cbp508, align 4
  %346 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable509 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %346, i32 0, i32 157
  %347 = load i32, i32* %RCEnable509, align 4
  %tobool510 = icmp ne i32 %347, 0
  br i1 %tobool510, label %if.then.511, label %if.end.516

if.then.511:                                      ; preds = %if.then.507
  %348 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x512 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %348, i32 0, i32 43
  %349 = load i32, i32* %opix_x512, align 4
  %350 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y513 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %350, i32 0, i32 44
  %351 = load i32, i32* %opix_y513, align 4
  %352 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr514 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %352, i32 0, i32 51
  %arraydecay515 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr514, i32 0, i32 0
  call void @rc_store_diff(i32 %349, i32 %351, [16 x i16]* %arraydecay515)
  br label %if.end.516

if.end.516:                                       ; preds = %if.then.511, %if.then.507
  %353 = load i32, i32* %cost, align 4
  store i32 %353, i32* %min_cost, align 4
  store i16 9, i16* @best_mode, align 2
  %354 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag517 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %354, i32 0, i32 31
  %355 = load i32, i32* %luma_transform_size_8x8_flag517, align 4
  store i32 %355, i32* %tmp_8x8_flag, align 4
  br label %if.end.522

if.else.518:                                      ; preds = %if.then.500
  %356 = load i32, i32* %tmp_8x8_flag, align 4
  %357 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag519 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %357, i32 0, i32 31
  store i32 %356, i32* %luma_transform_size_8x8_flag519, align 4
  %358 = load i32****, i32***** @cofAC, align 8
  store i32**** %358, i32***** %i4p, align 8
  %359 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC520 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %359, i32 0, i32 53
  %360 = load i32****, i32***** %cofAC520, align 8
  store i32**** %360, i32***** @cofAC, align 8
  %361 = load i32****, i32***** %i4p, align 8
  %362 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC521 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %362, i32 0, i32 53
  store i32**** %361, i32***** %cofAC521, align 8
  br label %if.end.522

if.end.522:                                       ; preds = %if.else.518, %if.end.516
  br label %if.end.523

if.end.523:                                       ; preds = %if.end.522, %if.end.496
  %valid524 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 3
  %arrayidx525 = getelementptr inbounds [15 x i16], [15 x i16]* %valid524, i32 0, i64 10
  %363 = load i16, i16* %arrayidx525, align 2
  %tobool526 = icmp ne i16 %363, 0
  br i1 %tobool526, label %if.then.527, label %if.end.548

if.then.527:                                      ; preds = %if.end.523
  %364 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag528 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %364, i32 0, i32 31
  store i32 0, i32* %luma_transform_size_8x8_flag528, align 4
  call void @intrapred_luma_16x16()
  %call529 = call i32 @find_sad_16x16(i32* %i16mode)
  store i32 %call529, i32* %cost, align 4
  %365 = load i32, i32* %cost, align 4
  %366 = load i32, i32* %min_cost, align 4
  %cmp530 = icmp slt i32 %365, %366
  br i1 %cmp530, label %if.then.532, label %if.else.544

if.then.532:                                      ; preds = %if.then.527
  %367 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable533 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %367, i32 0, i32 157
  %368 = load i32, i32* %RCEnable533, align 4
  %tobool534 = icmp ne i32 %368, 0
  br i1 %tobool534, label %if.then.535, label %if.end.541

if.then.535:                                      ; preds = %if.then.532
  %369 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x536 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %369, i32 0, i32 43
  %370 = load i32, i32* %opix_x536, align 4
  %371 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y537 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %371, i32 0, i32 44
  %372 = load i32, i32* %opix_y537, align 4
  %373 = load i32, i32* %i16mode, align 4
  %idxprom538 = sext i32 %373 to i64
  %374 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %374, i32 0, i32 48
  %arrayidx539 = getelementptr inbounds [5 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]]* %mprr_2, i32 0, i64 %idxprom538
  %arraydecay540 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx539, i32 0, i32 0
  call void @rc_store_diff(i32 %370, i32 %372, [16 x i16]* %arraydecay540)
  br label %if.end.541

if.end.541:                                       ; preds = %if.then.535, %if.then.532
  store i16 10, i16* @best_mode, align 2
  %375 = load i32, i32* %i16mode, align 4
  %call542 = call i32 @dct_luma_16x16(i32 %375)
  %376 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp543 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %376, i32 0, i32 12
  store i32 %call542, i32* %cbp543, align 4
  br label %if.end.547

if.else.544:                                      ; preds = %if.then.527
  %377 = load i32, i32* %tmp_8x8_flag, align 4
  %378 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag545 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %378, i32 0, i32 31
  store i32 %377, i32* %luma_transform_size_8x8_flag545, align 4
  %379 = load i32, i32* %tmp_no_mbpart, align 4
  %380 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %NoMbPartLessThan8x8Flag546 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %380, i32 0, i32 32
  store i32 %379, i32* %NoMbPartLessThan8x8Flag546, align 4
  br label %if.end.547

if.end.547:                                       ; preds = %if.else.544, %if.end.541
  br label %if.end.548

if.end.548:                                       ; preds = %if.end.547, %if.end.523
  %381 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type549 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %381, i32 0, i32 8
  %382 = load i32, i32* %mb_type549, align 4
  %cmp550 = icmp eq i32 %382, 9
  br i1 %cmp550, label %lor.end.564, label %lor.lhs.false.552

lor.lhs.false.552:                                ; preds = %if.end.548
  %383 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type553 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %383, i32 0, i32 8
  %384 = load i32, i32* %mb_type553, align 4
  %cmp554 = icmp eq i32 %384, 10
  br i1 %cmp554, label %lor.end.564, label %lor.lhs.false.556

lor.lhs.false.556:                                ; preds = %lor.lhs.false.552
  %385 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type557 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %385, i32 0, i32 8
  %386 = load i32, i32* %mb_type557, align 4
  %cmp558 = icmp eq i32 %386, 13
  br i1 %cmp558, label %lor.end.564, label %lor.rhs.560

lor.rhs.560:                                      ; preds = %lor.lhs.false.556
  %387 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type561 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %387, i32 0, i32 8
  %388 = load i32, i32* %mb_type561, align 4
  %cmp562 = icmp eq i32 %388, 14
  br label %lor.end.564

lor.end.564:                                      ; preds = %lor.rhs.560, %lor.lhs.false.556, %lor.lhs.false.552, %if.end.548
  %389 = phi i1 [ true, %lor.lhs.false.556 ], [ true, %lor.lhs.false.552 ], [ true, %if.end.548 ], [ %cmp562, %lor.rhs.560 ]
  %lor.ext565 = zext i1 %389 to i32
  store i32 %lor.ext565, i32* %intra1, align 4
  %390 = load i16, i16* @best_mode, align 2
  %conv566 = sext i16 %390 to i32
  call void @SetModesAndRefframeForBlocks(i32 %conv566)
  %391 = load i16, i16* @best_mode, align 2
  %conv567 = sext i16 %391 to i32
  %cmp568 = icmp eq i32 %conv567, 8
  br i1 %cmp568, label %if.then.570, label %if.else.596

if.then.570:                                      ; preds = %lor.end.564
  %392 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag571 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %392, i32 0, i32 31
  %393 = load i32, i32* %luma_transform_size_8x8_flag571, align 4
  %tobool572 = icmp ne i32 %393, 0
  br i1 %tobool572, label %land.lhs.true.573, label %if.end.582

land.lhs.true.573:                                ; preds = %if.then.570
  %394 = load i32, i32* @cbp8_8x8ts, align 4
  %cmp574 = icmp eq i32 %394, 0
  br i1 %cmp574, label %land.lhs.true.576, label %if.end.582

land.lhs.true.576:                                ; preds = %land.lhs.true.573
  %395 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode577 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %395, i32 0, i32 153
  %396 = load i32, i32* %Transform8x8Mode577, align 4
  %cmp578 = icmp ne i32 %396, 2
  br i1 %cmp578, label %if.then.580, label %if.end.582

if.then.580:                                      ; preds = %land.lhs.true.576
  %397 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag581 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %397, i32 0, i32 31
  store i32 0, i32* %luma_transform_size_8x8_flag581, align 4
  br label %if.end.582

if.end.582:                                       ; preds = %if.then.580, %land.lhs.true.576, %land.lhs.true.573, %if.then.570
  %398 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  call void @SetCoeffAndReconstruction8x8(%struct.macroblock* %398)
  %399 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %intra_pred_modes = getelementptr inbounds %struct.macroblock, %struct.macroblock* %399, i32 0, i32 10
  %400 = bitcast [16 x i8]* %intra_pred_modes to i8*
  call void @llvm.memset.p0i8.i64(i8* %400, i8 2, i64 16, i32 4, i1 false)
  store i32 0, i32* %k, align 4
  %401 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %401, i32 0, i32 38
  %402 = load i32, i32* %block_y, align 4
  store i32 %402, i32* %j, align 4
  br label %for.cond.583

for.cond.583:                                     ; preds = %for.inc.593, %if.end.582
  %403 = load i32, i32* %j, align 4
  %404 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y584 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %404, i32 0, i32 38
  %405 = load i32, i32* %block_y584, align 4
  %add585 = add nsw i32 %405, 4
  %cmp586 = icmp slt i32 %403, %add585
  br i1 %cmp586, label %for.body.588, label %for.end.595

for.body.588:                                     ; preds = %for.cond.583
  %406 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %406, i32 0, i32 37
  %407 = load i32, i32* %block_x, align 4
  %idxprom589 = sext i32 %407 to i64
  %408 = load i32, i32* %j, align 4
  %idxprom590 = sext i32 %408 to i64
  %409 = load i8**, i8*** %ipredmodes, align 8
  %arrayidx591 = getelementptr inbounds i8*, i8** %409, i64 %idxprom590
  %410 = load i8*, i8** %arrayidx591, align 8
  %arrayidx592 = getelementptr inbounds i8, i8* %410, i64 %idxprom589
  call void @llvm.memset.p0i8.i64(i8* %arrayidx592, i8 2, i64 4, i32 1, i1 false)
  br label %for.inc.593

for.inc.593:                                      ; preds = %for.body.588
  %411 = load i32, i32* %j, align 4
  %inc594 = add nsw i32 %411, 1
  store i32 %inc594, i32* %j, align 4
  br label %for.cond.583

for.end.595:                                      ; preds = %for.cond.583
  br label %if.end.699

if.else.596:                                      ; preds = %lor.end.564
  %412 = load i16, i16* @best_mode, align 2
  %conv597 = sext i16 %412 to i32
  %cmp598 = icmp eq i32 %conv597, 13
  br i1 %cmp598, label %if.then.600, label %if.end.640

if.then.600:                                      ; preds = %if.else.596
  %413 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %intra_pred_modes601 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %413, i32 0, i32 10
  %414 = bitcast [16 x i8]* %intra_pred_modes601 to i8*
  %415 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %intra_pred_modes8x8 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %415, i32 0, i32 11
  %416 = bitcast [16 x i8]* %intra_pred_modes8x8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %414, i8* %416, i64 16, i32 4, i1 false)
  %417 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y602 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %417, i32 0, i32 38
  %418 = load i32, i32* %block_y602, align 4
  store i32 %418, i32* %j, align 4
  br label %for.cond.603

for.cond.603:                                     ; preds = %for.inc.620, %if.then.600
  %419 = load i32, i32* %j, align 4
  %420 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y604 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %420, i32 0, i32 38
  %421 = load i32, i32* %block_y604, align 4
  %add605 = add nsw i32 %421, 4
  %cmp606 = icmp slt i32 %419, %add605
  br i1 %cmp606, label %for.body.608, label %for.end.622

for.body.608:                                     ; preds = %for.cond.603
  %422 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x609 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %422, i32 0, i32 37
  %423 = load i32, i32* %block_x609, align 4
  %idxprom610 = sext i32 %423 to i64
  %424 = load i32, i32* %j, align 4
  %idxprom611 = sext i32 %424 to i64
  %425 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode612 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %425, i32 0, i32 31
  %426 = load i8**, i8*** %ipredmode612, align 8
  %arrayidx613 = getelementptr inbounds i8*, i8** %426, i64 %idxprom611
  %427 = load i8*, i8** %arrayidx613, align 8
  %arrayidx614 = getelementptr inbounds i8, i8* %427, i64 %idxprom610
  %428 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x615 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %428, i32 0, i32 37
  %429 = load i32, i32* %block_x615, align 4
  %idxprom616 = sext i32 %429 to i64
  %430 = load i32, i32* %j, align 4
  %idxprom617 = sext i32 %430 to i64
  %431 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode8x8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %431, i32 0, i32 32
  %432 = load i8**, i8*** %ipredmode8x8, align 8
  %arrayidx618 = getelementptr inbounds i8*, i8** %432, i64 %idxprom617
  %433 = load i8*, i8** %arrayidx618, align 8
  %arrayidx619 = getelementptr inbounds i8, i8* %433, i64 %idxprom616
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx614, i8* %arrayidx619, i64 4, i32 1, i1 false)
  br label %for.inc.620

for.inc.620:                                      ; preds = %for.body.608
  %434 = load i32, i32* %j, align 4
  %inc621 = add nsw i32 %434, 1
  store i32 %inc621, i32* %j, align 4
  br label %for.cond.603

for.end.622:                                      ; preds = %for.cond.603
  store i32 0, i32* %j, align 4
  br label %for.cond.623

for.cond.623:                                     ; preds = %for.inc.637, %for.end.622
  %435 = load i32, i32* %j, align 4
  %cmp624 = icmp slt i32 %435, 16
  br i1 %cmp624, label %for.body.626, label %for.end.639

for.body.626:                                     ; preds = %for.cond.623
  %436 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x627 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %436, i32 0, i32 39
  %437 = load i32, i32* %pix_x627, align 4
  %idxprom628 = sext i32 %437 to i64
  %438 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y629 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %438, i32 0, i32 40
  %439 = load i32, i32* %pix_y629, align 4
  %440 = load i32, i32* %j, align 4
  %add630 = add nsw i32 %439, %440
  %idxprom631 = sext i32 %add630 to i64
  %441 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY632 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %441, i32 0, i32 29
  %442 = load i16**, i16*** %imgY632, align 8
  %arrayidx633 = getelementptr inbounds i16*, i16** %442, i64 %idxprom631
  %443 = load i16*, i16** %arrayidx633, align 8
  %arrayidx634 = getelementptr inbounds i16, i16* %443, i64 %idxprom628
  %444 = bitcast i16* %arrayidx634 to i8*
  %445 = load i32, i32* %j, align 4
  %idxprom635 = sext i32 %445 to i64
  %arrayidx636 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* @temp_imgY, i32 0, i64 %idxprom635
  %446 = bitcast [16 x i16]* %arrayidx636 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %444, i8* %446, i64 32, i32 2, i1 false)
  br label %for.inc.637

for.inc.637:                                      ; preds = %for.body.626
  %447 = load i32, i32* %j, align 4
  %inc638 = add nsw i32 %447, 1
  store i32 %inc638, i32* %j, align 4
  br label %for.cond.623

for.end.639:                                      ; preds = %for.cond.623
  br label %if.end.640

if.end.640:                                       ; preds = %for.end.639, %if.else.596
  %448 = load i16, i16* @best_mode, align 2
  %conv641 = sext i16 %448 to i32
  %cmp642 = icmp ne i32 %conv641, 9
  br i1 %cmp642, label %land.lhs.true.644, label %if.end.698

land.lhs.true.644:                                ; preds = %if.end.640
  %449 = load i16, i16* @best_mode, align 2
  %conv645 = sext i16 %449 to i32
  %cmp646 = icmp ne i32 %conv645, 13
  br i1 %cmp646, label %if.then.648, label %if.end.698

if.then.648:                                      ; preds = %land.lhs.true.644
  %450 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %intra_pred_modes649 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %450, i32 0, i32 10
  %451 = bitcast [16 x i8]* %intra_pred_modes649 to i8*
  call void @llvm.memset.p0i8.i64(i8* %451, i8 2, i64 16, i32 4, i1 false)
  %452 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y650 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %452, i32 0, i32 38
  %453 = load i32, i32* %block_y650, align 4
  store i32 %453, i32* %j, align 4
  br label %for.cond.651

for.cond.651:                                     ; preds = %for.inc.662, %if.then.648
  %454 = load i32, i32* %j, align 4
  %455 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y652 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %455, i32 0, i32 38
  %456 = load i32, i32* %block_y652, align 4
  %add653 = add nsw i32 %456, 4
  %cmp654 = icmp slt i32 %454, %add653
  br i1 %cmp654, label %for.body.656, label %for.end.664

for.body.656:                                     ; preds = %for.cond.651
  %457 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x657 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %457, i32 0, i32 37
  %458 = load i32, i32* %block_x657, align 4
  %idxprom658 = sext i32 %458 to i64
  %459 = load i32, i32* %j, align 4
  %idxprom659 = sext i32 %459 to i64
  %460 = load i8**, i8*** %ipredmodes, align 8
  %arrayidx660 = getelementptr inbounds i8*, i8** %460, i64 %idxprom659
  %461 = load i8*, i8** %arrayidx660, align 8
  %arrayidx661 = getelementptr inbounds i8, i8* %461, i64 %idxprom658
  call void @llvm.memset.p0i8.i64(i8* %arrayidx661, i8 2, i64 4, i32 1, i1 false)
  br label %for.inc.662

for.inc.662:                                      ; preds = %for.body.656
  %462 = load i32, i32* %j, align 4
  %inc663 = add nsw i32 %462, 1
  store i32 %inc663, i32* %j, align 4
  br label %for.cond.651

for.end.664:                                      ; preds = %for.cond.651
  %463 = load i16, i16* @best_mode, align 2
  %conv665 = sext i16 %463 to i32
  %cmp666 = icmp ne i32 %conv665, 10
  br i1 %cmp666, label %if.then.668, label %if.end.697

if.then.668:                                      ; preds = %for.end.664
  %464 = load i16, i16* @best_mode, align 2
  %conv669 = sext i16 %464 to i32
  %cmp670 = icmp sge i32 %conv669, 1
  br i1 %cmp670, label %land.lhs.true.672, label %if.end.678

land.lhs.true.672:                                ; preds = %if.then.668
  %465 = load i16, i16* @best_mode, align 2
  %conv673 = sext i16 %465 to i32
  %cmp674 = icmp sle i32 %conv673, 3
  br i1 %cmp674, label %if.then.676, label %if.end.678

if.then.676:                                      ; preds = %land.lhs.true.672
  %466 = load i32, i32* %best_transform_flag, align 4
  %467 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag677 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %467, i32 0, i32 31
  store i32 %466, i32* %luma_transform_size_8x8_flag677, align 4
  br label %if.end.678

if.end.678:                                       ; preds = %if.then.676, %land.lhs.true.672, %if.then.668
  call void @LumaResidualCoding()
  %468 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp679 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %468, i32 0, i32 12
  %469 = load i32, i32* %cbp679, align 4
  %cmp680 = icmp eq i32 %469, 0
  br i1 %cmp680, label %land.lhs.true.682, label %if.end.688

land.lhs.true.682:                                ; preds = %if.end.678
  %470 = load i16, i16* @best_mode, align 2
  %conv683 = sext i16 %470 to i32
  %cmp684 = icmp eq i32 %conv683, 0
  br i1 %cmp684, label %if.then.686, label %if.end.688

if.then.686:                                      ; preds = %land.lhs.true.682
  %471 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag687 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %471, i32 0, i32 31
  store i32 0, i32* %luma_transform_size_8x8_flag687, align 4
  br label %if.end.688

if.end.688:                                       ; preds = %if.then.686, %land.lhs.true.682, %if.end.678
  %472 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable689 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %472, i32 0, i32 157
  %473 = load i32, i32* %RCEnable689, align 4
  %tobool690 = icmp ne i32 %473, 0
  br i1 %tobool690, label %if.then.691, label %if.end.696

if.then.691:                                      ; preds = %if.end.688
  %474 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x692 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %474, i32 0, i32 43
  %475 = load i32, i32* %opix_x692, align 4
  %476 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y693 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %476, i32 0, i32 44
  %477 = load i32, i32* %opix_y693, align 4
  %478 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr694 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %478, i32 0, i32 51
  %arraydecay695 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr694, i32 0, i32 0
  call void @rc_store_diff(i32 %475, i32 %477, [16 x i16]* %arraydecay695)
  br label %if.end.696

if.end.696:                                       ; preds = %if.then.691, %if.end.688
  br label %if.end.697

if.end.697:                                       ; preds = %if.end.696, %for.end.664
  br label %if.end.698

if.end.698:                                       ; preds = %if.end.697, %land.lhs.true.644, %if.end.640
  br label %if.end.699

if.end.699:                                       ; preds = %if.end.698, %for.end.595
  %479 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp700 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %479, i32 0, i32 12
  %480 = load i32, i32* %cbp700, align 4
  %and = and i32 %480, 15
  %cmp701 = icmp eq i32 %and, 0
  br i1 %cmp701, label %land.lhs.true.703, label %if.end.713

land.lhs.true.703:                                ; preds = %if.end.699
  %481 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type704 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %481, i32 0, i32 8
  %482 = load i32, i32* %mb_type704, align 4
  %cmp705 = icmp eq i32 %482, 9
  br i1 %cmp705, label %if.end.713, label %lor.lhs.false.707

lor.lhs.false.707:                                ; preds = %land.lhs.true.703
  %483 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type708 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %483, i32 0, i32 8
  %484 = load i32, i32* %mb_type708, align 4
  %cmp709 = icmp eq i32 %484, 13
  br i1 %cmp709, label %if.end.713, label %if.then.711

if.then.711:                                      ; preds = %lor.lhs.false.707
  %485 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag712 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %485, i32 0, i32 31
  store i32 0, i32* %luma_transform_size_8x8_flag712, align 4
  br label %if.end.713

if.end.713:                                       ; preds = %if.then.711, %lor.lhs.false.707, %land.lhs.true.703, %if.end.699
  %486 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format714 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %486, i32 0, i32 160
  %487 = load i32, i32* %yuv_format714, align 4
  %cmp715 = icmp ne i32 %487, 0
  br i1 %cmp715, label %if.then.717, label %if.end.718

if.then.717:                                      ; preds = %if.end.713
  call void @IntraChromaPrediction(i32* null, i32* null, i32* null)
  br label %if.end.718

if.end.718:                                       ; preds = %if.then.717, %if.end.713
  %488 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %i16offset = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %488, i32 0, i32 94
  store i32 0, i32* %i16offset, align 4
  store i32 0, i32* %dummy, align 4
  %489 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format719 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %489, i32 0, i32 160
  %490 = load i32, i32* %yuv_format719, align 4
  %cmp720 = icmp ne i32 %490, 0
  br i1 %cmp720, label %if.then.722, label %if.end.723

if.then.722:                                      ; preds = %if.end.718
  call void @ChromaResidualCoding(i32* %dummy)
  br label %if.end.723

if.end.723:                                       ; preds = %if.then.722, %if.end.718
  %491 = load i16, i16* @best_mode, align 2
  %conv724 = sext i16 %491 to i32
  %cmp725 = icmp eq i32 %conv724, 10
  br i1 %cmp725, label %if.then.727, label %if.end.731

if.then.727:                                      ; preds = %if.end.723
  %492 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp728 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %492, i32 0, i32 12
  %493 = load i32, i32* %cbp728, align 4
  %494 = load i32, i32* %i16mode, align 4
  %call729 = call i32 @I16Offset(i32 %493, i32 %494)
  %495 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %i16offset730 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %495, i32 0, i32 94
  store i32 %call729, i32* %i16offset730, align 4
  br label %if.end.731

if.end.731:                                       ; preds = %if.then.727, %if.end.723
  %496 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %497 = load i16, i16* %bslice, align 2
  %conv732 = sext i16 %497 to i32
  call void @SetMotionVectorsMB(%struct.macroblock* %496, i32 %conv732)
  %498 = load i16, i16* %pslice, align 2
  %conv733 = sext i16 %498 to i32
  %tobool734 = icmp ne i32 %conv733, 0
  br i1 %tobool734, label %land.lhs.true.735, label %if.end.793

land.lhs.true.735:                                ; preds = %if.end.731
  %499 = load i16, i16* @best_mode, align 2
  %conv736 = sext i16 %499 to i32
  %cmp737 = icmp eq i32 %conv736, 1
  br i1 %cmp737, label %land.lhs.true.739, label %if.end.793

land.lhs.true.739:                                ; preds = %land.lhs.true.735
  %500 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp740 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %500, i32 0, i32 12
  %501 = load i32, i32* %cbp740, align 4
  %cmp741 = icmp eq i32 %501, 0
  br i1 %cmp741, label %land.lhs.true.743, label %if.end.793

land.lhs.true.743:                                ; preds = %land.lhs.true.739
  %502 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x744 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %502, i32 0, i32 37
  %503 = load i32, i32* %block_x744, align 4
  %idxprom745 = sext i32 %503 to i64
  %504 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y746 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %504, i32 0, i32 38
  %505 = load i32, i32* %block_y746, align 4
  %idxprom747 = sext i32 %505 to i64
  %506 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %506, i32 0, i32 35
  %507 = load i8***, i8**** %ref_idx, align 8
  %arrayidx748 = getelementptr inbounds i8**, i8*** %507, i64 0
  %508 = load i8**, i8*** %arrayidx748, align 8
  %arrayidx749 = getelementptr inbounds i8*, i8** %508, i64 %idxprom747
  %509 = load i8*, i8** %arrayidx749, align 8
  %arrayidx750 = getelementptr inbounds i8, i8* %509, i64 %idxprom745
  %510 = load i8, i8* %arrayidx750, align 1
  %conv751 = sext i8 %510 to i32
  %cmp752 = icmp eq i32 %conv751, 0
  br i1 %cmp752, label %land.lhs.true.754, label %if.end.793

land.lhs.true.754:                                ; preds = %land.lhs.true.743
  %511 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x755 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %511, i32 0, i32 37
  %512 = load i32, i32* %block_x755, align 4
  %idxprom756 = sext i32 %512 to i64
  %513 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y757 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %513, i32 0, i32 38
  %514 = load i32, i32* %block_y757, align 4
  %idxprom758 = sext i32 %514 to i64
  %515 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %515, i32 0, i32 38
  %516 = load i16****, i16***** %mv, align 8
  %arrayidx759 = getelementptr inbounds i16***, i16**** %516, i64 0
  %517 = load i16***, i16**** %arrayidx759, align 8
  %arrayidx760 = getelementptr inbounds i16**, i16*** %517, i64 %idxprom758
  %518 = load i16**, i16*** %arrayidx760, align 8
  %arrayidx761 = getelementptr inbounds i16*, i16** %518, i64 %idxprom756
  %519 = load i16*, i16** %arrayidx761, align 8
  %arrayidx762 = getelementptr inbounds i16, i16* %519, i64 0
  %520 = load i16, i16* %arrayidx762, align 2
  %conv763 = sext i16 %520 to i32
  %521 = load i16*, i16** %allmvs, align 8
  %arrayidx764 = getelementptr inbounds i16, i16* %521, i64 0
  %522 = load i16, i16* %arrayidx764, align 2
  %conv765 = sext i16 %522 to i32
  %cmp766 = icmp eq i32 %conv763, %conv765
  br i1 %cmp766, label %land.lhs.true.768, label %if.end.793

land.lhs.true.768:                                ; preds = %land.lhs.true.754
  %523 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x769 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %523, i32 0, i32 37
  %524 = load i32, i32* %block_x769, align 4
  %idxprom770 = sext i32 %524 to i64
  %525 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y771 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %525, i32 0, i32 38
  %526 = load i32, i32* %block_y771, align 4
  %idxprom772 = sext i32 %526 to i64
  %527 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv773 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %527, i32 0, i32 38
  %528 = load i16****, i16***** %mv773, align 8
  %arrayidx774 = getelementptr inbounds i16***, i16**** %528, i64 0
  %529 = load i16***, i16**** %arrayidx774, align 8
  %arrayidx775 = getelementptr inbounds i16**, i16*** %529, i64 %idxprom772
  %530 = load i16**, i16*** %arrayidx775, align 8
  %arrayidx776 = getelementptr inbounds i16*, i16** %530, i64 %idxprom770
  %531 = load i16*, i16** %arrayidx776, align 8
  %arrayidx777 = getelementptr inbounds i16, i16* %531, i64 1
  %532 = load i16, i16* %arrayidx777, align 2
  %conv778 = sext i16 %532 to i32
  %533 = load i16*, i16** %allmvs, align 8
  %arrayidx779 = getelementptr inbounds i16, i16* %533, i64 1
  %534 = load i16, i16* %arrayidx779, align 2
  %conv780 = sext i16 %534 to i32
  %cmp781 = icmp eq i32 %conv778, %conv780
  br i1 %cmp781, label %if.then.783, label %if.end.793

if.then.783:                                      ; preds = %land.lhs.true.768
  %535 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %535, i32 0, i32 14
  %arrayidx784 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode, i32 0, i64 3
  store i32 0, i32* %arrayidx784, align 4
  %536 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode785 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %536, i32 0, i32 14
  %arrayidx786 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode785, i32 0, i64 2
  store i32 0, i32* %arrayidx786, align 4
  %537 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode787 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %537, i32 0, i32 14
  %arrayidx788 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode787, i32 0, i64 1
  store i32 0, i32* %arrayidx788, align 4
  %538 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %b8mode789 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %538, i32 0, i32 14
  %arrayidx790 = getelementptr inbounds [4 x i32], [4 x i32]* %b8mode789, i32 0, i64 0
  store i32 0, i32* %arrayidx790, align 4
  %539 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type791 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %539, i32 0, i32 8
  store i32 0, i32* %mb_type791, align 4
  %540 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag792 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %540, i32 0, i32 31
  store i32 0, i32* %luma_transform_size_8x8_flag792, align 4
  br label %if.end.793

if.end.793:                                       ; preds = %if.then.783, %land.lhs.true.768, %land.lhs.true.754, %land.lhs.true.743, %land.lhs.true.739, %land.lhs.true.735, %if.end.731
  %541 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %541, i32 0, i32 100
  %542 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool794 = icmp ne i32 %542, 0
  br i1 %tobool794, label %if.then.795, label %if.end.796

if.then.795:                                      ; preds = %if.end.793
  call void @set_mbaff_parameters()
  br label %if.end.796

if.end.796:                                       ; preds = %if.then.795, %if.end.793
  %543 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable797 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %543, i32 0, i32 157
  %544 = load i32, i32* %RCEnable797, align 4
  %tobool798 = icmp ne i32 %544, 0
  br i1 %tobool798, label %if.then.799, label %if.end.800

if.then.799:                                      ; preds = %if.end.796
  %545 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %546 = load i16, i16* @best_mode, align 2
  call void @update_rc(%struct.macroblock* %545, i16 signext %546)
  br label %if.end.800

if.end.800:                                       ; preds = %if.then.799, %if.end.796
  %547 = load i32, i32* %min_cost, align 4
  %conv801 = sitofp i32 %547 to double
  %548 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %min_rdcost = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %548, i32 0, i32 0
  store double %conv801, double* %min_rdcost, align 8
  %549 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag802 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %549, i32 0, i32 100
  %550 = load i32, i32* %MbaffFrameFlag802, align 4
  %tobool803 = icmp ne i32 %550, 0
  br i1 %tobool803, label %land.lhs.true.804, label %if.end.836

land.lhs.true.804:                                ; preds = %if.end.800
  %551 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr805 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %551, i32 0, i32 3
  %552 = load i32, i32* %current_mb_nr805, align 4
  %rem = srem i32 %552, 2
  %tobool806 = icmp ne i32 %rem, 0
  br i1 %tobool806, label %land.lhs.true.807, label %if.end.836

land.lhs.true.807:                                ; preds = %land.lhs.true.804
  %553 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type808 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %553, i32 0, i32 8
  %554 = load i32, i32* %mb_type808, align 4
  %tobool809 = icmp ne i32 %554, 0
  br i1 %tobool809, label %cond.true.810, label %cond.false.811

cond.true.810:                                    ; preds = %land.lhs.true.807
  br i1 false, label %land.lhs.true.818, label %if.end.836

cond.false.811:                                   ; preds = %land.lhs.true.807
  %555 = load i16, i16* %bslice, align 2
  %conv812 = sext i16 %555 to i32
  %tobool813 = icmp ne i32 %conv812, 0
  br i1 %tobool813, label %cond.true.814, label %cond.false.817

cond.true.814:                                    ; preds = %cond.false.811
  %556 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %cbp815 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %556, i32 0, i32 12
  %557 = load i32, i32* %cbp815, align 4
  %tobool816 = icmp ne i32 %557, 0
  br i1 %tobool816, label %if.end.836, label %land.lhs.true.818

cond.false.817:                                   ; preds = %cond.false.811
  br i1 true, label %land.lhs.true.818, label %if.end.836

land.lhs.true.818:                                ; preds = %cond.false.817, %cond.true.814, %cond.true.810
  %558 = load %struct.macroblock*, %struct.macroblock** %prevMB, align 8
  %mb_type819 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %558, i32 0, i32 8
  %559 = load i32, i32* %mb_type819, align 4
  %tobool820 = icmp ne i32 %559, 0
  br i1 %tobool820, label %cond.true.821, label %cond.false.822

cond.true.821:                                    ; preds = %land.lhs.true.818
  br i1 false, label %land.lhs.true.829, label %if.end.836

cond.false.822:                                   ; preds = %land.lhs.true.818
  %560 = load i16, i16* %bslice, align 2
  %conv823 = sext i16 %560 to i32
  %tobool824 = icmp ne i32 %conv823, 0
  br i1 %tobool824, label %cond.true.825, label %cond.false.828

cond.true.825:                                    ; preds = %cond.false.822
  %561 = load %struct.macroblock*, %struct.macroblock** %prevMB, align 8
  %cbp826 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %561, i32 0, i32 12
  %562 = load i32, i32* %cbp826, align 4
  %tobool827 = icmp ne i32 %562, 0
  br i1 %tobool827, label %if.end.836, label %land.lhs.true.829

cond.false.828:                                   ; preds = %cond.false.822
  br i1 true, label %land.lhs.true.829, label %if.end.836

land.lhs.true.829:                                ; preds = %cond.false.828, %cond.true.825, %cond.true.821
  %call830 = call i32 @field_flag_inference()
  %curr_mb_field = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 5
  %563 = load i16, i16* %curr_mb_field, align 2
  %conv831 = sext i16 %563 to i32
  %cmp832 = icmp eq i32 %call830, %conv831
  br i1 %cmp832, label %if.end.836, label %if.then.834

if.then.834:                                      ; preds = %land.lhs.true.829
  %564 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %min_rdcost835 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %564, i32 0, i32 0
  store double 1.000000e+30, double* %min_rdcost835, align 8
  br label %if.end.836

if.end.836:                                       ; preds = %if.then.834, %land.lhs.true.829, %cond.false.828, %cond.true.825, %cond.true.821, %cond.false.817, %cond.true.814, %cond.true.810, %land.lhs.true.804, %if.end.800
  %565 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RestrictRef = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %565, i32 0, i32 128
  %566 = load i32, i32* %RestrictRef, align 4
  %tobool837 = icmp ne i32 %566, 0
  br i1 %tobool837, label %if.then.838, label %if.end.840

if.then.838:                                      ; preds = %if.end.836
  %567 = load i16, i16* %intra, align 2
  %conv839 = sext i16 %567 to i32
  %568 = load i32, i32* %intra1, align 4
  %569 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  call void @update_refresh_map(i32 %conv839, i32 %568, %struct.macroblock* %569)
  br label %if.end.840

if.end.840:                                       ; preds = %if.then.838, %if.end.836
  %570 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode841 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %570, i32 0, i32 169
  %571 = load i32, i32* %SearchMode841, align 4
  %cmp842 = icmp eq i32 %571, 1
  br i1 %cmp842, label %if.then.844, label %if.else.850

if.then.844:                                      ; preds = %if.end.840
  %572 = load i16, i16* @best_mode, align 2
  %conv845 = sext i16 %572 to i32
  %list_offset846 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 4
  %arrayidx847 = getelementptr inbounds [2 x i16], [2 x i16]* %list_offset846, i32 0, i64 0
  %573 = load i16, i16* %arrayidx847, align 2
  %idxprom848 = sext i16 %573 to i64
  %arrayidx849 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom848
  %574 = load i32, i32* %arrayidx849, align 4
  call void @UMHEX_skip_intrabk_SAD(i32 %conv845, i32 %574)
  br label %if.end.861

if.else.850:                                      ; preds = %if.end.840
  %575 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode851 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %575, i32 0, i32 169
  %576 = load i32, i32* %SearchMode851, align 4
  %cmp852 = icmp eq i32 %576, 2
  br i1 %cmp852, label %if.then.854, label %if.end.860

if.then.854:                                      ; preds = %if.else.850
  %577 = load i16, i16* @best_mode, align 2
  %conv855 = sext i16 %577 to i32
  %list_offset856 = getelementptr inbounds %struct.RD_PARAMS, %struct.RD_PARAMS* %enc_mb, i32 0, i32 4
  %arrayidx857 = getelementptr inbounds [2 x i16], [2 x i16]* %list_offset856, i32 0, i64 0
  %578 = load i16, i16* %arrayidx857, align 2
  %idxprom858 = sext i16 %578 to i64
  %arrayidx859 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom858
  %579 = load i32, i32* %arrayidx859, align 4
  call void @smpUMHEX_skip_intrabk_SAD(i32 %conv855, i32 %579)
  br label %if.end.860

if.end.860:                                       ; preds = %if.then.854, %if.else.850
  br label %if.end.861

if.end.861:                                       ; preds = %if.end.860, %if.then.844
  %580 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %580, i32 0, i32 23
  %581 = load i32, i32* %UseConstrainedIntraPred, align 4
  %tobool862 = icmp ne i32 %581, 0
  br i1 %tobool862, label %land.lhs.true.863, label %if.end.892

land.lhs.true.863:                                ; preds = %if.end.861
  %582 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type864 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %582, i32 0, i32 5
  %583 = load i32, i32* %type864, align 4
  %cmp865 = icmp eq i32 %583, 0
  br i1 %cmp865, label %if.then.871, label %lor.lhs.false.867

lor.lhs.false.867:                                ; preds = %land.lhs.true.863
  %584 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type868 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %584, i32 0, i32 5
  %585 = load i32, i32* %type868, align 4
  %cmp869 = icmp eq i32 %585, 1
  br i1 %cmp869, label %if.then.871, label %if.end.892

if.then.871:                                      ; preds = %lor.lhs.false.867, %land.lhs.true.863
  %586 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type872 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %586, i32 0, i32 8
  %587 = load i32, i32* %mb_type872, align 4
  %cmp873 = icmp eq i32 %587, 9
  br i1 %cmp873, label %lor.end.887, label %lor.lhs.false.875

lor.lhs.false.875:                                ; preds = %if.then.871
  %588 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type876 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %588, i32 0, i32 8
  %589 = load i32, i32* %mb_type876, align 4
  %cmp877 = icmp eq i32 %589, 10
  br i1 %cmp877, label %lor.end.887, label %lor.lhs.false.879

lor.lhs.false.879:                                ; preds = %lor.lhs.false.875
  %590 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type880 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %590, i32 0, i32 8
  %591 = load i32, i32* %mb_type880, align 4
  %cmp881 = icmp eq i32 %591, 13
  br i1 %cmp881, label %lor.end.887, label %lor.rhs.883

lor.rhs.883:                                      ; preds = %lor.lhs.false.879
  %592 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_type884 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %592, i32 0, i32 8
  %593 = load i32, i32* %mb_type884, align 4
  %cmp885 = icmp eq i32 %593, 14
  br label %lor.end.887

lor.end.887:                                      ; preds = %lor.rhs.883, %lor.lhs.false.879, %lor.lhs.false.875, %if.then.871
  %594 = phi i1 [ true, %lor.lhs.false.879 ], [ true, %lor.lhs.false.875 ], [ true, %if.then.871 ], [ %cmp885, %lor.rhs.883 ]
  %lor.ext888 = zext i1 %594 to i32
  %595 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr889 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %595, i32 0, i32 3
  %596 = load i32, i32* %current_mb_nr889, align 4
  %idxprom890 = sext i32 %596 to i64
  %597 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %597, i32 0, i32 63
  %598 = load i32*, i32** %intra_block, align 8
  %arrayidx891 = getelementptr inbounds i32, i32* %598, i64 %idxprom890
  store i32 %lor.ext888, i32* %arrayidx891, align 4
  br label %if.end.892

if.end.892:                                       ; preds = %lor.end.887, %lor.lhs.false.867, %if.end.861
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

declare void @SetModesAndRefframeForBlocks(i32) #2

declare i32 @TransformDecision(i32, i32*) #2

declare void @adjust_mb16x16_cost(i32) #2

declare void @submacroblock_mode_decision(%struct.RD_PARAMS* byval align 8, %struct.RD_8x8DATA*, %struct.macroblock*, i32***, i32*, i16 signext, i32, i32*, i32*, i32*, i32) #2

declare void @reset_coding_state(%struct.CSobj*) #2

declare void @rc_store_diff(i32, i32, [16 x i16]*) #2

declare i32 @GetBestTransformP8x8() #2

declare void @FindSkipModeMotionVector() #2

declare void @IntraChromaPrediction(i32*, i32*, i32*) #2

declare i32 @GetDirectCostMB() #2

; Function Attrs: nounwind readnone
declare double @floor(double) #4

declare i32 @Mode_Decision_for_new_Intra8x8Macroblock(double, i32*) #2

declare i32 @Mode_Decision_for_Intra4x4Macroblock(double, i32*) #2

declare void @intrapred_luma_16x16() #2

declare i32 @find_sad_16x16(i32*) #2

declare i32 @dct_luma_16x16(i32) #2

declare void @SetCoeffAndReconstruction8x8(%struct.macroblock*) #2

declare void @LumaResidualCoding() #2

declare void @ChromaResidualCoding(i32*) #2

declare i32 @I16Offset(i32, i32) #2

declare void @SetMotionVectorsMB(%struct.macroblock*, i32) #2

declare void @set_mbaff_parameters() #2

declare void @update_rc(%struct.macroblock*, i16 signext) #2

declare i32 @field_flag_inference() #2

declare void @update_refresh_map(i32, i32, %struct.macroblock*) #2

declare void @UMHEX_skip_intrabk_SAD(i32, i32) #2

declare void @smpUMHEX_skip_intrabk_SAD(i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
