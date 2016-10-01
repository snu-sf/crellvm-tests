; ModuleID = './MultiSource.Applications.JM/79.lencod.parset.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
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
%struct.colocated_params = type { i32, i32, i32, [6 x [33 x i64]], i8***, i64***, i16****, i8**, [6 x [33 x i64]], i8***, i64***, i16****, i8**, [6 x [33 x i64]], i8***, i64***, i16****, i8**, i8, i8** }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.bufferingperiod_information_struct = type { i32, [32 x i32], [32 x i32], %struct.Bitstream*, i32 }
%struct.pictiming_information_struct = type { i32, i32, i32, [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.Bitstream*, i32 }
%struct.timeb = type { i64, i16, i16, i16 }

@PicParSet = common global [256 x %struct.pic_parameter_set_rbsp_t*] zeroinitializer, align 16
@input = external global %struct.InputParameters*, align 8
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@GenerateSequenceParameterSet.SubWidthC = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 2, i32 1], align 16
@GenerateSequenceParameterSet.SubHeightC = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 1, i32 1], align 16
@img = external global %struct.ImageParameters*, align 8
@log2_max_frame_num_minus4 = common global i32 0, align 4
@log2_max_pic_order_cnt_lsb_minus4 = common global i32 0, align 4
@Co_located = external global %struct.colocated_params*, align 8
@.str = private unnamed_addr constant [46 x i8] c"automatic frame cropping (width) not possible\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"automatic frame cropping (height) not possible\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"GeneratePictureParameterSet: slice_group_id\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Parset.c: slice_group_map_type invalid, default\0A\00", align 1
@ZZ_SCAN = internal constant [16 x i8] c"\00\01\04\08\05\02\03\06\09\0C\0D\0A\07\0B\0E\0F", align 16
@ZZ_SCAN8 = internal constant [64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", align 16
@.str.4 = private unnamed_addr constant [17 x i8] c"   : delta_sl   \00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"SeqParameterSet:bitstream\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"SPS: profile_idc\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set0_flag\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set1_flag\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set2_flag\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set3_flag\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"SPS: reserved_zero_4bits\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"SPS: level_idc\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"SPS: seq_parameter_set_id\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"SPS: chroma_format_idc\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"SPS: residue_transform_flag\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"SPS: bit_depth_luma_minus8\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"SPS: bit_depth_chroma_minus8\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"SPS: lossless_qpprime_y_zero_flag\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"SPS: seq_scaling_matrix_present_flag\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"SPS: seq_scaling_list_present_flag\00", align 1
@ScalingList4x4input = external global [6 x [16 x i16]], align 16
@ScalingList4x4 = external global [6 x [16 x i16]], align 16
@UseDefaultScalingMatrix4x4Flag = external global [6 x i16], align 2
@ScalingList8x8input = external global [2 x [64 x i16]], align 16
@ScalingList8x8 = external global [2 x [64 x i16]], align 16
@UseDefaultScalingMatrix8x8Flag = external global [2 x i16], align 2
@.str.21 = private unnamed_addr constant [31 x i8] c"SPS: log2_max_frame_num_minus4\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"SPS: pic_order_cnt_type\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"SPS: log2_max_pic_order_cnt_lsb_minus4\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"SPS: delta_pic_order_always_zero_flag\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"SPS: offset_for_non_ref_pic\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"SPS: offset_for_top_to_bottom_field\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"SPS: num_ref_frames_in_pic_order_cnt_cycle\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"SPS: offset_for_ref_frame\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"SPS: num_ref_frames\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"SPS: gaps_in_frame_num_value_allowed_flag\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"SPS: pic_width_in_mbs_minus1\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"SPS: pic_height_in_map_units_minus1\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"SPS: frame_mbs_only_flag\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"SPS: mb_adaptive_frame_field_flag\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"SPS: direct_8x8_inference_flag\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"SPS: frame_cropping_flag\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"SPS: frame_cropping_rect_left_offset\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"SPS: frame_cropping_rect_right_offset\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"SPS: frame_cropping_rect_top_offset\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"SPS: frame_cropping_rect_bottom_offset\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"SPS: vui_parameters_present_flag\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"PicParameterSet:bitstream\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"PPS: pic_parameter_set_id\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"PPS: seq_parameter_set_id\00", align 1
@.str.45 = private unnamed_addr constant [30 x i8] c"PPS: entropy_coding_mode_flag\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"PPS: pic_order_present_flag\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"PPS: num_slice_groups_minus1\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"PPS: slice_group_map_type\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"PPS: run_length_minus1[i]\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"PPS: top_left[i]\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"PPS: bottom_right[i]\00", align 1
@.str.52 = private unnamed_addr constant [39 x i8] c"PPS: slice_group_change_direction_flag\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c"PPS: slice_group_change_rate_minus1\00", align 1
@.str.54 = private unnamed_addr constant [34 x i8] c"PPS: pic_size_in_map_units_minus1\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"PPS: >slice_group_id[i]\00", align 1
@.str.56 = private unnamed_addr constant [34 x i8] c"PPS: num_ref_idx_l0_active_minus1\00", align 1
@.str.57 = private unnamed_addr constant [34 x i8] c"PPS: num_ref_idx_l1_active_minus1\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"PPS: weighted_pred_flag\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"PPS: weighted_bipred_idc\00", align 1
@.str.60 = private unnamed_addr constant [25 x i8] c"PPS: pic_init_qp_minus26\00", align 1
@.str.61 = private unnamed_addr constant [25 x i8] c"PPS: pic_init_qs_minus26\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"PPS: chroma_qp_index_offset\00", align 1
@.str.63 = private unnamed_addr constant [44 x i8] c"PPS: deblocking_filter_control_present_flag\00", align 1
@.str.64 = private unnamed_addr constant [33 x i8] c"PPS: constrained_intra_pred_flag\00", align 1
@.str.65 = private unnamed_addr constant [36 x i8] c"PPS: redundant_pic_cnt_present_flag\00", align 1
@.str.66 = private unnamed_addr constant [29 x i8] c"PPS: transform_8x8_mode_flag\00", align 1
@.str.67 = private unnamed_addr constant [37 x i8] c"PPS: pic_scaling_matrix_present_flag\00", align 1
@.str.68 = private unnamed_addr constant [35 x i8] c"PPS: pic_scaling_list_present_flag\00", align 1
@.str.69 = private unnamed_addr constant [35 x i8] c"PPS: second_chroma_qp_index_offset\00", align 1
@GenerateSEImessage_rbsp.uuid_message = private unnamed_addr constant [9 x i8] c"RandomMSG", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"Empty Message\00", align 1
@.str.71 = private unnamed_addr constant [28 x i8] c"SEI: last_payload_type_byte\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"SEI: ff_byte\00", align 1
@.str.73 = private unnamed_addr constant [28 x i8] c"SEI: last_payload_size_byte\00", align 1
@.str.74 = private unnamed_addr constant [24 x i8] c"SEI: uuid_iso_iec_11578\00", align 1
@.str.75 = private unnamed_addr constant [28 x i8] c"SEI: user_data_payload_byte\00", align 1
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
@WriteNALU = common global i32 (%struct.NALU_t*)* null, align 8
@seiHasBufferingPeriod_info = common global i32 0, align 4
@seiBufferingPeriod = common global %struct.bufferingperiod_information_struct zeroinitializer, align 8
@seiHasPicTiming_info = common global i32 0, align 4
@seiPicTiming = common global %struct.pictiming_information_struct zeroinitializer, align 8
@.str.76 = private unnamed_addr constant [58 x i8] c"VUI: writing Sequence Parameter VUI to signal RGB format\0A\00", align 1
@.str.77 = private unnamed_addr constant [36 x i8] c"VUI: aspect_ratio_info_present_flag\00", align 1
@.str.78 = private unnamed_addr constant [32 x i8] c"VUI: overscan_info_present_flag\00", align 1
@.str.79 = private unnamed_addr constant [36 x i8] c"VUI: video_signal_type_present_flag\00", align 1
@.str.80 = private unnamed_addr constant [18 x i8] c"VUI: video format\00", align 1
@.str.81 = private unnamed_addr constant [27 x i8] c"VUI: video_full_range_flag\00", align 1
@.str.82 = private unnamed_addr constant [36 x i8] c"VUI: color_description_present_flag\00", align 1
@.str.83 = private unnamed_addr constant [22 x i8] c"VUI: colour primaries\00", align 1
@.str.84 = private unnamed_addr constant [30 x i8] c"VUI: transfer characteristics\00", align 1
@.str.85 = private unnamed_addr constant [25 x i8] c"VUI: matrix coefficients\00", align 1
@.str.86 = private unnamed_addr constant [34 x i8] c"VUI: chroma_loc_info_present_flag\00", align 1
@.str.87 = private unnamed_addr constant [30 x i8] c"VUI: timing_info_present_flag\00", align 1
@.str.88 = private unnamed_addr constant [37 x i8] c"VUI: nal_hrd_parameters_present_flag\00", align 1
@.str.89 = private unnamed_addr constant [37 x i8] c"VUI: vcl_hrd_parameters_present_flag\00", align 1
@.str.90 = private unnamed_addr constant [28 x i8] c"VUI: pic_struc_present_flag\00", align 1
@.str.91 = private unnamed_addr constant [32 x i8] c"VUI: bitstream_restriction_flag\00", align 1
@.str.92 = private unnamed_addr constant [22 x i8] c"VUI: aspect_ratio_idc\00", align 1
@.str.93 = private unnamed_addr constant [23 x i8] c"VUI: num_units_in_tick\00", align 1
@.str.94 = private unnamed_addr constant [16 x i8] c"VUI: time_scale\00", align 1
@.str.95 = private unnamed_addr constant [27 x i8] c"VUI: fixed_frame_rate_flag\00", align 1
@.str.96 = private unnamed_addr constant [45 x i8] c"VUI: motion_vectors_over_pic_boundaries_flag\00", align 1
@.str.97 = private unnamed_addr constant [29 x i8] c"VUI: max_bytes_per_pic_denom\00", align 1
@.str.98 = private unnamed_addr constant [27 x i8] c"VUI: max_bits_per_mb_denom\00", align 1
@.str.99 = private unnamed_addr constant [35 x i8] c"VUI: log2_max_mv_length_horizontal\00", align 1
@.str.100 = private unnamed_addr constant [33 x i8] c"VUI: log2_max_mv_length_vertical\00", align 1
@.str.101 = private unnamed_addr constant [24 x i8] c"VUI: num_reorder_frames\00", align 1
@.str.102 = private unnamed_addr constant [29 x i8] c"VUI: max_dec_frame_buffering\00", align 1
@.str.103 = private unnamed_addr constant [76 x i8] c"Sequence Parameter VUI not yet implemented, this should never happen, exit\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @GenerateParameterSets() #0 {
entry:
  %i = alloca i32, align 4
  %sps = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  store %struct.seq_parameter_set_rbsp_t* null, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %call = call %struct.seq_parameter_set_rbsp_t* @AllocSPS()
  store %struct.seq_parameter_set_rbsp_t* %call, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 %idxprom
  store %struct.pic_parameter_set_rbsp_t* null, %struct.pic_parameter_set_rbsp_t** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %3 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  call void @GenerateSequenceParameterSet(%struct.seq_parameter_set_rbsp_t* %3, i32 0)
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 34
  %5 = load i32, i32* %GenerateMultiplePPS, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.else.12

if.then:                                          ; preds = %for.end
  %call1 = call %struct.pic_parameter_set_rbsp_t* @AllocPPS()
  store %struct.pic_parameter_set_rbsp_t* %call1, %struct.pic_parameter_set_rbsp_t** getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 0), align 8
  %call2 = call %struct.pic_parameter_set_rbsp_t* @AllocPPS()
  store %struct.pic_parameter_set_rbsp_t* %call2, %struct.pic_parameter_set_rbsp_t** getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 1), align 8
  %call3 = call %struct.pic_parameter_set_rbsp_t* @AllocPPS()
  store %struct.pic_parameter_set_rbsp_t* %call3, %struct.pic_parameter_set_rbsp_t** getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 2), align 8
  %6 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %profile_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %6, i32 0, i32 1
  %7 = load i32, i32* %profile_idc, align 4
  %cmp4 = icmp uge i32 %7, 100
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %8 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 0), align 8
  %9 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %10 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %cb_qp_index_offset = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %10, i32 0, i32 177
  %11 = load i32, i32* %cb_qp_index_offset, align 4
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %cr_qp_index_offset = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 178
  %13 = load i32, i32* %cr_qp_index_offset, align 4
  call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %8, %struct.seq_parameter_set_rbsp_t* %9, i32 0, i32 0, i32 0, i32 %11, i32 %13)
  %14 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 1), align 8
  %15 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %16 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %cb_qp_index_offset6 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %16, i32 0, i32 177
  %17 = load i32, i32* %cb_qp_index_offset6, align 4
  %18 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %cr_qp_index_offset7 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %18, i32 0, i32 178
  %19 = load i32, i32* %cr_qp_index_offset7, align 4
  call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %14, %struct.seq_parameter_set_rbsp_t* %15, i32 1, i32 1, i32 1, i32 %17, i32 %19)
  %20 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 2), align 8
  %21 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %22 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %cb_qp_index_offset8 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %22, i32 0, i32 177
  %23 = load i32, i32* %cb_qp_index_offset8, align 4
  %24 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %cr_qp_index_offset9 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %24, i32 0, i32 178
  %25 = load i32, i32* %cr_qp_index_offset9, align 4
  call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %20, %struct.seq_parameter_set_rbsp_t* %21, i32 2, i32 1, i32 2, i32 %23, i32 %25)
  br label %if.end

if.else:                                          ; preds = %if.then
  %26 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 0), align 8
  %27 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %28 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %chroma_qp_index_offset = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %28, i32 0, i32 105
  %29 = load i32, i32* %chroma_qp_index_offset, align 4
  call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %26, %struct.seq_parameter_set_rbsp_t* %27, i32 0, i32 0, i32 0, i32 %29, i32 0)
  %30 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 1), align 8
  %31 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %32 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %chroma_qp_index_offset10 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %32, i32 0, i32 105
  %33 = load i32, i32* %chroma_qp_index_offset10, align 4
  call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %30, %struct.seq_parameter_set_rbsp_t* %31, i32 1, i32 1, i32 1, i32 %33, i32 0)
  %34 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 2), align 8
  %35 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %36 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %chroma_qp_index_offset11 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %36, i32 0, i32 105
  %37 = load i32, i32* %chroma_qp_index_offset11, align 4
  call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %34, %struct.seq_parameter_set_rbsp_t* %35, i32 2, i32 1, i32 2, i32 %37, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %if.end.24

if.else.12:                                       ; preds = %for.end
  %call13 = call %struct.pic_parameter_set_rbsp_t* @AllocPPS()
  store %struct.pic_parameter_set_rbsp_t* %call13, %struct.pic_parameter_set_rbsp_t** getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 0), align 8
  %38 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %profile_idc14 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %38, i32 0, i32 1
  %39 = load i32, i32* %profile_idc14, align 4
  %cmp15 = icmp uge i32 %39, 100
  br i1 %cmp15, label %if.then.16, label %if.else.19

if.then.16:                                       ; preds = %if.else.12
  %40 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 0), align 8
  %41 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %42 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %WeightedPrediction = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %42, i32 0, i32 59
  %43 = load i32, i32* %WeightedPrediction, align 4
  %44 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %WeightedBiprediction = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %44, i32 0, i32 60
  %45 = load i32, i32* %WeightedBiprediction, align 4
  %46 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %cb_qp_index_offset17 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %46, i32 0, i32 177
  %47 = load i32, i32* %cb_qp_index_offset17, align 4
  %48 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %cr_qp_index_offset18 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %48, i32 0, i32 178
  %49 = load i32, i32* %cr_qp_index_offset18, align 4
  call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %40, %struct.seq_parameter_set_rbsp_t* %41, i32 0, i32 %43, i32 %45, i32 %47, i32 %49)
  br label %if.end.23

if.else.19:                                       ; preds = %if.else.12
  %50 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 0), align 8
  %51 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %52 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %WeightedPrediction20 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %52, i32 0, i32 59
  %53 = load i32, i32* %WeightedPrediction20, align 4
  %54 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %WeightedBiprediction21 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %54, i32 0, i32 60
  %55 = load i32, i32* %WeightedBiprediction21, align 4
  %56 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %chroma_qp_index_offset22 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %56, i32 0, i32 105
  %57 = load i32, i32* %chroma_qp_index_offset22, align 4
  call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %50, %struct.seq_parameter_set_rbsp_t* %51, i32 0, i32 %53, i32 %55, i32 %57, i32 0)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.19, %if.then.16
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end
  %58 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  store %struct.seq_parameter_set_rbsp_t* %58, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %59 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 0), align 8
  store %struct.pic_parameter_set_rbsp_t* %59, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  ret void
}

declare %struct.seq_parameter_set_rbsp_t* @AllocSPS() #1

