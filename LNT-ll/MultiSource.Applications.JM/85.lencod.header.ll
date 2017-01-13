; ModuleID = './MultiSource.Applications.JM/85.lencod.header.bc'
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
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.bufferingperiod_information_struct = type { i32, [32 x i32], [32 x i32], %struct.Bitstream*, i32 }
%struct.pictiming_information_struct = type { i32, i32, i32, [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.Bitstream*, i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16****, i16****, i16*****, i16***, i8*, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)* }

@assignSE2partition_NoDP = global [18 x i32] zeroinitializer, align 16
@assignSE2partition_DP = global [18 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0], align 16
@input = external global %struct.InputParameters*, align 8
@assignSE2partition = common global [2 x i32*] zeroinitializer, align 16
@img = external global %struct.ImageParameters*, align 8
@.str = private unnamed_addr constant [22 x i8] c"SH: first_mb_in_slice\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"SH: slice_type\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"SH: pic_parameter_set_id\00", align 1
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@log2_max_frame_num_minus4 = common global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"SH: frame_num\00", align 1
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"SH: field_pic_flag\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"SH: bottom_field_flag\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"SH: idr_pic_id\00", align 1
@log2_max_pic_order_cnt_lsb_minus4 = common global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"SH: pic_order_cnt_lsb\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"SH: delta_pic_order_cnt_bottom\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"SH: delta_pic_order_cnt[0]\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"SH: delta_pic_order_cnt[1]\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"SH: redundant_pic_cnt\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"SH: direct_spatial_mv_pred_flag\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"SH: num_ref_idx_active_override_flag\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"SH: num_ref_idx_l0_active_minus1\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"SH: num_ref_idx_l1_active_minus1\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"SH: cabac_init_idc\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"SH: slice_qp_delta\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"SH: sp_for_switch_flag\00", align 1
@si_frame_indicator = common global i32 0, align 4
@sp2_frame_indicator = common global i32 0, align 4
@.str.19 = private unnamed_addr constant [19 x i8] c"SH: slice_qs_delta\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"SH: disable_deblocking_filter_idc\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"SH: slice_alpha_c0_offset_div2\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"SH: slice_beta_offset_div2\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"SH: slice_group_change_cycle\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"DPA: slice_id\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"Picture Type not supported!\00", align 1
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
@me_tot_time = common global i64 0, align 8
@me_time = common global i64 0, align 8
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
@WriteNALU = common global i32 (%struct.NALU_t*)* null, align 8
@seiHasBufferingPeriod_info = common global i32 0, align 4
@seiBufferingPeriod = common global %struct.bufferingperiod_information_struct zeroinitializer, align 8
@seiHasPicTiming_info = common global i32 0, align 4
@seiPicTiming = common global %struct.pictiming_information_struct zeroinitializer, align 8
@listX = external global [6 x %struct.storable_picture**], align 16
@listXsize = external global [6 x i32], align 16
@.str.26 = private unnamed_addr constant [36 x i8] c"SH: ref_pic_list_reordering_flag_l0\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"SH: reordering_of_pic_nums_idc\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"SH: abs_diff_pic_num_minus1_l0\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"SH: long_term_pic_idx_l0\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"SH: ref_pic_list_reordering_flag_l1\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"SH: remapping_of_pic_num_idc\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"SH: abs_diff_pic_num_minus1_l1\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"SH: long_term_pic_idx_l1\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"SH: no_output_of_prior_pics_flag\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"SH: long_term_reference_flag\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"SH: adaptive_ref_pic_buffering_flag\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"Error encoding MMCO commands\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c"SH: memory_management_control_operation\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"SH: difference_of_pic_nums_minus1\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"SH: long_term_pic_num\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"SH: long_term_frame_idx\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"SH: max_long_term_pic_idx_plus1\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"SH: luma_log_weight_denom\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"SH: chroma_log_weight_denom\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"SH: luma_weight_flag_l0\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"SH: luma_weight_l0\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"SH: luma_offset_l0\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"chroma_weight_flag_l0\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"chroma_weight_l0\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"chroma_offset_l0\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"SH: luma_weight_flag_l1\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"SH: luma_weight_l1\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"SH: luma_offset_l1\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"chroma_weight_flag_l1\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"chroma_weight_l1\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"chroma_offset_l1\00", align 1

; Function Attrs: nounwind uwtable
define i32 @SliceHeader() #0 {
entry:
  %dP_nr = alloca i32, align 4
  %bitstream = alloca %struct.Bitstream*, align 8
  %currSlice = alloca %struct.Slice*, align 8
  %len = alloca i32, align 4
  %field_pic_flag = alloca i32, align 4
  %bottom_field_flag = alloca i32, align 4
  %num_bits_slice_group_change_cycle = alloca i32, align 4
  %numtmp = alloca float, align 4
  %override_flag = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 76
  %1 = load i32, i32* %partition_mode, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x i32*], [2 x i32*]* @assignSE2partition, i32 0, i64 %idxprom
  %2 = load i32*, i32** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  store i32 %3, i32* %dP_nr, align 4
  %4 = load i32, i32* %dP_nr, align 4
  %idxprom2 = sext i32 %4 to i64
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 60
  %6 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %6, i32 0, i32 6
  %7 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx3 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %7, i64 %idxprom2
  %bitstream4 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx3, i32 0, i32 0
  %8 = load %struct.Bitstream*, %struct.Bitstream** %bitstream4, align 8
  store %struct.Bitstream* %8, %struct.Bitstream** %bitstream, align 8
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 60
  %10 = load %struct.Slice*, %struct.Slice** %currentSlice5, align 8
  store %struct.Slice* %10, %struct.Slice** %currSlice, align 8
  store i32 0, i32* %len, align 4
  store i32 0, i32* %field_pic_flag, align 4
  store i32 0, i32* %bottom_field_flag, align 4
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 100
  %12 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 3
  %14 = load i32, i32* %current_mb_nr, align 4
  %shr = ashr i32 %14, 1
  %15 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call = call i32 @ue_v(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 %shr, %struct.Bitstream* %15)
  store i32 %call, i32* %len, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 3
  %17 = load i32, i32* %current_mb_nr6, align 4
  %18 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call7 = call i32 @ue_v(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 %17, %struct.Bitstream* %18)
  store i32 %call7, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call8 = call i32 @get_picture_type()
  %19 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call9 = call i32 @ue_v(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 %call8, %struct.Bitstream* %19)
  %20 = load i32, i32* %len, align 4
  %add = add nsw i32 %20, %call9
  store i32 %add, i32* %len, align 4
  %21 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %pic_parameter_set_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %21, i32 0, i32 1
  %22 = load i32, i32* %pic_parameter_set_id, align 4
  %23 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call10 = call i32 @ue_v(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i32 %22, %struct.Bitstream* %23)
  %24 = load i32, i32* %len, align 4
  %add11 = add nsw i32 %24, %call10
  store i32 %add11, i32* %len, align 4
  %25 = load i32, i32* @log2_max_frame_num_minus4, align 4
  %add12 = add i32 %25, 4
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 115
  %27 = load i32, i32* %frame_num, align 4
  %28 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call13 = call i32 @u_v(i32 %add12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %27, %struct.Bitstream* %28)
  %29 = load i32, i32* %len, align 4
  %add14 = add nsw i32 %29, %call13
  store i32 %add14, i32* %len, align 4
  %30 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %30, i32 0, i32 25
  %31 = load i32, i32* %frame_mbs_only_flag, align 4
  %tobool15 = icmp ne i32 %31, 0
  br i1 %tobool15, label %if.end.29, label %if.then.16

if.then.16:                                       ; preds = %if.end
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 6
  %33 = load i32, i32* %structure, align 4
  %cmp = icmp eq i32 %33, 1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.16
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure17 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 6
  %35 = load i32, i32* %structure17, align 4
  %cmp18 = icmp eq i32 %35, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.16
  %36 = phi i1 [ true, %if.then.16 ], [ %cmp18, %lor.rhs ]
  %cond = select i1 %36, i32 1, i32 0
  store i32 %cond, i32* %field_pic_flag, align 4
  %37 = load i32, i32* %field_pic_flag, align 4
  %38 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call19 = call i32 @u_1(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i32 %37, %struct.Bitstream* %38)
  %39 = load i32, i32* %len, align 4
  %add20 = add i32 %39, %call19
  store i32 %add20, i32* %len, align 4
  %40 = load i32, i32* %field_pic_flag, align 4
  %tobool21 = icmp ne i32 %40, 0
  br i1 %tobool21, label %if.then.22, label %if.end.28

if.then.22:                                       ; preds = %lor.end
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure23 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 6
  %42 = load i32, i32* %structure23, align 4
  %cmp24 = icmp eq i32 %42, 2
  %cond25 = select i1 %cmp24, i32 1, i32 0
  store i32 %cond25, i32* %bottom_field_flag, align 4
  %43 = load i32, i32* %bottom_field_flag, align 4
  %44 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call26 = call i32 @u_1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32 %43, %struct.Bitstream* %44)
  %45 = load i32, i32* %len, align 4
  %add27 = add i32 %45, %call26
  store i32 %add27, i32* %len, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.22, %lor.end
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 59
  %47 = load %struct.Picture*, %struct.Picture** %currentPicture, align 8
  %idr_flag = getelementptr inbounds %struct.Picture, %struct.Picture* %47, i32 0, i32 1
  %48 = load i32, i32* %idr_flag, align 4
  %tobool30 = icmp ne i32 %48, 0
  br i1 %tobool30, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.end.29
  %49 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %49, i32 0, i32 0
  %50 = load i32, i32* %number, align 4
  %rem = srem i32 %50, 2
  %51 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call32 = call i32 @ue_v(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32 %rem, %struct.Bitstream* %51)
  %52 = load i32, i32* %len, align 4
  %add33 = add nsw i32 %52, %call32
  store i32 %add33, i32* %len, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.end.29
  %53 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_order_cnt_type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %53, i32 0, i32 101
  %54 = load i32, i32* %pic_order_cnt_type, align 4
  %cmp35 = icmp eq i32 %54, 0
  br i1 %cmp35, label %if.then.36, label %if.end.74

