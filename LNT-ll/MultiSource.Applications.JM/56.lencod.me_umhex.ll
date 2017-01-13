; ModuleID = './MultiSource.Applications.JM/56.lencod.me_umhex.bc'
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
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16****, i16****, i16*****, i16***, i8*, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.SubImageContainer = type { i16****, [2 x i16****] }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }

@AlphaFourth_1 = common global [8 x float] zeroinitializer, align 16
@AlphaFourth_2 = common global [8 x float] zeroinitializer, align 16
@input = external global %struct.InputParameters*, align 8
@img = external global %struct.ImageParameters*, align 8
@quant_coef = internal constant [6 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 13107, i32 8066, i32 13107, i32 8066], [4 x i32] [i32 8066, i32 5243, i32 8066, i32 5243], [4 x i32] [i32 13107, i32 8066, i32 13107, i32 8066], [4 x i32] [i32 8066, i32 5243, i32 8066, i32 5243]], [4 x [4 x i32]] [[4 x i32] [i32 11916, i32 7490, i32 11916, i32 7490], [4 x i32] [i32 7490, i32 4660, i32 7490, i32 4660], [4 x i32] [i32 11916, i32 7490, i32 11916, i32 7490], [4 x i32] [i32 7490, i32 4660, i32 7490, i32 4660]], [4 x [4 x i32]] [[4 x i32] [i32 10082, i32 6554, i32 10082, i32 6554], [4 x i32] [i32 6554, i32 4194, i32 6554, i32 4194], [4 x i32] [i32 10082, i32 6554, i32 10082, i32 6554], [4 x i32] [i32 6554, i32 4194, i32 6554, i32 4194]], [4 x [4 x i32]] [[4 x i32] [i32 9362, i32 5825, i32 9362, i32 5825], [4 x i32] [i32 5825, i32 3647, i32 5825, i32 3647], [4 x i32] [i32 9362, i32 5825, i32 9362, i32 5825], [4 x i32] [i32 5825, i32 3647, i32 5825, i32 3647]], [4 x [4 x i32]] [[4 x i32] [i32 8192, i32 5243, i32 8192, i32 5243], [4 x i32] [i32 5243, i32 3355, i32 5243, i32 3355], [4 x i32] [i32 8192, i32 5243, i32 8192, i32 5243], [4 x i32] [i32 5243, i32 3355, i32 5243, i32 3355]], [4 x [4 x i32]] [[4 x i32] [i32 7282, i32 4559, i32 7282, i32 4559], [4 x i32] [i32 4559, i32 2893, i32 4559, i32 2893], [4 x i32] [i32 7282, i32 4559, i32 7282, i32 4559], [4 x i32] [i32 4559, i32 2893, i32 4559, i32 2893]]], align 16
@Bsize = common global [8 x float] zeroinitializer, align 16
@Median_Pred_Thd = internal constant [8 x i32] [i32 0, i32 750, i32 350, i32 350, i32 170, i32 80, i32 80, i32 40], align 16
@Median_Pred_Thd_MB = internal global [8 x i32] zeroinitializer, align 16
@Big_Hexagon_Thd = internal constant [8 x i32] [i32 0, i32 3000, i32 1500, i32 1500, i32 800, i32 400, i32 400, i32 200], align 16
@Big_Hexagon_Thd_MB = internal global [8 x i32] zeroinitializer, align 16
@Multi_Ref_Thd = internal constant [8 x i32] [i32 0, i32 300, i32 120, i32 120, i32 60, i32 30, i32 30, i32 15], align 16
@Multi_Ref_Thd_MB = internal global [8 x i32] zeroinitializer, align 16
@Threshold_DSR = internal constant [8 x i32] [i32 0, i32 2200, i32 1000, i32 1000, i32 500, i32 250, i32 250, i32 120], align 16
@Threshold_DSR_MB = common global [8 x i32] zeroinitializer, align 16
@flag_intra = common global i8* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"UMHEX_get_mem: flag_intra\00", align 1
@McostState = common global i8** null, align 8
@fastme_ref_cost = common global i32**** null, align 8
@fastme_l0_cost = common global i32*** null, align 8
@fastme_l1_cost = common global i32*** null, align 8
@SearchState = common global i8** null, align 8
@fastme_best_cost = common global i32** null, align 8
@fastme_l0_cost_bipred = common global i32*** null, align 8
@fastme_l1_cost_bipred = common global i32*** null, align 8
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@dist_method = internal global i32 0, align 4
@listX = external global [6 x %struct.storable_picture**], align 16
@ref_pic_ptr = internal global %struct.storable_picture* null, align 8
@ref_pic_sub = external global %struct.SubImageContainer, align 8
@img_width = external global i16, align 2
@img_height = external global i16, align 2
@width_pad = common global i32 0, align 4
@height_pad = common global i32 0, align 4
@wp_weight = common global i32*** null, align 8
@weight_luma = external global i32, align 4
@wp_offset = common global i32*** null, align 8
@offset_luma = external global i32, align 4
@ChromaMEEnable = external global i32, align 4
@width_pad_cr = common global i32 0, align 4
@height_pad_cr = common global i32 0, align 4
@weight_cr = external global [2 x i32], align 4
@offset_cr = external global [2 x i32], align 4
@ref_access_method = external global i32, align 4
@mvbits = external global i32*, align 8
@computeUniPred = external global [6 x i32 (i16*, i32, i32, i32, i32, i32)*], align 16
@Diamond_x = internal constant [4 x i32] [i32 -1, i32 0, i32 1, i32 0], align 16
@Diamond_y = internal constant [4 x i32] [i32 0, i32 1, i32 0, i32 -1], align 16
@pred_SAD = common global i32 0, align 4
@pred_MV_uplayer = common global [2 x i32] zeroinitializer, align 4
@pred_MV_ref_flag = internal global i32 0, align 4
@pred_MV_ref = common global [2 x i32] zeroinitializer, align 4
@spiral_search_x = external global i16*, align 8
@spiral_search_y = external global i16*, align 8
@Big_Hexagon_x = internal constant [16 x i32] [i32 0, i32 -2, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -2, i32 0, i32 2, i32 4, i32 4, i32 4, i32 4, i32 4, i32 2], align 16
@Big_Hexagon_y = internal constant [16 x i32] [i32 4, i32 3, i32 2, i32 1, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -3, i32 -2, i32 -1, i32 0, i32 1, i32 2, i32 3], align 16
@Hexagon_x = internal constant [6 x i32] [i32 2, i32 1, i32 -1, i32 -2, i32 -1, i32 1], align 16
@Hexagon_y = internal constant [6 x i32] [i32 0, i32 -2, i32 -2, i32 0, i32 2, i32 2], align 16
@UMHEXSubPelBlockMotionSearch.Diamond_x = internal global [4 x i32] [i32 -1, i32 0, i32 1, i32 0], align 16
@UMHEXSubPelBlockMotionSearch.Diamond_y = internal global [4 x i32] [i32 0, i32 1, i32 0, i32 -1], align 16
@start_me_refinement_hp = common global i32 0, align 4
@flag_intra_SAD = common global i32 0, align 4
@UMHEX_setup.indication_blocktype = private unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 4, i32 4, i32 5], align 16
@frame_ctr = common global [5 x i32] zeroinitializer, align 16
@ref_pic1_sub = external global %struct.SubImageContainer, align 8
@ref_pic2_sub = external global %struct.SubImageContainer, align 8
@wbp_weight = common global i32**** null, align 8
@weight1 = external global i16, align 2
@weight2 = external global i16, align 2
@offsetBi = external global i16, align 2
@computeBiPred = external global i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, align 8
@luma_log_weight_denom = common global i32 0, align 4
@weight1_cr = external global [2 x i16], align 2
@weight2_cr = external global [2 x i16], align 2
@offsetBi_cr = external global [2 x i16], align 2
@chroma_log_weight_denom = common global i32 0, align 4
@bipred2_access_method = external global i32, align 4
@bipred1_access_method = external global i32, align 4
@SAD_a = common global i32 0, align 4
@SAD_b = common global i32 0, align 4
@SAD_c = common global i32 0, align 4
@bipred_flag = common global i32 0, align 4
@SAD_d = common global i32 0, align 4
@UMHEX_blocktype = common global i32 0, align 4
@dsr_new_search_range = common global i32 0, align 4
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
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@mb_adaptive = common global i32 0, align 4
@MBPairIsField = common global i32 0, align 4
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
@start_me_refinement_qp = common global i32 0, align 4
@predict_point = common global [5 x [2 x i32]] zeroinitializer, align 16
@getNeighbour = common global void (i32, i32, i32, i32, %struct.pix_pos*)* null, align 8
@get_mb_block_pos = common global void (i32, i32*, i32*)* null, align 8

; Function Attrs: nounwind uwtable
define void @UMHEX_DefineThreshold() #0 {
entry:
  store float 0x3F847AE140000000, float* getelementptr inbounds ([8 x float], [8 x float]* @AlphaFourth_1, i32 0, i64 1), align 4
  store float 0x3F847AE140000000, float* getelementptr inbounds ([8 x float], [8 x float]* @AlphaFourth_1, i32 0, i64 2), align 4
  store float 0x3F847AE140000000, float* getelementptr inbounds ([8 x float], [8 x float]* @AlphaFourth_1, i32 0, i64 3), align 4
  store float 0x3F947AE140000000, float* getelementptr inbounds ([8 x float], [8 x float]* @AlphaFourth_1, i32 0, i64 4), align 4
  store float 0x3F9EB851E0000000, float* getelementptr inbounds ([8 x float], [8 x float]* @AlphaFourth_1, i32 0, i64 5), align 4
  store float 0x3F9EB851E0000000, float* getelementptr inbounds ([8 x float], [8 x float]* @AlphaFourth_1, i32 0, i64 6), align 4
  store float 0x3FA47AE140000000, float* getelementptr inbounds ([8 x float], [8 x float]* @AlphaFourth_1, i32 0, i64 7), align 4
  store float 0x3FAEB851E0000000, float* getelementptr inbounds ([8 x float], [8 x float]* @AlphaFourth_2, i32 0, i64 1), align 4
  store float 0x3FB1EB8520000000, float* getelementptr inbounds ([8 x float], [8 x float]* @AlphaFourth_2, i32 0, i64 2), align 4
  store float 0x3FB1EB8520000000, float* getelementptr inbounds ([8 x float], [8 x float]* @AlphaFourth_2, i32 0, i64 3), align 4
  store float 0x3FB47AE140000000, float* getelementptr inbounds ([8 x float], [8 x float]* @AlphaFourth_2, i32 0, i64 4), align 4
  store float 0x3FBEB851E0000000, float* getelementptr inbounds ([8 x float], [8 x float]* @AlphaFourth_2, i32 0, i64 5), align 4
  store float 0x3FBC28F5C0000000, float* getelementptr inbounds ([8 x float], [8 x float]* @AlphaFourth_2, i32 0, i64 6), align 4
  store float 0x3FC3333340000000, float* getelementptr inbounds ([8 x float], [8 x float]* @AlphaFourth_2, i32 0, i64 7), align 4
  call void @UMHEX_DefineThresholdMB()
  ret void
}

; Function Attrs: nounwind uwtable
define void @UMHEX_DefineThresholdMB() #0 {
entry:
  %gb_qp_per = alloca i32, align 4
  %gb_qp_rem = alloca i32, align 4
  %gb_q_bits = alloca i32, align 4
  %gb_qp_const = alloca i32, align 4
  %Thresh4x4 = alloca i32, align 4
  %Quantize_step = alloca float, align 4
  %i = alloca i32, align 4
  %scale_factor = alloca float, align 4
  %QP_factor = alloca float, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 4
  %1 = load i32, i32* %qpN, align 4
  %sub = sub nsw i32 %1, 0
  %div = sdiv i32 %sub, 6
  store i32 %div, i32* %gb_qp_per, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 4
  %3 = load i32, i32* %qpN1, align 4
  %sub2 = sub nsw i32 %3, 0
  %rem = srem i32 %sub2, 6
  store i32 %rem, i32* %gb_qp_rem, align 4
  %4 = load i32, i32* %gb_qp_per, align 4
  %add = add nsw i32 15, %4
  store i32 %add, i32* %gb_q_bits, align 4
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UMHexScale = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 171
  %6 = load i32, i32* %UMHexScale, align 4
  %conv = sitofp i32 %6 to double
  %mul = fmul double %conv, 1.000000e-01
  %sub3 = fsub double 1.000000e+00, %mul
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UMHexScale4 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 171
  %8 = load i32, i32* %UMHexScale4, align 4
  %conv5 = sitofp i32 %8 to double
  %mul6 = fmul double %conv5, 1.000000e-01
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 13
  %10 = load i32, i32* %width, align 4
  %div7 = sdiv i32 %10, 176
  %conv8 = sitofp i32 %div7 to double
  %mul9 = fmul double %mul6, %conv8
  %add10 = fadd double %sub3, %mul9
  %conv11 = fptrunc double %add10 to float
  store float %conv11, float* %scale_factor, align 4
  %11 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN12 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %11, i32 0, i32 4
  %12 = load i32, i32* %qpN12, align 4
  %conv13 = sitofp i32 %12 to float
  %div14 = fdiv float %conv13, 5.100000e+01
  %conv15 = fpext float %div14 to double
  %mul16 = fmul double 9.000000e-01, %conv15
  %sub17 = fsub double 1.000000e+00, %mul16
  %conv18 = fptrunc double %sub17 to float
  store float %conv18, float* %QP_factor, align 4
  %13 = load i32, i32* %gb_q_bits, align 4
  %shl = shl i32 1, %13
  %div19 = sdiv i32 %shl, 6
  store i32 %div19, i32* %gb_qp_const, align 4
  %14 = load i32, i32* %gb_q_bits, align 4
  %shl20 = shl i32 1, %14
  %15 = load i32, i32* %gb_qp_const, align 4
  %sub21 = sub nsw i32 %shl20, %15
  %16 = load i32, i32* %gb_qp_rem, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom
  %arrayidx22 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx, i32 0, i64 0
  %arrayidx23 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx22, i32 0, i64 0
  %17 = load i32, i32* %arrayidx23, align 4
  %div24 = sdiv i32 %sub21, %17
  store i32 %div24, i32* %Thresh4x4, align 4
  %18 = load i32, i32* %Thresh4x4, align 4
  %conv25 = sitofp i32 %18 to float
  %div26 = fdiv float %conv25, 0x403670A3E0000000
  %mul27 = fmul float %div26, 2.000000e+00
  %19 = load float, float* %scale_factor, align 4
  %mul28 = fmul float %mul27, %19
  store float %mul28, float* %Quantize_step, align 4
  %20 = load float, float* %Quantize_step, align 4
  %mul29 = fmul float 2.560000e+02, %20
  store float %mul29, float* getelementptr inbounds ([8 x float], [8 x float]* @Bsize, i32 0, i64 7), align 4
  %21 = load float, float* getelementptr inbounds ([8 x float], [8 x float]* @Bsize, i32 0, i64 7), align 4
  %mul30 = fmul float %21, 4.000000e+00
  store float %mul30, float* getelementptr inbounds ([8 x float], [8 x float]* @Bsize, i32 0, i64 6), align 4
  %22 = load float, float* getelementptr inbounds ([8 x float], [8 x float]* @Bsize, i32 0, i64 7), align 4
  %mul31 = fmul float %22, 4.000000e+00
  store float %mul31, float* getelementptr inbounds ([8 x float], [8 x float]* @Bsize, i32 0, i64 5), align 4
  %23 = load float, float* getelementptr inbounds ([8 x float], [8 x float]* @Bsize, i32 0, i64 5), align 4
  %mul32 = fmul float %23, 4.000000e+00
  store float %mul32, float* getelementptr inbounds ([8 x float], [8 x float]* @Bsize, i32 0, i64 4), align 4
  %24 = load float, float* getelementptr inbounds ([8 x float], [8 x float]* @Bsize, i32 0, i64 4), align 4
  %mul33 = fmul float %24, 4.000000e+00
  store float %mul33, float* getelementptr inbounds ([8 x float], [8 x float]* @Bsize, i32 0, i64 3), align 4
  %25 = load float, float* getelementptr inbounds ([8 x float], [8 x float]* @Bsize, i32 0, i64 4), align 4
  %mul34 = fmul float %25, 4.000000e+00
  store float %mul34, float* getelementptr inbounds ([8 x float], [8 x float]* @Bsize, i32 0, i64 2), align 4
  %26 = load float, float* getelementptr inbounds ([8 x float], [8 x float]* @Bsize, i32 0, i64 2), align 4
  %mul35 = fmul float %26, 4.000000e+00
  store float %mul35, float* getelementptr inbounds ([8 x float], [8 x float]* @Bsize, i32 0, i64 1), align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %27 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %27, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %28 to i64
  %arrayidx38 = getelementptr inbounds [8 x i32], [8 x i32]* @Median_Pred_Thd, i32 0, i64 %idxprom37
  %29 = load i32, i32* %arrayidx38, align 4
  %conv39 = sitofp i32 %29 to float
  %30 = load float, float* %scale_factor, align 4
  %mul40 = fmul float %conv39, %30
  %31 = load float, float* %QP_factor, align 4
  %mul41 = fmul float %mul40, %31
  %conv42 = fptosi float %mul41 to i32
  %32 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %32 to i64
  %arrayidx44 = getelementptr inbounds [8 x i32], [8 x i32]* @Median_Pred_Thd_MB, i32 0, i64 %idxprom43
  store i32 %conv42, i32* %arrayidx44, align 4
  %33 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %33 to i64
  %arrayidx46 = getelementptr inbounds [8 x i32], [8 x i32]* @Big_Hexagon_Thd, i32 0, i64 %idxprom45
  %34 = load i32, i32* %arrayidx46, align 4
  %conv47 = sitofp i32 %34 to float
  %35 = load float, float* %scale_factor, align 4
  %mul48 = fmul float %conv47, %35
  %36 = load float, float* %QP_factor, align 4
  %mul49 = fmul float %mul48, %36
  %conv50 = fptosi float %mul49 to i32
  %37 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %37 to i64
  %arrayidx52 = getelementptr inbounds [8 x i32], [8 x i32]* @Big_Hexagon_Thd_MB, i32 0, i64 %idxprom51
  store i32 %conv50, i32* %arrayidx52, align 4
  %38 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %38 to i64
  %arrayidx54 = getelementptr inbounds [8 x i32], [8 x i32]* @Multi_Ref_Thd, i32 0, i64 %idxprom53
  %39 = load i32, i32* %arrayidx54, align 4
  %conv55 = sitofp i32 %39 to float
  %40 = load float, float* %scale_factor, align 4
  %mul56 = fmul float %conv55, %40
  %41 = load float, float* %QP_factor, align 4
  %mul57 = fmul float %mul56, %41
  %conv58 = fptosi float %mul57 to i32
  %42 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %42 to i64
  %arrayidx60 = getelementptr inbounds [8 x i32], [8 x i32]* @Multi_Ref_Thd_MB, i32 0, i64 %idxprom59
  store i32 %conv58, i32* %arrayidx60, align 4
  %43 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %43 to i64
  %arrayidx62 = getelementptr inbounds [8 x i32], [8 x i32]* @Threshold_DSR, i32 0, i64 %idxprom61
  %44 = load i32, i32* %arrayidx62, align 4
  %conv63 = sitofp i32 %44 to float
  %45 = load float, float* %scale_factor, align 4
  %mul64 = fmul float %conv63, %45
  %46 = load float, float* %QP_factor, align 4
  %mul65 = fmul float %mul64, %46
  %conv66 = fptosi float %mul65 to i32
  %47 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %47 to i64
  %arrayidx68 = getelementptr inbounds [8 x i32], [8 x i32]* @Threshold_DSR_MB, i32 0, i64 %idxprom67
  store i32 %conv66, i32* %arrayidx68, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i32, i32* %i, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @UMHEX_get_mem() #0 {
entry:
  %memory_size = alloca i32, align 4
  store i32 0, i32* %memory_size, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 13
  %1 = load i32, i32* %width, align 4
  %shr = ashr i32 %1, 4
  %add = add nsw i32 %shr, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 1) #3
  store i8* %call, i8** @flag_intra, align 8
  %cmp = icmp eq i8* null, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %search_range = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 7
  %3 = load i32, i32* %search_range, align 4
  %mul = mul nsw i32 2, %3
  %add2 = add nsw i32 %mul, 1
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %search_range3 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 7
  %5 = load i32, i32* %search_range3, align 4
  %mul4 = mul nsw i32 2, %5
  %add5 = add nsw i32 %mul4, 1
  %call6 = call i32 @get_mem2D(i8*** @McostState, i32 %add2, i32 %add5)
  %6 = load i32, i32* %memory_size, align 4
  %add7 = add nsw i32 %6, %call6
  store i32 %add7, i32* %memory_size, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 8
  %8 = load i32, i32* %max_num_references, align 4
  %call8 = call i32 @get_mem4Dint(i32***** @fastme_ref_cost, i32 %8, i32 9, i32 4, i32 4)
  %9 = load i32, i32* %memory_size, align 4
  %add9 = add nsw i32 %9, %call8
  store i32 %add9, i32* %memory_size, align 4
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 17
  %11 = load i32, i32* %height, align 4
  %div = sdiv i32 %11, 4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 13
  %13 = load i32, i32* %width10, align 4
  %div11 = sdiv i32 %13, 4
  %call12 = call i32 @get_mem3Dint(i32**** @fastme_l0_cost, i32 9, i32 %div, i32 %div11)
  %14 = load i32, i32* %memory_size, align 4
  %add13 = add nsw i32 %14, %call12
  store i32 %add13, i32* %memory_size, align 4
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height14 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 17
  %16 = load i32, i32* %height14, align 4
  %div15 = sdiv i32 %16, 4
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width16 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 13
  %18 = load i32, i32* %width16, align 4
  %div17 = sdiv i32 %18, 4
  %call18 = call i32 @get_mem3Dint(i32**** @fastme_l1_cost, i32 9, i32 %div15, i32 %div17)
  %19 = load i32, i32* %memory_size, align 4
  %add19 = add nsw i32 %19, %call18
  store i32 %add19, i32* %memory_size, align 4
  %call20 = call i32 @get_mem2D(i8*** @SearchState, i32 7, i32 7)
  %20 = load i32, i32* %memory_size, align 4
  %add21 = add nsw i32 %20, %call20
  store i32 %add21, i32* %memory_size, align 4
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width22 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 13
  %22 = load i32, i32* %width22, align 4
  %div23 = sdiv i32 %22, 4
  %call24 = call i32 @get_mem2Dint(i32*** @fastme_best_cost, i32 7, i32 %div23)
  %23 = load i32, i32* %memory_size, align 4
  %add25 = add nsw i32 %23, %call24
  store i32 %add25, i32* %memory_size, align 4
  %24 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %24, i32 0, i32 46
  %25 = load i32, i32* %BiPredMotionEstimation, align 4
  %cmp26 = icmp eq i32 %25, 1
  br i1 %cmp26, label %if.then.28, label %if.end.41

if.then.28:                                       ; preds = %if.end
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height29 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 17
  %27 = load i32, i32* %height29, align 4
  %div30 = sdiv i32 %27, 4
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 13
  %29 = load i32, i32* %width31, align 4
  %div32 = sdiv i32 %29, 4
  %call33 = call i32 @get_mem3Dint(i32**** @fastme_l0_cost_bipred, i32 9, i32 %div30, i32 %div32)
  %30 = load i32, i32* %memory_size, align 4
  %add34 = add nsw i32 %30, %call33
  store i32 %add34, i32* %memory_size, align 4
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height35 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 17
  %32 = load i32, i32* %height35, align 4
  %div36 = sdiv i32 %32, 4
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width37 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 13
  %34 = load i32, i32* %width37, align 4
  %div38 = sdiv i32 %34, 4
  %call39 = call i32 @get_mem3Dint(i32**** @fastme_l1_cost_bipred, i32 9, i32 %div36, i32 %div38)
  %35 = load i32, i32* %memory_size, align 4
  %add40 = add nsw i32 %35, %call39
  store i32 %add40, i32* %memory_size, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.28, %if.end
  %36 = load i32, i32* %memory_size, align 4
  ret i32 %36
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare void @no_mem_exit(i8*) #2

declare i32 @get_mem2D(i8***, i32, i32) #2

declare i32 @get_mem4Dint(i32*****, i32, i32, i32, i32) #2

declare i32 @get_mem3Dint(i32****, i32, i32, i32) #2

declare i32 @get_mem2Dint(i32***, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @UMHEX_free_mem() #0 {
entry:
  %0 = load i8**, i8*** @McostState, align 8
  call void @free_mem2D(i8** %0)
  %1 = load i32****, i32***** @fastme_ref_cost, align 8
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 8
  %3 = load i32, i32* %max_num_references, align 4
  call void @free_mem4Dint(i32**** %1, i32 %3, i32 9)
  %4 = load i32***, i32**** @fastme_l0_cost, align 8
  call void @free_mem3Dint(i32*** %4, i32 9)
  %5 = load i32***, i32**** @fastme_l1_cost, align 8
  call void @free_mem3Dint(i32*** %5, i32 9)
  %6 = load i8**, i8*** @SearchState, align 8
  call void @free_mem2D(i8** %6)
  %7 = load i32**, i32*** @fastme_best_cost, align 8
  call void @free_mem2Dint(i32** %7)
  %8 = load i8*, i8** @flag_intra, align 8
  call void @free(i8* %8) #3
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 46
  %10 = load i32, i32* %BiPredMotionEstimation, align 4
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32***, i32**** @fastme_l0_cost_bipred, align 8
  call void @free_mem3Dint(i32*** %11, i32 9)
  %12 = load i32***, i32**** @fastme_l1_cost_bipred, align 8
  call void @free_mem3Dint(i32*** %12, i32 9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @free_mem2D(i8**) #2

declare void @free_mem4Dint(i32****, i32, i32) #2

declare void @free_mem3Dint(i32***, i32) #2

declare void @free_mem2Dint(i32**) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @UMHEXIntegerPelBlockMotionSearch(i16* %orig_pic, i16 signext %ref, i32 %list, i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocktype, i16 signext %pred_mv_x, i16 signext %pred_mv_y, i16* %mv_x, i16* %mv_y, i32 %search_range, i32 %min_mcost, i32 %lambda_factor) #0 {
entry:
  %orig_pic.addr = alloca i16*, align 8
  %ref.addr = alloca i16, align 2
  %list.addr = alloca i32, align 4
  %pic_pix_x.addr = alloca i32, align 4
  %pic_pix_y.addr = alloca i32, align 4
  %blocktype.addr = alloca i32, align 4
  %pred_mv_x.addr = alloca i16, align 2
  %pred_mv_y.addr = alloca i16, align 2
  %mv_x.addr = alloca i16*, align 8
  %mv_y.addr = alloca i16*, align 8
  %search_range.addr = alloca i32, align 4
  %min_mcost.addr = alloca i32, align 4
  %lambda_factor.addr = alloca i32, align 4
  %list_offset = alloca i32, align 4
  %mvshift = alloca i32, align 4
  %blocksize_y = alloca i32, align 4
  %blocksize_x = alloca i32, align 4
  %pred_x = alloca i32, align 4
  %pred_y = alloca i32, align 4
  %center_x = alloca i32, align 4
  %center_y = alloca i32, align 4
  %best_x = alloca i32, align 4
  %best_y = alloca i32, align 4
  %search_step = alloca i32, align 4
  %iYMinNow = alloca i32, align 4
  %iXMinNow = alloca i32, align 4
  %pos = alloca i32, align 4
  %cand_x = alloca i32, align 4
  %cand_y = alloca i32, align 4
  %mcost = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %j = alloca i32, align 4
  %betaFourth_1 = alloca float, align 4
  %betaFourth_2 = alloca float, align 4
  %temp_Big_Hexagon_x = alloca [16 x i32], align 16
  %temp_Big_Hexagon_y = alloca [16 x i32], align 16
  %mb_x = alloca i16, align 2
  %mb_y = alloca i16, align 2
  %pic_pix_x2 = alloca i16, align 2
  %block_x = alloca i16, align 2
  %block_y = alloca i16, align 2
  %ET_Thred = alloca i32, align 4
  %SAD_prediction = alloca i32*, align 8
  %apply_weights = alloca i32, align 4
  store i16* %orig_pic, i16** %orig_pic.addr, align 8
  store i16 %ref, i16* %ref.addr, align 2
  store i32 %list, i32* %list.addr, align 4
  store i32 %pic_pix_x, i32* %pic_pix_x.addr, align 4
  store i32 %pic_pix_y, i32* %pic_pix_y.addr, align 4
  store i32 %blocktype, i32* %blocktype.addr, align 4
  store i16 %pred_mv_x, i16* %pred_mv_x.addr, align 2
  store i16 %pred_mv_y, i16* %pred_mv_y.addr, align 2
  store i16* %mv_x, i16** %mv_x.addr, align 8
  store i16* %mv_y, i16** %mv_y.addr, align 8
  store i32 %search_range, i32* %search_range.addr, align 4
  store i32 %min_mcost, i32* %min_mcost.addr, align 4
  store i32 %lambda_factor, i32* %lambda_factor.addr, align 4
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
  %rem = srem i32 %8, 2
  %tobool3 = icmp ne i32 %rem, 0
  %cond = select i1 %tobool3, i32 4, i32 2
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond4 = phi i32 [ %cond, %cond.true ], [ 0, %cond.false ]
  store i32 %cond4, i32* %list_offset, align 4
  store i32 2, i32* %mvshift, align 4
  %9 = load i32, i32* %blocktype.addr, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %10, i32 0, i32 18
  %arrayidx6 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size, i32 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx6, i32 0, i64 1
  %11 = load i32, i32* %arrayidx7, align 4
  store i32 %11, i32* %blocksize_y, align 4
  %12 = load i32, i32* %blocktype.addr, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size9 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %13, i32 0, i32 18
  %arrayidx10 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size9, i32 0, i64 %idxprom8
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx10, i32 0, i64 0
  %14 = load i32, i32* %arrayidx11, align 4
  store i32 %14, i32* %blocksize_x, align 4
  %15 = load i32, i32* %pic_pix_x.addr, align 4
  %16 = load i32, i32* %mvshift, align 4
  %shl = shl i32 %15, %16
  %17 = load i16, i16* %pred_mv_x.addr, align 2
  %conv = sext i16 %17 to i32
  %add = add nsw i32 %shl, %conv
  store i32 %add, i32* %pred_x, align 4
  %18 = load i32, i32* %pic_pix_y.addr, align 4
  %19 = load i32, i32* %mvshift, align 4
  %shl12 = shl i32 %18, %19
  %20 = load i16, i16* %pred_mv_y.addr, align 2
  %conv13 = sext i16 %20 to i32
  %add14 = add nsw i32 %shl12, %conv13
  store i32 %add14, i32* %pred_y, align 4
  %21 = load i32, i32* %pic_pix_x.addr, align 4
  %22 = load i16*, i16** %mv_x.addr, align 8
  %23 = load i16, i16* %22, align 2
  %conv15 = sext i16 %23 to i32
  %add16 = add nsw i32 %21, %conv15
  store i32 %add16, i32* %center_x, align 4
  %24 = load i32, i32* %pic_pix_y.addr, align 4
  %25 = load i16*, i16** %mv_y.addr, align 8
  %26 = load i16, i16* %25, align 2
  %conv17 = sext i16 %26 to i32
  %add18 = add nsw i32 %24, %conv17
  store i32 %add18, i32* %center_y, align 4
  store i32 0, i32* %best_x, align 4
  store i32 0, i32* %best_y, align 4
  %27 = load i32, i32* %pic_pix_x.addr, align 4
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 43
  %29 = load i32, i32* %opix_x, align 4
  %sub = sub nsw i32 %27, %29
  %conv19 = trunc i32 %sub to i16
  store i16 %conv19, i16* %mb_x, align 2
  %30 = load i32, i32* %pic_pix_y.addr, align 4
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 44
  %32 = load i32, i32* %opix_y, align 4
  %sub20 = sub nsw i32 %30, %32
  %conv21 = trunc i32 %sub20 to i16
  store i16 %conv21, i16* %mb_y, align 2
  %33 = load i32, i32* %pic_pix_x.addr, align 4
  %shr = ashr i32 %33, 2
  %conv22 = trunc i32 %shr to i16
  store i16 %conv22, i16* %pic_pix_x2, align 2
  %34 = load i16, i16* %mb_x, align 2
  %conv23 = sext i16 %34 to i32
  %shr24 = ashr i32 %conv23, 2
  %conv25 = trunc i32 %shr24 to i16
  store i16 %conv25, i16* %block_x, align 2
  %35 = load i16, i16* %mb_y, align 2
  %conv26 = sext i16 %35 to i32
  %shr27 = ashr i32 %conv26, 2
  %conv28 = trunc i32 %shr27 to i16
  store i16 %conv28, i16* %block_y, align 2
  %36 = load i32, i32* %blocktype.addr, align 4
  %idxprom29 = sext i32 %36 to i64
  %arrayidx30 = getelementptr inbounds [8 x i32], [8 x i32]* @Median_Pred_Thd_MB, i32 0, i64 %idxprom29
  %37 = load i32, i32* %arrayidx30, align 4
  store i32 %37, i32* %ET_Thred, align 4
  %38 = load i32, i32* %blocktype.addr, align 4
  %sub31 = sub nsw i32 %38, 1
  %idxprom32 = sext i32 %sub31 to i64
  %39 = load i32**, i32*** @fastme_best_cost, align 8
  %arrayidx33 = getelementptr inbounds i32*, i32** %39, i64 %idxprom32
  %40 = load i32*, i32** %arrayidx33, align 8
  store i32* %40, i32** %SAD_prediction, align 8
  %41 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %41, i32 0, i32 19
  %42 = load i32, i32* %weighted_pred_flag, align 4
  %tobool34 = icmp ne i32 %42, 0
  br i1 %tobool34, label %land.lhs.true.35, label %lor.lhs.false.40

land.lhs.true.35:                                 ; preds = %cond.end
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 5
  %44 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %44, 0
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.35
  %45 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type37 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %45, i32 0, i32 5
  %46 = load i32, i32* %type37, align 4
  %cmp38 = icmp eq i32 %46, 3
  br i1 %cmp38, label %land.rhs, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false, %cond.end
  %47 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %47, i32 0, i32 20
  %48 = load i32, i32* %weighted_bipred_idc, align 4
  %tobool41 = icmp ne i32 %48, 0
  br i1 %tobool41, label %land.lhs.true.42, label %land.end

land.lhs.true.42:                                 ; preds = %lor.lhs.false.40
  %49 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type43 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %49, i32 0, i32 5
  %50 = load i32, i32* %type43, align 4
  %cmp44 = icmp eq i32 %50, 1
  br i1 %cmp44, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.42, %lor.lhs.false, %land.lhs.true.35
  %51 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseWeightedReferenceME = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %51, i32 0, i32 61
  %52 = load i32, i32* %UseWeightedReferenceME, align 4
  %tobool46 = icmp ne i32 %52, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.42, %lor.lhs.false.40
  %53 = phi i1 [ false, %land.lhs.true.42 ], [ false, %lor.lhs.false.40 ], [ %tobool46, %land.rhs ]
  %land.ext = zext i1 %53 to i32
  store i32 %land.ext, i32* %apply_weights, align 4
  %54 = load i32, i32* %apply_weights, align 4
  %mul = mul nsw i32 3, %54
  %add47 = add nsw i32 0, %mul
  store i32 %add47, i32* @dist_method, align 4
  %55 = load i16, i16* %ref.addr, align 2
  %idxprom48 = sext i16 %55 to i64
  %56 = load i32, i32* %list.addr, align 4
  %57 = load i32, i32* %list_offset, align 4
  %add49 = add nsw i32 %56, %57
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom50
  %58 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %58, i64 %idxprom48
  %59 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx52, align 8
  store %struct.storable_picture* %59, %struct.storable_picture** @ref_pic_ptr, align 8
  %60 = load %struct.storable_picture*, %struct.storable_picture** @ref_pic_ptr, align 8
  %imgY_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %60, i32 0, i32 30
  %61 = load i16****, i16***** %imgY_sub, align 8
  store i16**** %61, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 0), align 8
  %62 = load %struct.storable_picture*, %struct.storable_picture** @ref_pic_ptr, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %62, i32 0, i32 18
  %63 = load i32, i32* %size_x, align 4
  %conv53 = trunc i32 %63 to i16
  store i16 %conv53, i16* @img_width, align 2
  %64 = load %struct.storable_picture*, %struct.storable_picture** @ref_pic_ptr, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %64, i32 0, i32 19
  %65 = load i32, i32* %size_y, align 4
  %conv54 = trunc i32 %65 to i16
  store i16 %conv54, i16* @img_height, align 2
  %66 = load %struct.storable_picture*, %struct.storable_picture** @ref_pic_ptr, align 8
  %size_x_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %66, i32 0, i32 22
  %67 = load i32, i32* %size_x_pad, align 4
  store i32 %67, i32* @width_pad, align 4
  %68 = load %struct.storable_picture*, %struct.storable_picture** @ref_pic_ptr, align 8
  %size_y_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %68, i32 0, i32 23
  %69 = load i32, i32* %size_y_pad, align 4
  store i32 %69, i32* @height_pad, align 4
  %70 = load i32, i32* %apply_weights, align 4
  %tobool55 = icmp ne i32 %70, 0
  br i1 %tobool55, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %71 = load i16, i16* %ref.addr, align 2
  %idxprom56 = sext i16 %71 to i64
  %72 = load i32, i32* %list.addr, align 4
  %73 = load i32, i32* %list_offset, align 4
  %add57 = add nsw i32 %72, %73
  %idxprom58 = sext i32 %add57 to i64
  %74 = load i32***, i32**** @wp_weight, align 8
  %arrayidx59 = getelementptr inbounds i32**, i32*** %74, i64 %idxprom58
  %75 = load i32**, i32*** %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds i32*, i32** %75, i64 %idxprom56
  %76 = load i32*, i32** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %76, i64 0
  %77 = load i32, i32* %arrayidx61, align 4
  store i32 %77, i32* @weight_luma, align 4
  %78 = load i16, i16* %ref.addr, align 2
  %idxprom62 = sext i16 %78 to i64
  %79 = load i32, i32* %list.addr, align 4
  %80 = load i32, i32* %list_offset, align 4
  %add63 = add nsw i32 %79, %80
  %idxprom64 = sext i32 %add63 to i64
  %81 = load i32***, i32**** @wp_offset, align 8
  %arrayidx65 = getelementptr inbounds i32**, i32*** %81, i64 %idxprom64
  %82 = load i32**, i32*** %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds i32*, i32** %82, i64 %idxprom62
  %83 = load i32*, i32** %arrayidx66, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %83, i64 0
  %84 = load i32, i32* %arrayidx67, align 4
  store i32 %84, i32* @offset_luma, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %85 = load i32, i32* @ChromaMEEnable, align 4
  %tobool68 = icmp ne i32 %85, 0
  br i1 %tobool68, label %if.then.69, label %if.end.100

if.then.69:                                       ; preds = %if.end
  %86 = load %struct.storable_picture*, %struct.storable_picture** @ref_pic_ptr, align 8
  %imgUV_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %86, i32 0, i32 32
  %87 = load i16*****, i16****** %imgUV_sub, align 8
  %arrayidx70 = getelementptr inbounds i16****, i16***** %87, i64 0
  %88 = load i16****, i16***** %arrayidx70, align 8
  store i16**** %88, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 1, i64 0), align 8
  %89 = load %struct.storable_picture*, %struct.storable_picture** @ref_pic_ptr, align 8
  %imgUV_sub71 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %89, i32 0, i32 32
  %90 = load i16*****, i16****** %imgUV_sub71, align 8
  %arrayidx72 = getelementptr inbounds i16****, i16***** %90, i64 1
  %91 = load i16****, i16***** %arrayidx72, align 8
  store i16**** %91, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 1, i64 1), align 8
  %92 = load %struct.storable_picture*, %struct.storable_picture** @ref_pic_ptr, align 8
  %size_x_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %92, i32 0, i32 24
  %93 = load i32, i32* %size_x_cr_pad, align 4
  store i32 %93, i32* @width_pad_cr, align 4
  %94 = load %struct.storable_picture*, %struct.storable_picture** @ref_pic_ptr, align 8
  %size_y_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %94, i32 0, i32 25
  %95 = load i32, i32* %size_y_cr_pad, align 4
  store i32 %95, i32* @height_pad_cr, align 4
  %96 = load i32, i32* %apply_weights, align 4
  %tobool73 = icmp ne i32 %96, 0
  br i1 %tobool73, label %if.then.74, label %if.end.99

if.then.74:                                       ; preds = %if.then.69
  %97 = load i16, i16* %ref.addr, align 2
  %idxprom75 = sext i16 %97 to i64
  %98 = load i32, i32* %list.addr, align 4
  %99 = load i32, i32* %list_offset, align 4
  %add76 = add nsw i32 %98, %99
  %idxprom77 = sext i32 %add76 to i64
  %100 = load i32***, i32**** @wp_weight, align 8
  %arrayidx78 = getelementptr inbounds i32**, i32*** %100, i64 %idxprom77
  %101 = load i32**, i32*** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds i32*, i32** %101, i64 %idxprom75
  %102 = load i32*, i32** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %102, i64 1
  %103 = load i32, i32* %arrayidx80, align 4
  store i32 %103, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @weight_cr, i32 0, i64 0), align 4
  %104 = load i16, i16* %ref.addr, align 2
  %idxprom81 = sext i16 %104 to i64
  %105 = load i32, i32* %list.addr, align 4
  %106 = load i32, i32* %list_offset, align 4
  %add82 = add nsw i32 %105, %106
  %idxprom83 = sext i32 %add82 to i64
  %107 = load i32***, i32**** @wp_weight, align 8
  %arrayidx84 = getelementptr inbounds i32**, i32*** %107, i64 %idxprom83
  %108 = load i32**, i32*** %arrayidx84, align 8
  %arrayidx85 = getelementptr inbounds i32*, i32** %108, i64 %idxprom81
  %109 = load i32*, i32** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %109, i64 2
  %110 = load i32, i32* %arrayidx86, align 4
  store i32 %110, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @weight_cr, i32 0, i64 1), align 4
  %111 = load i16, i16* %ref.addr, align 2
  %idxprom87 = sext i16 %111 to i64
  %112 = load i32, i32* %list.addr, align 4
  %113 = load i32, i32* %list_offset, align 4
  %add88 = add nsw i32 %112, %113
  %idxprom89 = sext i32 %add88 to i64
  %114 = load i32***, i32**** @wp_offset, align 8
  %arrayidx90 = getelementptr inbounds i32**, i32*** %114, i64 %idxprom89
  %115 = load i32**, i32*** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds i32*, i32** %115, i64 %idxprom87
  %116 = load i32*, i32** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %116, i64 1
  %117 = load i32, i32* %arrayidx92, align 4
  store i32 %117, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @offset_cr, i32 0, i64 0), align 4
  %118 = load i16, i16* %ref.addr, align 2
  %idxprom93 = sext i16 %118 to i64
  %119 = load i32, i32* %list.addr, align 4
  %120 = load i32, i32* %list_offset, align 4
  %add94 = add nsw i32 %119, %120
  %idxprom95 = sext i32 %add94 to i64
  %121 = load i32***, i32**** @wp_offset, align 8
  %arrayidx96 = getelementptr inbounds i32**, i32*** %121, i64 %idxprom95
  %122 = load i32**, i32*** %arrayidx96, align 8
  %arrayidx97 = getelementptr inbounds i32*, i32** %122, i64 %idxprom93
  %123 = load i32*, i32** %arrayidx97, align 8
  %arrayidx98 = getelementptr inbounds i32, i32* %123, i64 2
  %124 = load i32, i32* %arrayidx98, align 4
  store i32 %124, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @offset_cr, i32 0, i64 1), align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.74, %if.then.69
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.end
  %125 = load i32, i32* %center_x, align 4
  %126 = load i32, i32* %search_range.addr, align 4
  %cmp101 = icmp sgt i32 %125, %126
  br i1 %cmp101, label %land.lhs.true.103, label %if.else

land.lhs.true.103:                                ; preds = %if.end.100
  %127 = load i32, i32* %center_x, align 4
  %128 = load i16, i16* @img_width, align 2
  %conv104 = sext i16 %128 to i32
  %sub105 = sub nsw i32 %conv104, 1
  %129 = load i32, i32* %search_range.addr, align 4
  %sub106 = sub nsw i32 %sub105, %129
  %130 = load i32, i32* %blocksize_x, align 4
  %sub107 = sub nsw i32 %sub106, %130
  %cmp108 = icmp slt i32 %127, %sub107
  br i1 %cmp108, label %land.lhs.true.110, label %if.else

land.lhs.true.110:                                ; preds = %land.lhs.true.103
  %131 = load i32, i32* %center_y, align 4
  %132 = load i32, i32* %search_range.addr, align 4
  %cmp111 = icmp sgt i32 %131, %132
  br i1 %cmp111, label %land.lhs.true.113, label %if.else

land.lhs.true.113:                                ; preds = %land.lhs.true.110
  %133 = load i32, i32* %center_y, align 4
  %134 = load i16, i16* @img_height, align 2
  %conv114 = sext i16 %134 to i32
  %sub115 = sub nsw i32 %conv114, 1
  %135 = load i32, i32* %search_range.addr, align 4
  %sub116 = sub nsw i32 %sub115, %135
  %136 = load i32, i32* %blocksize_y, align 4
  %sub117 = sub nsw i32 %sub116, %136
  %cmp118 = icmp slt i32 %133, %sub117
  br i1 %cmp118, label %if.then.120, label %if.else

if.then.120:                                      ; preds = %land.lhs.true.113
  store i32 0, i32* @ref_access_method, align 4
  br label %if.end.121

if.else:                                          ; preds = %land.lhs.true.113, %land.lhs.true.110, %land.lhs.true.103, %if.end.100
  store i32 1, i32* @ref_access_method, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.else, %if.then.120
  %137 = load i8**, i8*** @McostState, align 8
  %arrayidx122 = getelementptr inbounds i8*, i8** %137, i64 0
  %138 = load i8*, i8** %arrayidx122, align 8
  %139 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %search_range123 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %139, i32 0, i32 7
  %140 = load i32, i32* %search_range123, align 4
  %mul124 = mul nsw i32 2, %140
  %add125 = add nsw i32 %mul124, 1
  %141 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %search_range126 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %141, i32 0, i32 7
  %142 = load i32, i32* %search_range126, align 4
  %mul127 = mul nsw i32 2, %142
  %add128 = add nsw i32 %mul127, 1
  %mul129 = mul nsw i32 %add125, %add128
  %conv130 = sext i32 %mul129 to i64
  call void @llvm.memset.p0i8.i64(i8* %138, i8 0, i64 %conv130, i32 1, i1 false)
  %143 = load i32, i32* %center_x, align 4
  store i32 %143, i32* %cand_x, align 4
  %144 = load i32, i32* %center_y, align 4
  store i32 %144, i32* %cand_y, align 4
  %145 = load i32, i32* %lambda_factor.addr, align 4
  %146 = load i32, i32* %cand_x, align 4
  %147 = load i32, i32* %mvshift, align 4
  %shl131 = shl i32 %146, %147
  %148 = load i32, i32* %pred_x, align 4
  %sub132 = sub nsw i32 %shl131, %148
  %idxprom133 = sext i32 %sub132 to i64
  %149 = load i32*, i32** @mvbits, align 8
  %arrayidx134 = getelementptr inbounds i32, i32* %149, i64 %idxprom133
  %150 = load i32, i32* %arrayidx134, align 4
  %151 = load i32, i32* %cand_y, align 4
  %152 = load i32, i32* %mvshift, align 4
  %shl135 = shl i32 %151, %152
  %153 = load i32, i32* %pred_y, align 4
  %sub136 = sub nsw i32 %shl135, %153
  %idxprom137 = sext i32 %sub136 to i64
  %154 = load i32*, i32** @mvbits, align 8
  %arrayidx138 = getelementptr inbounds i32, i32* %154, i64 %idxprom137
  %155 = load i32, i32* %arrayidx138, align 4
  %add139 = add nsw i32 %150, %155
  %mul140 = mul nsw i32 %145, %add139
  %shr141 = ashr i32 %mul140, 16
  store i32 %shr141, i32* %mcost, align 4
  %156 = load i32, i32* @dist_method, align 4
  %idxprom142 = sext i32 %156 to i64
  %arrayidx143 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom142
  %157 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx143, align 8
  %158 = load i16*, i16** %orig_pic.addr, align 8
  %159 = load i32, i32* %blocksize_y, align 4
  %160 = load i32, i32* %blocksize_x, align 4
  %161 = load i32, i32* %min_mcost.addr, align 4
  %162 = load i32, i32* %mcost, align 4
  %sub144 = sub nsw i32 %161, %162
  %163 = load i32, i32* %cand_x, align 4
  %shl145 = shl i32 %163, 2
  %add146 = add nsw i32 %shl145, 80
  %164 = load i32, i32* %cand_y, align 4
  %shl147 = shl i32 %164, 2
  %add148 = add nsw i32 %shl147, 80
  %call = call i32 %157(i16* %158, i32 %159, i32 %160, i32 %sub144, i32 %add146, i32 %add148)
  %165 = load i32, i32* %mcost, align 4
  %add149 = add nsw i32 %165, %call
  store i32 %add149, i32* %mcost, align 4
  %166 = load i32, i32* %search_range.addr, align 4
  %idxprom150 = sext i32 %166 to i64
  %167 = load i32, i32* %search_range.addr, align 4
  %idxprom151 = sext i32 %167 to i64
  %168 = load i8**, i8*** @McostState, align 8
  %arrayidx152 = getelementptr inbounds i8*, i8** %168, i64 %idxprom151
  %169 = load i8*, i8** %arrayidx152, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %169, i64 %idxprom150
  store i8 1, i8* %arrayidx153, align 1
  %170 = load i32, i32* %mcost, align 4
  %171 = load i32, i32* %min_mcost.addr, align 4
  %cmp154 = icmp slt i32 %170, %171
  br i1 %cmp154, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %if.end.121
  %172 = load i32, i32* %mcost, align 4
  store i32 %172, i32* %min_mcost.addr, align 4
  %173 = load i32, i32* %cand_x, align 4
  store i32 %173, i32* %best_x, align 4
  %174 = load i32, i32* %cand_y, align 4
  store i32 %174, i32* %best_y, align 4
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.156, %if.end.121
  %175 = load i32, i32* %best_x, align 4
  store i32 %175, i32* %iXMinNow, align 4
  %176 = load i32, i32* %best_y, align 4
  store i32 %176, i32* %iYMinNow, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.157
  %177 = load i32, i32* %m, align 4
  %cmp158 = icmp slt i32 %177, 4
  br i1 %cmp158, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %178 = load i32, i32* %iXMinNow, align 4
  %179 = load i32, i32* %m, align 4
  %idxprom160 = sext i32 %179 to i64
  %arrayidx161 = getelementptr inbounds [4 x i32], [4 x i32]* @Diamond_x, i32 0, i64 %idxprom160
  %180 = load i32, i32* %arrayidx161, align 4
  %add162 = add nsw i32 %178, %180
  store i32 %add162, i32* %cand_x, align 4
  %181 = load i32, i32* %iYMinNow, align 4
  %182 = load i32, i32* %m, align 4
  %idxprom163 = sext i32 %182 to i64
  %arrayidx164 = getelementptr inbounds [4 x i32], [4 x i32]* @Diamond_y, i32 0, i64 %idxprom163
  %183 = load i32, i32* %arrayidx164, align 4
  %add165 = add nsw i32 %181, %183
  store i32 %add165, i32* %cand_y, align 4
  %184 = load i32, i32* %cand_x, align 4
  %185 = load i32, i32* %center_x, align 4
  %sub166 = sub nsw i32 %184, %185
  %call167 = call i32 @iabs(i32 %sub166)
  %186 = load i32, i32* %search_range.addr, align 4
  %cmp168 = icmp sle i32 %call167, %186
  br i1 %cmp168, label %land.lhs.true.170, label %if.end.223

land.lhs.true.170:                                ; preds = %for.body
  %187 = load i32, i32* %cand_y, align 4
  %188 = load i32, i32* %center_y, align 4
  %sub171 = sub nsw i32 %187, %188
  %call172 = call i32 @iabs(i32 %sub171)
  %189 = load i32, i32* %search_range.addr, align 4
  %cmp173 = icmp sle i32 %call172, %189
  br i1 %cmp173, label %if.then.175, label %if.end.223

if.then.175:                                      ; preds = %land.lhs.true.170
  %190 = load i32, i32* %cand_x, align 4
  %191 = load i32, i32* %center_x, align 4
  %sub176 = sub nsw i32 %190, %191
  %192 = load i32, i32* %search_range.addr, align 4
  %add177 = add nsw i32 %sub176, %192
  %idxprom178 = sext i32 %add177 to i64
  %193 = load i32, i32* %cand_y, align 4
  %194 = load i32, i32* %center_y, align 4
  %sub179 = sub nsw i32 %193, %194
  %195 = load i32, i32* %search_range.addr, align 4
  %add180 = add nsw i32 %sub179, %195
  %idxprom181 = sext i32 %add180 to i64
  %196 = load i8**, i8*** @McostState, align 8
  %arrayidx182 = getelementptr inbounds i8*, i8** %196, i64 %idxprom181
  %197 = load i8*, i8** %arrayidx182, align 8
  %arrayidx183 = getelementptr inbounds i8, i8* %197, i64 %idxprom178
  %198 = load i8, i8* %arrayidx183, align 1
  %tobool184 = icmp ne i8 %198, 0
  br i1 %tobool184, label %if.end.222, label %if.then.185

if.then.185:                                      ; preds = %if.then.175
  %199 = load i32, i32* %lambda_factor.addr, align 4
  %200 = load i32, i32* %cand_x, align 4
  %201 = load i32, i32* %mvshift, align 4
  %shl186 = shl i32 %200, %201
  %202 = load i32, i32* %pred_x, align 4
  %sub187 = sub nsw i32 %shl186, %202
  %idxprom188 = sext i32 %sub187 to i64
  %203 = load i32*, i32** @mvbits, align 8
  %arrayidx189 = getelementptr inbounds i32, i32* %203, i64 %idxprom188
  %204 = load i32, i32* %arrayidx189, align 4
  %205 = load i32, i32* %cand_y, align 4
  %206 = load i32, i32* %mvshift, align 4
  %shl190 = shl i32 %205, %206
  %207 = load i32, i32* %pred_y, align 4
  %sub191 = sub nsw i32 %shl190, %207
  %idxprom192 = sext i32 %sub191 to i64
  %208 = load i32*, i32** @mvbits, align 8
  %arrayidx193 = getelementptr inbounds i32, i32* %208, i64 %idxprom192
  %209 = load i32, i32* %arrayidx193, align 4
  %add194 = add nsw i32 %204, %209
  %mul195 = mul nsw i32 %199, %add194
  %shr196 = ashr i32 %mul195, 16
  store i32 %shr196, i32* %mcost, align 4
  %210 = load i32, i32* %mcost, align 4
  %211 = load i32, i32* %min_mcost.addr, align 4
  %cmp197 = icmp slt i32 %210, %211
  br i1 %cmp197, label %if.then.199, label %if.end.221

if.then.199:                                      ; preds = %if.then.185
  %212 = load i32, i32* @dist_method, align 4
  %idxprom200 = sext i32 %212 to i64
  %arrayidx201 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom200
  %213 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx201, align 8
  %214 = load i16*, i16** %orig_pic.addr, align 8
  %215 = load i32, i32* %blocksize_y, align 4
  %216 = load i32, i32* %blocksize_x, align 4
  %217 = load i32, i32* %min_mcost.addr, align 4
  %218 = load i32, i32* %mcost, align 4
  %sub202 = sub nsw i32 %217, %218
  %219 = load i32, i32* %cand_x, align 4
  %shl203 = shl i32 %219, 2
  %add204 = add nsw i32 %shl203, 80
  %220 = load i32, i32* %cand_y, align 4
  %shl205 = shl i32 %220, 2
  %add206 = add nsw i32 %shl205, 80
  %call207 = call i32 %213(i16* %214, i32 %215, i32 %216, i32 %sub202, i32 %add204, i32 %add206)
  %221 = load i32, i32* %mcost, align 4
  %add208 = add nsw i32 %221, %call207
  store i32 %add208, i32* %mcost, align 4
  %222 = load i32, i32* %cand_x, align 4
  %223 = load i32, i32* %center_x, align 4
  %sub209 = sub nsw i32 %222, %223
  %224 = load i32, i32* %search_range.addr, align 4
  %add210 = add nsw i32 %sub209, %224
  %idxprom211 = sext i32 %add210 to i64
  %225 = load i32, i32* %cand_y, align 4
  %226 = load i32, i32* %center_y, align 4
  %sub212 = sub nsw i32 %225, %226
  %227 = load i32, i32* %search_range.addr, align 4
  %add213 = add nsw i32 %sub212, %227
  %idxprom214 = sext i32 %add213 to i64
  %228 = load i8**, i8*** @McostState, align 8
  %arrayidx215 = getelementptr inbounds i8*, i8** %228, i64 %idxprom214
  %229 = load i8*, i8** %arrayidx215, align 8
  %arrayidx216 = getelementptr inbounds i8, i8* %229, i64 %idxprom211
  store i8 1, i8* %arrayidx216, align 1
  %230 = load i32, i32* %mcost, align 4
  %231 = load i32, i32* %min_mcost.addr, align 4
  %cmp217 = icmp slt i32 %230, %231
  br i1 %cmp217, label %if.then.219, label %if.end.220

if.then.219:                                      ; preds = %if.then.199
  %232 = load i32, i32* %cand_x, align 4
  store i32 %232, i32* %best_x, align 4
  %233 = load i32, i32* %cand_y, align 4
  store i32 %233, i32* %best_y, align 4
  %234 = load i32, i32* %mcost, align 4
  store i32 %234, i32* %min_mcost.addr, align 4
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.219, %if.then.199
  br label %if.end.221

if.end.221:                                       ; preds = %if.end.220, %if.then.185
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %if.then.175
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.222, %land.lhs.true.170, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.223
  %235 = load i32, i32* %m, align 4
  %inc = add nsw i32 %235, 1
  store i32 %inc, i32* %m, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %236 = load i32, i32* %center_x, align 4
  %237 = load i32, i32* %pic_pix_x.addr, align 4
  %cmp224 = icmp ne i32 %236, %237
  br i1 %cmp224, label %if.then.229, label %lor.lhs.false.226

lor.lhs.false.226:                                ; preds = %for.end
  %238 = load i32, i32* %center_y, align 4
  %239 = load i32, i32* %pic_pix_y.addr, align 4
  %cmp227 = icmp ne i32 %238, %239
  br i1 %cmp227, label %if.then.229, label %if.end.359

if.then.229:                                      ; preds = %lor.lhs.false.226, %for.end
  %240 = load i32, i32* %pic_pix_x.addr, align 4
  store i32 %240, i32* %cand_x, align 4
  %241 = load i32, i32* %pic_pix_y.addr, align 4
  store i32 %241, i32* %cand_y, align 4
  %242 = load i32, i32* %cand_x, align 4
  %243 = load i32, i32* %center_x, align 4
  %sub230 = sub nsw i32 %242, %243
  %call231 = call i32 @iabs(i32 %sub230)
  %244 = load i32, i32* %search_range.addr, align 4
  %cmp232 = icmp sle i32 %call231, %244
  br i1 %cmp232, label %land.lhs.true.234, label %if.end.287

land.lhs.true.234:                                ; preds = %if.then.229
  %245 = load i32, i32* %cand_y, align 4
  %246 = load i32, i32* %center_y, align 4
  %sub235 = sub nsw i32 %245, %246
  %call236 = call i32 @iabs(i32 %sub235)
  %247 = load i32, i32* %search_range.addr, align 4
  %cmp237 = icmp sle i32 %call236, %247
  br i1 %cmp237, label %if.then.239, label %if.end.287

if.then.239:                                      ; preds = %land.lhs.true.234
  %248 = load i32, i32* %cand_x, align 4
  %249 = load i32, i32* %center_x, align 4
  %sub240 = sub nsw i32 %248, %249
  %250 = load i32, i32* %search_range.addr, align 4
  %add241 = add nsw i32 %sub240, %250
  %idxprom242 = sext i32 %add241 to i64
  %251 = load i32, i32* %cand_y, align 4
  %252 = load i32, i32* %center_y, align 4
  %sub243 = sub nsw i32 %251, %252
  %253 = load i32, i32* %search_range.addr, align 4
  %add244 = add nsw i32 %sub243, %253
  %idxprom245 = sext i32 %add244 to i64
  %254 = load i8**, i8*** @McostState, align 8
  %arrayidx246 = getelementptr inbounds i8*, i8** %254, i64 %idxprom245
  %255 = load i8*, i8** %arrayidx246, align 8
  %arrayidx247 = getelementptr inbounds i8, i8* %255, i64 %idxprom242
  %256 = load i8, i8* %arrayidx247, align 1
  %tobool248 = icmp ne i8 %256, 0
  br i1 %tobool248, label %if.end.286, label %if.then.249

if.then.249:                                      ; preds = %if.then.239
  %257 = load i32, i32* %lambda_factor.addr, align 4
  %258 = load i32, i32* %cand_x, align 4
  %259 = load i32, i32* %mvshift, align 4
  %shl250 = shl i32 %258, %259
  %260 = load i32, i32* %pred_x, align 4
  %sub251 = sub nsw i32 %shl250, %260
  %idxprom252 = sext i32 %sub251 to i64
  %261 = load i32*, i32** @mvbits, align 8
  %arrayidx253 = getelementptr inbounds i32, i32* %261, i64 %idxprom252
  %262 = load i32, i32* %arrayidx253, align 4
  %263 = load i32, i32* %cand_y, align 4
  %264 = load i32, i32* %mvshift, align 4
  %shl254 = shl i32 %263, %264
  %265 = load i32, i32* %pred_y, align 4
  %sub255 = sub nsw i32 %shl254, %265
  %idxprom256 = sext i32 %sub255 to i64
  %266 = load i32*, i32** @mvbits, align 8
  %arrayidx257 = getelementptr inbounds i32, i32* %266, i64 %idxprom256
  %267 = load i32, i32* %arrayidx257, align 4
  %add258 = add nsw i32 %262, %267
  %mul259 = mul nsw i32 %257, %add258
  %shr260 = ashr i32 %mul259, 16
  store i32 %shr260, i32* %mcost, align 4
  %268 = load i32, i32* %mcost, align 4
  %269 = load i32, i32* %min_mcost.addr, align 4
  %cmp261 = icmp slt i32 %268, %269
  br i1 %cmp261, label %if.then.263, label %if.end.285

if.then.263:                                      ; preds = %if.then.249
  %270 = load i32, i32* @dist_method, align 4
  %idxprom264 = sext i32 %270 to i64
  %arrayidx265 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom264
  %271 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx265, align 8
  %272 = load i16*, i16** %orig_pic.addr, align 8
  %273 = load i32, i32* %blocksize_y, align 4
  %274 = load i32, i32* %blocksize_x, align 4
  %275 = load i32, i32* %min_mcost.addr, align 4
  %276 = load i32, i32* %mcost, align 4
  %sub266 = sub nsw i32 %275, %276
  %277 = load i32, i32* %cand_x, align 4
  %shl267 = shl i32 %277, 2
  %add268 = add nsw i32 %shl267, 80
  %278 = load i32, i32* %cand_y, align 4
  %shl269 = shl i32 %278, 2
  %add270 = add nsw i32 %shl269, 80
  %call271 = call i32 %271(i16* %272, i32 %273, i32 %274, i32 %sub266, i32 %add268, i32 %add270)
  %279 = load i32, i32* %mcost, align 4
  %add272 = add nsw i32 %279, %call271
  store i32 %add272, i32* %mcost, align 4
  %280 = load i32, i32* %cand_x, align 4
  %281 = load i32, i32* %center_x, align 4
  %sub273 = sub nsw i32 %280, %281
  %282 = load i32, i32* %search_range.addr, align 4
  %add274 = add nsw i32 %sub273, %282
  %idxprom275 = sext i32 %add274 to i64
  %283 = load i32, i32* %cand_y, align 4
  %284 = load i32, i32* %center_y, align 4
  %sub276 = sub nsw i32 %283, %284
  %285 = load i32, i32* %search_range.addr, align 4
  %add277 = add nsw i32 %sub276, %285
  %idxprom278 = sext i32 %add277 to i64
  %286 = load i8**, i8*** @McostState, align 8
  %arrayidx279 = getelementptr inbounds i8*, i8** %286, i64 %idxprom278
  %287 = load i8*, i8** %arrayidx279, align 8
  %arrayidx280 = getelementptr inbounds i8, i8* %287, i64 %idxprom275
  store i8 1, i8* %arrayidx280, align 1
  %288 = load i32, i32* %mcost, align 4
  %289 = load i32, i32* %min_mcost.addr, align 4
  %cmp281 = icmp slt i32 %288, %289
  br i1 %cmp281, label %if.then.283, label %if.end.284

if.then.283:                                      ; preds = %if.then.263
  %290 = load i32, i32* %cand_x, align 4
  store i32 %290, i32* %best_x, align 4
  %291 = load i32, i32* %cand_y, align 4
  store i32 %291, i32* %best_y, align 4
  %292 = load i32, i32* %mcost, align 4
  store i32 %292, i32* %min_mcost.addr, align 4
  br label %if.end.284

if.end.284:                                       ; preds = %if.then.283, %if.then.263
  br label %if.end.285

if.end.285:                                       ; preds = %if.end.284, %if.then.249
  br label %if.end.286

if.end.286:                                       ; preds = %if.end.285, %if.then.239
  br label %if.end.287

if.end.287:                                       ; preds = %if.end.286, %land.lhs.true.234, %if.then.229
  %293 = load i32, i32* %best_x, align 4
  store i32 %293, i32* %iXMinNow, align 4
  %294 = load i32, i32* %best_y, align 4
  store i32 %294, i32* %iYMinNow, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.288

for.cond.288:                                     ; preds = %for.inc.356, %if.end.287
  %295 = load i32, i32* %m, align 4
  %cmp289 = icmp slt i32 %295, 4
  br i1 %cmp289, label %for.body.291, label %for.end.358

for.body.291:                                     ; preds = %for.cond.288
  %296 = load i32, i32* %iXMinNow, align 4
  %297 = load i32, i32* %m, align 4
  %idxprom292 = sext i32 %297 to i64
  %arrayidx293 = getelementptr inbounds [4 x i32], [4 x i32]* @Diamond_x, i32 0, i64 %idxprom292
  %298 = load i32, i32* %arrayidx293, align 4
  %add294 = add nsw i32 %296, %298
  store i32 %add294, i32* %cand_x, align 4
  %299 = load i32, i32* %iYMinNow, align 4
  %300 = load i32, i32* %m, align 4
  %idxprom295 = sext i32 %300 to i64
  %arrayidx296 = getelementptr inbounds [4 x i32], [4 x i32]* @Diamond_y, i32 0, i64 %idxprom295
  %301 = load i32, i32* %arrayidx296, align 4
  %add297 = add nsw i32 %299, %301
  store i32 %add297, i32* %cand_y, align 4
  %302 = load i32, i32* %cand_x, align 4
  %303 = load i32, i32* %center_x, align 4
  %sub298 = sub nsw i32 %302, %303
  %call299 = call i32 @iabs(i32 %sub298)
  %304 = load i32, i32* %search_range.addr, align 4
  %cmp300 = icmp sle i32 %call299, %304
  br i1 %cmp300, label %land.lhs.true.302, label %if.end.355

land.lhs.true.302:                                ; preds = %for.body.291
  %305 = load i32, i32* %cand_y, align 4
  %306 = load i32, i32* %center_y, align 4
  %sub303 = sub nsw i32 %305, %306
  %call304 = call i32 @iabs(i32 %sub303)
  %307 = load i32, i32* %search_range.addr, align 4
  %cmp305 = icmp sle i32 %call304, %307
  br i1 %cmp305, label %if.then.307, label %if.end.355

if.then.307:                                      ; preds = %land.lhs.true.302
  %308 = load i32, i32* %cand_x, align 4
  %309 = load i32, i32* %center_x, align 4
  %sub308 = sub nsw i32 %308, %309
  %310 = load i32, i32* %search_range.addr, align 4
  %add309 = add nsw i32 %sub308, %310
  %idxprom310 = sext i32 %add309 to i64
  %311 = load i32, i32* %cand_y, align 4
  %312 = load i32, i32* %center_y, align 4
  %sub311 = sub nsw i32 %311, %312
  %313 = load i32, i32* %search_range.addr, align 4
  %add312 = add nsw i32 %sub311, %313
  %idxprom313 = sext i32 %add312 to i64
  %314 = load i8**, i8*** @McostState, align 8
  %arrayidx314 = getelementptr inbounds i8*, i8** %314, i64 %idxprom313
  %315 = load i8*, i8** %arrayidx314, align 8
  %arrayidx315 = getelementptr inbounds i8, i8* %315, i64 %idxprom310
  %316 = load i8, i8* %arrayidx315, align 1
  %tobool316 = icmp ne i8 %316, 0
  br i1 %tobool316, label %if.end.354, label %if.then.317

if.then.317:                                      ; preds = %if.then.307
  %317 = load i32, i32* %lambda_factor.addr, align 4
  %318 = load i32, i32* %cand_x, align 4
  %319 = load i32, i32* %mvshift, align 4
  %shl318 = shl i32 %318, %319
  %320 = load i32, i32* %pred_x, align 4
  %sub319 = sub nsw i32 %shl318, %320
  %idxprom320 = sext i32 %sub319 to i64
  %321 = load i32*, i32** @mvbits, align 8
  %arrayidx321 = getelementptr inbounds i32, i32* %321, i64 %idxprom320
  %322 = load i32, i32* %arrayidx321, align 4
  %323 = load i32, i32* %cand_y, align 4
  %324 = load i32, i32* %mvshift, align 4
  %shl322 = shl i32 %323, %324
  %325 = load i32, i32* %pred_y, align 4
  %sub323 = sub nsw i32 %shl322, %325
  %idxprom324 = sext i32 %sub323 to i64
  %326 = load i32*, i32** @mvbits, align 8
  %arrayidx325 = getelementptr inbounds i32, i32* %326, i64 %idxprom324
  %327 = load i32, i32* %arrayidx325, align 4
  %add326 = add nsw i32 %322, %327
  %mul327 = mul nsw i32 %317, %add326
  %shr328 = ashr i32 %mul327, 16
  store i32 %shr328, i32* %mcost, align 4
  %328 = load i32, i32* %mcost, align 4
  %329 = load i32, i32* %min_mcost.addr, align 4
  %cmp329 = icmp slt i32 %328, %329
  br i1 %cmp329, label %if.then.331, label %if.end.353

if.then.331:                                      ; preds = %if.then.317
  %330 = load i32, i32* @dist_method, align 4
  %idxprom332 = sext i32 %330 to i64
  %arrayidx333 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom332
  %331 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx333, align 8
  %332 = load i16*, i16** %orig_pic.addr, align 8
  %333 = load i32, i32* %blocksize_y, align 4
  %334 = load i32, i32* %blocksize_x, align 4
  %335 = load i32, i32* %min_mcost.addr, align 4
  %336 = load i32, i32* %mcost, align 4
  %sub334 = sub nsw i32 %335, %336
  %337 = load i32, i32* %cand_x, align 4
  %shl335 = shl i32 %337, 2
  %add336 = add nsw i32 %shl335, 80
  %338 = load i32, i32* %cand_y, align 4
  %shl337 = shl i32 %338, 2
  %add338 = add nsw i32 %shl337, 80
  %call339 = call i32 %331(i16* %332, i32 %333, i32 %334, i32 %sub334, i32 %add336, i32 %add338)
  %339 = load i32, i32* %mcost, align 4
  %add340 = add nsw i32 %339, %call339
  store i32 %add340, i32* %mcost, align 4
  %340 = load i32, i32* %cand_x, align 4
  %341 = load i32, i32* %center_x, align 4
  %sub341 = sub nsw i32 %340, %341
  %342 = load i32, i32* %search_range.addr, align 4
  %add342 = add nsw i32 %sub341, %342
  %idxprom343 = sext i32 %add342 to i64
  %343 = load i32, i32* %cand_y, align 4
  %344 = load i32, i32* %center_y, align 4
  %sub344 = sub nsw i32 %343, %344
  %345 = load i32, i32* %search_range.addr, align 4
  %add345 = add nsw i32 %sub344, %345
  %idxprom346 = sext i32 %add345 to i64
  %346 = load i8**, i8*** @McostState, align 8
  %arrayidx347 = getelementptr inbounds i8*, i8** %346, i64 %idxprom346
  %347 = load i8*, i8** %arrayidx347, align 8
  %arrayidx348 = getelementptr inbounds i8, i8* %347, i64 %idxprom343
  store i8 1, i8* %arrayidx348, align 1
  %348 = load i32, i32* %mcost, align 4
  %349 = load i32, i32* %min_mcost.addr, align 4
  %cmp349 = icmp slt i32 %348, %349
  br i1 %cmp349, label %if.then.351, label %if.end.352

if.then.351:                                      ; preds = %if.then.331
  %350 = load i32, i32* %cand_x, align 4
  store i32 %350, i32* %best_x, align 4
  %351 = load i32, i32* %cand_y, align 4
  store i32 %351, i32* %best_y, align 4
  %352 = load i32, i32* %mcost, align 4
  store i32 %352, i32* %min_mcost.addr, align 4
  br label %if.end.352

if.end.352:                                       ; preds = %if.then.351, %if.then.331
  br label %if.end.353

if.end.353:                                       ; preds = %if.end.352, %if.then.317
  br label %if.end.354

if.end.354:                                       ; preds = %if.end.353, %if.then.307
  br label %if.end.355

if.end.355:                                       ; preds = %if.end.354, %land.lhs.true.302, %for.body.291
  br label %for.inc.356

for.inc.356:                                      ; preds = %if.end.355
  %353 = load i32, i32* %m, align 4
  %inc357 = add nsw i32 %353, 1
  store i32 %inc357, i32* %m, align 4
  br label %for.cond.288

for.end.358:                                      ; preds = %for.cond.288
  br label %if.end.359

if.end.359:                                       ; preds = %for.end.358, %lor.lhs.false.226
  %354 = load i16, i16* %ref.addr, align 2
  %conv360 = sext i16 %354 to i32
  %cmp361 = icmp sgt i32 %conv360, 0
  br i1 %cmp361, label %land.lhs.true.363, label %if.end.377

land.lhs.true.363:                                ; preds = %if.end.359
  %355 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %355, i32 0, i32 6
  %356 = load i32, i32* %structure, align 4
  %cmp364 = icmp eq i32 %356, 0
  br i1 %cmp364, label %land.lhs.true.366, label %if.end.377

land.lhs.true.366:                                ; preds = %land.lhs.true.363
  %357 = load i32, i32* %min_mcost.addr, align 4
  %358 = load i32, i32* %ET_Thred, align 4
  %cmp367 = icmp sgt i32 %357, %358
  br i1 %cmp367, label %land.lhs.true.369, label %if.end.377

land.lhs.true.369:                                ; preds = %land.lhs.true.366
  %359 = load i16, i16* %pic_pix_x2, align 2
  %idxprom370 = sext i16 %359 to i64
  %360 = load i32*, i32** %SAD_prediction, align 8
  %arrayidx371 = getelementptr inbounds i32, i32* %360, i64 %idxprom370
  %361 = load i32, i32* %arrayidx371, align 4
  %362 = load i32, i32* %blocktype.addr, align 4
  %idxprom372 = sext i32 %362 to i64
  %arrayidx373 = getelementptr inbounds [8 x i32], [8 x i32]* @Multi_Ref_Thd_MB, i32 0, i64 %idxprom372
  %363 = load i32, i32* %arrayidx373, align 4
  %cmp374 = icmp slt i32 %361, %363
  br i1 %cmp374, label %if.then.376, label %if.end.377

if.then.376:                                      ; preds = %land.lhs.true.369
  br label %terminate_step

if.end.377:                                       ; preds = %land.lhs.true.369, %land.lhs.true.366, %land.lhs.true.363, %if.end.359
  %364 = load i32, i32* %min_mcost.addr, align 4
  %365 = load i32, i32* %ET_Thred, align 4
  %cmp378 = icmp slt i32 %364, %365
  br i1 %cmp378, label %if.then.380, label %if.else.381

if.then.380:                                      ; preds = %if.end.377
  br label %terminate_step

if.else.381:                                      ; preds = %if.end.377
  %366 = load i16, i16* %ref.addr, align 2
  %367 = load i32, i32* %list.addr, align 4
  %368 = load i16, i16* %block_y, align 2
  %conv382 = sext i16 %368 to i32
  %369 = load i16, i16* %block_x, align 2
  %conv383 = sext i16 %369 to i32
  %370 = load i32, i32* %blocktype.addr, align 4
  %371 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %371, i32 0, i32 80
  %372 = load i16******, i16******* %all_mv, align 8
  call void @UMHEX_setup(i16 signext %366, i32 %367, i32 %conv382, i32 %conv383, i32 %370, i16****** %372)
  %373 = load i32, i32* %blocktype.addr, align 4
  %idxprom384 = sext i32 %373 to i64
  %arrayidx385 = getelementptr inbounds [8 x i32], [8 x i32]* @Big_Hexagon_Thd_MB, i32 0, i64 %idxprom384
  %374 = load i32, i32* %arrayidx385, align 4
  store i32 %374, i32* %ET_Thred, align 4
  %375 = load i32, i32* @pred_SAD, align 4
  %cmp386 = icmp eq i32 %375, 0
  br i1 %cmp386, label %if.then.388, label %if.else.389

if.then.388:                                      ; preds = %if.else.381
  store float 0.000000e+00, float* %betaFourth_1, align 4
  store float 0.000000e+00, float* %betaFourth_2, align 4
  br label %if.end.405

if.else.389:                                      ; preds = %if.else.381
  %376 = load i32, i32* %blocktype.addr, align 4
  %idxprom390 = sext i32 %376 to i64
  %arrayidx391 = getelementptr inbounds [8 x float], [8 x float]* @Bsize, i32 0, i64 %idxprom390
  %377 = load float, float* %arrayidx391, align 4
  %378 = load i32, i32* @pred_SAD, align 4
  %379 = load i32, i32* @pred_SAD, align 4
  %mul392 = mul nsw i32 %378, %379
  %conv393 = sitofp i32 %mul392 to float
  %div = fdiv float %377, %conv393
  %380 = load i32, i32* %blocktype.addr, align 4
  %idxprom394 = sext i32 %380 to i64
  %arrayidx395 = getelementptr inbounds [8 x float], [8 x float]* @AlphaFourth_1, i32 0, i64 %idxprom394
  %381 = load float, float* %arrayidx395, align 4
  %sub396 = fsub float %div, %381
  store float %sub396, float* %betaFourth_1, align 4
  %382 = load i32, i32* %blocktype.addr, align 4
  %idxprom397 = sext i32 %382 to i64
  %arrayidx398 = getelementptr inbounds [8 x float], [8 x float]* @Bsize, i32 0, i64 %idxprom397
  %383 = load float, float* %arrayidx398, align 4
  %384 = load i32, i32* @pred_SAD, align 4
  %385 = load i32, i32* @pred_SAD, align 4
  %mul399 = mul nsw i32 %384, %385
  %conv400 = sitofp i32 %mul399 to float
  %div401 = fdiv float %383, %conv400
  %386 = load i32, i32* %blocktype.addr, align 4
  %idxprom402 = sext i32 %386 to i64
  %arrayidx403 = getelementptr inbounds [8 x float], [8 x float]* @AlphaFourth_2, i32 0, i64 %idxprom402
  %387 = load float, float* %arrayidx403, align 4
  %sub404 = fsub float %div401, %387
  store float %sub404, float* %betaFourth_2, align 4
  br label %if.end.405

if.end.405:                                       ; preds = %if.else.389, %if.then.388
  br label %if.end.406

if.end.406:                                       ; preds = %if.end.405
  %388 = load i32, i32* %blocktype.addr, align 4
  %cmp407 = icmp sgt i32 %388, 1
  br i1 %cmp407, label %if.then.409, label %if.end.472

if.then.409:                                      ; preds = %if.end.406
  %389 = load i32, i32* %pic_pix_x.addr, align 4
  %390 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_uplayer, i32 0, i64 0), align 4
  %div410 = sdiv i32 %390, 4
  %add411 = add nsw i32 %389, %div410
  store i32 %add411, i32* %cand_x, align 4
  %391 = load i32, i32* %pic_pix_y.addr, align 4
  %392 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_uplayer, i32 0, i64 1), align 4
  %div412 = sdiv i32 %392, 4
  %add413 = add nsw i32 %391, %div412
  store i32 %add413, i32* %cand_y, align 4
  %393 = load i32, i32* %cand_x, align 4
  %394 = load i32, i32* %center_x, align 4
  %sub414 = sub nsw i32 %393, %394
  %call415 = call i32 @iabs(i32 %sub414)
  %395 = load i32, i32* %search_range.addr, align 4
  %cmp416 = icmp sle i32 %call415, %395
  br i1 %cmp416, label %land.lhs.true.418, label %if.end.471

land.lhs.true.418:                                ; preds = %if.then.409
  %396 = load i32, i32* %cand_y, align 4
  %397 = load i32, i32* %center_y, align 4
  %sub419 = sub nsw i32 %396, %397
  %call420 = call i32 @iabs(i32 %sub419)
  %398 = load i32, i32* %search_range.addr, align 4
  %cmp421 = icmp sle i32 %call420, %398
  br i1 %cmp421, label %if.then.423, label %if.end.471

if.then.423:                                      ; preds = %land.lhs.true.418
  %399 = load i32, i32* %cand_x, align 4
  %400 = load i32, i32* %center_x, align 4
  %sub424 = sub nsw i32 %399, %400
  %401 = load i32, i32* %search_range.addr, align 4
  %add425 = add nsw i32 %sub424, %401
  %idxprom426 = sext i32 %add425 to i64
  %402 = load i32, i32* %cand_y, align 4
  %403 = load i32, i32* %center_y, align 4
  %sub427 = sub nsw i32 %402, %403
  %404 = load i32, i32* %search_range.addr, align 4
  %add428 = add nsw i32 %sub427, %404
  %idxprom429 = sext i32 %add428 to i64
  %405 = load i8**, i8*** @McostState, align 8
  %arrayidx430 = getelementptr inbounds i8*, i8** %405, i64 %idxprom429
  %406 = load i8*, i8** %arrayidx430, align 8
  %arrayidx431 = getelementptr inbounds i8, i8* %406, i64 %idxprom426
  %407 = load i8, i8* %arrayidx431, align 1
  %tobool432 = icmp ne i8 %407, 0
  br i1 %tobool432, label %if.end.470, label %if.then.433

if.then.433:                                      ; preds = %if.then.423
  %408 = load i32, i32* %lambda_factor.addr, align 4
  %409 = load i32, i32* %cand_x, align 4
  %410 = load i32, i32* %mvshift, align 4
  %shl434 = shl i32 %409, %410
  %411 = load i32, i32* %pred_x, align 4
  %sub435 = sub nsw i32 %shl434, %411
  %idxprom436 = sext i32 %sub435 to i64
  %412 = load i32*, i32** @mvbits, align 8
  %arrayidx437 = getelementptr inbounds i32, i32* %412, i64 %idxprom436
  %413 = load i32, i32* %arrayidx437, align 4
  %414 = load i32, i32* %cand_y, align 4
  %415 = load i32, i32* %mvshift, align 4
  %shl438 = shl i32 %414, %415
  %416 = load i32, i32* %pred_y, align 4
  %sub439 = sub nsw i32 %shl438, %416
  %idxprom440 = sext i32 %sub439 to i64
  %417 = load i32*, i32** @mvbits, align 8
  %arrayidx441 = getelementptr inbounds i32, i32* %417, i64 %idxprom440
  %418 = load i32, i32* %arrayidx441, align 4
  %add442 = add nsw i32 %413, %418
  %mul443 = mul nsw i32 %408, %add442
  %shr444 = ashr i32 %mul443, 16
  store i32 %shr444, i32* %mcost, align 4
  %419 = load i32, i32* %mcost, align 4
  %420 = load i32, i32* %min_mcost.addr, align 4
  %cmp445 = icmp slt i32 %419, %420
  br i1 %cmp445, label %if.then.447, label %if.end.469

if.then.447:                                      ; preds = %if.then.433
  %421 = load i32, i32* @dist_method, align 4
  %idxprom448 = sext i32 %421 to i64
  %arrayidx449 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom448
  %422 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx449, align 8
  %423 = load i16*, i16** %orig_pic.addr, align 8
  %424 = load i32, i32* %blocksize_y, align 4
  %425 = load i32, i32* %blocksize_x, align 4
  %426 = load i32, i32* %min_mcost.addr, align 4
  %427 = load i32, i32* %mcost, align 4
  %sub450 = sub nsw i32 %426, %427
  %428 = load i32, i32* %cand_x, align 4
  %shl451 = shl i32 %428, 2
  %add452 = add nsw i32 %shl451, 80
  %429 = load i32, i32* %cand_y, align 4
  %shl453 = shl i32 %429, 2
  %add454 = add nsw i32 %shl453, 80
  %call455 = call i32 %422(i16* %423, i32 %424, i32 %425, i32 %sub450, i32 %add452, i32 %add454)
  %430 = load i32, i32* %mcost, align 4
  %add456 = add nsw i32 %430, %call455
  store i32 %add456, i32* %mcost, align 4
  %431 = load i32, i32* %cand_x, align 4
  %432 = load i32, i32* %center_x, align 4
  %sub457 = sub nsw i32 %431, %432
  %433 = load i32, i32* %search_range.addr, align 4
  %add458 = add nsw i32 %sub457, %433
  %idxprom459 = sext i32 %add458 to i64
  %434 = load i32, i32* %cand_y, align 4
  %435 = load i32, i32* %center_y, align 4
  %sub460 = sub nsw i32 %434, %435
  %436 = load i32, i32* %search_range.addr, align 4
  %add461 = add nsw i32 %sub460, %436
  %idxprom462 = sext i32 %add461 to i64
  %437 = load i8**, i8*** @McostState, align 8
  %arrayidx463 = getelementptr inbounds i8*, i8** %437, i64 %idxprom462
  %438 = load i8*, i8** %arrayidx463, align 8
  %arrayidx464 = getelementptr inbounds i8, i8* %438, i64 %idxprom459
  store i8 1, i8* %arrayidx464, align 1
  %439 = load i32, i32* %mcost, align 4
  %440 = load i32, i32* %min_mcost.addr, align 4
  %cmp465 = icmp slt i32 %439, %440
  br i1 %cmp465, label %if.then.467, label %if.end.468

if.then.467:                                      ; preds = %if.then.447
  %441 = load i32, i32* %cand_x, align 4
  store i32 %441, i32* %best_x, align 4
  %442 = load i32, i32* %cand_y, align 4
  store i32 %442, i32* %best_y, align 4
  %443 = load i32, i32* %mcost, align 4
  store i32 %443, i32* %min_mcost.addr, align 4
  br label %if.end.468

if.end.468:                                       ; preds = %if.then.467, %if.then.447
  br label %if.end.469

if.end.469:                                       ; preds = %if.end.468, %if.then.433
  br label %if.end.470

if.end.470:                                       ; preds = %if.end.469, %if.then.423
  br label %if.end.471

if.end.471:                                       ; preds = %if.end.470, %land.lhs.true.418, %if.then.409
  br label %if.end.472

if.end.472:                                       ; preds = %if.end.471, %if.end.406
  %444 = load i32, i32* @pred_MV_ref_flag, align 4
  %cmp473 = icmp eq i32 %444, 1
  br i1 %cmp473, label %if.then.475, label %if.end.538

if.then.475:                                      ; preds = %if.end.472
  %445 = load i32, i32* %pic_pix_x.addr, align 4
  %446 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_ref, i32 0, i64 0), align 4
  %div476 = sdiv i32 %446, 4
  %add477 = add nsw i32 %445, %div476
  store i32 %add477, i32* %cand_x, align 4
  %447 = load i32, i32* %pic_pix_y.addr, align 4
  %448 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_ref, i32 0, i64 1), align 4
  %div478 = sdiv i32 %448, 4
  %add479 = add nsw i32 %447, %div478
  store i32 %add479, i32* %cand_y, align 4
  %449 = load i32, i32* %cand_x, align 4
  %450 = load i32, i32* %center_x, align 4
  %sub480 = sub nsw i32 %449, %450
  %call481 = call i32 @iabs(i32 %sub480)
  %451 = load i32, i32* %search_range.addr, align 4
  %cmp482 = icmp sle i32 %call481, %451
  br i1 %cmp482, label %land.lhs.true.484, label %if.end.537

land.lhs.true.484:                                ; preds = %if.then.475
  %452 = load i32, i32* %cand_y, align 4
  %453 = load i32, i32* %center_y, align 4
  %sub485 = sub nsw i32 %452, %453
  %call486 = call i32 @iabs(i32 %sub485)
  %454 = load i32, i32* %search_range.addr, align 4
  %cmp487 = icmp sle i32 %call486, %454
  br i1 %cmp487, label %if.then.489, label %if.end.537

if.then.489:                                      ; preds = %land.lhs.true.484
  %455 = load i32, i32* %cand_x, align 4
  %456 = load i32, i32* %center_x, align 4
  %sub490 = sub nsw i32 %455, %456
  %457 = load i32, i32* %search_range.addr, align 4
  %add491 = add nsw i32 %sub490, %457
  %idxprom492 = sext i32 %add491 to i64
  %458 = load i32, i32* %cand_y, align 4
  %459 = load i32, i32* %center_y, align 4
  %sub493 = sub nsw i32 %458, %459
  %460 = load i32, i32* %search_range.addr, align 4
  %add494 = add nsw i32 %sub493, %460
  %idxprom495 = sext i32 %add494 to i64
  %461 = load i8**, i8*** @McostState, align 8
  %arrayidx496 = getelementptr inbounds i8*, i8** %461, i64 %idxprom495
  %462 = load i8*, i8** %arrayidx496, align 8
  %arrayidx497 = getelementptr inbounds i8, i8* %462, i64 %idxprom492
  %463 = load i8, i8* %arrayidx497, align 1
  %tobool498 = icmp ne i8 %463, 0
  br i1 %tobool498, label %if.end.536, label %if.then.499

if.then.499:                                      ; preds = %if.then.489
  %464 = load i32, i32* %lambda_factor.addr, align 4
  %465 = load i32, i32* %cand_x, align 4
  %466 = load i32, i32* %mvshift, align 4
  %shl500 = shl i32 %465, %466
  %467 = load i32, i32* %pred_x, align 4
  %sub501 = sub nsw i32 %shl500, %467
  %idxprom502 = sext i32 %sub501 to i64
  %468 = load i32*, i32** @mvbits, align 8
  %arrayidx503 = getelementptr inbounds i32, i32* %468, i64 %idxprom502
  %469 = load i32, i32* %arrayidx503, align 4
  %470 = load i32, i32* %cand_y, align 4
  %471 = load i32, i32* %mvshift, align 4
  %shl504 = shl i32 %470, %471
  %472 = load i32, i32* %pred_y, align 4
  %sub505 = sub nsw i32 %shl504, %472
  %idxprom506 = sext i32 %sub505 to i64
  %473 = load i32*, i32** @mvbits, align 8
  %arrayidx507 = getelementptr inbounds i32, i32* %473, i64 %idxprom506
  %474 = load i32, i32* %arrayidx507, align 4
  %add508 = add nsw i32 %469, %474
  %mul509 = mul nsw i32 %464, %add508
  %shr510 = ashr i32 %mul509, 16
  store i32 %shr510, i32* %mcost, align 4
  %475 = load i32, i32* %mcost, align 4
  %476 = load i32, i32* %min_mcost.addr, align 4
  %cmp511 = icmp slt i32 %475, %476
  br i1 %cmp511, label %if.then.513, label %if.end.535

if.then.513:                                      ; preds = %if.then.499
  %477 = load i32, i32* @dist_method, align 4
  %idxprom514 = sext i32 %477 to i64
  %arrayidx515 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom514
  %478 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx515, align 8
  %479 = load i16*, i16** %orig_pic.addr, align 8
  %480 = load i32, i32* %blocksize_y, align 4
  %481 = load i32, i32* %blocksize_x, align 4
  %482 = load i32, i32* %min_mcost.addr, align 4
  %483 = load i32, i32* %mcost, align 4
  %sub516 = sub nsw i32 %482, %483
  %484 = load i32, i32* %cand_x, align 4
  %shl517 = shl i32 %484, 2
  %add518 = add nsw i32 %shl517, 80
  %485 = load i32, i32* %cand_y, align 4
  %shl519 = shl i32 %485, 2
  %add520 = add nsw i32 %shl519, 80
  %call521 = call i32 %478(i16* %479, i32 %480, i32 %481, i32 %sub516, i32 %add518, i32 %add520)
  %486 = load i32, i32* %mcost, align 4
  %add522 = add nsw i32 %486, %call521
  store i32 %add522, i32* %mcost, align 4
  %487 = load i32, i32* %cand_x, align 4
  %488 = load i32, i32* %center_x, align 4
  %sub523 = sub nsw i32 %487, %488
  %489 = load i32, i32* %search_range.addr, align 4
  %add524 = add nsw i32 %sub523, %489
  %idxprom525 = sext i32 %add524 to i64
  %490 = load i32, i32* %cand_y, align 4
  %491 = load i32, i32* %center_y, align 4
  %sub526 = sub nsw i32 %490, %491
  %492 = load i32, i32* %search_range.addr, align 4
  %add527 = add nsw i32 %sub526, %492
  %idxprom528 = sext i32 %add527 to i64
  %493 = load i8**, i8*** @McostState, align 8
  %arrayidx529 = getelementptr inbounds i8*, i8** %493, i64 %idxprom528
  %494 = load i8*, i8** %arrayidx529, align 8
  %arrayidx530 = getelementptr inbounds i8, i8* %494, i64 %idxprom525
  store i8 1, i8* %arrayidx530, align 1
  %495 = load i32, i32* %mcost, align 4
  %496 = load i32, i32* %min_mcost.addr, align 4
  %cmp531 = icmp slt i32 %495, %496
  br i1 %cmp531, label %if.then.533, label %if.end.534

if.then.533:                                      ; preds = %if.then.513
  %497 = load i32, i32* %cand_x, align 4
  store i32 %497, i32* %best_x, align 4
  %498 = load i32, i32* %cand_y, align 4
  store i32 %498, i32* %best_y, align 4
  %499 = load i32, i32* %mcost, align 4
  store i32 %499, i32* %min_mcost.addr, align 4
  br label %if.end.534

if.end.534:                                       ; preds = %if.then.533, %if.then.513
  br label %if.end.535

if.end.535:                                       ; preds = %if.end.534, %if.then.499
  br label %if.end.536

if.end.536:                                       ; preds = %if.end.535, %if.then.489
  br label %if.end.537

if.end.537:                                       ; preds = %if.end.536, %land.lhs.true.484, %if.then.475
  br label %if.end.538

if.end.538:                                       ; preds = %if.end.537, %if.end.472
  %500 = load i32, i32* %best_x, align 4
  store i32 %500, i32* %iXMinNow, align 4
  %501 = load i32, i32* %best_y, align 4
  store i32 %501, i32* %iYMinNow, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.539

for.cond.539:                                     ; preds = %for.inc.607, %if.end.538
  %502 = load i32, i32* %m, align 4
  %cmp540 = icmp slt i32 %502, 4
  br i1 %cmp540, label %for.body.542, label %for.end.609

for.body.542:                                     ; preds = %for.cond.539
  %503 = load i32, i32* %iXMinNow, align 4
  %504 = load i32, i32* %m, align 4
  %idxprom543 = sext i32 %504 to i64
  %arrayidx544 = getelementptr inbounds [4 x i32], [4 x i32]* @Diamond_x, i32 0, i64 %idxprom543
  %505 = load i32, i32* %arrayidx544, align 4
  %add545 = add nsw i32 %503, %505
  store i32 %add545, i32* %cand_x, align 4
  %506 = load i32, i32* %iYMinNow, align 4
  %507 = load i32, i32* %m, align 4
  %idxprom546 = sext i32 %507 to i64
  %arrayidx547 = getelementptr inbounds [4 x i32], [4 x i32]* @Diamond_y, i32 0, i64 %idxprom546
  %508 = load i32, i32* %arrayidx547, align 4
  %add548 = add nsw i32 %506, %508
  store i32 %add548, i32* %cand_y, align 4
  %509 = load i32, i32* %cand_x, align 4
  %510 = load i32, i32* %center_x, align 4
  %sub549 = sub nsw i32 %509, %510
  %call550 = call i32 @iabs(i32 %sub549)
  %511 = load i32, i32* %search_range.addr, align 4
  %cmp551 = icmp sle i32 %call550, %511
  br i1 %cmp551, label %land.lhs.true.553, label %if.end.606

land.lhs.true.553:                                ; preds = %for.body.542
  %512 = load i32, i32* %cand_y, align 4
  %513 = load i32, i32* %center_y, align 4
  %sub554 = sub nsw i32 %512, %513
  %call555 = call i32 @iabs(i32 %sub554)
  %514 = load i32, i32* %search_range.addr, align 4
  %cmp556 = icmp sle i32 %call555, %514
  br i1 %cmp556, label %if.then.558, label %if.end.606

if.then.558:                                      ; preds = %land.lhs.true.553
  %515 = load i32, i32* %cand_x, align 4
  %516 = load i32, i32* %center_x, align 4
  %sub559 = sub nsw i32 %515, %516
  %517 = load i32, i32* %search_range.addr, align 4
  %add560 = add nsw i32 %sub559, %517
  %idxprom561 = sext i32 %add560 to i64
  %518 = load i32, i32* %cand_y, align 4
  %519 = load i32, i32* %center_y, align 4
  %sub562 = sub nsw i32 %518, %519
  %520 = load i32, i32* %search_range.addr, align 4
  %add563 = add nsw i32 %sub562, %520
  %idxprom564 = sext i32 %add563 to i64
  %521 = load i8**, i8*** @McostState, align 8
  %arrayidx565 = getelementptr inbounds i8*, i8** %521, i64 %idxprom564
  %522 = load i8*, i8** %arrayidx565, align 8
  %arrayidx566 = getelementptr inbounds i8, i8* %522, i64 %idxprom561
  %523 = load i8, i8* %arrayidx566, align 1
  %tobool567 = icmp ne i8 %523, 0
  br i1 %tobool567, label %if.end.605, label %if.then.568

if.then.568:                                      ; preds = %if.then.558
  %524 = load i32, i32* %lambda_factor.addr, align 4
  %525 = load i32, i32* %cand_x, align 4
  %526 = load i32, i32* %mvshift, align 4
  %shl569 = shl i32 %525, %526
  %527 = load i32, i32* %pred_x, align 4
  %sub570 = sub nsw i32 %shl569, %527
  %idxprom571 = sext i32 %sub570 to i64
  %528 = load i32*, i32** @mvbits, align 8
  %arrayidx572 = getelementptr inbounds i32, i32* %528, i64 %idxprom571
  %529 = load i32, i32* %arrayidx572, align 4
  %530 = load i32, i32* %cand_y, align 4
  %531 = load i32, i32* %mvshift, align 4
  %shl573 = shl i32 %530, %531
  %532 = load i32, i32* %pred_y, align 4
  %sub574 = sub nsw i32 %shl573, %532
  %idxprom575 = sext i32 %sub574 to i64
  %533 = load i32*, i32** @mvbits, align 8
  %arrayidx576 = getelementptr inbounds i32, i32* %533, i64 %idxprom575
  %534 = load i32, i32* %arrayidx576, align 4
  %add577 = add nsw i32 %529, %534
  %mul578 = mul nsw i32 %524, %add577
  %shr579 = ashr i32 %mul578, 16
  store i32 %shr579, i32* %mcost, align 4
  %535 = load i32, i32* %mcost, align 4
  %536 = load i32, i32* %min_mcost.addr, align 4
  %cmp580 = icmp slt i32 %535, %536
  br i1 %cmp580, label %if.then.582, label %if.end.604

if.then.582:                                      ; preds = %if.then.568
  %537 = load i32, i32* @dist_method, align 4
  %idxprom583 = sext i32 %537 to i64
  %arrayidx584 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom583
  %538 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx584, align 8
  %539 = load i16*, i16** %orig_pic.addr, align 8
  %540 = load i32, i32* %blocksize_y, align 4
  %541 = load i32, i32* %blocksize_x, align 4
  %542 = load i32, i32* %min_mcost.addr, align 4
  %543 = load i32, i32* %mcost, align 4
  %sub585 = sub nsw i32 %542, %543
  %544 = load i32, i32* %cand_x, align 4
  %shl586 = shl i32 %544, 2
  %add587 = add nsw i32 %shl586, 80
  %545 = load i32, i32* %cand_y, align 4
  %shl588 = shl i32 %545, 2
  %add589 = add nsw i32 %shl588, 80
  %call590 = call i32 %538(i16* %539, i32 %540, i32 %541, i32 %sub585, i32 %add587, i32 %add589)
  %546 = load i32, i32* %mcost, align 4
  %add591 = add nsw i32 %546, %call590
  store i32 %add591, i32* %mcost, align 4
  %547 = load i32, i32* %cand_x, align 4
  %548 = load i32, i32* %center_x, align 4
  %sub592 = sub nsw i32 %547, %548
  %549 = load i32, i32* %search_range.addr, align 4
  %add593 = add nsw i32 %sub592, %549
  %idxprom594 = sext i32 %add593 to i64
  %550 = load i32, i32* %cand_y, align 4
  %551 = load i32, i32* %center_y, align 4
  %sub595 = sub nsw i32 %550, %551
  %552 = load i32, i32* %search_range.addr, align 4
  %add596 = add nsw i32 %sub595, %552
  %idxprom597 = sext i32 %add596 to i64
  %553 = load i8**, i8*** @McostState, align 8
  %arrayidx598 = getelementptr inbounds i8*, i8** %553, i64 %idxprom597
  %554 = load i8*, i8** %arrayidx598, align 8
  %arrayidx599 = getelementptr inbounds i8, i8* %554, i64 %idxprom594
  store i8 1, i8* %arrayidx599, align 1
  %555 = load i32, i32* %mcost, align 4
  %556 = load i32, i32* %min_mcost.addr, align 4
  %cmp600 = icmp slt i32 %555, %556
  br i1 %cmp600, label %if.then.602, label %if.end.603

if.then.602:                                      ; preds = %if.then.582
  %557 = load i32, i32* %cand_x, align 4
  store i32 %557, i32* %best_x, align 4
  %558 = load i32, i32* %cand_y, align 4
  store i32 %558, i32* %best_y, align 4
  %559 = load i32, i32* %mcost, align 4
  store i32 %559, i32* %min_mcost.addr, align 4
  br label %if.end.603

if.end.603:                                       ; preds = %if.then.602, %if.then.582
  br label %if.end.604

if.end.604:                                       ; preds = %if.end.603, %if.then.568
  br label %if.end.605

if.end.605:                                       ; preds = %if.end.604, %if.then.558
  br label %if.end.606

if.end.606:                                       ; preds = %if.end.605, %land.lhs.true.553, %for.body.542
  br label %for.inc.607

for.inc.607:                                      ; preds = %if.end.606
  %560 = load i32, i32* %m, align 4
  %inc608 = add nsw i32 %560, 1
  store i32 %inc608, i32* %m, align 4
  br label %for.cond.539

for.end.609:                                      ; preds = %for.cond.539
  %561 = load i32, i32* %min_mcost.addr, align 4
  %562 = load i32, i32* @pred_SAD, align 4
  %sub610 = sub nsw i32 %561, %562
  %conv611 = sitofp i32 %sub610 to float
  %563 = load i32, i32* @pred_SAD, align 4
  %conv612 = sitofp i32 %563 to float
  %564 = load float, float* %betaFourth_2, align 4
  %mul613 = fmul float %conv612, %564
  %cmp614 = fcmp olt float %conv611, %mul613
  br i1 %cmp614, label %if.then.616, label %if.else.617

if.then.616:                                      ; preds = %for.end.609
  br label %fourth_2_step

if.else.617:                                      ; preds = %for.end.609
  %565 = load i32, i32* %min_mcost.addr, align 4
  %566 = load i32, i32* @pred_SAD, align 4
  %sub618 = sub nsw i32 %565, %566
  %conv619 = sitofp i32 %sub618 to float
  %567 = load i32, i32* @pred_SAD, align 4
  %conv620 = sitofp i32 %567 to float
  %568 = load float, float* %betaFourth_1, align 4
  %mul621 = fmul float %conv620, %568
  %cmp622 = fcmp olt float %conv619, %mul621
  br i1 %cmp622, label %if.then.624, label %if.end.625

if.then.624:                                      ; preds = %if.else.617
  br label %fourth_1_step

if.end.625:                                       ; preds = %if.else.617
  br label %if.end.626

if.end.626:                                       ; preds = %if.end.625
  %569 = load i32, i32* %blocktype.addr, align 4
  %cmp627 = icmp sgt i32 %569, 6
  br i1 %cmp627, label %if.then.629, label %if.else.630

if.then.629:                                      ; preds = %if.end.626
  br label %fourth_1_step

if.else.630:                                      ; preds = %if.end.626
  br label %sec_step

sec_step:                                         ; preds = %if.else.630
  %570 = load i32, i32* %best_x, align 4
  store i32 %570, i32* %iXMinNow, align 4
  %571 = load i32, i32* %best_y, align 4
  store i32 %571, i32* %iYMinNow, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.631

for.cond.631:                                     ; preds = %for.inc.753, %sec_step
  %572 = load i32, i32* %i, align 4
  %573 = load i32, i32* %search_range.addr, align 4
  %cmp632 = icmp slt i32 %572, %573
  br i1 %cmp632, label %for.body.634, label %for.end.755

for.body.634:                                     ; preds = %for.cond.631
  %574 = load i32, i32* %i, align 4
  store i32 %574, i32* %search_step, align 4
  %575 = load i32, i32* %iXMinNow, align 4
  %576 = load i32, i32* %search_step, align 4
  %add635 = add nsw i32 %575, %576
  store i32 %add635, i32* %cand_x, align 4
  %577 = load i32, i32* %iYMinNow, align 4
  store i32 %577, i32* %cand_y, align 4
  %578 = load i32, i32* %cand_x, align 4
  %579 = load i32, i32* %center_x, align 4
  %sub636 = sub nsw i32 %578, %579
  %call637 = call i32 @iabs(i32 %sub636)
  %580 = load i32, i32* %search_range.addr, align 4
  %cmp638 = icmp sle i32 %call637, %580
  br i1 %cmp638, label %land.lhs.true.640, label %if.end.693

land.lhs.true.640:                                ; preds = %for.body.634
  %581 = load i32, i32* %cand_y, align 4
  %582 = load i32, i32* %center_y, align 4
  %sub641 = sub nsw i32 %581, %582
  %call642 = call i32 @iabs(i32 %sub641)
  %583 = load i32, i32* %search_range.addr, align 4
  %cmp643 = icmp sle i32 %call642, %583
  br i1 %cmp643, label %if.then.645, label %if.end.693

if.then.645:                                      ; preds = %land.lhs.true.640
  %584 = load i32, i32* %cand_x, align 4
  %585 = load i32, i32* %center_x, align 4
  %sub646 = sub nsw i32 %584, %585
  %586 = load i32, i32* %search_range.addr, align 4
  %add647 = add nsw i32 %sub646, %586
  %idxprom648 = sext i32 %add647 to i64
  %587 = load i32, i32* %cand_y, align 4
  %588 = load i32, i32* %center_y, align 4
  %sub649 = sub nsw i32 %587, %588
  %589 = load i32, i32* %search_range.addr, align 4
  %add650 = add nsw i32 %sub649, %589
  %idxprom651 = sext i32 %add650 to i64
  %590 = load i8**, i8*** @McostState, align 8
  %arrayidx652 = getelementptr inbounds i8*, i8** %590, i64 %idxprom651
  %591 = load i8*, i8** %arrayidx652, align 8
  %arrayidx653 = getelementptr inbounds i8, i8* %591, i64 %idxprom648
  %592 = load i8, i8* %arrayidx653, align 1
  %tobool654 = icmp ne i8 %592, 0
  br i1 %tobool654, label %if.end.692, label %if.then.655

if.then.655:                                      ; preds = %if.then.645
  %593 = load i32, i32* %lambda_factor.addr, align 4
  %594 = load i32, i32* %cand_x, align 4
  %595 = load i32, i32* %mvshift, align 4
  %shl656 = shl i32 %594, %595
  %596 = load i32, i32* %pred_x, align 4
  %sub657 = sub nsw i32 %shl656, %596
  %idxprom658 = sext i32 %sub657 to i64
  %597 = load i32*, i32** @mvbits, align 8
  %arrayidx659 = getelementptr inbounds i32, i32* %597, i64 %idxprom658
  %598 = load i32, i32* %arrayidx659, align 4
  %599 = load i32, i32* %cand_y, align 4
  %600 = load i32, i32* %mvshift, align 4
  %shl660 = shl i32 %599, %600
  %601 = load i32, i32* %pred_y, align 4
  %sub661 = sub nsw i32 %shl660, %601
  %idxprom662 = sext i32 %sub661 to i64
  %602 = load i32*, i32** @mvbits, align 8
  %arrayidx663 = getelementptr inbounds i32, i32* %602, i64 %idxprom662
  %603 = load i32, i32* %arrayidx663, align 4
  %add664 = add nsw i32 %598, %603
  %mul665 = mul nsw i32 %593, %add664
  %shr666 = ashr i32 %mul665, 16
  store i32 %shr666, i32* %mcost, align 4
  %604 = load i32, i32* %mcost, align 4
  %605 = load i32, i32* %min_mcost.addr, align 4
  %cmp667 = icmp slt i32 %604, %605
  br i1 %cmp667, label %if.then.669, label %if.end.691

if.then.669:                                      ; preds = %if.then.655
  %606 = load i32, i32* @dist_method, align 4
  %idxprom670 = sext i32 %606 to i64
  %arrayidx671 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom670
  %607 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx671, align 8
  %608 = load i16*, i16** %orig_pic.addr, align 8
  %609 = load i32, i32* %blocksize_y, align 4
  %610 = load i32, i32* %blocksize_x, align 4
  %611 = load i32, i32* %min_mcost.addr, align 4
  %612 = load i32, i32* %mcost, align 4
  %sub672 = sub nsw i32 %611, %612
  %613 = load i32, i32* %cand_x, align 4
  %shl673 = shl i32 %613, 2
  %add674 = add nsw i32 %shl673, 80
  %614 = load i32, i32* %cand_y, align 4
  %shl675 = shl i32 %614, 2
  %add676 = add nsw i32 %shl675, 80
  %call677 = call i32 %607(i16* %608, i32 %609, i32 %610, i32 %sub672, i32 %add674, i32 %add676)
  %615 = load i32, i32* %mcost, align 4
  %add678 = add nsw i32 %615, %call677
  store i32 %add678, i32* %mcost, align 4
  %616 = load i32, i32* %cand_x, align 4
  %617 = load i32, i32* %center_x, align 4
  %sub679 = sub nsw i32 %616, %617
  %618 = load i32, i32* %search_range.addr, align 4
  %add680 = add nsw i32 %sub679, %618
  %idxprom681 = sext i32 %add680 to i64
  %619 = load i32, i32* %cand_y, align 4
  %620 = load i32, i32* %center_y, align 4
  %sub682 = sub nsw i32 %619, %620
  %621 = load i32, i32* %search_range.addr, align 4
  %add683 = add nsw i32 %sub682, %621
  %idxprom684 = sext i32 %add683 to i64
  %622 = load i8**, i8*** @McostState, align 8
  %arrayidx685 = getelementptr inbounds i8*, i8** %622, i64 %idxprom684
  %623 = load i8*, i8** %arrayidx685, align 8
  %arrayidx686 = getelementptr inbounds i8, i8* %623, i64 %idxprom681
  store i8 1, i8* %arrayidx686, align 1
  %624 = load i32, i32* %mcost, align 4
  %625 = load i32, i32* %min_mcost.addr, align 4
  %cmp687 = icmp slt i32 %624, %625
  br i1 %cmp687, label %if.then.689, label %if.end.690

if.then.689:                                      ; preds = %if.then.669
  %626 = load i32, i32* %cand_x, align 4
  store i32 %626, i32* %best_x, align 4
  %627 = load i32, i32* %cand_y, align 4
  store i32 %627, i32* %best_y, align 4
  %628 = load i32, i32* %mcost, align 4
  store i32 %628, i32* %min_mcost.addr, align 4
  br label %if.end.690

if.end.690:                                       ; preds = %if.then.689, %if.then.669
  br label %if.end.691

if.end.691:                                       ; preds = %if.end.690, %if.then.655
  br label %if.end.692

if.end.692:                                       ; preds = %if.end.691, %if.then.645
  br label %if.end.693

if.end.693:                                       ; preds = %if.end.692, %land.lhs.true.640, %for.body.634
  %629 = load i32, i32* %iXMinNow, align 4
  %630 = load i32, i32* %search_step, align 4
  %sub694 = sub nsw i32 %629, %630
  store i32 %sub694, i32* %cand_x, align 4
  %631 = load i32, i32* %iYMinNow, align 4
  store i32 %631, i32* %cand_y, align 4
  %632 = load i32, i32* %cand_x, align 4
  %633 = load i32, i32* %center_x, align 4
  %sub695 = sub nsw i32 %632, %633
  %call696 = call i32 @iabs(i32 %sub695)
  %634 = load i32, i32* %search_range.addr, align 4
  %cmp697 = icmp sle i32 %call696, %634
  br i1 %cmp697, label %land.lhs.true.699, label %if.end.752

land.lhs.true.699:                                ; preds = %if.end.693
  %635 = load i32, i32* %cand_y, align 4
  %636 = load i32, i32* %center_y, align 4
  %sub700 = sub nsw i32 %635, %636
  %call701 = call i32 @iabs(i32 %sub700)
  %637 = load i32, i32* %search_range.addr, align 4
  %cmp702 = icmp sle i32 %call701, %637
  br i1 %cmp702, label %if.then.704, label %if.end.752

if.then.704:                                      ; preds = %land.lhs.true.699
  %638 = load i32, i32* %cand_x, align 4
  %639 = load i32, i32* %center_x, align 4
  %sub705 = sub nsw i32 %638, %639
  %640 = load i32, i32* %search_range.addr, align 4
  %add706 = add nsw i32 %sub705, %640
  %idxprom707 = sext i32 %add706 to i64
  %641 = load i32, i32* %cand_y, align 4
  %642 = load i32, i32* %center_y, align 4
  %sub708 = sub nsw i32 %641, %642
  %643 = load i32, i32* %search_range.addr, align 4
  %add709 = add nsw i32 %sub708, %643
  %idxprom710 = sext i32 %add709 to i64
  %644 = load i8**, i8*** @McostState, align 8
  %arrayidx711 = getelementptr inbounds i8*, i8** %644, i64 %idxprom710
  %645 = load i8*, i8** %arrayidx711, align 8
  %arrayidx712 = getelementptr inbounds i8, i8* %645, i64 %idxprom707
  %646 = load i8, i8* %arrayidx712, align 1
  %tobool713 = icmp ne i8 %646, 0
  br i1 %tobool713, label %if.end.751, label %if.then.714

if.then.714:                                      ; preds = %if.then.704
  %647 = load i32, i32* %lambda_factor.addr, align 4
  %648 = load i32, i32* %cand_x, align 4
  %649 = load i32, i32* %mvshift, align 4
  %shl715 = shl i32 %648, %649
  %650 = load i32, i32* %pred_x, align 4
  %sub716 = sub nsw i32 %shl715, %650
  %idxprom717 = sext i32 %sub716 to i64
  %651 = load i32*, i32** @mvbits, align 8
  %arrayidx718 = getelementptr inbounds i32, i32* %651, i64 %idxprom717
  %652 = load i32, i32* %arrayidx718, align 4
  %653 = load i32, i32* %cand_y, align 4
  %654 = load i32, i32* %mvshift, align 4
  %shl719 = shl i32 %653, %654
  %655 = load i32, i32* %pred_y, align 4
  %sub720 = sub nsw i32 %shl719, %655
  %idxprom721 = sext i32 %sub720 to i64
  %656 = load i32*, i32** @mvbits, align 8
  %arrayidx722 = getelementptr inbounds i32, i32* %656, i64 %idxprom721
  %657 = load i32, i32* %arrayidx722, align 4
  %add723 = add nsw i32 %652, %657
  %mul724 = mul nsw i32 %647, %add723
  %shr725 = ashr i32 %mul724, 16
  store i32 %shr725, i32* %mcost, align 4
  %658 = load i32, i32* %mcost, align 4
  %659 = load i32, i32* %min_mcost.addr, align 4
  %cmp726 = icmp slt i32 %658, %659
  br i1 %cmp726, label %if.then.728, label %if.end.750

if.then.728:                                      ; preds = %if.then.714
  %660 = load i32, i32* @dist_method, align 4
  %idxprom729 = sext i32 %660 to i64
  %arrayidx730 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom729
  %661 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx730, align 8
  %662 = load i16*, i16** %orig_pic.addr, align 8
  %663 = load i32, i32* %blocksize_y, align 4
  %664 = load i32, i32* %blocksize_x, align 4
  %665 = load i32, i32* %min_mcost.addr, align 4
  %666 = load i32, i32* %mcost, align 4
  %sub731 = sub nsw i32 %665, %666
  %667 = load i32, i32* %cand_x, align 4
  %shl732 = shl i32 %667, 2
  %add733 = add nsw i32 %shl732, 80
  %668 = load i32, i32* %cand_y, align 4
  %shl734 = shl i32 %668, 2
  %add735 = add nsw i32 %shl734, 80
  %call736 = call i32 %661(i16* %662, i32 %663, i32 %664, i32 %sub731, i32 %add733, i32 %add735)
  %669 = load i32, i32* %mcost, align 4
  %add737 = add nsw i32 %669, %call736
  store i32 %add737, i32* %mcost, align 4
  %670 = load i32, i32* %cand_x, align 4
  %671 = load i32, i32* %center_x, align 4
  %sub738 = sub nsw i32 %670, %671
  %672 = load i32, i32* %search_range.addr, align 4
  %add739 = add nsw i32 %sub738, %672
  %idxprom740 = sext i32 %add739 to i64
  %673 = load i32, i32* %cand_y, align 4
  %674 = load i32, i32* %center_y, align 4
  %sub741 = sub nsw i32 %673, %674
  %675 = load i32, i32* %search_range.addr, align 4
  %add742 = add nsw i32 %sub741, %675
  %idxprom743 = sext i32 %add742 to i64
  %676 = load i8**, i8*** @McostState, align 8
  %arrayidx744 = getelementptr inbounds i8*, i8** %676, i64 %idxprom743
  %677 = load i8*, i8** %arrayidx744, align 8
  %arrayidx745 = getelementptr inbounds i8, i8* %677, i64 %idxprom740
  store i8 1, i8* %arrayidx745, align 1
  %678 = load i32, i32* %mcost, align 4
  %679 = load i32, i32* %min_mcost.addr, align 4
  %cmp746 = icmp slt i32 %678, %679
  br i1 %cmp746, label %if.then.748, label %if.end.749

if.then.748:                                      ; preds = %if.then.728
  %680 = load i32, i32* %cand_x, align 4
  store i32 %680, i32* %best_x, align 4
  %681 = load i32, i32* %cand_y, align 4
  store i32 %681, i32* %best_y, align 4
  %682 = load i32, i32* %mcost, align 4
  store i32 %682, i32* %min_mcost.addr, align 4
  br label %if.end.749

if.end.749:                                       ; preds = %if.then.748, %if.then.728
  br label %if.end.750

if.end.750:                                       ; preds = %if.end.749, %if.then.714
  br label %if.end.751

if.end.751:                                       ; preds = %if.end.750, %if.then.704
  br label %if.end.752

if.end.752:                                       ; preds = %if.end.751, %land.lhs.true.699, %if.end.693
  br label %for.inc.753

for.inc.753:                                      ; preds = %if.end.752
  %683 = load i32, i32* %i, align 4
  %add754 = add nsw i32 %683, 2
  store i32 %add754, i32* %i, align 4
  br label %for.cond.631

for.end.755:                                      ; preds = %for.cond.631
  store i32 1, i32* %i, align 4
  br label %for.cond.756

for.cond.756:                                     ; preds = %for.inc.879, %for.end.755
  %684 = load i32, i32* %i, align 4
  %685 = load i32, i32* %search_range.addr, align 4
  %div757 = sdiv i32 %685, 2
  %cmp758 = icmp slt i32 %684, %div757
  br i1 %cmp758, label %for.body.760, label %for.end.881

for.body.760:                                     ; preds = %for.cond.756
  %686 = load i32, i32* %i, align 4
  store i32 %686, i32* %search_step, align 4
  %687 = load i32, i32* %iXMinNow, align 4
  store i32 %687, i32* %cand_x, align 4
  %688 = load i32, i32* %iYMinNow, align 4
  %689 = load i32, i32* %search_step, align 4
  %add761 = add nsw i32 %688, %689
  store i32 %add761, i32* %cand_y, align 4
  %690 = load i32, i32* %cand_x, align 4
  %691 = load i32, i32* %center_x, align 4
  %sub762 = sub nsw i32 %690, %691
  %call763 = call i32 @iabs(i32 %sub762)
  %692 = load i32, i32* %search_range.addr, align 4
  %cmp764 = icmp sle i32 %call763, %692
  br i1 %cmp764, label %land.lhs.true.766, label %if.end.819

land.lhs.true.766:                                ; preds = %for.body.760
  %693 = load i32, i32* %cand_y, align 4
  %694 = load i32, i32* %center_y, align 4
  %sub767 = sub nsw i32 %693, %694
  %call768 = call i32 @iabs(i32 %sub767)
  %695 = load i32, i32* %search_range.addr, align 4
  %cmp769 = icmp sle i32 %call768, %695
  br i1 %cmp769, label %if.then.771, label %if.end.819

if.then.771:                                      ; preds = %land.lhs.true.766
  %696 = load i32, i32* %cand_x, align 4
  %697 = load i32, i32* %center_x, align 4
  %sub772 = sub nsw i32 %696, %697
  %698 = load i32, i32* %search_range.addr, align 4
  %add773 = add nsw i32 %sub772, %698
  %idxprom774 = sext i32 %add773 to i64
  %699 = load i32, i32* %cand_y, align 4
  %700 = load i32, i32* %center_y, align 4
  %sub775 = sub nsw i32 %699, %700
  %701 = load i32, i32* %search_range.addr, align 4
  %add776 = add nsw i32 %sub775, %701
  %idxprom777 = sext i32 %add776 to i64
  %702 = load i8**, i8*** @McostState, align 8
  %arrayidx778 = getelementptr inbounds i8*, i8** %702, i64 %idxprom777
  %703 = load i8*, i8** %arrayidx778, align 8
  %arrayidx779 = getelementptr inbounds i8, i8* %703, i64 %idxprom774
  %704 = load i8, i8* %arrayidx779, align 1
  %tobool780 = icmp ne i8 %704, 0
  br i1 %tobool780, label %if.end.818, label %if.then.781

if.then.781:                                      ; preds = %if.then.771
  %705 = load i32, i32* %lambda_factor.addr, align 4
  %706 = load i32, i32* %cand_x, align 4
  %707 = load i32, i32* %mvshift, align 4
  %shl782 = shl i32 %706, %707
  %708 = load i32, i32* %pred_x, align 4
  %sub783 = sub nsw i32 %shl782, %708
  %idxprom784 = sext i32 %sub783 to i64
  %709 = load i32*, i32** @mvbits, align 8
  %arrayidx785 = getelementptr inbounds i32, i32* %709, i64 %idxprom784
  %710 = load i32, i32* %arrayidx785, align 4
  %711 = load i32, i32* %cand_y, align 4
  %712 = load i32, i32* %mvshift, align 4
  %shl786 = shl i32 %711, %712
  %713 = load i32, i32* %pred_y, align 4
  %sub787 = sub nsw i32 %shl786, %713
  %idxprom788 = sext i32 %sub787 to i64
  %714 = load i32*, i32** @mvbits, align 8
  %arrayidx789 = getelementptr inbounds i32, i32* %714, i64 %idxprom788
  %715 = load i32, i32* %arrayidx789, align 4
  %add790 = add nsw i32 %710, %715
  %mul791 = mul nsw i32 %705, %add790
  %shr792 = ashr i32 %mul791, 16
  store i32 %shr792, i32* %mcost, align 4
  %716 = load i32, i32* %mcost, align 4
  %717 = load i32, i32* %min_mcost.addr, align 4
  %cmp793 = icmp slt i32 %716, %717
  br i1 %cmp793, label %if.then.795, label %if.end.817

if.then.795:                                      ; preds = %if.then.781
  %718 = load i32, i32* @dist_method, align 4
  %idxprom796 = sext i32 %718 to i64
  %arrayidx797 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom796
  %719 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx797, align 8
  %720 = load i16*, i16** %orig_pic.addr, align 8
  %721 = load i32, i32* %blocksize_y, align 4
  %722 = load i32, i32* %blocksize_x, align 4
  %723 = load i32, i32* %min_mcost.addr, align 4
  %724 = load i32, i32* %mcost, align 4
  %sub798 = sub nsw i32 %723, %724
  %725 = load i32, i32* %cand_x, align 4
  %shl799 = shl i32 %725, 2
  %add800 = add nsw i32 %shl799, 80
  %726 = load i32, i32* %cand_y, align 4
  %shl801 = shl i32 %726, 2
  %add802 = add nsw i32 %shl801, 80
  %call803 = call i32 %719(i16* %720, i32 %721, i32 %722, i32 %sub798, i32 %add800, i32 %add802)
  %727 = load i32, i32* %mcost, align 4
  %add804 = add nsw i32 %727, %call803
  store i32 %add804, i32* %mcost, align 4
  %728 = load i32, i32* %cand_x, align 4
  %729 = load i32, i32* %center_x, align 4
  %sub805 = sub nsw i32 %728, %729
  %730 = load i32, i32* %search_range.addr, align 4
  %add806 = add nsw i32 %sub805, %730
  %idxprom807 = sext i32 %add806 to i64
  %731 = load i32, i32* %cand_y, align 4
  %732 = load i32, i32* %center_y, align 4
  %sub808 = sub nsw i32 %731, %732
  %733 = load i32, i32* %search_range.addr, align 4
  %add809 = add nsw i32 %sub808, %733
  %idxprom810 = sext i32 %add809 to i64
  %734 = load i8**, i8*** @McostState, align 8
  %arrayidx811 = getelementptr inbounds i8*, i8** %734, i64 %idxprom810
  %735 = load i8*, i8** %arrayidx811, align 8
  %arrayidx812 = getelementptr inbounds i8, i8* %735, i64 %idxprom807
  store i8 1, i8* %arrayidx812, align 1
  %736 = load i32, i32* %mcost, align 4
  %737 = load i32, i32* %min_mcost.addr, align 4
  %cmp813 = icmp slt i32 %736, %737
  br i1 %cmp813, label %if.then.815, label %if.end.816

if.then.815:                                      ; preds = %if.then.795
  %738 = load i32, i32* %cand_x, align 4
  store i32 %738, i32* %best_x, align 4
  %739 = load i32, i32* %cand_y, align 4
  store i32 %739, i32* %best_y, align 4
  %740 = load i32, i32* %mcost, align 4
  store i32 %740, i32* %min_mcost.addr, align 4
  br label %if.end.816

if.end.816:                                       ; preds = %if.then.815, %if.then.795
  br label %if.end.817

if.end.817:                                       ; preds = %if.end.816, %if.then.781
  br label %if.end.818

if.end.818:                                       ; preds = %if.end.817, %if.then.771
  br label %if.end.819

if.end.819:                                       ; preds = %if.end.818, %land.lhs.true.766, %for.body.760
  %741 = load i32, i32* %iXMinNow, align 4
  store i32 %741, i32* %cand_x, align 4
  %742 = load i32, i32* %iYMinNow, align 4
  %743 = load i32, i32* %search_step, align 4
  %sub820 = sub nsw i32 %742, %743
  store i32 %sub820, i32* %cand_y, align 4
  %744 = load i32, i32* %cand_x, align 4
  %745 = load i32, i32* %center_x, align 4
  %sub821 = sub nsw i32 %744, %745
  %call822 = call i32 @iabs(i32 %sub821)
  %746 = load i32, i32* %search_range.addr, align 4
  %cmp823 = icmp sle i32 %call822, %746
  br i1 %cmp823, label %land.lhs.true.825, label %if.end.878

land.lhs.true.825:                                ; preds = %if.end.819
  %747 = load i32, i32* %cand_y, align 4
  %748 = load i32, i32* %center_y, align 4
  %sub826 = sub nsw i32 %747, %748
  %call827 = call i32 @iabs(i32 %sub826)
  %749 = load i32, i32* %search_range.addr, align 4
  %cmp828 = icmp sle i32 %call827, %749
  br i1 %cmp828, label %if.then.830, label %if.end.878

if.then.830:                                      ; preds = %land.lhs.true.825
  %750 = load i32, i32* %cand_x, align 4
  %751 = load i32, i32* %center_x, align 4
  %sub831 = sub nsw i32 %750, %751
  %752 = load i32, i32* %search_range.addr, align 4
  %add832 = add nsw i32 %sub831, %752
  %idxprom833 = sext i32 %add832 to i64
  %753 = load i32, i32* %cand_y, align 4
  %754 = load i32, i32* %center_y, align 4
  %sub834 = sub nsw i32 %753, %754
  %755 = load i32, i32* %search_range.addr, align 4
  %add835 = add nsw i32 %sub834, %755
  %idxprom836 = sext i32 %add835 to i64
  %756 = load i8**, i8*** @McostState, align 8
  %arrayidx837 = getelementptr inbounds i8*, i8** %756, i64 %idxprom836
  %757 = load i8*, i8** %arrayidx837, align 8
  %arrayidx838 = getelementptr inbounds i8, i8* %757, i64 %idxprom833
  %758 = load i8, i8* %arrayidx838, align 1
  %tobool839 = icmp ne i8 %758, 0
  br i1 %tobool839, label %if.end.877, label %if.then.840

if.then.840:                                      ; preds = %if.then.830
  %759 = load i32, i32* %lambda_factor.addr, align 4
  %760 = load i32, i32* %cand_x, align 4
  %761 = load i32, i32* %mvshift, align 4
  %shl841 = shl i32 %760, %761
  %762 = load i32, i32* %pred_x, align 4
  %sub842 = sub nsw i32 %shl841, %762
  %idxprom843 = sext i32 %sub842 to i64
  %763 = load i32*, i32** @mvbits, align 8
  %arrayidx844 = getelementptr inbounds i32, i32* %763, i64 %idxprom843
  %764 = load i32, i32* %arrayidx844, align 4
  %765 = load i32, i32* %cand_y, align 4
  %766 = load i32, i32* %mvshift, align 4
  %shl845 = shl i32 %765, %766
  %767 = load i32, i32* %pred_y, align 4
  %sub846 = sub nsw i32 %shl845, %767
  %idxprom847 = sext i32 %sub846 to i64
  %768 = load i32*, i32** @mvbits, align 8
  %arrayidx848 = getelementptr inbounds i32, i32* %768, i64 %idxprom847
  %769 = load i32, i32* %arrayidx848, align 4
  %add849 = add nsw i32 %764, %769
  %mul850 = mul nsw i32 %759, %add849
  %shr851 = ashr i32 %mul850, 16
  store i32 %shr851, i32* %mcost, align 4
  %770 = load i32, i32* %mcost, align 4
  %771 = load i32, i32* %min_mcost.addr, align 4
  %cmp852 = icmp slt i32 %770, %771
  br i1 %cmp852, label %if.then.854, label %if.end.876

if.then.854:                                      ; preds = %if.then.840
  %772 = load i32, i32* @dist_method, align 4
  %idxprom855 = sext i32 %772 to i64
  %arrayidx856 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom855
  %773 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx856, align 8
  %774 = load i16*, i16** %orig_pic.addr, align 8
  %775 = load i32, i32* %blocksize_y, align 4
  %776 = load i32, i32* %blocksize_x, align 4
  %777 = load i32, i32* %min_mcost.addr, align 4
  %778 = load i32, i32* %mcost, align 4
  %sub857 = sub nsw i32 %777, %778
  %779 = load i32, i32* %cand_x, align 4
  %shl858 = shl i32 %779, 2
  %add859 = add nsw i32 %shl858, 80
  %780 = load i32, i32* %cand_y, align 4
  %shl860 = shl i32 %780, 2
  %add861 = add nsw i32 %shl860, 80
  %call862 = call i32 %773(i16* %774, i32 %775, i32 %776, i32 %sub857, i32 %add859, i32 %add861)
  %781 = load i32, i32* %mcost, align 4
  %add863 = add nsw i32 %781, %call862
  store i32 %add863, i32* %mcost, align 4
  %782 = load i32, i32* %cand_x, align 4
  %783 = load i32, i32* %center_x, align 4
  %sub864 = sub nsw i32 %782, %783
  %784 = load i32, i32* %search_range.addr, align 4
  %add865 = add nsw i32 %sub864, %784
  %idxprom866 = sext i32 %add865 to i64
  %785 = load i32, i32* %cand_y, align 4
  %786 = load i32, i32* %center_y, align 4
  %sub867 = sub nsw i32 %785, %786
  %787 = load i32, i32* %search_range.addr, align 4
  %add868 = add nsw i32 %sub867, %787
  %idxprom869 = sext i32 %add868 to i64
  %788 = load i8**, i8*** @McostState, align 8
  %arrayidx870 = getelementptr inbounds i8*, i8** %788, i64 %idxprom869
  %789 = load i8*, i8** %arrayidx870, align 8
  %arrayidx871 = getelementptr inbounds i8, i8* %789, i64 %idxprom866
  store i8 1, i8* %arrayidx871, align 1
  %790 = load i32, i32* %mcost, align 4
  %791 = load i32, i32* %min_mcost.addr, align 4
  %cmp872 = icmp slt i32 %790, %791
  br i1 %cmp872, label %if.then.874, label %if.end.875

if.then.874:                                      ; preds = %if.then.854
  %792 = load i32, i32* %cand_x, align 4
  store i32 %792, i32* %best_x, align 4
  %793 = load i32, i32* %cand_y, align 4
  store i32 %793, i32* %best_y, align 4
  %794 = load i32, i32* %mcost, align 4
  store i32 %794, i32* %min_mcost.addr, align 4
  br label %if.end.875

if.end.875:                                       ; preds = %if.then.874, %if.then.854
  br label %if.end.876

if.end.876:                                       ; preds = %if.end.875, %if.then.840
  br label %if.end.877

if.end.877:                                       ; preds = %if.end.876, %if.then.830
  br label %if.end.878

if.end.878:                                       ; preds = %if.end.877, %land.lhs.true.825, %if.end.819
  br label %for.inc.879

for.inc.879:                                      ; preds = %if.end.878
  %795 = load i32, i32* %i, align 4
  %add880 = add nsw i32 %795, 2
  store i32 %add880, i32* %i, align 4
  br label %for.cond.756

for.end.881:                                      ; preds = %for.cond.756
  %796 = load i32, i32* %min_mcost.addr, align 4
  %797 = load i32, i32* @pred_SAD, align 4
  %sub882 = sub nsw i32 %796, %797
  %conv883 = sitofp i32 %sub882 to float
  %798 = load i32, i32* @pred_SAD, align 4
  %conv884 = sitofp i32 %798 to float
  %799 = load float, float* %betaFourth_2, align 4
  %mul885 = fmul float %conv884, %799
  %cmp886 = fcmp olt float %conv883, %mul885
  br i1 %cmp886, label %if.then.888, label %if.else.889

if.then.888:                                      ; preds = %for.end.881
  br label %fourth_2_step

if.else.889:                                      ; preds = %for.end.881
  %800 = load i32, i32* %min_mcost.addr, align 4
  %801 = load i32, i32* @pred_SAD, align 4
  %sub890 = sub nsw i32 %800, %801
  %conv891 = sitofp i32 %sub890 to float
  %802 = load i32, i32* @pred_SAD, align 4
  %conv892 = sitofp i32 %802 to float
  %803 = load float, float* %betaFourth_1, align 4
  %mul893 = fmul float %conv892, %803
  %cmp894 = fcmp olt float %conv891, %mul893
  br i1 %cmp894, label %if.then.896, label %if.end.897

if.then.896:                                      ; preds = %if.else.889
  br label %fourth_1_step

if.end.897:                                       ; preds = %if.else.889
  br label %if.end.898

if.end.898:                                       ; preds = %if.end.897
  %804 = load i32, i32* %best_x, align 4
  store i32 %804, i32* %iXMinNow, align 4
  %805 = load i32, i32* %best_y, align 4
  store i32 %805, i32* %iYMinNow, align 4
  store i32 1, i32* %pos, align 4
  br label %for.cond.899

for.cond.899:                                     ; preds = %for.inc.969, %if.end.898
  %806 = load i32, i32* %pos, align 4
  %cmp900 = icmp slt i32 %806, 25
  br i1 %cmp900, label %for.body.902, label %for.end.971

for.body.902:                                     ; preds = %for.cond.899
  %807 = load i32, i32* %iXMinNow, align 4
  %808 = load i32, i32* %pos, align 4
  %idxprom903 = sext i32 %808 to i64
  %809 = load i16*, i16** @spiral_search_x, align 8
  %arrayidx904 = getelementptr inbounds i16, i16* %809, i64 %idxprom903
  %810 = load i16, i16* %arrayidx904, align 2
  %conv905 = sext i16 %810 to i32
  %add906 = add nsw i32 %807, %conv905
  store i32 %add906, i32* %cand_x, align 4
  %811 = load i32, i32* %iYMinNow, align 4
  %812 = load i32, i32* %pos, align 4
  %idxprom907 = sext i32 %812 to i64
  %813 = load i16*, i16** @spiral_search_y, align 8
  %arrayidx908 = getelementptr inbounds i16, i16* %813, i64 %idxprom907
  %814 = load i16, i16* %arrayidx908, align 2
  %conv909 = sext i16 %814 to i32
  %add910 = add nsw i32 %811, %conv909
  store i32 %add910, i32* %cand_y, align 4
  %815 = load i32, i32* %cand_x, align 4
  %816 = load i32, i32* %center_x, align 4
  %sub911 = sub nsw i32 %815, %816
  %call912 = call i32 @iabs(i32 %sub911)
  %817 = load i32, i32* %search_range.addr, align 4
  %cmp913 = icmp sle i32 %call912, %817
  br i1 %cmp913, label %land.lhs.true.915, label %if.end.968

land.lhs.true.915:                                ; preds = %for.body.902
  %818 = load i32, i32* %cand_y, align 4
  %819 = load i32, i32* %center_y, align 4
  %sub916 = sub nsw i32 %818, %819
  %call917 = call i32 @iabs(i32 %sub916)
  %820 = load i32, i32* %search_range.addr, align 4
  %cmp918 = icmp sle i32 %call917, %820
  br i1 %cmp918, label %if.then.920, label %if.end.968

if.then.920:                                      ; preds = %land.lhs.true.915
  %821 = load i32, i32* %cand_x, align 4
  %822 = load i32, i32* %center_x, align 4
  %sub921 = sub nsw i32 %821, %822
  %823 = load i32, i32* %search_range.addr, align 4
  %add922 = add nsw i32 %sub921, %823
  %idxprom923 = sext i32 %add922 to i64
  %824 = load i32, i32* %cand_y, align 4
  %825 = load i32, i32* %center_y, align 4
  %sub924 = sub nsw i32 %824, %825
  %826 = load i32, i32* %search_range.addr, align 4
  %add925 = add nsw i32 %sub924, %826
  %idxprom926 = sext i32 %add925 to i64
  %827 = load i8**, i8*** @McostState, align 8
  %arrayidx927 = getelementptr inbounds i8*, i8** %827, i64 %idxprom926
  %828 = load i8*, i8** %arrayidx927, align 8
  %arrayidx928 = getelementptr inbounds i8, i8* %828, i64 %idxprom923
  %829 = load i8, i8* %arrayidx928, align 1
  %tobool929 = icmp ne i8 %829, 0
  br i1 %tobool929, label %if.end.967, label %if.then.930

if.then.930:                                      ; preds = %if.then.920
  %830 = load i32, i32* %lambda_factor.addr, align 4
  %831 = load i32, i32* %cand_x, align 4
  %832 = load i32, i32* %mvshift, align 4
  %shl931 = shl i32 %831, %832
  %833 = load i32, i32* %pred_x, align 4
  %sub932 = sub nsw i32 %shl931, %833
  %idxprom933 = sext i32 %sub932 to i64
  %834 = load i32*, i32** @mvbits, align 8
  %arrayidx934 = getelementptr inbounds i32, i32* %834, i64 %idxprom933
  %835 = load i32, i32* %arrayidx934, align 4
  %836 = load i32, i32* %cand_y, align 4
  %837 = load i32, i32* %mvshift, align 4
  %shl935 = shl i32 %836, %837
  %838 = load i32, i32* %pred_y, align 4
  %sub936 = sub nsw i32 %shl935, %838
  %idxprom937 = sext i32 %sub936 to i64
  %839 = load i32*, i32** @mvbits, align 8
  %arrayidx938 = getelementptr inbounds i32, i32* %839, i64 %idxprom937
  %840 = load i32, i32* %arrayidx938, align 4
  %add939 = add nsw i32 %835, %840
  %mul940 = mul nsw i32 %830, %add939
  %shr941 = ashr i32 %mul940, 16
  store i32 %shr941, i32* %mcost, align 4
  %841 = load i32, i32* %mcost, align 4
  %842 = load i32, i32* %min_mcost.addr, align 4
  %cmp942 = icmp slt i32 %841, %842
  br i1 %cmp942, label %if.then.944, label %if.end.966

if.then.944:                                      ; preds = %if.then.930
  %843 = load i32, i32* @dist_method, align 4
  %idxprom945 = sext i32 %843 to i64
  %arrayidx946 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom945
  %844 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx946, align 8
  %845 = load i16*, i16** %orig_pic.addr, align 8
  %846 = load i32, i32* %blocksize_y, align 4
  %847 = load i32, i32* %blocksize_x, align 4
  %848 = load i32, i32* %min_mcost.addr, align 4
  %849 = load i32, i32* %mcost, align 4
  %sub947 = sub nsw i32 %848, %849
  %850 = load i32, i32* %cand_x, align 4
  %shl948 = shl i32 %850, 2
  %add949 = add nsw i32 %shl948, 80
  %851 = load i32, i32* %cand_y, align 4
  %shl950 = shl i32 %851, 2
  %add951 = add nsw i32 %shl950, 80
  %call952 = call i32 %844(i16* %845, i32 %846, i32 %847, i32 %sub947, i32 %add949, i32 %add951)
  %852 = load i32, i32* %mcost, align 4
  %add953 = add nsw i32 %852, %call952
  store i32 %add953, i32* %mcost, align 4
  %853 = load i32, i32* %cand_x, align 4
  %854 = load i32, i32* %center_x, align 4
  %sub954 = sub nsw i32 %853, %854
  %855 = load i32, i32* %search_range.addr, align 4
  %add955 = add nsw i32 %sub954, %855
  %idxprom956 = sext i32 %add955 to i64
  %856 = load i32, i32* %cand_y, align 4
  %857 = load i32, i32* %center_y, align 4
  %sub957 = sub nsw i32 %856, %857
  %858 = load i32, i32* %search_range.addr, align 4
  %add958 = add nsw i32 %sub957, %858
  %idxprom959 = sext i32 %add958 to i64
  %859 = load i8**, i8*** @McostState, align 8
  %arrayidx960 = getelementptr inbounds i8*, i8** %859, i64 %idxprom959
  %860 = load i8*, i8** %arrayidx960, align 8
  %arrayidx961 = getelementptr inbounds i8, i8* %860, i64 %idxprom956
  store i8 1, i8* %arrayidx961, align 1
  %861 = load i32, i32* %mcost, align 4
  %862 = load i32, i32* %min_mcost.addr, align 4
  %cmp962 = icmp slt i32 %861, %862
  br i1 %cmp962, label %if.then.964, label %if.end.965

if.then.964:                                      ; preds = %if.then.944
  %863 = load i32, i32* %cand_x, align 4
  store i32 %863, i32* %best_x, align 4
  %864 = load i32, i32* %cand_y, align 4
  store i32 %864, i32* %best_y, align 4
  %865 = load i32, i32* %mcost, align 4
  store i32 %865, i32* %min_mcost.addr, align 4
  br label %if.end.965

if.end.965:                                       ; preds = %if.then.964, %if.then.944
  br label %if.end.966

if.end.966:                                       ; preds = %if.end.965, %if.then.930
  br label %if.end.967

if.end.967:                                       ; preds = %if.end.966, %if.then.920
  br label %if.end.968

if.end.968:                                       ; preds = %if.end.967, %land.lhs.true.915, %for.body.902
  br label %for.inc.969

for.inc.969:                                      ; preds = %if.end.968
  %866 = load i32, i32* %pos, align 4
  %inc970 = add nsw i32 %866, 1
  store i32 %inc970, i32* %pos, align 4
  br label %for.cond.899

for.end.971:                                      ; preds = %for.cond.899
  %867 = load i32, i32* %min_mcost.addr, align 4
  %868 = load i32, i32* @pred_SAD, align 4
  %sub972 = sub nsw i32 %867, %868
  %conv973 = sitofp i32 %sub972 to float
  %869 = load i32, i32* @pred_SAD, align 4
  %conv974 = sitofp i32 %869 to float
  %870 = load float, float* %betaFourth_2, align 4
  %mul975 = fmul float %conv974, %870
  %cmp976 = fcmp olt float %conv973, %mul975
  br i1 %cmp976, label %if.then.978, label %if.else.979

if.then.978:                                      ; preds = %for.end.971
  br label %fourth_2_step

if.else.979:                                      ; preds = %for.end.971
  %871 = load i32, i32* %min_mcost.addr, align 4
  %872 = load i32, i32* @pred_SAD, align 4
  %sub980 = sub nsw i32 %871, %872
  %conv981 = sitofp i32 %sub980 to float
  %873 = load i32, i32* @pred_SAD, align 4
  %conv982 = sitofp i32 %873 to float
  %874 = load float, float* %betaFourth_1, align 4
  %mul983 = fmul float %conv982, %874
  %cmp984 = fcmp olt float %conv981, %mul983
  br i1 %cmp984, label %if.then.986, label %if.end.987

if.then.986:                                      ; preds = %if.else.979
  br label %fourth_1_step

if.end.987:                                       ; preds = %if.else.979
  br label %if.end.988

if.end.988:                                       ; preds = %if.end.987
  %875 = bitcast [16 x i32]* %temp_Big_Hexagon_x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %875, i8* bitcast ([16 x i32]* @Big_Hexagon_x to i8*), i64 64, i32 16, i1 false)
  %876 = bitcast [16 x i32]* %temp_Big_Hexagon_y to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %876, i8* bitcast ([16 x i32]* @Big_Hexagon_y to i8*), i64 64, i32 16, i1 false)
  store i32 1, i32* %i, align 4
  br label %for.cond.989

for.cond.989:                                     ; preds = %for.inc.1079, %if.end.988
  %877 = load i32, i32* %i, align 4
  %878 = load i32, i32* %search_range.addr, align 4
  %div990 = sdiv i32 %878, 4
  %cmp991 = icmp sle i32 %877, %div990
  br i1 %cmp991, label %for.body.993, label %for.end.1081

for.body.993:                                     ; preds = %for.cond.989
  store i32 0, i32* %m, align 4
  br label %for.cond.994

for.cond.994:                                     ; preds = %for.inc.1072, %for.body.993
  %879 = load i32, i32* %m, align 4
  %cmp995 = icmp slt i32 %879, 16
  br i1 %cmp995, label %for.body.997, label %for.end.1074

for.body.997:                                     ; preds = %for.cond.994
  %880 = load i32, i32* %iXMinNow, align 4
  %881 = load i32, i32* %m, align 4
  %idxprom998 = sext i32 %881 to i64
  %arrayidx999 = getelementptr inbounds [16 x i32], [16 x i32]* %temp_Big_Hexagon_x, i32 0, i64 %idxprom998
  %882 = load i32, i32* %arrayidx999, align 4
  %add1000 = add nsw i32 %880, %882
  store i32 %add1000, i32* %cand_x, align 4
  %883 = load i32, i32* %iYMinNow, align 4
  %884 = load i32, i32* %m, align 4
  %idxprom1001 = sext i32 %884 to i64
  %arrayidx1002 = getelementptr inbounds [16 x i32], [16 x i32]* %temp_Big_Hexagon_y, i32 0, i64 %idxprom1001
  %885 = load i32, i32* %arrayidx1002, align 4
  %add1003 = add nsw i32 %883, %885
  store i32 %add1003, i32* %cand_y, align 4
  %886 = load i32, i32* %m, align 4
  %idxprom1004 = sext i32 %886 to i64
  %arrayidx1005 = getelementptr inbounds [16 x i32], [16 x i32]* @Big_Hexagon_x, i32 0, i64 %idxprom1004
  %887 = load i32, i32* %arrayidx1005, align 4
  %888 = load i32, i32* %m, align 4
  %idxprom1006 = sext i32 %888 to i64
  %arrayidx1007 = getelementptr inbounds [16 x i32], [16 x i32]* %temp_Big_Hexagon_x, i32 0, i64 %idxprom1006
  %889 = load i32, i32* %arrayidx1007, align 4
  %add1008 = add nsw i32 %889, %887
  store i32 %add1008, i32* %arrayidx1007, align 4
  %890 = load i32, i32* %m, align 4
  %idxprom1009 = sext i32 %890 to i64
  %arrayidx1010 = getelementptr inbounds [16 x i32], [16 x i32]* @Big_Hexagon_y, i32 0, i64 %idxprom1009
  %891 = load i32, i32* %arrayidx1010, align 4
  %892 = load i32, i32* %m, align 4
  %idxprom1011 = sext i32 %892 to i64
  %arrayidx1012 = getelementptr inbounds [16 x i32], [16 x i32]* %temp_Big_Hexagon_y, i32 0, i64 %idxprom1011
  %893 = load i32, i32* %arrayidx1012, align 4
  %add1013 = add nsw i32 %893, %891
  store i32 %add1013, i32* %arrayidx1012, align 4
  %894 = load i32, i32* %cand_x, align 4
  %895 = load i32, i32* %center_x, align 4
  %sub1014 = sub nsw i32 %894, %895
  %call1015 = call i32 @iabs(i32 %sub1014)
  %896 = load i32, i32* %search_range.addr, align 4
  %cmp1016 = icmp sle i32 %call1015, %896
  br i1 %cmp1016, label %land.lhs.true.1018, label %if.end.1071

land.lhs.true.1018:                               ; preds = %for.body.997
  %897 = load i32, i32* %cand_y, align 4
  %898 = load i32, i32* %center_y, align 4
  %sub1019 = sub nsw i32 %897, %898
  %call1020 = call i32 @iabs(i32 %sub1019)
  %899 = load i32, i32* %search_range.addr, align 4
  %cmp1021 = icmp sle i32 %call1020, %899
  br i1 %cmp1021, label %if.then.1023, label %if.end.1071

if.then.1023:                                     ; preds = %land.lhs.true.1018
  %900 = load i32, i32* %cand_x, align 4
  %901 = load i32, i32* %center_x, align 4
  %sub1024 = sub nsw i32 %900, %901
  %902 = load i32, i32* %search_range.addr, align 4
  %add1025 = add nsw i32 %sub1024, %902
  %idxprom1026 = sext i32 %add1025 to i64
  %903 = load i32, i32* %cand_y, align 4
  %904 = load i32, i32* %center_y, align 4
  %sub1027 = sub nsw i32 %903, %904
  %905 = load i32, i32* %search_range.addr, align 4
  %add1028 = add nsw i32 %sub1027, %905
  %idxprom1029 = sext i32 %add1028 to i64
  %906 = load i8**, i8*** @McostState, align 8
  %arrayidx1030 = getelementptr inbounds i8*, i8** %906, i64 %idxprom1029
  %907 = load i8*, i8** %arrayidx1030, align 8
  %arrayidx1031 = getelementptr inbounds i8, i8* %907, i64 %idxprom1026
  %908 = load i8, i8* %arrayidx1031, align 1
  %tobool1032 = icmp ne i8 %908, 0
  br i1 %tobool1032, label %if.end.1070, label %if.then.1033

if.then.1033:                                     ; preds = %if.then.1023
  %909 = load i32, i32* %lambda_factor.addr, align 4
  %910 = load i32, i32* %cand_x, align 4
  %911 = load i32, i32* %mvshift, align 4
  %shl1034 = shl i32 %910, %911
  %912 = load i32, i32* %pred_x, align 4
  %sub1035 = sub nsw i32 %shl1034, %912
  %idxprom1036 = sext i32 %sub1035 to i64
  %913 = load i32*, i32** @mvbits, align 8
  %arrayidx1037 = getelementptr inbounds i32, i32* %913, i64 %idxprom1036
  %914 = load i32, i32* %arrayidx1037, align 4
  %915 = load i32, i32* %cand_y, align 4
  %916 = load i32, i32* %mvshift, align 4
  %shl1038 = shl i32 %915, %916
  %917 = load i32, i32* %pred_y, align 4
  %sub1039 = sub nsw i32 %shl1038, %917
  %idxprom1040 = sext i32 %sub1039 to i64
  %918 = load i32*, i32** @mvbits, align 8
  %arrayidx1041 = getelementptr inbounds i32, i32* %918, i64 %idxprom1040
  %919 = load i32, i32* %arrayidx1041, align 4
  %add1042 = add nsw i32 %914, %919
  %mul1043 = mul nsw i32 %909, %add1042
  %shr1044 = ashr i32 %mul1043, 16
  store i32 %shr1044, i32* %mcost, align 4
  %920 = load i32, i32* %mcost, align 4
  %921 = load i32, i32* %min_mcost.addr, align 4
  %cmp1045 = icmp slt i32 %920, %921
  br i1 %cmp1045, label %if.then.1047, label %if.end.1069

if.then.1047:                                     ; preds = %if.then.1033
  %922 = load i32, i32* @dist_method, align 4
  %idxprom1048 = sext i32 %922 to i64
  %arrayidx1049 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom1048
  %923 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx1049, align 8
  %924 = load i16*, i16** %orig_pic.addr, align 8
  %925 = load i32, i32* %blocksize_y, align 4
  %926 = load i32, i32* %blocksize_x, align 4
  %927 = load i32, i32* %min_mcost.addr, align 4
  %928 = load i32, i32* %mcost, align 4
  %sub1050 = sub nsw i32 %927, %928
  %929 = load i32, i32* %cand_x, align 4
  %shl1051 = shl i32 %929, 2
  %add1052 = add nsw i32 %shl1051, 80
  %930 = load i32, i32* %cand_y, align 4
  %shl1053 = shl i32 %930, 2
  %add1054 = add nsw i32 %shl1053, 80
  %call1055 = call i32 %923(i16* %924, i32 %925, i32 %926, i32 %sub1050, i32 %add1052, i32 %add1054)
  %931 = load i32, i32* %mcost, align 4
  %add1056 = add nsw i32 %931, %call1055
  store i32 %add1056, i32* %mcost, align 4
  %932 = load i32, i32* %cand_x, align 4
  %933 = load i32, i32* %center_x, align 4
  %sub1057 = sub nsw i32 %932, %933
  %934 = load i32, i32* %search_range.addr, align 4
  %add1058 = add nsw i32 %sub1057, %934
  %idxprom1059 = sext i32 %add1058 to i64
  %935 = load i32, i32* %cand_y, align 4
  %936 = load i32, i32* %center_y, align 4
  %sub1060 = sub nsw i32 %935, %936
  %937 = load i32, i32* %search_range.addr, align 4
  %add1061 = add nsw i32 %sub1060, %937
  %idxprom1062 = sext i32 %add1061 to i64
  %938 = load i8**, i8*** @McostState, align 8
  %arrayidx1063 = getelementptr inbounds i8*, i8** %938, i64 %idxprom1062
  %939 = load i8*, i8** %arrayidx1063, align 8
  %arrayidx1064 = getelementptr inbounds i8, i8* %939, i64 %idxprom1059
  store i8 1, i8* %arrayidx1064, align 1
  %940 = load i32, i32* %mcost, align 4
  %941 = load i32, i32* %min_mcost.addr, align 4
  %cmp1065 = icmp slt i32 %940, %941
  br i1 %cmp1065, label %if.then.1067, label %if.end.1068

if.then.1067:                                     ; preds = %if.then.1047
  %942 = load i32, i32* %cand_x, align 4
  store i32 %942, i32* %best_x, align 4
  %943 = load i32, i32* %cand_y, align 4
  store i32 %943, i32* %best_y, align 4
  %944 = load i32, i32* %mcost, align 4
  store i32 %944, i32* %min_mcost.addr, align 4
  br label %if.end.1068

if.end.1068:                                      ; preds = %if.then.1067, %if.then.1047
  br label %if.end.1069

if.end.1069:                                      ; preds = %if.end.1068, %if.then.1033
  br label %if.end.1070

if.end.1070:                                      ; preds = %if.end.1069, %if.then.1023
  br label %if.end.1071

if.end.1071:                                      ; preds = %if.end.1070, %land.lhs.true.1018, %for.body.997
  br label %for.inc.1072

for.inc.1072:                                     ; preds = %if.end.1071
  %945 = load i32, i32* %m, align 4
  %inc1073 = add nsw i32 %945, 1
  store i32 %inc1073, i32* %m, align 4
  br label %for.cond.994

for.end.1074:                                     ; preds = %for.cond.994
  %946 = load i32, i32* %min_mcost.addr, align 4
  %947 = load i32, i32* %ET_Thred, align 4
  %cmp1075 = icmp slt i32 %946, %947
  br i1 %cmp1075, label %if.then.1077, label %if.end.1078

if.then.1077:                                     ; preds = %for.end.1074
  br label %terminate_step

if.end.1078:                                      ; preds = %for.end.1074
  br label %for.inc.1079

for.inc.1079:                                     ; preds = %if.end.1078
  %948 = load i32, i32* %i, align 4
  %inc1080 = add nsw i32 %948, 1
  store i32 %inc1080, i32* %i, align 4
  br label %for.cond.989

for.end.1081:                                     ; preds = %for.cond.989
  br label %fourth_1_step

fourth_1_step:                                    ; preds = %for.end.1081, %if.then.986, %if.then.896, %if.then.629, %if.then.624
  store i32 0, i32* %i, align 4
  br label %for.cond.1082

for.cond.1082:                                    ; preds = %for.inc.1164, %fourth_1_step
  %949 = load i32, i32* %i, align 4
  %950 = load i32, i32* %search_range.addr, align 4
  %cmp1083 = icmp slt i32 %949, %950
  br i1 %cmp1083, label %for.body.1085, label %for.end.1166

for.body.1085:                                    ; preds = %for.cond.1082
  %951 = load i32, i32* %best_x, align 4
  store i32 %951, i32* %iXMinNow, align 4
  %952 = load i32, i32* %best_y, align 4
  store i32 %952, i32* %iYMinNow, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.1086

for.cond.1086:                                    ; preds = %for.inc.1154, %for.body.1085
  %953 = load i32, i32* %m, align 4
  %cmp1087 = icmp slt i32 %953, 6
  br i1 %cmp1087, label %for.body.1089, label %for.end.1156

for.body.1089:                                    ; preds = %for.cond.1086
  %954 = load i32, i32* %iXMinNow, align 4
  %955 = load i32, i32* %m, align 4
  %idxprom1090 = sext i32 %955 to i64
  %arrayidx1091 = getelementptr inbounds [6 x i32], [6 x i32]* @Hexagon_x, i32 0, i64 %idxprom1090
  %956 = load i32, i32* %arrayidx1091, align 4
  %add1092 = add nsw i32 %954, %956
  store i32 %add1092, i32* %cand_x, align 4
  %957 = load i32, i32* %iYMinNow, align 4
  %958 = load i32, i32* %m, align 4
  %idxprom1093 = sext i32 %958 to i64
  %arrayidx1094 = getelementptr inbounds [6 x i32], [6 x i32]* @Hexagon_y, i32 0, i64 %idxprom1093
  %959 = load i32, i32* %arrayidx1094, align 4
  %add1095 = add nsw i32 %957, %959
  store i32 %add1095, i32* %cand_y, align 4
  %960 = load i32, i32* %cand_x, align 4
  %961 = load i32, i32* %center_x, align 4
  %sub1096 = sub nsw i32 %960, %961
  %call1097 = call i32 @iabs(i32 %sub1096)
  %962 = load i32, i32* %search_range.addr, align 4
  %cmp1098 = icmp sle i32 %call1097, %962
  br i1 %cmp1098, label %land.lhs.true.1100, label %if.end.1153

land.lhs.true.1100:                               ; preds = %for.body.1089
  %963 = load i32, i32* %cand_y, align 4
  %964 = load i32, i32* %center_y, align 4
  %sub1101 = sub nsw i32 %963, %964
  %call1102 = call i32 @iabs(i32 %sub1101)
  %965 = load i32, i32* %search_range.addr, align 4
  %cmp1103 = icmp sle i32 %call1102, %965
  br i1 %cmp1103, label %if.then.1105, label %if.end.1153

if.then.1105:                                     ; preds = %land.lhs.true.1100
  %966 = load i32, i32* %cand_x, align 4
  %967 = load i32, i32* %center_x, align 4
  %sub1106 = sub nsw i32 %966, %967
  %968 = load i32, i32* %search_range.addr, align 4
  %add1107 = add nsw i32 %sub1106, %968
  %idxprom1108 = sext i32 %add1107 to i64
  %969 = load i32, i32* %cand_y, align 4
  %970 = load i32, i32* %center_y, align 4
  %sub1109 = sub nsw i32 %969, %970
  %971 = load i32, i32* %search_range.addr, align 4
  %add1110 = add nsw i32 %sub1109, %971
  %idxprom1111 = sext i32 %add1110 to i64
  %972 = load i8**, i8*** @McostState, align 8
  %arrayidx1112 = getelementptr inbounds i8*, i8** %972, i64 %idxprom1111
  %973 = load i8*, i8** %arrayidx1112, align 8
  %arrayidx1113 = getelementptr inbounds i8, i8* %973, i64 %idxprom1108
  %974 = load i8, i8* %arrayidx1113, align 1
  %tobool1114 = icmp ne i8 %974, 0
  br i1 %tobool1114, label %if.end.1152, label %if.then.1115

if.then.1115:                                     ; preds = %if.then.1105
  %975 = load i32, i32* %lambda_factor.addr, align 4
  %976 = load i32, i32* %cand_x, align 4
  %977 = load i32, i32* %mvshift, align 4
  %shl1116 = shl i32 %976, %977
  %978 = load i32, i32* %pred_x, align 4
  %sub1117 = sub nsw i32 %shl1116, %978
  %idxprom1118 = sext i32 %sub1117 to i64
  %979 = load i32*, i32** @mvbits, align 8
  %arrayidx1119 = getelementptr inbounds i32, i32* %979, i64 %idxprom1118
  %980 = load i32, i32* %arrayidx1119, align 4
  %981 = load i32, i32* %cand_y, align 4
  %982 = load i32, i32* %mvshift, align 4
  %shl1120 = shl i32 %981, %982
  %983 = load i32, i32* %pred_y, align 4
  %sub1121 = sub nsw i32 %shl1120, %983
  %idxprom1122 = sext i32 %sub1121 to i64
  %984 = load i32*, i32** @mvbits, align 8
  %arrayidx1123 = getelementptr inbounds i32, i32* %984, i64 %idxprom1122
  %985 = load i32, i32* %arrayidx1123, align 4
  %add1124 = add nsw i32 %980, %985
  %mul1125 = mul nsw i32 %975, %add1124
  %shr1126 = ashr i32 %mul1125, 16
  store i32 %shr1126, i32* %mcost, align 4
  %986 = load i32, i32* %mcost, align 4
  %987 = load i32, i32* %min_mcost.addr, align 4
  %cmp1127 = icmp slt i32 %986, %987
  br i1 %cmp1127, label %if.then.1129, label %if.end.1151

if.then.1129:                                     ; preds = %if.then.1115
  %988 = load i32, i32* @dist_method, align 4
  %idxprom1130 = sext i32 %988 to i64
  %arrayidx1131 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom1130
  %989 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx1131, align 8
  %990 = load i16*, i16** %orig_pic.addr, align 8
  %991 = load i32, i32* %blocksize_y, align 4
  %992 = load i32, i32* %blocksize_x, align 4
  %993 = load i32, i32* %min_mcost.addr, align 4
  %994 = load i32, i32* %mcost, align 4
  %sub1132 = sub nsw i32 %993, %994
  %995 = load i32, i32* %cand_x, align 4
  %shl1133 = shl i32 %995, 2
  %add1134 = add nsw i32 %shl1133, 80
  %996 = load i32, i32* %cand_y, align 4
  %shl1135 = shl i32 %996, 2
  %add1136 = add nsw i32 %shl1135, 80
  %call1137 = call i32 %989(i16* %990, i32 %991, i32 %992, i32 %sub1132, i32 %add1134, i32 %add1136)
  %997 = load i32, i32* %mcost, align 4
  %add1138 = add nsw i32 %997, %call1137
  store i32 %add1138, i32* %mcost, align 4
  %998 = load i32, i32* %cand_x, align 4
  %999 = load i32, i32* %center_x, align 4
  %sub1139 = sub nsw i32 %998, %999
  %1000 = load i32, i32* %search_range.addr, align 4
  %add1140 = add nsw i32 %sub1139, %1000
  %idxprom1141 = sext i32 %add1140 to i64
  %1001 = load i32, i32* %cand_y, align 4
  %1002 = load i32, i32* %center_y, align 4
  %sub1142 = sub nsw i32 %1001, %1002
  %1003 = load i32, i32* %search_range.addr, align 4
  %add1143 = add nsw i32 %sub1142, %1003
  %idxprom1144 = sext i32 %add1143 to i64
  %1004 = load i8**, i8*** @McostState, align 8
  %arrayidx1145 = getelementptr inbounds i8*, i8** %1004, i64 %idxprom1144
  %1005 = load i8*, i8** %arrayidx1145, align 8
  %arrayidx1146 = getelementptr inbounds i8, i8* %1005, i64 %idxprom1141
  store i8 1, i8* %arrayidx1146, align 1
  %1006 = load i32, i32* %mcost, align 4
  %1007 = load i32, i32* %min_mcost.addr, align 4
  %cmp1147 = icmp slt i32 %1006, %1007
  br i1 %cmp1147, label %if.then.1149, label %if.end.1150

if.then.1149:                                     ; preds = %if.then.1129
  %1008 = load i32, i32* %cand_x, align 4
  store i32 %1008, i32* %best_x, align 4
  %1009 = load i32, i32* %cand_y, align 4
  store i32 %1009, i32* %best_y, align 4
  %1010 = load i32, i32* %mcost, align 4
  store i32 %1010, i32* %min_mcost.addr, align 4
  br label %if.end.1150

if.end.1150:                                      ; preds = %if.then.1149, %if.then.1129
  br label %if.end.1151

if.end.1151:                                      ; preds = %if.end.1150, %if.then.1115
  br label %if.end.1152

if.end.1152:                                      ; preds = %if.end.1151, %if.then.1105
  br label %if.end.1153

if.end.1153:                                      ; preds = %if.end.1152, %land.lhs.true.1100, %for.body.1089
  br label %for.inc.1154

for.inc.1154:                                     ; preds = %if.end.1153
  %1011 = load i32, i32* %m, align 4
  %inc1155 = add nsw i32 %1011, 1
  store i32 %inc1155, i32* %m, align 4
  br label %for.cond.1086

for.end.1156:                                     ; preds = %for.cond.1086
  %1012 = load i32, i32* %best_x, align 4
  %1013 = load i32, i32* %iXMinNow, align 4
  %cmp1157 = icmp eq i32 %1012, %1013
  br i1 %cmp1157, label %land.lhs.true.1159, label %if.end.1163

land.lhs.true.1159:                               ; preds = %for.end.1156
  %1014 = load i32, i32* %best_y, align 4
  %1015 = load i32, i32* %iYMinNow, align 4
  %cmp1160 = icmp eq i32 %1014, %1015
  br i1 %cmp1160, label %if.then.1162, label %if.end.1163

if.then.1162:                                     ; preds = %land.lhs.true.1159
  br label %for.end.1166

if.end.1163:                                      ; preds = %land.lhs.true.1159, %for.end.1156
  br label %for.inc.1164

for.inc.1164:                                     ; preds = %if.end.1163
  %1016 = load i32, i32* %i, align 4
  %inc1165 = add nsw i32 %1016, 1
  store i32 %inc1165, i32* %i, align 4
  br label %for.cond.1082

for.end.1166:                                     ; preds = %if.then.1162, %for.cond.1082
  br label %fourth_2_step

fourth_2_step:                                    ; preds = %for.end.1166, %if.then.978, %if.then.888, %if.then.616
  store i32 0, i32* %i, align 4
  br label %for.cond.1167

for.cond.1167:                                    ; preds = %for.inc.1249, %fourth_2_step
  %1017 = load i32, i32* %i, align 4
  %1018 = load i32, i32* %search_range.addr, align 4
  %cmp1168 = icmp slt i32 %1017, %1018
  br i1 %cmp1168, label %for.body.1170, label %for.end.1251

for.body.1170:                                    ; preds = %for.cond.1167
  %1019 = load i32, i32* %best_x, align 4
  store i32 %1019, i32* %iXMinNow, align 4
  %1020 = load i32, i32* %best_y, align 4
  store i32 %1020, i32* %iYMinNow, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.1171

for.cond.1171:                                    ; preds = %for.inc.1239, %for.body.1170
  %1021 = load i32, i32* %m, align 4
  %cmp1172 = icmp slt i32 %1021, 4
  br i1 %cmp1172, label %for.body.1174, label %for.end.1241

for.body.1174:                                    ; preds = %for.cond.1171
  %1022 = load i32, i32* %iXMinNow, align 4
  %1023 = load i32, i32* %m, align 4
  %idxprom1175 = sext i32 %1023 to i64
  %arrayidx1176 = getelementptr inbounds [4 x i32], [4 x i32]* @Diamond_x, i32 0, i64 %idxprom1175
  %1024 = load i32, i32* %arrayidx1176, align 4
  %add1177 = add nsw i32 %1022, %1024
  store i32 %add1177, i32* %cand_x, align 4
  %1025 = load i32, i32* %iYMinNow, align 4
  %1026 = load i32, i32* %m, align 4
  %idxprom1178 = sext i32 %1026 to i64
  %arrayidx1179 = getelementptr inbounds [4 x i32], [4 x i32]* @Diamond_y, i32 0, i64 %idxprom1178
  %1027 = load i32, i32* %arrayidx1179, align 4
  %add1180 = add nsw i32 %1025, %1027
  store i32 %add1180, i32* %cand_y, align 4
  %1028 = load i32, i32* %cand_x, align 4
  %1029 = load i32, i32* %center_x, align 4
  %sub1181 = sub nsw i32 %1028, %1029
  %call1182 = call i32 @iabs(i32 %sub1181)
  %1030 = load i32, i32* %search_range.addr, align 4
  %cmp1183 = icmp sle i32 %call1182, %1030
  br i1 %cmp1183, label %land.lhs.true.1185, label %if.end.1238

land.lhs.true.1185:                               ; preds = %for.body.1174
  %1031 = load i32, i32* %cand_y, align 4
  %1032 = load i32, i32* %center_y, align 4
  %sub1186 = sub nsw i32 %1031, %1032
  %call1187 = call i32 @iabs(i32 %sub1186)
  %1033 = load i32, i32* %search_range.addr, align 4
  %cmp1188 = icmp sle i32 %call1187, %1033
  br i1 %cmp1188, label %if.then.1190, label %if.end.1238

if.then.1190:                                     ; preds = %land.lhs.true.1185
  %1034 = load i32, i32* %cand_x, align 4
  %1035 = load i32, i32* %center_x, align 4
  %sub1191 = sub nsw i32 %1034, %1035
  %1036 = load i32, i32* %search_range.addr, align 4
  %add1192 = add nsw i32 %sub1191, %1036
  %idxprom1193 = sext i32 %add1192 to i64
  %1037 = load i32, i32* %cand_y, align 4
  %1038 = load i32, i32* %center_y, align 4
  %sub1194 = sub nsw i32 %1037, %1038
  %1039 = load i32, i32* %search_range.addr, align 4
  %add1195 = add nsw i32 %sub1194, %1039
  %idxprom1196 = sext i32 %add1195 to i64
  %1040 = load i8**, i8*** @McostState, align 8
  %arrayidx1197 = getelementptr inbounds i8*, i8** %1040, i64 %idxprom1196
  %1041 = load i8*, i8** %arrayidx1197, align 8
  %arrayidx1198 = getelementptr inbounds i8, i8* %1041, i64 %idxprom1193
  %1042 = load i8, i8* %arrayidx1198, align 1
  %tobool1199 = icmp ne i8 %1042, 0
  br i1 %tobool1199, label %if.end.1237, label %if.then.1200

if.then.1200:                                     ; preds = %if.then.1190
  %1043 = load i32, i32* %lambda_factor.addr, align 4
  %1044 = load i32, i32* %cand_x, align 4
  %1045 = load i32, i32* %mvshift, align 4
  %shl1201 = shl i32 %1044, %1045
  %1046 = load i32, i32* %pred_x, align 4
  %sub1202 = sub nsw i32 %shl1201, %1046
  %idxprom1203 = sext i32 %sub1202 to i64
  %1047 = load i32*, i32** @mvbits, align 8
  %arrayidx1204 = getelementptr inbounds i32, i32* %1047, i64 %idxprom1203
  %1048 = load i32, i32* %arrayidx1204, align 4
  %1049 = load i32, i32* %cand_y, align 4
  %1050 = load i32, i32* %mvshift, align 4
  %shl1205 = shl i32 %1049, %1050
  %1051 = load i32, i32* %pred_y, align 4
  %sub1206 = sub nsw i32 %shl1205, %1051
  %idxprom1207 = sext i32 %sub1206 to i64
  %1052 = load i32*, i32** @mvbits, align 8
  %arrayidx1208 = getelementptr inbounds i32, i32* %1052, i64 %idxprom1207
  %1053 = load i32, i32* %arrayidx1208, align 4
  %add1209 = add nsw i32 %1048, %1053
  %mul1210 = mul nsw i32 %1043, %add1209
  %shr1211 = ashr i32 %mul1210, 16
  store i32 %shr1211, i32* %mcost, align 4
  %1054 = load i32, i32* %mcost, align 4
  %1055 = load i32, i32* %min_mcost.addr, align 4
  %cmp1212 = icmp slt i32 %1054, %1055
  br i1 %cmp1212, label %if.then.1214, label %if.end.1236

if.then.1214:                                     ; preds = %if.then.1200
  %1056 = load i32, i32* @dist_method, align 4
  %idxprom1215 = sext i32 %1056 to i64
  %arrayidx1216 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom1215
  %1057 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx1216, align 8
  %1058 = load i16*, i16** %orig_pic.addr, align 8
  %1059 = load i32, i32* %blocksize_y, align 4
  %1060 = load i32, i32* %blocksize_x, align 4
  %1061 = load i32, i32* %min_mcost.addr, align 4
  %1062 = load i32, i32* %mcost, align 4
  %sub1217 = sub nsw i32 %1061, %1062
  %1063 = load i32, i32* %cand_x, align 4
  %shl1218 = shl i32 %1063, 2
  %add1219 = add nsw i32 %shl1218, 80
  %1064 = load i32, i32* %cand_y, align 4
  %shl1220 = shl i32 %1064, 2
  %add1221 = add nsw i32 %shl1220, 80
  %call1222 = call i32 %1057(i16* %1058, i32 %1059, i32 %1060, i32 %sub1217, i32 %add1219, i32 %add1221)
  %1065 = load i32, i32* %mcost, align 4
  %add1223 = add nsw i32 %1065, %call1222
  store i32 %add1223, i32* %mcost, align 4
  %1066 = load i32, i32* %cand_x, align 4
  %1067 = load i32, i32* %center_x, align 4
  %sub1224 = sub nsw i32 %1066, %1067
  %1068 = load i32, i32* %search_range.addr, align 4
  %add1225 = add nsw i32 %sub1224, %1068
  %idxprom1226 = sext i32 %add1225 to i64
  %1069 = load i32, i32* %cand_y, align 4
  %1070 = load i32, i32* %center_y, align 4
  %sub1227 = sub nsw i32 %1069, %1070
  %1071 = load i32, i32* %search_range.addr, align 4
  %add1228 = add nsw i32 %sub1227, %1071
  %idxprom1229 = sext i32 %add1228 to i64
  %1072 = load i8**, i8*** @McostState, align 8
  %arrayidx1230 = getelementptr inbounds i8*, i8** %1072, i64 %idxprom1229
  %1073 = load i8*, i8** %arrayidx1230, align 8
  %arrayidx1231 = getelementptr inbounds i8, i8* %1073, i64 %idxprom1226
  store i8 1, i8* %arrayidx1231, align 1
  %1074 = load i32, i32* %mcost, align 4
  %1075 = load i32, i32* %min_mcost.addr, align 4
  %cmp1232 = icmp slt i32 %1074, %1075
  br i1 %cmp1232, label %if.then.1234, label %if.end.1235

if.then.1234:                                     ; preds = %if.then.1214
  %1076 = load i32, i32* %cand_x, align 4
  store i32 %1076, i32* %best_x, align 4
  %1077 = load i32, i32* %cand_y, align 4
  store i32 %1077, i32* %best_y, align 4
  %1078 = load i32, i32* %mcost, align 4
  store i32 %1078, i32* %min_mcost.addr, align 4
  br label %if.end.1235

if.end.1235:                                      ; preds = %if.then.1234, %if.then.1214
  br label %if.end.1236

if.end.1236:                                      ; preds = %if.end.1235, %if.then.1200
  br label %if.end.1237

if.end.1237:                                      ; preds = %if.end.1236, %if.then.1190
  br label %if.end.1238

if.end.1238:                                      ; preds = %if.end.1237, %land.lhs.true.1185, %for.body.1174
  br label %for.inc.1239

for.inc.1239:                                     ; preds = %if.end.1238
  %1079 = load i32, i32* %m, align 4
  %inc1240 = add nsw i32 %1079, 1
  store i32 %inc1240, i32* %m, align 4
  br label %for.cond.1171

for.end.1241:                                     ; preds = %for.cond.1171
  %1080 = load i32, i32* %best_x, align 4
  %1081 = load i32, i32* %iXMinNow, align 4
  %cmp1242 = icmp eq i32 %1080, %1081
  br i1 %cmp1242, label %land.lhs.true.1244, label %if.end.1248

land.lhs.true.1244:                               ; preds = %for.end.1241
  %1082 = load i32, i32* %best_y, align 4
  %1083 = load i32, i32* %iYMinNow, align 4
  %cmp1245 = icmp eq i32 %1082, %1083
  br i1 %cmp1245, label %if.then.1247, label %if.end.1248

if.then.1247:                                     ; preds = %land.lhs.true.1244
  br label %for.end.1251

if.end.1248:                                      ; preds = %land.lhs.true.1244, %for.end.1241
  br label %for.inc.1249

for.inc.1249:                                     ; preds = %if.end.1248
  %1084 = load i32, i32* %i, align 4
  %inc1250 = add nsw i32 %1084, 1
  store i32 %inc1250, i32* %i, align 4
  br label %for.cond.1167

for.end.1251:                                     ; preds = %if.then.1247, %for.cond.1167
  br label %terminate_step

terminate_step:                                   ; preds = %for.end.1251, %if.then.1077, %if.then.380, %if.then.376
  store i32 0, i32* %i, align 4
  br label %for.cond.1252

for.cond.1252:                                    ; preds = %for.inc.1317, %terminate_step
  %1085 = load i32, i32* %i, align 4
  %1086 = load i32, i32* %blocksize_x, align 4
  %shr1253 = ashr i32 %1086, 2
  %cmp1254 = icmp slt i32 %1085, %shr1253
  br i1 %cmp1254, label %for.body.1256, label %for.end.1319

for.body.1256:                                    ; preds = %for.cond.1252
  store i32 0, i32* %j, align 4
  br label %for.cond.1257

for.cond.1257:                                    ; preds = %for.inc.1314, %for.body.1256
  %1087 = load i32, i32* %j, align 4
  %1088 = load i32, i32* %blocksize_y, align 4
  %shr1258 = ashr i32 %1088, 2
  %cmp1259 = icmp slt i32 %1087, %shr1258
  br i1 %cmp1259, label %for.body.1261, label %for.end.1316

for.body.1261:                                    ; preds = %for.cond.1257
  %1089 = load i32, i32* %list.addr, align 4
  %cmp1262 = icmp eq i32 %1089, 0
  br i1 %cmp1262, label %if.then.1264, label %if.else.1296

if.then.1264:                                     ; preds = %for.body.1261
  %1090 = load i32, i32* %min_mcost.addr, align 4
  %1091 = load i16, i16* %block_x, align 2
  %conv1265 = sext i16 %1091 to i32
  %1092 = load i32, i32* %i, align 4
  %add1266 = add nsw i32 %conv1265, %1092
  %idxprom1267 = sext i32 %add1266 to i64
  %1093 = load i16, i16* %block_y, align 2
  %conv1268 = sext i16 %1093 to i32
  %1094 = load i32, i32* %j, align 4
  %add1269 = add nsw i32 %conv1268, %1094
  %idxprom1270 = sext i32 %add1269 to i64
  %1095 = load i32, i32* %blocktype.addr, align 4
  %idxprom1271 = sext i32 %1095 to i64
  %1096 = load i16, i16* %ref.addr, align 2
  %idxprom1272 = sext i16 %1096 to i64
  %1097 = load i32****, i32***** @fastme_ref_cost, align 8
  %arrayidx1273 = getelementptr inbounds i32***, i32**** %1097, i64 %idxprom1272
  %1098 = load i32***, i32**** %arrayidx1273, align 8
  %arrayidx1274 = getelementptr inbounds i32**, i32*** %1098, i64 %idxprom1271
  %1099 = load i32**, i32*** %arrayidx1274, align 8
  %arrayidx1275 = getelementptr inbounds i32*, i32** %1099, i64 %idxprom1270
  %1100 = load i32*, i32** %arrayidx1275, align 8
  %arrayidx1276 = getelementptr inbounds i32, i32* %1100, i64 %idxprom1267
  store i32 %1090, i32* %arrayidx1276, align 4
  %1101 = load i16, i16* %ref.addr, align 2
  %conv1277 = sext i16 %1101 to i32
  %cmp1278 = icmp eq i32 %conv1277, 0
  br i1 %cmp1278, label %if.then.1280, label %if.end.1295

if.then.1280:                                     ; preds = %if.then.1264
  %1102 = load i32, i32* %min_mcost.addr, align 4
  %1103 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1103, i32 0, i32 39
  %1104 = load i32, i32* %pix_x, align 4
  %shr1281 = ashr i32 %1104, 2
  %1105 = load i16, i16* %block_x, align 2
  %conv1282 = sext i16 %1105 to i32
  %add1283 = add nsw i32 %shr1281, %conv1282
  %1106 = load i32, i32* %i, align 4
  %add1284 = add nsw i32 %add1283, %1106
  %idxprom1285 = sext i32 %add1284 to i64
  %1107 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1107, i32 0, i32 40
  %1108 = load i32, i32* %pix_y, align 4
  %shr1286 = ashr i32 %1108, 2
  %1109 = load i16, i16* %block_y, align 2
  %conv1287 = sext i16 %1109 to i32
  %add1288 = add nsw i32 %shr1286, %conv1287
  %1110 = load i32, i32* %j, align 4
  %add1289 = add nsw i32 %add1288, %1110
  %idxprom1290 = sext i32 %add1289 to i64
  %1111 = load i32, i32* %blocktype.addr, align 4
  %idxprom1291 = sext i32 %1111 to i64
  %1112 = load i32***, i32**** @fastme_l0_cost, align 8
  %arrayidx1292 = getelementptr inbounds i32**, i32*** %1112, i64 %idxprom1291
  %1113 = load i32**, i32*** %arrayidx1292, align 8
  %arrayidx1293 = getelementptr inbounds i32*, i32** %1113, i64 %idxprom1290
  %1114 = load i32*, i32** %arrayidx1293, align 8
  %arrayidx1294 = getelementptr inbounds i32, i32* %1114, i64 %idxprom1285
  store i32 %1102, i32* %arrayidx1294, align 4
  br label %if.end.1295

if.end.1295:                                      ; preds = %if.then.1280, %if.then.1264
  br label %if.end.1313

if.else.1296:                                     ; preds = %for.body.1261
  %1115 = load i32, i32* %min_mcost.addr, align 4
  %1116 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x1297 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1116, i32 0, i32 39
  %1117 = load i32, i32* %pix_x1297, align 4
  %shr1298 = ashr i32 %1117, 2
  %1118 = load i16, i16* %block_x, align 2
  %conv1299 = sext i16 %1118 to i32
  %add1300 = add nsw i32 %shr1298, %conv1299
  %1119 = load i32, i32* %i, align 4
  %add1301 = add nsw i32 %add1300, %1119
  %idxprom1302 = sext i32 %add1301 to i64
  %1120 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y1303 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1120, i32 0, i32 40
  %1121 = load i32, i32* %pix_y1303, align 4
  %shr1304 = ashr i32 %1121, 2
  %1122 = load i16, i16* %block_y, align 2
  %conv1305 = sext i16 %1122 to i32
  %add1306 = add nsw i32 %shr1304, %conv1305
  %1123 = load i32, i32* %j, align 4
  %add1307 = add nsw i32 %add1306, %1123
  %idxprom1308 = sext i32 %add1307 to i64
  %1124 = load i32, i32* %blocktype.addr, align 4
  %idxprom1309 = sext i32 %1124 to i64
  %1125 = load i32***, i32**** @fastme_l1_cost, align 8
  %arrayidx1310 = getelementptr inbounds i32**, i32*** %1125, i64 %idxprom1309
  %1126 = load i32**, i32*** %arrayidx1310, align 8
  %arrayidx1311 = getelementptr inbounds i32*, i32** %1126, i64 %idxprom1308
  %1127 = load i32*, i32** %arrayidx1311, align 8
  %arrayidx1312 = getelementptr inbounds i32, i32* %1127, i64 %idxprom1302
  store i32 %1115, i32* %arrayidx1312, align 4
  br label %if.end.1313

if.end.1313:                                      ; preds = %if.else.1296, %if.end.1295
  br label %for.inc.1314

for.inc.1314:                                     ; preds = %if.end.1313
  %1128 = load i32, i32* %j, align 4
  %inc1315 = add nsw i32 %1128, 1
  store i32 %inc1315, i32* %j, align 4
  br label %for.cond.1257

for.end.1316:                                     ; preds = %for.cond.1257
  br label %for.inc.1317

for.inc.1317:                                     ; preds = %for.end.1316
  %1129 = load i32, i32* %i, align 4
  %inc1318 = add nsw i32 %1129, 1
  store i32 %inc1318, i32* %i, align 4
  br label %for.cond.1252

for.end.1319:                                     ; preds = %for.cond.1252
  %1130 = load i16, i16* %ref.addr, align 2
  %conv1320 = sext i16 %1130 to i32
  %cmp1321 = icmp eq i32 %conv1320, 0
  br i1 %cmp1321, label %if.then.1328, label %lor.lhs.false.1323

lor.lhs.false.1323:                               ; preds = %for.end.1319
  %1131 = load i16, i16* %pic_pix_x2, align 2
  %idxprom1324 = sext i16 %1131 to i64
  %1132 = load i32*, i32** %SAD_prediction, align 8
  %arrayidx1325 = getelementptr inbounds i32, i32* %1132, i64 %idxprom1324
  %1133 = load i32, i32* %arrayidx1325, align 4
  %1134 = load i32, i32* %min_mcost.addr, align 4
  %cmp1326 = icmp sgt i32 %1133, %1134
  br i1 %cmp1326, label %if.then.1328, label %if.end.1331

if.then.1328:                                     ; preds = %lor.lhs.false.1323, %for.end.1319
  %1135 = load i32, i32* %min_mcost.addr, align 4
  %1136 = load i16, i16* %pic_pix_x2, align 2
  %idxprom1329 = sext i16 %1136 to i64
  %1137 = load i32*, i32** %SAD_prediction, align 8
  %arrayidx1330 = getelementptr inbounds i32, i32* %1137, i64 %idxprom1329
  store i32 %1135, i32* %arrayidx1330, align 4
  br label %if.end.1331

if.end.1331:                                      ; preds = %if.then.1328, %lor.lhs.false.1323
  %1138 = load i32, i32* %best_x, align 4
  %1139 = load i32, i32* %pic_pix_x.addr, align 4
  %sub1332 = sub nsw i32 %1138, %1139
  %conv1333 = trunc i32 %sub1332 to i16
  %1140 = load i16*, i16** %mv_x.addr, align 8
  store i16 %conv1333, i16* %1140, align 2
  %1141 = load i32, i32* %best_y, align 4
  %1142 = load i32, i32* %pic_pix_y.addr, align 4
  %sub1334 = sub nsw i32 %1141, %1142
  %conv1335 = trunc i32 %sub1334 to i16
  %1143 = load i16*, i16** %mv_y.addr, align 8
  store i16 %conv1335, i16* %1143, align 2
  %1144 = load i32, i32* %min_mcost.addr, align 4
  ret i32 %1144
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iabs(i32 %x) #4 {
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
define void @UMHEX_setup(i16 signext %ref, i32 %list, i32 %block_y, i32 %block_x, i32 %blocktype, i16****** %all_mv) #0 {
entry:
  %ref.addr = alloca i16, align 2
  %list.addr = alloca i32, align 4
  %block_y.addr = alloca i32, align 4
  %block_x.addr = alloca i32, align 4
  %blocktype.addr = alloca i32, align 4
  %all_mv.addr = alloca i16******, align 8
  %N_Bframe = alloca i32, align 4
  %n_Bframe = alloca i32, align 4
  %temp_blocktype = alloca i32, align 4
  %indication_blocktype = alloca [8 x i32], align 16
  store i16 %ref, i16* %ref.addr, align 2
  store i32 %list, i32* %list.addr, align 4
  store i32 %block_y, i32* %block_y.addr, align 4
  store i32 %block_x, i32* %block_x.addr, align 4
  store i32 %blocktype, i32* %blocktype.addr, align 4
  store i16****** %all_mv, i16******* %all_mv.addr, align 8
  store i32 0, i32* %N_Bframe, align 4
  store i32 0, i32* %n_Bframe, align 4
  store i32 0, i32* %temp_blocktype, align 4
  %0 = bitcast [8 x i32]* %indication_blocktype to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([8 x i32]* @UMHEX_setup.indication_blocktype to i8*), i64 32, i32 16, i1 false)
  %1 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1, i32 0, i32 40
  %2 = load i32, i32* %successive_Bframe, align 4
  store i32 %2, i32* %N_Bframe, align 4
  %3 = load i32, i32* %N_Bframe, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %5 = load i32, i32* %N_Bframe, align 4
  %add = add nsw i32 %5, 1
  %rem = srem i32 %4, %add
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %rem, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %n_Bframe, align 4
  %6 = load i32, i32* %blocktype.addr, align 4
  %cmp = icmp sgt i32 %6, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %7 = load i32, i32* %blocktype.addr, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %indication_blocktype, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  store i32 %8, i32* %temp_blocktype, align 4
  %9 = load i32, i32* %temp_blocktype, align 4
  %idxprom1 = sext i32 %9 to i64
  %10 = load i16, i16* %ref.addr, align 2
  %idxprom2 = sext i16 %10 to i64
  %11 = load i32, i32* %list.addr, align 4
  %idxprom3 = sext i32 %11 to i64
  %12 = load i32, i32* %block_x.addr, align 4
  %idxprom4 = sext i32 %12 to i64
  %13 = load i32, i32* %block_y.addr, align 4
  %idxprom5 = sext i32 %13 to i64
  %14 = load i16******, i16******* %all_mv.addr, align 8
  %arrayidx6 = getelementptr inbounds i16*****, i16****** %14, i64 %idxprom5
  %15 = load i16*****, i16****** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i16****, i16***** %15, i64 %idxprom4
  %16 = load i16****, i16***** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i16***, i16**** %16, i64 %idxprom3
  %17 = load i16***, i16**** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i16**, i16*** %17, i64 %idxprom2
  %18 = load i16**, i16*** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i16*, i16** %18, i64 %idxprom1
  %19 = load i16*, i16** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i16, i16* %19, i64 0
  %20 = load i16, i16* %arrayidx11, align 2
  %conv = sext i16 %20 to i32
  store i32 %conv, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_uplayer, i32 0, i64 0), align 4
  %21 = load i32, i32* %temp_blocktype, align 4
  %idxprom12 = sext i32 %21 to i64
  %22 = load i16, i16* %ref.addr, align 2
  %idxprom13 = sext i16 %22 to i64
  %23 = load i32, i32* %list.addr, align 4
  %idxprom14 = sext i32 %23 to i64
  %24 = load i32, i32* %block_x.addr, align 4
  %idxprom15 = sext i32 %24 to i64
  %25 = load i32, i32* %block_y.addr, align 4
  %idxprom16 = sext i32 %25 to i64
  %26 = load i16******, i16******* %all_mv.addr, align 8
  %arrayidx17 = getelementptr inbounds i16*****, i16****** %26, i64 %idxprom16
  %27 = load i16*****, i16****** %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds i16****, i16***** %27, i64 %idxprom15
  %28 = load i16****, i16***** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds i16***, i16**** %28, i64 %idxprom14
  %29 = load i16***, i16**** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds i16**, i16*** %29, i64 %idxprom13
  %30 = load i16**, i16*** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i16*, i16** %30, i64 %idxprom12
  %31 = load i16*, i16** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %31, i64 1
  %32 = load i16, i16* %arrayidx22, align 2
  %conv23 = sext i16 %32 to i32
  store i32 %conv23, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_uplayer, i32 0, i64 1), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  store i32 0, i32* @pred_MV_ref_flag, align 4
  %33 = load i32, i32* %list.addr, align 4
  %cmp24 = icmp eq i32 %33, 0
  br i1 %cmp24, label %if.then.26, label %if.end.213

if.then.26:                                       ; preds = %if.end
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_picture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 110
  %35 = load i32, i32* %field_picture, align 4
  %tobool27 = icmp ne i32 %35, 0
  br i1 %tobool27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %if.then.26
  %36 = load i16, i16* %ref.addr, align 2
  %conv29 = sext i16 %36 to i32
  %cmp30 = icmp sgt i32 %conv29, 1
  br i1 %cmp30, label %if.then.32, label %if.end.75

if.then.32:                                       ; preds = %if.then.28
  %37 = load i32, i32* %blocktype.addr, align 4
  %idxprom33 = sext i32 %37 to i64
  %38 = load i16, i16* %ref.addr, align 2
  %conv34 = sext i16 %38 to i32
  %sub = sub nsw i32 %conv34, 2
  %idxprom35 = sext i32 %sub to i64
  %39 = load i32, i32* %block_x.addr, align 4
  %idxprom36 = sext i32 %39 to i64
  %40 = load i32, i32* %block_y.addr, align 4
  %idxprom37 = sext i32 %40 to i64
  %41 = load i16******, i16******* %all_mv.addr, align 8
  %arrayidx38 = getelementptr inbounds i16*****, i16****** %41, i64 %idxprom37
  %42 = load i16*****, i16****** %arrayidx38, align 8
  %arrayidx39 = getelementptr inbounds i16****, i16***** %42, i64 %idxprom36
  %43 = load i16****, i16***** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds i16***, i16**** %43, i64 0
  %44 = load i16***, i16**** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i16**, i16*** %44, i64 %idxprom35
  %45 = load i16**, i16*** %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds i16*, i16** %45, i64 %idxprom33
  %46 = load i16*, i16** %arrayidx42, align 8
  %arrayidx43 = getelementptr inbounds i16, i16* %46, i64 0
  %47 = load i16, i16* %arrayidx43, align 2
  %conv44 = sext i16 %47 to i32
  store i32 %conv44, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_ref, i32 0, i64 0), align 4
  %48 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_ref, i32 0, i64 0), align 4
  %49 = load i16, i16* %ref.addr, align 2
  %conv45 = sext i16 %49 to i32
  %shr = ashr i32 %conv45, 1
  %add46 = add nsw i32 %shr, 1
  %mul = mul nsw i32 %48, %add46
  %conv47 = sitofp i32 %mul to float
  %50 = load i16, i16* %ref.addr, align 2
  %conv48 = sext i16 %50 to i32
  %shr49 = ashr i32 %conv48, 1
  %conv50 = sitofp i32 %shr49 to float
  %div = fdiv float %conv47, %conv50
  %conv51 = fptosi float %div to i32
  store i32 %conv51, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_ref, i32 0, i64 0), align 4
  %51 = load i32, i32* %blocktype.addr, align 4
  %idxprom52 = sext i32 %51 to i64
  %52 = load i16, i16* %ref.addr, align 2
  %conv53 = sext i16 %52 to i32
  %sub54 = sub nsw i32 %conv53, 2
  %idxprom55 = sext i32 %sub54 to i64
  %53 = load i32, i32* %block_x.addr, align 4
  %idxprom56 = sext i32 %53 to i64
  %54 = load i32, i32* %block_y.addr, align 4
  %idxprom57 = sext i32 %54 to i64
  %55 = load i16******, i16******* %all_mv.addr, align 8
  %arrayidx58 = getelementptr inbounds i16*****, i16****** %55, i64 %idxprom57
  %56 = load i16*****, i16****** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds i16****, i16***** %56, i64 %idxprom56
  %57 = load i16****, i16***** %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds i16***, i16**** %57, i64 0
  %58 = load i16***, i16**** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i16**, i16*** %58, i64 %idxprom55
  %59 = load i16**, i16*** %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds i16*, i16** %59, i64 %idxprom52
  %60 = load i16*, i16** %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds i16, i16* %60, i64 1
  %61 = load i16, i16* %arrayidx63, align 2
  %conv64 = sext i16 %61 to i32
  store i32 %conv64, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_ref, i32 0, i64 1), align 4
  %62 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_ref, i32 0, i64 1), align 4
  %63 = load i16, i16* %ref.addr, align 2
  %conv65 = sext i16 %63 to i32
  %shr66 = ashr i32 %conv65, 1
  %add67 = add nsw i32 %shr66, 1
  %mul68 = mul nsw i32 %62, %add67
  %conv69 = sitofp i32 %mul68 to float
  %64 = load i16, i16* %ref.addr, align 2
  %conv70 = sext i16 %64 to i32
  %shr71 = ashr i32 %conv70, 1
  %conv72 = sitofp i32 %shr71 to float
  %div73 = fdiv float %conv69, %conv72
  %conv74 = fptosi float %div73 to i32
  store i32 %conv74, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_ref, i32 0, i64 1), align 4
  store i32 1, i32* @pred_MV_ref_flag, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.32, %if.then.28
  %65 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %65, i32 0, i32 5
  %66 = load i32, i32* %type, align 4
  %cmp76 = icmp eq i32 %66, 1
  br i1 %cmp76, label %land.lhs.true, label %if.end.121

land.lhs.true:                                    ; preds = %if.end.75
  %67 = load i16, i16* %ref.addr, align 2
  %conv78 = sext i16 %67 to i32
  %cmp79 = icmp eq i32 %conv78, 0
  br i1 %cmp79, label %if.then.84, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %68 = load i16, i16* %ref.addr, align 2
  %conv81 = sext i16 %68 to i32
  %cmp82 = icmp eq i32 %conv81, 1
  br i1 %cmp82, label %if.then.84, label %if.end.121

if.then.84:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %69 = load i32, i32* %blocktype.addr, align 4
  %idxprom85 = sext i32 %69 to i64
  %70 = load i32, i32* %block_x.addr, align 4
  %idxprom86 = sext i32 %70 to i64
  %71 = load i32, i32* %block_y.addr, align 4
  %idxprom87 = sext i32 %71 to i64
  %72 = load i16******, i16******* %all_mv.addr, align 8
  %arrayidx88 = getelementptr inbounds i16*****, i16****** %72, i64 %idxprom87
  %73 = load i16*****, i16****** %arrayidx88, align 8
  %arrayidx89 = getelementptr inbounds i16****, i16***** %73, i64 %idxprom86
  %74 = load i16****, i16***** %arrayidx89, align 8
  %arrayidx90 = getelementptr inbounds i16***, i16**** %74, i64 1
  %75 = load i16***, i16**** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds i16**, i16*** %75, i64 0
  %76 = load i16**, i16*** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds i16*, i16** %76, i64 %idxprom85
  %77 = load i16*, i16** %arrayidx92, align 8
  %arrayidx93 = getelementptr inbounds i16, i16* %77, i64 0
  %78 = load i16, i16* %arrayidx93, align 2
  %conv94 = sext i16 %78 to i32
  %79 = load i32, i32* %n_Bframe, align 4
  %sub95 = sub nsw i32 0, %79
  %mul96 = mul nsw i32 %conv94, %sub95
  %conv97 = sitofp i32 %mul96 to float
  %80 = load i32, i32* %N_Bframe, align 4
  %81 = load i32, i32* %n_Bframe, align 4
  %sub98 = sub nsw i32 %80, %81
  %conv99 = sitofp i32 %sub98 to float
  %add100 = fadd float %conv99, 1.000000e+00
  %div101 = fdiv float %conv97, %add100
  %conv102 = fptosi float %div101 to i32
  store i32 %conv102, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_ref, i32 0, i64 0), align 4
  %82 = load i32, i32* %blocktype.addr, align 4
  %idxprom103 = sext i32 %82 to i64
  %83 = load i32, i32* %block_x.addr, align 4
  %idxprom104 = sext i32 %83 to i64
  %84 = load i32, i32* %block_y.addr, align 4
  %idxprom105 = sext i32 %84 to i64
  %85 = load i16******, i16******* %all_mv.addr, align 8
  %arrayidx106 = getelementptr inbounds i16*****, i16****** %85, i64 %idxprom105
  %86 = load i16*****, i16****** %arrayidx106, align 8
  %arrayidx107 = getelementptr inbounds i16****, i16***** %86, i64 %idxprom104
  %87 = load i16****, i16***** %arrayidx107, align 8
  %arrayidx108 = getelementptr inbounds i16***, i16**** %87, i64 1
  %88 = load i16***, i16**** %arrayidx108, align 8
  %arrayidx109 = getelementptr inbounds i16**, i16*** %88, i64 0
  %89 = load i16**, i16*** %arrayidx109, align 8
  %arrayidx110 = getelementptr inbounds i16*, i16** %89, i64 %idxprom103
  %90 = load i16*, i16** %arrayidx110, align 8
  %arrayidx111 = getelementptr inbounds i16, i16* %90, i64 1
  %91 = load i16, i16* %arrayidx111, align 2
  %conv112 = sext i16 %91 to i32
  %92 = load i32, i32* %n_Bframe, align 4
  %sub113 = sub nsw i32 0, %92
  %mul114 = mul nsw i32 %conv112, %sub113
  %conv115 = sitofp i32 %mul114 to float
  %93 = load i32, i32* %N_Bframe, align 4
  %94 = load i32, i32* %n_Bframe, align 4
  %sub116 = sub nsw i32 %93, %94
  %conv117 = sitofp i32 %sub116 to float
  %add118 = fadd float %conv117, 1.000000e+00
  %div119 = fdiv float %conv115, %add118
  %conv120 = fptosi float %div119 to i32
  store i32 %conv120, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_ref, i32 0, i64 1), align 4
  store i32 1, i32* @pred_MV_ref_flag, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.84, %lor.lhs.false, %if.end.75
  br label %if.end.212

if.else:                                          ; preds = %if.then.26
  %95 = load i16, i16* %ref.addr, align 2
  %conv122 = sext i16 %95 to i32
  %cmp123 = icmp sgt i32 %conv122, 0
  br i1 %cmp123, label %if.then.125, label %if.end.166

if.then.125:                                      ; preds = %if.else
  %96 = load i32, i32* %blocktype.addr, align 4
  %idxprom126 = sext i32 %96 to i64
  %97 = load i16, i16* %ref.addr, align 2
  %conv127 = sext i16 %97 to i32
  %sub128 = sub nsw i32 %conv127, 1
  %idxprom129 = sext i32 %sub128 to i64
  %98 = load i32, i32* %block_x.addr, align 4
  %idxprom130 = sext i32 %98 to i64
  %99 = load i32, i32* %block_y.addr, align 4
  %idxprom131 = sext i32 %99 to i64
  %100 = load i16******, i16******* %all_mv.addr, align 8
  %arrayidx132 = getelementptr inbounds i16*****, i16****** %100, i64 %idxprom131
  %101 = load i16*****, i16****** %arrayidx132, align 8
  %arrayidx133 = getelementptr inbounds i16****, i16***** %101, i64 %idxprom130
  %102 = load i16****, i16***** %arrayidx133, align 8
  %arrayidx134 = getelementptr inbounds i16***, i16**** %102, i64 0
  %103 = load i16***, i16**** %arrayidx134, align 8
  %arrayidx135 = getelementptr inbounds i16**, i16*** %103, i64 %idxprom129
  %104 = load i16**, i16*** %arrayidx135, align 8
  %arrayidx136 = getelementptr inbounds i16*, i16** %104, i64 %idxprom126
  %105 = load i16*, i16** %arrayidx136, align 8
  %arrayidx137 = getelementptr inbounds i16, i16* %105, i64 0
  %106 = load i16, i16* %arrayidx137, align 2
  %conv138 = sext i16 %106 to i32
  store i32 %conv138, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_ref, i32 0, i64 0), align 4
  %107 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_ref, i32 0, i64 0), align 4
  %108 = load i16, i16* %ref.addr, align 2
  %conv139 = sext i16 %108 to i32
  %add140 = add nsw i32 %conv139, 1
  %mul141 = mul nsw i32 %107, %add140
  %conv142 = sitofp i32 %mul141 to float
  %109 = load i16, i16* %ref.addr, align 2
  %conv143 = sitofp i16 %109 to float
  %div144 = fdiv float %conv142, %conv143
  %conv145 = fptosi float %div144 to i32
  store i32 %conv145, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_ref, i32 0, i64 0), align 4
  %110 = load i32, i32* %blocktype.addr, align 4
  %idxprom146 = sext i32 %110 to i64
  %111 = load i16, i16* %ref.addr, align 2
  %conv147 = sext i16 %111 to i32
  %sub148 = sub nsw i32 %conv147, 1
  %idxprom149 = sext i32 %sub148 to i64
  %112 = load i32, i32* %block_x.addr, align 4
  %idxprom150 = sext i32 %112 to i64
  %113 = load i32, i32* %block_y.addr, align 4
  %idxprom151 = sext i32 %113 to i64
  %114 = load i16******, i16******* %all_mv.addr, align 8
  %arrayidx152 = getelementptr inbounds i16*****, i16****** %114, i64 %idxprom151
  %115 = load i16*****, i16****** %arrayidx152, align 8
  %arrayidx153 = getelementptr inbounds i16****, i16***** %115, i64 %idxprom150
  %116 = load i16****, i16***** %arrayidx153, align 8
  %arrayidx154 = getelementptr inbounds i16***, i16**** %116, i64 0
  %117 = load i16***, i16**** %arrayidx154, align 8
  %arrayidx155 = getelementptr inbounds i16**, i16*** %117, i64 %idxprom149
  %118 = load i16**, i16*** %arrayidx155, align 8
  %arrayidx156 = getelementptr inbounds i16*, i16** %118, i64 %idxprom146
  %119 = load i16*, i16** %arrayidx156, align 8
  %arrayidx157 = getelementptr inbounds i16, i16* %119, i64 1
  %120 = load i16, i16* %arrayidx157, align 2
  %conv158 = sext i16 %120 to i32
  store i32 %conv158, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_ref, i32 0, i64 1), align 4
  %121 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_ref, i32 0, i64 1), align 4
  %122 = load i16, i16* %ref.addr, align 2
  %conv159 = sext i16 %122 to i32
  %add160 = add nsw i32 %conv159, 1
  %mul161 = mul nsw i32 %121, %add160
  %conv162 = sitofp i32 %mul161 to float
  %123 = load i16, i16* %ref.addr, align 2
  %conv163 = sitofp i16 %123 to float
  %div164 = fdiv float %conv162, %conv163
  %conv165 = fptosi float %div164 to i32
  store i32 %conv165, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_ref, i32 0, i64 1), align 4
  store i32 1, i32* @pred_MV_ref_flag, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.125, %if.else
  %124 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type167 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %124, i32 0, i32 5
  %125 = load i32, i32* %type167, align 4
  %cmp168 = icmp eq i32 %125, 1
  br i1 %cmp168, label %land.lhs.true.170, label %if.end.211

land.lhs.true.170:                                ; preds = %if.end.166
  %126 = load i16, i16* %ref.addr, align 2
  %conv171 = sext i16 %126 to i32
  %cmp172 = icmp eq i32 %conv171, 0
  br i1 %cmp172, label %if.then.174, label %if.end.211

if.then.174:                                      ; preds = %land.lhs.true.170
  %127 = load i32, i32* %blocktype.addr, align 4
  %idxprom175 = sext i32 %127 to i64
  %128 = load i32, i32* %block_x.addr, align 4
  %idxprom176 = sext i32 %128 to i64
  %129 = load i32, i32* %block_y.addr, align 4
  %idxprom177 = sext i32 %129 to i64
  %130 = load i16******, i16******* %all_mv.addr, align 8
  %arrayidx178 = getelementptr inbounds i16*****, i16****** %130, i64 %idxprom177
  %131 = load i16*****, i16****** %arrayidx178, align 8
  %arrayidx179 = getelementptr inbounds i16****, i16***** %131, i64 %idxprom176
  %132 = load i16****, i16***** %arrayidx179, align 8
  %arrayidx180 = getelementptr inbounds i16***, i16**** %132, i64 1
  %133 = load i16***, i16**** %arrayidx180, align 8
  %arrayidx181 = getelementptr inbounds i16**, i16*** %133, i64 0
  %134 = load i16**, i16*** %arrayidx181, align 8
  %arrayidx182 = getelementptr inbounds i16*, i16** %134, i64 %idxprom175
  %135 = load i16*, i16** %arrayidx182, align 8
  %arrayidx183 = getelementptr inbounds i16, i16* %135, i64 0
  %136 = load i16, i16* %arrayidx183, align 2
  %conv184 = sext i16 %136 to i32
  %137 = load i32, i32* %n_Bframe, align 4
  %sub185 = sub nsw i32 0, %137
  %mul186 = mul nsw i32 %conv184, %sub185
  %conv187 = sitofp i32 %mul186 to float
  %138 = load i32, i32* %N_Bframe, align 4
  %139 = load i32, i32* %n_Bframe, align 4
  %sub188 = sub nsw i32 %138, %139
  %conv189 = sitofp i32 %sub188 to float
  %add190 = fadd float %conv189, 1.000000e+00
  %div191 = fdiv float %conv187, %add190
  %conv192 = fptosi float %div191 to i32
  store i32 %conv192, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_ref, i32 0, i64 0), align 4
  %140 = load i32, i32* %blocktype.addr, align 4
  %idxprom193 = sext i32 %140 to i64
  %141 = load i32, i32* %block_x.addr, align 4
  %idxprom194 = sext i32 %141 to i64
  %142 = load i32, i32* %block_y.addr, align 4
  %idxprom195 = sext i32 %142 to i64
  %143 = load i16******, i16******* %all_mv.addr, align 8
  %arrayidx196 = getelementptr inbounds i16*****, i16****** %143, i64 %idxprom195
  %144 = load i16*****, i16****** %arrayidx196, align 8
  %arrayidx197 = getelementptr inbounds i16****, i16***** %144, i64 %idxprom194
  %145 = load i16****, i16***** %arrayidx197, align 8
  %arrayidx198 = getelementptr inbounds i16***, i16**** %145, i64 1
  %146 = load i16***, i16**** %arrayidx198, align 8
  %arrayidx199 = getelementptr inbounds i16**, i16*** %146, i64 0
  %147 = load i16**, i16*** %arrayidx199, align 8
  %arrayidx200 = getelementptr inbounds i16*, i16** %147, i64 %idxprom193
  %148 = load i16*, i16** %arrayidx200, align 8
  %arrayidx201 = getelementptr inbounds i16, i16* %148, i64 1
  %149 = load i16, i16* %arrayidx201, align 2
  %conv202 = sext i16 %149 to i32
  %150 = load i32, i32* %n_Bframe, align 4
  %sub203 = sub nsw i32 0, %150
  %mul204 = mul nsw i32 %conv202, %sub203
  %conv205 = sitofp i32 %mul204 to float
  %151 = load i32, i32* %N_Bframe, align 4
  %152 = load i32, i32* %n_Bframe, align 4
  %sub206 = sub nsw i32 %151, %152
  %conv207 = sitofp i32 %sub206 to float
  %add208 = fadd float %conv207, 1.000000e+00
  %div209 = fdiv float %conv205, %add208
  %conv210 = fptosi float %div209 to i32
  store i32 %conv210, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_ref, i32 0, i64 1), align 4
  store i32 1, i32* @pred_MV_ref_flag, align 4
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.174, %land.lhs.true.170, %if.end.166
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %if.end.121
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %if.end
  %153 = load i32, i32* %list.addr, align 4
  %cmp214 = icmp eq i32 %153, 0
  br i1 %cmp214, label %land.lhs.true.216, label %if.else.263

land.lhs.true.216:                                ; preds = %if.end.213
  %154 = load i16, i16* %ref.addr, align 2
  %conv217 = sext i16 %154 to i32
  %cmp218 = icmp sgt i32 %conv217, 0
  br i1 %cmp218, label %if.then.220, label %if.else.263

if.then.220:                                      ; preds = %land.lhs.true.216
  %155 = load i32, i32* @flag_intra_SAD, align 4
  %tobool221 = icmp ne i32 %155, 0
  br i1 %tobool221, label %if.then.222, label %if.else.223

if.then.222:                                      ; preds = %if.then.220
  store i32 0, i32* @pred_SAD, align 4
  br label %if.end.262

if.else.223:                                      ; preds = %if.then.220
  %156 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_picture224 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %156, i32 0, i32 110
  %157 = load i32, i32* %field_picture224, align 4
  %tobool225 = icmp ne i32 %157, 0
  br i1 %tobool225, label %if.then.226, label %if.else.250

if.then.226:                                      ; preds = %if.else.223
  %158 = load i16, i16* %ref.addr, align 2
  %conv227 = sext i16 %158 to i32
  %cmp228 = icmp sgt i32 %conv227, 1
  br i1 %cmp228, label %if.then.230, label %if.else.241

if.then.230:                                      ; preds = %if.then.226
  %159 = load i32, i32* %block_x.addr, align 4
  %idxprom231 = sext i32 %159 to i64
  %160 = load i32, i32* %block_y.addr, align 4
  %idxprom232 = sext i32 %160 to i64
  %161 = load i32, i32* %blocktype.addr, align 4
  %idxprom233 = sext i32 %161 to i64
  %162 = load i16, i16* %ref.addr, align 2
  %conv234 = sext i16 %162 to i32
  %sub235 = sub nsw i32 %conv234, 2
  %idxprom236 = sext i32 %sub235 to i64
  %163 = load i32****, i32***** @fastme_ref_cost, align 8
  %arrayidx237 = getelementptr inbounds i32***, i32**** %163, i64 %idxprom236
  %164 = load i32***, i32**** %arrayidx237, align 8
  %arrayidx238 = getelementptr inbounds i32**, i32*** %164, i64 %idxprom233
  %165 = load i32**, i32*** %arrayidx238, align 8
  %arrayidx239 = getelementptr inbounds i32*, i32** %165, i64 %idxprom232
  %166 = load i32*, i32** %arrayidx239, align 8
  %arrayidx240 = getelementptr inbounds i32, i32* %166, i64 %idxprom231
  %167 = load i32, i32* %arrayidx240, align 4
  store i32 %167, i32* @pred_SAD, align 4
  br label %if.end.249

if.else.241:                                      ; preds = %if.then.226
  %168 = load i32, i32* %block_x.addr, align 4
  %idxprom242 = sext i32 %168 to i64
  %169 = load i32, i32* %block_y.addr, align 4
  %idxprom243 = sext i32 %169 to i64
  %170 = load i32, i32* %blocktype.addr, align 4
  %idxprom244 = sext i32 %170 to i64
  %171 = load i32****, i32***** @fastme_ref_cost, align 8
  %arrayidx245 = getelementptr inbounds i32***, i32**** %171, i64 0
  %172 = load i32***, i32**** %arrayidx245, align 8
  %arrayidx246 = getelementptr inbounds i32**, i32*** %172, i64 %idxprom244
  %173 = load i32**, i32*** %arrayidx246, align 8
  %arrayidx247 = getelementptr inbounds i32*, i32** %173, i64 %idxprom243
  %174 = load i32*, i32** %arrayidx247, align 8
  %arrayidx248 = getelementptr inbounds i32, i32* %174, i64 %idxprom242
  %175 = load i32, i32* %arrayidx248, align 4
  store i32 %175, i32* @pred_SAD, align 4
  br label %if.end.249

if.end.249:                                       ; preds = %if.else.241, %if.then.230
  br label %if.end.261

if.else.250:                                      ; preds = %if.else.223
  %176 = load i32, i32* %block_x.addr, align 4
  %idxprom251 = sext i32 %176 to i64
  %177 = load i32, i32* %block_y.addr, align 4
  %idxprom252 = sext i32 %177 to i64
  %178 = load i32, i32* %blocktype.addr, align 4
  %idxprom253 = sext i32 %178 to i64
  %179 = load i16, i16* %ref.addr, align 2
  %conv254 = sext i16 %179 to i32
  %sub255 = sub nsw i32 %conv254, 1
  %idxprom256 = sext i32 %sub255 to i64
  %180 = load i32****, i32***** @fastme_ref_cost, align 8
  %arrayidx257 = getelementptr inbounds i32***, i32**** %180, i64 %idxprom256
  %181 = load i32***, i32**** %arrayidx257, align 8
  %arrayidx258 = getelementptr inbounds i32**, i32*** %181, i64 %idxprom253
  %182 = load i32**, i32*** %arrayidx258, align 8
  %arrayidx259 = getelementptr inbounds i32*, i32** %182, i64 %idxprom252
  %183 = load i32*, i32** %arrayidx259, align 8
  %arrayidx260 = getelementptr inbounds i32, i32* %183, i64 %idxprom251
  %184 = load i32, i32* %arrayidx260, align 4
  store i32 %184, i32* @pred_SAD, align 4
  br label %if.end.261

if.end.261:                                       ; preds = %if.else.250, %if.end.249
  br label %if.end.262

if.end.262:                                       ; preds = %if.end.261, %if.then.222
  br label %if.end.302

if.else.263:                                      ; preds = %land.lhs.true.216, %if.end.213
  %185 = load i32, i32* %blocktype.addr, align 4
  %cmp264 = icmp sgt i32 %185, 1
  br i1 %cmp264, label %if.then.266, label %if.else.300

if.then.266:                                      ; preds = %if.else.263
  %186 = load i32, i32* @flag_intra_SAD, align 4
  %tobool267 = icmp ne i32 %186, 0
  br i1 %tobool267, label %if.then.268, label %if.else.269

if.then.268:                                      ; preds = %if.then.266
  store i32 0, i32* @pred_SAD, align 4
  br label %if.end.299

if.else.269:                                      ; preds = %if.then.266
  %187 = load i32, i32* %list.addr, align 4
  %cmp270 = icmp eq i32 %187, 1
  br i1 %cmp270, label %cond.true.272, label %cond.false.283

cond.true.272:                                    ; preds = %if.else.269
  %188 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %188, i32 0, i32 39
  %189 = load i32, i32* %pix_x, align 4
  %shr273 = ashr i32 %189, 2
  %190 = load i32, i32* %block_x.addr, align 4
  %add274 = add nsw i32 %shr273, %190
  %idxprom275 = sext i32 %add274 to i64
  %191 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %191, i32 0, i32 40
  %192 = load i32, i32* %pix_y, align 4
  %shr276 = ashr i32 %192, 2
  %193 = load i32, i32* %block_y.addr, align 4
  %add277 = add nsw i32 %shr276, %193
  %idxprom278 = sext i32 %add277 to i64
  %194 = load i32, i32* %temp_blocktype, align 4
  %idxprom279 = sext i32 %194 to i64
  %195 = load i32***, i32**** @fastme_l1_cost, align 8
  %arrayidx280 = getelementptr inbounds i32**, i32*** %195, i64 %idxprom279
  %196 = load i32**, i32*** %arrayidx280, align 8
  %arrayidx281 = getelementptr inbounds i32*, i32** %196, i64 %idxprom278
  %197 = load i32*, i32** %arrayidx281, align 8
  %arrayidx282 = getelementptr inbounds i32, i32* %197, i64 %idxprom275
  %198 = load i32, i32* %arrayidx282, align 4
  br label %cond.end.296

cond.false.283:                                   ; preds = %if.else.269
  %199 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x284 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %199, i32 0, i32 39
  %200 = load i32, i32* %pix_x284, align 4
  %shr285 = ashr i32 %200, 2
  %201 = load i32, i32* %block_x.addr, align 4
  %add286 = add nsw i32 %shr285, %201
  %idxprom287 = sext i32 %add286 to i64
  %202 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y288 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %202, i32 0, i32 40
  %203 = load i32, i32* %pix_y288, align 4
  %shr289 = ashr i32 %203, 2
  %204 = load i32, i32* %block_y.addr, align 4
  %add290 = add nsw i32 %shr289, %204
  %idxprom291 = sext i32 %add290 to i64
  %205 = load i32, i32* %temp_blocktype, align 4
  %idxprom292 = sext i32 %205 to i64
  %206 = load i32***, i32**** @fastme_l0_cost, align 8
  %arrayidx293 = getelementptr inbounds i32**, i32*** %206, i64 %idxprom292
  %207 = load i32**, i32*** %arrayidx293, align 8
  %arrayidx294 = getelementptr inbounds i32*, i32** %207, i64 %idxprom291
  %208 = load i32*, i32** %arrayidx294, align 8
  %arrayidx295 = getelementptr inbounds i32, i32* %208, i64 %idxprom287
  %209 = load i32, i32* %arrayidx295, align 4
  br label %cond.end.296

cond.end.296:                                     ; preds = %cond.false.283, %cond.true.272
  %cond297 = phi i32 [ %198, %cond.true.272 ], [ %209, %cond.false.283 ]
  store i32 %cond297, i32* @pred_SAD, align 4
  %210 = load i32, i32* @pred_SAD, align 4
  %div298 = sdiv i32 %210, 2
  store i32 %div298, i32* @pred_SAD, align 4
  br label %if.end.299

if.end.299:                                       ; preds = %cond.end.296, %if.then.268
  br label %if.end.301

if.else.300:                                      ; preds = %if.else.263
  store i32 0, i32* @pred_SAD, align 4
  br label %if.end.301

if.end.301:                                       ; preds = %if.else.300, %if.end.299
  br label %if.end.302

if.end.302:                                       ; preds = %if.end.301, %if.end.262
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i32 @UMHEXSubPelBlockMotionSearch(i16* %orig_pic, i16 signext %ref, i32 %list, i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocktype, i16 signext %pred_mv_x, i16 signext %pred_mv_y, i16* %mv_x, i16* %mv_y, i32 %search_pos2, i32 %search_pos4, i32 %min_mcost, i32 %lambda_factor) #0 {
entry:
  %orig_pic.addr = alloca i16*, align 8
  %ref.addr = alloca i16, align 2
  %list.addr = alloca i32, align 4
  %pic_pix_x.addr = alloca i32, align 4
  %pic_pix_y.addr = alloca i32, align 4
  %blocktype.addr = alloca i32, align 4
  %pred_mv_x.addr = alloca i16, align 2
  %pred_mv_y.addr = alloca i16, align 2
  %mv_x.addr = alloca i16*, align 8
  %mv_y.addr = alloca i16*, align 8
  %search_pos2.addr = alloca i32, align 4
  %search_pos4.addr = alloca i32, align 4
  %min_mcost.addr = alloca i32, align 4
  %lambda_factor.addr = alloca i32, align 4
  %mcost = alloca i32, align 4
  %cand_mv_x = alloca i32, align 4
  %cand_mv_y = alloca i32, align 4
  %list_offset = alloca i32, align 4
  %ref_picture = alloca %struct.storable_picture*, align 8
  %mv_shift = alloca i32, align 4
  %blocksize_x = alloca i32, align 4
  %blocksize_y = alloca i32, align 4
  %pic4_pix_x = alloca i32, align 4
  %pic4_pix_y = alloca i32, align 4
  %max_pos_x4 = alloca i16, align 2
  %max_pos_y4 = alloca i16, align 2
  %search_range_dynamic = alloca i32, align 4
  %iXMinNow = alloca i32, align 4
  %iYMinNow = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %currmv_x = alloca i32, align 4
  %currmv_y = alloca i32, align 4
  %pred_frac_mv_x = alloca i32, align 4
  %pred_frac_mv_y = alloca i32, align 4
  %abort_search = alloca i32, align 4
  %pred_frac_up_mv_x = alloca i32, align 4
  %pred_frac_up_mv_y = alloca i32, align 4
  %apply_weights = alloca i32, align 4
  store i16* %orig_pic, i16** %orig_pic.addr, align 8
  store i16 %ref, i16* %ref.addr, align 2
  store i32 %list, i32* %list.addr, align 4
  store i32 %pic_pix_x, i32* %pic_pix_x.addr, align 4
  store i32 %pic_pix_y, i32* %pic_pix_y.addr, align 4
  store i32 %blocktype, i32* %blocktype.addr, align 4
  store i16 %pred_mv_x, i16* %pred_mv_x.addr, align 2
  store i16 %pred_mv_y, i16* %pred_mv_y.addr, align 2
  store i16* %mv_x, i16** %mv_x.addr, align 8
  store i16* %mv_y, i16** %mv_y.addr, align 8
  store i32 %search_pos2, i32* %search_pos2.addr, align 4
  store i32 %search_pos4, i32* %search_pos4.addr, align 4
  store i32 %min_mcost, i32* %min_mcost.addr, align 4
  store i32 %lambda_factor, i32* %lambda_factor.addr, align 4
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
  %rem = srem i32 %8, 2
  %tobool3 = icmp ne i32 %rem, 0
  %cond = select i1 %tobool3, i32 4, i32 2
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond4 = phi i32 [ %cond, %cond.true ], [ 0, %cond.false ]
  store i32 %cond4, i32* %list_offset, align 4
  %9 = load i16, i16* %ref.addr, align 2
  %idxprom5 = sext i16 %9 to i64
  %10 = load i32, i32* %list.addr, align 4
  %11 = load i32, i32* %list_offset, align 4
  %add = add nsw i32 %10, %11
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom6
  %12 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %12, i64 %idxprom5
  %13 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx8, align 8
  store %struct.storable_picture* %13, %struct.storable_picture** %ref_picture, align 8
  store i32 0, i32* %mv_shift, align 4
  %14 = load i32, i32* %blocktype.addr, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 18
  %arrayidx10 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size, i32 0, i64 %idxprom9
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx10, i32 0, i64 0
  %16 = load i32, i32* %arrayidx11, align 4
  store i32 %16, i32* %blocksize_x, align 4
  %17 = load i32, i32* %blocktype.addr, align 4
  %idxprom12 = sext i32 %17 to i64
  %18 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size13 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %18, i32 0, i32 18
  %arrayidx14 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size13, i32 0, i64 %idxprom12
  %arrayidx15 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx14, i32 0, i64 1
  %19 = load i32, i32* %arrayidx15, align 4
  store i32 %19, i32* %blocksize_y, align 4
  %20 = load i32, i32* %pic_pix_x.addr, align 4
  %add16 = add nsw i32 %20, 20
  %shl = shl i32 %add16, 2
  store i32 %shl, i32* %pic4_pix_x, align 4
  %21 = load i32, i32* %pic_pix_y.addr, align 4
  %add17 = add nsw i32 %21, 20
  %shl18 = shl i32 %add17, 2
  store i32 %shl18, i32* %pic4_pix_y, align 4
  %22 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %22, i32 0, i32 18
  %23 = load i32, i32* %size_x, align 4
  %24 = load i32, i32* %blocksize_x, align 4
  %sub = sub nsw i32 %23, %24
  %add19 = add nsw i32 %sub, 40
  %shl20 = shl i32 %add19, 2
  %conv = trunc i32 %shl20 to i16
  store i16 %conv, i16* %max_pos_x4, align 2
  %25 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %25, i32 0, i32 19
  %26 = load i32, i32* %size_y, align 4
  %27 = load i32, i32* %blocksize_y, align 4
  %sub21 = sub nsw i32 %26, %27
  %add22 = add nsw i32 %sub21, 40
  %shl23 = shl i32 %add22, 2
  %conv24 = trunc i32 %shl23 to i16
  store i16 %conv24, i16* %max_pos_y4, align 2
  store i32 0, i32* %currmv_x, align 4
  store i32 0, i32* %currmv_y, align 4
  %28 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %28, i32 0, i32 19
  %29 = load i32, i32* %weighted_pred_flag, align 4
  %tobool25 = icmp ne i32 %29, 0
  br i1 %tobool25, label %land.lhs.true.26, label %lor.lhs.false.31

land.lhs.true.26:                                 ; preds = %cond.end
  %30 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %30, i32 0, i32 5
  %31 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %31, 0
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.26
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type28 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 5
  %33 = load i32, i32* %type28, align 4
  %cmp29 = icmp eq i32 %33, 3
  br i1 %cmp29, label %land.rhs, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false, %cond.end
  %34 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %34, i32 0, i32 20
  %35 = load i32, i32* %weighted_bipred_idc, align 4
  %tobool32 = icmp ne i32 %35, 0
  br i1 %tobool32, label %land.lhs.true.33, label %land.end

land.lhs.true.33:                                 ; preds = %lor.lhs.false.31
  %36 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type34 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %36, i32 0, i32 5
  %37 = load i32, i32* %type34, align 4
  %cmp35 = icmp eq i32 %37, 1
  br i1 %cmp35, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.33, %lor.lhs.false, %land.lhs.true.26
  %38 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseWeightedReferenceME = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %38, i32 0, i32 61
  %39 = load i32, i32* %UseWeightedReferenceME, align 4
  %tobool37 = icmp ne i32 %39, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.33, %lor.lhs.false.31
  %40 = phi i1 [ false, %land.lhs.true.33 ], [ false, %lor.lhs.false.31 ], [ %tobool37, %land.rhs ]
  %land.ext = zext i1 %40 to i32
  store i32 %land.ext, i32* %apply_weights, align 4
  %41 = load i32, i32* %apply_weights, align 4
  %mul = mul nsw i32 3, %41
  %add38 = add nsw i32 2, %mul
  store i32 %add38, i32* @dist_method, align 4
  %42 = load i32, i32* %pic4_pix_x, align 4
  %43 = load i16*, i16** %mv_x.addr, align 8
  %44 = load i16, i16* %43, align 2
  %conv39 = sext i16 %44 to i32
  %add40 = add nsw i32 %42, %conv39
  %cmp41 = icmp sgt i32 %add40, 1
  br i1 %cmp41, label %land.lhs.true.43, label %if.else

land.lhs.true.43:                                 ; preds = %land.end
  %45 = load i32, i32* %pic4_pix_x, align 4
  %46 = load i16*, i16** %mv_x.addr, align 8
  %47 = load i16, i16* %46, align 2
  %conv44 = sext i16 %47 to i32
  %add45 = add nsw i32 %45, %conv44
  %48 = load i16, i16* %max_pos_x4, align 2
  %conv46 = sext i16 %48 to i32
  %sub47 = sub nsw i32 %conv46, 1
  %cmp48 = icmp slt i32 %add45, %sub47
  br i1 %cmp48, label %land.lhs.true.50, label %if.else

land.lhs.true.50:                                 ; preds = %land.lhs.true.43
  %49 = load i32, i32* %pic4_pix_y, align 4
  %50 = load i16*, i16** %mv_y.addr, align 8
  %51 = load i16, i16* %50, align 2
  %conv51 = sext i16 %51 to i32
  %add52 = add nsw i32 %49, %conv51
  %cmp53 = icmp sgt i32 %add52, 1
  br i1 %cmp53, label %land.lhs.true.55, label %if.else

land.lhs.true.55:                                 ; preds = %land.lhs.true.50
  %52 = load i32, i32* %pic4_pix_y, align 4
  %53 = load i16*, i16** %mv_y.addr, align 8
  %54 = load i16, i16* %53, align 2
  %conv56 = sext i16 %54 to i32
  %add57 = add nsw i32 %52, %conv56
  %55 = load i16, i16* %max_pos_y4, align 2
  %conv58 = sext i16 %55 to i32
  %sub59 = sub nsw i32 %conv58, 1
  %cmp60 = icmp slt i32 %add57, %sub59
  br i1 %cmp60, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.55
  store i32 0, i32* @ref_access_method, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.55, %land.lhs.true.50, %land.lhs.true.43, %land.end
  store i32 1, i32* @ref_access_method, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %56 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %imgY_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %56, i32 0, i32 30
  %57 = load i16****, i16***** %imgY_sub, align 8
  store i16**** %57, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 0), align 8
  %58 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_x62 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %58, i32 0, i32 18
  %59 = load i32, i32* %size_x62, align 4
  %conv63 = trunc i32 %59 to i16
  store i16 %conv63, i16* @img_width, align 2
  %60 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_y64 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %60, i32 0, i32 19
  %61 = load i32, i32* %size_y64, align 4
  %conv65 = trunc i32 %61 to i16
  store i16 %conv65, i16* @img_height, align 2
  %62 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_x_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %62, i32 0, i32 22
  %63 = load i32, i32* %size_x_pad, align 4
  store i32 %63, i32* @width_pad, align 4
  %64 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_y_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %64, i32 0, i32 23
  %65 = load i32, i32* %size_y_pad, align 4
  store i32 %65, i32* @height_pad, align 4
  %66 = load i32, i32* %apply_weights, align 4
  %tobool66 = icmp ne i32 %66, 0
  br i1 %tobool66, label %if.then.67, label %if.end.80

if.then.67:                                       ; preds = %if.end
  %67 = load i16, i16* %ref.addr, align 2
  %idxprom68 = sext i16 %67 to i64
  %68 = load i32, i32* %list.addr, align 4
  %69 = load i32, i32* %list_offset, align 4
  %add69 = add nsw i32 %68, %69
  %idxprom70 = sext i32 %add69 to i64
  %70 = load i32***, i32**** @wp_weight, align 8
  %arrayidx71 = getelementptr inbounds i32**, i32*** %70, i64 %idxprom70
  %71 = load i32**, i32*** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i32*, i32** %71, i64 %idxprom68
  %72 = load i32*, i32** %arrayidx72, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %72, i64 0
  %73 = load i32, i32* %arrayidx73, align 4
  store i32 %73, i32* @weight_luma, align 4
  %74 = load i16, i16* %ref.addr, align 2
  %idxprom74 = sext i16 %74 to i64
  %75 = load i32, i32* %list.addr, align 4
  %76 = load i32, i32* %list_offset, align 4
  %add75 = add nsw i32 %75, %76
  %idxprom76 = sext i32 %add75 to i64
  %77 = load i32***, i32**** @wp_offset, align 8
  %arrayidx77 = getelementptr inbounds i32**, i32*** %77, i64 %idxprom76
  %78 = load i32**, i32*** %arrayidx77, align 8
  %arrayidx78 = getelementptr inbounds i32*, i32** %78, i64 %idxprom74
  %79 = load i32*, i32** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %79, i64 0
  %80 = load i32, i32* %arrayidx79, align 4
  store i32 %80, i32* @offset_luma, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.67, %if.end
  %81 = load i32, i32* @ChromaMEEnable, align 4
  %tobool81 = icmp ne i32 %81, 0
  br i1 %tobool81, label %if.then.82, label %if.end.113

if.then.82:                                       ; preds = %if.end.80
  %82 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %imgUV_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %82, i32 0, i32 32
  %83 = load i16*****, i16****** %imgUV_sub, align 8
  %arrayidx83 = getelementptr inbounds i16****, i16***** %83, i64 0
  %84 = load i16****, i16***** %arrayidx83, align 8
  store i16**** %84, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 1, i64 0), align 8
  %85 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %imgUV_sub84 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %85, i32 0, i32 32
  %86 = load i16*****, i16****** %imgUV_sub84, align 8
  %arrayidx85 = getelementptr inbounds i16****, i16***** %86, i64 1
  %87 = load i16****, i16***** %arrayidx85, align 8
  store i16**** %87, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 1, i64 1), align 8
  %88 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_x_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %88, i32 0, i32 24
  %89 = load i32, i32* %size_x_cr_pad, align 4
  store i32 %89, i32* @width_pad_cr, align 4
  %90 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_y_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %90, i32 0, i32 25
  %91 = load i32, i32* %size_y_cr_pad, align 4
  store i32 %91, i32* @height_pad_cr, align 4
  %92 = load i32, i32* %apply_weights, align 4
  %tobool86 = icmp ne i32 %92, 0
  br i1 %tobool86, label %if.then.87, label %if.end.112

if.then.87:                                       ; preds = %if.then.82
  %93 = load i16, i16* %ref.addr, align 2
  %idxprom88 = sext i16 %93 to i64
  %94 = load i32, i32* %list.addr, align 4
  %95 = load i32, i32* %list_offset, align 4
  %add89 = add nsw i32 %94, %95
  %idxprom90 = sext i32 %add89 to i64
  %96 = load i32***, i32**** @wp_weight, align 8
  %arrayidx91 = getelementptr inbounds i32**, i32*** %96, i64 %idxprom90
  %97 = load i32**, i32*** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds i32*, i32** %97, i64 %idxprom88
  %98 = load i32*, i32** %arrayidx92, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %98, i64 1
  %99 = load i32, i32* %arrayidx93, align 4
  store i32 %99, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @weight_cr, i32 0, i64 0), align 4
  %100 = load i16, i16* %ref.addr, align 2
  %idxprom94 = sext i16 %100 to i64
  %101 = load i32, i32* %list.addr, align 4
  %102 = load i32, i32* %list_offset, align 4
  %add95 = add nsw i32 %101, %102
  %idxprom96 = sext i32 %add95 to i64
  %103 = load i32***, i32**** @wp_weight, align 8
  %arrayidx97 = getelementptr inbounds i32**, i32*** %103, i64 %idxprom96
  %104 = load i32**, i32*** %arrayidx97, align 8
  %arrayidx98 = getelementptr inbounds i32*, i32** %104, i64 %idxprom94
  %105 = load i32*, i32** %arrayidx98, align 8
  %arrayidx99 = getelementptr inbounds i32, i32* %105, i64 2
  %106 = load i32, i32* %arrayidx99, align 4
  store i32 %106, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @weight_cr, i32 0, i64 1), align 4
  %107 = load i16, i16* %ref.addr, align 2
  %idxprom100 = sext i16 %107 to i64
  %108 = load i32, i32* %list.addr, align 4
  %109 = load i32, i32* %list_offset, align 4
  %add101 = add nsw i32 %108, %109
  %idxprom102 = sext i32 %add101 to i64
  %110 = load i32***, i32**** @wp_offset, align 8
  %arrayidx103 = getelementptr inbounds i32**, i32*** %110, i64 %idxprom102
  %111 = load i32**, i32*** %arrayidx103, align 8
  %arrayidx104 = getelementptr inbounds i32*, i32** %111, i64 %idxprom100
  %112 = load i32*, i32** %arrayidx104, align 8
  %arrayidx105 = getelementptr inbounds i32, i32* %112, i64 1
  %113 = load i32, i32* %arrayidx105, align 4
  store i32 %113, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @offset_cr, i32 0, i64 0), align 4
  %114 = load i16, i16* %ref.addr, align 2
  %idxprom106 = sext i16 %114 to i64
  %115 = load i32, i32* %list.addr, align 4
  %116 = load i32, i32* %list_offset, align 4
  %add107 = add nsw i32 %115, %116
  %idxprom108 = sext i32 %add107 to i64
  %117 = load i32***, i32**** @wp_offset, align 8
  %arrayidx109 = getelementptr inbounds i32**, i32*** %117, i64 %idxprom108
  %118 = load i32**, i32*** %arrayidx109, align 8
  %arrayidx110 = getelementptr inbounds i32*, i32** %118, i64 %idxprom106
  %119 = load i32*, i32** %arrayidx110, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %119, i64 2
  %120 = load i32, i32* %arrayidx111, align 4
  store i32 %120, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @offset_cr, i32 0, i64 1), align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.87, %if.then.82
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.end.80
  store i32 3, i32* %search_range_dynamic, align 4
  %121 = load i16, i16* %pred_mv_x.addr, align 2
  %conv114 = sext i16 %121 to i32
  %122 = load i16*, i16** %mv_x.addr, align 8
  %123 = load i16, i16* %122, align 2
  %conv115 = sext i16 %123 to i32
  %sub116 = sub nsw i32 %conv114, %conv115
  %rem117 = srem i32 %sub116, 4
  store i32 %rem117, i32* %pred_frac_mv_x, align 4
  %124 = load i16, i16* %pred_mv_y.addr, align 2
  %conv118 = sext i16 %124 to i32
  %125 = load i16*, i16** %mv_y.addr, align 8
  %126 = load i16, i16* %125, align 2
  %conv119 = sext i16 %126 to i32
  %sub120 = sub nsw i32 %conv118, %conv119
  %rem121 = srem i32 %sub120, 4
  store i32 %rem121, i32* %pred_frac_mv_y, align 4
  %127 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_uplayer, i32 0, i64 0), align 4
  %128 = load i16*, i16** %mv_x.addr, align 8
  %129 = load i16, i16* %128, align 2
  %conv122 = sext i16 %129 to i32
  %sub123 = sub nsw i32 %127, %conv122
  %rem124 = srem i32 %sub123, 4
  store i32 %rem124, i32* %pred_frac_up_mv_x, align 4
  %130 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_uplayer, i32 0, i64 1), align 4
  %131 = load i16*, i16** %mv_y.addr, align 8
  %132 = load i16, i16* %131, align 2
  %conv125 = sext i16 %132 to i32
  %sub126 = sub nsw i32 %130, %conv125
  %rem127 = srem i32 %sub126, 4
  store i32 %rem127, i32* %pred_frac_up_mv_y, align 4
  %133 = load i8**, i8*** @SearchState, align 8
  %arrayidx128 = getelementptr inbounds i8*, i8** %133, i64 0
  %134 = load i8*, i8** %arrayidx128, align 8
  %135 = load i32, i32* %search_range_dynamic, align 4
  %mul129 = mul nsw i32 2, %135
  %add130 = add nsw i32 %mul129, 1
  %136 = load i32, i32* %search_range_dynamic, align 4
  %mul131 = mul nsw i32 2, %136
  %add132 = add nsw i32 %mul131, 1
  %mul133 = mul nsw i32 %add130, %add132
  %conv134 = sext i32 %mul133 to i64
  call void @llvm.memset.p0i8.i64(i8* %134, i8 0, i64 %conv134, i32 1, i1 false)
  %137 = load i32, i32* @start_me_refinement_hp, align 4
  %tobool135 = icmp ne i32 %137, 0
  br i1 %tobool135, label %if.else.165, label %if.then.136

if.then.136:                                      ; preds = %if.end.113
  %138 = load i16*, i16** %mv_x.addr, align 8
  %139 = load i16, i16* %138, align 2
  %conv137 = sext i16 %139 to i32
  store i32 %conv137, i32* %cand_mv_x, align 4
  %140 = load i16*, i16** %mv_y.addr, align 8
  %141 = load i16, i16* %140, align 2
  %conv138 = sext i16 %141 to i32
  store i32 %conv138, i32* %cand_mv_y, align 4
  %142 = load i32, i32* %lambda_factor.addr, align 4
  %143 = load i32, i32* %cand_mv_x, align 4
  %144 = load i32, i32* %mv_shift, align 4
  %shl139 = shl i32 %143, %144
  %145 = load i16, i16* %pred_mv_x.addr, align 2
  %conv140 = sext i16 %145 to i32
  %sub141 = sub nsw i32 %shl139, %conv140
  %idxprom142 = sext i32 %sub141 to i64
  %146 = load i32*, i32** @mvbits, align 8
  %arrayidx143 = getelementptr inbounds i32, i32* %146, i64 %idxprom142
  %147 = load i32, i32* %arrayidx143, align 4
  %148 = load i32, i32* %cand_mv_y, align 4
  %149 = load i32, i32* %mv_shift, align 4
  %shl144 = shl i32 %148, %149
  %150 = load i16, i16* %pred_mv_y.addr, align 2
  %conv145 = sext i16 %150 to i32
  %sub146 = sub nsw i32 %shl144, %conv145
  %idxprom147 = sext i32 %sub146 to i64
  %151 = load i32*, i32** @mvbits, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %151, i64 %idxprom147
  %152 = load i32, i32* %arrayidx148, align 4
  %add149 = add nsw i32 %147, %152
  %mul150 = mul nsw i32 %142, %add149
  %shr = ashr i32 %mul150, 16
  store i32 %shr, i32* %mcost, align 4
  %153 = load i32, i32* @dist_method, align 4
  %idxprom151 = sext i32 %153 to i64
  %arrayidx152 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom151
  %154 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx152, align 8
  %155 = load i16*, i16** %orig_pic.addr, align 8
  %156 = load i32, i32* %blocksize_y, align 4
  %157 = load i32, i32* %blocksize_x, align 4
  %158 = load i32, i32* %min_mcost.addr, align 4
  %159 = load i32, i32* %mcost, align 4
  %sub153 = sub nsw i32 %158, %159
  %160 = load i32, i32* %cand_mv_x, align 4
  %161 = load i32, i32* %pic4_pix_x, align 4
  %add154 = add nsw i32 %160, %161
  %162 = load i32, i32* %cand_mv_y, align 4
  %163 = load i32, i32* %pic4_pix_y, align 4
  %add155 = add nsw i32 %162, %163
  %call = call i32 %154(i16* %155, i32 %156, i32 %157, i32 %sub153, i32 %add154, i32 %add155)
  %164 = load i32, i32* %mcost, align 4
  %add156 = add nsw i32 %164, %call
  store i32 %add156, i32* %mcost, align 4
  %165 = load i32, i32* %search_range_dynamic, align 4
  %idxprom157 = sext i32 %165 to i64
  %166 = load i32, i32* %search_range_dynamic, align 4
  %idxprom158 = sext i32 %166 to i64
  %167 = load i8**, i8*** @SearchState, align 8
  %arrayidx159 = getelementptr inbounds i8*, i8** %167, i64 %idxprom158
  %168 = load i8*, i8** %arrayidx159, align 8
  %arrayidx160 = getelementptr inbounds i8, i8* %168, i64 %idxprom157
  store i8 1, i8* %arrayidx160, align 1
  %169 = load i32, i32* %mcost, align 4
  %170 = load i32, i32* %min_mcost.addr, align 4
  %cmp161 = icmp slt i32 %169, %170
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %if.then.136
  %171 = load i32, i32* %mcost, align 4
  store i32 %171, i32* %min_mcost.addr, align 4
  %172 = load i32, i32* %cand_mv_x, align 4
  store i32 %172, i32* %currmv_x, align 4
  %173 = load i32, i32* %cand_mv_y, align 4
  store i32 %173, i32* %currmv_y, align 4
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.163, %if.then.136
  br label %if.end.172

if.else.165:                                      ; preds = %if.end.113
  %174 = load i32, i32* %search_range_dynamic, align 4
  %idxprom166 = sext i32 %174 to i64
  %175 = load i32, i32* %search_range_dynamic, align 4
  %idxprom167 = sext i32 %175 to i64
  %176 = load i8**, i8*** @SearchState, align 8
  %arrayidx168 = getelementptr inbounds i8*, i8** %176, i64 %idxprom167
  %177 = load i8*, i8** %arrayidx168, align 8
  %arrayidx169 = getelementptr inbounds i8, i8* %177, i64 %idxprom166
  store i8 1, i8* %arrayidx169, align 1
  %178 = load i16*, i16** %mv_x.addr, align 8
  %179 = load i16, i16* %178, align 2
  %conv170 = sext i16 %179 to i32
  store i32 %conv170, i32* %currmv_x, align 4
  %180 = load i16*, i16** %mv_y.addr, align 8
  %181 = load i16, i16* %180, align 2
  %conv171 = sext i16 %181 to i32
  store i32 %conv171, i32* %currmv_y, align 4
  br label %if.end.172

if.end.172:                                       ; preds = %if.else.165, %if.end.164
  %182 = load i32, i32* %pred_frac_mv_x, align 4
  %cmp173 = icmp ne i32 %182, 0
  br i1 %cmp173, label %if.then.178, label %lor.lhs.false.175

lor.lhs.false.175:                                ; preds = %if.end.172
  %183 = load i32, i32* %pred_frac_mv_y, align 4
  %cmp176 = icmp ne i32 %183, 0
  br i1 %cmp176, label %if.then.178, label %if.end.217

if.then.178:                                      ; preds = %lor.lhs.false.175, %if.end.172
  %184 = load i16*, i16** %mv_x.addr, align 8
  %185 = load i16, i16* %184, align 2
  %conv179 = sext i16 %185 to i32
  %186 = load i32, i32* %pred_frac_mv_x, align 4
  %add180 = add nsw i32 %conv179, %186
  store i32 %add180, i32* %cand_mv_x, align 4
  %187 = load i16*, i16** %mv_y.addr, align 8
  %188 = load i16, i16* %187, align 2
  %conv181 = sext i16 %188 to i32
  %189 = load i32, i32* %pred_frac_mv_y, align 4
  %add182 = add nsw i32 %conv181, %189
  store i32 %add182, i32* %cand_mv_y, align 4
  %190 = load i32, i32* %lambda_factor.addr, align 4
  %191 = load i32, i32* %cand_mv_x, align 4
  %192 = load i32, i32* %mv_shift, align 4
  %shl183 = shl i32 %191, %192
  %193 = load i16, i16* %pred_mv_x.addr, align 2
  %conv184 = sext i16 %193 to i32
  %sub185 = sub nsw i32 %shl183, %conv184
  %idxprom186 = sext i32 %sub185 to i64
  %194 = load i32*, i32** @mvbits, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %194, i64 %idxprom186
  %195 = load i32, i32* %arrayidx187, align 4
  %196 = load i32, i32* %cand_mv_y, align 4
  %197 = load i32, i32* %mv_shift, align 4
  %shl188 = shl i32 %196, %197
  %198 = load i16, i16* %pred_mv_y.addr, align 2
  %conv189 = sext i16 %198 to i32
  %sub190 = sub nsw i32 %shl188, %conv189
  %idxprom191 = sext i32 %sub190 to i64
  %199 = load i32*, i32** @mvbits, align 8
  %arrayidx192 = getelementptr inbounds i32, i32* %199, i64 %idxprom191
  %200 = load i32, i32* %arrayidx192, align 4
  %add193 = add nsw i32 %195, %200
  %mul194 = mul nsw i32 %190, %add193
  %shr195 = ashr i32 %mul194, 16
  store i32 %shr195, i32* %mcost, align 4
  %201 = load i32, i32* @dist_method, align 4
  %idxprom196 = sext i32 %201 to i64
  %arrayidx197 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom196
  %202 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx197, align 8
  %203 = load i16*, i16** %orig_pic.addr, align 8
  %204 = load i32, i32* %blocksize_y, align 4
  %205 = load i32, i32* %blocksize_x, align 4
  %206 = load i32, i32* %min_mcost.addr, align 4
  %207 = load i32, i32* %mcost, align 4
  %sub198 = sub nsw i32 %206, %207
  %208 = load i32, i32* %cand_mv_x, align 4
  %209 = load i32, i32* %pic4_pix_x, align 4
  %add199 = add nsw i32 %208, %209
  %210 = load i32, i32* %cand_mv_y, align 4
  %211 = load i32, i32* %pic4_pix_y, align 4
  %add200 = add nsw i32 %210, %211
  %call201 = call i32 %202(i16* %203, i32 %204, i32 %205, i32 %sub198, i32 %add199, i32 %add200)
  %212 = load i32, i32* %mcost, align 4
  %add202 = add nsw i32 %212, %call201
  store i32 %add202, i32* %mcost, align 4
  %213 = load i32, i32* %cand_mv_x, align 4
  %214 = load i16*, i16** %mv_x.addr, align 8
  %215 = load i16, i16* %214, align 2
  %conv203 = sext i16 %215 to i32
  %sub204 = sub nsw i32 %213, %conv203
  %216 = load i32, i32* %search_range_dynamic, align 4
  %add205 = add nsw i32 %sub204, %216
  %idxprom206 = sext i32 %add205 to i64
  %217 = load i32, i32* %cand_mv_y, align 4
  %218 = load i16*, i16** %mv_y.addr, align 8
  %219 = load i16, i16* %218, align 2
  %conv207 = sext i16 %219 to i32
  %sub208 = sub nsw i32 %217, %conv207
  %220 = load i32, i32* %search_range_dynamic, align 4
  %add209 = add nsw i32 %sub208, %220
  %idxprom210 = sext i32 %add209 to i64
  %221 = load i8**, i8*** @SearchState, align 8
  %arrayidx211 = getelementptr inbounds i8*, i8** %221, i64 %idxprom210
  %222 = load i8*, i8** %arrayidx211, align 8
  %arrayidx212 = getelementptr inbounds i8, i8* %222, i64 %idxprom206
  store i8 1, i8* %arrayidx212, align 1
  %223 = load i32, i32* %mcost, align 4
  %224 = load i32, i32* %min_mcost.addr, align 4
  %cmp213 = icmp slt i32 %223, %224
  br i1 %cmp213, label %if.then.215, label %if.end.216

if.then.215:                                      ; preds = %if.then.178
  %225 = load i32, i32* %mcost, align 4
  store i32 %225, i32* %min_mcost.addr, align 4
  %226 = load i32, i32* %cand_mv_x, align 4
  store i32 %226, i32* %currmv_x, align 4
  %227 = load i32, i32* %cand_mv_y, align 4
  store i32 %227, i32* %currmv_y, align 4
  br label %if.end.216

if.end.216:                                       ; preds = %if.then.215, %if.then.178
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %lor.lhs.false.175
  %228 = load i32, i32* %currmv_x, align 4
  store i32 %228, i32* %iXMinNow, align 4
  %229 = load i32, i32* %currmv_y, align 4
  store i32 %229, i32* %iYMinNow, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.293, %if.end.217
  %230 = load i32, i32* %i, align 4
  %231 = load i32, i32* %search_range_dynamic, align 4
  %cmp218 = icmp slt i32 %230, %231
  br i1 %cmp218, label %for.body, label %for.end.295

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %abort_search, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.220

for.cond.220:                                     ; preds = %for.inc, %for.body
  %232 = load i32, i32* %m, align 4
  %cmp221 = icmp slt i32 %232, 4
  br i1 %cmp221, label %for.body.223, label %for.end

for.body.223:                                     ; preds = %for.cond.220
  %233 = load i32, i32* %iXMinNow, align 4
  %234 = load i32, i32* %m, align 4
  %idxprom224 = sext i32 %234 to i64
  %arrayidx225 = getelementptr inbounds [4 x i32], [4 x i32]* @UMHEXSubPelBlockMotionSearch.Diamond_x, i32 0, i64 %idxprom224
  %235 = load i32, i32* %arrayidx225, align 4
  %add226 = add nsw i32 %233, %235
  store i32 %add226, i32* %cand_mv_x, align 4
  %236 = load i32, i32* %iYMinNow, align 4
  %237 = load i32, i32* %m, align 4
  %idxprom227 = sext i32 %237 to i64
  %arrayidx228 = getelementptr inbounds [4 x i32], [4 x i32]* @UMHEXSubPelBlockMotionSearch.Diamond_y, i32 0, i64 %idxprom227
  %238 = load i32, i32* %arrayidx228, align 4
  %add229 = add nsw i32 %236, %238
  store i32 %add229, i32* %cand_mv_y, align 4
  %239 = load i32, i32* %cand_mv_x, align 4
  %240 = load i16*, i16** %mv_x.addr, align 8
  %241 = load i16, i16* %240, align 2
  %conv230 = sext i16 %241 to i32
  %sub231 = sub nsw i32 %239, %conv230
  %call232 = call i32 @iabs(i32 %sub231)
  %242 = load i32, i32* %search_range_dynamic, align 4
  %cmp233 = icmp sle i32 %call232, %242
  br i1 %cmp233, label %land.lhs.true.235, label %if.end.289

land.lhs.true.235:                                ; preds = %for.body.223
  %243 = load i32, i32* %cand_mv_y, align 4
  %244 = load i16*, i16** %mv_y.addr, align 8
  %245 = load i16, i16* %244, align 2
  %conv236 = sext i16 %245 to i32
  %sub237 = sub nsw i32 %243, %conv236
  %call238 = call i32 @iabs(i32 %sub237)
  %246 = load i32, i32* %search_range_dynamic, align 4
  %cmp239 = icmp sle i32 %call238, %246
  br i1 %cmp239, label %if.then.241, label %if.end.289

if.then.241:                                      ; preds = %land.lhs.true.235
  %247 = load i32, i32* %cand_mv_x, align 4
  %248 = load i16*, i16** %mv_x.addr, align 8
  %249 = load i16, i16* %248, align 2
  %conv242 = sext i16 %249 to i32
  %sub243 = sub nsw i32 %247, %conv242
  %250 = load i32, i32* %search_range_dynamic, align 4
  %add244 = add nsw i32 %sub243, %250
  %idxprom245 = sext i32 %add244 to i64
  %251 = load i32, i32* %cand_mv_y, align 4
  %252 = load i16*, i16** %mv_y.addr, align 8
  %253 = load i16, i16* %252, align 2
  %conv246 = sext i16 %253 to i32
  %sub247 = sub nsw i32 %251, %conv246
  %254 = load i32, i32* %search_range_dynamic, align 4
  %add248 = add nsw i32 %sub247, %254
  %idxprom249 = sext i32 %add248 to i64
  %255 = load i8**, i8*** @SearchState, align 8
  %arrayidx250 = getelementptr inbounds i8*, i8** %255, i64 %idxprom249
  %256 = load i8*, i8** %arrayidx250, align 8
  %arrayidx251 = getelementptr inbounds i8, i8* %256, i64 %idxprom245
  %257 = load i8, i8* %arrayidx251, align 1
  %tobool252 = icmp ne i8 %257, 0
  br i1 %tobool252, label %if.end.288, label %if.then.253

if.then.253:                                      ; preds = %if.then.241
  %258 = load i32, i32* %lambda_factor.addr, align 4
  %259 = load i32, i32* %cand_mv_x, align 4
  %260 = load i32, i32* %mv_shift, align 4
  %shl254 = shl i32 %259, %260
  %261 = load i16, i16* %pred_mv_x.addr, align 2
  %conv255 = sext i16 %261 to i32
  %sub256 = sub nsw i32 %shl254, %conv255
  %idxprom257 = sext i32 %sub256 to i64
  %262 = load i32*, i32** @mvbits, align 8
  %arrayidx258 = getelementptr inbounds i32, i32* %262, i64 %idxprom257
  %263 = load i32, i32* %arrayidx258, align 4
  %264 = load i32, i32* %cand_mv_y, align 4
  %265 = load i32, i32* %mv_shift, align 4
  %shl259 = shl i32 %264, %265
  %266 = load i16, i16* %pred_mv_y.addr, align 2
  %conv260 = sext i16 %266 to i32
  %sub261 = sub nsw i32 %shl259, %conv260
  %idxprom262 = sext i32 %sub261 to i64
  %267 = load i32*, i32** @mvbits, align 8
  %arrayidx263 = getelementptr inbounds i32, i32* %267, i64 %idxprom262
  %268 = load i32, i32* %arrayidx263, align 4
  %add264 = add nsw i32 %263, %268
  %mul265 = mul nsw i32 %258, %add264
  %shr266 = ashr i32 %mul265, 16
  store i32 %shr266, i32* %mcost, align 4
  %269 = load i32, i32* @dist_method, align 4
  %idxprom267 = sext i32 %269 to i64
  %arrayidx268 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom267
  %270 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx268, align 8
  %271 = load i16*, i16** %orig_pic.addr, align 8
  %272 = load i32, i32* %blocksize_y, align 4
  %273 = load i32, i32* %blocksize_x, align 4
  %274 = load i32, i32* %min_mcost.addr, align 4
  %275 = load i32, i32* %mcost, align 4
  %sub269 = sub nsw i32 %274, %275
  %276 = load i32, i32* %cand_mv_x, align 4
  %277 = load i32, i32* %pic4_pix_x, align 4
  %add270 = add nsw i32 %276, %277
  %278 = load i32, i32* %cand_mv_y, align 4
  %279 = load i32, i32* %pic4_pix_y, align 4
  %add271 = add nsw i32 %278, %279
  %call272 = call i32 %270(i16* %271, i32 %272, i32 %273, i32 %sub269, i32 %add270, i32 %add271)
  %280 = load i32, i32* %mcost, align 4
  %add273 = add nsw i32 %280, %call272
  store i32 %add273, i32* %mcost, align 4
  %281 = load i32, i32* %cand_mv_x, align 4
  %282 = load i16*, i16** %mv_x.addr, align 8
  %283 = load i16, i16* %282, align 2
  %conv274 = sext i16 %283 to i32
  %sub275 = sub nsw i32 %281, %conv274
  %284 = load i32, i32* %search_range_dynamic, align 4
  %add276 = add nsw i32 %sub275, %284
  %idxprom277 = sext i32 %add276 to i64
  %285 = load i32, i32* %cand_mv_y, align 4
  %286 = load i16*, i16** %mv_y.addr, align 8
  %287 = load i16, i16* %286, align 2
  %conv278 = sext i16 %287 to i32
  %sub279 = sub nsw i32 %285, %conv278
  %288 = load i32, i32* %search_range_dynamic, align 4
  %add280 = add nsw i32 %sub279, %288
  %idxprom281 = sext i32 %add280 to i64
  %289 = load i8**, i8*** @SearchState, align 8
  %arrayidx282 = getelementptr inbounds i8*, i8** %289, i64 %idxprom281
  %290 = load i8*, i8** %arrayidx282, align 8
  %arrayidx283 = getelementptr inbounds i8, i8* %290, i64 %idxprom277
  store i8 1, i8* %arrayidx283, align 1
  %291 = load i32, i32* %mcost, align 4
  %292 = load i32, i32* %min_mcost.addr, align 4
  %cmp284 = icmp slt i32 %291, %292
  br i1 %cmp284, label %if.then.286, label %if.end.287

if.then.286:                                      ; preds = %if.then.253
  %293 = load i32, i32* %mcost, align 4
  store i32 %293, i32* %min_mcost.addr, align 4
  %294 = load i32, i32* %cand_mv_x, align 4
  store i32 %294, i32* %currmv_x, align 4
  %295 = load i32, i32* %cand_mv_y, align 4
  store i32 %295, i32* %currmv_y, align 4
  store i32 0, i32* %abort_search, align 4
  br label %if.end.287

if.end.287:                                       ; preds = %if.then.286, %if.then.253
  br label %if.end.288

if.end.288:                                       ; preds = %if.end.287, %if.then.241
  br label %if.end.289

if.end.289:                                       ; preds = %if.end.288, %land.lhs.true.235, %for.body.223
  br label %for.inc

for.inc:                                          ; preds = %if.end.289
  %296 = load i32, i32* %m, align 4
  %inc = add nsw i32 %296, 1
  store i32 %inc, i32* %m, align 4
  br label %for.cond.220

for.end:                                          ; preds = %for.cond.220
  %297 = load i32, i32* %currmv_x, align 4
  store i32 %297, i32* %iXMinNow, align 4
  %298 = load i32, i32* %currmv_y, align 4
  store i32 %298, i32* %iYMinNow, align 4
  %299 = load i32, i32* %abort_search, align 4
  %tobool290 = icmp ne i32 %299, 0
  br i1 %tobool290, label %if.then.291, label %if.end.292

if.then.291:                                      ; preds = %for.end
  br label %for.end.295

if.end.292:                                       ; preds = %for.end
  br label %for.inc.293

for.inc.293:                                      ; preds = %if.end.292
  %300 = load i32, i32* %i, align 4
  %inc294 = add nsw i32 %300, 1
  store i32 %inc294, i32* %i, align 4
  br label %for.cond

for.end.295:                                      ; preds = %if.then.291, %for.cond
  %301 = load i32, i32* %currmv_x, align 4
  %conv296 = trunc i32 %301 to i16
  %302 = load i16*, i16** %mv_x.addr, align 8
  store i16 %conv296, i16* %302, align 2
  %303 = load i32, i32* %currmv_y, align 4
  %conv297 = trunc i32 %303 to i16
  %304 = load i16*, i16** %mv_y.addr, align 8
  store i16 %conv297, i16* %304, align 2
  %305 = load i32, i32* %min_mcost.addr, align 4
  ret i32 %305
}

; Function Attrs: nounwind uwtable
define void @UMHEX_decide_intrabk_SAD() #0 {
entry:
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 5
  %1 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end.39

if.then:                                          ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 39
  %3 = load i32, i32* %pix_x, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 40
  %5 = load i32, i32* %pix_y, align 4
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  store i32 0, i32* @flag_intra_SAD, align 4
  br label %if.end.38

if.else:                                          ; preds = %land.lhs.true, %if.then
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 39
  %7 = load i32, i32* %pix_x4, align 4
  %cmp5 = icmp eq i32 %7, 0
  br i1 %cmp5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 39
  %9 = load i32, i32* %pix_x7, align 4
  %shr = ashr i32 %9, 4
  %idxprom = sext i32 %shr to i64
  %10 = load i8*, i8** @flag_intra, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %11 to i32
  store i32 %conv, i32* @flag_intra_SAD, align 4
  br label %if.end.37

if.else.8:                                        ; preds = %if.else
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 40
  %13 = load i32, i32* %pix_y9, align 4
  %cmp10 = icmp eq i32 %13, 0
  br i1 %cmp10, label %if.then.12, label %if.else.18

if.then.12:                                       ; preds = %if.else.8
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 39
  %15 = load i32, i32* %pix_x13, align 4
  %shr14 = ashr i32 %15, 4
  %sub = sub nsw i32 %shr14, 1
  %idxprom15 = sext i32 %sub to i64
  %16 = load i8*, i8** @flag_intra, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %idxprom15
  %17 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %17 to i32
  store i32 %conv17, i32* @flag_intra_SAD, align 4
  br label %if.end

if.else.18:                                       ; preds = %if.else.8
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x19 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 39
  %19 = load i32, i32* %pix_x19, align 4
  %shr20 = ashr i32 %19, 4
  %idxprom21 = sext i32 %shr20 to i64
  %20 = load i8*, i8** @flag_intra, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %20, i64 %idxprom21
  %21 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %21 to i32
  %tobool = icmp ne i32 %conv23, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.18
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x24 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 39
  %23 = load i32, i32* %pix_x24, align 4
  %shr25 = ashr i32 %23, 4
  %sub26 = sub nsw i32 %shr25, 1
  %idxprom27 = sext i32 %sub26 to i64
  %24 = load i8*, i8** @flag_intra, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %24, i64 %idxprom27
  %25 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %25 to i32
  %tobool30 = icmp ne i32 %conv29, 0
  br i1 %tobool30, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 39
  %27 = load i32, i32* %pix_x31, align 4
  %shr32 = ashr i32 %27, 4
  %add = add nsw i32 %shr32, 1
  %idxprom33 = sext i32 %add to i64
  %28 = load i8*, i8** @flag_intra, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %28, i64 %idxprom33
  %29 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %29 to i32
  %tobool36 = icmp ne i32 %conv35, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.else.18
  %30 = phi i1 [ true, %lor.lhs.false ], [ true, %if.else.18 ], [ %tobool36, %lor.rhs ]
  %lor.ext = zext i1 %30 to i32
  store i32 %lor.ext, i32* @flag_intra_SAD, align 4
  br label %if.end

if.end:                                           ; preds = %lor.end, %if.then.12
  br label %if.end.37

if.end.37:                                        ; preds = %if.end, %if.then.6
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.3
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @UMHEX_skip_intrabk_SAD(i32 %best_mode, i32 %ref_max) #0 {
entry:
  %best_mode.addr = alloca i32, align 4
  %ref_max.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %ref = alloca i32, align 4
  store i32 %best_mode, i32* %best_mode.addr, align 4
  store i32 %ref_max, i32* %ref_max.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 0
  %1 = load i32, i32* %number, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %best_mode.addr, align 4
  %cmp1 = icmp eq i32 %2, 9
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %3 = load i32, i32* %best_mode.addr, align 4
  %cmp2 = icmp eq i32 %3, 10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %4 = phi i1 [ true, %if.then ], [ %cmp2, %lor.rhs ]
  %cond = select i1 %4, i32 1, i32 0
  %conv = trunc i32 %cond to i8
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 39
  %6 = load i32, i32* %pix_x, align 4
  %shr = ashr i32 %6, 4
  %idxprom = sext i32 %shr to i64
  %7 = load i8*, i8** @flag_intra, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %lor.end, %entry
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 5
  %9 = load i32, i32* %type, align 4
  %cmp3 = icmp ne i32 %9, 2
  br i1 %cmp3, label %land.lhs.true, label %if.end.53

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, i32* %best_mode.addr, align 4
  %cmp5 = icmp eq i32 %10, 9
  br i1 %cmp5, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %11 = load i32, i32* %best_mode.addr, align 4
  %cmp7 = icmp eq i32 %11, 10
  br i1 %cmp7, label %if.then.9, label %if.end.53

if.then.9:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.50, %if.then.9
  %12 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %12, 4
  br i1 %cmp10, label %for.body, label %for.end.52

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.47, %for.body
  %13 = load i32, i32* %j, align 4
  %cmp13 = icmp slt i32 %13, 4
  br i1 %cmp13, label %for.body.15, label %for.end.49

for.body.15:                                      ; preds = %for.cond.12
  store i32 0, i32* %k, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.44, %for.body.15
  %14 = load i32, i32* %k, align 4
  %cmp17 = icmp slt i32 %14, 9
  br i1 %cmp17, label %for.body.19, label %for.end.46

for.body.19:                                      ; preds = %for.cond.16
  %15 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %15 to i64
  %16 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %16 to i64
  %17 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %17 to i64
  %18 = load i32***, i32**** @fastme_l0_cost, align 8
  %arrayidx23 = getelementptr inbounds i32**, i32*** %18, i64 %idxprom22
  %19 = load i32**, i32*** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i32*, i32** %19, i64 %idxprom21
  %20 = load i32*, i32** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %20, i64 %idxprom20
  store i32 0, i32* %arrayidx25, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %21 to i64
  %22 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %22 to i64
  %23 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %23 to i64
  %24 = load i32***, i32**** @fastme_l1_cost, align 8
  %arrayidx29 = getelementptr inbounds i32**, i32*** %24, i64 %idxprom28
  %25 = load i32**, i32*** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds i32*, i32** %25, i64 %idxprom27
  %26 = load i32*, i32** %arrayidx30, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %26, i64 %idxprom26
  store i32 0, i32* %arrayidx31, align 4
  store i32 0, i32* %ref, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc, %for.body.19
  %27 = load i32, i32* %ref, align 4
  %28 = load i32, i32* %ref_max.addr, align 4
  %cmp33 = icmp slt i32 %27, %28
  br i1 %cmp33, label %for.body.35, label %for.end

for.body.35:                                      ; preds = %for.cond.32
  %29 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %29 to i64
  %30 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %30 to i64
  %31 = load i32, i32* %k, align 4
  %idxprom38 = sext i32 %31 to i64
  %32 = load i32, i32* %ref, align 4
  %idxprom39 = sext i32 %32 to i64
  %33 = load i32****, i32***** @fastme_ref_cost, align 8
  %arrayidx40 = getelementptr inbounds i32***, i32**** %33, i64 %idxprom39
  %34 = load i32***, i32**** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i32**, i32*** %34, i64 %idxprom38
  %35 = load i32**, i32*** %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds i32*, i32** %35, i64 %idxprom37
  %36 = load i32*, i32** %arrayidx42, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %36, i64 %idxprom36
  store i32 0, i32* %arrayidx43, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.35
  %37 = load i32, i32* %ref, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %ref, align 4
  br label %for.cond.32

for.end:                                          ; preds = %for.cond.32
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.end
  %38 = load i32, i32* %k, align 4
  %inc45 = add nsw i32 %38, 1
  store i32 %inc45, i32* %k, align 4
  br label %for.cond.16

for.end.46:                                       ; preds = %for.cond.16
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.end.46
  %39 = load i32, i32* %j, align 4
  %inc48 = add nsw i32 %39, 1
  store i32 %inc48, i32* %j, align 4
  br label %for.cond.12

for.end.49:                                       ; preds = %for.cond.12
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.end.49
  %40 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %40, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond

for.end.52:                                       ; preds = %for.cond
  br label %if.end.53

if.end.53:                                        ; preds = %for.end.52, %lor.lhs.false, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @UMHEXBipredIntegerPelBlockMotionSearch(i16* %cur_pic, i16 signext %ref, i32 %list, i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocktype, i16 signext %pred_mv_x1, i16 signext %pred_mv_y1, i16 signext %pred_mv_x2, i16 signext %pred_mv_y2, i16* %mv_x, i16* %mv_y, i16* %s_mv_x, i16* %s_mv_y, i32 %search_range, i32 %min_mcost, i32 %lambda_factor) #0 {
entry:
  %cur_pic.addr = alloca i16*, align 8
  %ref.addr = alloca i16, align 2
  %list.addr = alloca i32, align 4
  %pic_pix_x.addr = alloca i32, align 4
  %pic_pix_y.addr = alloca i32, align 4
  %blocktype.addr = alloca i32, align 4
  %pred_mv_x1.addr = alloca i16, align 2
  %pred_mv_y1.addr = alloca i16, align 2
  %pred_mv_x2.addr = alloca i16, align 2
  %pred_mv_y2.addr = alloca i16, align 2
  %mv_x.addr = alloca i16*, align 8
  %mv_y.addr = alloca i16*, align 8
  %s_mv_x.addr = alloca i16*, align 8
  %s_mv_y.addr = alloca i16*, align 8
  %search_range.addr = alloca i32, align 4
  %min_mcost.addr = alloca i32, align 4
  %lambda_factor.addr = alloca i32, align 4
  %temp_Big_Hexagon_x = alloca [16 x i32], align 16
  %temp_Big_Hexagon_y = alloca [16 x i32], align 16
  %mvshift = alloca i32, align 4
  %search_step = alloca i32, align 4
  %iYMinNow = alloca i32, align 4
  %iXMinNow = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %j = alloca i32, align 4
  %betaFourth_1 = alloca float, align 4
  %betaFourth_2 = alloca float, align 4
  %pos = alloca i32, align 4
  %cand_x = alloca i32, align 4
  %cand_y = alloca i32, align 4
  %mcost = alloca i32, align 4
  %list_offset = alloca i32, align 4
  %blocksize_y = alloca i32, align 4
  %blocksize_x = alloca i32, align 4
  %pred_x1 = alloca i32, align 4
  %pred_y1 = alloca i32, align 4
  %pred_x2 = alloca i32, align 4
  %pred_y2 = alloca i32, align 4
  %center2_x = alloca i16, align 2
  %center2_y = alloca i16, align 2
  %center1_x = alloca i16, align 2
  %center1_y = alloca i16, align 2
  %mb_x = alloca i16, align 2
  %mb_y = alloca i16, align 2
  %block_x = alloca i16, align 2
  %block_y = alloca i16, align 2
  %best_x = alloca i32, align 4
  %best_y = alloca i32, align 4
  %ET_Thred = alloca i32, align 4
  %apply_weights = alloca i16, align 2
  %offset1 = alloca i16, align 2
  %offset2 = alloca i16, align 2
  %N_Bframe = alloca i32, align 4
  %n_Bframe = alloca i32, align 4
  %bipred_mv = alloca i16******, align 8
  store i16* %cur_pic, i16** %cur_pic.addr, align 8
  store i16 %ref, i16* %ref.addr, align 2
  store i32 %list, i32* %list.addr, align 4
  store i32 %pic_pix_x, i32* %pic_pix_x.addr, align 4
  store i32 %pic_pix_y, i32* %pic_pix_y.addr, align 4
  store i32 %blocktype, i32* %blocktype.addr, align 4
  store i16 %pred_mv_x1, i16* %pred_mv_x1.addr, align 2
  store i16 %pred_mv_y1, i16* %pred_mv_y1.addr, align 2
  store i16 %pred_mv_x2, i16* %pred_mv_x2.addr, align 2
  store i16 %pred_mv_y2, i16* %pred_mv_y2.addr, align 2
  store i16* %mv_x, i16** %mv_x.addr, align 8
  store i16* %mv_y, i16** %mv_y.addr, align 8
  store i16* %s_mv_x, i16** %s_mv_x.addr, align 8
  store i16* %s_mv_y, i16** %s_mv_y.addr, align 8
  store i32 %search_range, i32* %search_range.addr, align 4
  store i32 %min_mcost, i32* %min_mcost.addr, align 4
  store i32 %lambda_factor, i32* %lambda_factor.addr, align 4
  store i32 2, i32* %mvshift, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 61
  %3 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %3, i64 %idxprom
  %list_offset1 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 21
  %4 = load i32, i32* %list_offset1, align 4
  store i32 %4, i32* %list_offset, align 4
  %5 = load i32, i32* %blocktype.addr, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 18
  %arrayidx3 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx3, i32 0, i64 1
  %7 = load i32, i32* %arrayidx4, align 4
  store i32 %7, i32* %blocksize_y, align 4
  %8 = load i32, i32* %blocktype.addr, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size6 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 18
  %arrayidx7 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size6, i32 0, i64 %idxprom5
  %arrayidx8 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx7, i32 0, i64 0
  %10 = load i32, i32* %arrayidx8, align 4
  store i32 %10, i32* %blocksize_x, align 4
  %11 = load i32, i32* %pic_pix_x.addr, align 4
  %shl = shl i32 %11, 2
  %12 = load i16, i16* %pred_mv_x1.addr, align 2
  %conv = sext i16 %12 to i32
  %add = add nsw i32 %shl, %conv
  store i32 %add, i32* %pred_x1, align 4
  %13 = load i32, i32* %pic_pix_y.addr, align 4
  %shl9 = shl i32 %13, 2
  %14 = load i16, i16* %pred_mv_y1.addr, align 2
  %conv10 = sext i16 %14 to i32
  %add11 = add nsw i32 %shl9, %conv10
  store i32 %add11, i32* %pred_y1, align 4
  %15 = load i32, i32* %pic_pix_x.addr, align 4
  %shl12 = shl i32 %15, 2
  %16 = load i16, i16* %pred_mv_x2.addr, align 2
  %conv13 = sext i16 %16 to i32
  %add14 = add nsw i32 %shl12, %conv13
  store i32 %add14, i32* %pred_x2, align 4
  %17 = load i32, i32* %pic_pix_y.addr, align 4
  %shl15 = shl i32 %17, 2
  %18 = load i16, i16* %pred_mv_y2.addr, align 2
  %conv16 = sext i16 %18 to i32
  %add17 = add nsw i32 %shl15, %conv16
  store i32 %add17, i32* %pred_y2, align 4
  %19 = load i32, i32* %pic_pix_x.addr, align 4
  %20 = load i16*, i16** %mv_x.addr, align 8
  %21 = load i16, i16* %20, align 2
  %conv18 = sext i16 %21 to i32
  %add19 = add nsw i32 %19, %conv18
  %conv20 = trunc i32 %add19 to i16
  store i16 %conv20, i16* %center2_x, align 2
  %22 = load i32, i32* %pic_pix_y.addr, align 4
  %23 = load i16*, i16** %mv_y.addr, align 8
  %24 = load i16, i16* %23, align 2
  %conv21 = sext i16 %24 to i32
  %add22 = add nsw i32 %22, %conv21
  %conv23 = trunc i32 %add22 to i16
  store i16 %conv23, i16* %center2_y, align 2
  %25 = load i32, i32* %pic_pix_x.addr, align 4
  %26 = load i16*, i16** %s_mv_x.addr, align 8
  %27 = load i16, i16* %26, align 2
  %conv24 = sext i16 %27 to i32
  %add25 = add nsw i32 %25, %conv24
  %conv26 = trunc i32 %add25 to i16
  store i16 %conv26, i16* %center1_x, align 2
  %28 = load i32, i32* %pic_pix_y.addr, align 4
  %29 = load i16*, i16** %s_mv_y.addr, align 8
  %30 = load i16, i16* %29, align 2
  %conv27 = sext i16 %30 to i32
  %add28 = add nsw i32 %28, %conv27
  %conv29 = trunc i32 %add28 to i16
  store i16 %conv29, i16* %center1_y, align 2
  %31 = load i32, i32* %pic_pix_x.addr, align 4
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 43
  %33 = load i32, i32* %opix_x, align 4
  %sub = sub nsw i32 %31, %33
  %conv30 = trunc i32 %sub to i16
  store i16 %conv30, i16* %mb_x, align 2
  %34 = load i32, i32* %pic_pix_y.addr, align 4
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 44
  %36 = load i32, i32* %opix_y, align 4
  %sub31 = sub nsw i32 %34, %36
  %conv32 = trunc i32 %sub31 to i16
  store i16 %conv32, i16* %mb_y, align 2
  %37 = load i16, i16* %mb_x, align 2
  %conv33 = sext i16 %37 to i32
  %shr = ashr i32 %conv33, 2
  %conv34 = trunc i32 %shr to i16
  store i16 %conv34, i16* %block_x, align 2
  %38 = load i16, i16* %mb_y, align 2
  %conv35 = sext i16 %38 to i32
  %shr36 = ashr i32 %conv35, 2
  %conv37 = trunc i32 %shr36 to i16
  store i16 %conv37, i16* %block_y, align 2
  %39 = load i16, i16* %center2_x, align 2
  %conv38 = sext i16 %39 to i32
  store i32 %conv38, i32* %best_x, align 4
  %40 = load i16, i16* %center2_y, align 2
  %conv39 = sext i16 %40 to i32
  store i32 %conv39, i32* %best_y, align 4
  %41 = load i32, i32* %blocktype.addr, align 4
  %idxprom40 = sext i32 %41 to i64
  %arrayidx41 = getelementptr inbounds [8 x i32], [8 x i32]* @Median_Pred_Thd_MB, i32 0, i64 %idxprom40
  %42 = load i32, i32* %arrayidx41, align 4
  store i32 %42, i32* %ET_Thred, align 4
  %43 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %43, i32 0, i32 20
  %44 = load i32, i32* %weighted_bipred_idc, align 4
  %cmp = icmp ugt i32 %44, 0
  %conv42 = zext i1 %cmp to i32
  %conv43 = trunc i32 %conv42 to i16
  store i16 %conv43, i16* %apply_weights, align 2
  %45 = load i16, i16* %apply_weights, align 2
  %conv44 = sext i16 %45 to i32
  %tobool = icmp ne i32 %conv44, 0
  br i1 %tobool, label %cond.true, label %cond.false.59

cond.true:                                        ; preds = %entry
  %46 = load i32, i32* %list.addr, align 4
  %cmp45 = icmp eq i32 %46, 0
  br i1 %cmp45, label %cond.true.47, label %cond.false

cond.true.47:                                     ; preds = %cond.true
  %47 = load i16, i16* %ref.addr, align 2
  %idxprom48 = sext i16 %47 to i64
  %48 = load i32, i32* %list_offset, align 4
  %idxprom49 = sext i32 %48 to i64
  %49 = load i32***, i32**** @wp_offset, align 8
  %arrayidx50 = getelementptr inbounds i32**, i32*** %49, i64 %idxprom49
  %50 = load i32**, i32*** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds i32*, i32** %50, i64 %idxprom48
  %51 = load i32*, i32** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %51, i64 0
  %52 = load i32, i32* %arrayidx52, align 4
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %53 = load i16, i16* %ref.addr, align 2
  %idxprom53 = sext i16 %53 to i64
  %54 = load i32, i32* %list_offset, align 4
  %add54 = add nsw i32 %54, 1
  %idxprom55 = sext i32 %add54 to i64
  %55 = load i32***, i32**** @wp_offset, align 8
  %arrayidx56 = getelementptr inbounds i32**, i32*** %55, i64 %idxprom55
  %56 = load i32**, i32*** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i32*, i32** %56, i64 0
  %57 = load i32*, i32** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %57, i64 %idxprom53
  %58 = load i32, i32* %arrayidx58, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.47
  %cond = phi i32 [ %52, %cond.true.47 ], [ %58, %cond.false ]
  br label %cond.end.60

cond.false.59:                                    ; preds = %entry
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.59, %cond.end
  %cond61 = phi i32 [ %cond, %cond.end ], [ 0, %cond.false.59 ]
  %conv62 = trunc i32 %cond61 to i16
  store i16 %conv62, i16* %offset1, align 2
  %59 = load i16, i16* %apply_weights, align 2
  %conv63 = sext i16 %59 to i32
  %tobool64 = icmp ne i32 %conv63, 0
  br i1 %tobool64, label %cond.true.65, label %cond.false.83

cond.true.65:                                     ; preds = %cond.end.60
  %60 = load i32, i32* %list.addr, align 4
  %cmp66 = icmp eq i32 %60, 0
  br i1 %cmp66, label %cond.true.68, label %cond.false.75

cond.true.68:                                     ; preds = %cond.true.65
  %61 = load i16, i16* %ref.addr, align 2
  %idxprom69 = sext i16 %61 to i64
  %62 = load i32, i32* %list_offset, align 4
  %add70 = add nsw i32 %62, 1
  %idxprom71 = sext i32 %add70 to i64
  %63 = load i32***, i32**** @wp_offset, align 8
  %arrayidx72 = getelementptr inbounds i32**, i32*** %63, i64 %idxprom71
  %64 = load i32**, i32*** %arrayidx72, align 8
  %arrayidx73 = getelementptr inbounds i32*, i32** %64, i64 %idxprom69
  %65 = load i32*, i32** %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %65, i64 0
  %66 = load i32, i32* %arrayidx74, align 4
  br label %cond.end.81

cond.false.75:                                    ; preds = %cond.true.65
  %67 = load i16, i16* %ref.addr, align 2
  %idxprom76 = sext i16 %67 to i64
  %68 = load i32, i32* %list_offset, align 4
  %idxprom77 = sext i32 %68 to i64
  %69 = load i32***, i32**** @wp_offset, align 8
  %arrayidx78 = getelementptr inbounds i32**, i32*** %69, i64 %idxprom77
  %70 = load i32**, i32*** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds i32*, i32** %70, i64 0
  %71 = load i32*, i32** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %71, i64 %idxprom76
  %72 = load i32, i32* %arrayidx80, align 4
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.75, %cond.true.68
  %cond82 = phi i32 [ %66, %cond.true.68 ], [ %72, %cond.false.75 ]
  br label %cond.end.84

cond.false.83:                                    ; preds = %cond.end.60
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.83, %cond.end.81
  %cond85 = phi i32 [ %cond82, %cond.end.81 ], [ 0, %cond.false.83 ]
  %conv86 = trunc i32 %cond85 to i16
  store i16 %conv86, i16* %offset2, align 2
  %73 = load i16, i16* %ref.addr, align 2
  %idxprom87 = sext i16 %73 to i64
  %74 = load i32, i32* %list.addr, align 4
  %75 = load i32, i32* %list_offset, align 4
  %add88 = add nsw i32 %74, %75
  %idxprom89 = sext i32 %add88 to i64
  %arrayidx90 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom89
  %76 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %76, i64 %idxprom87
  %77 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx91, align 8
  %imgY_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %77, i32 0, i32 30
  %78 = load i16****, i16***** %imgY_sub, align 8
  store i16**** %78, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 0), align 8
  %79 = load i32, i32* %list.addr, align 4
  %cmp92 = icmp eq i32 %79, 0
  br i1 %cmp92, label %cond.true.94, label %cond.false.96

cond.true.94:                                     ; preds = %cond.end.84
  %80 = load i32, i32* %list_offset, align 4
  %add95 = add nsw i32 1, %80
  br label %cond.end.97

cond.false.96:                                    ; preds = %cond.end.84
  %81 = load i32, i32* %list_offset, align 4
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.96, %cond.true.94
  %cond98 = phi i32 [ %add95, %cond.true.94 ], [ %81, %cond.false.96 ]
  %idxprom99 = sext i32 %cond98 to i64
  %arrayidx100 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom99
  %82 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx100, align 8
  %arrayidx101 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %82, i64 0
  %83 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx101, align 8
  %imgY_sub102 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %83, i32 0, i32 30
  %84 = load i16****, i16***** %imgY_sub102, align 8
  store i16**** %84, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 0), align 8
  %85 = load i16, i16* %ref.addr, align 2
  %idxprom103 = sext i16 %85 to i64
  %86 = load i32, i32* %list.addr, align 4
  %87 = load i32, i32* %list_offset, align 4
  %add104 = add nsw i32 %86, %87
  %idxprom105 = sext i32 %add104 to i64
  %arrayidx106 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom105
  %88 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx106, align 8
  %arrayidx107 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %88, i64 %idxprom103
  %89 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx107, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %89, i32 0, i32 18
  %90 = load i32, i32* %size_x, align 4
  %conv108 = trunc i32 %90 to i16
  store i16 %conv108, i16* @img_width, align 2
  %91 = load i16, i16* %ref.addr, align 2
  %idxprom109 = sext i16 %91 to i64
  %92 = load i32, i32* %list.addr, align 4
  %93 = load i32, i32* %list_offset, align 4
  %add110 = add nsw i32 %92, %93
  %idxprom111 = sext i32 %add110 to i64
  %arrayidx112 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom111
  %94 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx112, align 8
  %arrayidx113 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %94, i64 %idxprom109
  %95 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx113, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %95, i32 0, i32 19
  %96 = load i32, i32* %size_y, align 4
  %conv114 = trunc i32 %96 to i16
  store i16 %conv114, i16* @img_height, align 2
  %97 = load i16, i16* %ref.addr, align 2
  %idxprom115 = sext i16 %97 to i64
  %98 = load i32, i32* %list.addr, align 4
  %99 = load i32, i32* %list_offset, align 4
  %add116 = add nsw i32 %98, %99
  %idxprom117 = sext i32 %add116 to i64
  %arrayidx118 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom117
  %100 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx118, align 8
  %arrayidx119 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %100, i64 %idxprom115
  %101 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx119, align 8
  %size_x_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %101, i32 0, i32 22
  %102 = load i32, i32* %size_x_pad, align 4
  store i32 %102, i32* @width_pad, align 4
  %103 = load i16, i16* %ref.addr, align 2
  %idxprom120 = sext i16 %103 to i64
  %104 = load i32, i32* %list.addr, align 4
  %105 = load i32, i32* %list_offset, align 4
  %add121 = add nsw i32 %104, %105
  %idxprom122 = sext i32 %add121 to i64
  %arrayidx123 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom122
  %106 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx123, align 8
  %arrayidx124 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %106, i64 %idxprom120
  %107 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx124, align 8
  %size_y_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %107, i32 0, i32 23
  %108 = load i32, i32* %size_y_pad, align 4
  store i32 %108, i32* @height_pad, align 4
  %109 = load i16, i16* %apply_weights, align 2
  %tobool125 = icmp ne i16 %109, 0
  br i1 %tobool125, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.97
  %110 = load i32, i32* %list.addr, align 4
  %cmp126 = icmp eq i32 %110, 0
  br i1 %cmp126, label %cond.true.128, label %cond.false.135

cond.true.128:                                    ; preds = %if.then
  %111 = load i16, i16* %ref.addr, align 2
  %idxprom129 = sext i16 %111 to i64
  %112 = load i32, i32* %list_offset, align 4
  %idxprom130 = sext i32 %112 to i64
  %113 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx131 = getelementptr inbounds i32***, i32**** %113, i64 %idxprom130
  %114 = load i32***, i32**** %arrayidx131, align 8
  %arrayidx132 = getelementptr inbounds i32**, i32*** %114, i64 %idxprom129
  %115 = load i32**, i32*** %arrayidx132, align 8
  %arrayidx133 = getelementptr inbounds i32*, i32** %115, i64 0
  %116 = load i32*, i32** %arrayidx133, align 8
  %arrayidx134 = getelementptr inbounds i32, i32* %116, i64 0
  %117 = load i32, i32* %arrayidx134, align 4
  br label %cond.end.143

cond.false.135:                                   ; preds = %if.then
  %118 = load i16, i16* %ref.addr, align 2
  %idxprom136 = sext i16 %118 to i64
  %119 = load i32, i32* %list_offset, align 4
  %add137 = add nsw i32 %119, 1
  %idxprom138 = sext i32 %add137 to i64
  %120 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx139 = getelementptr inbounds i32***, i32**** %120, i64 %idxprom138
  %121 = load i32***, i32**** %arrayidx139, align 8
  %arrayidx140 = getelementptr inbounds i32**, i32*** %121, i64 0
  %122 = load i32**, i32*** %arrayidx140, align 8
  %arrayidx141 = getelementptr inbounds i32*, i32** %122, i64 %idxprom136
  %123 = load i32*, i32** %arrayidx141, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %123, i64 0
  %124 = load i32, i32* %arrayidx142, align 4
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.false.135, %cond.true.128
  %cond144 = phi i32 [ %117, %cond.true.128 ], [ %124, %cond.false.135 ]
  %conv145 = trunc i32 %cond144 to i16
  store i16 %conv145, i16* @weight1, align 2
  %125 = load i32, i32* %list.addr, align 4
  %cmp146 = icmp eq i32 %125, 0
  br i1 %cmp146, label %cond.true.148, label %cond.false.156

cond.true.148:                                    ; preds = %cond.end.143
  %126 = load i16, i16* %ref.addr, align 2
  %idxprom149 = sext i16 %126 to i64
  %127 = load i32, i32* %list_offset, align 4
  %add150 = add nsw i32 %127, 1
  %idxprom151 = sext i32 %add150 to i64
  %128 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx152 = getelementptr inbounds i32***, i32**** %128, i64 %idxprom151
  %129 = load i32***, i32**** %arrayidx152, align 8
  %arrayidx153 = getelementptr inbounds i32**, i32*** %129, i64 %idxprom149
  %130 = load i32**, i32*** %arrayidx153, align 8
  %arrayidx154 = getelementptr inbounds i32*, i32** %130, i64 0
  %131 = load i32*, i32** %arrayidx154, align 8
  %arrayidx155 = getelementptr inbounds i32, i32* %131, i64 0
  %132 = load i32, i32* %arrayidx155, align 4
  br label %cond.end.163

cond.false.156:                                   ; preds = %cond.end.143
  %133 = load i16, i16* %ref.addr, align 2
  %idxprom157 = sext i16 %133 to i64
  %134 = load i32, i32* %list_offset, align 4
  %idxprom158 = sext i32 %134 to i64
  %135 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx159 = getelementptr inbounds i32***, i32**** %135, i64 %idxprom158
  %136 = load i32***, i32**** %arrayidx159, align 8
  %arrayidx160 = getelementptr inbounds i32**, i32*** %136, i64 0
  %137 = load i32**, i32*** %arrayidx160, align 8
  %arrayidx161 = getelementptr inbounds i32*, i32** %137, i64 %idxprom157
  %138 = load i32*, i32** %arrayidx161, align 8
  %arrayidx162 = getelementptr inbounds i32, i32* %138, i64 0
  %139 = load i32, i32* %arrayidx162, align 4
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.156, %cond.true.148
  %cond164 = phi i32 [ %132, %cond.true.148 ], [ %139, %cond.false.156 ]
  %conv165 = trunc i32 %cond164 to i16
  store i16 %conv165, i16* @weight2, align 2
  %140 = load i16, i16* %offset1, align 2
  %conv166 = sext i16 %140 to i32
  %141 = load i16, i16* %offset2, align 2
  %conv167 = sext i16 %141 to i32
  %add168 = add nsw i32 %conv166, %conv167
  %add169 = add nsw i32 %add168, 1
  %shr170 = ashr i32 %add169, 1
  %conv171 = trunc i32 %shr170 to i16
  store i16 %conv171, i16* @offsetBi, align 2
  store i32 (i16*, i32, i32, i32, i32, i32, i32, i32)* @computeBiPredSAD2, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end.97
  %142 = load i32, i32* @luma_log_weight_denom, align 4
  %shl172 = shl i32 1, %142
  %conv173 = trunc i32 %shl172 to i16
  store i16 %conv173, i16* @weight1, align 2
  %143 = load i32, i32* @luma_log_weight_denom, align 4
  %shl174 = shl i32 1, %143
  %conv175 = trunc i32 %shl174 to i16
  store i16 %conv175, i16* @weight2, align 2
  store i16 0, i16* @offsetBi, align 2
  store i32 (i16*, i32, i32, i32, i32, i32, i32, i32)* @computeBiPredSAD1, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.163
  %144 = load i32, i32* @ChromaMEEnable, align 4
  %tobool176 = icmp ne i32 %144, 0
  br i1 %tobool176, label %if.then.177, label %if.end.383

if.then.177:                                      ; preds = %if.end
  %145 = load i16, i16* %ref.addr, align 2
  %idxprom178 = sext i16 %145 to i64
  %146 = load i32, i32* %list.addr, align 4
  %147 = load i32, i32* %list_offset, align 4
  %add179 = add nsw i32 %146, %147
  %idxprom180 = sext i32 %add179 to i64
  %arrayidx181 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom180
  %148 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx181, align 8
  %arrayidx182 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %148, i64 %idxprom178
  %149 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx182, align 8
  %imgUV_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %149, i32 0, i32 32
  %150 = load i16*****, i16****** %imgUV_sub, align 8
  %arrayidx183 = getelementptr inbounds i16****, i16***** %150, i64 0
  %151 = load i16****, i16***** %arrayidx183, align 8
  store i16**** %151, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 1, i64 0), align 8
  %152 = load i16, i16* %ref.addr, align 2
  %idxprom184 = sext i16 %152 to i64
  %153 = load i32, i32* %list.addr, align 4
  %154 = load i32, i32* %list_offset, align 4
  %add185 = add nsw i32 %153, %154
  %idxprom186 = sext i32 %add185 to i64
  %arrayidx187 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom186
  %155 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx187, align 8
  %arrayidx188 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %155, i64 %idxprom184
  %156 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx188, align 8
  %imgUV_sub189 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %156, i32 0, i32 32
  %157 = load i16*****, i16****** %imgUV_sub189, align 8
  %arrayidx190 = getelementptr inbounds i16****, i16***** %157, i64 1
  %158 = load i16****, i16***** %arrayidx190, align 8
  store i16**** %158, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 1, i64 1), align 8
  %159 = load i32, i32* %list.addr, align 4
  %cmp191 = icmp eq i32 %159, 0
  br i1 %cmp191, label %cond.true.193, label %cond.false.195

cond.true.193:                                    ; preds = %if.then.177
  %160 = load i32, i32* %list_offset, align 4
  %add194 = add nsw i32 1, %160
  br label %cond.end.196

cond.false.195:                                   ; preds = %if.then.177
  %161 = load i32, i32* %list_offset, align 4
  br label %cond.end.196

cond.end.196:                                     ; preds = %cond.false.195, %cond.true.193
  %cond197 = phi i32 [ %add194, %cond.true.193 ], [ %161, %cond.false.195 ]
  %idxprom198 = sext i32 %cond197 to i64
  %arrayidx199 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom198
  %162 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx199, align 8
  %arrayidx200 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %162, i64 0
  %163 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx200, align 8
  %imgUV_sub201 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %163, i32 0, i32 32
  %164 = load i16*****, i16****** %imgUV_sub201, align 8
  %arrayidx202 = getelementptr inbounds i16****, i16***** %164, i64 0
  %165 = load i16****, i16***** %arrayidx202, align 8
  store i16**** %165, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 1, i64 0), align 8
  %166 = load i32, i32* %list.addr, align 4
  %cmp203 = icmp eq i32 %166, 0
  br i1 %cmp203, label %cond.true.205, label %cond.false.207

cond.true.205:                                    ; preds = %cond.end.196
  %167 = load i32, i32* %list_offset, align 4
  %add206 = add nsw i32 1, %167
  br label %cond.end.208

cond.false.207:                                   ; preds = %cond.end.196
  %168 = load i32, i32* %list_offset, align 4
  br label %cond.end.208

cond.end.208:                                     ; preds = %cond.false.207, %cond.true.205
  %cond209 = phi i32 [ %add206, %cond.true.205 ], [ %168, %cond.false.207 ]
  %idxprom210 = sext i32 %cond209 to i64
  %arrayidx211 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom210
  %169 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx211, align 8
  %arrayidx212 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %169, i64 0
  %170 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx212, align 8
  %imgUV_sub213 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %170, i32 0, i32 32
  %171 = load i16*****, i16****** %imgUV_sub213, align 8
  %arrayidx214 = getelementptr inbounds i16****, i16***** %171, i64 1
  %172 = load i16****, i16***** %arrayidx214, align 8
  store i16**** %172, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 1, i64 1), align 8
  %173 = load i16, i16* %ref.addr, align 2
  %idxprom215 = sext i16 %173 to i64
  %174 = load i32, i32* %list.addr, align 4
  %175 = load i32, i32* %list_offset, align 4
  %add216 = add nsw i32 %174, %175
  %idxprom217 = sext i32 %add216 to i64
  %arrayidx218 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom217
  %176 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx218, align 8
  %arrayidx219 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %176, i64 %idxprom215
  %177 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx219, align 8
  %size_x_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %177, i32 0, i32 24
  %178 = load i32, i32* %size_x_cr_pad, align 4
  store i32 %178, i32* @width_pad_cr, align 4
  %179 = load i16, i16* %ref.addr, align 2
  %idxprom220 = sext i16 %179 to i64
  %180 = load i32, i32* %list.addr, align 4
  %181 = load i32, i32* %list_offset, align 4
  %add221 = add nsw i32 %180, %181
  %idxprom222 = sext i32 %add221 to i64
  %arrayidx223 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom222
  %182 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx223, align 8
  %arrayidx224 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %182, i64 %idxprom220
  %183 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx224, align 8
  %size_y_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %183, i32 0, i32 25
  %184 = load i32, i32* %size_y_cr_pad, align 4
  store i32 %184, i32* @height_pad_cr, align 4
  %185 = load i16, i16* %apply_weights, align 2
  %tobool225 = icmp ne i16 %185, 0
  br i1 %tobool225, label %if.then.226, label %if.else.373

if.then.226:                                      ; preds = %cond.end.208
  %186 = load i32, i32* %list.addr, align 4
  %cmp227 = icmp eq i32 %186, 0
  br i1 %cmp227, label %cond.true.229, label %cond.false.236

cond.true.229:                                    ; preds = %if.then.226
  %187 = load i16, i16* %ref.addr, align 2
  %idxprom230 = sext i16 %187 to i64
  %188 = load i32, i32* %list_offset, align 4
  %idxprom231 = sext i32 %188 to i64
  %189 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx232 = getelementptr inbounds i32***, i32**** %189, i64 %idxprom231
  %190 = load i32***, i32**** %arrayidx232, align 8
  %arrayidx233 = getelementptr inbounds i32**, i32*** %190, i64 %idxprom230
  %191 = load i32**, i32*** %arrayidx233, align 8
  %arrayidx234 = getelementptr inbounds i32*, i32** %191, i64 0
  %192 = load i32*, i32** %arrayidx234, align 8
  %arrayidx235 = getelementptr inbounds i32, i32* %192, i64 1
  %193 = load i32, i32* %arrayidx235, align 4
  br label %cond.end.244

cond.false.236:                                   ; preds = %if.then.226
  %194 = load i16, i16* %ref.addr, align 2
  %idxprom237 = sext i16 %194 to i64
  %195 = load i32, i32* %list_offset, align 4
  %add238 = add nsw i32 %195, 1
  %idxprom239 = sext i32 %add238 to i64
  %196 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx240 = getelementptr inbounds i32***, i32**** %196, i64 %idxprom239
  %197 = load i32***, i32**** %arrayidx240, align 8
  %arrayidx241 = getelementptr inbounds i32**, i32*** %197, i64 0
  %198 = load i32**, i32*** %arrayidx241, align 8
  %arrayidx242 = getelementptr inbounds i32*, i32** %198, i64 %idxprom237
  %199 = load i32*, i32** %arrayidx242, align 8
  %arrayidx243 = getelementptr inbounds i32, i32* %199, i64 1
  %200 = load i32, i32* %arrayidx243, align 4
  br label %cond.end.244

cond.end.244:                                     ; preds = %cond.false.236, %cond.true.229
  %cond245 = phi i32 [ %193, %cond.true.229 ], [ %200, %cond.false.236 ]
  %conv246 = trunc i32 %cond245 to i16
  store i16 %conv246, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight1_cr, i32 0, i64 0), align 2
  %201 = load i32, i32* %list.addr, align 4
  %cmp247 = icmp eq i32 %201, 0
  br i1 %cmp247, label %cond.true.249, label %cond.false.256

cond.true.249:                                    ; preds = %cond.end.244
  %202 = load i16, i16* %ref.addr, align 2
  %idxprom250 = sext i16 %202 to i64
  %203 = load i32, i32* %list_offset, align 4
  %idxprom251 = sext i32 %203 to i64
  %204 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx252 = getelementptr inbounds i32***, i32**** %204, i64 %idxprom251
  %205 = load i32***, i32**** %arrayidx252, align 8
  %arrayidx253 = getelementptr inbounds i32**, i32*** %205, i64 %idxprom250
  %206 = load i32**, i32*** %arrayidx253, align 8
  %arrayidx254 = getelementptr inbounds i32*, i32** %206, i64 0
  %207 = load i32*, i32** %arrayidx254, align 8
  %arrayidx255 = getelementptr inbounds i32, i32* %207, i64 2
  %208 = load i32, i32* %arrayidx255, align 4
  br label %cond.end.264

cond.false.256:                                   ; preds = %cond.end.244
  %209 = load i16, i16* %ref.addr, align 2
  %idxprom257 = sext i16 %209 to i64
  %210 = load i32, i32* %list_offset, align 4
  %add258 = add nsw i32 %210, 1
  %idxprom259 = sext i32 %add258 to i64
  %211 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx260 = getelementptr inbounds i32***, i32**** %211, i64 %idxprom259
  %212 = load i32***, i32**** %arrayidx260, align 8
  %arrayidx261 = getelementptr inbounds i32**, i32*** %212, i64 0
  %213 = load i32**, i32*** %arrayidx261, align 8
  %arrayidx262 = getelementptr inbounds i32*, i32** %213, i64 %idxprom257
  %214 = load i32*, i32** %arrayidx262, align 8
  %arrayidx263 = getelementptr inbounds i32, i32* %214, i64 2
  %215 = load i32, i32* %arrayidx263, align 4
  br label %cond.end.264

cond.end.264:                                     ; preds = %cond.false.256, %cond.true.249
  %cond265 = phi i32 [ %208, %cond.true.249 ], [ %215, %cond.false.256 ]
  %conv266 = trunc i32 %cond265 to i16
  store i16 %conv266, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight1_cr, i32 0, i64 1), align 2
  %216 = load i32, i32* %list.addr, align 4
  %cmp267 = icmp eq i32 %216, 0
  br i1 %cmp267, label %cond.true.269, label %cond.false.277

cond.true.269:                                    ; preds = %cond.end.264
  %217 = load i16, i16* %ref.addr, align 2
  %idxprom270 = sext i16 %217 to i64
  %218 = load i32, i32* %list_offset, align 4
  %add271 = add nsw i32 %218, 1
  %idxprom272 = sext i32 %add271 to i64
  %219 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx273 = getelementptr inbounds i32***, i32**** %219, i64 %idxprom272
  %220 = load i32***, i32**** %arrayidx273, align 8
  %arrayidx274 = getelementptr inbounds i32**, i32*** %220, i64 %idxprom270
  %221 = load i32**, i32*** %arrayidx274, align 8
  %arrayidx275 = getelementptr inbounds i32*, i32** %221, i64 0
  %222 = load i32*, i32** %arrayidx275, align 8
  %arrayidx276 = getelementptr inbounds i32, i32* %222, i64 1
  %223 = load i32, i32* %arrayidx276, align 4
  br label %cond.end.284

cond.false.277:                                   ; preds = %cond.end.264
  %224 = load i16, i16* %ref.addr, align 2
  %idxprom278 = sext i16 %224 to i64
  %225 = load i32, i32* %list_offset, align 4
  %idxprom279 = sext i32 %225 to i64
  %226 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx280 = getelementptr inbounds i32***, i32**** %226, i64 %idxprom279
  %227 = load i32***, i32**** %arrayidx280, align 8
  %arrayidx281 = getelementptr inbounds i32**, i32*** %227, i64 0
  %228 = load i32**, i32*** %arrayidx281, align 8
  %arrayidx282 = getelementptr inbounds i32*, i32** %228, i64 %idxprom278
  %229 = load i32*, i32** %arrayidx282, align 8
  %arrayidx283 = getelementptr inbounds i32, i32* %229, i64 1
  %230 = load i32, i32* %arrayidx283, align 4
  br label %cond.end.284

cond.end.284:                                     ; preds = %cond.false.277, %cond.true.269
  %cond285 = phi i32 [ %223, %cond.true.269 ], [ %230, %cond.false.277 ]
  %conv286 = trunc i32 %cond285 to i16
  store i16 %conv286, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight2_cr, i32 0, i64 0), align 2
  %231 = load i32, i32* %list.addr, align 4
  %cmp287 = icmp eq i32 %231, 0
  br i1 %cmp287, label %cond.true.289, label %cond.false.297

cond.true.289:                                    ; preds = %cond.end.284
  %232 = load i16, i16* %ref.addr, align 2
  %idxprom290 = sext i16 %232 to i64
  %233 = load i32, i32* %list_offset, align 4
  %add291 = add nsw i32 %233, 1
  %idxprom292 = sext i32 %add291 to i64
  %234 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx293 = getelementptr inbounds i32***, i32**** %234, i64 %idxprom292
  %235 = load i32***, i32**** %arrayidx293, align 8
  %arrayidx294 = getelementptr inbounds i32**, i32*** %235, i64 %idxprom290
  %236 = load i32**, i32*** %arrayidx294, align 8
  %arrayidx295 = getelementptr inbounds i32*, i32** %236, i64 0
  %237 = load i32*, i32** %arrayidx295, align 8
  %arrayidx296 = getelementptr inbounds i32, i32* %237, i64 2
  %238 = load i32, i32* %arrayidx296, align 4
  br label %cond.end.304

cond.false.297:                                   ; preds = %cond.end.284
  %239 = load i16, i16* %ref.addr, align 2
  %idxprom298 = sext i16 %239 to i64
  %240 = load i32, i32* %list_offset, align 4
  %idxprom299 = sext i32 %240 to i64
  %241 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx300 = getelementptr inbounds i32***, i32**** %241, i64 %idxprom299
  %242 = load i32***, i32**** %arrayidx300, align 8
  %arrayidx301 = getelementptr inbounds i32**, i32*** %242, i64 0
  %243 = load i32**, i32*** %arrayidx301, align 8
  %arrayidx302 = getelementptr inbounds i32*, i32** %243, i64 %idxprom298
  %244 = load i32*, i32** %arrayidx302, align 8
  %arrayidx303 = getelementptr inbounds i32, i32* %244, i64 2
  %245 = load i32, i32* %arrayidx303, align 4
  br label %cond.end.304

cond.end.304:                                     ; preds = %cond.false.297, %cond.true.289
  %cond305 = phi i32 [ %238, %cond.true.289 ], [ %245, %cond.false.297 ]
  %conv306 = trunc i32 %cond305 to i16
  store i16 %conv306, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight2_cr, i32 0, i64 1), align 2
  %246 = load i32, i32* %list.addr, align 4
  %cmp307 = icmp eq i32 %246, 0
  br i1 %cmp307, label %cond.true.309, label %cond.false.324

cond.true.309:                                    ; preds = %cond.end.304
  %247 = load i16, i16* %ref.addr, align 2
  %idxprom310 = sext i16 %247 to i64
  %248 = load i32, i32* %list_offset, align 4
  %idxprom311 = sext i32 %248 to i64
  %249 = load i32***, i32**** @wp_offset, align 8
  %arrayidx312 = getelementptr inbounds i32**, i32*** %249, i64 %idxprom311
  %250 = load i32**, i32*** %arrayidx312, align 8
  %arrayidx313 = getelementptr inbounds i32*, i32** %250, i64 %idxprom310
  %251 = load i32*, i32** %arrayidx313, align 8
  %arrayidx314 = getelementptr inbounds i32, i32* %251, i64 1
  %252 = load i32, i32* %arrayidx314, align 4
  %253 = load i16, i16* %ref.addr, align 2
  %idxprom315 = sext i16 %253 to i64
  %254 = load i32, i32* %list_offset, align 4
  %add316 = add nsw i32 %254, 1
  %idxprom317 = sext i32 %add316 to i64
  %255 = load i32***, i32**** @wp_offset, align 8
  %arrayidx318 = getelementptr inbounds i32**, i32*** %255, i64 %idxprom317
  %256 = load i32**, i32*** %arrayidx318, align 8
  %arrayidx319 = getelementptr inbounds i32*, i32** %256, i64 %idxprom315
  %257 = load i32*, i32** %arrayidx319, align 8
  %arrayidx320 = getelementptr inbounds i32, i32* %257, i64 1
  %258 = load i32, i32* %arrayidx320, align 4
  %add321 = add nsw i32 %252, %258
  %add322 = add nsw i32 %add321, 1
  %shr323 = ashr i32 %add322, 1
  br label %cond.end.337

cond.false.324:                                   ; preds = %cond.end.304
  %259 = load i32, i32* %list_offset, align 4
  %add325 = add nsw i32 %259, 1
  %idxprom326 = sext i32 %add325 to i64
  %260 = load i32***, i32**** @wp_offset, align 8
  %arrayidx327 = getelementptr inbounds i32**, i32*** %260, i64 %idxprom326
  %261 = load i32**, i32*** %arrayidx327, align 8
  %arrayidx328 = getelementptr inbounds i32*, i32** %261, i64 0
  %262 = load i32*, i32** %arrayidx328, align 8
  %arrayidx329 = getelementptr inbounds i32, i32* %262, i64 1
  %263 = load i32, i32* %arrayidx329, align 4
  %264 = load i32, i32* %list_offset, align 4
  %idxprom330 = sext i32 %264 to i64
  %265 = load i32***, i32**** @wp_offset, align 8
  %arrayidx331 = getelementptr inbounds i32**, i32*** %265, i64 %idxprom330
  %266 = load i32**, i32*** %arrayidx331, align 8
  %arrayidx332 = getelementptr inbounds i32*, i32** %266, i64 0
  %267 = load i32*, i32** %arrayidx332, align 8
  %arrayidx333 = getelementptr inbounds i32, i32* %267, i64 1
  %268 = load i32, i32* %arrayidx333, align 4
  %add334 = add nsw i32 %263, %268
  %add335 = add nsw i32 %add334, 1
  %shr336 = ashr i32 %add335, 1
  br label %cond.end.337

cond.end.337:                                     ; preds = %cond.false.324, %cond.true.309
  %cond338 = phi i32 [ %shr323, %cond.true.309 ], [ %shr336, %cond.false.324 ]
  %conv339 = trunc i32 %cond338 to i16
  store i16 %conv339, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @offsetBi_cr, i32 0, i64 0), align 2
  %269 = load i32, i32* %list.addr, align 4
  %cmp340 = icmp eq i32 %269, 0
  br i1 %cmp340, label %cond.true.342, label %cond.false.357

cond.true.342:                                    ; preds = %cond.end.337
  %270 = load i16, i16* %ref.addr, align 2
  %idxprom343 = sext i16 %270 to i64
  %271 = load i32, i32* %list_offset, align 4
  %idxprom344 = sext i32 %271 to i64
  %272 = load i32***, i32**** @wp_offset, align 8
  %arrayidx345 = getelementptr inbounds i32**, i32*** %272, i64 %idxprom344
  %273 = load i32**, i32*** %arrayidx345, align 8
  %arrayidx346 = getelementptr inbounds i32*, i32** %273, i64 %idxprom343
  %274 = load i32*, i32** %arrayidx346, align 8
  %arrayidx347 = getelementptr inbounds i32, i32* %274, i64 2
  %275 = load i32, i32* %arrayidx347, align 4
  %276 = load i16, i16* %ref.addr, align 2
  %idxprom348 = sext i16 %276 to i64
  %277 = load i32, i32* %list_offset, align 4
  %add349 = add nsw i32 %277, 1
  %idxprom350 = sext i32 %add349 to i64
  %278 = load i32***, i32**** @wp_offset, align 8
  %arrayidx351 = getelementptr inbounds i32**, i32*** %278, i64 %idxprom350
  %279 = load i32**, i32*** %arrayidx351, align 8
  %arrayidx352 = getelementptr inbounds i32*, i32** %279, i64 %idxprom348
  %280 = load i32*, i32** %arrayidx352, align 8
  %arrayidx353 = getelementptr inbounds i32, i32* %280, i64 2
  %281 = load i32, i32* %arrayidx353, align 4
  %add354 = add nsw i32 %275, %281
  %add355 = add nsw i32 %add354, 1
  %shr356 = ashr i32 %add355, 1
  br label %cond.end.370

cond.false.357:                                   ; preds = %cond.end.337
  %282 = load i32, i32* %list_offset, align 4
  %add358 = add nsw i32 %282, 1
  %idxprom359 = sext i32 %add358 to i64
  %283 = load i32***, i32**** @wp_offset, align 8
  %arrayidx360 = getelementptr inbounds i32**, i32*** %283, i64 %idxprom359
  %284 = load i32**, i32*** %arrayidx360, align 8
  %arrayidx361 = getelementptr inbounds i32*, i32** %284, i64 0
  %285 = load i32*, i32** %arrayidx361, align 8
  %arrayidx362 = getelementptr inbounds i32, i32* %285, i64 2
  %286 = load i32, i32* %arrayidx362, align 4
  %287 = load i32, i32* %list_offset, align 4
  %idxprom363 = sext i32 %287 to i64
  %288 = load i32***, i32**** @wp_offset, align 8
  %arrayidx364 = getelementptr inbounds i32**, i32*** %288, i64 %idxprom363
  %289 = load i32**, i32*** %arrayidx364, align 8
  %arrayidx365 = getelementptr inbounds i32*, i32** %289, i64 0
  %290 = load i32*, i32** %arrayidx365, align 8
  %arrayidx366 = getelementptr inbounds i32, i32* %290, i64 2
  %291 = load i32, i32* %arrayidx366, align 4
  %add367 = add nsw i32 %286, %291
  %add368 = add nsw i32 %add367, 1
  %shr369 = ashr i32 %add368, 1
  br label %cond.end.370

cond.end.370:                                     ; preds = %cond.false.357, %cond.true.342
  %cond371 = phi i32 [ %shr356, %cond.true.342 ], [ %shr369, %cond.false.357 ]
  %conv372 = trunc i32 %cond371 to i16
  store i16 %conv372, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @offsetBi_cr, i32 0, i64 1), align 2
  br label %if.end.382

if.else.373:                                      ; preds = %cond.end.208
  %292 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl374 = shl i32 1, %292
  %conv375 = trunc i32 %shl374 to i16
  store i16 %conv375, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight1_cr, i32 0, i64 0), align 2
  %293 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl376 = shl i32 1, %293
  %conv377 = trunc i32 %shl376 to i16
  store i16 %conv377, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight1_cr, i32 0, i64 1), align 2
  %294 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl378 = shl i32 1, %294
  %conv379 = trunc i32 %shl378 to i16
  store i16 %conv379, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight2_cr, i32 0, i64 0), align 2
  %295 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl380 = shl i32 1, %295
  %conv381 = trunc i32 %shl380 to i16
  store i16 %conv381, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight2_cr, i32 0, i64 1), align 2
  store i16 0, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @offsetBi_cr, i32 0, i64 0), align 2
  store i16 0, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @offsetBi_cr, i32 0, i64 1), align 2
  br label %if.end.382

if.end.382:                                       ; preds = %if.else.373, %cond.end.370
  br label %if.end.383

if.end.383:                                       ; preds = %if.end.382, %if.end
  %296 = load i16, i16* %center2_x, align 2
  %conv384 = sext i16 %296 to i32
  %297 = load i32, i32* %search_range.addr, align 4
  %cmp385 = icmp sgt i32 %conv384, %297
  br i1 %cmp385, label %land.lhs.true, label %if.else.407

land.lhs.true:                                    ; preds = %if.end.383
  %298 = load i16, i16* %center2_x, align 2
  %conv387 = sext i16 %298 to i32
  %299 = load i16, i16* @img_width, align 2
  %conv388 = sext i16 %299 to i32
  %sub389 = sub nsw i32 %conv388, 1
  %300 = load i32, i32* %search_range.addr, align 4
  %sub390 = sub nsw i32 %sub389, %300
  %301 = load i32, i32* %blocksize_x, align 4
  %sub391 = sub nsw i32 %sub390, %301
  %cmp392 = icmp slt i32 %conv387, %sub391
  br i1 %cmp392, label %land.lhs.true.394, label %if.else.407

land.lhs.true.394:                                ; preds = %land.lhs.true
  %302 = load i16, i16* %center2_y, align 2
  %conv395 = sext i16 %302 to i32
  %303 = load i32, i32* %search_range.addr, align 4
  %cmp396 = icmp sgt i32 %conv395, %303
  br i1 %cmp396, label %land.lhs.true.398, label %if.else.407

land.lhs.true.398:                                ; preds = %land.lhs.true.394
  %304 = load i16, i16* %center2_y, align 2
  %conv399 = sext i16 %304 to i32
  %305 = load i16, i16* @img_height, align 2
  %conv400 = sext i16 %305 to i32
  %sub401 = sub nsw i32 %conv400, 1
  %306 = load i32, i32* %search_range.addr, align 4
  %sub402 = sub nsw i32 %sub401, %306
  %307 = load i32, i32* %blocksize_y, align 4
  %sub403 = sub nsw i32 %sub402, %307
  %cmp404 = icmp slt i32 %conv399, %sub403
  br i1 %cmp404, label %if.then.406, label %if.else.407

if.then.406:                                      ; preds = %land.lhs.true.398
  store i32 0, i32* @bipred2_access_method, align 4
  br label %if.end.408

if.else.407:                                      ; preds = %land.lhs.true.398, %land.lhs.true.394, %land.lhs.true, %if.end.383
  store i32 1, i32* @bipred2_access_method, align 4
  br label %if.end.408

if.end.408:                                       ; preds = %if.else.407, %if.then.406
  %308 = load i16, i16* %center1_y, align 2
  %conv409 = sext i16 %308 to i32
  %309 = load i32, i32* %search_range.addr, align 4
  %cmp410 = icmp sgt i32 %conv409, %309
  br i1 %cmp410, label %land.lhs.true.412, label %if.else.421

land.lhs.true.412:                                ; preds = %if.end.408
  %310 = load i16, i16* %center1_y, align 2
  %conv413 = sext i16 %310 to i32
  %311 = load i16, i16* @img_height, align 2
  %conv414 = sext i16 %311 to i32
  %sub415 = sub nsw i32 %conv414, 1
  %312 = load i32, i32* %search_range.addr, align 4
  %sub416 = sub nsw i32 %sub415, %312
  %313 = load i32, i32* %blocksize_y, align 4
  %sub417 = sub nsw i32 %sub416, %313
  %cmp418 = icmp slt i32 %conv413, %sub417
  br i1 %cmp418, label %if.then.420, label %if.else.421

if.then.420:                                      ; preds = %land.lhs.true.412
  store i32 0, i32* @bipred1_access_method, align 4
  br label %if.end.422

if.else.421:                                      ; preds = %land.lhs.true.412, %if.end.408
  store i32 1, i32* @bipred1_access_method, align 4
  br label %if.end.422

if.end.422:                                       ; preds = %if.else.421, %if.then.420
  %314 = load i8**, i8*** @McostState, align 8
  %arrayidx423 = getelementptr inbounds i8*, i8** %314, i64 0
  %315 = load i8*, i8** %arrayidx423, align 8
  %316 = load i32, i32* %search_range.addr, align 4
  %mul = mul nsw i32 2, %316
  %add424 = add nsw i32 %mul, 1
  %317 = load i32, i32* %search_range.addr, align 4
  %mul425 = mul nsw i32 2, %317
  %add426 = add nsw i32 %mul425, 1
  %mul427 = mul nsw i32 %add424, %add426
  %conv428 = sext i32 %mul427 to i64
  call void @llvm.memset.p0i8.i64(i8* %315, i8 0, i64 %conv428, i32 1, i1 false)
  %318 = load i16, i16* %center2_x, align 2
  %conv429 = sext i16 %318 to i32
  store i32 %conv429, i32* %cand_x, align 4
  %319 = load i16, i16* %center2_y, align 2
  %conv430 = sext i16 %319 to i32
  store i32 %conv430, i32* %cand_y, align 4
  %320 = load i32, i32* %lambda_factor.addr, align 4
  %321 = load i16, i16* %center1_x, align 2
  %conv431 = sext i16 %321 to i32
  %322 = load i32, i32* %mvshift, align 4
  %shl432 = shl i32 %conv431, %322
  %323 = load i32, i32* %pred_x1, align 4
  %sub433 = sub nsw i32 %shl432, %323
  %idxprom434 = sext i32 %sub433 to i64
  %324 = load i32*, i32** @mvbits, align 8
  %arrayidx435 = getelementptr inbounds i32, i32* %324, i64 %idxprom434
  %325 = load i32, i32* %arrayidx435, align 4
  %326 = load i16, i16* %center1_y, align 2
  %conv436 = sext i16 %326 to i32
  %327 = load i32, i32* %mvshift, align 4
  %shl437 = shl i32 %conv436, %327
  %328 = load i32, i32* %pred_y1, align 4
  %sub438 = sub nsw i32 %shl437, %328
  %idxprom439 = sext i32 %sub438 to i64
  %329 = load i32*, i32** @mvbits, align 8
  %arrayidx440 = getelementptr inbounds i32, i32* %329, i64 %idxprom439
  %330 = load i32, i32* %arrayidx440, align 4
  %add441 = add nsw i32 %325, %330
  %mul442 = mul nsw i32 %320, %add441
  %shr443 = ashr i32 %mul442, 16
  store i32 %shr443, i32* %mcost, align 4
  %331 = load i32, i32* %lambda_factor.addr, align 4
  %332 = load i32, i32* %cand_x, align 4
  %333 = load i32, i32* %mvshift, align 4
  %shl444 = shl i32 %332, %333
  %334 = load i32, i32* %pred_x2, align 4
  %sub445 = sub nsw i32 %shl444, %334
  %idxprom446 = sext i32 %sub445 to i64
  %335 = load i32*, i32** @mvbits, align 8
  %arrayidx447 = getelementptr inbounds i32, i32* %335, i64 %idxprom446
  %336 = load i32, i32* %arrayidx447, align 4
  %337 = load i32, i32* %cand_y, align 4
  %338 = load i32, i32* %mvshift, align 4
  %shl448 = shl i32 %337, %338
  %339 = load i32, i32* %pred_y2, align 4
  %sub449 = sub nsw i32 %shl448, %339
  %idxprom450 = sext i32 %sub449 to i64
  %340 = load i32*, i32** @mvbits, align 8
  %arrayidx451 = getelementptr inbounds i32, i32* %340, i64 %idxprom450
  %341 = load i32, i32* %arrayidx451, align 4
  %add452 = add nsw i32 %336, %341
  %mul453 = mul nsw i32 %331, %add452
  %shr454 = ashr i32 %mul453, 16
  %342 = load i32, i32* %mcost, align 4
  %add455 = add nsw i32 %342, %shr454
  store i32 %add455, i32* %mcost, align 4
  %343 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %344 = load i16*, i16** %cur_pic.addr, align 8
  %345 = load i32, i32* %blocksize_y, align 4
  %346 = load i32, i32* %blocksize_x, align 4
  %347 = load i16, i16* %center1_x, align 2
  %conv456 = sext i16 %347 to i32
  %shl457 = shl i32 %conv456, 2
  %add458 = add nsw i32 %shl457, 80
  %348 = load i16, i16* %center1_y, align 2
  %conv459 = sext i16 %348 to i32
  %shl460 = shl i32 %conv459, 2
  %add461 = add nsw i32 %shl460, 80
  %349 = load i32, i32* %cand_x, align 4
  %shl462 = shl i32 %349, 2
  %add463 = add nsw i32 %shl462, 80
  %350 = load i32, i32* %cand_y, align 4
  %shl464 = shl i32 %350, 2
  %add465 = add nsw i32 %shl464, 80
  %call = call i32 %343(i16* %344, i32 %345, i32 %346, i32 2147483647, i32 %add458, i32 %add461, i32 %add463, i32 %add465)
  %351 = load i32, i32* %mcost, align 4
  %add466 = add nsw i32 %351, %call
  store i32 %add466, i32* %mcost, align 4
  %352 = load i32, i32* %search_range.addr, align 4
  %idxprom467 = sext i32 %352 to i64
  %353 = load i32, i32* %search_range.addr, align 4
  %idxprom468 = sext i32 %353 to i64
  %354 = load i8**, i8*** @McostState, align 8
  %arrayidx469 = getelementptr inbounds i8*, i8** %354, i64 %idxprom468
  %355 = load i8*, i8** %arrayidx469, align 8
  %arrayidx470 = getelementptr inbounds i8, i8* %355, i64 %idxprom467
  store i8 1, i8* %arrayidx470, align 1
  %356 = load i32, i32* %mcost, align 4
  %357 = load i32, i32* %min_mcost.addr, align 4
  %cmp471 = icmp slt i32 %356, %357
  br i1 %cmp471, label %if.then.473, label %if.end.474

if.then.473:                                      ; preds = %if.end.422
  %358 = load i32, i32* %mcost, align 4
  store i32 %358, i32* %min_mcost.addr, align 4
  %359 = load i32, i32* %cand_x, align 4
  store i32 %359, i32* %best_x, align 4
  %360 = load i32, i32* %cand_y, align 4
  store i32 %360, i32* %best_y, align 4
  br label %if.end.474

if.end.474:                                       ; preds = %if.then.473, %if.end.422
  %361 = load i32, i32* %best_x, align 4
  store i32 %361, i32* %iXMinNow, align 4
  %362 = load i32, i32* %best_y, align 4
  store i32 %362, i32* %iYMinNow, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.474
  %363 = load i32, i32* %m, align 4
  %cmp475 = icmp slt i32 %363, 4
  br i1 %cmp475, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %364 = load i32, i32* %iXMinNow, align 4
  %365 = load i32, i32* %m, align 4
  %idxprom477 = sext i32 %365 to i64
  %arrayidx478 = getelementptr inbounds [4 x i32], [4 x i32]* @Diamond_x, i32 0, i64 %idxprom477
  %366 = load i32, i32* %arrayidx478, align 4
  %add479 = add nsw i32 %364, %366
  store i32 %add479, i32* %cand_x, align 4
  %367 = load i32, i32* %iYMinNow, align 4
  %368 = load i32, i32* %m, align 4
  %idxprom480 = sext i32 %368 to i64
  %arrayidx481 = getelementptr inbounds [4 x i32], [4 x i32]* @Diamond_y, i32 0, i64 %idxprom480
  %369 = load i32, i32* %arrayidx481, align 4
  %add482 = add nsw i32 %367, %369
  store i32 %add482, i32* %cand_y, align 4
  %370 = load i32, i32* %cand_x, align 4
  %371 = load i16, i16* %center2_x, align 2
  %conv483 = sext i16 %371 to i32
  %sub484 = sub nsw i32 %370, %conv483
  %call485 = call i32 @iabs(i32 %sub484)
  %372 = load i32, i32* %search_range.addr, align 4
  %cmp486 = icmp sle i32 %call485, %372
  br i1 %cmp486, label %land.lhs.true.488, label %if.end.564

land.lhs.true.488:                                ; preds = %for.body
  %373 = load i32, i32* %cand_y, align 4
  %374 = load i16, i16* %center2_y, align 2
  %conv489 = sext i16 %374 to i32
  %sub490 = sub nsw i32 %373, %conv489
  %call491 = call i32 @iabs(i32 %sub490)
  %375 = load i32, i32* %search_range.addr, align 4
  %cmp492 = icmp sle i32 %call491, %375
  br i1 %cmp492, label %if.then.494, label %if.end.564

if.then.494:                                      ; preds = %land.lhs.true.488
  %376 = load i32, i32* %cand_x, align 4
  %377 = load i16, i16* %center2_x, align 2
  %conv495 = sext i16 %377 to i32
  %sub496 = sub nsw i32 %376, %conv495
  %378 = load i32, i32* %search_range.addr, align 4
  %add497 = add nsw i32 %sub496, %378
  %idxprom498 = sext i32 %add497 to i64
  %379 = load i32, i32* %cand_y, align 4
  %380 = load i16, i16* %center2_y, align 2
  %conv499 = sext i16 %380 to i32
  %sub500 = sub nsw i32 %379, %conv499
  %381 = load i32, i32* %search_range.addr, align 4
  %add501 = add nsw i32 %sub500, %381
  %idxprom502 = sext i32 %add501 to i64
  %382 = load i8**, i8*** @McostState, align 8
  %arrayidx503 = getelementptr inbounds i8*, i8** %382, i64 %idxprom502
  %383 = load i8*, i8** %arrayidx503, align 8
  %arrayidx504 = getelementptr inbounds i8, i8* %383, i64 %idxprom498
  %384 = load i8, i8* %arrayidx504, align 1
  %tobool505 = icmp ne i8 %384, 0
  br i1 %tobool505, label %if.end.563, label %if.then.506

if.then.506:                                      ; preds = %if.then.494
  %385 = load i32, i32* %lambda_factor.addr, align 4
  %386 = load i16, i16* %center1_x, align 2
  %conv507 = sext i16 %386 to i32
  %387 = load i32, i32* %mvshift, align 4
  %shl508 = shl i32 %conv507, %387
  %388 = load i32, i32* %pred_x1, align 4
  %sub509 = sub nsw i32 %shl508, %388
  %idxprom510 = sext i32 %sub509 to i64
  %389 = load i32*, i32** @mvbits, align 8
  %arrayidx511 = getelementptr inbounds i32, i32* %389, i64 %idxprom510
  %390 = load i32, i32* %arrayidx511, align 4
  %391 = load i16, i16* %center1_y, align 2
  %conv512 = sext i16 %391 to i32
  %392 = load i32, i32* %mvshift, align 4
  %shl513 = shl i32 %conv512, %392
  %393 = load i32, i32* %pred_y1, align 4
  %sub514 = sub nsw i32 %shl513, %393
  %idxprom515 = sext i32 %sub514 to i64
  %394 = load i32*, i32** @mvbits, align 8
  %arrayidx516 = getelementptr inbounds i32, i32* %394, i64 %idxprom515
  %395 = load i32, i32* %arrayidx516, align 4
  %add517 = add nsw i32 %390, %395
  %mul518 = mul nsw i32 %385, %add517
  %shr519 = ashr i32 %mul518, 16
  store i32 %shr519, i32* %mcost, align 4
  %396 = load i32, i32* %lambda_factor.addr, align 4
  %397 = load i32, i32* %cand_x, align 4
  %398 = load i32, i32* %mvshift, align 4
  %shl520 = shl i32 %397, %398
  %399 = load i32, i32* %pred_x2, align 4
  %sub521 = sub nsw i32 %shl520, %399
  %idxprom522 = sext i32 %sub521 to i64
  %400 = load i32*, i32** @mvbits, align 8
  %arrayidx523 = getelementptr inbounds i32, i32* %400, i64 %idxprom522
  %401 = load i32, i32* %arrayidx523, align 4
  %402 = load i32, i32* %cand_y, align 4
  %403 = load i32, i32* %mvshift, align 4
  %shl524 = shl i32 %402, %403
  %404 = load i32, i32* %pred_y2, align 4
  %sub525 = sub nsw i32 %shl524, %404
  %idxprom526 = sext i32 %sub525 to i64
  %405 = load i32*, i32** @mvbits, align 8
  %arrayidx527 = getelementptr inbounds i32, i32* %405, i64 %idxprom526
  %406 = load i32, i32* %arrayidx527, align 4
  %add528 = add nsw i32 %401, %406
  %mul529 = mul nsw i32 %396, %add528
  %shr530 = ashr i32 %mul529, 16
  %407 = load i32, i32* %mcost, align 4
  %add531 = add nsw i32 %407, %shr530
  store i32 %add531, i32* %mcost, align 4
  %408 = load i32, i32* %mcost, align 4
  %409 = load i32, i32* %min_mcost.addr, align 4
  %cmp532 = icmp slt i32 %408, %409
  br i1 %cmp532, label %if.then.534, label %if.end.562

if.then.534:                                      ; preds = %if.then.506
  %410 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %411 = load i16*, i16** %cur_pic.addr, align 8
  %412 = load i32, i32* %blocksize_y, align 4
  %413 = load i32, i32* %blocksize_x, align 4
  %414 = load i32, i32* %min_mcost.addr, align 4
  %415 = load i32, i32* %mcost, align 4
  %sub535 = sub nsw i32 %414, %415
  %416 = load i16, i16* %center1_x, align 2
  %conv536 = sext i16 %416 to i32
  %shl537 = shl i32 %conv536, 2
  %add538 = add nsw i32 %shl537, 80
  %417 = load i16, i16* %center1_y, align 2
  %conv539 = sext i16 %417 to i32
  %shl540 = shl i32 %conv539, 2
  %add541 = add nsw i32 %shl540, 80
  %418 = load i32, i32* %cand_x, align 4
  %shl542 = shl i32 %418, 2
  %add543 = add nsw i32 %shl542, 80
  %419 = load i32, i32* %cand_y, align 4
  %shl544 = shl i32 %419, 2
  %add545 = add nsw i32 %shl544, 80
  %call546 = call i32 %410(i16* %411, i32 %412, i32 %413, i32 %sub535, i32 %add538, i32 %add541, i32 %add543, i32 %add545)
  %420 = load i32, i32* %mcost, align 4
  %add547 = add nsw i32 %420, %call546
  store i32 %add547, i32* %mcost, align 4
  %421 = load i32, i32* %cand_x, align 4
  %422 = load i16, i16* %center2_x, align 2
  %conv548 = sext i16 %422 to i32
  %sub549 = sub nsw i32 %421, %conv548
  %423 = load i32, i32* %search_range.addr, align 4
  %add550 = add nsw i32 %sub549, %423
  %idxprom551 = sext i32 %add550 to i64
  %424 = load i32, i32* %cand_y, align 4
  %425 = load i16, i16* %center2_y, align 2
  %conv552 = sext i16 %425 to i32
  %sub553 = sub nsw i32 %424, %conv552
  %426 = load i32, i32* %search_range.addr, align 4
  %add554 = add nsw i32 %sub553, %426
  %idxprom555 = sext i32 %add554 to i64
  %427 = load i8**, i8*** @McostState, align 8
  %arrayidx556 = getelementptr inbounds i8*, i8** %427, i64 %idxprom555
  %428 = load i8*, i8** %arrayidx556, align 8
  %arrayidx557 = getelementptr inbounds i8, i8* %428, i64 %idxprom551
  store i8 1, i8* %arrayidx557, align 1
  %429 = load i32, i32* %mcost, align 4
  %430 = load i32, i32* %min_mcost.addr, align 4
  %cmp558 = icmp slt i32 %429, %430
  br i1 %cmp558, label %if.then.560, label %if.end.561

if.then.560:                                      ; preds = %if.then.534
  %431 = load i32, i32* %cand_x, align 4
  store i32 %431, i32* %best_x, align 4
  %432 = load i32, i32* %cand_y, align 4
  store i32 %432, i32* %best_y, align 4
  %433 = load i32, i32* %mcost, align 4
  store i32 %433, i32* %min_mcost.addr, align 4
  br label %if.end.561

if.end.561:                                       ; preds = %if.then.560, %if.then.534
  br label %if.end.562

if.end.562:                                       ; preds = %if.end.561, %if.then.506
  br label %if.end.563

if.end.563:                                       ; preds = %if.end.562, %if.then.494
  br label %if.end.564

if.end.564:                                       ; preds = %if.end.563, %land.lhs.true.488, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.564
  %434 = load i32, i32* %m, align 4
  %inc = add nsw i32 %434, 1
  store i32 %inc, i32* %m, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %435 = load i16, i16* %center2_x, align 2
  %conv565 = sext i16 %435 to i32
  %436 = load i32, i32* %pic_pix_x.addr, align 4
  %cmp566 = icmp ne i32 %conv565, %436
  br i1 %cmp566, label %if.then.571, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %437 = load i16, i16* %center2_y, align 2
  %conv568 = sext i16 %437 to i32
  %438 = load i32, i32* %pic_pix_y.addr, align 4
  %cmp569 = icmp ne i32 %conv568, %438
  br i1 %cmp569, label %if.then.571, label %if.end.749

if.then.571:                                      ; preds = %lor.lhs.false, %for.end
  %439 = load i32, i32* %pic_pix_x.addr, align 4
  store i32 %439, i32* %cand_x, align 4
  %440 = load i32, i32* %pic_pix_y.addr, align 4
  store i32 %440, i32* %cand_y, align 4
  %441 = load i32, i32* %cand_x, align 4
  %442 = load i16, i16* %center2_x, align 2
  %conv572 = sext i16 %442 to i32
  %sub573 = sub nsw i32 %441, %conv572
  %call574 = call i32 @iabs(i32 %sub573)
  %443 = load i32, i32* %search_range.addr, align 4
  %cmp575 = icmp sle i32 %call574, %443
  br i1 %cmp575, label %land.lhs.true.577, label %if.end.653

land.lhs.true.577:                                ; preds = %if.then.571
  %444 = load i32, i32* %cand_y, align 4
  %445 = load i16, i16* %center2_y, align 2
  %conv578 = sext i16 %445 to i32
  %sub579 = sub nsw i32 %444, %conv578
  %call580 = call i32 @iabs(i32 %sub579)
  %446 = load i32, i32* %search_range.addr, align 4
  %cmp581 = icmp sle i32 %call580, %446
  br i1 %cmp581, label %if.then.583, label %if.end.653

if.then.583:                                      ; preds = %land.lhs.true.577
  %447 = load i32, i32* %cand_x, align 4
  %448 = load i16, i16* %center2_x, align 2
  %conv584 = sext i16 %448 to i32
  %sub585 = sub nsw i32 %447, %conv584
  %449 = load i32, i32* %search_range.addr, align 4
  %add586 = add nsw i32 %sub585, %449
  %idxprom587 = sext i32 %add586 to i64
  %450 = load i32, i32* %cand_y, align 4
  %451 = load i16, i16* %center2_y, align 2
  %conv588 = sext i16 %451 to i32
  %sub589 = sub nsw i32 %450, %conv588
  %452 = load i32, i32* %search_range.addr, align 4
  %add590 = add nsw i32 %sub589, %452
  %idxprom591 = sext i32 %add590 to i64
  %453 = load i8**, i8*** @McostState, align 8
  %arrayidx592 = getelementptr inbounds i8*, i8** %453, i64 %idxprom591
  %454 = load i8*, i8** %arrayidx592, align 8
  %arrayidx593 = getelementptr inbounds i8, i8* %454, i64 %idxprom587
  %455 = load i8, i8* %arrayidx593, align 1
  %tobool594 = icmp ne i8 %455, 0
  br i1 %tobool594, label %if.end.652, label %if.then.595

if.then.595:                                      ; preds = %if.then.583
  %456 = load i32, i32* %lambda_factor.addr, align 4
  %457 = load i16, i16* %center1_x, align 2
  %conv596 = sext i16 %457 to i32
  %458 = load i32, i32* %mvshift, align 4
  %shl597 = shl i32 %conv596, %458
  %459 = load i32, i32* %pred_x1, align 4
  %sub598 = sub nsw i32 %shl597, %459
  %idxprom599 = sext i32 %sub598 to i64
  %460 = load i32*, i32** @mvbits, align 8
  %arrayidx600 = getelementptr inbounds i32, i32* %460, i64 %idxprom599
  %461 = load i32, i32* %arrayidx600, align 4
  %462 = load i16, i16* %center1_y, align 2
  %conv601 = sext i16 %462 to i32
  %463 = load i32, i32* %mvshift, align 4
  %shl602 = shl i32 %conv601, %463
  %464 = load i32, i32* %pred_y1, align 4
  %sub603 = sub nsw i32 %shl602, %464
  %idxprom604 = sext i32 %sub603 to i64
  %465 = load i32*, i32** @mvbits, align 8
  %arrayidx605 = getelementptr inbounds i32, i32* %465, i64 %idxprom604
  %466 = load i32, i32* %arrayidx605, align 4
  %add606 = add nsw i32 %461, %466
  %mul607 = mul nsw i32 %456, %add606
  %shr608 = ashr i32 %mul607, 16
  store i32 %shr608, i32* %mcost, align 4
  %467 = load i32, i32* %lambda_factor.addr, align 4
  %468 = load i32, i32* %cand_x, align 4
  %469 = load i32, i32* %mvshift, align 4
  %shl609 = shl i32 %468, %469
  %470 = load i32, i32* %pred_x2, align 4
  %sub610 = sub nsw i32 %shl609, %470
  %idxprom611 = sext i32 %sub610 to i64
  %471 = load i32*, i32** @mvbits, align 8
  %arrayidx612 = getelementptr inbounds i32, i32* %471, i64 %idxprom611
  %472 = load i32, i32* %arrayidx612, align 4
  %473 = load i32, i32* %cand_y, align 4
  %474 = load i32, i32* %mvshift, align 4
  %shl613 = shl i32 %473, %474
  %475 = load i32, i32* %pred_y2, align 4
  %sub614 = sub nsw i32 %shl613, %475
  %idxprom615 = sext i32 %sub614 to i64
  %476 = load i32*, i32** @mvbits, align 8
  %arrayidx616 = getelementptr inbounds i32, i32* %476, i64 %idxprom615
  %477 = load i32, i32* %arrayidx616, align 4
  %add617 = add nsw i32 %472, %477
  %mul618 = mul nsw i32 %467, %add617
  %shr619 = ashr i32 %mul618, 16
  %478 = load i32, i32* %mcost, align 4
  %add620 = add nsw i32 %478, %shr619
  store i32 %add620, i32* %mcost, align 4
  %479 = load i32, i32* %mcost, align 4
  %480 = load i32, i32* %min_mcost.addr, align 4
  %cmp621 = icmp slt i32 %479, %480
  br i1 %cmp621, label %if.then.623, label %if.end.651

if.then.623:                                      ; preds = %if.then.595
  %481 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %482 = load i16*, i16** %cur_pic.addr, align 8
  %483 = load i32, i32* %blocksize_y, align 4
  %484 = load i32, i32* %blocksize_x, align 4
  %485 = load i32, i32* %min_mcost.addr, align 4
  %486 = load i32, i32* %mcost, align 4
  %sub624 = sub nsw i32 %485, %486
  %487 = load i16, i16* %center1_x, align 2
  %conv625 = sext i16 %487 to i32
  %shl626 = shl i32 %conv625, 2
  %add627 = add nsw i32 %shl626, 80
  %488 = load i16, i16* %center1_y, align 2
  %conv628 = sext i16 %488 to i32
  %shl629 = shl i32 %conv628, 2
  %add630 = add nsw i32 %shl629, 80
  %489 = load i32, i32* %cand_x, align 4
  %shl631 = shl i32 %489, 2
  %add632 = add nsw i32 %shl631, 80
  %490 = load i32, i32* %cand_y, align 4
  %shl633 = shl i32 %490, 2
  %add634 = add nsw i32 %shl633, 80
  %call635 = call i32 %481(i16* %482, i32 %483, i32 %484, i32 %sub624, i32 %add627, i32 %add630, i32 %add632, i32 %add634)
  %491 = load i32, i32* %mcost, align 4
  %add636 = add nsw i32 %491, %call635
  store i32 %add636, i32* %mcost, align 4
  %492 = load i32, i32* %cand_x, align 4
  %493 = load i16, i16* %center2_x, align 2
  %conv637 = sext i16 %493 to i32
  %sub638 = sub nsw i32 %492, %conv637
  %494 = load i32, i32* %search_range.addr, align 4
  %add639 = add nsw i32 %sub638, %494
  %idxprom640 = sext i32 %add639 to i64
  %495 = load i32, i32* %cand_y, align 4
  %496 = load i16, i16* %center2_y, align 2
  %conv641 = sext i16 %496 to i32
  %sub642 = sub nsw i32 %495, %conv641
  %497 = load i32, i32* %search_range.addr, align 4
  %add643 = add nsw i32 %sub642, %497
  %idxprom644 = sext i32 %add643 to i64
  %498 = load i8**, i8*** @McostState, align 8
  %arrayidx645 = getelementptr inbounds i8*, i8** %498, i64 %idxprom644
  %499 = load i8*, i8** %arrayidx645, align 8
  %arrayidx646 = getelementptr inbounds i8, i8* %499, i64 %idxprom640
  store i8 1, i8* %arrayidx646, align 1
  %500 = load i32, i32* %mcost, align 4
  %501 = load i32, i32* %min_mcost.addr, align 4
  %cmp647 = icmp slt i32 %500, %501
  br i1 %cmp647, label %if.then.649, label %if.end.650

if.then.649:                                      ; preds = %if.then.623
  %502 = load i32, i32* %cand_x, align 4
  store i32 %502, i32* %best_x, align 4
  %503 = load i32, i32* %cand_y, align 4
  store i32 %503, i32* %best_y, align 4
  %504 = load i32, i32* %mcost, align 4
  store i32 %504, i32* %min_mcost.addr, align 4
  br label %if.end.650

if.end.650:                                       ; preds = %if.then.649, %if.then.623
  br label %if.end.651

if.end.651:                                       ; preds = %if.end.650, %if.then.595
  br label %if.end.652

if.end.652:                                       ; preds = %if.end.651, %if.then.583
  br label %if.end.653

if.end.653:                                       ; preds = %if.end.652, %land.lhs.true.577, %if.then.571
  %505 = load i32, i32* %best_x, align 4
  store i32 %505, i32* %iXMinNow, align 4
  %506 = load i32, i32* %best_y, align 4
  store i32 %506, i32* %iYMinNow, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.654

for.cond.654:                                     ; preds = %for.inc.746, %if.end.653
  %507 = load i32, i32* %m, align 4
  %cmp655 = icmp slt i32 %507, 4
  br i1 %cmp655, label %for.body.657, label %for.end.748

for.body.657:                                     ; preds = %for.cond.654
  %508 = load i32, i32* %iXMinNow, align 4
  %509 = load i32, i32* %m, align 4
  %idxprom658 = sext i32 %509 to i64
  %arrayidx659 = getelementptr inbounds [4 x i32], [4 x i32]* @Diamond_x, i32 0, i64 %idxprom658
  %510 = load i32, i32* %arrayidx659, align 4
  %add660 = add nsw i32 %508, %510
  store i32 %add660, i32* %cand_x, align 4
  %511 = load i32, i32* %iYMinNow, align 4
  %512 = load i32, i32* %m, align 4
  %idxprom661 = sext i32 %512 to i64
  %arrayidx662 = getelementptr inbounds [4 x i32], [4 x i32]* @Diamond_y, i32 0, i64 %idxprom661
  %513 = load i32, i32* %arrayidx662, align 4
  %add663 = add nsw i32 %511, %513
  store i32 %add663, i32* %cand_y, align 4
  %514 = load i32, i32* %cand_x, align 4
  %515 = load i16, i16* %center2_x, align 2
  %conv664 = sext i16 %515 to i32
  %sub665 = sub nsw i32 %514, %conv664
  %call666 = call i32 @iabs(i32 %sub665)
  %516 = load i32, i32* %search_range.addr, align 4
  %cmp667 = icmp sle i32 %call666, %516
  br i1 %cmp667, label %land.lhs.true.669, label %if.end.745

land.lhs.true.669:                                ; preds = %for.body.657
  %517 = load i32, i32* %cand_y, align 4
  %518 = load i16, i16* %center2_y, align 2
  %conv670 = sext i16 %518 to i32
  %sub671 = sub nsw i32 %517, %conv670
  %call672 = call i32 @iabs(i32 %sub671)
  %519 = load i32, i32* %search_range.addr, align 4
  %cmp673 = icmp sle i32 %call672, %519
  br i1 %cmp673, label %if.then.675, label %if.end.745

if.then.675:                                      ; preds = %land.lhs.true.669
  %520 = load i32, i32* %cand_x, align 4
  %521 = load i16, i16* %center2_x, align 2
  %conv676 = sext i16 %521 to i32
  %sub677 = sub nsw i32 %520, %conv676
  %522 = load i32, i32* %search_range.addr, align 4
  %add678 = add nsw i32 %sub677, %522
  %idxprom679 = sext i32 %add678 to i64
  %523 = load i32, i32* %cand_y, align 4
  %524 = load i16, i16* %center2_y, align 2
  %conv680 = sext i16 %524 to i32
  %sub681 = sub nsw i32 %523, %conv680
  %525 = load i32, i32* %search_range.addr, align 4
  %add682 = add nsw i32 %sub681, %525
  %idxprom683 = sext i32 %add682 to i64
  %526 = load i8**, i8*** @McostState, align 8
  %arrayidx684 = getelementptr inbounds i8*, i8** %526, i64 %idxprom683
  %527 = load i8*, i8** %arrayidx684, align 8
  %arrayidx685 = getelementptr inbounds i8, i8* %527, i64 %idxprom679
  %528 = load i8, i8* %arrayidx685, align 1
  %tobool686 = icmp ne i8 %528, 0
  br i1 %tobool686, label %if.end.744, label %if.then.687

if.then.687:                                      ; preds = %if.then.675
  %529 = load i32, i32* %lambda_factor.addr, align 4
  %530 = load i16, i16* %center1_x, align 2
  %conv688 = sext i16 %530 to i32
  %531 = load i32, i32* %mvshift, align 4
  %shl689 = shl i32 %conv688, %531
  %532 = load i32, i32* %pred_x1, align 4
  %sub690 = sub nsw i32 %shl689, %532
  %idxprom691 = sext i32 %sub690 to i64
  %533 = load i32*, i32** @mvbits, align 8
  %arrayidx692 = getelementptr inbounds i32, i32* %533, i64 %idxprom691
  %534 = load i32, i32* %arrayidx692, align 4
  %535 = load i16, i16* %center1_y, align 2
  %conv693 = sext i16 %535 to i32
  %536 = load i32, i32* %mvshift, align 4
  %shl694 = shl i32 %conv693, %536
  %537 = load i32, i32* %pred_y1, align 4
  %sub695 = sub nsw i32 %shl694, %537
  %idxprom696 = sext i32 %sub695 to i64
  %538 = load i32*, i32** @mvbits, align 8
  %arrayidx697 = getelementptr inbounds i32, i32* %538, i64 %idxprom696
  %539 = load i32, i32* %arrayidx697, align 4
  %add698 = add nsw i32 %534, %539
  %mul699 = mul nsw i32 %529, %add698
  %shr700 = ashr i32 %mul699, 16
  store i32 %shr700, i32* %mcost, align 4
  %540 = load i32, i32* %lambda_factor.addr, align 4
  %541 = load i32, i32* %cand_x, align 4
  %542 = load i32, i32* %mvshift, align 4
  %shl701 = shl i32 %541, %542
  %543 = load i32, i32* %pred_x2, align 4
  %sub702 = sub nsw i32 %shl701, %543
  %idxprom703 = sext i32 %sub702 to i64
  %544 = load i32*, i32** @mvbits, align 8
  %arrayidx704 = getelementptr inbounds i32, i32* %544, i64 %idxprom703
  %545 = load i32, i32* %arrayidx704, align 4
  %546 = load i32, i32* %cand_y, align 4
  %547 = load i32, i32* %mvshift, align 4
  %shl705 = shl i32 %546, %547
  %548 = load i32, i32* %pred_y2, align 4
  %sub706 = sub nsw i32 %shl705, %548
  %idxprom707 = sext i32 %sub706 to i64
  %549 = load i32*, i32** @mvbits, align 8
  %arrayidx708 = getelementptr inbounds i32, i32* %549, i64 %idxprom707
  %550 = load i32, i32* %arrayidx708, align 4
  %add709 = add nsw i32 %545, %550
  %mul710 = mul nsw i32 %540, %add709
  %shr711 = ashr i32 %mul710, 16
  %551 = load i32, i32* %mcost, align 4
  %add712 = add nsw i32 %551, %shr711
  store i32 %add712, i32* %mcost, align 4
  %552 = load i32, i32* %mcost, align 4
  %553 = load i32, i32* %min_mcost.addr, align 4
  %cmp713 = icmp slt i32 %552, %553
  br i1 %cmp713, label %if.then.715, label %if.end.743

if.then.715:                                      ; preds = %if.then.687
  %554 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %555 = load i16*, i16** %cur_pic.addr, align 8
  %556 = load i32, i32* %blocksize_y, align 4
  %557 = load i32, i32* %blocksize_x, align 4
  %558 = load i32, i32* %min_mcost.addr, align 4
  %559 = load i32, i32* %mcost, align 4
  %sub716 = sub nsw i32 %558, %559
  %560 = load i16, i16* %center1_x, align 2
  %conv717 = sext i16 %560 to i32
  %shl718 = shl i32 %conv717, 2
  %add719 = add nsw i32 %shl718, 80
  %561 = load i16, i16* %center1_y, align 2
  %conv720 = sext i16 %561 to i32
  %shl721 = shl i32 %conv720, 2
  %add722 = add nsw i32 %shl721, 80
  %562 = load i32, i32* %cand_x, align 4
  %shl723 = shl i32 %562, 2
  %add724 = add nsw i32 %shl723, 80
  %563 = load i32, i32* %cand_y, align 4
  %shl725 = shl i32 %563, 2
  %add726 = add nsw i32 %shl725, 80
  %call727 = call i32 %554(i16* %555, i32 %556, i32 %557, i32 %sub716, i32 %add719, i32 %add722, i32 %add724, i32 %add726)
  %564 = load i32, i32* %mcost, align 4
  %add728 = add nsw i32 %564, %call727
  store i32 %add728, i32* %mcost, align 4
  %565 = load i32, i32* %cand_x, align 4
  %566 = load i16, i16* %center2_x, align 2
  %conv729 = sext i16 %566 to i32
  %sub730 = sub nsw i32 %565, %conv729
  %567 = load i32, i32* %search_range.addr, align 4
  %add731 = add nsw i32 %sub730, %567
  %idxprom732 = sext i32 %add731 to i64
  %568 = load i32, i32* %cand_y, align 4
  %569 = load i16, i16* %center2_y, align 2
  %conv733 = sext i16 %569 to i32
  %sub734 = sub nsw i32 %568, %conv733
  %570 = load i32, i32* %search_range.addr, align 4
  %add735 = add nsw i32 %sub734, %570
  %idxprom736 = sext i32 %add735 to i64
  %571 = load i8**, i8*** @McostState, align 8
  %arrayidx737 = getelementptr inbounds i8*, i8** %571, i64 %idxprom736
  %572 = load i8*, i8** %arrayidx737, align 8
  %arrayidx738 = getelementptr inbounds i8, i8* %572, i64 %idxprom732
  store i8 1, i8* %arrayidx738, align 1
  %573 = load i32, i32* %mcost, align 4
  %574 = load i32, i32* %min_mcost.addr, align 4
  %cmp739 = icmp slt i32 %573, %574
  br i1 %cmp739, label %if.then.741, label %if.end.742

if.then.741:                                      ; preds = %if.then.715
  %575 = load i32, i32* %cand_x, align 4
  store i32 %575, i32* %best_x, align 4
  %576 = load i32, i32* %cand_y, align 4
  store i32 %576, i32* %best_y, align 4
  %577 = load i32, i32* %mcost, align 4
  store i32 %577, i32* %min_mcost.addr, align 4
  br label %if.end.742

if.end.742:                                       ; preds = %if.then.741, %if.then.715
  br label %if.end.743

if.end.743:                                       ; preds = %if.end.742, %if.then.687
  br label %if.end.744

if.end.744:                                       ; preds = %if.end.743, %if.then.675
  br label %if.end.745

if.end.745:                                       ; preds = %if.end.744, %land.lhs.true.669, %for.body.657
  br label %for.inc.746

for.inc.746:                                      ; preds = %if.end.745
  %578 = load i32, i32* %m, align 4
  %inc747 = add nsw i32 %578, 1
  store i32 %inc747, i32* %m, align 4
  br label %for.cond.654

for.end.748:                                      ; preds = %for.cond.654
  br label %if.end.749

if.end.749:                                       ; preds = %for.end.748, %lor.lhs.false
  %579 = load i32, i32* %min_mcost.addr, align 4
  %580 = load i32, i32* %ET_Thred, align 4
  %cmp750 = icmp slt i32 %579, %580
  br i1 %cmp750, label %if.then.752, label %if.else.753

if.then.752:                                      ; preds = %if.end.749
  br label %terminate_step

if.else.753:                                      ; preds = %if.end.749
  store i32 0, i32* %N_Bframe, align 4
  store i32 0, i32* %n_Bframe, align 4
  %581 = load i32, i32* %list.addr, align 4
  %tobool754 = icmp ne i32 %581, 0
  br i1 %tobool754, label %cond.true.755, label %cond.false.756

cond.true.755:                                    ; preds = %if.else.753
  %582 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %582, i32 0, i32 81
  %583 = load i16******, i16******* %bipred_mv1, align 8
  br label %cond.end.757

cond.false.756:                                   ; preds = %if.else.753
  %584 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %584, i32 0, i32 82
  %585 = load i16******, i16******* %bipred_mv2, align 8
  br label %cond.end.757

cond.end.757:                                     ; preds = %cond.false.756, %cond.true.755
  %cond758 = phi i16****** [ %583, %cond.true.755 ], [ %585, %cond.false.756 ]
  store i16****** %cond758, i16******* %bipred_mv, align 8
  %586 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %586, i32 0, i32 40
  %587 = load i32, i32* %successive_Bframe, align 4
  store i32 %587, i32* %N_Bframe, align 4
  %588 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @frame_ctr, i32 0, i64 1), align 4
  %589 = load i32, i32* %N_Bframe, align 4
  %add759 = add nsw i32 %589, 1
  %rem = srem i32 %588, %add759
  store i32 %rem, i32* %n_Bframe, align 4
  %590 = load i32, i32* %list.addr, align 4
  %cmp760 = icmp eq i32 %590, 0
  br i1 %cmp760, label %if.then.762, label %if.end.838

if.then.762:                                      ; preds = %cond.end.757
  %591 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_picture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %591, i32 0, i32 110
  %592 = load i32, i32* %field_picture, align 4
  %tobool763 = icmp ne i32 %592, 0
  br i1 %tobool763, label %if.then.764, label %if.else.800

if.then.764:                                      ; preds = %if.then.762
  %593 = load i32, i32* %blocktype.addr, align 4
  %idxprom765 = sext i32 %593 to i64
  %594 = load i16, i16* %block_x, align 2
  %idxprom766 = sext i16 %594 to i64
  %595 = load i16, i16* %block_y, align 2
  %idxprom767 = sext i16 %595 to i64
  %596 = load i16******, i16******* %bipred_mv, align 8
  %arrayidx768 = getelementptr inbounds i16*****, i16****** %596, i64 %idxprom767
  %597 = load i16*****, i16****** %arrayidx768, align 8
  %arrayidx769 = getelementptr inbounds i16****, i16***** %597, i64 %idxprom766
  %598 = load i16****, i16***** %arrayidx769, align 8
  %arrayidx770 = getelementptr inbounds i16***, i16**** %598, i64 1
  %599 = load i16***, i16**** %arrayidx770, align 8
  %arrayidx771 = getelementptr inbounds i16**, i16*** %599, i64 0
  %600 = load i16**, i16*** %arrayidx771, align 8
  %arrayidx772 = getelementptr inbounds i16*, i16** %600, i64 %idxprom765
  %601 = load i16*, i16** %arrayidx772, align 8
  %arrayidx773 = getelementptr inbounds i16, i16* %601, i64 0
  %602 = load i16, i16* %arrayidx773, align 2
  %conv774 = sext i16 %602 to i32
  %603 = load i32, i32* %n_Bframe, align 4
  %sub775 = sub nsw i32 0, %603
  %mul776 = mul nsw i32 %conv774, %sub775
  %conv777 = sitofp i32 %mul776 to float
  %604 = load i32, i32* %N_Bframe, align 4
  %605 = load i32, i32* %n_Bframe, align 4
  %sub778 = sub nsw i32 %604, %605
  %conv779 = sitofp i32 %sub778 to float
  %add780 = fadd float %conv779, 1.000000e+00
  %div = fdiv float %conv777, %add780
  %conv781 = fptosi float %div to i32
  store i32 %conv781, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_ref, i32 0, i64 0), align 4
  %606 = load i32, i32* %blocktype.addr, align 4
  %idxprom782 = sext i32 %606 to i64
  %607 = load i16, i16* %block_x, align 2
  %idxprom783 = sext i16 %607 to i64
  %608 = load i16, i16* %block_y, align 2
  %idxprom784 = sext i16 %608 to i64
  %609 = load i16******, i16******* %bipred_mv, align 8
  %arrayidx785 = getelementptr inbounds i16*****, i16****** %609, i64 %idxprom784
  %610 = load i16*****, i16****** %arrayidx785, align 8
  %arrayidx786 = getelementptr inbounds i16****, i16***** %610, i64 %idxprom783
  %611 = load i16****, i16***** %arrayidx786, align 8
  %arrayidx787 = getelementptr inbounds i16***, i16**** %611, i64 1
  %612 = load i16***, i16**** %arrayidx787, align 8
  %arrayidx788 = getelementptr inbounds i16**, i16*** %612, i64 0
  %613 = load i16**, i16*** %arrayidx788, align 8
  %arrayidx789 = getelementptr inbounds i16*, i16** %613, i64 %idxprom782
  %614 = load i16*, i16** %arrayidx789, align 8
  %arrayidx790 = getelementptr inbounds i16, i16* %614, i64 1
  %615 = load i16, i16* %arrayidx790, align 2
  %conv791 = sext i16 %615 to i32
  %616 = load i32, i32* %n_Bframe, align 4
  %sub792 = sub nsw i32 0, %616
  %mul793 = mul nsw i32 %conv791, %sub792
  %conv794 = sitofp i32 %mul793 to float
  %617 = load i32, i32* %N_Bframe, align 4
  %618 = load i32, i32* %n_Bframe, align 4
  %sub795 = sub nsw i32 %617, %618
  %conv796 = sitofp i32 %sub795 to float
  %add797 = fadd float %conv796, 1.000000e+00
  %div798 = fdiv float %conv794, %add797
  %conv799 = fptosi float %div798 to i32
  store i32 %conv799, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_ref, i32 0, i64 1), align 4
  br label %if.end.837

if.else.800:                                      ; preds = %if.then.762
  %619 = load i32, i32* %blocktype.addr, align 4
  %idxprom801 = sext i32 %619 to i64
  %620 = load i16, i16* %block_x, align 2
  %idxprom802 = sext i16 %620 to i64
  %621 = load i16, i16* %block_y, align 2
  %idxprom803 = sext i16 %621 to i64
  %622 = load i16******, i16******* %bipred_mv, align 8
  %arrayidx804 = getelementptr inbounds i16*****, i16****** %622, i64 %idxprom803
  %623 = load i16*****, i16****** %arrayidx804, align 8
  %arrayidx805 = getelementptr inbounds i16****, i16***** %623, i64 %idxprom802
  %624 = load i16****, i16***** %arrayidx805, align 8
  %arrayidx806 = getelementptr inbounds i16***, i16**** %624, i64 1
  %625 = load i16***, i16**** %arrayidx806, align 8
  %arrayidx807 = getelementptr inbounds i16**, i16*** %625, i64 0
  %626 = load i16**, i16*** %arrayidx807, align 8
  %arrayidx808 = getelementptr inbounds i16*, i16** %626, i64 %idxprom801
  %627 = load i16*, i16** %arrayidx808, align 8
  %arrayidx809 = getelementptr inbounds i16, i16* %627, i64 0
  %628 = load i16, i16* %arrayidx809, align 2
  %conv810 = sext i16 %628 to i32
  %629 = load i32, i32* %n_Bframe, align 4
  %sub811 = sub nsw i32 0, %629
  %mul812 = mul nsw i32 %conv810, %sub811
  %conv813 = sitofp i32 %mul812 to float
  %630 = load i32, i32* %N_Bframe, align 4
  %631 = load i32, i32* %n_Bframe, align 4
  %sub814 = sub nsw i32 %630, %631
  %conv815 = sitofp i32 %sub814 to float
  %add816 = fadd float %conv815, 1.000000e+00
  %div817 = fdiv float %conv813, %add816
  %conv818 = fptosi float %div817 to i32
  store i32 %conv818, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_ref, i32 0, i64 0), align 4
  %632 = load i32, i32* %blocktype.addr, align 4
  %idxprom819 = sext i32 %632 to i64
  %633 = load i16, i16* %block_x, align 2
  %idxprom820 = sext i16 %633 to i64
  %634 = load i16, i16* %block_y, align 2
  %idxprom821 = sext i16 %634 to i64
  %635 = load i16******, i16******* %bipred_mv, align 8
  %arrayidx822 = getelementptr inbounds i16*****, i16****** %635, i64 %idxprom821
  %636 = load i16*****, i16****** %arrayidx822, align 8
  %arrayidx823 = getelementptr inbounds i16****, i16***** %636, i64 %idxprom820
  %637 = load i16****, i16***** %arrayidx823, align 8
  %arrayidx824 = getelementptr inbounds i16***, i16**** %637, i64 1
  %638 = load i16***, i16**** %arrayidx824, align 8
  %arrayidx825 = getelementptr inbounds i16**, i16*** %638, i64 0
  %639 = load i16**, i16*** %arrayidx825, align 8
  %arrayidx826 = getelementptr inbounds i16*, i16** %639, i64 %idxprom819
  %640 = load i16*, i16** %arrayidx826, align 8
  %arrayidx827 = getelementptr inbounds i16, i16* %640, i64 1
  %641 = load i16, i16* %arrayidx827, align 2
  %conv828 = sext i16 %641 to i32
  %642 = load i32, i32* %n_Bframe, align 4
  %sub829 = sub nsw i32 0, %642
  %mul830 = mul nsw i32 %conv828, %sub829
  %conv831 = sitofp i32 %mul830 to float
  %643 = load i32, i32* %N_Bframe, align 4
  %644 = load i32, i32* %n_Bframe, align 4
  %sub832 = sub nsw i32 %643, %644
  %conv833 = sitofp i32 %sub832 to float
  %add834 = fadd float %conv833, 1.000000e+00
  %div835 = fdiv float %conv831, %add834
  %conv836 = fptosi float %div835 to i32
  store i32 %conv836, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_ref, i32 0, i64 1), align 4
  br label %if.end.837

if.end.837:                                       ; preds = %if.else.800, %if.then.764
  br label %if.end.838

if.end.838:                                       ; preds = %if.end.837, %cond.end.757
  %645 = load i32, i32* @SAD_a, align 4
  %646 = load i32, i32* @SAD_b, align 4
  %call839 = call i32 @imin(i32 %645, i32 %646)
  %647 = load i32, i32* @SAD_c, align 4
  %call840 = call i32 @imin(i32 %call839, i32 %647)
  store i32 %call840, i32* @pred_SAD, align 4
  %648 = load i32, i32* %blocktype.addr, align 4
  %idxprom841 = sext i32 %648 to i64
  %arrayidx842 = getelementptr inbounds [8 x i32], [8 x i32]* @Big_Hexagon_Thd_MB, i32 0, i64 %idxprom841
  %649 = load i32, i32* %arrayidx842, align 4
  store i32 %649, i32* %ET_Thred, align 4
  %650 = load i32, i32* @pred_SAD, align 4
  %cmp843 = icmp eq i32 %650, 0
  br i1 %cmp843, label %if.then.845, label %if.else.846

if.then.845:                                      ; preds = %if.end.838
  store float 0.000000e+00, float* %betaFourth_1, align 4
  store float 0.000000e+00, float* %betaFourth_2, align 4
  br label %if.end.863

if.else.846:                                      ; preds = %if.end.838
  %651 = load i32, i32* %blocktype.addr, align 4
  %idxprom847 = sext i32 %651 to i64
  %arrayidx848 = getelementptr inbounds [8 x float], [8 x float]* @Bsize, i32 0, i64 %idxprom847
  %652 = load float, float* %arrayidx848, align 4
  %653 = load i32, i32* @pred_SAD, align 4
  %654 = load i32, i32* @pred_SAD, align 4
  %mul849 = mul nsw i32 %653, %654
  %conv850 = sitofp i32 %mul849 to float
  %div851 = fdiv float %652, %conv850
  %655 = load i32, i32* %blocktype.addr, align 4
  %idxprom852 = sext i32 %655 to i64
  %arrayidx853 = getelementptr inbounds [8 x float], [8 x float]* @AlphaFourth_1, i32 0, i64 %idxprom852
  %656 = load float, float* %arrayidx853, align 4
  %sub854 = fsub float %div851, %656
  store float %sub854, float* %betaFourth_1, align 4
  %657 = load i32, i32* %blocktype.addr, align 4
  %idxprom855 = sext i32 %657 to i64
  %arrayidx856 = getelementptr inbounds [8 x float], [8 x float]* @Bsize, i32 0, i64 %idxprom855
  %658 = load float, float* %arrayidx856, align 4
  %659 = load i32, i32* @pred_SAD, align 4
  %660 = load i32, i32* @pred_SAD, align 4
  %mul857 = mul nsw i32 %659, %660
  %conv858 = sitofp i32 %mul857 to float
  %div859 = fdiv float %658, %conv858
  %661 = load i32, i32* %blocktype.addr, align 4
  %idxprom860 = sext i32 %661 to i64
  %arrayidx861 = getelementptr inbounds [8 x float], [8 x float]* @AlphaFourth_2, i32 0, i64 %idxprom860
  %662 = load float, float* %arrayidx861, align 4
  %sub862 = fsub float %div859, %662
  store float %sub862, float* %betaFourth_2, align 4
  br label %if.end.863

if.end.863:                                       ; preds = %if.else.846, %if.then.845
  br label %if.end.864

if.end.864:                                       ; preds = %if.end.863
  %663 = load i32, i32* %list.addr, align 4
  %cmp865 = icmp eq i32 %663, 0
  br i1 %cmp865, label %if.then.867, label %if.end.954

if.then.867:                                      ; preds = %if.end.864
  %664 = load i32, i32* %pic_pix_x.addr, align 4
  %665 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_ref, i32 0, i64 0), align 4
  %div868 = sdiv i32 %665, 4
  %add869 = add nsw i32 %664, %div868
  store i32 %add869, i32* %cand_x, align 4
  %666 = load i32, i32* %pic_pix_y.addr, align 4
  %667 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @pred_MV_ref, i32 0, i64 1), align 4
  %div870 = sdiv i32 %667, 4
  %add871 = add nsw i32 %666, %div870
  store i32 %add871, i32* %cand_y, align 4
  %668 = load i32, i32* %cand_x, align 4
  %669 = load i16, i16* %center2_x, align 2
  %conv872 = sext i16 %669 to i32
  %sub873 = sub nsw i32 %668, %conv872
  %call874 = call i32 @iabs(i32 %sub873)
  %670 = load i32, i32* %search_range.addr, align 4
  %cmp875 = icmp sle i32 %call874, %670
  br i1 %cmp875, label %land.lhs.true.877, label %if.end.953

land.lhs.true.877:                                ; preds = %if.then.867
  %671 = load i32, i32* %cand_y, align 4
  %672 = load i16, i16* %center2_y, align 2
  %conv878 = sext i16 %672 to i32
  %sub879 = sub nsw i32 %671, %conv878
  %call880 = call i32 @iabs(i32 %sub879)
  %673 = load i32, i32* %search_range.addr, align 4
  %cmp881 = icmp sle i32 %call880, %673
  br i1 %cmp881, label %if.then.883, label %if.end.953

if.then.883:                                      ; preds = %land.lhs.true.877
  %674 = load i32, i32* %cand_x, align 4
  %675 = load i16, i16* %center2_x, align 2
  %conv884 = sext i16 %675 to i32
  %sub885 = sub nsw i32 %674, %conv884
  %676 = load i32, i32* %search_range.addr, align 4
  %add886 = add nsw i32 %sub885, %676
  %idxprom887 = sext i32 %add886 to i64
  %677 = load i32, i32* %cand_y, align 4
  %678 = load i16, i16* %center2_y, align 2
  %conv888 = sext i16 %678 to i32
  %sub889 = sub nsw i32 %677, %conv888
  %679 = load i32, i32* %search_range.addr, align 4
  %add890 = add nsw i32 %sub889, %679
  %idxprom891 = sext i32 %add890 to i64
  %680 = load i8**, i8*** @McostState, align 8
  %arrayidx892 = getelementptr inbounds i8*, i8** %680, i64 %idxprom891
  %681 = load i8*, i8** %arrayidx892, align 8
  %arrayidx893 = getelementptr inbounds i8, i8* %681, i64 %idxprom887
  %682 = load i8, i8* %arrayidx893, align 1
  %tobool894 = icmp ne i8 %682, 0
  br i1 %tobool894, label %if.end.952, label %if.then.895

if.then.895:                                      ; preds = %if.then.883
  %683 = load i32, i32* %lambda_factor.addr, align 4
  %684 = load i16, i16* %center1_x, align 2
  %conv896 = sext i16 %684 to i32
  %685 = load i32, i32* %mvshift, align 4
  %shl897 = shl i32 %conv896, %685
  %686 = load i32, i32* %pred_x1, align 4
  %sub898 = sub nsw i32 %shl897, %686
  %idxprom899 = sext i32 %sub898 to i64
  %687 = load i32*, i32** @mvbits, align 8
  %arrayidx900 = getelementptr inbounds i32, i32* %687, i64 %idxprom899
  %688 = load i32, i32* %arrayidx900, align 4
  %689 = load i16, i16* %center1_y, align 2
  %conv901 = sext i16 %689 to i32
  %690 = load i32, i32* %mvshift, align 4
  %shl902 = shl i32 %conv901, %690
  %691 = load i32, i32* %pred_y1, align 4
  %sub903 = sub nsw i32 %shl902, %691
  %idxprom904 = sext i32 %sub903 to i64
  %692 = load i32*, i32** @mvbits, align 8
  %arrayidx905 = getelementptr inbounds i32, i32* %692, i64 %idxprom904
  %693 = load i32, i32* %arrayidx905, align 4
  %add906 = add nsw i32 %688, %693
  %mul907 = mul nsw i32 %683, %add906
  %shr908 = ashr i32 %mul907, 16
  store i32 %shr908, i32* %mcost, align 4
  %694 = load i32, i32* %lambda_factor.addr, align 4
  %695 = load i32, i32* %cand_x, align 4
  %696 = load i32, i32* %mvshift, align 4
  %shl909 = shl i32 %695, %696
  %697 = load i32, i32* %pred_x2, align 4
  %sub910 = sub nsw i32 %shl909, %697
  %idxprom911 = sext i32 %sub910 to i64
  %698 = load i32*, i32** @mvbits, align 8
  %arrayidx912 = getelementptr inbounds i32, i32* %698, i64 %idxprom911
  %699 = load i32, i32* %arrayidx912, align 4
  %700 = load i32, i32* %cand_y, align 4
  %701 = load i32, i32* %mvshift, align 4
  %shl913 = shl i32 %700, %701
  %702 = load i32, i32* %pred_y2, align 4
  %sub914 = sub nsw i32 %shl913, %702
  %idxprom915 = sext i32 %sub914 to i64
  %703 = load i32*, i32** @mvbits, align 8
  %arrayidx916 = getelementptr inbounds i32, i32* %703, i64 %idxprom915
  %704 = load i32, i32* %arrayidx916, align 4
  %add917 = add nsw i32 %699, %704
  %mul918 = mul nsw i32 %694, %add917
  %shr919 = ashr i32 %mul918, 16
  %705 = load i32, i32* %mcost, align 4
  %add920 = add nsw i32 %705, %shr919
  store i32 %add920, i32* %mcost, align 4
  %706 = load i32, i32* %mcost, align 4
  %707 = load i32, i32* %min_mcost.addr, align 4
  %cmp921 = icmp slt i32 %706, %707
  br i1 %cmp921, label %if.then.923, label %if.end.951

if.then.923:                                      ; preds = %if.then.895
  %708 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %709 = load i16*, i16** %cur_pic.addr, align 8
  %710 = load i32, i32* %blocksize_y, align 4
  %711 = load i32, i32* %blocksize_x, align 4
  %712 = load i32, i32* %min_mcost.addr, align 4
  %713 = load i32, i32* %mcost, align 4
  %sub924 = sub nsw i32 %712, %713
  %714 = load i16, i16* %center1_x, align 2
  %conv925 = sext i16 %714 to i32
  %shl926 = shl i32 %conv925, 2
  %add927 = add nsw i32 %shl926, 80
  %715 = load i16, i16* %center1_y, align 2
  %conv928 = sext i16 %715 to i32
  %shl929 = shl i32 %conv928, 2
  %add930 = add nsw i32 %shl929, 80
  %716 = load i32, i32* %cand_x, align 4
  %shl931 = shl i32 %716, 2
  %add932 = add nsw i32 %shl931, 80
  %717 = load i32, i32* %cand_y, align 4
  %shl933 = shl i32 %717, 2
  %add934 = add nsw i32 %shl933, 80
  %call935 = call i32 %708(i16* %709, i32 %710, i32 %711, i32 %sub924, i32 %add927, i32 %add930, i32 %add932, i32 %add934)
  %718 = load i32, i32* %mcost, align 4
  %add936 = add nsw i32 %718, %call935
  store i32 %add936, i32* %mcost, align 4
  %719 = load i32, i32* %cand_x, align 4
  %720 = load i16, i16* %center2_x, align 2
  %conv937 = sext i16 %720 to i32
  %sub938 = sub nsw i32 %719, %conv937
  %721 = load i32, i32* %search_range.addr, align 4
  %add939 = add nsw i32 %sub938, %721
  %idxprom940 = sext i32 %add939 to i64
  %722 = load i32, i32* %cand_y, align 4
  %723 = load i16, i16* %center2_y, align 2
  %conv941 = sext i16 %723 to i32
  %sub942 = sub nsw i32 %722, %conv941
  %724 = load i32, i32* %search_range.addr, align 4
  %add943 = add nsw i32 %sub942, %724
  %idxprom944 = sext i32 %add943 to i64
  %725 = load i8**, i8*** @McostState, align 8
  %arrayidx945 = getelementptr inbounds i8*, i8** %725, i64 %idxprom944
  %726 = load i8*, i8** %arrayidx945, align 8
  %arrayidx946 = getelementptr inbounds i8, i8* %726, i64 %idxprom940
  store i8 1, i8* %arrayidx946, align 1
  %727 = load i32, i32* %mcost, align 4
  %728 = load i32, i32* %min_mcost.addr, align 4
  %cmp947 = icmp slt i32 %727, %728
  br i1 %cmp947, label %if.then.949, label %if.end.950

if.then.949:                                      ; preds = %if.then.923
  %729 = load i32, i32* %cand_x, align 4
  store i32 %729, i32* %best_x, align 4
  %730 = load i32, i32* %cand_y, align 4
  store i32 %730, i32* %best_y, align 4
  %731 = load i32, i32* %mcost, align 4
  store i32 %731, i32* %min_mcost.addr, align 4
  br label %if.end.950

if.end.950:                                       ; preds = %if.then.949, %if.then.923
  br label %if.end.951

if.end.951:                                       ; preds = %if.end.950, %if.then.895
  br label %if.end.952

if.end.952:                                       ; preds = %if.end.951, %if.then.883
  br label %if.end.953

if.end.953:                                       ; preds = %if.end.952, %land.lhs.true.877, %if.then.867
  br label %if.end.954

if.end.954:                                       ; preds = %if.end.953, %if.end.864
  %732 = load i32, i32* %best_x, align 4
  store i32 %732, i32* %iXMinNow, align 4
  %733 = load i32, i32* %best_y, align 4
  store i32 %733, i32* %iYMinNow, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.955

for.cond.955:                                     ; preds = %for.inc.1047, %if.end.954
  %734 = load i32, i32* %m, align 4
  %cmp956 = icmp slt i32 %734, 4
  br i1 %cmp956, label %for.body.958, label %for.end.1049

for.body.958:                                     ; preds = %for.cond.955
  %735 = load i32, i32* %iXMinNow, align 4
  %736 = load i32, i32* %m, align 4
  %idxprom959 = sext i32 %736 to i64
  %arrayidx960 = getelementptr inbounds [4 x i32], [4 x i32]* @Diamond_x, i32 0, i64 %idxprom959
  %737 = load i32, i32* %arrayidx960, align 4
  %add961 = add nsw i32 %735, %737
  store i32 %add961, i32* %cand_x, align 4
  %738 = load i32, i32* %iYMinNow, align 4
  %739 = load i32, i32* %m, align 4
  %idxprom962 = sext i32 %739 to i64
  %arrayidx963 = getelementptr inbounds [4 x i32], [4 x i32]* @Diamond_y, i32 0, i64 %idxprom962
  %740 = load i32, i32* %arrayidx963, align 4
  %add964 = add nsw i32 %738, %740
  store i32 %add964, i32* %cand_y, align 4
  %741 = load i32, i32* %cand_x, align 4
  %742 = load i16, i16* %center2_x, align 2
  %conv965 = sext i16 %742 to i32
  %sub966 = sub nsw i32 %741, %conv965
  %call967 = call i32 @iabs(i32 %sub966)
  %743 = load i32, i32* %search_range.addr, align 4
  %cmp968 = icmp sle i32 %call967, %743
  br i1 %cmp968, label %land.lhs.true.970, label %if.end.1046

land.lhs.true.970:                                ; preds = %for.body.958
  %744 = load i32, i32* %cand_y, align 4
  %745 = load i16, i16* %center2_y, align 2
  %conv971 = sext i16 %745 to i32
  %sub972 = sub nsw i32 %744, %conv971
  %call973 = call i32 @iabs(i32 %sub972)
  %746 = load i32, i32* %search_range.addr, align 4
  %cmp974 = icmp sle i32 %call973, %746
  br i1 %cmp974, label %if.then.976, label %if.end.1046

if.then.976:                                      ; preds = %land.lhs.true.970
  %747 = load i32, i32* %cand_x, align 4
  %748 = load i16, i16* %center2_x, align 2
  %conv977 = sext i16 %748 to i32
  %sub978 = sub nsw i32 %747, %conv977
  %749 = load i32, i32* %search_range.addr, align 4
  %add979 = add nsw i32 %sub978, %749
  %idxprom980 = sext i32 %add979 to i64
  %750 = load i32, i32* %cand_y, align 4
  %751 = load i16, i16* %center2_y, align 2
  %conv981 = sext i16 %751 to i32
  %sub982 = sub nsw i32 %750, %conv981
  %752 = load i32, i32* %search_range.addr, align 4
  %add983 = add nsw i32 %sub982, %752
  %idxprom984 = sext i32 %add983 to i64
  %753 = load i8**, i8*** @McostState, align 8
  %arrayidx985 = getelementptr inbounds i8*, i8** %753, i64 %idxprom984
  %754 = load i8*, i8** %arrayidx985, align 8
  %arrayidx986 = getelementptr inbounds i8, i8* %754, i64 %idxprom980
  %755 = load i8, i8* %arrayidx986, align 1
  %tobool987 = icmp ne i8 %755, 0
  br i1 %tobool987, label %if.end.1045, label %if.then.988

if.then.988:                                      ; preds = %if.then.976
  %756 = load i32, i32* %lambda_factor.addr, align 4
  %757 = load i16, i16* %center1_x, align 2
  %conv989 = sext i16 %757 to i32
  %758 = load i32, i32* %mvshift, align 4
  %shl990 = shl i32 %conv989, %758
  %759 = load i32, i32* %pred_x1, align 4
  %sub991 = sub nsw i32 %shl990, %759
  %idxprom992 = sext i32 %sub991 to i64
  %760 = load i32*, i32** @mvbits, align 8
  %arrayidx993 = getelementptr inbounds i32, i32* %760, i64 %idxprom992
  %761 = load i32, i32* %arrayidx993, align 4
  %762 = load i16, i16* %center1_y, align 2
  %conv994 = sext i16 %762 to i32
  %763 = load i32, i32* %mvshift, align 4
  %shl995 = shl i32 %conv994, %763
  %764 = load i32, i32* %pred_y1, align 4
  %sub996 = sub nsw i32 %shl995, %764
  %idxprom997 = sext i32 %sub996 to i64
  %765 = load i32*, i32** @mvbits, align 8
  %arrayidx998 = getelementptr inbounds i32, i32* %765, i64 %idxprom997
  %766 = load i32, i32* %arrayidx998, align 4
  %add999 = add nsw i32 %761, %766
  %mul1000 = mul nsw i32 %756, %add999
  %shr1001 = ashr i32 %mul1000, 16
  store i32 %shr1001, i32* %mcost, align 4
  %767 = load i32, i32* %lambda_factor.addr, align 4
  %768 = load i32, i32* %cand_x, align 4
  %769 = load i32, i32* %mvshift, align 4
  %shl1002 = shl i32 %768, %769
  %770 = load i32, i32* %pred_x2, align 4
  %sub1003 = sub nsw i32 %shl1002, %770
  %idxprom1004 = sext i32 %sub1003 to i64
  %771 = load i32*, i32** @mvbits, align 8
  %arrayidx1005 = getelementptr inbounds i32, i32* %771, i64 %idxprom1004
  %772 = load i32, i32* %arrayidx1005, align 4
  %773 = load i32, i32* %cand_y, align 4
  %774 = load i32, i32* %mvshift, align 4
  %shl1006 = shl i32 %773, %774
  %775 = load i32, i32* %pred_y2, align 4
  %sub1007 = sub nsw i32 %shl1006, %775
  %idxprom1008 = sext i32 %sub1007 to i64
  %776 = load i32*, i32** @mvbits, align 8
  %arrayidx1009 = getelementptr inbounds i32, i32* %776, i64 %idxprom1008
  %777 = load i32, i32* %arrayidx1009, align 4
  %add1010 = add nsw i32 %772, %777
  %mul1011 = mul nsw i32 %767, %add1010
  %shr1012 = ashr i32 %mul1011, 16
  %778 = load i32, i32* %mcost, align 4
  %add1013 = add nsw i32 %778, %shr1012
  store i32 %add1013, i32* %mcost, align 4
  %779 = load i32, i32* %mcost, align 4
  %780 = load i32, i32* %min_mcost.addr, align 4
  %cmp1014 = icmp slt i32 %779, %780
  br i1 %cmp1014, label %if.then.1016, label %if.end.1044

if.then.1016:                                     ; preds = %if.then.988
  %781 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %782 = load i16*, i16** %cur_pic.addr, align 8
  %783 = load i32, i32* %blocksize_y, align 4
  %784 = load i32, i32* %blocksize_x, align 4
  %785 = load i32, i32* %min_mcost.addr, align 4
  %786 = load i32, i32* %mcost, align 4
  %sub1017 = sub nsw i32 %785, %786
  %787 = load i16, i16* %center1_x, align 2
  %conv1018 = sext i16 %787 to i32
  %shl1019 = shl i32 %conv1018, 2
  %add1020 = add nsw i32 %shl1019, 80
  %788 = load i16, i16* %center1_y, align 2
  %conv1021 = sext i16 %788 to i32
  %shl1022 = shl i32 %conv1021, 2
  %add1023 = add nsw i32 %shl1022, 80
  %789 = load i32, i32* %cand_x, align 4
  %shl1024 = shl i32 %789, 2
  %add1025 = add nsw i32 %shl1024, 80
  %790 = load i32, i32* %cand_y, align 4
  %shl1026 = shl i32 %790, 2
  %add1027 = add nsw i32 %shl1026, 80
  %call1028 = call i32 %781(i16* %782, i32 %783, i32 %784, i32 %sub1017, i32 %add1020, i32 %add1023, i32 %add1025, i32 %add1027)
  %791 = load i32, i32* %mcost, align 4
  %add1029 = add nsw i32 %791, %call1028
  store i32 %add1029, i32* %mcost, align 4
  %792 = load i32, i32* %cand_x, align 4
  %793 = load i16, i16* %center2_x, align 2
  %conv1030 = sext i16 %793 to i32
  %sub1031 = sub nsw i32 %792, %conv1030
  %794 = load i32, i32* %search_range.addr, align 4
  %add1032 = add nsw i32 %sub1031, %794
  %idxprom1033 = sext i32 %add1032 to i64
  %795 = load i32, i32* %cand_y, align 4
  %796 = load i16, i16* %center2_y, align 2
  %conv1034 = sext i16 %796 to i32
  %sub1035 = sub nsw i32 %795, %conv1034
  %797 = load i32, i32* %search_range.addr, align 4
  %add1036 = add nsw i32 %sub1035, %797
  %idxprom1037 = sext i32 %add1036 to i64
  %798 = load i8**, i8*** @McostState, align 8
  %arrayidx1038 = getelementptr inbounds i8*, i8** %798, i64 %idxprom1037
  %799 = load i8*, i8** %arrayidx1038, align 8
  %arrayidx1039 = getelementptr inbounds i8, i8* %799, i64 %idxprom1033
  store i8 1, i8* %arrayidx1039, align 1
  %800 = load i32, i32* %mcost, align 4
  %801 = load i32, i32* %min_mcost.addr, align 4
  %cmp1040 = icmp slt i32 %800, %801
  br i1 %cmp1040, label %if.then.1042, label %if.end.1043

if.then.1042:                                     ; preds = %if.then.1016
  %802 = load i32, i32* %cand_x, align 4
  store i32 %802, i32* %best_x, align 4
  %803 = load i32, i32* %cand_y, align 4
  store i32 %803, i32* %best_y, align 4
  %804 = load i32, i32* %mcost, align 4
  store i32 %804, i32* %min_mcost.addr, align 4
  br label %if.end.1043

if.end.1043:                                      ; preds = %if.then.1042, %if.then.1016
  br label %if.end.1044

if.end.1044:                                      ; preds = %if.end.1043, %if.then.988
  br label %if.end.1045

if.end.1045:                                      ; preds = %if.end.1044, %if.then.976
  br label %if.end.1046

if.end.1046:                                      ; preds = %if.end.1045, %land.lhs.true.970, %for.body.958
  br label %for.inc.1047

for.inc.1047:                                     ; preds = %if.end.1046
  %805 = load i32, i32* %m, align 4
  %inc1048 = add nsw i32 %805, 1
  store i32 %inc1048, i32* %m, align 4
  br label %for.cond.955

for.end.1049:                                     ; preds = %for.cond.955
  %806 = load i32, i32* %min_mcost.addr, align 4
  %807 = load i32, i32* @pred_SAD, align 4
  %sub1050 = sub nsw i32 %806, %807
  %conv1051 = sitofp i32 %sub1050 to float
  %808 = load i32, i32* @pred_SAD, align 4
  %conv1052 = sitofp i32 %808 to float
  %809 = load float, float* %betaFourth_2, align 4
  %mul1053 = fmul float %conv1052, %809
  %cmp1054 = fcmp olt float %conv1051, %mul1053
  br i1 %cmp1054, label %if.then.1056, label %if.else.1057

if.then.1056:                                     ; preds = %for.end.1049
  br label %fourth_2_step

if.else.1057:                                     ; preds = %for.end.1049
  %810 = load i32, i32* %min_mcost.addr, align 4
  %811 = load i32, i32* @pred_SAD, align 4
  %sub1058 = sub nsw i32 %810, %811
  %conv1059 = sitofp i32 %sub1058 to float
  %812 = load i32, i32* @pred_SAD, align 4
  %conv1060 = sitofp i32 %812 to float
  %813 = load float, float* %betaFourth_1, align 4
  %mul1061 = fmul float %conv1060, %813
  %cmp1062 = fcmp olt float %conv1059, %mul1061
  br i1 %cmp1062, label %if.then.1064, label %if.end.1065

if.then.1064:                                     ; preds = %if.else.1057
  br label %fourth_1_step

if.end.1065:                                      ; preds = %if.else.1057
  br label %if.end.1066

if.end.1066:                                      ; preds = %if.end.1065
  %814 = load i32, i32* %best_x, align 4
  store i32 %814, i32* %iXMinNow, align 4
  %815 = load i32, i32* %best_y, align 4
  store i32 %815, i32* %iYMinNow, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.1067

for.cond.1067:                                    ; preds = %for.inc.1237, %if.end.1066
  %816 = load i32, i32* %i, align 4
  %817 = load i32, i32* %search_range.addr, align 4
  %cmp1068 = icmp slt i32 %816, %817
  br i1 %cmp1068, label %for.body.1070, label %for.end.1239

for.body.1070:                                    ; preds = %for.cond.1067
  %818 = load i32, i32* %i, align 4
  store i32 %818, i32* %search_step, align 4
  %819 = load i32, i32* %iXMinNow, align 4
  %820 = load i32, i32* %search_step, align 4
  %add1071 = add nsw i32 %819, %820
  store i32 %add1071, i32* %cand_x, align 4
  %821 = load i32, i32* %iYMinNow, align 4
  store i32 %821, i32* %cand_y, align 4
  %822 = load i32, i32* %cand_x, align 4
  %823 = load i16, i16* %center2_x, align 2
  %conv1072 = sext i16 %823 to i32
  %sub1073 = sub nsw i32 %822, %conv1072
  %call1074 = call i32 @iabs(i32 %sub1073)
  %824 = load i32, i32* %search_range.addr, align 4
  %cmp1075 = icmp sle i32 %call1074, %824
  br i1 %cmp1075, label %land.lhs.true.1077, label %if.end.1153

land.lhs.true.1077:                               ; preds = %for.body.1070
  %825 = load i32, i32* %cand_y, align 4
  %826 = load i16, i16* %center2_y, align 2
  %conv1078 = sext i16 %826 to i32
  %sub1079 = sub nsw i32 %825, %conv1078
  %call1080 = call i32 @iabs(i32 %sub1079)
  %827 = load i32, i32* %search_range.addr, align 4
  %cmp1081 = icmp sle i32 %call1080, %827
  br i1 %cmp1081, label %if.then.1083, label %if.end.1153

if.then.1083:                                     ; preds = %land.lhs.true.1077
  %828 = load i32, i32* %cand_x, align 4
  %829 = load i16, i16* %center2_x, align 2
  %conv1084 = sext i16 %829 to i32
  %sub1085 = sub nsw i32 %828, %conv1084
  %830 = load i32, i32* %search_range.addr, align 4
  %add1086 = add nsw i32 %sub1085, %830
  %idxprom1087 = sext i32 %add1086 to i64
  %831 = load i32, i32* %cand_y, align 4
  %832 = load i16, i16* %center2_y, align 2
  %conv1088 = sext i16 %832 to i32
  %sub1089 = sub nsw i32 %831, %conv1088
  %833 = load i32, i32* %search_range.addr, align 4
  %add1090 = add nsw i32 %sub1089, %833
  %idxprom1091 = sext i32 %add1090 to i64
  %834 = load i8**, i8*** @McostState, align 8
  %arrayidx1092 = getelementptr inbounds i8*, i8** %834, i64 %idxprom1091
  %835 = load i8*, i8** %arrayidx1092, align 8
  %arrayidx1093 = getelementptr inbounds i8, i8* %835, i64 %idxprom1087
  %836 = load i8, i8* %arrayidx1093, align 1
  %tobool1094 = icmp ne i8 %836, 0
  br i1 %tobool1094, label %if.end.1152, label %if.then.1095

if.then.1095:                                     ; preds = %if.then.1083
  %837 = load i32, i32* %lambda_factor.addr, align 4
  %838 = load i16, i16* %center1_x, align 2
  %conv1096 = sext i16 %838 to i32
  %839 = load i32, i32* %mvshift, align 4
  %shl1097 = shl i32 %conv1096, %839
  %840 = load i32, i32* %pred_x1, align 4
  %sub1098 = sub nsw i32 %shl1097, %840
  %idxprom1099 = sext i32 %sub1098 to i64
  %841 = load i32*, i32** @mvbits, align 8
  %arrayidx1100 = getelementptr inbounds i32, i32* %841, i64 %idxprom1099
  %842 = load i32, i32* %arrayidx1100, align 4
  %843 = load i16, i16* %center1_y, align 2
  %conv1101 = sext i16 %843 to i32
  %844 = load i32, i32* %mvshift, align 4
  %shl1102 = shl i32 %conv1101, %844
  %845 = load i32, i32* %pred_y1, align 4
  %sub1103 = sub nsw i32 %shl1102, %845
  %idxprom1104 = sext i32 %sub1103 to i64
  %846 = load i32*, i32** @mvbits, align 8
  %arrayidx1105 = getelementptr inbounds i32, i32* %846, i64 %idxprom1104
  %847 = load i32, i32* %arrayidx1105, align 4
  %add1106 = add nsw i32 %842, %847
  %mul1107 = mul nsw i32 %837, %add1106
  %shr1108 = ashr i32 %mul1107, 16
  store i32 %shr1108, i32* %mcost, align 4
  %848 = load i32, i32* %lambda_factor.addr, align 4
  %849 = load i32, i32* %cand_x, align 4
  %850 = load i32, i32* %mvshift, align 4
  %shl1109 = shl i32 %849, %850
  %851 = load i32, i32* %pred_x2, align 4
  %sub1110 = sub nsw i32 %shl1109, %851
  %idxprom1111 = sext i32 %sub1110 to i64
  %852 = load i32*, i32** @mvbits, align 8
  %arrayidx1112 = getelementptr inbounds i32, i32* %852, i64 %idxprom1111
  %853 = load i32, i32* %arrayidx1112, align 4
  %854 = load i32, i32* %cand_y, align 4
  %855 = load i32, i32* %mvshift, align 4
  %shl1113 = shl i32 %854, %855
  %856 = load i32, i32* %pred_y2, align 4
  %sub1114 = sub nsw i32 %shl1113, %856
  %idxprom1115 = sext i32 %sub1114 to i64
  %857 = load i32*, i32** @mvbits, align 8
  %arrayidx1116 = getelementptr inbounds i32, i32* %857, i64 %idxprom1115
  %858 = load i32, i32* %arrayidx1116, align 4
  %add1117 = add nsw i32 %853, %858
  %mul1118 = mul nsw i32 %848, %add1117
  %shr1119 = ashr i32 %mul1118, 16
  %859 = load i32, i32* %mcost, align 4
  %add1120 = add nsw i32 %859, %shr1119
  store i32 %add1120, i32* %mcost, align 4
  %860 = load i32, i32* %mcost, align 4
  %861 = load i32, i32* %min_mcost.addr, align 4
  %cmp1121 = icmp slt i32 %860, %861
  br i1 %cmp1121, label %if.then.1123, label %if.end.1151

if.then.1123:                                     ; preds = %if.then.1095
  %862 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %863 = load i16*, i16** %cur_pic.addr, align 8
  %864 = load i32, i32* %blocksize_y, align 4
  %865 = load i32, i32* %blocksize_x, align 4
  %866 = load i32, i32* %min_mcost.addr, align 4
  %867 = load i32, i32* %mcost, align 4
  %sub1124 = sub nsw i32 %866, %867
  %868 = load i16, i16* %center1_x, align 2
  %conv1125 = sext i16 %868 to i32
  %shl1126 = shl i32 %conv1125, 2
  %add1127 = add nsw i32 %shl1126, 80
  %869 = load i16, i16* %center1_y, align 2
  %conv1128 = sext i16 %869 to i32
  %shl1129 = shl i32 %conv1128, 2
  %add1130 = add nsw i32 %shl1129, 80
  %870 = load i32, i32* %cand_x, align 4
  %shl1131 = shl i32 %870, 2
  %add1132 = add nsw i32 %shl1131, 80
  %871 = load i32, i32* %cand_y, align 4
  %shl1133 = shl i32 %871, 2
  %add1134 = add nsw i32 %shl1133, 80
  %call1135 = call i32 %862(i16* %863, i32 %864, i32 %865, i32 %sub1124, i32 %add1127, i32 %add1130, i32 %add1132, i32 %add1134)
  %872 = load i32, i32* %mcost, align 4
  %add1136 = add nsw i32 %872, %call1135
  store i32 %add1136, i32* %mcost, align 4
  %873 = load i32, i32* %cand_x, align 4
  %874 = load i16, i16* %center2_x, align 2
  %conv1137 = sext i16 %874 to i32
  %sub1138 = sub nsw i32 %873, %conv1137
  %875 = load i32, i32* %search_range.addr, align 4
  %add1139 = add nsw i32 %sub1138, %875
  %idxprom1140 = sext i32 %add1139 to i64
  %876 = load i32, i32* %cand_y, align 4
  %877 = load i16, i16* %center2_y, align 2
  %conv1141 = sext i16 %877 to i32
  %sub1142 = sub nsw i32 %876, %conv1141
  %878 = load i32, i32* %search_range.addr, align 4
  %add1143 = add nsw i32 %sub1142, %878
  %idxprom1144 = sext i32 %add1143 to i64
  %879 = load i8**, i8*** @McostState, align 8
  %arrayidx1145 = getelementptr inbounds i8*, i8** %879, i64 %idxprom1144
  %880 = load i8*, i8** %arrayidx1145, align 8
  %arrayidx1146 = getelementptr inbounds i8, i8* %880, i64 %idxprom1140
  store i8 1, i8* %arrayidx1146, align 1
  %881 = load i32, i32* %mcost, align 4
  %882 = load i32, i32* %min_mcost.addr, align 4
  %cmp1147 = icmp slt i32 %881, %882
  br i1 %cmp1147, label %if.then.1149, label %if.end.1150

if.then.1149:                                     ; preds = %if.then.1123
  %883 = load i32, i32* %cand_x, align 4
  store i32 %883, i32* %best_x, align 4
  %884 = load i32, i32* %cand_y, align 4
  store i32 %884, i32* %best_y, align 4
  %885 = load i32, i32* %mcost, align 4
  store i32 %885, i32* %min_mcost.addr, align 4
  br label %if.end.1150

if.end.1150:                                      ; preds = %if.then.1149, %if.then.1123
  br label %if.end.1151

if.end.1151:                                      ; preds = %if.end.1150, %if.then.1095
  br label %if.end.1152

if.end.1152:                                      ; preds = %if.end.1151, %if.then.1083
  br label %if.end.1153

if.end.1153:                                      ; preds = %if.end.1152, %land.lhs.true.1077, %for.body.1070
  %886 = load i32, i32* %iXMinNow, align 4
  %887 = load i32, i32* %search_step, align 4
  %sub1154 = sub nsw i32 %886, %887
  store i32 %sub1154, i32* %cand_x, align 4
  %888 = load i32, i32* %iYMinNow, align 4
  store i32 %888, i32* %cand_y, align 4
  %889 = load i32, i32* %cand_x, align 4
  %890 = load i16, i16* %center2_x, align 2
  %conv1155 = sext i16 %890 to i32
  %sub1156 = sub nsw i32 %889, %conv1155
  %call1157 = call i32 @iabs(i32 %sub1156)
  %891 = load i32, i32* %search_range.addr, align 4
  %cmp1158 = icmp sle i32 %call1157, %891
  br i1 %cmp1158, label %land.lhs.true.1160, label %if.end.1236

land.lhs.true.1160:                               ; preds = %if.end.1153
  %892 = load i32, i32* %cand_y, align 4
  %893 = load i16, i16* %center2_y, align 2
  %conv1161 = sext i16 %893 to i32
  %sub1162 = sub nsw i32 %892, %conv1161
  %call1163 = call i32 @iabs(i32 %sub1162)
  %894 = load i32, i32* %search_range.addr, align 4
  %cmp1164 = icmp sle i32 %call1163, %894
  br i1 %cmp1164, label %if.then.1166, label %if.end.1236

if.then.1166:                                     ; preds = %land.lhs.true.1160
  %895 = load i32, i32* %cand_x, align 4
  %896 = load i16, i16* %center2_x, align 2
  %conv1167 = sext i16 %896 to i32
  %sub1168 = sub nsw i32 %895, %conv1167
  %897 = load i32, i32* %search_range.addr, align 4
  %add1169 = add nsw i32 %sub1168, %897
  %idxprom1170 = sext i32 %add1169 to i64
  %898 = load i32, i32* %cand_y, align 4
  %899 = load i16, i16* %center2_y, align 2
  %conv1171 = sext i16 %899 to i32
  %sub1172 = sub nsw i32 %898, %conv1171
  %900 = load i32, i32* %search_range.addr, align 4
  %add1173 = add nsw i32 %sub1172, %900
  %idxprom1174 = sext i32 %add1173 to i64
  %901 = load i8**, i8*** @McostState, align 8
  %arrayidx1175 = getelementptr inbounds i8*, i8** %901, i64 %idxprom1174
  %902 = load i8*, i8** %arrayidx1175, align 8
  %arrayidx1176 = getelementptr inbounds i8, i8* %902, i64 %idxprom1170
  %903 = load i8, i8* %arrayidx1176, align 1
  %tobool1177 = icmp ne i8 %903, 0
  br i1 %tobool1177, label %if.end.1235, label %if.then.1178

if.then.1178:                                     ; preds = %if.then.1166
  %904 = load i32, i32* %lambda_factor.addr, align 4
  %905 = load i16, i16* %center1_x, align 2
  %conv1179 = sext i16 %905 to i32
  %906 = load i32, i32* %mvshift, align 4
  %shl1180 = shl i32 %conv1179, %906
  %907 = load i32, i32* %pred_x1, align 4
  %sub1181 = sub nsw i32 %shl1180, %907
  %idxprom1182 = sext i32 %sub1181 to i64
  %908 = load i32*, i32** @mvbits, align 8
  %arrayidx1183 = getelementptr inbounds i32, i32* %908, i64 %idxprom1182
  %909 = load i32, i32* %arrayidx1183, align 4
  %910 = load i16, i16* %center1_y, align 2
  %conv1184 = sext i16 %910 to i32
  %911 = load i32, i32* %mvshift, align 4
  %shl1185 = shl i32 %conv1184, %911
  %912 = load i32, i32* %pred_y1, align 4
  %sub1186 = sub nsw i32 %shl1185, %912
  %idxprom1187 = sext i32 %sub1186 to i64
  %913 = load i32*, i32** @mvbits, align 8
  %arrayidx1188 = getelementptr inbounds i32, i32* %913, i64 %idxprom1187
  %914 = load i32, i32* %arrayidx1188, align 4
  %add1189 = add nsw i32 %909, %914
  %mul1190 = mul nsw i32 %904, %add1189
  %shr1191 = ashr i32 %mul1190, 16
  store i32 %shr1191, i32* %mcost, align 4
  %915 = load i32, i32* %lambda_factor.addr, align 4
  %916 = load i32, i32* %cand_x, align 4
  %917 = load i32, i32* %mvshift, align 4
  %shl1192 = shl i32 %916, %917
  %918 = load i32, i32* %pred_x2, align 4
  %sub1193 = sub nsw i32 %shl1192, %918
  %idxprom1194 = sext i32 %sub1193 to i64
  %919 = load i32*, i32** @mvbits, align 8
  %arrayidx1195 = getelementptr inbounds i32, i32* %919, i64 %idxprom1194
  %920 = load i32, i32* %arrayidx1195, align 4
  %921 = load i32, i32* %cand_y, align 4
  %922 = load i32, i32* %mvshift, align 4
  %shl1196 = shl i32 %921, %922
  %923 = load i32, i32* %pred_y2, align 4
  %sub1197 = sub nsw i32 %shl1196, %923
  %idxprom1198 = sext i32 %sub1197 to i64
  %924 = load i32*, i32** @mvbits, align 8
  %arrayidx1199 = getelementptr inbounds i32, i32* %924, i64 %idxprom1198
  %925 = load i32, i32* %arrayidx1199, align 4
  %add1200 = add nsw i32 %920, %925
  %mul1201 = mul nsw i32 %915, %add1200
  %shr1202 = ashr i32 %mul1201, 16
  %926 = load i32, i32* %mcost, align 4
  %add1203 = add nsw i32 %926, %shr1202
  store i32 %add1203, i32* %mcost, align 4
  %927 = load i32, i32* %mcost, align 4
  %928 = load i32, i32* %min_mcost.addr, align 4
  %cmp1204 = icmp slt i32 %927, %928
  br i1 %cmp1204, label %if.then.1206, label %if.end.1234

if.then.1206:                                     ; preds = %if.then.1178
  %929 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %930 = load i16*, i16** %cur_pic.addr, align 8
  %931 = load i32, i32* %blocksize_y, align 4
  %932 = load i32, i32* %blocksize_x, align 4
  %933 = load i32, i32* %min_mcost.addr, align 4
  %934 = load i32, i32* %mcost, align 4
  %sub1207 = sub nsw i32 %933, %934
  %935 = load i16, i16* %center1_x, align 2
  %conv1208 = sext i16 %935 to i32
  %shl1209 = shl i32 %conv1208, 2
  %add1210 = add nsw i32 %shl1209, 80
  %936 = load i16, i16* %center1_y, align 2
  %conv1211 = sext i16 %936 to i32
  %shl1212 = shl i32 %conv1211, 2
  %add1213 = add nsw i32 %shl1212, 80
  %937 = load i32, i32* %cand_x, align 4
  %shl1214 = shl i32 %937, 2
  %add1215 = add nsw i32 %shl1214, 80
  %938 = load i32, i32* %cand_y, align 4
  %shl1216 = shl i32 %938, 2
  %add1217 = add nsw i32 %shl1216, 80
  %call1218 = call i32 %929(i16* %930, i32 %931, i32 %932, i32 %sub1207, i32 %add1210, i32 %add1213, i32 %add1215, i32 %add1217)
  %939 = load i32, i32* %mcost, align 4
  %add1219 = add nsw i32 %939, %call1218
  store i32 %add1219, i32* %mcost, align 4
  %940 = load i32, i32* %cand_x, align 4
  %941 = load i16, i16* %center2_x, align 2
  %conv1220 = sext i16 %941 to i32
  %sub1221 = sub nsw i32 %940, %conv1220
  %942 = load i32, i32* %search_range.addr, align 4
  %add1222 = add nsw i32 %sub1221, %942
  %idxprom1223 = sext i32 %add1222 to i64
  %943 = load i32, i32* %cand_y, align 4
  %944 = load i16, i16* %center2_y, align 2
  %conv1224 = sext i16 %944 to i32
  %sub1225 = sub nsw i32 %943, %conv1224
  %945 = load i32, i32* %search_range.addr, align 4
  %add1226 = add nsw i32 %sub1225, %945
  %idxprom1227 = sext i32 %add1226 to i64
  %946 = load i8**, i8*** @McostState, align 8
  %arrayidx1228 = getelementptr inbounds i8*, i8** %946, i64 %idxprom1227
  %947 = load i8*, i8** %arrayidx1228, align 8
  %arrayidx1229 = getelementptr inbounds i8, i8* %947, i64 %idxprom1223
  store i8 1, i8* %arrayidx1229, align 1
  %948 = load i32, i32* %mcost, align 4
  %949 = load i32, i32* %min_mcost.addr, align 4
  %cmp1230 = icmp slt i32 %948, %949
  br i1 %cmp1230, label %if.then.1232, label %if.end.1233

if.then.1232:                                     ; preds = %if.then.1206
  %950 = load i32, i32* %cand_x, align 4
  store i32 %950, i32* %best_x, align 4
  %951 = load i32, i32* %cand_y, align 4
  store i32 %951, i32* %best_y, align 4
  %952 = load i32, i32* %mcost, align 4
  store i32 %952, i32* %min_mcost.addr, align 4
  br label %if.end.1233

if.end.1233:                                      ; preds = %if.then.1232, %if.then.1206
  br label %if.end.1234

if.end.1234:                                      ; preds = %if.end.1233, %if.then.1178
  br label %if.end.1235

if.end.1235:                                      ; preds = %if.end.1234, %if.then.1166
  br label %if.end.1236

if.end.1236:                                      ; preds = %if.end.1235, %land.lhs.true.1160, %if.end.1153
  br label %for.inc.1237

for.inc.1237:                                     ; preds = %if.end.1236
  %953 = load i32, i32* %i, align 4
  %add1238 = add nsw i32 %953, 2
  store i32 %add1238, i32* %i, align 4
  br label %for.cond.1067

for.end.1239:                                     ; preds = %for.cond.1067
  store i32 1, i32* %i, align 4
  br label %for.cond.1240

for.cond.1240:                                    ; preds = %for.inc.1411, %for.end.1239
  %954 = load i32, i32* %i, align 4
  %955 = load i32, i32* %search_range.addr, align 4
  %div1241 = sdiv i32 %955, 2
  %cmp1242 = icmp slt i32 %954, %div1241
  br i1 %cmp1242, label %for.body.1244, label %for.end.1413

for.body.1244:                                    ; preds = %for.cond.1240
  %956 = load i32, i32* %i, align 4
  store i32 %956, i32* %search_step, align 4
  %957 = load i32, i32* %iXMinNow, align 4
  store i32 %957, i32* %cand_x, align 4
  %958 = load i32, i32* %iYMinNow, align 4
  %959 = load i32, i32* %search_step, align 4
  %add1245 = add nsw i32 %958, %959
  store i32 %add1245, i32* %cand_y, align 4
  %960 = load i32, i32* %cand_x, align 4
  %961 = load i16, i16* %center2_x, align 2
  %conv1246 = sext i16 %961 to i32
  %sub1247 = sub nsw i32 %960, %conv1246
  %call1248 = call i32 @iabs(i32 %sub1247)
  %962 = load i32, i32* %search_range.addr, align 4
  %cmp1249 = icmp sle i32 %call1248, %962
  br i1 %cmp1249, label %land.lhs.true.1251, label %if.end.1327

land.lhs.true.1251:                               ; preds = %for.body.1244
  %963 = load i32, i32* %cand_y, align 4
  %964 = load i16, i16* %center2_y, align 2
  %conv1252 = sext i16 %964 to i32
  %sub1253 = sub nsw i32 %963, %conv1252
  %call1254 = call i32 @iabs(i32 %sub1253)
  %965 = load i32, i32* %search_range.addr, align 4
  %cmp1255 = icmp sle i32 %call1254, %965
  br i1 %cmp1255, label %if.then.1257, label %if.end.1327

if.then.1257:                                     ; preds = %land.lhs.true.1251
  %966 = load i32, i32* %cand_x, align 4
  %967 = load i16, i16* %center2_x, align 2
  %conv1258 = sext i16 %967 to i32
  %sub1259 = sub nsw i32 %966, %conv1258
  %968 = load i32, i32* %search_range.addr, align 4
  %add1260 = add nsw i32 %sub1259, %968
  %idxprom1261 = sext i32 %add1260 to i64
  %969 = load i32, i32* %cand_y, align 4
  %970 = load i16, i16* %center2_y, align 2
  %conv1262 = sext i16 %970 to i32
  %sub1263 = sub nsw i32 %969, %conv1262
  %971 = load i32, i32* %search_range.addr, align 4
  %add1264 = add nsw i32 %sub1263, %971
  %idxprom1265 = sext i32 %add1264 to i64
  %972 = load i8**, i8*** @McostState, align 8
  %arrayidx1266 = getelementptr inbounds i8*, i8** %972, i64 %idxprom1265
  %973 = load i8*, i8** %arrayidx1266, align 8
  %arrayidx1267 = getelementptr inbounds i8, i8* %973, i64 %idxprom1261
  %974 = load i8, i8* %arrayidx1267, align 1
  %tobool1268 = icmp ne i8 %974, 0
  br i1 %tobool1268, label %if.end.1326, label %if.then.1269

if.then.1269:                                     ; preds = %if.then.1257
  %975 = load i32, i32* %lambda_factor.addr, align 4
  %976 = load i16, i16* %center1_x, align 2
  %conv1270 = sext i16 %976 to i32
  %977 = load i32, i32* %mvshift, align 4
  %shl1271 = shl i32 %conv1270, %977
  %978 = load i32, i32* %pred_x1, align 4
  %sub1272 = sub nsw i32 %shl1271, %978
  %idxprom1273 = sext i32 %sub1272 to i64
  %979 = load i32*, i32** @mvbits, align 8
  %arrayidx1274 = getelementptr inbounds i32, i32* %979, i64 %idxprom1273
  %980 = load i32, i32* %arrayidx1274, align 4
  %981 = load i16, i16* %center1_y, align 2
  %conv1275 = sext i16 %981 to i32
  %982 = load i32, i32* %mvshift, align 4
  %shl1276 = shl i32 %conv1275, %982
  %983 = load i32, i32* %pred_y1, align 4
  %sub1277 = sub nsw i32 %shl1276, %983
  %idxprom1278 = sext i32 %sub1277 to i64
  %984 = load i32*, i32** @mvbits, align 8
  %arrayidx1279 = getelementptr inbounds i32, i32* %984, i64 %idxprom1278
  %985 = load i32, i32* %arrayidx1279, align 4
  %add1280 = add nsw i32 %980, %985
  %mul1281 = mul nsw i32 %975, %add1280
  %shr1282 = ashr i32 %mul1281, 16
  store i32 %shr1282, i32* %mcost, align 4
  %986 = load i32, i32* %lambda_factor.addr, align 4
  %987 = load i32, i32* %cand_x, align 4
  %988 = load i32, i32* %mvshift, align 4
  %shl1283 = shl i32 %987, %988
  %989 = load i32, i32* %pred_x2, align 4
  %sub1284 = sub nsw i32 %shl1283, %989
  %idxprom1285 = sext i32 %sub1284 to i64
  %990 = load i32*, i32** @mvbits, align 8
  %arrayidx1286 = getelementptr inbounds i32, i32* %990, i64 %idxprom1285
  %991 = load i32, i32* %arrayidx1286, align 4
  %992 = load i32, i32* %cand_y, align 4
  %993 = load i32, i32* %mvshift, align 4
  %shl1287 = shl i32 %992, %993
  %994 = load i32, i32* %pred_y2, align 4
  %sub1288 = sub nsw i32 %shl1287, %994
  %idxprom1289 = sext i32 %sub1288 to i64
  %995 = load i32*, i32** @mvbits, align 8
  %arrayidx1290 = getelementptr inbounds i32, i32* %995, i64 %idxprom1289
  %996 = load i32, i32* %arrayidx1290, align 4
  %add1291 = add nsw i32 %991, %996
  %mul1292 = mul nsw i32 %986, %add1291
  %shr1293 = ashr i32 %mul1292, 16
  %997 = load i32, i32* %mcost, align 4
  %add1294 = add nsw i32 %997, %shr1293
  store i32 %add1294, i32* %mcost, align 4
  %998 = load i32, i32* %mcost, align 4
  %999 = load i32, i32* %min_mcost.addr, align 4
  %cmp1295 = icmp slt i32 %998, %999
  br i1 %cmp1295, label %if.then.1297, label %if.end.1325

if.then.1297:                                     ; preds = %if.then.1269
  %1000 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %1001 = load i16*, i16** %cur_pic.addr, align 8
  %1002 = load i32, i32* %blocksize_y, align 4
  %1003 = load i32, i32* %blocksize_x, align 4
  %1004 = load i32, i32* %min_mcost.addr, align 4
  %1005 = load i32, i32* %mcost, align 4
  %sub1298 = sub nsw i32 %1004, %1005
  %1006 = load i16, i16* %center1_x, align 2
  %conv1299 = sext i16 %1006 to i32
  %shl1300 = shl i32 %conv1299, 2
  %add1301 = add nsw i32 %shl1300, 80
  %1007 = load i16, i16* %center1_y, align 2
  %conv1302 = sext i16 %1007 to i32
  %shl1303 = shl i32 %conv1302, 2
  %add1304 = add nsw i32 %shl1303, 80
  %1008 = load i32, i32* %cand_x, align 4
  %shl1305 = shl i32 %1008, 2
  %add1306 = add nsw i32 %shl1305, 80
  %1009 = load i32, i32* %cand_y, align 4
  %shl1307 = shl i32 %1009, 2
  %add1308 = add nsw i32 %shl1307, 80
  %call1309 = call i32 %1000(i16* %1001, i32 %1002, i32 %1003, i32 %sub1298, i32 %add1301, i32 %add1304, i32 %add1306, i32 %add1308)
  %1010 = load i32, i32* %mcost, align 4
  %add1310 = add nsw i32 %1010, %call1309
  store i32 %add1310, i32* %mcost, align 4
  %1011 = load i32, i32* %cand_x, align 4
  %1012 = load i16, i16* %center2_x, align 2
  %conv1311 = sext i16 %1012 to i32
  %sub1312 = sub nsw i32 %1011, %conv1311
  %1013 = load i32, i32* %search_range.addr, align 4
  %add1313 = add nsw i32 %sub1312, %1013
  %idxprom1314 = sext i32 %add1313 to i64
  %1014 = load i32, i32* %cand_y, align 4
  %1015 = load i16, i16* %center2_y, align 2
  %conv1315 = sext i16 %1015 to i32
  %sub1316 = sub nsw i32 %1014, %conv1315
  %1016 = load i32, i32* %search_range.addr, align 4
  %add1317 = add nsw i32 %sub1316, %1016
  %idxprom1318 = sext i32 %add1317 to i64
  %1017 = load i8**, i8*** @McostState, align 8
  %arrayidx1319 = getelementptr inbounds i8*, i8** %1017, i64 %idxprom1318
  %1018 = load i8*, i8** %arrayidx1319, align 8
  %arrayidx1320 = getelementptr inbounds i8, i8* %1018, i64 %idxprom1314
  store i8 1, i8* %arrayidx1320, align 1
  %1019 = load i32, i32* %mcost, align 4
  %1020 = load i32, i32* %min_mcost.addr, align 4
  %cmp1321 = icmp slt i32 %1019, %1020
  br i1 %cmp1321, label %if.then.1323, label %if.end.1324

if.then.1323:                                     ; preds = %if.then.1297
  %1021 = load i32, i32* %cand_x, align 4
  store i32 %1021, i32* %best_x, align 4
  %1022 = load i32, i32* %cand_y, align 4
  store i32 %1022, i32* %best_y, align 4
  %1023 = load i32, i32* %mcost, align 4
  store i32 %1023, i32* %min_mcost.addr, align 4
  br label %if.end.1324

if.end.1324:                                      ; preds = %if.then.1323, %if.then.1297
  br label %if.end.1325

if.end.1325:                                      ; preds = %if.end.1324, %if.then.1269
  br label %if.end.1326

if.end.1326:                                      ; preds = %if.end.1325, %if.then.1257
  br label %if.end.1327

if.end.1327:                                      ; preds = %if.end.1326, %land.lhs.true.1251, %for.body.1244
  %1024 = load i32, i32* %iXMinNow, align 4
  store i32 %1024, i32* %cand_x, align 4
  %1025 = load i32, i32* %iYMinNow, align 4
  %1026 = load i32, i32* %search_step, align 4
  %sub1328 = sub nsw i32 %1025, %1026
  store i32 %sub1328, i32* %cand_y, align 4
  %1027 = load i32, i32* %cand_x, align 4
  %1028 = load i16, i16* %center2_x, align 2
  %conv1329 = sext i16 %1028 to i32
  %sub1330 = sub nsw i32 %1027, %conv1329
  %call1331 = call i32 @iabs(i32 %sub1330)
  %1029 = load i32, i32* %search_range.addr, align 4
  %cmp1332 = icmp sle i32 %call1331, %1029
  br i1 %cmp1332, label %land.lhs.true.1334, label %if.end.1410

land.lhs.true.1334:                               ; preds = %if.end.1327
  %1030 = load i32, i32* %cand_y, align 4
  %1031 = load i16, i16* %center2_y, align 2
  %conv1335 = sext i16 %1031 to i32
  %sub1336 = sub nsw i32 %1030, %conv1335
  %call1337 = call i32 @iabs(i32 %sub1336)
  %1032 = load i32, i32* %search_range.addr, align 4
  %cmp1338 = icmp sle i32 %call1337, %1032
  br i1 %cmp1338, label %if.then.1340, label %if.end.1410

if.then.1340:                                     ; preds = %land.lhs.true.1334
  %1033 = load i32, i32* %cand_x, align 4
  %1034 = load i16, i16* %center2_x, align 2
  %conv1341 = sext i16 %1034 to i32
  %sub1342 = sub nsw i32 %1033, %conv1341
  %1035 = load i32, i32* %search_range.addr, align 4
  %add1343 = add nsw i32 %sub1342, %1035
  %idxprom1344 = sext i32 %add1343 to i64
  %1036 = load i32, i32* %cand_y, align 4
  %1037 = load i16, i16* %center2_y, align 2
  %conv1345 = sext i16 %1037 to i32
  %sub1346 = sub nsw i32 %1036, %conv1345
  %1038 = load i32, i32* %search_range.addr, align 4
  %add1347 = add nsw i32 %sub1346, %1038
  %idxprom1348 = sext i32 %add1347 to i64
  %1039 = load i8**, i8*** @McostState, align 8
  %arrayidx1349 = getelementptr inbounds i8*, i8** %1039, i64 %idxprom1348
  %1040 = load i8*, i8** %arrayidx1349, align 8
  %arrayidx1350 = getelementptr inbounds i8, i8* %1040, i64 %idxprom1344
  %1041 = load i8, i8* %arrayidx1350, align 1
  %tobool1351 = icmp ne i8 %1041, 0
  br i1 %tobool1351, label %if.end.1409, label %if.then.1352

if.then.1352:                                     ; preds = %if.then.1340
  %1042 = load i32, i32* %lambda_factor.addr, align 4
  %1043 = load i16, i16* %center1_x, align 2
  %conv1353 = sext i16 %1043 to i32
  %1044 = load i32, i32* %mvshift, align 4
  %shl1354 = shl i32 %conv1353, %1044
  %1045 = load i32, i32* %pred_x1, align 4
  %sub1355 = sub nsw i32 %shl1354, %1045
  %idxprom1356 = sext i32 %sub1355 to i64
  %1046 = load i32*, i32** @mvbits, align 8
  %arrayidx1357 = getelementptr inbounds i32, i32* %1046, i64 %idxprom1356
  %1047 = load i32, i32* %arrayidx1357, align 4
  %1048 = load i16, i16* %center1_y, align 2
  %conv1358 = sext i16 %1048 to i32
  %1049 = load i32, i32* %mvshift, align 4
  %shl1359 = shl i32 %conv1358, %1049
  %1050 = load i32, i32* %pred_y1, align 4
  %sub1360 = sub nsw i32 %shl1359, %1050
  %idxprom1361 = sext i32 %sub1360 to i64
  %1051 = load i32*, i32** @mvbits, align 8
  %arrayidx1362 = getelementptr inbounds i32, i32* %1051, i64 %idxprom1361
  %1052 = load i32, i32* %arrayidx1362, align 4
  %add1363 = add nsw i32 %1047, %1052
  %mul1364 = mul nsw i32 %1042, %add1363
  %shr1365 = ashr i32 %mul1364, 16
  store i32 %shr1365, i32* %mcost, align 4
  %1053 = load i32, i32* %lambda_factor.addr, align 4
  %1054 = load i32, i32* %cand_x, align 4
  %1055 = load i32, i32* %mvshift, align 4
  %shl1366 = shl i32 %1054, %1055
  %1056 = load i32, i32* %pred_x2, align 4
  %sub1367 = sub nsw i32 %shl1366, %1056
  %idxprom1368 = sext i32 %sub1367 to i64
  %1057 = load i32*, i32** @mvbits, align 8
  %arrayidx1369 = getelementptr inbounds i32, i32* %1057, i64 %idxprom1368
  %1058 = load i32, i32* %arrayidx1369, align 4
  %1059 = load i32, i32* %cand_y, align 4
  %1060 = load i32, i32* %mvshift, align 4
  %shl1370 = shl i32 %1059, %1060
  %1061 = load i32, i32* %pred_y2, align 4
  %sub1371 = sub nsw i32 %shl1370, %1061
  %idxprom1372 = sext i32 %sub1371 to i64
  %1062 = load i32*, i32** @mvbits, align 8
  %arrayidx1373 = getelementptr inbounds i32, i32* %1062, i64 %idxprom1372
  %1063 = load i32, i32* %arrayidx1373, align 4
  %add1374 = add nsw i32 %1058, %1063
  %mul1375 = mul nsw i32 %1053, %add1374
  %shr1376 = ashr i32 %mul1375, 16
  %1064 = load i32, i32* %mcost, align 4
  %add1377 = add nsw i32 %1064, %shr1376
  store i32 %add1377, i32* %mcost, align 4
  %1065 = load i32, i32* %mcost, align 4
  %1066 = load i32, i32* %min_mcost.addr, align 4
  %cmp1378 = icmp slt i32 %1065, %1066
  br i1 %cmp1378, label %if.then.1380, label %if.end.1408

if.then.1380:                                     ; preds = %if.then.1352
  %1067 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %1068 = load i16*, i16** %cur_pic.addr, align 8
  %1069 = load i32, i32* %blocksize_y, align 4
  %1070 = load i32, i32* %blocksize_x, align 4
  %1071 = load i32, i32* %min_mcost.addr, align 4
  %1072 = load i32, i32* %mcost, align 4
  %sub1381 = sub nsw i32 %1071, %1072
  %1073 = load i16, i16* %center1_x, align 2
  %conv1382 = sext i16 %1073 to i32
  %shl1383 = shl i32 %conv1382, 2
  %add1384 = add nsw i32 %shl1383, 80
  %1074 = load i16, i16* %center1_y, align 2
  %conv1385 = sext i16 %1074 to i32
  %shl1386 = shl i32 %conv1385, 2
  %add1387 = add nsw i32 %shl1386, 80
  %1075 = load i32, i32* %cand_x, align 4
  %shl1388 = shl i32 %1075, 2
  %add1389 = add nsw i32 %shl1388, 80
  %1076 = load i32, i32* %cand_y, align 4
  %shl1390 = shl i32 %1076, 2
  %add1391 = add nsw i32 %shl1390, 80
  %call1392 = call i32 %1067(i16* %1068, i32 %1069, i32 %1070, i32 %sub1381, i32 %add1384, i32 %add1387, i32 %add1389, i32 %add1391)
  %1077 = load i32, i32* %mcost, align 4
  %add1393 = add nsw i32 %1077, %call1392
  store i32 %add1393, i32* %mcost, align 4
  %1078 = load i32, i32* %cand_x, align 4
  %1079 = load i16, i16* %center2_x, align 2
  %conv1394 = sext i16 %1079 to i32
  %sub1395 = sub nsw i32 %1078, %conv1394
  %1080 = load i32, i32* %search_range.addr, align 4
  %add1396 = add nsw i32 %sub1395, %1080
  %idxprom1397 = sext i32 %add1396 to i64
  %1081 = load i32, i32* %cand_y, align 4
  %1082 = load i16, i16* %center2_y, align 2
  %conv1398 = sext i16 %1082 to i32
  %sub1399 = sub nsw i32 %1081, %conv1398
  %1083 = load i32, i32* %search_range.addr, align 4
  %add1400 = add nsw i32 %sub1399, %1083
  %idxprom1401 = sext i32 %add1400 to i64
  %1084 = load i8**, i8*** @McostState, align 8
  %arrayidx1402 = getelementptr inbounds i8*, i8** %1084, i64 %idxprom1401
  %1085 = load i8*, i8** %arrayidx1402, align 8
  %arrayidx1403 = getelementptr inbounds i8, i8* %1085, i64 %idxprom1397
  store i8 1, i8* %arrayidx1403, align 1
  %1086 = load i32, i32* %mcost, align 4
  %1087 = load i32, i32* %min_mcost.addr, align 4
  %cmp1404 = icmp slt i32 %1086, %1087
  br i1 %cmp1404, label %if.then.1406, label %if.end.1407

if.then.1406:                                     ; preds = %if.then.1380
  %1088 = load i32, i32* %cand_x, align 4
  store i32 %1088, i32* %best_x, align 4
  %1089 = load i32, i32* %cand_y, align 4
  store i32 %1089, i32* %best_y, align 4
  %1090 = load i32, i32* %mcost, align 4
  store i32 %1090, i32* %min_mcost.addr, align 4
  br label %if.end.1407

if.end.1407:                                      ; preds = %if.then.1406, %if.then.1380
  br label %if.end.1408

if.end.1408:                                      ; preds = %if.end.1407, %if.then.1352
  br label %if.end.1409

if.end.1409:                                      ; preds = %if.end.1408, %if.then.1340
  br label %if.end.1410

if.end.1410:                                      ; preds = %if.end.1409, %land.lhs.true.1334, %if.end.1327
  br label %for.inc.1411

for.inc.1411:                                     ; preds = %if.end.1410
  %1091 = load i32, i32* %i, align 4
  %add1412 = add nsw i32 %1091, 2
  store i32 %add1412, i32* %i, align 4
  br label %for.cond.1240

for.end.1413:                                     ; preds = %for.cond.1240
  %1092 = load i32, i32* %min_mcost.addr, align 4
  %1093 = load i32, i32* @pred_SAD, align 4
  %sub1414 = sub nsw i32 %1092, %1093
  %conv1415 = sitofp i32 %sub1414 to float
  %1094 = load i32, i32* @pred_SAD, align 4
  %conv1416 = sitofp i32 %1094 to float
  %1095 = load float, float* %betaFourth_2, align 4
  %mul1417 = fmul float %conv1416, %1095
  %cmp1418 = fcmp olt float %conv1415, %mul1417
  br i1 %cmp1418, label %if.then.1420, label %if.else.1421

if.then.1420:                                     ; preds = %for.end.1413
  br label %fourth_2_step

if.else.1421:                                     ; preds = %for.end.1413
  %1096 = load i32, i32* %min_mcost.addr, align 4
  %1097 = load i32, i32* @pred_SAD, align 4
  %sub1422 = sub nsw i32 %1096, %1097
  %conv1423 = sitofp i32 %sub1422 to float
  %1098 = load i32, i32* @pred_SAD, align 4
  %conv1424 = sitofp i32 %1098 to float
  %1099 = load float, float* %betaFourth_1, align 4
  %mul1425 = fmul float %conv1424, %1099
  %cmp1426 = fcmp olt float %conv1423, %mul1425
  br i1 %cmp1426, label %if.then.1428, label %if.end.1429

if.then.1428:                                     ; preds = %if.else.1421
  br label %fourth_1_step

if.end.1429:                                      ; preds = %if.else.1421
  br label %if.end.1430

if.end.1430:                                      ; preds = %if.end.1429
  %1100 = load i32, i32* %best_x, align 4
  store i32 %1100, i32* %iXMinNow, align 4
  %1101 = load i32, i32* %best_y, align 4
  store i32 %1101, i32* %iYMinNow, align 4
  store i32 1, i32* %pos, align 4
  br label %for.cond.1431

for.cond.1431:                                    ; preds = %for.inc.1525, %if.end.1430
  %1102 = load i32, i32* %pos, align 4
  %cmp1432 = icmp slt i32 %1102, 25
  br i1 %cmp1432, label %for.body.1434, label %for.end.1527

for.body.1434:                                    ; preds = %for.cond.1431
  %1103 = load i32, i32* %iXMinNow, align 4
  %1104 = load i32, i32* %pos, align 4
  %idxprom1435 = sext i32 %1104 to i64
  %1105 = load i16*, i16** @spiral_search_x, align 8
  %arrayidx1436 = getelementptr inbounds i16, i16* %1105, i64 %idxprom1435
  %1106 = load i16, i16* %arrayidx1436, align 2
  %conv1437 = sext i16 %1106 to i32
  %add1438 = add nsw i32 %1103, %conv1437
  store i32 %add1438, i32* %cand_x, align 4
  %1107 = load i32, i32* %iYMinNow, align 4
  %1108 = load i32, i32* %pos, align 4
  %idxprom1439 = sext i32 %1108 to i64
  %1109 = load i16*, i16** @spiral_search_y, align 8
  %arrayidx1440 = getelementptr inbounds i16, i16* %1109, i64 %idxprom1439
  %1110 = load i16, i16* %arrayidx1440, align 2
  %conv1441 = sext i16 %1110 to i32
  %add1442 = add nsw i32 %1107, %conv1441
  store i32 %add1442, i32* %cand_y, align 4
  %1111 = load i32, i32* %cand_x, align 4
  %1112 = load i16, i16* %center2_x, align 2
  %conv1443 = sext i16 %1112 to i32
  %sub1444 = sub nsw i32 %1111, %conv1443
  %call1445 = call i32 @iabs(i32 %sub1444)
  %1113 = load i32, i32* %search_range.addr, align 4
  %cmp1446 = icmp sle i32 %call1445, %1113
  br i1 %cmp1446, label %land.lhs.true.1448, label %if.end.1524

land.lhs.true.1448:                               ; preds = %for.body.1434
  %1114 = load i32, i32* %cand_y, align 4
  %1115 = load i16, i16* %center2_y, align 2
  %conv1449 = sext i16 %1115 to i32
  %sub1450 = sub nsw i32 %1114, %conv1449
  %call1451 = call i32 @iabs(i32 %sub1450)
  %1116 = load i32, i32* %search_range.addr, align 4
  %cmp1452 = icmp sle i32 %call1451, %1116
  br i1 %cmp1452, label %if.then.1454, label %if.end.1524

if.then.1454:                                     ; preds = %land.lhs.true.1448
  %1117 = load i32, i32* %cand_x, align 4
  %1118 = load i16, i16* %center2_x, align 2
  %conv1455 = sext i16 %1118 to i32
  %sub1456 = sub nsw i32 %1117, %conv1455
  %1119 = load i32, i32* %search_range.addr, align 4
  %add1457 = add nsw i32 %sub1456, %1119
  %idxprom1458 = sext i32 %add1457 to i64
  %1120 = load i32, i32* %cand_y, align 4
  %1121 = load i16, i16* %center2_y, align 2
  %conv1459 = sext i16 %1121 to i32
  %sub1460 = sub nsw i32 %1120, %conv1459
  %1122 = load i32, i32* %search_range.addr, align 4
  %add1461 = add nsw i32 %sub1460, %1122
  %idxprom1462 = sext i32 %add1461 to i64
  %1123 = load i8**, i8*** @McostState, align 8
  %arrayidx1463 = getelementptr inbounds i8*, i8** %1123, i64 %idxprom1462
  %1124 = load i8*, i8** %arrayidx1463, align 8
  %arrayidx1464 = getelementptr inbounds i8, i8* %1124, i64 %idxprom1458
  %1125 = load i8, i8* %arrayidx1464, align 1
  %tobool1465 = icmp ne i8 %1125, 0
  br i1 %tobool1465, label %if.end.1523, label %if.then.1466

if.then.1466:                                     ; preds = %if.then.1454
  %1126 = load i32, i32* %lambda_factor.addr, align 4
  %1127 = load i16, i16* %center1_x, align 2
  %conv1467 = sext i16 %1127 to i32
  %1128 = load i32, i32* %mvshift, align 4
  %shl1468 = shl i32 %conv1467, %1128
  %1129 = load i32, i32* %pred_x1, align 4
  %sub1469 = sub nsw i32 %shl1468, %1129
  %idxprom1470 = sext i32 %sub1469 to i64
  %1130 = load i32*, i32** @mvbits, align 8
  %arrayidx1471 = getelementptr inbounds i32, i32* %1130, i64 %idxprom1470
  %1131 = load i32, i32* %arrayidx1471, align 4
  %1132 = load i16, i16* %center1_y, align 2
  %conv1472 = sext i16 %1132 to i32
  %1133 = load i32, i32* %mvshift, align 4
  %shl1473 = shl i32 %conv1472, %1133
  %1134 = load i32, i32* %pred_y1, align 4
  %sub1474 = sub nsw i32 %shl1473, %1134
  %idxprom1475 = sext i32 %sub1474 to i64
  %1135 = load i32*, i32** @mvbits, align 8
  %arrayidx1476 = getelementptr inbounds i32, i32* %1135, i64 %idxprom1475
  %1136 = load i32, i32* %arrayidx1476, align 4
  %add1477 = add nsw i32 %1131, %1136
  %mul1478 = mul nsw i32 %1126, %add1477
  %shr1479 = ashr i32 %mul1478, 16
  store i32 %shr1479, i32* %mcost, align 4
  %1137 = load i32, i32* %lambda_factor.addr, align 4
  %1138 = load i32, i32* %cand_x, align 4
  %1139 = load i32, i32* %mvshift, align 4
  %shl1480 = shl i32 %1138, %1139
  %1140 = load i32, i32* %pred_x2, align 4
  %sub1481 = sub nsw i32 %shl1480, %1140
  %idxprom1482 = sext i32 %sub1481 to i64
  %1141 = load i32*, i32** @mvbits, align 8
  %arrayidx1483 = getelementptr inbounds i32, i32* %1141, i64 %idxprom1482
  %1142 = load i32, i32* %arrayidx1483, align 4
  %1143 = load i32, i32* %cand_y, align 4
  %1144 = load i32, i32* %mvshift, align 4
  %shl1484 = shl i32 %1143, %1144
  %1145 = load i32, i32* %pred_y2, align 4
  %sub1485 = sub nsw i32 %shl1484, %1145
  %idxprom1486 = sext i32 %sub1485 to i64
  %1146 = load i32*, i32** @mvbits, align 8
  %arrayidx1487 = getelementptr inbounds i32, i32* %1146, i64 %idxprom1486
  %1147 = load i32, i32* %arrayidx1487, align 4
  %add1488 = add nsw i32 %1142, %1147
  %mul1489 = mul nsw i32 %1137, %add1488
  %shr1490 = ashr i32 %mul1489, 16
  %1148 = load i32, i32* %mcost, align 4
  %add1491 = add nsw i32 %1148, %shr1490
  store i32 %add1491, i32* %mcost, align 4
  %1149 = load i32, i32* %mcost, align 4
  %1150 = load i32, i32* %min_mcost.addr, align 4
  %cmp1492 = icmp slt i32 %1149, %1150
  br i1 %cmp1492, label %if.then.1494, label %if.end.1522

if.then.1494:                                     ; preds = %if.then.1466
  %1151 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %1152 = load i16*, i16** %cur_pic.addr, align 8
  %1153 = load i32, i32* %blocksize_y, align 4
  %1154 = load i32, i32* %blocksize_x, align 4
  %1155 = load i32, i32* %min_mcost.addr, align 4
  %1156 = load i32, i32* %mcost, align 4
  %sub1495 = sub nsw i32 %1155, %1156
  %1157 = load i16, i16* %center1_x, align 2
  %conv1496 = sext i16 %1157 to i32
  %shl1497 = shl i32 %conv1496, 2
  %add1498 = add nsw i32 %shl1497, 80
  %1158 = load i16, i16* %center1_y, align 2
  %conv1499 = sext i16 %1158 to i32
  %shl1500 = shl i32 %conv1499, 2
  %add1501 = add nsw i32 %shl1500, 80
  %1159 = load i32, i32* %cand_x, align 4
  %shl1502 = shl i32 %1159, 2
  %add1503 = add nsw i32 %shl1502, 80
  %1160 = load i32, i32* %cand_y, align 4
  %shl1504 = shl i32 %1160, 2
  %add1505 = add nsw i32 %shl1504, 80
  %call1506 = call i32 %1151(i16* %1152, i32 %1153, i32 %1154, i32 %sub1495, i32 %add1498, i32 %add1501, i32 %add1503, i32 %add1505)
  %1161 = load i32, i32* %mcost, align 4
  %add1507 = add nsw i32 %1161, %call1506
  store i32 %add1507, i32* %mcost, align 4
  %1162 = load i32, i32* %cand_x, align 4
  %1163 = load i16, i16* %center2_x, align 2
  %conv1508 = sext i16 %1163 to i32
  %sub1509 = sub nsw i32 %1162, %conv1508
  %1164 = load i32, i32* %search_range.addr, align 4
  %add1510 = add nsw i32 %sub1509, %1164
  %idxprom1511 = sext i32 %add1510 to i64
  %1165 = load i32, i32* %cand_y, align 4
  %1166 = load i16, i16* %center2_y, align 2
  %conv1512 = sext i16 %1166 to i32
  %sub1513 = sub nsw i32 %1165, %conv1512
  %1167 = load i32, i32* %search_range.addr, align 4
  %add1514 = add nsw i32 %sub1513, %1167
  %idxprom1515 = sext i32 %add1514 to i64
  %1168 = load i8**, i8*** @McostState, align 8
  %arrayidx1516 = getelementptr inbounds i8*, i8** %1168, i64 %idxprom1515
  %1169 = load i8*, i8** %arrayidx1516, align 8
  %arrayidx1517 = getelementptr inbounds i8, i8* %1169, i64 %idxprom1511
  store i8 1, i8* %arrayidx1517, align 1
  %1170 = load i32, i32* %mcost, align 4
  %1171 = load i32, i32* %min_mcost.addr, align 4
  %cmp1518 = icmp slt i32 %1170, %1171
  br i1 %cmp1518, label %if.then.1520, label %if.end.1521

if.then.1520:                                     ; preds = %if.then.1494
  %1172 = load i32, i32* %cand_x, align 4
  store i32 %1172, i32* %best_x, align 4
  %1173 = load i32, i32* %cand_y, align 4
  store i32 %1173, i32* %best_y, align 4
  %1174 = load i32, i32* %mcost, align 4
  store i32 %1174, i32* %min_mcost.addr, align 4
  br label %if.end.1521

if.end.1521:                                      ; preds = %if.then.1520, %if.then.1494
  br label %if.end.1522

if.end.1522:                                      ; preds = %if.end.1521, %if.then.1466
  br label %if.end.1523

if.end.1523:                                      ; preds = %if.end.1522, %if.then.1454
  br label %if.end.1524

if.end.1524:                                      ; preds = %if.end.1523, %land.lhs.true.1448, %for.body.1434
  br label %for.inc.1525

for.inc.1525:                                     ; preds = %if.end.1524
  %1175 = load i32, i32* %pos, align 4
  %inc1526 = add nsw i32 %1175, 1
  store i32 %inc1526, i32* %pos, align 4
  br label %for.cond.1431

for.end.1527:                                     ; preds = %for.cond.1431
  %1176 = load i32, i32* %min_mcost.addr, align 4
  %1177 = load i32, i32* @pred_SAD, align 4
  %sub1528 = sub nsw i32 %1176, %1177
  %conv1529 = sitofp i32 %sub1528 to float
  %1178 = load i32, i32* @pred_SAD, align 4
  %conv1530 = sitofp i32 %1178 to float
  %1179 = load float, float* %betaFourth_2, align 4
  %mul1531 = fmul float %conv1530, %1179
  %cmp1532 = fcmp olt float %conv1529, %mul1531
  br i1 %cmp1532, label %if.then.1534, label %if.else.1535

if.then.1534:                                     ; preds = %for.end.1527
  br label %fourth_2_step

if.else.1535:                                     ; preds = %for.end.1527
  %1180 = load i32, i32* %min_mcost.addr, align 4
  %1181 = load i32, i32* @pred_SAD, align 4
  %sub1536 = sub nsw i32 %1180, %1181
  %conv1537 = sitofp i32 %sub1536 to float
  %1182 = load i32, i32* @pred_SAD, align 4
  %conv1538 = sitofp i32 %1182 to float
  %1183 = load float, float* %betaFourth_1, align 4
  %mul1539 = fmul float %conv1538, %1183
  %cmp1540 = fcmp olt float %conv1537, %mul1539
  br i1 %cmp1540, label %if.then.1542, label %if.end.1543

if.then.1542:                                     ; preds = %if.else.1535
  br label %fourth_1_step

if.end.1543:                                      ; preds = %if.else.1535
  br label %if.end.1544

if.end.1544:                                      ; preds = %if.end.1543
  %1184 = bitcast [16 x i32]* %temp_Big_Hexagon_x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1184, i8* bitcast ([16 x i32]* @Big_Hexagon_x to i8*), i64 64, i32 16, i1 false)
  %1185 = bitcast [16 x i32]* %temp_Big_Hexagon_y to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1185, i8* bitcast ([16 x i32]* @Big_Hexagon_y to i8*), i64 64, i32 16, i1 false)
  store i32 1, i32* %i, align 4
  br label %for.cond.1545

for.cond.1545:                                    ; preds = %for.inc.1660, %if.end.1544
  %1186 = load i32, i32* %i, align 4
  %1187 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %search_range1546 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1187, i32 0, i32 7
  %1188 = load i32, i32* %search_range1546, align 4
  %shr1547 = ashr i32 %1188, 2
  %cmp1548 = icmp sle i32 %1186, %shr1547
  br i1 %cmp1548, label %for.body.1550, label %for.end.1662

for.body.1550:                                    ; preds = %for.cond.1545
  store i32 0, i32* %m, align 4
  br label %for.cond.1551

for.cond.1551:                                    ; preds = %for.inc.1653, %for.body.1550
  %1189 = load i32, i32* %m, align 4
  %cmp1552 = icmp slt i32 %1189, 16
  br i1 %cmp1552, label %for.body.1554, label %for.end.1655

for.body.1554:                                    ; preds = %for.cond.1551
  %1190 = load i32, i32* %iXMinNow, align 4
  %1191 = load i32, i32* %m, align 4
  %idxprom1555 = sext i32 %1191 to i64
  %arrayidx1556 = getelementptr inbounds [16 x i32], [16 x i32]* %temp_Big_Hexagon_x, i32 0, i64 %idxprom1555
  %1192 = load i32, i32* %arrayidx1556, align 4
  %add1557 = add nsw i32 %1190, %1192
  store i32 %add1557, i32* %cand_x, align 4
  %1193 = load i32, i32* %iYMinNow, align 4
  %1194 = load i32, i32* %m, align 4
  %idxprom1558 = sext i32 %1194 to i64
  %arrayidx1559 = getelementptr inbounds [16 x i32], [16 x i32]* %temp_Big_Hexagon_y, i32 0, i64 %idxprom1558
  %1195 = load i32, i32* %arrayidx1559, align 4
  %add1560 = add nsw i32 %1193, %1195
  store i32 %add1560, i32* %cand_y, align 4
  %1196 = load i32, i32* %m, align 4
  %idxprom1561 = sext i32 %1196 to i64
  %arrayidx1562 = getelementptr inbounds [16 x i32], [16 x i32]* @Big_Hexagon_x, i32 0, i64 %idxprom1561
  %1197 = load i32, i32* %arrayidx1562, align 4
  %1198 = load i32, i32* %m, align 4
  %idxprom1563 = sext i32 %1198 to i64
  %arrayidx1564 = getelementptr inbounds [16 x i32], [16 x i32]* %temp_Big_Hexagon_x, i32 0, i64 %idxprom1563
  %1199 = load i32, i32* %arrayidx1564, align 4
  %add1565 = add nsw i32 %1199, %1197
  store i32 %add1565, i32* %arrayidx1564, align 4
  %1200 = load i32, i32* %m, align 4
  %idxprom1566 = sext i32 %1200 to i64
  %arrayidx1567 = getelementptr inbounds [16 x i32], [16 x i32]* @Big_Hexagon_y, i32 0, i64 %idxprom1566
  %1201 = load i32, i32* %arrayidx1567, align 4
  %1202 = load i32, i32* %m, align 4
  %idxprom1568 = sext i32 %1202 to i64
  %arrayidx1569 = getelementptr inbounds [16 x i32], [16 x i32]* %temp_Big_Hexagon_y, i32 0, i64 %idxprom1568
  %1203 = load i32, i32* %arrayidx1569, align 4
  %add1570 = add nsw i32 %1203, %1201
  store i32 %add1570, i32* %arrayidx1569, align 4
  %1204 = load i32, i32* %cand_x, align 4
  %1205 = load i16, i16* %center2_x, align 2
  %conv1571 = sext i16 %1205 to i32
  %sub1572 = sub nsw i32 %1204, %conv1571
  %call1573 = call i32 @iabs(i32 %sub1572)
  %1206 = load i32, i32* %search_range.addr, align 4
  %cmp1574 = icmp sle i32 %call1573, %1206
  br i1 %cmp1574, label %land.lhs.true.1576, label %if.end.1652

land.lhs.true.1576:                               ; preds = %for.body.1554
  %1207 = load i32, i32* %cand_y, align 4
  %1208 = load i16, i16* %center2_y, align 2
  %conv1577 = sext i16 %1208 to i32
  %sub1578 = sub nsw i32 %1207, %conv1577
  %call1579 = call i32 @iabs(i32 %sub1578)
  %1209 = load i32, i32* %search_range.addr, align 4
  %cmp1580 = icmp sle i32 %call1579, %1209
  br i1 %cmp1580, label %if.then.1582, label %if.end.1652

if.then.1582:                                     ; preds = %land.lhs.true.1576
  %1210 = load i32, i32* %cand_x, align 4
  %1211 = load i16, i16* %center2_x, align 2
  %conv1583 = sext i16 %1211 to i32
  %sub1584 = sub nsw i32 %1210, %conv1583
  %1212 = load i32, i32* %search_range.addr, align 4
  %add1585 = add nsw i32 %sub1584, %1212
  %idxprom1586 = sext i32 %add1585 to i64
  %1213 = load i32, i32* %cand_y, align 4
  %1214 = load i16, i16* %center2_y, align 2
  %conv1587 = sext i16 %1214 to i32
  %sub1588 = sub nsw i32 %1213, %conv1587
  %1215 = load i32, i32* %search_range.addr, align 4
  %add1589 = add nsw i32 %sub1588, %1215
  %idxprom1590 = sext i32 %add1589 to i64
  %1216 = load i8**, i8*** @McostState, align 8
  %arrayidx1591 = getelementptr inbounds i8*, i8** %1216, i64 %idxprom1590
  %1217 = load i8*, i8** %arrayidx1591, align 8
  %arrayidx1592 = getelementptr inbounds i8, i8* %1217, i64 %idxprom1586
  %1218 = load i8, i8* %arrayidx1592, align 1
  %tobool1593 = icmp ne i8 %1218, 0
  br i1 %tobool1593, label %if.end.1651, label %if.then.1594

if.then.1594:                                     ; preds = %if.then.1582
  %1219 = load i32, i32* %lambda_factor.addr, align 4
  %1220 = load i16, i16* %center1_x, align 2
  %conv1595 = sext i16 %1220 to i32
  %1221 = load i32, i32* %mvshift, align 4
  %shl1596 = shl i32 %conv1595, %1221
  %1222 = load i32, i32* %pred_x1, align 4
  %sub1597 = sub nsw i32 %shl1596, %1222
  %idxprom1598 = sext i32 %sub1597 to i64
  %1223 = load i32*, i32** @mvbits, align 8
  %arrayidx1599 = getelementptr inbounds i32, i32* %1223, i64 %idxprom1598
  %1224 = load i32, i32* %arrayidx1599, align 4
  %1225 = load i16, i16* %center1_y, align 2
  %conv1600 = sext i16 %1225 to i32
  %1226 = load i32, i32* %mvshift, align 4
  %shl1601 = shl i32 %conv1600, %1226
  %1227 = load i32, i32* %pred_y1, align 4
  %sub1602 = sub nsw i32 %shl1601, %1227
  %idxprom1603 = sext i32 %sub1602 to i64
  %1228 = load i32*, i32** @mvbits, align 8
  %arrayidx1604 = getelementptr inbounds i32, i32* %1228, i64 %idxprom1603
  %1229 = load i32, i32* %arrayidx1604, align 4
  %add1605 = add nsw i32 %1224, %1229
  %mul1606 = mul nsw i32 %1219, %add1605
  %shr1607 = ashr i32 %mul1606, 16
  store i32 %shr1607, i32* %mcost, align 4
  %1230 = load i32, i32* %lambda_factor.addr, align 4
  %1231 = load i32, i32* %cand_x, align 4
  %1232 = load i32, i32* %mvshift, align 4
  %shl1608 = shl i32 %1231, %1232
  %1233 = load i32, i32* %pred_x2, align 4
  %sub1609 = sub nsw i32 %shl1608, %1233
  %idxprom1610 = sext i32 %sub1609 to i64
  %1234 = load i32*, i32** @mvbits, align 8
  %arrayidx1611 = getelementptr inbounds i32, i32* %1234, i64 %idxprom1610
  %1235 = load i32, i32* %arrayidx1611, align 4
  %1236 = load i32, i32* %cand_y, align 4
  %1237 = load i32, i32* %mvshift, align 4
  %shl1612 = shl i32 %1236, %1237
  %1238 = load i32, i32* %pred_y2, align 4
  %sub1613 = sub nsw i32 %shl1612, %1238
  %idxprom1614 = sext i32 %sub1613 to i64
  %1239 = load i32*, i32** @mvbits, align 8
  %arrayidx1615 = getelementptr inbounds i32, i32* %1239, i64 %idxprom1614
  %1240 = load i32, i32* %arrayidx1615, align 4
  %add1616 = add nsw i32 %1235, %1240
  %mul1617 = mul nsw i32 %1230, %add1616
  %shr1618 = ashr i32 %mul1617, 16
  %1241 = load i32, i32* %mcost, align 4
  %add1619 = add nsw i32 %1241, %shr1618
  store i32 %add1619, i32* %mcost, align 4
  %1242 = load i32, i32* %mcost, align 4
  %1243 = load i32, i32* %min_mcost.addr, align 4
  %cmp1620 = icmp slt i32 %1242, %1243
  br i1 %cmp1620, label %if.then.1622, label %if.end.1650

if.then.1622:                                     ; preds = %if.then.1594
  %1244 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %1245 = load i16*, i16** %cur_pic.addr, align 8
  %1246 = load i32, i32* %blocksize_y, align 4
  %1247 = load i32, i32* %blocksize_x, align 4
  %1248 = load i32, i32* %min_mcost.addr, align 4
  %1249 = load i32, i32* %mcost, align 4
  %sub1623 = sub nsw i32 %1248, %1249
  %1250 = load i16, i16* %center1_x, align 2
  %conv1624 = sext i16 %1250 to i32
  %shl1625 = shl i32 %conv1624, 2
  %add1626 = add nsw i32 %shl1625, 80
  %1251 = load i16, i16* %center1_y, align 2
  %conv1627 = sext i16 %1251 to i32
  %shl1628 = shl i32 %conv1627, 2
  %add1629 = add nsw i32 %shl1628, 80
  %1252 = load i32, i32* %cand_x, align 4
  %shl1630 = shl i32 %1252, 2
  %add1631 = add nsw i32 %shl1630, 80
  %1253 = load i32, i32* %cand_y, align 4
  %shl1632 = shl i32 %1253, 2
  %add1633 = add nsw i32 %shl1632, 80
  %call1634 = call i32 %1244(i16* %1245, i32 %1246, i32 %1247, i32 %sub1623, i32 %add1626, i32 %add1629, i32 %add1631, i32 %add1633)
  %1254 = load i32, i32* %mcost, align 4
  %add1635 = add nsw i32 %1254, %call1634
  store i32 %add1635, i32* %mcost, align 4
  %1255 = load i32, i32* %cand_x, align 4
  %1256 = load i16, i16* %center2_x, align 2
  %conv1636 = sext i16 %1256 to i32
  %sub1637 = sub nsw i32 %1255, %conv1636
  %1257 = load i32, i32* %search_range.addr, align 4
  %add1638 = add nsw i32 %sub1637, %1257
  %idxprom1639 = sext i32 %add1638 to i64
  %1258 = load i32, i32* %cand_y, align 4
  %1259 = load i16, i16* %center2_y, align 2
  %conv1640 = sext i16 %1259 to i32
  %sub1641 = sub nsw i32 %1258, %conv1640
  %1260 = load i32, i32* %search_range.addr, align 4
  %add1642 = add nsw i32 %sub1641, %1260
  %idxprom1643 = sext i32 %add1642 to i64
  %1261 = load i8**, i8*** @McostState, align 8
  %arrayidx1644 = getelementptr inbounds i8*, i8** %1261, i64 %idxprom1643
  %1262 = load i8*, i8** %arrayidx1644, align 8
  %arrayidx1645 = getelementptr inbounds i8, i8* %1262, i64 %idxprom1639
  store i8 1, i8* %arrayidx1645, align 1
  %1263 = load i32, i32* %mcost, align 4
  %1264 = load i32, i32* %min_mcost.addr, align 4
  %cmp1646 = icmp slt i32 %1263, %1264
  br i1 %cmp1646, label %if.then.1648, label %if.end.1649

if.then.1648:                                     ; preds = %if.then.1622
  %1265 = load i32, i32* %cand_x, align 4
  store i32 %1265, i32* %best_x, align 4
  %1266 = load i32, i32* %cand_y, align 4
  store i32 %1266, i32* %best_y, align 4
  %1267 = load i32, i32* %mcost, align 4
  store i32 %1267, i32* %min_mcost.addr, align 4
  br label %if.end.1649

if.end.1649:                                      ; preds = %if.then.1648, %if.then.1622
  br label %if.end.1650

if.end.1650:                                      ; preds = %if.end.1649, %if.then.1594
  br label %if.end.1651

if.end.1651:                                      ; preds = %if.end.1650, %if.then.1582
  br label %if.end.1652

if.end.1652:                                      ; preds = %if.end.1651, %land.lhs.true.1576, %for.body.1554
  br label %for.inc.1653

for.inc.1653:                                     ; preds = %if.end.1652
  %1268 = load i32, i32* %m, align 4
  %inc1654 = add nsw i32 %1268, 1
  store i32 %inc1654, i32* %m, align 4
  br label %for.cond.1551

for.end.1655:                                     ; preds = %for.cond.1551
  %1269 = load i32, i32* %min_mcost.addr, align 4
  %1270 = load i32, i32* %ET_Thred, align 4
  %cmp1656 = icmp slt i32 %1269, %1270
  br i1 %cmp1656, label %if.then.1658, label %if.end.1659

if.then.1658:                                     ; preds = %for.end.1655
  br label %terminate_step

if.end.1659:                                      ; preds = %for.end.1655
  br label %for.inc.1660

for.inc.1660:                                     ; preds = %if.end.1659
  %1271 = load i32, i32* %i, align 4
  %inc1661 = add nsw i32 %1271, 1
  store i32 %inc1661, i32* %i, align 4
  br label %for.cond.1545

for.end.1662:                                     ; preds = %for.cond.1545
  br label %fourth_1_step

fourth_1_step:                                    ; preds = %for.end.1662, %if.then.1542, %if.then.1428, %if.then.1064
  store i32 0, i32* %i, align 4
  br label %for.cond.1663

for.cond.1663:                                    ; preds = %for.inc.1769, %fourth_1_step
  %1272 = load i32, i32* %i, align 4
  %1273 = load i32, i32* %search_range.addr, align 4
  %cmp1664 = icmp slt i32 %1272, %1273
  br i1 %cmp1664, label %for.body.1666, label %for.end.1771

for.body.1666:                                    ; preds = %for.cond.1663
  %1274 = load i32, i32* %best_x, align 4
  store i32 %1274, i32* %iXMinNow, align 4
  %1275 = load i32, i32* %best_y, align 4
  store i32 %1275, i32* %iYMinNow, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.1667

for.cond.1667:                                    ; preds = %for.inc.1759, %for.body.1666
  %1276 = load i32, i32* %m, align 4
  %cmp1668 = icmp slt i32 %1276, 6
  br i1 %cmp1668, label %for.body.1670, label %for.end.1761

for.body.1670:                                    ; preds = %for.cond.1667
  %1277 = load i32, i32* %iXMinNow, align 4
  %1278 = load i32, i32* %m, align 4
  %idxprom1671 = sext i32 %1278 to i64
  %arrayidx1672 = getelementptr inbounds [6 x i32], [6 x i32]* @Hexagon_x, i32 0, i64 %idxprom1671
  %1279 = load i32, i32* %arrayidx1672, align 4
  %add1673 = add nsw i32 %1277, %1279
  store i32 %add1673, i32* %cand_x, align 4
  %1280 = load i32, i32* %iYMinNow, align 4
  %1281 = load i32, i32* %m, align 4
  %idxprom1674 = sext i32 %1281 to i64
  %arrayidx1675 = getelementptr inbounds [6 x i32], [6 x i32]* @Hexagon_y, i32 0, i64 %idxprom1674
  %1282 = load i32, i32* %arrayidx1675, align 4
  %add1676 = add nsw i32 %1280, %1282
  store i32 %add1676, i32* %cand_y, align 4
  %1283 = load i32, i32* %cand_x, align 4
  %1284 = load i16, i16* %center2_x, align 2
  %conv1677 = sext i16 %1284 to i32
  %sub1678 = sub nsw i32 %1283, %conv1677
  %call1679 = call i32 @iabs(i32 %sub1678)
  %1285 = load i32, i32* %search_range.addr, align 4
  %cmp1680 = icmp sle i32 %call1679, %1285
  br i1 %cmp1680, label %land.lhs.true.1682, label %if.end.1758

land.lhs.true.1682:                               ; preds = %for.body.1670
  %1286 = load i32, i32* %cand_y, align 4
  %1287 = load i16, i16* %center2_y, align 2
  %conv1683 = sext i16 %1287 to i32
  %sub1684 = sub nsw i32 %1286, %conv1683
  %call1685 = call i32 @iabs(i32 %sub1684)
  %1288 = load i32, i32* %search_range.addr, align 4
  %cmp1686 = icmp sle i32 %call1685, %1288
  br i1 %cmp1686, label %if.then.1688, label %if.end.1758

if.then.1688:                                     ; preds = %land.lhs.true.1682
  %1289 = load i32, i32* %cand_x, align 4
  %1290 = load i16, i16* %center2_x, align 2
  %conv1689 = sext i16 %1290 to i32
  %sub1690 = sub nsw i32 %1289, %conv1689
  %1291 = load i32, i32* %search_range.addr, align 4
  %add1691 = add nsw i32 %sub1690, %1291
  %idxprom1692 = sext i32 %add1691 to i64
  %1292 = load i32, i32* %cand_y, align 4
  %1293 = load i16, i16* %center2_y, align 2
  %conv1693 = sext i16 %1293 to i32
  %sub1694 = sub nsw i32 %1292, %conv1693
  %1294 = load i32, i32* %search_range.addr, align 4
  %add1695 = add nsw i32 %sub1694, %1294
  %idxprom1696 = sext i32 %add1695 to i64
  %1295 = load i8**, i8*** @McostState, align 8
  %arrayidx1697 = getelementptr inbounds i8*, i8** %1295, i64 %idxprom1696
  %1296 = load i8*, i8** %arrayidx1697, align 8
  %arrayidx1698 = getelementptr inbounds i8, i8* %1296, i64 %idxprom1692
  %1297 = load i8, i8* %arrayidx1698, align 1
  %tobool1699 = icmp ne i8 %1297, 0
  br i1 %tobool1699, label %if.end.1757, label %if.then.1700

if.then.1700:                                     ; preds = %if.then.1688
  %1298 = load i32, i32* %lambda_factor.addr, align 4
  %1299 = load i16, i16* %center1_x, align 2
  %conv1701 = sext i16 %1299 to i32
  %1300 = load i32, i32* %mvshift, align 4
  %shl1702 = shl i32 %conv1701, %1300
  %1301 = load i32, i32* %pred_x1, align 4
  %sub1703 = sub nsw i32 %shl1702, %1301
  %idxprom1704 = sext i32 %sub1703 to i64
  %1302 = load i32*, i32** @mvbits, align 8
  %arrayidx1705 = getelementptr inbounds i32, i32* %1302, i64 %idxprom1704
  %1303 = load i32, i32* %arrayidx1705, align 4
  %1304 = load i16, i16* %center1_y, align 2
  %conv1706 = sext i16 %1304 to i32
  %1305 = load i32, i32* %mvshift, align 4
  %shl1707 = shl i32 %conv1706, %1305
  %1306 = load i32, i32* %pred_y1, align 4
  %sub1708 = sub nsw i32 %shl1707, %1306
  %idxprom1709 = sext i32 %sub1708 to i64
  %1307 = load i32*, i32** @mvbits, align 8
  %arrayidx1710 = getelementptr inbounds i32, i32* %1307, i64 %idxprom1709
  %1308 = load i32, i32* %arrayidx1710, align 4
  %add1711 = add nsw i32 %1303, %1308
  %mul1712 = mul nsw i32 %1298, %add1711
  %shr1713 = ashr i32 %mul1712, 16
  store i32 %shr1713, i32* %mcost, align 4
  %1309 = load i32, i32* %lambda_factor.addr, align 4
  %1310 = load i32, i32* %cand_x, align 4
  %1311 = load i32, i32* %mvshift, align 4
  %shl1714 = shl i32 %1310, %1311
  %1312 = load i32, i32* %pred_x2, align 4
  %sub1715 = sub nsw i32 %shl1714, %1312
  %idxprom1716 = sext i32 %sub1715 to i64
  %1313 = load i32*, i32** @mvbits, align 8
  %arrayidx1717 = getelementptr inbounds i32, i32* %1313, i64 %idxprom1716
  %1314 = load i32, i32* %arrayidx1717, align 4
  %1315 = load i32, i32* %cand_y, align 4
  %1316 = load i32, i32* %mvshift, align 4
  %shl1718 = shl i32 %1315, %1316
  %1317 = load i32, i32* %pred_y2, align 4
  %sub1719 = sub nsw i32 %shl1718, %1317
  %idxprom1720 = sext i32 %sub1719 to i64
  %1318 = load i32*, i32** @mvbits, align 8
  %arrayidx1721 = getelementptr inbounds i32, i32* %1318, i64 %idxprom1720
  %1319 = load i32, i32* %arrayidx1721, align 4
  %add1722 = add nsw i32 %1314, %1319
  %mul1723 = mul nsw i32 %1309, %add1722
  %shr1724 = ashr i32 %mul1723, 16
  %1320 = load i32, i32* %mcost, align 4
  %add1725 = add nsw i32 %1320, %shr1724
  store i32 %add1725, i32* %mcost, align 4
  %1321 = load i32, i32* %mcost, align 4
  %1322 = load i32, i32* %min_mcost.addr, align 4
  %cmp1726 = icmp slt i32 %1321, %1322
  br i1 %cmp1726, label %if.then.1728, label %if.end.1756

if.then.1728:                                     ; preds = %if.then.1700
  %1323 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %1324 = load i16*, i16** %cur_pic.addr, align 8
  %1325 = load i32, i32* %blocksize_y, align 4
  %1326 = load i32, i32* %blocksize_x, align 4
  %1327 = load i32, i32* %min_mcost.addr, align 4
  %1328 = load i32, i32* %mcost, align 4
  %sub1729 = sub nsw i32 %1327, %1328
  %1329 = load i16, i16* %center1_x, align 2
  %conv1730 = sext i16 %1329 to i32
  %shl1731 = shl i32 %conv1730, 2
  %add1732 = add nsw i32 %shl1731, 80
  %1330 = load i16, i16* %center1_y, align 2
  %conv1733 = sext i16 %1330 to i32
  %shl1734 = shl i32 %conv1733, 2
  %add1735 = add nsw i32 %shl1734, 80
  %1331 = load i32, i32* %cand_x, align 4
  %shl1736 = shl i32 %1331, 2
  %add1737 = add nsw i32 %shl1736, 80
  %1332 = load i32, i32* %cand_y, align 4
  %shl1738 = shl i32 %1332, 2
  %add1739 = add nsw i32 %shl1738, 80
  %call1740 = call i32 %1323(i16* %1324, i32 %1325, i32 %1326, i32 %sub1729, i32 %add1732, i32 %add1735, i32 %add1737, i32 %add1739)
  %1333 = load i32, i32* %mcost, align 4
  %add1741 = add nsw i32 %1333, %call1740
  store i32 %add1741, i32* %mcost, align 4
  %1334 = load i32, i32* %cand_x, align 4
  %1335 = load i16, i16* %center2_x, align 2
  %conv1742 = sext i16 %1335 to i32
  %sub1743 = sub nsw i32 %1334, %conv1742
  %1336 = load i32, i32* %search_range.addr, align 4
  %add1744 = add nsw i32 %sub1743, %1336
  %idxprom1745 = sext i32 %add1744 to i64
  %1337 = load i32, i32* %cand_y, align 4
  %1338 = load i16, i16* %center2_y, align 2
  %conv1746 = sext i16 %1338 to i32
  %sub1747 = sub nsw i32 %1337, %conv1746
  %1339 = load i32, i32* %search_range.addr, align 4
  %add1748 = add nsw i32 %sub1747, %1339
  %idxprom1749 = sext i32 %add1748 to i64
  %1340 = load i8**, i8*** @McostState, align 8
  %arrayidx1750 = getelementptr inbounds i8*, i8** %1340, i64 %idxprom1749
  %1341 = load i8*, i8** %arrayidx1750, align 8
  %arrayidx1751 = getelementptr inbounds i8, i8* %1341, i64 %idxprom1745
  store i8 1, i8* %arrayidx1751, align 1
  %1342 = load i32, i32* %mcost, align 4
  %1343 = load i32, i32* %min_mcost.addr, align 4
  %cmp1752 = icmp slt i32 %1342, %1343
  br i1 %cmp1752, label %if.then.1754, label %if.end.1755

if.then.1754:                                     ; preds = %if.then.1728
  %1344 = load i32, i32* %cand_x, align 4
  store i32 %1344, i32* %best_x, align 4
  %1345 = load i32, i32* %cand_y, align 4
  store i32 %1345, i32* %best_y, align 4
  %1346 = load i32, i32* %mcost, align 4
  store i32 %1346, i32* %min_mcost.addr, align 4
  br label %if.end.1755

if.end.1755:                                      ; preds = %if.then.1754, %if.then.1728
  br label %if.end.1756

if.end.1756:                                      ; preds = %if.end.1755, %if.then.1700
  br label %if.end.1757

if.end.1757:                                      ; preds = %if.end.1756, %if.then.1688
  br label %if.end.1758

if.end.1758:                                      ; preds = %if.end.1757, %land.lhs.true.1682, %for.body.1670
  br label %for.inc.1759

for.inc.1759:                                     ; preds = %if.end.1758
  %1347 = load i32, i32* %m, align 4
  %inc1760 = add nsw i32 %1347, 1
  store i32 %inc1760, i32* %m, align 4
  br label %for.cond.1667

for.end.1761:                                     ; preds = %for.cond.1667
  %1348 = load i32, i32* %best_x, align 4
  %1349 = load i32, i32* %iXMinNow, align 4
  %cmp1762 = icmp eq i32 %1348, %1349
  br i1 %cmp1762, label %land.lhs.true.1764, label %if.end.1768

land.lhs.true.1764:                               ; preds = %for.end.1761
  %1350 = load i32, i32* %best_y, align 4
  %1351 = load i32, i32* %iYMinNow, align 4
  %cmp1765 = icmp eq i32 %1350, %1351
  br i1 %cmp1765, label %if.then.1767, label %if.end.1768

if.then.1767:                                     ; preds = %land.lhs.true.1764
  br label %for.end.1771

if.end.1768:                                      ; preds = %land.lhs.true.1764, %for.end.1761
  br label %for.inc.1769

for.inc.1769:                                     ; preds = %if.end.1768
  %1352 = load i32, i32* %i, align 4
  %inc1770 = add nsw i32 %1352, 1
  store i32 %inc1770, i32* %i, align 4
  br label %for.cond.1663

for.end.1771:                                     ; preds = %if.then.1767, %for.cond.1663
  br label %fourth_2_step

fourth_2_step:                                    ; preds = %for.end.1771, %if.then.1534, %if.then.1420, %if.then.1056
  store i32 0, i32* %i, align 4
  br label %for.cond.1772

for.cond.1772:                                    ; preds = %for.inc.1878, %fourth_2_step
  %1353 = load i32, i32* %i, align 4
  %1354 = load i32, i32* %search_range.addr, align 4
  %cmp1773 = icmp slt i32 %1353, %1354
  br i1 %cmp1773, label %for.body.1775, label %for.end.1880

for.body.1775:                                    ; preds = %for.cond.1772
  %1355 = load i32, i32* %best_x, align 4
  store i32 %1355, i32* %iXMinNow, align 4
  %1356 = load i32, i32* %best_y, align 4
  store i32 %1356, i32* %iYMinNow, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.1776

for.cond.1776:                                    ; preds = %for.inc.1868, %for.body.1775
  %1357 = load i32, i32* %m, align 4
  %cmp1777 = icmp slt i32 %1357, 4
  br i1 %cmp1777, label %for.body.1779, label %for.end.1870

for.body.1779:                                    ; preds = %for.cond.1776
  %1358 = load i32, i32* %iXMinNow, align 4
  %1359 = load i32, i32* %m, align 4
  %idxprom1780 = sext i32 %1359 to i64
  %arrayidx1781 = getelementptr inbounds [4 x i32], [4 x i32]* @Diamond_x, i32 0, i64 %idxprom1780
  %1360 = load i32, i32* %arrayidx1781, align 4
  %add1782 = add nsw i32 %1358, %1360
  store i32 %add1782, i32* %cand_x, align 4
  %1361 = load i32, i32* %iYMinNow, align 4
  %1362 = load i32, i32* %m, align 4
  %idxprom1783 = sext i32 %1362 to i64
  %arrayidx1784 = getelementptr inbounds [4 x i32], [4 x i32]* @Diamond_y, i32 0, i64 %idxprom1783
  %1363 = load i32, i32* %arrayidx1784, align 4
  %add1785 = add nsw i32 %1361, %1363
  store i32 %add1785, i32* %cand_y, align 4
  %1364 = load i32, i32* %cand_x, align 4
  %1365 = load i16, i16* %center2_x, align 2
  %conv1786 = sext i16 %1365 to i32
  %sub1787 = sub nsw i32 %1364, %conv1786
  %call1788 = call i32 @iabs(i32 %sub1787)
  %1366 = load i32, i32* %search_range.addr, align 4
  %cmp1789 = icmp sle i32 %call1788, %1366
  br i1 %cmp1789, label %land.lhs.true.1791, label %if.end.1867

land.lhs.true.1791:                               ; preds = %for.body.1779
  %1367 = load i32, i32* %cand_y, align 4
  %1368 = load i16, i16* %center2_y, align 2
  %conv1792 = sext i16 %1368 to i32
  %sub1793 = sub nsw i32 %1367, %conv1792
  %call1794 = call i32 @iabs(i32 %sub1793)
  %1369 = load i32, i32* %search_range.addr, align 4
  %cmp1795 = icmp sle i32 %call1794, %1369
  br i1 %cmp1795, label %if.then.1797, label %if.end.1867

if.then.1797:                                     ; preds = %land.lhs.true.1791
  %1370 = load i32, i32* %cand_x, align 4
  %1371 = load i16, i16* %center2_x, align 2
  %conv1798 = sext i16 %1371 to i32
  %sub1799 = sub nsw i32 %1370, %conv1798
  %1372 = load i32, i32* %search_range.addr, align 4
  %add1800 = add nsw i32 %sub1799, %1372
  %idxprom1801 = sext i32 %add1800 to i64
  %1373 = load i32, i32* %cand_y, align 4
  %1374 = load i16, i16* %center2_y, align 2
  %conv1802 = sext i16 %1374 to i32
  %sub1803 = sub nsw i32 %1373, %conv1802
  %1375 = load i32, i32* %search_range.addr, align 4
  %add1804 = add nsw i32 %sub1803, %1375
  %idxprom1805 = sext i32 %add1804 to i64
  %1376 = load i8**, i8*** @McostState, align 8
  %arrayidx1806 = getelementptr inbounds i8*, i8** %1376, i64 %idxprom1805
  %1377 = load i8*, i8** %arrayidx1806, align 8
  %arrayidx1807 = getelementptr inbounds i8, i8* %1377, i64 %idxprom1801
  %1378 = load i8, i8* %arrayidx1807, align 1
  %tobool1808 = icmp ne i8 %1378, 0
  br i1 %tobool1808, label %if.end.1866, label %if.then.1809

if.then.1809:                                     ; preds = %if.then.1797
  %1379 = load i32, i32* %lambda_factor.addr, align 4
  %1380 = load i16, i16* %center1_x, align 2
  %conv1810 = sext i16 %1380 to i32
  %1381 = load i32, i32* %mvshift, align 4
  %shl1811 = shl i32 %conv1810, %1381
  %1382 = load i32, i32* %pred_x1, align 4
  %sub1812 = sub nsw i32 %shl1811, %1382
  %idxprom1813 = sext i32 %sub1812 to i64
  %1383 = load i32*, i32** @mvbits, align 8
  %arrayidx1814 = getelementptr inbounds i32, i32* %1383, i64 %idxprom1813
  %1384 = load i32, i32* %arrayidx1814, align 4
  %1385 = load i16, i16* %center1_y, align 2
  %conv1815 = sext i16 %1385 to i32
  %1386 = load i32, i32* %mvshift, align 4
  %shl1816 = shl i32 %conv1815, %1386
  %1387 = load i32, i32* %pred_y1, align 4
  %sub1817 = sub nsw i32 %shl1816, %1387
  %idxprom1818 = sext i32 %sub1817 to i64
  %1388 = load i32*, i32** @mvbits, align 8
  %arrayidx1819 = getelementptr inbounds i32, i32* %1388, i64 %idxprom1818
  %1389 = load i32, i32* %arrayidx1819, align 4
  %add1820 = add nsw i32 %1384, %1389
  %mul1821 = mul nsw i32 %1379, %add1820
  %shr1822 = ashr i32 %mul1821, 16
  store i32 %shr1822, i32* %mcost, align 4
  %1390 = load i32, i32* %lambda_factor.addr, align 4
  %1391 = load i32, i32* %cand_x, align 4
  %1392 = load i32, i32* %mvshift, align 4
  %shl1823 = shl i32 %1391, %1392
  %1393 = load i32, i32* %pred_x2, align 4
  %sub1824 = sub nsw i32 %shl1823, %1393
  %idxprom1825 = sext i32 %sub1824 to i64
  %1394 = load i32*, i32** @mvbits, align 8
  %arrayidx1826 = getelementptr inbounds i32, i32* %1394, i64 %idxprom1825
  %1395 = load i32, i32* %arrayidx1826, align 4
  %1396 = load i32, i32* %cand_y, align 4
  %1397 = load i32, i32* %mvshift, align 4
  %shl1827 = shl i32 %1396, %1397
  %1398 = load i32, i32* %pred_y2, align 4
  %sub1828 = sub nsw i32 %shl1827, %1398
  %idxprom1829 = sext i32 %sub1828 to i64
  %1399 = load i32*, i32** @mvbits, align 8
  %arrayidx1830 = getelementptr inbounds i32, i32* %1399, i64 %idxprom1829
  %1400 = load i32, i32* %arrayidx1830, align 4
  %add1831 = add nsw i32 %1395, %1400
  %mul1832 = mul nsw i32 %1390, %add1831
  %shr1833 = ashr i32 %mul1832, 16
  %1401 = load i32, i32* %mcost, align 4
  %add1834 = add nsw i32 %1401, %shr1833
  store i32 %add1834, i32* %mcost, align 4
  %1402 = load i32, i32* %mcost, align 4
  %1403 = load i32, i32* %min_mcost.addr, align 4
  %cmp1835 = icmp slt i32 %1402, %1403
  br i1 %cmp1835, label %if.then.1837, label %if.end.1865

if.then.1837:                                     ; preds = %if.then.1809
  %1404 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %1405 = load i16*, i16** %cur_pic.addr, align 8
  %1406 = load i32, i32* %blocksize_y, align 4
  %1407 = load i32, i32* %blocksize_x, align 4
  %1408 = load i32, i32* %min_mcost.addr, align 4
  %1409 = load i32, i32* %mcost, align 4
  %sub1838 = sub nsw i32 %1408, %1409
  %1410 = load i16, i16* %center1_x, align 2
  %conv1839 = sext i16 %1410 to i32
  %shl1840 = shl i32 %conv1839, 2
  %add1841 = add nsw i32 %shl1840, 80
  %1411 = load i16, i16* %center1_y, align 2
  %conv1842 = sext i16 %1411 to i32
  %shl1843 = shl i32 %conv1842, 2
  %add1844 = add nsw i32 %shl1843, 80
  %1412 = load i32, i32* %cand_x, align 4
  %shl1845 = shl i32 %1412, 2
  %add1846 = add nsw i32 %shl1845, 80
  %1413 = load i32, i32* %cand_y, align 4
  %shl1847 = shl i32 %1413, 2
  %add1848 = add nsw i32 %shl1847, 80
  %call1849 = call i32 %1404(i16* %1405, i32 %1406, i32 %1407, i32 %sub1838, i32 %add1841, i32 %add1844, i32 %add1846, i32 %add1848)
  %1414 = load i32, i32* %mcost, align 4
  %add1850 = add nsw i32 %1414, %call1849
  store i32 %add1850, i32* %mcost, align 4
  %1415 = load i32, i32* %cand_x, align 4
  %1416 = load i16, i16* %center2_x, align 2
  %conv1851 = sext i16 %1416 to i32
  %sub1852 = sub nsw i32 %1415, %conv1851
  %1417 = load i32, i32* %search_range.addr, align 4
  %add1853 = add nsw i32 %sub1852, %1417
  %idxprom1854 = sext i32 %add1853 to i64
  %1418 = load i32, i32* %cand_y, align 4
  %1419 = load i16, i16* %center2_y, align 2
  %conv1855 = sext i16 %1419 to i32
  %sub1856 = sub nsw i32 %1418, %conv1855
  %1420 = load i32, i32* %search_range.addr, align 4
  %add1857 = add nsw i32 %sub1856, %1420
  %idxprom1858 = sext i32 %add1857 to i64
  %1421 = load i8**, i8*** @McostState, align 8
  %arrayidx1859 = getelementptr inbounds i8*, i8** %1421, i64 %idxprom1858
  %1422 = load i8*, i8** %arrayidx1859, align 8
  %arrayidx1860 = getelementptr inbounds i8, i8* %1422, i64 %idxprom1854
  store i8 1, i8* %arrayidx1860, align 1
  %1423 = load i32, i32* %mcost, align 4
  %1424 = load i32, i32* %min_mcost.addr, align 4
  %cmp1861 = icmp slt i32 %1423, %1424
  br i1 %cmp1861, label %if.then.1863, label %if.end.1864

if.then.1863:                                     ; preds = %if.then.1837
  %1425 = load i32, i32* %cand_x, align 4
  store i32 %1425, i32* %best_x, align 4
  %1426 = load i32, i32* %cand_y, align 4
  store i32 %1426, i32* %best_y, align 4
  %1427 = load i32, i32* %mcost, align 4
  store i32 %1427, i32* %min_mcost.addr, align 4
  br label %if.end.1864

if.end.1864:                                      ; preds = %if.then.1863, %if.then.1837
  br label %if.end.1865

if.end.1865:                                      ; preds = %if.end.1864, %if.then.1809
  br label %if.end.1866

if.end.1866:                                      ; preds = %if.end.1865, %if.then.1797
  br label %if.end.1867

if.end.1867:                                      ; preds = %if.end.1866, %land.lhs.true.1791, %for.body.1779
  br label %for.inc.1868

for.inc.1868:                                     ; preds = %if.end.1867
  %1428 = load i32, i32* %m, align 4
  %inc1869 = add nsw i32 %1428, 1
  store i32 %inc1869, i32* %m, align 4
  br label %for.cond.1776

for.end.1870:                                     ; preds = %for.cond.1776
  %1429 = load i32, i32* %best_x, align 4
  %1430 = load i32, i32* %iXMinNow, align 4
  %cmp1871 = icmp eq i32 %1429, %1430
  br i1 %cmp1871, label %land.lhs.true.1873, label %if.end.1877

land.lhs.true.1873:                               ; preds = %for.end.1870
  %1431 = load i32, i32* %best_y, align 4
  %1432 = load i32, i32* %iYMinNow, align 4
  %cmp1874 = icmp eq i32 %1431, %1432
  br i1 %cmp1874, label %if.then.1876, label %if.end.1877

if.then.1876:                                     ; preds = %land.lhs.true.1873
  br label %for.end.1880

if.end.1877:                                      ; preds = %land.lhs.true.1873, %for.end.1870
  br label %for.inc.1878

for.inc.1878:                                     ; preds = %if.end.1877
  %1433 = load i32, i32* %i, align 4
  %inc1879 = add nsw i32 %1433, 1
  store i32 %inc1879, i32* %i, align 4
  br label %for.cond.1772

for.end.1880:                                     ; preds = %if.then.1876, %for.cond.1772
  br label %terminate_step

terminate_step:                                   ; preds = %for.end.1880, %if.then.1658, %if.then.752
  store i32 0, i32* %i, align 4
  br label %for.cond.1881

for.cond.1881:                                    ; preds = %for.inc.1929, %terminate_step
  %1434 = load i32, i32* %i, align 4
  %1435 = load i32, i32* %blocksize_x, align 4
  %shr1882 = ashr i32 %1435, 2
  %cmp1883 = icmp slt i32 %1434, %shr1882
  br i1 %cmp1883, label %for.body.1885, label %for.end.1931

for.body.1885:                                    ; preds = %for.cond.1881
  store i32 0, i32* %j, align 4
  br label %for.cond.1886

for.cond.1886:                                    ; preds = %for.inc.1926, %for.body.1885
  %1436 = load i32, i32* %j, align 4
  %1437 = load i32, i32* %blocksize_y, align 4
  %shr1887 = ashr i32 %1437, 2
  %cmp1888 = icmp slt i32 %1436, %shr1887
  br i1 %cmp1888, label %for.body.1890, label %for.end.1928

for.body.1890:                                    ; preds = %for.cond.1886
  %1438 = load i32, i32* %list.addr, align 4
  %cmp1891 = icmp eq i32 %1438, 0
  br i1 %cmp1891, label %if.then.1893, label %if.else.1908

if.then.1893:                                     ; preds = %for.body.1890
  %1439 = load i32, i32* %min_mcost.addr, align 4
  %1440 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1440, i32 0, i32 39
  %1441 = load i32, i32* %pix_x, align 4
  %shr1894 = ashr i32 %1441, 2
  %1442 = load i16, i16* %block_x, align 2
  %conv1895 = sext i16 %1442 to i32
  %add1896 = add nsw i32 %shr1894, %conv1895
  %1443 = load i32, i32* %i, align 4
  %add1897 = add nsw i32 %add1896, %1443
  %idxprom1898 = sext i32 %add1897 to i64
  %1444 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1444, i32 0, i32 40
  %1445 = load i32, i32* %pix_y, align 4
  %shr1899 = ashr i32 %1445, 2
  %1446 = load i16, i16* %block_y, align 2
  %conv1900 = sext i16 %1446 to i32
  %add1901 = add nsw i32 %shr1899, %conv1900
  %1447 = load i32, i32* %j, align 4
  %add1902 = add nsw i32 %add1901, %1447
  %idxprom1903 = sext i32 %add1902 to i64
  %1448 = load i32, i32* %blocktype.addr, align 4
  %idxprom1904 = sext i32 %1448 to i64
  %1449 = load i32***, i32**** @fastme_l0_cost_bipred, align 8
  %arrayidx1905 = getelementptr inbounds i32**, i32*** %1449, i64 %idxprom1904
  %1450 = load i32**, i32*** %arrayidx1905, align 8
  %arrayidx1906 = getelementptr inbounds i32*, i32** %1450, i64 %idxprom1903
  %1451 = load i32*, i32** %arrayidx1906, align 8
  %arrayidx1907 = getelementptr inbounds i32, i32* %1451, i64 %idxprom1898
  store i32 %1439, i32* %arrayidx1907, align 4
  br label %if.end.1925

if.else.1908:                                     ; preds = %for.body.1890
  %1452 = load i32, i32* %min_mcost.addr, align 4
  %1453 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x1909 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1453, i32 0, i32 39
  %1454 = load i32, i32* %pix_x1909, align 4
  %shr1910 = ashr i32 %1454, 2
  %1455 = load i16, i16* %block_x, align 2
  %conv1911 = sext i16 %1455 to i32
  %add1912 = add nsw i32 %shr1910, %conv1911
  %1456 = load i32, i32* %i, align 4
  %add1913 = add nsw i32 %add1912, %1456
  %idxprom1914 = sext i32 %add1913 to i64
  %1457 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y1915 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1457, i32 0, i32 40
  %1458 = load i32, i32* %pix_y1915, align 4
  %shr1916 = ashr i32 %1458, 2
  %1459 = load i16, i16* %block_y, align 2
  %conv1917 = sext i16 %1459 to i32
  %add1918 = add nsw i32 %shr1916, %conv1917
  %1460 = load i32, i32* %j, align 4
  %add1919 = add nsw i32 %add1918, %1460
  %idxprom1920 = sext i32 %add1919 to i64
  %1461 = load i32, i32* %blocktype.addr, align 4
  %idxprom1921 = sext i32 %1461 to i64
  %1462 = load i32***, i32**** @fastme_l1_cost_bipred, align 8
  %arrayidx1922 = getelementptr inbounds i32**, i32*** %1462, i64 %idxprom1921
  %1463 = load i32**, i32*** %arrayidx1922, align 8
  %arrayidx1923 = getelementptr inbounds i32*, i32** %1463, i64 %idxprom1920
  %1464 = load i32*, i32** %arrayidx1923, align 8
  %arrayidx1924 = getelementptr inbounds i32, i32* %1464, i64 %idxprom1914
  store i32 %1452, i32* %arrayidx1924, align 4
  br label %if.end.1925

if.end.1925:                                      ; preds = %if.else.1908, %if.then.1893
  br label %for.inc.1926

for.inc.1926:                                     ; preds = %if.end.1925
  %1465 = load i32, i32* %j, align 4
  %inc1927 = add nsw i32 %1465, 1
  store i32 %inc1927, i32* %j, align 4
  br label %for.cond.1886

for.end.1928:                                     ; preds = %for.cond.1886
  br label %for.inc.1929

for.inc.1929:                                     ; preds = %for.end.1928
  %1466 = load i32, i32* %i, align 4
  %inc1930 = add nsw i32 %1466, 1
  store i32 %inc1930, i32* %i, align 4
  br label %for.cond.1881

for.end.1931:                                     ; preds = %for.cond.1881
  %1467 = load i32, i32* %best_x, align 4
  %1468 = load i32, i32* %pic_pix_x.addr, align 4
  %sub1932 = sub nsw i32 %1467, %1468
  %conv1933 = trunc i32 %sub1932 to i16
  %1469 = load i16*, i16** %mv_x.addr, align 8
  store i16 %conv1933, i16* %1469, align 2
  %1470 = load i32, i32* %best_y, align 4
  %1471 = load i32, i32* %pic_pix_y.addr, align 4
  %sub1934 = sub nsw i32 %1470, %1471
  %conv1935 = trunc i32 %sub1934 to i16
  %1472 = load i16*, i16** %mv_y.addr, align 8
  store i16 %conv1935, i16* %1472, align 2
  %1473 = load i32, i32* %min_mcost.addr, align 4
  ret i32 %1473
}

declare i32 @computeBiPredSAD2(i16*, i32, i32, i32, i32, i32, i32, i32) #2

declare i32 @computeBiPredSAD1(i16*, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imin(i32 %a, i32 %b) #4 {
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

; Function Attrs: nounwind uwtable
define void @UMHEXSetMotionVectorPredictor(i16* %pmv, i8** %refPic, i16*** %tmp_mv, i16 signext %ref_frame, i32 %list, i32 %block_x, i32 %block_y, i32 %blockshape_x, i32 %blockshape_y, i32* %search_range) #0 {
entry:
  %pmv.addr = alloca i16*, align 8
  %refPic.addr = alloca i8**, align 8
  %tmp_mv.addr = alloca i16***, align 8
  %ref_frame.addr = alloca i16, align 2
  %list.addr = alloca i32, align 4
  %block_x.addr = alloca i32, align 4
  %block_y.addr = alloca i32, align 4
  %blockshape_x.addr = alloca i32, align 4
  %blockshape_y.addr = alloca i32, align 4
  %search_range.addr = alloca i32*, align 8
  %mb_x = alloca i32, align 4
  %mb_y = alloca i32, align 4
  %mb_nr = alloca i32, align 4
  %mv_a = alloca i32, align 4
  %mv_b = alloca i32, align 4
  %mv_c = alloca i32, align 4
  %pred_vec = alloca i32, align 4
  %mvPredType = alloca i32, align 4
  %rFrameL = alloca i32, align 4
  %rFrameU = alloca i32, align 4
  %rFrameUR = alloca i32, align 4
  %hv = alloca i32, align 4
  %block_a = alloca %struct.pix_pos, align 4
  %block_b = alloca %struct.pix_pos, align 4
  %block_c = alloca %struct.pix_pos, align 4
  %block_d = alloca %struct.pix_pos, align 4
  %fastme_l0_cost_flag = alloca i32***, align 8
  %fastme_l1_cost_flag = alloca i32***, align 8
  %dsr_temp_search_range = alloca [2 x i32], align 4
  %dsr_mv_avail = alloca i32, align 4
  %dsr_mv_max = alloca i32, align 4
  %dsr_mv_sum = alloca i32, align 4
  %dsr_small_search_range = alloca i32, align 4
  store i16* %pmv, i16** %pmv.addr, align 8
  store i8** %refPic, i8*** %refPic.addr, align 8
  store i16*** %tmp_mv, i16**** %tmp_mv.addr, align 8
  store i16 %ref_frame, i16* %ref_frame.addr, align 2
  store i32 %list, i32* %list.addr, align 4
  store i32 %block_x, i32* %block_x.addr, align 4
  store i32 %block_y, i32* %block_y.addr, align 4
  store i32 %blockshape_x, i32* %blockshape_x.addr, align 4
  store i32 %blockshape_y, i32* %blockshape_y.addr, align 4
  store i32* %search_range, i32** %search_range.addr, align 8
  %0 = load i32, i32* %block_x.addr, align 4
  %mul = mul nsw i32 4, %0
  store i32 %mul, i32* %mb_x, align 4
  %1 = load i32, i32* %block_y.addr, align 4
  %mul1 = mul nsw i32 4, %1
  store i32 %mul1, i32* %mb_y, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 3
  %3 = load i32, i32* %current_mb_nr, align 4
  store i32 %3, i32* %mb_nr, align 4
  store i32 0, i32* %pred_vec, align 4
  %4 = load i32, i32* @bipred_flag, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i32***, i32**** @fastme_l0_cost_bipred, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i32***, i32**** @fastme_l0_cost, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32*** [ %5, %cond.true ], [ %6, %cond.false ]
  store i32*** %cond, i32**** %fastme_l0_cost_flag, align 8
  %7 = load i32, i32* @bipred_flag, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.end
  %8 = load i32***, i32**** @fastme_l1_cost_bipred, align 8
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  %9 = load i32***, i32**** @fastme_l1_cost, align 8
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.3
  %cond6 = phi i32*** [ %8, %cond.true.3 ], [ %9, %cond.false.4 ]
  store i32*** %cond6, i32**** %fastme_l1_cost_flag, align 8
  store i32 0, i32* @SAD_a, align 4
  store i32 0, i32* @SAD_b, align 4
  store i32 0, i32* @SAD_c, align 4
  store i32 0, i32* @SAD_d, align 4
  %10 = load i32, i32* %mb_nr, align 4
  %11 = load i32, i32* %mb_x, align 4
  %sub = sub nsw i32 %11, 1
  %12 = load i32, i32* %mb_y, align 4
  call void @getLuma4x4Neighbour(i32 %10, i32 %sub, i32 %12, %struct.pix_pos* %block_a)
  %13 = load i32, i32* %mb_nr, align 4
  %14 = load i32, i32* %mb_x, align 4
  %15 = load i32, i32* %mb_y, align 4
  %sub7 = sub nsw i32 %15, 1
  call void @getLuma4x4Neighbour(i32 %13, i32 %14, i32 %sub7, %struct.pix_pos* %block_b)
  %16 = load i32, i32* %mb_nr, align 4
  %17 = load i32, i32* %mb_x, align 4
  %18 = load i32, i32* %blockshape_x.addr, align 4
  %add = add nsw i32 %17, %18
  %19 = load i32, i32* %mb_y, align 4
  %sub8 = sub nsw i32 %19, 1
  call void @getLuma4x4Neighbour(i32 %16, i32 %add, i32 %sub8, %struct.pix_pos* %block_c)
  %20 = load i32, i32* %mb_nr, align 4
  %21 = load i32, i32* %mb_x, align 4
  %sub9 = sub nsw i32 %21, 1
  %22 = load i32, i32* %mb_y, align 4
  %sub10 = sub nsw i32 %22, 1
  call void @getLuma4x4Neighbour(i32 %20, i32 %sub9, i32 %sub10, %struct.pix_pos* %block_d)
  %23 = load i32, i32* %mb_y, align 4
  %cmp = icmp sgt i32 %23, 0
  br i1 %cmp, label %if.then, label %if.end.30

if.then:                                          ; preds = %cond.end.5
  %24 = load i32, i32* %mb_x, align 4
  %cmp11 = icmp slt i32 %24, 8
  br i1 %cmp11, label %if.then.12, label %if.else.23

if.then.12:                                       ; preds = %if.then
  %25 = load i32, i32* %mb_y, align 4
  %cmp13 = icmp eq i32 %25, 8
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.12
  %26 = load i32, i32* %blockshape_x.addr, align 4
  %cmp15 = icmp eq i32 %26, 16
  br i1 %cmp15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then.14
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  store i32 0, i32* %available, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.16, %if.then.14
  br label %if.end.22

if.else:                                          ; preds = %if.then.12
  %27 = load i32, i32* %mb_x, align 4
  %28 = load i32, i32* %blockshape_x.addr, align 4
  %add17 = add nsw i32 %27, %28
  %cmp18 = icmp eq i32 %add17, 8
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.else
  %available20 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  store i32 0, i32* %available20, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  br label %if.end.29

if.else.23:                                       ; preds = %if.then
  %29 = load i32, i32* %mb_x, align 4
  %30 = load i32, i32* %blockshape_x.addr, align 4
  %add24 = add nsw i32 %29, %30
  %cmp25 = icmp eq i32 %add24, 16
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.else.23
  %available27 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  store i32 0, i32* %available27, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.else.23
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.22
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %cond.end.5
  %available31 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  %31 = load i32, i32* %available31, align 4
  %tobool32 = icmp ne i32 %31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.end.30
  %32 = bitcast %struct.pix_pos* %block_c to i8*
  %33 = bitcast %struct.pix_pos* %block_d to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 24, i32 4, i1 false)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.30
  store i32 0, i32* %mvPredType, align 4
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 100
  %35 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool35 = icmp ne i32 %35, 0
  br i1 %tobool35, label %if.else.71, label %if.then.36

if.then.36:                                       ; preds = %if.end.34
  %available37 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %36 = load i32, i32* %available37, align 4
  %tobool38 = icmp ne i32 %36, 0
  br i1 %tobool38, label %cond.true.39, label %cond.false.42

cond.true.39:                                     ; preds = %if.then.36
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %37 = load i32, i32* %pos_x, align 4
  %idxprom = sext i32 %37 to i64
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %38 = load i32, i32* %pos_y, align 4
  %idxprom40 = sext i32 %38 to i64
  %39 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %39, i64 %idxprom40
  %40 = load i8*, i8** %arrayidx, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %40, i64 %idxprom
  %41 = load i8, i8* %arrayidx41, align 1
  %conv = sext i8 %41 to i32
  br label %cond.end.43

cond.false.42:                                    ; preds = %if.then.36
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.39
  %cond44 = phi i32 [ %conv, %cond.true.39 ], [ -1, %cond.false.42 ]
  store i32 %cond44, i32* %rFrameL, align 4
  %available45 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %42 = load i32, i32* %available45, align 4
  %tobool46 = icmp ne i32 %42, 0
  br i1 %tobool46, label %cond.true.47, label %cond.false.55

cond.true.47:                                     ; preds = %cond.end.43
  %pos_x48 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %43 = load i32, i32* %pos_x48, align 4
  %idxprom49 = sext i32 %43 to i64
  %pos_y50 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %44 = load i32, i32* %pos_y50, align 4
  %idxprom51 = sext i32 %44 to i64
  %45 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx52 = getelementptr inbounds i8*, i8** %45, i64 %idxprom51
  %46 = load i8*, i8** %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %46, i64 %idxprom49
  %47 = load i8, i8* %arrayidx53, align 1
  %conv54 = sext i8 %47 to i32
  br label %cond.end.56

cond.false.55:                                    ; preds = %cond.end.43
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.55, %cond.true.47
  %cond57 = phi i32 [ %conv54, %cond.true.47 ], [ -1, %cond.false.55 ]
  store i32 %cond57, i32* %rFrameU, align 4
  %available58 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  %48 = load i32, i32* %available58, align 4
  %tobool59 = icmp ne i32 %48, 0
  br i1 %tobool59, label %cond.true.60, label %cond.false.68

cond.true.60:                                     ; preds = %cond.end.56
  %pos_x61 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %49 = load i32, i32* %pos_x61, align 4
  %idxprom62 = sext i32 %49 to i64
  %pos_y63 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %50 = load i32, i32* %pos_y63, align 4
  %idxprom64 = sext i32 %50 to i64
  %51 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx65 = getelementptr inbounds i8*, i8** %51, i64 %idxprom64
  %52 = load i8*, i8** %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %52, i64 %idxprom62
  %53 = load i8, i8* %arrayidx66, align 1
  %conv67 = sext i8 %53 to i32
  br label %cond.end.69

cond.false.68:                                    ; preds = %cond.end.56
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.68, %cond.true.60
  %cond70 = phi i32 [ %conv67, %cond.true.60 ], [ -1, %cond.false.68 ]
  store i32 %cond70, i32* %rFrameUR, align 4
  br label %if.end.263

if.else.71:                                       ; preds = %if.end.34
  %54 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr72 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %54, i32 0, i32 3
  %55 = load i32, i32* %current_mb_nr72, align 4
  %idxprom73 = sext i32 %55 to i64
  %56 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %56, i32 0, i32 61
  %57 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx74 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %57, i64 %idxprom73
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx74, i32 0, i32 19
  %58 = load i32, i32* %mb_field, align 4
  %tobool75 = icmp ne i32 %58, 0
  br i1 %tobool75, label %if.then.76, label %if.else.169

if.then.76:                                       ; preds = %if.else.71
  %available77 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %59 = load i32, i32* %available77, align 4
  %tobool78 = icmp ne i32 %59, 0
  br i1 %tobool78, label %cond.true.79, label %cond.false.104

cond.true.79:                                     ; preds = %if.then.76
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %60 = load i32, i32* %mb_addr, align 4
  %idxprom80 = sext i32 %60 to i64
  %61 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data81 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %61, i32 0, i32 61
  %62 = load %struct.macroblock*, %struct.macroblock** %mb_data81, align 8
  %arrayidx82 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %62, i64 %idxprom80
  %mb_field83 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx82, i32 0, i32 19
  %63 = load i32, i32* %mb_field83, align 4
  %tobool84 = icmp ne i32 %63, 0
  br i1 %tobool84, label %cond.true.85, label %cond.false.93

cond.true.85:                                     ; preds = %cond.true.79
  %pos_x86 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %64 = load i32, i32* %pos_x86, align 4
  %idxprom87 = sext i32 %64 to i64
  %pos_y88 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %65 = load i32, i32* %pos_y88, align 4
  %idxprom89 = sext i32 %65 to i64
  %66 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx90 = getelementptr inbounds i8*, i8** %66, i64 %idxprom89
  %67 = load i8*, i8** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %67, i64 %idxprom87
  %68 = load i8, i8* %arrayidx91, align 1
  %conv92 = sext i8 %68 to i32
  br label %cond.end.102

cond.false.93:                                    ; preds = %cond.true.79
  %pos_x94 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %69 = load i32, i32* %pos_x94, align 4
  %idxprom95 = sext i32 %69 to i64
  %pos_y96 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %70 = load i32, i32* %pos_y96, align 4
  %idxprom97 = sext i32 %70 to i64
  %71 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx98 = getelementptr inbounds i8*, i8** %71, i64 %idxprom97
  %72 = load i8*, i8** %arrayidx98, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %72, i64 %idxprom95
  %73 = load i8, i8* %arrayidx99, align 1
  %conv100 = sext i8 %73 to i32
  %mul101 = mul nsw i32 %conv100, 2
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.93, %cond.true.85
  %cond103 = phi i32 [ %conv92, %cond.true.85 ], [ %mul101, %cond.false.93 ]
  br label %cond.end.105

cond.false.104:                                   ; preds = %if.then.76
  br label %cond.end.105

cond.end.105:                                     ; preds = %cond.false.104, %cond.end.102
  %cond106 = phi i32 [ %cond103, %cond.end.102 ], [ -1, %cond.false.104 ]
  store i32 %cond106, i32* %rFrameL, align 4
  %available107 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %74 = load i32, i32* %available107, align 4
  %tobool108 = icmp ne i32 %74, 0
  br i1 %tobool108, label %cond.true.109, label %cond.false.135

cond.true.109:                                    ; preds = %cond.end.105
  %mb_addr110 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %75 = load i32, i32* %mb_addr110, align 4
  %idxprom111 = sext i32 %75 to i64
  %76 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data112 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %76, i32 0, i32 61
  %77 = load %struct.macroblock*, %struct.macroblock** %mb_data112, align 8
  %arrayidx113 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %77, i64 %idxprom111
  %mb_field114 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx113, i32 0, i32 19
  %78 = load i32, i32* %mb_field114, align 4
  %tobool115 = icmp ne i32 %78, 0
  br i1 %tobool115, label %cond.true.116, label %cond.false.124

cond.true.116:                                    ; preds = %cond.true.109
  %pos_x117 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %79 = load i32, i32* %pos_x117, align 4
  %idxprom118 = sext i32 %79 to i64
  %pos_y119 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %80 = load i32, i32* %pos_y119, align 4
  %idxprom120 = sext i32 %80 to i64
  %81 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx121 = getelementptr inbounds i8*, i8** %81, i64 %idxprom120
  %82 = load i8*, i8** %arrayidx121, align 8
  %arrayidx122 = getelementptr inbounds i8, i8* %82, i64 %idxprom118
  %83 = load i8, i8* %arrayidx122, align 1
  %conv123 = sext i8 %83 to i32
  br label %cond.end.133

cond.false.124:                                   ; preds = %cond.true.109
  %pos_x125 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %84 = load i32, i32* %pos_x125, align 4
  %idxprom126 = sext i32 %84 to i64
  %pos_y127 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %85 = load i32, i32* %pos_y127, align 4
  %idxprom128 = sext i32 %85 to i64
  %86 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx129 = getelementptr inbounds i8*, i8** %86, i64 %idxprom128
  %87 = load i8*, i8** %arrayidx129, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %87, i64 %idxprom126
  %88 = load i8, i8* %arrayidx130, align 1
  %conv131 = sext i8 %88 to i32
  %mul132 = mul nsw i32 %conv131, 2
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.false.124, %cond.true.116
  %cond134 = phi i32 [ %conv123, %cond.true.116 ], [ %mul132, %cond.false.124 ]
  br label %cond.end.136

cond.false.135:                                   ; preds = %cond.end.105
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.135, %cond.end.133
  %cond137 = phi i32 [ %cond134, %cond.end.133 ], [ -1, %cond.false.135 ]
  store i32 %cond137, i32* %rFrameU, align 4
  %available138 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  %89 = load i32, i32* %available138, align 4
  %tobool139 = icmp ne i32 %89, 0
  br i1 %tobool139, label %cond.true.140, label %cond.false.166

cond.true.140:                                    ; preds = %cond.end.136
  %mb_addr141 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 1
  %90 = load i32, i32* %mb_addr141, align 4
  %idxprom142 = sext i32 %90 to i64
  %91 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data143 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %91, i32 0, i32 61
  %92 = load %struct.macroblock*, %struct.macroblock** %mb_data143, align 8
  %arrayidx144 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %92, i64 %idxprom142
  %mb_field145 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx144, i32 0, i32 19
  %93 = load i32, i32* %mb_field145, align 4
  %tobool146 = icmp ne i32 %93, 0
  br i1 %tobool146, label %cond.true.147, label %cond.false.155

cond.true.147:                                    ; preds = %cond.true.140
  %pos_x148 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %94 = load i32, i32* %pos_x148, align 4
  %idxprom149 = sext i32 %94 to i64
  %pos_y150 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %95 = load i32, i32* %pos_y150, align 4
  %idxprom151 = sext i32 %95 to i64
  %96 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx152 = getelementptr inbounds i8*, i8** %96, i64 %idxprom151
  %97 = load i8*, i8** %arrayidx152, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %97, i64 %idxprom149
  %98 = load i8, i8* %arrayidx153, align 1
  %conv154 = sext i8 %98 to i32
  br label %cond.end.164

cond.false.155:                                   ; preds = %cond.true.140
  %pos_x156 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %99 = load i32, i32* %pos_x156, align 4
  %idxprom157 = sext i32 %99 to i64
  %pos_y158 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %100 = load i32, i32* %pos_y158, align 4
  %idxprom159 = sext i32 %100 to i64
  %101 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx160 = getelementptr inbounds i8*, i8** %101, i64 %idxprom159
  %102 = load i8*, i8** %arrayidx160, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %102, i64 %idxprom157
  %103 = load i8, i8* %arrayidx161, align 1
  %conv162 = sext i8 %103 to i32
  %mul163 = mul nsw i32 %conv162, 2
  br label %cond.end.164

cond.end.164:                                     ; preds = %cond.false.155, %cond.true.147
  %cond165 = phi i32 [ %conv154, %cond.true.147 ], [ %mul163, %cond.false.155 ]
  br label %cond.end.167

cond.false.166:                                   ; preds = %cond.end.136
  br label %cond.end.167

cond.end.167:                                     ; preds = %cond.false.166, %cond.end.164
  %cond168 = phi i32 [ %cond165, %cond.end.164 ], [ -1, %cond.false.166 ]
  store i32 %cond168, i32* %rFrameUR, align 4
  br label %if.end.262

if.else.169:                                      ; preds = %if.else.71
  %available170 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %104 = load i32, i32* %available170, align 4
  %tobool171 = icmp ne i32 %104, 0
  br i1 %tobool171, label %cond.true.172, label %cond.false.197

cond.true.172:                                    ; preds = %if.else.169
  %mb_addr173 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %105 = load i32, i32* %mb_addr173, align 4
  %idxprom174 = sext i32 %105 to i64
  %106 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data175 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %106, i32 0, i32 61
  %107 = load %struct.macroblock*, %struct.macroblock** %mb_data175, align 8
  %arrayidx176 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %107, i64 %idxprom174
  %mb_field177 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx176, i32 0, i32 19
  %108 = load i32, i32* %mb_field177, align 4
  %tobool178 = icmp ne i32 %108, 0
  br i1 %tobool178, label %cond.true.179, label %cond.false.187

cond.true.179:                                    ; preds = %cond.true.172
  %pos_x180 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %109 = load i32, i32* %pos_x180, align 4
  %idxprom181 = sext i32 %109 to i64
  %pos_y182 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %110 = load i32, i32* %pos_y182, align 4
  %idxprom183 = sext i32 %110 to i64
  %111 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx184 = getelementptr inbounds i8*, i8** %111, i64 %idxprom183
  %112 = load i8*, i8** %arrayidx184, align 8
  %arrayidx185 = getelementptr inbounds i8, i8* %112, i64 %idxprom181
  %113 = load i8, i8* %arrayidx185, align 1
  %conv186 = sext i8 %113 to i32
  %shr = ashr i32 %conv186, 1
  br label %cond.end.195

cond.false.187:                                   ; preds = %cond.true.172
  %pos_x188 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %114 = load i32, i32* %pos_x188, align 4
  %idxprom189 = sext i32 %114 to i64
  %pos_y190 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %115 = load i32, i32* %pos_y190, align 4
  %idxprom191 = sext i32 %115 to i64
  %116 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx192 = getelementptr inbounds i8*, i8** %116, i64 %idxprom191
  %117 = load i8*, i8** %arrayidx192, align 8
  %arrayidx193 = getelementptr inbounds i8, i8* %117, i64 %idxprom189
  %118 = load i8, i8* %arrayidx193, align 1
  %conv194 = sext i8 %118 to i32
  br label %cond.end.195

cond.end.195:                                     ; preds = %cond.false.187, %cond.true.179
  %cond196 = phi i32 [ %shr, %cond.true.179 ], [ %conv194, %cond.false.187 ]
  br label %cond.end.198

cond.false.197:                                   ; preds = %if.else.169
  br label %cond.end.198

cond.end.198:                                     ; preds = %cond.false.197, %cond.end.195
  %cond199 = phi i32 [ %cond196, %cond.end.195 ], [ -1, %cond.false.197 ]
  store i32 %cond199, i32* %rFrameL, align 4
  %available200 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %119 = load i32, i32* %available200, align 4
  %tobool201 = icmp ne i32 %119, 0
  br i1 %tobool201, label %cond.true.202, label %cond.false.228

cond.true.202:                                    ; preds = %cond.end.198
  %mb_addr203 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %120 = load i32, i32* %mb_addr203, align 4
  %idxprom204 = sext i32 %120 to i64
  %121 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data205 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %121, i32 0, i32 61
  %122 = load %struct.macroblock*, %struct.macroblock** %mb_data205, align 8
  %arrayidx206 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %122, i64 %idxprom204
  %mb_field207 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx206, i32 0, i32 19
  %123 = load i32, i32* %mb_field207, align 4
  %tobool208 = icmp ne i32 %123, 0
  br i1 %tobool208, label %cond.true.209, label %cond.false.218

cond.true.209:                                    ; preds = %cond.true.202
  %pos_x210 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %124 = load i32, i32* %pos_x210, align 4
  %idxprom211 = sext i32 %124 to i64
  %pos_y212 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %125 = load i32, i32* %pos_y212, align 4
  %idxprom213 = sext i32 %125 to i64
  %126 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx214 = getelementptr inbounds i8*, i8** %126, i64 %idxprom213
  %127 = load i8*, i8** %arrayidx214, align 8
  %arrayidx215 = getelementptr inbounds i8, i8* %127, i64 %idxprom211
  %128 = load i8, i8* %arrayidx215, align 1
  %conv216 = sext i8 %128 to i32
  %shr217 = ashr i32 %conv216, 1
  br label %cond.end.226

cond.false.218:                                   ; preds = %cond.true.202
  %pos_x219 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %129 = load i32, i32* %pos_x219, align 4
  %idxprom220 = sext i32 %129 to i64
  %pos_y221 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %130 = load i32, i32* %pos_y221, align 4
  %idxprom222 = sext i32 %130 to i64
  %131 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx223 = getelementptr inbounds i8*, i8** %131, i64 %idxprom222
  %132 = load i8*, i8** %arrayidx223, align 8
  %arrayidx224 = getelementptr inbounds i8, i8* %132, i64 %idxprom220
  %133 = load i8, i8* %arrayidx224, align 1
  %conv225 = sext i8 %133 to i32
  br label %cond.end.226

cond.end.226:                                     ; preds = %cond.false.218, %cond.true.209
  %cond227 = phi i32 [ %shr217, %cond.true.209 ], [ %conv225, %cond.false.218 ]
  br label %cond.end.229

cond.false.228:                                   ; preds = %cond.end.198
  br label %cond.end.229

cond.end.229:                                     ; preds = %cond.false.228, %cond.end.226
  %cond230 = phi i32 [ %cond227, %cond.end.226 ], [ -1, %cond.false.228 ]
  store i32 %cond230, i32* %rFrameU, align 4
  %available231 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  %134 = load i32, i32* %available231, align 4
  %tobool232 = icmp ne i32 %134, 0
  br i1 %tobool232, label %cond.true.233, label %cond.false.259

cond.true.233:                                    ; preds = %cond.end.229
  %mb_addr234 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 1
  %135 = load i32, i32* %mb_addr234, align 4
  %idxprom235 = sext i32 %135 to i64
  %136 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data236 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %136, i32 0, i32 61
  %137 = load %struct.macroblock*, %struct.macroblock** %mb_data236, align 8
  %arrayidx237 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %137, i64 %idxprom235
  %mb_field238 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx237, i32 0, i32 19
  %138 = load i32, i32* %mb_field238, align 4
  %tobool239 = icmp ne i32 %138, 0
  br i1 %tobool239, label %cond.true.240, label %cond.false.249

cond.true.240:                                    ; preds = %cond.true.233
  %pos_x241 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %139 = load i32, i32* %pos_x241, align 4
  %idxprom242 = sext i32 %139 to i64
  %pos_y243 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %140 = load i32, i32* %pos_y243, align 4
  %idxprom244 = sext i32 %140 to i64
  %141 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx245 = getelementptr inbounds i8*, i8** %141, i64 %idxprom244
  %142 = load i8*, i8** %arrayidx245, align 8
  %arrayidx246 = getelementptr inbounds i8, i8* %142, i64 %idxprom242
  %143 = load i8, i8* %arrayidx246, align 1
  %conv247 = sext i8 %143 to i32
  %shr248 = ashr i32 %conv247, 1
  br label %cond.end.257

cond.false.249:                                   ; preds = %cond.true.233
  %pos_x250 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %144 = load i32, i32* %pos_x250, align 4
  %idxprom251 = sext i32 %144 to i64
  %pos_y252 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %145 = load i32, i32* %pos_y252, align 4
  %idxprom253 = sext i32 %145 to i64
  %146 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx254 = getelementptr inbounds i8*, i8** %146, i64 %idxprom253
  %147 = load i8*, i8** %arrayidx254, align 8
  %arrayidx255 = getelementptr inbounds i8, i8* %147, i64 %idxprom251
  %148 = load i8, i8* %arrayidx255, align 1
  %conv256 = sext i8 %148 to i32
  br label %cond.end.257

cond.end.257:                                     ; preds = %cond.false.249, %cond.true.240
  %cond258 = phi i32 [ %shr248, %cond.true.240 ], [ %conv256, %cond.false.249 ]
  br label %cond.end.260

cond.false.259:                                   ; preds = %cond.end.229
  br label %cond.end.260

cond.end.260:                                     ; preds = %cond.false.259, %cond.end.257
  %cond261 = phi i32 [ %cond258, %cond.end.257 ], [ -1, %cond.false.259 ]
  store i32 %cond261, i32* %rFrameUR, align 4
  br label %if.end.262

if.end.262:                                       ; preds = %cond.end.260, %cond.end.167
  br label %if.end.263

if.end.263:                                       ; preds = %if.end.262, %cond.end.69
  %149 = load i32, i32* %rFrameL, align 4
  %150 = load i16, i16* %ref_frame.addr, align 2
  %conv264 = sext i16 %150 to i32
  %cmp265 = icmp eq i32 %149, %conv264
  br i1 %cmp265, label %land.lhs.true, label %if.else.275

land.lhs.true:                                    ; preds = %if.end.263
  %151 = load i32, i32* %rFrameU, align 4
  %152 = load i16, i16* %ref_frame.addr, align 2
  %conv267 = sext i16 %152 to i32
  %cmp268 = icmp ne i32 %151, %conv267
  br i1 %cmp268, label %land.lhs.true.270, label %if.else.275

land.lhs.true.270:                                ; preds = %land.lhs.true
  %153 = load i32, i32* %rFrameUR, align 4
  %154 = load i16, i16* %ref_frame.addr, align 2
  %conv271 = sext i16 %154 to i32
  %cmp272 = icmp ne i32 %153, %conv271
  br i1 %cmp272, label %if.then.274, label %if.else.275

if.then.274:                                      ; preds = %land.lhs.true.270
  store i32 1, i32* %mvPredType, align 4
  br label %if.end.303

if.else.275:                                      ; preds = %land.lhs.true.270, %land.lhs.true, %if.end.263
  %155 = load i32, i32* %rFrameL, align 4
  %156 = load i16, i16* %ref_frame.addr, align 2
  %conv276 = sext i16 %156 to i32
  %cmp277 = icmp ne i32 %155, %conv276
  br i1 %cmp277, label %land.lhs.true.279, label %if.else.288

land.lhs.true.279:                                ; preds = %if.else.275
  %157 = load i32, i32* %rFrameU, align 4
  %158 = load i16, i16* %ref_frame.addr, align 2
  %conv280 = sext i16 %158 to i32
  %cmp281 = icmp eq i32 %157, %conv280
  br i1 %cmp281, label %land.lhs.true.283, label %if.else.288

land.lhs.true.283:                                ; preds = %land.lhs.true.279
  %159 = load i32, i32* %rFrameUR, align 4
  %160 = load i16, i16* %ref_frame.addr, align 2
  %conv284 = sext i16 %160 to i32
  %cmp285 = icmp ne i32 %159, %conv284
  br i1 %cmp285, label %if.then.287, label %if.else.288

if.then.287:                                      ; preds = %land.lhs.true.283
  store i32 2, i32* %mvPredType, align 4
  br label %if.end.302

if.else.288:                                      ; preds = %land.lhs.true.283, %land.lhs.true.279, %if.else.275
  %161 = load i32, i32* %rFrameL, align 4
  %162 = load i16, i16* %ref_frame.addr, align 2
  %conv289 = sext i16 %162 to i32
  %cmp290 = icmp ne i32 %161, %conv289
  br i1 %cmp290, label %land.lhs.true.292, label %if.end.301

land.lhs.true.292:                                ; preds = %if.else.288
  %163 = load i32, i32* %rFrameU, align 4
  %164 = load i16, i16* %ref_frame.addr, align 2
  %conv293 = sext i16 %164 to i32
  %cmp294 = icmp ne i32 %163, %conv293
  br i1 %cmp294, label %land.lhs.true.296, label %if.end.301

land.lhs.true.296:                                ; preds = %land.lhs.true.292
  %165 = load i32, i32* %rFrameUR, align 4
  %166 = load i16, i16* %ref_frame.addr, align 2
  %conv297 = sext i16 %166 to i32
  %cmp298 = icmp eq i32 %165, %conv297
  br i1 %cmp298, label %if.then.300, label %if.end.301

if.then.300:                                      ; preds = %land.lhs.true.296
  store i32 3, i32* %mvPredType, align 4
  br label %if.end.301

if.end.301:                                       ; preds = %if.then.300, %land.lhs.true.296, %land.lhs.true.292, %if.else.288
  br label %if.end.302

if.end.302:                                       ; preds = %if.end.301, %if.then.287
  br label %if.end.303

if.end.303:                                       ; preds = %if.end.302, %if.then.274
  %167 = load i32, i32* %blockshape_x.addr, align 4
  %cmp304 = icmp eq i32 %167, 8
  br i1 %cmp304, label %land.lhs.true.306, label %if.else.325

land.lhs.true.306:                                ; preds = %if.end.303
  %168 = load i32, i32* %blockshape_y.addr, align 4
  %cmp307 = icmp eq i32 %168, 16
  br i1 %cmp307, label %if.then.309, label %if.else.325

if.then.309:                                      ; preds = %land.lhs.true.306
  %169 = load i32, i32* %mb_x, align 4
  %cmp310 = icmp eq i32 %169, 0
  br i1 %cmp310, label %if.then.312, label %if.else.318

if.then.312:                                      ; preds = %if.then.309
  %170 = load i32, i32* %rFrameL, align 4
  %171 = load i16, i16* %ref_frame.addr, align 2
  %conv313 = sext i16 %171 to i32
  %cmp314 = icmp eq i32 %170, %conv313
  br i1 %cmp314, label %if.then.316, label %if.end.317

if.then.316:                                      ; preds = %if.then.312
  store i32 1, i32* %mvPredType, align 4
  br label %if.end.317

if.end.317:                                       ; preds = %if.then.316, %if.then.312
  br label %if.end.324

if.else.318:                                      ; preds = %if.then.309
  %172 = load i32, i32* %rFrameUR, align 4
  %173 = load i16, i16* %ref_frame.addr, align 2
  %conv319 = sext i16 %173 to i32
  %cmp320 = icmp eq i32 %172, %conv319
  br i1 %cmp320, label %if.then.322, label %if.end.323

if.then.322:                                      ; preds = %if.else.318
  store i32 3, i32* %mvPredType, align 4
  br label %if.end.323

if.end.323:                                       ; preds = %if.then.322, %if.else.318
  br label %if.end.324

if.end.324:                                       ; preds = %if.end.323, %if.end.317
  br label %if.end.348

if.else.325:                                      ; preds = %land.lhs.true.306, %if.end.303
  %174 = load i32, i32* %blockshape_x.addr, align 4
  %cmp326 = icmp eq i32 %174, 16
  br i1 %cmp326, label %land.lhs.true.328, label %if.end.347

land.lhs.true.328:                                ; preds = %if.else.325
  %175 = load i32, i32* %blockshape_y.addr, align 4
  %cmp329 = icmp eq i32 %175, 8
  br i1 %cmp329, label %if.then.331, label %if.end.347

if.then.331:                                      ; preds = %land.lhs.true.328
  %176 = load i32, i32* %mb_y, align 4
  %cmp332 = icmp eq i32 %176, 0
  br i1 %cmp332, label %if.then.334, label %if.else.340

if.then.334:                                      ; preds = %if.then.331
  %177 = load i32, i32* %rFrameU, align 4
  %178 = load i16, i16* %ref_frame.addr, align 2
  %conv335 = sext i16 %178 to i32
  %cmp336 = icmp eq i32 %177, %conv335
  br i1 %cmp336, label %if.then.338, label %if.end.339

if.then.338:                                      ; preds = %if.then.334
  store i32 2, i32* %mvPredType, align 4
  br label %if.end.339

if.end.339:                                       ; preds = %if.then.338, %if.then.334
  br label %if.end.346

if.else.340:                                      ; preds = %if.then.331
  %179 = load i32, i32* %rFrameL, align 4
  %180 = load i16, i16* %ref_frame.addr, align 2
  %conv341 = sext i16 %180 to i32
  %cmp342 = icmp eq i32 %179, %conv341
  br i1 %cmp342, label %if.then.344, label %if.end.345

if.then.344:                                      ; preds = %if.else.340
  store i32 1, i32* %mvPredType, align 4
  br label %if.end.345

if.end.345:                                       ; preds = %if.then.344, %if.else.340
  br label %if.end.346

if.end.346:                                       ; preds = %if.end.345, %if.end.339
  br label %if.end.347

if.end.347:                                       ; preds = %if.end.346, %land.lhs.true.328, %if.else.325
  br label %if.end.348

if.end.348:                                       ; preds = %if.end.347, %if.end.324
  %181 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UMHexDSR = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %181, i32 0, i32 170
  %182 = load i32, i32* %UMHexDSR, align 4
  %cmp349 = icmp eq i32 %182, 1
  br i1 %cmp349, label %if.then.353, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.348
  %183 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %183, i32 0, i32 46
  %184 = load i32, i32* %BiPredMotionEstimation, align 4
  %cmp351 = icmp eq i32 %184, 1
  br i1 %cmp351, label %if.then.353, label %if.end.466

if.then.353:                                      ; preds = %lor.lhs.false, %if.end.348
  %available354 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %185 = load i32, i32* %available354, align 4
  %tobool355 = icmp ne i32 %185, 0
  br i1 %tobool355, label %cond.true.356, label %cond.false.379

cond.true.356:                                    ; preds = %if.then.353
  %186 = load i32, i32* %list.addr, align 4
  %cmp357 = icmp eq i32 %186, 1
  br i1 %cmp357, label %cond.true.359, label %cond.false.368

cond.true.359:                                    ; preds = %cond.true.356
  %pos_x360 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %187 = load i32, i32* %pos_x360, align 4
  %idxprom361 = sext i32 %187 to i64
  %pos_y362 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %188 = load i32, i32* %pos_y362, align 4
  %idxprom363 = sext i32 %188 to i64
  %189 = load i32, i32* @UMHEX_blocktype, align 4
  %idxprom364 = sext i32 %189 to i64
  %190 = load i32***, i32**** %fastme_l1_cost_flag, align 8
  %arrayidx365 = getelementptr inbounds i32**, i32*** %190, i64 %idxprom364
  %191 = load i32**, i32*** %arrayidx365, align 8
  %arrayidx366 = getelementptr inbounds i32*, i32** %191, i64 %idxprom363
  %192 = load i32*, i32** %arrayidx366, align 8
  %arrayidx367 = getelementptr inbounds i32, i32* %192, i64 %idxprom361
  %193 = load i32, i32* %arrayidx367, align 4
  br label %cond.end.377

cond.false.368:                                   ; preds = %cond.true.356
  %pos_x369 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %194 = load i32, i32* %pos_x369, align 4
  %idxprom370 = sext i32 %194 to i64
  %pos_y371 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %195 = load i32, i32* %pos_y371, align 4
  %idxprom372 = sext i32 %195 to i64
  %196 = load i32, i32* @UMHEX_blocktype, align 4
  %idxprom373 = sext i32 %196 to i64
  %197 = load i32***, i32**** %fastme_l0_cost_flag, align 8
  %arrayidx374 = getelementptr inbounds i32**, i32*** %197, i64 %idxprom373
  %198 = load i32**, i32*** %arrayidx374, align 8
  %arrayidx375 = getelementptr inbounds i32*, i32** %198, i64 %idxprom372
  %199 = load i32*, i32** %arrayidx375, align 8
  %arrayidx376 = getelementptr inbounds i32, i32* %199, i64 %idxprom370
  %200 = load i32, i32* %arrayidx376, align 4
  br label %cond.end.377

cond.end.377:                                     ; preds = %cond.false.368, %cond.true.359
  %cond378 = phi i32 [ %193, %cond.true.359 ], [ %200, %cond.false.368 ]
  br label %cond.end.380

cond.false.379:                                   ; preds = %if.then.353
  br label %cond.end.380

cond.end.380:                                     ; preds = %cond.false.379, %cond.end.377
  %cond381 = phi i32 [ %cond378, %cond.end.377 ], [ 0, %cond.false.379 ]
  store i32 %cond381, i32* @SAD_a, align 4
  %available382 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %201 = load i32, i32* %available382, align 4
  %tobool383 = icmp ne i32 %201, 0
  br i1 %tobool383, label %cond.true.384, label %cond.false.407

cond.true.384:                                    ; preds = %cond.end.380
  %202 = load i32, i32* %list.addr, align 4
  %cmp385 = icmp eq i32 %202, 1
  br i1 %cmp385, label %cond.true.387, label %cond.false.396

cond.true.387:                                    ; preds = %cond.true.384
  %pos_x388 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %203 = load i32, i32* %pos_x388, align 4
  %idxprom389 = sext i32 %203 to i64
  %pos_y390 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %204 = load i32, i32* %pos_y390, align 4
  %idxprom391 = sext i32 %204 to i64
  %205 = load i32, i32* @UMHEX_blocktype, align 4
  %idxprom392 = sext i32 %205 to i64
  %206 = load i32***, i32**** %fastme_l1_cost_flag, align 8
  %arrayidx393 = getelementptr inbounds i32**, i32*** %206, i64 %idxprom392
  %207 = load i32**, i32*** %arrayidx393, align 8
  %arrayidx394 = getelementptr inbounds i32*, i32** %207, i64 %idxprom391
  %208 = load i32*, i32** %arrayidx394, align 8
  %arrayidx395 = getelementptr inbounds i32, i32* %208, i64 %idxprom389
  %209 = load i32, i32* %arrayidx395, align 4
  br label %cond.end.405

cond.false.396:                                   ; preds = %cond.true.384
  %pos_x397 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %210 = load i32, i32* %pos_x397, align 4
  %idxprom398 = sext i32 %210 to i64
  %pos_y399 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %211 = load i32, i32* %pos_y399, align 4
  %idxprom400 = sext i32 %211 to i64
  %212 = load i32, i32* @UMHEX_blocktype, align 4
  %idxprom401 = sext i32 %212 to i64
  %213 = load i32***, i32**** %fastme_l0_cost_flag, align 8
  %arrayidx402 = getelementptr inbounds i32**, i32*** %213, i64 %idxprom401
  %214 = load i32**, i32*** %arrayidx402, align 8
  %arrayidx403 = getelementptr inbounds i32*, i32** %214, i64 %idxprom400
  %215 = load i32*, i32** %arrayidx403, align 8
  %arrayidx404 = getelementptr inbounds i32, i32* %215, i64 %idxprom398
  %216 = load i32, i32* %arrayidx404, align 4
  br label %cond.end.405

cond.end.405:                                     ; preds = %cond.false.396, %cond.true.387
  %cond406 = phi i32 [ %209, %cond.true.387 ], [ %216, %cond.false.396 ]
  br label %cond.end.408

cond.false.407:                                   ; preds = %cond.end.380
  br label %cond.end.408

cond.end.408:                                     ; preds = %cond.false.407, %cond.end.405
  %cond409 = phi i32 [ %cond406, %cond.end.405 ], [ 0, %cond.false.407 ]
  store i32 %cond409, i32* @SAD_b, align 4
  %available410 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 0
  %217 = load i32, i32* %available410, align 4
  %tobool411 = icmp ne i32 %217, 0
  br i1 %tobool411, label %cond.true.412, label %cond.false.435

cond.true.412:                                    ; preds = %cond.end.408
  %218 = load i32, i32* %list.addr, align 4
  %cmp413 = icmp eq i32 %218, 1
  br i1 %cmp413, label %cond.true.415, label %cond.false.424

cond.true.415:                                    ; preds = %cond.true.412
  %pos_x416 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 4
  %219 = load i32, i32* %pos_x416, align 4
  %idxprom417 = sext i32 %219 to i64
  %pos_y418 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 5
  %220 = load i32, i32* %pos_y418, align 4
  %idxprom419 = sext i32 %220 to i64
  %221 = load i32, i32* @UMHEX_blocktype, align 4
  %idxprom420 = sext i32 %221 to i64
  %222 = load i32***, i32**** %fastme_l1_cost_flag, align 8
  %arrayidx421 = getelementptr inbounds i32**, i32*** %222, i64 %idxprom420
  %223 = load i32**, i32*** %arrayidx421, align 8
  %arrayidx422 = getelementptr inbounds i32*, i32** %223, i64 %idxprom419
  %224 = load i32*, i32** %arrayidx422, align 8
  %arrayidx423 = getelementptr inbounds i32, i32* %224, i64 %idxprom417
  %225 = load i32, i32* %arrayidx423, align 4
  br label %cond.end.433

cond.false.424:                                   ; preds = %cond.true.412
  %pos_x425 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 4
  %226 = load i32, i32* %pos_x425, align 4
  %idxprom426 = sext i32 %226 to i64
  %pos_y427 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 5
  %227 = load i32, i32* %pos_y427, align 4
  %idxprom428 = sext i32 %227 to i64
  %228 = load i32, i32* @UMHEX_blocktype, align 4
  %idxprom429 = sext i32 %228 to i64
  %229 = load i32***, i32**** %fastme_l0_cost_flag, align 8
  %arrayidx430 = getelementptr inbounds i32**, i32*** %229, i64 %idxprom429
  %230 = load i32**, i32*** %arrayidx430, align 8
  %arrayidx431 = getelementptr inbounds i32*, i32** %230, i64 %idxprom428
  %231 = load i32*, i32** %arrayidx431, align 8
  %arrayidx432 = getelementptr inbounds i32, i32* %231, i64 %idxprom426
  %232 = load i32, i32* %arrayidx432, align 4
  br label %cond.end.433

cond.end.433:                                     ; preds = %cond.false.424, %cond.true.415
  %cond434 = phi i32 [ %225, %cond.true.415 ], [ %232, %cond.false.424 ]
  br label %cond.end.436

cond.false.435:                                   ; preds = %cond.end.408
  br label %cond.end.436

cond.end.436:                                     ; preds = %cond.false.435, %cond.end.433
  %cond437 = phi i32 [ %cond434, %cond.end.433 ], [ 0, %cond.false.435 ]
  store i32 %cond437, i32* @SAD_d, align 4
  %available438 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  %233 = load i32, i32* %available438, align 4
  %tobool439 = icmp ne i32 %233, 0
  br i1 %tobool439, label %cond.true.440, label %cond.false.463

cond.true.440:                                    ; preds = %cond.end.436
  %234 = load i32, i32* %list.addr, align 4
  %cmp441 = icmp eq i32 %234, 1
  br i1 %cmp441, label %cond.true.443, label %cond.false.452

cond.true.443:                                    ; preds = %cond.true.440
  %pos_x444 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %235 = load i32, i32* %pos_x444, align 4
  %idxprom445 = sext i32 %235 to i64
  %pos_y446 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %236 = load i32, i32* %pos_y446, align 4
  %idxprom447 = sext i32 %236 to i64
  %237 = load i32, i32* @UMHEX_blocktype, align 4
  %idxprom448 = sext i32 %237 to i64
  %238 = load i32***, i32**** %fastme_l1_cost_flag, align 8
  %arrayidx449 = getelementptr inbounds i32**, i32*** %238, i64 %idxprom448
  %239 = load i32**, i32*** %arrayidx449, align 8
  %arrayidx450 = getelementptr inbounds i32*, i32** %239, i64 %idxprom447
  %240 = load i32*, i32** %arrayidx450, align 8
  %arrayidx451 = getelementptr inbounds i32, i32* %240, i64 %idxprom445
  %241 = load i32, i32* %arrayidx451, align 4
  br label %cond.end.461

cond.false.452:                                   ; preds = %cond.true.440
  %pos_x453 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %242 = load i32, i32* %pos_x453, align 4
  %idxprom454 = sext i32 %242 to i64
  %pos_y455 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %243 = load i32, i32* %pos_y455, align 4
  %idxprom456 = sext i32 %243 to i64
  %244 = load i32, i32* @UMHEX_blocktype, align 4
  %idxprom457 = sext i32 %244 to i64
  %245 = load i32***, i32**** %fastme_l0_cost_flag, align 8
  %arrayidx458 = getelementptr inbounds i32**, i32*** %245, i64 %idxprom457
  %246 = load i32**, i32*** %arrayidx458, align 8
  %arrayidx459 = getelementptr inbounds i32*, i32** %246, i64 %idxprom456
  %247 = load i32*, i32** %arrayidx459, align 8
  %arrayidx460 = getelementptr inbounds i32, i32* %247, i64 %idxprom454
  %248 = load i32, i32* %arrayidx460, align 4
  br label %cond.end.461

cond.end.461:                                     ; preds = %cond.false.452, %cond.true.443
  %cond462 = phi i32 [ %241, %cond.true.443 ], [ %248, %cond.false.452 ]
  br label %cond.end.464

cond.false.463:                                   ; preds = %cond.end.436
  %249 = load i32, i32* @SAD_d, align 4
  br label %cond.end.464

cond.end.464:                                     ; preds = %cond.false.463, %cond.end.461
  %cond465 = phi i32 [ %cond462, %cond.end.461 ], [ %249, %cond.false.463 ]
  store i32 %cond465, i32* @SAD_c, align 4
  br label %if.end.466

if.end.466:                                       ; preds = %cond.end.464, %lor.lhs.false
  store i32 0, i32* %hv, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.466
  %250 = load i32, i32* %hv, align 4
  %cmp467 = icmp slt i32 %250, 2
  br i1 %cmp467, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %251 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag469 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %251, i32 0, i32 100
  %252 = load i32, i32* %MbaffFrameFlag469, align 4
  %tobool470 = icmp ne i32 %252, 0
  br i1 %tobool470, label %lor.lhs.false.471, label %if.then.474

lor.lhs.false.471:                                ; preds = %for.body
  %253 = load i32, i32* %hv, align 4
  %cmp472 = icmp eq i32 %253, 0
  br i1 %cmp472, label %if.then.474, label %if.else.520

if.then.474:                                      ; preds = %lor.lhs.false.471, %for.body
  %available475 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %254 = load i32, i32* %available475, align 4
  %tobool476 = icmp ne i32 %254, 0
  br i1 %tobool476, label %cond.true.477, label %cond.false.487

cond.true.477:                                    ; preds = %if.then.474
  %255 = load i32, i32* %hv, align 4
  %idxprom478 = sext i32 %255 to i64
  %pos_x479 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %256 = load i32, i32* %pos_x479, align 4
  %idxprom480 = sext i32 %256 to i64
  %pos_y481 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %257 = load i32, i32* %pos_y481, align 4
  %idxprom482 = sext i32 %257 to i64
  %258 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx483 = getelementptr inbounds i16**, i16*** %258, i64 %idxprom482
  %259 = load i16**, i16*** %arrayidx483, align 8
  %arrayidx484 = getelementptr inbounds i16*, i16** %259, i64 %idxprom480
  %260 = load i16*, i16** %arrayidx484, align 8
  %arrayidx485 = getelementptr inbounds i16, i16* %260, i64 %idxprom478
  %261 = load i16, i16* %arrayidx485, align 2
  %conv486 = sext i16 %261 to i32
  br label %cond.end.488

cond.false.487:                                   ; preds = %if.then.474
  br label %cond.end.488

cond.end.488:                                     ; preds = %cond.false.487, %cond.true.477
  %cond489 = phi i32 [ %conv486, %cond.true.477 ], [ 0, %cond.false.487 ]
  store i32 %cond489, i32* %mv_a, align 4
  %available490 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %262 = load i32, i32* %available490, align 4
  %tobool491 = icmp ne i32 %262, 0
  br i1 %tobool491, label %cond.true.492, label %cond.false.502

cond.true.492:                                    ; preds = %cond.end.488
  %263 = load i32, i32* %hv, align 4
  %idxprom493 = sext i32 %263 to i64
  %pos_x494 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %264 = load i32, i32* %pos_x494, align 4
  %idxprom495 = sext i32 %264 to i64
  %pos_y496 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %265 = load i32, i32* %pos_y496, align 4
  %idxprom497 = sext i32 %265 to i64
  %266 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx498 = getelementptr inbounds i16**, i16*** %266, i64 %idxprom497
  %267 = load i16**, i16*** %arrayidx498, align 8
  %arrayidx499 = getelementptr inbounds i16*, i16** %267, i64 %idxprom495
  %268 = load i16*, i16** %arrayidx499, align 8
  %arrayidx500 = getelementptr inbounds i16, i16* %268, i64 %idxprom493
  %269 = load i16, i16* %arrayidx500, align 2
  %conv501 = sext i16 %269 to i32
  br label %cond.end.503

cond.false.502:                                   ; preds = %cond.end.488
  br label %cond.end.503

cond.end.503:                                     ; preds = %cond.false.502, %cond.true.492
  %cond504 = phi i32 [ %conv501, %cond.true.492 ], [ 0, %cond.false.502 ]
  store i32 %cond504, i32* %mv_b, align 4
  %available505 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  %270 = load i32, i32* %available505, align 4
  %tobool506 = icmp ne i32 %270, 0
  br i1 %tobool506, label %cond.true.507, label %cond.false.517

cond.true.507:                                    ; preds = %cond.end.503
  %271 = load i32, i32* %hv, align 4
  %idxprom508 = sext i32 %271 to i64
  %pos_x509 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %272 = load i32, i32* %pos_x509, align 4
  %idxprom510 = sext i32 %272 to i64
  %pos_y511 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %273 = load i32, i32* %pos_y511, align 4
  %idxprom512 = sext i32 %273 to i64
  %274 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx513 = getelementptr inbounds i16**, i16*** %274, i64 %idxprom512
  %275 = load i16**, i16*** %arrayidx513, align 8
  %arrayidx514 = getelementptr inbounds i16*, i16** %275, i64 %idxprom510
  %276 = load i16*, i16** %arrayidx514, align 8
  %arrayidx515 = getelementptr inbounds i16, i16* %276, i64 %idxprom508
  %277 = load i16, i16* %arrayidx515, align 2
  %conv516 = sext i16 %277 to i32
  br label %cond.end.518

cond.false.517:                                   ; preds = %cond.end.503
  br label %cond.end.518

cond.end.518:                                     ; preds = %cond.false.517, %cond.true.507
  %cond519 = phi i32 [ %conv516, %cond.true.507 ], [ 0, %cond.false.517 ]
  store i32 %cond519, i32* %mv_c, align 4
  br label %if.end.739

if.else.520:                                      ; preds = %lor.lhs.false.471
  %278 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr521 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %278, i32 0, i32 3
  %279 = load i32, i32* %current_mb_nr521, align 4
  %idxprom522 = sext i32 %279 to i64
  %280 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data523 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %280, i32 0, i32 61
  %281 = load %struct.macroblock*, %struct.macroblock** %mb_data523, align 8
  %arrayidx524 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %281, i64 %idxprom522
  %mb_field525 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx524, i32 0, i32 19
  %282 = load i32, i32* %mb_field525, align 4
  %tobool526 = icmp ne i32 %282, 0
  br i1 %tobool526, label %if.then.527, label %if.else.632

if.then.527:                                      ; preds = %if.else.520
  %available528 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %283 = load i32, i32* %available528, align 4
  %tobool529 = icmp ne i32 %283, 0
  br i1 %tobool529, label %cond.true.530, label %cond.false.559

cond.true.530:                                    ; preds = %if.then.527
  %mb_addr531 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %284 = load i32, i32* %mb_addr531, align 4
  %idxprom532 = sext i32 %284 to i64
  %285 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data533 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %285, i32 0, i32 61
  %286 = load %struct.macroblock*, %struct.macroblock** %mb_data533, align 8
  %arrayidx534 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %286, i64 %idxprom532
  %mb_field535 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx534, i32 0, i32 19
  %287 = load i32, i32* %mb_field535, align 4
  %tobool536 = icmp ne i32 %287, 0
  br i1 %tobool536, label %cond.true.537, label %cond.false.547

cond.true.537:                                    ; preds = %cond.true.530
  %288 = load i32, i32* %hv, align 4
  %idxprom538 = sext i32 %288 to i64
  %pos_x539 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %289 = load i32, i32* %pos_x539, align 4
  %idxprom540 = sext i32 %289 to i64
  %pos_y541 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %290 = load i32, i32* %pos_y541, align 4
  %idxprom542 = sext i32 %290 to i64
  %291 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx543 = getelementptr inbounds i16**, i16*** %291, i64 %idxprom542
  %292 = load i16**, i16*** %arrayidx543, align 8
  %arrayidx544 = getelementptr inbounds i16*, i16** %292, i64 %idxprom540
  %293 = load i16*, i16** %arrayidx544, align 8
  %arrayidx545 = getelementptr inbounds i16, i16* %293, i64 %idxprom538
  %294 = load i16, i16* %arrayidx545, align 2
  %conv546 = sext i16 %294 to i32
  br label %cond.end.557

cond.false.547:                                   ; preds = %cond.true.530
  %295 = load i32, i32* %hv, align 4
  %idxprom548 = sext i32 %295 to i64
  %pos_x549 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %296 = load i32, i32* %pos_x549, align 4
  %idxprom550 = sext i32 %296 to i64
  %pos_y551 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %297 = load i32, i32* %pos_y551, align 4
  %idxprom552 = sext i32 %297 to i64
  %298 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx553 = getelementptr inbounds i16**, i16*** %298, i64 %idxprom552
  %299 = load i16**, i16*** %arrayidx553, align 8
  %arrayidx554 = getelementptr inbounds i16*, i16** %299, i64 %idxprom550
  %300 = load i16*, i16** %arrayidx554, align 8
  %arrayidx555 = getelementptr inbounds i16, i16* %300, i64 %idxprom548
  %301 = load i16, i16* %arrayidx555, align 2
  %conv556 = sext i16 %301 to i32
  %div = sdiv i32 %conv556, 2
  br label %cond.end.557

cond.end.557:                                     ; preds = %cond.false.547, %cond.true.537
  %cond558 = phi i32 [ %conv546, %cond.true.537 ], [ %div, %cond.false.547 ]
  br label %cond.end.560

cond.false.559:                                   ; preds = %if.then.527
  br label %cond.end.560

cond.end.560:                                     ; preds = %cond.false.559, %cond.end.557
  %cond561 = phi i32 [ %cond558, %cond.end.557 ], [ 0, %cond.false.559 ]
  store i32 %cond561, i32* %mv_a, align 4
  %available562 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %302 = load i32, i32* %available562, align 4
  %tobool563 = icmp ne i32 %302, 0
  br i1 %tobool563, label %cond.true.564, label %cond.false.594

cond.true.564:                                    ; preds = %cond.end.560
  %mb_addr565 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %303 = load i32, i32* %mb_addr565, align 4
  %idxprom566 = sext i32 %303 to i64
  %304 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data567 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %304, i32 0, i32 61
  %305 = load %struct.macroblock*, %struct.macroblock** %mb_data567, align 8
  %arrayidx568 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %305, i64 %idxprom566
  %mb_field569 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx568, i32 0, i32 19
  %306 = load i32, i32* %mb_field569, align 4
  %tobool570 = icmp ne i32 %306, 0
  br i1 %tobool570, label %cond.true.571, label %cond.false.581

cond.true.571:                                    ; preds = %cond.true.564
  %307 = load i32, i32* %hv, align 4
  %idxprom572 = sext i32 %307 to i64
  %pos_x573 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %308 = load i32, i32* %pos_x573, align 4
  %idxprom574 = sext i32 %308 to i64
  %pos_y575 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %309 = load i32, i32* %pos_y575, align 4
  %idxprom576 = sext i32 %309 to i64
  %310 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx577 = getelementptr inbounds i16**, i16*** %310, i64 %idxprom576
  %311 = load i16**, i16*** %arrayidx577, align 8
  %arrayidx578 = getelementptr inbounds i16*, i16** %311, i64 %idxprom574
  %312 = load i16*, i16** %arrayidx578, align 8
  %arrayidx579 = getelementptr inbounds i16, i16* %312, i64 %idxprom572
  %313 = load i16, i16* %arrayidx579, align 2
  %conv580 = sext i16 %313 to i32
  br label %cond.end.592

cond.false.581:                                   ; preds = %cond.true.564
  %314 = load i32, i32* %hv, align 4
  %idxprom582 = sext i32 %314 to i64
  %pos_x583 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %315 = load i32, i32* %pos_x583, align 4
  %idxprom584 = sext i32 %315 to i64
  %pos_y585 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %316 = load i32, i32* %pos_y585, align 4
  %idxprom586 = sext i32 %316 to i64
  %317 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx587 = getelementptr inbounds i16**, i16*** %317, i64 %idxprom586
  %318 = load i16**, i16*** %arrayidx587, align 8
  %arrayidx588 = getelementptr inbounds i16*, i16** %318, i64 %idxprom584
  %319 = load i16*, i16** %arrayidx588, align 8
  %arrayidx589 = getelementptr inbounds i16, i16* %319, i64 %idxprom582
  %320 = load i16, i16* %arrayidx589, align 2
  %conv590 = sext i16 %320 to i32
  %div591 = sdiv i32 %conv590, 2
  br label %cond.end.592

cond.end.592:                                     ; preds = %cond.false.581, %cond.true.571
  %cond593 = phi i32 [ %conv580, %cond.true.571 ], [ %div591, %cond.false.581 ]
  br label %cond.end.595

cond.false.594:                                   ; preds = %cond.end.560
  br label %cond.end.595

cond.end.595:                                     ; preds = %cond.false.594, %cond.end.592
  %cond596 = phi i32 [ %cond593, %cond.end.592 ], [ 0, %cond.false.594 ]
  store i32 %cond596, i32* %mv_b, align 4
  %available597 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  %321 = load i32, i32* %available597, align 4
  %tobool598 = icmp ne i32 %321, 0
  br i1 %tobool598, label %cond.true.599, label %cond.false.629

cond.true.599:                                    ; preds = %cond.end.595
  %mb_addr600 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 1
  %322 = load i32, i32* %mb_addr600, align 4
  %idxprom601 = sext i32 %322 to i64
  %323 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data602 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %323, i32 0, i32 61
  %324 = load %struct.macroblock*, %struct.macroblock** %mb_data602, align 8
  %arrayidx603 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %324, i64 %idxprom601
  %mb_field604 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx603, i32 0, i32 19
  %325 = load i32, i32* %mb_field604, align 4
  %tobool605 = icmp ne i32 %325, 0
  br i1 %tobool605, label %cond.true.606, label %cond.false.616

cond.true.606:                                    ; preds = %cond.true.599
  %326 = load i32, i32* %hv, align 4
  %idxprom607 = sext i32 %326 to i64
  %pos_x608 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %327 = load i32, i32* %pos_x608, align 4
  %idxprom609 = sext i32 %327 to i64
  %pos_y610 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %328 = load i32, i32* %pos_y610, align 4
  %idxprom611 = sext i32 %328 to i64
  %329 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx612 = getelementptr inbounds i16**, i16*** %329, i64 %idxprom611
  %330 = load i16**, i16*** %arrayidx612, align 8
  %arrayidx613 = getelementptr inbounds i16*, i16** %330, i64 %idxprom609
  %331 = load i16*, i16** %arrayidx613, align 8
  %arrayidx614 = getelementptr inbounds i16, i16* %331, i64 %idxprom607
  %332 = load i16, i16* %arrayidx614, align 2
  %conv615 = sext i16 %332 to i32
  br label %cond.end.627

cond.false.616:                                   ; preds = %cond.true.599
  %333 = load i32, i32* %hv, align 4
  %idxprom617 = sext i32 %333 to i64
  %pos_x618 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %334 = load i32, i32* %pos_x618, align 4
  %idxprom619 = sext i32 %334 to i64
  %pos_y620 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %335 = load i32, i32* %pos_y620, align 4
  %idxprom621 = sext i32 %335 to i64
  %336 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx622 = getelementptr inbounds i16**, i16*** %336, i64 %idxprom621
  %337 = load i16**, i16*** %arrayidx622, align 8
  %arrayidx623 = getelementptr inbounds i16*, i16** %337, i64 %idxprom619
  %338 = load i16*, i16** %arrayidx623, align 8
  %arrayidx624 = getelementptr inbounds i16, i16* %338, i64 %idxprom617
  %339 = load i16, i16* %arrayidx624, align 2
  %conv625 = sext i16 %339 to i32
  %div626 = sdiv i32 %conv625, 2
  br label %cond.end.627

cond.end.627:                                     ; preds = %cond.false.616, %cond.true.606
  %cond628 = phi i32 [ %conv615, %cond.true.606 ], [ %div626, %cond.false.616 ]
  br label %cond.end.630

cond.false.629:                                   ; preds = %cond.end.595
  br label %cond.end.630

cond.end.630:                                     ; preds = %cond.false.629, %cond.end.627
  %cond631 = phi i32 [ %cond628, %cond.end.627 ], [ 0, %cond.false.629 ]
  store i32 %cond631, i32* %mv_c, align 4
  br label %if.end.738

if.else.632:                                      ; preds = %if.else.520
  %available633 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %340 = load i32, i32* %available633, align 4
  %tobool634 = icmp ne i32 %340, 0
  br i1 %tobool634, label %cond.true.635, label %cond.false.665

cond.true.635:                                    ; preds = %if.else.632
  %mb_addr636 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %341 = load i32, i32* %mb_addr636, align 4
  %idxprom637 = sext i32 %341 to i64
  %342 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data638 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %342, i32 0, i32 61
  %343 = load %struct.macroblock*, %struct.macroblock** %mb_data638, align 8
  %arrayidx639 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %343, i64 %idxprom637
  %mb_field640 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx639, i32 0, i32 19
  %344 = load i32, i32* %mb_field640, align 4
  %tobool641 = icmp ne i32 %344, 0
  br i1 %tobool641, label %cond.true.642, label %cond.false.653

cond.true.642:                                    ; preds = %cond.true.635
  %345 = load i32, i32* %hv, align 4
  %idxprom643 = sext i32 %345 to i64
  %pos_x644 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %346 = load i32, i32* %pos_x644, align 4
  %idxprom645 = sext i32 %346 to i64
  %pos_y646 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %347 = load i32, i32* %pos_y646, align 4
  %idxprom647 = sext i32 %347 to i64
  %348 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx648 = getelementptr inbounds i16**, i16*** %348, i64 %idxprom647
  %349 = load i16**, i16*** %arrayidx648, align 8
  %arrayidx649 = getelementptr inbounds i16*, i16** %349, i64 %idxprom645
  %350 = load i16*, i16** %arrayidx649, align 8
  %arrayidx650 = getelementptr inbounds i16, i16* %350, i64 %idxprom643
  %351 = load i16, i16* %arrayidx650, align 2
  %conv651 = sext i16 %351 to i32
  %mul652 = mul nsw i32 %conv651, 2
  br label %cond.end.663

cond.false.653:                                   ; preds = %cond.true.635
  %352 = load i32, i32* %hv, align 4
  %idxprom654 = sext i32 %352 to i64
  %pos_x655 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %353 = load i32, i32* %pos_x655, align 4
  %idxprom656 = sext i32 %353 to i64
  %pos_y657 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %354 = load i32, i32* %pos_y657, align 4
  %idxprom658 = sext i32 %354 to i64
  %355 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx659 = getelementptr inbounds i16**, i16*** %355, i64 %idxprom658
  %356 = load i16**, i16*** %arrayidx659, align 8
  %arrayidx660 = getelementptr inbounds i16*, i16** %356, i64 %idxprom656
  %357 = load i16*, i16** %arrayidx660, align 8
  %arrayidx661 = getelementptr inbounds i16, i16* %357, i64 %idxprom654
  %358 = load i16, i16* %arrayidx661, align 2
  %conv662 = sext i16 %358 to i32
  br label %cond.end.663

cond.end.663:                                     ; preds = %cond.false.653, %cond.true.642
  %cond664 = phi i32 [ %mul652, %cond.true.642 ], [ %conv662, %cond.false.653 ]
  br label %cond.end.666

cond.false.665:                                   ; preds = %if.else.632
  br label %cond.end.666

cond.end.666:                                     ; preds = %cond.false.665, %cond.end.663
  %cond667 = phi i32 [ %cond664, %cond.end.663 ], [ 0, %cond.false.665 ]
  store i32 %cond667, i32* %mv_a, align 4
  %available668 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %359 = load i32, i32* %available668, align 4
  %tobool669 = icmp ne i32 %359, 0
  br i1 %tobool669, label %cond.true.670, label %cond.false.700

cond.true.670:                                    ; preds = %cond.end.666
  %mb_addr671 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %360 = load i32, i32* %mb_addr671, align 4
  %idxprom672 = sext i32 %360 to i64
  %361 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data673 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %361, i32 0, i32 61
  %362 = load %struct.macroblock*, %struct.macroblock** %mb_data673, align 8
  %arrayidx674 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %362, i64 %idxprom672
  %mb_field675 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx674, i32 0, i32 19
  %363 = load i32, i32* %mb_field675, align 4
  %tobool676 = icmp ne i32 %363, 0
  br i1 %tobool676, label %cond.true.677, label %cond.false.688

cond.true.677:                                    ; preds = %cond.true.670
  %364 = load i32, i32* %hv, align 4
  %idxprom678 = sext i32 %364 to i64
  %pos_x679 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %365 = load i32, i32* %pos_x679, align 4
  %idxprom680 = sext i32 %365 to i64
  %pos_y681 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %366 = load i32, i32* %pos_y681, align 4
  %idxprom682 = sext i32 %366 to i64
  %367 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx683 = getelementptr inbounds i16**, i16*** %367, i64 %idxprom682
  %368 = load i16**, i16*** %arrayidx683, align 8
  %arrayidx684 = getelementptr inbounds i16*, i16** %368, i64 %idxprom680
  %369 = load i16*, i16** %arrayidx684, align 8
  %arrayidx685 = getelementptr inbounds i16, i16* %369, i64 %idxprom678
  %370 = load i16, i16* %arrayidx685, align 2
  %conv686 = sext i16 %370 to i32
  %mul687 = mul nsw i32 %conv686, 2
  br label %cond.end.698

cond.false.688:                                   ; preds = %cond.true.670
  %371 = load i32, i32* %hv, align 4
  %idxprom689 = sext i32 %371 to i64
  %pos_x690 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %372 = load i32, i32* %pos_x690, align 4
  %idxprom691 = sext i32 %372 to i64
  %pos_y692 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %373 = load i32, i32* %pos_y692, align 4
  %idxprom693 = sext i32 %373 to i64
  %374 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx694 = getelementptr inbounds i16**, i16*** %374, i64 %idxprom693
  %375 = load i16**, i16*** %arrayidx694, align 8
  %arrayidx695 = getelementptr inbounds i16*, i16** %375, i64 %idxprom691
  %376 = load i16*, i16** %arrayidx695, align 8
  %arrayidx696 = getelementptr inbounds i16, i16* %376, i64 %idxprom689
  %377 = load i16, i16* %arrayidx696, align 2
  %conv697 = sext i16 %377 to i32
  br label %cond.end.698

cond.end.698:                                     ; preds = %cond.false.688, %cond.true.677
  %cond699 = phi i32 [ %mul687, %cond.true.677 ], [ %conv697, %cond.false.688 ]
  br label %cond.end.701

cond.false.700:                                   ; preds = %cond.end.666
  br label %cond.end.701

cond.end.701:                                     ; preds = %cond.false.700, %cond.end.698
  %cond702 = phi i32 [ %cond699, %cond.end.698 ], [ 0, %cond.false.700 ]
  store i32 %cond702, i32* %mv_b, align 4
  %available703 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  %378 = load i32, i32* %available703, align 4
  %tobool704 = icmp ne i32 %378, 0
  br i1 %tobool704, label %cond.true.705, label %cond.false.735

cond.true.705:                                    ; preds = %cond.end.701
  %mb_addr706 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 1
  %379 = load i32, i32* %mb_addr706, align 4
  %idxprom707 = sext i32 %379 to i64
  %380 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data708 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %380, i32 0, i32 61
  %381 = load %struct.macroblock*, %struct.macroblock** %mb_data708, align 8
  %arrayidx709 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %381, i64 %idxprom707
  %mb_field710 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx709, i32 0, i32 19
  %382 = load i32, i32* %mb_field710, align 4
  %tobool711 = icmp ne i32 %382, 0
  br i1 %tobool711, label %cond.true.712, label %cond.false.723

cond.true.712:                                    ; preds = %cond.true.705
  %383 = load i32, i32* %hv, align 4
  %idxprom713 = sext i32 %383 to i64
  %pos_x714 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %384 = load i32, i32* %pos_x714, align 4
  %idxprom715 = sext i32 %384 to i64
  %pos_y716 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %385 = load i32, i32* %pos_y716, align 4
  %idxprom717 = sext i32 %385 to i64
  %386 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx718 = getelementptr inbounds i16**, i16*** %386, i64 %idxprom717
  %387 = load i16**, i16*** %arrayidx718, align 8
  %arrayidx719 = getelementptr inbounds i16*, i16** %387, i64 %idxprom715
  %388 = load i16*, i16** %arrayidx719, align 8
  %arrayidx720 = getelementptr inbounds i16, i16* %388, i64 %idxprom713
  %389 = load i16, i16* %arrayidx720, align 2
  %conv721 = sext i16 %389 to i32
  %mul722 = mul nsw i32 %conv721, 2
  br label %cond.end.733

cond.false.723:                                   ; preds = %cond.true.705
  %390 = load i32, i32* %hv, align 4
  %idxprom724 = sext i32 %390 to i64
  %pos_x725 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %391 = load i32, i32* %pos_x725, align 4
  %idxprom726 = sext i32 %391 to i64
  %pos_y727 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %392 = load i32, i32* %pos_y727, align 4
  %idxprom728 = sext i32 %392 to i64
  %393 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx729 = getelementptr inbounds i16**, i16*** %393, i64 %idxprom728
  %394 = load i16**, i16*** %arrayidx729, align 8
  %arrayidx730 = getelementptr inbounds i16*, i16** %394, i64 %idxprom726
  %395 = load i16*, i16** %arrayidx730, align 8
  %arrayidx731 = getelementptr inbounds i16, i16* %395, i64 %idxprom724
  %396 = load i16, i16* %arrayidx731, align 2
  %conv732 = sext i16 %396 to i32
  br label %cond.end.733

cond.end.733:                                     ; preds = %cond.false.723, %cond.true.712
  %cond734 = phi i32 [ %mul722, %cond.true.712 ], [ %conv732, %cond.false.723 ]
  br label %cond.end.736

cond.false.735:                                   ; preds = %cond.end.701
  br label %cond.end.736

cond.end.736:                                     ; preds = %cond.false.735, %cond.end.733
  %cond737 = phi i32 [ %cond734, %cond.end.733 ], [ 0, %cond.false.735 ]
  store i32 %cond737, i32* %mv_c, align 4
  br label %if.end.738

if.end.738:                                       ; preds = %cond.end.736, %cond.end.630
  br label %if.end.739

if.end.739:                                       ; preds = %if.end.738, %cond.end.518
  %397 = load i32, i32* %mvPredType, align 4
  switch i32 %397, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.755
    i32 2, label %sw.bb.756
    i32 3, label %sw.bb.757
  ]

sw.bb:                                            ; preds = %if.end.739
  %available740 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %398 = load i32, i32* %available740, align 4
  %tobool741 = icmp ne i32 %398, 0
  br i1 %tobool741, label %if.else.746, label %lor.lhs.false.742

lor.lhs.false.742:                                ; preds = %sw.bb
  %available743 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  %399 = load i32, i32* %available743, align 4
  %tobool744 = icmp ne i32 %399, 0
  br i1 %tobool744, label %if.else.746, label %if.then.745

if.then.745:                                      ; preds = %lor.lhs.false.742
  %400 = load i32, i32* %mv_a, align 4
  store i32 %400, i32* %pred_vec, align 4
  br label %if.end.754

if.else.746:                                      ; preds = %lor.lhs.false.742, %sw.bb
  %401 = load i32, i32* %mv_a, align 4
  %402 = load i32, i32* %mv_b, align 4
  %add747 = add nsw i32 %401, %402
  %403 = load i32, i32* %mv_c, align 4
  %add748 = add nsw i32 %add747, %403
  %404 = load i32, i32* %mv_a, align 4
  %405 = load i32, i32* %mv_b, align 4
  %406 = load i32, i32* %mv_c, align 4
  %call = call i32 @imin(i32 %405, i32 %406)
  %call749 = call i32 @imin(i32 %404, i32 %call)
  %sub750 = sub nsw i32 %add748, %call749
  %407 = load i32, i32* %mv_a, align 4
  %408 = load i32, i32* %mv_b, align 4
  %409 = load i32, i32* %mv_c, align 4
  %call751 = call i32 @imax(i32 %408, i32 %409)
  %call752 = call i32 @imax(i32 %407, i32 %call751)
  %sub753 = sub nsw i32 %sub750, %call752
  store i32 %sub753, i32* %pred_vec, align 4
  br label %if.end.754

if.end.754:                                       ; preds = %if.else.746, %if.then.745
  br label %sw.epilog

sw.bb.755:                                        ; preds = %if.end.739
  %410 = load i32, i32* %mv_a, align 4
  store i32 %410, i32* %pred_vec, align 4
  br label %sw.epilog

sw.bb.756:                                        ; preds = %if.end.739
  %411 = load i32, i32* %mv_b, align 4
  store i32 %411, i32* %pred_vec, align 4
  br label %sw.epilog

sw.bb.757:                                        ; preds = %if.end.739
  %412 = load i32, i32* %mv_c, align 4
  store i32 %412, i32* %pred_vec, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.739
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.757, %sw.bb.756, %sw.bb.755, %if.end.754
  %413 = load i32, i32* %pred_vec, align 4
  %conv758 = trunc i32 %413 to i16
  %414 = load i32, i32* %hv, align 4
  %idxprom759 = sext i32 %414 to i64
  %415 = load i16*, i16** %pmv.addr, align 8
  %arrayidx760 = getelementptr inbounds i16, i16* %415, i64 %idxprom759
  store i16 %conv758, i16* %arrayidx760, align 2
  %416 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UMHexDSR761 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %416, i32 0, i32 170
  %417 = load i32, i32* %UMHexDSR761, align 4
  %tobool762 = icmp ne i32 %417, 0
  br i1 %tobool762, label %if.then.763, label %if.end.823

if.then.763:                                      ; preds = %sw.epilog
  %available764 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %418 = load i32, i32* %available764, align 4
  %available765 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %419 = load i32, i32* %available765, align 4
  %add766 = add nsw i32 %418, %419
  %available767 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  %420 = load i32, i32* %available767, align 4
  %add768 = add nsw i32 %add766, %420
  store i32 %add768, i32* %dsr_mv_avail, align 4
  %421 = load i32, i32* %dsr_mv_avail, align 4
  %cmp769 = icmp slt i32 %421, 2
  br i1 %cmp769, label %if.then.771, label %if.else.775

if.then.771:                                      ; preds = %if.then.763
  %422 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %search_range772 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %422, i32 0, i32 7
  %423 = load i32, i32* %search_range772, align 4
  %424 = load i32, i32* %hv, align 4
  %idxprom773 = sext i32 %424 to i64
  %arrayidx774 = getelementptr inbounds [2 x i32], [2 x i32]* %dsr_temp_search_range, i32 0, i64 %idxprom773
  store i32 %423, i32* %arrayidx774, align 4
  br label %if.end.822

if.else.775:                                      ; preds = %if.then.763
  %425 = load i32, i32* %mv_a, align 4
  %call776 = call i32 @iabs(i32 %425)
  %426 = load i32, i32* %mv_b, align 4
  %call777 = call i32 @iabs(i32 %426)
  %427 = load i32, i32* %mv_c, align 4
  %call778 = call i32 @iabs(i32 %427)
  %call779 = call i32 @imax(i32 %call777, i32 %call778)
  %call780 = call i32 @imax(i32 %call776, i32 %call779)
  store i32 %call780, i32* %dsr_mv_max, align 4
  %428 = load i32, i32* %mv_a, align 4
  %call781 = call i32 @iabs(i32 %428)
  %429 = load i32, i32* %mv_b, align 4
  %call782 = call i32 @iabs(i32 %429)
  %add783 = add nsw i32 %call781, %call782
  %430 = load i32, i32* %mv_c, align 4
  %call784 = call i32 @iabs(i32 %430)
  %add785 = add nsw i32 %add783, %call784
  store i32 %add785, i32* %dsr_mv_sum, align 4
  %431 = load i32, i32* %dsr_mv_sum, align 4
  %cmp786 = icmp eq i32 %431, 0
  br i1 %cmp786, label %if.then.788, label %if.else.792

if.then.788:                                      ; preds = %if.else.775
  %432 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %search_range789 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %432, i32 0, i32 7
  %433 = load i32, i32* %search_range789, align 4
  %add790 = add nsw i32 %433, 4
  %shr791 = ashr i32 %add790, 3
  store i32 %shr791, i32* %dsr_small_search_range, align 4
  br label %if.end.805

if.else.792:                                      ; preds = %if.else.775
  %434 = load i32, i32* %dsr_mv_sum, align 4
  %cmp793 = icmp sgt i32 %434, 3
  br i1 %cmp793, label %if.then.795, label %if.else.799

if.then.795:                                      ; preds = %if.else.792
  %435 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %search_range796 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %435, i32 0, i32 7
  %436 = load i32, i32* %search_range796, align 4
  %add797 = add nsw i32 %436, 2
  %shr798 = ashr i32 %add797, 2
  store i32 %shr798, i32* %dsr_small_search_range, align 4
  br label %if.end.804

if.else.799:                                      ; preds = %if.else.792
  %437 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %search_range800 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %437, i32 0, i32 7
  %438 = load i32, i32* %search_range800, align 4
  %mul801 = mul nsw i32 3, %438
  %add802 = add nsw i32 %mul801, 8
  %shr803 = ashr i32 %add802, 4
  store i32 %shr803, i32* %dsr_small_search_range, align 4
  br label %if.end.804

if.end.804:                                       ; preds = %if.else.799, %if.then.795
  br label %if.end.805

if.end.805:                                       ; preds = %if.end.804, %if.then.788
  %439 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %search_range806 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %439, i32 0, i32 7
  %440 = load i32, i32* %search_range806, align 4
  %441 = load i32, i32* %dsr_small_search_range, align 4
  %442 = load i32, i32* %dsr_mv_max, align 4
  %shl = shl i32 %442, 1
  %call807 = call i32 @imax(i32 %441, i32 %shl)
  %call808 = call i32 @imin(i32 %440, i32 %call807)
  %443 = load i32, i32* %hv, align 4
  %idxprom809 = sext i32 %443 to i64
  %arrayidx810 = getelementptr inbounds [2 x i32], [2 x i32]* %dsr_temp_search_range, i32 0, i64 %idxprom809
  store i32 %call808, i32* %arrayidx810, align 4
  %444 = load i32, i32* @SAD_a, align 4
  %445 = load i32, i32* @SAD_b, align 4
  %446 = load i32, i32* @SAD_c, align 4
  %call811 = call i32 @imax(i32 %445, i32 %446)
  %call812 = call i32 @imax(i32 %444, i32 %call811)
  %447 = load i32, i32* @UMHEX_blocktype, align 4
  %idxprom813 = sext i32 %447 to i64
  %arrayidx814 = getelementptr inbounds [8 x i32], [8 x i32]* @Threshold_DSR_MB, i32 0, i64 %idxprom813
  %448 = load i32, i32* %arrayidx814, align 4
  %cmp815 = icmp sgt i32 %call812, %448
  br i1 %cmp815, label %if.then.817, label %if.end.821

if.then.817:                                      ; preds = %if.end.805
  %449 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %search_range818 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %449, i32 0, i32 7
  %450 = load i32, i32* %search_range818, align 4
  %451 = load i32, i32* %hv, align 4
  %idxprom819 = sext i32 %451 to i64
  %arrayidx820 = getelementptr inbounds [2 x i32], [2 x i32]* %dsr_temp_search_range, i32 0, i64 %idxprom819
  store i32 %450, i32* %arrayidx820, align 4
  br label %if.end.821

if.end.821:                                       ; preds = %if.then.817, %if.end.805
  br label %if.end.822

if.end.822:                                       ; preds = %if.end.821, %if.then.771
  br label %if.end.823

if.end.823:                                       ; preds = %if.end.822, %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %if.end.823
  %452 = load i32, i32* %hv, align 4
  %inc = add nsw i32 %452, 1
  store i32 %inc, i32* %hv, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %453 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UMHexDSR824 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %453, i32 0, i32 170
  %454 = load i32, i32* %UMHexDSR824, align 4
  %tobool825 = icmp ne i32 %454, 0
  br i1 %tobool825, label %if.then.826, label %if.end.859

if.then.826:                                      ; preds = %for.end
  %arrayidx827 = getelementptr inbounds [2 x i32], [2 x i32]* %dsr_temp_search_range, i32 0, i64 0
  %455 = load i32, i32* %arrayidx827, align 4
  %arrayidx828 = getelementptr inbounds [2 x i32], [2 x i32]* %dsr_temp_search_range, i32 0, i64 1
  %456 = load i32, i32* %arrayidx828, align 4
  %call829 = call i32 @imax(i32 %455, i32 %456)
  store i32 %call829, i32* @dsr_new_search_range, align 4
  %457 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %full_search = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %457, i32 0, i32 106
  %458 = load i32, i32* %full_search, align 4
  %cmp830 = icmp eq i32 %458, 2
  br i1 %cmp830, label %if.then.832, label %if.else.833

if.then.832:                                      ; preds = %if.then.826
  %459 = load i32, i32* @dsr_new_search_range, align 4
  %460 = load i32*, i32** %search_range.addr, align 8
  store i32 %459, i32* %460, align 4
  br label %if.end.858

if.else.833:                                      ; preds = %if.then.826
  %461 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %full_search834 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %461, i32 0, i32 106
  %462 = load i32, i32* %full_search834, align 4
  %cmp835 = icmp eq i32 %462, 1
  br i1 %cmp835, label %if.then.837, label %if.else.842

if.then.837:                                      ; preds = %if.else.833
  %463 = load i32, i32* @dsr_new_search_range, align 4
  %464 = load i16, i16* %ref_frame.addr, align 2
  %conv838 = sext i16 %464 to i32
  %call839 = call i32 @imin(i32 %conv838, i32 1)
  %add840 = add nsw i32 %call839, 1
  %div841 = sdiv i32 %463, %add840
  %465 = load i32*, i32** %search_range.addr, align 8
  store i32 %div841, i32* %465, align 4
  br label %if.end.857

if.else.842:                                      ; preds = %if.else.833
  %466 = load i32, i32* @dsr_new_search_range, align 4
  %467 = load i16, i16* %ref_frame.addr, align 2
  %conv843 = sext i16 %467 to i32
  %call844 = call i32 @imin(i32 %conv843, i32 1)
  %add845 = add nsw i32 %call844, 1
  %468 = load i32, i32* %blockshape_x.addr, align 4
  %shr846 = ashr i32 %468, 2
  %sub847 = sub nsw i32 %shr846, 1
  %idxprom848 = sext i32 %sub847 to i64
  %469 = load i32, i32* %blockshape_y.addr, align 4
  %shr849 = ashr i32 %469, 2
  %sub850 = sub nsw i32 %shr849, 1
  %idxprom851 = sext i32 %sub850 to i64
  %470 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blocktype_lut = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %470, i32 0, i32 20
  %arrayidx852 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %blocktype_lut, i32 0, i64 %idxprom851
  %arrayidx853 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx852, i32 0, i64 %idxprom848
  %471 = load i32, i32* %arrayidx853, align 4
  %call854 = call i32 @imin(i32 2, i32 %471)
  %mul855 = mul nsw i32 %add845, %call854
  %div856 = sdiv i32 %466, %mul855
  %472 = load i32*, i32** %search_range.addr, align 8
  store i32 %div856, i32* %472, align 4
  br label %if.end.857

if.end.857:                                       ; preds = %if.else.842, %if.then.837
  br label %if.end.858

if.end.858:                                       ; preds = %if.end.857, %if.then.832
  br label %if.end.859

if.end.859:                                       ; preds = %if.end.858, %for.end
  ret void
}

declare void @getLuma4x4Neighbour(i32, i32, i32, %struct.pix_pos*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imax(i32 %a, i32 %b) #4 {
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
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