; Function Attrs: nounwind uwtable
define void @GenerateSequenceParameterSet(%struct.seq_parameter_set_rbsp_t* %sps, i32 %SPS_id) #0 {
entry:
  %sps.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %SPS_id.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %SubWidthC = alloca [4 x i32], align 16
  %SubHeightC = alloca [4 x i32], align 16
  %frext_profile = alloca i32, align 4
  %PicWidthInMbs = alloca i32, align 4
  %PicHeightInMapUnits = alloca i32, align 4
  %FrameHeightInMbs = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct.seq_parameter_set_rbsp_t* %sps, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  store i32 %SPS_id, i32* %SPS_id.addr, align 4
  %0 = bitcast [4 x i32]* %SubWidthC to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([4 x i32]* @GenerateSequenceParameterSet.SubWidthC to i8*), i64 16, i32 16, i1 false)
  %1 = bitcast [4 x i32]* %SubHeightC to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([4 x i32]* @GenerateSequenceParameterSet.SubHeightC to i8*), i64 16, i32 16, i1 false)
  %call = call i32 @IdentifyProfile()
  %cmp = icmp eq i32 %call, 100
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i32 @IdentifyProfile()
  %cmp2 = icmp eq i32 %call1, 110
  br i1 %cmp2, label %lor.end, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %call4 = call i32 @IdentifyProfile()
  %cmp5 = icmp eq i32 %call4, 122
  br i1 %cmp5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.3
  %call6 = call i32 @IdentifyProfile()
  %cmp7 = icmp eq i32 %call6, 144
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.3, %lor.lhs.false, %entry
  %2 = phi i1 [ true, %lor.lhs.false.3 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp7, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32
  store i32 %lor.ext, i32* %frext_profile, align 4
  %call8 = call i32 @IdentifyProfile()
  %3 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %profile_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %3, i32 0, i32 1
  store i32 %call8, i32* %profile_idc, align 4
  %call9 = call i32 @IdentifyLevel()
  %4 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %level_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %4, i32 0, i32 6
  store i32 %call9, i32* %level_idc, align 4
  %5 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %constrained_set0_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %5, i32 0, i32 2
  store i32 0, i32* %constrained_set0_flag, align 4
  %6 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %constrained_set1_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %6, i32 0, i32 3
  store i32 0, i32* %constrained_set1_flag, align 4
  %7 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %constrained_set2_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %7, i32 0, i32 4
  store i32 0, i32* %constrained_set2_flag, align 4
  %8 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %level_idc10 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %8, i32 0, i32 6
  %9 = load i32, i32* %level_idc10, align 4
  %cmp11 = icmp eq i32 %9, 9
  br i1 %cmp11, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.end
  %10 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %profile_idc12 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %10, i32 0, i32 1
  %11 = load i32, i32* %profile_idc12, align 4
  %cmp13 = icmp ult i32 %11, 100
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %constrained_set3_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %12, i32 0, i32 5
  store i32 1, i32* %constrained_set3_flag, align 4
  %13 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %level_idc14 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %13, i32 0, i32 6
  store i32 11, i32* %level_idc14, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %lor.end
  %14 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %constrained_set3_flag15 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %14, i32 0, i32 5
  store i32 0, i32* %constrained_set3_flag15, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_parameter_set_id = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %15, i32 0, i32 7
  store i32 0, i32* %seq_parameter_set_id, align 4
  %16 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BitDepthLuma = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %16, i32 0, i32 172
  %17 = load i32, i32* %BitDepthLuma, align 4
  %sub = sub nsw i32 %17, 8
  %18 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %bit_depth_luma_minus8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %18, i32 0, i32 11
  store i32 %sub, i32* %bit_depth_luma_minus8, align 4
  %19 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BitDepthChroma = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %19, i32 0, i32 173
  %20 = load i32, i32* %BitDepthChroma, align 4
  %sub16 = sub nsw i32 %20, 8
  %21 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %bit_depth_chroma_minus8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %21, i32 0, i32 12
  store i32 %sub16, i32* %bit_depth_chroma_minus8, align 4
  %22 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %lossless_qpprime_y_zero_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %22, i32 0, i32 179
  %23 = load i32, i32* %lossless_qpprime_y_zero_flag, align 4
  %24 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %profile_idc17 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %24, i32 0, i32 1
  %25 = load i32, i32* %profile_idc17, align 4
  %cmp18 = icmp eq i32 %25, 144
  %conv = zext i1 %cmp18 to i32
  %and = and i32 %23, %conv
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lossless_qpprime_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 161
  store i32 %and, i32* %lossless_qpprime_flag, align 4
  %27 = load i32, i32* @log2_max_frame_num_minus4, align 4
  %28 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %log2_max_frame_num_minus4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %28, i32 0, i32 13
  store i32 %27, i32* %log2_max_frame_num_minus4, align 4
  %29 = load i32, i32* @log2_max_pic_order_cnt_lsb_minus4, align 4
  %30 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %log2_max_pic_order_cnt_lsb_minus4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %30, i32 0, i32 15
  store i32 %29, i32* %log2_max_pic_order_cnt_lsb_minus4, align 4
  %31 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %pic_order_cnt_type = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %31, i32 0, i32 150
  %32 = load i32, i32* %pic_order_cnt_type, align 4
  %33 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_order_cnt_type19 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %33, i32 0, i32 14
  store i32 %32, i32* %pic_order_cnt_type19, align 4
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_frames_in_pic_order_cnt_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 105
  %35 = load i32, i32* %num_ref_frames_in_pic_order_cnt_cycle, align 4
  %36 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %num_ref_frames_in_pic_order_cnt_cycle20 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %36, i32 0, i32 19
  store i32 %35, i32* %num_ref_frames_in_pic_order_cnt_cycle20, align 4
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_always_zero_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 102
  %38 = load i32, i32* %delta_pic_order_always_zero_flag, align 4
  %39 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %delta_pic_order_always_zero_flag21 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %39, i32 0, i32 16
  store i32 %38, i32* %delta_pic_order_always_zero_flag21, align 4
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %offset_for_non_ref_pic = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 103
  %41 = load i32, i32* %offset_for_non_ref_pic, align 4
  %42 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %offset_for_non_ref_pic22 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %42, i32 0, i32 17
  store i32 %41, i32* %offset_for_non_ref_pic22, align 4
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %offset_for_top_to_bottom_field = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 104
  %44 = load i32, i32* %offset_for_top_to_bottom_field, align 4
  %45 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %offset_for_top_to_bottom_field23 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %45, i32 0, i32 18
  store i32 %44, i32* %offset_for_top_to_bottom_field23, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %46 = load i32, i32* %i, align 4
  %47 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_frames_in_pic_order_cnt_cycle24 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %47, i32 0, i32 105
  %48 = load i32, i32* %num_ref_frames_in_pic_order_cnt_cycle24, align 4
  %cmp25 = icmp ult i32 %46, %48
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load i32, i32* %i, align 4
  %idxprom = zext i32 %49 to i64
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %offset_for_ref_frame = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 106
  %arrayidx = getelementptr inbounds [1 x i32], [1 x i32]* %offset_for_ref_frame, i32 0, i64 %idxprom
  %51 = load i32, i32* %arrayidx, align 4
  %52 = load i32, i32* %i, align 4
  %idxprom27 = zext i32 %52 to i64
  %53 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %offset_for_ref_frame28 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %53, i32 0, i32 20
  %arrayidx29 = getelementptr inbounds [256 x i32], [256 x i32]* %offset_for_ref_frame28, i32 0, i64 %idxprom27
  store i32 %51, i32* %arrayidx29, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i32, i32* %i, align 4
  %inc = add i32 %54, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %55, i32 0, i32 8
  %56 = load i32, i32* %num_ref_frames, align 4
  %57 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %num_ref_frames30 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %57, i32 0, i32 21
  store i32 %56, i32* %num_ref_frames30, align 4
  %58 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %gaps_in_frame_num_value_allowed_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %58, i32 0, i32 22
  store i32 0, i32* %gaps_in_frame_num_value_allowed_flag, align 4
  %59 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %59, i32 0, i32 121
  %60 = load i32, i32* %PicInterlace, align 4
  %tobool = icmp ne i32 %60, 0
  br i1 %tobool, label %lor.end.33, label %lor.rhs.31

lor.rhs.31:                                       ; preds = %for.end
  %61 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %61, i32 0, i32 122
  %62 = load i32, i32* %MbInterlace, align 4
  %tobool32 = icmp ne i32 %62, 0
  br label %lor.end.33

lor.end.33:                                       ; preds = %lor.rhs.31, %for.end
  %63 = phi i1 [ true, %for.end ], [ %tobool32, %lor.rhs.31 ]
  %lnot = xor i1 %63, true
  %lnot.ext = zext i1 %lnot to i32
  %64 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %64, i32 0, i32 25
  store i32 %lnot.ext, i32* %frame_mbs_only_flag, align 4
  %65 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %65, i32 0, i32 14
  %66 = load i32, i32* %img_width, align 4
  %67 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_right = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %67, i32 0, i32 166
  %68 = load i32, i32* %auto_crop_right, align 4
  %add = add nsw i32 %66, %68
  %div = sdiv i32 %add, 16
  %sub35 = sub nsw i32 %div, 1
  %69 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_width_in_mbs_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %69, i32 0, i32 23
  store i32 %sub35, i32* %pic_width_in_mbs_minus1, align 4
  %70 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %70, i32 0, i32 15
  %71 = load i32, i32* %img_height, align 4
  %72 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_bottom = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %72, i32 0, i32 167
  %73 = load i32, i32* %auto_crop_bottom, align 4
  %add36 = add nsw i32 %71, %73
  %div37 = sdiv i32 %add36, 16
  %74 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_mbs_only_flag38 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %74, i32 0, i32 25
  %75 = load i32, i32* %frame_mbs_only_flag38, align 4
  %sub39 = sub i32 2, %75
  %div40 = udiv i32 %div37, %sub39
  %sub41 = sub i32 %div40, 1
  %76 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_height_in_map_units_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %76, i32 0, i32 24
  store i32 %sub41, i32* %pic_height_in_map_units_minus1, align 4
  %77 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace42 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %77, i32 0, i32 122
  %78 = load i32, i32* %MbInterlace42, align 4
  %cmp43 = icmp ne i32 0, %78
  %conv44 = zext i1 %cmp43 to i32
  %79 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %mb_adaptive_frame_field_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %79, i32 0, i32 26
  store i32 %conv44, i32* %mb_adaptive_frame_field_flag, align 4
  %80 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %directInferenceFlag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %80, i32 0, i32 45
  %81 = load i32, i32* %directInferenceFlag, align 4
  %82 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %direct_8x8_inference_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %82, i32 0, i32 27
  store i32 %81, i32* %direct_8x8_inference_flag, align 4
  %83 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rgb_input_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %83, i32 0, i32 176
  %84 = load i32, i32* %rgb_input_flag, align 4
  %tobool45 = icmp ne i32 %84, 0
  br i1 %tobool45, label %land.lhs.true.46, label %lor.rhs.49

land.lhs.true.46:                                 ; preds = %lor.end.33
  %85 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %yuv_format = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %85, i32 0, i32 16
  %86 = load i32, i32* %yuv_format, align 4
  %cmp47 = icmp eq i32 %86, 3
  br i1 %cmp47, label %lor.end.51, label %lor.rhs.49

lor.rhs.49:                                       ; preds = %land.lhs.true.46, %lor.end.33
  %87 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Generate_SEIVUI = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %87, i32 0, i32 35
  %88 = load i32, i32* %Generate_SEIVUI, align 4
  %tobool50 = icmp ne i32 %88, 0
  br label %lor.end.51

lor.end.51:                                       ; preds = %lor.rhs.49, %land.lhs.true.46
  %89 = phi i1 [ true, %land.lhs.true.46 ], [ %tobool50, %lor.rhs.49 ]
  %lor.ext52 = zext i1 %89 to i32
  %90 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_parameters_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %90, i32 0, i32 33
  store i32 %lor.ext52, i32* %vui_parameters_present_flag, align 4
  %91 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %yuv_format53 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %91, i32 0, i32 16
  %92 = load i32, i32* %yuv_format53, align 4
  %93 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %93, i32 0, i32 8
  store i32 %92, i32* %chroma_format_idc, align 4
  %94 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_width_in_mbs_minus154 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %94, i32 0, i32 23
  %95 = load i32, i32* %pic_width_in_mbs_minus154, align 4
  %add55 = add i32 %95, 1
  store i32 %add55, i32* %PicWidthInMbs, align 4
  %96 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_height_in_map_units_minus156 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %96, i32 0, i32 24
  %97 = load i32, i32* %pic_height_in_map_units_minus156, align 4
  %add57 = add i32 %97, 1
  store i32 %add57, i32* %PicHeightInMapUnits, align 4
  %98 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_mbs_only_flag58 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %98, i32 0, i32 25
  %99 = load i32, i32* %frame_mbs_only_flag58, align 4
  %sub59 = sub i32 2, %99
  %100 = load i32, i32* %PicHeightInMapUnits, align 4
  %mul = mul i32 %sub59, %100
  store i32 %mul, i32* %FrameHeightInMbs, align 4
  %101 = load i32, i32* %PicWidthInMbs, align 4
  %mul60 = mul nsw i32 %101, 16
  store i32 %mul60, i32* %width, align 4
  %102 = load i32, i32* %FrameHeightInMbs, align 4
  %mul61 = mul nsw i32 %102, 16
  store i32 %mul61, i32* %height, align 4
  %103 = load i32, i32* %width, align 4
  %104 = load i32, i32* %height, align 4
  %105 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %mb_adaptive_frame_field_flag62 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %105, i32 0, i32 26
  %106 = load i32, i32* %mb_adaptive_frame_field_flag62, align 4
  %call63 = call %struct.colocated_params* @alloc_colocated(i32 %103, i32 %104, i32 %106)
  store %struct.colocated_params* %call63, %struct.colocated_params** @Co_located, align 8
  %107 = load i32, i32* %frext_profile, align 4
  %tobool64 = icmp ne i32 %107, 0
  br i1 %tobool64, label %if.then.65, label %if.else.98

if.then.65:                                       ; preds = %lor.end.51
  %108 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ScalingMatrixPresentFlag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %108, i32 0, i32 167
  %109 = load i32, i32* %ScalingMatrixPresentFlag, align 4
  %and66 = and i32 %109, 1
  %110 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_matrix_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %110, i32 0, i32 9
  store i32 %and66, i32* %seq_scaling_matrix_present_flag, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.95, %if.then.65
  %111 = load i32, i32* %i, align 4
  %cmp68 = icmp ult i32 %111, 8
  br i1 %cmp68, label %for.body.70, label %for.end.97

for.body.70:                                      ; preds = %for.cond.67
  %112 = load i32, i32* %i, align 4
  %cmp71 = icmp ult i32 %112, 6
  br i1 %cmp71, label %if.then.73, label %if.else.79

if.then.73:                                       ; preds = %for.body.70
  %113 = load i32, i32* %i, align 4
  %idxprom74 = zext i32 %113 to i64
  %114 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ScalingListPresentFlag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %114, i32 0, i32 168
  %arrayidx75 = getelementptr inbounds [8 x i32], [8 x i32]* %ScalingListPresentFlag, i32 0, i64 %idxprom74
  %115 = load i32, i32* %arrayidx75, align 4
  %and76 = and i32 %115, 1
  %116 = load i32, i32* %i, align 4
  %idxprom77 = zext i32 %116 to i64
  %117 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_list_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %117, i32 0, i32 10
  %arrayidx78 = getelementptr inbounds [8 x i32], [8 x i32]* %seq_scaling_list_present_flag, i32 0, i64 %idxprom77
  store i32 %and76, i32* %arrayidx78, align 4
  br label %if.end.94

if.else.79:                                       ; preds = %for.body.70
  %118 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %118, i32 0, i32 153
  %119 = load i32, i32* %Transform8x8Mode, align 4
  %tobool80 = icmp ne i32 %119, 0
  br i1 %tobool80, label %if.then.81, label %if.else.89

if.then.81:                                       ; preds = %if.else.79
  %120 = load i32, i32* %i, align 4
  %idxprom82 = zext i32 %120 to i64
  %121 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ScalingListPresentFlag83 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %121, i32 0, i32 168
  %arrayidx84 = getelementptr inbounds [8 x i32], [8 x i32]* %ScalingListPresentFlag83, i32 0, i64 %idxprom82
  %122 = load i32, i32* %arrayidx84, align 4
  %and85 = and i32 %122, 1
  %123 = load i32, i32* %i, align 4
  %idxprom86 = zext i32 %123 to i64
  %124 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_list_present_flag87 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %124, i32 0, i32 10
  %arrayidx88 = getelementptr inbounds [8 x i32], [8 x i32]* %seq_scaling_list_present_flag87, i32 0, i64 %idxprom86
  store i32 %and85, i32* %arrayidx88, align 4
  br label %if.end.93

if.else.89:                                       ; preds = %if.else.79
  %125 = load i32, i32* %i, align 4
  %idxprom90 = zext i32 %125 to i64
  %126 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_list_present_flag91 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %126, i32 0, i32 10
  %arrayidx92 = getelementptr inbounds [8 x i32], [8 x i32]* %seq_scaling_list_present_flag91, i32 0, i64 %idxprom90
  store i32 0, i32* %arrayidx92, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.89, %if.then.81
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.73
  br label %for.inc.95

for.inc.95:                                       ; preds = %if.end.94
  %127 = load i32, i32* %i, align 4
  %inc96 = add i32 %127, 1
  store i32 %inc96, i32* %i, align 4
  br label %for.cond.67

for.end.97:                                       ; preds = %for.cond.67
  br label %if.end.110

if.else.98:                                       ; preds = %lor.end.51
  %128 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_matrix_present_flag99 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %128, i32 0, i32 9
  store i32 0, i32* %seq_scaling_matrix_present_flag99, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.107, %if.else.98
  %129 = load i32, i32* %i, align 4
  %cmp101 = icmp ult i32 %129, 8
  br i1 %cmp101, label %for.body.103, label %for.end.109

for.body.103:                                     ; preds = %for.cond.100
  %130 = load i32, i32* %i, align 4
  %idxprom104 = zext i32 %130 to i64
  %131 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_list_present_flag105 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %131, i32 0, i32 10
  %arrayidx106 = getelementptr inbounds [8 x i32], [8 x i32]* %seq_scaling_list_present_flag105, i32 0, i64 %idxprom104
  store i32 0, i32* %arrayidx106, align 4
  br label %for.inc.107

for.inc.107:                                      ; preds = %for.body.103
  %132 = load i32, i32* %i, align 4
  %inc108 = add i32 %132, 1
  store i32 %inc108, i32* %i, align 4
  br label %for.cond.100

for.end.109:                                      ; preds = %for.cond.100
  br label %if.end.110

if.end.110:                                       ; preds = %for.end.109, %for.end.97
  %133 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_right111 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %133, i32 0, i32 166
  %134 = load i32, i32* %auto_crop_right111, align 4
  %tobool112 = icmp ne i32 %134, 0
  br i1 %tobool112, label %if.then.116, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %if.end.110
  %135 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_bottom114 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %135, i32 0, i32 167
  %136 = load i32, i32* %auto_crop_bottom114, align 4
  %tobool115 = icmp ne i32 %136, 0
  br i1 %tobool115, label %if.then.116, label %if.else.148

if.then.116:                                      ; preds = %lor.lhs.false.113, %if.end.110
  %137 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %137, i32 0, i32 28
  store i32 1, i32* %frame_cropping_flag, align 4
  %138 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_rect_left_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %138, i32 0, i32 29
  store i32 0, i32* %frame_cropping_rect_left_offset, align 4
  %139 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_rect_top_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %139, i32 0, i32 31
  store i32 0, i32* %frame_cropping_rect_top_offset, align 4
  %140 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_right117 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %140, i32 0, i32 166
  %141 = load i32, i32* %auto_crop_right117, align 4
  %142 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %chroma_format_idc118 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %142, i32 0, i32 8
  %143 = load i32, i32* %chroma_format_idc118, align 4
  %idxprom119 = zext i32 %143 to i64
  %arrayidx120 = getelementptr inbounds [4 x i32], [4 x i32]* %SubWidthC, i32 0, i64 %idxprom119
  %144 = load i32, i32* %arrayidx120, align 4
  %div121 = sdiv i32 %141, %144
  %145 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_rect_right_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %145, i32 0, i32 30
  store i32 %div121, i32* %frame_cropping_rect_right_offset, align 4
  %146 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_bottom122 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %146, i32 0, i32 167
  %147 = load i32, i32* %auto_crop_bottom122, align 4
  %148 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %chroma_format_idc123 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %148, i32 0, i32 8
  %149 = load i32, i32* %chroma_format_idc123, align 4
  %idxprom124 = zext i32 %149 to i64
  %arrayidx125 = getelementptr inbounds [4 x i32], [4 x i32]* %SubHeightC, i32 0, i64 %idxprom124
  %150 = load i32, i32* %arrayidx125, align 4
  %151 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_mbs_only_flag126 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %151, i32 0, i32 25
  %152 = load i32, i32* %frame_mbs_only_flag126, align 4
  %sub127 = sub i32 2, %152
  %mul128 = mul i32 %150, %sub127
  %div129 = udiv i32 %147, %mul128
  %153 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_rect_bottom_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %153, i32 0, i32 32
  store i32 %div129, i32* %frame_cropping_rect_bottom_offset, align 4
  %154 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_right130 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %154, i32 0, i32 166
  %155 = load i32, i32* %auto_crop_right130, align 4
  %156 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %chroma_format_idc131 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %156, i32 0, i32 8
  %157 = load i32, i32* %chroma_format_idc131, align 4
  %idxprom132 = zext i32 %157 to i64
  %arrayidx133 = getelementptr inbounds [4 x i32], [4 x i32]* %SubWidthC, i32 0, i64 %idxprom132
  %158 = load i32, i32* %arrayidx133, align 4
  %rem = srem i32 %155, %158
  %tobool134 = icmp ne i32 %rem, 0
  br i1 %tobool134, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.then.116
  call void @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i32 0, i32 0), i32 500)
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.135, %if.then.116
  %159 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_bottom137 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %159, i32 0, i32 167
  %160 = load i32, i32* %auto_crop_bottom137, align 4
  %161 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %chroma_format_idc138 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %161, i32 0, i32 8
  %162 = load i32, i32* %chroma_format_idc138, align 4
  %idxprom139 = zext i32 %162 to i64
  %arrayidx140 = getelementptr inbounds [4 x i32], [4 x i32]* %SubHeightC, i32 0, i64 %idxprom139
  %163 = load i32, i32* %arrayidx140, align 4
  %164 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_mbs_only_flag141 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %164, i32 0, i32 25
  %165 = load i32, i32* %frame_mbs_only_flag141, align 4
  %sub142 = sub i32 2, %165
  %mul143 = mul i32 %163, %sub142
  %rem144 = urem i32 %160, %mul143
  %tobool145 = icmp ne i32 %rem144, 0
  br i1 %tobool145, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %if.end.136
  call void @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i32 0, i32 0), i32 500)
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.146, %if.end.136
  br label %if.end.150