if.then.36:                                       ; preds = %if.end.34
  %55 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag37 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %55, i32 0, i32 25
  %56 = load i32, i32* %frame_mbs_only_flag37, align 4
  %tobool38 = icmp ne i32 %56, 0
  br i1 %tobool38, label %if.then.39, label %if.else.41

if.then.39:                                       ; preds = %if.then.36
  %57 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %57, i32 0, i32 111
  %58 = load i32, i32* %toppoc, align 4
  %59 = load i32, i32* @log2_max_pic_order_cnt_lsb_minus4, align 4
  %add40 = add i32 %59, 4
  %shl = shl i32 -1, %add40
  %neg = xor i32 %shl, -1
  %and = and i32 %58, %neg
  %60 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_order_cnt_lsb = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %60, i32 0, i32 107
  store i32 %and, i32* %pic_order_cnt_lsb, align 4
  br label %if.end.63

if.else.41:                                       ; preds = %if.then.36
  %61 = load i32, i32* %field_pic_flag, align 4
  %tobool42 = icmp ne i32 %61, 0
  br i1 %tobool42, label %lor.lhs.false, label %if.then.45

lor.lhs.false:                                    ; preds = %if.else.41
  %62 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure43 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %62, i32 0, i32 6
  %63 = load i32, i32* %structure43, align 4
  %cmp44 = icmp eq i32 %63, 1
  br i1 %cmp44, label %if.then.45, label %if.else.52

if.then.45:                                       ; preds = %lor.lhs.false, %if.else.41
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc46 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 111
  %65 = load i32, i32* %toppoc46, align 4
  %66 = load i32, i32* @log2_max_pic_order_cnt_lsb_minus4, align 4
  %add47 = add i32 %66, 4
  %shl48 = shl i32 -1, %add47
  %neg49 = xor i32 %shl48, -1
  %and50 = and i32 %65, %neg49
  %67 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_order_cnt_lsb51 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %67, i32 0, i32 107
  store i32 %and50, i32* %pic_order_cnt_lsb51, align 4
  br label %if.end.62

if.else.52:                                       ; preds = %lor.lhs.false
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure53 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 6
  %69 = load i32, i32* %structure53, align 4
  %cmp54 = icmp eq i32 %69, 2
  br i1 %cmp54, label %if.then.55, label %if.end.61

if.then.55:                                       ; preds = %if.else.52
  %70 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %70, i32 0, i32 112
  %71 = load i32, i32* %bottompoc, align 4
  %72 = load i32, i32* @log2_max_pic_order_cnt_lsb_minus4, align 4
  %add56 = add i32 %72, 4
  %shl57 = shl i32 -1, %add56
  %neg58 = xor i32 %shl57, -1
  %and59 = and i32 %71, %neg58
  %73 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_order_cnt_lsb60 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %73, i32 0, i32 107
  store i32 %and59, i32* %pic_order_cnt_lsb60, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.55, %if.else.52
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.45
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.39
  %74 = load i32, i32* @log2_max_pic_order_cnt_lsb_minus4, align 4
  %add64 = add i32 %74, 4
  %75 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_order_cnt_lsb65 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %75, i32 0, i32 107
  %76 = load i32, i32* %pic_order_cnt_lsb65, align 4
  %77 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call66 = call i32 @u_v(i32 %add64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i32 %76, %struct.Bitstream* %77)
  %78 = load i32, i32* %len, align 4
  %add67 = add nsw i32 %78, %call66
  store i32 %add67, i32* %len, align 4
  %79 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_order_present_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %79, i32 0, i32 121
  %80 = load i32, i32* %pic_order_present_flag, align 4
  %tobool68 = icmp ne i32 %80, 0
  br i1 %tobool68, label %land.lhs.true, label %if.end.73

land.lhs.true:                                    ; preds = %if.end.63
  %81 = load i32, i32* %field_pic_flag, align 4
  %tobool69 = icmp ne i32 %81, 0
  br i1 %tobool69, label %if.end.73, label %if.then.70

if.then.70:                                       ; preds = %land.lhs.true
  %82 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt_bottom = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %82, i32 0, i32 108
  %83 = load i32, i32* %delta_pic_order_cnt_bottom, align 4
  %84 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call71 = call i32 @se_v(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), i32 %83, %struct.Bitstream* %84)
  %85 = load i32, i32* %len, align 4
  %add72 = add nsw i32 %85, %call71
  store i32 %add72, i32* %len, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.70, %land.lhs.true, %if.end.63
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.34
  %86 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_order_cnt_type75 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %86, i32 0, i32 101
  %87 = load i32, i32* %pic_order_cnt_type75, align 4
  %cmp76 = icmp eq i32 %87, 1
  br i1 %cmp76, label %land.lhs.true.77, label %if.end.93

land.lhs.true.77:                                 ; preds = %if.end.74
  %88 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_always_zero_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %88, i32 0, i32 102
  %89 = load i32, i32* %delta_pic_order_always_zero_flag, align 4
  %tobool78 = icmp ne i32 %89, 0
  br i1 %tobool78, label %if.end.93, label %if.then.79

if.then.79:                                       ; preds = %land.lhs.true.77
  %90 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %90, i32 0, i32 109
  %arrayidx80 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt, i32 0, i64 0
  %91 = load i32, i32* %arrayidx80, align 4
  %92 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call81 = call i32 @se_v(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i32 %91, %struct.Bitstream* %92)
  %93 = load i32, i32* %len, align 4
  %add82 = add nsw i32 %93, %call81
  store i32 %add82, i32* %len, align 4
  %94 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_order_present_flag83 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %94, i32 0, i32 121
  %95 = load i32, i32* %pic_order_present_flag83, align 4
  %tobool84 = icmp ne i32 %95, 0
  br i1 %tobool84, label %land.lhs.true.85, label %if.end.92

land.lhs.true.85:                                 ; preds = %if.then.79
  %96 = load i32, i32* %field_pic_flag, align 4
  %tobool86 = icmp ne i32 %96, 0
  br i1 %tobool86, label %if.end.92, label %if.then.87

if.then.87:                                       ; preds = %land.lhs.true.85
  %97 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt88 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %97, i32 0, i32 109
  %arrayidx89 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt88, i32 0, i64 1
  %98 = load i32, i32* %arrayidx89, align 4
  %99 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call90 = call i32 @se_v(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), i32 %98, %struct.Bitstream* %99)
  %100 = load i32, i32* %len, align 4
  %add91 = add nsw i32 %100, %call90
  store i32 %add91, i32* %len, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.87, %land.lhs.true.85, %if.then.79
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %land.lhs.true.77, %if.end.74
  %101 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %redundant_pic_cnt_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %101, i32 0, i32 28
  %102 = load i32, i32* %redundant_pic_cnt_present_flag, align 4
  %tobool94 = icmp ne i32 %102, 0
  br i1 %tobool94, label %if.then.95, label %if.end.98

if.then.95:                                       ; preds = %if.end.93
  %103 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %redundant_pic_cnt = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %103, i32 0, i32 99
  %104 = load i32, i32* %redundant_pic_cnt, align 4
  %105 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call96 = call i32 @ue_v(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 %104, %struct.Bitstream* %105)
  %106 = load i32, i32* %len, align 4
  %add97 = add nsw i32 %106, %call96
  store i32 %add97, i32* %len, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.95, %if.end.93
  %107 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %107, i32 0, i32 5
  %108 = load i32, i32* %type, align 4
  %cmp99 = icmp eq i32 %108, 1
  br i1 %cmp99, label %if.then.100, label %if.end.103

if.then.100:                                      ; preds = %if.end.98
  %109 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %direct_spatial_mv_pred_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %109, i32 0, i32 87
  %110 = load i32, i32* %direct_spatial_mv_pred_flag, align 4
  %111 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call101 = call i32 @u_1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0), i32 %110, %struct.Bitstream* %111)
  %112 = load i32, i32* %len, align 4
  %add102 = add i32 %112, %call101
  store i32 %add102, i32* %len, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.100, %if.end.98
  %113 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type104 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %113, i32 0, i32 5
  %114 = load i32, i32* %type104, align 4
  %cmp105 = icmp eq i32 %114, 0
  br i1 %cmp105, label %if.then.112, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %if.end.103
  %115 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type107 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %115, i32 0, i32 5
  %116 = load i32, i32* %type107, align 4
  %cmp108 = icmp eq i32 %116, 1
  br i1 %cmp108, label %if.then.112, label %lor.lhs.false.109

lor.lhs.false.109:                                ; preds = %lor.lhs.false.106
  %117 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type110 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %117, i32 0, i32 5
  %118 = load i32, i32* %type110, align 4
  %cmp111 = icmp eq i32 %118, 3
  br i1 %cmp111, label %if.then.112, label %if.end.149

if.then.112:                                      ; preds = %lor.lhs.false.109, %lor.lhs.false.106, %if.end.103
  %119 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type113 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %119, i32 0, i32 5
  %120 = load i32, i32* %type113, align 4
  %cmp114 = icmp eq i32 %120, 0
  br i1 %cmp114, label %if.then.118, label %lor.lhs.false.115

lor.lhs.false.115:                                ; preds = %if.then.112
  %121 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type116 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %121, i32 0, i32 5
  %122 = load i32, i32* %type116, align 4
  %cmp117 = icmp eq i32 %122, 3
  br i1 %cmp117, label %if.then.118, label %if.else.122

if.then.118:                                      ; preds = %lor.lhs.false.115, %if.then.112
  %123 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %123, i32 0, i32 88
  %124 = load i32, i32* %num_ref_idx_l0_active, align 4
  %125 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %num_ref_idx_l0_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %125, i32 0, i32 17
  %126 = load i32, i32* %num_ref_idx_l0_active_minus1, align 4
  %add119 = add nsw i32 %126, 1
  %cmp120 = icmp ne i32 %124, %add119
  %cond121 = select i1 %cmp120, i32 1, i32 0
  store i32 %cond121, i32* %override_flag, align 4
  br label %if.end.132

