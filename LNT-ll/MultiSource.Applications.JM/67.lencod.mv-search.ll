; ModuleID = './MultiSource.Applications.JM/67.lencod.mv-search.bc'
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
%struct.timeb = type { i64, i16, i16, i16 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16****, i16****, i16*****, i16***, i8*, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.colocated_params = type { i32, i32, i32, [6 x [33 x i64]], i8***, i64***, i16****, i8**, [6 x [33 x i64]], i8***, i64***, i16****, i8**, [6 x [33 x i64]], i8***, i64***, i16****, i8**, i8, i8** }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }

@QP2QUANT = constant [40 x i32] [i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 6, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 14, i32 16, i32 18, i32 20, i32 23, i32 25, i32 29, i32 32, i32 36, i32 40, i32 45, i32 51, i32 57, i32 64, i32 72, i32 81, i32 91], align 16
@LEVELMVLIMIT = constant [17 x [6 x i32]] [[6 x i32] [i32 -63, i32 63, i32 -128, i32 127, i32 -256, i32 255], [6 x i32] [i32 -63, i32 63, i32 -128, i32 127, i32 -256, i32 255], [6 x i32] [i32 -127, i32 127, i32 -256, i32 255, i32 -512, i32 511], [6 x i32] [i32 -127, i32 127, i32 -256, i32 255, i32 -512, i32 511], [6 x i32] [i32 -127, i32 127, i32 -256, i32 255, i32 -512, i32 511], [6 x i32] [i32 -127, i32 127, i32 -256, i32 255, i32 -512, i32 511], [6 x i32] [i32 -255, i32 255, i32 -512, i32 511, i32 -1024, i32 1023], [6 x i32] [i32 -255, i32 255, i32 -512, i32 511, i32 -1024, i32 1023], [6 x i32] [i32 -255, i32 255, i32 -512, i32 511, i32 -1024, i32 1023], [6 x i32] [i32 -511, i32 511, i32 -1024, i32 1023, i32 -2048, i32 2047], [6 x i32] [i32 -511, i32 511, i32 -1024, i32 1023, i32 -2048, i32 2047], [6 x i32] [i32 -511, i32 511, i32 -1024, i32 1023, i32 -2048, i32 2047], [6 x i32] [i32 -511, i32 511, i32 -1024, i32 1023, i32 -2048, i32 2047], [6 x i32] [i32 -511, i32 511, i32 -1024, i32 1023, i32 -2048, i32 2047], [6 x i32] [i32 -511, i32 511, i32 -1024, i32 1023, i32 -2048, i32 2047], [6 x i32] [i32 -511, i32 511, i32 -1024, i32 1023, i32 -2048, i32 2047], [6 x i32] [i32 -511, i32 511, i32 -1024, i32 1023, i32 -2048, i32 2047]], align 16
@img = external global %struct.ImageParameters*, align 8
@input = external global %struct.InputParameters*, align 8
@max_mvd = common global i32 0, align 4
@byte_abs_range = common global i32 0, align 4
@spiral_search_x = common global i16* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"Init_Motion_Search_Module: spiral_search_x\00", align 1
@spiral_search_y = common global i16* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Init_Motion_Search_Module: spiral_search_y\00", align 1
@spiral_hpel_search_x = common global i16* null, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"Init_Motion_Search_Module: spiral_hpel_search_x\00", align 1
@spiral_hpel_search_y = common global i16* null, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"Init_Motion_Search_Module: spiral_hpel_search_y\00", align 1
@mvbits = common global i32* null, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"Init_Motion_Search_Module: mvbits\00", align 1
@refbits = common global i32* null, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"Init_Motion_Search_Module: refbits\00", align 1
@byte_abs = common global i32* null, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"Init_Motion_Search_Module: byte_abs\00", align 1
@motion_cost = common global i32**** null, align 8
@start_me_refinement_hp = common global i32 0, align 4
@start_me_refinement_qp = common global i32 0, align 4
@computeUniPred = external global [6 x i32 (i16*, i32, i32, i32, i32, i32)*], align 16
@computeBiPred1 = external global [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*], align 16
@computeBiPred2 = external global [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*], align 16
@get_line = external global [2 x i16* (i16****, i32, i32)*], align 16
@get_crline = external global [2 x i16* (i16****, i32, i32)*], align 16
@BPredPartitionCost.bx0 = internal global [5 x [4 x i32]] [[4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] [i32 0, i32 2, i32 0, i32 0], [4 x i32] [i32 0, i32 2, i32 0, i32 2]], align 16
@BPredPartitionCost.by0 = internal global [5 x [4 x i32]] [[4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] [i32 0, i32 2, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i32] [i32 0, i32 0, i32 2, i32 2]], align 16
@imgY_org = common global i16** null, align 8
@diff64 = internal global [64 x i32] zeroinitializer, align 16
@orig_pic = internal global [768 x i16] zeroinitializer, align 16
@chroma_shift_x = common global i32 0, align 4
@chroma_shift_y = common global i32 0, align 4
@EPZSDistortion = external global i32***, align 8
@BlockMotionSearch.tstruct1 = internal global %struct.timeb zeroinitializer, align 8
@BlockMotionSearch.tstruct2 = internal global %struct.timeb zeroinitializer, align 8
@ChromaMEEnable = external global i32, align 4
@imgUV_org = common global i16*** null, align 8
@UMHEX_blocktype = common global i32 0, align 4
@bipred_flag = common global i32 0, align 4
@test8x8transform = external global i32, align 4
@enc_picture = external global %struct.storable_picture*, align 8
@smpUMHEX_l0_cost = common global i32*** null, align 8
@smpUMHEX_l1_cost = common global i32*** null, align 8
@me_tot_time = common global i64 0, align 8
@me_time = common global i64 0, align 8
@BIDPartitionCost.bx0 = internal global [5 x [4 x i32]] [[4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] [i32 0, i32 2, i32 0, i32 0], [4 x i32] [i32 0, i32 2, i32 0, i32 2]], align 16
@BIDPartitionCost.by0 = internal global [5 x [4 x i32]] [[4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] [i32 0, i32 2, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i32] [i32 0, i32 0, i32 2, i32 2]], align 16
@diff = internal global [16 x i32] zeroinitializer, align 16
@direct_pdir = common global i8** null, align 8
@direct_ref_idx = common global i8*** null, align 8
@PartitionMotionSearch.bx0 = internal global [5 x [4 x i32]] [[4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] [i32 0, i32 2, i32 0, i32 0], [4 x i32] [i32 0, i32 2, i32 0, i32 2]], align 16
@PartitionMotionSearch.by0 = internal global [5 x [4 x i32]] [[4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] [i32 0, i32 2, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i32] [i32 0, i32 0, i32 2, i32 2]], align 16
@listXsize = external global [6 x i32], align 16
@Co_located = external global %struct.colocated_params*, align 8
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@wbp_weight = common global i32**** null, align 8
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
@shift_cr_x = common global i32 0, align 4
@shift_cr_y = common global i32 0, align 4
@img_padded_size_x = common global i32 0, align 4
@img_cr_padded_size_x = common global i32 0, align 4
@height_pad = common global i32 0, align 4
@width_pad = common global i32 0, align 4
@height_pad_cr = common global i32 0, align 4
@width_pad_cr = common global i32 0, align 4
@getNeighbour = common global void (i32, i32, i32, i32, %struct.pix_pos*)* null, align 8
@get_mb_block_pos = common global void (i32, i32*, i32*)* null, align 8
@McostState = common global i8** null, align 8
@SearchState = common global i8** null, align 8
@fastme_ref_cost = common global i32**** null, align 8
@fastme_l0_cost = common global i32*** null, align 8
@fastme_l1_cost = common global i32*** null, align 8
@fastme_l0_cost_bipred = common global i32*** null, align 8
@fastme_l1_cost_bipred = common global i32*** null, align 8
@fastme_best_cost = common global i32** null, align 8
@pred_SAD = common global i32 0, align 4
@pred_MV_ref = common global [2 x i32] zeroinitializer, align 4
@pred_MV_uplayer = common global [2 x i32] zeroinitializer, align 4
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
@smpUMHEX_flag_intra = common global i8* null, align 8
@smpUMHEX_flag_intra_SAD = common global i32 0, align 4
@smpUMHEX_pred_SAD_uplayer = common global i32 0, align 4
@smpUMHEX_pred_MV_uplayer_X = common global i16 0, align 2
@smpUMHEX_pred_MV_uplayer_Y = common global i16 0, align 2

; Function Attrs: nounwind uwtable
define void @SetMotionVectorPredictor(i16* %pmv, i8** %refPic, i16*** %tmp_mv, i16 signext %ref_frame, i32 %list, i32 %block_x, i32 %block_y, i32 %blockshape_x, i32 %blockshape_y) #0 {
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
  store i16* %pmv, i16** %pmv.addr, align 8
  store i8** %refPic, i8*** %refPic.addr, align 8
  store i16*** %tmp_mv, i16**** %tmp_mv.addr, align 8
  store i16 %ref_frame, i16* %ref_frame.addr, align 2
  store i32 %list, i32* %list.addr, align 4
  store i32 %block_x, i32* %block_x.addr, align 4
  store i32 %block_y, i32* %block_y.addr, align 4
  store i32 %blockshape_x, i32* %blockshape_x.addr, align 4
  store i32 %blockshape_y, i32* %blockshape_y.addr, align 4
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
  %4 = load i32, i32* %mb_nr, align 4
  %5 = load i32, i32* %mb_x, align 4
  %sub = sub nsw i32 %5, 1
  %6 = load i32, i32* %mb_y, align 4
  call void @getLuma4x4Neighbour(i32 %4, i32 %sub, i32 %6, %struct.pix_pos* %block_a)
  %7 = load i32, i32* %mb_nr, align 4
  %8 = load i32, i32* %mb_x, align 4
  %9 = load i32, i32* %mb_y, align 4
  %sub2 = sub nsw i32 %9, 1
  call void @getLuma4x4Neighbour(i32 %7, i32 %8, i32 %sub2, %struct.pix_pos* %block_b)
  %10 = load i32, i32* %mb_nr, align 4
  %11 = load i32, i32* %mb_x, align 4
  %12 = load i32, i32* %blockshape_x.addr, align 4
  %add = add nsw i32 %11, %12
  %13 = load i32, i32* %mb_y, align 4
  %sub3 = sub nsw i32 %13, 1
  call void @getLuma4x4Neighbour(i32 %10, i32 %add, i32 %sub3, %struct.pix_pos* %block_c)
  %14 = load i32, i32* %mb_nr, align 4
  %15 = load i32, i32* %mb_x, align 4
  %sub4 = sub nsw i32 %15, 1
  %16 = load i32, i32* %mb_y, align 4
  %sub5 = sub nsw i32 %16, 1
  call void @getLuma4x4Neighbour(i32 %14, i32 %sub4, i32 %sub5, %struct.pix_pos* %block_d)
  %17 = load i32, i32* %mb_y, align 4
  %cmp = icmp sgt i32 %17, 0
  br i1 %cmp, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %18 = load i32, i32* %mb_x, align 4
  %cmp6 = icmp slt i32 %18, 8
  br i1 %cmp6, label %if.then.7, label %if.else.18

if.then.7:                                        ; preds = %if.then
  %19 = load i32, i32* %mb_y, align 4
  %cmp8 = icmp eq i32 %19, 8
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.7
  %20 = load i32, i32* %blockshape_x.addr, align 4
  %cmp10 = icmp eq i32 %20, 16
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then.9
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  store i32 0, i32* %available, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then.9
  br label %if.end.17

if.else:                                          ; preds = %if.then.7
  %21 = load i32, i32* %mb_x, align 4
  %22 = load i32, i32* %blockshape_x.addr, align 4
  %add12 = add nsw i32 %21, %22
  %cmp13 = icmp eq i32 %add12, 8
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.else
  %available15 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  store i32 0, i32* %available15, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end
  br label %if.end.24

if.else.18:                                       ; preds = %if.then
  %23 = load i32, i32* %mb_x, align 4
  %24 = load i32, i32* %blockshape_x.addr, align 4
  %add19 = add nsw i32 %23, %24
  %cmp20 = icmp eq i32 %add19, 16
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.else.18
  %available22 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  store i32 0, i32* %available22, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.else.18
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.17
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %entry
  %available26 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  %25 = load i32, i32* %available26, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.end.25
  %26 = bitcast %struct.pix_pos* %block_c to i8*
  %27 = bitcast %struct.pix_pos* %block_d to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 24, i32 4, i1 false)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.25
  store i32 0, i32* %mvPredType, align 4
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 100
  %29 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool29 = icmp ne i32 %29, 0
  br i1 %tobool29, label %if.else.61, label %if.then.30

if.then.30:                                       ; preds = %if.end.28
  %available31 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %30 = load i32, i32* %available31, align 4
  %tobool32 = icmp ne i32 %30, 0
  br i1 %tobool32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.30
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %31 = load i32, i32* %pos_x, align 4
  %idxprom = sext i32 %31 to i64
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %32 = load i32, i32* %pos_y, align 4
  %idxprom33 = sext i32 %32 to i64
  %33 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %33, i64 %idxprom33
  %34 = load i8*, i8** %arrayidx, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %34, i64 %idxprom
  %35 = load i8, i8* %arrayidx34, align 1
  %conv = sext i8 %35 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then.30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %rFrameL, align 4
  %available35 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %36 = load i32, i32* %available35, align 4
  %tobool36 = icmp ne i32 %36, 0
  br i1 %tobool36, label %cond.true.37, label %cond.false.45

cond.true.37:                                     ; preds = %cond.end
  %pos_x38 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %37 = load i32, i32* %pos_x38, align 4
  %idxprom39 = sext i32 %37 to i64
  %pos_y40 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %38 = load i32, i32* %pos_y40, align 4
  %idxprom41 = sext i32 %38 to i64
  %39 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx42 = getelementptr inbounds i8*, i8** %39, i64 %idxprom41
  %40 = load i8*, i8** %arrayidx42, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %40, i64 %idxprom39
  %41 = load i8, i8* %arrayidx43, align 1
  %conv44 = sext i8 %41 to i32
  br label %cond.end.46

cond.false.45:                                    ; preds = %cond.end
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.45, %cond.true.37
  %cond47 = phi i32 [ %conv44, %cond.true.37 ], [ -1, %cond.false.45 ]
  store i32 %cond47, i32* %rFrameU, align 4
  %available48 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  %42 = load i32, i32* %available48, align 4
  %tobool49 = icmp ne i32 %42, 0
  br i1 %tobool49, label %cond.true.50, label %cond.false.58

cond.true.50:                                     ; preds = %cond.end.46
  %pos_x51 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %43 = load i32, i32* %pos_x51, align 4
  %idxprom52 = sext i32 %43 to i64
  %pos_y53 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %44 = load i32, i32* %pos_y53, align 4
  %idxprom54 = sext i32 %44 to i64
  %45 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx55 = getelementptr inbounds i8*, i8** %45, i64 %idxprom54
  %46 = load i8*, i8** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %46, i64 %idxprom52
  %47 = load i8, i8* %arrayidx56, align 1
  %conv57 = sext i8 %47 to i32
  br label %cond.end.59

cond.false.58:                                    ; preds = %cond.end.46
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.58, %cond.true.50
  %cond60 = phi i32 [ %conv57, %cond.true.50 ], [ -1, %cond.false.58 ]
  store i32 %cond60, i32* %rFrameUR, align 4
  br label %if.end.253

if.else.61:                                       ; preds = %if.end.28
  %48 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr62 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %48, i32 0, i32 3
  %49 = load i32, i32* %current_mb_nr62, align 4
  %idxprom63 = sext i32 %49 to i64
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 61
  %51 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx64 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %51, i64 %idxprom63
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx64, i32 0, i32 19
  %52 = load i32, i32* %mb_field, align 4
  %tobool65 = icmp ne i32 %52, 0
  br i1 %tobool65, label %if.then.66, label %if.else.159

if.then.66:                                       ; preds = %if.else.61
  %available67 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %53 = load i32, i32* %available67, align 4
  %tobool68 = icmp ne i32 %53, 0
  br i1 %tobool68, label %cond.true.69, label %cond.false.94

cond.true.69:                                     ; preds = %if.then.66
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %54 = load i32, i32* %mb_addr, align 4
  %idxprom70 = sext i32 %54 to i64
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data71 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 61
  %56 = load %struct.macroblock*, %struct.macroblock** %mb_data71, align 8
  %arrayidx72 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %56, i64 %idxprom70
  %mb_field73 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx72, i32 0, i32 19
  %57 = load i32, i32* %mb_field73, align 4
  %tobool74 = icmp ne i32 %57, 0
  br i1 %tobool74, label %cond.true.75, label %cond.false.83

cond.true.75:                                     ; preds = %cond.true.69
  %pos_x76 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %58 = load i32, i32* %pos_x76, align 4
  %idxprom77 = sext i32 %58 to i64
  %pos_y78 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %59 = load i32, i32* %pos_y78, align 4
  %idxprom79 = sext i32 %59 to i64
  %60 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx80 = getelementptr inbounds i8*, i8** %60, i64 %idxprom79
  %61 = load i8*, i8** %arrayidx80, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %61, i64 %idxprom77
  %62 = load i8, i8* %arrayidx81, align 1
  %conv82 = sext i8 %62 to i32
  br label %cond.end.92

cond.false.83:                                    ; preds = %cond.true.69
  %pos_x84 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %63 = load i32, i32* %pos_x84, align 4
  %idxprom85 = sext i32 %63 to i64
  %pos_y86 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %64 = load i32, i32* %pos_y86, align 4
  %idxprom87 = sext i32 %64 to i64
  %65 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx88 = getelementptr inbounds i8*, i8** %65, i64 %idxprom87
  %66 = load i8*, i8** %arrayidx88, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %66, i64 %idxprom85
  %67 = load i8, i8* %arrayidx89, align 1
  %conv90 = sext i8 %67 to i32
  %mul91 = mul nsw i32 %conv90, 2
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.83, %cond.true.75
  %cond93 = phi i32 [ %conv82, %cond.true.75 ], [ %mul91, %cond.false.83 ]
  br label %cond.end.95

cond.false.94:                                    ; preds = %if.then.66
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.94, %cond.end.92
  %cond96 = phi i32 [ %cond93, %cond.end.92 ], [ -1, %cond.false.94 ]
  store i32 %cond96, i32* %rFrameL, align 4
  %available97 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %68 = load i32, i32* %available97, align 4
  %tobool98 = icmp ne i32 %68, 0
  br i1 %tobool98, label %cond.true.99, label %cond.false.125

cond.true.99:                                     ; preds = %cond.end.95
  %mb_addr100 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %69 = load i32, i32* %mb_addr100, align 4
  %idxprom101 = sext i32 %69 to i64
  %70 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data102 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %70, i32 0, i32 61
  %71 = load %struct.macroblock*, %struct.macroblock** %mb_data102, align 8
  %arrayidx103 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %71, i64 %idxprom101
  %mb_field104 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx103, i32 0, i32 19
  %72 = load i32, i32* %mb_field104, align 4
  %tobool105 = icmp ne i32 %72, 0
  br i1 %tobool105, label %cond.true.106, label %cond.false.114

cond.true.106:                                    ; preds = %cond.true.99
  %pos_x107 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %73 = load i32, i32* %pos_x107, align 4
  %idxprom108 = sext i32 %73 to i64
  %pos_y109 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %74 = load i32, i32* %pos_y109, align 4
  %idxprom110 = sext i32 %74 to i64
  %75 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx111 = getelementptr inbounds i8*, i8** %75, i64 %idxprom110
  %76 = load i8*, i8** %arrayidx111, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %76, i64 %idxprom108
  %77 = load i8, i8* %arrayidx112, align 1
  %conv113 = sext i8 %77 to i32
  br label %cond.end.123

cond.false.114:                                   ; preds = %cond.true.99
  %pos_x115 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %78 = load i32, i32* %pos_x115, align 4
  %idxprom116 = sext i32 %78 to i64
  %pos_y117 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %79 = load i32, i32* %pos_y117, align 4
  %idxprom118 = sext i32 %79 to i64
  %80 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx119 = getelementptr inbounds i8*, i8** %80, i64 %idxprom118
  %81 = load i8*, i8** %arrayidx119, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %81, i64 %idxprom116
  %82 = load i8, i8* %arrayidx120, align 1
  %conv121 = sext i8 %82 to i32
  %mul122 = mul nsw i32 %conv121, 2
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.114, %cond.true.106
  %cond124 = phi i32 [ %conv113, %cond.true.106 ], [ %mul122, %cond.false.114 ]
  br label %cond.end.126

cond.false.125:                                   ; preds = %cond.end.95
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.false.125, %cond.end.123
  %cond127 = phi i32 [ %cond124, %cond.end.123 ], [ -1, %cond.false.125 ]
  store i32 %cond127, i32* %rFrameU, align 4
  %available128 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  %83 = load i32, i32* %available128, align 4
  %tobool129 = icmp ne i32 %83, 0
  br i1 %tobool129, label %cond.true.130, label %cond.false.156

cond.true.130:                                    ; preds = %cond.end.126
  %mb_addr131 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 1
  %84 = load i32, i32* %mb_addr131, align 4
  %idxprom132 = sext i32 %84 to i64
  %85 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data133 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %85, i32 0, i32 61
  %86 = load %struct.macroblock*, %struct.macroblock** %mb_data133, align 8
  %arrayidx134 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %86, i64 %idxprom132
  %mb_field135 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx134, i32 0, i32 19
  %87 = load i32, i32* %mb_field135, align 4
  %tobool136 = icmp ne i32 %87, 0
  br i1 %tobool136, label %cond.true.137, label %cond.false.145

cond.true.137:                                    ; preds = %cond.true.130
  %pos_x138 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %88 = load i32, i32* %pos_x138, align 4
  %idxprom139 = sext i32 %88 to i64
  %pos_y140 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %89 = load i32, i32* %pos_y140, align 4
  %idxprom141 = sext i32 %89 to i64
  %90 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx142 = getelementptr inbounds i8*, i8** %90, i64 %idxprom141
  %91 = load i8*, i8** %arrayidx142, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %91, i64 %idxprom139
  %92 = load i8, i8* %arrayidx143, align 1
  %conv144 = sext i8 %92 to i32
  br label %cond.end.154

cond.false.145:                                   ; preds = %cond.true.130
  %pos_x146 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %93 = load i32, i32* %pos_x146, align 4
  %idxprom147 = sext i32 %93 to i64
  %pos_y148 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %94 = load i32, i32* %pos_y148, align 4
  %idxprom149 = sext i32 %94 to i64
  %95 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx150 = getelementptr inbounds i8*, i8** %95, i64 %idxprom149
  %96 = load i8*, i8** %arrayidx150, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %96, i64 %idxprom147
  %97 = load i8, i8* %arrayidx151, align 1
  %conv152 = sext i8 %97 to i32
  %mul153 = mul nsw i32 %conv152, 2
  br label %cond.end.154

cond.end.154:                                     ; preds = %cond.false.145, %cond.true.137
  %cond155 = phi i32 [ %conv144, %cond.true.137 ], [ %mul153, %cond.false.145 ]
  br label %cond.end.157

cond.false.156:                                   ; preds = %cond.end.126
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.156, %cond.end.154
  %cond158 = phi i32 [ %cond155, %cond.end.154 ], [ -1, %cond.false.156 ]
  store i32 %cond158, i32* %rFrameUR, align 4
  br label %if.end.252

if.else.159:                                      ; preds = %if.else.61
  %available160 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %98 = load i32, i32* %available160, align 4
  %tobool161 = icmp ne i32 %98, 0
  br i1 %tobool161, label %cond.true.162, label %cond.false.187

cond.true.162:                                    ; preds = %if.else.159
  %mb_addr163 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %99 = load i32, i32* %mb_addr163, align 4
  %idxprom164 = sext i32 %99 to i64
  %100 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data165 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %100, i32 0, i32 61
  %101 = load %struct.macroblock*, %struct.macroblock** %mb_data165, align 8
  %arrayidx166 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %101, i64 %idxprom164
  %mb_field167 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx166, i32 0, i32 19
  %102 = load i32, i32* %mb_field167, align 4
  %tobool168 = icmp ne i32 %102, 0
  br i1 %tobool168, label %cond.true.169, label %cond.false.177

cond.true.169:                                    ; preds = %cond.true.162
  %pos_x170 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %103 = load i32, i32* %pos_x170, align 4
  %idxprom171 = sext i32 %103 to i64
  %pos_y172 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %104 = load i32, i32* %pos_y172, align 4
  %idxprom173 = sext i32 %104 to i64
  %105 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx174 = getelementptr inbounds i8*, i8** %105, i64 %idxprom173
  %106 = load i8*, i8** %arrayidx174, align 8
  %arrayidx175 = getelementptr inbounds i8, i8* %106, i64 %idxprom171
  %107 = load i8, i8* %arrayidx175, align 1
  %conv176 = sext i8 %107 to i32
  %shr = ashr i32 %conv176, 1
  br label %cond.end.185

cond.false.177:                                   ; preds = %cond.true.162
  %pos_x178 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %108 = load i32, i32* %pos_x178, align 4
  %idxprom179 = sext i32 %108 to i64
  %pos_y180 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %109 = load i32, i32* %pos_y180, align 4
  %idxprom181 = sext i32 %109 to i64
  %110 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx182 = getelementptr inbounds i8*, i8** %110, i64 %idxprom181
  %111 = load i8*, i8** %arrayidx182, align 8
  %arrayidx183 = getelementptr inbounds i8, i8* %111, i64 %idxprom179
  %112 = load i8, i8* %arrayidx183, align 1
  %conv184 = sext i8 %112 to i32
  br label %cond.end.185

cond.end.185:                                     ; preds = %cond.false.177, %cond.true.169
  %cond186 = phi i32 [ %shr, %cond.true.169 ], [ %conv184, %cond.false.177 ]
  br label %cond.end.188

cond.false.187:                                   ; preds = %if.else.159
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.187, %cond.end.185
  %cond189 = phi i32 [ %cond186, %cond.end.185 ], [ -1, %cond.false.187 ]
  store i32 %cond189, i32* %rFrameL, align 4
  %available190 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %113 = load i32, i32* %available190, align 4
  %tobool191 = icmp ne i32 %113, 0
  br i1 %tobool191, label %cond.true.192, label %cond.false.218

cond.true.192:                                    ; preds = %cond.end.188
  %mb_addr193 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %114 = load i32, i32* %mb_addr193, align 4
  %idxprom194 = sext i32 %114 to i64
  %115 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data195 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %115, i32 0, i32 61
  %116 = load %struct.macroblock*, %struct.macroblock** %mb_data195, align 8
  %arrayidx196 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %116, i64 %idxprom194
  %mb_field197 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx196, i32 0, i32 19
  %117 = load i32, i32* %mb_field197, align 4
  %tobool198 = icmp ne i32 %117, 0
  br i1 %tobool198, label %cond.true.199, label %cond.false.208

cond.true.199:                                    ; preds = %cond.true.192
  %pos_x200 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %118 = load i32, i32* %pos_x200, align 4
  %idxprom201 = sext i32 %118 to i64
  %pos_y202 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %119 = load i32, i32* %pos_y202, align 4
  %idxprom203 = sext i32 %119 to i64
  %120 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx204 = getelementptr inbounds i8*, i8** %120, i64 %idxprom203
  %121 = load i8*, i8** %arrayidx204, align 8
  %arrayidx205 = getelementptr inbounds i8, i8* %121, i64 %idxprom201
  %122 = load i8, i8* %arrayidx205, align 1
  %conv206 = sext i8 %122 to i32
  %shr207 = ashr i32 %conv206, 1
  br label %cond.end.216

cond.false.208:                                   ; preds = %cond.true.192
  %pos_x209 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %123 = load i32, i32* %pos_x209, align 4
  %idxprom210 = sext i32 %123 to i64
  %pos_y211 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %124 = load i32, i32* %pos_y211, align 4
  %idxprom212 = sext i32 %124 to i64
  %125 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx213 = getelementptr inbounds i8*, i8** %125, i64 %idxprom212
  %126 = load i8*, i8** %arrayidx213, align 8
  %arrayidx214 = getelementptr inbounds i8, i8* %126, i64 %idxprom210
  %127 = load i8, i8* %arrayidx214, align 1
  %conv215 = sext i8 %127 to i32
  br label %cond.end.216

cond.end.216:                                     ; preds = %cond.false.208, %cond.true.199
  %cond217 = phi i32 [ %shr207, %cond.true.199 ], [ %conv215, %cond.false.208 ]
  br label %cond.end.219

cond.false.218:                                   ; preds = %cond.end.188
  br label %cond.end.219

cond.end.219:                                     ; preds = %cond.false.218, %cond.end.216
  %cond220 = phi i32 [ %cond217, %cond.end.216 ], [ -1, %cond.false.218 ]
  store i32 %cond220, i32* %rFrameU, align 4
  %available221 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  %128 = load i32, i32* %available221, align 4
  %tobool222 = icmp ne i32 %128, 0
  br i1 %tobool222, label %cond.true.223, label %cond.false.249

cond.true.223:                                    ; preds = %cond.end.219
  %mb_addr224 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 1
  %129 = load i32, i32* %mb_addr224, align 4
  %idxprom225 = sext i32 %129 to i64
  %130 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data226 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %130, i32 0, i32 61
  %131 = load %struct.macroblock*, %struct.macroblock** %mb_data226, align 8
  %arrayidx227 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %131, i64 %idxprom225
  %mb_field228 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx227, i32 0, i32 19
  %132 = load i32, i32* %mb_field228, align 4
  %tobool229 = icmp ne i32 %132, 0
  br i1 %tobool229, label %cond.true.230, label %cond.false.239

cond.true.230:                                    ; preds = %cond.true.223
  %pos_x231 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %133 = load i32, i32* %pos_x231, align 4
  %idxprom232 = sext i32 %133 to i64
  %pos_y233 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %134 = load i32, i32* %pos_y233, align 4
  %idxprom234 = sext i32 %134 to i64
  %135 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx235 = getelementptr inbounds i8*, i8** %135, i64 %idxprom234
  %136 = load i8*, i8** %arrayidx235, align 8
  %arrayidx236 = getelementptr inbounds i8, i8* %136, i64 %idxprom232
  %137 = load i8, i8* %arrayidx236, align 1
  %conv237 = sext i8 %137 to i32
  %shr238 = ashr i32 %conv237, 1
  br label %cond.end.247

cond.false.239:                                   ; preds = %cond.true.223
  %pos_x240 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %138 = load i32, i32* %pos_x240, align 4
  %idxprom241 = sext i32 %138 to i64
  %pos_y242 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %139 = load i32, i32* %pos_y242, align 4
  %idxprom243 = sext i32 %139 to i64
  %140 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx244 = getelementptr inbounds i8*, i8** %140, i64 %idxprom243
  %141 = load i8*, i8** %arrayidx244, align 8
  %arrayidx245 = getelementptr inbounds i8, i8* %141, i64 %idxprom241
  %142 = load i8, i8* %arrayidx245, align 1
  %conv246 = sext i8 %142 to i32
  br label %cond.end.247

cond.end.247:                                     ; preds = %cond.false.239, %cond.true.230
  %cond248 = phi i32 [ %shr238, %cond.true.230 ], [ %conv246, %cond.false.239 ]
  br label %cond.end.250

cond.false.249:                                   ; preds = %cond.end.219
  br label %cond.end.250

cond.end.250:                                     ; preds = %cond.false.249, %cond.end.247
  %cond251 = phi i32 [ %cond248, %cond.end.247 ], [ -1, %cond.false.249 ]
  store i32 %cond251, i32* %rFrameUR, align 4
  br label %if.end.252

if.end.252:                                       ; preds = %cond.end.250, %cond.end.157
  br label %if.end.253

if.end.253:                                       ; preds = %if.end.252, %cond.end.59
  %143 = load i32, i32* %rFrameL, align 4
  %144 = load i16, i16* %ref_frame.addr, align 2
  %conv254 = sext i16 %144 to i32
  %cmp255 = icmp eq i32 %143, %conv254
  br i1 %cmp255, label %land.lhs.true, label %if.else.265

land.lhs.true:                                    ; preds = %if.end.253
  %145 = load i32, i32* %rFrameU, align 4
  %146 = load i16, i16* %ref_frame.addr, align 2
  %conv257 = sext i16 %146 to i32
  %cmp258 = icmp ne i32 %145, %conv257
  br i1 %cmp258, label %land.lhs.true.260, label %if.else.265

land.lhs.true.260:                                ; preds = %land.lhs.true
  %147 = load i32, i32* %rFrameUR, align 4
  %148 = load i16, i16* %ref_frame.addr, align 2
  %conv261 = sext i16 %148 to i32
  %cmp262 = icmp ne i32 %147, %conv261
  br i1 %cmp262, label %if.then.264, label %if.else.265

if.then.264:                                      ; preds = %land.lhs.true.260
  store i32 1, i32* %mvPredType, align 4
  br label %if.end.293

if.else.265:                                      ; preds = %land.lhs.true.260, %land.lhs.true, %if.end.253
  %149 = load i32, i32* %rFrameL, align 4
  %150 = load i16, i16* %ref_frame.addr, align 2
  %conv266 = sext i16 %150 to i32
  %cmp267 = icmp ne i32 %149, %conv266
  br i1 %cmp267, label %land.lhs.true.269, label %if.else.278

land.lhs.true.269:                                ; preds = %if.else.265
  %151 = load i32, i32* %rFrameU, align 4
  %152 = load i16, i16* %ref_frame.addr, align 2
  %conv270 = sext i16 %152 to i32
  %cmp271 = icmp eq i32 %151, %conv270
  br i1 %cmp271, label %land.lhs.true.273, label %if.else.278

land.lhs.true.273:                                ; preds = %land.lhs.true.269
  %153 = load i32, i32* %rFrameUR, align 4
  %154 = load i16, i16* %ref_frame.addr, align 2
  %conv274 = sext i16 %154 to i32
  %cmp275 = icmp ne i32 %153, %conv274
  br i1 %cmp275, label %if.then.277, label %if.else.278

if.then.277:                                      ; preds = %land.lhs.true.273
  store i32 2, i32* %mvPredType, align 4
  br label %if.end.292

if.else.278:                                      ; preds = %land.lhs.true.273, %land.lhs.true.269, %if.else.265
  %155 = load i32, i32* %rFrameL, align 4
  %156 = load i16, i16* %ref_frame.addr, align 2
  %conv279 = sext i16 %156 to i32
  %cmp280 = icmp ne i32 %155, %conv279
  br i1 %cmp280, label %land.lhs.true.282, label %if.end.291

land.lhs.true.282:                                ; preds = %if.else.278
  %157 = load i32, i32* %rFrameU, align 4
  %158 = load i16, i16* %ref_frame.addr, align 2
  %conv283 = sext i16 %158 to i32
  %cmp284 = icmp ne i32 %157, %conv283
  br i1 %cmp284, label %land.lhs.true.286, label %if.end.291

land.lhs.true.286:                                ; preds = %land.lhs.true.282
  %159 = load i32, i32* %rFrameUR, align 4
  %160 = load i16, i16* %ref_frame.addr, align 2
  %conv287 = sext i16 %160 to i32
  %cmp288 = icmp eq i32 %159, %conv287
  br i1 %cmp288, label %if.then.290, label %if.end.291

if.then.290:                                      ; preds = %land.lhs.true.286
  store i32 3, i32* %mvPredType, align 4
  br label %if.end.291

if.end.291:                                       ; preds = %if.then.290, %land.lhs.true.286, %land.lhs.true.282, %if.else.278
  br label %if.end.292

if.end.292:                                       ; preds = %if.end.291, %if.then.277
  br label %if.end.293

if.end.293:                                       ; preds = %if.end.292, %if.then.264
  %161 = load i32, i32* %blockshape_x.addr, align 4
  %cmp294 = icmp eq i32 %161, 8
  br i1 %cmp294, label %land.lhs.true.296, label %if.else.315

land.lhs.true.296:                                ; preds = %if.end.293
  %162 = load i32, i32* %blockshape_y.addr, align 4
  %cmp297 = icmp eq i32 %162, 16
  br i1 %cmp297, label %if.then.299, label %if.else.315

if.then.299:                                      ; preds = %land.lhs.true.296
  %163 = load i32, i32* %mb_x, align 4
  %cmp300 = icmp eq i32 %163, 0
  br i1 %cmp300, label %if.then.302, label %if.else.308

if.then.302:                                      ; preds = %if.then.299
  %164 = load i32, i32* %rFrameL, align 4
  %165 = load i16, i16* %ref_frame.addr, align 2
  %conv303 = sext i16 %165 to i32
  %cmp304 = icmp eq i32 %164, %conv303
  br i1 %cmp304, label %if.then.306, label %if.end.307

if.then.306:                                      ; preds = %if.then.302
  store i32 1, i32* %mvPredType, align 4
  br label %if.end.307

if.end.307:                                       ; preds = %if.then.306, %if.then.302
  br label %if.end.314

if.else.308:                                      ; preds = %if.then.299
  %166 = load i32, i32* %rFrameUR, align 4
  %167 = load i16, i16* %ref_frame.addr, align 2
  %conv309 = sext i16 %167 to i32
  %cmp310 = icmp eq i32 %166, %conv309
  br i1 %cmp310, label %if.then.312, label %if.end.313

if.then.312:                                      ; preds = %if.else.308
  store i32 3, i32* %mvPredType, align 4
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.312, %if.else.308
  br label %if.end.314

if.end.314:                                       ; preds = %if.end.313, %if.end.307
  br label %if.end.338

if.else.315:                                      ; preds = %land.lhs.true.296, %if.end.293
  %168 = load i32, i32* %blockshape_x.addr, align 4
  %cmp316 = icmp eq i32 %168, 16
  br i1 %cmp316, label %land.lhs.true.318, label %if.end.337

land.lhs.true.318:                                ; preds = %if.else.315
  %169 = load i32, i32* %blockshape_y.addr, align 4
  %cmp319 = icmp eq i32 %169, 8
  br i1 %cmp319, label %if.then.321, label %if.end.337

if.then.321:                                      ; preds = %land.lhs.true.318
  %170 = load i32, i32* %mb_y, align 4
  %cmp322 = icmp eq i32 %170, 0
  br i1 %cmp322, label %if.then.324, label %if.else.330

if.then.324:                                      ; preds = %if.then.321
  %171 = load i32, i32* %rFrameU, align 4
  %172 = load i16, i16* %ref_frame.addr, align 2
  %conv325 = sext i16 %172 to i32
  %cmp326 = icmp eq i32 %171, %conv325
  br i1 %cmp326, label %if.then.328, label %if.end.329

if.then.328:                                      ; preds = %if.then.324
  store i32 2, i32* %mvPredType, align 4
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.328, %if.then.324
  br label %if.end.336

if.else.330:                                      ; preds = %if.then.321
  %173 = load i32, i32* %rFrameL, align 4
  %174 = load i16, i16* %ref_frame.addr, align 2
  %conv331 = sext i16 %174 to i32
  %cmp332 = icmp eq i32 %173, %conv331
  br i1 %cmp332, label %if.then.334, label %if.end.335

if.then.334:                                      ; preds = %if.else.330
  store i32 1, i32* %mvPredType, align 4
  br label %if.end.335

if.end.335:                                       ; preds = %if.then.334, %if.else.330
  br label %if.end.336

if.end.336:                                       ; preds = %if.end.335, %if.end.329
  br label %if.end.337

if.end.337:                                       ; preds = %if.end.336, %land.lhs.true.318, %if.else.315
  br label %if.end.338

if.end.338:                                       ; preds = %if.end.337, %if.end.314
  store i32 0, i32* %hv, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.338
  %175 = load i32, i32* %hv, align 4
  %cmp339 = icmp slt i32 %175, 2
  br i1 %cmp339, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %176 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag341 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %176, i32 0, i32 100
  %177 = load i32, i32* %MbaffFrameFlag341, align 4
  %tobool342 = icmp ne i32 %177, 0
  br i1 %tobool342, label %lor.lhs.false, label %if.then.345

lor.lhs.false:                                    ; preds = %for.body
  %178 = load i32, i32* %hv, align 4
  %cmp343 = icmp eq i32 %178, 0
  br i1 %cmp343, label %if.then.345, label %if.else.391

if.then.345:                                      ; preds = %lor.lhs.false, %for.body
  %available346 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %179 = load i32, i32* %available346, align 4
  %tobool347 = icmp ne i32 %179, 0
  br i1 %tobool347, label %cond.true.348, label %cond.false.358

cond.true.348:                                    ; preds = %if.then.345
  %180 = load i32, i32* %hv, align 4
  %idxprom349 = sext i32 %180 to i64
  %pos_x350 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %181 = load i32, i32* %pos_x350, align 4
  %idxprom351 = sext i32 %181 to i64
  %pos_y352 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %182 = load i32, i32* %pos_y352, align 4
  %idxprom353 = sext i32 %182 to i64
  %183 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx354 = getelementptr inbounds i16**, i16*** %183, i64 %idxprom353
  %184 = load i16**, i16*** %arrayidx354, align 8
  %arrayidx355 = getelementptr inbounds i16*, i16** %184, i64 %idxprom351
  %185 = load i16*, i16** %arrayidx355, align 8
  %arrayidx356 = getelementptr inbounds i16, i16* %185, i64 %idxprom349
  %186 = load i16, i16* %arrayidx356, align 2
  %conv357 = sext i16 %186 to i32
  br label %cond.end.359

cond.false.358:                                   ; preds = %if.then.345
  br label %cond.end.359

cond.end.359:                                     ; preds = %cond.false.358, %cond.true.348
  %cond360 = phi i32 [ %conv357, %cond.true.348 ], [ 0, %cond.false.358 ]
  store i32 %cond360, i32* %mv_a, align 4
  %available361 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %187 = load i32, i32* %available361, align 4
  %tobool362 = icmp ne i32 %187, 0
  br i1 %tobool362, label %cond.true.363, label %cond.false.373

cond.true.363:                                    ; preds = %cond.end.359
  %188 = load i32, i32* %hv, align 4
  %idxprom364 = sext i32 %188 to i64
  %pos_x365 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %189 = load i32, i32* %pos_x365, align 4
  %idxprom366 = sext i32 %189 to i64
  %pos_y367 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %190 = load i32, i32* %pos_y367, align 4
  %idxprom368 = sext i32 %190 to i64
  %191 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx369 = getelementptr inbounds i16**, i16*** %191, i64 %idxprom368
  %192 = load i16**, i16*** %arrayidx369, align 8
  %arrayidx370 = getelementptr inbounds i16*, i16** %192, i64 %idxprom366
  %193 = load i16*, i16** %arrayidx370, align 8
  %arrayidx371 = getelementptr inbounds i16, i16* %193, i64 %idxprom364
  %194 = load i16, i16* %arrayidx371, align 2
  %conv372 = sext i16 %194 to i32
  br label %cond.end.374

cond.false.373:                                   ; preds = %cond.end.359
  br label %cond.end.374

cond.end.374:                                     ; preds = %cond.false.373, %cond.true.363
  %cond375 = phi i32 [ %conv372, %cond.true.363 ], [ 0, %cond.false.373 ]
  store i32 %cond375, i32* %mv_b, align 4
  %available376 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  %195 = load i32, i32* %available376, align 4
  %tobool377 = icmp ne i32 %195, 0
  br i1 %tobool377, label %cond.true.378, label %cond.false.388

cond.true.378:                                    ; preds = %cond.end.374
  %196 = load i32, i32* %hv, align 4
  %idxprom379 = sext i32 %196 to i64
  %pos_x380 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %197 = load i32, i32* %pos_x380, align 4
  %idxprom381 = sext i32 %197 to i64
  %pos_y382 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %198 = load i32, i32* %pos_y382, align 4
  %idxprom383 = sext i32 %198 to i64
  %199 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx384 = getelementptr inbounds i16**, i16*** %199, i64 %idxprom383
  %200 = load i16**, i16*** %arrayidx384, align 8
  %arrayidx385 = getelementptr inbounds i16*, i16** %200, i64 %idxprom381
  %201 = load i16*, i16** %arrayidx385, align 8
  %arrayidx386 = getelementptr inbounds i16, i16* %201, i64 %idxprom379
  %202 = load i16, i16* %arrayidx386, align 2
  %conv387 = sext i16 %202 to i32
  br label %cond.end.389

cond.false.388:                                   ; preds = %cond.end.374
  br label %cond.end.389

cond.end.389:                                     ; preds = %cond.false.388, %cond.true.378
  %cond390 = phi i32 [ %conv387, %cond.true.378 ], [ 0, %cond.false.388 ]
  store i32 %cond390, i32* %mv_c, align 4
  br label %if.end.610

if.else.391:                                      ; preds = %lor.lhs.false
  %203 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr392 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %203, i32 0, i32 3
  %204 = load i32, i32* %current_mb_nr392, align 4
  %idxprom393 = sext i32 %204 to i64
  %205 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data394 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %205, i32 0, i32 61
  %206 = load %struct.macroblock*, %struct.macroblock** %mb_data394, align 8
  %arrayidx395 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %206, i64 %idxprom393
  %mb_field396 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx395, i32 0, i32 19
  %207 = load i32, i32* %mb_field396, align 4
  %tobool397 = icmp ne i32 %207, 0
  br i1 %tobool397, label %if.then.398, label %if.else.503

if.then.398:                                      ; preds = %if.else.391
  %available399 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %208 = load i32, i32* %available399, align 4
  %tobool400 = icmp ne i32 %208, 0
  br i1 %tobool400, label %cond.true.401, label %cond.false.430

cond.true.401:                                    ; preds = %if.then.398
  %mb_addr402 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %209 = load i32, i32* %mb_addr402, align 4
  %idxprom403 = sext i32 %209 to i64
  %210 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data404 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %210, i32 0, i32 61
  %211 = load %struct.macroblock*, %struct.macroblock** %mb_data404, align 8
  %arrayidx405 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %211, i64 %idxprom403
  %mb_field406 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx405, i32 0, i32 19
  %212 = load i32, i32* %mb_field406, align 4
  %tobool407 = icmp ne i32 %212, 0
  br i1 %tobool407, label %cond.true.408, label %cond.false.418

cond.true.408:                                    ; preds = %cond.true.401
  %213 = load i32, i32* %hv, align 4
  %idxprom409 = sext i32 %213 to i64
  %pos_x410 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %214 = load i32, i32* %pos_x410, align 4
  %idxprom411 = sext i32 %214 to i64
  %pos_y412 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %215 = load i32, i32* %pos_y412, align 4
  %idxprom413 = sext i32 %215 to i64
  %216 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx414 = getelementptr inbounds i16**, i16*** %216, i64 %idxprom413
  %217 = load i16**, i16*** %arrayidx414, align 8
  %arrayidx415 = getelementptr inbounds i16*, i16** %217, i64 %idxprom411
  %218 = load i16*, i16** %arrayidx415, align 8
  %arrayidx416 = getelementptr inbounds i16, i16* %218, i64 %idxprom409
  %219 = load i16, i16* %arrayidx416, align 2
  %conv417 = sext i16 %219 to i32
  br label %cond.end.428

cond.false.418:                                   ; preds = %cond.true.401
  %220 = load i32, i32* %hv, align 4
  %idxprom419 = sext i32 %220 to i64
  %pos_x420 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %221 = load i32, i32* %pos_x420, align 4
  %idxprom421 = sext i32 %221 to i64
  %pos_y422 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %222 = load i32, i32* %pos_y422, align 4
  %idxprom423 = sext i32 %222 to i64
  %223 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx424 = getelementptr inbounds i16**, i16*** %223, i64 %idxprom423
  %224 = load i16**, i16*** %arrayidx424, align 8
  %arrayidx425 = getelementptr inbounds i16*, i16** %224, i64 %idxprom421
  %225 = load i16*, i16** %arrayidx425, align 8
  %arrayidx426 = getelementptr inbounds i16, i16* %225, i64 %idxprom419
  %226 = load i16, i16* %arrayidx426, align 2
  %conv427 = sext i16 %226 to i32
  %div = sdiv i32 %conv427, 2
  br label %cond.end.428

cond.end.428:                                     ; preds = %cond.false.418, %cond.true.408
  %cond429 = phi i32 [ %conv417, %cond.true.408 ], [ %div, %cond.false.418 ]
  br label %cond.end.431

cond.false.430:                                   ; preds = %if.then.398
  br label %cond.end.431

cond.end.431:                                     ; preds = %cond.false.430, %cond.end.428
  %cond432 = phi i32 [ %cond429, %cond.end.428 ], [ 0, %cond.false.430 ]
  store i32 %cond432, i32* %mv_a, align 4
  %available433 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %227 = load i32, i32* %available433, align 4
  %tobool434 = icmp ne i32 %227, 0
  br i1 %tobool434, label %cond.true.435, label %cond.false.465

cond.true.435:                                    ; preds = %cond.end.431
  %mb_addr436 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %228 = load i32, i32* %mb_addr436, align 4
  %idxprom437 = sext i32 %228 to i64
  %229 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data438 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %229, i32 0, i32 61
  %230 = load %struct.macroblock*, %struct.macroblock** %mb_data438, align 8
  %arrayidx439 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %230, i64 %idxprom437
  %mb_field440 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx439, i32 0, i32 19
  %231 = load i32, i32* %mb_field440, align 4
  %tobool441 = icmp ne i32 %231, 0
  br i1 %tobool441, label %cond.true.442, label %cond.false.452

cond.true.442:                                    ; preds = %cond.true.435
  %232 = load i32, i32* %hv, align 4
  %idxprom443 = sext i32 %232 to i64
  %pos_x444 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %233 = load i32, i32* %pos_x444, align 4
  %idxprom445 = sext i32 %233 to i64
  %pos_y446 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %234 = load i32, i32* %pos_y446, align 4
  %idxprom447 = sext i32 %234 to i64
  %235 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx448 = getelementptr inbounds i16**, i16*** %235, i64 %idxprom447
  %236 = load i16**, i16*** %arrayidx448, align 8
  %arrayidx449 = getelementptr inbounds i16*, i16** %236, i64 %idxprom445
  %237 = load i16*, i16** %arrayidx449, align 8
  %arrayidx450 = getelementptr inbounds i16, i16* %237, i64 %idxprom443
  %238 = load i16, i16* %arrayidx450, align 2
  %conv451 = sext i16 %238 to i32
  br label %cond.end.463

cond.false.452:                                   ; preds = %cond.true.435
  %239 = load i32, i32* %hv, align 4
  %idxprom453 = sext i32 %239 to i64
  %pos_x454 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %240 = load i32, i32* %pos_x454, align 4
  %idxprom455 = sext i32 %240 to i64
  %pos_y456 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %241 = load i32, i32* %pos_y456, align 4
  %idxprom457 = sext i32 %241 to i64
  %242 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx458 = getelementptr inbounds i16**, i16*** %242, i64 %idxprom457
  %243 = load i16**, i16*** %arrayidx458, align 8
  %arrayidx459 = getelementptr inbounds i16*, i16** %243, i64 %idxprom455
  %244 = load i16*, i16** %arrayidx459, align 8
  %arrayidx460 = getelementptr inbounds i16, i16* %244, i64 %idxprom453
  %245 = load i16, i16* %arrayidx460, align 2
  %conv461 = sext i16 %245 to i32
  %div462 = sdiv i32 %conv461, 2
  br label %cond.end.463

cond.end.463:                                     ; preds = %cond.false.452, %cond.true.442
  %cond464 = phi i32 [ %conv451, %cond.true.442 ], [ %div462, %cond.false.452 ]
  br label %cond.end.466

cond.false.465:                                   ; preds = %cond.end.431
  br label %cond.end.466

cond.end.466:                                     ; preds = %cond.false.465, %cond.end.463
  %cond467 = phi i32 [ %cond464, %cond.end.463 ], [ 0, %cond.false.465 ]
  store i32 %cond467, i32* %mv_b, align 4
  %available468 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  %246 = load i32, i32* %available468, align 4
  %tobool469 = icmp ne i32 %246, 0
  br i1 %tobool469, label %cond.true.470, label %cond.false.500

cond.true.470:                                    ; preds = %cond.end.466
  %mb_addr471 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 1
  %247 = load i32, i32* %mb_addr471, align 4
  %idxprom472 = sext i32 %247 to i64
  %248 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data473 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %248, i32 0, i32 61
  %249 = load %struct.macroblock*, %struct.macroblock** %mb_data473, align 8
  %arrayidx474 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %249, i64 %idxprom472
  %mb_field475 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx474, i32 0, i32 19
  %250 = load i32, i32* %mb_field475, align 4
  %tobool476 = icmp ne i32 %250, 0
  br i1 %tobool476, label %cond.true.477, label %cond.false.487

cond.true.477:                                    ; preds = %cond.true.470
  %251 = load i32, i32* %hv, align 4
  %idxprom478 = sext i32 %251 to i64
  %pos_x479 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %252 = load i32, i32* %pos_x479, align 4
  %idxprom480 = sext i32 %252 to i64
  %pos_y481 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %253 = load i32, i32* %pos_y481, align 4
  %idxprom482 = sext i32 %253 to i64
  %254 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx483 = getelementptr inbounds i16**, i16*** %254, i64 %idxprom482
  %255 = load i16**, i16*** %arrayidx483, align 8
  %arrayidx484 = getelementptr inbounds i16*, i16** %255, i64 %idxprom480
  %256 = load i16*, i16** %arrayidx484, align 8
  %arrayidx485 = getelementptr inbounds i16, i16* %256, i64 %idxprom478
  %257 = load i16, i16* %arrayidx485, align 2
  %conv486 = sext i16 %257 to i32
  br label %cond.end.498

cond.false.487:                                   ; preds = %cond.true.470
  %258 = load i32, i32* %hv, align 4
  %idxprom488 = sext i32 %258 to i64
  %pos_x489 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %259 = load i32, i32* %pos_x489, align 4
  %idxprom490 = sext i32 %259 to i64
  %pos_y491 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %260 = load i32, i32* %pos_y491, align 4
  %idxprom492 = sext i32 %260 to i64
  %261 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx493 = getelementptr inbounds i16**, i16*** %261, i64 %idxprom492
  %262 = load i16**, i16*** %arrayidx493, align 8
  %arrayidx494 = getelementptr inbounds i16*, i16** %262, i64 %idxprom490
  %263 = load i16*, i16** %arrayidx494, align 8
  %arrayidx495 = getelementptr inbounds i16, i16* %263, i64 %idxprom488
  %264 = load i16, i16* %arrayidx495, align 2
  %conv496 = sext i16 %264 to i32
  %div497 = sdiv i32 %conv496, 2
  br label %cond.end.498

cond.end.498:                                     ; preds = %cond.false.487, %cond.true.477
  %cond499 = phi i32 [ %conv486, %cond.true.477 ], [ %div497, %cond.false.487 ]
  br label %cond.end.501

cond.false.500:                                   ; preds = %cond.end.466
  br label %cond.end.501

cond.end.501:                                     ; preds = %cond.false.500, %cond.end.498
  %cond502 = phi i32 [ %cond499, %cond.end.498 ], [ 0, %cond.false.500 ]
  store i32 %cond502, i32* %mv_c, align 4
  br label %if.end.609

if.else.503:                                      ; preds = %if.else.391
  %available504 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %265 = load i32, i32* %available504, align 4
  %tobool505 = icmp ne i32 %265, 0
  br i1 %tobool505, label %cond.true.506, label %cond.false.536

cond.true.506:                                    ; preds = %if.else.503
  %mb_addr507 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %266 = load i32, i32* %mb_addr507, align 4
  %idxprom508 = sext i32 %266 to i64
  %267 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data509 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %267, i32 0, i32 61
  %268 = load %struct.macroblock*, %struct.macroblock** %mb_data509, align 8
  %arrayidx510 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %268, i64 %idxprom508
  %mb_field511 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx510, i32 0, i32 19
  %269 = load i32, i32* %mb_field511, align 4
  %tobool512 = icmp ne i32 %269, 0
  br i1 %tobool512, label %cond.true.513, label %cond.false.524

cond.true.513:                                    ; preds = %cond.true.506
  %270 = load i32, i32* %hv, align 4
  %idxprom514 = sext i32 %270 to i64
  %pos_x515 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %271 = load i32, i32* %pos_x515, align 4
  %idxprom516 = sext i32 %271 to i64
  %pos_y517 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %272 = load i32, i32* %pos_y517, align 4
  %idxprom518 = sext i32 %272 to i64
  %273 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx519 = getelementptr inbounds i16**, i16*** %273, i64 %idxprom518
  %274 = load i16**, i16*** %arrayidx519, align 8
  %arrayidx520 = getelementptr inbounds i16*, i16** %274, i64 %idxprom516
  %275 = load i16*, i16** %arrayidx520, align 8
  %arrayidx521 = getelementptr inbounds i16, i16* %275, i64 %idxprom514
  %276 = load i16, i16* %arrayidx521, align 2
  %conv522 = sext i16 %276 to i32
  %mul523 = mul nsw i32 %conv522, 2
  br label %cond.end.534

cond.false.524:                                   ; preds = %cond.true.506
  %277 = load i32, i32* %hv, align 4
  %idxprom525 = sext i32 %277 to i64
  %pos_x526 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %278 = load i32, i32* %pos_x526, align 4
  %idxprom527 = sext i32 %278 to i64
  %pos_y528 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %279 = load i32, i32* %pos_y528, align 4
  %idxprom529 = sext i32 %279 to i64
  %280 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx530 = getelementptr inbounds i16**, i16*** %280, i64 %idxprom529
  %281 = load i16**, i16*** %arrayidx530, align 8
  %arrayidx531 = getelementptr inbounds i16*, i16** %281, i64 %idxprom527
  %282 = load i16*, i16** %arrayidx531, align 8
  %arrayidx532 = getelementptr inbounds i16, i16* %282, i64 %idxprom525
  %283 = load i16, i16* %arrayidx532, align 2
  %conv533 = sext i16 %283 to i32
  br label %cond.end.534

cond.end.534:                                     ; preds = %cond.false.524, %cond.true.513
  %cond535 = phi i32 [ %mul523, %cond.true.513 ], [ %conv533, %cond.false.524 ]
  br label %cond.end.537

cond.false.536:                                   ; preds = %if.else.503
  br label %cond.end.537

cond.end.537:                                     ; preds = %cond.false.536, %cond.end.534
  %cond538 = phi i32 [ %cond535, %cond.end.534 ], [ 0, %cond.false.536 ]
  store i32 %cond538, i32* %mv_a, align 4
  %available539 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %284 = load i32, i32* %available539, align 4
  %tobool540 = icmp ne i32 %284, 0
  br i1 %tobool540, label %cond.true.541, label %cond.false.571

cond.true.541:                                    ; preds = %cond.end.537
  %mb_addr542 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %285 = load i32, i32* %mb_addr542, align 4
  %idxprom543 = sext i32 %285 to i64
  %286 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data544 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %286, i32 0, i32 61
  %287 = load %struct.macroblock*, %struct.macroblock** %mb_data544, align 8
  %arrayidx545 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %287, i64 %idxprom543
  %mb_field546 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx545, i32 0, i32 19
  %288 = load i32, i32* %mb_field546, align 4
  %tobool547 = icmp ne i32 %288, 0
  br i1 %tobool547, label %cond.true.548, label %cond.false.559

cond.true.548:                                    ; preds = %cond.true.541
  %289 = load i32, i32* %hv, align 4
  %idxprom549 = sext i32 %289 to i64
  %pos_x550 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %290 = load i32, i32* %pos_x550, align 4
  %idxprom551 = sext i32 %290 to i64
  %pos_y552 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %291 = load i32, i32* %pos_y552, align 4
  %idxprom553 = sext i32 %291 to i64
  %292 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx554 = getelementptr inbounds i16**, i16*** %292, i64 %idxprom553
  %293 = load i16**, i16*** %arrayidx554, align 8
  %arrayidx555 = getelementptr inbounds i16*, i16** %293, i64 %idxprom551
  %294 = load i16*, i16** %arrayidx555, align 8
  %arrayidx556 = getelementptr inbounds i16, i16* %294, i64 %idxprom549
  %295 = load i16, i16* %arrayidx556, align 2
  %conv557 = sext i16 %295 to i32
  %mul558 = mul nsw i32 %conv557, 2
  br label %cond.end.569

cond.false.559:                                   ; preds = %cond.true.541
  %296 = load i32, i32* %hv, align 4
  %idxprom560 = sext i32 %296 to i64
  %pos_x561 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %297 = load i32, i32* %pos_x561, align 4
  %idxprom562 = sext i32 %297 to i64
  %pos_y563 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %298 = load i32, i32* %pos_y563, align 4
  %idxprom564 = sext i32 %298 to i64
  %299 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx565 = getelementptr inbounds i16**, i16*** %299, i64 %idxprom564
  %300 = load i16**, i16*** %arrayidx565, align 8
  %arrayidx566 = getelementptr inbounds i16*, i16** %300, i64 %idxprom562
  %301 = load i16*, i16** %arrayidx566, align 8
  %arrayidx567 = getelementptr inbounds i16, i16* %301, i64 %idxprom560
  %302 = load i16, i16* %arrayidx567, align 2
  %conv568 = sext i16 %302 to i32
  br label %cond.end.569

cond.end.569:                                     ; preds = %cond.false.559, %cond.true.548
  %cond570 = phi i32 [ %mul558, %cond.true.548 ], [ %conv568, %cond.false.559 ]
  br label %cond.end.572

cond.false.571:                                   ; preds = %cond.end.537
  br label %cond.end.572

cond.end.572:                                     ; preds = %cond.false.571, %cond.end.569
  %cond573 = phi i32 [ %cond570, %cond.end.569 ], [ 0, %cond.false.571 ]
  store i32 %cond573, i32* %mv_b, align 4
  %available574 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  %303 = load i32, i32* %available574, align 4
  %tobool575 = icmp ne i32 %303, 0
  br i1 %tobool575, label %cond.true.576, label %cond.false.606

cond.true.576:                                    ; preds = %cond.end.572
  %mb_addr577 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 1
  %304 = load i32, i32* %mb_addr577, align 4
  %idxprom578 = sext i32 %304 to i64
  %305 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data579 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %305, i32 0, i32 61
  %306 = load %struct.macroblock*, %struct.macroblock** %mb_data579, align 8
  %arrayidx580 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %306, i64 %idxprom578
  %mb_field581 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx580, i32 0, i32 19
  %307 = load i32, i32* %mb_field581, align 4
  %tobool582 = icmp ne i32 %307, 0
  br i1 %tobool582, label %cond.true.583, label %cond.false.594

cond.true.583:                                    ; preds = %cond.true.576
  %308 = load i32, i32* %hv, align 4
  %idxprom584 = sext i32 %308 to i64
  %pos_x585 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %309 = load i32, i32* %pos_x585, align 4
  %idxprom586 = sext i32 %309 to i64
  %pos_y587 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %310 = load i32, i32* %pos_y587, align 4
  %idxprom588 = sext i32 %310 to i64
  %311 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx589 = getelementptr inbounds i16**, i16*** %311, i64 %idxprom588
  %312 = load i16**, i16*** %arrayidx589, align 8
  %arrayidx590 = getelementptr inbounds i16*, i16** %312, i64 %idxprom586
  %313 = load i16*, i16** %arrayidx590, align 8
  %arrayidx591 = getelementptr inbounds i16, i16* %313, i64 %idxprom584
  %314 = load i16, i16* %arrayidx591, align 2
  %conv592 = sext i16 %314 to i32
  %mul593 = mul nsw i32 %conv592, 2
  br label %cond.end.604

cond.false.594:                                   ; preds = %cond.true.576
  %315 = load i32, i32* %hv, align 4
  %idxprom595 = sext i32 %315 to i64
  %pos_x596 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %316 = load i32, i32* %pos_x596, align 4
  %idxprom597 = sext i32 %316 to i64
  %pos_y598 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %317 = load i32, i32* %pos_y598, align 4
  %idxprom599 = sext i32 %317 to i64
  %318 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx600 = getelementptr inbounds i16**, i16*** %318, i64 %idxprom599
  %319 = load i16**, i16*** %arrayidx600, align 8
  %arrayidx601 = getelementptr inbounds i16*, i16** %319, i64 %idxprom597
  %320 = load i16*, i16** %arrayidx601, align 8
  %arrayidx602 = getelementptr inbounds i16, i16* %320, i64 %idxprom595
  %321 = load i16, i16* %arrayidx602, align 2
  %conv603 = sext i16 %321 to i32
  br label %cond.end.604

cond.end.604:                                     ; preds = %cond.false.594, %cond.true.583
  %cond605 = phi i32 [ %mul593, %cond.true.583 ], [ %conv603, %cond.false.594 ]
  br label %cond.end.607

cond.false.606:                                   ; preds = %cond.end.572
  br label %cond.end.607

cond.end.607:                                     ; preds = %cond.false.606, %cond.end.604
  %cond608 = phi i32 [ %cond605, %cond.end.604 ], [ 0, %cond.false.606 ]
  store i32 %cond608, i32* %mv_c, align 4
  br label %if.end.609

if.end.609:                                       ; preds = %cond.end.607, %cond.end.501
  br label %if.end.610

if.end.610:                                       ; preds = %if.end.609, %cond.end.389
  %322 = load i32, i32* %mvPredType, align 4
  switch i32 %322, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.626
    i32 2, label %sw.bb.627
    i32 3, label %sw.bb.628
  ]

sw.bb:                                            ; preds = %if.end.610
  %available611 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %323 = load i32, i32* %available611, align 4
  %tobool612 = icmp ne i32 %323, 0
  br i1 %tobool612, label %if.else.617, label %lor.lhs.false.613

lor.lhs.false.613:                                ; preds = %sw.bb
  %available614 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  %324 = load i32, i32* %available614, align 4
  %tobool615 = icmp ne i32 %324, 0
  br i1 %tobool615, label %if.else.617, label %if.then.616

if.then.616:                                      ; preds = %lor.lhs.false.613
  %325 = load i32, i32* %mv_a, align 4
  store i32 %325, i32* %pred_vec, align 4
  br label %if.end.625

if.else.617:                                      ; preds = %lor.lhs.false.613, %sw.bb
  %326 = load i32, i32* %mv_a, align 4
  %327 = load i32, i32* %mv_b, align 4
  %add618 = add nsw i32 %326, %327
  %328 = load i32, i32* %mv_c, align 4
  %add619 = add nsw i32 %add618, %328
  %329 = load i32, i32* %mv_a, align 4
  %330 = load i32, i32* %mv_b, align 4
  %331 = load i32, i32* %mv_c, align 4
  %call = call i32 @imin(i32 %330, i32 %331)
  %call620 = call i32 @imin(i32 %329, i32 %call)
  %sub621 = sub nsw i32 %add619, %call620
  %332 = load i32, i32* %mv_a, align 4
  %333 = load i32, i32* %mv_b, align 4
  %334 = load i32, i32* %mv_c, align 4
  %call622 = call i32 @imax(i32 %333, i32 %334)
  %call623 = call i32 @imax(i32 %332, i32 %call622)
  %sub624 = sub nsw i32 %sub621, %call623
  store i32 %sub624, i32* %pred_vec, align 4
  br label %if.end.625

if.end.625:                                       ; preds = %if.else.617, %if.then.616
  br label %sw.epilog

sw.bb.626:                                        ; preds = %if.end.610
  %335 = load i32, i32* %mv_a, align 4
  store i32 %335, i32* %pred_vec, align 4
  br label %sw.epilog

sw.bb.627:                                        ; preds = %if.end.610
  %336 = load i32, i32* %mv_b, align 4
  store i32 %336, i32* %pred_vec, align 4
  br label %sw.epilog

sw.bb.628:                                        ; preds = %if.end.610
  %337 = load i32, i32* %mv_c, align 4
  store i32 %337, i32* %pred_vec, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.610
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.628, %sw.bb.627, %sw.bb.626, %if.end.625
  %338 = load i32, i32* %pred_vec, align 4
  %conv629 = trunc i32 %338 to i16
  %339 = load i32, i32* %hv, align 4
  %idxprom630 = sext i32 %339 to i64
  %340 = load i16*, i16** %pmv.addr, align 8
  %arrayidx631 = getelementptr inbounds i16, i16* %340, i64 %idxprom630
  store i16 %conv629, i16* %arrayidx631, align 2
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %341 = load i32, i32* %hv, align 4
  %inc = add nsw i32 %341, 1
  store i32 %inc, i32* %hv, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @getLuma4x4Neighbour(i32, i32, i32, %struct.pix_pos*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imin(i32 %a, i32 %b) #3 {
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
define internal i32 @imax(i32 %a, i32 %b) #3 {
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

; Function Attrs: nounwind uwtable
define void @Init_Motion_Search_Module() #0 {
entry:
  %bits = alloca i32, align 4
  %i_min = alloca i32, align 4
  %i_max = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %search_range = alloca i32, align 4
  %max_search_points = alloca i32, align 4
  %max_ref_bits = alloca i32, align 4
  %max_ref = alloca i32, align 4
  %number_of_subpel_positions = alloca i32, align 4
  %max_mv_bits = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %search_range1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 7
  %1 = load i32, i32* %search_range1, align 4
  store i32 %1, i32* %search_range, align 4
  %2 = load i32, i32* %search_range, align 4
  %mul = mul nsw i32 2, %2
  %add = add nsw i32 %mul, 1
  %3 = load i32, i32* %search_range, align 4
  %mul2 = mul nsw i32 2, %3
  %add3 = add nsw i32 %mul2, 1
  %mul4 = mul nsw i32 %add, %add3
  %call = call i32 @imax(i32 9, i32 %mul4)
  store i32 %call, i32* %max_search_points, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 8
  %5 = load i32, i32* %max_num_references, align 4
  %add5 = add nsw i32 %5, 1
  %call6 = call i32 @imax(i32 16, i32 %add5)
  %conv = sitofp i32 %call6 to double
  %call7 = call double @log(double %conv) #2
  %call8 = call double @log(double 2.000000e+00) #2
  %div = fdiv double %call7, %call8
  %add9 = fadd double %div, 1.000000e-10
  %call10 = call double @floor(double %add9) #6
  %conv11 = fptosi double %call10 to i32
  %mul12 = mul nsw i32 2, %conv11
  %add13 = add nsw i32 1, %mul12
  store i32 %add13, i32* %max_ref_bits, align 4
  %6 = load i32, i32* %max_ref_bits, align 4
  %shr = ashr i32 %6, 1
  %add14 = add nsw i32 %shr, 1
  %shl = shl i32 1, %add14
  %sub = sub nsw i32 %shl, 1
  store i32 %sub, i32* %max_ref, align 4
  %7 = load i32, i32* %search_range, align 4
  %mul15 = mul nsw i32 2, %7
  %add16 = add nsw i32 %mul15, 3
  %mul17 = mul nsw i32 4, %add16
  store i32 %mul17, i32* %number_of_subpel_positions, align 4
  %8 = load i32, i32* %number_of_subpel_positions, align 4
  %add18 = add nsw i32 %8, 1
  %conv19 = sitofp i32 %add18 to double
  %call20 = call double @log(double %conv19) #2
  %call21 = call double @log(double 2.000000e+00) #2
  %div22 = fdiv double %call20, %call21
  %add23 = fadd double %div22, 1.000000e-10
  %call24 = call double @ceil(double %add23) #6
  %conv25 = fptosi double %call24 to i32
  %mul26 = mul nsw i32 2, %conv25
  %add27 = add nsw i32 3, %mul26
  store i32 %add27, i32* %max_mv_bits, align 4
  %9 = load i32, i32* %max_mv_bits, align 4
  %shr28 = ashr i32 %9, 1
  %shl29 = shl i32 1, %shr28
  %sub30 = sub nsw i32 %shl29, 1
  store i32 %sub30, i32* @max_mvd, align 4
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 156
  %11 = load i32, i32* %max_imgpel_value, align 4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 157
  %13 = load i32, i32* %max_imgpel_value_uv, align 4
  %cmp = icmp sgt i32 %11, %13
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value32 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 156
  %15 = load i32, i32* %max_imgpel_value32, align 4
  %add33 = add nsw i32 %15, 1
  %mul34 = mul nsw i32 %add33, 64
  br label %cond.end

cond.false:                                       ; preds = %entry
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv35 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 157
  %17 = load i32, i32* %max_imgpel_value_uv35, align 4
  %add36 = add nsw i32 %17, 1
  %mul37 = mul nsw i32 %add36, 64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul34, %cond.true ], [ %mul37, %cond.false ]
  store i32 %cond, i32* @byte_abs_range, align 4
  %18 = load i32, i32* %max_search_points, align 4
  %conv38 = sext i32 %18 to i64
  %call39 = call noalias i8* @calloc(i64 %conv38, i64 2) #2
  %19 = bitcast i8* %call39 to i16*
  store i16* %19, i16** @spiral_search_x, align 8
  %cmp40 = icmp eq i16* %19, null
  br i1 %cmp40, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @no_mem_exit(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %20 = load i32, i32* %max_search_points, align 4
  %conv42 = sext i32 %20 to i64
  %call43 = call noalias i8* @calloc(i64 %conv42, i64 2) #2
  %21 = bitcast i8* %call43 to i16*
  store i16* %21, i16** @spiral_search_y, align 8
  %cmp44 = icmp eq i16* %21, null
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.end
  %22 = load i32, i32* %max_search_points, align 4
  %conv48 = sext i32 %22 to i64
  %call49 = call noalias i8* @calloc(i64 %conv48, i64 2) #2
  %23 = bitcast i8* %call49 to i16*
  store i16* %23, i16** @spiral_hpel_search_x, align 8
  %cmp50 = icmp eq i16* %23, null
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.47
  call void @no_mem_exit(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.end.47
  %24 = load i32, i32* %max_search_points, align 4
  %conv54 = sext i32 %24 to i64
  %call55 = call noalias i8* @calloc(i64 %conv54, i64 2) #2
  %25 = bitcast i8* %call55 to i16*
  store i16* %25, i16** @spiral_hpel_search_y, align 8
  %cmp56 = icmp eq i16* %25, null
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.53
  call void @no_mem_exit(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.end.53
  %26 = load i32, i32* @max_mvd, align 4
  %mul60 = mul nsw i32 2, %26
  %add61 = add nsw i32 %mul60, 1
  %conv62 = sext i32 %add61 to i64
  %call63 = call noalias i8* @calloc(i64 %conv62, i64 4) #2
  %27 = bitcast i8* %call63 to i32*
  store i32* %27, i32** @mvbits, align 8
  %cmp64 = icmp eq i32* %27, null
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.59
  call void @no_mem_exit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.end.59
  %28 = load i32, i32* %max_ref, align 4
  %conv68 = sext i32 %28 to i64
  %call69 = call noalias i8* @calloc(i64 %conv68, i64 4) #2
  %29 = bitcast i8* %call69 to i32*
  store i32* %29, i32** @refbits, align 8
  %cmp70 = icmp eq i32* %29, null
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.67
  call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %if.end.67
  %30 = load i32, i32* @byte_abs_range, align 4
  %conv74 = sext i32 %30 to i64
  %call75 = call noalias i8* @calloc(i64 %conv74, i64 4) #2
  %31 = bitcast i8* %call75 to i32*
  store i32* %31, i32** @byte_abs, align 8
  %cmp76 = icmp eq i32* %31, null
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.73
  call void @no_mem_exit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %if.end.73
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references80 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 8
  %33 = load i32, i32* %max_num_references80, align 4
  %call81 = call i32 @get_mem4Dint(i32***** @motion_cost, i32 8, i32 2, i32 %33, i32 4)
  %34 = load i32, i32* @max_mvd, align 4
  %35 = load i32*, i32** @mvbits, align 8
  %idx.ext = sext i32 %34 to i64
  %add.ptr = getelementptr inbounds i32, i32* %35, i64 %idx.ext
  store i32* %add.ptr, i32** @mvbits, align 8
  %36 = load i32, i32* @byte_abs_range, align 4
  %div82 = sdiv i32 %36, 2
  %37 = load i32*, i32** @byte_abs, align 8
  %idx.ext83 = sext i32 %div82 to i64
  %add.ptr84 = getelementptr inbounds i32, i32* %37, i64 %idx.ext83
  store i32* %add.ptr84, i32** @byte_abs, align 8
  %38 = load i32*, i32** @mvbits, align 8
  %arrayidx = getelementptr inbounds i32, i32* %38, i64 0
  store i32 1, i32* %arrayidx, align 4
  store i32 3, i32* %bits, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.98, %if.end.79
  %39 = load i32, i32* %bits, align 4
  %40 = load i32, i32* %max_mv_bits, align 4
  %cmp85 = icmp sle i32 %39, %40
  br i1 %cmp85, label %for.body, label %for.end.100

for.body:                                         ; preds = %for.cond
  %41 = load i32, i32* %bits, align 4
  %shr87 = ashr i32 %41, 1
  %shl88 = shl i32 1, %shr87
  store i32 %shl88, i32* %i_max, align 4
  %42 = load i32, i32* %i_max, align 4
  %shr89 = ashr i32 %42, 1
  store i32 %shr89, i32* %i_min, align 4
  %43 = load i32, i32* %i_min, align 4
  store i32 %43, i32* %i, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc, %for.body
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %i_max, align 4
  %cmp91 = icmp slt i32 %44, %45
  br i1 %cmp91, label %for.body.93, label %for.end

for.body.93:                                      ; preds = %for.cond.90
  %46 = load i32, i32* %bits, align 4
  %47 = load i32, i32* %i, align 4
  %idxprom = sext i32 %47 to i64
  %48 = load i32*, i32** @mvbits, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %48, i64 %idxprom
  store i32 %46, i32* %arrayidx94, align 4
  %49 = load i32, i32* %i, align 4
  %sub95 = sub nsw i32 0, %49
  %idxprom96 = sext i32 %sub95 to i64
  %50 = load i32*, i32** @mvbits, align 8
  %arrayidx97 = getelementptr inbounds i32, i32* %50, i64 %idxprom96
  store i32 %46, i32* %arrayidx97, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.93
  %51 = load i32, i32* %i, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.90

for.end:                                          ; preds = %for.cond.90
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.end
  %52 = load i32, i32* %bits, align 4
  %add99 = add nsw i32 %52, 2
  store i32 %add99, i32* %bits, align 4
  br label %for.cond

for.end.100:                                      ; preds = %for.cond
  %53 = load i32*, i32** @refbits, align 8
  %arrayidx101 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 1, i32* %arrayidx101, align 4
  store i32 3, i32* %bits, align 4
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.120, %for.end.100
  %54 = load i32, i32* %bits, align 4
  %55 = load i32, i32* %max_ref_bits, align 4
  %cmp103 = icmp sle i32 %54, %55
  br i1 %cmp103, label %for.body.105, label %for.end.122

for.body.105:                                     ; preds = %for.cond.102
  %56 = load i32, i32* %bits, align 4
  %shr106 = ashr i32 %56, 1
  %add107 = add nsw i32 %shr106, 1
  %shl108 = shl i32 1, %add107
  %sub109 = sub nsw i32 %shl108, 1
  store i32 %sub109, i32* %i_max, align 4
  %57 = load i32, i32* %i_max, align 4
  %shr110 = ashr i32 %57, 1
  store i32 %shr110, i32* %i_min, align 4
  %58 = load i32, i32* %i_min, align 4
  store i32 %58, i32* %i, align 4
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.117, %for.body.105
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* %i_max, align 4
  %cmp112 = icmp slt i32 %59, %60
  br i1 %cmp112, label %for.body.114, label %for.end.119

for.body.114:                                     ; preds = %for.cond.111
  %61 = load i32, i32* %bits, align 4
  %62 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %62 to i64
  %63 = load i32*, i32** @refbits, align 8
  %arrayidx116 = getelementptr inbounds i32, i32* %63, i64 %idxprom115
  store i32 %61, i32* %arrayidx116, align 4
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.body.114
  %64 = load i32, i32* %i, align 4
  %inc118 = add nsw i32 %64, 1
  store i32 %inc118, i32* %i, align 4
  br label %for.cond.111

for.end.119:                                      ; preds = %for.cond.111
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.end.119
  %65 = load i32, i32* %bits, align 4
  %add121 = add nsw i32 %65, 2
  store i32 %add121, i32* %bits, align 4
  br label %for.cond.102

for.end.122:                                      ; preds = %for.cond.102
  %66 = load i32*, i32** @byte_abs, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 0, i32* %arrayidx123, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.134, %for.end.122
  %67 = load i32, i32* %i, align 4
  %68 = load i32, i32* @byte_abs_range, align 4
  %div125 = sdiv i32 %68, 2
  %cmp126 = icmp slt i32 %67, %div125
  br i1 %cmp126, label %for.body.128, label %for.end.136

for.body.128:                                     ; preds = %for.cond.124
  %69 = load i32, i32* %i, align 4
  %70 = load i32, i32* %i, align 4
  %sub129 = sub nsw i32 0, %70
  %idxprom130 = sext i32 %sub129 to i64
  %71 = load i32*, i32** @byte_abs, align 8
  %arrayidx131 = getelementptr inbounds i32, i32* %71, i64 %idxprom130
  store i32 %69, i32* %arrayidx131, align 4
  %72 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %72 to i64
  %73 = load i32*, i32** @byte_abs, align 8
  %arrayidx133 = getelementptr inbounds i32, i32* %73, i64 %idxprom132
  store i32 %69, i32* %arrayidx133, align 4
  br label %for.inc.134

for.inc.134:                                      ; preds = %for.body.128
  %74 = load i32, i32* %i, align 4
  %inc135 = add nsw i32 %74, 1
  store i32 %inc135, i32* %i, align 4
  br label %for.cond.124

for.end.136:                                      ; preds = %for.cond.124
  %75 = load i16*, i16** @spiral_search_y, align 8
  %arrayidx137 = getelementptr inbounds i16, i16* %75, i64 0
  store i16 0, i16* %arrayidx137, align 2
  %76 = load i16*, i16** @spiral_search_x, align 8
  %arrayidx138 = getelementptr inbounds i16, i16* %76, i64 0
  store i16 0, i16* %arrayidx138, align 2
  %77 = load i16*, i16** @spiral_hpel_search_y, align 8
  %arrayidx139 = getelementptr inbounds i16, i16* %77, i64 0
  store i16 0, i16* %arrayidx139, align 2
  %78 = load i16*, i16** @spiral_hpel_search_x, align 8
  %arrayidx140 = getelementptr inbounds i16, i16* %78, i64 0
  store i16 0, i16* %arrayidx140, align 2
  store i32 1, i32* %k, align 4
  store i32 1, i32* %l, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.227, %for.end.136
  %79 = load i32, i32* %l, align 4
  %80 = load i32, i32* %search_range, align 4
  %call142 = call i32 @imax(i32 1, i32 %80)
  %cmp143 = icmp sle i32 %79, %call142
  br i1 %cmp143, label %for.body.145, label %for.end.229

for.body.145:                                     ; preds = %for.cond.141
  %81 = load i32, i32* %l, align 4
  %sub146 = sub nsw i32 0, %81
  %add147 = add nsw i32 %sub146, 1
  store i32 %add147, i32* %i, align 4
  br label %for.cond.148

for.cond.148:                                     ; preds = %for.inc.184, %for.body.145
  %82 = load i32, i32* %i, align 4
  %83 = load i32, i32* %l, align 4
  %cmp149 = icmp slt i32 %82, %83
  br i1 %cmp149, label %for.body.151, label %for.end.186

for.body.151:                                     ; preds = %for.cond.148
  %84 = load i32, i32* %i, align 4
  %conv152 = trunc i32 %84 to i16
  %85 = load i32, i32* %k, align 4
  %idxprom153 = sext i32 %85 to i64
  %86 = load i16*, i16** @spiral_search_x, align 8
  %arrayidx154 = getelementptr inbounds i16, i16* %86, i64 %idxprom153
  store i16 %conv152, i16* %arrayidx154, align 2
  %87 = load i32, i32* %l, align 4
  %sub155 = sub nsw i32 0, %87
  %conv156 = trunc i32 %sub155 to i16
  %88 = load i32, i32* %k, align 4
  %idxprom157 = sext i32 %88 to i64
  %89 = load i16*, i16** @spiral_search_y, align 8
  %arrayidx158 = getelementptr inbounds i16, i16* %89, i64 %idxprom157
  store i16 %conv156, i16* %arrayidx158, align 2
  %90 = load i32, i32* %i, align 4
  %shl159 = shl i32 %90, 1
  %conv160 = trunc i32 %shl159 to i16
  %91 = load i32, i32* %k, align 4
  %idxprom161 = sext i32 %91 to i64
  %92 = load i16*, i16** @spiral_hpel_search_x, align 8
  %arrayidx162 = getelementptr inbounds i16, i16* %92, i64 %idxprom161
  store i16 %conv160, i16* %arrayidx162, align 2
  %93 = load i32, i32* %l, align 4
  %sub163 = sub nsw i32 0, %93
  %shl164 = shl i32 %sub163, 1
  %conv165 = trunc i32 %shl164 to i16
  %94 = load i32, i32* %k, align 4
  %inc166 = add nsw i32 %94, 1
  store i32 %inc166, i32* %k, align 4
  %idxprom167 = sext i32 %94 to i64
  %95 = load i16*, i16** @spiral_hpel_search_y, align 8
  %arrayidx168 = getelementptr inbounds i16, i16* %95, i64 %idxprom167
  store i16 %conv165, i16* %arrayidx168, align 2
  %96 = load i32, i32* %i, align 4
  %conv169 = trunc i32 %96 to i16
  %97 = load i32, i32* %k, align 4
  %idxprom170 = sext i32 %97 to i64
  %98 = load i16*, i16** @spiral_search_x, align 8
  %arrayidx171 = getelementptr inbounds i16, i16* %98, i64 %idxprom170
  store i16 %conv169, i16* %arrayidx171, align 2
  %99 = load i32, i32* %l, align 4
  %conv172 = trunc i32 %99 to i16
  %100 = load i32, i32* %k, align 4
  %idxprom173 = sext i32 %100 to i64
  %101 = load i16*, i16** @spiral_search_y, align 8
  %arrayidx174 = getelementptr inbounds i16, i16* %101, i64 %idxprom173
  store i16 %conv172, i16* %arrayidx174, align 2
  %102 = load i32, i32* %i, align 4
  %shl175 = shl i32 %102, 1
  %conv176 = trunc i32 %shl175 to i16
  %103 = load i32, i32* %k, align 4
  %idxprom177 = sext i32 %103 to i64
  %104 = load i16*, i16** @spiral_hpel_search_x, align 8
  %arrayidx178 = getelementptr inbounds i16, i16* %104, i64 %idxprom177
  store i16 %conv176, i16* %arrayidx178, align 2
  %105 = load i32, i32* %l, align 4
  %shl179 = shl i32 %105, 1
  %conv180 = trunc i32 %shl179 to i16
  %106 = load i32, i32* %k, align 4
  %inc181 = add nsw i32 %106, 1
  store i32 %inc181, i32* %k, align 4
  %idxprom182 = sext i32 %106 to i64
  %107 = load i16*, i16** @spiral_hpel_search_y, align 8
  %arrayidx183 = getelementptr inbounds i16, i16* %107, i64 %idxprom182
  store i16 %conv180, i16* %arrayidx183, align 2
  br label %for.inc.184

for.inc.184:                                      ; preds = %for.body.151
  %108 = load i32, i32* %i, align 4
  %inc185 = add nsw i32 %108, 1
  store i32 %inc185, i32* %i, align 4
  br label %for.cond.148

for.end.186:                                      ; preds = %for.cond.148
  %109 = load i32, i32* %l, align 4
  %sub187 = sub nsw i32 0, %109
  store i32 %sub187, i32* %i, align 4
  br label %for.cond.188

for.cond.188:                                     ; preds = %for.inc.224, %for.end.186
  %110 = load i32, i32* %i, align 4
  %111 = load i32, i32* %l, align 4
  %cmp189 = icmp sle i32 %110, %111
  br i1 %cmp189, label %for.body.191, label %for.end.226

for.body.191:                                     ; preds = %for.cond.188
  %112 = load i32, i32* %l, align 4
  %sub192 = sub nsw i32 0, %112
  %conv193 = trunc i32 %sub192 to i16
  %113 = load i32, i32* %k, align 4
  %idxprom194 = sext i32 %113 to i64
  %114 = load i16*, i16** @spiral_search_x, align 8
  %arrayidx195 = getelementptr inbounds i16, i16* %114, i64 %idxprom194
  store i16 %conv193, i16* %arrayidx195, align 2
  %115 = load i32, i32* %i, align 4
  %conv196 = trunc i32 %115 to i16
  %116 = load i32, i32* %k, align 4
  %idxprom197 = sext i32 %116 to i64
  %117 = load i16*, i16** @spiral_search_y, align 8
  %arrayidx198 = getelementptr inbounds i16, i16* %117, i64 %idxprom197
  store i16 %conv196, i16* %arrayidx198, align 2
  %118 = load i32, i32* %l, align 4
  %sub199 = sub nsw i32 0, %118
  %shl200 = shl i32 %sub199, 1
  %conv201 = trunc i32 %shl200 to i16
  %119 = load i32, i32* %k, align 4
  %idxprom202 = sext i32 %119 to i64
  %120 = load i16*, i16** @spiral_hpel_search_x, align 8
  %arrayidx203 = getelementptr inbounds i16, i16* %120, i64 %idxprom202
  store i16 %conv201, i16* %arrayidx203, align 2
  %121 = load i32, i32* %i, align 4
  %shl204 = shl i32 %121, 1
  %conv205 = trunc i32 %shl204 to i16
  %122 = load i32, i32* %k, align 4
  %inc206 = add nsw i32 %122, 1
  store i32 %inc206, i32* %k, align 4
  %idxprom207 = sext i32 %122 to i64
  %123 = load i16*, i16** @spiral_hpel_search_y, align 8
  %arrayidx208 = getelementptr inbounds i16, i16* %123, i64 %idxprom207
  store i16 %conv205, i16* %arrayidx208, align 2
  %124 = load i32, i32* %l, align 4
  %conv209 = trunc i32 %124 to i16
  %125 = load i32, i32* %k, align 4
  %idxprom210 = sext i32 %125 to i64
  %126 = load i16*, i16** @spiral_search_x, align 8
  %arrayidx211 = getelementptr inbounds i16, i16* %126, i64 %idxprom210
  store i16 %conv209, i16* %arrayidx211, align 2
  %127 = load i32, i32* %i, align 4
  %conv212 = trunc i32 %127 to i16
  %128 = load i32, i32* %k, align 4
  %idxprom213 = sext i32 %128 to i64
  %129 = load i16*, i16** @spiral_search_y, align 8
  %arrayidx214 = getelementptr inbounds i16, i16* %129, i64 %idxprom213
  store i16 %conv212, i16* %arrayidx214, align 2
  %130 = load i32, i32* %l, align 4
  %shl215 = shl i32 %130, 1
  %conv216 = trunc i32 %shl215 to i16
  %131 = load i32, i32* %k, align 4
  %idxprom217 = sext i32 %131 to i64
  %132 = load i16*, i16** @spiral_hpel_search_x, align 8
  %arrayidx218 = getelementptr inbounds i16, i16* %132, i64 %idxprom217
  store i16 %conv216, i16* %arrayidx218, align 2
  %133 = load i32, i32* %i, align 4
  %shl219 = shl i32 %133, 1
  %conv220 = trunc i32 %shl219 to i16
  %134 = load i32, i32* %k, align 4
  %inc221 = add nsw i32 %134, 1
  store i32 %inc221, i32* %k, align 4
  %idxprom222 = sext i32 %134 to i64
  %135 = load i16*, i16** @spiral_hpel_search_y, align 8
  %arrayidx223 = getelementptr inbounds i16, i16* %135, i64 %idxprom222
  store i16 %conv220, i16* %arrayidx223, align 2
  br label %for.inc.224

for.inc.224:                                      ; preds = %for.body.191
  %136 = load i32, i32* %i, align 4
  %inc225 = add nsw i32 %136, 1
  store i32 %inc225, i32* %i, align 4
  br label %for.cond.188

for.end.226:                                      ; preds = %for.cond.188
  br label %for.inc.227

for.inc.227:                                      ; preds = %for.end.226
  %137 = load i32, i32* %l, align 4
  %inc228 = add nsw i32 %137, 1
  store i32 %inc228, i32* %l, align 4
  br label %for.cond.141

for.end.229:                                      ; preds = %for.cond.141
  %138 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ChromaMEEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %138, i32 0, i32 198
  %139 = load i32, i32* %ChromaMEEnable, align 4
  %cmp230 = icmp eq i32 %139, 1
  br i1 %cmp230, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.end.229
  %140 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %140, i32 0, i32 199
  %arrayidx232 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric, i32 0, i64 0
  %141 = load i32, i32* %arrayidx232, align 4
  %142 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric233 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %142, i32 0, i32 199
  %arrayidx234 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric233, i32 0, i64 1
  %143 = load i32, i32* %arrayidx234, align 4
  %cmp235 = icmp ne i32 %141, %143
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end.229
  %144 = phi i1 [ true, %for.end.229 ], [ %cmp235, %lor.rhs ]
  %cond237 = select i1 %144, i32 0, i32 1
  store i32 %cond237, i32* @start_me_refinement_hp, align 4
  %145 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ChromaMEEnable238 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %145, i32 0, i32 198
  %146 = load i32, i32* %ChromaMEEnable238, align 4
  %cmp239 = icmp eq i32 %146, 1
  br i1 %cmp239, label %lor.end.248, label %lor.rhs.241

lor.rhs.241:                                      ; preds = %lor.end
  %147 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric242 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %147, i32 0, i32 199
  %arrayidx243 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric242, i32 0, i64 1
  %148 = load i32, i32* %arrayidx243, align 4
  %149 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric244 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %149, i32 0, i32 199
  %arrayidx245 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric244, i32 0, i64 2
  %150 = load i32, i32* %arrayidx245, align 4
  %cmp246 = icmp ne i32 %148, %150
  br label %lor.end.248

lor.end.248:                                      ; preds = %lor.rhs.241, %lor.end
  %151 = phi i1 [ true, %lor.end ], [ %cmp246, %lor.rhs.241 ]
  %cond249 = select i1 %151, i32 0, i32 1
  store i32 %cond249, i32* @start_me_refinement_qp, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.250

for.cond.250:                                     ; preds = %for.inc.286, %lor.end.248
  %152 = load i32, i32* %i, align 4
  %cmp251 = icmp slt i32 %152, 3
  br i1 %cmp251, label %for.body.253, label %for.end.288

for.body.253:                                     ; preds = %for.cond.250
  %153 = load i32, i32* %i, align 4
  %idxprom254 = sext i32 %153 to i64
  %154 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric255 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %154, i32 0, i32 199
  %arrayidx256 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric255, i32 0, i64 %idxprom254
  %155 = load i32, i32* %arrayidx256, align 4
  switch i32 %155, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.266
    i32 2, label %sw.bb.276
  ]

sw.bb:                                            ; preds = %for.body.253
  %156 = load i32, i32* %i, align 4
  %idxprom257 = sext i32 %156 to i64
  %arrayidx258 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom257
  store i32 (i16*, i32, i32, i32, i32, i32)* @computeSAD, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx258, align 8
  %157 = load i32, i32* %i, align 4
  %add259 = add nsw i32 %157, 3
  %idxprom260 = sext i32 %add259 to i64
  %arrayidx261 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom260
  store i32 (i16*, i32, i32, i32, i32, i32)* @computeSADWP, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx261, align 8
  %158 = load i32, i32* %i, align 4
  %idxprom262 = sext i32 %158 to i64
  %arrayidx263 = getelementptr inbounds [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*], [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*]* @computeBiPred1, i32 0, i64 %idxprom262
  store i32 (i16*, i32, i32, i32, i32, i32, i32, i32)* @computeBiPredSAD1, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** %arrayidx263, align 8
  %159 = load i32, i32* %i, align 4
  %idxprom264 = sext i32 %159 to i64
  %arrayidx265 = getelementptr inbounds [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*], [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*]* @computeBiPred2, i32 0, i64 %idxprom264
  store i32 (i16*, i32, i32, i32, i32, i32, i32, i32)* @computeBiPredSAD2, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** %arrayidx265, align 8
  br label %sw.epilog

sw.bb.266:                                        ; preds = %for.body.253
  %160 = load i32, i32* %i, align 4
  %idxprom267 = sext i32 %160 to i64
  %arrayidx268 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom267
  store i32 (i16*, i32, i32, i32, i32, i32)* @computeSSE, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx268, align 8
  %161 = load i32, i32* %i, align 4
  %add269 = add nsw i32 %161, 3
  %idxprom270 = sext i32 %add269 to i64
  %arrayidx271 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom270
  store i32 (i16*, i32, i32, i32, i32, i32)* @computeSSEWP, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx271, align 8
  %162 = load i32, i32* %i, align 4
  %idxprom272 = sext i32 %162 to i64
  %arrayidx273 = getelementptr inbounds [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*], [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*]* @computeBiPred1, i32 0, i64 %idxprom272
  store i32 (i16*, i32, i32, i32, i32, i32, i32, i32)* @computeBiPredSSE1, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** %arrayidx273, align 8
  %163 = load i32, i32* %i, align 4
  %idxprom274 = sext i32 %163 to i64
  %arrayidx275 = getelementptr inbounds [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*], [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*]* @computeBiPred2, i32 0, i64 %idxprom274
  store i32 (i16*, i32, i32, i32, i32, i32, i32, i32)* @computeBiPredSSE2, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** %arrayidx275, align 8
  br label %sw.epilog

sw.bb.276:                                        ; preds = %for.body.253
  br label %sw.default

sw.default:                                       ; preds = %for.body.253, %sw.bb.276
  %164 = load i32, i32* %i, align 4
  %idxprom277 = sext i32 %164 to i64
  %arrayidx278 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom277
  store i32 (i16*, i32, i32, i32, i32, i32)* @computeSATD, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx278, align 8
  %165 = load i32, i32* %i, align 4
  %add279 = add nsw i32 %165, 3
  %idxprom280 = sext i32 %add279 to i64
  %arrayidx281 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom280
  store i32 (i16*, i32, i32, i32, i32, i32)* @computeSATDWP, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx281, align 8
  %166 = load i32, i32* %i, align 4
  %idxprom282 = sext i32 %166 to i64
  %arrayidx283 = getelementptr inbounds [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*], [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*]* @computeBiPred1, i32 0, i64 %idxprom282
  store i32 (i16*, i32, i32, i32, i32, i32, i32, i32)* @computeBiPredSATD1, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** %arrayidx283, align 8
  %167 = load i32, i32* %i, align 4
  %idxprom284 = sext i32 %167 to i64
  %arrayidx285 = getelementptr inbounds [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*], [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*]* @computeBiPred2, i32 0, i64 %idxprom284
  store i32 (i16*, i32, i32, i32, i32, i32, i32, i32)* @computeBiPredSATD2, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** %arrayidx285, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.266, %sw.bb
  br label %for.inc.286

for.inc.286:                                      ; preds = %sw.epilog
  %168 = load i32, i32* %i, align 4
  %inc287 = add nsw i32 %168, 1
  store i32 %inc287, i32* %i, align 4
  br label %for.cond.250

for.end.288:                                      ; preds = %for.cond.250
  store i16* (i16****, i32, i32)* @FastLine4X, i16* (i16****, i32, i32)** getelementptr inbounds ([2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_line, i32 0, i64 0), align 8
  store i16* (i16****, i32, i32)* @UMVLine4X, i16* (i16****, i32, i32)** getelementptr inbounds ([2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_line, i32 0, i64 1), align 8
  store i16* (i16****, i32, i32)* @FastLine8X_chroma, i16* (i16****, i32, i32)** getelementptr inbounds ([2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_crline, i32 0, i64 0), align 8
  store i16* (i16****, i32, i32)* @UMVLine8X_chroma, i16* (i16****, i32, i32)** getelementptr inbounds ([2 x i16* (i16****, i32, i32)*], [2 x i16* (i16****, i32, i32)*]* @get_crline, i32 0, i64 1), align 8
  %169 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %169, i32 0, i32 169
  %170 = load i32, i32* %SearchMode, align 4
  %cmp289 = icmp eq i32 %170, 0
  br i1 %cmp289, label %if.then.291, label %if.end.292

if.then.291:                                      ; preds = %for.end.288
  call void (...) @InitializeFastFullIntegerSearch()
  br label %if.end.292

if.end.292:                                       ; preds = %if.then.291, %for.end.288
  ret void
}

; Function Attrs: nounwind readnone
declare double @floor(double) #4

; Function Attrs: nounwind
declare double @log(double) #5

; Function Attrs: nounwind readnone
declare double @ceil(double) #4

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #5

declare void @no_mem_exit(i8*) #1

declare i32 @get_mem4Dint(i32*****, i32, i32, i32, i32) #1

declare i32 @computeSAD(i16*, i32, i32, i32, i32, i32) #1

declare i32 @computeSADWP(i16*, i32, i32, i32, i32, i32) #1

declare i32 @computeBiPredSAD1(i16*, i32, i32, i32, i32, i32, i32, i32) #1

declare i32 @computeBiPredSAD2(i16*, i32, i32, i32, i32, i32, i32, i32) #1

declare i32 @computeSSE(i16*, i32, i32, i32, i32, i32) #1

declare i32 @computeSSEWP(i16*, i32, i32, i32, i32, i32) #1

declare i32 @computeBiPredSSE1(i16*, i32, i32, i32, i32, i32, i32, i32) #1

declare i32 @computeBiPredSSE2(i16*, i32, i32, i32, i32, i32, i32, i32) #1

declare i32 @computeSATD(i16*, i32, i32, i32, i32, i32) #1

declare i32 @computeSATDWP(i16*, i32, i32, i32, i32, i32) #1

declare i32 @computeBiPredSATD1(i16*, i32, i32, i32, i32, i32, i32, i32) #1

declare i32 @computeBiPredSATD2(i16*, i32, i32, i32, i32, i32, i32, i32) #1

declare i16* @FastLine4X(i16****, i32, i32) #1

declare i16* @UMVLine4X(i16****, i32, i32) #1

declare i16* @FastLine8X_chroma(i16****, i32, i32) #1

declare i16* @UMVLine8X_chroma(i16****, i32, i32) #1

declare void @InitializeFastFullIntegerSearch(...) #1

; Function Attrs: nounwind uwtable
define void @Clear_Motion_Search_Module() #0 {
entry:
  %0 = load i32, i32* @max_mvd, align 4
  %1 = load i32*, i32** @mvbits, align 8
  %idx.ext = sext i32 %0 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i32, i32* %1, i64 %idx.neg
  store i32* %add.ptr, i32** @mvbits, align 8
  %2 = load i32, i32* @byte_abs_range, align 4
  %div = sdiv i32 %2, 2
  %3 = load i32*, i32** @byte_abs, align 8
  %idx.ext1 = sext i32 %div to i64
  %idx.neg2 = sub i64 0, %idx.ext1
  %add.ptr3 = getelementptr inbounds i32, i32* %3, i64 %idx.neg2
  store i32* %add.ptr3, i32** @byte_abs, align 8
  %4 = load i16*, i16** @spiral_search_x, align 8
  %5 = bitcast i16* %4 to i8*
  call void @free(i8* %5) #2
  %6 = load i16*, i16** @spiral_search_y, align 8
  %7 = bitcast i16* %6 to i8*
  call void @free(i8* %7) #2
  %8 = load i16*, i16** @spiral_hpel_search_x, align 8
  %9 = bitcast i16* %8 to i8*
  call void @free(i8* %9) #2
  %10 = load i16*, i16** @spiral_hpel_search_y, align 8
  %11 = bitcast i16* %10 to i8*
  call void @free(i8* %11) #2
  %12 = load i32*, i32** @mvbits, align 8
  %13 = bitcast i32* %12 to i8*
  call void @free(i8* %13) #2
  %14 = load i32*, i32** @refbits, align 8
  %15 = bitcast i32* %14 to i8*
  call void @free(i8* %15) #2
  %16 = load i32*, i32** @byte_abs, align 8
  %17 = bitcast i32* %16 to i8*
  call void @free(i8* %17) #2
  %18 = load i32****, i32***** @motion_cost, align 8
  call void @free_mem4Dint(i32**** %18, i32 8, i32 2)
  %19 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %19, i32 0, i32 169
  %20 = load i32, i32* %SearchMode, align 4
  %cmp = icmp eq i32 %20, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ClearFastFullIntegerSearch()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #5

declare void @free_mem4Dint(i32****, i32, i32) #1

declare void @ClearFastFullIntegerSearch() #1

; Function Attrs: nounwind uwtable
define i32 @BPredPartitionCost(i32 %blocktype, i32 %block8x8, i16 signext %ref_l0, i16 signext %ref_l1, i32 %lambda_factor, i32 %list) #0 {
entry:
  %blocktype.addr = alloca i32, align 4
  %block8x8.addr = alloca i32, align 4
  %ref_l0.addr = alloca i16, align 2
  %ref_l1.addr = alloca i16, align 2
  %lambda_factor.addr = alloca i32, align 4
  %list.addr = alloca i32, align 4
  %curr_blk = alloca [16 x [16 x i32]], align 16
  %bsx = alloca i32, align 4
  %bsy = alloca i32, align 4
  %pic_pix_x = alloca i32, align 4
  %pic_pix_y = alloca i32, align 4
  %block_x = alloca i32, align 4
  %block_y = alloca i32, align 4
  %v = alloca i32, align 4
  %h = alloca i32, align 4
  %mcost = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %mvd_bits = alloca i32, align 4
  %parttype = alloca i32, align 4
  %step_h0 = alloca i32, align 4
  %step_v0 = alloca i32, align 4
  %step_h = alloca i32, align 4
  %step_v = alloca i32, align 4
  %bxx = alloca i32, align 4
  %byy = alloca i32, align 4
  %all_mv = alloca i16******, align 8
  %p_mv = alloca i16******, align 8
  store i32 %blocktype, i32* %blocktype.addr, align 4
  store i32 %block8x8, i32* %block8x8.addr, align 4
  store i16 %ref_l0, i16* %ref_l0.addr, align 2
  store i16 %ref_l1, i16* %ref_l1.addr, align 2
  store i32 %lambda_factor, i32* %lambda_factor.addr, align 4
  store i32 %list, i32* %list.addr, align 4
  %0 = load i32, i32* %blocktype.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1, i32 0, i32 18
  %arrayidx = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 0
  %2 = load i32, i32* %arrayidx1, align 4
  %call = call i32 @imin(i32 %2, i32 8)
  store i32 %call, i32* %bsx, align 4
  %3 = load i32, i32* %blocktype.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size3 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 18
  %arrayidx4 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size3, i32 0, i64 %idxprom2
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx4, i32 0, i64 1
  %5 = load i32, i32* %arrayidx5, align 4
  %call6 = call i32 @imin(i32 %5, i32 8)
  store i32 %call6, i32* %bsy, align 4
  store i32 0, i32* %mvd_bits, align 4
  %6 = load i32, i32* %blocktype.addr, align 4
  %cmp = icmp slt i32 %6, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* %blocktype.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ 4, %cond.false ]
  store i32 %cond, i32* %parttype, align 4
  %8 = load i32, i32* %parttype, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 19
  %arrayidx8 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size, i32 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx8, i32 0, i64 0
  %10 = load i32, i32* %arrayidx9, align 4
  store i32 %10, i32* %step_h0, align 4
  %11 = load i32, i32* %parttype, align 4
  %idxprom10 = sext i32 %11 to i64
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size11 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 19
  %arrayidx12 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size11, i32 0, i64 %idxprom10
  %arrayidx13 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx12, i32 0, i64 1
  %13 = load i32, i32* %arrayidx13, align 4
  store i32 %13, i32* %step_v0, align 4
  %14 = load i32, i32* %blocktype.addr, align 4
  %idxprom14 = sext i32 %14 to i64
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size15 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 19
  %arrayidx16 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size15, i32 0, i64 %idxprom14
  %arrayidx17 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx16, i32 0, i64 0
  %16 = load i32, i32* %arrayidx17, align 4
  store i32 %16, i32* %step_h, align 4
  %17 = load i32, i32* %blocktype.addr, align 4
  %idxprom18 = sext i32 %17 to i64
  %18 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size19 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %18, i32 0, i32 19
  %arrayidx20 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size19, i32 0, i64 %idxprom18
  %arrayidx21 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx20, i32 0, i64 1
  %19 = load i32, i32* %arrayidx21, align 4
  store i32 %19, i32* %step_v, align 4
  %20 = load i32, i32* %list.addr, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %cond.end
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 81
  %22 = load i16******, i16******* %bipred_mv1, align 8
  br label %cond.end.24

cond.false.23:                                    ; preds = %cond.end
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 82
  %24 = load i16******, i16******* %bipred_mv2, align 8
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.22
  %cond25 = phi i16****** [ %22, %cond.true.22 ], [ %24, %cond.false.23 ]
  store i16****** %cond25, i16******* %all_mv, align 8
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pred_mv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 79
  %26 = load i16******, i16******* %pred_mv, align 8
  store i16****** %26, i16******* %p_mv, align 8
  %27 = load i32, i32* %block8x8.addr, align 4
  %idxprom26 = sext i32 %27 to i64
  %28 = load i32, i32* %parttype, align 4
  %idxprom27 = sext i32 %28 to i64
  %arrayidx28 = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* @BPredPartitionCost.by0, i32 0, i64 %idxprom27
  %arrayidx29 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx28, i32 0, i64 %idxprom26
  %29 = load i32, i32* %arrayidx29, align 4
  store i32 %29, i32* %v, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.150, %cond.end.24
  %30 = load i32, i32* %v, align 4
  %31 = load i32, i32* %block8x8.addr, align 4
  %idxprom30 = sext i32 %31 to i64
  %32 = load i32, i32* %parttype, align 4
  %idxprom31 = sext i32 %32 to i64
  %arrayidx32 = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* @BPredPartitionCost.by0, i32 0, i64 %idxprom31
  %arrayidx33 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx32, i32 0, i64 %idxprom30
  %33 = load i32, i32* %arrayidx33, align 4
  %34 = load i32, i32* %step_v0, align 4
  %add = add nsw i32 %33, %34
  %cmp34 = icmp slt i32 %30, %add
  br i1 %cmp34, label %for.body, label %for.end.152

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %block8x8.addr, align 4
  %idxprom35 = sext i32 %35 to i64
  %36 = load i32, i32* %parttype, align 4
  %idxprom36 = sext i32 %36 to i64
  %arrayidx37 = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* @BPredPartitionCost.bx0, i32 0, i64 %idxprom36
  %arrayidx38 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx37, i32 0, i64 %idxprom35
  %37 = load i32, i32* %arrayidx38, align 4
  store i32 %37, i32* %h, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc, %for.body
  %38 = load i32, i32* %h, align 4
  %39 = load i32, i32* %block8x8.addr, align 4
  %idxprom40 = sext i32 %39 to i64
  %40 = load i32, i32* %parttype, align 4
  %idxprom41 = sext i32 %40 to i64
  %arrayidx42 = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* @BPredPartitionCost.bx0, i32 0, i64 %idxprom41
  %arrayidx43 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx42, i32 0, i64 %idxprom40
  %41 = load i32, i32* %arrayidx43, align 4
  %42 = load i32, i32* %step_h0, align 4
  %add44 = add nsw i32 %41, %42
  %cmp45 = icmp slt i32 %38, %add44
  br i1 %cmp45, label %for.body.46, label %for.end

for.body.46:                                      ; preds = %for.cond.39
  %43 = load i32, i32* %blocktype.addr, align 4
  %idxprom47 = sext i32 %43 to i64
  %44 = load i16, i16* %ref_l0.addr, align 2
  %idxprom48 = sext i16 %44 to i64
  %45 = load i32, i32* %h, align 4
  %idxprom49 = sext i32 %45 to i64
  %46 = load i32, i32* %v, align 4
  %idxprom50 = sext i32 %46 to i64
  %47 = load i16******, i16******* %all_mv, align 8
  %arrayidx51 = getelementptr inbounds i16*****, i16****** %47, i64 %idxprom50
  %48 = load i16*****, i16****** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds i16****, i16***** %48, i64 %idxprom49
  %49 = load i16****, i16***** %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds i16***, i16**** %49, i64 0
  %50 = load i16***, i16**** %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds i16**, i16*** %50, i64 %idxprom48
  %51 = load i16**, i16*** %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds i16*, i16** %51, i64 %idxprom47
  %52 = load i16*, i16** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i16, i16* %52, i64 0
  %53 = load i16, i16* %arrayidx56, align 2
  %conv = sext i16 %53 to i32
  %54 = load i32, i32* %blocktype.addr, align 4
  %idxprom57 = sext i32 %54 to i64
  %55 = load i16, i16* %ref_l0.addr, align 2
  %idxprom58 = sext i16 %55 to i64
  %56 = load i32, i32* %h, align 4
  %idxprom59 = sext i32 %56 to i64
  %57 = load i32, i32* %v, align 4
  %idxprom60 = sext i32 %57 to i64
  %58 = load i16******, i16******* %p_mv, align 8
  %arrayidx61 = getelementptr inbounds i16*****, i16****** %58, i64 %idxprom60
  %59 = load i16*****, i16****** %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds i16****, i16***** %59, i64 %idxprom59
  %60 = load i16****, i16***** %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds i16***, i16**** %60, i64 0
  %61 = load i16***, i16**** %arrayidx63, align 8
  %arrayidx64 = getelementptr inbounds i16**, i16*** %61, i64 %idxprom58
  %62 = load i16**, i16*** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds i16*, i16** %62, i64 %idxprom57
  %63 = load i16*, i16** %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds i16, i16* %63, i64 0
  %64 = load i16, i16* %arrayidx66, align 2
  %conv67 = sext i16 %64 to i32
  %sub = sub nsw i32 %conv, %conv67
  %idxprom68 = sext i32 %sub to i64
  %65 = load i32*, i32** @mvbits, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %65, i64 %idxprom68
  %66 = load i32, i32* %arrayidx69, align 4
  %67 = load i32, i32* %mvd_bits, align 4
  %add70 = add nsw i32 %67, %66
  store i32 %add70, i32* %mvd_bits, align 4
  %68 = load i32, i32* %blocktype.addr, align 4
  %idxprom71 = sext i32 %68 to i64
  %69 = load i16, i16* %ref_l0.addr, align 2
  %idxprom72 = sext i16 %69 to i64
  %70 = load i32, i32* %h, align 4
  %idxprom73 = sext i32 %70 to i64
  %71 = load i32, i32* %v, align 4
  %idxprom74 = sext i32 %71 to i64
  %72 = load i16******, i16******* %all_mv, align 8
  %arrayidx75 = getelementptr inbounds i16*****, i16****** %72, i64 %idxprom74
  %73 = load i16*****, i16****** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds i16****, i16***** %73, i64 %idxprom73
  %74 = load i16****, i16***** %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds i16***, i16**** %74, i64 0
  %75 = load i16***, i16**** %arrayidx77, align 8
  %arrayidx78 = getelementptr inbounds i16**, i16*** %75, i64 %idxprom72
  %76 = load i16**, i16*** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds i16*, i16** %76, i64 %idxprom71
  %77 = load i16*, i16** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i16, i16* %77, i64 1
  %78 = load i16, i16* %arrayidx80, align 2
  %conv81 = sext i16 %78 to i32
  %79 = load i32, i32* %blocktype.addr, align 4
  %idxprom82 = sext i32 %79 to i64
  %80 = load i16, i16* %ref_l0.addr, align 2
  %idxprom83 = sext i16 %80 to i64
  %81 = load i32, i32* %h, align 4
  %idxprom84 = sext i32 %81 to i64
  %82 = load i32, i32* %v, align 4
  %idxprom85 = sext i32 %82 to i64
  %83 = load i16******, i16******* %p_mv, align 8
  %arrayidx86 = getelementptr inbounds i16*****, i16****** %83, i64 %idxprom85
  %84 = load i16*****, i16****** %arrayidx86, align 8
  %arrayidx87 = getelementptr inbounds i16****, i16***** %84, i64 %idxprom84
  %85 = load i16****, i16***** %arrayidx87, align 8
  %arrayidx88 = getelementptr inbounds i16***, i16**** %85, i64 0
  %86 = load i16***, i16**** %arrayidx88, align 8
  %arrayidx89 = getelementptr inbounds i16**, i16*** %86, i64 %idxprom83
  %87 = load i16**, i16*** %arrayidx89, align 8
  %arrayidx90 = getelementptr inbounds i16*, i16** %87, i64 %idxprom82
  %88 = load i16*, i16** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds i16, i16* %88, i64 1
  %89 = load i16, i16* %arrayidx91, align 2
  %conv92 = sext i16 %89 to i32
  %sub93 = sub nsw i32 %conv81, %conv92
  %idxprom94 = sext i32 %sub93 to i64
  %90 = load i32*, i32** @mvbits, align 8
  %arrayidx95 = getelementptr inbounds i32, i32* %90, i64 %idxprom94
  %91 = load i32, i32* %arrayidx95, align 4
  %92 = load i32, i32* %mvd_bits, align 4
  %add96 = add nsw i32 %92, %91
  store i32 %add96, i32* %mvd_bits, align 4
  %93 = load i32, i32* %blocktype.addr, align 4
  %idxprom97 = sext i32 %93 to i64
  %94 = load i16, i16* %ref_l1.addr, align 2
  %idxprom98 = sext i16 %94 to i64
  %95 = load i32, i32* %h, align 4
  %idxprom99 = sext i32 %95 to i64
  %96 = load i32, i32* %v, align 4
  %idxprom100 = sext i32 %96 to i64
  %97 = load i16******, i16******* %all_mv, align 8
  %arrayidx101 = getelementptr inbounds i16*****, i16****** %97, i64 %idxprom100
  %98 = load i16*****, i16****** %arrayidx101, align 8
  %arrayidx102 = getelementptr inbounds i16****, i16***** %98, i64 %idxprom99
  %99 = load i16****, i16***** %arrayidx102, align 8
  %arrayidx103 = getelementptr inbounds i16***, i16**** %99, i64 1
  %100 = load i16***, i16**** %arrayidx103, align 8
  %arrayidx104 = getelementptr inbounds i16**, i16*** %100, i64 %idxprom98
  %101 = load i16**, i16*** %arrayidx104, align 8
  %arrayidx105 = getelementptr inbounds i16*, i16** %101, i64 %idxprom97
  %102 = load i16*, i16** %arrayidx105, align 8
  %arrayidx106 = getelementptr inbounds i16, i16* %102, i64 0
  %103 = load i16, i16* %arrayidx106, align 2
  %conv107 = sext i16 %103 to i32
  %104 = load i32, i32* %blocktype.addr, align 4
  %idxprom108 = sext i32 %104 to i64
  %105 = load i16, i16* %ref_l1.addr, align 2
  %idxprom109 = sext i16 %105 to i64
  %106 = load i32, i32* %h, align 4
  %idxprom110 = sext i32 %106 to i64
  %107 = load i32, i32* %v, align 4
  %idxprom111 = sext i32 %107 to i64
  %108 = load i16******, i16******* %p_mv, align 8
  %arrayidx112 = getelementptr inbounds i16*****, i16****** %108, i64 %idxprom111
  %109 = load i16*****, i16****** %arrayidx112, align 8
  %arrayidx113 = getelementptr inbounds i16****, i16***** %109, i64 %idxprom110
  %110 = load i16****, i16***** %arrayidx113, align 8
  %arrayidx114 = getelementptr inbounds i16***, i16**** %110, i64 1
  %111 = load i16***, i16**** %arrayidx114, align 8
  %arrayidx115 = getelementptr inbounds i16**, i16*** %111, i64 %idxprom109
  %112 = load i16**, i16*** %arrayidx115, align 8
  %arrayidx116 = getelementptr inbounds i16*, i16** %112, i64 %idxprom108
  %113 = load i16*, i16** %arrayidx116, align 8
  %arrayidx117 = getelementptr inbounds i16, i16* %113, i64 0
  %114 = load i16, i16* %arrayidx117, align 2
  %conv118 = sext i16 %114 to i32
  %sub119 = sub nsw i32 %conv107, %conv118
  %idxprom120 = sext i32 %sub119 to i64
  %115 = load i32*, i32** @mvbits, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %115, i64 %idxprom120
  %116 = load i32, i32* %arrayidx121, align 4
  %117 = load i32, i32* %mvd_bits, align 4
  %add122 = add nsw i32 %117, %116
  store i32 %add122, i32* %mvd_bits, align 4
  %118 = load i32, i32* %blocktype.addr, align 4
  %idxprom123 = sext i32 %118 to i64
  %119 = load i16, i16* %ref_l1.addr, align 2
  %idxprom124 = sext i16 %119 to i64
  %120 = load i32, i32* %h, align 4
  %idxprom125 = sext i32 %120 to i64
  %121 = load i32, i32* %v, align 4
  %idxprom126 = sext i32 %121 to i64
  %122 = load i16******, i16******* %all_mv, align 8
  %arrayidx127 = getelementptr inbounds i16*****, i16****** %122, i64 %idxprom126
  %123 = load i16*****, i16****** %arrayidx127, align 8
  %arrayidx128 = getelementptr inbounds i16****, i16***** %123, i64 %idxprom125
  %124 = load i16****, i16***** %arrayidx128, align 8
  %arrayidx129 = getelementptr inbounds i16***, i16**** %124, i64 1
  %125 = load i16***, i16**** %arrayidx129, align 8
  %arrayidx130 = getelementptr inbounds i16**, i16*** %125, i64 %idxprom124
  %126 = load i16**, i16*** %arrayidx130, align 8
  %arrayidx131 = getelementptr inbounds i16*, i16** %126, i64 %idxprom123
  %127 = load i16*, i16** %arrayidx131, align 8
  %arrayidx132 = getelementptr inbounds i16, i16* %127, i64 1
  %128 = load i16, i16* %arrayidx132, align 2
  %conv133 = sext i16 %128 to i32
  %129 = load i32, i32* %blocktype.addr, align 4
  %idxprom134 = sext i32 %129 to i64
  %130 = load i16, i16* %ref_l1.addr, align 2
  %idxprom135 = sext i16 %130 to i64
  %131 = load i32, i32* %h, align 4
  %idxprom136 = sext i32 %131 to i64
  %132 = load i32, i32* %v, align 4
  %idxprom137 = sext i32 %132 to i64
  %133 = load i16******, i16******* %p_mv, align 8
  %arrayidx138 = getelementptr inbounds i16*****, i16****** %133, i64 %idxprom137
  %134 = load i16*****, i16****** %arrayidx138, align 8
  %arrayidx139 = getelementptr inbounds i16****, i16***** %134, i64 %idxprom136
  %135 = load i16****, i16***** %arrayidx139, align 8
  %arrayidx140 = getelementptr inbounds i16***, i16**** %135, i64 1
  %136 = load i16***, i16**** %arrayidx140, align 8
  %arrayidx141 = getelementptr inbounds i16**, i16*** %136, i64 %idxprom135
  %137 = load i16**, i16*** %arrayidx141, align 8
  %arrayidx142 = getelementptr inbounds i16*, i16** %137, i64 %idxprom134
  %138 = load i16*, i16** %arrayidx142, align 8
  %arrayidx143 = getelementptr inbounds i16, i16* %138, i64 1
  %139 = load i16, i16* %arrayidx143, align 2
  %conv144 = sext i16 %139 to i32
  %sub145 = sub nsw i32 %conv133, %conv144
  %idxprom146 = sext i32 %sub145 to i64
  %140 = load i32*, i32** @mvbits, align 8
  %arrayidx147 = getelementptr inbounds i32, i32* %140, i64 %idxprom146
  %141 = load i32, i32* %arrayidx147, align 4
  %142 = load i32, i32* %mvd_bits, align 4
  %add148 = add nsw i32 %142, %141
  store i32 %add148, i32* %mvd_bits, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.46
  %143 = load i32, i32* %step_h, align 4
  %144 = load i32, i32* %h, align 4
  %add149 = add nsw i32 %144, %143
  store i32 %add149, i32* %h, align 4
  br label %for.cond.39

for.end:                                          ; preds = %for.cond.39
  br label %for.inc.150

for.inc.150:                                      ; preds = %for.end
  %145 = load i32, i32* %step_v, align 4
  %146 = load i32, i32* %v, align 4
  %add151 = add nsw i32 %146, %145
  store i32 %add151, i32* %v, align 4
  br label %for.cond

for.end.152:                                      ; preds = %for.cond
  %147 = load i32, i32* %lambda_factor.addr, align 4
  %148 = load i32, i32* %mvd_bits, align 4
  %mul = mul nsw i32 %147, %148
  %shr = ashr i32 %mul, 16
  store i32 %shr, i32* %mcost, align 4
  store i32 0, i32* %byy, align 4
  %149 = load i32, i32* %block8x8.addr, align 4
  %idxprom153 = sext i32 %149 to i64
  %150 = load i32, i32* %parttype, align 4
  %idxprom154 = sext i32 %150 to i64
  %arrayidx155 = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* @BPredPartitionCost.by0, i32 0, i64 %idxprom154
  %arrayidx156 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx155, i32 0, i64 %idxprom153
  %151 = load i32, i32* %arrayidx156, align 4
  store i32 %151, i32* %v, align 4
  br label %for.cond.157

for.cond.157:                                     ; preds = %for.inc.228, %for.end.152
  %152 = load i32, i32* %v, align 4
  %153 = load i32, i32* %block8x8.addr, align 4
  %idxprom158 = sext i32 %153 to i64
  %154 = load i32, i32* %parttype, align 4
  %idxprom159 = sext i32 %154 to i64
  %arrayidx160 = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* @BPredPartitionCost.by0, i32 0, i64 %idxprom159
  %arrayidx161 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx160, i32 0, i64 %idxprom158
  %155 = load i32, i32* %arrayidx161, align 4
  %156 = load i32, i32* %step_v0, align 4
  %add162 = add nsw i32 %155, %156
  %cmp163 = icmp slt i32 %152, %add162
  br i1 %cmp163, label %for.body.165, label %for.end.231

for.body.165:                                     ; preds = %for.cond.157
  %157 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %157, i32 0, i32 44
  %158 = load i32, i32* %opix_y, align 4
  %159 = load i32, i32* %v, align 4
  %shl = shl i32 %159, 2
  store i32 %shl, i32* %block_y, align 4
  %add166 = add nsw i32 %158, %shl
  store i32 %add166, i32* %pic_pix_y, align 4
  store i32 0, i32* %bxx, align 4
  %160 = load i32, i32* %block8x8.addr, align 4
  %idxprom167 = sext i32 %160 to i64
  %161 = load i32, i32* %parttype, align 4
  %idxprom168 = sext i32 %161 to i64
  %arrayidx169 = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* @BPredPartitionCost.bx0, i32 0, i64 %idxprom168
  %arrayidx170 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx169, i32 0, i64 %idxprom167
  %162 = load i32, i32* %arrayidx170, align 4
  store i32 %162, i32* %h, align 4
  br label %for.cond.171

for.cond.171:                                     ; preds = %for.inc.224, %for.body.165
  %163 = load i32, i32* %h, align 4
  %164 = load i32, i32* %block8x8.addr, align 4
  %idxprom172 = sext i32 %164 to i64
  %165 = load i32, i32* %parttype, align 4
  %idxprom173 = sext i32 %165 to i64
  %arrayidx174 = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* @BPredPartitionCost.bx0, i32 0, i64 %idxprom173
  %arrayidx175 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx174, i32 0, i64 %idxprom172
  %166 = load i32, i32* %arrayidx175, align 4
  %167 = load i32, i32* %step_h0, align 4
  %add176 = add nsw i32 %166, %167
  %cmp177 = icmp slt i32 %163, %add176
  br i1 %cmp177, label %for.body.179, label %for.end.227

for.body.179:                                     ; preds = %for.cond.171
  %168 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %168, i32 0, i32 43
  %169 = load i32, i32* %opix_x, align 4
  %170 = load i32, i32* %h, align 4
  %shl180 = shl i32 %170, 2
  store i32 %shl180, i32* %block_x, align 4
  %add181 = add nsw i32 %169, %shl180
  store i32 %add181, i32* %pic_pix_x, align 4
  %171 = load i32, i32* %block_x, align 4
  %172 = load i32, i32* %block_y, align 4
  %173 = load i32, i32* %blocktype.addr, align 4
  %174 = load i32, i32* %blocktype.addr, align 4
  %175 = load i16, i16* %ref_l0.addr, align 2
  %176 = load i16, i16* %ref_l1.addr, align 2
  %177 = load i32, i32* %list.addr, align 4
  call void @LumaPrediction4x4Bi(i32 %171, i32 %172, i32 %173, i32 %174, i16 signext %175, i16 signext %176, i32 %177)
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.182

for.cond.182:                                     ; preds = %for.inc.216, %for.body.179
  %178 = load i32, i32* %j, align 4
  %cmp183 = icmp slt i32 %178, 4
  br i1 %cmp183, label %for.body.185, label %for.end.218

for.body.185:                                     ; preds = %for.cond.182
  store i32 0, i32* %i, align 4
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.213, %for.body.185
  %179 = load i32, i32* %i, align 4
  %cmp187 = icmp slt i32 %179, 4
  br i1 %cmp187, label %for.body.189, label %for.end.215

for.body.189:                                     ; preds = %for.cond.186
  %180 = load i32, i32* %pic_pix_x, align 4
  %181 = load i32, i32* %i, align 4
  %add190 = add nsw i32 %180, %181
  %idxprom191 = sext i32 %add190 to i64
  %182 = load i32, i32* %pic_pix_y, align 4
  %183 = load i32, i32* %j, align 4
  %add192 = add nsw i32 %182, %183
  %idxprom193 = sext i32 %add192 to i64
  %184 = load i16**, i16*** @imgY_org, align 8
  %arrayidx194 = getelementptr inbounds i16*, i16** %184, i64 %idxprom193
  %185 = load i16*, i16** %arrayidx194, align 8
  %arrayidx195 = getelementptr inbounds i16, i16* %185, i64 %idxprom191
  %186 = load i16, i16* %arrayidx195, align 2
  %conv196 = zext i16 %186 to i32
  %187 = load i32, i32* %i, align 4
  %188 = load i32, i32* %block_x, align 4
  %add197 = add nsw i32 %187, %188
  %idxprom198 = sext i32 %add197 to i64
  %189 = load i32, i32* %j, align 4
  %190 = load i32, i32* %block_y, align 4
  %add199 = add nsw i32 %189, %190
  %idxprom200 = sext i32 %add199 to i64
  %191 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %191, i32 0, i32 51
  %arrayidx201 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i64 %idxprom200
  %arrayidx202 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx201, i32 0, i64 %idxprom198
  %192 = load i16, i16* %arrayidx202, align 2
  %conv203 = zext i16 %192 to i32
  %sub204 = sub nsw i32 %conv196, %conv203
  %193 = load i32, i32* %bxx, align 4
  %194 = load i32, i32* %i, align 4
  %add205 = add nsw i32 %193, %194
  %idxprom206 = sext i32 %add205 to i64
  %195 = load i32, i32* %byy, align 4
  %196 = load i32, i32* %j, align 4
  %add207 = add nsw i32 %195, %196
  %idxprom208 = sext i32 %add207 to i64
  %arrayidx209 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %curr_blk, i32 0, i64 %idxprom208
  %arrayidx210 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx209, i32 0, i64 %idxprom206
  store i32 %sub204, i32* %arrayidx210, align 4
  %197 = load i32, i32* %k, align 4
  %inc = add nsw i32 %197, 1
  store i32 %inc, i32* %k, align 4
  %idxprom211 = sext i32 %197 to i64
  %arrayidx212 = getelementptr inbounds [64 x i32], [64 x i32]* @diff64, i32 0, i64 %idxprom211
  store i32 %sub204, i32* %arrayidx212, align 4
  br label %for.inc.213

for.inc.213:                                      ; preds = %for.body.189
  %198 = load i32, i32* %i, align 4
  %inc214 = add nsw i32 %198, 1
  store i32 %inc214, i32* %i, align 4
  br label %for.cond.186

for.end.215:                                      ; preds = %for.cond.186
  br label %for.inc.216

for.inc.216:                                      ; preds = %for.end.215
  %199 = load i32, i32* %j, align 4
  %inc217 = add nsw i32 %199, 1
  store i32 %inc217, i32* %j, align 4
  br label %for.cond.182

for.end.218:                                      ; preds = %for.cond.182
  %200 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %200, i32 0, i32 153
  %201 = load i32, i32* %Transform8x8Mode, align 4
  %tobool219 = icmp ne i32 %201, 0
  br i1 %tobool219, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.end.218
  %202 = load i32, i32* %blocktype.addr, align 4
  %cmp220 = icmp sgt i32 %202, 4
  br i1 %cmp220, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.end.218
  %call222 = call i32 @distortion4x4(i32* getelementptr inbounds ([64 x i32], [64 x i32]* @diff64, i32 0, i32 0))
  %203 = load i32, i32* %mcost, align 4
  %add223 = add nsw i32 %203, %call222
  store i32 %add223, i32* %mcost, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc.224

for.inc.224:                                      ; preds = %if.end
  %204 = load i32, i32* %bxx, align 4
  %add225 = add nsw i32 %204, 4
  store i32 %add225, i32* %bxx, align 4
  %205 = load i32, i32* %h, align 4
  %inc226 = add nsw i32 %205, 1
  store i32 %inc226, i32* %h, align 4
  br label %for.cond.171

for.end.227:                                      ; preds = %for.cond.171
  br label %for.inc.228

for.inc.228:                                      ; preds = %for.end.227
  %206 = load i32, i32* %byy, align 4
  %add229 = add nsw i32 %206, 4
  store i32 %add229, i32* %byy, align 4
  %207 = load i32, i32* %v, align 4
  %inc230 = add nsw i32 %207, 1
  store i32 %inc230, i32* %v, align 4
  br label %for.cond.157

for.end.231:                                      ; preds = %for.cond.157
  %208 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode232 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %208, i32 0, i32 153
  %209 = load i32, i32* %Transform8x8Mode232, align 4
  %tobool233 = icmp ne i32 %209, 0
  br i1 %tobool233, label %land.lhs.true, label %if.end.276

land.lhs.true:                                    ; preds = %for.end.231
  %210 = load i32, i32* %blocktype.addr, align 4
  %cmp234 = icmp sle i32 %210, 4
  br i1 %cmp234, label %if.then.236, label %if.end.276

if.then.236:                                      ; preds = %land.lhs.true
  store i32 0, i32* %byy, align 4
  br label %for.cond.237

for.cond.237:                                     ; preds = %for.inc.273, %if.then.236
  %211 = load i32, i32* %byy, align 4
  %212 = load i32, i32* %parttype, align 4
  %idxprom238 = sext i32 %212 to i64
  %213 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size239 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %213, i32 0, i32 18
  %arrayidx240 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size239, i32 0, i64 %idxprom238
  %arrayidx241 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx240, i32 0, i64 1
  %214 = load i32, i32* %arrayidx241, align 4
  %cmp242 = icmp slt i32 %211, %214
  br i1 %cmp242, label %for.body.244, label %for.end.275

for.body.244:                                     ; preds = %for.cond.237
  store i32 0, i32* %bxx, align 4
  br label %for.cond.245

for.cond.245:                                     ; preds = %for.inc.270, %for.body.244
  %215 = load i32, i32* %bxx, align 4
  %216 = load i32, i32* %parttype, align 4
  %idxprom246 = sext i32 %216 to i64
  %217 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size247 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %217, i32 0, i32 18
  %arrayidx248 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size247, i32 0, i64 %idxprom246
  %arrayidx249 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx248, i32 0, i64 0
  %218 = load i32, i32* %arrayidx249, align 4
  %cmp250 = icmp slt i32 %215, %218
  br i1 %cmp250, label %for.body.252, label %for.end.272

for.body.252:                                     ; preds = %for.cond.245
  store i32 0, i32* %k, align 4
  %219 = load i32, i32* %byy, align 4
  store i32 %219, i32* %j, align 4
  br label %for.cond.253

for.cond.253:                                     ; preds = %for.inc.264, %for.body.252
  %220 = load i32, i32* %j, align 4
  %221 = load i32, i32* %byy, align 4
  %add254 = add nsw i32 %221, 8
  %cmp255 = icmp slt i32 %220, %add254
  br i1 %cmp255, label %for.body.257, label %for.end.267

for.body.257:                                     ; preds = %for.cond.253
  %222 = load i32, i32* %k, align 4
  %idxprom258 = sext i32 %222 to i64
  %arrayidx259 = getelementptr inbounds [64 x i32], [64 x i32]* @diff64, i32 0, i64 %idxprom258
  %223 = bitcast i32* %arrayidx259 to i8*
  %224 = load i32, i32* %bxx, align 4
  %idxprom260 = sext i32 %224 to i64
  %225 = load i32, i32* %j, align 4
  %idxprom261 = sext i32 %225 to i64
  %arrayidx262 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %curr_blk, i32 0, i64 %idxprom261
  %arrayidx263 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx262, i32 0, i64 %idxprom260
  %226 = bitcast i32* %arrayidx263 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %223, i8* %226, i64 32, i32 4, i1 false)
  br label %for.inc.264

for.inc.264:                                      ; preds = %for.body.257
  %227 = load i32, i32* %j, align 4
  %inc265 = add nsw i32 %227, 1
  store i32 %inc265, i32* %j, align 4
  %228 = load i32, i32* %k, align 4
  %add266 = add nsw i32 %228, 8
  store i32 %add266, i32* %k, align 4
  br label %for.cond.253

for.end.267:                                      ; preds = %for.cond.253
  %call268 = call i32 @distortion8x8(i32* getelementptr inbounds ([64 x i32], [64 x i32]* @diff64, i32 0, i32 0))
  %229 = load i32, i32* %mcost, align 4
  %add269 = add nsw i32 %229, %call268
  store i32 %add269, i32* %mcost, align 4
  br label %for.inc.270

for.inc.270:                                      ; preds = %for.end.267
  %230 = load i32, i32* %bsx, align 4
  %231 = load i32, i32* %bxx, align 4
  %add271 = add nsw i32 %231, %230
  store i32 %add271, i32* %bxx, align 4
  br label %for.cond.245

for.end.272:                                      ; preds = %for.cond.245
  br label %for.inc.273

for.inc.273:                                      ; preds = %for.end.272
  %232 = load i32, i32* %bsy, align 4
  %233 = load i32, i32* %byy, align 4
  %add274 = add nsw i32 %233, %232
  store i32 %add274, i32* %byy, align 4
  br label %for.cond.237

for.end.275:                                      ; preds = %for.cond.237
  br label %if.end.276

if.end.276:                                       ; preds = %for.end.275, %land.lhs.true, %for.end.231
  %234 = load i32, i32* %mcost, align 4
  ret i32 %234
}

declare void @LumaPrediction4x4Bi(i32, i32, i32, i32, i16 signext, i16 signext, i32) #1

declare i32 @distortion4x4(i32*) #1

declare i32 @distortion8x8(i32*) #1

; Function Attrs: nounwind uwtable
define i32 @BlockMotionSearch(i16 signext %ref, i32 %list, i32 %mb_x, i32 %mb_y, i32 %blocktype, i32 %search_range, i32* %lambda_factor) #0 {
entry:
  %ref.addr = alloca i16, align 2
  %list.addr = alloca i32, align 4
  %mb_x.addr = alloca i32, align 4
  %mb_y.addr = alloca i32, align 4
  %blocktype.addr = alloca i32, align 4
  %search_range.addr = alloca i32, align 4
  %lambda_factor.addr = alloca i32*, align 8
  %orig_pic_tmp = alloca i16*, align 8
  %mv = alloca [2 x i16], align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %max_value = alloca i32, align 4
  %min_mcost = alloca i32, align 4
  %block_x = alloca i32, align 4
  %block_y = alloca i32, align 4
  %bsx = alloca i32, align 4
  %bsy = alloca i32, align 4
  %pic_pix_x = alloca i32, align 4
  %pic_pix_y = alloca i32, align 4
  %pic_pix_x_c = alloca i32, align 4
  %pic_pix_y_c = alloca i32, align 4
  %bsx_c = alloca i32, align 4
  %bsy_c = alloca i32, align 4
  %pred_mv = alloca i16*, align 8
  %all_mv = alloca i16******, align 8
  %list_offset = alloca i32, align 4
  %prevSad = alloca i32*, align 8
  %me_tmp_time = alloca i64, align 8
  %cost = alloca i32, align 4
  %bipred_mv = alloca i16******, align 8
  %min_mcostbi = alloca i32, align 4
  %bimv = alloca [2 x i16], align 2
  %tempmv = alloca [2 x i16], align 2
  %pred_mv1 = alloca i16*, align 8
  %pred_mv2 = alloca i16*, align 8
  %iterlist = alloca i16, align 2
  %pred_mv_bi = alloca [2 x i16], align 2
  store i16 %ref, i16* %ref.addr, align 2
  store i32 %list, i32* %list.addr, align 4
  store i32 %mb_x, i32* %mb_x.addr, align 4
  store i32 %mb_y, i32* %mb_y.addr, align 4
  store i32 %blocktype, i32* %blocktype.addr, align 4
  store i32 %search_range, i32* %search_range.addr, align 4
  store i32* %lambda_factor, i32** %lambda_factor.addr, align 8
  store i16* getelementptr inbounds ([768 x i16], [768 x i16]* @orig_pic, i32 0, i32 0), i16** %orig_pic_tmp, align 8
  store i32 2147483647, i32* %max_value, align 4
  %0 = load i32, i32* %max_value, align 4
  store i32 %0, i32* %min_mcost, align 4
  %1 = load i32, i32* %mb_x.addr, align 4
  %shr = ashr i32 %1, 2
  store i32 %shr, i32* %block_x, align 4
  %2 = load i32, i32* %mb_y.addr, align 4
  %shr1 = ashr i32 %2, 2
  store i32 %shr1, i32* %block_y, align 4
  %3 = load i32, i32* %blocktype.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 18
  %arrayidx = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size, i32 0, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 0
  %5 = load i32, i32* %arrayidx2, align 4
  store i32 %5, i32* %bsx, align 4
  %6 = load i32, i32* %blocktype.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size4 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 18
  %arrayidx5 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size4, i32 0, i64 %idxprom3
  %arrayidx6 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx5, i32 0, i64 1
  %8 = load i32, i32* %arrayidx6, align 4
  store i32 %8, i32* %bsy, align 4
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 43
  %10 = load i32, i32* %opix_x, align 4
  %11 = load i32, i32* %mb_x.addr, align 4
  %add = add nsw i32 %10, %11
  store i32 %add, i32* %pic_pix_x, align 4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 44
  %13 = load i32, i32* %opix_y, align 4
  %14 = load i32, i32* %mb_y.addr, align 4
  %add7 = add nsw i32 %13, %14
  store i32 %add7, i32* %pic_pix_y, align 4
  %15 = load i32, i32* %pic_pix_x, align 4
  %16 = load i32, i32* @chroma_shift_x, align 4
  %sub = sub nsw i32 %16, 2
  %shr8 = ashr i32 %15, %sub
  store i32 %shr8, i32* %pic_pix_x_c, align 4
  %17 = load i32, i32* %pic_pix_y, align 4
  %18 = load i32, i32* @chroma_shift_y, align 4
  %sub9 = sub nsw i32 %18, 2
  %shr10 = ashr i32 %17, %sub9
  store i32 %shr10, i32* %pic_pix_y_c, align 4
  %19 = load i32, i32* %bsx, align 4
  %20 = load i32, i32* @chroma_shift_x, align 4
  %sub11 = sub nsw i32 %20, 2
  %shr12 = ashr i32 %19, %sub11
  store i32 %shr12, i32* %bsx_c, align 4
  %21 = load i32, i32* %bsy, align 4
  %22 = load i32, i32* @chroma_shift_y, align 4
  %sub13 = sub nsw i32 %22, 2
  %shr14 = ashr i32 %21, %sub13
  store i32 %shr14, i32* %bsy_c, align 4
  %23 = load i32, i32* %blocktype.addr, align 4
  %idxprom15 = sext i32 %23 to i64
  %24 = load i16, i16* %ref.addr, align 2
  %idxprom16 = sext i16 %24 to i64
  %25 = load i32, i32* %list.addr, align 4
  %idxprom17 = sext i32 %25 to i64
  %26 = load i32, i32* %block_x, align 4
  %idxprom18 = sext i32 %26 to i64
  %27 = load i32, i32* %block_y, align 4
  %idxprom19 = sext i32 %27 to i64
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pred_mv20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 79
  %29 = load i16******, i16******* %pred_mv20, align 8
  %arrayidx21 = getelementptr inbounds i16*****, i16****** %29, i64 %idxprom19
  %30 = load i16*****, i16****** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i16****, i16***** %30, i64 %idxprom18
  %31 = load i16****, i16***** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i16***, i16**** %31, i64 %idxprom17
  %32 = load i16***, i16**** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i16**, i16*** %32, i64 %idxprom16
  %33 = load i16**, i16*** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds i16*, i16** %33, i64 %idxprom15
  %34 = load i16*, i16** %arrayidx25, align 8
  store i16* %34, i16** %pred_mv, align 8
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv26 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 80
  %36 = load i16******, i16******* %all_mv26, align 8
  store i16****** %36, i16******* %all_mv, align 8
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 100
  %38 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool = icmp ne i32 %38, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i32 0, i32 3
  %40 = load i32, i32* %current_mb_nr, align 4
  %idxprom27 = sext i32 %40 to i64
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 61
  %42 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx28 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %42, i64 %idxprom27
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx28, i32 0, i32 19
  %43 = load i32, i32* %mb_field, align 4
  %tobool29 = icmp ne i32 %43, 0
  br i1 %tobool29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %44 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr30 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %44, i32 0, i32 3
  %45 = load i32, i32* %current_mb_nr30, align 4
  %rem = srem i32 %45, 2
  %tobool31 = icmp ne i32 %rem, 0
  %cond = select i1 %tobool31, i32 4, i32 2
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond32 = phi i32 [ %cond, %cond.true ], [ 0, %cond.false ]
  store i32 %cond32, i32* %list_offset, align 4
  %46 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %46, i32 0, i32 169
  %47 = load i32, i32* %SearchMode, align 4
  %cmp = icmp eq i32 %47, 3
  br i1 %cmp, label %cond.true.33, label %cond.false.40

cond.true.33:                                     ; preds = %cond.end
  %48 = load i32, i32* %blocktype.addr, align 4
  %sub34 = sub nsw i32 %48, 1
  %idxprom35 = sext i32 %sub34 to i64
  %49 = load i32, i32* %list.addr, align 4
  %50 = load i32, i32* %list_offset, align 4
  %add36 = add nsw i32 %49, %50
  %idxprom37 = sext i32 %add36 to i64
  %51 = load i32***, i32**** @EPZSDistortion, align 8
  %arrayidx38 = getelementptr inbounds i32**, i32*** %51, i64 %idxprom37
  %52 = load i32**, i32*** %arrayidx38, align 8
  %arrayidx39 = getelementptr inbounds i32*, i32** %52, i64 %idxprom35
  %53 = load i32*, i32** %arrayidx39, align 8
  br label %cond.end.41

cond.false.40:                                    ; preds = %cond.end
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.true.33
  %cond42 = phi i32* [ %53, %cond.true.33 ], [ null, %cond.false.40 ]
  store i32* %cond42, i32** %prevSad, align 8
  %call = call i32 @ftime(%struct.timeb* @BlockMotionSearch.tstruct1)
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.41
  %54 = load i32, i32* %j, align 4
  %55 = load i32, i32* %bsy, align 4
  %cmp43 = icmp slt i32 %54, %55
  br i1 %cmp43, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = load i16*, i16** %orig_pic_tmp, align 8
  %57 = bitcast i16* %56 to i8*
  %58 = load i32, i32* %pic_pix_x, align 4
  %idxprom44 = sext i32 %58 to i64
  %59 = load i32, i32* %pic_pix_y, align 4
  %60 = load i32, i32* %j, align 4
  %add45 = add nsw i32 %59, %60
  %idxprom46 = sext i32 %add45 to i64
  %61 = load i16**, i16*** @imgY_org, align 8
  %arrayidx47 = getelementptr inbounds i16*, i16** %61, i64 %idxprom46
  %62 = load i16*, i16** %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds i16, i16* %62, i64 %idxprom44
  %63 = bitcast i16* %arrayidx48 to i8*
  %64 = load i32, i32* %bsx, align 4
  %conv = sext i32 %64 to i64
  %mul = mul i64 %conv, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %63, i64 %mul, i32 2, i1 false)
  %65 = load i32, i32* %bsx, align 4
  %66 = load i16*, i16** %orig_pic_tmp, align 8
  %idx.ext = sext i32 %65 to i64
  %add.ptr = getelementptr inbounds i16, i16* %66, i64 %idx.ext
  store i16* %add.ptr, i16** %orig_pic_tmp, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %67 = load i32, i32* %j, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %68 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ChromaMEEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %68, i32 0, i32 198
  %69 = load i32, i32* %ChromaMEEnable, align 4
  store i32 %69, i32* @ChromaMEEnable, align 4
  %70 = load i32, i32* @ChromaMEEnable, align 4
  %tobool49 = icmp ne i32 %70, 0
  br i1 %tobool49, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i16* getelementptr inbounds ([768 x i16], [768 x i16]* @orig_pic, i32 0, i64 256), i16** %orig_pic_tmp, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.64, %if.then
  %71 = load i32, i32* %j, align 4
  %72 = load i32, i32* %bsy_c, align 4
  %cmp51 = icmp slt i32 %71, %72
  br i1 %cmp51, label %for.body.53, label %for.end.66

for.body.53:                                      ; preds = %for.cond.50
  %73 = load i16*, i16** %orig_pic_tmp, align 8
  %74 = bitcast i16* %73 to i8*
  %75 = load i32, i32* %pic_pix_x_c, align 4
  %idxprom54 = sext i32 %75 to i64
  %76 = load i32, i32* %pic_pix_y_c, align 4
  %77 = load i32, i32* %j, align 4
  %add55 = add nsw i32 %76, %77
  %idxprom56 = sext i32 %add55 to i64
  %78 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx57 = getelementptr inbounds i16**, i16*** %78, i64 0
  %79 = load i16**, i16*** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds i16*, i16** %79, i64 %idxprom56
  %80 = load i16*, i16** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds i16, i16* %80, i64 %idxprom54
  %81 = bitcast i16* %arrayidx59 to i8*
  %82 = load i32, i32* %bsx_c, align 4
  %conv60 = sext i32 %82 to i64
  %mul61 = mul i64 %conv60, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %81, i64 %mul61, i32 2, i1 false)
  %83 = load i32, i32* %bsx_c, align 4
  %84 = load i16*, i16** %orig_pic_tmp, align 8
  %idx.ext62 = sext i32 %83 to i64
  %add.ptr63 = getelementptr inbounds i16, i16* %84, i64 %idx.ext62
  store i16* %add.ptr63, i16** %orig_pic_tmp, align 8
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.body.53
  %85 = load i32, i32* %j, align 4
  %inc65 = add nsw i32 %85, 1
  store i32 %inc65, i32* %j, align 4
  br label %for.cond.50

for.end.66:                                       ; preds = %for.cond.50
  store i16* getelementptr inbounds ([768 x i16], [768 x i16]* @orig_pic, i32 0, i64 512), i16** %orig_pic_tmp, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.81, %for.end.66
  %86 = load i32, i32* %j, align 4
  %87 = load i32, i32* %bsy_c, align 4
  %cmp68 = icmp slt i32 %86, %87
  br i1 %cmp68, label %for.body.70, label %for.end.83

for.body.70:                                      ; preds = %for.cond.67
  %88 = load i16*, i16** %orig_pic_tmp, align 8
  %89 = bitcast i16* %88 to i8*
  %90 = load i32, i32* %pic_pix_x_c, align 4
  %idxprom71 = sext i32 %90 to i64
  %91 = load i32, i32* %pic_pix_y_c, align 4
  %92 = load i32, i32* %j, align 4
  %add72 = add nsw i32 %91, %92
  %idxprom73 = sext i32 %add72 to i64
  %93 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx74 = getelementptr inbounds i16**, i16*** %93, i64 1
  %94 = load i16**, i16*** %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds i16*, i16** %94, i64 %idxprom73
  %95 = load i16*, i16** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds i16, i16* %95, i64 %idxprom71
  %96 = bitcast i16* %arrayidx76 to i8*
  %97 = load i32, i32* %bsx_c, align 4
  %conv77 = sext i32 %97 to i64
  %mul78 = mul i64 %conv77, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %96, i64 %mul78, i32 2, i1 false)
  %98 = load i32, i32* %bsx_c, align 4
  %99 = load i16*, i16** %orig_pic_tmp, align 8
  %idx.ext79 = sext i32 %98 to i64
  %add.ptr80 = getelementptr inbounds i16, i16* %99, i64 %idx.ext79
  store i16* %add.ptr80, i16** %orig_pic_tmp, align 8
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.70
  %100 = load i32, i32* %j, align 4
  %inc82 = add nsw i32 %100, 1
  store i32 %inc82, i32* %j, align 4
  br label %for.cond.67

for.end.83:                                       ; preds = %for.cond.67
  br label %if.end

if.end:                                           ; preds = %for.end.83, %for.end
  %101 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode84 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %101, i32 0, i32 169
  %102 = load i32, i32* %SearchMode84, align 4
  %cmp85 = icmp eq i32 %102, 1
  br i1 %cmp85, label %if.then.87, label %if.else

if.then.87:                                       ; preds = %if.end
  %103 = load i32, i32* %blocktype.addr, align 4
  store i32 %103, i32* @UMHEX_blocktype, align 4
  store i32 0, i32* @bipred_flag, align 4
  br label %if.end.93

if.else:                                          ; preds = %if.end
  %104 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode88 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %104, i32 0, i32 169
  %105 = load i32, i32* %SearchMode88, align 4
  %cmp89 = icmp eq i32 %105, 2
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.else
  %106 = load i16, i16* %ref.addr, align 2
  %107 = load i32, i32* %list.addr, align 4
  %108 = load i32, i32* %block_y, align 4
  %109 = load i32, i32* %block_x, align 4
  %110 = load i32, i32* %blocktype.addr, align 4
  %111 = load i16******, i16******* %all_mv, align 8
  call void @smpUMHEX_setup(i16 signext %106, i32 %107, i32 %108, i32 %109, i32 %110, i16****** %111)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.else
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.87
  %112 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %112, i32 0, i32 153
  %113 = load i32, i32* %Transform8x8Mode, align 4
  %tobool94 = icmp ne i32 %113, 0
  br i1 %tobool94, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.93
  %114 = load i32, i32* %blocktype.addr, align 4
  %cmp95 = icmp sle i32 %114, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.93
  %115 = phi i1 [ false, %if.end.93 ], [ %cmp95, %land.rhs ]
  %land.ext = zext i1 %115 to i32
  store i32 %land.ext, i32* @test8x8transform, align 4
  %116 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode97 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %116, i32 0, i32 169
  %117 = load i32, i32* %SearchMode97, align 4
  %cmp98 = icmp eq i32 %117, 1
  br i1 %cmp98, label %if.then.100, label %if.else.106

if.then.100:                                      ; preds = %land.end
  %118 = load i16*, i16** %pred_mv, align 8
  %119 = load i32, i32* %list.addr, align 4
  %idxprom101 = sext i32 %119 to i64
  %120 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %120, i32 0, i32 35
  %121 = load i8***, i8**** %ref_idx, align 8
  %arrayidx102 = getelementptr inbounds i8**, i8*** %121, i64 %idxprom101
  %122 = load i8**, i8*** %arrayidx102, align 8
  %123 = load i32, i32* %list.addr, align 4
  %idxprom103 = sext i32 %123 to i64
  %124 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv104 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %124, i32 0, i32 38
  %125 = load i16****, i16***** %mv104, align 8
  %arrayidx105 = getelementptr inbounds i16***, i16**** %125, i64 %idxprom103
  %126 = load i16***, i16**** %arrayidx105, align 8
  %127 = load i16, i16* %ref.addr, align 2
  %128 = load i32, i32* %list.addr, align 4
  %129 = load i32, i32* %block_x, align 4
  %130 = load i32, i32* %block_y, align 4
  %131 = load i32, i32* %bsx, align 4
  %132 = load i32, i32* %bsy, align 4
  call void @UMHEXSetMotionVectorPredictor(i16* %118, i8** %122, i16*** %126, i16 signext %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i32* %search_range.addr)
  br label %if.end.113

if.else.106:                                      ; preds = %land.end
  %133 = load i16*, i16** %pred_mv, align 8
  %134 = load i32, i32* %list.addr, align 4
  %idxprom107 = sext i32 %134 to i64
  %135 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx108 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %135, i32 0, i32 35
  %136 = load i8***, i8**** %ref_idx108, align 8
  %arrayidx109 = getelementptr inbounds i8**, i8*** %136, i64 %idxprom107
  %137 = load i8**, i8*** %arrayidx109, align 8
  %138 = load i32, i32* %list.addr, align 4
  %idxprom110 = sext i32 %138 to i64
  %139 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv111 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %139, i32 0, i32 38
  %140 = load i16****, i16***** %mv111, align 8
  %arrayidx112 = getelementptr inbounds i16***, i16**** %140, i64 %idxprom110
  %141 = load i16***, i16**** %arrayidx112, align 8
  %142 = load i16, i16* %ref.addr, align 2
  %143 = load i32, i32* %list.addr, align 4
  %144 = load i32, i32* %block_x, align 4
  %145 = load i32, i32* %block_y, align 4
  %146 = load i32, i32* %bsx, align 4
  %147 = load i32, i32* %bsy, align 4
  call void @SetMotionVectorPredictor(i16* %133, i8** %137, i16*** %141, i16 signext %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147)
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.106, %if.then.100
  %148 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode114 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %148, i32 0, i32 169
  %149 = load i32, i32* %SearchMode114, align 4
  %cmp115 = icmp eq i32 %149, 1
  br i1 %cmp115, label %if.then.117, label %if.else.169

if.then.117:                                      ; preds = %if.end.113
  %150 = load i16*, i16** %pred_mv, align 8
  %arrayidx118 = getelementptr inbounds i16, i16* %150, i64 0
  %151 = load i16, i16* %arrayidx118, align 2
  %conv119 = sext i16 %151 to i32
  %div = sdiv i32 %conv119, 4
  %conv120 = trunc i32 %div to i16
  %arrayidx121 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  store i16 %conv120, i16* %arrayidx121, align 2
  %152 = load i16*, i16** %pred_mv, align 8
  %arrayidx122 = getelementptr inbounds i16, i16* %152, i64 1
  %153 = load i16, i16* %arrayidx122, align 2
  %conv123 = sext i16 %153 to i32
  %div124 = sdiv i32 %conv123, 4
  %conv125 = trunc i32 %div124 to i16
  %arrayidx126 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  store i16 %conv125, i16* %arrayidx126, align 2
  %154 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %154, i32 0, i32 113
  %155 = load i32, i32* %rdopt, align 4
  %tobool127 = icmp ne i32 %155, 0
  br i1 %tobool127, label %if.end.141, label %if.then.128

if.then.128:                                      ; preds = %if.then.117
  %156 = load i32, i32* %search_range.addr, align 4
  %sub129 = sub nsw i32 0, %156
  %157 = load i32, i32* %search_range.addr, align 4
  %arrayidx130 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  %158 = load i16, i16* %arrayidx130, align 2
  %conv131 = sext i16 %158 to i32
  %call132 = call i32 @iClip3(i32 %sub129, i32 %157, i32 %conv131)
  %conv133 = trunc i32 %call132 to i16
  %arrayidx134 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  store i16 %conv133, i16* %arrayidx134, align 2
  %159 = load i32, i32* %search_range.addr, align 4
  %sub135 = sub nsw i32 0, %159
  %160 = load i32, i32* %search_range.addr, align 4
  %arrayidx136 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  %161 = load i16, i16* %arrayidx136, align 2
  %conv137 = sext i16 %161 to i32
  %call138 = call i32 @iClip3(i32 %sub135, i32 %160, i32 %conv137)
  %conv139 = trunc i32 %call138 to i16
  %arrayidx140 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  store i16 %conv139, i16* %arrayidx140, align 2
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.128, %if.then.117
  %162 = load i32, i32* %search_range.addr, align 4
  %add142 = add nsw i32 -2047, %162
  %163 = load i32, i32* %search_range.addr, align 4
  %sub143 = sub nsw i32 2047, %163
  %arrayidx144 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  %164 = load i16, i16* %arrayidx144, align 2
  %conv145 = sext i16 %164 to i32
  %call146 = call i32 @iClip3(i32 %add142, i32 %sub143, i32 %conv145)
  %conv147 = trunc i32 %call146 to i16
  %arrayidx148 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  store i16 %conv147, i16* %arrayidx148, align 2
  %165 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %165, i32 0, i32 2
  %166 = load i32, i32* %LevelIndex, align 4
  %idxprom149 = sext i32 %166 to i64
  %arrayidx150 = getelementptr inbounds [17 x [6 x i32]], [17 x [6 x i32]]* @LEVELMVLIMIT, i32 0, i64 %idxprom149
  %arrayidx151 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx150, i32 0, i64 0
  %167 = load i32, i32* %arrayidx151, align 4
  %168 = load i32, i32* %search_range.addr, align 4
  %add152 = add nsw i32 %167, %168
  %169 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex153 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %169, i32 0, i32 2
  %170 = load i32, i32* %LevelIndex153, align 4
  %idxprom154 = sext i32 %170 to i64
  %arrayidx155 = getelementptr inbounds [17 x [6 x i32]], [17 x [6 x i32]]* @LEVELMVLIMIT, i32 0, i64 %idxprom154
  %arrayidx156 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx155, i32 0, i64 1
  %171 = load i32, i32* %arrayidx156, align 4
  %172 = load i32, i32* %search_range.addr, align 4
  %sub157 = sub nsw i32 %171, %172
  %arrayidx158 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  %173 = load i16, i16* %arrayidx158, align 2
  %conv159 = sext i16 %173 to i32
  %call160 = call i32 @iClip3(i32 %add152, i32 %sub157, i32 %conv159)
  %conv161 = trunc i32 %call160 to i16
  %arrayidx162 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  store i16 %conv161, i16* %arrayidx162, align 2
  %174 = load i16, i16* %ref.addr, align 2
  %175 = load i32, i32* %list.addr, align 4
  %176 = load i32, i32* %pic_pix_x, align 4
  %177 = load i32, i32* %pic_pix_y, align 4
  %178 = load i32, i32* %blocktype.addr, align 4
  %179 = load i16*, i16** %pred_mv, align 8
  %arrayidx163 = getelementptr inbounds i16, i16* %179, i64 0
  %180 = load i16, i16* %arrayidx163, align 2
  %181 = load i16*, i16** %pred_mv, align 8
  %arrayidx164 = getelementptr inbounds i16, i16* %181, i64 1
  %182 = load i16, i16* %arrayidx164, align 2
  %arrayidx165 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  %arrayidx166 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  %183 = load i32, i32* %search_range.addr, align 4
  %184 = load i32, i32* %min_mcost, align 4
  %185 = load i32*, i32** %lambda_factor.addr, align 8
  %arrayidx167 = getelementptr inbounds i32, i32* %185, i64 0
  %186 = load i32, i32* %arrayidx167, align 4
  %call168 = call i32 @UMHEXIntegerPelBlockMotionSearch(i16* getelementptr inbounds ([768 x i16], [768 x i16]* @orig_pic, i32 0, i32 0), i16 signext %174, i32 %175, i32 %176, i32 %177, i32 %178, i16 signext %180, i16 signext %182, i16* %arrayidx165, i16* %arrayidx166, i32 %183, i32 %184, i32 %186)
  store i32 %call168, i32* %min_mcost, align 4
  br label %if.end.437

if.else.169:                                      ; preds = %if.end.113
  %187 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode170 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %187, i32 0, i32 169
  %188 = load i32, i32* %SearchMode170, align 4
  %cmp171 = icmp eq i32 %188, 2
  br i1 %cmp171, label %if.then.173, label %if.else.275

if.then.173:                                      ; preds = %if.else.169
  %189 = load i16*, i16** %pred_mv, align 8
  %arrayidx174 = getelementptr inbounds i16, i16* %189, i64 0
  %190 = load i16, i16* %arrayidx174, align 2
  %conv175 = sext i16 %190 to i32
  %div176 = sdiv i32 %conv175, 4
  %conv177 = trunc i32 %div176 to i16
  %arrayidx178 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  store i16 %conv177, i16* %arrayidx178, align 2
  %191 = load i16*, i16** %pred_mv, align 8
  %arrayidx179 = getelementptr inbounds i16, i16* %191, i64 1
  %192 = load i16, i16* %arrayidx179, align 2
  %conv180 = sext i16 %192 to i32
  %div181 = sdiv i32 %conv180, 4
  %conv182 = trunc i32 %div181 to i16
  %arrayidx183 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  store i16 %conv182, i16* %arrayidx183, align 2
  %193 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt184 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %193, i32 0, i32 113
  %194 = load i32, i32* %rdopt184, align 4
  %tobool185 = icmp ne i32 %194, 0
  br i1 %tobool185, label %if.end.199, label %if.then.186

if.then.186:                                      ; preds = %if.then.173
  %195 = load i32, i32* %search_range.addr, align 4
  %sub187 = sub nsw i32 0, %195
  %196 = load i32, i32* %search_range.addr, align 4
  %arrayidx188 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  %197 = load i16, i16* %arrayidx188, align 2
  %conv189 = sext i16 %197 to i32
  %call190 = call i32 @iClip3(i32 %sub187, i32 %196, i32 %conv189)
  %conv191 = trunc i32 %call190 to i16
  %arrayidx192 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  store i16 %conv191, i16* %arrayidx192, align 2
  %198 = load i32, i32* %search_range.addr, align 4
  %sub193 = sub nsw i32 0, %198
  %199 = load i32, i32* %search_range.addr, align 4
  %arrayidx194 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  %200 = load i16, i16* %arrayidx194, align 2
  %conv195 = sext i16 %200 to i32
  %call196 = call i32 @iClip3(i32 %sub193, i32 %199, i32 %conv195)
  %conv197 = trunc i32 %call196 to i16
  %arrayidx198 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  store i16 %conv197, i16* %arrayidx198, align 2
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.186, %if.then.173
  %201 = load i32, i32* %search_range.addr, align 4
  %add200 = add nsw i32 -2047, %201
  %202 = load i32, i32* %search_range.addr, align 4
  %sub201 = sub nsw i32 2047, %202
  %arrayidx202 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  %203 = load i16, i16* %arrayidx202, align 2
  %conv203 = sext i16 %203 to i32
  %call204 = call i32 @iClip3(i32 %add200, i32 %sub201, i32 %conv203)
  %conv205 = trunc i32 %call204 to i16
  %arrayidx206 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  store i16 %conv205, i16* %arrayidx206, align 2
  %204 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex207 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %204, i32 0, i32 2
  %205 = load i32, i32* %LevelIndex207, align 4
  %idxprom208 = sext i32 %205 to i64
  %arrayidx209 = getelementptr inbounds [17 x [6 x i32]], [17 x [6 x i32]]* @LEVELMVLIMIT, i32 0, i64 %idxprom208
  %arrayidx210 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx209, i32 0, i64 0
  %206 = load i32, i32* %arrayidx210, align 4
  %207 = load i32, i32* %search_range.addr, align 4
  %add211 = add nsw i32 %206, %207
  %208 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex212 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %208, i32 0, i32 2
  %209 = load i32, i32* %LevelIndex212, align 4
  %idxprom213 = sext i32 %209 to i64
  %arrayidx214 = getelementptr inbounds [17 x [6 x i32]], [17 x [6 x i32]]* @LEVELMVLIMIT, i32 0, i64 %idxprom213
  %arrayidx215 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx214, i32 0, i64 1
  %210 = load i32, i32* %arrayidx215, align 4
  %211 = load i32, i32* %search_range.addr, align 4
  %sub216 = sub nsw i32 %210, %211
  %arrayidx217 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  %212 = load i16, i16* %arrayidx217, align 2
  %conv218 = sext i16 %212 to i32
  %call219 = call i32 @iClip3(i32 %add211, i32 %sub216, i32 %conv218)
  %conv220 = trunc i32 %call219 to i16
  %arrayidx221 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  store i16 %conv220, i16* %arrayidx221, align 2
  %213 = load i16, i16* %ref.addr, align 2
  %214 = load i32, i32* %list.addr, align 4
  %215 = load i32, i32* %pic_pix_x, align 4
  %216 = load i32, i32* %pic_pix_y, align 4
  %217 = load i32, i32* %blocktype.addr, align 4
  %218 = load i16*, i16** %pred_mv, align 8
  %arrayidx222 = getelementptr inbounds i16, i16* %218, i64 0
  %219 = load i16, i16* %arrayidx222, align 2
  %220 = load i16*, i16** %pred_mv, align 8
  %arrayidx223 = getelementptr inbounds i16, i16* %220, i64 1
  %221 = load i16, i16* %arrayidx223, align 2
  %arrayidx224 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  %arrayidx225 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  %222 = load i32, i32* %search_range.addr, align 4
  %223 = load i32, i32* %min_mcost, align 4
  %224 = load i32*, i32** %lambda_factor.addr, align 8
  %arrayidx226 = getelementptr inbounds i32, i32* %224, i64 0
  %225 = load i32, i32* %arrayidx226, align 4
  %call227 = call i32 @smpUMHEXIntegerPelBlockMotionSearch(i16* getelementptr inbounds ([768 x i16], [768 x i16]* @orig_pic, i32 0, i32 0), i16 signext %213, i32 %214, i32 %215, i32 %216, i32 %217, i16 signext %219, i16 signext %221, i16* %arrayidx224, i16* %arrayidx225, i32 %222, i32 %223, i32 %225)
  store i32 %call227, i32* %min_mcost, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.228

for.cond.228:                                     ; preds = %for.inc.272, %if.end.199
  %226 = load i32, i32* %i, align 4
  %227 = load i32, i32* %bsx, align 4
  %shr229 = ashr i32 %227, 2
  %cmp230 = icmp slt i32 %226, %shr229
  br i1 %cmp230, label %for.body.232, label %for.end.274

for.body.232:                                     ; preds = %for.cond.228
  store i32 0, i32* %j, align 4
  br label %for.cond.233

for.cond.233:                                     ; preds = %for.inc.269, %for.body.232
  %228 = load i32, i32* %j, align 4
  %229 = load i32, i32* %bsy, align 4
  %shr234 = ashr i32 %229, 2
  %cmp235 = icmp slt i32 %228, %shr234
  br i1 %cmp235, label %for.body.237, label %for.end.271

for.body.237:                                     ; preds = %for.cond.233
  %230 = load i32, i32* %list.addr, align 4
  %cmp238 = icmp eq i32 %230, 0
  br i1 %cmp238, label %if.then.240, label %if.else.253

if.then.240:                                      ; preds = %for.body.237
  %231 = load i32, i32* %min_mcost, align 4
  %232 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %232, i32 0, i32 39
  %233 = load i32, i32* %pix_x, align 4
  %shr241 = ashr i32 %233, 2
  %234 = load i32, i32* %block_x, align 4
  %add242 = add nsw i32 %shr241, %234
  %235 = load i32, i32* %i, align 4
  %add243 = add nsw i32 %add242, %235
  %idxprom244 = sext i32 %add243 to i64
  %236 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %236, i32 0, i32 40
  %237 = load i32, i32* %pix_y, align 4
  %shr245 = ashr i32 %237, 2
  %238 = load i32, i32* %block_y, align 4
  %add246 = add nsw i32 %shr245, %238
  %239 = load i32, i32* %j, align 4
  %add247 = add nsw i32 %add246, %239
  %idxprom248 = sext i32 %add247 to i64
  %240 = load i32, i32* %blocktype.addr, align 4
  %idxprom249 = sext i32 %240 to i64
  %241 = load i32***, i32**** @smpUMHEX_l0_cost, align 8
  %arrayidx250 = getelementptr inbounds i32**, i32*** %241, i64 %idxprom249
  %242 = load i32**, i32*** %arrayidx250, align 8
  %arrayidx251 = getelementptr inbounds i32*, i32** %242, i64 %idxprom248
  %243 = load i32*, i32** %arrayidx251, align 8
  %arrayidx252 = getelementptr inbounds i32, i32* %243, i64 %idxprom244
  store i32 %231, i32* %arrayidx252, align 4
  br label %if.end.268

if.else.253:                                      ; preds = %for.body.237
  %244 = load i32, i32* %min_mcost, align 4
  %245 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x254 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %245, i32 0, i32 39
  %246 = load i32, i32* %pix_x254, align 4
  %shr255 = ashr i32 %246, 2
  %247 = load i32, i32* %block_x, align 4
  %add256 = add nsw i32 %shr255, %247
  %248 = load i32, i32* %i, align 4
  %add257 = add nsw i32 %add256, %248
  %idxprom258 = sext i32 %add257 to i64
  %249 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y259 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %249, i32 0, i32 40
  %250 = load i32, i32* %pix_y259, align 4
  %shr260 = ashr i32 %250, 2
  %251 = load i32, i32* %block_y, align 4
  %add261 = add nsw i32 %shr260, %251
  %252 = load i32, i32* %j, align 4
  %add262 = add nsw i32 %add261, %252
  %idxprom263 = sext i32 %add262 to i64
  %253 = load i32, i32* %blocktype.addr, align 4
  %idxprom264 = sext i32 %253 to i64
  %254 = load i32***, i32**** @smpUMHEX_l1_cost, align 8
  %arrayidx265 = getelementptr inbounds i32**, i32*** %254, i64 %idxprom264
  %255 = load i32**, i32*** %arrayidx265, align 8
  %arrayidx266 = getelementptr inbounds i32*, i32** %255, i64 %idxprom263
  %256 = load i32*, i32** %arrayidx266, align 8
  %arrayidx267 = getelementptr inbounds i32, i32* %256, i64 %idxprom258
  store i32 %244, i32* %arrayidx267, align 4
  br label %if.end.268

if.end.268:                                       ; preds = %if.else.253, %if.then.240
  br label %for.inc.269

for.inc.269:                                      ; preds = %if.end.268
  %257 = load i32, i32* %j, align 4
  %inc270 = add nsw i32 %257, 1
  store i32 %inc270, i32* %j, align 4
  br label %for.cond.233

for.end.271:                                      ; preds = %for.cond.233
  br label %for.inc.272

for.inc.272:                                      ; preds = %for.end.271
  %258 = load i32, i32* %i, align 4
  %inc273 = add nsw i32 %258, 1
  store i32 %inc273, i32* %i, align 4
  br label %for.cond.228

for.end.274:                                      ; preds = %for.cond.228
  br label %if.end.436

if.else.275:                                      ; preds = %if.else.169
  %259 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode276 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %259, i32 0, i32 169
  %260 = load i32, i32* %SearchMode276, align 4
  %cmp277 = icmp eq i32 %260, 3
  br i1 %cmp277, label %if.then.279, label %if.else.368

if.then.279:                                      ; preds = %if.else.275
  %261 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %261, i32 0, i32 101
  %262 = load i32, i32* %EPZSSubPelGrid, align 4
  %tobool280 = icmp ne i32 %262, 0
  br i1 %tobool280, label %if.then.281, label %if.else.286

if.then.281:                                      ; preds = %if.then.279
  %263 = load i16*, i16** %pred_mv, align 8
  %arrayidx282 = getelementptr inbounds i16, i16* %263, i64 0
  %264 = load i16, i16* %arrayidx282, align 2
  %arrayidx283 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  store i16 %264, i16* %arrayidx283, align 2
  %265 = load i16*, i16** %pred_mv, align 8
  %arrayidx284 = getelementptr inbounds i16, i16* %265, i64 1
  %266 = load i16, i16* %arrayidx284, align 2
  %arrayidx285 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  store i16 %266, i16* %arrayidx285, align 2
  br label %if.end.299

if.else.286:                                      ; preds = %if.then.279
  %267 = load i16*, i16** %pred_mv, align 8
  %arrayidx287 = getelementptr inbounds i16, i16* %267, i64 0
  %268 = load i16, i16* %arrayidx287, align 2
  %conv288 = sext i16 %268 to i32
  %add289 = add nsw i32 %conv288, 2
  %shr290 = ashr i32 %add289, 2
  %conv291 = trunc i32 %shr290 to i16
  %arrayidx292 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  store i16 %conv291, i16* %arrayidx292, align 2
  %269 = load i16*, i16** %pred_mv, align 8
  %arrayidx293 = getelementptr inbounds i16, i16* %269, i64 1
  %270 = load i16, i16* %arrayidx293, align 2
  %conv294 = sext i16 %270 to i32
  %add295 = add nsw i32 %conv294, 2
  %shr296 = ashr i32 %add295, 2
  %conv297 = trunc i32 %shr296 to i16
  %arrayidx298 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  store i16 %conv297, i16* %arrayidx298, align 2
  br label %if.end.299

if.end.299:                                       ; preds = %if.else.286, %if.then.281
  %271 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt300 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %271, i32 0, i32 113
  %272 = load i32, i32* %rdopt300, align 4
  %tobool301 = icmp ne i32 %272, 0
  br i1 %tobool301, label %if.end.326, label %if.then.302

if.then.302:                                      ; preds = %if.end.299
  %273 = load i32, i32* %search_range.addr, align 4
  %sub303 = sub nsw i32 0, %273
  %274 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid304 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %274, i32 0, i32 101
  %275 = load i32, i32* %EPZSSubPelGrid304, align 4
  %mul305 = mul nsw i32 %275, 2
  %shl = shl i32 %sub303, %mul305
  %276 = load i32, i32* %search_range.addr, align 4
  %277 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid306 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %277, i32 0, i32 101
  %278 = load i32, i32* %EPZSSubPelGrid306, align 4
  %mul307 = mul nsw i32 %278, 2
  %shl308 = shl i32 %276, %mul307
  %arrayidx309 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  %279 = load i16, i16* %arrayidx309, align 2
  %conv310 = sext i16 %279 to i32
  %call311 = call i32 @iClip3(i32 %shl, i32 %shl308, i32 %conv310)
  %conv312 = trunc i32 %call311 to i16
  %arrayidx313 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  store i16 %conv312, i16* %arrayidx313, align 2
  %280 = load i32, i32* %search_range.addr, align 4
  %sub314 = sub nsw i32 0, %280
  %281 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid315 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %281, i32 0, i32 101
  %282 = load i32, i32* %EPZSSubPelGrid315, align 4
  %mul316 = mul nsw i32 %282, 2
  %shl317 = shl i32 %sub314, %mul316
  %283 = load i32, i32* %search_range.addr, align 4
  %284 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid318 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %284, i32 0, i32 101
  %285 = load i32, i32* %EPZSSubPelGrid318, align 4
  %mul319 = mul nsw i32 %285, 2
  %shl320 = shl i32 %283, %mul319
  %arrayidx321 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  %286 = load i16, i16* %arrayidx321, align 2
  %conv322 = sext i16 %286 to i32
  %call323 = call i32 @iClip3(i32 %shl317, i32 %shl320, i32 %conv322)
  %conv324 = trunc i32 %call323 to i16
  %arrayidx325 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  store i16 %conv324, i16* %arrayidx325, align 2
  br label %if.end.326

if.end.326:                                       ; preds = %if.then.302, %if.end.299
  %287 = load i32, i32* %search_range.addr, align 4
  %add327 = add nsw i32 -2047, %287
  %288 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid328 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %288, i32 0, i32 101
  %289 = load i32, i32* %EPZSSubPelGrid328, align 4
  %mul329 = mul nsw i32 %289, 2
  %shl330 = shl i32 %add327, %mul329
  %290 = load i32, i32* %search_range.addr, align 4
  %sub331 = sub nsw i32 2047, %290
  %291 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid332 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %291, i32 0, i32 101
  %292 = load i32, i32* %EPZSSubPelGrid332, align 4
  %mul333 = mul nsw i32 %292, 2
  %shl334 = shl i32 %sub331, %mul333
  %arrayidx335 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  %293 = load i16, i16* %arrayidx335, align 2
  %conv336 = sext i16 %293 to i32
  %call337 = call i32 @iClip3(i32 %shl330, i32 %shl334, i32 %conv336)
  %conv338 = trunc i32 %call337 to i16
  %arrayidx339 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  store i16 %conv338, i16* %arrayidx339, align 2
  %294 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex340 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %294, i32 0, i32 2
  %295 = load i32, i32* %LevelIndex340, align 4
  %idxprom341 = sext i32 %295 to i64
  %arrayidx342 = getelementptr inbounds [17 x [6 x i32]], [17 x [6 x i32]]* @LEVELMVLIMIT, i32 0, i64 %idxprom341
  %arrayidx343 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx342, i32 0, i64 0
  %296 = load i32, i32* %arrayidx343, align 4
  %297 = load i32, i32* %search_range.addr, align 4
  %add344 = add nsw i32 %296, %297
  %298 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid345 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %298, i32 0, i32 101
  %299 = load i32, i32* %EPZSSubPelGrid345, align 4
  %mul346 = mul nsw i32 %299, 2
  %shl347 = shl i32 %add344, %mul346
  %300 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex348 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %300, i32 0, i32 2
  %301 = load i32, i32* %LevelIndex348, align 4
  %idxprom349 = sext i32 %301 to i64
  %arrayidx350 = getelementptr inbounds [17 x [6 x i32]], [17 x [6 x i32]]* @LEVELMVLIMIT, i32 0, i64 %idxprom349
  %arrayidx351 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx350, i32 0, i64 1
  %302 = load i32, i32* %arrayidx351, align 4
  %303 = load i32, i32* %search_range.addr, align 4
  %sub352 = sub nsw i32 %302, %303
  %304 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid353 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %304, i32 0, i32 101
  %305 = load i32, i32* %EPZSSubPelGrid353, align 4
  %mul354 = mul nsw i32 %305, 2
  %shl355 = shl i32 %sub352, %mul354
  %arrayidx356 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  %306 = load i16, i16* %arrayidx356, align 2
  %conv357 = sext i16 %306 to i32
  %call358 = call i32 @iClip3(i32 %shl347, i32 %shl355, i32 %conv357)
  %conv359 = trunc i32 %call358 to i16
  %arrayidx360 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  store i16 %conv359, i16* %arrayidx360, align 2
  %307 = load i16, i16* %ref.addr, align 2
  %308 = load i32, i32* %list.addr, align 4
  %309 = load i32, i32* %list_offset, align 4
  %310 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx361 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %310, i32 0, i32 35
  %311 = load i8***, i8**** %ref_idx361, align 8
  %312 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv362 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %312, i32 0, i32 38
  %313 = load i16****, i16***** %mv362, align 8
  %314 = load i32, i32* %pic_pix_x, align 4
  %315 = load i32, i32* %pic_pix_y, align 4
  %316 = load i32, i32* %blocktype.addr, align 4
  %317 = load i16*, i16** %pred_mv, align 8
  %arraydecay = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i32 0
  %318 = load i32, i32* %search_range.addr, align 4
  %319 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid363 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %319, i32 0, i32 101
  %320 = load i32, i32* %EPZSSubPelGrid363, align 4
  %mul364 = mul nsw i32 %320, 2
  %shl365 = shl i32 %318, %mul364
  %321 = load i32, i32* %min_mcost, align 4
  %322 = load i32*, i32** %lambda_factor.addr, align 8
  %arrayidx366 = getelementptr inbounds i32, i32* %322, i64 0
  %323 = load i32, i32* %arrayidx366, align 4
  %call367 = call i32 @EPZSPelBlockMotionSearch(i16* getelementptr inbounds ([768 x i16], [768 x i16]* @orig_pic, i32 0, i32 0), i16 signext %307, i32 %308, i32 %309, i8*** %311, i16**** %313, i32 %314, i32 %315, i32 %316, i16* %317, i16* %arraydecay, i32 %shl365, i32 %321, i32 %323)
  store i32 %call367, i32* %min_mcost, align 4
  br label %if.end.435

if.else.368:                                      ; preds = %if.else.275
  %324 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode369 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %324, i32 0, i32 169
  %325 = load i32, i32* %SearchMode369, align 4
  %cmp370 = icmp eq i32 %325, 0
  br i1 %cmp370, label %if.then.372, label %if.else.379

if.then.372:                                      ; preds = %if.else.368
  %326 = load i16, i16* %ref.addr, align 2
  %327 = load i32, i32* %list.addr, align 4
  %328 = load i32, i32* %pic_pix_x, align 4
  %329 = load i32, i32* %pic_pix_y, align 4
  %330 = load i32, i32* %blocktype.addr, align 4
  %331 = load i16*, i16** %pred_mv, align 8
  %arrayidx373 = getelementptr inbounds i16, i16* %331, i64 0
  %332 = load i16, i16* %arrayidx373, align 2
  %333 = load i16*, i16** %pred_mv, align 8
  %arrayidx374 = getelementptr inbounds i16, i16* %333, i64 1
  %334 = load i16, i16* %arrayidx374, align 2
  %arrayidx375 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  %arrayidx376 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  %335 = load i32, i32* %search_range.addr, align 4
  %336 = load i32, i32* %min_mcost, align 4
  %337 = load i32*, i32** %lambda_factor.addr, align 8
  %arrayidx377 = getelementptr inbounds i32, i32* %337, i64 0
  %338 = load i32, i32* %arrayidx377, align 4
  %call378 = call i32 @FastFullPelBlockMotionSearch(i16* getelementptr inbounds ([768 x i16], [768 x i16]* @orig_pic, i32 0, i32 0), i16 signext %326, i32 %327, i32 %328, i32 %329, i32 %330, i16 signext %332, i16 signext %334, i16* %arrayidx375, i16* %arrayidx376, i32 %335, i32 %336, i32 %338)
  store i32 %call378, i32* %min_mcost, align 4
  br label %if.end.434

if.else.379:                                      ; preds = %if.else.368
  %339 = load i16*, i16** %pred_mv, align 8
  %arrayidx380 = getelementptr inbounds i16, i16* %339, i64 0
  %340 = load i16, i16* %arrayidx380, align 2
  %conv381 = sext i16 %340 to i32
  %div382 = sdiv i32 %conv381, 4
  %conv383 = trunc i32 %div382 to i16
  %arrayidx384 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  store i16 %conv383, i16* %arrayidx384, align 2
  %341 = load i16*, i16** %pred_mv, align 8
  %arrayidx385 = getelementptr inbounds i16, i16* %341, i64 1
  %342 = load i16, i16* %arrayidx385, align 2
  %conv386 = sext i16 %342 to i32
  %div387 = sdiv i32 %conv386, 4
  %conv388 = trunc i32 %div387 to i16
  %arrayidx389 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  store i16 %conv388, i16* %arrayidx389, align 2
  %343 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt390 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %343, i32 0, i32 113
  %344 = load i32, i32* %rdopt390, align 4
  %tobool391 = icmp ne i32 %344, 0
  br i1 %tobool391, label %if.end.405, label %if.then.392

if.then.392:                                      ; preds = %if.else.379
  %345 = load i32, i32* %search_range.addr, align 4
  %sub393 = sub nsw i32 0, %345
  %346 = load i32, i32* %search_range.addr, align 4
  %arrayidx394 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  %347 = load i16, i16* %arrayidx394, align 2
  %conv395 = sext i16 %347 to i32
  %call396 = call i32 @iClip3(i32 %sub393, i32 %346, i32 %conv395)
  %conv397 = trunc i32 %call396 to i16
  %arrayidx398 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  store i16 %conv397, i16* %arrayidx398, align 2
  %348 = load i32, i32* %search_range.addr, align 4
  %sub399 = sub nsw i32 0, %348
  %349 = load i32, i32* %search_range.addr, align 4
  %arrayidx400 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  %350 = load i16, i16* %arrayidx400, align 2
  %conv401 = sext i16 %350 to i32
  %call402 = call i32 @iClip3(i32 %sub399, i32 %349, i32 %conv401)
  %conv403 = trunc i32 %call402 to i16
  %arrayidx404 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  store i16 %conv403, i16* %arrayidx404, align 2
  br label %if.end.405

if.end.405:                                       ; preds = %if.then.392, %if.else.379
  %351 = load i32, i32* %search_range.addr, align 4
  %add406 = add nsw i32 -2047, %351
  %352 = load i32, i32* %search_range.addr, align 4
  %sub407 = sub nsw i32 2047, %352
  %arrayidx408 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  %353 = load i16, i16* %arrayidx408, align 2
  %conv409 = sext i16 %353 to i32
  %call410 = call i32 @iClip3(i32 %add406, i32 %sub407, i32 %conv409)
  %conv411 = trunc i32 %call410 to i16
  %arrayidx412 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  store i16 %conv411, i16* %arrayidx412, align 2
  %354 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex413 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %354, i32 0, i32 2
  %355 = load i32, i32* %LevelIndex413, align 4
  %idxprom414 = sext i32 %355 to i64
  %arrayidx415 = getelementptr inbounds [17 x [6 x i32]], [17 x [6 x i32]]* @LEVELMVLIMIT, i32 0, i64 %idxprom414
  %arrayidx416 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx415, i32 0, i64 0
  %356 = load i32, i32* %arrayidx416, align 4
  %357 = load i32, i32* %search_range.addr, align 4
  %add417 = add nsw i32 %356, %357
  %358 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex418 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %358, i32 0, i32 2
  %359 = load i32, i32* %LevelIndex418, align 4
  %idxprom419 = sext i32 %359 to i64
  %arrayidx420 = getelementptr inbounds [17 x [6 x i32]], [17 x [6 x i32]]* @LEVELMVLIMIT, i32 0, i64 %idxprom419
  %arrayidx421 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx420, i32 0, i64 1
  %360 = load i32, i32* %arrayidx421, align 4
  %361 = load i32, i32* %search_range.addr, align 4
  %sub422 = sub nsw i32 %360, %361
  %arrayidx423 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  %362 = load i16, i16* %arrayidx423, align 2
  %conv424 = sext i16 %362 to i32
  %call425 = call i32 @iClip3(i32 %add417, i32 %sub422, i32 %conv424)
  %conv426 = trunc i32 %call425 to i16
  %arrayidx427 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  store i16 %conv426, i16* %arrayidx427, align 2
  %363 = load i16, i16* %ref.addr, align 2
  %364 = load i32, i32* %list.addr, align 4
  %365 = load i32, i32* %pic_pix_x, align 4
  %366 = load i32, i32* %pic_pix_y, align 4
  %367 = load i32, i32* %blocktype.addr, align 4
  %368 = load i16*, i16** %pred_mv, align 8
  %arrayidx428 = getelementptr inbounds i16, i16* %368, i64 0
  %369 = load i16, i16* %arrayidx428, align 2
  %370 = load i16*, i16** %pred_mv, align 8
  %arrayidx429 = getelementptr inbounds i16, i16* %370, i64 1
  %371 = load i16, i16* %arrayidx429, align 2
  %arrayidx430 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  %arrayidx431 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  %372 = load i32, i32* %search_range.addr, align 4
  %373 = load i32, i32* %min_mcost, align 4
  %374 = load i32*, i32** %lambda_factor.addr, align 8
  %arrayidx432 = getelementptr inbounds i32, i32* %374, i64 0
  %375 = load i32, i32* %arrayidx432, align 4
  %call433 = call i32 @FullPelBlockMotionSearch(i16* getelementptr inbounds ([768 x i16], [768 x i16]* @orig_pic, i32 0, i32 0), i16 signext %363, i32 %364, i32 %365, i32 %366, i32 %367, i16 signext %369, i16 signext %371, i16* %arrayidx430, i16* %arrayidx431, i32 %372, i32 %373, i32 %375)
  store i32 %call433, i32* %min_mcost, align 4
  br label %if.end.434

if.end.434:                                       ; preds = %if.end.405, %if.then.372
  br label %if.end.435

if.end.435:                                       ; preds = %if.end.434, %if.end.326
  br label %if.end.436

if.end.436:                                       ; preds = %if.end.435, %for.end.274
  br label %if.end.437

if.end.437:                                       ; preds = %if.end.436, %if.end.141
  %376 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid438 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %376, i32 0, i32 101
  %377 = load i32, i32* %EPZSSubPelGrid438, align 4
  %cmp439 = icmp eq i32 %377, 0
  br i1 %cmp439, label %if.then.444, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.437
  %378 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode441 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %378, i32 0, i32 169
  %379 = load i32, i32* %SearchMode441, align 4
  %cmp442 = icmp ne i32 %379, 3
  br i1 %cmp442, label %if.then.444, label %if.end.453

if.then.444:                                      ; preds = %lor.lhs.false, %if.end.437
  %arrayidx445 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  %380 = load i16, i16* %arrayidx445, align 2
  %conv446 = sext i16 %380 to i32
  %shl447 = shl i32 %conv446, 2
  %conv448 = trunc i32 %shl447 to i16
  store i16 %conv448, i16* %arrayidx445, align 2
  %arrayidx449 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  %381 = load i16, i16* %arrayidx449, align 2
  %conv450 = sext i16 %381 to i32
  %shl451 = shl i32 %conv450, 2
  %conv452 = trunc i32 %shl451 to i16
  store i16 %conv452, i16* %arrayidx449, align 2
  br label %if.end.453

if.end.453:                                       ; preds = %if.then.444, %lor.lhs.false
  %382 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ChromaMEEnable454 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %382, i32 0, i32 198
  %383 = load i32, i32* %ChromaMEEnable454, align 4
  %cmp455 = icmp eq i32 %383, 2
  %cond457 = select i1 %cmp455, i32 1, i32 0
  store i32 %cond457, i32* @ChromaMEEnable, align 4
  %384 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %DisableSubpelME = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %384, i32 0, i32 6
  %385 = load i32, i32* %DisableSubpelME, align 4
  %tobool458 = icmp ne i32 %385, 0
  br i1 %tobool458, label %if.end.548, label %if.then.459

if.then.459:                                      ; preds = %if.end.453
  %386 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode460 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %386, i32 0, i32 169
  %387 = load i32, i32* %SearchMode460, align 4
  %cmp461 = icmp ne i32 %387, 3
  br i1 %cmp461, label %if.then.483, label %lor.lhs.false.463

lor.lhs.false.463:                                ; preds = %if.then.459
  %388 = load i16, i16* %ref.addr, align 2
  %conv464 = sext i16 %388 to i32
  %cmp465 = icmp eq i32 %conv464, 0
  br i1 %cmp465, label %if.then.483, label %lor.lhs.false.467

lor.lhs.false.467:                                ; preds = %lor.lhs.false.463
  %389 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %389, i32 0, i32 6
  %390 = load i32, i32* %structure, align 4
  %cmp468 = icmp ne i32 %390, 0
  br i1 %cmp468, label %if.then.483, label %lor.lhs.false.470

lor.lhs.false.470:                                ; preds = %lor.lhs.false.467
  %391 = load i16, i16* %ref.addr, align 2
  %conv471 = sext i16 %391 to i32
  %cmp472 = icmp sgt i32 %conv471, 0
  br i1 %cmp472, label %land.lhs.true.474, label %if.end.547

land.lhs.true.474:                                ; preds = %lor.lhs.false.470
  %392 = load i32, i32* %min_mcost, align 4
  %conv475 = sitofp i32 %392 to double
  %393 = load i32, i32* %pic_pix_x, align 4
  %shr476 = ashr i32 %393, 2
  %idxprom477 = sext i32 %shr476 to i64
  %394 = load i32*, i32** %prevSad, align 8
  %arrayidx478 = getelementptr inbounds i32, i32* %394, i64 %idxprom477
  %395 = load i32, i32* %arrayidx478, align 4
  %conv479 = sitofp i32 %395 to double
  %mul480 = fmul double 3.500000e+00, %conv479
  %cmp481 = fcmp olt double %conv475, %mul480
  br i1 %cmp481, label %if.then.483, label %if.end.547

if.then.483:                                      ; preds = %land.lhs.true.474, %lor.lhs.false.467, %lor.lhs.false.463, %if.then.459
  %396 = load i32, i32* @start_me_refinement_hp, align 4
  %tobool484 = icmp ne i32 %396, 0
  br i1 %tobool484, label %if.end.486, label %if.then.485

if.then.485:                                      ; preds = %if.then.483
  %397 = load i32, i32* %max_value, align 4
  store i32 %397, i32* %min_mcost, align 4
  br label %if.end.486

if.end.486:                                       ; preds = %if.then.485, %if.then.483
  %398 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode487 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %398, i32 0, i32 169
  %399 = load i32, i32* %SearchMode487, align 4
  %cmp488 = icmp eq i32 %399, 1
  br i1 %cmp488, label %if.then.490, label %if.else.507

if.then.490:                                      ; preds = %if.end.486
  %400 = load i32, i32* %blocktype.addr, align 4
  %cmp491 = icmp sgt i32 %400, 3
  br i1 %cmp491, label %if.then.493, label %if.else.500

if.then.493:                                      ; preds = %if.then.490
  %401 = load i16, i16* %ref.addr, align 2
  %402 = load i32, i32* %list.addr, align 4
  %403 = load i32, i32* %pic_pix_x, align 4
  %404 = load i32, i32* %pic_pix_y, align 4
  %405 = load i32, i32* %blocktype.addr, align 4
  %406 = load i16*, i16** %pred_mv, align 8
  %arrayidx494 = getelementptr inbounds i16, i16* %406, i64 0
  %407 = load i16, i16* %arrayidx494, align 2
  %408 = load i16*, i16** %pred_mv, align 8
  %arrayidx495 = getelementptr inbounds i16, i16* %408, i64 1
  %409 = load i16, i16* %arrayidx495, align 2
  %arrayidx496 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  %arrayidx497 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  %410 = load i32, i32* %min_mcost, align 4
  %411 = load i32*, i32** %lambda_factor.addr, align 8
  %arrayidx498 = getelementptr inbounds i32, i32* %411, i64 2
  %412 = load i32, i32* %arrayidx498, align 4
  %call499 = call i32 @UMHEXSubPelBlockMotionSearch(i16* getelementptr inbounds ([768 x i16], [768 x i16]* @orig_pic, i32 0, i32 0), i16 signext %401, i32 %402, i32 %403, i32 %404, i32 %405, i16 signext %407, i16 signext %409, i16* %arrayidx496, i16* %arrayidx497, i32 9, i32 9, i32 %410, i32 %412)
  store i32 %call499, i32* %min_mcost, align 4
  br label %if.end.506

if.else.500:                                      ; preds = %if.then.490
  %413 = load i16, i16* %ref.addr, align 2
  %414 = load i32, i32* %list.addr, align 4
  %415 = load i32, i32* %pic_pix_x, align 4
  %416 = load i32, i32* %pic_pix_y, align 4
  %417 = load i32, i32* %blocktype.addr, align 4
  %418 = load i16*, i16** %pred_mv, align 8
  %arrayidx501 = getelementptr inbounds i16, i16* %418, i64 0
  %419 = load i16, i16* %arrayidx501, align 2
  %420 = load i16*, i16** %pred_mv, align 8
  %arrayidx502 = getelementptr inbounds i16, i16* %420, i64 1
  %421 = load i16, i16* %arrayidx502, align 2
  %arrayidx503 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  %arrayidx504 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  %422 = load i32, i32* %min_mcost, align 4
  %423 = load i32*, i32** %lambda_factor.addr, align 8
  %call505 = call i32 @SubPelBlockMotionSearch(i16* getelementptr inbounds ([768 x i16], [768 x i16]* @orig_pic, i32 0, i32 0), i16 signext %413, i32 %414, i32 %415, i32 %416, i32 %417, i16 signext %419, i16 signext %421, i16* %arrayidx503, i16* %arrayidx504, i32 9, i32 9, i32 %422, i32* %423)
  store i32 %call505, i32* %min_mcost, align 4
  br label %if.end.506

if.end.506:                                       ; preds = %if.else.500, %if.then.493
  br label %if.end.546

if.else.507:                                      ; preds = %if.end.486
  %424 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode508 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %424, i32 0, i32 169
  %425 = load i32, i32* %SearchMode508, align 4
  %cmp509 = icmp eq i32 %425, 2
  br i1 %cmp509, label %if.then.511, label %if.else.529

if.then.511:                                      ; preds = %if.else.507
  %426 = load i32, i32* %blocktype.addr, align 4
  %cmp512 = icmp sgt i32 %426, 1
  br i1 %cmp512, label %if.then.514, label %if.else.521

if.then.514:                                      ; preds = %if.then.511
  %427 = load i16, i16* %ref.addr, align 2
  %428 = load i32, i32* %list.addr, align 4
  %429 = load i32, i32* %pic_pix_x, align 4
  %430 = load i32, i32* %pic_pix_y, align 4
  %431 = load i32, i32* %blocktype.addr, align 4
  %432 = load i16*, i16** %pred_mv, align 8
  %arrayidx515 = getelementptr inbounds i16, i16* %432, i64 0
  %433 = load i16, i16* %arrayidx515, align 2
  %434 = load i16*, i16** %pred_mv, align 8
  %arrayidx516 = getelementptr inbounds i16, i16* %434, i64 1
  %435 = load i16, i16* %arrayidx516, align 2
  %arrayidx517 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  %arrayidx518 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  %436 = load i32, i32* %min_mcost, align 4
  %437 = load i32*, i32** %lambda_factor.addr, align 8
  %arrayidx519 = getelementptr inbounds i32, i32* %437, i64 2
  %438 = load i32, i32* %arrayidx519, align 4
  %call520 = call i32 @smpUMHEXSubPelBlockMotionSearch(i16* getelementptr inbounds ([768 x i16], [768 x i16]* @orig_pic, i32 0, i32 0), i16 signext %427, i32 %428, i32 %429, i32 %430, i32 %431, i16 signext %433, i16 signext %435, i16* %arrayidx517, i16* %arrayidx518, i32 9, i32 9, i32 %436, i32 %438)
  store i32 %call520, i32* %min_mcost, align 4
  br label %if.end.528

if.else.521:                                      ; preds = %if.then.511
  %439 = load i16, i16* %ref.addr, align 2
  %440 = load i32, i32* %list.addr, align 4
  %441 = load i32, i32* %pic_pix_x, align 4
  %442 = load i32, i32* %pic_pix_y, align 4
  %443 = load i32, i32* %blocktype.addr, align 4
  %444 = load i16*, i16** %pred_mv, align 8
  %arrayidx522 = getelementptr inbounds i16, i16* %444, i64 0
  %445 = load i16, i16* %arrayidx522, align 2
  %446 = load i16*, i16** %pred_mv, align 8
  %arrayidx523 = getelementptr inbounds i16, i16* %446, i64 1
  %447 = load i16, i16* %arrayidx523, align 2
  %arrayidx524 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  %arrayidx525 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  %448 = load i32, i32* %min_mcost, align 4
  %449 = load i32*, i32** %lambda_factor.addr, align 8
  %arrayidx526 = getelementptr inbounds i32, i32* %449, i64 2
  %450 = load i32, i32* %arrayidx526, align 4
  %call527 = call i32 @smpUMHEXFullSubPelBlockMotionSearch(i16* getelementptr inbounds ([768 x i16], [768 x i16]* @orig_pic, i32 0, i32 0), i16 signext %439, i32 %440, i32 %441, i32 %442, i32 %443, i16 signext %445, i16 signext %447, i16* %arrayidx524, i16* %arrayidx525, i32 9, i32 9, i32 %448, i32 %450)
  store i32 %call527, i32* %min_mcost, align 4
  br label %if.end.528

if.end.528:                                       ; preds = %if.else.521, %if.then.514
  br label %if.end.545

if.else.529:                                      ; preds = %if.else.507
  %451 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode530 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %451, i32 0, i32 169
  %452 = load i32, i32* %SearchMode530, align 4
  %cmp531 = icmp eq i32 %452, 3
  br i1 %cmp531, label %land.lhs.true.533, label %if.else.538

land.lhs.true.533:                                ; preds = %if.else.529
  %453 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelME = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %453, i32 0, i32 102
  %454 = load i32, i32* %EPZSSubPelME, align 4
  %tobool534 = icmp ne i32 %454, 0
  br i1 %tobool534, label %if.then.535, label %if.else.538

if.then.535:                                      ; preds = %land.lhs.true.533
  %455 = load i16, i16* %ref.addr, align 2
  %456 = load i32, i32* %list.addr, align 4
  %457 = load i32, i32* %pic_pix_x, align 4
  %458 = load i32, i32* %pic_pix_y, align 4
  %459 = load i32, i32* %blocktype.addr, align 4
  %460 = load i16*, i16** %pred_mv, align 8
  %arraydecay536 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i32 0
  %461 = load i32, i32* %min_mcost, align 4
  %462 = load i32*, i32** %lambda_factor.addr, align 8
  %call537 = call i32 @EPZSSubPelBlockMotionSearch(i16* getelementptr inbounds ([768 x i16], [768 x i16]* @orig_pic, i32 0, i32 0), i16 signext %455, i32 %456, i32 %457, i32 %458, i32 %459, i16* %460, i16* %arraydecay536, i32 9, i32 9, i32 %461, i32* %462)
  store i32 %call537, i32* %min_mcost, align 4
  br label %if.end.544

if.else.538:                                      ; preds = %land.lhs.true.533, %if.else.529
  %463 = load i16, i16* %ref.addr, align 2
  %464 = load i32, i32* %list.addr, align 4
  %465 = load i32, i32* %pic_pix_x, align 4
  %466 = load i32, i32* %pic_pix_y, align 4
  %467 = load i32, i32* %blocktype.addr, align 4
  %468 = load i16*, i16** %pred_mv, align 8
  %arrayidx539 = getelementptr inbounds i16, i16* %468, i64 0
  %469 = load i16, i16* %arrayidx539, align 2
  %470 = load i16*, i16** %pred_mv, align 8
  %arrayidx540 = getelementptr inbounds i16, i16* %470, i64 1
  %471 = load i16, i16* %arrayidx540, align 2
  %arrayidx541 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  %arrayidx542 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  %472 = load i32, i32* %min_mcost, align 4
  %473 = load i32*, i32** %lambda_factor.addr, align 8
  %call543 = call i32 @SubPelBlockMotionSearch(i16* getelementptr inbounds ([768 x i16], [768 x i16]* @orig_pic, i32 0, i32 0), i16 signext %463, i32 %464, i32 %465, i32 %466, i32 %467, i16 signext %469, i16 signext %471, i16* %arrayidx541, i16* %arrayidx542, i32 9, i32 9, i32 %472, i32* %473)
  store i32 %call543, i32* %min_mcost, align 4
  br label %if.end.544

if.end.544:                                       ; preds = %if.else.538, %if.then.535
  br label %if.end.545

if.end.545:                                       ; preds = %if.end.544, %if.end.528
  br label %if.end.546

if.end.546:                                       ; preds = %if.end.545, %if.end.506
  br label %if.end.547

if.end.547:                                       ; preds = %if.end.546, %land.lhs.true.474, %lor.lhs.false.470
  br label %if.end.548

if.end.548:                                       ; preds = %if.end.547, %if.end.453
  %474 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt549 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %474, i32 0, i32 113
  %475 = load i32, i32* %rdopt549, align 4
  %tobool550 = icmp ne i32 %475, 0
  br i1 %tobool550, label %if.end.588, label %if.then.551

if.then.551:                                      ; preds = %if.end.548
  %476 = load i32, i32* %blocktype.addr, align 4
  %cmp552 = icmp eq i32 %476, 1
  br i1 %cmp552, label %land.lhs.true.554, label %if.end.587

land.lhs.true.554:                                ; preds = %if.then.551
  %477 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %477, i32 0, i32 5
  %478 = load i32, i32* %type, align 4
  %cmp555 = icmp eq i32 %478, 0
  br i1 %cmp555, label %if.then.561, label %lor.lhs.false.557

lor.lhs.false.557:                                ; preds = %land.lhs.true.554
  %479 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type558 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %479, i32 0, i32 5
  %480 = load i32, i32* %type558, align 4
  %cmp559 = icmp eq i32 %480, 3
  br i1 %cmp559, label %if.then.561, label %if.end.587

if.then.561:                                      ; preds = %lor.lhs.false.557, %land.lhs.true.554
  call void @FindSkipModeMotionVector()
  %call562 = call i32 @GetSkipCostMB()
  store i32 %call562, i32* %cost, align 4
  %481 = load i32*, i32** %lambda_factor.addr, align 8
  %arrayidx563 = getelementptr inbounds i32, i32* %481, i64 2
  %482 = load i32, i32* %arrayidx563, align 4
  %add564 = add nsw i32 %482, 4096
  %shr565 = ashr i32 %add564, 13
  %483 = load i32, i32* %cost, align 4
  %sub566 = sub nsw i32 %483, %shr565
  store i32 %sub566, i32* %cost, align 4
  %484 = load i32, i32* %cost, align 4
  %485 = load i32, i32* %min_mcost, align 4
  %cmp567 = icmp slt i32 %484, %485
  br i1 %cmp567, label %if.then.569, label %if.end.586

if.then.569:                                      ; preds = %if.then.561
  %486 = load i32, i32* %cost, align 4
  store i32 %486, i32* %min_mcost, align 4
  %487 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv570 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %487, i32 0, i32 80
  %488 = load i16******, i16******* %all_mv570, align 8
  %arrayidx571 = getelementptr inbounds i16*****, i16****** %488, i64 0
  %489 = load i16*****, i16****** %arrayidx571, align 8
  %arrayidx572 = getelementptr inbounds i16****, i16***** %489, i64 0
  %490 = load i16****, i16***** %arrayidx572, align 8
  %arrayidx573 = getelementptr inbounds i16***, i16**** %490, i64 0
  %491 = load i16***, i16**** %arrayidx573, align 8
  %arrayidx574 = getelementptr inbounds i16**, i16*** %491, i64 0
  %492 = load i16**, i16*** %arrayidx574, align 8
  %arrayidx575 = getelementptr inbounds i16*, i16** %492, i64 0
  %493 = load i16*, i16** %arrayidx575, align 8
  %arrayidx576 = getelementptr inbounds i16, i16* %493, i64 0
  %494 = load i16, i16* %arrayidx576, align 2
  %arrayidx577 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  store i16 %494, i16* %arrayidx577, align 2
  %495 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv578 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %495, i32 0, i32 80
  %496 = load i16******, i16******* %all_mv578, align 8
  %arrayidx579 = getelementptr inbounds i16*****, i16****** %496, i64 0
  %497 = load i16*****, i16****** %arrayidx579, align 8
  %arrayidx580 = getelementptr inbounds i16****, i16***** %497, i64 0
  %498 = load i16****, i16***** %arrayidx580, align 8
  %arrayidx581 = getelementptr inbounds i16***, i16**** %498, i64 0
  %499 = load i16***, i16**** %arrayidx581, align 8
  %arrayidx582 = getelementptr inbounds i16**, i16*** %499, i64 0
  %500 = load i16**, i16*** %arrayidx582, align 8
  %arrayidx583 = getelementptr inbounds i16*, i16** %500, i64 0
  %501 = load i16*, i16** %arrayidx583, align 8
  %arrayidx584 = getelementptr inbounds i16, i16* %501, i64 1
  %502 = load i16, i16* %arrayidx584, align 2
  %arrayidx585 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  store i16 %502, i16* %arrayidx585, align 2
  br label %if.end.586

if.end.586:                                       ; preds = %if.then.569, %if.then.561
  br label %if.end.587

if.end.587:                                       ; preds = %if.end.586, %lor.lhs.false.557, %if.then.551
  br label %if.end.588

if.end.588:                                       ; preds = %if.end.587, %if.end.548
  %503 = load i32, i32* %block_y, align 4
  store i32 %503, i32* %j, align 4
  br label %for.cond.589

for.cond.589:                                     ; preds = %for.inc.628, %if.end.588
  %504 = load i32, i32* %j, align 4
  %505 = load i32, i32* %block_y, align 4
  %506 = load i32, i32* %bsy, align 4
  %shr590 = ashr i32 %506, 2
  %add591 = add nsw i32 %505, %shr590
  %cmp592 = icmp slt i32 %504, %add591
  br i1 %cmp592, label %for.body.594, label %for.end.630

for.body.594:                                     ; preds = %for.cond.589
  %507 = load i32, i32* %block_x, align 4
  store i32 %507, i32* %i, align 4
  br label %for.cond.595

for.cond.595:                                     ; preds = %for.inc.625, %for.body.594
  %508 = load i32, i32* %i, align 4
  %509 = load i32, i32* %block_x, align 4
  %510 = load i32, i32* %bsx, align 4
  %shr596 = ashr i32 %510, 2
  %add597 = add nsw i32 %509, %shr596
  %cmp598 = icmp slt i32 %508, %add597
  br i1 %cmp598, label %for.body.600, label %for.end.627

for.body.600:                                     ; preds = %for.cond.595
  %arrayidx601 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  %511 = load i16, i16* %arrayidx601, align 2
  %512 = load i32, i32* %blocktype.addr, align 4
  %idxprom602 = sext i32 %512 to i64
  %513 = load i16, i16* %ref.addr, align 2
  %idxprom603 = sext i16 %513 to i64
  %514 = load i32, i32* %list.addr, align 4
  %idxprom604 = sext i32 %514 to i64
  %515 = load i32, i32* %i, align 4
  %idxprom605 = sext i32 %515 to i64
  %516 = load i32, i32* %j, align 4
  %idxprom606 = sext i32 %516 to i64
  %517 = load i16******, i16******* %all_mv, align 8
  %arrayidx607 = getelementptr inbounds i16*****, i16****** %517, i64 %idxprom606
  %518 = load i16*****, i16****** %arrayidx607, align 8
  %arrayidx608 = getelementptr inbounds i16****, i16***** %518, i64 %idxprom605
  %519 = load i16****, i16***** %arrayidx608, align 8
  %arrayidx609 = getelementptr inbounds i16***, i16**** %519, i64 %idxprom604
  %520 = load i16***, i16**** %arrayidx609, align 8
  %arrayidx610 = getelementptr inbounds i16**, i16*** %520, i64 %idxprom603
  %521 = load i16**, i16*** %arrayidx610, align 8
  %arrayidx611 = getelementptr inbounds i16*, i16** %521, i64 %idxprom602
  %522 = load i16*, i16** %arrayidx611, align 8
  %arrayidx612 = getelementptr inbounds i16, i16* %522, i64 0
  store i16 %511, i16* %arrayidx612, align 2
  %arrayidx613 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  %523 = load i16, i16* %arrayidx613, align 2
  %524 = load i32, i32* %blocktype.addr, align 4
  %idxprom614 = sext i32 %524 to i64
  %525 = load i16, i16* %ref.addr, align 2
  %idxprom615 = sext i16 %525 to i64
  %526 = load i32, i32* %list.addr, align 4
  %idxprom616 = sext i32 %526 to i64
  %527 = load i32, i32* %i, align 4
  %idxprom617 = sext i32 %527 to i64
  %528 = load i32, i32* %j, align 4
  %idxprom618 = sext i32 %528 to i64
  %529 = load i16******, i16******* %all_mv, align 8
  %arrayidx619 = getelementptr inbounds i16*****, i16****** %529, i64 %idxprom618
  %530 = load i16*****, i16****** %arrayidx619, align 8
  %arrayidx620 = getelementptr inbounds i16****, i16***** %530, i64 %idxprom617
  %531 = load i16****, i16***** %arrayidx620, align 8
  %arrayidx621 = getelementptr inbounds i16***, i16**** %531, i64 %idxprom616
  %532 = load i16***, i16**** %arrayidx621, align 8
  %arrayidx622 = getelementptr inbounds i16**, i16*** %532, i64 %idxprom615
  %533 = load i16**, i16*** %arrayidx622, align 8
  %arrayidx623 = getelementptr inbounds i16*, i16** %533, i64 %idxprom614
  %534 = load i16*, i16** %arrayidx623, align 8
  %arrayidx624 = getelementptr inbounds i16, i16* %534, i64 1
  store i16 %523, i16* %arrayidx624, align 2
  br label %for.inc.625

for.inc.625:                                      ; preds = %for.body.600
  %535 = load i32, i32* %i, align 4
  %inc626 = add nsw i32 %535, 1
  store i32 %inc626, i32* %i, align 4
  br label %for.cond.595

for.end.627:                                      ; preds = %for.cond.595
  br label %for.inc.628

for.inc.628:                                      ; preds = %for.end.627
  %536 = load i32, i32* %j, align 4
  %inc629 = add nsw i32 %536, 1
  store i32 %inc629, i32* %j, align 4
  br label %for.cond.589

for.end.630:                                      ; preds = %for.cond.589
  %537 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type631 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %537, i32 0, i32 5
  %538 = load i32, i32* %type631, align 4
  %cmp632 = icmp eq i32 %538, 1
  br i1 %cmp632, label %land.lhs.true.634, label %if.end.1024

land.lhs.true.634:                                ; preds = %for.end.630
  %539 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %539, i32 0, i32 46
  %540 = load i32, i32* %BiPredMotionEstimation, align 4
  %cmp635 = icmp ne i32 %540, 0
  br i1 %cmp635, label %land.lhs.true.637, label %if.end.1024

land.lhs.true.637:                                ; preds = %land.lhs.true.634
  %541 = load i32, i32* %blocktype.addr, align 4
  %cmp638 = icmp eq i32 %541, 1
  br i1 %cmp638, label %land.lhs.true.640, label %if.end.1024

land.lhs.true.640:                                ; preds = %land.lhs.true.637
  %542 = load i16, i16* %ref.addr, align 2
  %conv641 = sext i16 %542 to i32
  %cmp642 = icmp eq i32 %conv641, 0
  br i1 %cmp642, label %if.then.644, label %if.end.1024

if.then.644:                                      ; preds = %land.lhs.true.640
  %543 = load i32, i32* %list.addr, align 4
  %tobool645 = icmp ne i32 %543, 0
  br i1 %tobool645, label %cond.true.646, label %cond.false.647

cond.true.646:                                    ; preds = %if.then.644
  %544 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %544, i32 0, i32 81
  %545 = load i16******, i16******* %bipred_mv1, align 8
  br label %cond.end.648

cond.false.647:                                   ; preds = %if.then.644
  %546 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bipred_mv2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %546, i32 0, i32 82
  %547 = load i16******, i16******* %bipred_mv2, align 8
  br label %cond.end.648

cond.end.648:                                     ; preds = %cond.false.647, %cond.true.646
  %cond649 = phi i16****** [ %545, %cond.true.646 ], [ %547, %cond.false.647 ]
  store i16****** %cond649, i16******* %bipred_mv, align 8
  %548 = load i32, i32* %max_value, align 4
  store i32 %548, i32* %min_mcostbi, align 4
  %549 = bitcast [2 x i16]* %bimv to i8*
  call void @llvm.memset.p0i8.i64(i8* %549, i8 0, i64 4, i32 2, i1 false)
  %550 = bitcast [2 x i16]* %tempmv to i8*
  call void @llvm.memset.p0i8.i64(i8* %550, i8 0, i64 4, i32 2, i1 false)
  store i16* null, i16** %pred_mv1, align 8
  store i16* null, i16** %pred_mv2, align 8
  %551 = load i32, i32* %list.addr, align 4
  %conv650 = trunc i32 %551 to i16
  store i16 %conv650, i16* %iterlist, align 2
  %552 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode651 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %552, i32 0, i32 169
  %553 = load i32, i32* %SearchMode651, align 4
  %cmp652 = icmp eq i32 %553, 1
  br i1 %cmp652, label %if.then.654, label %if.else.668

if.then.654:                                      ; preds = %cond.end.648
  store i32 1, i32* @bipred_flag, align 4
  %arraydecay655 = getelementptr inbounds [2 x i16], [2 x i16]* %pred_mv_bi, i32 0, i32 0
  %554 = load i32, i32* %list.addr, align 4
  %xor = xor i32 %554, 1
  %idxprom656 = sext i32 %xor to i64
  %555 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx657 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %555, i32 0, i32 35
  %556 = load i8***, i8**** %ref_idx657, align 8
  %arrayidx658 = getelementptr inbounds i8**, i8*** %556, i64 %idxprom656
  %557 = load i8**, i8*** %arrayidx658, align 8
  %558 = load i32, i32* %list.addr, align 4
  %cmp659 = icmp eq i32 %558, 0
  %cond661 = select i1 %cmp659, i32 1, i32 0
  %idxprom662 = sext i32 %cond661 to i64
  %559 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv663 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %559, i32 0, i32 38
  %560 = load i16****, i16***** %mv663, align 8
  %arrayidx664 = getelementptr inbounds i16***, i16**** %560, i64 %idxprom662
  %561 = load i16***, i16**** %arrayidx664, align 8
  %562 = load i32, i32* %list.addr, align 4
  %cmp665 = icmp eq i32 %562, 0
  %cond667 = select i1 %cmp665, i32 1, i32 0
  %563 = load i32, i32* %block_x, align 4
  %564 = load i32, i32* %block_y, align 4
  %565 = load i32, i32* %bsx, align 4
  %566 = load i32, i32* %bsy, align 4
  call void @UMHEXSetMotionVectorPredictor(i16* %arraydecay655, i8** %557, i16*** %561, i16 signext 0, i32 %cond667, i32 %563, i32 %564, i32 %565, i32 %566, i32* %search_range.addr)
  br label %if.end.683

if.else.668:                                      ; preds = %cond.end.648
  %arraydecay669 = getelementptr inbounds [2 x i16], [2 x i16]* %pred_mv_bi, i32 0, i32 0
  %567 = load i32, i32* %list.addr, align 4
  %xor670 = xor i32 %567, 1
  %idxprom671 = sext i32 %xor670 to i64
  %568 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx672 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %568, i32 0, i32 35
  %569 = load i8***, i8**** %ref_idx672, align 8
  %arrayidx673 = getelementptr inbounds i8**, i8*** %569, i64 %idxprom671
  %570 = load i8**, i8*** %arrayidx673, align 8
  %571 = load i32, i32* %list.addr, align 4
  %cmp674 = icmp eq i32 %571, 0
  %cond676 = select i1 %cmp674, i32 1, i32 0
  %idxprom677 = sext i32 %cond676 to i64
  %572 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv678 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %572, i32 0, i32 38
  %573 = load i16****, i16***** %mv678, align 8
  %arrayidx679 = getelementptr inbounds i16***, i16**** %573, i64 %idxprom677
  %574 = load i16***, i16**** %arrayidx679, align 8
  %575 = load i32, i32* %list.addr, align 4
  %cmp680 = icmp eq i32 %575, 0
  %cond682 = select i1 %cmp680, i32 1, i32 0
  %576 = load i32, i32* %block_x, align 4
  %577 = load i32, i32* %block_y, align 4
  %578 = load i32, i32* %bsx, align 4
  %579 = load i32, i32* %bsy, align 4
  call void @SetMotionVectorPredictor(i16* %arraydecay669, i8** %570, i16*** %574, i16 signext 0, i32 %cond682, i32 %576, i32 %577, i32 %578, i32 %579)
  br label %if.end.683

if.end.683:                                       ; preds = %if.else.668, %if.then.654
  %580 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode684 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %580, i32 0, i32 169
  %581 = load i32, i32* %SearchMode684, align 4
  %cmp685 = icmp ne i32 %581, 3
  br i1 %cmp685, label %if.then.691, label %lor.lhs.false.687

lor.lhs.false.687:                                ; preds = %if.end.683
  %582 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid688 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %582, i32 0, i32 101
  %583 = load i32, i32* %EPZSSubPelGrid688, align 4
  %cmp689 = icmp eq i32 %583, 0
  br i1 %cmp689, label %if.then.691, label %if.end.704

if.then.691:                                      ; preds = %lor.lhs.false.687, %if.end.683
  %arrayidx692 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  %584 = load i16, i16* %arrayidx692, align 2
  %conv693 = sext i16 %584 to i32
  %add694 = add nsw i32 %conv693, 2
  %shr695 = ashr i32 %add694, 2
  %conv696 = trunc i32 %shr695 to i16
  %arrayidx697 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  store i16 %conv696, i16* %arrayidx697, align 2
  %arrayidx698 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  %585 = load i16, i16* %arrayidx698, align 2
  %conv699 = sext i16 %585 to i32
  %add700 = add nsw i32 %conv699, 2
  %shr701 = ashr i32 %add700, 2
  %conv702 = trunc i32 %shr701 to i16
  %arrayidx703 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  store i16 %conv702, i16* %arrayidx703, align 2
  br label %if.end.704

if.end.704:                                       ; preds = %if.then.691, %lor.lhs.false.687
  store i32 0, i32* %i, align 4
  br label %for.cond.705

for.cond.705:                                     ; preds = %for.inc.861, %if.end.704
  %586 = load i32, i32* %i, align 4
  %587 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMERefinements = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %587, i32 0, i32 47
  %588 = load i32, i32* %BiPredMERefinements, align 4
  %cmp706 = icmp sle i32 %586, %588
  br i1 %cmp706, label %for.body.708, label %for.end.863

for.body.708:                                     ; preds = %for.cond.705
  %589 = load i32, i32* %i, align 4
  %rem709 = srem i32 %589, 2
  %tobool710 = icmp ne i32 %rem709, 0
  br i1 %tobool710, label %if.then.711, label %if.else.723

if.then.711:                                      ; preds = %for.body.708
  %590 = load i16*, i16** %pred_mv, align 8
  store i16* %590, i16** %pred_mv2, align 8
  %arraydecay712 = getelementptr inbounds [2 x i16], [2 x i16]* %pred_mv_bi, i32 0, i32 0
  store i16* %arraydecay712, i16** %pred_mv1, align 8
  %arrayidx713 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 0
  %591 = load i16, i16* %arrayidx713, align 2
  %arrayidx714 = getelementptr inbounds [2 x i16], [2 x i16]* %tempmv, i32 0, i64 0
  store i16 %591, i16* %arrayidx714, align 2
  %arrayidx715 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 1
  %592 = load i16, i16* %arrayidx715, align 2
  %arrayidx716 = getelementptr inbounds [2 x i16], [2 x i16]* %tempmv, i32 0, i64 1
  store i16 %592, i16* %arrayidx716, align 2
  %arrayidx717 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  %593 = load i16, i16* %arrayidx717, align 2
  %arrayidx718 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 0
  store i16 %593, i16* %arrayidx718, align 2
  %arrayidx719 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  %594 = load i16, i16* %arrayidx719, align 2
  %arrayidx720 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 1
  store i16 %594, i16* %arrayidx720, align 2
  %595 = load i32, i32* %list.addr, align 4
  %xor721 = xor i32 %595, 1
  %conv722 = trunc i32 %xor721 to i16
  store i16 %conv722, i16* %iterlist, align 2
  br label %if.end.769

if.else.723:                                      ; preds = %for.body.708
  %596 = load i16*, i16** %pred_mv, align 8
  store i16* %596, i16** %pred_mv1, align 8
  %arraydecay724 = getelementptr inbounds [2 x i16], [2 x i16]* %pred_mv_bi, i32 0, i32 0
  store i16* %arraydecay724, i16** %pred_mv2, align 8
  %597 = load i32, i32* %i, align 4
  %cmp725 = icmp ne i32 %597, 0
  br i1 %cmp725, label %if.then.727, label %if.else.736

if.then.727:                                      ; preds = %if.else.723
  %arrayidx728 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 0
  %598 = load i16, i16* %arrayidx728, align 2
  %arrayidx729 = getelementptr inbounds [2 x i16], [2 x i16]* %tempmv, i32 0, i64 0
  store i16 %598, i16* %arrayidx729, align 2
  %arrayidx730 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 1
  %599 = load i16, i16* %arrayidx730, align 2
  %arrayidx731 = getelementptr inbounds [2 x i16], [2 x i16]* %tempmv, i32 0, i64 1
  store i16 %599, i16* %arrayidx731, align 2
  %arrayidx732 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  %600 = load i16, i16* %arrayidx732, align 2
  %arrayidx733 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 0
  store i16 %600, i16* %arrayidx733, align 2
  %arrayidx734 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  %601 = load i16, i16* %arrayidx734, align 2
  %arrayidx735 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 1
  store i16 %601, i16* %arrayidx735, align 2
  br label %if.end.767

if.else.736:                                      ; preds = %if.else.723
  %arrayidx737 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  %602 = load i16, i16* %arrayidx737, align 2
  %arrayidx738 = getelementptr inbounds [2 x i16], [2 x i16]* %tempmv, i32 0, i64 0
  store i16 %602, i16* %arrayidx738, align 2
  %arrayidx739 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  %603 = load i16, i16* %arrayidx739, align 2
  %arrayidx740 = getelementptr inbounds [2 x i16], [2 x i16]* %tempmv, i32 0, i64 1
  store i16 %603, i16* %arrayidx740, align 2
  %604 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode741 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %604, i32 0, i32 169
  %605 = load i32, i32* %SearchMode741, align 4
  %cmp742 = icmp ne i32 %605, 3
  br i1 %cmp742, label %if.then.748, label %lor.lhs.false.744

lor.lhs.false.744:                                ; preds = %if.else.736
  %606 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid745 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %606, i32 0, i32 101
  %607 = load i32, i32* %EPZSSubPelGrid745, align 4
  %cmp746 = icmp eq i32 %607, 0
  br i1 %cmp746, label %if.then.748, label %if.else.761

if.then.748:                                      ; preds = %lor.lhs.false.744, %if.else.736
  %608 = load i16*, i16** %pred_mv2, align 8
  %arrayidx749 = getelementptr inbounds i16, i16* %608, i64 0
  %609 = load i16, i16* %arrayidx749, align 2
  %conv750 = sext i16 %609 to i32
  %add751 = add nsw i32 %conv750, 2
  %shr752 = ashr i32 %add751, 2
  %conv753 = trunc i32 %shr752 to i16
  %arrayidx754 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 0
  store i16 %conv753, i16* %arrayidx754, align 2
  %610 = load i16*, i16** %pred_mv2, align 8
  %arrayidx755 = getelementptr inbounds i16, i16* %610, i64 1
  %611 = load i16, i16* %arrayidx755, align 2
  %conv756 = sext i16 %611 to i32
  %add757 = add nsw i32 %conv756, 2
  %shr758 = ashr i32 %add757, 2
  %conv759 = trunc i32 %shr758 to i16
  %arrayidx760 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 1
  store i16 %conv759, i16* %arrayidx760, align 2
  br label %if.end.766

if.else.761:                                      ; preds = %lor.lhs.false.744
  %612 = load i16*, i16** %pred_mv2, align 8
  %arrayidx762 = getelementptr inbounds i16, i16* %612, i64 0
  %613 = load i16, i16* %arrayidx762, align 2
  %arrayidx763 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 0
  store i16 %613, i16* %arrayidx763, align 2
  %614 = load i16*, i16** %pred_mv2, align 8
  %arrayidx764 = getelementptr inbounds i16, i16* %614, i64 1
  %615 = load i16, i16* %arrayidx764, align 2
  %arrayidx765 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 1
  store i16 %615, i16* %arrayidx765, align 2
  br label %if.end.766

if.end.766:                                       ; preds = %if.else.761, %if.then.748
  br label %if.end.767

if.end.767:                                       ; preds = %if.end.766, %if.then.727
  %616 = load i32, i32* %list.addr, align 4
  %conv768 = trunc i32 %616 to i16
  store i16 %conv768, i16* %iterlist, align 2
  br label %if.end.769

if.end.769:                                       ; preds = %if.end.767, %if.then.711
  %arrayidx770 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 0
  %617 = load i16, i16* %arrayidx770, align 2
  %arrayidx771 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  store i16 %617, i16* %arrayidx771, align 2
  %arrayidx772 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 1
  %618 = load i16, i16* %arrayidx772, align 2
  %arrayidx773 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  store i16 %618, i16* %arrayidx773, align 2
  %619 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode774 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %619, i32 0, i32 169
  %620 = load i32, i32* %SearchMode774, align 4
  %cmp775 = icmp eq i32 %620, 3
  br i1 %cmp775, label %if.then.777, label %if.else.789

if.then.777:                                      ; preds = %if.end.769
  %621 = load i16, i16* %ref.addr, align 2
  %622 = load i16, i16* %iterlist, align 2
  %conv778 = sext i16 %622 to i32
  %623 = load i32, i32* %list_offset, align 4
  %624 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx779 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %624, i32 0, i32 35
  %625 = load i8***, i8**** %ref_idx779, align 8
  %626 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv780 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %626, i32 0, i32 38
  %627 = load i16****, i16***** %mv780, align 8
  %628 = load i32, i32* %pic_pix_x, align 4
  %629 = load i32, i32* %pic_pix_y, align 4
  %630 = load i32, i32* %blocktype.addr, align 4
  %631 = load i16*, i16** %pred_mv1, align 8
  %632 = load i16*, i16** %pred_mv2, align 8
  %arraydecay781 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i32 0
  %arraydecay782 = getelementptr inbounds [2 x i16], [2 x i16]* %tempmv, i32 0, i32 0
  %633 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMESearchRange = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %633, i32 0, i32 48
  %634 = load i32, i32* %BiPredMESearchRange, align 4
  %635 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid783 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %635, i32 0, i32 101
  %636 = load i32, i32* %EPZSSubPelGrid783, align 4
  %mul784 = mul nsw i32 %636, 2
  %shl785 = shl i32 %634, %mul784
  %637 = load i32, i32* %i, align 4
  %shr786 = ashr i32 %shl785, %637
  %638 = load i32, i32* %min_mcostbi, align 4
  %639 = load i32*, i32** %lambda_factor.addr, align 8
  %arrayidx787 = getelementptr inbounds i32, i32* %639, i64 0
  %640 = load i32, i32* %arrayidx787, align 4
  %call788 = call i32 @EPZSBiPredBlockMotionSearch(i16* getelementptr inbounds ([768 x i16], [768 x i16]* @orig_pic, i32 0, i32 0), i16 signext %621, i32 %conv778, i32 %623, i8*** %625, i16**** %627, i32 %628, i32 %629, i32 %630, i16* %631, i16* %632, i16* %arraydecay781, i16* %arraydecay782, i32 %shr786, i32 %638, i32 %640)
  store i32 %call788, i32* %min_mcostbi, align 4
  br label %if.end.841

if.else.789:                                      ; preds = %if.end.769
  %641 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode790 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %641, i32 0, i32 169
  %642 = load i32, i32* %SearchMode790, align 4
  %cmp791 = icmp eq i32 %642, 1
  br i1 %cmp791, label %if.then.793, label %if.else.807

if.then.793:                                      ; preds = %if.else.789
  %643 = load i16, i16* %ref.addr, align 2
  %644 = load i16, i16* %iterlist, align 2
  %conv794 = sext i16 %644 to i32
  %645 = load i32, i32* %pic_pix_x, align 4
  %646 = load i32, i32* %pic_pix_y, align 4
  %647 = load i32, i32* %blocktype.addr, align 4
  %648 = load i16*, i16** %pred_mv1, align 8
  %arrayidx795 = getelementptr inbounds i16, i16* %648, i64 0
  %649 = load i16, i16* %arrayidx795, align 2
  %650 = load i16*, i16** %pred_mv1, align 8
  %arrayidx796 = getelementptr inbounds i16, i16* %650, i64 1
  %651 = load i16, i16* %arrayidx796, align 2
  %652 = load i16*, i16** %pred_mv2, align 8
  %arrayidx797 = getelementptr inbounds i16, i16* %652, i64 0
  %653 = load i16, i16* %arrayidx797, align 2
  %654 = load i16*, i16** %pred_mv2, align 8
  %arrayidx798 = getelementptr inbounds i16, i16* %654, i64 1
  %655 = load i16, i16* %arrayidx798, align 2
  %arrayidx799 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 0
  %arrayidx800 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 1
  %arrayidx801 = getelementptr inbounds [2 x i16], [2 x i16]* %tempmv, i32 0, i64 0
  %arrayidx802 = getelementptr inbounds [2 x i16], [2 x i16]* %tempmv, i32 0, i64 1
  %656 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMESearchRange803 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %656, i32 0, i32 48
  %657 = load i32, i32* %BiPredMESearchRange803, align 4
  %658 = load i32, i32* %i, align 4
  %shr804 = ashr i32 %657, %658
  %659 = load i32, i32* %min_mcostbi, align 4
  %660 = load i32*, i32** %lambda_factor.addr, align 8
  %arrayidx805 = getelementptr inbounds i32, i32* %660, i64 0
  %661 = load i32, i32* %arrayidx805, align 4
  %call806 = call i32 @UMHEXBipredIntegerPelBlockMotionSearch(i16* getelementptr inbounds ([768 x i16], [768 x i16]* @orig_pic, i32 0, i32 0), i16 signext %643, i32 %conv794, i32 %645, i32 %646, i32 %647, i16 signext %649, i16 signext %651, i16 signext %653, i16 signext %655, i16* %arrayidx799, i16* %arrayidx800, i16* %arrayidx801, i16* %arrayidx802, i32 %shr804, i32 %659, i32 %661)
  store i32 %call806, i32* %min_mcostbi, align 4
  br label %if.end.840

if.else.807:                                      ; preds = %if.else.789
  %662 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode808 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %662, i32 0, i32 169
  %663 = load i32, i32* %SearchMode808, align 4
  %cmp809 = icmp eq i32 %663, 2
  br i1 %cmp809, label %if.then.811, label %if.else.825

if.then.811:                                      ; preds = %if.else.807
  %664 = load i16, i16* %ref.addr, align 2
  %665 = load i16, i16* %iterlist, align 2
  %conv812 = sext i16 %665 to i32
  %666 = load i32, i32* %pic_pix_x, align 4
  %667 = load i32, i32* %pic_pix_y, align 4
  %668 = load i32, i32* %blocktype.addr, align 4
  %669 = load i16*, i16** %pred_mv, align 8
  %arrayidx813 = getelementptr inbounds i16, i16* %669, i64 0
  %670 = load i16, i16* %arrayidx813, align 2
  %671 = load i16*, i16** %pred_mv, align 8
  %arrayidx814 = getelementptr inbounds i16, i16* %671, i64 1
  %672 = load i16, i16* %arrayidx814, align 2
  %673 = load i16*, i16** %pred_mv, align 8
  %arrayidx815 = getelementptr inbounds i16, i16* %673, i64 0
  %674 = load i16, i16* %arrayidx815, align 2
  %675 = load i16*, i16** %pred_mv, align 8
  %arrayidx816 = getelementptr inbounds i16, i16* %675, i64 1
  %676 = load i16, i16* %arrayidx816, align 2
  %arrayidx817 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 0
  %arrayidx818 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 1
  %arrayidx819 = getelementptr inbounds [2 x i16], [2 x i16]* %tempmv, i32 0, i64 0
  %arrayidx820 = getelementptr inbounds [2 x i16], [2 x i16]* %tempmv, i32 0, i64 1
  %677 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMESearchRange821 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %677, i32 0, i32 48
  %678 = load i32, i32* %BiPredMESearchRange821, align 4
  %679 = load i32, i32* %i, align 4
  %shr822 = ashr i32 %678, %679
  %680 = load i32, i32* %min_mcostbi, align 4
  %681 = load i32*, i32** %lambda_factor.addr, align 8
  %arrayidx823 = getelementptr inbounds i32, i32* %681, i64 0
  %682 = load i32, i32* %arrayidx823, align 4
  %call824 = call i32 @smpUMHEXBipredIntegerPelBlockMotionSearch(i16* getelementptr inbounds ([768 x i16], [768 x i16]* @orig_pic, i32 0, i32 0), i16 signext %664, i32 %conv812, i32 %666, i32 %667, i32 %668, i16 signext %670, i16 signext %672, i16 signext %674, i16 signext %676, i16* %arrayidx817, i16* %arrayidx818, i16* %arrayidx819, i16* %arrayidx820, i32 %shr822, i32 %680, i32 %682)
  store i32 %call824, i32* %min_mcostbi, align 4
  br label %if.end.839

if.else.825:                                      ; preds = %if.else.807
  %683 = load i16, i16* %ref.addr, align 2
  %684 = load i16, i16* %iterlist, align 2
  %conv826 = sext i16 %684 to i32
  %685 = load i32, i32* %pic_pix_x, align 4
  %686 = load i32, i32* %pic_pix_y, align 4
  %687 = load i32, i32* %blocktype.addr, align 4
  %688 = load i16*, i16** %pred_mv1, align 8
  %arrayidx827 = getelementptr inbounds i16, i16* %688, i64 0
  %689 = load i16, i16* %arrayidx827, align 2
  %690 = load i16*, i16** %pred_mv1, align 8
  %arrayidx828 = getelementptr inbounds i16, i16* %690, i64 1
  %691 = load i16, i16* %arrayidx828, align 2
  %692 = load i16*, i16** %pred_mv2, align 8
  %arrayidx829 = getelementptr inbounds i16, i16* %692, i64 0
  %693 = load i16, i16* %arrayidx829, align 2
  %694 = load i16*, i16** %pred_mv2, align 8
  %arrayidx830 = getelementptr inbounds i16, i16* %694, i64 1
  %695 = load i16, i16* %arrayidx830, align 2
  %arrayidx831 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 0
  %arrayidx832 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 1
  %arrayidx833 = getelementptr inbounds [2 x i16], [2 x i16]* %tempmv, i32 0, i64 0
  %arrayidx834 = getelementptr inbounds [2 x i16], [2 x i16]* %tempmv, i32 0, i64 1
  %696 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMESearchRange835 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %696, i32 0, i32 48
  %697 = load i32, i32* %BiPredMESearchRange835, align 4
  %698 = load i32, i32* %i, align 4
  %shr836 = ashr i32 %697, %698
  %699 = load i32, i32* %min_mcostbi, align 4
  %700 = load i32*, i32** %lambda_factor.addr, align 8
  %arrayidx837 = getelementptr inbounds i32, i32* %700, i64 0
  %701 = load i32, i32* %arrayidx837, align 4
  %call838 = call i32 @FullPelBlockMotionBiPred(i16* getelementptr inbounds ([768 x i16], [768 x i16]* @orig_pic, i32 0, i32 0), i16 signext %683, i32 %conv826, i32 %685, i32 %686, i32 %687, i16 signext %689, i16 signext %691, i16 signext %693, i16 signext %695, i16* %arrayidx831, i16* %arrayidx832, i16* %arrayidx833, i16* %arrayidx834, i32 %shr836, i32 %699, i32 %701)
  store i32 %call838, i32* %min_mcostbi, align 4
  br label %if.end.839

if.end.839:                                       ; preds = %if.else.825, %if.then.811
  br label %if.end.840

if.end.840:                                       ; preds = %if.end.839, %if.then.793
  br label %if.end.841

if.end.841:                                       ; preds = %if.end.840, %if.then.777
  %arrayidx842 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  %702 = load i16, i16* %arrayidx842, align 2
  %conv843 = sext i16 %702 to i32
  %arrayidx844 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 0
  %703 = load i16, i16* %arrayidx844, align 2
  %conv845 = sext i16 %703 to i32
  %cmp846 = icmp eq i32 %conv843, %conv845
  br i1 %cmp846, label %land.lhs.true.848, label %if.end.856

land.lhs.true.848:                                ; preds = %if.end.841
  %arrayidx849 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  %704 = load i16, i16* %arrayidx849, align 2
  %conv850 = sext i16 %704 to i32
  %arrayidx851 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 1
  %705 = load i16, i16* %arrayidx851, align 2
  %conv852 = sext i16 %705 to i32
  %cmp853 = icmp eq i32 %conv850, %conv852
  br i1 %cmp853, label %if.then.855, label %if.end.856

if.then.855:                                      ; preds = %land.lhs.true.848
  br label %if.end.856

if.end.856:                                       ; preds = %if.then.855, %land.lhs.true.848, %if.end.841
  %arrayidx857 = getelementptr inbounds [2 x i16], [2 x i16]* %tempmv, i32 0, i64 0
  %706 = load i16, i16* %arrayidx857, align 2
  %arrayidx858 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  store i16 %706, i16* %arrayidx858, align 2
  %arrayidx859 = getelementptr inbounds [2 x i16], [2 x i16]* %tempmv, i32 0, i64 1
  %707 = load i16, i16* %arrayidx859, align 2
  %arrayidx860 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  store i16 %707, i16* %arrayidx860, align 2
  br label %for.inc.861

for.inc.861:                                      ; preds = %if.end.856
  %708 = load i32, i32* %i, align 4
  %inc862 = add nsw i32 %708, 1
  store i32 %inc862, i32* %i, align 4
  br label %for.cond.705

for.end.863:                                      ; preds = %for.cond.705
  %709 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode864 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %709, i32 0, i32 169
  %710 = load i32, i32* %SearchMode864, align 4
  %cmp865 = icmp ne i32 %710, 3
  br i1 %cmp865, label %if.then.871, label %lor.lhs.false.867

lor.lhs.false.867:                                ; preds = %for.end.863
  %711 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid868 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %711, i32 0, i32 101
  %712 = load i32, i32* %EPZSSubPelGrid868, align 4
  %cmp869 = icmp eq i32 %712, 0
  br i1 %cmp869, label %if.then.871, label %if.end.892

if.then.871:                                      ; preds = %lor.lhs.false.867, %for.end.863
  %arrayidx872 = getelementptr inbounds [2 x i16], [2 x i16]* %tempmv, i32 0, i64 0
  %713 = load i16, i16* %arrayidx872, align 2
  %conv873 = sext i16 %713 to i32
  %shl874 = shl i32 %conv873, 2
  %conv875 = trunc i32 %shl874 to i16
  %arrayidx876 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  store i16 %conv875, i16* %arrayidx876, align 2
  %arrayidx877 = getelementptr inbounds [2 x i16], [2 x i16]* %tempmv, i32 0, i64 1
  %714 = load i16, i16* %arrayidx877, align 2
  %conv878 = sext i16 %714 to i32
  %shl879 = shl i32 %conv878, 2
  %conv880 = trunc i32 %shl879 to i16
  %arrayidx881 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  store i16 %conv880, i16* %arrayidx881, align 2
  %arrayidx882 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 0
  %715 = load i16, i16* %arrayidx882, align 2
  %conv883 = sext i16 %715 to i32
  %shl884 = shl i32 %conv883, 2
  %conv885 = trunc i32 %shl884 to i16
  %arrayidx886 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 0
  store i16 %conv885, i16* %arrayidx886, align 2
  %arrayidx887 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 1
  %716 = load i16, i16* %arrayidx887, align 2
  %conv888 = sext i16 %716 to i32
  %shl889 = shl i32 %conv888, 2
  %conv890 = trunc i32 %shl889 to i16
  %arrayidx891 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 1
  store i16 %conv890, i16* %arrayidx891, align 2
  br label %if.end.892

if.end.892:                                       ; preds = %if.then.871, %lor.lhs.false.867
  %717 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMESubPel = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %717, i32 0, i32 49
  %718 = load i32, i32* %BiPredMESubPel, align 4
  %tobool893 = icmp ne i32 %718, 0
  br i1 %tobool893, label %land.lhs.true.894, label %if.end.921

land.lhs.true.894:                                ; preds = %if.end.892
  %719 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %DisableSubpelME895 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %719, i32 0, i32 6
  %720 = load i32, i32* %DisableSubpelME895, align 4
  %tobool896 = icmp ne i32 %720, 0
  br i1 %tobool896, label %if.end.921, label %if.then.897

if.then.897:                                      ; preds = %land.lhs.true.894
  %721 = load i32, i32* @start_me_refinement_hp, align 4
  %tobool898 = icmp ne i32 %721, 0
  br i1 %tobool898, label %if.end.900, label %if.then.899

if.then.899:                                      ; preds = %if.then.897
  %722 = load i32, i32* %max_value, align 4
  store i32 %722, i32* %min_mcostbi, align 4
  br label %if.end.900

if.end.900:                                       ; preds = %if.then.899, %if.then.897
  %723 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode901 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %723, i32 0, i32 169
  %724 = load i32, i32* %SearchMode901, align 4
  %cmp902 = icmp eq i32 %724, 3
  br i1 %cmp902, label %land.lhs.true.904, label %if.else.911

land.lhs.true.904:                                ; preds = %if.end.900
  %725 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelMEBiPred = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %725, i32 0, i32 103
  %726 = load i32, i32* %EPZSSubPelMEBiPred, align 4
  %tobool905 = icmp ne i32 %726, 0
  br i1 %tobool905, label %if.then.906, label %if.else.911

if.then.906:                                      ; preds = %land.lhs.true.904
  %727 = load i16, i16* %ref.addr, align 2
  %728 = load i16, i16* %iterlist, align 2
  %conv907 = sext i16 %728 to i32
  %729 = load i32, i32* %pic_pix_x, align 4
  %730 = load i32, i32* %pic_pix_y, align 4
  %731 = load i32, i32* %blocktype.addr, align 4
  %732 = load i16*, i16** %pred_mv2, align 8
  %733 = load i16*, i16** %pred_mv1, align 8
  %arraydecay908 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i32 0
  %arraydecay909 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i32 0
  %734 = load i32, i32* %min_mcostbi, align 4
  %735 = load i32*, i32** %lambda_factor.addr, align 8
  %call910 = call i32 @EPZSSubPelBlockSearchBiPred(i16* getelementptr inbounds ([768 x i16], [768 x i16]* @orig_pic, i32 0, i32 0), i16 signext %727, i32 %conv907, i32 %729, i32 %730, i32 %731, i16* %732, i16* %733, i16* %arraydecay908, i16* %arraydecay909, i32 9, i32 9, i32 %734, i32* %735)
  store i32 %call910, i32* %min_mcostbi, align 4
  br label %if.end.920

if.else.911:                                      ; preds = %land.lhs.true.904, %if.end.900
  %736 = load i16, i16* %ref.addr, align 2
  %737 = load i16, i16* %iterlist, align 2
  %conv912 = sext i16 %737 to i32
  %738 = load i32, i32* %pic_pix_x, align 4
  %739 = load i32, i32* %pic_pix_y, align 4
  %740 = load i32, i32* %blocktype.addr, align 4
  %741 = load i16*, i16** %pred_mv2, align 8
  %arrayidx913 = getelementptr inbounds i16, i16* %741, i64 0
  %742 = load i16, i16* %arrayidx913, align 2
  %743 = load i16*, i16** %pred_mv2, align 8
  %arrayidx914 = getelementptr inbounds i16, i16* %743, i64 1
  %744 = load i16, i16* %arrayidx914, align 2
  %arrayidx915 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 0
  %arrayidx916 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 1
  %arrayidx917 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  %arrayidx918 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  %745 = load i32, i32* %min_mcostbi, align 4
  %746 = load i32*, i32** %lambda_factor.addr, align 8
  %call919 = call i32 @SubPelBlockSearchBiPred(i16* getelementptr inbounds ([768 x i16], [768 x i16]* @orig_pic, i32 0, i32 0), i16 signext %736, i32 %conv912, i32 %738, i32 %739, i32 %740, i16 signext %742, i16 signext %744, i16* %arrayidx915, i16* %arrayidx916, i16* %arrayidx917, i16* %arrayidx918, i32 9, i32 9, i32 %745, i32* %746)
  store i32 %call919, i32* %min_mcostbi, align 4
  br label %if.end.920

if.end.920:                                       ; preds = %if.else.911, %if.then.906
  br label %if.end.921

if.end.921:                                       ; preds = %if.end.920, %land.lhs.true.894, %if.end.892
  %747 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMESubPel922 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %747, i32 0, i32 49
  %748 = load i32, i32* %BiPredMESubPel922, align 4
  %cmp923 = icmp eq i32 %748, 2
  br i1 %cmp923, label %land.lhs.true.925, label %if.end.957

land.lhs.true.925:                                ; preds = %if.end.921
  %749 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %DisableSubpelME926 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %749, i32 0, i32 6
  %750 = load i32, i32* %DisableSubpelME926, align 4
  %tobool927 = icmp ne i32 %750, 0
  br i1 %tobool927, label %if.end.957, label %if.then.928

if.then.928:                                      ; preds = %land.lhs.true.925
  %751 = load i32, i32* @start_me_refinement_hp, align 4
  %tobool929 = icmp ne i32 %751, 0
  br i1 %tobool929, label %lor.lhs.false.930, label %if.then.932

lor.lhs.false.930:                                ; preds = %if.then.928
  %752 = load i32, i32* @start_me_refinement_qp, align 4
  %tobool931 = icmp ne i32 %752, 0
  br i1 %tobool931, label %if.end.933, label %if.then.932

if.then.932:                                      ; preds = %lor.lhs.false.930, %if.then.928
  %753 = load i32, i32* %max_value, align 4
  store i32 %753, i32* %min_mcostbi, align 4
  br label %if.end.933

if.end.933:                                       ; preds = %if.then.932, %lor.lhs.false.930
  %754 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode934 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %754, i32 0, i32 169
  %755 = load i32, i32* %SearchMode934, align 4
  %cmp935 = icmp eq i32 %755, 3
  br i1 %cmp935, label %land.lhs.true.937, label %if.else.946

land.lhs.true.937:                                ; preds = %if.end.933
  %756 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelMEBiPred938 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %756, i32 0, i32 103
  %757 = load i32, i32* %EPZSSubPelMEBiPred938, align 4
  %tobool939 = icmp ne i32 %757, 0
  br i1 %tobool939, label %if.then.940, label %if.else.946

if.then.940:                                      ; preds = %land.lhs.true.937
  %758 = load i16, i16* %ref.addr, align 2
  %759 = load i16, i16* %iterlist, align 2
  %conv941 = sext i16 %759 to i32
  %xor942 = xor i32 %conv941, 1
  %760 = load i32, i32* %pic_pix_x, align 4
  %761 = load i32, i32* %pic_pix_y, align 4
  %762 = load i32, i32* %blocktype.addr, align 4
  %763 = load i16*, i16** %pred_mv1, align 8
  %764 = load i16*, i16** %pred_mv2, align 8
  %arraydecay943 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i32 0
  %arraydecay944 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i32 0
  %765 = load i32, i32* %min_mcostbi, align 4
  %766 = load i32*, i32** %lambda_factor.addr, align 8
  %call945 = call i32 @EPZSSubPelBlockSearchBiPred(i16* getelementptr inbounds ([768 x i16], [768 x i16]* @orig_pic, i32 0, i32 0), i16 signext %758, i32 %xor942, i32 %760, i32 %761, i32 %762, i16* %763, i16* %764, i16* %arraydecay943, i16* %arraydecay944, i32 9, i32 9, i32 %765, i32* %766)
  store i32 %call945, i32* %min_mcostbi, align 4
  br label %if.end.956

if.else.946:                                      ; preds = %land.lhs.true.937, %if.end.933
  %767 = load i16, i16* %ref.addr, align 2
  %768 = load i16, i16* %iterlist, align 2
  %conv947 = sext i16 %768 to i32
  %xor948 = xor i32 %conv947, 1
  %769 = load i32, i32* %pic_pix_x, align 4
  %770 = load i32, i32* %pic_pix_y, align 4
  %771 = load i32, i32* %blocktype.addr, align 4
  %772 = load i16*, i16** %pred_mv1, align 8
  %arrayidx949 = getelementptr inbounds i16, i16* %772, i64 0
  %773 = load i16, i16* %arrayidx949, align 2
  %774 = load i16*, i16** %pred_mv1, align 8
  %arrayidx950 = getelementptr inbounds i16, i16* %774, i64 1
  %775 = load i16, i16* %arrayidx950, align 2
  %arrayidx951 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  %arrayidx952 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  %arrayidx953 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 0
  %arrayidx954 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 1
  %776 = load i32, i32* %min_mcostbi, align 4
  %777 = load i32*, i32** %lambda_factor.addr, align 8
  %call955 = call i32 @SubPelBlockSearchBiPred(i16* getelementptr inbounds ([768 x i16], [768 x i16]* @orig_pic, i32 0, i32 0), i16 signext %767, i32 %xor948, i32 %769, i32 %770, i32 %771, i16 signext %773, i16 signext %775, i16* %arrayidx951, i16* %arrayidx952, i16* %arrayidx953, i16* %arrayidx954, i32 9, i32 9, i32 %776, i32* %777)
  store i32 %call955, i32* %min_mcostbi, align 4
  br label %if.end.956

if.end.956:                                       ; preds = %if.else.946, %if.then.940
  br label %if.end.957

if.end.957:                                       ; preds = %if.end.956, %land.lhs.true.925, %if.end.921
  %778 = load i32, i32* %block_y, align 4
  store i32 %778, i32* %j, align 4
  br label %for.cond.958

for.cond.958:                                     ; preds = %for.inc.1021, %if.end.957
  %779 = load i32, i32* %j, align 4
  %780 = load i32, i32* %block_y, align 4
  %781 = load i32, i32* %bsy, align 4
  %shr959 = ashr i32 %781, 2
  %add960 = add nsw i32 %780, %shr959
  %cmp961 = icmp slt i32 %779, %add960
  br i1 %cmp961, label %for.body.963, label %for.end.1023

for.body.963:                                     ; preds = %for.cond.958
  %782 = load i32, i32* %block_x, align 4
  store i32 %782, i32* %i, align 4
  br label %for.cond.964

for.cond.964:                                     ; preds = %for.inc.1018, %for.body.963
  %783 = load i32, i32* %i, align 4
  %784 = load i32, i32* %block_x, align 4
  %785 = load i32, i32* %bsx, align 4
  %shr965 = ashr i32 %785, 2
  %add966 = add nsw i32 %784, %shr965
  %cmp967 = icmp slt i32 %783, %add966
  br i1 %cmp967, label %for.body.969, label %for.end.1020

for.body.969:                                     ; preds = %for.cond.964
  %arrayidx970 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 0
  %786 = load i16, i16* %arrayidx970, align 2
  %787 = load i32, i32* %blocktype.addr, align 4
  %idxprom971 = sext i32 %787 to i64
  %788 = load i16, i16* %iterlist, align 2
  %idxprom972 = sext i16 %788 to i64
  %789 = load i32, i32* %i, align 4
  %idxprom973 = sext i32 %789 to i64
  %790 = load i32, i32* %j, align 4
  %idxprom974 = sext i32 %790 to i64
  %791 = load i16******, i16******* %bipred_mv, align 8
  %arrayidx975 = getelementptr inbounds i16*****, i16****** %791, i64 %idxprom974
  %792 = load i16*****, i16****** %arrayidx975, align 8
  %arrayidx976 = getelementptr inbounds i16****, i16***** %792, i64 %idxprom973
  %793 = load i16****, i16***** %arrayidx976, align 8
  %arrayidx977 = getelementptr inbounds i16***, i16**** %793, i64 %idxprom972
  %794 = load i16***, i16**** %arrayidx977, align 8
  %arrayidx978 = getelementptr inbounds i16**, i16*** %794, i64 0
  %795 = load i16**, i16*** %arrayidx978, align 8
  %arrayidx979 = getelementptr inbounds i16*, i16** %795, i64 %idxprom971
  %796 = load i16*, i16** %arrayidx979, align 8
  %arrayidx980 = getelementptr inbounds i16, i16* %796, i64 0
  store i16 %786, i16* %arrayidx980, align 2
  %arrayidx981 = getelementptr inbounds [2 x i16], [2 x i16]* %mv, i32 0, i64 1
  %797 = load i16, i16* %arrayidx981, align 2
  %798 = load i32, i32* %blocktype.addr, align 4
  %idxprom982 = sext i32 %798 to i64
  %799 = load i16, i16* %iterlist, align 2
  %idxprom983 = sext i16 %799 to i64
  %800 = load i32, i32* %i, align 4
  %idxprom984 = sext i32 %800 to i64
  %801 = load i32, i32* %j, align 4
  %idxprom985 = sext i32 %801 to i64
  %802 = load i16******, i16******* %bipred_mv, align 8
  %arrayidx986 = getelementptr inbounds i16*****, i16****** %802, i64 %idxprom985
  %803 = load i16*****, i16****** %arrayidx986, align 8
  %arrayidx987 = getelementptr inbounds i16****, i16***** %803, i64 %idxprom984
  %804 = load i16****, i16***** %arrayidx987, align 8
  %arrayidx988 = getelementptr inbounds i16***, i16**** %804, i64 %idxprom983
  %805 = load i16***, i16**** %arrayidx988, align 8
  %arrayidx989 = getelementptr inbounds i16**, i16*** %805, i64 0
  %806 = load i16**, i16*** %arrayidx989, align 8
  %arrayidx990 = getelementptr inbounds i16*, i16** %806, i64 %idxprom982
  %807 = load i16*, i16** %arrayidx990, align 8
  %arrayidx991 = getelementptr inbounds i16, i16* %807, i64 1
  store i16 %797, i16* %arrayidx991, align 2
  %arrayidx992 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 0
  %808 = load i16, i16* %arrayidx992, align 2
  %809 = load i32, i32* %blocktype.addr, align 4
  %idxprom993 = sext i32 %809 to i64
  %810 = load i16, i16* %iterlist, align 2
  %conv994 = sext i16 %810 to i32
  %xor995 = xor i32 %conv994, 1
  %idxprom996 = sext i32 %xor995 to i64
  %811 = load i32, i32* %i, align 4
  %idxprom997 = sext i32 %811 to i64
  %812 = load i32, i32* %j, align 4
  %idxprom998 = sext i32 %812 to i64
  %813 = load i16******, i16******* %bipred_mv, align 8
  %arrayidx999 = getelementptr inbounds i16*****, i16****** %813, i64 %idxprom998
  %814 = load i16*****, i16****** %arrayidx999, align 8
  %arrayidx1000 = getelementptr inbounds i16****, i16***** %814, i64 %idxprom997
  %815 = load i16****, i16***** %arrayidx1000, align 8
  %arrayidx1001 = getelementptr inbounds i16***, i16**** %815, i64 %idxprom996
  %816 = load i16***, i16**** %arrayidx1001, align 8
  %arrayidx1002 = getelementptr inbounds i16**, i16*** %816, i64 0
  %817 = load i16**, i16*** %arrayidx1002, align 8
  %arrayidx1003 = getelementptr inbounds i16*, i16** %817, i64 %idxprom993
  %818 = load i16*, i16** %arrayidx1003, align 8
  %arrayidx1004 = getelementptr inbounds i16, i16* %818, i64 0
  store i16 %808, i16* %arrayidx1004, align 2
  %arrayidx1005 = getelementptr inbounds [2 x i16], [2 x i16]* %bimv, i32 0, i64 1
  %819 = load i16, i16* %arrayidx1005, align 2
  %820 = load i32, i32* %blocktype.addr, align 4
  %idxprom1006 = sext i32 %820 to i64
  %821 = load i16, i16* %iterlist, align 2
  %conv1007 = sext i16 %821 to i32
  %xor1008 = xor i32 %conv1007, 1
  %idxprom1009 = sext i32 %xor1008 to i64
  %822 = load i32, i32* %i, align 4
  %idxprom1010 = sext i32 %822 to i64
  %823 = load i32, i32* %j, align 4
  %idxprom1011 = sext i32 %823 to i64
  %824 = load i16******, i16******* %bipred_mv, align 8
  %arrayidx1012 = getelementptr inbounds i16*****, i16****** %824, i64 %idxprom1011
  %825 = load i16*****, i16****** %arrayidx1012, align 8
  %arrayidx1013 = getelementptr inbounds i16****, i16***** %825, i64 %idxprom1010
  %826 = load i16****, i16***** %arrayidx1013, align 8
  %arrayidx1014 = getelementptr inbounds i16***, i16**** %826, i64 %idxprom1009
  %827 = load i16***, i16**** %arrayidx1014, align 8
  %arrayidx1015 = getelementptr inbounds i16**, i16*** %827, i64 0
  %828 = load i16**, i16*** %arrayidx1015, align 8
  %arrayidx1016 = getelementptr inbounds i16*, i16** %828, i64 %idxprom1006
  %829 = load i16*, i16** %arrayidx1016, align 8
  %arrayidx1017 = getelementptr inbounds i16, i16* %829, i64 1
  store i16 %819, i16* %arrayidx1017, align 2
  br label %for.inc.1018

for.inc.1018:                                     ; preds = %for.body.969
  %830 = load i32, i32* %i, align 4
  %inc1019 = add nsw i32 %830, 1
  store i32 %inc1019, i32* %i, align 4
  br label %for.cond.964

for.end.1020:                                     ; preds = %for.cond.964
  br label %for.inc.1021

for.inc.1021:                                     ; preds = %for.end.1020
  %831 = load i32, i32* %j, align 4
  %inc1022 = add nsw i32 %831, 1
  store i32 %inc1022, i32* %j, align 4
  br label %for.cond.958

for.end.1023:                                     ; preds = %for.cond.958
  br label %if.end.1024

if.end.1024:                                      ; preds = %for.end.1023, %land.lhs.true.640, %land.lhs.true.637, %land.lhs.true.634, %for.end.630
  %call1025 = call i32 @ftime(%struct.timeb* @BlockMotionSearch.tstruct2)
  %832 = load i64, i64* getelementptr inbounds (%struct.timeb, %struct.timeb* @BlockMotionSearch.tstruct2, i32 0, i32 0), align 8
  %mul1026 = mul nsw i64 %832, 1000
  %833 = load i16, i16* getelementptr inbounds (%struct.timeb, %struct.timeb* @BlockMotionSearch.tstruct2, i32 0, i32 1), align 2
  %conv1027 = zext i16 %833 to i64
  %add1028 = add nsw i64 %mul1026, %conv1027
  %834 = load i64, i64* getelementptr inbounds (%struct.timeb, %struct.timeb* @BlockMotionSearch.tstruct1, i32 0, i32 0), align 8
  %mul1029 = mul nsw i64 %834, 1000
  %835 = load i16, i16* getelementptr inbounds (%struct.timeb, %struct.timeb* @BlockMotionSearch.tstruct1, i32 0, i32 1), align 2
  %conv1030 = zext i16 %835 to i64
  %add1031 = add nsw i64 %mul1029, %conv1030
  %sub1032 = sub nsw i64 %add1028, %add1031
  store i64 %sub1032, i64* %me_tmp_time, align 8
  %836 = load i64, i64* %me_tmp_time, align 8
  %837 = load i64, i64* @me_tot_time, align 8
  %add1033 = add nsw i64 %837, %836
  store i64 %add1033, i64* @me_tot_time, align 8
  %838 = load i64, i64* %me_tmp_time, align 8
  %839 = load i64, i64* @me_time, align 8
  %add1034 = add nsw i64 %839, %838
  store i64 %add1034, i64* @me_time, align 8
  %840 = load i32, i32* %min_mcost, align 4
  ret i32 %840
}

declare i32 @ftime(%struct.timeb*) #1

declare void @smpUMHEX_setup(i16 signext, i32, i32, i32, i32, i16******) #1

declare void @UMHEXSetMotionVectorPredictor(i16*, i8**, i16***, i16 signext, i32, i32, i32, i32, i32, i32*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iClip3(i32 %low, i32 %high, i32 %x) #3 {
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

declare i32 @UMHEXIntegerPelBlockMotionSearch(i16*, i16 signext, i32, i32, i32, i32, i16 signext, i16 signext, i16*, i16*, i32, i32, i32) #1

declare i32 @smpUMHEXIntegerPelBlockMotionSearch(i16*, i16 signext, i32, i32, i32, i32, i16 signext, i16 signext, i16*, i16*, i32, i32, i32) #1

declare i32 @EPZSPelBlockMotionSearch(i16*, i16 signext, i32, i32, i8***, i16****, i32, i32, i32, i16*, i16*, i32, i32, i32) #1

declare i32 @FastFullPelBlockMotionSearch(i16*, i16 signext, i32, i32, i32, i32, i16 signext, i16 signext, i16*, i16*, i32, i32, i32) #1

declare i32 @FullPelBlockMotionSearch(i16*, i16 signext, i32, i32, i32, i32, i16 signext, i16 signext, i16*, i16*, i32, i32, i32) #1

declare i32 @UMHEXSubPelBlockMotionSearch(i16*, i16 signext, i32, i32, i32, i32, i16 signext, i16 signext, i16*, i16*, i32, i32, i32, i32) #1

declare i32 @SubPelBlockMotionSearch(i16*, i16 signext, i32, i32, i32, i32, i16 signext, i16 signext, i16*, i16*, i32, i32, i32, i32*) #1

declare i32 @smpUMHEXSubPelBlockMotionSearch(i16*, i16 signext, i32, i32, i32, i32, i16 signext, i16 signext, i16*, i16*, i32, i32, i32, i32) #1

declare i32 @smpUMHEXFullSubPelBlockMotionSearch(i16*, i16 signext, i32, i32, i32, i32, i16 signext, i16 signext, i16*, i16*, i32, i32, i32, i32) #1

declare i32 @EPZSSubPelBlockMotionSearch(i16*, i16 signext, i32, i32, i32, i32, i16*, i16*, i32, i32, i32, i32*) #1

; Function Attrs: nounwind uwtable
define void @FindSkipModeMotionVector() #0 {
entry:
  %bx = alloca i32, align 4
  %by = alloca i32, align 4
  %all_mv = alloca i16******, align 8
  %pmv = alloca [2 x i16], align 2
  %zeroMotionAbove = alloca i32, align 4
  %zeroMotionLeft = alloca i32, align 4
  %mb_a = alloca %struct.pix_pos, align 4
  %mb_b = alloca %struct.pix_pos, align 4
  %a_mv_y = alloca i32, align 4
  %a_ref_idx = alloca i32, align 4
  %b_mv_y = alloca i32, align 4
  %b_ref_idx = alloca i32, align 4
  %mv = alloca i16***, align 8
  %currMB = alloca %struct.macroblock*, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 80
  %1 = load i16******, i16******* %all_mv1, align 8
  store i16****** %1, i16******* %all_mv, align 8
  store i32 0, i32* %a_mv_y, align 4
  store i32 0, i32* %a_ref_idx, align 4
  store i32 0, i32* %b_mv_y, align 4
  store i32 0, i32* %b_ref_idx, align 4
  %2 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv2 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %2, i32 0, i32 38
  %3 = load i16****, i16***** %mv2, align 8
  %arrayidx = getelementptr inbounds i16***, i16**** %3, i64 0
  %4 = load i16***, i16**** %arrayidx, align 8
  store i16*** %4, i16**** %mv, align 8
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 3
  %6 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 61
  %8 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx3 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %8, i64 %idxprom
  store %struct.macroblock* %arrayidx3, %struct.macroblock** %currMB, align 8
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 3
  %10 = load i32, i32* %current_mb_nr4, align 4
  call void @getLuma4x4Neighbour(i32 %10, i32 -1, i32 0, %struct.pix_pos* %mb_a)
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 3
  %12 = load i32, i32* %current_mb_nr5, align 4
  call void @getLuma4x4Neighbour(i32 %12, i32 0, i32 -1, %struct.pix_pos* %mb_b)
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 0
  %13 = load i32, i32* %available, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end.38

if.then:                                          ; preds = %entry
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 4
  %14 = load i32, i32* %pos_x, align 4
  %idxprom6 = sext i32 %14 to i64
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 5
  %15 = load i32, i32* %pos_y, align 4
  %idxprom7 = sext i32 %15 to i64
  %16 = load i16***, i16**** %mv, align 8
  %arrayidx8 = getelementptr inbounds i16**, i16*** %16, i64 %idxprom7
  %17 = load i16**, i16*** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i16*, i16** %17, i64 %idxprom6
  %18 = load i16*, i16** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %18, i64 1
  %19 = load i16, i16* %arrayidx10, align 2
  %conv = sext i16 %19 to i32
  store i32 %conv, i32* %a_mv_y, align 4
  %pos_x11 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 4
  %20 = load i32, i32* %pos_x11, align 4
  %idxprom12 = sext i32 %20 to i64
  %pos_y13 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 5
  %21 = load i32, i32* %pos_y13, align 4
  %idxprom14 = sext i32 %21 to i64
  %22 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %22, i32 0, i32 35
  %23 = load i8***, i8**** %ref_idx, align 8
  %arrayidx15 = getelementptr inbounds i8**, i8*** %23, i64 0
  %24 = load i8**, i8*** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %24, i64 %idxprom14
  %25 = load i8*, i8** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %25, i64 %idxprom12
  %26 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %26 to i32
  store i32 %conv18, i32* %a_ref_idx, align 4
  %27 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %27, i32 0, i32 19
  %28 = load i32, i32* %mb_field, align 4
  %tobool19 = icmp ne i32 %28, 0
  br i1 %tobool19, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 1
  %29 = load i32, i32* %mb_addr, align 4
  %idxprom20 = sext i32 %29 to i64
  %30 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data21 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %30, i32 0, i32 61
  %31 = load %struct.macroblock*, %struct.macroblock** %mb_data21, align 8
  %arrayidx22 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %31, i64 %idxprom20
  %mb_field23 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx22, i32 0, i32 19
  %32 = load i32, i32* %mb_field23, align 4
  %tobool24 = icmp ne i32 %32, 0
  br i1 %tobool24, label %if.end, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true
  %33 = load i32, i32* %a_mv_y, align 4
  %div = sdiv i32 %33, 2
  store i32 %div, i32* %a_mv_y, align 4
  %34 = load i32, i32* %a_ref_idx, align 4
  %mul = mul nsw i32 %34, 2
  store i32 %mul, i32* %a_ref_idx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.25, %land.lhs.true, %if.then
  %35 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field26 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %35, i32 0, i32 19
  %36 = load i32, i32* %mb_field26, align 4
  %tobool27 = icmp ne i32 %36, 0
  br i1 %tobool27, label %if.end.37, label %land.lhs.true.28

land.lhs.true.28:                                 ; preds = %if.end
  %mb_addr29 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 1
  %37 = load i32, i32* %mb_addr29, align 4
  %idxprom30 = sext i32 %37 to i64
  %38 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %38, i32 0, i32 61
  %39 = load %struct.macroblock*, %struct.macroblock** %mb_data31, align 8
  %arrayidx32 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %39, i64 %idxprom30
  %mb_field33 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx32, i32 0, i32 19
  %40 = load i32, i32* %mb_field33, align 4
  %tobool34 = icmp ne i32 %40, 0
  br i1 %tobool34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %land.lhs.true.28
  %41 = load i32, i32* %a_mv_y, align 4
  %mul36 = mul nsw i32 %41, 2
  store i32 %mul36, i32* %a_mv_y, align 4
  %42 = load i32, i32* %a_ref_idx, align 4
  %shr = ashr i32 %42, 1
  store i32 %shr, i32* %a_ref_idx, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %land.lhs.true.28, %if.end
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %entry
  %available39 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 0
  %43 = load i32, i32* %available39, align 4
  %tobool40 = icmp ne i32 %43, 0
  br i1 %tobool40, label %if.then.41, label %if.end.85

if.then.41:                                       ; preds = %if.end.38
  %pos_x42 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 4
  %44 = load i32, i32* %pos_x42, align 4
  %idxprom43 = sext i32 %44 to i64
  %pos_y44 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 5
  %45 = load i32, i32* %pos_y44, align 4
  %idxprom45 = sext i32 %45 to i64
  %46 = load i16***, i16**** %mv, align 8
  %arrayidx46 = getelementptr inbounds i16**, i16*** %46, i64 %idxprom45
  %47 = load i16**, i16*** %arrayidx46, align 8
  %arrayidx47 = getelementptr inbounds i16*, i16** %47, i64 %idxprom43
  %48 = load i16*, i16** %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds i16, i16* %48, i64 1
  %49 = load i16, i16* %arrayidx48, align 2
  %conv49 = sext i16 %49 to i32
  store i32 %conv49, i32* %b_mv_y, align 4
  %pos_x50 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 4
  %50 = load i32, i32* %pos_x50, align 4
  %idxprom51 = sext i32 %50 to i64
  %pos_y52 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 5
  %51 = load i32, i32* %pos_y52, align 4
  %idxprom53 = sext i32 %51 to i64
  %52 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx54 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %52, i32 0, i32 35
  %53 = load i8***, i8**** %ref_idx54, align 8
  %arrayidx55 = getelementptr inbounds i8**, i8*** %53, i64 0
  %54 = load i8**, i8*** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i8*, i8** %54, i64 %idxprom53
  %55 = load i8*, i8** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %55, i64 %idxprom51
  %56 = load i8, i8* %arrayidx57, align 1
  %conv58 = sext i8 %56 to i32
  store i32 %conv58, i32* %b_ref_idx, align 4
  %57 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field59 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %57, i32 0, i32 19
  %58 = load i32, i32* %mb_field59, align 4
  %tobool60 = icmp ne i32 %58, 0
  br i1 %tobool60, label %land.lhs.true.61, label %if.end.71

land.lhs.true.61:                                 ; preds = %if.then.41
  %mb_addr62 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 1
  %59 = load i32, i32* %mb_addr62, align 4
  %idxprom63 = sext i32 %59 to i64
  %60 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data64 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %60, i32 0, i32 61
  %61 = load %struct.macroblock*, %struct.macroblock** %mb_data64, align 8
  %arrayidx65 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %61, i64 %idxprom63
  %mb_field66 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx65, i32 0, i32 19
  %62 = load i32, i32* %mb_field66, align 4
  %tobool67 = icmp ne i32 %62, 0
  br i1 %tobool67, label %if.end.71, label %if.then.68

if.then.68:                                       ; preds = %land.lhs.true.61
  %63 = load i32, i32* %b_mv_y, align 4
  %div69 = sdiv i32 %63, 2
  store i32 %div69, i32* %b_mv_y, align 4
  %64 = load i32, i32* %b_ref_idx, align 4
  %mul70 = mul nsw i32 %64, 2
  store i32 %mul70, i32* %b_ref_idx, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.68, %land.lhs.true.61, %if.then.41
  %65 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field72 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %65, i32 0, i32 19
  %66 = load i32, i32* %mb_field72, align 4
  %tobool73 = icmp ne i32 %66, 0
  br i1 %tobool73, label %if.end.84, label %land.lhs.true.74

land.lhs.true.74:                                 ; preds = %if.end.71
  %mb_addr75 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 1
  %67 = load i32, i32* %mb_addr75, align 4
  %idxprom76 = sext i32 %67 to i64
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data77 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 61
  %69 = load %struct.macroblock*, %struct.macroblock** %mb_data77, align 8
  %arrayidx78 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %69, i64 %idxprom76
  %mb_field79 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx78, i32 0, i32 19
  %70 = load i32, i32* %mb_field79, align 4
  %tobool80 = icmp ne i32 %70, 0
  br i1 %tobool80, label %if.then.81, label %if.end.84

if.then.81:                                       ; preds = %land.lhs.true.74
  %71 = load i32, i32* %b_mv_y, align 4
  %mul82 = mul nsw i32 %71, 2
  store i32 %mul82, i32* %b_mv_y, align 4
  %72 = load i32, i32* %b_ref_idx, align 4
  %shr83 = ashr i32 %72, 1
  store i32 %shr83, i32* %b_ref_idx, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.81, %land.lhs.true.74, %if.end.71
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.end.38
  %available86 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 0
  %73 = load i32, i32* %available86, align 4
  %tobool87 = icmp ne i32 %73, 0
  br i1 %tobool87, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.85
  br label %cond.end

cond.false:                                       ; preds = %if.end.85
  %74 = load i32, i32* %a_ref_idx, align 4
  %cmp = icmp eq i32 %74, 0
  br i1 %cmp, label %land.lhs.true.89, label %land.end

land.lhs.true.89:                                 ; preds = %cond.false
  %pos_x90 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 4
  %75 = load i32, i32* %pos_x90, align 4
  %idxprom91 = sext i32 %75 to i64
  %pos_y92 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 5
  %76 = load i32, i32* %pos_y92, align 4
  %idxprom93 = sext i32 %76 to i64
  %77 = load i16***, i16**** %mv, align 8
  %arrayidx94 = getelementptr inbounds i16**, i16*** %77, i64 %idxprom93
  %78 = load i16**, i16*** %arrayidx94, align 8
  %arrayidx95 = getelementptr inbounds i16*, i16** %78, i64 %idxprom91
  %79 = load i16*, i16** %arrayidx95, align 8
  %arrayidx96 = getelementptr inbounds i16, i16* %79, i64 0
  %80 = load i16, i16* %arrayidx96, align 2
  %conv97 = sext i16 %80 to i32
  %cmp98 = icmp eq i32 %conv97, 0
  br i1 %cmp98, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.89
  %81 = load i32, i32* %a_mv_y, align 4
  %cmp100 = icmp eq i32 %81, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.89, %cond.false
  %82 = phi i1 [ false, %land.lhs.true.89 ], [ false, %cond.false ], [ %cmp100, %land.rhs ]
  %cond = select i1 %82, i32 1, i32 0
  br label %cond.end

cond.end:                                         ; preds = %land.end, %cond.true
  %cond102 = phi i32 [ 1, %cond.true ], [ %cond, %land.end ]
  store i32 %cond102, i32* %zeroMotionLeft, align 4
  %available103 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 0
  %83 = load i32, i32* %available103, align 4
  %tobool104 = icmp ne i32 %83, 0
  br i1 %tobool104, label %cond.false.106, label %cond.true.105

cond.true.105:                                    ; preds = %cond.end
  br label %cond.end.125

cond.false.106:                                   ; preds = %cond.end
  %84 = load i32, i32* %b_ref_idx, align 4
  %cmp107 = icmp eq i32 %84, 0
  br i1 %cmp107, label %land.lhs.true.109, label %land.end.123

land.lhs.true.109:                                ; preds = %cond.false.106
  %pos_x110 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 4
  %85 = load i32, i32* %pos_x110, align 4
  %idxprom111 = sext i32 %85 to i64
  %pos_y112 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 5
  %86 = load i32, i32* %pos_y112, align 4
  %idxprom113 = sext i32 %86 to i64
  %87 = load i16***, i16**** %mv, align 8
  %arrayidx114 = getelementptr inbounds i16**, i16*** %87, i64 %idxprom113
  %88 = load i16**, i16*** %arrayidx114, align 8
  %arrayidx115 = getelementptr inbounds i16*, i16** %88, i64 %idxprom111
  %89 = load i16*, i16** %arrayidx115, align 8
  %arrayidx116 = getelementptr inbounds i16, i16* %89, i64 0
  %90 = load i16, i16* %arrayidx116, align 2
  %conv117 = sext i16 %90 to i32
  %cmp118 = icmp eq i32 %conv117, 0
  br i1 %cmp118, label %land.rhs.120, label %land.end.123

land.rhs.120:                                     ; preds = %land.lhs.true.109
  %91 = load i32, i32* %b_mv_y, align 4
  %cmp121 = icmp eq i32 %91, 0
  br label %land.end.123

land.end.123:                                     ; preds = %land.rhs.120, %land.lhs.true.109, %cond.false.106
  %92 = phi i1 [ false, %land.lhs.true.109 ], [ false, %cond.false.106 ], [ %cmp121, %land.rhs.120 ]
  %cond124 = select i1 %92, i32 1, i32 0
  br label %cond.end.125

cond.end.125:                                     ; preds = %land.end.123, %cond.true.105
  %cond126 = phi i32 [ 1, %cond.true.105 ], [ %cond124, %land.end.123 ]
  store i32 %cond126, i32* %zeroMotionAbove, align 4
  %93 = load i32, i32* %zeroMotionAbove, align 4
  %tobool127 = icmp ne i32 %93, 0
  br i1 %tobool127, label %if.then.129, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.125
  %94 = load i32, i32* %zeroMotionLeft, align 4
  %tobool128 = icmp ne i32 %94, 0
  br i1 %tobool128, label %if.then.129, label %if.else

if.then.129:                                      ; preds = %lor.lhs.false, %cond.end.125
  store i32 0, i32* %by, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.143, %if.then.129
  %95 = load i32, i32* %by, align 4
  %cmp130 = icmp slt i32 %95, 4
  br i1 %cmp130, label %for.body, label %for.end.145

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %bx, align 4
  br label %for.cond.132

for.cond.132:                                     ; preds = %for.inc, %for.body
  %96 = load i32, i32* %bx, align 4
  %cmp133 = icmp slt i32 %96, 4
  br i1 %cmp133, label %for.body.135, label %for.end

for.body.135:                                     ; preds = %for.cond.132
  %97 = load i32, i32* %bx, align 4
  %idxprom136 = sext i32 %97 to i64
  %98 = load i32, i32* %by, align 4
  %idxprom137 = sext i32 %98 to i64
  %99 = load i16******, i16******* %all_mv, align 8
  %arrayidx138 = getelementptr inbounds i16*****, i16****** %99, i64 %idxprom137
  %100 = load i16*****, i16****** %arrayidx138, align 8
  %arrayidx139 = getelementptr inbounds i16****, i16***** %100, i64 %idxprom136
  %101 = load i16****, i16***** %arrayidx139, align 8
  %arrayidx140 = getelementptr inbounds i16***, i16**** %101, i64 0
  %102 = load i16***, i16**** %arrayidx140, align 8
  %arrayidx141 = getelementptr inbounds i16**, i16*** %102, i64 0
  %103 = load i16**, i16*** %arrayidx141, align 8
  %arrayidx142 = getelementptr inbounds i16*, i16** %103, i64 0
  %104 = load i16*, i16** %arrayidx142, align 8
  %105 = bitcast i16* %104 to i8*
  call void @llvm.memset.p0i8.i64(i8* %105, i8 0, i64 4, i32 2, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body.135
  %106 = load i32, i32* %bx, align 4
  %inc = add nsw i32 %106, 1
  store i32 %inc, i32* %bx, align 4
  br label %for.cond.132

for.end:                                          ; preds = %for.cond.132
  br label %for.inc.143

for.inc.143:                                      ; preds = %for.end
  %107 = load i32, i32* %by, align 4
  %inc144 = add nsw i32 %107, 1
  store i32 %inc144, i32* %by, align 4
  br label %for.cond

for.end.145:                                      ; preds = %for.cond
  br label %if.end.169

if.else:                                          ; preds = %lor.lhs.false
  %arraydecay = getelementptr inbounds [2 x i16], [2 x i16]* %pmv, i32 0, i32 0
  %108 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx146 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %108, i32 0, i32 35
  %109 = load i8***, i8**** %ref_idx146, align 8
  %arrayidx147 = getelementptr inbounds i8**, i8*** %109, i64 0
  %110 = load i8**, i8*** %arrayidx147, align 8
  %111 = load i16***, i16**** %mv, align 8
  call void @SetMotionVectorPredictor(i16* %arraydecay, i8** %110, i16*** %111, i16 signext 0, i32 0, i32 0, i32 0, i32 16, i32 16)
  store i32 0, i32* %by, align 4
  br label %for.cond.148

for.cond.148:                                     ; preds = %for.inc.166, %if.else
  %112 = load i32, i32* %by, align 4
  %cmp149 = icmp slt i32 %112, 4
  br i1 %cmp149, label %for.body.151, label %for.end.168

for.body.151:                                     ; preds = %for.cond.148
  store i32 0, i32* %bx, align 4
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.163, %for.body.151
  %113 = load i32, i32* %bx, align 4
  %cmp153 = icmp slt i32 %113, 4
  br i1 %cmp153, label %for.body.155, label %for.end.165

for.body.155:                                     ; preds = %for.cond.152
  %114 = load i32, i32* %bx, align 4
  %idxprom156 = sext i32 %114 to i64
  %115 = load i32, i32* %by, align 4
  %idxprom157 = sext i32 %115 to i64
  %116 = load i16******, i16******* %all_mv, align 8
  %arrayidx158 = getelementptr inbounds i16*****, i16****** %116, i64 %idxprom157
  %117 = load i16*****, i16****** %arrayidx158, align 8
  %arrayidx159 = getelementptr inbounds i16****, i16***** %117, i64 %idxprom156
  %118 = load i16****, i16***** %arrayidx159, align 8
  %arrayidx160 = getelementptr inbounds i16***, i16**** %118, i64 0
  %119 = load i16***, i16**** %arrayidx160, align 8
  %arrayidx161 = getelementptr inbounds i16**, i16*** %119, i64 0
  %120 = load i16**, i16*** %arrayidx161, align 8
  %arrayidx162 = getelementptr inbounds i16*, i16** %120, i64 0
  %121 = load i16*, i16** %arrayidx162, align 8
  %122 = bitcast i16* %121 to i8*
  %123 = bitcast [2 x i16]* %pmv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %122, i8* %123, i64 4, i32 2, i1 false)
  br label %for.inc.163

for.inc.163:                                      ; preds = %for.body.155
  %124 = load i32, i32* %bx, align 4
  %inc164 = add nsw i32 %124, 1
  store i32 %inc164, i32* %bx, align 4
  br label %for.cond.152

for.end.165:                                      ; preds = %for.cond.152
  br label %for.inc.166

for.inc.166:                                      ; preds = %for.end.165
  %125 = load i32, i32* %by, align 4
  %inc167 = add nsw i32 %125, 1
  store i32 %inc167, i32* %by, align 4
  br label %for.cond.148

for.end.168:                                      ; preds = %for.cond.148
  br label %if.end.169

if.end.169:                                       ; preds = %for.end.168, %for.end.145
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @GetSkipCostMB() #0 {
entry:
  %block_y = alloca i32, align 4
  %block_x = alloca i32, align 4
  %pic_pix_y = alloca i32, align 4
  %pic_pix_x = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %cost = alloca i32, align 4
  %curr_diff = alloca [8 x [8 x i32]], align 16
  %mb_x = alloca i32, align 4
  %mb_y = alloca i32, align 4
  %block = alloca i32, align 4
  store i32 0, i32* %cost, align 4
  store i32 0, i32* %block, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.73, %entry
  %0 = load i32, i32* %block, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end.75

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %block, align 4
  %div = sdiv i32 %1, 2
  %shl = shl i32 %div, 3
  store i32 %shl, i32* %mb_y, align 4
  %2 = load i32, i32* %block, align 4
  %rem = srem i32 %2, 2
  %shl1 = shl i32 %rem, 3
  store i32 %shl1, i32* %mb_x, align 4
  %3 = load i32, i32* %mb_y, align 4
  store i32 %3, i32* %block_y, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.48, %for.body
  %4 = load i32, i32* %block_y, align 4
  %5 = load i32, i32* %mb_y, align 4
  %add = add nsw i32 %5, 8
  %cmp3 = icmp slt i32 %4, %add
  br i1 %cmp3, label %for.body.4, label %for.end.50

for.body.4:                                       ; preds = %for.cond.2
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 44
  %7 = load i32, i32* %opix_y, align 4
  %8 = load i32, i32* %block_y, align 4
  %add5 = add nsw i32 %7, %8
  store i32 %add5, i32* %pic_pix_y, align 4
  %9 = load i32, i32* %mb_x, align 4
  store i32 %9, i32* %block_x, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.45, %for.body.4
  %10 = load i32, i32* %block_x, align 4
  %11 = load i32, i32* %mb_x, align 4
  %add7 = add nsw i32 %11, 8
  %cmp8 = icmp slt i32 %10, %add7
  br i1 %cmp8, label %for.body.9, label %for.end.47

for.body.9:                                       ; preds = %for.cond.6
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 43
  %13 = load i32, i32* %opix_x, align 4
  %14 = load i32, i32* %block_x, align 4
  %add10 = add nsw i32 %13, %14
  store i32 %add10, i32* %pic_pix_x, align 4
  %15 = load i32, i32* %block_x, align 4
  %16 = load i32, i32* %block_y, align 4
  call void @LumaPrediction4x4(i32 %15, i32 %16, i32 0, i32 0, i32 0, i16 signext 0, i16 signext 0)
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.39, %for.body.9
  %17 = load i32, i32* %j, align 4
  %cmp12 = icmp slt i32 %17, 4
  br i1 %cmp12, label %for.body.13, label %for.end.41

for.body.13:                                      ; preds = %for.cond.11
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body.13
  %18 = load i32, i32* %i, align 4
  %cmp15 = icmp slt i32 %18, 4
  br i1 %cmp15, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.14
  %19 = load i32, i32* %pic_pix_x, align 4
  %20 = load i32, i32* %i, align 4
  %add17 = add nsw i32 %19, %20
  %idxprom = sext i32 %add17 to i64
  %21 = load i32, i32* %pic_pix_y, align 4
  %22 = load i32, i32* %j, align 4
  %add18 = add nsw i32 %21, %22
  %idxprom19 = sext i32 %add18 to i64
  %23 = load i16**, i16*** @imgY_org, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %23, i64 %idxprom19
  %24 = load i16*, i16** %arrayidx, align 8
  %arrayidx20 = getelementptr inbounds i16, i16* %24, i64 %idxprom
  %25 = load i16, i16* %arrayidx20, align 2
  %conv = zext i16 %25 to i32
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %block_x, align 4
  %add21 = add nsw i32 %26, %27
  %idxprom22 = sext i32 %add21 to i64
  %28 = load i32, i32* %j, align 4
  %29 = load i32, i32* %block_y, align 4
  %add23 = add nsw i32 %28, %29
  %idxprom24 = sext i32 %add23 to i64
  %30 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %30, i32 0, i32 51
  %arrayidx25 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i64 %idxprom24
  %arrayidx26 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx25, i32 0, i64 %idxprom22
  %31 = load i16, i16* %arrayidx26, align 2
  %conv27 = zext i16 %31 to i32
  %sub = sub nsw i32 %conv, %conv27
  %32 = load i32, i32* %block_x, align 4
  %33 = load i32, i32* %mb_x, align 4
  %sub28 = sub nsw i32 %32, %33
  %34 = load i32, i32* %i, align 4
  %add29 = add nsw i32 %sub28, %34
  %idxprom30 = sext i32 %add29 to i64
  %35 = load i32, i32* %block_y, align 4
  %36 = load i32, i32* %mb_y, align 4
  %sub31 = sub nsw i32 %35, %36
  %37 = load i32, i32* %j, align 4
  %add32 = add nsw i32 %sub31, %37
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %curr_diff, i32 0, i64 %idxprom33
  %arrayidx35 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx34, i32 0, i64 %idxprom30
  store i32 %sub, i32* %arrayidx35, align 4
  %38 = load i32, i32* %k, align 4
  %idxprom36 = sext i32 %38 to i64
  %arrayidx37 = getelementptr inbounds [16 x i32], [16 x i32]* @diff, i32 0, i64 %idxprom36
  store i32 %sub, i32* %arrayidx37, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.16
  %39 = load i32, i32* %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4
  %40 = load i32, i32* %k, align 4
  %inc38 = add nsw i32 %40, 1
  store i32 %inc38, i32* %k, align 4
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.end
  %41 = load i32, i32* %j, align 4
  %inc40 = add nsw i32 %41, 1
  store i32 %inc40, i32* %j, align 4
  br label %for.cond.11

for.end.41:                                       ; preds = %for.cond.11
  %42 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %42, i32 0, i32 113
  %43 = load i32, i32* %rdopt, align 4
  %cmp42 = icmp eq i32 %43, 0
  br i1 %cmp42, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %for.end.41
  %44 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %44, i32 0, i32 153
  %45 = load i32, i32* %Transform8x8Mode, align 4
  %tobool = icmp ne i32 %45, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %for.end.41
  %call = call i32 @distortion4x4(i32* getelementptr inbounds ([16 x i32], [16 x i32]* @diff, i32 0, i32 0))
  %46 = load i32, i32* %cost, align 4
  %add44 = add nsw i32 %46, %call
  store i32 %add44, i32* %cost, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true
  br label %for.inc.45

for.inc.45:                                       ; preds = %if.end
  %47 = load i32, i32* %block_x, align 4
  %add46 = add nsw i32 %47, 4
  store i32 %add46, i32* %block_x, align 4
  br label %for.cond.6

for.end.47:                                       ; preds = %for.cond.6
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.end.47
  %48 = load i32, i32* %block_y, align 4
  %add49 = add nsw i32 %48, 4
  store i32 %add49, i32* %block_y, align 4
  br label %for.cond.2

for.end.50:                                       ; preds = %for.cond.2
  %49 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt51 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %49, i32 0, i32 113
  %50 = load i32, i32* %rdopt51, align 4
  %cmp52 = icmp eq i32 %50, 0
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.72

land.lhs.true.54:                                 ; preds = %for.end.50
  %51 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode55 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %51, i32 0, i32 153
  %52 = load i32, i32* %Transform8x8Mode55, align 4
  %tobool56 = icmp ne i32 %52, 0
  br i1 %tobool56, label %if.then.57, label %if.end.72

if.then.57:                                       ; preds = %land.lhs.true.54
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.66, %if.then.57
  %53 = load i32, i32* %j, align 4
  %cmp59 = icmp slt i32 %53, 8
  br i1 %cmp59, label %for.body.61, label %for.end.69

for.body.61:                                      ; preds = %for.cond.58
  %54 = load i32, i32* %k, align 4
  %idxprom62 = sext i32 %54 to i64
  %arrayidx63 = getelementptr inbounds [64 x i32], [64 x i32]* @diff64, i32 0, i64 %idxprom62
  %55 = bitcast i32* %arrayidx63 to i8*
  %56 = load i32, i32* %j, align 4
  %idxprom64 = sext i32 %56 to i64
  %arrayidx65 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %curr_diff, i32 0, i64 %idxprom64
  %57 = bitcast [8 x i32]* %arrayidx65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %57, i64 32, i32 4, i1 false)
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.body.61
  %58 = load i32, i32* %j, align 4
  %inc67 = add nsw i32 %58, 1
  store i32 %inc67, i32* %j, align 4
  %59 = load i32, i32* %k, align 4
  %add68 = add nsw i32 %59, 8
  store i32 %add68, i32* %k, align 4
  br label %for.cond.58

for.end.69:                                       ; preds = %for.cond.58
  %call70 = call i32 @distortion8x8(i32* getelementptr inbounds ([64 x i32], [64 x i32]* @diff64, i32 0, i32 0))
  %60 = load i32, i32* %cost, align 4
  %add71 = add nsw i32 %60, %call70
  store i32 %add71, i32* %cost, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %for.end.69, %land.lhs.true.54, %for.end.50
  br label %for.inc.73

for.inc.73:                                       ; preds = %if.end.72
  %61 = load i32, i32* %block, align 4
  %inc74 = add nsw i32 %61, 1
  store i32 %inc74, i32* %block, align 4
  br label %for.cond

for.end.75:                                       ; preds = %for.cond
  %62 = load i32, i32* %cost, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i32 @EPZSBiPredBlockMotionSearch(i16*, i16 signext, i32, i32, i8***, i16****, i32, i32, i32, i16*, i16*, i16*, i16*, i32, i32, i32) #1

declare i32 @UMHEXBipredIntegerPelBlockMotionSearch(i16*, i16 signext, i32, i32, i32, i32, i16 signext, i16 signext, i16 signext, i16 signext, i16*, i16*, i16*, i16*, i32, i32, i32) #1

declare i32 @smpUMHEXBipredIntegerPelBlockMotionSearch(i16*, i16 signext, i32, i32, i32, i32, i16 signext, i16 signext, i16 signext, i16 signext, i16*, i16*, i16*, i16*, i32, i32, i32) #1

declare i32 @FullPelBlockMotionBiPred(i16*, i16 signext, i32, i32, i32, i32, i16 signext, i16 signext, i16 signext, i16 signext, i16*, i16*, i16*, i16*, i32, i32, i32) #1

declare i32 @EPZSSubPelBlockSearchBiPred(i16*, i16 signext, i32, i32, i32, i32, i16*, i16*, i16*, i16*, i32, i32, i32, i32*) #1

declare i32 @SubPelBlockSearchBiPred(i16*, i16 signext, i32, i32, i32, i32, i16 signext, i16 signext, i16*, i16*, i16*, i16*, i32, i32, i32, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @BIDPartitionCost(i32 %blocktype, i32 %block8x8, i16 signext %ref_l0, i16 signext %ref_l1, i32 %lambda_factor) #0 {
entry:
  %blocktype.addr = alloca i32, align 4
  %block8x8.addr = alloca i32, align 4
  %ref_l0.addr = alloca i16, align 2
  %ref_l1.addr = alloca i16, align 2
  %lambda_factor.addr = alloca i32, align 4
  %curr_blk = alloca [16 x [16 x i32]], align 16
  %bsx = alloca i32, align 4
  %bsy = alloca i32, align 4
  %pic_pix_x = alloca i32, align 4
  %pic_pix_y = alloca i32, align 4
  %block_x = alloca i32, align 4
  %block_y = alloca i32, align 4
  %v = alloca i32, align 4
  %h = alloca i32, align 4
  %mcost = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %mvd_bits = alloca i32, align 4
  %parttype = alloca i32, align 4
  %step_h0 = alloca i32, align 4
  %step_v0 = alloca i32, align 4
  %step_h = alloca i32, align 4
  %step_v = alloca i32, align 4
  %bxx = alloca i32, align 4
  %byy = alloca i32, align 4
  %bx = alloca i32, align 4
  %by = alloca i32, align 4
  %all_mv = alloca i16******, align 8
  %p_mv = alloca i16******, align 8
  store i32 %blocktype, i32* %blocktype.addr, align 4
  store i32 %block8x8, i32* %block8x8.addr, align 4
  store i16 %ref_l0, i16* %ref_l0.addr, align 2
  store i16 %ref_l1, i16* %ref_l1.addr, align 2
  store i32 %lambda_factor, i32* %lambda_factor.addr, align 4
  %0 = load i32, i32* %blocktype.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1, i32 0, i32 18
  %arrayidx = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 0
  %2 = load i32, i32* %arrayidx1, align 4
  %call = call i32 @imin(i32 %2, i32 8)
  store i32 %call, i32* %bsx, align 4
  %3 = load i32, i32* %blocktype.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size3 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 18
  %arrayidx4 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size3, i32 0, i64 %idxprom2
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx4, i32 0, i64 1
  %5 = load i32, i32* %arrayidx5, align 4
  %call6 = call i32 @imin(i32 %5, i32 8)
  store i32 %call6, i32* %bsy, align 4
  store i32 0, i32* %mvd_bits, align 4
  %6 = load i32, i32* %blocktype.addr, align 4
  %cmp = icmp slt i32 %6, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* %blocktype.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ 4, %cond.false ]
  store i32 %cond, i32* %parttype, align 4
  %8 = load i32, i32* %parttype, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 19
  %arrayidx8 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size, i32 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx8, i32 0, i64 0
  %10 = load i32, i32* %arrayidx9, align 4
  store i32 %10, i32* %step_h0, align 4
  %11 = load i32, i32* %parttype, align 4
  %idxprom10 = sext i32 %11 to i64
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size11 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 19
  %arrayidx12 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size11, i32 0, i64 %idxprom10
  %arrayidx13 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx12, i32 0, i64 1
  %13 = load i32, i32* %arrayidx13, align 4
  store i32 %13, i32* %step_v0, align 4
  %14 = load i32, i32* %blocktype.addr, align 4
  %idxprom14 = sext i32 %14 to i64
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size15 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 19
  %arrayidx16 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size15, i32 0, i64 %idxprom14
  %arrayidx17 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx16, i32 0, i64 0
  %16 = load i32, i32* %arrayidx17, align 4
  store i32 %16, i32* %step_h, align 4
  %17 = load i32, i32* %blocktype.addr, align 4
  %idxprom18 = sext i32 %17 to i64
  %18 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size19 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %18, i32 0, i32 19
  %arrayidx20 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size19, i32 0, i64 %idxprom18
  %arrayidx21 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx20, i32 0, i64 1
  %19 = load i32, i32* %arrayidx21, align 4
  store i32 %19, i32* %step_v, align 4
  %20 = load i32, i32* %block8x8.addr, align 4
  %idxprom22 = sext i32 %20 to i64
  %21 = load i32, i32* %parttype, align 4
  %idxprom23 = sext i32 %21 to i64
  %arrayidx24 = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* @BIDPartitionCost.bx0, i32 0, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx24, i32 0, i64 %idxprom22
  %22 = load i32, i32* %arrayidx25, align 4
  store i32 %22, i32* %bx, align 4
  %23 = load i32, i32* %block8x8.addr, align 4
  %idxprom26 = sext i32 %23 to i64
  %24 = load i32, i32* %parttype, align 4
  %idxprom27 = sext i32 %24 to i64
  %arrayidx28 = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* @BIDPartitionCost.by0, i32 0, i64 %idxprom27
  %arrayidx29 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx28, i32 0, i64 %idxprom26
  %25 = load i32, i32* %arrayidx29, align 4
  store i32 %25, i32* %by, align 4
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv30 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 80
  %27 = load i16******, i16******* %all_mv30, align 8
  store i16****** %27, i16******* %all_mv, align 8
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pred_mv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 79
  %29 = load i16******, i16******* %pred_mv, align 8
  store i16****** %29, i16******* %p_mv, align 8
  %30 = load i32, i32* %by, align 4
  store i32 %30, i32* %v, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.139, %cond.end
  %31 = load i32, i32* %v, align 4
  %32 = load i32, i32* %by, align 4
  %33 = load i32, i32* %step_v0, align 4
  %add = add nsw i32 %32, %33
  %cmp31 = icmp slt i32 %31, %add
  br i1 %cmp31, label %for.body, label %for.end.141

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %bx, align 4
  store i32 %34, i32* %h, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc, %for.body
  %35 = load i32, i32* %h, align 4
  %36 = load i32, i32* %bx, align 4
  %37 = load i32, i32* %step_h0, align 4
  %add33 = add nsw i32 %36, %37
  %cmp34 = icmp slt i32 %35, %add33
  br i1 %cmp34, label %for.body.35, label %for.end

for.body.35:                                      ; preds = %for.cond.32
  %38 = load i32, i32* %blocktype.addr, align 4
  %idxprom36 = sext i32 %38 to i64
  %39 = load i16, i16* %ref_l0.addr, align 2
  %idxprom37 = sext i16 %39 to i64
  %40 = load i32, i32* %h, align 4
  %idxprom38 = sext i32 %40 to i64
  %41 = load i32, i32* %v, align 4
  %idxprom39 = sext i32 %41 to i64
  %42 = load i16******, i16******* %all_mv, align 8
  %arrayidx40 = getelementptr inbounds i16*****, i16****** %42, i64 %idxprom39
  %43 = load i16*****, i16****** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i16****, i16***** %43, i64 %idxprom38
  %44 = load i16****, i16***** %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds i16***, i16**** %44, i64 0
  %45 = load i16***, i16**** %arrayidx42, align 8
  %arrayidx43 = getelementptr inbounds i16**, i16*** %45, i64 %idxprom37
  %46 = load i16**, i16*** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds i16*, i16** %46, i64 %idxprom36
  %47 = load i16*, i16** %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds i16, i16* %47, i64 0
  %48 = load i16, i16* %arrayidx45, align 2
  %conv = sext i16 %48 to i32
  %49 = load i32, i32* %blocktype.addr, align 4
  %idxprom46 = sext i32 %49 to i64
  %50 = load i16, i16* %ref_l0.addr, align 2
  %idxprom47 = sext i16 %50 to i64
  %51 = load i32, i32* %h, align 4
  %idxprom48 = sext i32 %51 to i64
  %52 = load i32, i32* %v, align 4
  %idxprom49 = sext i32 %52 to i64
  %53 = load i16******, i16******* %p_mv, align 8
  %arrayidx50 = getelementptr inbounds i16*****, i16****** %53, i64 %idxprom49
  %54 = load i16*****, i16****** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds i16****, i16***** %54, i64 %idxprom48
  %55 = load i16****, i16***** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds i16***, i16**** %55, i64 0
  %56 = load i16***, i16**** %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds i16**, i16*** %56, i64 %idxprom47
  %57 = load i16**, i16*** %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds i16*, i16** %57, i64 %idxprom46
  %58 = load i16*, i16** %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds i16, i16* %58, i64 0
  %59 = load i16, i16* %arrayidx55, align 2
  %conv56 = sext i16 %59 to i32
  %sub = sub nsw i32 %conv, %conv56
  %idxprom57 = sext i32 %sub to i64
  %60 = load i32*, i32** @mvbits, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %60, i64 %idxprom57
  %61 = load i32, i32* %arrayidx58, align 4
  %62 = load i32, i32* %mvd_bits, align 4
  %add59 = add nsw i32 %62, %61
  store i32 %add59, i32* %mvd_bits, align 4
  %63 = load i32, i32* %blocktype.addr, align 4
  %idxprom60 = sext i32 %63 to i64
  %64 = load i16, i16* %ref_l0.addr, align 2
  %idxprom61 = sext i16 %64 to i64
  %65 = load i32, i32* %h, align 4
  %idxprom62 = sext i32 %65 to i64
  %66 = load i32, i32* %v, align 4
  %idxprom63 = sext i32 %66 to i64
  %67 = load i16******, i16******* %all_mv, align 8
  %arrayidx64 = getelementptr inbounds i16*****, i16****** %67, i64 %idxprom63
  %68 = load i16*****, i16****** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds i16****, i16***** %68, i64 %idxprom62
  %69 = load i16****, i16***** %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds i16***, i16**** %69, i64 0
  %70 = load i16***, i16**** %arrayidx66, align 8
  %arrayidx67 = getelementptr inbounds i16**, i16*** %70, i64 %idxprom61
  %71 = load i16**, i16*** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds i16*, i16** %71, i64 %idxprom60
  %72 = load i16*, i16** %arrayidx68, align 8
  %arrayidx69 = getelementptr inbounds i16, i16* %72, i64 1
  %73 = load i16, i16* %arrayidx69, align 2
  %conv70 = sext i16 %73 to i32
  %74 = load i32, i32* %blocktype.addr, align 4
  %idxprom71 = sext i32 %74 to i64
  %75 = load i16, i16* %ref_l0.addr, align 2
  %idxprom72 = sext i16 %75 to i64
  %76 = load i32, i32* %h, align 4
  %idxprom73 = sext i32 %76 to i64
  %77 = load i32, i32* %v, align 4
  %idxprom74 = sext i32 %77 to i64
  %78 = load i16******, i16******* %p_mv, align 8
  %arrayidx75 = getelementptr inbounds i16*****, i16****** %78, i64 %idxprom74
  %79 = load i16*****, i16****** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds i16****, i16***** %79, i64 %idxprom73
  %80 = load i16****, i16***** %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds i16***, i16**** %80, i64 0
  %81 = load i16***, i16**** %arrayidx77, align 8
  %arrayidx78 = getelementptr inbounds i16**, i16*** %81, i64 %idxprom72
  %82 = load i16**, i16*** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds i16*, i16** %82, i64 %idxprom71
  %83 = load i16*, i16** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i16, i16* %83, i64 1
  %84 = load i16, i16* %arrayidx80, align 2
  %conv81 = sext i16 %84 to i32
  %sub82 = sub nsw i32 %conv70, %conv81
  %idxprom83 = sext i32 %sub82 to i64
  %85 = load i32*, i32** @mvbits, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %85, i64 %idxprom83
  %86 = load i32, i32* %arrayidx84, align 4
  %87 = load i32, i32* %mvd_bits, align 4
  %add85 = add nsw i32 %87, %86
  store i32 %add85, i32* %mvd_bits, align 4
  %88 = load i32, i32* %blocktype.addr, align 4
  %idxprom86 = sext i32 %88 to i64
  %89 = load i16, i16* %ref_l1.addr, align 2
  %idxprom87 = sext i16 %89 to i64
  %90 = load i32, i32* %h, align 4
  %idxprom88 = sext i32 %90 to i64
  %91 = load i32, i32* %v, align 4
  %idxprom89 = sext i32 %91 to i64
  %92 = load i16******, i16******* %all_mv, align 8
  %arrayidx90 = getelementptr inbounds i16*****, i16****** %92, i64 %idxprom89
  %93 = load i16*****, i16****** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds i16****, i16***** %93, i64 %idxprom88
  %94 = load i16****, i16***** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds i16***, i16**** %94, i64 1
  %95 = load i16***, i16**** %arrayidx92, align 8
  %arrayidx93 = getelementptr inbounds i16**, i16*** %95, i64 %idxprom87
  %96 = load i16**, i16*** %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds i16*, i16** %96, i64 %idxprom86
  %97 = load i16*, i16** %arrayidx94, align 8
  %arrayidx95 = getelementptr inbounds i16, i16* %97, i64 0
  %98 = load i16, i16* %arrayidx95, align 2
  %conv96 = sext i16 %98 to i32
  %99 = load i32, i32* %blocktype.addr, align 4
  %idxprom97 = sext i32 %99 to i64
  %100 = load i16, i16* %ref_l1.addr, align 2
  %idxprom98 = sext i16 %100 to i64
  %101 = load i32, i32* %h, align 4
  %idxprom99 = sext i32 %101 to i64
  %102 = load i32, i32* %v, align 4
  %idxprom100 = sext i32 %102 to i64
  %103 = load i16******, i16******* %p_mv, align 8
  %arrayidx101 = getelementptr inbounds i16*****, i16****** %103, i64 %idxprom100
  %104 = load i16*****, i16****** %arrayidx101, align 8
  %arrayidx102 = getelementptr inbounds i16****, i16***** %104, i64 %idxprom99
  %105 = load i16****, i16***** %arrayidx102, align 8
  %arrayidx103 = getelementptr inbounds i16***, i16**** %105, i64 1
  %106 = load i16***, i16**** %arrayidx103, align 8
  %arrayidx104 = getelementptr inbounds i16**, i16*** %106, i64 %idxprom98
  %107 = load i16**, i16*** %arrayidx104, align 8
  %arrayidx105 = getelementptr inbounds i16*, i16** %107, i64 %idxprom97
  %108 = load i16*, i16** %arrayidx105, align 8
  %arrayidx106 = getelementptr inbounds i16, i16* %108, i64 0
  %109 = load i16, i16* %arrayidx106, align 2
  %conv107 = sext i16 %109 to i32
  %sub108 = sub nsw i32 %conv96, %conv107
  %idxprom109 = sext i32 %sub108 to i64
  %110 = load i32*, i32** @mvbits, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %110, i64 %idxprom109
  %111 = load i32, i32* %arrayidx110, align 4
  %112 = load i32, i32* %mvd_bits, align 4
  %add111 = add nsw i32 %112, %111
  store i32 %add111, i32* %mvd_bits, align 4
  %113 = load i32, i32* %blocktype.addr, align 4
  %idxprom112 = sext i32 %113 to i64
  %114 = load i16, i16* %ref_l1.addr, align 2
  %idxprom113 = sext i16 %114 to i64
  %115 = load i32, i32* %h, align 4
  %idxprom114 = sext i32 %115 to i64
  %116 = load i32, i32* %v, align 4
  %idxprom115 = sext i32 %116 to i64
  %117 = load i16******, i16******* %all_mv, align 8
  %arrayidx116 = getelementptr inbounds i16*****, i16****** %117, i64 %idxprom115
  %118 = load i16*****, i16****** %arrayidx116, align 8
  %arrayidx117 = getelementptr inbounds i16****, i16***** %118, i64 %idxprom114
  %119 = load i16****, i16***** %arrayidx117, align 8
  %arrayidx118 = getelementptr inbounds i16***, i16**** %119, i64 1
  %120 = load i16***, i16**** %arrayidx118, align 8
  %arrayidx119 = getelementptr inbounds i16**, i16*** %120, i64 %idxprom113
  %121 = load i16**, i16*** %arrayidx119, align 8
  %arrayidx120 = getelementptr inbounds i16*, i16** %121, i64 %idxprom112
  %122 = load i16*, i16** %arrayidx120, align 8
  %arrayidx121 = getelementptr inbounds i16, i16* %122, i64 1
  %123 = load i16, i16* %arrayidx121, align 2
  %conv122 = sext i16 %123 to i32
  %124 = load i32, i32* %blocktype.addr, align 4
  %idxprom123 = sext i32 %124 to i64
  %125 = load i16, i16* %ref_l1.addr, align 2
  %idxprom124 = sext i16 %125 to i64
  %126 = load i32, i32* %h, align 4
  %idxprom125 = sext i32 %126 to i64
  %127 = load i32, i32* %v, align 4
  %idxprom126 = sext i32 %127 to i64
  %128 = load i16******, i16******* %p_mv, align 8
  %arrayidx127 = getelementptr inbounds i16*****, i16****** %128, i64 %idxprom126
  %129 = load i16*****, i16****** %arrayidx127, align 8
  %arrayidx128 = getelementptr inbounds i16****, i16***** %129, i64 %idxprom125
  %130 = load i16****, i16***** %arrayidx128, align 8
  %arrayidx129 = getelementptr inbounds i16***, i16**** %130, i64 1
  %131 = load i16***, i16**** %arrayidx129, align 8
  %arrayidx130 = getelementptr inbounds i16**, i16*** %131, i64 %idxprom124
  %132 = load i16**, i16*** %arrayidx130, align 8
  %arrayidx131 = getelementptr inbounds i16*, i16** %132, i64 %idxprom123
  %133 = load i16*, i16** %arrayidx131, align 8
  %arrayidx132 = getelementptr inbounds i16, i16* %133, i64 1
  %134 = load i16, i16* %arrayidx132, align 2
  %conv133 = sext i16 %134 to i32
  %sub134 = sub nsw i32 %conv122, %conv133
  %idxprom135 = sext i32 %sub134 to i64
  %135 = load i32*, i32** @mvbits, align 8
  %arrayidx136 = getelementptr inbounds i32, i32* %135, i64 %idxprom135
  %136 = load i32, i32* %arrayidx136, align 4
  %137 = load i32, i32* %mvd_bits, align 4
  %add137 = add nsw i32 %137, %136
  store i32 %add137, i32* %mvd_bits, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.35
  %138 = load i32, i32* %step_h, align 4
  %139 = load i32, i32* %h, align 4
  %add138 = add nsw i32 %139, %138
  store i32 %add138, i32* %h, align 4
  br label %for.cond.32

for.end:                                          ; preds = %for.cond.32
  br label %for.inc.139

for.inc.139:                                      ; preds = %for.end
  %140 = load i32, i32* %step_v, align 4
  %141 = load i32, i32* %v, align 4
  %add140 = add nsw i32 %141, %140
  store i32 %add140, i32* %v, align 4
  br label %for.cond

for.end.141:                                      ; preds = %for.cond
  %142 = load i32, i32* %lambda_factor.addr, align 4
  %143 = load i32, i32* %mvd_bits, align 4
  %mul = mul nsw i32 %142, %143
  %shr = ashr i32 %mul, 16
  store i32 %shr, i32* %mcost, align 4
  store i32 0, i32* %byy, align 4
  %144 = load i32, i32* %by, align 4
  store i32 %144, i32* %v, align 4
  br label %for.cond.142

for.cond.142:                                     ; preds = %for.inc.200, %for.end.141
  %145 = load i32, i32* %v, align 4
  %146 = load i32, i32* %by, align 4
  %147 = load i32, i32* %step_v0, align 4
  %add143 = add nsw i32 %146, %147
  %cmp144 = icmp slt i32 %145, %add143
  br i1 %cmp144, label %for.body.146, label %for.end.203

for.body.146:                                     ; preds = %for.cond.142
  %148 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %148, i32 0, i32 44
  %149 = load i32, i32* %opix_y, align 4
  %150 = load i32, i32* %v, align 4
  %shl = shl i32 %150, 2
  store i32 %shl, i32* %block_y, align 4
  %add147 = add nsw i32 %149, %shl
  store i32 %add147, i32* %pic_pix_y, align 4
  store i32 0, i32* %bxx, align 4
  %151 = load i32, i32* %bx, align 4
  store i32 %151, i32* %h, align 4
  br label %for.cond.148

for.cond.148:                                     ; preds = %for.inc.196, %for.body.146
  %152 = load i32, i32* %h, align 4
  %153 = load i32, i32* %bx, align 4
  %154 = load i32, i32* %step_h0, align 4
  %add149 = add nsw i32 %153, %154
  %cmp150 = icmp slt i32 %152, %add149
  br i1 %cmp150, label %for.body.152, label %for.end.199

for.body.152:                                     ; preds = %for.cond.148
  %155 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %155, i32 0, i32 43
  %156 = load i32, i32* %opix_x, align 4
  %157 = load i32, i32* %h, align 4
  %shl153 = shl i32 %157, 2
  store i32 %shl153, i32* %block_x, align 4
  %add154 = add nsw i32 %156, %shl153
  store i32 %add154, i32* %pic_pix_x, align 4
  %158 = load i32, i32* %block_x, align 4
  %159 = load i32, i32* %block_y, align 4
  %160 = load i32, i32* %blocktype.addr, align 4
  %161 = load i32, i32* %blocktype.addr, align 4
  %162 = load i16, i16* %ref_l0.addr, align 2
  %163 = load i16, i16* %ref_l1.addr, align 2
  call void @LumaPrediction4x4(i32 %158, i32 %159, i32 2, i32 %160, i32 %161, i16 signext %162, i16 signext %163)
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.155

for.cond.155:                                     ; preds = %for.inc.189, %for.body.152
  %164 = load i32, i32* %j, align 4
  %cmp156 = icmp slt i32 %164, 4
  br i1 %cmp156, label %for.body.158, label %for.end.191

for.body.158:                                     ; preds = %for.cond.155
  store i32 0, i32* %i, align 4
  br label %for.cond.159

for.cond.159:                                     ; preds = %for.inc.186, %for.body.158
  %165 = load i32, i32* %i, align 4
  %cmp160 = icmp slt i32 %165, 4
  br i1 %cmp160, label %for.body.162, label %for.end.188

for.body.162:                                     ; preds = %for.cond.159
  %166 = load i32, i32* %pic_pix_x, align 4
  %167 = load i32, i32* %i, align 4
  %add163 = add nsw i32 %166, %167
  %idxprom164 = sext i32 %add163 to i64
  %168 = load i32, i32* %pic_pix_y, align 4
  %169 = load i32, i32* %j, align 4
  %add165 = add nsw i32 %168, %169
  %idxprom166 = sext i32 %add165 to i64
  %170 = load i16**, i16*** @imgY_org, align 8
  %arrayidx167 = getelementptr inbounds i16*, i16** %170, i64 %idxprom166
  %171 = load i16*, i16** %arrayidx167, align 8
  %arrayidx168 = getelementptr inbounds i16, i16* %171, i64 %idxprom164
  %172 = load i16, i16* %arrayidx168, align 2
  %conv169 = zext i16 %172 to i32
  %173 = load i32, i32* %i, align 4
  %174 = load i32, i32* %block_x, align 4
  %add170 = add nsw i32 %173, %174
  %idxprom171 = sext i32 %add170 to i64
  %175 = load i32, i32* %j, align 4
  %176 = load i32, i32* %block_y, align 4
  %add172 = add nsw i32 %175, %176
  %idxprom173 = sext i32 %add172 to i64
  %177 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %177, i32 0, i32 51
  %arrayidx174 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i64 %idxprom173
  %arrayidx175 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx174, i32 0, i64 %idxprom171
  %178 = load i16, i16* %arrayidx175, align 2
  %conv176 = zext i16 %178 to i32
  %sub177 = sub nsw i32 %conv169, %conv176
  %179 = load i32, i32* %bxx, align 4
  %180 = load i32, i32* %i, align 4
  %add178 = add nsw i32 %179, %180
  %idxprom179 = sext i32 %add178 to i64
  %181 = load i32, i32* %byy, align 4
  %182 = load i32, i32* %j, align 4
  %add180 = add nsw i32 %181, %182
  %idxprom181 = sext i32 %add180 to i64
  %arrayidx182 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %curr_blk, i32 0, i64 %idxprom181
  %arrayidx183 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx182, i32 0, i64 %idxprom179
  store i32 %sub177, i32* %arrayidx183, align 4
  %183 = load i32, i32* %k, align 4
  %inc = add nsw i32 %183, 1
  store i32 %inc, i32* %k, align 4
  %idxprom184 = sext i32 %183 to i64
  %arrayidx185 = getelementptr inbounds [64 x i32], [64 x i32]* @diff64, i32 0, i64 %idxprom184
  store i32 %sub177, i32* %arrayidx185, align 4
  br label %for.inc.186

for.inc.186:                                      ; preds = %for.body.162
  %184 = load i32, i32* %i, align 4
  %inc187 = add nsw i32 %184, 1
  store i32 %inc187, i32* %i, align 4
  br label %for.cond.159

for.end.188:                                      ; preds = %for.cond.159
  br label %for.inc.189

for.inc.189:                                      ; preds = %for.end.188
  %185 = load i32, i32* %j, align 4
  %inc190 = add nsw i32 %185, 1
  store i32 %inc190, i32* %j, align 4
  br label %for.cond.155

for.end.191:                                      ; preds = %for.cond.155
  %186 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %186, i32 0, i32 153
  %187 = load i32, i32* %Transform8x8Mode, align 4
  %tobool = icmp ne i32 %187, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.end.191
  %188 = load i32, i32* %blocktype.addr, align 4
  %cmp192 = icmp sgt i32 %188, 4
  br i1 %cmp192, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.end.191
  %call194 = call i32 @distortion4x4(i32* getelementptr inbounds ([64 x i32], [64 x i32]* @diff64, i32 0, i32 0))
  %189 = load i32, i32* %mcost, align 4
  %add195 = add nsw i32 %189, %call194
  store i32 %add195, i32* %mcost, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc.196

for.inc.196:                                      ; preds = %if.end
  %190 = load i32, i32* %bxx, align 4
  %add197 = add nsw i32 %190, 4
  store i32 %add197, i32* %bxx, align 4
  %191 = load i32, i32* %h, align 4
  %inc198 = add nsw i32 %191, 1
  store i32 %inc198, i32* %h, align 4
  br label %for.cond.148

for.end.199:                                      ; preds = %for.cond.148
  br label %for.inc.200

for.inc.200:                                      ; preds = %for.end.199
  %192 = load i32, i32* %byy, align 4
  %add201 = add nsw i32 %192, 4
  store i32 %add201, i32* %byy, align 4
  %193 = load i32, i32* %v, align 4
  %inc202 = add nsw i32 %193, 1
  store i32 %inc202, i32* %v, align 4
  br label %for.cond.142

for.end.203:                                      ; preds = %for.cond.142
  %194 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode204 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %194, i32 0, i32 153
  %195 = load i32, i32* %Transform8x8Mode204, align 4
  %tobool205 = icmp ne i32 %195, 0
  br i1 %tobool205, label %land.lhs.true, label %if.end.248

land.lhs.true:                                    ; preds = %for.end.203
  %196 = load i32, i32* %blocktype.addr, align 4
  %cmp206 = icmp sle i32 %196, 4
  br i1 %cmp206, label %if.then.208, label %if.end.248

if.then.208:                                      ; preds = %land.lhs.true
  store i32 0, i32* %byy, align 4
  br label %for.cond.209

for.cond.209:                                     ; preds = %for.inc.245, %if.then.208
  %197 = load i32, i32* %byy, align 4
  %198 = load i32, i32* %parttype, align 4
  %idxprom210 = sext i32 %198 to i64
  %199 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size211 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %199, i32 0, i32 18
  %arrayidx212 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size211, i32 0, i64 %idxprom210
  %arrayidx213 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx212, i32 0, i64 1
  %200 = load i32, i32* %arrayidx213, align 4
  %cmp214 = icmp slt i32 %197, %200
  br i1 %cmp214, label %for.body.216, label %for.end.247

for.body.216:                                     ; preds = %for.cond.209
  store i32 0, i32* %bxx, align 4
  br label %for.cond.217

for.cond.217:                                     ; preds = %for.inc.242, %for.body.216
  %201 = load i32, i32* %bxx, align 4
  %202 = load i32, i32* %parttype, align 4
  %idxprom218 = sext i32 %202 to i64
  %203 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size219 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %203, i32 0, i32 18
  %arrayidx220 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size219, i32 0, i64 %idxprom218
  %arrayidx221 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx220, i32 0, i64 0
  %204 = load i32, i32* %arrayidx221, align 4
  %cmp222 = icmp slt i32 %201, %204
  br i1 %cmp222, label %for.body.224, label %for.end.244

for.body.224:                                     ; preds = %for.cond.217
  store i32 0, i32* %k, align 4
  %205 = load i32, i32* %byy, align 4
  store i32 %205, i32* %j, align 4
  br label %for.cond.225

for.cond.225:                                     ; preds = %for.inc.236, %for.body.224
  %206 = load i32, i32* %j, align 4
  %207 = load i32, i32* %byy, align 4
  %add226 = add nsw i32 %207, 8
  %cmp227 = icmp slt i32 %206, %add226
  br i1 %cmp227, label %for.body.229, label %for.end.239

for.body.229:                                     ; preds = %for.cond.225
  %208 = load i32, i32* %k, align 4
  %idxprom230 = sext i32 %208 to i64
  %arrayidx231 = getelementptr inbounds [64 x i32], [64 x i32]* @diff64, i32 0, i64 %idxprom230
  %209 = bitcast i32* %arrayidx231 to i8*
  %210 = load i32, i32* %bxx, align 4
  %idxprom232 = sext i32 %210 to i64
  %211 = load i32, i32* %j, align 4
  %idxprom233 = sext i32 %211 to i64
  %arrayidx234 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %curr_blk, i32 0, i64 %idxprom233
  %arrayidx235 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx234, i32 0, i64 %idxprom232
  %212 = bitcast i32* %arrayidx235 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %209, i8* %212, i64 32, i32 4, i1 false)
  br label %for.inc.236

for.inc.236:                                      ; preds = %for.body.229
  %213 = load i32, i32* %j, align 4
  %inc237 = add nsw i32 %213, 1
  store i32 %inc237, i32* %j, align 4
  %214 = load i32, i32* %k, align 4
  %add238 = add nsw i32 %214, 8
  store i32 %add238, i32* %k, align 4
  br label %for.cond.225

for.end.239:                                      ; preds = %for.cond.225
  %call240 = call i32 @distortion8x8(i32* getelementptr inbounds ([64 x i32], [64 x i32]* @diff64, i32 0, i32 0))
  %215 = load i32, i32* %mcost, align 4
  %add241 = add nsw i32 %215, %call240
  store i32 %add241, i32* %mcost, align 4
  br label %for.inc.242

for.inc.242:                                      ; preds = %for.end.239
  %216 = load i32, i32* %bsx, align 4
  %217 = load i32, i32* %bxx, align 4
  %add243 = add nsw i32 %217, %216
  store i32 %add243, i32* %bxx, align 4
  br label %for.cond.217

for.end.244:                                      ; preds = %for.cond.217
  br label %for.inc.245

for.inc.245:                                      ; preds = %for.end.244
  %218 = load i32, i32* %bsy, align 4
  %219 = load i32, i32* %byy, align 4
  %add246 = add nsw i32 %219, %218
  store i32 %add246, i32* %byy, align 4
  br label %for.cond.209

for.end.247:                                      ; preds = %for.cond.209
  br label %if.end.248

if.end.248:                                       ; preds = %for.end.247, %land.lhs.true, %for.end.203
  %220 = load i32, i32* %mcost, align 4
  ret i32 %220
}

declare void @LumaPrediction4x4(i32, i32, i32, i32, i32, i16 signext, i16 signext) #1

; Function Attrs: nounwind uwtable
define i32 @GetDirectCost8x8(i32 %block, i32* %cost8x8) #0 {
entry:
  %retval = alloca i32, align 4
  %block.addr = alloca i32, align 4
  %cost8x8.addr = alloca i32*, align 8
  %block_y = alloca i32, align 4
  %block_x = alloca i32, align 4
  %pic_pix_y = alloca i32, align 4
  %pic_pix_x = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %curr_diff = alloca [8 x [8 x i32]], align 16
  %cost = alloca i32, align 4
  %mb_y = alloca i32, align 4
  %mb_x = alloca i32, align 4
  store i32 %block, i32* %block.addr, align 4
  store i32* %cost8x8, i32** %cost8x8.addr, align 8
  store i32 0, i32* %cost, align 4
  %0 = load i32, i32* %block.addr, align 4
  %div = sdiv i32 %0, 2
  %shl = shl i32 %div, 3
  store i32 %shl, i32* %mb_y, align 4
  %1 = load i32, i32* %block.addr, align 4
  %rem = srem i32 %1, 2
  %shl1 = shl i32 %rem, 3
  store i32 %shl1, i32* %mb_x, align 4
  %2 = load i32, i32* %mb_y, align 4
  store i32 %2, i32* %block_y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.76, %entry
  %3 = load i32, i32* %block_y, align 4
  %4 = load i32, i32* %mb_y, align 4
  %add = add nsw i32 %4, 8
  %cmp = icmp slt i32 %3, %add
  br i1 %cmp, label %for.body, label %for.end.78

for.body:                                         ; preds = %for.cond
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 44
  %6 = load i32, i32* %opix_y, align 4
  %7 = load i32, i32* %block_y, align 4
  %add2 = add nsw i32 %6, %7
  store i32 %add2, i32* %pic_pix_y, align 4
  %8 = load i32, i32* %mb_x, align 4
  store i32 %8, i32* %block_x, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.73, %for.body
  %9 = load i32, i32* %block_x, align 4
  %10 = load i32, i32* %mb_x, align 4
  %add4 = add nsw i32 %10, 8
  %cmp5 = icmp slt i32 %9, %add4
  br i1 %cmp5, label %for.body.6, label %for.end.75

for.body.6:                                       ; preds = %for.cond.3
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 43
  %12 = load i32, i32* %opix_x, align 4
  %13 = load i32, i32* %block_x, align 4
  %add7 = add nsw i32 %12, %13
  store i32 %add7, i32* %pic_pix_x, align 4
  %14 = load i32, i32* %pic_pix_x, align 4
  %shr = ashr i32 %14, 2
  %idxprom = sext i32 %shr to i64
  %15 = load i32, i32* %pic_pix_y, align 4
  %shr8 = ashr i32 %15, 2
  %idxprom9 = sext i32 %shr8 to i64
  %16 = load i8**, i8*** @direct_pdir, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %16, i64 %idxprom9
  %17 = load i8*, i8** %arrayidx, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %17, i64 %idxprom
  %18 = load i8, i8* %arrayidx10, align 1
  %conv = sext i8 %18 to i32
  %cmp11 = icmp slt i32 %conv, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  %19 = load i32*, i32** %cost8x8.addr, align 8
  store i32 2147483647, i32* %19, align 4
  store i32 2147483647, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body.6
  %20 = load i32, i32* %block_x, align 4
  %21 = load i32, i32* %block_y, align 4
  %22 = load i32, i32* %pic_pix_x, align 4
  %shr13 = ashr i32 %22, 2
  %idxprom14 = sext i32 %shr13 to i64
  %23 = load i32, i32* %pic_pix_y, align 4
  %shr15 = ashr i32 %23, 2
  %idxprom16 = sext i32 %shr15 to i64
  %24 = load i8**, i8*** @direct_pdir, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %24, i64 %idxprom16
  %25 = load i8*, i8** %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %25, i64 %idxprom14
  %26 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %26 to i32
  %27 = load i32, i32* %pic_pix_x, align 4
  %shr20 = ashr i32 %27, 2
  %idxprom21 = sext i32 %shr20 to i64
  %28 = load i32, i32* %pic_pix_y, align 4
  %shr22 = ashr i32 %28, 2
  %idxprom23 = sext i32 %shr22 to i64
  %29 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx24 = getelementptr inbounds i8**, i8*** %29, i64 0
  %30 = load i8**, i8*** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %30, i64 %idxprom23
  %31 = load i8*, i8** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %31, i64 %idxprom21
  %32 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %32 to i16
  %33 = load i32, i32* %pic_pix_x, align 4
  %shr28 = ashr i32 %33, 2
  %idxprom29 = sext i32 %shr28 to i64
  %34 = load i32, i32* %pic_pix_y, align 4
  %shr30 = ashr i32 %34, 2
  %idxprom31 = sext i32 %shr30 to i64
  %35 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx32 = getelementptr inbounds i8**, i8*** %35, i64 1
  %36 = load i8**, i8*** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds i8*, i8** %36, i64 %idxprom31
  %37 = load i8*, i8** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %37, i64 %idxprom29
  %38 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %38 to i16
  call void @LumaPrediction4x4(i32 %20, i32 %21, i32 %conv19, i32 0, i32 0, i16 signext %conv27, i16 signext %conv35)
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.69, %if.end
  %39 = load i32, i32* %j, align 4
  %cmp37 = icmp slt i32 %39, 4
  br i1 %cmp37, label %for.body.39, label %for.end.71

for.body.39:                                      ; preds = %for.cond.36
  store i32 0, i32* %i, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc, %for.body.39
  %40 = load i32, i32* %i, align 4
  %cmp41 = icmp slt i32 %40, 4
  br i1 %cmp41, label %for.body.43, label %for.end

for.body.43:                                      ; preds = %for.cond.40
  %41 = load i32, i32* %pic_pix_x, align 4
  %42 = load i32, i32* %i, align 4
  %add44 = add nsw i32 %41, %42
  %idxprom45 = sext i32 %add44 to i64
  %43 = load i32, i32* %pic_pix_y, align 4
  %44 = load i32, i32* %j, align 4
  %add46 = add nsw i32 %43, %44
  %idxprom47 = sext i32 %add46 to i64
  %45 = load i16**, i16*** @imgY_org, align 8
  %arrayidx48 = getelementptr inbounds i16*, i16** %45, i64 %idxprom47
  %46 = load i16*, i16** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds i16, i16* %46, i64 %idxprom45
  %47 = load i16, i16* %arrayidx49, align 2
  %conv50 = zext i16 %47 to i32
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %block_x, align 4
  %add51 = add nsw i32 %48, %49
  %idxprom52 = sext i32 %add51 to i64
  %50 = load i32, i32* %j, align 4
  %51 = load i32, i32* %block_y, align 4
  %add53 = add nsw i32 %50, %51
  %idxprom54 = sext i32 %add53 to i64
  %52 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %52, i32 0, i32 51
  %arrayidx55 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i64 %idxprom54
  %arrayidx56 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx55, i32 0, i64 %idxprom52
  %53 = load i16, i16* %arrayidx56, align 2
  %conv57 = zext i16 %53 to i32
  %sub = sub nsw i32 %conv50, %conv57
  %54 = load i32, i32* %block_x, align 4
  %55 = load i32, i32* %mb_x, align 4
  %sub58 = sub nsw i32 %54, %55
  %56 = load i32, i32* %i, align 4
  %add59 = add nsw i32 %sub58, %56
  %idxprom60 = sext i32 %add59 to i64
  %57 = load i32, i32* %block_y, align 4
  %58 = load i32, i32* %mb_y, align 4
  %sub61 = sub nsw i32 %57, %58
  %59 = load i32, i32* %j, align 4
  %add62 = add nsw i32 %sub61, %59
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %curr_diff, i32 0, i64 %idxprom63
  %arrayidx65 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx64, i32 0, i64 %idxprom60
  store i32 %sub, i32* %arrayidx65, align 4
  %60 = load i32, i32* %k, align 4
  %idxprom66 = sext i32 %60 to i64
  %arrayidx67 = getelementptr inbounds [16 x i32], [16 x i32]* @diff, i32 0, i64 %idxprom66
  store i32 %sub, i32* %arrayidx67, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.43
  %61 = load i32, i32* %i, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %i, align 4
  %62 = load i32, i32* %k, align 4
  %inc68 = add nsw i32 %62, 1
  store i32 %inc68, i32* %k, align 4
  br label %for.cond.40

for.end:                                          ; preds = %for.cond.40
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.end
  %63 = load i32, i32* %j, align 4
  %inc70 = add nsw i32 %63, 1
  store i32 %inc70, i32* %j, align 4
  br label %for.cond.36

for.end.71:                                       ; preds = %for.cond.36
  %call = call i32 @distortion4x4(i32* getelementptr inbounds ([16 x i32], [16 x i32]* @diff, i32 0, i32 0))
  %64 = load i32, i32* %cost, align 4
  %add72 = add nsw i32 %64, %call
  store i32 %add72, i32* %cost, align 4
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.end.71
  %65 = load i32, i32* %block_x, align 4
  %add74 = add nsw i32 %65, 4
  store i32 %add74, i32* %block_x, align 4
  br label %for.cond.3

for.end.75:                                       ; preds = %for.cond.3
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.end.75
  %66 = load i32, i32* %block_y, align 4
  %add77 = add nsw i32 %66, 4
  store i32 %add77, i32* %block_y, align 4
  br label %for.cond

for.end.78:                                       ; preds = %for.cond
  %67 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %67, i32 0, i32 113
  %68 = load i32, i32* %rdopt, align 4
  %cmp79 = icmp eq i32 %68, 0
  br i1 %cmp79, label %land.lhs.true, label %if.end.96

land.lhs.true:                                    ; preds = %for.end.78
  %69 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %69, i32 0, i32 153
  %70 = load i32, i32* %Transform8x8Mode, align 4
  %tobool = icmp ne i32 %70, 0
  br i1 %tobool, label %if.then.81, label %if.end.96

if.then.81:                                       ; preds = %land.lhs.true
  store i32 0, i32* %k, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.90, %if.then.81
  %71 = load i32, i32* %j, align 4
  %cmp83 = icmp slt i32 %71, 8
  br i1 %cmp83, label %for.body.85, label %for.end.93

for.body.85:                                      ; preds = %for.cond.82
  %72 = load i32, i32* %k, align 4
  %idxprom86 = sext i32 %72 to i64
  %arrayidx87 = getelementptr inbounds [64 x i32], [64 x i32]* @diff64, i32 0, i64 %idxprom86
  %73 = bitcast i32* %arrayidx87 to i8*
  %74 = load i32, i32* %j, align 4
  %idxprom88 = sext i32 %74 to i64
  %arrayidx89 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %curr_diff, i32 0, i64 %idxprom88
  %75 = bitcast [8 x i32]* %arrayidx89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %75, i64 32, i32 4, i1 false)
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.body.85
  %76 = load i32, i32* %j, align 4
  %inc91 = add nsw i32 %76, 1
  store i32 %inc91, i32* %j, align 4
  %77 = load i32, i32* %k, align 4
  %add92 = add nsw i32 %77, 8
  store i32 %add92, i32* %k, align 4
  br label %for.cond.82

for.end.93:                                       ; preds = %for.cond.82
  %call94 = call i32 @distortion8x8(i32* getelementptr inbounds ([64 x i32], [64 x i32]* @diff64, i32 0, i32 0))
  %78 = load i32*, i32** %cost8x8.addr, align 8
  %79 = load i32, i32* %78, align 4
  %add95 = add nsw i32 %79, %call94
  store i32 %add95, i32* %78, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %for.end.93, %land.lhs.true, %for.end.78
  %80 = load i32, i32* %cost, align 4
  store i32 %80, i32* %retval
  br label %return

return:                                           ; preds = %if.end.96, %if.then
  %81 = load i32, i32* %retval
  ret i32 %81
}

; Function Attrs: nounwind uwtable
define i32 @GetDirectCostMB() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %cost = alloca i32, align 4
  %cost8x8 = alloca i32, align 4
  store i32 0, i32* %cost, align 4
  store i32 0, i32* %cost8x8, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %call = call i32 @GetDirectCost8x8(i32 %1, i32* %cost8x8)
  %2 = load i32, i32* %cost, align 4
  %add = add nsw i32 %2, %call
  store i32 %add, i32* %cost, align 4
  %3 = load i32, i32* %cost8x8, align 4
  %cmp1 = icmp eq i32 %3, 2147483647
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 2147483647, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 153
  %6 = load i32, i32* %Transform8x8Mode, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %for.end
  %7 = load i32, i32* %cost8x8, align 4
  %8 = load i32, i32* %cost, align 4
  %cmp2 = icmp slt i32 %7, %8
  br i1 %cmp2, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %InterSearch8x4 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 81
  %10 = load i32, i32* %InterSearch8x4, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %land.lhs.true, label %if.then.6

land.lhs.true:                                    ; preds = %lor.lhs.false
  %11 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %InterSearch4x8 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %11, i32 0, i32 82
  %12 = load i32, i32* %InterSearch4x8, align 4
  %tobool3 = icmp ne i32 %12, 0
  br i1 %tobool3, label %land.lhs.true.4, label %if.then.6

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %13 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %InterSearch4x4 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %13, i32 0, i32 83
  %14 = load i32, i32* %InterSearch4x4, align 4
  %tobool5 = icmp ne i32 %14, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true.4, %land.lhs.true, %lor.lhs.false, %sw.bb
  %15 = load i32, i32* %cost8x8, align 4
  store i32 %15, i32* %cost, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %land.lhs.true.4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %for.end
  %16 = load i32, i32* %cost8x8, align 4
  store i32 %16, i32* %cost, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.8, %if.end.7
  %17 = load i32, i32* %cost, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define void @PartitionMotionSearch(i32 %blocktype, i32 %block8x8, i32* %lambda_factor) #0 {
entry:
  %blocktype.addr = alloca i32, align 4
  %block8x8.addr = alloca i32, align 4
  %lambda_factor.addr = alloca i32*, align 8
  %ref_array = alloca i8**, align 8
  %mv_array = alloca i16***, align 8
  %all_mv = alloca i16*, align 8
  %ref = alloca i16, align 2
  %v = alloca i32, align 4
  %h = alloca i32, align 4
  %mcost = alloca i32, align 4
  %search_range = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pic_block_x = alloca i32, align 4
  %pic_block_y = alloca i32, align 4
  %bslice = alloca i32, align 4
  %parttype = alloca i32, align 4
  %step_h0 = alloca i32, align 4
  %step_v0 = alloca i32, align 4
  %step_h = alloca i32, align 4
  %step_v = alloca i32, align 4
  %list = alloca i32, align 4
  %numlists = alloca i32, align 4
  %list_offset = alloca i32, align 4
  %m_cost = alloca i32*, align 8
  %by = alloca i32, align 4
  %bx = alloca i32, align 4
  store i32 %blocktype, i32* %blocktype.addr, align 4
  store i32 %block8x8, i32* %block8x8.addr, align 4
  store i32* %lambda_factor, i32** %lambda_factor.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 5
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %bslice, align 4
  %2 = load i32, i32* %blocktype.addr, align 4
  %cmp1 = icmp slt i32 %2, 4
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %blocktype.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ 4, %cond.false ]
  store i32 %cond, i32* %parttype, align 4
  %4 = load i32, i32* %parttype, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 19
  %arrayidx = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size, i32 0, i64 %idxprom
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 0
  %6 = load i32, i32* %arrayidx3, align 4
  store i32 %6, i32* %step_h0, align 4
  %7 = load i32, i32* %parttype, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size5 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 19
  %arrayidx6 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size5, i32 0, i64 %idxprom4
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx6, i32 0, i64 1
  %9 = load i32, i32* %arrayidx7, align 4
  store i32 %9, i32* %step_v0, align 4
  %10 = load i32, i32* %blocktype.addr, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size9 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %11, i32 0, i32 19
  %arrayidx10 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size9, i32 0, i64 %idxprom8
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx10, i32 0, i64 0
  %12 = load i32, i32* %arrayidx11, align 4
  store i32 %12, i32* %step_h, align 4
  %13 = load i32, i32* %blocktype.addr, align 4
  %idxprom12 = sext i32 %13 to i64
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size13 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 19
  %arrayidx14 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size13, i32 0, i64 %idxprom12
  %arrayidx15 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx14, i32 0, i64 1
  %15 = load i32, i32* %arrayidx15, align 4
  store i32 %15, i32* %step_v, align 4
  %16 = load i32, i32* %bslice, align 4
  %tobool = icmp ne i32 %16, 0
  %cond16 = select i1 %tobool, i32 2, i32 1
  store i32 %cond16, i32* %numlists, align 4
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 3
  %18 = load i32, i32* %current_mb_nr, align 4
  %idxprom17 = sext i32 %18 to i64
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 61
  %20 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx18 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %20, i64 %idxprom17
  %list_offset19 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx18, i32 0, i32 21
  %21 = load i32, i32* %list_offset19, align 4
  store i32 %21, i32* %list_offset, align 4
  %22 = load i32, i32* %block8x8.addr, align 4
  %idxprom20 = sext i32 %22 to i64
  %23 = load i32, i32* %parttype, align 4
  %idxprom21 = sext i32 %23 to i64
  %arrayidx22 = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* @PartitionMotionSearch.by0, i32 0, i64 %idxprom21
  %arrayidx23 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx22, i32 0, i64 %idxprom20
  %24 = load i32, i32* %arrayidx23, align 4
  store i32 %24, i32* %by, align 4
  %25 = load i32, i32* %block8x8.addr, align 4
  %idxprom24 = sext i32 %25 to i64
  %26 = load i32, i32* %parttype, align 4
  %idxprom25 = sext i32 %26 to i64
  %arrayidx26 = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* @PartitionMotionSearch.bx0, i32 0, i64 %idxprom25
  %arrayidx27 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx26, i32 0, i64 %idxprom24
  %27 = load i32, i32* %arrayidx27, align 4
  store i32 %27, i32* %bx, align 4
  store i32 0, i32* %list, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.126, %cond.end
  %28 = load i32, i32* %list, align 4
  %29 = load i32, i32* %numlists, align 4
  %cmp28 = icmp slt i32 %28, %29
  br i1 %cmp28, label %for.body, label %for.end.128

for.body:                                         ; preds = %for.cond
  store i16 0, i16* %ref, align 2
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.123, %for.body
  %30 = load i16, i16* %ref, align 2
  %conv31 = sext i16 %30 to i32
  %31 = load i32, i32* %list, align 4
  %32 = load i32, i32* %list_offset, align 4
  %add = add nsw i32 %31, %32
  %idxprom32 = sext i32 %add to i64
  %arrayidx33 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom32
  %33 = load i32, i32* %arrayidx33, align 4
  %cmp34 = icmp slt i32 %conv31, %33
  br i1 %cmp34, label %for.body.36, label %for.end.125

for.body.36:                                      ; preds = %for.cond.30
  %34 = load i32, i32* %block8x8.addr, align 4
  %idxprom37 = sext i32 %34 to i64
  %35 = load i16, i16* %ref, align 2
  %idxprom38 = sext i16 %35 to i64
  %36 = load i32, i32* %list, align 4
  %idxprom39 = sext i32 %36 to i64
  %37 = load i32, i32* %blocktype.addr, align 4
  %idxprom40 = sext i32 %37 to i64
  %38 = load i32****, i32***** @motion_cost, align 8
  %arrayidx41 = getelementptr inbounds i32***, i32**** %38, i64 %idxprom40
  %39 = load i32***, i32**** %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds i32**, i32*** %39, i64 %idxprom39
  %40 = load i32**, i32*** %arrayidx42, align 8
  %arrayidx43 = getelementptr inbounds i32*, i32** %40, i64 %idxprom38
  %41 = load i32*, i32** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %41, i64 %idxprom37
  store i32* %arrayidx44, i32** %m_cost, align 8
  %42 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %full_search = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %42, i32 0, i32 106
  %43 = load i32, i32* %full_search, align 4
  %cmp45 = icmp eq i32 %43, 2
  br i1 %cmp45, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.36
  %44 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %search_range47 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %44, i32 0, i32 7
  %45 = load i32, i32* %search_range47, align 4
  store i32 %45, i32* %search_range, align 4
  br label %if.end.62

if.else:                                          ; preds = %for.body.36
  %46 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %full_search48 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %46, i32 0, i32 106
  %47 = load i32, i32* %full_search48, align 4
  %cmp49 = icmp eq i32 %47, 1
  br i1 %cmp49, label %if.then.51, label %if.else.55

if.then.51:                                       ; preds = %if.else
  %48 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %search_range52 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %48, i32 0, i32 7
  %49 = load i32, i32* %search_range52, align 4
  %50 = load i16, i16* %ref, align 2
  %conv53 = sext i16 %50 to i32
  %call = call i32 @imin(i32 %conv53, i32 1)
  %add54 = add nsw i32 %call, 1
  %div = sdiv i32 %49, %add54
  store i32 %div, i32* %search_range, align 4
  br label %if.end

if.else.55:                                       ; preds = %if.else
  %51 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %search_range56 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %51, i32 0, i32 7
  %52 = load i32, i32* %search_range56, align 4
  %53 = load i16, i16* %ref, align 2
  %conv57 = sext i16 %53 to i32
  %call58 = call i32 @imin(i32 %conv57, i32 1)
  %add59 = add nsw i32 %call58, 1
  %54 = load i32, i32* %blocktype.addr, align 4
  %call60 = call i32 @imin(i32 2, i32 %54)
  %mul = mul nsw i32 %add59, %call60
  %div61 = sdiv i32 %52, %mul
  store i32 %div61, i32* %search_range, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.55, %if.then.51
  br label %if.end.62

if.end.62:                                        ; preds = %if.end, %if.then
  %55 = load i32, i32* %list, align 4
  %idxprom63 = sext i32 %55 to i64
  %56 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %56, i32 0, i32 35
  %57 = load i8***, i8**** %ref_idx, align 8
  %arrayidx64 = getelementptr inbounds i8**, i8*** %57, i64 %idxprom63
  %58 = load i8**, i8*** %arrayidx64, align 8
  store i8** %58, i8*** %ref_array, align 8
  %59 = load i32, i32* %list, align 4
  %idxprom65 = sext i32 %59 to i64
  %60 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %60, i32 0, i32 38
  %61 = load i16****, i16***** %mv, align 8
  %arrayidx66 = getelementptr inbounds i16***, i16**** %61, i64 %idxprom65
  %62 = load i16***, i16**** %arrayidx66, align 8
  store i16*** %62, i16**** %mv_array, align 8
  %63 = load i32*, i32** %m_cost, align 8
  store i32 0, i32* %63, align 4
  %64 = load i32, i32* %by, align 4
  store i32 %64, i32* %v, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.120, %if.end.62
  %65 = load i32, i32* %v, align 4
  %66 = load i32, i32* %by, align 4
  %67 = load i32, i32* %step_v0, align 4
  %add68 = add nsw i32 %66, %67
  %cmp69 = icmp slt i32 %65, %add68
  br i1 %cmp69, label %for.body.71, label %for.end.122

for.body.71:                                      ; preds = %for.cond.67
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 38
  %69 = load i32, i32* %block_y, align 4
  %70 = load i32, i32* %v, align 4
  %add72 = add nsw i32 %69, %70
  store i32 %add72, i32* %pic_block_y, align 4
  %71 = load i32, i32* %bx, align 4
  store i32 %71, i32* %h, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.117, %for.body.71
  %72 = load i32, i32* %h, align 4
  %73 = load i32, i32* %bx, align 4
  %74 = load i32, i32* %step_h0, align 4
  %add74 = add nsw i32 %73, %74
  %cmp75 = icmp slt i32 %72, %add74
  br i1 %cmp75, label %for.body.77, label %for.end.119

for.body.77:                                      ; preds = %for.cond.73
  %75 = load i32, i32* %blocktype.addr, align 4
  %idxprom78 = sext i32 %75 to i64
  %76 = load i16, i16* %ref, align 2
  %idxprom79 = sext i16 %76 to i64
  %77 = load i32, i32* %list, align 4
  %idxprom80 = sext i32 %77 to i64
  %78 = load i32, i32* %h, align 4
  %idxprom81 = sext i32 %78 to i64
  %79 = load i32, i32* %v, align 4
  %idxprom82 = sext i32 %79 to i64
  %80 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv83 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %80, i32 0, i32 80
  %81 = load i16******, i16******* %all_mv83, align 8
  %arrayidx84 = getelementptr inbounds i16*****, i16****** %81, i64 %idxprom82
  %82 = load i16*****, i16****** %arrayidx84, align 8
  %arrayidx85 = getelementptr inbounds i16****, i16***** %82, i64 %idxprom81
  %83 = load i16****, i16***** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i16***, i16**** %83, i64 %idxprom80
  %84 = load i16***, i16**** %arrayidx86, align 8
  %arrayidx87 = getelementptr inbounds i16**, i16*** %84, i64 %idxprom79
  %85 = load i16**, i16*** %arrayidx87, align 8
  %arrayidx88 = getelementptr inbounds i16*, i16** %85, i64 %idxprom78
  %86 = load i16*, i16** %arrayidx88, align 8
  store i16* %86, i16** %all_mv, align 8
  %87 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %block_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %87, i32 0, i32 37
  %88 = load i32, i32* %block_x, align 4
  %89 = load i32, i32* %h, align 4
  %add89 = add nsw i32 %88, %89
  store i32 %add89, i32* %pic_block_x, align 4
  %90 = load i16, i16* %ref, align 2
  %91 = load i32, i32* %list, align 4
  %92 = load i32, i32* %h, align 4
  %shl = shl i32 %92, 2
  %93 = load i32, i32* %v, align 4
  %shl90 = shl i32 %93, 2
  %94 = load i32, i32* %blocktype.addr, align 4
  %95 = load i32, i32* %search_range, align 4
  %96 = load i32*, i32** %lambda_factor.addr, align 8
  %call91 = call i32 @BlockMotionSearch(i16 signext %90, i32 %91, i32 %shl, i32 %shl90, i32 %94, i32 %95, i32* %96)
  store i32 %call91, i32* %mcost, align 4
  %97 = load i32, i32* %mcost, align 4
  %98 = load i32*, i32** %m_cost, align 8
  %99 = load i32, i32* %98, align 4
  %add92 = add nsw i32 %99, %97
  store i32 %add92, i32* %98, align 4
  %100 = load i32, i32* %pic_block_y, align 4
  store i32 %100, i32* %j, align 4
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.114, %for.body.77
  %101 = load i32, i32* %j, align 4
  %102 = load i32, i32* %pic_block_y, align 4
  %103 = load i32, i32* %step_v, align 4
  %add94 = add nsw i32 %102, %103
  %cmp95 = icmp slt i32 %101, %add94
  br i1 %cmp95, label %for.body.97, label %for.end.116

for.body.97:                                      ; preds = %for.cond.93
  %104 = load i32, i32* %pic_block_x, align 4
  %idxprom98 = sext i32 %104 to i64
  %105 = load i32, i32* %j, align 4
  %idxprom99 = sext i32 %105 to i64
  %106 = load i8**, i8*** %ref_array, align 8
  %arrayidx100 = getelementptr inbounds i8*, i8** %106, i64 %idxprom99
  %107 = load i8*, i8** %arrayidx100, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %107, i64 %idxprom98
  %108 = load i16, i16* %ref, align 2
  %conv102 = sext i16 %108 to i32
  %109 = trunc i32 %conv102 to i8
  %110 = load i32, i32* %step_h, align 4
  %conv103 = sext i32 %110 to i64
  %mul104 = mul i64 %conv103, 1
  call void @llvm.memset.p0i8.i64(i8* %arrayidx101, i8 %109, i64 %mul104, i32 1, i1 false)
  %111 = load i32, i32* %pic_block_x, align 4
  store i32 %111, i32* %i, align 4
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc, %for.body.97
  %112 = load i32, i32* %i, align 4
  %113 = load i32, i32* %pic_block_x, align 4
  %114 = load i32, i32* %step_h, align 4
  %add106 = add nsw i32 %113, %114
  %cmp107 = icmp slt i32 %112, %add106
  br i1 %cmp107, label %for.body.109, label %for.end

for.body.109:                                     ; preds = %for.cond.105
  %115 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %115 to i64
  %116 = load i32, i32* %j, align 4
  %idxprom111 = sext i32 %116 to i64
  %117 = load i16***, i16**** %mv_array, align 8
  %arrayidx112 = getelementptr inbounds i16**, i16*** %117, i64 %idxprom111
  %118 = load i16**, i16*** %arrayidx112, align 8
  %arrayidx113 = getelementptr inbounds i16*, i16** %118, i64 %idxprom110
  %119 = load i16*, i16** %arrayidx113, align 8
  %120 = bitcast i16* %119 to i8*
  %121 = load i16*, i16** %all_mv, align 8
  %122 = bitcast i16* %121 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %120, i8* %122, i64 4, i32 2, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body.109
  %123 = load i32, i32* %i, align 4
  %inc = add nsw i32 %123, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.105

for.end:                                          ; preds = %for.cond.105
  br label %for.inc.114

for.inc.114:                                      ; preds = %for.end
  %124 = load i32, i32* %j, align 4
  %inc115 = add nsw i32 %124, 1
  store i32 %inc115, i32* %j, align 4
  br label %for.cond.93

for.end.116:                                      ; preds = %for.cond.93
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.end.116
  %125 = load i32, i32* %step_h, align 4
  %126 = load i32, i32* %h, align 4
  %add118 = add nsw i32 %126, %125
  store i32 %add118, i32* %h, align 4
  br label %for.cond.73

for.end.119:                                      ; preds = %for.cond.73
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.end.119
  %127 = load i32, i32* %step_v, align 4
  %128 = load i32, i32* %v, align 4
  %add121 = add nsw i32 %128, %127
  store i32 %add121, i32* %v, align 4
  br label %for.cond.67

for.end.122:                                      ; preds = %for.cond.67
  br label %for.inc.123

for.inc.123:                                      ; preds = %for.end.122
  %129 = load i16, i16* %ref, align 2
  %inc124 = add i16 %129, 1
  store i16 %inc124, i16* %ref, align 2
  br label %for.cond.30

for.end.125:                                      ; preds = %for.cond.30
  br label %for.inc.126

for.inc.126:                                      ; preds = %for.end.125
  %130 = load i32, i32* %list, align 4
  %inc127 = add nsw i32 %130, 1
  store i32 %inc127, i32* %list, align 4
  br label %for.cond

for.end.128:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @Get_Direct_Motion_Vectors() #0 {
entry:
  %block_x = alloca i32, align 4
  %block_y = alloca i32, align 4
  %pic_block_x = alloca i32, align 4
  %pic_block_y = alloca i32, align 4
  %opic_block_x = alloca i32, align 4
  %opic_block_y = alloca i32, align 4
  %all_mvs = alloca i16****, align 8
  %mv_scale = alloca i32, align 4
  %refList = alloca i32, align 4
  %ref_idx = alloca i32, align 4
  %moving_block = alloca i8**, align 8
  %co_located_mv = alloca i16****, align 8
  %co_located_ref_idx = alloca i8***, align 8
  %co_located_ref_id = alloca i64***, align 8
  %ref_pic_l0 = alloca i8**, align 8
  %ref_pic_l1 = alloca i8**, align 8
  %currMB = alloca %struct.macroblock*, align 8
  %l0_refA = alloca i16, align 2
  %l0_refB = alloca i16, align 2
  %l0_refD = alloca i16, align 2
  %l0_refC = alloca i16, align 2
  %l1_refA = alloca i16, align 2
  %l1_refB = alloca i16, align 2
  %l1_refD = alloca i16, align 2
  %l1_refC = alloca i16, align 2
  %l0_refX = alloca i16, align 2
  %l1_refX = alloca i16, align 2
  %pmvfw = alloca [2 x i16], align 2
  %pmvbw = alloca [2 x i16], align 2
  %mb_a = alloca %struct.pix_pos, align 4
  %mb_b = alloca %struct.pix_pos, align 4
  %mb_d = alloca %struct.pix_pos, align 4
  %mb_c = alloca %struct.pix_pos, align 4
  %weight_sum = alloca i32, align 4
  %i = alloca i32, align 4
  %invalid_wp = alloca i32, align 4
  %refpic = alloca i64*, align 8
  %mapped_idx = alloca i32, align 4
  %iref = alloca i32, align 4
  %weight_sum1674 = alloca i32, align 4
  %i1675 = alloca i32, align 4
  %l0_refX1676 = alloca i16, align 2
  %l1_refX1683 = alloca i16, align 2
  %0 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx1 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %0, i32 0, i32 35
  %1 = load i8***, i8**** %ref_idx1, align 8
  %arrayidx = getelementptr inbounds i8**, i8*** %1, i64 0
  %2 = load i8**, i8*** %arrayidx, align 8
  store i8** %2, i8*** %ref_pic_l0, align 8
  %3 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx2 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %3, i32 0, i32 35
  %4 = load i8***, i8**** %ref_idx2, align 8
  %arrayidx3 = getelementptr inbounds i8**, i8*** %4, i64 1
  %5 = load i8**, i8*** %arrayidx3, align 8
  store i8** %5, i8*** %ref_pic_l1, align 8
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 3
  %7 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 61
  %9 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx4 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %9, i64 %idxprom
  store %struct.macroblock* %arrayidx4, %struct.macroblock** %currMB, align 8
  %10 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %list_offset = getelementptr inbounds %struct.macroblock, %struct.macroblock* %10, i32 0, i32 21
  %11 = load i32, i32* %list_offset, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.else.8

if.then:                                          ; preds = %entry
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 3
  %13 = load i32, i32* %current_mb_nr5, align 4
  %rem = srem i32 %13, 2
  %tobool6 = icmp ne i32 %rem, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %14 = load %struct.colocated_params*, %struct.colocated_params** @Co_located, align 8
  %bottom_moving_block = getelementptr inbounds %struct.colocated_params, %struct.colocated_params* %14, i32 0, i32 17
  %15 = load i8**, i8*** %bottom_moving_block, align 8
  store i8** %15, i8*** %moving_block, align 8
  %16 = load %struct.colocated_params*, %struct.colocated_params** @Co_located, align 8
  %bottom_mv = getelementptr inbounds %struct.colocated_params, %struct.colocated_params* %16, i32 0, i32 16
  %17 = load i16****, i16***** %bottom_mv, align 8
  store i16**** %17, i16***** %co_located_mv, align 8
  %18 = load %struct.colocated_params*, %struct.colocated_params** @Co_located, align 8
  %bottom_ref_idx = getelementptr inbounds %struct.colocated_params, %struct.colocated_params* %18, i32 0, i32 14
  %19 = load i8***, i8**** %bottom_ref_idx, align 8
  store i8*** %19, i8**** %co_located_ref_idx, align 8
  %20 = load %struct.colocated_params*, %struct.colocated_params** @Co_located, align 8
  %bottom_ref_pic_id = getelementptr inbounds %struct.colocated_params, %struct.colocated_params* %20, i32 0, i32 15
  %21 = load i64***, i64**** %bottom_ref_pic_id, align 8
  store i64*** %21, i64**** %co_located_ref_id, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %22 = load %struct.colocated_params*, %struct.colocated_params** @Co_located, align 8
  %top_moving_block = getelementptr inbounds %struct.colocated_params, %struct.colocated_params* %22, i32 0, i32 12
  %23 = load i8**, i8*** %top_moving_block, align 8
  store i8** %23, i8*** %moving_block, align 8
  %24 = load %struct.colocated_params*, %struct.colocated_params** @Co_located, align 8
  %top_mv = getelementptr inbounds %struct.colocated_params, %struct.colocated_params* %24, i32 0, i32 11
  %25 = load i16****, i16***** %top_mv, align 8
  store i16**** %25, i16***** %co_located_mv, align 8
  %26 = load %struct.colocated_params*, %struct.colocated_params** @Co_located, align 8
  %top_ref_idx = getelementptr inbounds %struct.colocated_params, %struct.colocated_params* %26, i32 0, i32 9
  %27 = load i8***, i8**** %top_ref_idx, align 8
  store i8*** %27, i8**** %co_located_ref_idx, align 8
  %28 = load %struct.colocated_params*, %struct.colocated_params** @Co_located, align 8
  %top_ref_pic_id = getelementptr inbounds %struct.colocated_params, %struct.colocated_params* %28, i32 0, i32 10
  %29 = load i64***, i64**** %top_ref_pic_id, align 8
  store i64*** %29, i64**** %co_located_ref_id, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  br label %if.end.11

if.else.8:                                        ; preds = %entry
  %30 = load %struct.colocated_params*, %struct.colocated_params** @Co_located, align 8
  %moving_block9 = getelementptr inbounds %struct.colocated_params, %struct.colocated_params* %30, i32 0, i32 7
  %31 = load i8**, i8*** %moving_block9, align 8
  store i8** %31, i8*** %moving_block, align 8
  %32 = load %struct.colocated_params*, %struct.colocated_params** @Co_located, align 8
  %mv = getelementptr inbounds %struct.colocated_params, %struct.colocated_params* %32, i32 0, i32 6
  %33 = load i16****, i16***** %mv, align 8
  store i16**** %33, i16***** %co_located_mv, align 8
  %34 = load %struct.colocated_params*, %struct.colocated_params** @Co_located, align 8
  %ref_idx10 = getelementptr inbounds %struct.colocated_params, %struct.colocated_params* %34, i32 0, i32 4
  %35 = load i8***, i8**** %ref_idx10, align 8
  store i8*** %35, i8**** %co_located_ref_idx, align 8
  %36 = load %struct.colocated_params*, %struct.colocated_params** @Co_located, align 8
  %ref_pic_id = getelementptr inbounds %struct.colocated_params, %struct.colocated_params* %36, i32 0, i32 5
  %37 = load i64***, i64**** %ref_pic_id, align 8
  store i64*** %37, i64**** %co_located_ref_id, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.8, %if.end
  %38 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %direct_spatial_mv_pred_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %38, i32 0, i32 87
  %39 = load i32, i32* %direct_spatial_mv_pred_flag, align 4
  %tobool12 = icmp ne i32 %39, 0
  br i1 %tobool12, label %if.then.13, label %if.else.1313

if.then.13:                                       ; preds = %if.end.11
  %40 = bitcast [2 x i16]* %pmvfw to i8*
  call void @llvm.memset.p0i8.i64(i8* %40, i8 0, i64 4, i32 2, i1 false)
  %41 = bitcast [2 x i16]* %pmvbw to i8*
  call void @llvm.memset.p0i8.i64(i8* %41, i8 0, i64 4, i32 2, i1 false)
  %42 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr14 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %42, i32 0, i32 3
  %43 = load i32, i32* %current_mb_nr14, align 4
  call void @getLuma4x4Neighbour(i32 %43, i32 -1, i32 0, %struct.pix_pos* %mb_a)
  %44 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr15 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %44, i32 0, i32 3
  %45 = load i32, i32* %current_mb_nr15, align 4
  call void @getLuma4x4Neighbour(i32 %45, i32 0, i32 -1, %struct.pix_pos* %mb_b)
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr16 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 3
  %47 = load i32, i32* %current_mb_nr16, align 4
  call void @getLuma4x4Neighbour(i32 %47, i32 16, i32 -1, %struct.pix_pos* %mb_c)
  %48 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr17 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %48, i32 0, i32 3
  %49 = load i32, i32* %current_mb_nr17, align 4
  call void @getLuma4x4Neighbour(i32 %49, i32 -1, i32 -1, %struct.pix_pos* %mb_d)
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 100
  %51 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool18 = icmp ne i32 %51, 0
  br i1 %tobool18, label %if.else.126, label %if.then.19

if.then.19:                                       ; preds = %if.then.13
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 0
  %52 = load i32, i32* %available, align 4
  %tobool20 = icmp ne i32 %52, 0
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.19
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 4
  %53 = load i32, i32* %pos_x, align 4
  %idxprom21 = sext i32 %53 to i64
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 5
  %54 = load i32, i32* %pos_y, align 4
  %idxprom22 = sext i32 %54 to i64
  %55 = load i8**, i8*** %ref_pic_l0, align 8
  %arrayidx23 = getelementptr inbounds i8*, i8** %55, i64 %idxprom22
  %56 = load i8*, i8** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %56, i64 %idxprom21
  %57 = load i8, i8* %arrayidx24, align 1
  %conv = sext i8 %57 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then.19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ -1, %cond.false ]
  %conv25 = trunc i32 %cond to i16
  store i16 %conv25, i16* %l0_refA, align 2
  %available26 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 0
  %58 = load i32, i32* %available26, align 4
  %tobool27 = icmp ne i32 %58, 0
  br i1 %tobool27, label %cond.true.28, label %cond.false.36

cond.true.28:                                     ; preds = %cond.end
  %pos_x29 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 4
  %59 = load i32, i32* %pos_x29, align 4
  %idxprom30 = sext i32 %59 to i64
  %pos_y31 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 5
  %60 = load i32, i32* %pos_y31, align 4
  %idxprom32 = sext i32 %60 to i64
  %61 = load i8**, i8*** %ref_pic_l0, align 8
  %arrayidx33 = getelementptr inbounds i8*, i8** %61, i64 %idxprom32
  %62 = load i8*, i8** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %62, i64 %idxprom30
  %63 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %63 to i32
  br label %cond.end.37

cond.false.36:                                    ; preds = %cond.end
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.28
  %cond38 = phi i32 [ %conv35, %cond.true.28 ], [ -1, %cond.false.36 ]
  %conv39 = trunc i32 %cond38 to i16
  store i16 %conv39, i16* %l0_refB, align 2
  %available40 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 0
  %64 = load i32, i32* %available40, align 4
  %tobool41 = icmp ne i32 %64, 0
  br i1 %tobool41, label %cond.true.42, label %cond.false.50

cond.true.42:                                     ; preds = %cond.end.37
  %pos_x43 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 4
  %65 = load i32, i32* %pos_x43, align 4
  %idxprom44 = sext i32 %65 to i64
  %pos_y45 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 5
  %66 = load i32, i32* %pos_y45, align 4
  %idxprom46 = sext i32 %66 to i64
  %67 = load i8**, i8*** %ref_pic_l0, align 8
  %arrayidx47 = getelementptr inbounds i8*, i8** %67, i64 %idxprom46
  %68 = load i8*, i8** %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %68, i64 %idxprom44
  %69 = load i8, i8* %arrayidx48, align 1
  %conv49 = sext i8 %69 to i32
  br label %cond.end.51

cond.false.50:                                    ; preds = %cond.end.37
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.50, %cond.true.42
  %cond52 = phi i32 [ %conv49, %cond.true.42 ], [ -1, %cond.false.50 ]
  %conv53 = trunc i32 %cond52 to i16
  store i16 %conv53, i16* %l0_refD, align 2
  %available54 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 0
  %70 = load i32, i32* %available54, align 4
  %tobool55 = icmp ne i32 %70, 0
  br i1 %tobool55, label %cond.true.56, label %cond.false.64

cond.true.56:                                     ; preds = %cond.end.51
  %pos_x57 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 4
  %71 = load i32, i32* %pos_x57, align 4
  %idxprom58 = sext i32 %71 to i64
  %pos_y59 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 5
  %72 = load i32, i32* %pos_y59, align 4
  %idxprom60 = sext i32 %72 to i64
  %73 = load i8**, i8*** %ref_pic_l0, align 8
  %arrayidx61 = getelementptr inbounds i8*, i8** %73, i64 %idxprom60
  %74 = load i8*, i8** %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %74, i64 %idxprom58
  %75 = load i8, i8* %arrayidx62, align 1
  %conv63 = sext i8 %75 to i32
  br label %cond.end.66

cond.false.64:                                    ; preds = %cond.end.51
  %76 = load i16, i16* %l0_refD, align 2
  %conv65 = sext i16 %76 to i32
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.64, %cond.true.56
  %cond67 = phi i32 [ %conv63, %cond.true.56 ], [ %conv65, %cond.false.64 ]
  %conv68 = trunc i32 %cond67 to i16
  store i16 %conv68, i16* %l0_refC, align 2
  %available69 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 0
  %77 = load i32, i32* %available69, align 4
  %tobool70 = icmp ne i32 %77, 0
  br i1 %tobool70, label %cond.true.71, label %cond.false.79

cond.true.71:                                     ; preds = %cond.end.66
  %pos_x72 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 4
  %78 = load i32, i32* %pos_x72, align 4
  %idxprom73 = sext i32 %78 to i64
  %pos_y74 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 5
  %79 = load i32, i32* %pos_y74, align 4
  %idxprom75 = sext i32 %79 to i64
  %80 = load i8**, i8*** %ref_pic_l1, align 8
  %arrayidx76 = getelementptr inbounds i8*, i8** %80, i64 %idxprom75
  %81 = load i8*, i8** %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %81, i64 %idxprom73
  %82 = load i8, i8* %arrayidx77, align 1
  %conv78 = sext i8 %82 to i32
  br label %cond.end.80

cond.false.79:                                    ; preds = %cond.end.66
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.79, %cond.true.71
  %cond81 = phi i32 [ %conv78, %cond.true.71 ], [ -1, %cond.false.79 ]
  %conv82 = trunc i32 %cond81 to i16
  store i16 %conv82, i16* %l1_refA, align 2
  %available83 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 0
  %83 = load i32, i32* %available83, align 4
  %tobool84 = icmp ne i32 %83, 0
  br i1 %tobool84, label %cond.true.85, label %cond.false.93

cond.true.85:                                     ; preds = %cond.end.80
  %pos_x86 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 4
  %84 = load i32, i32* %pos_x86, align 4
  %idxprom87 = sext i32 %84 to i64
  %pos_y88 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 5
  %85 = load i32, i32* %pos_y88, align 4
  %idxprom89 = sext i32 %85 to i64
  %86 = load i8**, i8*** %ref_pic_l1, align 8
  %arrayidx90 = getelementptr inbounds i8*, i8** %86, i64 %idxprom89
  %87 = load i8*, i8** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %87, i64 %idxprom87
  %88 = load i8, i8* %arrayidx91, align 1
  %conv92 = sext i8 %88 to i32
  br label %cond.end.94

cond.false.93:                                    ; preds = %cond.end.80
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.93, %cond.true.85
  %cond95 = phi i32 [ %conv92, %cond.true.85 ], [ -1, %cond.false.93 ]
  %conv96 = trunc i32 %cond95 to i16
  store i16 %conv96, i16* %l1_refB, align 2
  %available97 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 0
  %89 = load i32, i32* %available97, align 4
  %tobool98 = icmp ne i32 %89, 0
  br i1 %tobool98, label %cond.true.99, label %cond.false.107

cond.true.99:                                     ; preds = %cond.end.94
  %pos_x100 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 4
  %90 = load i32, i32* %pos_x100, align 4
  %idxprom101 = sext i32 %90 to i64
  %pos_y102 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 5
  %91 = load i32, i32* %pos_y102, align 4
  %idxprom103 = sext i32 %91 to i64
  %92 = load i8**, i8*** %ref_pic_l1, align 8
  %arrayidx104 = getelementptr inbounds i8*, i8** %92, i64 %idxprom103
  %93 = load i8*, i8** %arrayidx104, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %93, i64 %idxprom101
  %94 = load i8, i8* %arrayidx105, align 1
  %conv106 = sext i8 %94 to i32
  br label %cond.end.108

cond.false.107:                                   ; preds = %cond.end.94
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.false.107, %cond.true.99
  %cond109 = phi i32 [ %conv106, %cond.true.99 ], [ -1, %cond.false.107 ]
  %conv110 = trunc i32 %cond109 to i16
  store i16 %conv110, i16* %l1_refD, align 2
  %available111 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 0
  %95 = load i32, i32* %available111, align 4
  %tobool112 = icmp ne i32 %95, 0
  br i1 %tobool112, label %cond.true.113, label %cond.false.121

cond.true.113:                                    ; preds = %cond.end.108
  %pos_x114 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 4
  %96 = load i32, i32* %pos_x114, align 4
  %idxprom115 = sext i32 %96 to i64
  %pos_y116 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 5
  %97 = load i32, i32* %pos_y116, align 4
  %idxprom117 = sext i32 %97 to i64
  %98 = load i8**, i8*** %ref_pic_l1, align 8
  %arrayidx118 = getelementptr inbounds i8*, i8** %98, i64 %idxprom117
  %99 = load i8*, i8** %arrayidx118, align 8
  %arrayidx119 = getelementptr inbounds i8, i8* %99, i64 %idxprom115
  %100 = load i8, i8* %arrayidx119, align 1
  %conv120 = sext i8 %100 to i32
  br label %cond.end.123

cond.false.121:                                   ; preds = %cond.end.108
  %101 = load i16, i16* %l1_refD, align 2
  %conv122 = sext i16 %101 to i32
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.121, %cond.true.113
  %cond124 = phi i32 [ %conv120, %cond.true.113 ], [ %conv122, %cond.false.121 ]
  %conv125 = trunc i32 %cond124 to i16
  store i16 %conv125, i16* %l1_refC, align 2
  br label %if.end.802

if.else.126:                                      ; preds = %if.then.13
  %102 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %102, i32 0, i32 19
  %103 = load i32, i32* %mb_field, align 4
  %tobool127 = icmp ne i32 %103, 0
  br i1 %tobool127, label %if.then.128, label %if.else.463

if.then.128:                                      ; preds = %if.else.126
  %available129 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 0
  %104 = load i32, i32* %available129, align 4
  %tobool130 = icmp ne i32 %104, 0
  br i1 %tobool130, label %cond.true.131, label %cond.false.163

cond.true.131:                                    ; preds = %if.then.128
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 1
  %105 = load i32, i32* %mb_addr, align 4
  %idxprom132 = sext i32 %105 to i64
  %106 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data133 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %106, i32 0, i32 61
  %107 = load %struct.macroblock*, %struct.macroblock** %mb_data133, align 8
  %arrayidx134 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %107, i64 %idxprom132
  %mb_field135 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx134, i32 0, i32 19
  %108 = load i32, i32* %mb_field135, align 4
  %tobool136 = icmp ne i32 %108, 0
  br i1 %tobool136, label %cond.true.145, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.true.131
  %pos_x137 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 4
  %109 = load i32, i32* %pos_x137, align 4
  %idxprom138 = sext i32 %109 to i64
  %pos_y139 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 5
  %110 = load i32, i32* %pos_y139, align 4
  %idxprom140 = sext i32 %110 to i64
  %111 = load i8**, i8*** %ref_pic_l0, align 8
  %arrayidx141 = getelementptr inbounds i8*, i8** %111, i64 %idxprom140
  %112 = load i8*, i8** %arrayidx141, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %112, i64 %idxprom138
  %113 = load i8, i8* %arrayidx142, align 1
  %conv143 = sext i8 %113 to i32
  %cmp = icmp slt i32 %conv143, 0
  br i1 %cmp, label %cond.true.145, label %cond.false.153

cond.true.145:                                    ; preds = %lor.lhs.false, %cond.true.131
  %pos_x146 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 4
  %114 = load i32, i32* %pos_x146, align 4
  %idxprom147 = sext i32 %114 to i64
  %pos_y148 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 5
  %115 = load i32, i32* %pos_y148, align 4
  %idxprom149 = sext i32 %115 to i64
  %116 = load i8**, i8*** %ref_pic_l0, align 8
  %arrayidx150 = getelementptr inbounds i8*, i8** %116, i64 %idxprom149
  %117 = load i8*, i8** %arrayidx150, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %117, i64 %idxprom147
  %118 = load i8, i8* %arrayidx151, align 1
  %conv152 = sext i8 %118 to i32
  br label %cond.end.161

cond.false.153:                                   ; preds = %lor.lhs.false
  %pos_x154 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 4
  %119 = load i32, i32* %pos_x154, align 4
  %idxprom155 = sext i32 %119 to i64
  %pos_y156 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 5
  %120 = load i32, i32* %pos_y156, align 4
  %idxprom157 = sext i32 %120 to i64
  %121 = load i8**, i8*** %ref_pic_l0, align 8
  %arrayidx158 = getelementptr inbounds i8*, i8** %121, i64 %idxprom157
  %122 = load i8*, i8** %arrayidx158, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %122, i64 %idxprom155
  %123 = load i8, i8* %arrayidx159, align 1
  %conv160 = sext i8 %123 to i32
  %mul = mul nsw i32 %conv160, 2
  br label %cond.end.161

cond.end.161:                                     ; preds = %cond.false.153, %cond.true.145
  %cond162 = phi i32 [ %conv152, %cond.true.145 ], [ %mul, %cond.false.153 ]
  br label %cond.end.164

cond.false.163:                                   ; preds = %if.then.128
  br label %cond.end.164

cond.end.164:                                     ; preds = %cond.false.163, %cond.end.161
  %cond165 = phi i32 [ %cond162, %cond.end.161 ], [ -1, %cond.false.163 ]
  %conv166 = trunc i32 %cond165 to i16
  store i16 %conv166, i16* %l0_refA, align 2
  %available167 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 0
  %124 = load i32, i32* %available167, align 4
  %tobool168 = icmp ne i32 %124, 0
  br i1 %tobool168, label %cond.true.169, label %cond.false.205

cond.true.169:                                    ; preds = %cond.end.164
  %mb_addr170 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 1
  %125 = load i32, i32* %mb_addr170, align 4
  %idxprom171 = sext i32 %125 to i64
  %126 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data172 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %126, i32 0, i32 61
  %127 = load %struct.macroblock*, %struct.macroblock** %mb_data172, align 8
  %arrayidx173 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %127, i64 %idxprom171
  %mb_field174 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx173, i32 0, i32 19
  %128 = load i32, i32* %mb_field174, align 4
  %tobool175 = icmp ne i32 %128, 0
  br i1 %tobool175, label %cond.true.186, label %lor.lhs.false.176

lor.lhs.false.176:                                ; preds = %cond.true.169
  %pos_x177 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 4
  %129 = load i32, i32* %pos_x177, align 4
  %idxprom178 = sext i32 %129 to i64
  %pos_y179 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 5
  %130 = load i32, i32* %pos_y179, align 4
  %idxprom180 = sext i32 %130 to i64
  %131 = load i8**, i8*** %ref_pic_l0, align 8
  %arrayidx181 = getelementptr inbounds i8*, i8** %131, i64 %idxprom180
  %132 = load i8*, i8** %arrayidx181, align 8
  %arrayidx182 = getelementptr inbounds i8, i8* %132, i64 %idxprom178
  %133 = load i8, i8* %arrayidx182, align 1
  %conv183 = sext i8 %133 to i32
  %cmp184 = icmp slt i32 %conv183, 0
  br i1 %cmp184, label %cond.true.186, label %cond.false.194

cond.true.186:                                    ; preds = %lor.lhs.false.176, %cond.true.169
  %pos_x187 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 4
  %134 = load i32, i32* %pos_x187, align 4
  %idxprom188 = sext i32 %134 to i64
  %pos_y189 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 5
  %135 = load i32, i32* %pos_y189, align 4
  %idxprom190 = sext i32 %135 to i64
  %136 = load i8**, i8*** %ref_pic_l0, align 8
  %arrayidx191 = getelementptr inbounds i8*, i8** %136, i64 %idxprom190
  %137 = load i8*, i8** %arrayidx191, align 8
  %arrayidx192 = getelementptr inbounds i8, i8* %137, i64 %idxprom188
  %138 = load i8, i8* %arrayidx192, align 1
  %conv193 = sext i8 %138 to i32
  br label %cond.end.203

cond.false.194:                                   ; preds = %lor.lhs.false.176
  %pos_x195 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 4
  %139 = load i32, i32* %pos_x195, align 4
  %idxprom196 = sext i32 %139 to i64
  %pos_y197 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 5
  %140 = load i32, i32* %pos_y197, align 4
  %idxprom198 = sext i32 %140 to i64
  %141 = load i8**, i8*** %ref_pic_l0, align 8
  %arrayidx199 = getelementptr inbounds i8*, i8** %141, i64 %idxprom198
  %142 = load i8*, i8** %arrayidx199, align 8
  %arrayidx200 = getelementptr inbounds i8, i8* %142, i64 %idxprom196
  %143 = load i8, i8* %arrayidx200, align 1
  %conv201 = sext i8 %143 to i32
  %mul202 = mul nsw i32 %conv201, 2
  br label %cond.end.203

cond.end.203:                                     ; preds = %cond.false.194, %cond.true.186
  %cond204 = phi i32 [ %conv193, %cond.true.186 ], [ %mul202, %cond.false.194 ]
  br label %cond.end.206

cond.false.205:                                   ; preds = %cond.end.164
  br label %cond.end.206

cond.end.206:                                     ; preds = %cond.false.205, %cond.end.203
  %cond207 = phi i32 [ %cond204, %cond.end.203 ], [ -1, %cond.false.205 ]
  %conv208 = trunc i32 %cond207 to i16
  store i16 %conv208, i16* %l0_refB, align 2
  %available209 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 0
  %144 = load i32, i32* %available209, align 4
  %tobool210 = icmp ne i32 %144, 0
  br i1 %tobool210, label %cond.true.211, label %cond.false.247

cond.true.211:                                    ; preds = %cond.end.206
  %mb_addr212 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 1
  %145 = load i32, i32* %mb_addr212, align 4
  %idxprom213 = sext i32 %145 to i64
  %146 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data214 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %146, i32 0, i32 61
  %147 = load %struct.macroblock*, %struct.macroblock** %mb_data214, align 8
  %arrayidx215 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %147, i64 %idxprom213
  %mb_field216 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx215, i32 0, i32 19
  %148 = load i32, i32* %mb_field216, align 4
  %tobool217 = icmp ne i32 %148, 0
  br i1 %tobool217, label %cond.true.228, label %lor.lhs.false.218

lor.lhs.false.218:                                ; preds = %cond.true.211
  %pos_x219 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 4
  %149 = load i32, i32* %pos_x219, align 4
  %idxprom220 = sext i32 %149 to i64
  %pos_y221 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 5
  %150 = load i32, i32* %pos_y221, align 4
  %idxprom222 = sext i32 %150 to i64
  %151 = load i8**, i8*** %ref_pic_l0, align 8
  %arrayidx223 = getelementptr inbounds i8*, i8** %151, i64 %idxprom222
  %152 = load i8*, i8** %arrayidx223, align 8
  %arrayidx224 = getelementptr inbounds i8, i8* %152, i64 %idxprom220
  %153 = load i8, i8* %arrayidx224, align 1
  %conv225 = sext i8 %153 to i32
  %cmp226 = icmp slt i32 %conv225, 0
  br i1 %cmp226, label %cond.true.228, label %cond.false.236

cond.true.228:                                    ; preds = %lor.lhs.false.218, %cond.true.211
  %pos_x229 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 4
  %154 = load i32, i32* %pos_x229, align 4
  %idxprom230 = sext i32 %154 to i64
  %pos_y231 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 5
  %155 = load i32, i32* %pos_y231, align 4
  %idxprom232 = sext i32 %155 to i64
  %156 = load i8**, i8*** %ref_pic_l0, align 8
  %arrayidx233 = getelementptr inbounds i8*, i8** %156, i64 %idxprom232
  %157 = load i8*, i8** %arrayidx233, align 8
  %arrayidx234 = getelementptr inbounds i8, i8* %157, i64 %idxprom230
  %158 = load i8, i8* %arrayidx234, align 1
  %conv235 = sext i8 %158 to i32
  br label %cond.end.245

cond.false.236:                                   ; preds = %lor.lhs.false.218
  %pos_x237 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 4
  %159 = load i32, i32* %pos_x237, align 4
  %idxprom238 = sext i32 %159 to i64
  %pos_y239 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 5
  %160 = load i32, i32* %pos_y239, align 4
  %idxprom240 = sext i32 %160 to i64
  %161 = load i8**, i8*** %ref_pic_l0, align 8
  %arrayidx241 = getelementptr inbounds i8*, i8** %161, i64 %idxprom240
  %162 = load i8*, i8** %arrayidx241, align 8
  %arrayidx242 = getelementptr inbounds i8, i8* %162, i64 %idxprom238
  %163 = load i8, i8* %arrayidx242, align 1
  %conv243 = sext i8 %163 to i32
  %mul244 = mul nsw i32 %conv243, 2
  br label %cond.end.245

cond.end.245:                                     ; preds = %cond.false.236, %cond.true.228
  %cond246 = phi i32 [ %conv235, %cond.true.228 ], [ %mul244, %cond.false.236 ]
  br label %cond.end.248

cond.false.247:                                   ; preds = %cond.end.206
  br label %cond.end.248

cond.end.248:                                     ; preds = %cond.false.247, %cond.end.245
  %cond249 = phi i32 [ %cond246, %cond.end.245 ], [ -1, %cond.false.247 ]
  %conv250 = trunc i32 %cond249 to i16
  store i16 %conv250, i16* %l0_refD, align 2
  %available251 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 0
  %164 = load i32, i32* %available251, align 4
  %tobool252 = icmp ne i32 %164, 0
  br i1 %tobool252, label %cond.true.253, label %cond.false.289

cond.true.253:                                    ; preds = %cond.end.248
  %mb_addr254 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 1
  %165 = load i32, i32* %mb_addr254, align 4
  %idxprom255 = sext i32 %165 to i64
  %166 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data256 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %166, i32 0, i32 61
  %167 = load %struct.macroblock*, %struct.macroblock** %mb_data256, align 8
  %arrayidx257 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %167, i64 %idxprom255
  %mb_field258 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx257, i32 0, i32 19
  %168 = load i32, i32* %mb_field258, align 4
  %tobool259 = icmp ne i32 %168, 0
  br i1 %tobool259, label %cond.true.270, label %lor.lhs.false.260

lor.lhs.false.260:                                ; preds = %cond.true.253
  %pos_x261 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 4
  %169 = load i32, i32* %pos_x261, align 4
  %idxprom262 = sext i32 %169 to i64
  %pos_y263 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 5
  %170 = load i32, i32* %pos_y263, align 4
  %idxprom264 = sext i32 %170 to i64
  %171 = load i8**, i8*** %ref_pic_l0, align 8
  %arrayidx265 = getelementptr inbounds i8*, i8** %171, i64 %idxprom264
  %172 = load i8*, i8** %arrayidx265, align 8
  %arrayidx266 = getelementptr inbounds i8, i8* %172, i64 %idxprom262
  %173 = load i8, i8* %arrayidx266, align 1
  %conv267 = sext i8 %173 to i32
  %cmp268 = icmp slt i32 %conv267, 0
  br i1 %cmp268, label %cond.true.270, label %cond.false.278

cond.true.270:                                    ; preds = %lor.lhs.false.260, %cond.true.253
  %pos_x271 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 4
  %174 = load i32, i32* %pos_x271, align 4
  %idxprom272 = sext i32 %174 to i64
  %pos_y273 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 5
  %175 = load i32, i32* %pos_y273, align 4
  %idxprom274 = sext i32 %175 to i64
  %176 = load i8**, i8*** %ref_pic_l0, align 8
  %arrayidx275 = getelementptr inbounds i8*, i8** %176, i64 %idxprom274
  %177 = load i8*, i8** %arrayidx275, align 8
  %arrayidx276 = getelementptr inbounds i8, i8* %177, i64 %idxprom272
  %178 = load i8, i8* %arrayidx276, align 1
  %conv277 = sext i8 %178 to i32
  br label %cond.end.287

cond.false.278:                                   ; preds = %lor.lhs.false.260
  %pos_x279 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 4
  %179 = load i32, i32* %pos_x279, align 4
  %idxprom280 = sext i32 %179 to i64
  %pos_y281 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 5
  %180 = load i32, i32* %pos_y281, align 4
  %idxprom282 = sext i32 %180 to i64
  %181 = load i8**, i8*** %ref_pic_l0, align 8
  %arrayidx283 = getelementptr inbounds i8*, i8** %181, i64 %idxprom282
  %182 = load i8*, i8** %arrayidx283, align 8
  %arrayidx284 = getelementptr inbounds i8, i8* %182, i64 %idxprom280
  %183 = load i8, i8* %arrayidx284, align 1
  %conv285 = sext i8 %183 to i32
  %mul286 = mul nsw i32 %conv285, 2
  br label %cond.end.287

cond.end.287:                                     ; preds = %cond.false.278, %cond.true.270
  %cond288 = phi i32 [ %conv277, %cond.true.270 ], [ %mul286, %cond.false.278 ]
  br label %cond.end.291

cond.false.289:                                   ; preds = %cond.end.248
  %184 = load i16, i16* %l0_refD, align 2
  %conv290 = sext i16 %184 to i32
  br label %cond.end.291

cond.end.291:                                     ; preds = %cond.false.289, %cond.end.287
  %cond292 = phi i32 [ %cond288, %cond.end.287 ], [ %conv290, %cond.false.289 ]
  %conv293 = trunc i32 %cond292 to i16
  store i16 %conv293, i16* %l0_refC, align 2
  %available294 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 0
  %185 = load i32, i32* %available294, align 4
  %tobool295 = icmp ne i32 %185, 0
  br i1 %tobool295, label %cond.true.296, label %cond.false.332

cond.true.296:                                    ; preds = %cond.end.291
  %mb_addr297 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 1
  %186 = load i32, i32* %mb_addr297, align 4
  %idxprom298 = sext i32 %186 to i64
  %187 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data299 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %187, i32 0, i32 61
  %188 = load %struct.macroblock*, %struct.macroblock** %mb_data299, align 8
  %arrayidx300 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %188, i64 %idxprom298
  %mb_field301 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx300, i32 0, i32 19
  %189 = load i32, i32* %mb_field301, align 4
  %tobool302 = icmp ne i32 %189, 0
  br i1 %tobool302, label %cond.true.313, label %lor.lhs.false.303

lor.lhs.false.303:                                ; preds = %cond.true.296
  %pos_x304 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 4
  %190 = load i32, i32* %pos_x304, align 4
  %idxprom305 = sext i32 %190 to i64
  %pos_y306 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 5
  %191 = load i32, i32* %pos_y306, align 4
  %idxprom307 = sext i32 %191 to i64
  %192 = load i8**, i8*** %ref_pic_l1, align 8
  %arrayidx308 = getelementptr inbounds i8*, i8** %192, i64 %idxprom307
  %193 = load i8*, i8** %arrayidx308, align 8
  %arrayidx309 = getelementptr inbounds i8, i8* %193, i64 %idxprom305
  %194 = load i8, i8* %arrayidx309, align 1
  %conv310 = sext i8 %194 to i32
  %cmp311 = icmp slt i32 %conv310, 0
  br i1 %cmp311, label %cond.true.313, label %cond.false.321

cond.true.313:                                    ; preds = %lor.lhs.false.303, %cond.true.296
  %pos_x314 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 4
  %195 = load i32, i32* %pos_x314, align 4
  %idxprom315 = sext i32 %195 to i64
  %pos_y316 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 5
  %196 = load i32, i32* %pos_y316, align 4
  %idxprom317 = sext i32 %196 to i64
  %197 = load i8**, i8*** %ref_pic_l1, align 8
  %arrayidx318 = getelementptr inbounds i8*, i8** %197, i64 %idxprom317
  %198 = load i8*, i8** %arrayidx318, align 8
  %arrayidx319 = getelementptr inbounds i8, i8* %198, i64 %idxprom315
  %199 = load i8, i8* %arrayidx319, align 1
  %conv320 = sext i8 %199 to i32
  br label %cond.end.330

cond.false.321:                                   ; preds = %lor.lhs.false.303
  %pos_x322 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 4
  %200 = load i32, i32* %pos_x322, align 4
  %idxprom323 = sext i32 %200 to i64
  %pos_y324 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 5
  %201 = load i32, i32* %pos_y324, align 4
  %idxprom325 = sext i32 %201 to i64
  %202 = load i8**, i8*** %ref_pic_l1, align 8
  %arrayidx326 = getelementptr inbounds i8*, i8** %202, i64 %idxprom325
  %203 = load i8*, i8** %arrayidx326, align 8
  %arrayidx327 = getelementptr inbounds i8, i8* %203, i64 %idxprom323
  %204 = load i8, i8* %arrayidx327, align 1
  %conv328 = sext i8 %204 to i32
  %mul329 = mul nsw i32 %conv328, 2
  br label %cond.end.330

cond.end.330:                                     ; preds = %cond.false.321, %cond.true.313
  %cond331 = phi i32 [ %conv320, %cond.true.313 ], [ %mul329, %cond.false.321 ]
  br label %cond.end.333

cond.false.332:                                   ; preds = %cond.end.291
  br label %cond.end.333

cond.end.333:                                     ; preds = %cond.false.332, %cond.end.330
  %cond334 = phi i32 [ %cond331, %cond.end.330 ], [ -1, %cond.false.332 ]
  %conv335 = trunc i32 %cond334 to i16
  store i16 %conv335, i16* %l1_refA, align 2
  %available336 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 0
  %205 = load i32, i32* %available336, align 4
  %tobool337 = icmp ne i32 %205, 0
  br i1 %tobool337, label %cond.true.338, label %cond.false.374

cond.true.338:                                    ; preds = %cond.end.333
  %mb_addr339 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 1
  %206 = load i32, i32* %mb_addr339, align 4
  %idxprom340 = sext i32 %206 to i64
  %207 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data341 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %207, i32 0, i32 61
  %208 = load %struct.macroblock*, %struct.macroblock** %mb_data341, align 8
  %arrayidx342 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %208, i64 %idxprom340
  %mb_field343 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx342, i32 0, i32 19
  %209 = load i32, i32* %mb_field343, align 4
  %tobool344 = icmp ne i32 %209, 0
  br i1 %tobool344, label %cond.true.355, label %lor.lhs.false.345

lor.lhs.false.345:                                ; preds = %cond.true.338
  %pos_x346 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 4
  %210 = load i32, i32* %pos_x346, align 4
  %idxprom347 = sext i32 %210 to i64
  %pos_y348 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 5
  %211 = load i32, i32* %pos_y348, align 4
  %idxprom349 = sext i32 %211 to i64
  %212 = load i8**, i8*** %ref_pic_l1, align 8
  %arrayidx350 = getelementptr inbounds i8*, i8** %212, i64 %idxprom349
  %213 = load i8*, i8** %arrayidx350, align 8
  %arrayidx351 = getelementptr inbounds i8, i8* %213, i64 %idxprom347
  %214 = load i8, i8* %arrayidx351, align 1
  %conv352 = sext i8 %214 to i32
  %cmp353 = icmp slt i32 %conv352, 0
  br i1 %cmp353, label %cond.true.355, label %cond.false.363

cond.true.355:                                    ; preds = %lor.lhs.false.345, %cond.true.338
  %pos_x356 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 4
  %215 = load i32, i32* %pos_x356, align 4
  %idxprom357 = sext i32 %215 to i64
  %pos_y358 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 5
  %216 = load i32, i32* %pos_y358, align 4
  %idxprom359 = sext i32 %216 to i64
  %217 = load i8**, i8*** %ref_pic_l1, align 8
  %arrayidx360 = getelementptr inbounds i8*, i8** %217, i64 %idxprom359
  %218 = load i8*, i8** %arrayidx360, align 8
  %arrayidx361 = getelementptr inbounds i8, i8* %218, i64 %idxprom357
  %219 = load i8, i8* %arrayidx361, align 1
  %conv362 = sext i8 %219 to i32
  br label %cond.end.372

cond.false.363:                                   ; preds = %lor.lhs.false.345
  %pos_x364 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 4
  %220 = load i32, i32* %pos_x364, align 4
  %idxprom365 = sext i32 %220 to i64
  %pos_y366 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 5
  %221 = load i32, i32* %pos_y366, align 4
  %idxprom367 = sext i32 %221 to i64
  %222 = load i8**, i8*** %ref_pic_l1, align 8
  %arrayidx368 = getelementptr inbounds i8*, i8** %222, i64 %idxprom367
  %223 = load i8*, i8** %arrayidx368, align 8
  %arrayidx369 = getelementptr inbounds i8, i8* %223, i64 %idxprom365
  %224 = load i8, i8* %arrayidx369, align 1
  %conv370 = sext i8 %224 to i32
  %mul371 = mul nsw i32 %conv370, 2
  br label %cond.end.372

cond.end.372:                                     ; preds = %cond.false.363, %cond.true.355
  %cond373 = phi i32 [ %conv362, %cond.true.355 ], [ %mul371, %cond.false.363 ]
  br label %cond.end.375

cond.false.374:                                   ; preds = %cond.end.333
  br label %cond.end.375

cond.end.375:                                     ; preds = %cond.false.374, %cond.end.372
  %cond376 = phi i32 [ %cond373, %cond.end.372 ], [ -1, %cond.false.374 ]
  %conv377 = trunc i32 %cond376 to i16
  store i16 %conv377, i16* %l1_refB, align 2
  %available378 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 0
  %225 = load i32, i32* %available378, align 4
  %tobool379 = icmp ne i32 %225, 0
  br i1 %tobool379, label %cond.true.380, label %cond.false.416

cond.true.380:                                    ; preds = %cond.end.375
  %mb_addr381 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 1
  %226 = load i32, i32* %mb_addr381, align 4
  %idxprom382 = sext i32 %226 to i64
  %227 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data383 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %227, i32 0, i32 61
  %228 = load %struct.macroblock*, %struct.macroblock** %mb_data383, align 8
  %arrayidx384 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %228, i64 %idxprom382
  %mb_field385 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx384, i32 0, i32 19
  %229 = load i32, i32* %mb_field385, align 4
  %tobool386 = icmp ne i32 %229, 0
  br i1 %tobool386, label %cond.true.397, label %lor.lhs.false.387

lor.lhs.false.387:                                ; preds = %cond.true.380
  %pos_x388 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 4
  %230 = load i32, i32* %pos_x388, align 4
  %idxprom389 = sext i32 %230 to i64
  %pos_y390 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 5
  %231 = load i32, i32* %pos_y390, align 4
  %idxprom391 = sext i32 %231 to i64
  %232 = load i8**, i8*** %ref_pic_l1, align 8
  %arrayidx392 = getelementptr inbounds i8*, i8** %232, i64 %idxprom391
  %233 = load i8*, i8** %arrayidx392, align 8
  %arrayidx393 = getelementptr inbounds i8, i8* %233, i64 %idxprom389
  %234 = load i8, i8* %arrayidx393, align 1
  %conv394 = sext i8 %234 to i32
  %cmp395 = icmp slt i32 %conv394, 0
  br i1 %cmp395, label %cond.true.397, label %cond.false.405

cond.true.397:                                    ; preds = %lor.lhs.false.387, %cond.true.380
  %pos_x398 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 4
  %235 = load i32, i32* %pos_x398, align 4
  %idxprom399 = sext i32 %235 to i64
  %pos_y400 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 5
  %236 = load i32, i32* %pos_y400, align 4
  %idxprom401 = sext i32 %236 to i64
  %237 = load i8**, i8*** %ref_pic_l1, align 8
  %arrayidx402 = getelementptr inbounds i8*, i8** %237, i64 %idxprom401
  %238 = load i8*, i8** %arrayidx402, align 8
  %arrayidx403 = getelementptr inbounds i8, i8* %238, i64 %idxprom399
  %239 = load i8, i8* %arrayidx403, align 1
  %conv404 = sext i8 %239 to i32
  br label %cond.end.414

cond.false.405:                                   ; preds = %lor.lhs.false.387
  %pos_x406 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 4
  %240 = load i32, i32* %pos_x406, align 4
  %idxprom407 = sext i32 %240 to i64
  %pos_y408 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 5
  %241 = load i32, i32* %pos_y408, align 4
  %idxprom409 = sext i32 %241 to i64
  %242 = load i8**, i8*** %ref_pic_l1, align 8
  %arrayidx410 = getelementptr inbounds i8*, i8** %242, i64 %idxprom409
  %243 = load i8*, i8** %arrayidx410, align 8
  %arrayidx411 = getelementptr inbounds i8, i8* %243, i64 %idxprom407
  %244 = load i8, i8* %arrayidx411, align 1
  %conv412 = sext i8 %244 to i32
  %mul413 = mul nsw i32 %conv412, 2
  br label %cond.end.414

cond.end.414:                                     ; preds = %cond.false.405, %cond.true.397
  %cond415 = phi i32 [ %conv404, %cond.true.397 ], [ %mul413, %cond.false.405 ]
  br label %cond.end.417

cond.false.416:                                   ; preds = %cond.end.375
  br label %cond.end.417

cond.end.417:                                     ; preds = %cond.false.416, %cond.end.414
  %cond418 = phi i32 [ %cond415, %cond.end.414 ], [ -1, %cond.false.416 ]
  %conv419 = trunc i32 %cond418 to i16
  store i16 %conv419, i16* %l1_refD, align 2
  %available420 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 0
  %245 = load i32, i32* %available420, align 4
  %tobool421 = icmp ne i32 %245, 0
  br i1 %tobool421, label %cond.true.422, label %cond.false.458

cond.true.422:                                    ; preds = %cond.end.417
  %mb_addr423 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 1
  %246 = load i32, i32* %mb_addr423, align 4
  %idxprom424 = sext i32 %246 to i64
  %247 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data425 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %247, i32 0, i32 61
  %248 = load %struct.macroblock*, %struct.macroblock** %mb_data425, align 8
  %arrayidx426 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %248, i64 %idxprom424
  %mb_field427 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx426, i32 0, i32 19
  %249 = load i32, i32* %mb_field427, align 4
  %tobool428 = icmp ne i32 %249, 0
  br i1 %tobool428, label %cond.true.439, label %lor.lhs.false.429

lor.lhs.false.429:                                ; preds = %cond.true.422
  %pos_x430 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 4
  %250 = load i32, i32* %pos_x430, align 4
  %idxprom431 = sext i32 %250 to i64
  %pos_y432 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 5
  %251 = load i32, i32* %pos_y432, align 4
  %idxprom433 = sext i32 %251 to i64
  %252 = load i8**, i8*** %ref_pic_l1, align 8
  %arrayidx434 = getelementptr inbounds i8*, i8** %252, i64 %idxprom433
  %253 = load i8*, i8** %arrayidx434, align 8
  %arrayidx435 = getelementptr inbounds i8, i8* %253, i64 %idxprom431
  %254 = load i8, i8* %arrayidx435, align 1
  %conv436 = sext i8 %254 to i32
  %cmp437 = icmp slt i32 %conv436, 0
  br i1 %cmp437, label %cond.true.439, label %cond.false.447

cond.true.439:                                    ; preds = %lor.lhs.false.429, %cond.true.422
  %pos_x440 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 4
  %255 = load i32, i32* %pos_x440, align 4
  %idxprom441 = sext i32 %255 to i64
  %pos_y442 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 5
  %256 = load i32, i32* %pos_y442, align 4
  %idxprom443 = sext i32 %256 to i64
  %257 = load i8**, i8*** %ref_pic_l1, align 8
  %arrayidx444 = getelementptr inbounds i8*, i8** %257, i64 %idxprom443
  %258 = load i8*, i8** %arrayidx444, align 8
  %arrayidx445 = getelementptr inbounds i8, i8* %258, i64 %idxprom441
  %259 = load i8, i8* %arrayidx445, align 1
  %conv446 = sext i8 %259 to i32
  br label %cond.end.456

cond.false.447:                                   ; preds = %lor.lhs.false.429
  %pos_x448 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 4
  %260 = load i32, i32* %pos_x448, align 4
  %idxprom449 = sext i32 %260 to i64
  %pos_y450 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 5
  %261 = load i32, i32* %pos_y450, align 4
  %idxprom451 = sext i32 %261 to i64
  %262 = load i8**, i8*** %ref_pic_l1, align 8
  %arrayidx452 = getelementptr inbounds i8*, i8** %262, i64 %idxprom451
  %263 = load i8*, i8** %arrayidx452, align 8
  %arrayidx453 = getelementptr inbounds i8, i8* %263, i64 %idxprom449
  %264 = load i8, i8* %arrayidx453, align 1
  %conv454 = sext i8 %264 to i32
  %mul455 = mul nsw i32 %conv454, 2
  br label %cond.end.456

cond.end.456:                                     ; preds = %cond.false.447, %cond.true.439
  %cond457 = phi i32 [ %conv446, %cond.true.439 ], [ %mul455, %cond.false.447 ]
  br label %cond.end.460

cond.false.458:                                   ; preds = %cond.end.417
  %265 = load i16, i16* %l1_refD, align 2
  %conv459 = sext i16 %265 to i32
  br label %cond.end.460

cond.end.460:                                     ; preds = %cond.false.458, %cond.end.456
  %cond461 = phi i32 [ %cond457, %cond.end.456 ], [ %conv459, %cond.false.458 ]
  %conv462 = trunc i32 %cond461 to i16
  store i16 %conv462, i16* %l1_refC, align 2
  br label %if.end.801

if.else.463:                                      ; preds = %if.else.126
  %available464 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 0
  %266 = load i32, i32* %available464, align 4
  %tobool465 = icmp ne i32 %266, 0
  br i1 %tobool465, label %cond.true.466, label %cond.false.501

cond.true.466:                                    ; preds = %if.else.463
  %mb_addr467 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 1
  %267 = load i32, i32* %mb_addr467, align 4
  %idxprom468 = sext i32 %267 to i64
  %268 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data469 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %268, i32 0, i32 61
  %269 = load %struct.macroblock*, %struct.macroblock** %mb_data469, align 8
  %arrayidx470 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %269, i64 %idxprom468
  %mb_field471 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx470, i32 0, i32 19
  %270 = load i32, i32* %mb_field471, align 4
  %tobool472 = icmp ne i32 %270, 0
  br i1 %tobool472, label %cond.true.483, label %lor.lhs.false.473

lor.lhs.false.473:                                ; preds = %cond.true.466
  %pos_x474 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 4
  %271 = load i32, i32* %pos_x474, align 4
  %idxprom475 = sext i32 %271 to i64
  %pos_y476 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 5
  %272 = load i32, i32* %pos_y476, align 4
  %idxprom477 = sext i32 %272 to i64
  %273 = load i8**, i8*** %ref_pic_l0, align 8
  %arrayidx478 = getelementptr inbounds i8*, i8** %273, i64 %idxprom477
  %274 = load i8*, i8** %arrayidx478, align 8
  %arrayidx479 = getelementptr inbounds i8, i8* %274, i64 %idxprom475
  %275 = load i8, i8* %arrayidx479, align 1
  %conv480 = sext i8 %275 to i32
  %cmp481 = icmp slt i32 %conv480, 0
  br i1 %cmp481, label %cond.true.483, label %cond.false.491

cond.true.483:                                    ; preds = %lor.lhs.false.473, %cond.true.466
  %pos_x484 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 4
  %276 = load i32, i32* %pos_x484, align 4
  %idxprom485 = sext i32 %276 to i64
  %pos_y486 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 5
  %277 = load i32, i32* %pos_y486, align 4
  %idxprom487 = sext i32 %277 to i64
  %278 = load i8**, i8*** %ref_pic_l0, align 8
  %arrayidx488 = getelementptr inbounds i8*, i8** %278, i64 %idxprom487
  %279 = load i8*, i8** %arrayidx488, align 8
  %arrayidx489 = getelementptr inbounds i8, i8* %279, i64 %idxprom485
  %280 = load i8, i8* %arrayidx489, align 1
  %conv490 = sext i8 %280 to i32
  %shr = ashr i32 %conv490, 1
  br label %cond.end.499

cond.false.491:                                   ; preds = %lor.lhs.false.473
  %pos_x492 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 4
  %281 = load i32, i32* %pos_x492, align 4
  %idxprom493 = sext i32 %281 to i64
  %pos_y494 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 5
  %282 = load i32, i32* %pos_y494, align 4
  %idxprom495 = sext i32 %282 to i64
  %283 = load i8**, i8*** %ref_pic_l0, align 8
  %arrayidx496 = getelementptr inbounds i8*, i8** %283, i64 %idxprom495
  %284 = load i8*, i8** %arrayidx496, align 8
  %arrayidx497 = getelementptr inbounds i8, i8* %284, i64 %idxprom493
  %285 = load i8, i8* %arrayidx497, align 1
  %conv498 = sext i8 %285 to i32
  br label %cond.end.499

cond.end.499:                                     ; preds = %cond.false.491, %cond.true.483
  %cond500 = phi i32 [ %shr, %cond.true.483 ], [ %conv498, %cond.false.491 ]
  br label %cond.end.502

cond.false.501:                                   ; preds = %if.else.463
  br label %cond.end.502

cond.end.502:                                     ; preds = %cond.false.501, %cond.end.499
  %cond503 = phi i32 [ %cond500, %cond.end.499 ], [ -1, %cond.false.501 ]
  %conv504 = trunc i32 %cond503 to i16
  store i16 %conv504, i16* %l0_refA, align 2
  %available505 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 0
  %286 = load i32, i32* %available505, align 4
  %tobool506 = icmp ne i32 %286, 0
  br i1 %tobool506, label %cond.true.507, label %cond.false.543

cond.true.507:                                    ; preds = %cond.end.502
  %mb_addr508 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 1
  %287 = load i32, i32* %mb_addr508, align 4
  %idxprom509 = sext i32 %287 to i64
  %288 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data510 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %288, i32 0, i32 61
  %289 = load %struct.macroblock*, %struct.macroblock** %mb_data510, align 8
  %arrayidx511 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %289, i64 %idxprom509
  %mb_field512 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx511, i32 0, i32 19
  %290 = load i32, i32* %mb_field512, align 4
  %tobool513 = icmp ne i32 %290, 0
  br i1 %tobool513, label %cond.true.524, label %lor.lhs.false.514

lor.lhs.false.514:                                ; preds = %cond.true.507
  %pos_x515 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 4
  %291 = load i32, i32* %pos_x515, align 4
  %idxprom516 = sext i32 %291 to i64
  %pos_y517 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 5
  %292 = load i32, i32* %pos_y517, align 4
  %idxprom518 = sext i32 %292 to i64
  %293 = load i8**, i8*** %ref_pic_l0, align 8
  %arrayidx519 = getelementptr inbounds i8*, i8** %293, i64 %idxprom518
  %294 = load i8*, i8** %arrayidx519, align 8
  %arrayidx520 = getelementptr inbounds i8, i8* %294, i64 %idxprom516
  %295 = load i8, i8* %arrayidx520, align 1
  %conv521 = sext i8 %295 to i32
  %cmp522 = icmp slt i32 %conv521, 0
  br i1 %cmp522, label %cond.true.524, label %cond.false.533

cond.true.524:                                    ; preds = %lor.lhs.false.514, %cond.true.507
  %pos_x525 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 4
  %296 = load i32, i32* %pos_x525, align 4
  %idxprom526 = sext i32 %296 to i64
  %pos_y527 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 5
  %297 = load i32, i32* %pos_y527, align 4
  %idxprom528 = sext i32 %297 to i64
  %298 = load i8**, i8*** %ref_pic_l0, align 8
  %arrayidx529 = getelementptr inbounds i8*, i8** %298, i64 %idxprom528
  %299 = load i8*, i8** %arrayidx529, align 8
  %arrayidx530 = getelementptr inbounds i8, i8* %299, i64 %idxprom526
  %300 = load i8, i8* %arrayidx530, align 1
  %conv531 = sext i8 %300 to i32
  %shr532 = ashr i32 %conv531, 1
  br label %cond.end.541

cond.false.533:                                   ; preds = %lor.lhs.false.514
  %pos_x534 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 4
  %301 = load i32, i32* %pos_x534, align 4
  %idxprom535 = sext i32 %301 to i64
  %pos_y536 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 5
  %302 = load i32, i32* %pos_y536, align 4
  %idxprom537 = sext i32 %302 to i64
  %303 = load i8**, i8*** %ref_pic_l0, align 8
  %arrayidx538 = getelementptr inbounds i8*, i8** %303, i64 %idxprom537
  %304 = load i8*, i8** %arrayidx538, align 8
  %arrayidx539 = getelementptr inbounds i8, i8* %304, i64 %idxprom535
  %305 = load i8, i8* %arrayidx539, align 1
  %conv540 = sext i8 %305 to i32
  br label %cond.end.541

cond.end.541:                                     ; preds = %cond.false.533, %cond.true.524
  %cond542 = phi i32 [ %shr532, %cond.true.524 ], [ %conv540, %cond.false.533 ]
  br label %cond.end.544

cond.false.543:                                   ; preds = %cond.end.502
  br label %cond.end.544

cond.end.544:                                     ; preds = %cond.false.543, %cond.end.541
  %cond545 = phi i32 [ %cond542, %cond.end.541 ], [ -1, %cond.false.543 ]
  %conv546 = trunc i32 %cond545 to i16
  store i16 %conv546, i16* %l0_refB, align 2
  %available547 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 0
  %306 = load i32, i32* %available547, align 4
  %tobool548 = icmp ne i32 %306, 0
  br i1 %tobool548, label %cond.true.549, label %cond.false.585

cond.true.549:                                    ; preds = %cond.end.544
  %mb_addr550 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 1
  %307 = load i32, i32* %mb_addr550, align 4
  %idxprom551 = sext i32 %307 to i64
  %308 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data552 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %308, i32 0, i32 61
  %309 = load %struct.macroblock*, %struct.macroblock** %mb_data552, align 8
  %arrayidx553 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %309, i64 %idxprom551
  %mb_field554 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx553, i32 0, i32 19
  %310 = load i32, i32* %mb_field554, align 4
  %tobool555 = icmp ne i32 %310, 0
  br i1 %tobool555, label %cond.true.566, label %lor.lhs.false.556

lor.lhs.false.556:                                ; preds = %cond.true.549
  %pos_x557 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 4
  %311 = load i32, i32* %pos_x557, align 4
  %idxprom558 = sext i32 %311 to i64
  %pos_y559 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 5
  %312 = load i32, i32* %pos_y559, align 4
  %idxprom560 = sext i32 %312 to i64
  %313 = load i8**, i8*** %ref_pic_l0, align 8
  %arrayidx561 = getelementptr inbounds i8*, i8** %313, i64 %idxprom560
  %314 = load i8*, i8** %arrayidx561, align 8
  %arrayidx562 = getelementptr inbounds i8, i8* %314, i64 %idxprom558
  %315 = load i8, i8* %arrayidx562, align 1
  %conv563 = sext i8 %315 to i32
  %cmp564 = icmp slt i32 %conv563, 0
  br i1 %cmp564, label %cond.true.566, label %cond.false.575

cond.true.566:                                    ; preds = %lor.lhs.false.556, %cond.true.549
  %pos_x567 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 4
  %316 = load i32, i32* %pos_x567, align 4
  %idxprom568 = sext i32 %316 to i64
  %pos_y569 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 5
  %317 = load i32, i32* %pos_y569, align 4
  %idxprom570 = sext i32 %317 to i64
  %318 = load i8**, i8*** %ref_pic_l0, align 8
  %arrayidx571 = getelementptr inbounds i8*, i8** %318, i64 %idxprom570
  %319 = load i8*, i8** %arrayidx571, align 8
  %arrayidx572 = getelementptr inbounds i8, i8* %319, i64 %idxprom568
  %320 = load i8, i8* %arrayidx572, align 1
  %conv573 = sext i8 %320 to i32
  %shr574 = ashr i32 %conv573, 1
  br label %cond.end.583

cond.false.575:                                   ; preds = %lor.lhs.false.556
  %pos_x576 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 4
  %321 = load i32, i32* %pos_x576, align 4
  %idxprom577 = sext i32 %321 to i64
  %pos_y578 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 5
  %322 = load i32, i32* %pos_y578, align 4
  %idxprom579 = sext i32 %322 to i64
  %323 = load i8**, i8*** %ref_pic_l0, align 8
  %arrayidx580 = getelementptr inbounds i8*, i8** %323, i64 %idxprom579
  %324 = load i8*, i8** %arrayidx580, align 8
  %arrayidx581 = getelementptr inbounds i8, i8* %324, i64 %idxprom577
  %325 = load i8, i8* %arrayidx581, align 1
  %conv582 = sext i8 %325 to i32
  br label %cond.end.583

cond.end.583:                                     ; preds = %cond.false.575, %cond.true.566
  %cond584 = phi i32 [ %shr574, %cond.true.566 ], [ %conv582, %cond.false.575 ]
  br label %cond.end.586

cond.false.585:                                   ; preds = %cond.end.544
  br label %cond.end.586

cond.end.586:                                     ; preds = %cond.false.585, %cond.end.583
  %cond587 = phi i32 [ %cond584, %cond.end.583 ], [ -1, %cond.false.585 ]
  %conv588 = trunc i32 %cond587 to i16
  store i16 %conv588, i16* %l0_refD, align 2
  %available589 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 0
  %326 = load i32, i32* %available589, align 4
  %tobool590 = icmp ne i32 %326, 0
  br i1 %tobool590, label %cond.true.591, label %cond.false.627

cond.true.591:                                    ; preds = %cond.end.586
  %mb_addr592 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 1
  %327 = load i32, i32* %mb_addr592, align 4
  %idxprom593 = sext i32 %327 to i64
  %328 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data594 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %328, i32 0, i32 61
  %329 = load %struct.macroblock*, %struct.macroblock** %mb_data594, align 8
  %arrayidx595 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %329, i64 %idxprom593
  %mb_field596 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx595, i32 0, i32 19
  %330 = load i32, i32* %mb_field596, align 4
  %tobool597 = icmp ne i32 %330, 0
  br i1 %tobool597, label %cond.true.608, label %lor.lhs.false.598

lor.lhs.false.598:                                ; preds = %cond.true.591
  %pos_x599 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 4
  %331 = load i32, i32* %pos_x599, align 4
  %idxprom600 = sext i32 %331 to i64
  %pos_y601 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 5
  %332 = load i32, i32* %pos_y601, align 4
  %idxprom602 = sext i32 %332 to i64
  %333 = load i8**, i8*** %ref_pic_l0, align 8
  %arrayidx603 = getelementptr inbounds i8*, i8** %333, i64 %idxprom602
  %334 = load i8*, i8** %arrayidx603, align 8
  %arrayidx604 = getelementptr inbounds i8, i8* %334, i64 %idxprom600
  %335 = load i8, i8* %arrayidx604, align 1
  %conv605 = sext i8 %335 to i32
  %cmp606 = icmp slt i32 %conv605, 0
  br i1 %cmp606, label %cond.true.608, label %cond.false.617

cond.true.608:                                    ; preds = %lor.lhs.false.598, %cond.true.591
  %pos_x609 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 4
  %336 = load i32, i32* %pos_x609, align 4
  %idxprom610 = sext i32 %336 to i64
  %pos_y611 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 5
  %337 = load i32, i32* %pos_y611, align 4
  %idxprom612 = sext i32 %337 to i64
  %338 = load i8**, i8*** %ref_pic_l0, align 8
  %arrayidx613 = getelementptr inbounds i8*, i8** %338, i64 %idxprom612
  %339 = load i8*, i8** %arrayidx613, align 8
  %arrayidx614 = getelementptr inbounds i8, i8* %339, i64 %idxprom610
  %340 = load i8, i8* %arrayidx614, align 1
  %conv615 = sext i8 %340 to i32
  %shr616 = ashr i32 %conv615, 1
  br label %cond.end.625

cond.false.617:                                   ; preds = %lor.lhs.false.598
  %pos_x618 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 4
  %341 = load i32, i32* %pos_x618, align 4
  %idxprom619 = sext i32 %341 to i64
  %pos_y620 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 5
  %342 = load i32, i32* %pos_y620, align 4
  %idxprom621 = sext i32 %342 to i64
  %343 = load i8**, i8*** %ref_pic_l0, align 8
  %arrayidx622 = getelementptr inbounds i8*, i8** %343, i64 %idxprom621
  %344 = load i8*, i8** %arrayidx622, align 8
  %arrayidx623 = getelementptr inbounds i8, i8* %344, i64 %idxprom619
  %345 = load i8, i8* %arrayidx623, align 1
  %conv624 = sext i8 %345 to i32
  br label %cond.end.625

cond.end.625:                                     ; preds = %cond.false.617, %cond.true.608
  %cond626 = phi i32 [ %shr616, %cond.true.608 ], [ %conv624, %cond.false.617 ]
  br label %cond.end.629

cond.false.627:                                   ; preds = %cond.end.586
  %346 = load i16, i16* %l0_refD, align 2
  %conv628 = sext i16 %346 to i32
  br label %cond.end.629

cond.end.629:                                     ; preds = %cond.false.627, %cond.end.625
  %cond630 = phi i32 [ %cond626, %cond.end.625 ], [ %conv628, %cond.false.627 ]
  %conv631 = trunc i32 %cond630 to i16
  store i16 %conv631, i16* %l0_refC, align 2
  %available632 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 0
  %347 = load i32, i32* %available632, align 4
  %tobool633 = icmp ne i32 %347, 0
  br i1 %tobool633, label %cond.true.634, label %cond.false.670

cond.true.634:                                    ; preds = %cond.end.629
  %mb_addr635 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 1
  %348 = load i32, i32* %mb_addr635, align 4
  %idxprom636 = sext i32 %348 to i64
  %349 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data637 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %349, i32 0, i32 61
  %350 = load %struct.macroblock*, %struct.macroblock** %mb_data637, align 8
  %arrayidx638 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %350, i64 %idxprom636
  %mb_field639 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx638, i32 0, i32 19
  %351 = load i32, i32* %mb_field639, align 4
  %tobool640 = icmp ne i32 %351, 0
  br i1 %tobool640, label %cond.true.651, label %lor.lhs.false.641

lor.lhs.false.641:                                ; preds = %cond.true.634
  %pos_x642 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 4
  %352 = load i32, i32* %pos_x642, align 4
  %idxprom643 = sext i32 %352 to i64
  %pos_y644 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 5
  %353 = load i32, i32* %pos_y644, align 4
  %idxprom645 = sext i32 %353 to i64
  %354 = load i8**, i8*** %ref_pic_l1, align 8
  %arrayidx646 = getelementptr inbounds i8*, i8** %354, i64 %idxprom645
  %355 = load i8*, i8** %arrayidx646, align 8
  %arrayidx647 = getelementptr inbounds i8, i8* %355, i64 %idxprom643
  %356 = load i8, i8* %arrayidx647, align 1
  %conv648 = sext i8 %356 to i32
  %cmp649 = icmp slt i32 %conv648, 0
  br i1 %cmp649, label %cond.true.651, label %cond.false.660

cond.true.651:                                    ; preds = %lor.lhs.false.641, %cond.true.634
  %pos_x652 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 4
  %357 = load i32, i32* %pos_x652, align 4
  %idxprom653 = sext i32 %357 to i64
  %pos_y654 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 5
  %358 = load i32, i32* %pos_y654, align 4
  %idxprom655 = sext i32 %358 to i64
  %359 = load i8**, i8*** %ref_pic_l1, align 8
  %arrayidx656 = getelementptr inbounds i8*, i8** %359, i64 %idxprom655
  %360 = load i8*, i8** %arrayidx656, align 8
  %arrayidx657 = getelementptr inbounds i8, i8* %360, i64 %idxprom653
  %361 = load i8, i8* %arrayidx657, align 1
  %conv658 = sext i8 %361 to i32
  %shr659 = ashr i32 %conv658, 1
  br label %cond.end.668

cond.false.660:                                   ; preds = %lor.lhs.false.641
  %pos_x661 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 4
  %362 = load i32, i32* %pos_x661, align 4
  %idxprom662 = sext i32 %362 to i64
  %pos_y663 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_a, i32 0, i32 5
  %363 = load i32, i32* %pos_y663, align 4
  %idxprom664 = sext i32 %363 to i64
  %364 = load i8**, i8*** %ref_pic_l1, align 8
  %arrayidx665 = getelementptr inbounds i8*, i8** %364, i64 %idxprom664
  %365 = load i8*, i8** %arrayidx665, align 8
  %arrayidx666 = getelementptr inbounds i8, i8* %365, i64 %idxprom662
  %366 = load i8, i8* %arrayidx666, align 1
  %conv667 = sext i8 %366 to i32
  br label %cond.end.668

cond.end.668:                                     ; preds = %cond.false.660, %cond.true.651
  %cond669 = phi i32 [ %shr659, %cond.true.651 ], [ %conv667, %cond.false.660 ]
  br label %cond.end.671

cond.false.670:                                   ; preds = %cond.end.629
  br label %cond.end.671

cond.end.671:                                     ; preds = %cond.false.670, %cond.end.668
  %cond672 = phi i32 [ %cond669, %cond.end.668 ], [ -1, %cond.false.670 ]
  %conv673 = trunc i32 %cond672 to i16
  store i16 %conv673, i16* %l1_refA, align 2
  %available674 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 0
  %367 = load i32, i32* %available674, align 4
  %tobool675 = icmp ne i32 %367, 0
  br i1 %tobool675, label %cond.true.676, label %cond.false.712

cond.true.676:                                    ; preds = %cond.end.671
  %mb_addr677 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 1
  %368 = load i32, i32* %mb_addr677, align 4
  %idxprom678 = sext i32 %368 to i64
  %369 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data679 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %369, i32 0, i32 61
  %370 = load %struct.macroblock*, %struct.macroblock** %mb_data679, align 8
  %arrayidx680 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %370, i64 %idxprom678
  %mb_field681 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx680, i32 0, i32 19
  %371 = load i32, i32* %mb_field681, align 4
  %tobool682 = icmp ne i32 %371, 0
  br i1 %tobool682, label %cond.true.693, label %lor.lhs.false.683

lor.lhs.false.683:                                ; preds = %cond.true.676
  %pos_x684 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 4
  %372 = load i32, i32* %pos_x684, align 4
  %idxprom685 = sext i32 %372 to i64
  %pos_y686 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 5
  %373 = load i32, i32* %pos_y686, align 4
  %idxprom687 = sext i32 %373 to i64
  %374 = load i8**, i8*** %ref_pic_l1, align 8
  %arrayidx688 = getelementptr inbounds i8*, i8** %374, i64 %idxprom687
  %375 = load i8*, i8** %arrayidx688, align 8
  %arrayidx689 = getelementptr inbounds i8, i8* %375, i64 %idxprom685
  %376 = load i8, i8* %arrayidx689, align 1
  %conv690 = sext i8 %376 to i32
  %cmp691 = icmp slt i32 %conv690, 0
  br i1 %cmp691, label %cond.true.693, label %cond.false.702

cond.true.693:                                    ; preds = %lor.lhs.false.683, %cond.true.676
  %pos_x694 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 4
  %377 = load i32, i32* %pos_x694, align 4
  %idxprom695 = sext i32 %377 to i64
  %pos_y696 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 5
  %378 = load i32, i32* %pos_y696, align 4
  %idxprom697 = sext i32 %378 to i64
  %379 = load i8**, i8*** %ref_pic_l1, align 8
  %arrayidx698 = getelementptr inbounds i8*, i8** %379, i64 %idxprom697
  %380 = load i8*, i8** %arrayidx698, align 8
  %arrayidx699 = getelementptr inbounds i8, i8* %380, i64 %idxprom695
  %381 = load i8, i8* %arrayidx699, align 1
  %conv700 = sext i8 %381 to i32
  %shr701 = ashr i32 %conv700, 1
  br label %cond.end.710

cond.false.702:                                   ; preds = %lor.lhs.false.683
  %pos_x703 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 4
  %382 = load i32, i32* %pos_x703, align 4
  %idxprom704 = sext i32 %382 to i64
  %pos_y705 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_b, i32 0, i32 5
  %383 = load i32, i32* %pos_y705, align 4
  %idxprom706 = sext i32 %383 to i64
  %384 = load i8**, i8*** %ref_pic_l1, align 8
  %arrayidx707 = getelementptr inbounds i8*, i8** %384, i64 %idxprom706
  %385 = load i8*, i8** %arrayidx707, align 8
  %arrayidx708 = getelementptr inbounds i8, i8* %385, i64 %idxprom704
  %386 = load i8, i8* %arrayidx708, align 1
  %conv709 = sext i8 %386 to i32
  br label %cond.end.710

cond.end.710:                                     ; preds = %cond.false.702, %cond.true.693
  %cond711 = phi i32 [ %shr701, %cond.true.693 ], [ %conv709, %cond.false.702 ]
  br label %cond.end.713

cond.false.712:                                   ; preds = %cond.end.671
  br label %cond.end.713

cond.end.713:                                     ; preds = %cond.false.712, %cond.end.710
  %cond714 = phi i32 [ %cond711, %cond.end.710 ], [ -1, %cond.false.712 ]
  %conv715 = trunc i32 %cond714 to i16
  store i16 %conv715, i16* %l1_refB, align 2
  %available716 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 0
  %387 = load i32, i32* %available716, align 4
  %tobool717 = icmp ne i32 %387, 0
  br i1 %tobool717, label %cond.true.718, label %cond.false.754

cond.true.718:                                    ; preds = %cond.end.713
  %mb_addr719 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 1
  %388 = load i32, i32* %mb_addr719, align 4
  %idxprom720 = sext i32 %388 to i64
  %389 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data721 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %389, i32 0, i32 61
  %390 = load %struct.macroblock*, %struct.macroblock** %mb_data721, align 8
  %arrayidx722 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %390, i64 %idxprom720
  %mb_field723 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx722, i32 0, i32 19
  %391 = load i32, i32* %mb_field723, align 4
  %tobool724 = icmp ne i32 %391, 0
  br i1 %tobool724, label %cond.true.735, label %lor.lhs.false.725

lor.lhs.false.725:                                ; preds = %cond.true.718
  %pos_x726 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 4
  %392 = load i32, i32* %pos_x726, align 4
  %idxprom727 = sext i32 %392 to i64
  %pos_y728 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 5
  %393 = load i32, i32* %pos_y728, align 4
  %idxprom729 = sext i32 %393 to i64
  %394 = load i8**, i8*** %ref_pic_l1, align 8
  %arrayidx730 = getelementptr inbounds i8*, i8** %394, i64 %idxprom729
  %395 = load i8*, i8** %arrayidx730, align 8
  %arrayidx731 = getelementptr inbounds i8, i8* %395, i64 %idxprom727
  %396 = load i8, i8* %arrayidx731, align 1
  %conv732 = sext i8 %396 to i32
  %cmp733 = icmp slt i32 %conv732, 0
  br i1 %cmp733, label %cond.true.735, label %cond.false.744

cond.true.735:                                    ; preds = %lor.lhs.false.725, %cond.true.718
  %pos_x736 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 4
  %397 = load i32, i32* %pos_x736, align 4
  %idxprom737 = sext i32 %397 to i64
  %pos_y738 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 5
  %398 = load i32, i32* %pos_y738, align 4
  %idxprom739 = sext i32 %398 to i64
  %399 = load i8**, i8*** %ref_pic_l1, align 8
  %arrayidx740 = getelementptr inbounds i8*, i8** %399, i64 %idxprom739
  %400 = load i8*, i8** %arrayidx740, align 8
  %arrayidx741 = getelementptr inbounds i8, i8* %400, i64 %idxprom737
  %401 = load i8, i8* %arrayidx741, align 1
  %conv742 = sext i8 %401 to i32
  %shr743 = ashr i32 %conv742, 1
  br label %cond.end.752

cond.false.744:                                   ; preds = %lor.lhs.false.725
  %pos_x745 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 4
  %402 = load i32, i32* %pos_x745, align 4
  %idxprom746 = sext i32 %402 to i64
  %pos_y747 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_d, i32 0, i32 5
  %403 = load i32, i32* %pos_y747, align 4
  %idxprom748 = sext i32 %403 to i64
  %404 = load i8**, i8*** %ref_pic_l1, align 8
  %arrayidx749 = getelementptr inbounds i8*, i8** %404, i64 %idxprom748
  %405 = load i8*, i8** %arrayidx749, align 8
  %arrayidx750 = getelementptr inbounds i8, i8* %405, i64 %idxprom746
  %406 = load i8, i8* %arrayidx750, align 1
  %conv751 = sext i8 %406 to i32
  br label %cond.end.752

cond.end.752:                                     ; preds = %cond.false.744, %cond.true.735
  %cond753 = phi i32 [ %shr743, %cond.true.735 ], [ %conv751, %cond.false.744 ]
  br label %cond.end.755

cond.false.754:                                   ; preds = %cond.end.713
  br label %cond.end.755

cond.end.755:                                     ; preds = %cond.false.754, %cond.end.752
  %cond756 = phi i32 [ %cond753, %cond.end.752 ], [ -1, %cond.false.754 ]
  %conv757 = trunc i32 %cond756 to i16
  store i16 %conv757, i16* %l1_refD, align 2
  %available758 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 0
  %407 = load i32, i32* %available758, align 4
  %tobool759 = icmp ne i32 %407, 0
  br i1 %tobool759, label %cond.true.760, label %cond.false.796

cond.true.760:                                    ; preds = %cond.end.755
  %mb_addr761 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 1
  %408 = load i32, i32* %mb_addr761, align 4
  %idxprom762 = sext i32 %408 to i64
  %409 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data763 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %409, i32 0, i32 61
  %410 = load %struct.macroblock*, %struct.macroblock** %mb_data763, align 8
  %arrayidx764 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %410, i64 %idxprom762
  %mb_field765 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx764, i32 0, i32 19
  %411 = load i32, i32* %mb_field765, align 4
  %tobool766 = icmp ne i32 %411, 0
  br i1 %tobool766, label %cond.true.777, label %lor.lhs.false.767

lor.lhs.false.767:                                ; preds = %cond.true.760
  %pos_x768 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 4
  %412 = load i32, i32* %pos_x768, align 4
  %idxprom769 = sext i32 %412 to i64
  %pos_y770 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 5
  %413 = load i32, i32* %pos_y770, align 4
  %idxprom771 = sext i32 %413 to i64
  %414 = load i8**, i8*** %ref_pic_l1, align 8
  %arrayidx772 = getelementptr inbounds i8*, i8** %414, i64 %idxprom771
  %415 = load i8*, i8** %arrayidx772, align 8
  %arrayidx773 = getelementptr inbounds i8, i8* %415, i64 %idxprom769
  %416 = load i8, i8* %arrayidx773, align 1
  %conv774 = sext i8 %416 to i32
  %cmp775 = icmp slt i32 %conv774, 0
  br i1 %cmp775, label %cond.true.777, label %cond.false.786

cond.true.777:                                    ; preds = %lor.lhs.false.767, %cond.true.760
  %pos_x778 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 4
  %417 = load i32, i32* %pos_x778, align 4
  %idxprom779 = sext i32 %417 to i64
  %pos_y780 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 5
  %418 = load i32, i32* %pos_y780, align 4
  %idxprom781 = sext i32 %418 to i64
  %419 = load i8**, i8*** %ref_pic_l1, align 8
  %arrayidx782 = getelementptr inbounds i8*, i8** %419, i64 %idxprom781
  %420 = load i8*, i8** %arrayidx782, align 8
  %arrayidx783 = getelementptr inbounds i8, i8* %420, i64 %idxprom779
  %421 = load i8, i8* %arrayidx783, align 1
  %conv784 = sext i8 %421 to i32
  %shr785 = ashr i32 %conv784, 1
  br label %cond.end.794

cond.false.786:                                   ; preds = %lor.lhs.false.767
  %pos_x787 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 4
  %422 = load i32, i32* %pos_x787, align 4
  %idxprom788 = sext i32 %422 to i64
  %pos_y789 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %mb_c, i32 0, i32 5
  %423 = load i32, i32* %pos_y789, align 4
  %idxprom790 = sext i32 %423 to i64
  %424 = load i8**, i8*** %ref_pic_l1, align 8
  %arrayidx791 = getelementptr inbounds i8*, i8** %424, i64 %idxprom790
  %425 = load i8*, i8** %arrayidx791, align 8
  %arrayidx792 = getelementptr inbounds i8, i8* %425, i64 %idxprom788
  %426 = load i8, i8* %arrayidx792, align 1
  %conv793 = sext i8 %426 to i32
  br label %cond.end.794

cond.end.794:                                     ; preds = %cond.false.786, %cond.true.777
  %cond795 = phi i32 [ %shr785, %cond.true.777 ], [ %conv793, %cond.false.786 ]
  br label %cond.end.798

cond.false.796:                                   ; preds = %cond.end.755
  %427 = load i16, i16* %l1_refD, align 2
  %conv797 = sext i16 %427 to i32
  br label %cond.end.798

cond.end.798:                                     ; preds = %cond.false.796, %cond.end.794
  %cond799 = phi i32 [ %cond795, %cond.end.794 ], [ %conv797, %cond.false.796 ]
  %conv800 = trunc i32 %cond799 to i16
  store i16 %conv800, i16* %l1_refC, align 2
  br label %if.end.801

if.end.801:                                       ; preds = %cond.end.798, %cond.end.460
  br label %if.end.802

if.end.802:                                       ; preds = %if.end.801, %cond.end.123
  %428 = load i16, i16* %l0_refA, align 2
  %conv803 = sext i16 %428 to i32
  %cmp804 = icmp sge i32 %conv803, 0
  br i1 %cmp804, label %land.lhs.true, label %cond.false.812

land.lhs.true:                                    ; preds = %if.end.802
  %429 = load i16, i16* %l0_refB, align 2
  %conv806 = sext i16 %429 to i32
  %cmp807 = icmp sge i32 %conv806, 0
  br i1 %cmp807, label %cond.true.809, label %cond.false.812

cond.true.809:                                    ; preds = %land.lhs.true
  %430 = load i16, i16* %l0_refA, align 2
  %conv810 = sext i16 %430 to i32
  %431 = load i16, i16* %l0_refB, align 2
  %conv811 = sext i16 %431 to i32
  %call = call i32 @imin(i32 %conv810, i32 %conv811)
  br label %cond.end.816

cond.false.812:                                   ; preds = %land.lhs.true, %if.end.802
  %432 = load i16, i16* %l0_refA, align 2
  %conv813 = sext i16 %432 to i32
  %433 = load i16, i16* %l0_refB, align 2
  %conv814 = sext i16 %433 to i32
  %call815 = call i32 @imax(i32 %conv813, i32 %conv814)
  br label %cond.end.816

cond.end.816:                                     ; preds = %cond.false.812, %cond.true.809
  %cond817 = phi i32 [ %call, %cond.true.809 ], [ %call815, %cond.false.812 ]
  %conv818 = trunc i32 %cond817 to i16
  store i16 %conv818, i16* %l0_refX, align 2
  %434 = load i16, i16* %l0_refX, align 2
  %conv819 = sext i16 %434 to i32
  %cmp820 = icmp sge i32 %conv819, 0
  br i1 %cmp820, label %land.lhs.true.822, label %cond.false.830

land.lhs.true.822:                                ; preds = %cond.end.816
  %435 = load i16, i16* %l0_refC, align 2
  %conv823 = sext i16 %435 to i32
  %cmp824 = icmp sge i32 %conv823, 0
  br i1 %cmp824, label %cond.true.826, label %cond.false.830

cond.true.826:                                    ; preds = %land.lhs.true.822
  %436 = load i16, i16* %l0_refX, align 2
  %conv827 = sext i16 %436 to i32
  %437 = load i16, i16* %l0_refC, align 2
  %conv828 = sext i16 %437 to i32
  %call829 = call i32 @imin(i32 %conv827, i32 %conv828)
  br label %cond.end.834

cond.false.830:                                   ; preds = %land.lhs.true.822, %cond.end.816
  %438 = load i16, i16* %l0_refX, align 2
  %conv831 = sext i16 %438 to i32
  %439 = load i16, i16* %l0_refC, align 2
  %conv832 = sext i16 %439 to i32
  %call833 = call i32 @imax(i32 %conv831, i32 %conv832)
  br label %cond.end.834

cond.end.834:                                     ; preds = %cond.false.830, %cond.true.826
  %cond835 = phi i32 [ %call829, %cond.true.826 ], [ %call833, %cond.false.830 ]
  %conv836 = trunc i32 %cond835 to i16
  store i16 %conv836, i16* %l0_refX, align 2
  %440 = load i16, i16* %l1_refA, align 2
  %conv837 = sext i16 %440 to i32
  %cmp838 = icmp sge i32 %conv837, 0
  br i1 %cmp838, label %land.lhs.true.840, label %cond.false.848

land.lhs.true.840:                                ; preds = %cond.end.834
  %441 = load i16, i16* %l1_refB, align 2
  %conv841 = sext i16 %441 to i32
  %cmp842 = icmp sge i32 %conv841, 0
  br i1 %cmp842, label %cond.true.844, label %cond.false.848

cond.true.844:                                    ; preds = %land.lhs.true.840
  %442 = load i16, i16* %l1_refA, align 2
  %conv845 = sext i16 %442 to i32
  %443 = load i16, i16* %l1_refB, align 2
  %conv846 = sext i16 %443 to i32
  %call847 = call i32 @imin(i32 %conv845, i32 %conv846)
  br label %cond.end.852

cond.false.848:                                   ; preds = %land.lhs.true.840, %cond.end.834
  %444 = load i16, i16* %l1_refA, align 2
  %conv849 = sext i16 %444 to i32
  %445 = load i16, i16* %l1_refB, align 2
  %conv850 = sext i16 %445 to i32
  %call851 = call i32 @imax(i32 %conv849, i32 %conv850)
  br label %cond.end.852

cond.end.852:                                     ; preds = %cond.false.848, %cond.true.844
  %cond853 = phi i32 [ %call847, %cond.true.844 ], [ %call851, %cond.false.848 ]
  %conv854 = trunc i32 %cond853 to i16
  store i16 %conv854, i16* %l1_refX, align 2
  %446 = load i16, i16* %l1_refX, align 2
  %conv855 = sext i16 %446 to i32
  %cmp856 = icmp sge i32 %conv855, 0
  br i1 %cmp856, label %land.lhs.true.858, label %cond.false.866

land.lhs.true.858:                                ; preds = %cond.end.852
  %447 = load i16, i16* %l1_refC, align 2
  %conv859 = sext i16 %447 to i32
  %cmp860 = icmp sge i32 %conv859, 0
  br i1 %cmp860, label %cond.true.862, label %cond.false.866

cond.true.862:                                    ; preds = %land.lhs.true.858
  %448 = load i16, i16* %l1_refX, align 2
  %conv863 = sext i16 %448 to i32
  %449 = load i16, i16* %l1_refC, align 2
  %conv864 = sext i16 %449 to i32
  %call865 = call i32 @imin(i32 %conv863, i32 %conv864)
  br label %cond.end.870

cond.false.866:                                   ; preds = %land.lhs.true.858, %cond.end.852
  %450 = load i16, i16* %l1_refX, align 2
  %conv867 = sext i16 %450 to i32
  %451 = load i16, i16* %l1_refC, align 2
  %conv868 = sext i16 %451 to i32
  %call869 = call i32 @imax(i32 %conv867, i32 %conv868)
  br label %cond.end.870

cond.end.870:                                     ; preds = %cond.false.866, %cond.true.862
  %cond871 = phi i32 [ %call865, %cond.true.862 ], [ %call869, %cond.false.866 ]
  %conv872 = trunc i32 %cond871 to i16
  store i16 %conv872, i16* %l1_refX, align 2
  %452 = load i16, i16* %l0_refX, align 2
  %conv873 = sext i16 %452 to i32
  %cmp874 = icmp sge i32 %conv873, 0
  br i1 %cmp874, label %if.then.876, label %if.end.881

if.then.876:                                      ; preds = %cond.end.870
  %arraydecay = getelementptr inbounds [2 x i16], [2 x i16]* %pmvfw, i32 0, i32 0
  %453 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx877 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %453, i32 0, i32 35
  %454 = load i8***, i8**** %ref_idx877, align 8
  %arrayidx878 = getelementptr inbounds i8**, i8*** %454, i64 0
  %455 = load i8**, i8*** %arrayidx878, align 8
  %456 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv879 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %456, i32 0, i32 38
  %457 = load i16****, i16***** %mv879, align 8
  %arrayidx880 = getelementptr inbounds i16***, i16**** %457, i64 0
  %458 = load i16***, i16**** %arrayidx880, align 8
  %459 = load i16, i16* %l0_refX, align 2
  call void @SetMotionVectorPredictor(i16* %arraydecay, i8** %455, i16*** %458, i16 signext %459, i32 0, i32 0, i32 0, i32 16, i32 16)
  br label %if.end.881

if.end.881:                                       ; preds = %if.then.876, %cond.end.870
  %460 = load i16, i16* %l1_refX, align 2
  %conv882 = sext i16 %460 to i32
  %cmp883 = icmp sge i32 %conv882, 0
  br i1 %cmp883, label %if.then.885, label %if.end.891

if.then.885:                                      ; preds = %if.end.881
  %arraydecay886 = getelementptr inbounds [2 x i16], [2 x i16]* %pmvbw, i32 0, i32 0
  %461 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_idx887 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %461, i32 0, i32 35
  %462 = load i8***, i8**** %ref_idx887, align 8
  %arrayidx888 = getelementptr inbounds i8**, i8*** %462, i64 1
  %463 = load i8**, i8*** %arrayidx888, align 8
  %464 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %mv889 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %464, i32 0, i32 38
  %465 = load i16****, i16***** %mv889, align 8
  %arrayidx890 = getelementptr inbounds i16***, i16**** %465, i64 1
  %466 = load i16***, i16**** %arrayidx890, align 8
  %467 = load i16, i16* %l1_refX, align 2
  call void @SetMotionVectorPredictor(i16* %arraydecay886, i8** %463, i16*** %466, i16 signext %467, i32 1, i32 0, i32 0, i32 16, i32 16)
  br label %if.end.891

if.end.891:                                       ; preds = %if.then.885, %if.end.881
  store i32 0, i32* %block_y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.1310, %if.end.891
  %468 = load i32, i32* %block_y, align 4
  %cmp892 = icmp slt i32 %468, 4
  br i1 %cmp892, label %for.body, label %for.end.1312

for.body:                                         ; preds = %for.cond
  %469 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %469, i32 0, i32 40
  %470 = load i32, i32* %pix_y, align 4
  %shr894 = ashr i32 %470, 2
  %471 = load i32, i32* %block_y, align 4
  %add = add nsw i32 %shr894, %471
  store i32 %add, i32* %pic_block_y, align 4
  %472 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %472, i32 0, i32 44
  %473 = load i32, i32* %opix_y, align 4
  %shr895 = ashr i32 %473, 2
  %474 = load i32, i32* %block_y, align 4
  %add896 = add nsw i32 %shr895, %474
  store i32 %add896, i32* %opic_block_y, align 4
  store i32 0, i32* %block_x, align 4
  br label %for.cond.897

for.cond.897:                                     ; preds = %for.inc.1307, %for.body
  %475 = load i32, i32* %block_x, align 4
  %cmp898 = icmp slt i32 %475, 4
  br i1 %cmp898, label %for.body.900, label %for.end.1309

for.body.900:                                     ; preds = %for.cond.897
  %476 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %476, i32 0, i32 39
  %477 = load i32, i32* %pix_x, align 4
  %shr901 = ashr i32 %477, 2
  %478 = load i32, i32* %block_x, align 4
  %add902 = add nsw i32 %shr901, %478
  store i32 %add902, i32* %pic_block_x, align 4
  %479 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %479, i32 0, i32 43
  %480 = load i32, i32* %opix_x, align 4
  %shr903 = ashr i32 %480, 2
  %481 = load i32, i32* %block_x, align 4
  %add904 = add nsw i32 %shr903, %481
  store i32 %add904, i32* %opic_block_x, align 4
  %482 = load i32, i32* %block_x, align 4
  %idxprom905 = sext i32 %482 to i64
  %483 = load i32, i32* %block_y, align 4
  %idxprom906 = sext i32 %483 to i64
  %484 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %484, i32 0, i32 80
  %485 = load i16******, i16******* %all_mv, align 8
  %arrayidx907 = getelementptr inbounds i16*****, i16****** %485, i64 %idxprom906
  %486 = load i16*****, i16****** %arrayidx907, align 8
  %arrayidx908 = getelementptr inbounds i16****, i16***** %486, i64 %idxprom905
  %487 = load i16****, i16***** %arrayidx908, align 8
  store i16**** %487, i16***** %all_mvs, align 8
  %488 = load i16, i16* %l0_refX, align 2
  %conv909 = sext i16 %488 to i32
  %cmp910 = icmp sge i32 %conv909, 0
  br i1 %cmp910, label %if.then.912, label %if.else.949

if.then.912:                                      ; preds = %for.body.900
  %489 = load i16, i16* %l0_refX, align 2
  %tobool913 = icmp ne i16 %489, 0
  br i1 %tobool913, label %if.else.929, label %land.lhs.true.914

land.lhs.true.914:                                ; preds = %if.then.912
  %490 = load i32, i32* %opic_block_x, align 4
  %idxprom915 = sext i32 %490 to i64
  %491 = load i32, i32* %opic_block_y, align 4
  %idxprom916 = sext i32 %491 to i64
  %492 = load i8**, i8*** %moving_block, align 8
  %arrayidx917 = getelementptr inbounds i8*, i8** %492, i64 %idxprom916
  %493 = load i8*, i8** %arrayidx917, align 8
  %arrayidx918 = getelementptr inbounds i8, i8* %493, i64 %idxprom915
  %494 = load i8, i8* %arrayidx918, align 1
  %tobool919 = icmp ne i8 %494, 0
  br i1 %tobool919, label %if.else.929, label %if.then.920

if.then.920:                                      ; preds = %land.lhs.true.914
  %495 = load i16****, i16***** %all_mvs, align 8
  %arrayidx921 = getelementptr inbounds i16***, i16**** %495, i64 0
  %496 = load i16***, i16**** %arrayidx921, align 8
  %arrayidx922 = getelementptr inbounds i16**, i16*** %496, i64 0
  %497 = load i16**, i16*** %arrayidx922, align 8
  %arrayidx923 = getelementptr inbounds i16*, i16** %497, i64 0
  %498 = load i16*, i16** %arrayidx923, align 8
  %499 = bitcast i16* %498 to i8*
  call void @llvm.memset.p0i8.i64(i8* %499, i8 0, i64 4, i32 2, i1 false)
  %500 = load i32, i32* %pic_block_x, align 4
  %idxprom924 = sext i32 %500 to i64
  %501 = load i32, i32* %pic_block_y, align 4
  %idxprom925 = sext i32 %501 to i64
  %502 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx926 = getelementptr inbounds i8**, i8*** %502, i64 0
  %503 = load i8**, i8*** %arrayidx926, align 8
  %arrayidx927 = getelementptr inbounds i8*, i8** %503, i64 %idxprom925
  %504 = load i8*, i8** %arrayidx927, align 8
  %arrayidx928 = getelementptr inbounds i8, i8* %504, i64 %idxprom924
  store i8 0, i8* %arrayidx928, align 1
  br label %if.end.948

if.else.929:                                      ; preds = %land.lhs.true.914, %if.then.912
  %arrayidx930 = getelementptr inbounds [2 x i16], [2 x i16]* %pmvfw, i32 0, i64 0
  %505 = load i16, i16* %arrayidx930, align 2
  %506 = load i16, i16* %l0_refX, align 2
  %idxprom931 = sext i16 %506 to i64
  %507 = load i16****, i16***** %all_mvs, align 8
  %arrayidx932 = getelementptr inbounds i16***, i16**** %507, i64 0
  %508 = load i16***, i16**** %arrayidx932, align 8
  %arrayidx933 = getelementptr inbounds i16**, i16*** %508, i64 %idxprom931
  %509 = load i16**, i16*** %arrayidx933, align 8
  %arrayidx934 = getelementptr inbounds i16*, i16** %509, i64 0
  %510 = load i16*, i16** %arrayidx934, align 8
  %arrayidx935 = getelementptr inbounds i16, i16* %510, i64 0
  store i16 %505, i16* %arrayidx935, align 2
  %arrayidx936 = getelementptr inbounds [2 x i16], [2 x i16]* %pmvfw, i32 0, i64 1
  %511 = load i16, i16* %arrayidx936, align 2
  %512 = load i16, i16* %l0_refX, align 2
  %idxprom937 = sext i16 %512 to i64
  %513 = load i16****, i16***** %all_mvs, align 8
  %arrayidx938 = getelementptr inbounds i16***, i16**** %513, i64 0
  %514 = load i16***, i16**** %arrayidx938, align 8
  %arrayidx939 = getelementptr inbounds i16**, i16*** %514, i64 %idxprom937
  %515 = load i16**, i16*** %arrayidx939, align 8
  %arrayidx940 = getelementptr inbounds i16*, i16** %515, i64 0
  %516 = load i16*, i16** %arrayidx940, align 8
  %arrayidx941 = getelementptr inbounds i16, i16* %516, i64 1
  store i16 %511, i16* %arrayidx941, align 2
  %517 = load i16, i16* %l0_refX, align 2
  %conv942 = trunc i16 %517 to i8
  %518 = load i32, i32* %pic_block_x, align 4
  %idxprom943 = sext i32 %518 to i64
  %519 = load i32, i32* %pic_block_y, align 4
  %idxprom944 = sext i32 %519 to i64
  %520 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx945 = getelementptr inbounds i8**, i8*** %520, i64 0
  %521 = load i8**, i8*** %arrayidx945, align 8
  %arrayidx946 = getelementptr inbounds i8*, i8** %521, i64 %idxprom944
  %522 = load i8*, i8** %arrayidx946, align 8
  %arrayidx947 = getelementptr inbounds i8, i8* %522, i64 %idxprom943
  store i8 %conv942, i8* %arrayidx947, align 1
  br label %if.end.948

if.end.948:                                       ; preds = %if.else.929, %if.then.920
  br label %if.end.963

if.else.949:                                      ; preds = %for.body.900
  %523 = load i16****, i16***** %all_mvs, align 8
  %arrayidx950 = getelementptr inbounds i16***, i16**** %523, i64 0
  %524 = load i16***, i16**** %arrayidx950, align 8
  %arrayidx951 = getelementptr inbounds i16**, i16*** %524, i64 0
  %525 = load i16**, i16*** %arrayidx951, align 8
  %arrayidx952 = getelementptr inbounds i16*, i16** %525, i64 0
  %526 = load i16*, i16** %arrayidx952, align 8
  %arrayidx953 = getelementptr inbounds i16, i16* %526, i64 0
  store i16 0, i16* %arrayidx953, align 2
  %527 = load i16****, i16***** %all_mvs, align 8
  %arrayidx954 = getelementptr inbounds i16***, i16**** %527, i64 0
  %528 = load i16***, i16**** %arrayidx954, align 8
  %arrayidx955 = getelementptr inbounds i16**, i16*** %528, i64 0
  %529 = load i16**, i16*** %arrayidx955, align 8
  %arrayidx956 = getelementptr inbounds i16*, i16** %529, i64 0
  %530 = load i16*, i16** %arrayidx956, align 8
  %arrayidx957 = getelementptr inbounds i16, i16* %530, i64 1
  store i16 0, i16* %arrayidx957, align 2
  %531 = load i32, i32* %pic_block_x, align 4
  %idxprom958 = sext i32 %531 to i64
  %532 = load i32, i32* %pic_block_y, align 4
  %idxprom959 = sext i32 %532 to i64
  %533 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx960 = getelementptr inbounds i8**, i8*** %533, i64 0
  %534 = load i8**, i8*** %arrayidx960, align 8
  %arrayidx961 = getelementptr inbounds i8*, i8** %534, i64 %idxprom959
  %535 = load i8*, i8** %arrayidx961, align 8
  %arrayidx962 = getelementptr inbounds i8, i8* %535, i64 %idxprom958
  store i8 -1, i8* %arrayidx962, align 1
  br label %if.end.963

if.end.963:                                       ; preds = %if.else.949, %if.end.948
  %536 = load i16, i16* %l1_refX, align 2
  %conv964 = sext i16 %536 to i32
  %cmp965 = icmp sge i32 %conv964, 0
  br i1 %cmp965, label %if.then.967, label %if.else.1012

if.then.967:                                      ; preds = %if.end.963
  %537 = load i16, i16* %l1_refX, align 2
  %conv968 = sext i16 %537 to i32
  %cmp969 = icmp eq i32 %conv968, 0
  br i1 %cmp969, label %land.lhs.true.971, label %if.else.992

land.lhs.true.971:                                ; preds = %if.then.967
  %538 = load i32, i32* %opic_block_x, align 4
  %idxprom972 = sext i32 %538 to i64
  %539 = load i32, i32* %opic_block_y, align 4
  %idxprom973 = sext i32 %539 to i64
  %540 = load i8**, i8*** %moving_block, align 8
  %arrayidx974 = getelementptr inbounds i8*, i8** %540, i64 %idxprom973
  %541 = load i8*, i8** %arrayidx974, align 8
  %arrayidx975 = getelementptr inbounds i8, i8* %541, i64 %idxprom972
  %542 = load i8, i8* %arrayidx975, align 1
  %tobool976 = icmp ne i8 %542, 0
  br i1 %tobool976, label %if.else.992, label %if.then.977

if.then.977:                                      ; preds = %land.lhs.true.971
  %543 = load i16****, i16***** %all_mvs, align 8
  %arrayidx978 = getelementptr inbounds i16***, i16**** %543, i64 1
  %544 = load i16***, i16**** %arrayidx978, align 8
  %arrayidx979 = getelementptr inbounds i16**, i16*** %544, i64 0
  %545 = load i16**, i16*** %arrayidx979, align 8
  %arrayidx980 = getelementptr inbounds i16*, i16** %545, i64 0
  %546 = load i16*, i16** %arrayidx980, align 8
  %arrayidx981 = getelementptr inbounds i16, i16* %546, i64 0
  store i16 0, i16* %arrayidx981, align 2
  %547 = load i16****, i16***** %all_mvs, align 8
  %arrayidx982 = getelementptr inbounds i16***, i16**** %547, i64 1
  %548 = load i16***, i16**** %arrayidx982, align 8
  %arrayidx983 = getelementptr inbounds i16**, i16*** %548, i64 0
  %549 = load i16**, i16*** %arrayidx983, align 8
  %arrayidx984 = getelementptr inbounds i16*, i16** %549, i64 0
  %550 = load i16*, i16** %arrayidx984, align 8
  %arrayidx985 = getelementptr inbounds i16, i16* %550, i64 1
  store i16 0, i16* %arrayidx985, align 2
  %551 = load i16, i16* %l1_refX, align 2
  %conv986 = trunc i16 %551 to i8
  %552 = load i32, i32* %pic_block_x, align 4
  %idxprom987 = sext i32 %552 to i64
  %553 = load i32, i32* %pic_block_y, align 4
  %idxprom988 = sext i32 %553 to i64
  %554 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx989 = getelementptr inbounds i8**, i8*** %554, i64 1
  %555 = load i8**, i8*** %arrayidx989, align 8
  %arrayidx990 = getelementptr inbounds i8*, i8** %555, i64 %idxprom988
  %556 = load i8*, i8** %arrayidx990, align 8
  %arrayidx991 = getelementptr inbounds i8, i8* %556, i64 %idxprom987
  store i8 %conv986, i8* %arrayidx991, align 1
  br label %if.end.1011

if.else.992:                                      ; preds = %land.lhs.true.971, %if.then.967
  %arrayidx993 = getelementptr inbounds [2 x i16], [2 x i16]* %pmvbw, i32 0, i64 0
  %557 = load i16, i16* %arrayidx993, align 2
  %558 = load i16, i16* %l1_refX, align 2
  %idxprom994 = sext i16 %558 to i64
  %559 = load i16****, i16***** %all_mvs, align 8
  %arrayidx995 = getelementptr inbounds i16***, i16**** %559, i64 1
  %560 = load i16***, i16**** %arrayidx995, align 8
  %arrayidx996 = getelementptr inbounds i16**, i16*** %560, i64 %idxprom994
  %561 = load i16**, i16*** %arrayidx996, align 8
  %arrayidx997 = getelementptr inbounds i16*, i16** %561, i64 0
  %562 = load i16*, i16** %arrayidx997, align 8
  %arrayidx998 = getelementptr inbounds i16, i16* %562, i64 0
  store i16 %557, i16* %arrayidx998, align 2
  %arrayidx999 = getelementptr inbounds [2 x i16], [2 x i16]* %pmvbw, i32 0, i64 1
  %563 = load i16, i16* %arrayidx999, align 2
  %564 = load i16, i16* %l1_refX, align 2
  %idxprom1000 = sext i16 %564 to i64
  %565 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1001 = getelementptr inbounds i16***, i16**** %565, i64 1
  %566 = load i16***, i16**** %arrayidx1001, align 8
  %arrayidx1002 = getelementptr inbounds i16**, i16*** %566, i64 %idxprom1000
  %567 = load i16**, i16*** %arrayidx1002, align 8
  %arrayidx1003 = getelementptr inbounds i16*, i16** %567, i64 0
  %568 = load i16*, i16** %arrayidx1003, align 8
  %arrayidx1004 = getelementptr inbounds i16, i16* %568, i64 1
  store i16 %563, i16* %arrayidx1004, align 2
  %569 = load i16, i16* %l1_refX, align 2
  %conv1005 = trunc i16 %569 to i8
  %570 = load i32, i32* %pic_block_x, align 4
  %idxprom1006 = sext i32 %570 to i64
  %571 = load i32, i32* %pic_block_y, align 4
  %idxprom1007 = sext i32 %571 to i64
  %572 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx1008 = getelementptr inbounds i8**, i8*** %572, i64 1
  %573 = load i8**, i8*** %arrayidx1008, align 8
  %arrayidx1009 = getelementptr inbounds i8*, i8** %573, i64 %idxprom1007
  %574 = load i8*, i8** %arrayidx1009, align 8
  %arrayidx1010 = getelementptr inbounds i8, i8* %574, i64 %idxprom1006
  store i8 %conv1005, i8* %arrayidx1010, align 1
  br label %if.end.1011

if.end.1011:                                      ; preds = %if.else.992, %if.then.977
  br label %if.end.1026

if.else.1012:                                     ; preds = %if.end.963
  %575 = load i32, i32* %pic_block_x, align 4
  %idxprom1013 = sext i32 %575 to i64
  %576 = load i32, i32* %pic_block_y, align 4
  %idxprom1014 = sext i32 %576 to i64
  %577 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx1015 = getelementptr inbounds i8**, i8*** %577, i64 1
  %578 = load i8**, i8*** %arrayidx1015, align 8
  %arrayidx1016 = getelementptr inbounds i8*, i8** %578, i64 %idxprom1014
  %579 = load i8*, i8** %arrayidx1016, align 8
  %arrayidx1017 = getelementptr inbounds i8, i8* %579, i64 %idxprom1013
  store i8 -1, i8* %arrayidx1017, align 1
  %580 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1018 = getelementptr inbounds i16***, i16**** %580, i64 1
  %581 = load i16***, i16**** %arrayidx1018, align 8
  %arrayidx1019 = getelementptr inbounds i16**, i16*** %581, i64 0
  %582 = load i16**, i16*** %arrayidx1019, align 8
  %arrayidx1020 = getelementptr inbounds i16*, i16** %582, i64 0
  %583 = load i16*, i16** %arrayidx1020, align 8
  %arrayidx1021 = getelementptr inbounds i16, i16* %583, i64 0
  store i16 0, i16* %arrayidx1021, align 2
  %584 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1022 = getelementptr inbounds i16***, i16**** %584, i64 1
  %585 = load i16***, i16**** %arrayidx1022, align 8
  %arrayidx1023 = getelementptr inbounds i16**, i16*** %585, i64 0
  %586 = load i16**, i16*** %arrayidx1023, align 8
  %arrayidx1024 = getelementptr inbounds i16*, i16** %586, i64 0
  %587 = load i16*, i16** %arrayidx1024, align 8
  %arrayidx1025 = getelementptr inbounds i16, i16* %587, i64 1
  store i16 0, i16* %arrayidx1025, align 2
  br label %if.end.1026

if.end.1026:                                      ; preds = %if.else.1012, %if.end.1011
  %588 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag1027 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %588, i32 0, i32 100
  %589 = load i32, i32* %MbaffFrameFlag1027, align 4
  %tobool1028 = icmp ne i32 %589, 0
  br i1 %tobool1028, label %land.lhs.true.1029, label %if.else.1195

land.lhs.true.1029:                               ; preds = %if.end.1026
  %590 = load i16, i16* %l0_refX, align 2
  %conv1030 = sext i16 %590 to i32
  %cmp1031 = icmp slt i32 %conv1030, 0
  br i1 %cmp1031, label %cond.true.1033, label %cond.false.1034

cond.true.1033:                                   ; preds = %land.lhs.true.1029
  br label %cond.end.1036

cond.false.1034:                                  ; preds = %land.lhs.true.1029
  %591 = load i16, i16* %l0_refX, align 2
  %conv1035 = sext i16 %591 to i32
  br label %cond.end.1036

cond.end.1036:                                    ; preds = %cond.false.1034, %cond.true.1033
  %cond1037 = phi i32 [ 0, %cond.true.1033 ], [ %conv1035, %cond.false.1034 ]
  %idxprom1038 = sext i32 %cond1037 to i64
  %592 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1039 = getelementptr inbounds i16***, i16**** %592, i64 0
  %593 = load i16***, i16**** %arrayidx1039, align 8
  %arrayidx1040 = getelementptr inbounds i16**, i16*** %593, i64 %idxprom1038
  %594 = load i16**, i16*** %arrayidx1040, align 8
  %arrayidx1041 = getelementptr inbounds i16*, i16** %594, i64 0
  %595 = load i16*, i16** %arrayidx1041, align 8
  %arrayidx1042 = getelementptr inbounds i16, i16* %595, i64 0
  %596 = load i16, i16* %arrayidx1042, align 2
  %conv1043 = sext i16 %596 to i32
  %cmp1044 = icmp slt i32 %conv1043, -8192
  br i1 %cmp1044, label %if.then.1180, label %lor.lhs.false.1046

lor.lhs.false.1046:                               ; preds = %cond.end.1036
  %597 = load i16, i16* %l0_refX, align 2
  %conv1047 = sext i16 %597 to i32
  %cmp1048 = icmp slt i32 %conv1047, 0
  br i1 %cmp1048, label %cond.true.1050, label %cond.false.1051

cond.true.1050:                                   ; preds = %lor.lhs.false.1046
  br label %cond.end.1053

cond.false.1051:                                  ; preds = %lor.lhs.false.1046
  %598 = load i16, i16* %l0_refX, align 2
  %conv1052 = sext i16 %598 to i32
  br label %cond.end.1053

cond.end.1053:                                    ; preds = %cond.false.1051, %cond.true.1050
  %cond1054 = phi i32 [ 0, %cond.true.1050 ], [ %conv1052, %cond.false.1051 ]
  %idxprom1055 = sext i32 %cond1054 to i64
  %599 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1056 = getelementptr inbounds i16***, i16**** %599, i64 0
  %600 = load i16***, i16**** %arrayidx1056, align 8
  %arrayidx1057 = getelementptr inbounds i16**, i16*** %600, i64 %idxprom1055
  %601 = load i16**, i16*** %arrayidx1057, align 8
  %arrayidx1058 = getelementptr inbounds i16*, i16** %601, i64 0
  %602 = load i16*, i16** %arrayidx1058, align 8
  %arrayidx1059 = getelementptr inbounds i16, i16* %602, i64 0
  %603 = load i16, i16* %arrayidx1059, align 2
  %conv1060 = sext i16 %603 to i32
  %cmp1061 = icmp sgt i32 %conv1060, 8191
  br i1 %cmp1061, label %if.then.1180, label %lor.lhs.false.1063

lor.lhs.false.1063:                               ; preds = %cond.end.1053
  %604 = load i16, i16* %l0_refX, align 2
  %conv1064 = sext i16 %604 to i32
  %cmp1065 = icmp slt i32 %conv1064, 0
  br i1 %cmp1065, label %cond.true.1067, label %cond.false.1068

cond.true.1067:                                   ; preds = %lor.lhs.false.1063
  br label %cond.end.1070

cond.false.1068:                                  ; preds = %lor.lhs.false.1063
  %605 = load i16, i16* %l0_refX, align 2
  %conv1069 = sext i16 %605 to i32
  br label %cond.end.1070

cond.end.1070:                                    ; preds = %cond.false.1068, %cond.true.1067
  %cond1071 = phi i32 [ 0, %cond.true.1067 ], [ %conv1069, %cond.false.1068 ]
  %idxprom1072 = sext i32 %cond1071 to i64
  %606 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1073 = getelementptr inbounds i16***, i16**** %606, i64 0
  %607 = load i16***, i16**** %arrayidx1073, align 8
  %arrayidx1074 = getelementptr inbounds i16**, i16*** %607, i64 %idxprom1072
  %608 = load i16**, i16*** %arrayidx1074, align 8
  %arrayidx1075 = getelementptr inbounds i16*, i16** %608, i64 0
  %609 = load i16*, i16** %arrayidx1075, align 8
  %arrayidx1076 = getelementptr inbounds i16, i16* %609, i64 1
  %610 = load i16, i16* %arrayidx1076, align 2
  %conv1077 = sext i16 %610 to i32
  %611 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %611, i32 0, i32 2
  %612 = load i32, i32* %LevelIndex, align 4
  %idxprom1078 = sext i32 %612 to i64
  %arrayidx1079 = getelementptr inbounds [17 x [6 x i32]], [17 x [6 x i32]]* @LEVELMVLIMIT, i32 0, i64 %idxprom1078
  %arrayidx1080 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx1079, i32 0, i64 4
  %613 = load i32, i32* %arrayidx1080, align 4
  %cmp1081 = icmp slt i32 %conv1077, %613
  br i1 %cmp1081, label %if.then.1180, label %lor.lhs.false.1083

lor.lhs.false.1083:                               ; preds = %cond.end.1070
  %614 = load i16, i16* %l0_refX, align 2
  %conv1084 = sext i16 %614 to i32
  %cmp1085 = icmp slt i32 %conv1084, 0
  br i1 %cmp1085, label %cond.true.1087, label %cond.false.1088

cond.true.1087:                                   ; preds = %lor.lhs.false.1083
  br label %cond.end.1090

cond.false.1088:                                  ; preds = %lor.lhs.false.1083
  %615 = load i16, i16* %l0_refX, align 2
  %conv1089 = sext i16 %615 to i32
  br label %cond.end.1090

cond.end.1090:                                    ; preds = %cond.false.1088, %cond.true.1087
  %cond1091 = phi i32 [ 0, %cond.true.1087 ], [ %conv1089, %cond.false.1088 ]
  %idxprom1092 = sext i32 %cond1091 to i64
  %616 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1093 = getelementptr inbounds i16***, i16**** %616, i64 0
  %617 = load i16***, i16**** %arrayidx1093, align 8
  %arrayidx1094 = getelementptr inbounds i16**, i16*** %617, i64 %idxprom1092
  %618 = load i16**, i16*** %arrayidx1094, align 8
  %arrayidx1095 = getelementptr inbounds i16*, i16** %618, i64 0
  %619 = load i16*, i16** %arrayidx1095, align 8
  %arrayidx1096 = getelementptr inbounds i16, i16* %619, i64 1
  %620 = load i16, i16* %arrayidx1096, align 2
  %conv1097 = sext i16 %620 to i32
  %621 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex1098 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %621, i32 0, i32 2
  %622 = load i32, i32* %LevelIndex1098, align 4
  %idxprom1099 = sext i32 %622 to i64
  %arrayidx1100 = getelementptr inbounds [17 x [6 x i32]], [17 x [6 x i32]]* @LEVELMVLIMIT, i32 0, i64 %idxprom1099
  %arrayidx1101 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx1100, i32 0, i64 5
  %623 = load i32, i32* %arrayidx1101, align 4
  %cmp1102 = icmp sgt i32 %conv1097, %623
  br i1 %cmp1102, label %if.then.1180, label %lor.lhs.false.1104

lor.lhs.false.1104:                               ; preds = %cond.end.1090
  %624 = load i16, i16* %l1_refX, align 2
  %conv1105 = sext i16 %624 to i32
  %cmp1106 = icmp slt i32 %conv1105, 0
  br i1 %cmp1106, label %cond.true.1108, label %cond.false.1109

cond.true.1108:                                   ; preds = %lor.lhs.false.1104
  br label %cond.end.1111

cond.false.1109:                                  ; preds = %lor.lhs.false.1104
  %625 = load i16, i16* %l1_refX, align 2
  %conv1110 = sext i16 %625 to i32
  br label %cond.end.1111

cond.end.1111:                                    ; preds = %cond.false.1109, %cond.true.1108
  %cond1112 = phi i32 [ 0, %cond.true.1108 ], [ %conv1110, %cond.false.1109 ]
  %idxprom1113 = sext i32 %cond1112 to i64
  %626 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1114 = getelementptr inbounds i16***, i16**** %626, i64 1
  %627 = load i16***, i16**** %arrayidx1114, align 8
  %arrayidx1115 = getelementptr inbounds i16**, i16*** %627, i64 %idxprom1113
  %628 = load i16**, i16*** %arrayidx1115, align 8
  %arrayidx1116 = getelementptr inbounds i16*, i16** %628, i64 0
  %629 = load i16*, i16** %arrayidx1116, align 8
  %arrayidx1117 = getelementptr inbounds i16, i16* %629, i64 0
  %630 = load i16, i16* %arrayidx1117, align 2
  %conv1118 = sext i16 %630 to i32
  %cmp1119 = icmp slt i32 %conv1118, -8192
  br i1 %cmp1119, label %if.then.1180, label %lor.lhs.false.1121

lor.lhs.false.1121:                               ; preds = %cond.end.1111
  %631 = load i16, i16* %l1_refX, align 2
  %conv1122 = sext i16 %631 to i32
  %cmp1123 = icmp slt i32 %conv1122, 0
  br i1 %cmp1123, label %cond.true.1125, label %cond.false.1126

cond.true.1125:                                   ; preds = %lor.lhs.false.1121
  br label %cond.end.1128

cond.false.1126:                                  ; preds = %lor.lhs.false.1121
  %632 = load i16, i16* %l1_refX, align 2
  %conv1127 = sext i16 %632 to i32
  br label %cond.end.1128

cond.end.1128:                                    ; preds = %cond.false.1126, %cond.true.1125
  %cond1129 = phi i32 [ 0, %cond.true.1125 ], [ %conv1127, %cond.false.1126 ]
  %idxprom1130 = sext i32 %cond1129 to i64
  %633 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1131 = getelementptr inbounds i16***, i16**** %633, i64 1
  %634 = load i16***, i16**** %arrayidx1131, align 8
  %arrayidx1132 = getelementptr inbounds i16**, i16*** %634, i64 %idxprom1130
  %635 = load i16**, i16*** %arrayidx1132, align 8
  %arrayidx1133 = getelementptr inbounds i16*, i16** %635, i64 0
  %636 = load i16*, i16** %arrayidx1133, align 8
  %arrayidx1134 = getelementptr inbounds i16, i16* %636, i64 0
  %637 = load i16, i16* %arrayidx1134, align 2
  %conv1135 = sext i16 %637 to i32
  %cmp1136 = icmp sgt i32 %conv1135, 8191
  br i1 %cmp1136, label %if.then.1180, label %lor.lhs.false.1138

lor.lhs.false.1138:                               ; preds = %cond.end.1128
  %638 = load i16, i16* %l1_refX, align 2
  %conv1139 = sext i16 %638 to i32
  %cmp1140 = icmp slt i32 %conv1139, 0
  br i1 %cmp1140, label %cond.true.1142, label %cond.false.1143

cond.true.1142:                                   ; preds = %lor.lhs.false.1138
  br label %cond.end.1145

cond.false.1143:                                  ; preds = %lor.lhs.false.1138
  %639 = load i16, i16* %l1_refX, align 2
  %conv1144 = sext i16 %639 to i32
  br label %cond.end.1145

cond.end.1145:                                    ; preds = %cond.false.1143, %cond.true.1142
  %cond1146 = phi i32 [ 0, %cond.true.1142 ], [ %conv1144, %cond.false.1143 ]
  %idxprom1147 = sext i32 %cond1146 to i64
  %640 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1148 = getelementptr inbounds i16***, i16**** %640, i64 1
  %641 = load i16***, i16**** %arrayidx1148, align 8
  %arrayidx1149 = getelementptr inbounds i16**, i16*** %641, i64 %idxprom1147
  %642 = load i16**, i16*** %arrayidx1149, align 8
  %arrayidx1150 = getelementptr inbounds i16*, i16** %642, i64 0
  %643 = load i16*, i16** %arrayidx1150, align 8
  %arrayidx1151 = getelementptr inbounds i16, i16* %643, i64 1
  %644 = load i16, i16* %arrayidx1151, align 2
  %conv1152 = sext i16 %644 to i32
  %645 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex1153 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %645, i32 0, i32 2
  %646 = load i32, i32* %LevelIndex1153, align 4
  %idxprom1154 = sext i32 %646 to i64
  %arrayidx1155 = getelementptr inbounds [17 x [6 x i32]], [17 x [6 x i32]]* @LEVELMVLIMIT, i32 0, i64 %idxprom1154
  %arrayidx1156 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx1155, i32 0, i64 4
  %647 = load i32, i32* %arrayidx1156, align 4
  %cmp1157 = icmp slt i32 %conv1152, %647
  br i1 %cmp1157, label %if.then.1180, label %lor.lhs.false.1159

lor.lhs.false.1159:                               ; preds = %cond.end.1145
  %648 = load i16, i16* %l1_refX, align 2
  %conv1160 = sext i16 %648 to i32
  %cmp1161 = icmp slt i32 %conv1160, 0
  br i1 %cmp1161, label %cond.true.1163, label %cond.false.1164

cond.true.1163:                                   ; preds = %lor.lhs.false.1159
  br label %cond.end.1166

cond.false.1164:                                  ; preds = %lor.lhs.false.1159
  %649 = load i16, i16* %l1_refX, align 2
  %conv1165 = sext i16 %649 to i32
  br label %cond.end.1166

cond.end.1166:                                    ; preds = %cond.false.1164, %cond.true.1163
  %cond1167 = phi i32 [ 0, %cond.true.1163 ], [ %conv1165, %cond.false.1164 ]
  %idxprom1168 = sext i32 %cond1167 to i64
  %650 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1169 = getelementptr inbounds i16***, i16**** %650, i64 1
  %651 = load i16***, i16**** %arrayidx1169, align 8
  %arrayidx1170 = getelementptr inbounds i16**, i16*** %651, i64 %idxprom1168
  %652 = load i16**, i16*** %arrayidx1170, align 8
  %arrayidx1171 = getelementptr inbounds i16*, i16** %652, i64 0
  %653 = load i16*, i16** %arrayidx1171, align 8
  %arrayidx1172 = getelementptr inbounds i16, i16* %653, i64 1
  %654 = load i16, i16* %arrayidx1172, align 2
  %conv1173 = sext i16 %654 to i32
  %655 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex1174 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %655, i32 0, i32 2
  %656 = load i32, i32* %LevelIndex1174, align 4
  %idxprom1175 = sext i32 %656 to i64
  %arrayidx1176 = getelementptr inbounds [17 x [6 x i32]], [17 x [6 x i32]]* @LEVELMVLIMIT, i32 0, i64 %idxprom1175
  %arrayidx1177 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx1176, i32 0, i64 5
  %657 = load i32, i32* %arrayidx1177, align 4
  %cmp1178 = icmp sgt i32 %conv1173, %657
  br i1 %cmp1178, label %if.then.1180, label %if.else.1195

if.then.1180:                                     ; preds = %cond.end.1166, %cond.end.1145, %cond.end.1128, %cond.end.1111, %cond.end.1090, %cond.end.1070, %cond.end.1053, %cond.end.1036
  %658 = load i32, i32* %pic_block_x, align 4
  %idxprom1181 = sext i32 %658 to i64
  %659 = load i32, i32* %pic_block_y, align 4
  %idxprom1182 = sext i32 %659 to i64
  %660 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx1183 = getelementptr inbounds i8**, i8*** %660, i64 0
  %661 = load i8**, i8*** %arrayidx1183, align 8
  %arrayidx1184 = getelementptr inbounds i8*, i8** %661, i64 %idxprom1182
  %662 = load i8*, i8** %arrayidx1184, align 8
  %arrayidx1185 = getelementptr inbounds i8, i8* %662, i64 %idxprom1181
  store i8 -1, i8* %arrayidx1185, align 1
  %663 = load i32, i32* %pic_block_x, align 4
  %idxprom1186 = sext i32 %663 to i64
  %664 = load i32, i32* %pic_block_y, align 4
  %idxprom1187 = sext i32 %664 to i64
  %665 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx1188 = getelementptr inbounds i8**, i8*** %665, i64 1
  %666 = load i8**, i8*** %arrayidx1188, align 8
  %arrayidx1189 = getelementptr inbounds i8*, i8** %666, i64 %idxprom1187
  %667 = load i8*, i8** %arrayidx1189, align 8
  %arrayidx1190 = getelementptr inbounds i8, i8* %667, i64 %idxprom1186
  store i8 -1, i8* %arrayidx1190, align 1
  %668 = load i32, i32* %pic_block_x, align 4
  %idxprom1191 = sext i32 %668 to i64
  %669 = load i32, i32* %pic_block_y, align 4
  %idxprom1192 = sext i32 %669 to i64
  %670 = load i8**, i8*** @direct_pdir, align 8
  %arrayidx1193 = getelementptr inbounds i8*, i8** %670, i64 %idxprom1192
  %671 = load i8*, i8** %arrayidx1193, align 8
  %arrayidx1194 = getelementptr inbounds i8, i8* %671, i64 %idxprom1191
  store i8 -1, i8* %arrayidx1194, align 1
  br label %if.end.1306

if.else.1195:                                     ; preds = %cond.end.1166, %if.end.1026
  %672 = load i16, i16* %l0_refX, align 2
  %conv1196 = sext i16 %672 to i32
  %cmp1197 = icmp slt i32 %conv1196, 0
  br i1 %cmp1197, label %land.lhs.true.1199, label %if.end.1214

land.lhs.true.1199:                               ; preds = %if.else.1195
  %673 = load i16, i16* %l1_refX, align 2
  %conv1200 = sext i16 %673 to i32
  %cmp1201 = icmp slt i32 %conv1200, 0
  br i1 %cmp1201, label %if.then.1203, label %if.end.1214

if.then.1203:                                     ; preds = %land.lhs.true.1199
  %674 = load i32, i32* %pic_block_x, align 4
  %idxprom1204 = sext i32 %674 to i64
  %675 = load i32, i32* %pic_block_y, align 4
  %idxprom1205 = sext i32 %675 to i64
  %676 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx1206 = getelementptr inbounds i8**, i8*** %676, i64 1
  %677 = load i8**, i8*** %arrayidx1206, align 8
  %arrayidx1207 = getelementptr inbounds i8*, i8** %677, i64 %idxprom1205
  %678 = load i8*, i8** %arrayidx1207, align 8
  %arrayidx1208 = getelementptr inbounds i8, i8* %678, i64 %idxprom1204
  store i8 0, i8* %arrayidx1208, align 1
  %679 = load i32, i32* %pic_block_x, align 4
  %idxprom1209 = sext i32 %679 to i64
  %680 = load i32, i32* %pic_block_y, align 4
  %idxprom1210 = sext i32 %680 to i64
  %681 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx1211 = getelementptr inbounds i8**, i8*** %681, i64 0
  %682 = load i8**, i8*** %arrayidx1211, align 8
  %arrayidx1212 = getelementptr inbounds i8*, i8** %682, i64 %idxprom1210
  %683 = load i8*, i8** %arrayidx1212, align 8
  %arrayidx1213 = getelementptr inbounds i8, i8* %683, i64 %idxprom1209
  store i8 0, i8* %arrayidx1213, align 1
  store i16 0, i16* %l0_refX, align 2
  store i16 0, i16* %l1_refX, align 2
  br label %if.end.1214

if.end.1214:                                      ; preds = %if.then.1203, %land.lhs.true.1199, %if.else.1195
  %684 = load i32, i32* %pic_block_x, align 4
  %idxprom1215 = sext i32 %684 to i64
  %685 = load i32, i32* %pic_block_y, align 4
  %idxprom1216 = sext i32 %685 to i64
  %686 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx1217 = getelementptr inbounds i8**, i8*** %686, i64 1
  %687 = load i8**, i8*** %arrayidx1217, align 8
  %arrayidx1218 = getelementptr inbounds i8*, i8** %687, i64 %idxprom1216
  %688 = load i8*, i8** %arrayidx1218, align 8
  %arrayidx1219 = getelementptr inbounds i8, i8* %688, i64 %idxprom1215
  %689 = load i8, i8* %arrayidx1219, align 1
  %conv1220 = sext i8 %689 to i32
  %cmp1221 = icmp eq i32 %conv1220, -1
  br i1 %cmp1221, label %if.then.1223, label %if.else.1228

if.then.1223:                                     ; preds = %if.end.1214
  %690 = load i32, i32* %pic_block_x, align 4
  %idxprom1224 = sext i32 %690 to i64
  %691 = load i32, i32* %pic_block_y, align 4
  %idxprom1225 = sext i32 %691 to i64
  %692 = load i8**, i8*** @direct_pdir, align 8
  %arrayidx1226 = getelementptr inbounds i8*, i8** %692, i64 %idxprom1225
  %693 = load i8*, i8** %arrayidx1226, align 8
  %arrayidx1227 = getelementptr inbounds i8, i8* %693, i64 %idxprom1224
  store i8 0, i8* %arrayidx1227, align 1
  br label %if.end.1305

if.else.1228:                                     ; preds = %if.end.1214
  %694 = load i32, i32* %pic_block_x, align 4
  %idxprom1229 = sext i32 %694 to i64
  %695 = load i32, i32* %pic_block_y, align 4
  %idxprom1230 = sext i32 %695 to i64
  %696 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx1231 = getelementptr inbounds i8**, i8*** %696, i64 0
  %697 = load i8**, i8*** %arrayidx1231, align 8
  %arrayidx1232 = getelementptr inbounds i8*, i8** %697, i64 %idxprom1230
  %698 = load i8*, i8** %arrayidx1232, align 8
  %arrayidx1233 = getelementptr inbounds i8, i8* %698, i64 %idxprom1229
  %699 = load i8, i8* %arrayidx1233, align 1
  %conv1234 = sext i8 %699 to i32
  %cmp1235 = icmp eq i32 %conv1234, -1
  br i1 %cmp1235, label %if.then.1237, label %if.else.1242

if.then.1237:                                     ; preds = %if.else.1228
  %700 = load i32, i32* %pic_block_x, align 4
  %idxprom1238 = sext i32 %700 to i64
  %701 = load i32, i32* %pic_block_y, align 4
  %idxprom1239 = sext i32 %701 to i64
  %702 = load i8**, i8*** @direct_pdir, align 8
  %arrayidx1240 = getelementptr inbounds i8*, i8** %702, i64 %idxprom1239
  %703 = load i8*, i8** %arrayidx1240, align 8
  %arrayidx1241 = getelementptr inbounds i8, i8* %703, i64 %idxprom1238
  store i8 1, i8* %arrayidx1241, align 1
  br label %if.end.1304

if.else.1242:                                     ; preds = %if.else.1228
  %704 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %704, i32 0, i32 20
  %705 = load i32, i32* %weighted_bipred_idc, align 4
  %cmp1243 = icmp eq i32 %705, 1
  br i1 %cmp1243, label %if.then.1245, label %if.else.1298

if.then.1245:                                     ; preds = %if.else.1242
  store i32 0, i32* %invalid_wp, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.1246

for.cond.1246:                                    ; preds = %for.inc, %if.then.1245
  %706 = load i32, i32* %i, align 4
  %707 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %707, i32 0, i32 8
  %708 = load i32, i32* %chroma_format_idc, align 4
  %cmp1247 = icmp eq i32 %708, 0
  %cond1249 = select i1 %cmp1247, i32 1, i32 3
  %cmp1250 = icmp slt i32 %706, %cond1249
  br i1 %cmp1250, label %for.body.1252, label %for.end

for.body.1252:                                    ; preds = %for.cond.1246
  %709 = load i32, i32* %i, align 4
  %idxprom1253 = sext i32 %709 to i64
  %710 = load i16, i16* %l1_refX, align 2
  %idxprom1254 = sext i16 %710 to i64
  %711 = load i16, i16* %l0_refX, align 2
  %idxprom1255 = sext i16 %711 to i64
  %712 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx1256 = getelementptr inbounds i32***, i32**** %712, i64 0
  %713 = load i32***, i32**** %arrayidx1256, align 8
  %arrayidx1257 = getelementptr inbounds i32**, i32*** %713, i64 %idxprom1255
  %714 = load i32**, i32*** %arrayidx1257, align 8
  %arrayidx1258 = getelementptr inbounds i32*, i32** %714, i64 %idxprom1254
  %715 = load i32*, i32** %arrayidx1258, align 8
  %arrayidx1259 = getelementptr inbounds i32, i32* %715, i64 %idxprom1253
  %716 = load i32, i32* %arrayidx1259, align 4
  %717 = load i32, i32* %i, align 4
  %idxprom1260 = sext i32 %717 to i64
  %718 = load i16, i16* %l1_refX, align 2
  %idxprom1261 = sext i16 %718 to i64
  %719 = load i16, i16* %l0_refX, align 2
  %idxprom1262 = sext i16 %719 to i64
  %720 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx1263 = getelementptr inbounds i32***, i32**** %720, i64 1
  %721 = load i32***, i32**** %arrayidx1263, align 8
  %arrayidx1264 = getelementptr inbounds i32**, i32*** %721, i64 %idxprom1262
  %722 = load i32**, i32*** %arrayidx1264, align 8
  %arrayidx1265 = getelementptr inbounds i32*, i32** %722, i64 %idxprom1261
  %723 = load i32*, i32** %arrayidx1265, align 8
  %arrayidx1266 = getelementptr inbounds i32, i32* %723, i64 %idxprom1260
  %724 = load i32, i32* %arrayidx1266, align 4
  %add1267 = add nsw i32 %716, %724
  store i32 %add1267, i32* %weight_sum, align 4
  %725 = load i32, i32* %weight_sum, align 4
  %cmp1268 = icmp slt i32 %725, -128
  br i1 %cmp1268, label %if.then.1273, label %lor.lhs.false.1270

lor.lhs.false.1270:                               ; preds = %for.body.1252
  %726 = load i32, i32* %weight_sum, align 4
  %cmp1271 = icmp sgt i32 %726, 127
  br i1 %cmp1271, label %if.then.1273, label %if.end.1274

if.then.1273:                                     ; preds = %lor.lhs.false.1270, %for.body.1252
  store i32 1, i32* %invalid_wp, align 4
  br label %for.end

if.end.1274:                                      ; preds = %lor.lhs.false.1270
  br label %for.inc

for.inc:                                          ; preds = %if.end.1274
  %727 = load i32, i32* %i, align 4
  %inc = add nsw i32 %727, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1246

for.end:                                          ; preds = %if.then.1273, %for.cond.1246
  %728 = load i32, i32* %invalid_wp, align 4
  %cmp1275 = icmp eq i32 %728, 0
  br i1 %cmp1275, label %if.then.1277, label %if.else.1282

if.then.1277:                                     ; preds = %for.end
  %729 = load i32, i32* %pic_block_x, align 4
  %idxprom1278 = sext i32 %729 to i64
  %730 = load i32, i32* %pic_block_y, align 4
  %idxprom1279 = sext i32 %730 to i64
  %731 = load i8**, i8*** @direct_pdir, align 8
  %arrayidx1280 = getelementptr inbounds i8*, i8** %731, i64 %idxprom1279
  %732 = load i8*, i8** %arrayidx1280, align 8
  %arrayidx1281 = getelementptr inbounds i8, i8* %732, i64 %idxprom1278
  store i8 2, i8* %arrayidx1281, align 1
  br label %if.end.1297

if.else.1282:                                     ; preds = %for.end
  %733 = load i32, i32* %pic_block_x, align 4
  %idxprom1283 = sext i32 %733 to i64
  %734 = load i32, i32* %pic_block_y, align 4
  %idxprom1284 = sext i32 %734 to i64
  %735 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx1285 = getelementptr inbounds i8**, i8*** %735, i64 0
  %736 = load i8**, i8*** %arrayidx1285, align 8
  %arrayidx1286 = getelementptr inbounds i8*, i8** %736, i64 %idxprom1284
  %737 = load i8*, i8** %arrayidx1286, align 8
  %arrayidx1287 = getelementptr inbounds i8, i8* %737, i64 %idxprom1283
  store i8 -1, i8* %arrayidx1287, align 1
  %738 = load i32, i32* %pic_block_x, align 4
  %idxprom1288 = sext i32 %738 to i64
  %739 = load i32, i32* %pic_block_y, align 4
  %idxprom1289 = sext i32 %739 to i64
  %740 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx1290 = getelementptr inbounds i8**, i8*** %740, i64 1
  %741 = load i8**, i8*** %arrayidx1290, align 8
  %arrayidx1291 = getelementptr inbounds i8*, i8** %741, i64 %idxprom1289
  %742 = load i8*, i8** %arrayidx1291, align 8
  %arrayidx1292 = getelementptr inbounds i8, i8* %742, i64 %idxprom1288
  store i8 -1, i8* %arrayidx1292, align 1
  %743 = load i32, i32* %pic_block_x, align 4
  %idxprom1293 = sext i32 %743 to i64
  %744 = load i32, i32* %pic_block_y, align 4
  %idxprom1294 = sext i32 %744 to i64
  %745 = load i8**, i8*** @direct_pdir, align 8
  %arrayidx1295 = getelementptr inbounds i8*, i8** %745, i64 %idxprom1294
  %746 = load i8*, i8** %arrayidx1295, align 8
  %arrayidx1296 = getelementptr inbounds i8, i8* %746, i64 %idxprom1293
  store i8 -1, i8* %arrayidx1296, align 1
  br label %if.end.1297

if.end.1297:                                      ; preds = %if.else.1282, %if.then.1277
  br label %if.end.1303

if.else.1298:                                     ; preds = %if.else.1242
  %747 = load i32, i32* %pic_block_x, align 4
  %idxprom1299 = sext i32 %747 to i64
  %748 = load i32, i32* %pic_block_y, align 4
  %idxprom1300 = sext i32 %748 to i64
  %749 = load i8**, i8*** @direct_pdir, align 8
  %arrayidx1301 = getelementptr inbounds i8*, i8** %749, i64 %idxprom1300
  %750 = load i8*, i8** %arrayidx1301, align 8
  %arrayidx1302 = getelementptr inbounds i8, i8* %750, i64 %idxprom1299
  store i8 2, i8* %arrayidx1302, align 1
  br label %if.end.1303

if.end.1303:                                      ; preds = %if.else.1298, %if.end.1297
  br label %if.end.1304

if.end.1304:                                      ; preds = %if.end.1303, %if.then.1237
  br label %if.end.1305

if.end.1305:                                      ; preds = %if.end.1304, %if.then.1223
  br label %if.end.1306

if.end.1306:                                      ; preds = %if.end.1305, %if.then.1180
  br label %for.inc.1307

for.inc.1307:                                     ; preds = %if.end.1306
  %751 = load i32, i32* %block_x, align 4
  %inc1308 = add nsw i32 %751, 1
  store i32 %inc1308, i32* %block_x, align 4
  br label %for.cond.897

for.end.1309:                                     ; preds = %for.cond.897
  br label %for.inc.1310

for.inc.1310:                                     ; preds = %for.end.1309
  %752 = load i32, i32* %block_y, align 4
  %inc1311 = add nsw i32 %752, 1
  store i32 %inc1311, i32* %block_y, align 4
  br label %for.cond

for.end.1312:                                     ; preds = %for.cond
  br label %if.end.1744

if.else.1313:                                     ; preds = %if.end.11
  %753 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %list_offset1314 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %753, i32 0, i32 21
  %754 = load i32, i32* %list_offset1314, align 4
  %add1315 = add nsw i32 0, %754
  %idxprom1316 = sext i32 %add1315 to i64
  %755 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %755, i32 0, i32 6
  %arrayidx1317 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %ref_pic_num, i32 0, i64 %idxprom1316
  %arraydecay1318 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx1317, i32 0, i32 0
  store i64* %arraydecay1318, i64** %refpic, align 8
  store i32 0, i32* %block_y, align 4
  br label %for.cond.1319

for.cond.1319:                                    ; preds = %for.inc.1741, %if.else.1313
  %756 = load i32, i32* %block_y, align 4
  %cmp1320 = icmp slt i32 %756, 4
  br i1 %cmp1320, label %for.body.1322, label %for.end.1743

for.body.1322:                                    ; preds = %for.cond.1319
  %757 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y1323 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %757, i32 0, i32 40
  %758 = load i32, i32* %pix_y1323, align 4
  %shr1324 = ashr i32 %758, 2
  %759 = load i32, i32* %block_y, align 4
  %add1325 = add nsw i32 %shr1324, %759
  store i32 %add1325, i32* %pic_block_y, align 4
  %760 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y1326 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %760, i32 0, i32 44
  %761 = load i32, i32* %opix_y1326, align 4
  %shr1327 = ashr i32 %761, 2
  %762 = load i32, i32* %block_y, align 4
  %add1328 = add nsw i32 %shr1327, %762
  store i32 %add1328, i32* %opic_block_y, align 4
  store i32 0, i32* %block_x, align 4
  br label %for.cond.1329

for.cond.1329:                                    ; preds = %for.inc.1738, %for.body.1322
  %763 = load i32, i32* %block_x, align 4
  %cmp1330 = icmp slt i32 %763, 4
  br i1 %cmp1330, label %for.body.1332, label %for.end.1740

for.body.1332:                                    ; preds = %for.cond.1329
  %764 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x1333 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %764, i32 0, i32 39
  %765 = load i32, i32* %pix_x1333, align 4
  %shr1334 = ashr i32 %765, 2
  %766 = load i32, i32* %block_x, align 4
  %add1335 = add nsw i32 %shr1334, %766
  store i32 %add1335, i32* %pic_block_x, align 4
  %767 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x1336 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %767, i32 0, i32 43
  %768 = load i32, i32* %opix_x1336, align 4
  %shr1337 = ashr i32 %768, 2
  %769 = load i32, i32* %block_x, align 4
  %add1338 = add nsw i32 %shr1337, %769
  store i32 %add1338, i32* %opic_block_x, align 4
  %770 = load i32, i32* %block_x, align 4
  %idxprom1339 = sext i32 %770 to i64
  %771 = load i32, i32* %block_y, align 4
  %idxprom1340 = sext i32 %771 to i64
  %772 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv1341 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %772, i32 0, i32 80
  %773 = load i16******, i16******* %all_mv1341, align 8
  %arrayidx1342 = getelementptr inbounds i16*****, i16****** %773, i64 %idxprom1340
  %774 = load i16*****, i16****** %arrayidx1342, align 8
  %arrayidx1343 = getelementptr inbounds i16****, i16***** %774, i64 %idxprom1339
  %775 = load i16****, i16***** %arrayidx1343, align 8
  store i16**** %775, i16***** %all_mvs, align 8
  %776 = load i32, i32* %opic_block_x, align 4
  %idxprom1344 = sext i32 %776 to i64
  %777 = load i32, i32* %opic_block_y, align 4
  %idxprom1345 = sext i32 %777 to i64
  %778 = load i8***, i8**** %co_located_ref_idx, align 8
  %arrayidx1346 = getelementptr inbounds i8**, i8*** %778, i64 0
  %779 = load i8**, i8*** %arrayidx1346, align 8
  %arrayidx1347 = getelementptr inbounds i8*, i8** %779, i64 %idxprom1345
  %780 = load i8*, i8** %arrayidx1347, align 8
  %arrayidx1348 = getelementptr inbounds i8, i8* %780, i64 %idxprom1344
  %781 = load i8, i8* %arrayidx1348, align 1
  %conv1349 = sext i8 %781 to i32
  %cmp1350 = icmp eq i32 %conv1349, -1
  %cond1352 = select i1 %cmp1350, i32 1, i32 0
  store i32 %cond1352, i32* %refList, align 4
  %782 = load i32, i32* %opic_block_x, align 4
  %idxprom1353 = sext i32 %782 to i64
  %783 = load i32, i32* %opic_block_y, align 4
  %idxprom1354 = sext i32 %783 to i64
  %784 = load i32, i32* %refList, align 4
  %idxprom1355 = sext i32 %784 to i64
  %785 = load i8***, i8**** %co_located_ref_idx, align 8
  %arrayidx1356 = getelementptr inbounds i8**, i8*** %785, i64 %idxprom1355
  %786 = load i8**, i8*** %arrayidx1356, align 8
  %arrayidx1357 = getelementptr inbounds i8*, i8** %786, i64 %idxprom1354
  %787 = load i8*, i8** %arrayidx1357, align 8
  %arrayidx1358 = getelementptr inbounds i8, i8* %787, i64 %idxprom1353
  %788 = load i8, i8* %arrayidx1358, align 1
  %conv1359 = sext i8 %788 to i32
  store i32 %conv1359, i32* %ref_idx, align 4
  %789 = load i32, i32* %ref_idx, align 4
  %cmp1360 = icmp eq i32 %789, -1
  br i1 %cmp1360, label %if.then.1362, label %if.else.1393

if.then.1362:                                     ; preds = %for.body.1332
  %790 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1363 = getelementptr inbounds i16***, i16**** %790, i64 0
  %791 = load i16***, i16**** %arrayidx1363, align 8
  %arrayidx1364 = getelementptr inbounds i16**, i16*** %791, i64 0
  %792 = load i16**, i16*** %arrayidx1364, align 8
  %arrayidx1365 = getelementptr inbounds i16*, i16** %792, i64 0
  %793 = load i16*, i16** %arrayidx1365, align 8
  %arrayidx1366 = getelementptr inbounds i16, i16* %793, i64 0
  store i16 0, i16* %arrayidx1366, align 2
  %794 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1367 = getelementptr inbounds i16***, i16**** %794, i64 0
  %795 = load i16***, i16**** %arrayidx1367, align 8
  %arrayidx1368 = getelementptr inbounds i16**, i16*** %795, i64 0
  %796 = load i16**, i16*** %arrayidx1368, align 8
  %arrayidx1369 = getelementptr inbounds i16*, i16** %796, i64 0
  %797 = load i16*, i16** %arrayidx1369, align 8
  %arrayidx1370 = getelementptr inbounds i16, i16* %797, i64 1
  store i16 0, i16* %arrayidx1370, align 2
  %798 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1371 = getelementptr inbounds i16***, i16**** %798, i64 1
  %799 = load i16***, i16**** %arrayidx1371, align 8
  %arrayidx1372 = getelementptr inbounds i16**, i16*** %799, i64 0
  %800 = load i16**, i16*** %arrayidx1372, align 8
  %arrayidx1373 = getelementptr inbounds i16*, i16** %800, i64 0
  %801 = load i16*, i16** %arrayidx1373, align 8
  %arrayidx1374 = getelementptr inbounds i16, i16* %801, i64 0
  store i16 0, i16* %arrayidx1374, align 2
  %802 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1375 = getelementptr inbounds i16***, i16**** %802, i64 1
  %803 = load i16***, i16**** %arrayidx1375, align 8
  %arrayidx1376 = getelementptr inbounds i16**, i16*** %803, i64 0
  %804 = load i16**, i16*** %arrayidx1376, align 8
  %arrayidx1377 = getelementptr inbounds i16*, i16** %804, i64 0
  %805 = load i16*, i16** %arrayidx1377, align 8
  %arrayidx1378 = getelementptr inbounds i16, i16* %805, i64 1
  store i16 0, i16* %arrayidx1378, align 2
  %806 = load i32, i32* %pic_block_x, align 4
  %idxprom1379 = sext i32 %806 to i64
  %807 = load i32, i32* %pic_block_y, align 4
  %idxprom1380 = sext i32 %807 to i64
  %808 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx1381 = getelementptr inbounds i8**, i8*** %808, i64 0
  %809 = load i8**, i8*** %arrayidx1381, align 8
  %arrayidx1382 = getelementptr inbounds i8*, i8** %809, i64 %idxprom1380
  %810 = load i8*, i8** %arrayidx1382, align 8
  %arrayidx1383 = getelementptr inbounds i8, i8* %810, i64 %idxprom1379
  store i8 0, i8* %arrayidx1383, align 1
  %811 = load i32, i32* %pic_block_x, align 4
  %idxprom1384 = sext i32 %811 to i64
  %812 = load i32, i32* %pic_block_y, align 4
  %idxprom1385 = sext i32 %812 to i64
  %813 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx1386 = getelementptr inbounds i8**, i8*** %813, i64 1
  %814 = load i8**, i8*** %arrayidx1386, align 8
  %arrayidx1387 = getelementptr inbounds i8*, i8** %814, i64 %idxprom1385
  %815 = load i8*, i8** %arrayidx1387, align 8
  %arrayidx1388 = getelementptr inbounds i8, i8* %815, i64 %idxprom1384
  store i8 0, i8* %arrayidx1388, align 1
  %816 = load i32, i32* %pic_block_x, align 4
  %idxprom1389 = sext i32 %816 to i64
  %817 = load i32, i32* %pic_block_y, align 4
  %idxprom1390 = sext i32 %817 to i64
  %818 = load i8**, i8*** @direct_pdir, align 8
  %arrayidx1391 = getelementptr inbounds i8*, i8** %818, i64 %idxprom1390
  %819 = load i8*, i8** %arrayidx1391, align 8
  %arrayidx1392 = getelementptr inbounds i8, i8* %819, i64 %idxprom1389
  store i8 2, i8* %arrayidx1392, align 1
  br label %if.end.1661

if.else.1393:                                     ; preds = %for.body.1332
  store i32 -135792468, i32* %mapped_idx, align 4
  store i32 0, i32* %iref, align 4
  br label %for.cond.1394

for.cond.1394:                                    ; preds = %for.inc.1416, %if.else.1393
  %820 = load i32, i32* %iref, align 4
  %821 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %821, i32 0, i32 88
  %822 = load i32, i32* %num_ref_idx_l0_active, align 4
  %823 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %list_offset1395 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %823, i32 0, i32 21
  %824 = load i32, i32* %list_offset1395, align 4
  %add1396 = add nsw i32 0, %824
  %idxprom1397 = sext i32 %add1396 to i64
  %arrayidx1398 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom1397
  %825 = load i32, i32* %arrayidx1398, align 4
  %call1399 = call i32 @imin(i32 %822, i32 %825)
  %cmp1400 = icmp slt i32 %820, %call1399
  br i1 %cmp1400, label %for.body.1402, label %for.end.1418

for.body.1402:                                    ; preds = %for.cond.1394
  %826 = load i32, i32* %iref, align 4
  %idxprom1403 = sext i32 %826 to i64
  %827 = load i64*, i64** %refpic, align 8
  %arrayidx1404 = getelementptr inbounds i64, i64* %827, i64 %idxprom1403
  %828 = load i64, i64* %arrayidx1404, align 8
  %829 = load i32, i32* %opic_block_x, align 4
  %idxprom1405 = sext i32 %829 to i64
  %830 = load i32, i32* %opic_block_y, align 4
  %idxprom1406 = sext i32 %830 to i64
  %831 = load i32, i32* %refList, align 4
  %idxprom1407 = sext i32 %831 to i64
  %832 = load i64***, i64**** %co_located_ref_id, align 8
  %arrayidx1408 = getelementptr inbounds i64**, i64*** %832, i64 %idxprom1407
  %833 = load i64**, i64*** %arrayidx1408, align 8
  %arrayidx1409 = getelementptr inbounds i64*, i64** %833, i64 %idxprom1406
  %834 = load i64*, i64** %arrayidx1409, align 8
  %arrayidx1410 = getelementptr inbounds i64, i64* %834, i64 %idxprom1405
  %835 = load i64, i64* %arrayidx1410, align 8
  %cmp1411 = icmp eq i64 %828, %835
  br i1 %cmp1411, label %if.then.1413, label %if.else.1414

if.then.1413:                                     ; preds = %for.body.1402
  %836 = load i32, i32* %iref, align 4
  store i32 %836, i32* %mapped_idx, align 4
  br label %for.end.1418

if.else.1414:                                     ; preds = %for.body.1402
  store i32 -135792468, i32* %mapped_idx, align 4
  br label %if.end.1415

if.end.1415:                                      ; preds = %if.else.1414
  br label %for.inc.1416

for.inc.1416:                                     ; preds = %if.end.1415
  %837 = load i32, i32* %iref, align 4
  %inc1417 = add nsw i32 %837, 1
  store i32 %inc1417, i32* %iref, align 4
  br label %for.cond.1394

for.end.1418:                                     ; preds = %if.then.1413, %for.cond.1394
  %838 = load i32, i32* %mapped_idx, align 4
  %cmp1419 = icmp ne i32 %838, -135792468
  br i1 %cmp1419, label %if.then.1421, label %if.else.1645

if.then.1421:                                     ; preds = %for.end.1418
  %839 = load i32, i32* %mapped_idx, align 4
  %idxprom1422 = sext i32 %839 to i64
  %840 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %list_offset1423 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %840, i32 0, i32 21
  %841 = load i32, i32* %list_offset1423, align 4
  %add1424 = add nsw i32 0, %841
  %idxprom1425 = sext i32 %add1424 to i64
  %842 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mvscale = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %842, i32 0, i32 92
  %arrayidx1426 = getelementptr inbounds [6 x [32 x i32]], [6 x [32 x i32]]* %mvscale, i32 0, i64 %idxprom1425
  %arrayidx1427 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx1426, i32 0, i64 %idxprom1422
  %843 = load i32, i32* %arrayidx1427, align 4
  store i32 %843, i32* %mv_scale, align 4
  %844 = load i32, i32* %mv_scale, align 4
  %cmp1428 = icmp eq i32 %844, 9999
  br i1 %cmp1428, label %if.then.1430, label %if.else.1461

if.then.1430:                                     ; preds = %if.then.1421
  %845 = load i32, i32* %opic_block_x, align 4
  %idxprom1431 = sext i32 %845 to i64
  %846 = load i32, i32* %opic_block_y, align 4
  %idxprom1432 = sext i32 %846 to i64
  %847 = load i32, i32* %refList, align 4
  %idxprom1433 = sext i32 %847 to i64
  %848 = load i16****, i16***** %co_located_mv, align 8
  %arrayidx1434 = getelementptr inbounds i16***, i16**** %848, i64 %idxprom1433
  %849 = load i16***, i16**** %arrayidx1434, align 8
  %arrayidx1435 = getelementptr inbounds i16**, i16*** %849, i64 %idxprom1432
  %850 = load i16**, i16*** %arrayidx1435, align 8
  %arrayidx1436 = getelementptr inbounds i16*, i16** %850, i64 %idxprom1431
  %851 = load i16*, i16** %arrayidx1436, align 8
  %arrayidx1437 = getelementptr inbounds i16, i16* %851, i64 0
  %852 = load i16, i16* %arrayidx1437, align 2
  %853 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1438 = getelementptr inbounds i16***, i16**** %853, i64 0
  %854 = load i16***, i16**** %arrayidx1438, align 8
  %arrayidx1439 = getelementptr inbounds i16**, i16*** %854, i64 0
  %855 = load i16**, i16*** %arrayidx1439, align 8
  %arrayidx1440 = getelementptr inbounds i16*, i16** %855, i64 0
  %856 = load i16*, i16** %arrayidx1440, align 8
  %arrayidx1441 = getelementptr inbounds i16, i16* %856, i64 0
  store i16 %852, i16* %arrayidx1441, align 2
  %857 = load i32, i32* %opic_block_x, align 4
  %idxprom1442 = sext i32 %857 to i64
  %858 = load i32, i32* %opic_block_y, align 4
  %idxprom1443 = sext i32 %858 to i64
  %859 = load i32, i32* %refList, align 4
  %idxprom1444 = sext i32 %859 to i64
  %860 = load i16****, i16***** %co_located_mv, align 8
  %arrayidx1445 = getelementptr inbounds i16***, i16**** %860, i64 %idxprom1444
  %861 = load i16***, i16**** %arrayidx1445, align 8
  %arrayidx1446 = getelementptr inbounds i16**, i16*** %861, i64 %idxprom1443
  %862 = load i16**, i16*** %arrayidx1446, align 8
  %arrayidx1447 = getelementptr inbounds i16*, i16** %862, i64 %idxprom1442
  %863 = load i16*, i16** %arrayidx1447, align 8
  %arrayidx1448 = getelementptr inbounds i16, i16* %863, i64 1
  %864 = load i16, i16* %arrayidx1448, align 2
  %865 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1449 = getelementptr inbounds i16***, i16**** %865, i64 0
  %866 = load i16***, i16**** %arrayidx1449, align 8
  %arrayidx1450 = getelementptr inbounds i16**, i16*** %866, i64 0
  %867 = load i16**, i16*** %arrayidx1450, align 8
  %arrayidx1451 = getelementptr inbounds i16*, i16** %867, i64 0
  %868 = load i16*, i16** %arrayidx1451, align 8
  %arrayidx1452 = getelementptr inbounds i16, i16* %868, i64 1
  store i16 %864, i16* %arrayidx1452, align 2
  %869 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1453 = getelementptr inbounds i16***, i16**** %869, i64 1
  %870 = load i16***, i16**** %arrayidx1453, align 8
  %arrayidx1454 = getelementptr inbounds i16**, i16*** %870, i64 0
  %871 = load i16**, i16*** %arrayidx1454, align 8
  %arrayidx1455 = getelementptr inbounds i16*, i16** %871, i64 0
  %872 = load i16*, i16** %arrayidx1455, align 8
  %arrayidx1456 = getelementptr inbounds i16, i16* %872, i64 0
  store i16 0, i16* %arrayidx1456, align 2
  %873 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1457 = getelementptr inbounds i16***, i16**** %873, i64 1
  %874 = load i16***, i16**** %arrayidx1457, align 8
  %arrayidx1458 = getelementptr inbounds i16**, i16*** %874, i64 0
  %875 = load i16**, i16*** %arrayidx1458, align 8
  %arrayidx1459 = getelementptr inbounds i16*, i16** %875, i64 0
  %876 = load i16*, i16** %arrayidx1459, align 8
  %arrayidx1460 = getelementptr inbounds i16, i16* %876, i64 1
  store i16 0, i16* %arrayidx1460, align 2
  br label %if.end.1529

if.else.1461:                                     ; preds = %if.then.1421
  %877 = load i32, i32* %mv_scale, align 4
  %878 = load i32, i32* %opic_block_x, align 4
  %idxprom1462 = sext i32 %878 to i64
  %879 = load i32, i32* %opic_block_y, align 4
  %idxprom1463 = sext i32 %879 to i64
  %880 = load i32, i32* %refList, align 4
  %idxprom1464 = sext i32 %880 to i64
  %881 = load i16****, i16***** %co_located_mv, align 8
  %arrayidx1465 = getelementptr inbounds i16***, i16**** %881, i64 %idxprom1464
  %882 = load i16***, i16**** %arrayidx1465, align 8
  %arrayidx1466 = getelementptr inbounds i16**, i16*** %882, i64 %idxprom1463
  %883 = load i16**, i16*** %arrayidx1466, align 8
  %arrayidx1467 = getelementptr inbounds i16*, i16** %883, i64 %idxprom1462
  %884 = load i16*, i16** %arrayidx1467, align 8
  %arrayidx1468 = getelementptr inbounds i16, i16* %884, i64 0
  %885 = load i16, i16* %arrayidx1468, align 2
  %conv1469 = sext i16 %885 to i32
  %mul1470 = mul nsw i32 %877, %conv1469
  %add1471 = add nsw i32 %mul1470, 128
  %shr1472 = ashr i32 %add1471, 8
  %conv1473 = trunc i32 %shr1472 to i16
  %886 = load i32, i32* %mapped_idx, align 4
  %idxprom1474 = sext i32 %886 to i64
  %887 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1475 = getelementptr inbounds i16***, i16**** %887, i64 0
  %888 = load i16***, i16**** %arrayidx1475, align 8
  %arrayidx1476 = getelementptr inbounds i16**, i16*** %888, i64 %idxprom1474
  %889 = load i16**, i16*** %arrayidx1476, align 8
  %arrayidx1477 = getelementptr inbounds i16*, i16** %889, i64 0
  %890 = load i16*, i16** %arrayidx1477, align 8
  %arrayidx1478 = getelementptr inbounds i16, i16* %890, i64 0
  store i16 %conv1473, i16* %arrayidx1478, align 2
  %891 = load i32, i32* %mv_scale, align 4
  %892 = load i32, i32* %opic_block_x, align 4
  %idxprom1479 = sext i32 %892 to i64
  %893 = load i32, i32* %opic_block_y, align 4
  %idxprom1480 = sext i32 %893 to i64
  %894 = load i32, i32* %refList, align 4
  %idxprom1481 = sext i32 %894 to i64
  %895 = load i16****, i16***** %co_located_mv, align 8
  %arrayidx1482 = getelementptr inbounds i16***, i16**** %895, i64 %idxprom1481
  %896 = load i16***, i16**** %arrayidx1482, align 8
  %arrayidx1483 = getelementptr inbounds i16**, i16*** %896, i64 %idxprom1480
  %897 = load i16**, i16*** %arrayidx1483, align 8
  %arrayidx1484 = getelementptr inbounds i16*, i16** %897, i64 %idxprom1479
  %898 = load i16*, i16** %arrayidx1484, align 8
  %arrayidx1485 = getelementptr inbounds i16, i16* %898, i64 1
  %899 = load i16, i16* %arrayidx1485, align 2
  %conv1486 = sext i16 %899 to i32
  %mul1487 = mul nsw i32 %891, %conv1486
  %add1488 = add nsw i32 %mul1487, 128
  %shr1489 = ashr i32 %add1488, 8
  %conv1490 = trunc i32 %shr1489 to i16
  %900 = load i32, i32* %mapped_idx, align 4
  %idxprom1491 = sext i32 %900 to i64
  %901 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1492 = getelementptr inbounds i16***, i16**** %901, i64 0
  %902 = load i16***, i16**** %arrayidx1492, align 8
  %arrayidx1493 = getelementptr inbounds i16**, i16*** %902, i64 %idxprom1491
  %903 = load i16**, i16*** %arrayidx1493, align 8
  %arrayidx1494 = getelementptr inbounds i16*, i16** %903, i64 0
  %904 = load i16*, i16** %arrayidx1494, align 8
  %arrayidx1495 = getelementptr inbounds i16, i16* %904, i64 1
  store i16 %conv1490, i16* %arrayidx1495, align 2
  %905 = load i32, i32* %mv_scale, align 4
  %sub = sub nsw i32 %905, 256
  %906 = load i32, i32* %opic_block_x, align 4
  %idxprom1496 = sext i32 %906 to i64
  %907 = load i32, i32* %opic_block_y, align 4
  %idxprom1497 = sext i32 %907 to i64
  %908 = load i32, i32* %refList, align 4
  %idxprom1498 = sext i32 %908 to i64
  %909 = load i16****, i16***** %co_located_mv, align 8
  %arrayidx1499 = getelementptr inbounds i16***, i16**** %909, i64 %idxprom1498
  %910 = load i16***, i16**** %arrayidx1499, align 8
  %arrayidx1500 = getelementptr inbounds i16**, i16*** %910, i64 %idxprom1497
  %911 = load i16**, i16*** %arrayidx1500, align 8
  %arrayidx1501 = getelementptr inbounds i16*, i16** %911, i64 %idxprom1496
  %912 = load i16*, i16** %arrayidx1501, align 8
  %arrayidx1502 = getelementptr inbounds i16, i16* %912, i64 0
  %913 = load i16, i16* %arrayidx1502, align 2
  %conv1503 = sext i16 %913 to i32
  %mul1504 = mul nsw i32 %sub, %conv1503
  %add1505 = add nsw i32 %mul1504, 128
  %shr1506 = ashr i32 %add1505, 8
  %conv1507 = trunc i32 %shr1506 to i16
  %914 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1508 = getelementptr inbounds i16***, i16**** %914, i64 1
  %915 = load i16***, i16**** %arrayidx1508, align 8
  %arrayidx1509 = getelementptr inbounds i16**, i16*** %915, i64 0
  %916 = load i16**, i16*** %arrayidx1509, align 8
  %arrayidx1510 = getelementptr inbounds i16*, i16** %916, i64 0
  %917 = load i16*, i16** %arrayidx1510, align 8
  %arrayidx1511 = getelementptr inbounds i16, i16* %917, i64 0
  store i16 %conv1507, i16* %arrayidx1511, align 2
  %918 = load i32, i32* %mv_scale, align 4
  %sub1512 = sub nsw i32 %918, 256
  %919 = load i32, i32* %opic_block_x, align 4
  %idxprom1513 = sext i32 %919 to i64
  %920 = load i32, i32* %opic_block_y, align 4
  %idxprom1514 = sext i32 %920 to i64
  %921 = load i32, i32* %refList, align 4
  %idxprom1515 = sext i32 %921 to i64
  %922 = load i16****, i16***** %co_located_mv, align 8
  %arrayidx1516 = getelementptr inbounds i16***, i16**** %922, i64 %idxprom1515
  %923 = load i16***, i16**** %arrayidx1516, align 8
  %arrayidx1517 = getelementptr inbounds i16**, i16*** %923, i64 %idxprom1514
  %924 = load i16**, i16*** %arrayidx1517, align 8
  %arrayidx1518 = getelementptr inbounds i16*, i16** %924, i64 %idxprom1513
  %925 = load i16*, i16** %arrayidx1518, align 8
  %arrayidx1519 = getelementptr inbounds i16, i16* %925, i64 1
  %926 = load i16, i16* %arrayidx1519, align 2
  %conv1520 = sext i16 %926 to i32
  %mul1521 = mul nsw i32 %sub1512, %conv1520
  %add1522 = add nsw i32 %mul1521, 128
  %shr1523 = ashr i32 %add1522, 8
  %conv1524 = trunc i32 %shr1523 to i16
  %927 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1525 = getelementptr inbounds i16***, i16**** %927, i64 1
  %928 = load i16***, i16**** %arrayidx1525, align 8
  %arrayidx1526 = getelementptr inbounds i16**, i16*** %928, i64 0
  %929 = load i16**, i16*** %arrayidx1526, align 8
  %arrayidx1527 = getelementptr inbounds i16*, i16** %929, i64 0
  %930 = load i16*, i16** %arrayidx1527, align 8
  %arrayidx1528 = getelementptr inbounds i16, i16* %930, i64 1
  store i16 %conv1524, i16* %arrayidx1528, align 2
  br label %if.end.1529

if.end.1529:                                      ; preds = %if.else.1461, %if.then.1430
  %931 = load i32, i32* %mapped_idx, align 4
  %idxprom1530 = sext i32 %931 to i64
  %932 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1531 = getelementptr inbounds i16***, i16**** %932, i64 0
  %933 = load i16***, i16**** %arrayidx1531, align 8
  %arrayidx1532 = getelementptr inbounds i16**, i16*** %933, i64 %idxprom1530
  %934 = load i16**, i16*** %arrayidx1532, align 8
  %arrayidx1533 = getelementptr inbounds i16*, i16** %934, i64 0
  %935 = load i16*, i16** %arrayidx1533, align 8
  %arrayidx1534 = getelementptr inbounds i16, i16* %935, i64 0
  %936 = load i16, i16* %arrayidx1534, align 2
  %conv1535 = sext i16 %936 to i32
  %cmp1536 = icmp slt i32 %conv1535, -8192
  br i1 %cmp1536, label %if.then.1613, label %lor.lhs.false.1538

lor.lhs.false.1538:                               ; preds = %if.end.1529
  %937 = load i32, i32* %mapped_idx, align 4
  %idxprom1539 = sext i32 %937 to i64
  %938 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1540 = getelementptr inbounds i16***, i16**** %938, i64 0
  %939 = load i16***, i16**** %arrayidx1540, align 8
  %arrayidx1541 = getelementptr inbounds i16**, i16*** %939, i64 %idxprom1539
  %940 = load i16**, i16*** %arrayidx1541, align 8
  %arrayidx1542 = getelementptr inbounds i16*, i16** %940, i64 0
  %941 = load i16*, i16** %arrayidx1542, align 8
  %arrayidx1543 = getelementptr inbounds i16, i16* %941, i64 0
  %942 = load i16, i16* %arrayidx1543, align 2
  %conv1544 = sext i16 %942 to i32
  %cmp1545 = icmp sgt i32 %conv1544, 8191
  br i1 %cmp1545, label %if.then.1613, label %lor.lhs.false.1547

lor.lhs.false.1547:                               ; preds = %lor.lhs.false.1538
  %943 = load i32, i32* %mapped_idx, align 4
  %idxprom1548 = sext i32 %943 to i64
  %944 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1549 = getelementptr inbounds i16***, i16**** %944, i64 0
  %945 = load i16***, i16**** %arrayidx1549, align 8
  %arrayidx1550 = getelementptr inbounds i16**, i16*** %945, i64 %idxprom1548
  %946 = load i16**, i16*** %arrayidx1550, align 8
  %arrayidx1551 = getelementptr inbounds i16*, i16** %946, i64 0
  %947 = load i16*, i16** %arrayidx1551, align 8
  %arrayidx1552 = getelementptr inbounds i16, i16* %947, i64 1
  %948 = load i16, i16* %arrayidx1552, align 2
  %conv1553 = sext i16 %948 to i32
  %949 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex1554 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %949, i32 0, i32 2
  %950 = load i32, i32* %LevelIndex1554, align 4
  %idxprom1555 = sext i32 %950 to i64
  %arrayidx1556 = getelementptr inbounds [17 x [6 x i32]], [17 x [6 x i32]]* @LEVELMVLIMIT, i32 0, i64 %idxprom1555
  %arrayidx1557 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx1556, i32 0, i64 4
  %951 = load i32, i32* %arrayidx1557, align 4
  %cmp1558 = icmp slt i32 %conv1553, %951
  br i1 %cmp1558, label %if.then.1613, label %lor.lhs.false.1560

lor.lhs.false.1560:                               ; preds = %lor.lhs.false.1547
  %952 = load i32, i32* %mapped_idx, align 4
  %idxprom1561 = sext i32 %952 to i64
  %953 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1562 = getelementptr inbounds i16***, i16**** %953, i64 0
  %954 = load i16***, i16**** %arrayidx1562, align 8
  %arrayidx1563 = getelementptr inbounds i16**, i16*** %954, i64 %idxprom1561
  %955 = load i16**, i16*** %arrayidx1563, align 8
  %arrayidx1564 = getelementptr inbounds i16*, i16** %955, i64 0
  %956 = load i16*, i16** %arrayidx1564, align 8
  %arrayidx1565 = getelementptr inbounds i16, i16* %956, i64 1
  %957 = load i16, i16* %arrayidx1565, align 2
  %conv1566 = sext i16 %957 to i32
  %958 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex1567 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %958, i32 0, i32 2
  %959 = load i32, i32* %LevelIndex1567, align 4
  %idxprom1568 = sext i32 %959 to i64
  %arrayidx1569 = getelementptr inbounds [17 x [6 x i32]], [17 x [6 x i32]]* @LEVELMVLIMIT, i32 0, i64 %idxprom1568
  %arrayidx1570 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx1569, i32 0, i64 5
  %960 = load i32, i32* %arrayidx1570, align 4
  %cmp1571 = icmp sgt i32 %conv1566, %960
  br i1 %cmp1571, label %if.then.1613, label %lor.lhs.false.1573

lor.lhs.false.1573:                               ; preds = %lor.lhs.false.1560
  %961 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1574 = getelementptr inbounds i16***, i16**** %961, i64 1
  %962 = load i16***, i16**** %arrayidx1574, align 8
  %arrayidx1575 = getelementptr inbounds i16**, i16*** %962, i64 0
  %963 = load i16**, i16*** %arrayidx1575, align 8
  %arrayidx1576 = getelementptr inbounds i16*, i16** %963, i64 0
  %964 = load i16*, i16** %arrayidx1576, align 8
  %arrayidx1577 = getelementptr inbounds i16, i16* %964, i64 0
  %965 = load i16, i16* %arrayidx1577, align 2
  %conv1578 = sext i16 %965 to i32
  %cmp1579 = icmp slt i32 %conv1578, -8192
  br i1 %cmp1579, label %if.then.1613, label %lor.lhs.false.1581

lor.lhs.false.1581:                               ; preds = %lor.lhs.false.1573
  %966 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1582 = getelementptr inbounds i16***, i16**** %966, i64 1
  %967 = load i16***, i16**** %arrayidx1582, align 8
  %arrayidx1583 = getelementptr inbounds i16**, i16*** %967, i64 0
  %968 = load i16**, i16*** %arrayidx1583, align 8
  %arrayidx1584 = getelementptr inbounds i16*, i16** %968, i64 0
  %969 = load i16*, i16** %arrayidx1584, align 8
  %arrayidx1585 = getelementptr inbounds i16, i16* %969, i64 0
  %970 = load i16, i16* %arrayidx1585, align 2
  %conv1586 = sext i16 %970 to i32
  %cmp1587 = icmp sgt i32 %conv1586, 8191
  br i1 %cmp1587, label %if.then.1613, label %lor.lhs.false.1589

lor.lhs.false.1589:                               ; preds = %lor.lhs.false.1581
  %971 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1590 = getelementptr inbounds i16***, i16**** %971, i64 1
  %972 = load i16***, i16**** %arrayidx1590, align 8
  %arrayidx1591 = getelementptr inbounds i16**, i16*** %972, i64 0
  %973 = load i16**, i16*** %arrayidx1591, align 8
  %arrayidx1592 = getelementptr inbounds i16*, i16** %973, i64 0
  %974 = load i16*, i16** %arrayidx1592, align 8
  %arrayidx1593 = getelementptr inbounds i16, i16* %974, i64 1
  %975 = load i16, i16* %arrayidx1593, align 2
  %conv1594 = sext i16 %975 to i32
  %976 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex1595 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %976, i32 0, i32 2
  %977 = load i32, i32* %LevelIndex1595, align 4
  %idxprom1596 = sext i32 %977 to i64
  %arrayidx1597 = getelementptr inbounds [17 x [6 x i32]], [17 x [6 x i32]]* @LEVELMVLIMIT, i32 0, i64 %idxprom1596
  %arrayidx1598 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx1597, i32 0, i64 4
  %978 = load i32, i32* %arrayidx1598, align 4
  %cmp1599 = icmp slt i32 %conv1594, %978
  br i1 %cmp1599, label %if.then.1613, label %lor.lhs.false.1601

lor.lhs.false.1601:                               ; preds = %lor.lhs.false.1589
  %979 = load i16****, i16***** %all_mvs, align 8
  %arrayidx1602 = getelementptr inbounds i16***, i16**** %979, i64 1
  %980 = load i16***, i16**** %arrayidx1602, align 8
  %arrayidx1603 = getelementptr inbounds i16**, i16*** %980, i64 0
  %981 = load i16**, i16*** %arrayidx1603, align 8
  %arrayidx1604 = getelementptr inbounds i16*, i16** %981, i64 0
  %982 = load i16*, i16** %arrayidx1604, align 8
  %arrayidx1605 = getelementptr inbounds i16, i16* %982, i64 1
  %983 = load i16, i16* %arrayidx1605, align 2
  %conv1606 = sext i16 %983 to i32
  %984 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LevelIndex1607 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %984, i32 0, i32 2
  %985 = load i32, i32* %LevelIndex1607, align 4
  %idxprom1608 = sext i32 %985 to i64
  %arrayidx1609 = getelementptr inbounds [17 x [6 x i32]], [17 x [6 x i32]]* @LEVELMVLIMIT, i32 0, i64 %idxprom1608
  %arrayidx1610 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx1609, i32 0, i64 5
  %986 = load i32, i32* %arrayidx1610, align 4
  %cmp1611 = icmp sgt i32 %conv1606, %986
  br i1 %cmp1611, label %if.then.1613, label %if.else.1628

if.then.1613:                                     ; preds = %lor.lhs.false.1601, %lor.lhs.false.1589, %lor.lhs.false.1581, %lor.lhs.false.1573, %lor.lhs.false.1560, %lor.lhs.false.1547, %lor.lhs.false.1538, %if.end.1529
  %987 = load i32, i32* %pic_block_x, align 4
  %idxprom1614 = sext i32 %987 to i64
  %988 = load i32, i32* %pic_block_y, align 4
  %idxprom1615 = sext i32 %988 to i64
  %989 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx1616 = getelementptr inbounds i8**, i8*** %989, i64 0
  %990 = load i8**, i8*** %arrayidx1616, align 8
  %arrayidx1617 = getelementptr inbounds i8*, i8** %990, i64 %idxprom1615
  %991 = load i8*, i8** %arrayidx1617, align 8
  %arrayidx1618 = getelementptr inbounds i8, i8* %991, i64 %idxprom1614
  store i8 -1, i8* %arrayidx1618, align 1
  %992 = load i32, i32* %pic_block_x, align 4
  %idxprom1619 = sext i32 %992 to i64
  %993 = load i32, i32* %pic_block_y, align 4
  %idxprom1620 = sext i32 %993 to i64
  %994 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx1621 = getelementptr inbounds i8**, i8*** %994, i64 1
  %995 = load i8**, i8*** %arrayidx1621, align 8
  %arrayidx1622 = getelementptr inbounds i8*, i8** %995, i64 %idxprom1620
  %996 = load i8*, i8** %arrayidx1622, align 8
  %arrayidx1623 = getelementptr inbounds i8, i8* %996, i64 %idxprom1619
  store i8 -1, i8* %arrayidx1623, align 1
  %997 = load i32, i32* %pic_block_x, align 4
  %idxprom1624 = sext i32 %997 to i64
  %998 = load i32, i32* %pic_block_y, align 4
  %idxprom1625 = sext i32 %998 to i64
  %999 = load i8**, i8*** @direct_pdir, align 8
  %arrayidx1626 = getelementptr inbounds i8*, i8** %999, i64 %idxprom1625
  %1000 = load i8*, i8** %arrayidx1626, align 8
  %arrayidx1627 = getelementptr inbounds i8, i8* %1000, i64 %idxprom1624
  store i8 -1, i8* %arrayidx1627, align 1
  br label %if.end.1644

if.else.1628:                                     ; preds = %lor.lhs.false.1601
  %1001 = load i32, i32* %mapped_idx, align 4
  %conv1629 = trunc i32 %1001 to i8
  %1002 = load i32, i32* %pic_block_x, align 4
  %idxprom1630 = sext i32 %1002 to i64
  %1003 = load i32, i32* %pic_block_y, align 4
  %idxprom1631 = sext i32 %1003 to i64
  %1004 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx1632 = getelementptr inbounds i8**, i8*** %1004, i64 0
  %1005 = load i8**, i8*** %arrayidx1632, align 8
  %arrayidx1633 = getelementptr inbounds i8*, i8** %1005, i64 %idxprom1631
  %1006 = load i8*, i8** %arrayidx1633, align 8
  %arrayidx1634 = getelementptr inbounds i8, i8* %1006, i64 %idxprom1630
  store i8 %conv1629, i8* %arrayidx1634, align 1
  %1007 = load i32, i32* %pic_block_x, align 4
  %idxprom1635 = sext i32 %1007 to i64
  %1008 = load i32, i32* %pic_block_y, align 4
  %idxprom1636 = sext i32 %1008 to i64
  %1009 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx1637 = getelementptr inbounds i8**, i8*** %1009, i64 1
  %1010 = load i8**, i8*** %arrayidx1637, align 8
  %arrayidx1638 = getelementptr inbounds i8*, i8** %1010, i64 %idxprom1636
  %1011 = load i8*, i8** %arrayidx1638, align 8
  %arrayidx1639 = getelementptr inbounds i8, i8* %1011, i64 %idxprom1635
  store i8 0, i8* %arrayidx1639, align 1
  %1012 = load i32, i32* %pic_block_x, align 4
  %idxprom1640 = sext i32 %1012 to i64
  %1013 = load i32, i32* %pic_block_y, align 4
  %idxprom1641 = sext i32 %1013 to i64
  %1014 = load i8**, i8*** @direct_pdir, align 8
  %arrayidx1642 = getelementptr inbounds i8*, i8** %1014, i64 %idxprom1641
  %1015 = load i8*, i8** %arrayidx1642, align 8
  %arrayidx1643 = getelementptr inbounds i8, i8* %1015, i64 %idxprom1640
  store i8 2, i8* %arrayidx1643, align 1
  br label %if.end.1644

if.end.1644:                                      ; preds = %if.else.1628, %if.then.1613
  br label %if.end.1660

if.else.1645:                                     ; preds = %for.end.1418
  %1016 = load i32, i32* %pic_block_x, align 4
  %idxprom1646 = sext i32 %1016 to i64
  %1017 = load i32, i32* %pic_block_y, align 4
  %idxprom1647 = sext i32 %1017 to i64
  %1018 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx1648 = getelementptr inbounds i8**, i8*** %1018, i64 0
  %1019 = load i8**, i8*** %arrayidx1648, align 8
  %arrayidx1649 = getelementptr inbounds i8*, i8** %1019, i64 %idxprom1647
  %1020 = load i8*, i8** %arrayidx1649, align 8
  %arrayidx1650 = getelementptr inbounds i8, i8* %1020, i64 %idxprom1646
  store i8 -1, i8* %arrayidx1650, align 1
  %1021 = load i32, i32* %pic_block_x, align 4
  %idxprom1651 = sext i32 %1021 to i64
  %1022 = load i32, i32* %pic_block_y, align 4
  %idxprom1652 = sext i32 %1022 to i64
  %1023 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx1653 = getelementptr inbounds i8**, i8*** %1023, i64 1
  %1024 = load i8**, i8*** %arrayidx1653, align 8
  %arrayidx1654 = getelementptr inbounds i8*, i8** %1024, i64 %idxprom1652
  %1025 = load i8*, i8** %arrayidx1654, align 8
  %arrayidx1655 = getelementptr inbounds i8, i8* %1025, i64 %idxprom1651
  store i8 -1, i8* %arrayidx1655, align 1
  %1026 = load i32, i32* %pic_block_x, align 4
  %idxprom1656 = sext i32 %1026 to i64
  %1027 = load i32, i32* %pic_block_y, align 4
  %idxprom1657 = sext i32 %1027 to i64
  %1028 = load i8**, i8*** @direct_pdir, align 8
  %arrayidx1658 = getelementptr inbounds i8*, i8** %1028, i64 %idxprom1657
  %1029 = load i8*, i8** %arrayidx1658, align 8
  %arrayidx1659 = getelementptr inbounds i8, i8* %1029, i64 %idxprom1656
  store i8 -1, i8* %arrayidx1659, align 1
  br label %if.end.1660

if.end.1660:                                      ; preds = %if.else.1645, %if.end.1644
  br label %if.end.1661

if.end.1661:                                      ; preds = %if.end.1660, %if.then.1362
  %1030 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc1662 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1030, i32 0, i32 20
  %1031 = load i32, i32* %weighted_bipred_idc1662, align 4
  %cmp1663 = icmp eq i32 %1031, 1
  br i1 %cmp1663, label %land.lhs.true.1665, label %if.end.1737

land.lhs.true.1665:                               ; preds = %if.end.1661
  %1032 = load i32, i32* %pic_block_x, align 4
  %idxprom1666 = sext i32 %1032 to i64
  %1033 = load i32, i32* %pic_block_y, align 4
  %idxprom1667 = sext i32 %1033 to i64
  %1034 = load i8**, i8*** @direct_pdir, align 8
  %arrayidx1668 = getelementptr inbounds i8*, i8** %1034, i64 %idxprom1667
  %1035 = load i8*, i8** %arrayidx1668, align 8
  %arrayidx1669 = getelementptr inbounds i8, i8* %1035, i64 %idxprom1666
  %1036 = load i8, i8* %arrayidx1669, align 1
  %conv1670 = sext i8 %1036 to i32
  %cmp1671 = icmp eq i32 %conv1670, 2
  br i1 %cmp1671, label %if.then.1673, label %if.end.1737

if.then.1673:                                     ; preds = %land.lhs.true.1665
  %1037 = load i32, i32* %pic_block_x, align 4
  %idxprom1677 = sext i32 %1037 to i64
  %1038 = load i32, i32* %pic_block_y, align 4
  %idxprom1678 = sext i32 %1038 to i64
  %1039 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx1679 = getelementptr inbounds i8**, i8*** %1039, i64 0
  %1040 = load i8**, i8*** %arrayidx1679, align 8
  %arrayidx1680 = getelementptr inbounds i8*, i8** %1040, i64 %idxprom1678
  %1041 = load i8*, i8** %arrayidx1680, align 8
  %arrayidx1681 = getelementptr inbounds i8, i8* %1041, i64 %idxprom1677
  %1042 = load i8, i8* %arrayidx1681, align 1
  %conv1682 = sext i8 %1042 to i16
  store i16 %conv1682, i16* %l0_refX1676, align 2
  %1043 = load i32, i32* %pic_block_x, align 4
  %idxprom1684 = sext i32 %1043 to i64
  %1044 = load i32, i32* %pic_block_y, align 4
  %idxprom1685 = sext i32 %1044 to i64
  %1045 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx1686 = getelementptr inbounds i8**, i8*** %1045, i64 1
  %1046 = load i8**, i8*** %arrayidx1686, align 8
  %arrayidx1687 = getelementptr inbounds i8*, i8** %1046, i64 %idxprom1685
  %1047 = load i8*, i8** %arrayidx1687, align 8
  %arrayidx1688 = getelementptr inbounds i8, i8* %1047, i64 %idxprom1684
  %1048 = load i8, i8* %arrayidx1688, align 1
  %conv1689 = sext i8 %1048 to i16
  store i16 %conv1689, i16* %l1_refX1683, align 2
  store i32 0, i32* %i1675, align 4
  br label %for.cond.1690

for.cond.1690:                                    ; preds = %for.inc.1734, %if.then.1673
  %1049 = load i32, i32* %i1675, align 4
  %1050 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc1691 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %1050, i32 0, i32 8
  %1051 = load i32, i32* %chroma_format_idc1691, align 4
  %cmp1692 = icmp eq i32 %1051, 0
  %cond1694 = select i1 %cmp1692, i32 1, i32 3
  %cmp1695 = icmp slt i32 %1049, %cond1694
  br i1 %cmp1695, label %for.body.1697, label %for.end.1736

for.body.1697:                                    ; preds = %for.cond.1690
  %1052 = load i32, i32* %i1675, align 4
  %idxprom1698 = sext i32 %1052 to i64
  %1053 = load i16, i16* %l1_refX1683, align 2
  %idxprom1699 = sext i16 %1053 to i64
  %1054 = load i16, i16* %l0_refX1676, align 2
  %idxprom1700 = sext i16 %1054 to i64
  %1055 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx1701 = getelementptr inbounds i32***, i32**** %1055, i64 0
  %1056 = load i32***, i32**** %arrayidx1701, align 8
  %arrayidx1702 = getelementptr inbounds i32**, i32*** %1056, i64 %idxprom1700
  %1057 = load i32**, i32*** %arrayidx1702, align 8
  %arrayidx1703 = getelementptr inbounds i32*, i32** %1057, i64 %idxprom1699
  %1058 = load i32*, i32** %arrayidx1703, align 8
  %arrayidx1704 = getelementptr inbounds i32, i32* %1058, i64 %idxprom1698
  %1059 = load i32, i32* %arrayidx1704, align 4
  %1060 = load i32, i32* %i1675, align 4
  %idxprom1705 = sext i32 %1060 to i64
  %1061 = load i16, i16* %l1_refX1683, align 2
  %idxprom1706 = sext i16 %1061 to i64
  %1062 = load i16, i16* %l0_refX1676, align 2
  %idxprom1707 = sext i16 %1062 to i64
  %1063 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx1708 = getelementptr inbounds i32***, i32**** %1063, i64 1
  %1064 = load i32***, i32**** %arrayidx1708, align 8
  %arrayidx1709 = getelementptr inbounds i32**, i32*** %1064, i64 %idxprom1707
  %1065 = load i32**, i32*** %arrayidx1709, align 8
  %arrayidx1710 = getelementptr inbounds i32*, i32** %1065, i64 %idxprom1706
  %1066 = load i32*, i32** %arrayidx1710, align 8
  %arrayidx1711 = getelementptr inbounds i32, i32* %1066, i64 %idxprom1705
  %1067 = load i32, i32* %arrayidx1711, align 4
  %add1712 = add nsw i32 %1059, %1067
  store i32 %add1712, i32* %weight_sum1674, align 4
  %1068 = load i32, i32* %weight_sum1674, align 4
  %cmp1713 = icmp slt i32 %1068, -128
  br i1 %cmp1713, label %if.then.1718, label %lor.lhs.false.1715

lor.lhs.false.1715:                               ; preds = %for.body.1697
  %1069 = load i32, i32* %weight_sum1674, align 4
  %cmp1716 = icmp sgt i32 %1069, 127
  br i1 %cmp1716, label %if.then.1718, label %if.end.1733

if.then.1718:                                     ; preds = %lor.lhs.false.1715, %for.body.1697
  %1070 = load i32, i32* %pic_block_x, align 4
  %idxprom1719 = sext i32 %1070 to i64
  %1071 = load i32, i32* %pic_block_y, align 4
  %idxprom1720 = sext i32 %1071 to i64
  %1072 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx1721 = getelementptr inbounds i8**, i8*** %1072, i64 0
  %1073 = load i8**, i8*** %arrayidx1721, align 8
  %arrayidx1722 = getelementptr inbounds i8*, i8** %1073, i64 %idxprom1720
  %1074 = load i8*, i8** %arrayidx1722, align 8
  %arrayidx1723 = getelementptr inbounds i8, i8* %1074, i64 %idxprom1719
  store i8 -1, i8* %arrayidx1723, align 1
  %1075 = load i32, i32* %pic_block_x, align 4
  %idxprom1724 = sext i32 %1075 to i64
  %1076 = load i32, i32* %pic_block_y, align 4
  %idxprom1725 = sext i32 %1076 to i64
  %1077 = load i8***, i8**** @direct_ref_idx, align 8
  %arrayidx1726 = getelementptr inbounds i8**, i8*** %1077, i64 1
  %1078 = load i8**, i8*** %arrayidx1726, align 8
  %arrayidx1727 = getelementptr inbounds i8*, i8** %1078, i64 %idxprom1725
  %1079 = load i8*, i8** %arrayidx1727, align 8
  %arrayidx1728 = getelementptr inbounds i8, i8* %1079, i64 %idxprom1724
  store i8 -1, i8* %arrayidx1728, align 1
  %1080 = load i32, i32* %pic_block_x, align 4
  %idxprom1729 = sext i32 %1080 to i64
  %1081 = load i32, i32* %pic_block_y, align 4
  %idxprom1730 = sext i32 %1081 to i64
  %1082 = load i8**, i8*** @direct_pdir, align 8
  %arrayidx1731 = getelementptr inbounds i8*, i8** %1082, i64 %idxprom1730
  %1083 = load i8*, i8** %arrayidx1731, align 8
  %arrayidx1732 = getelementptr inbounds i8, i8* %1083, i64 %idxprom1729
  store i8 -1, i8* %arrayidx1732, align 1
  br label %for.end.1736

if.end.1733:                                      ; preds = %lor.lhs.false.1715
  br label %for.inc.1734

for.inc.1734:                                     ; preds = %if.end.1733
  %1084 = load i32, i32* %i1675, align 4
  %inc1735 = add nsw i32 %1084, 1
  store i32 %inc1735, i32* %i1675, align 4
  br label %for.cond.1690

for.end.1736:                                     ; preds = %if.then.1718, %for.cond.1690
  br label %if.end.1737

if.end.1737:                                      ; preds = %for.end.1736, %land.lhs.true.1665, %if.end.1661
  br label %for.inc.1738

for.inc.1738:                                     ; preds = %if.end.1737
  %1085 = load i32, i32* %block_x, align 4
  %inc1739 = add nsw i32 %1085, 1
  store i32 %inc1739, i32* %block_x, align 4
  br label %for.cond.1329

for.end.1740:                                     ; preds = %for.cond.1329
  br label %for.inc.1741

for.inc.1741:                                     ; preds = %for.end.1740
  %1086 = load i32, i32* %block_y, align 4
  %inc1742 = add nsw i32 %1086, 1
  store i32 %inc1742, i32* %block_y, align 4
  br label %for.cond.1319

for.end.1743:                                     ; preds = %for.cond.1319
  br label %if.end.1744

if.end.1744:                                      ; preds = %for.end.1743, %for.end.1312
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