if.else.148:                                      ; preds = %lor.lhs.false.113
  %166 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_flag149 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %166, i32 0, i32 28
  store i32 0, i32* %frame_cropping_flag149, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.else.148, %if.end.147
  ret void
}

declare %struct.pic_parameter_set_rbsp_t* @AllocPPS() #1

; Function Attrs: nounwind uwtable
define void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %pps, %struct.seq_parameter_set_rbsp_t* %sps, i32 %PPS_id, i32 %WeightedPrediction, i32 %WeightedBiprediction, i32 %cb_qp_index_offset, i32 %cr_qp_index_offset) #0 {
entry:
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %sps.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %PPS_id.addr = alloca i32, align 4
  %WeightedPrediction.addr = alloca i32, align 4
  %WeightedBiprediction.addr = alloca i32, align 4
  %cb_qp_index_offset.addr = alloca i32, align 4
  %cr_qp_index_offset.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %frext_profile = alloca i32, align 4
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  store %struct.seq_parameter_set_rbsp_t* %sps, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  store i32 %PPS_id, i32* %PPS_id.addr, align 4
  store i32 %WeightedPrediction, i32* %WeightedPrediction.addr, align 4
  store i32 %WeightedBiprediction, i32* %WeightedBiprediction.addr, align 4
  store i32 %cb_qp_index_offset, i32* %cb_qp_index_offset.addr, align 4
  store i32 %cr_qp_index_offset, i32* %cr_qp_index_offset.addr, align 4
  %call = call i32 @IdentifyProfile()
  %cmp = icmp eq i32 %call, 100
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i32 @IdentifyProfile()
  %cmp2 = icmp eq i32 %call1, 110
  br i1 %cmp2, label %lor.end, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %call4 = call i32 @IdentifyProfile()
  %cmp5 = icmp eq i32 %call4, 122
  br i1 %cmp5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.3
  %call6 = call i32 @IdentifyProfile()
  %cmp7 = icmp eq i32 %call6, 144
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.3, %lor.lhs.false, %entry
  %0 = phi i1 [ true, %lor.lhs.false.3 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp7, %lor.rhs ]
  %lor.ext = zext i1 %0 to i32
  store i32 %lor.ext, i32* %frext_profile, align 4
  %1 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_parameter_set_id = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %1, i32 0, i32 7
  %2 = load i32, i32* %seq_parameter_set_id, align 4
  %3 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %seq_parameter_set_id8 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %3, i32 0, i32 2
  store i32 %2, i32* %seq_parameter_set_id8, align 4
  %4 = load i32, i32* %PPS_id.addr, align 4
  %5 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_parameter_set_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %5, i32 0, i32 1
  store i32 %4, i32* %pic_parameter_set_id, align 4
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 74
  %7 = load i32, i32* %symbol_mode, align 4
  %cmp9 = icmp eq i32 %7, 0
  %cond = select i1 %cmp9, i32 0, i32 1
  %8 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %entropy_coding_mode_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %8, i32 0, i32 3
  store i32 %cond, i32* %entropy_coding_mode_flag, align 4
  %9 = load i32, i32* %frext_profile, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.else.35

if.then:                                          ; preds = %lor.end
  %10 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %10, i32 0, i32 153
  %11 = load i32, i32* %Transform8x8Mode, align 4
  %tobool10 = icmp ne i32 %11, 0
  %cond11 = select i1 %tobool10, i32 1, i32 0
  %12 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %transform_8x8_mode_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %12, i32 0, i32 4
  store i32 %cond11, i32* %transform_8x8_mode_flag, align 4
  %13 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ScalingMatrixPresentFlag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %13, i32 0, i32 167
  %14 = load i32, i32* %ScalingMatrixPresentFlag, align 4
  %and = and i32 %14, 2
  %shr = ashr i32 %and, 1
  %15 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_scaling_matrix_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %15, i32 0, i32 5
  store i32 %shr, i32* %pic_scaling_matrix_present_flag, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %16 = load i32, i32* %i, align 4
  %cmp12 = icmp ult i32 %16, 8
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %cmp13 = icmp ult i32 %17, 6
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %idxprom = zext i32 %18 to i64
  %19 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ScalingListPresentFlag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %19, i32 0, i32 168
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %ScalingListPresentFlag, i32 0, i64 %idxprom
  %20 = load i32, i32* %arrayidx, align 4
  %and15 = and i32 %20, 2
  %shr16 = ashr i32 %and15, 1
  %21 = load i32, i32* %i, align 4
  %idxprom17 = zext i32 %21 to i64
  %22 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_scaling_list_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %22, i32 0, i32 6
  %arrayidx18 = getelementptr inbounds [8 x i32], [8 x i32]* %pic_scaling_list_present_flag, i32 0, i64 %idxprom17
  store i32 %shr16, i32* %arrayidx18, align 4
  br label %if.end.34

if.else:                                          ; preds = %for.body
  %23 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %transform_8x8_mode_flag19 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %23, i32 0, i32 4
  %24 = load i32, i32* %transform_8x8_mode_flag19, align 4
  %tobool20 = icmp ne i32 %24, 0
  br i1 %tobool20, label %if.then.21, label %if.else.30

if.then.21:                                       ; preds = %if.else
  %25 = load i32, i32* %i, align 4
  %idxprom22 = zext i32 %25 to i64
  %26 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ScalingListPresentFlag23 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %26, i32 0, i32 168
  %arrayidx24 = getelementptr inbounds [8 x i32], [8 x i32]* %ScalingListPresentFlag23, i32 0, i64 %idxprom22
  %27 = load i32, i32* %arrayidx24, align 4
  %and25 = and i32 %27, 2
  %shr26 = ashr i32 %and25, 1
  %28 = load i32, i32* %i, align 4
  %idxprom27 = zext i32 %28 to i64
  %29 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_scaling_list_present_flag28 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %29, i32 0, i32 6
  %arrayidx29 = getelementptr inbounds [8 x i32], [8 x i32]* %pic_scaling_list_present_flag28, i32 0, i64 %idxprom27
  store i32 %shr26, i32* %arrayidx29, align 4
  br label %if.end

if.else.30:                                       ; preds = %if.else
  %30 = load i32, i32* %i, align 4
  %idxprom31 = zext i32 %30 to i64
  %31 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_scaling_list_present_flag32 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %31, i32 0, i32 6
  %arrayidx33 = getelementptr inbounds [8 x i32], [8 x i32]* %pic_scaling_list_present_flag32, i32 0, i64 %idxprom31
  store i32 0, i32* %arrayidx33, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.30, %if.then.21
  br label %if.end.34

if.end.34:                                        ; preds = %if.end, %if.then.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %32 = load i32, i32* %i, align 4
  %inc = add i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.48

if.else.35:                                       ; preds = %lor.end
  %33 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_scaling_matrix_present_flag36 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %33, i32 0, i32 5
  store i32 0, i32* %pic_scaling_matrix_present_flag36, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.43, %if.else.35
  %34 = load i32, i32* %i, align 4
  %cmp38 = icmp ult i32 %34, 8
  br i1 %cmp38, label %for.body.39, label %for.end.45

for.body.39:                                      ; preds = %for.cond.37
  %35 = load i32, i32* %i, align 4
  %idxprom40 = zext i32 %35 to i64
  %36 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_scaling_list_present_flag41 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %36, i32 0, i32 6
  %arrayidx42 = getelementptr inbounds [8 x i32], [8 x i32]* %pic_scaling_list_present_flag41, i32 0, i64 %idxprom40
  store i32 0, i32* %arrayidx42, align 4
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.39
  %37 = load i32, i32* %i, align 4
  %inc44 = add i32 %37, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond.37

for.end.45:                                       ; preds = %for.cond.37
  %38 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %transform_8x8_mode_flag46 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %38, i32 0, i32 4
  store i32 0, i32* %transform_8x8_mode_flag46, align 4
  %39 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode47 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %39, i32 0, i32 153
  store i32 0, i32* %Transform8x8Mode47, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %for.end.45, %for.end
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_order_present_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 121
  %41 = load i32, i32* %pic_order_present_flag, align 4
  %42 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_order_present_flag49 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %42, i32 0, i32 7
  store i32 %41, i32* %pic_order_present_flag49, align 4
  %43 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_slice_groups_minus1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %43, i32 0, i32 140
  %44 = load i32, i32* %num_slice_groups_minus1, align 4
  %45 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus150 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %45, i32 0, i32 8
  store i32 %44, i32* %num_slice_groups_minus150, align 4
  %46 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus151 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %46, i32 0, i32 8
  %47 = load i32, i32* %num_slice_groups_minus151, align 4
  %cmp52 = icmp ugt i32 %47, 0
  br i1 %cmp52, label %if.then.53, label %if.end.124

if.then.53:                                       ; preds = %if.end.48
  %48 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_height_in_map_units_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %48, i32 0, i32 24
  %49 = load i32, i32* %pic_height_in_map_units_minus1, align 4
  %add = add i32 %49, 1
  %50 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_width_in_mbs_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %50, i32 0, i32 23
  %51 = load i32, i32* %pic_width_in_mbs_minus1, align 4
  %add54 = add i32 %51, 1
  %mul = mul i32 %add, %add54
  %conv = zext i32 %mul to i64
  %call55 = call noalias i8* @calloc(i64 %conv, i64 1) #2
  %52 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %52, i32 0, i32 16
  store i8* %call55, i8** %slice_group_id, align 8
  %cmp56 = icmp eq i8* %call55, null
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.then.53
  call void @no_mem_exit(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.then.53
  %53 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_group_map_type = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %53, i32 0, i32 141
  %54 = load i32, i32* %slice_group_map_type, align 4
  switch i32 %54, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.74
    i32 2, label %sw.bb.76
    i32 3, label %sw.bb.96
    i32 4, label %sw.bb.96
    i32 5, label %sw.bb.96
    i32 6, label %sw.bb.101
  ]

sw.bb:                                            ; preds = %if.end.59
  %55 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type60 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %55, i32 0, i32 9
  store i32 0, i32* %slice_group_map_type60, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.71, %sw.bb
  %56 = load i32, i32* %i, align 4
  %57 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus162 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %57, i32 0, i32 8
  %58 = load i32, i32* %num_slice_groups_minus162, align 4
  %cmp63 = icmp ule i32 %56, %58
  br i1 %cmp63, label %for.body.65, label %for.end.73

for.body.65:                                      ; preds = %for.cond.61
  %59 = load i32, i32* %i, align 4
  %idxprom66 = zext i32 %59 to i64
  %60 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %run_length_minus1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %60, i32 0, i32 145
  %61 = load i32*, i32** %run_length_minus1, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %61, i64 %idxprom66
  %62 = load i32, i32* %arrayidx67, align 4
  %63 = load i32, i32* %i, align 4
  %idxprom68 = zext i32 %63 to i64
  %64 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %run_length_minus169 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %64, i32 0, i32 10
  %arrayidx70 = getelementptr inbounds [8 x i32], [8 x i32]* %run_length_minus169, i32 0, i64 %idxprom68
  store i32 %62, i32* %arrayidx70, align 4
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.body.65
  %65 = load i32, i32* %i, align 4
  %inc72 = add i32 %65, 1
  store i32 %inc72, i32* %i, align 4
  br label %for.cond.61

for.end.73:                                       ; preds = %for.cond.61
  br label %sw.epilog

sw.bb.74:                                         ; preds = %if.end.59
  %66 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type75 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %66, i32 0, i32 9
  store i32 1, i32* %slice_group_map_type75, align 4
  br label %sw.epilog

sw.bb.76:                                         ; preds = %if.end.59
  %67 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type77 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %67, i32 0, i32 9
  store i32 2, i32* %slice_group_map_type77, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.93, %sw.bb.76
  %68 = load i32, i32* %i, align 4
  %69 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus179 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %69, i32 0, i32 8
  %70 = load i32, i32* %num_slice_groups_minus179, align 4
  %cmp80 = icmp ult i32 %68, %70
  br i1 %cmp80, label %for.body.82, label %for.end.95

for.body.82:                                      ; preds = %for.cond.78
  %71 = load i32, i32* %i, align 4
  %idxprom83 = zext i32 %71 to i64
  %72 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %top_left = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %72, i32 0, i32 142
  %73 = load i32*, i32** %top_left, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %73, i64 %idxprom83
  %74 = load i32, i32* %arrayidx84, align 4
  %75 = load i32, i32* %i, align 4
  %idxprom85 = zext i32 %75 to i64
  %76 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %top_left86 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %76, i32 0, i32 11
  %arrayidx87 = getelementptr inbounds [8 x i32], [8 x i32]* %top_left86, i32 0, i64 %idxprom85
  store i32 %74, i32* %arrayidx87, align 4
  %77 = load i32, i32* %i, align 4
  %idxprom88 = zext i32 %77 to i64
  %78 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %bottom_right = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %78, i32 0, i32 143
  %79 = load i32*, i32** %bottom_right, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %79, i64 %idxprom88
  %80 = load i32, i32* %arrayidx89, align 4
  %81 = load i32, i32* %i, align 4
  %idxprom90 = zext i32 %81 to i64
  %82 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %bottom_right91 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %82, i32 0, i32 12
  %arrayidx92 = getelementptr inbounds [8 x i32], [8 x i32]* %bottom_right91, i32 0, i64 %idxprom90
  store i32 %80, i32* %arrayidx92, align 4
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.body.82
  %83 = load i32, i32* %i, align 4
  %inc94 = add i32 %83, 1
  store i32 %inc94, i32* %i, align 4
  br label %for.cond.78

for.end.95:                                       ; preds = %for.cond.78
  br label %sw.epilog

sw.bb.96:                                         ; preds = %if.end.59, %if.end.59, %if.end.59
  %84 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_group_map_type97 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %84, i32 0, i32 141
  %85 = load i32, i32* %slice_group_map_type97, align 4
  %86 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type98 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %86, i32 0, i32 9
  store i32 %85, i32* %slice_group_map_type98, align 4
  %87 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_group_change_direction_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %87, i32 0, i32 146
  %88 = load i32, i32* %slice_group_change_direction_flag, align 4
  %89 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag99 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %89, i32 0, i32 13
  store i32 %88, i32* %slice_group_change_direction_flag99, align 4
  %90 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_group_change_rate_minus1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %90, i32 0, i32 147
  %91 = load i32, i32* %slice_group_change_rate_minus1, align 4
  %92 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_rate_minus1100 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %92, i32 0, i32 14
  store i32 %91, i32* %slice_group_change_rate_minus1100, align 4
  br label %sw.epilog