if.else.122:                                      ; preds = %lor.lhs.false.115
  %127 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active123 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %127, i32 0, i32 88
  %128 = load i32, i32* %num_ref_idx_l0_active123, align 4
  %129 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %num_ref_idx_l0_active_minus1124 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %129, i32 0, i32 17
  %130 = load i32, i32* %num_ref_idx_l0_active_minus1124, align 4
  %add125 = add nsw i32 %130, 1
  %cmp126 = icmp ne i32 %128, %add125
  br i1 %cmp126, label %lor.end.130, label %lor.rhs.127

lor.rhs.127:                                      ; preds = %if.else.122
  %131 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l1_active = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %131, i32 0, i32 89
  %132 = load i32, i32* %num_ref_idx_l1_active, align 4
  %133 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %num_ref_idx_l1_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %133, i32 0, i32 18
  %134 = load i32, i32* %num_ref_idx_l1_active_minus1, align 4
  %add128 = add nsw i32 %134, 1
  %cmp129 = icmp ne i32 %132, %add128
  br label %lor.end.130

lor.end.130:                                      ; preds = %lor.rhs.127, %if.else.122
  %135 = phi i1 [ true, %if.else.122 ], [ %cmp129, %lor.rhs.127 ]
  %cond131 = select i1 %135, i32 1, i32 0
  store i32 %cond131, i32* %override_flag, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %lor.end.130, %if.then.118
  %136 = load i32, i32* %override_flag, align 4
  %137 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call133 = call i32 @u_1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i32 0, i32 0), i32 %136, %struct.Bitstream* %137)
  %138 = load i32, i32* %len, align 4
  %add134 = add i32 %138, %call133
  store i32 %add134, i32* %len, align 4
  %139 = load i32, i32* %override_flag, align 4
  %tobool135 = icmp ne i32 %139, 0
  br i1 %tobool135, label %if.then.136, label %if.end.148

if.then.136:                                      ; preds = %if.end.132
  %140 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active137 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %140, i32 0, i32 88
  %141 = load i32, i32* %num_ref_idx_l0_active137, align 4
  %sub = sub nsw i32 %141, 1
  %142 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call138 = call i32 @ue_v(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0), i32 %sub, %struct.Bitstream* %142)
  %143 = load i32, i32* %len, align 4
  %add139 = add nsw i32 %143, %call138
  store i32 %add139, i32* %len, align 4
  %144 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type140 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %144, i32 0, i32 5
  %145 = load i32, i32* %type140, align 4
  %cmp141 = icmp eq i32 %145, 1
  br i1 %cmp141, label %if.then.142, label %if.end.147

if.then.142:                                      ; preds = %if.then.136
  %146 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l1_active143 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %146, i32 0, i32 89
  %147 = load i32, i32* %num_ref_idx_l1_active143, align 4
  %sub144 = sub nsw i32 %147, 1
  %148 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call145 = call i32 @ue_v(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0), i32 %sub144, %struct.Bitstream* %148)
  %149 = load i32, i32* %len, align 4
  %add146 = add nsw i32 %149, %call145
  store i32 %add146, i32* %len, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.142, %if.then.136
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.end.132
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %lor.lhs.false.109
  %150 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call150 = call i32 @ref_pic_list_reordering(%struct.Bitstream* %150)
  %151 = load i32, i32* %len, align 4
  %add151 = add nsw i32 %151, %call150
  store i32 %add151, i32* %len, align 4
  %152 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type152 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %152, i32 0, i32 5
  %153 = load i32, i32* %type152, align 4
  %cmp153 = icmp eq i32 %153, 0
  br i1 %cmp153, label %land.lhs.true.157, label %lor.lhs.false.154

lor.lhs.false.154:                                ; preds = %if.end.149
  %154 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type155 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %154, i32 0, i32 5
  %155 = load i32, i32* %type155, align 4
  %cmp156 = icmp eq i32 %155, 3
  br i1 %cmp156, label %land.lhs.true.157, label %lor.lhs.false.159

land.lhs.true.157:                                ; preds = %lor.lhs.false.154, %if.end.149
  %156 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %156, i32 0, i32 19
  %157 = load i32, i32* %weighted_pred_flag, align 4
  %tobool158 = icmp ne i32 %157, 0
  br i1 %tobool158, label %if.then.164, label %lor.lhs.false.159

lor.lhs.false.159:                                ; preds = %land.lhs.true.157, %lor.lhs.false.154
  %158 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type160 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %158, i32 0, i32 5
  %159 = load i32, i32* %type160, align 4
  %cmp161 = icmp eq i32 %159, 1
  br i1 %cmp161, label %land.lhs.true.162, label %if.end.167

land.lhs.true.162:                                ; preds = %lor.lhs.false.159
  %160 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %160, i32 0, i32 20
  %161 = load i32, i32* %weighted_bipred_idc, align 4
  %cmp163 = icmp eq i32 %161, 1
  br i1 %cmp163, label %if.then.164, label %if.end.167

if.then.164:                                      ; preds = %land.lhs.true.162, %land.lhs.true.157
  %162 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call165 = call i32 @pred_weight_table(%struct.Bitstream* %162)
  %163 = load i32, i32* %len, align 4
  %add166 = add nsw i32 %163, %call165
  store i32 %add166, i32* %len, align 4
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.164, %land.lhs.true.162, %lor.lhs.false.159
  %164 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %164, i32 0, i32 122
  %165 = load i32, i32* %nal_reference_idc, align 4
  %tobool168 = icmp ne i32 %165, 0
  br i1 %tobool168, label %if.then.169, label %if.end.172

if.then.169:                                      ; preds = %if.end.167
  %166 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call170 = call i32 @dec_ref_pic_marking(%struct.Bitstream* %166)
  %167 = load i32, i32* %len, align 4
  %add171 = add nsw i32 %167, %call170
  store i32 %add171, i32* %len, align 4
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.169, %if.end.167
  %168 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %168, i32 0, i32 74
  %169 = load i32, i32* %symbol_mode, align 4
  %cmp173 = icmp eq i32 %169, 1
  br i1 %cmp173, label %land.lhs.true.174, label %if.end.180

land.lhs.true.174:                                ; preds = %if.end.172
  %170 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type175 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %170, i32 0, i32 5
  %171 = load i32, i32* %type175, align 4
  %cmp176 = icmp ne i32 %171, 2
  br i1 %cmp176, label %if.then.177, label %if.end.180

if.then.177:                                      ; preds = %land.lhs.true.174
  %172 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %model_number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %172, i32 0, i32 127
  %173 = load i32, i32* %model_number, align 4
  %174 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call178 = call i32 @ue_v(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i32 %173, %struct.Bitstream* %174)
  %175 = load i32, i32* %len, align 4
  %add179 = add nsw i32 %175, %call178
  store i32 %add179, i32* %len, align 4
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.177, %land.lhs.true.174, %if.end.172
  %176 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %qp = getelementptr inbounds %struct.Slice, %struct.Slice* %176, i32 0, i32 1
  %177 = load i32, i32* %qp, align 4
  %sub181 = sub nsw i32 %177, 26
  %178 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %pic_init_qp_minus26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %178, i32 0, i32 21
  %179 = load i32, i32* %pic_init_qp_minus26, align 4
  %sub182 = sub nsw i32 %sub181, %179
  %180 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call183 = call i32 @se_v(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i32 %sub182, %struct.Bitstream* %180)
  %181 = load i32, i32* %len, align 4
  %add184 = add nsw i32 %181, %call183
  store i32 %add184, i32* %len, align 4
  %182 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type185 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %182, i32 0, i32 5
  %183 = load i32, i32* %type185, align 4
  %cmp186 = icmp eq i32 %183, 3
  br i1 %cmp186, label %if.then.187, label %if.end.201

if.then.187:                                      ; preds = %if.end.180
  %184 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type188 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %184, i32 0, i32 5
  %185 = load i32, i32* %type188, align 4
  %cmp189 = icmp eq i32 %185, 3
  br i1 %cmp189, label %if.then.190, label %if.end.197

if.then.190:                                      ; preds = %if.then.187
  %186 = load i32, i32* @si_frame_indicator, align 4
  %tobool191 = icmp ne i32 %186, 0
  br i1 %tobool191, label %lor.end.194, label %lor.rhs.192

lor.rhs.192:                                      ; preds = %if.then.190
  %187 = load i32, i32* @sp2_frame_indicator, align 4
  %tobool193 = icmp ne i32 %187, 0
  br label %lor.end.194

lor.end.194:                                      ; preds = %lor.rhs.192, %if.then.190
  %188 = phi i1 [ true, %if.then.190 ], [ %tobool193, %lor.rhs.192 ]
  %lor.ext = zext i1 %188 to i32
  %189 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call195 = call i32 @u_1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i32 %lor.ext, %struct.Bitstream* %189)
  %190 = load i32, i32* %len, align 4
  %add196 = add i32 %190, %call195
  store i32 %add196, i32* %len, align 4
  br label %if.end.197

if.end.197:                                       ; preds = %lor.end.194, %if.then.187
  %191 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qpsp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %191, i32 0, i32 10
  %192 = load i32, i32* %qpsp, align 4
  %sub198 = sub nsw i32 %192, 26
  %193 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call199 = call i32 @se_v(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), i32 %sub198, %struct.Bitstream* %193)
  %194 = load i32, i32* %len, align 4
  %add200 = add nsw i32 %194, %call199
  store i32 %add200, i32* %len, align 4
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.197, %if.end.180
  %195 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %deblocking_filter_control_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %195, i32 0, i32 26
  %196 = load i32, i32* %deblocking_filter_control_present_flag, align 4
  %tobool202 = icmp ne i32 %196, 0
  br i1 %tobool202, label %if.then.203, label %if.end.215