sw.bb.101:                                        ; preds = %if.end.59
  %93 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type102 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %93, i32 0, i32 9
  store i32 6, i32* %slice_group_map_type102, align 4
  %94 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %94, i32 0, i32 15
  %95 = load i32, i32* %img_height, align 4
  %96 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_bottom = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %96, i32 0, i32 167
  %97 = load i32, i32* %auto_crop_bottom, align 4
  %add103 = add nsw i32 %95, %97
  %div = sdiv i32 %add103, 16
  %98 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %98, i32 0, i32 25
  %99 = load i32, i32* %frame_mbs_only_flag, align 4
  %sub = sub i32 2, %99
  %div104 = udiv i32 %div, %sub
  %100 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %100, i32 0, i32 14
  %101 = load i32, i32* %img_width, align 4
  %102 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_right = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %102, i32 0, i32 166
  %103 = load i32, i32* %auto_crop_right, align 4
  %add105 = add nsw i32 %101, %103
  %div106 = sdiv i32 %add105, 16
  %mul107 = mul i32 %div104, %div106
  %sub108 = sub i32 %mul107, 1
  %104 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_size_in_map_units_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %104, i32 0, i32 15
  store i32 %sub108, i32* %pic_size_in_map_units_minus1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.120, %sw.bb.101
  %105 = load i32, i32* %i, align 4
  %106 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_size_in_map_units_minus1110 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %106, i32 0, i32 15
  %107 = load i32, i32* %pic_size_in_map_units_minus1110, align 4
  %cmp111 = icmp ule i32 %105, %107
  br i1 %cmp111, label %for.body.113, label %for.end.122

for.body.113:                                     ; preds = %for.cond.109
  %108 = load i32, i32* %i, align 4
  %idxprom114 = zext i32 %108 to i64
  %109 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_group_id115 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %109, i32 0, i32 144
  %110 = load i8*, i8** %slice_group_id115, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %110, i64 %idxprom114
  %111 = load i8, i8* %arrayidx116, align 1
  %112 = load i32, i32* %i, align 4
  %idxprom117 = zext i32 %112 to i64
  %113 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_id118 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %113, i32 0, i32 16
  %114 = load i8*, i8** %slice_group_id118, align 8
  %arrayidx119 = getelementptr inbounds i8, i8* %114, i64 %idxprom117
  store i8 %111, i8* %arrayidx119, align 1
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.body.113
  %115 = load i32, i32* %i, align 4
  %inc121 = add i32 %115, 1
  store i32 %inc121, i32* %i, align 4
  br label %for.cond.109

for.end.122:                                      ; preds = %for.cond.109
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.59
  %call123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.122, %sw.bb.96, %for.end.95, %sw.bb.74, %for.end.73
  br label %if.end.124

if.end.124:                                       ; preds = %sw.epilog, %if.end.48
  %116 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_mbs_only_flag125 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %116, i32 0, i32 25
  %117 = load i32, i32* %frame_mbs_only_flag125, align 4
  %tobool126 = icmp ne i32 %117, 0
  br i1 %tobool126, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.124
  %118 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %num_ref_frames = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %118, i32 0, i32 21
  %119 = load i32, i32* %num_ref_frames, align 4
  %sub127 = sub i32 %119, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end.124
  %120 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %num_ref_frames128 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %120, i32 0, i32 21
  %121 = load i32, i32* %num_ref_frames128, align 4
  %mul129 = mul i32 2, %121
  %sub130 = sub i32 %mul129, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond131 = phi i32 [ %sub127, %cond.true ], [ %sub130, %cond.false ]
  %122 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_ref_idx_l0_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %122, i32 0, i32 17
  store i32 %cond131, i32* %num_ref_idx_l0_active_minus1, align 4
  %123 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_mbs_only_flag132 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %123, i32 0, i32 25
  %124 = load i32, i32* %frame_mbs_only_flag132, align 4
  %tobool133 = icmp ne i32 %124, 0
  br i1 %tobool133, label %cond.true.134, label %cond.false.137

cond.true.134:                                    ; preds = %cond.end
  %125 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %num_ref_frames135 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %125, i32 0, i32 21
  %126 = load i32, i32* %num_ref_frames135, align 4
  %sub136 = sub i32 %126, 1
  br label %cond.end.141

cond.false.137:                                   ; preds = %cond.end
  %127 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %num_ref_frames138 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %127, i32 0, i32 21
  %128 = load i32, i32* %num_ref_frames138, align 4
  %mul139 = mul i32 2, %128
  %sub140 = sub i32 %mul139, 1
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.false.137, %cond.true.134
  %cond142 = phi i32 [ %sub136, %cond.true.134 ], [ %sub140, %cond.false.137 ]
  %129 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_ref_idx_l1_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %129, i32 0, i32 18
  store i32 %cond142, i32* %num_ref_idx_l1_active_minus1, align 4
  %130 = load i32, i32* %WeightedPrediction.addr, align 4
  %131 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %131, i32 0, i32 19
  store i32 %130, i32* %weighted_pred_flag, align 4
  %132 = load i32, i32* %WeightedBiprediction.addr, align 4
  %133 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %133, i32 0, i32 20
  store i32 %132, i32* %weighted_bipred_idc, align 4
  %134 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_init_qp_minus26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %134, i32 0, i32 21
  store i32 0, i32* %pic_init_qp_minus26, align 4
  %135 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_init_qs_minus26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %135, i32 0, i32 22
  store i32 0, i32* %pic_init_qs_minus26, align 4
  %136 = load i32, i32* %cb_qp_index_offset.addr, align 4
  %137 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %chroma_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %137, i32 0, i32 23
  store i32 %136, i32* %chroma_qp_index_offset, align 4
  %138 = load i32, i32* %frext_profile, align 4
  %tobool143 = icmp ne i32 %138, 0
  br i1 %tobool143, label %if.then.144, label %if.else.147

if.then.144:                                      ; preds = %cond.end.141
  %139 = load i32, i32* %cb_qp_index_offset.addr, align 4
  %140 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %cb_qp_index_offset145 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %140, i32 0, i32 24
  store i32 %139, i32* %cb_qp_index_offset145, align 4
  %141 = load i32, i32* %cr_qp_index_offset.addr, align 4
  %142 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %cr_qp_index_offset146 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %142, i32 0, i32 25
  store i32 %141, i32* %cr_qp_index_offset146, align 4
  br label %if.end.151

if.else.147:                                      ; preds = %cond.end.141
  %143 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %chroma_qp_index_offset148 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %143, i32 0, i32 23
  %144 = load i32, i32* %chroma_qp_index_offset148, align 4
  %145 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %cr_qp_index_offset149 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %145, i32 0, i32 25
  store i32 %144, i32* %cr_qp_index_offset149, align 4
  %146 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %cb_qp_index_offset150 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %146, i32 0, i32 24
  store i32 %144, i32* %cb_qp_index_offset150, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %if.else.147, %if.then.144
  %147 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LFSendParameters = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %147, i32 0, i32 132
  %148 = load i32, i32* %LFSendParameters, align 4
  %149 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %deblocking_filter_control_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %149, i32 0, i32 26
  store i32 %148, i32* %deblocking_filter_control_present_flag, align 4
  %150 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %150, i32 0, i32 23
  %151 = load i32, i32* %UseConstrainedIntraPred, align 4
  %152 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %constrained_intra_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %152, i32 0, i32 27
  store i32 %151, i32* %constrained_intra_pred_flag, align 4
  %153 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %redundant_pic_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %153, i32 0, i32 149
  %154 = load i32, i32* %redundant_pic_flag, align 4
  %155 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %redundant_pic_cnt_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %155, i32 0, i32 28
  store i32 %154, i32* %redundant_pic_cnt_present_flag, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @FreeParameterSets() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 %idxprom
  %2 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %arrayidx, align 8
  %cmp1 = icmp ne %struct.pic_parameter_set_rbsp_t* null, %2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 %idxprom2
  %4 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %arrayidx3, align 8
  call void @FreePPS(%struct.pic_parameter_set_rbsp_t* %4)
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 %idxprom4
  store %struct.pic_parameter_set_rbsp_t* null, %struct.pic_parameter_set_rbsp_t** %arrayidx5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  call void @FreeSPS(%struct.seq_parameter_set_rbsp_t* %7)
  ret void
}

declare void @FreePPS(%struct.pic_parameter_set_rbsp_t*) #1

declare void @FreeSPS(%struct.seq_parameter_set_rbsp_t*) #1

; Function Attrs: nounwind uwtable
define %struct.NALU_t* @GenerateSeq_parameter_set_NALU() #0 {
entry:
  %n = alloca %struct.NALU_t*, align 8
  %RBSPlen = alloca i32, align 4
  %NALUlen = alloca i32, align 4
  %rbsp = alloca [64000 x i8], align 16
  %call = call %struct.NALU_t* @AllocNALU(i32 64000)
  store %struct.NALU_t* %call, %struct.NALU_t** %n, align 8
  store i32 0, i32* %RBSPlen, align 4
  %0 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %arraydecay = getelementptr inbounds [64000 x i8], [64000 x i8]* %rbsp, i32 0, i32 0
  %call1 = call i32 @GenerateSeq_parameter_set_rbsp(%struct.seq_parameter_set_rbsp_t* %0, i8* %arraydecay)
  store i32 %call1, i32* %RBSPlen, align 4
  %arraydecay2 = getelementptr inbounds [64000 x i8], [64000 x i8]* %rbsp, i32 0, i32 0
  %1 = load %struct.NALU_t*, %struct.NALU_t** %n, align 8
  %2 = load i32, i32* %RBSPlen, align 4
  %call3 = call i32 @RBSPtoNALU(i8* %arraydecay2, %struct.NALU_t* %1, i32 %2, i32 7, i32 3, i32 0, i32 1)
  store i32 %call3, i32* %NALUlen, align 4
  %3 = load %struct.NALU_t*, %struct.NALU_t** %n, align 8
  %startcodeprefix_len = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %3, i32 0, i32 0
  store i32 4, i32* %startcodeprefix_len, align 4
  %4 = load %struct.NALU_t*, %struct.NALU_t** %n, align 8
  ret %struct.NALU_t* %4
}

declare %struct.NALU_t* @AllocNALU(i32) #1

; Function Attrs: nounwind uwtable
define i32 @GenerateSeq_parameter_set_rbsp(%struct.seq_parameter_set_rbsp_t* %sps, i8* %rbsp) #0 {
entry:
  %sps.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %rbsp.addr = alloca i8*, align 8
  %bitstream = alloca %struct.Bitstream*, align 8
  %len = alloca i32, align 4
  %LenInBytes = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.seq_parameter_set_rbsp_t* %sps, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  store i8* %rbsp, i8** %rbsp.addr, align 8
  store i32 0, i32* %len, align 4
  %call = call noalias i8* @calloc(i64 1, i64 48) #2
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** %bitstream, align 8
  %cmp = icmp eq %struct.Bitstream* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %rbsp.addr, align 8
  %2 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 9
  store i8* %1, i8** %streamBuffer, align 8
  %3 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %3, i32 0, i32 1
  store i32 8, i32* %bits_to_go, align 4
  %4 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %profile_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %4, i32 0, i32 1
  %5 = load i32, i32* %profile_idc, align 4
  %6 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call1 = call i32 @u_v(i32 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 %5, %struct.Bitstream* %6)
  %7 = load i32, i32* %len, align 4
  %add = add nsw i32 %7, %call1
  store i32 %add, i32* %len, align 4
  %8 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %constrained_set0_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %8, i32 0, i32 2
  %9 = load i32, i32* %constrained_set0_flag, align 4
  %10 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call2 = call i32 @u_1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i32 %9, %struct.Bitstream* %10)
  %11 = load i32, i32* %len, align 4
  %add3 = add i32 %11, %call2
  store i32 %add3, i32* %len, align 4
  %12 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %constrained_set1_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %12, i32 0, i32 3
  %13 = load i32, i32* %constrained_set1_flag, align 4
  %14 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call4 = call i32 @u_1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i32 %13, %struct.Bitstream* %14)
  %15 = load i32, i32* %len, align 4
  %add5 = add i32 %15, %call4
  store i32 %add5, i32* %len, align 4
  %16 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %constrained_set2_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %16, i32 0, i32 4
  %17 = load i32, i32* %constrained_set2_flag, align 4
  %18 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call6 = call i32 @u_1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i32 %17, %struct.Bitstream* %18)
  %19 = load i32, i32* %len, align 4
  %add7 = add i32 %19, %call6
  store i32 %add7, i32* %len, align 4
  %20 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %constrained_set3_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %20, i32 0, i32 5
  %21 = load i32, i32* %constrained_set3_flag, align 4
  %22 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call8 = call i32 @u_1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), i32 %21, %struct.Bitstream* %22)
  %23 = load i32, i32* %len, align 4
  %add9 = add i32 %23, %call8
  store i32 %add9, i32* %len, align 4
  %24 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call10 = call i32 @u_v(i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0), i32 0, %struct.Bitstream* %24)
  %25 = load i32, i32* %len, align 4
  %add11 = add nsw i32 %25, %call10
  store i32 %add11, i32* %len, align 4
  %26 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %level_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %26, i32 0, i32 6
  %27 = load i32, i32* %level_idc, align 4
  %28 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call12 = call i32 @u_v(i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i32 %27, %struct.Bitstream* %28)
  %29 = load i32, i32* %len, align 4
  %add13 = add nsw i32 %29, %call12
  store i32 %add13, i32* %len, align 4
  %30 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_parameter_set_id = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %30, i32 0, i32 7
  %31 = load i32, i32* %seq_parameter_set_id, align 4
  %32 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call14 = call i32 @ue_v(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0), i32 %31, %struct.Bitstream* %32)
  %33 = load i32, i32* %len, align 4
  %add15 = add nsw i32 %33, %call14
  store i32 %add15, i32* %len, align 4
  %34 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %profile_idc16 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %34, i32 0, i32 1
  %35 = load i32, i32* %profile_idc16, align 4
  %cmp17 = icmp eq i32 %35, 100
  br i1 %cmp17, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %36 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %profile_idc18 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %36, i32 0, i32 1
  %37 = load i32, i32* %profile_idc18, align 4
  %cmp19 = icmp eq i32 %37, 110
  br i1 %cmp19, label %if.then.26, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false
  %38 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %profile_idc21 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %38, i32 0, i32 1
  %39 = load i32, i32* %profile_idc21, align 4
  %cmp22 = icmp eq i32 %39, 122
  br i1 %cmp22, label %if.then.26, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false.20
  %40 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %profile_idc24 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %40, i32 0, i32 1
  %41 = load i32, i32* %profile_idc24, align 4
  %cmp25 = icmp eq i32 %41, 144
  br i1 %cmp25, label %if.then.26, label %if.end.78

if.then.26:                                       ; preds = %lor.lhs.false.23, %lor.lhs.false.20, %lor.lhs.false, %if.end
  %42 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %42, i32 0, i32 8
  %43 = load i32, i32* %chroma_format_idc, align 4
  %44 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call27 = call i32 @ue_v(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0), i32 %43, %struct.Bitstream* %44)
  %45 = load i32, i32* %len, align 4
  %add28 = add nsw i32 %45, %call27
  store i32 %add28, i32* %len, align 4
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 160
  %47 = load i32, i32* %yuv_format, align 4
  %cmp29 = icmp eq i32 %47, 3
  br i1 %cmp29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.then.26
  %48 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call31 = call i32 @u_1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0), i32 0, %struct.Bitstream* %48)
  %49 = load i32, i32* %len, align 4
  %add32 = add i32 %49, %call31
  store i32 %add32, i32* %len, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %if.then.26
  %50 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %bit_depth_luma_minus8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %50, i32 0, i32 11
  %51 = load i32, i32* %bit_depth_luma_minus8, align 4
  %52 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call34 = call i32 @ue_v(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 %51, %struct.Bitstream* %52)
  %53 = load i32, i32* %len, align 4
  %add35 = add nsw i32 %53, %call34
  store i32 %add35, i32* %len, align 4
  %54 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %bit_depth_chroma_minus8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %54, i32 0, i32 12
  %55 = load i32, i32* %bit_depth_chroma_minus8, align 4
  %56 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call36 = call i32 @ue_v(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0), i32 %55, %struct.Bitstream* %56)
  %57 = load i32, i32* %len, align 4
  %add37 = add nsw i32 %57, %call36
  store i32 %add37, i32* %len, align 4
  %58 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lossless_qpprime_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %58, i32 0, i32 161
  %59 = load i32, i32* %lossless_qpprime_flag, align 4
  %60 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call38 = call i32 @u_1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i32 0, i32 0), i32 %59, %struct.Bitstream* %60)
  %61 = load i32, i32* %len, align 4
  %add39 = add i32 %61, %call38
  store i32 %add39, i32* %len, align 4
  %62 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_matrix_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %62, i32 0, i32 9
  %63 = load i32, i32* %seq_scaling_matrix_present_flag, align 4
  %64 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call40 = call i32 @u_1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i32 0, i32 0), i32 %63, %struct.Bitstream* %64)
  %65 = load i32, i32* %len, align 4
  %add41 = add i32 %65, %call40
  store i32 %add41, i32* %len, align 4
  %66 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_matrix_present_flag42 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %66, i32 0, i32 9
  %67 = load i32, i32* %seq_scaling_matrix_present_flag42, align 4
  %tobool = icmp ne i32 %67, 0
  br i1 %tobool, label %if.then.43, label %if.end.77

if.then.43:                                       ; preds = %if.end.33
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.43
  %68 = load i32, i32* %i, align 4
  %cmp44 = icmp ult i32 %68, 8
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %69 = load i32, i32* %i, align 4
  %idxprom = zext i32 %69 to i64
  %70 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_list_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %70, i32 0, i32 10
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %seq_scaling_list_present_flag, i32 0, i64 %idxprom
  %71 = load i32, i32* %arrayidx, align 4
  %72 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call45 = call i32 @u_1(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i32 0, i32 0), i32 %71, %struct.Bitstream* %72)
  %73 = load i32, i32* %len, align 4
  %add46 = add i32 %73, %call45
  store i32 %add46, i32* %len, align 4
  %74 = load i32, i32* %i, align 4
  %idxprom47 = zext i32 %74 to i64
  %75 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_list_present_flag48 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %75, i32 0, i32 10
  %arrayidx49 = getelementptr inbounds [8 x i32], [8 x i32]* %seq_scaling_list_present_flag48, i32 0, i64 %idxprom47
  %76 = load i32, i32* %arrayidx49, align 4
  %tobool50 = icmp ne i32 %76, 0
  br i1 %tobool50, label %if.then.51, label %if.end.76