if.then.203:                                      ; preds = %if.end.201
  %197 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LFDisableIdc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %197, i32 0, i32 84
  %198 = load i32, i32* %LFDisableIdc, align 4
  %199 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call204 = call i32 @ue_v(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i32 0, i32 0), i32 %198, %struct.Bitstream* %199)
  %200 = load i32, i32* %len, align 4
  %add205 = add nsw i32 %200, %call204
  store i32 %add205, i32* %len, align 4
  %201 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LFDisableIdc206 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %201, i32 0, i32 84
  %202 = load i32, i32* %LFDisableIdc206, align 4
  %cmp207 = icmp ne i32 %202, 1
  br i1 %cmp207, label %if.then.208, label %if.end.214

if.then.208:                                      ; preds = %if.then.203
  %203 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LFAlphaC0Offset = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %203, i32 0, i32 85
  %204 = load i32, i32* %LFAlphaC0Offset, align 4
  %div = sdiv i32 %204, 2
  %205 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call209 = call i32 @se_v(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i32 0, i32 0), i32 %div, %struct.Bitstream* %205)
  %206 = load i32, i32* %len, align 4
  %add210 = add nsw i32 %206, %call209
  store i32 %add210, i32* %len, align 4
  %207 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LFBetaOffset = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %207, i32 0, i32 86
  %208 = load i32, i32* %LFBetaOffset, align 4
  %div211 = sdiv i32 %208, 2
  %209 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call212 = call i32 @se_v(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i32 0, i32 0), i32 %div211, %struct.Bitstream* %209)
  %210 = load i32, i32* %len, align 4
  %add213 = add nsw i32 %210, %call212
  store i32 %add213, i32* %len, align 4
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.208, %if.then.203
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %if.end.201
  %211 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %num_slice_groups_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %211, i32 0, i32 8
  %212 = load i32, i32* %num_slice_groups_minus1, align 4
  %cmp216 = icmp ugt i32 %212, 0
  br i1 %cmp216, label %land.lhs.true.217, label %if.end.235

land.lhs.true.217:                                ; preds = %if.end.215
  %213 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %slice_group_map_type = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %213, i32 0, i32 9
  %214 = load i32, i32* %slice_group_map_type, align 4
  %cmp218 = icmp uge i32 %214, 3
  br i1 %cmp218, label %land.lhs.true.219, label %if.end.235

land.lhs.true.219:                                ; preds = %land.lhs.true.217
  %215 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %slice_group_map_type220 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %215, i32 0, i32 9
  %216 = load i32, i32* %slice_group_map_type220, align 4
  %cmp221 = icmp ule i32 %216, 5
  br i1 %cmp221, label %if.then.222, label %if.end.235

if.then.222:                                      ; preds = %land.lhs.true.219
  %217 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicHeightInMapUnits = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %217, i32 0, i32 117
  %218 = load i32, i32* %PicHeightInMapUnits, align 4
  %219 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %219, i32 0, i32 116
  %220 = load i32, i32* %PicWidthInMbs, align 4
  %mul = mul i32 %218, %220
  %conv = uitofp i32 %mul to float
  %221 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %slice_group_change_rate_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %221, i32 0, i32 14
  %222 = load i32, i32* %slice_group_change_rate_minus1, align 4
  %add223 = add i32 %222, 1
  %conv224 = uitofp i32 %add223 to float
  %div225 = fdiv float %conv, %conv224
  %add226 = fadd float %div225, 1.000000e+00
  store float %add226, float* %numtmp, align 4
  %223 = load float, float* %numtmp, align 4
  %conv227 = fpext float %223 to double
  %call228 = call double @log(double %conv227) #4
  %call229 = call double @log(double 2.000000e+00) #4
  %div230 = fdiv double %call228, %call229
  %call231 = call double @ceil(double %div230) #5
  %conv232 = fptosi double %call231 to i32
  store i32 %conv232, i32* %num_bits_slice_group_change_cycle, align 4
  %224 = load i32, i32* %num_bits_slice_group_change_cycle, align 4
  %225 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %slice_group_change_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %225, i32 0, i32 140
  %226 = load i32, i32* %slice_group_change_cycle, align 4
  %227 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call233 = call i32 @u_v(i32 %224, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i32 0, i32 0), i32 %226, %struct.Bitstream* %227)
  %228 = load i32, i32* %len, align 4
  %add234 = add nsw i32 %228, %call233
  store i32 %add234, i32* %len, align 4
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.222, %land.lhs.true.219, %land.lhs.true.217, %if.end.215
  %229 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode236 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %229, i32 0, i32 76
  %230 = load i32, i32* %partition_mode236, align 4
  %tobool237 = icmp ne i32 %230, 0
  br i1 %tobool237, label %land.lhs.true.238, label %if.end.245

land.lhs.true.238:                                ; preds = %if.end.235
  %231 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture239 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %231, i32 0, i32 59
  %232 = load %struct.Picture*, %struct.Picture** %currentPicture239, align 8
  %idr_flag240 = getelementptr inbounds %struct.Picture, %struct.Picture* %232, i32 0, i32 1
  %233 = load i32, i32* %idr_flag240, align 4
  %tobool241 = icmp ne i32 %233, 0
  br i1 %tobool241, label %if.end.245, label %if.then.242

if.then.242:                                      ; preds = %land.lhs.true.238
  %234 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_slice_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %234, i32 0, i32 4
  %235 = load i32, i32* %current_slice_nr, align 4
  %236 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call243 = call i32 @ue_v(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i32 %235, %struct.Bitstream* %236)
  %237 = load i32, i32* %len, align 4
  %add244 = add nsw i32 %237, %call243
  store i32 %add244, i32* %len, align 4
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.242, %land.lhs.true.238, %if.end.235
  %238 = load i32, i32* %len, align 4
  ret i32 %238
}

declare i32 @ue_v(i8*, i32, %struct.Bitstream*) #1

; Function Attrs: nounwind uwtable
define i32 @get_picture_type() #0 {
entry:
  %retval = alloca i32, align 4
  %same_slicetype_for_whole_frame = alloca i32, align 4
  store i32 5, i32* %same_slicetype_for_whole_frame, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 5
  %1 = load i32, i32* %type, align 4
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 0, label %sw.bb.1
    i32 1, label %sw.bb.3
    i32 3, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i32, i32* %same_slicetype_for_whole_frame, align 4
  %add = add nsw i32 2, %2
  store i32 %add, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %3 = load i32, i32* %same_slicetype_for_whole_frame, align 4
  %add2 = add nsw i32 0, %3
  store i32 %add2, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %4 = load i32, i32* %same_slicetype_for_whole_frame, align 4
  %add4 = add nsw i32 1, %4
  store i32 %add4, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %5 = load i32, i32* %same_slicetype_for_whole_frame, align 4
  %add6 = add nsw i32 3, %5
  store i32 %add6, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  call void @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i32 0, i32 0), i32 1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @u_v(i32, i8*, i32, %struct.Bitstream*) #1

declare i32 @u_1(i8*, i32, %struct.Bitstream*) #1

declare i32 @se_v(i8*, i32, %struct.Bitstream*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ref_pic_list_reordering(%struct.Bitstream* %bitstream) #0 {
entry:
  %bitstream.addr = alloca %struct.Bitstream*, align 8
  %currSlice = alloca %struct.Slice*, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  store %struct.Bitstream* %bitstream, %struct.Bitstream** %bitstream.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 60
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %1, %struct.Slice** %currSlice, align 8
  store i32 0, i32* %len, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %redundant_pic_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 149
  %3 = load i32, i32* %redundant_pic_flag, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* @redundant_coding, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %ref_pic_list_reordering_flag_l0 = getelementptr inbounds %struct.Slice, %struct.Slice* %5, i32 0, i32 9
  store i32 1, i32* %ref_pic_list_reordering_flag_l0, align 4
  %6 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %reordering_of_pic_nums_idc_l0 = getelementptr inbounds %struct.Slice, %struct.Slice* %6, i32 0, i32 10
  %7 = load i32*, i32** %reordering_of_pic_nums_idc_l0, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 0
  store i32 0, i32* %arrayidx, align 4
  %8 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %reordering_of_pic_nums_idc_l02 = getelementptr inbounds %struct.Slice, %struct.Slice* %8, i32 0, i32 10
  %9 = load i32*, i32** %reordering_of_pic_nums_idc_l02, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 3, i32* %arrayidx3, align 4
  %10 = load i32, i32* @redundant_ref_idx, align 4
  %sub = sub nsw i32 %10, 1
  %11 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %abs_diff_pic_num_minus1_l0 = getelementptr inbounds %struct.Slice, %struct.Slice* %11, i32 0, i32 11
  %12 = load i32*, i32** %abs_diff_pic_num_minus1_l0, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %sub, i32* %arrayidx4, align 4
  %13 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %long_term_pic_idx_l0 = getelementptr inbounds %struct.Slice, %struct.Slice* %13, i32 0, i32 12
  %14 = load i32*, i32** %long_term_pic_idx_l0, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 0, i32* %arrayidx5, align 4
  %15 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 88
  %17 = load i32, i32* %num_ref_idx_l0_active, align 4
  %sub6 = sub nsw i32 %17, 1
  %18 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %reordering_of_pic_nums_idc_l07 = getelementptr inbounds %struct.Slice, %struct.Slice* %18, i32 0, i32 10
  %19 = load i32*, i32** %reordering_of_pic_nums_idc_l07, align 8
  %20 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %abs_diff_pic_num_minus1_l08 = getelementptr inbounds %struct.Slice, %struct.Slice* %20, i32 0, i32 11
  %21 = load i32*, i32** %abs_diff_pic_num_minus1_l08, align 8
  %22 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %long_term_pic_idx_l09 = getelementptr inbounds %struct.Slice, %struct.Slice* %22, i32 0, i32 12
  %23 = load i32*, i32** %long_term_pic_idx_l09, align 8
  call void @reorder_ref_pic_list(%struct.storable_picture** %15, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), i32 %sub6, i32* %19, i32* %21, i32* %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 5
  %25 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %25, 2
  br i1 %cmp, label %if.then.10, label %if.end.50

if.then.10:                                       ; preds = %if.end
  %26 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %ref_pic_list_reordering_flag_l011 = getelementptr inbounds %struct.Slice, %struct.Slice* %26, i32 0, i32 9
  %27 = load i32, i32* %ref_pic_list_reordering_flag_l011, align 4
  %28 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call = call i32 @u_1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i32 0, i32 0), i32 %27, %struct.Bitstream* %28)
  %29 = load i32, i32* %len, align 4
  %add = add i32 %29, %call
  store i32 %add, i32* %len, align 4
  %30 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %ref_pic_list_reordering_flag_l012 = getelementptr inbounds %struct.Slice, %struct.Slice* %30, i32 0, i32 9
  %31 = load i32, i32* %ref_pic_list_reordering_flag_l012, align 4
  %tobool13 = icmp ne i32 %31, 0
  br i1 %tobool13, label %if.then.14, label %if.end.49

if.then.14:                                       ; preds = %if.then.10
  store i32 -1, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.14
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  %33 = load i32, i32* %i, align 4
  %idxprom = sext i32 %33 to i64
  %34 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %reordering_of_pic_nums_idc_l015 = getelementptr inbounds %struct.Slice, %struct.Slice* %34, i32 0, i32 10
  %35 = load i32*, i32** %reordering_of_pic_nums_idc_l015, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %35, i64 %idxprom
  %36 = load i32, i32* %arrayidx16, align 4
  %37 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call17 = call i32 @ue_v(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i32 0, i32 0), i32 %36, %struct.Bitstream* %37)
  %38 = load i32, i32* %len, align 4
  %add18 = add nsw i32 %38, %call17
  store i32 %add18, i32* %len, align 4
  %39 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %39 to i64
  %40 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %reordering_of_pic_nums_idc_l020 = getelementptr inbounds %struct.Slice, %struct.Slice* %40, i32 0, i32 10
  %41 = load i32*, i32** %reordering_of_pic_nums_idc_l020, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %41, i64 %idxprom19
  %42 = load i32, i32* %arrayidx21, align 4
  %cmp22 = icmp eq i32 %42, 0
  br i1 %cmp22, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %43 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %43 to i64
  %44 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %reordering_of_pic_nums_idc_l024 = getelementptr inbounds %struct.Slice, %struct.Slice* %44, i32 0, i32 10
  %45 = load i32*, i32** %reordering_of_pic_nums_idc_l024, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %45, i64 %idxprom23
  %46 = load i32, i32* %arrayidx25, align 4
  %cmp26 = icmp eq i32 %46, 1
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %lor.lhs.false, %do.body
  %47 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %47 to i64
  %48 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %abs_diff_pic_num_minus1_l029 = getelementptr inbounds %struct.Slice, %struct.Slice* %48, i32 0, i32 11
  %49 = load i32*, i32** %abs_diff_pic_num_minus1_l029, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %49, i64 %idxprom28
  %50 = load i32, i32* %arrayidx30, align 4
  %51 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call31 = call i32 @ue_v(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i32 0, i32 0), i32 %50, %struct.Bitstream* %51)
  %52 = load i32, i32* %len, align 4
  %add32 = add nsw i32 %52, %call31
  store i32 %add32, i32* %len, align 4
  br label %if.end.44

if.else:                                          ; preds = %lor.lhs.false
  %53 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %53 to i64
  %54 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %reordering_of_pic_nums_idc_l034 = getelementptr inbounds %struct.Slice, %struct.Slice* %54, i32 0, i32 10
  %55 = load i32*, i32** %reordering_of_pic_nums_idc_l034, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %55, i64 %idxprom33
  %56 = load i32, i32* %arrayidx35, align 4
  %cmp36 = icmp eq i32 %56, 2
  br i1 %cmp36, label %if.then.37, label %if.end.43

if.then.37:                                       ; preds = %if.else
  %57 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %57 to i64
  %58 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %long_term_pic_idx_l039 = getelementptr inbounds %struct.Slice, %struct.Slice* %58, i32 0, i32 12
  %59 = load i32*, i32** %long_term_pic_idx_l039, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %59, i64 %idxprom38
  %60 = load i32, i32* %arrayidx40, align 4
  %61 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call41 = call i32 @ue_v(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0), i32 %60, %struct.Bitstream* %61)
  %62 = load i32, i32* %len, align 4
  %add42 = add nsw i32 %62, %call41
  store i32 %add42, i32* %len, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.37, %if.else
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.27
  br label %do.cond

do.cond:                                          ; preds = %if.end.44
  %63 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %63 to i64
  %64 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %reordering_of_pic_nums_idc_l046 = getelementptr inbounds %struct.Slice, %struct.Slice* %64, i32 0, i32 10
  %65 = load i32*, i32** %reordering_of_pic_nums_idc_l046, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %65, i64 %idxprom45
  %66 = load i32, i32* %arrayidx47, align 4
  %cmp48 = icmp ne i32 %66, 3
  br i1 %cmp48, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.49

if.end.49:                                        ; preds = %do.end, %if.then.10
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end
  %67 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type51 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %67, i32 0, i32 5
  %68 = load i32, i32* %type51, align 4
  %cmp52 = icmp eq i32 %68, 1
  br i1 %cmp52, label %if.then.53, label %if.end.98

if.then.53:                                       ; preds = %if.end.50
  %69 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %ref_pic_list_reordering_flag_l1 = getelementptr inbounds %struct.Slice, %struct.Slice* %69, i32 0, i32 13
  %70 = load i32, i32* %ref_pic_list_reordering_flag_l1, align 4
  %71 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call54 = call i32 @u_1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i32 0, i32 0), i32 %70, %struct.Bitstream* %71)
  %72 = load i32, i32* %len, align 4
  %add55 = add i32 %72, %call54
  store i32 %add55, i32* %len, align 4
  %73 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %ref_pic_list_reordering_flag_l156 = getelementptr inbounds %struct.Slice, %struct.Slice* %73, i32 0, i32 13
  %74 = load i32, i32* %ref_pic_list_reordering_flag_l156, align 4
  %tobool57 = icmp ne i32 %74, 0
  br i1 %tobool57, label %if.then.58, label %if.end.97

if.then.58:                                       ; preds = %if.then.53
  store i32 -1, i32* %i, align 4
  br label %do.body.59

do.body.59:                                       ; preds = %do.cond.91, %if.then.58
  %75 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %75, 1
  store i32 %inc60, i32* %i, align 4
  %76 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %76 to i64
  %77 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %reordering_of_pic_nums_idc_l1 = getelementptr inbounds %struct.Slice, %struct.Slice* %77, i32 0, i32 14
  %78 = load i32*, i32** %reordering_of_pic_nums_idc_l1, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %78, i64 %idxprom61
  %79 = load i32, i32* %arrayidx62, align 4
  %80 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call63 = call i32 @ue_v(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i32 0, i32 0), i32 %79, %struct.Bitstream* %80)
  %81 = load i32, i32* %len, align 4
  %add64 = add nsw i32 %81, %call63
  store i32 %add64, i32* %len, align 4
  %82 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %82 to i64
  %83 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %reordering_of_pic_nums_idc_l166 = getelementptr inbounds %struct.Slice, %struct.Slice* %83, i32 0, i32 14
  %84 = load i32*, i32** %reordering_of_pic_nums_idc_l166, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %84, i64 %idxprom65
  %85 = load i32, i32* %arrayidx67, align 4
  %cmp68 = icmp eq i32 %85, 0
  br i1 %cmp68, label %if.then.74, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %do.body.59
  %86 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %86 to i64
  %87 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %reordering_of_pic_nums_idc_l171 = getelementptr inbounds %struct.Slice, %struct.Slice* %87, i32 0, i32 14
  %88 = load i32*, i32** %reordering_of_pic_nums_idc_l171, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %88, i64 %idxprom70
  %89 = load i32, i32* %arrayidx72, align 4
  %cmp73 = icmp eq i32 %89, 1
  br i1 %cmp73, label %if.then.74, label %if.else.79

if.then.74:                                       ; preds = %lor.lhs.false.69, %do.body.59
  %90 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %90 to i64
  %91 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %abs_diff_pic_num_minus1_l1 = getelementptr inbounds %struct.Slice, %struct.Slice* %91, i32 0, i32 15
  %92 = load i32*, i32** %abs_diff_pic_num_minus1_l1, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %92, i64 %idxprom75
  %93 = load i32, i32* %arrayidx76, align 4
  %94 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call77 = call i32 @ue_v(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i32 0, i32 0), i32 %93, %struct.Bitstream* %94)
  %95 = load i32, i32* %len, align 4
  %add78 = add nsw i32 %95, %call77
  store i32 %add78, i32* %len, align 4
  br label %if.end.90

if.else.79:                                       ; preds = %lor.lhs.false.69
  %96 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %96 to i64
  %97 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %reordering_of_pic_nums_idc_l181 = getelementptr inbounds %struct.Slice, %struct.Slice* %97, i32 0, i32 14
  %98 = load i32*, i32** %reordering_of_pic_nums_idc_l181, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %98, i64 %idxprom80
  %99 = load i32, i32* %arrayidx82, align 4
  %cmp83 = icmp eq i32 %99, 2
  br i1 %cmp83, label %if.then.84, label %if.end.89

if.then.84:                                       ; preds = %if.else.79
  %100 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %100 to i64
  %101 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %long_term_pic_idx_l1 = getelementptr inbounds %struct.Slice, %struct.Slice* %101, i32 0, i32 16
  %102 = load i32*, i32** %long_term_pic_idx_l1, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %102, i64 %idxprom85
  %103 = load i32, i32* %arrayidx86, align 4
  %104 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call87 = call i32 @ue_v(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i32 0, i32 0), i32 %103, %struct.Bitstream* %104)
  %105 = load i32, i32* %len, align 4
  %add88 = add nsw i32 %105, %call87
  store i32 %add88, i32* %len, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.84, %if.else.79
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.74
  br label %do.cond.91