if.then.51:                                       ; preds = %for.body
  %77 = load i32, i32* %i, align 4
  %cmp52 = icmp ult i32 %77, 6
  br i1 %cmp52, label %if.then.53, label %if.else

if.then.53:                                       ; preds = %if.then.51
  %78 = load i32, i32* %i, align 4
  %idxprom54 = zext i32 %78 to i64
  %arrayidx55 = getelementptr inbounds [6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4input, i32 0, i64 %idxprom54
  %arraydecay = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx55, i32 0, i32 0
  %79 = load i32, i32* %i, align 4
  %idxprom56 = zext i32 %79 to i64
  %arrayidx57 = getelementptr inbounds [6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i32 0, i64 %idxprom56
  %arraydecay58 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx57, i32 0, i32 0
  %80 = load i32, i32* %i, align 4
  %idxprom59 = zext i32 %80 to i64
  %arrayidx60 = getelementptr inbounds [6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i32 0, i64 %idxprom59
  %81 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call61 = call i32 @Scaling_List(i16* %arraydecay, i16* %arraydecay58, i32 16, i16* %arrayidx60, %struct.Bitstream* %81)
  %82 = load i32, i32* %len, align 4
  %add62 = add nsw i32 %82, %call61
  store i32 %add62, i32* %len, align 4
  br label %if.end.75

if.else:                                          ; preds = %if.then.51
  %83 = load i32, i32* %i, align 4
  %sub = sub i32 %83, 6
  %idxprom63 = zext i32 %sub to i64
  %arrayidx64 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* @ScalingList8x8input, i32 0, i64 %idxprom63
  %arraydecay65 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx64, i32 0, i32 0
  %84 = load i32, i32* %i, align 4
  %sub66 = sub i32 %84, 6
  %idxprom67 = zext i32 %sub66 to i64
  %arrayidx68 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* @ScalingList8x8, i32 0, i64 %idxprom67
  %arraydecay69 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx68, i32 0, i32 0
  %85 = load i32, i32* %i, align 4
  %sub70 = sub i32 %85, 6
  %idxprom71 = zext i32 %sub70 to i64
  %arrayidx72 = getelementptr inbounds [2 x i16], [2 x i16]* @UseDefaultScalingMatrix8x8Flag, i32 0, i64 %idxprom71
  %86 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call73 = call i32 @Scaling_List(i16* %arraydecay65, i16* %arraydecay69, i32 64, i16* %arrayidx72, %struct.Bitstream* %86)
  %87 = load i32, i32* %len, align 4
  %add74 = add nsw i32 %87, %call73
  store i32 %add74, i32* %len, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.else, %if.then.53
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.76
  %88 = load i32, i32* %i, align 4
  %inc = add i32 %88, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.77

if.end.77:                                        ; preds = %for.end, %if.end.33
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %lor.lhs.false.23
  %89 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %log2_max_frame_num_minus4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %89, i32 0, i32 13
  %90 = load i32, i32* %log2_max_frame_num_minus4, align 4
  %91 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call79 = call i32 @ue_v(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i32 0, i32 0), i32 %90, %struct.Bitstream* %91)
  %92 = load i32, i32* %len, align 4
  %add80 = add nsw i32 %92, %call79
  store i32 %add80, i32* %len, align 4
  %93 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_order_cnt_type = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %93, i32 0, i32 14
  %94 = load i32, i32* %pic_order_cnt_type, align 4
  %95 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call81 = call i32 @ue_v(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0), i32 %94, %struct.Bitstream* %95)
  %96 = load i32, i32* %len, align 4
  %add82 = add nsw i32 %96, %call81
  store i32 %add82, i32* %len, align 4
  %97 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_order_cnt_type83 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %97, i32 0, i32 14
  %98 = load i32, i32* %pic_order_cnt_type83, align 4
  %cmp84 = icmp eq i32 %98, 0
  br i1 %cmp84, label %if.then.85, label %if.else.88

if.then.85:                                       ; preds = %if.end.78
  %99 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %log2_max_pic_order_cnt_lsb_minus4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %99, i32 0, i32 15
  %100 = load i32, i32* %log2_max_pic_order_cnt_lsb_minus4, align 4
  %101 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call86 = call i32 @ue_v(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i32 0, i32 0), i32 %100, %struct.Bitstream* %101)
  %102 = load i32, i32* %len, align 4
  %add87 = add nsw i32 %102, %call86
  store i32 %add87, i32* %len, align 4
  br label %if.end.112

if.else.88:                                       ; preds = %if.end.78
  %103 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_order_cnt_type89 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %103, i32 0, i32 14
  %104 = load i32, i32* %pic_order_cnt_type89, align 4
  %cmp90 = icmp eq i32 %104, 1
  br i1 %cmp90, label %if.then.91, label %if.end.111

if.then.91:                                       ; preds = %if.else.88
  %105 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %delta_pic_order_always_zero_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %105, i32 0, i32 16
  %106 = load i32, i32* %delta_pic_order_always_zero_flag, align 4
  %107 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call92 = call i32 @u_1(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i32 0, i32 0), i32 %106, %struct.Bitstream* %107)
  %108 = load i32, i32* %len, align 4
  %add93 = add i32 %108, %call92
  store i32 %add93, i32* %len, align 4
  %109 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %offset_for_non_ref_pic = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %109, i32 0, i32 17
  %110 = load i32, i32* %offset_for_non_ref_pic, align 4
  %111 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call94 = call i32 @se_v(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i32 0, i32 0), i32 %110, %struct.Bitstream* %111)
  %112 = load i32, i32* %len, align 4
  %add95 = add nsw i32 %112, %call94
  store i32 %add95, i32* %len, align 4
  %113 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %offset_for_top_to_bottom_field = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %113, i32 0, i32 18
  %114 = load i32, i32* %offset_for_top_to_bottom_field, align 4
  %115 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call96 = call i32 @se_v(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i32 0, i32 0), i32 %114, %struct.Bitstream* %115)
  %116 = load i32, i32* %len, align 4
  %add97 = add nsw i32 %116, %call96
  store i32 %add97, i32* %len, align 4
  %117 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %num_ref_frames_in_pic_order_cnt_cycle = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %117, i32 0, i32 19
  %118 = load i32, i32* %num_ref_frames_in_pic_order_cnt_cycle, align 4
  %119 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call98 = call i32 @ue_v(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i32 0, i32 0), i32 %118, %struct.Bitstream* %119)
  %120 = load i32, i32* %len, align 4
  %add99 = add nsw i32 %120, %call98
  store i32 %add99, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.108, %if.then.91
  %121 = load i32, i32* %i, align 4
  %122 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %num_ref_frames_in_pic_order_cnt_cycle101 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %122, i32 0, i32 19
  %123 = load i32, i32* %num_ref_frames_in_pic_order_cnt_cycle101, align 4
  %cmp102 = icmp ult i32 %121, %123
  br i1 %cmp102, label %for.body.103, label %for.end.110

for.body.103:                                     ; preds = %for.cond.100
  %124 = load i32, i32* %i, align 4
  %idxprom104 = zext i32 %124 to i64
  %125 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %offset_for_ref_frame = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %125, i32 0, i32 20
  %arrayidx105 = getelementptr inbounds [256 x i32], [256 x i32]* %offset_for_ref_frame, i32 0, i64 %idxprom104
  %126 = load i32, i32* %arrayidx105, align 4
  %127 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call106 = call i32 @se_v(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0), i32 %126, %struct.Bitstream* %127)
  %128 = load i32, i32* %len, align 4
  %add107 = add nsw i32 %128, %call106
  store i32 %add107, i32* %len, align 4
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.body.103
  %129 = load i32, i32* %i, align 4
  %inc109 = add i32 %129, 1
  store i32 %inc109, i32* %i, align 4
  br label %for.cond.100

for.end.110:                                      ; preds = %for.cond.100
  br label %if.end.111

if.end.111:                                       ; preds = %for.end.110, %if.else.88
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.then.85
  %130 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %num_ref_frames = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %130, i32 0, i32 21
  %131 = load i32, i32* %num_ref_frames, align 4
  %132 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call113 = call i32 @ue_v(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0), i32 %131, %struct.Bitstream* %132)
  %133 = load i32, i32* %len, align 4
  %add114 = add nsw i32 %133, %call113
  store i32 %add114, i32* %len, align 4
  %134 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %gaps_in_frame_num_value_allowed_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %134, i32 0, i32 22
  %135 = load i32, i32* %gaps_in_frame_num_value_allowed_flag, align 4
  %136 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call115 = call i32 @u_1(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i32 0, i32 0), i32 %135, %struct.Bitstream* %136)
  %137 = load i32, i32* %len, align 4
  %add116 = add i32 %137, %call115
  store i32 %add116, i32* %len, align 4
  %138 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_width_in_mbs_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %138, i32 0, i32 23
  %139 = load i32, i32* %pic_width_in_mbs_minus1, align 4
  %140 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call117 = call i32 @ue_v(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i32 0, i32 0), i32 %139, %struct.Bitstream* %140)
  %141 = load i32, i32* %len, align 4
  %add118 = add nsw i32 %141, %call117
  store i32 %add118, i32* %len, align 4
  %142 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_height_in_map_units_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %142, i32 0, i32 24
  %143 = load i32, i32* %pic_height_in_map_units_minus1, align 4
  %144 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call119 = call i32 @ue_v(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0), i32 %143, %struct.Bitstream* %144)
  %145 = load i32, i32* %len, align 4
  %add120 = add nsw i32 %145, %call119
  store i32 %add120, i32* %len, align 4
  %146 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %146, i32 0, i32 25
  %147 = load i32, i32* %frame_mbs_only_flag, align 4
  %148 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call121 = call i32 @u_1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i32 0, i32 0), i32 %147, %struct.Bitstream* %148)
  %149 = load i32, i32* %len, align 4
  %add122 = add i32 %149, %call121
  store i32 %add122, i32* %len, align 4
  %150 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_mbs_only_flag123 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %150, i32 0, i32 25
  %151 = load i32, i32* %frame_mbs_only_flag123, align 4
  %tobool124 = icmp ne i32 %151, 0
  br i1 %tobool124, label %if.end.128, label %if.then.125

if.then.125:                                      ; preds = %if.end.112
  %152 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %mb_adaptive_frame_field_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %152, i32 0, i32 26
  %153 = load i32, i32* %mb_adaptive_frame_field_flag, align 4
  %154 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call126 = call i32 @u_1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i32 0, i32 0), i32 %153, %struct.Bitstream* %154)
  %155 = load i32, i32* %len, align 4
  %add127 = add i32 %155, %call126
  store i32 %add127, i32* %len, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.125, %if.end.112
  %156 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %direct_8x8_inference_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %156, i32 0, i32 27
  %157 = load i32, i32* %direct_8x8_inference_flag, align 4
  %158 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call129 = call i32 @u_1(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i32 0, i32 0), i32 %157, %struct.Bitstream* %158)
  %159 = load i32, i32* %len, align 4
  %add130 = add i32 %159, %call129
  store i32 %add130, i32* %len, align 4
  %160 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %160, i32 0, i32 28
  %161 = load i32, i32* %frame_cropping_flag, align 4
  %162 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call131 = call i32 @u_1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i32 0, i32 0), i32 %161, %struct.Bitstream* %162)
  %163 = load i32, i32* %len, align 4
  %add132 = add i32 %163, %call131
  store i32 %add132, i32* %len, align 4
  %164 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_flag133 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %164, i32 0, i32 28
  %165 = load i32, i32* %frame_cropping_flag133, align 4
  %tobool134 = icmp ne i32 %165, 0
  br i1 %tobool134, label %if.then.135, label %if.end.144

if.then.135:                                      ; preds = %if.end.128
  %166 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_rect_left_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %166, i32 0, i32 29
  %167 = load i32, i32* %frame_cropping_rect_left_offset, align 4
  %168 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call136 = call i32 @ue_v(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.37, i32 0, i32 0), i32 %167, %struct.Bitstream* %168)
  %169 = load i32, i32* %len, align 4
  %add137 = add nsw i32 %169, %call136
  store i32 %add137, i32* %len, align 4
  %170 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_rect_right_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %170, i32 0, i32 30
  %171 = load i32, i32* %frame_cropping_rect_right_offset, align 4
  %172 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call138 = call i32 @ue_v(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.38, i32 0, i32 0), i32 %171, %struct.Bitstream* %172)
  %173 = load i32, i32* %len, align 4
  %add139 = add nsw i32 %173, %call138
  store i32 %add139, i32* %len, align 4
  %174 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_rect_top_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %174, i32 0, i32 31
  %175 = load i32, i32* %frame_cropping_rect_top_offset, align 4
  %176 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call140 = call i32 @ue_v(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i32 0, i32 0), i32 %175, %struct.Bitstream* %176)
  %177 = load i32, i32* %len, align 4
  %add141 = add nsw i32 %177, %call140
  store i32 %add141, i32* %len, align 4
  %178 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_rect_bottom_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %178, i32 0, i32 32
  %179 = load i32, i32* %frame_cropping_rect_bottom_offset, align 4
  %180 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call142 = call i32 @ue_v(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i32 0, i32 0), i32 %179, %struct.Bitstream* %180)
  %181 = load i32, i32* %len, align 4
  %add143 = add nsw i32 %181, %call142
  store i32 %add143, i32* %len, align 4
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.135, %if.end.128
  %182 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_parameters_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %182, i32 0, i32 33
  %183 = load i32, i32* %vui_parameters_present_flag, align 4
  %184 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call145 = call i32 @u_1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.41, i32 0, i32 0), i32 %183, %struct.Bitstream* %184)
  %185 = load i32, i32* %len, align 4
  %add146 = add i32 %185, %call145
  store i32 %add146, i32* %len, align 4
  %186 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_parameters_present_flag147 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %186, i32 0, i32 33
  %187 = load i32, i32* %vui_parameters_present_flag147, align 4
  %tobool148 = icmp ne i32 %187, 0
  br i1 %tobool148, label %if.then.149, label %if.end.152

if.then.149:                                      ; preds = %if.end.144
  %188 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call150 = call i32 @GenerateVUISequenceParameters(%struct.Bitstream* %188)
  %189 = load i32, i32* %len, align 4
  %add151 = add nsw i32 %189, %call150
  store i32 %add151, i32* %len, align 4
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.149, %if.end.144
  %190 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  call void @SODBtoRBSP(%struct.Bitstream* %190)
  %191 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %191, i32 0, i32 0
  %192 = load i32, i32* %byte_pos, align 4
  store i32 %192, i32* %LenInBytes, align 4
  %193 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %194 = bitcast %struct.Bitstream* %193 to i8*
  call void @free(i8* %194) #2
  %195 = load i32, i32* %LenInBytes, align 4
  ret i32 %195
}

declare i32 @RBSPtoNALU(i8*, %struct.NALU_t*, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct.NALU_t* @GeneratePic_parameter_set_NALU(i32 %PPS_id) #0 {
entry:
  %PPS_id.addr = alloca i32, align 4
  %n = alloca %struct.NALU_t*, align 8
  %RBSPlen = alloca i32, align 4
  %NALUlen = alloca i32, align 4
  %rbsp = alloca [64000 x i8], align 16
  store i32 %PPS_id, i32* %PPS_id.addr, align 4
  %call = call %struct.NALU_t* @AllocNALU(i32 64000)
  store %struct.NALU_t* %call, %struct.NALU_t** %n, align 8
  store i32 0, i32* %RBSPlen, align 4
  %0 = load i32, i32* %PPS_id.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t*], [256 x %struct.pic_parameter_set_rbsp_t*]* @PicParSet, i32 0, i64 %idxprom
  %1 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %arrayidx, align 8
  %arraydecay = getelementptr inbounds [64000 x i8], [64000 x i8]* %rbsp, i32 0, i32 0
  %call1 = call i32 @GeneratePic_parameter_set_rbsp(%struct.pic_parameter_set_rbsp_t* %1, i8* %arraydecay)
  store i32 %call1, i32* %RBSPlen, align 4
  %arraydecay2 = getelementptr inbounds [64000 x i8], [64000 x i8]* %rbsp, i32 0, i32 0
  %2 = load %struct.NALU_t*, %struct.NALU_t** %n, align 8
  %3 = load i32, i32* %RBSPlen, align 4
  %call3 = call i32 @RBSPtoNALU(i8* %arraydecay2, %struct.NALU_t* %2, i32 %3, i32 8, i32 3, i32 0, i32 1)
  store i32 %call3, i32* %NALUlen, align 4
  %4 = load %struct.NALU_t*, %struct.NALU_t** %n, align 8
  %startcodeprefix_len = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %4, i32 0, i32 0
  store i32 4, i32* %startcodeprefix_len, align 4
  %5 = load %struct.NALU_t*, %struct.NALU_t** %n, align 8
  ret %struct.NALU_t* %5
}