do.cond.91:                                       ; preds = %if.end.90
  %106 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %106 to i64
  %107 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %reordering_of_pic_nums_idc_l193 = getelementptr inbounds %struct.Slice, %struct.Slice* %107, i32 0, i32 14
  %108 = load i32*, i32** %reordering_of_pic_nums_idc_l193, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %108, i64 %idxprom92
  %109 = load i32, i32* %arrayidx94, align 4
  %cmp95 = icmp ne i32 %109, 3
  br i1 %cmp95, label %do.body.59, label %do.end.96

do.end.96:                                        ; preds = %do.cond.91
  br label %if.end.97

if.end.97:                                        ; preds = %do.end.96, %if.then.53
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.end.50
  %110 = load i32, i32* %len, align 4
  ret i32 %110
}

; Function Attrs: nounwind uwtable
define internal i32 @pred_weight_table(%struct.Bitstream* %bitstream) #0 {
entry:
  %bitstream.addr = alloca %struct.Bitstream*, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.Bitstream* %bitstream, %struct.Bitstream** %bitstream.addr, align 8
  store i32 0, i32* %len, align 4
  %0 = load i32, i32* @luma_log_weight_denom, align 4
  %1 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call = call i32 @ue_v(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.43, i32 0, i32 0), i32 %0, %struct.Bitstream* %1)
  %2 = load i32, i32* %len, align 4
  %add = add nsw i32 %2, %call
  store i32 %add, i32* %len, align 4
  %3 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %3, i32 0, i32 8
  %4 = load i32, i32* %chroma_format_idc, align 4
  %cmp = icmp ne i32 0, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* @chroma_log_weight_denom, align 4
  %6 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call1 = call i32 @ue_v(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.44, i32 0, i32 0), i32 %5, %struct.Bitstream* %6)
  %7 = load i32, i32* %len, align 4
  %add2 = add nsw i32 %7, %call1
  store i32 %add2, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.83, %if.end
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 88
  %10 = load i32, i32* %num_ref_idx_l0_active, align 4
  %cmp3 = icmp slt i32 %8, %10
  br i1 %cmp3, label %for.body, label %for.end.85

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i32***, i32**** @wp_weight, align 8
  %arrayidx = getelementptr inbounds i32**, i32*** %12, i64 0
  %13 = load i32**, i32*** %arrayidx, align 8
  %arrayidx4 = getelementptr inbounds i32*, i32** %13, i64 %idxprom
  %14 = load i32*, i32** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %14, i64 0
  %15 = load i32, i32* %arrayidx5, align 4
  %16 = load i32, i32* @luma_log_weight_denom, align 4
  %shl = shl i32 1, %16
  %cmp6 = icmp ne i32 %15, %shl
  br i1 %cmp6, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %17 to i64
  %18 = load i32***, i32**** @wp_offset, align 8
  %arrayidx8 = getelementptr inbounds i32**, i32*** %18, i64 0
  %19 = load i32**, i32*** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i32*, i32** %19, i64 %idxprom7
  %20 = load i32*, i32** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %20, i64 0
  %21 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp ne i32 %21, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %lor.lhs.false, %for.body
  %22 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call13 = call i32 @u_1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45, i32 0, i32 0), i32 1, %struct.Bitstream* %22)
  %23 = load i32, i32* %len, align 4
  %add14 = add i32 %23, %call13
  store i32 %add14, i32* %len, align 4
  %24 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %24 to i64
  %25 = load i32***, i32**** @wp_weight, align 8
  %arrayidx16 = getelementptr inbounds i32**, i32*** %25, i64 0
  %26 = load i32**, i32*** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds i32*, i32** %26, i64 %idxprom15
  %27 = load i32*, i32** %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %27, i64 0
  %28 = load i32, i32* %arrayidx18, align 4
  %29 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call19 = call i32 @se_v(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i32 0, i32 0), i32 %28, %struct.Bitstream* %29)
  %30 = load i32, i32* %len, align 4
  %add20 = add nsw i32 %30, %call19
  store i32 %add20, i32* %len, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %31 to i64
  %32 = load i32***, i32**** @wp_offset, align 8
  %arrayidx22 = getelementptr inbounds i32**, i32*** %32, i64 0
  %33 = load i32**, i32*** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i32*, i32** %33, i64 %idxprom21
  %34 = load i32*, i32** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %34, i64 0
  %35 = load i32, i32* %arrayidx24, align 4
  %36 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call25 = call i32 @se_v(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i32 0, i32 0), i32 %35, %struct.Bitstream* %36)
  %37 = load i32, i32* %len, align 4
  %add26 = add nsw i32 %37, %call25
  store i32 %add26, i32* %len, align 4
  br label %if.end.29

if.else:                                          ; preds = %lor.lhs.false
  %38 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call27 = call i32 @u_1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45, i32 0, i32 0), i32 0, %struct.Bitstream* %38)
  %39 = load i32, i32* %len, align 4
  %add28 = add i32 %39, %call27
  store i32 %add28, i32* %len, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.12
  %40 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc30 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %40, i32 0, i32 8
  %41 = load i32, i32* %chroma_format_idc30, align 4
  %cmp31 = icmp ne i32 %41, 0
  br i1 %cmp31, label %if.then.32, label %if.end.82

if.then.32:                                       ; preds = %if.end.29
  %42 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %42 to i64
  %43 = load i32***, i32**** @wp_weight, align 8
  %arrayidx34 = getelementptr inbounds i32**, i32*** %43, i64 0
  %44 = load i32**, i32*** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i32*, i32** %44, i64 %idxprom33
  %45 = load i32*, i32** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %45, i64 1
  %46 = load i32, i32* %arrayidx36, align 4
  %47 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl37 = shl i32 1, %47
  %cmp38 = icmp ne i32 %46, %shl37
  br i1 %cmp38, label %if.then.58, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %if.then.32
  %48 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %48 to i64
  %49 = load i32***, i32**** @wp_offset, align 8
  %arrayidx41 = getelementptr inbounds i32**, i32*** %49, i64 0
  %50 = load i32**, i32*** %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds i32*, i32** %50, i64 %idxprom40
  %51 = load i32*, i32** %arrayidx42, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %51, i64 1
  %52 = load i32, i32* %arrayidx43, align 4
  %cmp44 = icmp ne i32 %52, 0
  br i1 %cmp44, label %if.then.58, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %lor.lhs.false.39
  %53 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %53 to i64
  %54 = load i32***, i32**** @wp_weight, align 8
  %arrayidx47 = getelementptr inbounds i32**, i32*** %54, i64 0
  %55 = load i32**, i32*** %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds i32*, i32** %55, i64 %idxprom46
  %56 = load i32*, i32** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %56, i64 2
  %57 = load i32, i32* %arrayidx49, align 4
  %58 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl50 = shl i32 1, %58
  %cmp51 = icmp ne i32 %57, %shl50
  br i1 %cmp51, label %if.then.58, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %lor.lhs.false.45
  %59 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %59 to i64
  %60 = load i32***, i32**** @wp_offset, align 8
  %arrayidx54 = getelementptr inbounds i32**, i32*** %60, i64 0
  %61 = load i32**, i32*** %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds i32*, i32** %61, i64 %idxprom53
  %62 = load i32*, i32** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %62, i64 2
  %63 = load i32, i32* %arrayidx56, align 4
  %cmp57 = icmp ne i32 %63, 0
  br i1 %cmp57, label %if.then.58, label %if.else.78

if.then.58:                                       ; preds = %lor.lhs.false.52, %lor.lhs.false.45, %lor.lhs.false.39, %if.then.32
  %64 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call59 = call i32 @u_1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.48, i32 0, i32 0), i32 1, %struct.Bitstream* %64)
  %65 = load i32, i32* %len, align 4
  %add60 = add i32 %65, %call59
  store i32 %add60, i32* %len, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc, %if.then.58
  %66 = load i32, i32* %j, align 4
  %cmp62 = icmp slt i32 %66, 3
  br i1 %cmp62, label %for.body.63, label %for.end

for.body.63:                                      ; preds = %for.cond.61
  %67 = load i32, i32* %j, align 4
  %idxprom64 = sext i32 %67 to i64
  %68 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %68 to i64
  %69 = load i32***, i32**** @wp_weight, align 8
  %arrayidx66 = getelementptr inbounds i32**, i32*** %69, i64 0
  %70 = load i32**, i32*** %arrayidx66, align 8
  %arrayidx67 = getelementptr inbounds i32*, i32** %70, i64 %idxprom65
  %71 = load i32*, i32** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %71, i64 %idxprom64
  %72 = load i32, i32* %arrayidx68, align 4
  %73 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call69 = call i32 @se_v(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), i32 %72, %struct.Bitstream* %73)
  %74 = load i32, i32* %len, align 4
  %add70 = add nsw i32 %74, %call69
  store i32 %add70, i32* %len, align 4
  %75 = load i32, i32* %j, align 4
  %idxprom71 = sext i32 %75 to i64
  %76 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %76 to i64
  %77 = load i32***, i32**** @wp_offset, align 8
  %arrayidx73 = getelementptr inbounds i32**, i32*** %77, i64 0
  %78 = load i32**, i32*** %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds i32*, i32** %78, i64 %idxprom72
  %79 = load i32*, i32** %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %79, i64 %idxprom71
  %80 = load i32, i32* %arrayidx75, align 4
  %81 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call76 = call i32 @se_v(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i32 0, i32 0), i32 %80, %struct.Bitstream* %81)
  %82 = load i32, i32* %len, align 4
  %add77 = add nsw i32 %82, %call76
  store i32 %add77, i32* %len, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.63
  %83 = load i32, i32* %j, align 4
  %inc = add nsw i32 %83, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.61

for.end:                                          ; preds = %for.cond.61
  br label %if.end.81

if.else.78:                                       ; preds = %lor.lhs.false.52
  %84 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call79 = call i32 @u_1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.48, i32 0, i32 0), i32 0, %struct.Bitstream* %84)
  %85 = load i32, i32* %len, align 4
  %add80 = add i32 %85, %call79
  store i32 %add80, i32* %len, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.78, %for.end
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.29
  br label %for.inc.83

for.inc.83:                                       ; preds = %if.end.82
  %86 = load i32, i32* %i, align 4
  %inc84 = add nsw i32 %86, 1
  store i32 %inc84, i32* %i, align 4
  br label %for.cond

for.end.85:                                       ; preds = %for.cond
  %87 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %87, i32 0, i32 5
  %88 = load i32, i32* %type, align 4
  %cmp86 = icmp eq i32 %88, 1
  br i1 %cmp86, label %if.then.87, label %if.end.181

if.then.87:                                       ; preds = %for.end.85
  store i32 0, i32* %i, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.178, %if.then.87
  %89 = load i32, i32* %i, align 4
  %90 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l1_active = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %90, i32 0, i32 89
  %91 = load i32, i32* %num_ref_idx_l1_active, align 4
  %cmp89 = icmp slt i32 %89, %91
  br i1 %cmp89, label %for.body.90, label %for.end.180

for.body.90:                                      ; preds = %for.cond.88
  %92 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %92 to i64
  %93 = load i32***, i32**** @wp_weight, align 8
  %arrayidx92 = getelementptr inbounds i32**, i32*** %93, i64 1
  %94 = load i32**, i32*** %arrayidx92, align 8
  %arrayidx93 = getelementptr inbounds i32*, i32** %94, i64 %idxprom91
  %95 = load i32*, i32** %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %95, i64 0
  %96 = load i32, i32* %arrayidx94, align 4
  %97 = load i32, i32* @luma_log_weight_denom, align 4
  %shl95 = shl i32 1, %97
  %cmp96 = icmp ne i32 %96, %shl95
  br i1 %cmp96, label %if.then.103, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %for.body.90
  %98 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %98 to i64
  %99 = load i32***, i32**** @wp_offset, align 8
  %arrayidx99 = getelementptr inbounds i32**, i32*** %99, i64 1
  %100 = load i32**, i32*** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds i32*, i32** %100, i64 %idxprom98
  %101 = load i32*, i32** %arrayidx100, align 8
  %arrayidx101 = getelementptr inbounds i32, i32* %101, i64 0
  %102 = load i32, i32* %arrayidx101, align 4
  %cmp102 = icmp ne i32 %102, 0
  br i1 %cmp102, label %if.then.103, label %if.else.118

if.then.103:                                      ; preds = %lor.lhs.false.97, %for.body.90
  %103 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call104 = call i32 @u_1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.51, i32 0, i32 0), i32 1, %struct.Bitstream* %103)
  %104 = load i32, i32* %len, align 4
  %add105 = add i32 %104, %call104
  store i32 %add105, i32* %len, align 4
  %105 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %105 to i64
  %106 = load i32***, i32**** @wp_weight, align 8
  %arrayidx107 = getelementptr inbounds i32**, i32*** %106, i64 1
  %107 = load i32**, i32*** %arrayidx107, align 8
  %arrayidx108 = getelementptr inbounds i32*, i32** %107, i64 %idxprom106
  %108 = load i32*, i32** %arrayidx108, align 8
  %arrayidx109 = getelementptr inbounds i32, i32* %108, i64 0
  %109 = load i32, i32* %arrayidx109, align 4
  %110 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call110 = call i32 @se_v(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0), i32 %109, %struct.Bitstream* %110)
  %111 = load i32, i32* %len, align 4
  %add111 = add nsw i32 %111, %call110
  store i32 %add111, i32* %len, align 4
  %112 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %112 to i64
  %113 = load i32***, i32**** @wp_offset, align 8
  %arrayidx113 = getelementptr inbounds i32**, i32*** %113, i64 1
  %114 = load i32**, i32*** %arrayidx113, align 8
  %arrayidx114 = getelementptr inbounds i32*, i32** %114, i64 %idxprom112
  %115 = load i32*, i32** %arrayidx114, align 8
  %arrayidx115 = getelementptr inbounds i32, i32* %115, i64 0
  %116 = load i32, i32* %arrayidx115, align 4
  %117 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call116 = call i32 @se_v(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i32 0, i32 0), i32 %116, %struct.Bitstream* %117)
  %118 = load i32, i32* %len, align 4
  %add117 = add nsw i32 %118, %call116
  store i32 %add117, i32* %len, align 4
  br label %if.end.121

if.else.118:                                      ; preds = %lor.lhs.false.97
  %119 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call119 = call i32 @u_1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.51, i32 0, i32 0), i32 0, %struct.Bitstream* %119)
  %120 = load i32, i32* %len, align 4
  %add120 = add i32 %120, %call119
  store i32 %add120, i32* %len, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.118, %if.then.103
  %121 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc122 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %121, i32 0, i32 8
  %122 = load i32, i32* %chroma_format_idc122, align 4
  %cmp123 = icmp ne i32 %122, 0
  br i1 %cmp123, label %if.then.124, label %if.end.177

if.then.124:                                      ; preds = %if.end.121
  %123 = load i32, i32* %i, align 4
  %idxprom125 = sext i32 %123 to i64
  %124 = load i32***, i32**** @wp_weight, align 8
  %arrayidx126 = getelementptr inbounds i32**, i32*** %124, i64 1
  %125 = load i32**, i32*** %arrayidx126, align 8
  %arrayidx127 = getelementptr inbounds i32*, i32** %125, i64 %idxprom125
  %126 = load i32*, i32** %arrayidx127, align 8
  %arrayidx128 = getelementptr inbounds i32, i32* %126, i64 1
  %127 = load i32, i32* %arrayidx128, align 4
  %128 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl129 = shl i32 1, %128
  %cmp130 = icmp ne i32 %127, %shl129
  br i1 %cmp130, label %if.then.150, label %lor.lhs.false.131

lor.lhs.false.131:                                ; preds = %if.then.124
  %129 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %129 to i64
  %130 = load i32***, i32**** @wp_offset, align 8
  %arrayidx133 = getelementptr inbounds i32**, i32*** %130, i64 1
  %131 = load i32**, i32*** %arrayidx133, align 8
  %arrayidx134 = getelementptr inbounds i32*, i32** %131, i64 %idxprom132
  %132 = load i32*, i32** %arrayidx134, align 8
  %arrayidx135 = getelementptr inbounds i32, i32* %132, i64 1
  %133 = load i32, i32* %arrayidx135, align 4
  %cmp136 = icmp ne i32 %133, 0
  br i1 %cmp136, label %if.then.150, label %lor.lhs.false.137

lor.lhs.false.137:                                ; preds = %lor.lhs.false.131
  %134 = load i32, i32* %i, align 4
  %idxprom138 = sext i32 %134 to i64
  %135 = load i32***, i32**** @wp_weight, align 8
  %arrayidx139 = getelementptr inbounds i32**, i32*** %135, i64 1
  %136 = load i32**, i32*** %arrayidx139, align 8
  %arrayidx140 = getelementptr inbounds i32*, i32** %136, i64 %idxprom138
  %137 = load i32*, i32** %arrayidx140, align 8
  %arrayidx141 = getelementptr inbounds i32, i32* %137, i64 2
  %138 = load i32, i32* %arrayidx141, align 4
  %139 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl142 = shl i32 1, %139
  %cmp143 = icmp ne i32 %138, %shl142
  br i1 %cmp143, label %if.then.150, label %lor.lhs.false.144

lor.lhs.false.144:                                ; preds = %lor.lhs.false.137
  %140 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %140 to i64
  %141 = load i32***, i32**** @wp_offset, align 8
  %arrayidx146 = getelementptr inbounds i32**, i32*** %141, i64 1
  %142 = load i32**, i32*** %arrayidx146, align 8
  %arrayidx147 = getelementptr inbounds i32*, i32** %142, i64 %idxprom145
  %143 = load i32*, i32** %arrayidx147, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %143, i64 2
  %144 = load i32, i32* %arrayidx148, align 4
  %cmp149 = icmp ne i32 %144, 0
  br i1 %cmp149, label %if.then.150, label %if.else.173

if.then.150:                                      ; preds = %lor.lhs.false.144, %lor.lhs.false.137, %lor.lhs.false.131, %if.then.124
  %145 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call151 = call i32 @u_1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i32 0, i32 0), i32 1, %struct.Bitstream* %145)
  %146 = load i32, i32* %len, align 4
  %add152 = add i32 %146, %call151
  store i32 %add152, i32* %len, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc.170, %if.then.150
  %147 = load i32, i32* %j, align 4
  %cmp154 = icmp slt i32 %147, 3
  br i1 %cmp154, label %for.body.155, label %for.end.172

for.body.155:                                     ; preds = %for.cond.153
  %148 = load i32, i32* %j, align 4
  %idxprom156 = sext i32 %148 to i64
  %149 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %149 to i64
  %150 = load i32***, i32**** @wp_weight, align 8
  %arrayidx158 = getelementptr inbounds i32**, i32*** %150, i64 1
  %151 = load i32**, i32*** %arrayidx158, align 8
  %arrayidx159 = getelementptr inbounds i32*, i32** %151, i64 %idxprom157
  %152 = load i32*, i32** %arrayidx159, align 8
  %arrayidx160 = getelementptr inbounds i32, i32* %152, i64 %idxprom156
  %153 = load i32, i32* %arrayidx160, align 4
  %154 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call161 = call i32 @se_v(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0), i32 %153, %struct.Bitstream* %154)
  %155 = load i32, i32* %len, align 4
  %add162 = add nsw i32 %155, %call161
  store i32 %add162, i32* %len, align 4
  %156 = load i32, i32* %j, align 4
  %idxprom163 = sext i32 %156 to i64
  %157 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %157 to i64
  %158 = load i32***, i32**** @wp_offset, align 8
  %arrayidx165 = getelementptr inbounds i32**, i32*** %158, i64 1
  %159 = load i32**, i32*** %arrayidx165, align 8
  %arrayidx166 = getelementptr inbounds i32*, i32** %159, i64 %idxprom164
  %160 = load i32*, i32** %arrayidx166, align 8
  %arrayidx167 = getelementptr inbounds i32, i32* %160, i64 %idxprom163
  %161 = load i32, i32* %arrayidx167, align 4
  %162 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call168 = call i32 @se_v(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i32 0, i32 0), i32 %161, %struct.Bitstream* %162)
  %163 = load i32, i32* %len, align 4
  %add169 = add nsw i32 %163, %call168
  store i32 %add169, i32* %len, align 4
  br label %for.inc.170