; Function Attrs: nounwind uwtable
define i32 @GeneratePic_parameter_set_rbsp(%struct.pic_parameter_set_rbsp_t* %pps, i8* %rbsp) #0 {
entry:
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %rbsp.addr = alloca i8*, align 8
  %bitstream = alloca %struct.Bitstream*, align 8
  %len = alloca i32, align 4
  %LenInBytes = alloca i32, align 4
  %i = alloca i32, align 4
  %NumberBitsPerSliceGroupId = alloca i32, align 4
  %profile_idc = alloca i32, align 4
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  store i8* %rbsp, i8** %rbsp.addr, align 8
  store i32 0, i32* %len, align 4
  %call = call noalias i8* @calloc(i64 1, i64 48) #2
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** %bitstream, align 8
  %cmp = icmp eq %struct.Bitstream* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %rbsp.addr, align 8
  %2 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 9
  store i8* %1, i8** %streamBuffer, align 8
  %3 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %3, i32 0, i32 1
  store i32 8, i32* %bits_to_go, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_order_present_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 121
  %5 = load i32, i32* %pic_order_present_flag, align 4
  %6 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_order_present_flag1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %6, i32 0, i32 7
  store i32 %5, i32* %pic_order_present_flag1, align 4
  %7 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_parameter_set_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %7, i32 0, i32 1
  %8 = load i32, i32* %pic_parameter_set_id, align 4
  %9 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call2 = call i32 @ue_v(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.43, i32 0, i32 0), i32 %8, %struct.Bitstream* %9)
  %10 = load i32, i32* %len, align 4
  %add = add nsw i32 %10, %call2
  store i32 %add, i32* %len, align 4
  %11 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %seq_parameter_set_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %11, i32 0, i32 2
  %12 = load i32, i32* %seq_parameter_set_id, align 4
  %13 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call3 = call i32 @ue_v(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.44, i32 0, i32 0), i32 %12, %struct.Bitstream* %13)
  %14 = load i32, i32* %len, align 4
  %add4 = add nsw i32 %14, %call3
  store i32 %add4, i32* %len, align 4
  %15 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %entropy_coding_mode_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %15, i32 0, i32 3
  %16 = load i32, i32* %entropy_coding_mode_flag, align 4
  %17 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call5 = call i32 @u_1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.45, i32 0, i32 0), i32 %16, %struct.Bitstream* %17)
  %18 = load i32, i32* %len, align 4
  %add6 = add i32 %18, %call5
  store i32 %add6, i32* %len, align 4
  %19 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_order_present_flag7 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %19, i32 0, i32 7
  %20 = load i32, i32* %pic_order_present_flag7, align 4
  %21 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call8 = call i32 @u_1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.46, i32 0, i32 0), i32 %20, %struct.Bitstream* %21)
  %22 = load i32, i32* %len, align 4
  %add9 = add i32 %22, %call8
  store i32 %add9, i32* %len, align 4
  %23 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %23, i32 0, i32 8
  %24 = load i32, i32* %num_slice_groups_minus1, align 4
  %25 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call10 = call i32 @ue_v(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.47, i32 0, i32 0), i32 %24, %struct.Bitstream* %25)
  %26 = load i32, i32* %len, align 4
  %add11 = add nsw i32 %26, %call10
  store i32 %add11, i32* %len, align 4
  %27 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus112 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %27, i32 0, i32 8
  %28 = load i32, i32* %num_slice_groups_minus112, align 4
  %cmp13 = icmp ugt i32 %28, 0
  br i1 %cmp13, label %if.then.14, label %if.end.91

if.then.14:                                       ; preds = %if.end
  %29 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %29, i32 0, i32 9
  %30 = load i32, i32* %slice_group_map_type, align 4
  %31 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call15 = call i32 @ue_v(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i32 0, i32 0), i32 %30, %struct.Bitstream* %31)
  %32 = load i32, i32* %len, align 4
  %add16 = add nsw i32 %32, %call15
  store i32 %add16, i32* %len, align 4
  %33 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type17 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %33, i32 0, i32 9
  %34 = load i32, i32* %slice_group_map_type17, align 4
  %cmp18 = icmp eq i32 %34, 0
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then.14
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.19
  %35 = load i32, i32* %i, align 4
  %36 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus120 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %36, i32 0, i32 8
  %37 = load i32, i32* %num_slice_groups_minus120, align 4
  %cmp21 = icmp ule i32 %35, %37
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i32, i32* %i, align 4
  %idxprom = zext i32 %38 to i64
  %39 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %run_length_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %39, i32 0, i32 10
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %run_length_minus1, i32 0, i64 %idxprom
  %40 = load i32, i32* %arrayidx, align 4
  %41 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call22 = call i32 @ue_v(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i32 0, i32 0), i32 %40, %struct.Bitstream* %41)
  %42 = load i32, i32* %len, align 4
  %add23 = add nsw i32 %42, %call22
  store i32 %add23, i32* %len, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i32, i32* %i, align 4
  %inc = add i32 %43, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.90

if.else:                                          ; preds = %if.then.14
  %44 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type24 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %44, i32 0, i32 9
  %45 = load i32, i32* %slice_group_map_type24, align 4
  %cmp25 = icmp eq i32 %45, 2
  br i1 %cmp25, label %if.then.26, label %if.else.42

if.then.26:                                       ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.39, %if.then.26
  %46 = load i32, i32* %i, align 4
  %47 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus128 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %47, i32 0, i32 8
  %48 = load i32, i32* %num_slice_groups_minus128, align 4
  %cmp29 = icmp ult i32 %46, %48
  br i1 %cmp29, label %for.body.30, label %for.end.41

for.body.30:                                      ; preds = %for.cond.27
  %49 = load i32, i32* %i, align 4
  %idxprom31 = zext i32 %49 to i64
  %50 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %top_left = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %50, i32 0, i32 11
  %arrayidx32 = getelementptr inbounds [8 x i32], [8 x i32]* %top_left, i32 0, i64 %idxprom31
  %51 = load i32, i32* %arrayidx32, align 4
  %52 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call33 = call i32 @ue_v(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i32 0, i32 0), i32 %51, %struct.Bitstream* %52)
  %53 = load i32, i32* %len, align 4
  %add34 = add nsw i32 %53, %call33
  store i32 %add34, i32* %len, align 4
  %54 = load i32, i32* %i, align 4
  %idxprom35 = zext i32 %54 to i64
  %55 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %bottom_right = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %55, i32 0, i32 12
  %arrayidx36 = getelementptr inbounds [8 x i32], [8 x i32]* %bottom_right, i32 0, i64 %idxprom35
  %56 = load i32, i32* %arrayidx36, align 4
  %57 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call37 = call i32 @ue_v(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i32 0, i32 0), i32 %56, %struct.Bitstream* %57)
  %58 = load i32, i32* %len, align 4
  %add38 = add nsw i32 %58, %call37
  store i32 %add38, i32* %len, align 4
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.30
  %59 = load i32, i32* %i, align 4
  %inc40 = add i32 %59, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond.27

for.end.41:                                       ; preds = %for.cond.27
  br label %if.end.89

if.else.42:                                       ; preds = %if.else
  %60 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type43 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %60, i32 0, i32 9
  %61 = load i32, i32* %slice_group_map_type43, align 4
  %cmp44 = icmp eq i32 %61, 3
  br i1 %cmp44, label %if.then.50, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.42
  %62 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type45 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %62, i32 0, i32 9
  %63 = load i32, i32* %slice_group_map_type45, align 4
  %cmp46 = icmp eq i32 %63, 4
  br i1 %cmp46, label %if.then.50, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false
  %64 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type48 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %64, i32 0, i32 9
  %65 = load i32, i32* %slice_group_map_type48, align 4
  %cmp49 = icmp eq i32 %65, 5
  br i1 %cmp49, label %if.then.50, label %if.else.55

if.then.50:                                       ; preds = %lor.lhs.false.47, %lor.lhs.false, %if.else.42
  %66 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %66, i32 0, i32 13
  %67 = load i32, i32* %slice_group_change_direction_flag, align 4
  %68 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call51 = call i32 @u_1(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.52, i32 0, i32 0), i32 %67, %struct.Bitstream* %68)
  %69 = load i32, i32* %len, align 4
  %add52 = add i32 %69, %call51
  store i32 %add52, i32* %len, align 4
  %70 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_rate_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %70, i32 0, i32 14
  %71 = load i32, i32* %slice_group_change_rate_minus1, align 4
  %72 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call53 = call i32 @ue_v(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.53, i32 0, i32 0), i32 %71, %struct.Bitstream* %72)
  %73 = load i32, i32* %len, align 4
  %add54 = add nsw i32 %73, %call53
  store i32 %add54, i32* %len, align 4
  br label %if.end.88

if.else.55:                                       ; preds = %lor.lhs.false.47
  %74 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type56 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %74, i32 0, i32 9
  %75 = load i32, i32* %slice_group_map_type56, align 4
  %cmp57 = icmp eq i32 %75, 6
  br i1 %cmp57, label %if.then.58, label %if.end.87

if.then.58:                                       ; preds = %if.else.55
  %76 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus159 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %76, i32 0, i32 8
  %77 = load i32, i32* %num_slice_groups_minus159, align 4
  %cmp60 = icmp uge i32 %77, 4
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %if.then.58
  store i32 3, i32* %NumberBitsPerSliceGroupId, align 4
  br label %if.end.73

if.else.62:                                       ; preds = %if.then.58
  %78 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus163 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %78, i32 0, i32 8
  %79 = load i32, i32* %num_slice_groups_minus163, align 4
  %cmp64 = icmp uge i32 %79, 2
  br i1 %cmp64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %if.else.62
  store i32 2, i32* %NumberBitsPerSliceGroupId, align 4
  br label %if.end.72

if.else.66:                                       ; preds = %if.else.62
  %80 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus167 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %80, i32 0, i32 8
  %81 = load i32, i32* %num_slice_groups_minus167, align 4
  %cmp68 = icmp uge i32 %81, 1
  br i1 %cmp68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %if.else.66
  store i32 1, i32* %NumberBitsPerSliceGroupId, align 4
  br label %if.end.71

if.else.70:                                       ; preds = %if.else.66
  store i32 0, i32* %NumberBitsPerSliceGroupId, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.70, %if.then.69
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.65
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.61
  %82 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_size_in_map_units_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %82, i32 0, i32 15
  %83 = load i32, i32* %pic_size_in_map_units_minus1, align 4
  %84 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call74 = call i32 @ue_v(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.54, i32 0, i32 0), i32 %83, %struct.Bitstream* %84)
  %85 = load i32, i32* %len, align 4
  %add75 = add nsw i32 %85, %call74
  store i32 %add75, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.84, %if.end.73
  %86 = load i32, i32* %i, align 4
  %87 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_size_in_map_units_minus177 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %87, i32 0, i32 15
  %88 = load i32, i32* %pic_size_in_map_units_minus177, align 4
  %cmp78 = icmp ule i32 %86, %88
  br i1 %cmp78, label %for.body.79, label %for.end.86

for.body.79:                                      ; preds = %for.cond.76
  %89 = load i32, i32* %NumberBitsPerSliceGroupId, align 4
  %90 = load i32, i32* %i, align 4
  %idxprom80 = zext i32 %90 to i64
  %91 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %91, i32 0, i32 16
  %92 = load i8*, i8** %slice_group_id, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %92, i64 %idxprom80
  %93 = load i8, i8* %arrayidx81, align 1
  %conv = zext i8 %93 to i32
  %94 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call82 = call i32 @u_v(i32 %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i32 0, i32 0), i32 %conv, %struct.Bitstream* %94)
  %95 = load i32, i32* %len, align 4
  %add83 = add nsw i32 %95, %call82
  store i32 %add83, i32* %len, align 4
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.body.79
  %96 = load i32, i32* %i, align 4
  %inc85 = add i32 %96, 1
  store i32 %inc85, i32* %i, align 4
  br label %for.cond.76

for.end.86:                                       ; preds = %for.cond.76
  br label %if.end.87

if.end.87:                                        ; preds = %for.end.86, %if.else.55
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.then.50
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %for.end.41
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %for.end
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.end
  %97 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_ref_idx_l0_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %97, i32 0, i32 17
  %98 = load i32, i32* %num_ref_idx_l0_active_minus1, align 4
  %99 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call92 = call i32 @ue_v(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.56, i32 0, i32 0), i32 %98, %struct.Bitstream* %99)
  %100 = load i32, i32* %len, align 4
  %add93 = add nsw i32 %100, %call92
  store i32 %add93, i32* %len, align 4
  %101 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_ref_idx_l1_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %101, i32 0, i32 18
  %102 = load i32, i32* %num_ref_idx_l1_active_minus1, align 4
  %103 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call94 = call i32 @ue_v(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.57, i32 0, i32 0), i32 %102, %struct.Bitstream* %103)
  %104 = load i32, i32* %len, align 4
  %add95 = add nsw i32 %104, %call94
  store i32 %add95, i32* %len, align 4
  %105 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %105, i32 0, i32 19
  %106 = load i32, i32* %weighted_pred_flag, align 4
  %107 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call96 = call i32 @u_1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.58, i32 0, i32 0), i32 %106, %struct.Bitstream* %107)
  %108 = load i32, i32* %len, align 4
  %add97 = add i32 %108, %call96
  store i32 %add97, i32* %len, align 4
  %109 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %109, i32 0, i32 20
  %110 = load i32, i32* %weighted_bipred_idc, align 4
  %111 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call98 = call i32 @u_v(i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.59, i32 0, i32 0), i32 %110, %struct.Bitstream* %111)
  %112 = load i32, i32* %len, align 4
  %add99 = add nsw i32 %112, %call98
  store i32 %add99, i32* %len, align 4
  %113 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_init_qp_minus26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %113, i32 0, i32 21
  %114 = load i32, i32* %pic_init_qp_minus26, align 4
  %115 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call100 = call i32 @se_v(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.60, i32 0, i32 0), i32 %114, %struct.Bitstream* %115)
  %116 = load i32, i32* %len, align 4
  %add101 = add nsw i32 %116, %call100
  store i32 %add101, i32* %len, align 4
  %117 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_init_qs_minus26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %117, i32 0, i32 22
  %118 = load i32, i32* %pic_init_qs_minus26, align 4
  %119 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call102 = call i32 @se_v(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.61, i32 0, i32 0), i32 %118, %struct.Bitstream* %119)
  %120 = load i32, i32* %len, align 4
  %add103 = add nsw i32 %120, %call102
  store i32 %add103, i32* %len, align 4
  %call104 = call i32 @IdentifyProfile()
  store i32 %call104, i32* %profile_idc, align 4
  %121 = load i32, i32* %profile_idc, align 4
  %cmp105 = icmp eq i32 %121, 100
  br i1 %cmp105, label %if.then.116, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %if.end.91
  %122 = load i32, i32* %profile_idc, align 4
  %cmp108 = icmp eq i32 %122, 110
  br i1 %cmp108, label %if.then.116, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %lor.lhs.false.107
  %123 = load i32, i32* %profile_idc, align 4
  %cmp111 = icmp eq i32 %123, 122
  br i1 %cmp111, label %if.then.116, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %lor.lhs.false.110
  %124 = load i32, i32* %profile_idc, align 4
  %cmp114 = icmp eq i32 %124, 144
  br i1 %cmp114, label %if.then.116, label %if.else.119

if.then.116:                                      ; preds = %lor.lhs.false.113, %lor.lhs.false.110, %lor.lhs.false.107, %if.end.91
  %125 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %cb_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %125, i32 0, i32 24
  %126 = load i32, i32* %cb_qp_index_offset, align 4
  %127 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call117 = call i32 @se_v(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.62, i32 0, i32 0), i32 %126, %struct.Bitstream* %127)
  %128 = load i32, i32* %len, align 4
  %add118 = add nsw i32 %128, %call117
  store i32 %add118, i32* %len, align 4
  br label %if.end.122

if.else.119:                                      ; preds = %lor.lhs.false.113
  %129 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %chroma_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %129, i32 0, i32 23
  %130 = load i32, i32* %chroma_qp_index_offset, align 4
  %131 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call120 = call i32 @se_v(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.62, i32 0, i32 0), i32 %130, %struct.Bitstream* %131)
  %132 = load i32, i32* %len, align 4
  %add121 = add nsw i32 %132, %call120
  store i32 %add121, i32* %len, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.119, %if.then.116
  %133 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %deblocking_filter_control_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %133, i32 0, i32 26
  %134 = load i32, i32* %deblocking_filter_control_present_flag, align 4
  %135 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call123 = call i32 @u_1(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.63, i32 0, i32 0), i32 %134, %struct.Bitstream* %135)
  %136 = load i32, i32* %len, align 4
  %add124 = add i32 %136, %call123
  store i32 %add124, i32* %len, align 4
  %137 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %constrained_intra_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %137, i32 0, i32 27
  %138 = load i32, i32* %constrained_intra_pred_flag, align 4
  %139 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call125 = call i32 @u_1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.64, i32 0, i32 0), i32 %138, %struct.Bitstream* %139)
  %140 = load i32, i32* %len, align 4
  %add126 = add i32 %140, %call125
  store i32 %add126, i32* %len, align 4
  %141 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %redundant_pic_cnt_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %141, i32 0, i32 28
  %142 = load i32, i32* %redundant_pic_cnt_present_flag, align 4
  %143 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call127 = call i32 @u_1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.65, i32 0, i32 0), i32 %142, %struct.Bitstream* %143)
  %144 = load i32, i32* %len, align 4
  %add128 = add i32 %144, %call127
  store i32 %add128, i32* %len, align 4
  %145 = load i32, i32* %profile_idc, align 4
  %cmp129 = icmp eq i32 %145, 100
  br i1 %cmp129, label %if.then.140, label %lor.lhs.false.131

lor.lhs.false.131:                                ; preds = %if.end.122
  %146 = load i32, i32* %profile_idc, align 4
  %cmp132 = icmp eq i32 %146, 110
  br i1 %cmp132, label %if.then.140, label %lor.lhs.false.134

lor.lhs.false.134:                                ; preds = %lor.lhs.false.131
  %147 = load i32, i32* %profile_idc, align 4
  %cmp135 = icmp eq i32 %147, 122
  br i1 %cmp135, label %if.then.140, label %lor.lhs.false.137

lor.lhs.false.137:                                ; preds = %lor.lhs.false.134
  %148 = load i32, i32* %profile_idc, align 4
  %cmp138 = icmp eq i32 %148, 144
  br i1 %cmp138, label %if.then.140, label %if.end.195