for.inc.170:                                      ; preds = %for.body.155
  %164 = load i32, i32* %j, align 4
  %inc171 = add nsw i32 %164, 1
  store i32 %inc171, i32* %j, align 4
  br label %for.cond.153

for.end.172:                                      ; preds = %for.cond.153
  br label %if.end.176

if.else.173:                                      ; preds = %lor.lhs.false.144
  %165 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call174 = call i32 @u_1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i32 0, i32 0), i32 0, %struct.Bitstream* %165)
  %166 = load i32, i32* %len, align 4
  %add175 = add i32 %166, %call174
  store i32 %add175, i32* %len, align 4
  br label %if.end.176

if.end.176:                                       ; preds = %if.else.173, %for.end.172
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %if.end.121
  br label %for.inc.178

for.inc.178:                                      ; preds = %if.end.177
  %167 = load i32, i32* %i, align 4
  %inc179 = add nsw i32 %167, 1
  store i32 %inc179, i32* %i, align 4
  br label %for.cond.88

for.end.180:                                      ; preds = %for.cond.88
  br label %if.end.181

if.end.181:                                       ; preds = %for.end.180, %for.end.85
  %168 = load i32, i32* %len, align 4
  ret i32 %168
}

; Function Attrs: nounwind uwtable
define internal i32 @dec_ref_pic_marking(%struct.Bitstream* %bitstream) #0 {
entry:
  %bitstream.addr = alloca %struct.Bitstream*, align 8
  %tmp_drpm = alloca %struct.DecRefPicMarking_s*, align 8
  %val = alloca i32, align 4
  %len = alloca i32, align 4
  store %struct.Bitstream* %bitstream, %struct.Bitstream** %bitstream.addr, align 8
  store i32 0, i32* %len, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 59
  %1 = load %struct.Picture*, %struct.Picture** %currentPicture, align 8
  %idr_flag = getelementptr inbounds %struct.Picture, %struct.Picture* %1, i32 0, i32 1
  %2 = load i32, i32* %idr_flag, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %no_output_of_prior_pics_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 124
  %4 = load i32, i32* %no_output_of_prior_pics_flag, align 4
  %5 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call = call i32 @u_1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i32 0, i32 0), i32 %4, %struct.Bitstream* %5)
  %6 = load i32, i32* %len, align 4
  %add = add i32 %6, %call
  store i32 %add, i32* %len, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %long_term_reference_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 125
  %8 = load i32, i32* %long_term_reference_flag, align 4
  %9 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call1 = call i32 @u_1(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i32 0, i32 0), i32 %8, %struct.Bitstream* %9)
  %10 = load i32, i32* %len, align 4
  %add2 = add i32 %10, %call1
  store i32 %add2, i32* %len, align 4
  br label %if.end.48

if.else:                                          ; preds = %entry
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dec_ref_pic_marking_buffer = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 126
  %12 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer, align 8
  %cmp = icmp ne %struct.DecRefPicMarking_s* %12, null
  %conv = zext i1 %cmp to i32
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %adaptive_ref_pic_buffering_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 123
  store i32 %conv, i32* %adaptive_ref_pic_buffering_flag, align 4
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %adaptive_ref_pic_buffering_flag3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 123
  %15 = load i32, i32* %adaptive_ref_pic_buffering_flag3, align 4
  %16 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call4 = call i32 @u_1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i32 0, i32 0), i32 %15, %struct.Bitstream* %16)
  %17 = load i32, i32* %len, align 4
  %add5 = add i32 %17, %call4
  store i32 %add5, i32* %len, align 4
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %adaptive_ref_pic_buffering_flag6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 123
  %19 = load i32, i32* %adaptive_ref_pic_buffering_flag6, align 4
  %tobool7 = icmp ne i32 %19, 0
  br i1 %tobool7, label %if.then.8, label %if.end.47

if.then.8:                                        ; preds = %if.else
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dec_ref_pic_marking_buffer9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 126
  %21 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer9, align 8
  store %struct.DecRefPicMarking_s* %21, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.8
  %22 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %cmp10 = icmp eq %struct.DecRefPicMarking_s* %22, null
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %do.body
  call void @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.37, i32 0, i32 0), i32 500)
  br label %if.end

if.end:                                           ; preds = %if.then.12, %do.body
  %23 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %memory_management_control_operation = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %23, i32 0, i32 0
  %24 = load i32, i32* %memory_management_control_operation, align 4
  store i32 %24, i32* %val, align 4
  %25 = load i32, i32* %val, align 4
  %26 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call13 = call i32 @ue_v(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i32 0, i32 0), i32 %25, %struct.Bitstream* %26)
  %27 = load i32, i32* %len, align 4
  %add14 = add nsw i32 %27, %call13
  store i32 %add14, i32* %len, align 4
  %28 = load i32, i32* %val, align 4
  %cmp15 = icmp eq i32 %28, 1
  br i1 %cmp15, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %29 = load i32, i32* %val, align 4
  %cmp17 = icmp eq i32 %29, 3
  br i1 %cmp17, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %lor.lhs.false, %if.end
  %30 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %difference_of_pic_nums_minus1 = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %30, i32 0, i32 1
  %31 = load i32, i32* %difference_of_pic_nums_minus1, align 4
  %32 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call20 = call i32 @ue_v(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i32 0, i32 0), i32 %31, %struct.Bitstream* %32)
  %add21 = add nsw i32 1, %call20
  %33 = load i32, i32* %len, align 4
  %add22 = add nsw i32 %33, %add21
  store i32 %add22, i32* %len, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.19, %lor.lhs.false
  %34 = load i32, i32* %val, align 4
  %cmp24 = icmp eq i32 %34, 2
  br i1 %cmp24, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.end.23
  %35 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %long_term_pic_num = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %35, i32 0, i32 2
  %36 = load i32, i32* %long_term_pic_num, align 4
  %37 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call27 = call i32 @ue_v(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0), i32 %36, %struct.Bitstream* %37)
  %38 = load i32, i32* %len, align 4
  %add28 = add nsw i32 %38, %call27
  store i32 %add28, i32* %len, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %if.end.23
  %39 = load i32, i32* %val, align 4
  %cmp30 = icmp eq i32 %39, 3
  br i1 %cmp30, label %if.then.35, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %if.end.29
  %40 = load i32, i32* %val, align 4
  %cmp33 = icmp eq i32 %40, 6
  br i1 %cmp33, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %lor.lhs.false.32, %if.end.29
  %41 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %long_term_frame_idx = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %41, i32 0, i32 3
  %42 = load i32, i32* %long_term_frame_idx, align 4
  %43 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call36 = call i32 @ue_v(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i32 0, i32 0), i32 %42, %struct.Bitstream* %43)
  %44 = load i32, i32* %len, align 4
  %add37 = add nsw i32 %44, %call36
  store i32 %add37, i32* %len, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %lor.lhs.false.32
  %45 = load i32, i32* %val, align 4
  %cmp39 = icmp eq i32 %45, 4
  br i1 %cmp39, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %if.end.38
  %46 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %max_long_term_frame_idx_plus1 = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %46, i32 0, i32 4
  %47 = load i32, i32* %max_long_term_frame_idx_plus1, align 4
  %48 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call42 = call i32 @ue_v(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.42, i32 0, i32 0), i32 %47, %struct.Bitstream* %48)
  %49 = load i32, i32* %len, align 4
  %add43 = add nsw i32 %49, %call42
  store i32 %add43, i32* %len, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %if.end.38
  %50 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %Next = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %50, i32 0, i32 5
  %51 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %Next, align 8
  store %struct.DecRefPicMarking_s* %51, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.44
  %52 = load i32, i32* %val, align 4
  %cmp45 = icmp ne i32 %52, 0
  br i1 %cmp45, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.47

if.end.47:                                        ; preds = %do.end, %if.else
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then
  %53 = load i32, i32* %len, align 4
  ret i32 %53
}

; Function Attrs: nounwind readnone
declare double @ceil(double) #2

; Function Attrs: nounwind
declare double @log(double) #3

declare void @error(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @Partition_BC_Header(i32 %PartNo) #0 {
entry:
  %PartNo.addr = alloca i32, align 4
  %partition = alloca %struct.datapartition*, align 8
  %sym = alloca %struct.syntaxelement, align 8
  store i32 %PartNo, i32* %PartNo.addr, align 4
  %0 = load i32, i32* %PartNo.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 60
  %2 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %2, i32 0, i32 6
  %3 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx = getelementptr inbounds %struct.datapartition, %struct.datapartition* %3, i64 %idxprom
  store %struct.datapartition* %arrayidx, %struct.datapartition** %partition, align 8
  %type = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 0
  store i32 0, i32* %type, align 4
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 2
  store i32 0, i32* %value2, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_slice_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 4
  %5 = load i32, i32* %current_slice_nr, align 4
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 1
  store i32 %5, i32* %value1, align 4
  %6 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  call void @writeSE_UVLC(%struct.syntaxelement* %sym, %struct.datapartition* %6)
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %sym, i32 0, i32 3
  %7 = load i32, i32* %len, align 4
  ret i32 %7
}

declare void @writeSE_UVLC(%struct.syntaxelement*, %struct.datapartition*) #1

declare void @reorder_ref_pic_list(%struct.storable_picture**, i32*, i32, i32*, i32*, i32*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