if.then.140:                                      ; preds = %lor.lhs.false.137, %lor.lhs.false.134, %lor.lhs.false.131, %if.end.122
  %149 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %transform_8x8_mode_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %149, i32 0, i32 4
  %150 = load i32, i32* %transform_8x8_mode_flag, align 4
  %151 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call141 = call i32 @u_1(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.66, i32 0, i32 0), i32 %150, %struct.Bitstream* %151)
  %152 = load i32, i32* %len, align 4
  %add142 = add i32 %152, %call141
  store i32 %add142, i32* %len, align 4
  %153 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_scaling_matrix_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %153, i32 0, i32 5
  %154 = load i32, i32* %pic_scaling_matrix_present_flag, align 4
  %155 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call143 = call i32 @u_1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.67, i32 0, i32 0), i32 %154, %struct.Bitstream* %155)
  %156 = load i32, i32* %len, align 4
  %add144 = add i32 %156, %call143
  store i32 %add144, i32* %len, align 4
  %157 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_scaling_matrix_present_flag145 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %157, i32 0, i32 5
  %158 = load i32, i32* %pic_scaling_matrix_present_flag145, align 4
  %tobool = icmp ne i32 %158, 0
  br i1 %tobool, label %if.then.146, label %if.end.192

if.then.146:                                      ; preds = %if.then.140
  store i32 0, i32* %i, align 4
  br label %for.cond.147

for.cond.147:                                     ; preds = %for.inc.189, %if.then.146
  %159 = load i32, i32* %i, align 4
  %160 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %transform_8x8_mode_flag148 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %160, i32 0, i32 4
  %161 = load i32, i32* %transform_8x8_mode_flag148, align 4
  %shl = shl i32 %161, 1
  %add149 = add i32 6, %shl
  %cmp150 = icmp ult i32 %159, %add149
  br i1 %cmp150, label %for.body.152, label %for.end.191

for.body.152:                                     ; preds = %for.cond.147
  %162 = load i32, i32* %i, align 4
  %idxprom153 = zext i32 %162 to i64
  %163 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_scaling_list_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %163, i32 0, i32 6
  %arrayidx154 = getelementptr inbounds [8 x i32], [8 x i32]* %pic_scaling_list_present_flag, i32 0, i64 %idxprom153
  %164 = load i32, i32* %arrayidx154, align 4
  %165 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call155 = call i32 @u_1(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.68, i32 0, i32 0), i32 %164, %struct.Bitstream* %165)
  %166 = load i32, i32* %len, align 4
  %add156 = add i32 %166, %call155
  store i32 %add156, i32* %len, align 4
  %167 = load i32, i32* %i, align 4
  %idxprom157 = zext i32 %167 to i64
  %168 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_scaling_list_present_flag158 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %168, i32 0, i32 6
  %arrayidx159 = getelementptr inbounds [8 x i32], [8 x i32]* %pic_scaling_list_present_flag158, i32 0, i64 %idxprom157
  %169 = load i32, i32* %arrayidx159, align 4
  %tobool160 = icmp ne i32 %169, 0
  br i1 %tobool160, label %if.then.161, label %if.end.188

if.then.161:                                      ; preds = %for.body.152
  %170 = load i32, i32* %i, align 4
  %cmp162 = icmp ult i32 %170, 6
  br i1 %cmp162, label %if.then.164, label %if.else.174

if.then.164:                                      ; preds = %if.then.161
  %171 = load i32, i32* %i, align 4
  %idxprom165 = zext i32 %171 to i64
  %arrayidx166 = getelementptr inbounds [6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4input, i32 0, i64 %idxprom165
  %arraydecay = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx166, i32 0, i32 0
  %172 = load i32, i32* %i, align 4
  %idxprom167 = zext i32 %172 to i64
  %arrayidx168 = getelementptr inbounds [6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i32 0, i64 %idxprom167
  %arraydecay169 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx168, i32 0, i32 0
  %173 = load i32, i32* %i, align 4
  %idxprom170 = zext i32 %173 to i64
  %arrayidx171 = getelementptr inbounds [6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i32 0, i64 %idxprom170
  %174 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call172 = call i32 @Scaling_List(i16* %arraydecay, i16* %arraydecay169, i32 16, i16* %arrayidx171, %struct.Bitstream* %174)
  %175 = load i32, i32* %len, align 4
  %add173 = add nsw i32 %175, %call172
  store i32 %add173, i32* %len, align 4
  br label %if.end.187

if.else.174:                                      ; preds = %if.then.161
  %176 = load i32, i32* %i, align 4
  %sub = sub i32 %176, 6
  %idxprom175 = zext i32 %sub to i64
  %arrayidx176 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* @ScalingList8x8input, i32 0, i64 %idxprom175
  %arraydecay177 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx176, i32 0, i32 0
  %177 = load i32, i32* %i, align 4
  %sub178 = sub i32 %177, 6
  %idxprom179 = zext i32 %sub178 to i64
  %arrayidx180 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* @ScalingList8x8, i32 0, i64 %idxprom179
  %arraydecay181 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx180, i32 0, i32 0
  %178 = load i32, i32* %i, align 4
  %sub182 = sub i32 %178, 6
  %idxprom183 = zext i32 %sub182 to i64
  %arrayidx184 = getelementptr inbounds [2 x i16], [2 x i16]* @UseDefaultScalingMatrix8x8Flag, i32 0, i64 %idxprom183
  %179 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call185 = call i32 @Scaling_List(i16* %arraydecay177, i16* %arraydecay181, i32 64, i16* %arrayidx184, %struct.Bitstream* %179)
  %180 = load i32, i32* %len, align 4
  %add186 = add nsw i32 %180, %call185
  store i32 %add186, i32* %len, align 4
  br label %if.end.187

if.end.187:                                       ; preds = %if.else.174, %if.then.164
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187, %for.body.152
  br label %for.inc.189

for.inc.189:                                      ; preds = %if.end.188
  %181 = load i32, i32* %i, align 4
  %inc190 = add i32 %181, 1
  store i32 %inc190, i32* %i, align 4
  br label %for.cond.147

for.end.191:                                      ; preds = %for.cond.147
  br label %if.end.192

if.end.192:                                       ; preds = %for.end.191, %if.then.140
  %182 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %cr_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %182, i32 0, i32 25
  %183 = load i32, i32* %cr_qp_index_offset, align 4
  %184 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call193 = call i32 @se_v(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.69, i32 0, i32 0), i32 %183, %struct.Bitstream* %184)
  %185 = load i32, i32* %len, align 4
  %add194 = add nsw i32 %185, %call193
  store i32 %add194, i32* %len, align 4
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.192, %lor.lhs.false.137
  %186 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  call void @SODBtoRBSP(%struct.Bitstream* %186)
  %187 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %187, i32 0, i32 0
  %188 = load i32, i32* %byte_pos, align 4
  store i32 %188, i32* %LenInBytes, align 4
  %189 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %190 = bitcast %struct.Bitstream* %189 to i8*
  call void @free(i8* %190) #2
  %191 = load i32, i32* %LenInBytes, align 4
  ret i32 %191
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i32 @IdentifyProfile() #0 {
entry:
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ProfileIDC = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 0
  %1 = load i32, i32* %ProfileIDC, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @IdentifyLevel() #0 {
entry:
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LevelIDC = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 1
  %1 = load i32, i32* %LevelIDC, align 4
  ret i32 %1
}

declare %struct.colocated_params* @alloc_colocated(i32, i32, i32) #1

declare void @error(i8*, i32) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #3

declare void @no_mem_exit(i8*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @Scaling_List(i16* %scalingListinput, i16* %scalingList, i32 %sizeOfScalingList, i16* %UseDefaultScalingMatrix, %struct.Bitstream* %bitstream) #0 {
entry:
  %scalingListinput.addr = alloca i16*, align 8
  %scalingList.addr = alloca i16*, align 8
  %sizeOfScalingList.addr = alloca i32, align 4
  %UseDefaultScalingMatrix.addr = alloca i16*, align 8
  %bitstream.addr = alloca %struct.Bitstream*, align 8
  %j = alloca i32, align 4
  %scanj = alloca i32, align 4
  %len = alloca i32, align 4
  %delta_scale = alloca i32, align 4
  %lastScale = alloca i32, align 4
  %nextScale = alloca i32, align 4
  store i16* %scalingListinput, i16** %scalingListinput.addr, align 8
  store i16* %scalingList, i16** %scalingList.addr, align 8
  store i32 %sizeOfScalingList, i32* %sizeOfScalingList.addr, align 4
  store i16* %UseDefaultScalingMatrix, i16** %UseDefaultScalingMatrix.addr, align 8
  store %struct.Bitstream* %bitstream, %struct.Bitstream** %bitstream.addr, align 8
  store i32 0, i32* %len, align 4
  store i32 8, i32* %lastScale, align 4
  store i32 8, i32* %nextScale, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %1 = load i32, i32* %sizeOfScalingList.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %sizeOfScalingList.addr, align 4
  %cmp1 = icmp eq i32 %2, 16
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* @ZZ_SCAN, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %5 = load i32, i32* %j, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [64 x i8], [64 x i8]* @ZZ_SCAN8, i32 0, i64 %idxprom2
  %6 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %6 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv4, %cond.false ]
  store i32 %cond, i32* %scanj, align 4
  %7 = load i32, i32* %nextScale, align 4
  %cmp5 = icmp ne i32 %7, 0
  br i1 %cmp5, label %if.then, label %if.end.28

if.then:                                          ; preds = %cond.end
  %8 = load i32, i32* %scanj, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load i16*, i16** %scalingListinput.addr, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %9, i64 %idxprom7
  %10 = load i16, i16* %arrayidx8, align 2
  %conv9 = sext i16 %10 to i32
  %11 = load i32, i32* %lastScale, align 4
  %sub = sub nsw i32 %conv9, %11
  store i32 %sub, i32* %delta_scale, align 4
  %12 = load i32, i32* %delta_scale, align 4
  %cmp10 = icmp sgt i32 %12, 127
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then
  %13 = load i32, i32* %delta_scale, align 4
  %sub13 = sub nsw i32 %13, 256
  store i32 %sub13, i32* %delta_scale, align 4
  br label %if.end.17

if.else:                                          ; preds = %if.then
  %14 = load i32, i32* %delta_scale, align 4
  %cmp14 = icmp slt i32 %14, -128
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.else
  %15 = load i32, i32* %delta_scale, align 4
  %add = add nsw i32 %15, 256
  store i32 %add, i32* %delta_scale, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.16, %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then.12
  %16 = load i32, i32* %delta_scale, align 4
  %17 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call = call i32 @se_v(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 %16, %struct.Bitstream* %17)
  %18 = load i32, i32* %len, align 4
  %add18 = add nsw i32 %18, %call
  store i32 %add18, i32* %len, align 4
  %19 = load i32, i32* %scanj, align 4
  %idxprom19 = sext i32 %19 to i64
  %20 = load i16*, i16** %scalingListinput.addr, align 8
  %arrayidx20 = getelementptr inbounds i16, i16* %20, i64 %idxprom19
  %21 = load i16, i16* %arrayidx20, align 2
  %conv21 = sext i16 %21 to i32
  store i32 %conv21, i32* %nextScale, align 4
  %22 = load i32, i32* %scanj, align 4
  %cmp22 = icmp eq i32 %22, 0
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.17
  %23 = load i32, i32* %nextScale, align 4
  %cmp24 = icmp eq i32 %23, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.17
  %24 = phi i1 [ false, %if.end.17 ], [ %cmp24, %land.rhs ]
  %land.ext = zext i1 %24 to i32
  %25 = load i16*, i16** %UseDefaultScalingMatrix.addr, align 8
  %26 = load i16, i16* %25, align 2
  %conv26 = sext i16 %26 to i32
  %or = or i32 %conv26, %land.ext
  %conv27 = trunc i32 %or to i16
  store i16 %conv27, i16* %25, align 2
  br label %if.end.28

if.end.28:                                        ; preds = %land.end, %cond.end
  %27 = load i32, i32* %nextScale, align 4
  %cmp29 = icmp eq i32 %27, 0
  br i1 %cmp29, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %if.end.28
  %28 = load i32, i32* %lastScale, align 4
  br label %cond.end.33

cond.false.32:                                    ; preds = %if.end.28
  %29 = load i32, i32* %nextScale, align 4
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.32, %cond.true.31
  %cond34 = phi i32 [ %28, %cond.true.31 ], [ %29, %cond.false.32 ]
  %conv35 = trunc i32 %cond34 to i16
  %30 = load i32, i32* %scanj, align 4
  %idxprom36 = sext i32 %30 to i64
  %31 = load i16*, i16** %scalingList.addr, align 8
  %arrayidx37 = getelementptr inbounds i16, i16* %31, i64 %idxprom36
  store i16 %conv35, i16* %arrayidx37, align 2
  %32 = load i32, i32* %scanj, align 4
  %idxprom38 = sext i32 %32 to i64
  %33 = load i16*, i16** %scalingList.addr, align 8
  %arrayidx39 = getelementptr inbounds i16, i16* %33, i64 %idxprom38
  %34 = load i16, i16* %arrayidx39, align 2
  %conv40 = sext i16 %34 to i32
  store i32 %conv40, i32* %lastScale, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.33
  %35 = load i32, i32* %j, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load i32, i32* %len, align 4
  ret i32 %36
}

declare i32 @se_v(i8*, i32, %struct.Bitstream*) #1

declare i32 @u_v(i32, i8*, i32, %struct.Bitstream*) #1

declare i32 @u_1(i8*, i32, %struct.Bitstream*) #1

declare i32 @ue_v(i8*, i32, %struct.Bitstream*) #1

; Function Attrs: nounwind uwtable
define internal i32 @GenerateVUISequenceParameters(%struct.Bitstream* %bitstream) #0 {
entry:
  %retval = alloca i32, align 4
  %bitstream.addr = alloca %struct.Bitstream*, align 8
  %len = alloca i32, align 4
  %bitstream_restriction_flag = alloca i32, align 4
  %timing_info_present_flag = alloca i32, align 4
  %aspect_ratio_info_present_flag = alloca i32, align 4
  store %struct.Bitstream* %bitstream, %struct.Bitstream** %bitstream.addr, align 8
  store i32 0, i32* %len, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rgb_input_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 176
  %1 = load i32, i32* %rgb_input_flag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %yuv_format = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 16
  %3 = load i32, i32* %yuv_format, align 4
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.76, i32 0, i32 0))
  %4 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call1 = call i32 @u_1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.77, i32 0, i32 0), i32 0, %struct.Bitstream* %4)
  %5 = load i32, i32* %len, align 4
  %add = add i32 %5, %call1
  store i32 %add, i32* %len, align 4
  %6 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call2 = call i32 @u_1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.78, i32 0, i32 0), i32 0, %struct.Bitstream* %6)
  %7 = load i32, i32* %len, align 4
  %add3 = add i32 %7, %call2
  store i32 %add3, i32* %len, align 4
  %8 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call4 = call i32 @u_1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.79, i32 0, i32 0), i32 1, %struct.Bitstream* %8)
  %9 = load i32, i32* %len, align 4
  %add5 = add i32 %9, %call4
  store i32 %add5, i32* %len, align 4
  %10 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call6 = call i32 @u_v(i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.80, i32 0, i32 0), i32 2, %struct.Bitstream* %10)
  %11 = load i32, i32* %len, align 4
  %add7 = add nsw i32 %11, %call6
  store i32 %add7, i32* %len, align 4
  %12 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call8 = call i32 @u_1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.81, i32 0, i32 0), i32 1, %struct.Bitstream* %12)
  %13 = load i32, i32* %len, align 4
  %add9 = add i32 %13, %call8
  store i32 %add9, i32* %len, align 4
  %14 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call10 = call i32 @u_1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.82, i32 0, i32 0), i32 1, %struct.Bitstream* %14)
  %15 = load i32, i32* %len, align 4
  %add11 = add i32 %15, %call10
  store i32 %add11, i32* %len, align 4
  %16 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call12 = call i32 @u_v(i32 8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.83, i32 0, i32 0), i32 2, %struct.Bitstream* %16)
  %17 = load i32, i32* %len, align 4
  %add13 = add nsw i32 %17, %call12
  store i32 %add13, i32* %len, align 4
  %18 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call14 = call i32 @u_v(i32 8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.84, i32 0, i32 0), i32 2, %struct.Bitstream* %18)
  %19 = load i32, i32* %len, align 4
  %add15 = add nsw i32 %19, %call14
  store i32 %add15, i32* %len, align 4
  %20 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call16 = call i32 @u_v(i32 8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.85, i32 0, i32 0), i32 0, %struct.Bitstream* %20)
  %21 = load i32, i32* %len, align 4
  %add17 = add nsw i32 %21, %call16
  store i32 %add17, i32* %len, align 4
  %22 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call18 = call i32 @u_1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.86, i32 0, i32 0), i32 0, %struct.Bitstream* %22)
  %23 = load i32, i32* %len, align 4
  %add19 = add i32 %23, %call18
  store i32 %add19, i32* %len, align 4
  %24 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call20 = call i32 @u_1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.87, i32 0, i32 0), i32 0, %struct.Bitstream* %24)
  %25 = load i32, i32* %len, align 4
  %add21 = add i32 %25, %call20
  store i32 %add21, i32* %len, align 4
  %26 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call22 = call i32 @u_1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.88, i32 0, i32 0), i32 0, %struct.Bitstream* %26)
  %27 = load i32, i32* %len, align 4
  %add23 = add i32 %27, %call22
  store i32 %add23, i32* %len, align 4
  %28 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call24 = call i32 @u_1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.89, i32 0, i32 0), i32 0, %struct.Bitstream* %28)
  %29 = load i32, i32* %len, align 4
  %add25 = add i32 %29, %call24
  store i32 %add25, i32* %len, align 4
  %30 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call26 = call i32 @u_1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.90, i32 0, i32 0), i32 0, %struct.Bitstream* %30)
  %31 = load i32, i32* %len, align 4
  %add27 = add i32 %31, %call26
  store i32 %add27, i32* %len, align 4
  %32 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call28 = call i32 @u_1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.91, i32 0, i32 0), i32 0, %struct.Bitstream* %32)
  %33 = load i32, i32* %len, align 4
  %add29 = add i32 %33, %call28
  store i32 %add29, i32* %len, align 4
  %34 = load i32, i32* %len, align 4
  store i32 %34, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %35 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Generate_SEIVUI = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %35, i32 0, i32 35
  %36 = load i32, i32* %Generate_SEIVUI, align 4
  %tobool30 = icmp ne i32 %36, 0
  br i1 %tobool30, label %if.then.31, label %if.else.80

if.then.31:                                       ; preds = %if.else
  store i32 0, i32* %bitstream_restriction_flag, align 4
  store i32 0, i32* %timing_info_present_flag, align 4
  store i32 0, i32* %aspect_ratio_info_present_flag, align 4
  %37 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call32 = call i32 @u_1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.77, i32 0, i32 0), i32 0, %struct.Bitstream* %37)
  %38 = load i32, i32* %len, align 4
  %add33 = add i32 %38, %call32
  store i32 %add33, i32* %len, align 4
  %39 = load i32, i32* %aspect_ratio_info_present_flag, align 4
  %tobool34 = icmp ne i32 %39, 0
  br i1 %tobool34, label %if.then.35, label %if.end

if.then.35:                                       ; preds = %if.then.31
  %40 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call36 = call i32 @u_v(i32 8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.92, i32 0, i32 0), i32 1, %struct.Bitstream* %40)
  %41 = load i32, i32* %len, align 4
  %add37 = add nsw i32 %41, %call36
  store i32 %add37, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.35, %if.then.31
  %42 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call38 = call i32 @u_1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.78, i32 0, i32 0), i32 0, %struct.Bitstream* %42)
  %43 = load i32, i32* %len, align 4
  %add39 = add i32 %43, %call38
  store i32 %add39, i32* %len, align 4
  %44 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call40 = call i32 @u_1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.79, i32 0, i32 0), i32 0, %struct.Bitstream* %44)
  %45 = load i32, i32* %len, align 4
  %add41 = add i32 %45, %call40
  store i32 %add41, i32* %len, align 4
  %46 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call42 = call i32 @u_1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.86, i32 0, i32 0), i32 0, %struct.Bitstream* %46)
  %47 = load i32, i32* %len, align 4
  %add43 = add i32 %47, %call42
  store i32 %add43, i32* %len, align 4
  %48 = load i32, i32* %timing_info_present_flag, align 4
  %49 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call44 = call i32 @u_1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.87, i32 0, i32 0), i32 %48, %struct.Bitstream* %49)
  %50 = load i32, i32* %len, align 4
  %add45 = add i32 %50, %call44
  store i32 %add45, i32* %len, align 4
  %51 = load i32, i32* %timing_info_present_flag, align 4
  %tobool46 = icmp ne i32 %51, 0
  br i1 %tobool46, label %if.then.47, label %if.end.54

if.then.47:                                       ; preds = %if.end
  %52 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call48 = call i32 @u_v(i32 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.93, i32 0, i32 0), i32 416667, %struct.Bitstream* %52)
  %53 = load i32, i32* %len, align 4
  %add49 = add nsw i32 %53, %call48
  store i32 %add49, i32* %len, align 4
  %54 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call50 = call i32 @u_v(i32 32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.94, i32 0, i32 0), i32 20000000, %struct.Bitstream* %54)
  %55 = load i32, i32* %len, align 4
  %add51 = add nsw i32 %55, %call50
  store i32 %add51, i32* %len, align 4
  %56 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call52 = call i32 @u_1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.95, i32 0, i32 0), i32 1, %struct.Bitstream* %56)
  %57 = load i32, i32* %len, align 4
  %add53 = add i32 %57, %call52
  store i32 %add53, i32* %len, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.47, %if.end
  %58 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call55 = call i32 @u_1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.88, i32 0, i32 0), i32 0, %struct.Bitstream* %58)
  %59 = load i32, i32* %len, align 4
  %add56 = add i32 %59, %call55
  store i32 %add56, i32* %len, align 4
  %60 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call57 = call i32 @u_1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.89, i32 0, i32 0), i32 0, %struct.Bitstream* %60)
  %61 = load i32, i32* %len, align 4
  %add58 = add i32 %61, %call57
  store i32 %add58, i32* %len, align 4
  %62 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call59 = call i32 @u_1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.90, i32 0, i32 0), i32 0, %struct.Bitstream* %62)
  %63 = load i32, i32* %len, align 4
  %add60 = add i32 %63, %call59
  store i32 %add60, i32* %len, align 4
  %64 = load i32, i32* %bitstream_restriction_flag, align 4
  %65 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call61 = call i32 @u_1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.91, i32 0, i32 0), i32 %64, %struct.Bitstream* %65)
  %66 = load i32, i32* %len, align 4
  %add62 = add i32 %66, %call61
  store i32 %add62, i32* %len, align 4
  %67 = load i32, i32* %bitstream_restriction_flag, align 4
  %tobool63 = icmp ne i32 %67, 0
  br i1 %tobool63, label %if.then.64, label %if.end.79

if.then.64:                                       ; preds = %if.end.54
  %68 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call65 = call i32 @u_1(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.96, i32 0, i32 0), i32 1, %struct.Bitstream* %68)
  %69 = load i32, i32* %len, align 4
  %add66 = add i32 %69, %call65
  store i32 %add66, i32* %len, align 4
  %70 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call67 = call i32 @ue_v(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.97, i32 0, i32 0), i32 0, %struct.Bitstream* %70)
  %71 = load i32, i32* %len, align 4
  %add68 = add nsw i32 %71, %call67
  store i32 %add68, i32* %len, align 4
  %72 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call69 = call i32 @ue_v(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.98, i32 0, i32 0), i32 0, %struct.Bitstream* %72)
  %73 = load i32, i32* %len, align 4
  %add70 = add nsw i32 %73, %call69
  store i32 %add70, i32* %len, align 4
  %74 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call71 = call i32 @ue_v(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.99, i32 0, i32 0), i32 11, %struct.Bitstream* %74)
  %75 = load i32, i32* %len, align 4
  %add72 = add nsw i32 %75, %call71
  store i32 %add72, i32* %len, align 4
  %76 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call73 = call i32 @ue_v(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.100, i32 0, i32 0), i32 11, %struct.Bitstream* %76)
  %77 = load i32, i32* %len, align 4
  %add74 = add nsw i32 %77, %call73
  store i32 %add74, i32* %len, align 4
  %78 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call75 = call i32 @ue_v(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.101, i32 0, i32 0), i32 3, %struct.Bitstream* %78)
  %79 = load i32, i32* %len, align 4
  %add76 = add nsw i32 %79, %call75
  store i32 %add76, i32* %len, align 4
  %80 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call77 = call i32 @ue_v(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.102, i32 0, i32 0), i32 4, %struct.Bitstream* %80)
  %81 = load i32, i32* %len, align 4
  %add78 = add nsw i32 %81, %call77
  store i32 %add78, i32* %len, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.64, %if.end.54
  br label %if.end.82

if.else.80:                                       ; preds = %if.else
  %call81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.103, i32 0, i32 0))
  call void @exit(i32 -1) #6
  unreachable

if.end.82:                                        ; preds = %if.end.79
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.83, %if.then
  %82 = load i32, i32* %retval
  ret i32 %82
}

declare void @SODBtoRBSP(%struct.Bitstream*) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define %struct.NALU_t* @GenerateSEImessage_NALU() #0 {
entry:
  %n = alloca %struct.NALU_t*, align 8
  %RBSPlen = alloca i32, align 4
  %NALUlen = alloca i32, align 4
  %rbsp = alloca [64000 x i8], align 16
  %call = call %struct.NALU_t* @AllocNALU(i32 64000)
  store %struct.NALU_t* %call, %struct.NALU_t** %n, align 8
  store i32 0, i32* %RBSPlen, align 4
  %arraydecay = getelementptr inbounds [64000 x i8], [64000 x i8]* %rbsp, i32 0, i32 0
  %call1 = call i32 @GenerateSEImessage_rbsp(i32 0, i8* %arraydecay)
  store i32 %call1, i32* %RBSPlen, align 4
  %arraydecay2 = getelementptr inbounds [64000 x i8], [64000 x i8]* %rbsp, i32 0, i32 0
  %0 = load %struct.NALU_t*, %struct.NALU_t** %n, align 8
  %1 = load i32, i32* %RBSPlen, align 4
  %call3 = call i32 @RBSPtoNALU(i8* %arraydecay2, %struct.NALU_t* %0, i32 %1, i32 6, i32 0, i32 0, i32 1)
  store i32 %call3, i32* %NALUlen, align 4
  %2 = load %struct.NALU_t*, %struct.NALU_t** %n, align 8
  %startcodeprefix_len = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %2, i32 0, i32 0
  store i32 4, i32* %startcodeprefix_len, align 4
  %3 = load %struct.NALU_t*, %struct.NALU_t** %n, align 8
  ret %struct.NALU_t* %3
}

; Function Attrs: nounwind uwtable
define i32 @GenerateSEImessage_rbsp(i32 %id, i8* %rbsp) #0 {
entry:
  %id.addr = alloca i32, align 4
  %rbsp.addr = alloca i8*, align 8
  %bitstream = alloca %struct.Bitstream*, align 8
  %len = alloca i32, align 4
  %LenInBytes = alloca i32, align 4
  %sei_message = alloca [500 x i8], align 16
  %uuid_message = alloca [9 x i8], align 1
  %i = alloca i32, align 4
  %message_size = alloca i32, align 4
  %tstruct = alloca %struct.timeb, align 8
  store i32 %id, i32* %id.addr, align 4
  store i8* %rbsp, i8** %rbsp.addr, align 8
  store i32 0, i32* %len, align 4
  %call = call noalias i8* @calloc(i64 1, i64 48) #2
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** %bitstream, align 8
  %cmp = icmp eq %struct.Bitstream* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %rbsp.addr, align 8
  %2 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 9
  store i8* %1, i8** %streamBuffer, align 8
  %3 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %3, i32 0, i32 1
  store i32 8, i32* %bits_to_go, align 4
  %4 = bitcast [9 x i8]* %uuid_message to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @GenerateSEImessage_rbsp.uuid_message, i32 0, i32 0), i64 9, i32 1, i1 false)
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SEIMessageText = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 36
  %arraydecay = getelementptr inbounds [500 x i8], [500 x i8]* %SEIMessageText, i32 0, i32 0
  %call1 = call i64 @strlen(i8* %arraydecay) #7
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %message_size, align 4
  %call2 = call i32 @ftime(%struct.timeb* %tstruct)
  %6 = load i32, i32* %message_size, align 4
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  store i32 13, i32* %message_size, align 4
  %arraydecay6 = getelementptr inbounds [500 x i8], [500 x i8]* %sei_message, i32 0, i32 0
  %7 = load i32, i32* %message_size, align 4
  %conv7 = zext i32 %7 to i64
  %call8 = call i8* @strncpy(i8* %arraydecay6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.70, i32 0, i32 0), i64 %conv7) #2
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %arraydecay9 = getelementptr inbounds [500 x i8], [500 x i8]* %sei_message, i32 0, i32 0
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SEIMessageText10 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 36
  %arraydecay11 = getelementptr inbounds [500 x i8], [500 x i8]* %SEIMessageText10, i32 0, i32 0
  %9 = load i32, i32* %message_size, align 4
  %conv12 = zext i32 %9 to i64
  %call13 = call i8* @strncpy(i8* %arraydecay9, i8* %arraydecay11, i64 %conv12) #2
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.5
  %10 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call15 = call i32 @u_v(i32 8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.71, i32 0, i32 0), i32 5, %struct.Bitstream* %10)
  %11 = load i32, i32* %len, align 4
  %add = add nsw i32 %11, %call15
  store i32 %add, i32* %len, align 4
  %12 = load i32, i32* %message_size, align 4
  %add16 = add i32 %12, 17
  store i32 %add16, i32* %message_size, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.14
  %13 = load i32, i32* %message_size, align 4
  %cmp17 = icmp ugt i32 %13, 254
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call19 = call i32 @u_v(i32 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.72, i32 0, i32 0), i32 255, %struct.Bitstream* %14)
  %15 = load i32, i32* %len, align 4
  %add20 = add nsw i32 %15, %call19
  store i32 %add20, i32* %len, align 4
  %16 = load i32, i32* %message_size, align 4
  %sub = sub i32 %16, 255
  store i32 %sub, i32* %message_size, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load i32, i32* %message_size, align 4
  %18 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call21 = call i32 @u_v(i32 8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.73, i32 0, i32 0), i32 %17, %struct.Bitstream* %18)
  %19 = load i32, i32* %len, align 4
  %add22 = add nsw i32 %19, %call21
  store i32 %add22, i32* %len, align 4
  %timezone = getelementptr inbounds %struct.timeb, %struct.timeb* %tstruct, i32 0, i32 2
  %20 = load i16, i16* %timezone, align 2
  %conv23 = sext i16 %20 to i32
  %21 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call24 = call i32 @u_v(i32 32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.74, i32 0, i32 0), i32 %conv23, %struct.Bitstream* %21)
  %22 = load i32, i32* %len, align 4
  %add25 = add nsw i32 %22, %call24
  store i32 %add25, i32* %len, align 4
  %time = getelementptr inbounds %struct.timeb, %struct.timeb* %tstruct, i32 0, i32 0
  %23 = load i64, i64* %time, align 8
  %conv26 = trunc i64 %23 to i32
  %mul = mul nsw i32 %conv26, 1000
  %millitm = getelementptr inbounds %struct.timeb, %struct.timeb* %tstruct, i32 0, i32 1
  %24 = load i16, i16* %millitm, align 2
  %conv27 = zext i16 %24 to i32
  %add28 = add nsw i32 %mul, %conv27
  %25 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call29 = call i32 @u_v(i32 32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.74, i32 0, i32 0), i32 %add28, %struct.Bitstream* %25)
  %26 = load i32, i32* %len, align 4
  %add30 = add nsw i32 %26, %call29
  store i32 %add30, i32* %len, align 4
  %arrayidx = getelementptr inbounds [9 x i8], [9 x i8]* %uuid_message, i32 0, i64 0
  %27 = load i8, i8* %arrayidx, align 1
  %conv31 = sext i8 %27 to i32
  %shl = shl i32 %conv31, 24
  %arrayidx32 = getelementptr inbounds [9 x i8], [9 x i8]* %uuid_message, i32 0, i64 1
  %28 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %28 to i32
  %shl34 = shl i32 %conv33, 16
  %add35 = add nsw i32 %shl, %shl34
  %arrayidx36 = getelementptr inbounds [9 x i8], [9 x i8]* %uuid_message, i32 0, i64 2
  %29 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %29 to i32
  %shl38 = shl i32 %conv37, 8
  %add39 = add nsw i32 %add35, %shl38
  %arrayidx40 = getelementptr inbounds [9 x i8], [9 x i8]* %uuid_message, i32 0, i64 3
  %30 = load i8, i8* %arrayidx40, align 1
  %conv41 = sext i8 %30 to i32
  %shl42 = shl i32 %conv41, 0
  %add43 = add nsw i32 %add39, %shl42
  %31 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call44 = call i32 @u_v(i32 32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.74, i32 0, i32 0), i32 %add43, %struct.Bitstream* %31)
  %32 = load i32, i32* %len, align 4
  %add45 = add nsw i32 %32, %call44
  store i32 %add45, i32* %len, align 4
  %arrayidx46 = getelementptr inbounds [9 x i8], [9 x i8]* %uuid_message, i32 0, i64 4
  %33 = load i8, i8* %arrayidx46, align 1
  %conv47 = sext i8 %33 to i32
  %shl48 = shl i32 %conv47, 24
  %arrayidx49 = getelementptr inbounds [9 x i8], [9 x i8]* %uuid_message, i32 0, i64 5
  %34 = load i8, i8* %arrayidx49, align 1
  %conv50 = sext i8 %34 to i32
  %shl51 = shl i32 %conv50, 16
  %add52 = add nsw i32 %shl48, %shl51
  %arrayidx53 = getelementptr inbounds [9 x i8], [9 x i8]* %uuid_message, i32 0, i64 6
  %35 = load i8, i8* %arrayidx53, align 1
  %conv54 = sext i8 %35 to i32
  %shl55 = shl i32 %conv54, 8
  %add56 = add nsw i32 %add52, %shl55
  %arrayidx57 = getelementptr inbounds [9 x i8], [9 x i8]* %uuid_message, i32 0, i64 7
  %36 = load i8, i8* %arrayidx57, align 1
  %conv58 = sext i8 %36 to i32
  %shl59 = shl i32 %conv58, 0
  %add60 = add nsw i32 %add56, %shl59
  %37 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call61 = call i32 @u_v(i32 32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.74, i32 0, i32 0), i32 %add60, %struct.Bitstream* %37)
  %38 = load i32, i32* %len, align 4
  %add62 = add nsw i32 %38, %call61
  store i32 %add62, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %39 = load i32, i32* %i, align 4
  %conv63 = zext i32 %39 to i64
  %arraydecay64 = getelementptr inbounds [500 x i8], [500 x i8]* %sei_message, i32 0, i32 0
  %call65 = call i64 @strlen(i8* %arraydecay64) #7
  %cmp66 = icmp ult i64 %conv63, %call65
  br i1 %cmp66, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i32, i32* %i, align 4
  %idxprom = zext i32 %40 to i64
  %arrayidx68 = getelementptr inbounds [500 x i8], [500 x i8]* %sei_message, i32 0, i64 %idxprom
  %41 = load i8, i8* %arrayidx68, align 1
  %conv69 = sext i8 %41 to i32
  %42 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call70 = call i32 @u_v(i32 8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.75, i32 0, i32 0), i32 %conv69, %struct.Bitstream* %42)
  %43 = load i32, i32* %len, align 4
  %add71 = add nsw i32 %43, %call70
  store i32 %add71, i32* %len, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %i, align 4
  %inc = add i32 %44, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %call72 = call i32 @u_v(i32 8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.75, i32 0, i32 0), i32 0, %struct.Bitstream* %45)
  %46 = load i32, i32* %len, align 4
  %add73 = add nsw i32 %46, %call72
  store i32 %add73, i32* %len, align 4
  %47 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  call void @SODBtoRBSP(%struct.Bitstream* %47)
  %48 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %48, i32 0, i32 0
  %49 = load i32, i32* %byte_pos, align 4
  store i32 %49, i32* %LenInBytes, align 4
  %50 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %51 = bitcast %struct.Bitstream* %50 to i8*
  call void @free(i8* %51) #2
  %52 = load i32, i32* %LenInBytes, align 4
  ret i32 %52
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @ftime(%struct.timeb*) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
