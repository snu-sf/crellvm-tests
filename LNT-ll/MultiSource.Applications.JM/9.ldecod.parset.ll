; ModuleID = './MultiSource.Applications.JM/9.ldecod.parset.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_par = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x [16 x i16]], [6 x [32 x i32]], [16 x [16 x i32]], [4 x [12 x [4 x [4 x i32]]]], [16 x i32], i8**, i32*, i32***, i32**, i32, i32, i32, i32, %struct.Slice*, %struct.macroblock*, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32***, i32***, i32****, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i64, i64, %struct.timeb, %struct.timeb, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (%struct.img_par*, %struct.inp_par*)*, i32, i32, i32, i32 }
%struct.datapartition = type { %struct.Bitstream*, %struct.DecodingEnvironment, i32 (%struct.syntaxelement*, %struct.img_par*, %struct.datapartition*)* }
%struct.Bitstream = type { i32, i32, i32, i32, i8*, i32 }
%struct.DecodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32* }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)*, void (%struct.syntaxelement*, %struct.img_par*, %struct.DecodingEnvironment*)* }
%struct.MotionInfoContexts = type { [4 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.inp_par = type { [1000 x i8], [1000 x i8], [1000 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.macroblock = type { i32, [2 x i32], i32, i32, %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], i32, i64, i64, i32, i32, [4 x i8], [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.timeb = type { i64, i16, i16, i16 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16***, i8*, i16**, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, %struct.DecRefPicMarking_s*, i32 }
%struct.colocated_params = type { i32, i32, i32, [6 x [33 x i64]], i8***, i64***, i16****, i8**, [6 x [33 x i64]], i8***, i64***, i16****, i8**, [6 x [33 x i64]], i8***, i64***, i16****, i8**, i8, i8** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture* }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }

@ZZ_SCAN = constant [16 x i8] c"\00\01\04\08\05\02\03\06\09\0C\0D\0A\07\0B\0E\0F", align 16
@ZZ_SCAN8 = constant [64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", align 16
@.str = private unnamed_addr constant [17 x i8] c"   : delta_sl   \00", align 1
@UsedBits = external global i32, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"SPS: profile_idc\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set0_flag\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set1_flag\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set2_flag\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set3_flag\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"SPS: reserved_zero_4bits\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"SPS: level_idc\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"SPS: seq_parameter_set_id\00", align 1
@img = external global %struct.img_par*, align 8
@.str.9 = private unnamed_addr constant [23 x i8] c"SPS: chroma_format_idc\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"SPS: residue_transform_flag\00", align 1
@.str.11 = private unnamed_addr constant [79 x i8] c"[Deprecated High444 Profile] residue_transform_flag = 1 is no longer supported\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"SPS: bit_depth_luma_minus8\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"SPS: bit_depth_chroma_minus8\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"SPS: lossless_qpprime_y_zero_flag\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"SPS: seq_scaling_matrix_present_flag\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"SPS: seq_scaling_list_present_flag\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"SPS: log2_max_frame_num_minus4\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"SPS: pic_order_cnt_type\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"SPS: log2_max_pic_order_cnt_lsb_minus4\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"SPS: delta_pic_order_always_zero_flag\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"SPS: offset_for_non_ref_pic\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"SPS: offset_for_top_to_bottom_field\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"SPS: num_ref_frames_in_pic_order_cnt_cycle\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"SPS: offset_for_ref_frame[i]\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"SPS: num_ref_frames\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"SPS: gaps_in_frame_num_value_allowed_flag\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"SPS: pic_width_in_mbs_minus1\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"SPS: pic_height_in_map_units_minus1\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"SPS: frame_mbs_only_flag\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"SPS: mb_adaptive_frame_field_flag\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"SPS: direct_8x8_inference_flag\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"SPS: frame_cropping_flag\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"SPS: frame_cropping_rect_left_offset\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"SPS: frame_cropping_rect_right_offset\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"SPS: frame_cropping_rect_top_offset\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"SPS: frame_cropping_rect_bottom_offset\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"SPS: vui_parameters_present_flag\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"VUI: aspect_ratio_info_present_flag\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"VUI: aspect_ratio_idc\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"VUI: sar_width\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"VUI: sar_height\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"VUI: overscan_info_present_flag\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"VUI: overscan_appropriate_flag\00", align 1
@.str.44 = private unnamed_addr constant [36 x i8] c"VUI: video_signal_type_present_flag\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"VUI: video_format\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"VUI: video_full_range_flag\00", align 1
@.str.47 = private unnamed_addr constant [36 x i8] c"VUI: color_description_present_flag\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"VUI: colour_primaries\00", align 1
@.str.49 = private unnamed_addr constant [30 x i8] c"VUI: transfer_characteristics\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"VUI: matrix_coefficients\00", align 1
@.str.51 = private unnamed_addr constant [34 x i8] c"VUI: chroma_loc_info_present_flag\00", align 1
@.str.52 = private unnamed_addr constant [38 x i8] c"VUI: chroma_sample_loc_type_top_field\00", align 1
@.str.53 = private unnamed_addr constant [41 x i8] c"VUI: chroma_sample_loc_type_bottom_field\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c"VUI: timing_info_present_flag\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"VUI: num_units_in_tick\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"VUI: time_scale\00", align 1
@.str.57 = private unnamed_addr constant [27 x i8] c"VUI: fixed_frame_rate_flag\00", align 1
@.str.58 = private unnamed_addr constant [37 x i8] c"VUI: nal_hrd_parameters_present_flag\00", align 1
@.str.59 = private unnamed_addr constant [37 x i8] c"VUI: vcl_hrd_parameters_present_flag\00", align 1
@.str.60 = private unnamed_addr constant [24 x i8] c"VUI: low_delay_hrd_flag\00", align 1
@.str.61 = private unnamed_addr constant [32 x i8] c"VUI: pic_struct_present_flag   \00", align 1
@.str.62 = private unnamed_addr constant [32 x i8] c"VUI: bitstream_restriction_flag\00", align 1
@.str.63 = private unnamed_addr constant [45 x i8] c"VUI: motion_vectors_over_pic_boundaries_flag\00", align 1
@.str.64 = private unnamed_addr constant [29 x i8] c"VUI: max_bytes_per_pic_denom\00", align 1
@.str.65 = private unnamed_addr constant [27 x i8] c"VUI: max_bits_per_mb_denom\00", align 1
@.str.66 = private unnamed_addr constant [35 x i8] c"VUI: log2_max_mv_length_horizontal\00", align 1
@.str.67 = private unnamed_addr constant [33 x i8] c"VUI: log2_max_mv_length_vertical\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"VUI: num_reorder_frames\00", align 1
@.str.69 = private unnamed_addr constant [29 x i8] c"VUI: max_dec_frame_buffering\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"VUI: cpb_cnt_minus1\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"VUI: bit_rate_scale\00", align 1
@.str.72 = private unnamed_addr constant [20 x i8] c"VUI: cpb_size_scale\00", align 1
@.str.73 = private unnamed_addr constant [27 x i8] c"VUI: bit_rate_value_minus1\00", align 1
@.str.74 = private unnamed_addr constant [27 x i8] c"VUI: cpb_size_value_minus1\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"VUI: cbr_flag\00", align 1
@.str.76 = private unnamed_addr constant [45 x i8] c"VUI: initial_cpb_removal_delay_length_minus1\00", align 1
@.str.77 = private unnamed_addr constant [37 x i8] c"VUI: cpb_removal_delay_length_minus1\00", align 1
@.str.78 = private unnamed_addr constant [36 x i8] c"VUI: dpb_output_delay_length_minus1\00", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"VUI: time_offset_length\00", align 1
@.str.80 = private unnamed_addr constant [26 x i8] c"PPS: pic_parameter_set_id\00", align 1
@.str.81 = private unnamed_addr constant [26 x i8] c"PPS: seq_parameter_set_id\00", align 1
@.str.82 = private unnamed_addr constant [30 x i8] c"PPS: entropy_coding_mode_flag\00", align 1
@.str.83 = private unnamed_addr constant [28 x i8] c"PPS: pic_order_present_flag\00", align 1
@.str.84 = private unnamed_addr constant [29 x i8] c"PPS: num_slice_groups_minus1\00", align 1
@.str.85 = private unnamed_addr constant [26 x i8] c"PPS: slice_group_map_type\00", align 1
@.str.86 = private unnamed_addr constant [27 x i8] c"PPS: run_length_minus1 [i]\00", align 1
@.str.87 = private unnamed_addr constant [18 x i8] c"PPS: top_left [i]\00", align 1
@.str.88 = private unnamed_addr constant [22 x i8] c"PPS: bottom_right [i]\00", align 1
@.str.89 = private unnamed_addr constant [39 x i8] c"PPS: slice_group_change_direction_flag\00", align 1
@.str.90 = private unnamed_addr constant [36 x i8] c"PPS: slice_group_change_rate_minus1\00", align 1
@.str.91 = private unnamed_addr constant [38 x i8] c"PPS: num_slice_group_map_units_minus1\00", align 1
@.str.92 = private unnamed_addr constant [18 x i8] c"slice_group_id[i]\00", align 1
@.str.93 = private unnamed_addr constant [34 x i8] c"PPS: num_ref_idx_l0_active_minus1\00", align 1
@.str.94 = private unnamed_addr constant [34 x i8] c"PPS: num_ref_idx_l1_active_minus1\00", align 1
@.str.95 = private unnamed_addr constant [24 x i8] c"PPS: weighted_pred_flag\00", align 1
@.str.96 = private unnamed_addr constant [25 x i8] c"PPS: weighted_bipred_idc\00", align 1
@.str.97 = private unnamed_addr constant [25 x i8] c"PPS: pic_init_qp_minus26\00", align 1
@.str.98 = private unnamed_addr constant [25 x i8] c"PPS: pic_init_qs_minus26\00", align 1
@.str.99 = private unnamed_addr constant [28 x i8] c"PPS: chroma_qp_index_offset\00", align 1
@.str.100 = private unnamed_addr constant [44 x i8] c"PPS: deblocking_filter_control_present_flag\00", align 1
@.str.101 = private unnamed_addr constant [33 x i8] c"PPS: constrained_intra_pred_flag\00", align 1
@.str.102 = private unnamed_addr constant [36 x i8] c"PPS: redundant_pic_cnt_present_flag\00", align 1
@.str.103 = private unnamed_addr constant [29 x i8] c"PPS: transform_8x8_mode_flag\00", align 1
@.str.104 = private unnamed_addr constant [37 x i8] c"PPS: pic_scaling_matrix_present_flag\00", align 1
@.str.105 = private unnamed_addr constant [35 x i8] c"PPS: pic_scaling_list_present_flag\00", align 1
@.str.106 = private unnamed_addr constant [35 x i8] c"PPS: second_chroma_qp_index_offset\00", align 1
@.str.107 = private unnamed_addr constant [58 x i8] c"Consistency checking a picture parset, to be implemented\0A\00", align 1
@.str.108 = private unnamed_addr constant [59 x i8] c"Consistency checking a sequence parset, to be implemented\0A\00", align 1
@PicParSet = common global [256 x %struct.pic_parameter_set_rbsp_t] zeroinitializer, align 16
@SeqParSet = common global [32 x %struct.seq_parameter_set_rbsp_t] zeroinitializer, align 16
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@dec_picture = external global %struct.storable_picture*, align 8
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@Co_located = external global %struct.colocated_params*, align 8
@.str.109 = private unnamed_addr constant [101 x i8] c"Trying to use an invalid (uninitialized) Picture Parameter Set with ID %d, expect the unexpected...\0A\00", align 1
@.str.110 = private unnamed_addr constant [112 x i8] c"PicParset %d references an invalid (uninitialized) Sequence Parameter Set with ID %d, expect the unexpected...\0A\00", align 1
@.str.111 = private unnamed_addr constant [38 x i8] c"invalid sps->pic_order_cnt_type = %d\0A\00", align 1
@.str.112 = private unnamed_addr constant [24 x i8] c"pic_order_cnt_type != 1\00", align 1
@.str.113 = private unnamed_addr constant [48 x i8] c"num_ref_frames_in_pic_order_cnt_cycle too large\00", align 1
@nal_startcode_follows = common global i32 (%struct.img_par*, i32)* null, align 8
@imgY_ref = common global i16** null, align 8
@imgUV_ref = common global i16*** null, align 8
@PicPos = common global i32** null, align 8
@ReMapRef = common global [20 x i32] zeroinitializer, align 16
@Bframe_ctr = common global i32 0, align 4
@frame_no = common global i32 0, align 4
@g_nFrame = common global i32 0, align 4
@TopFieldForSkip_Y = common global [16 x [16 x i32]] zeroinitializer, align 16
@TopFieldForSkip_UV = common global [2 x [16 x [16 x i32]]] zeroinitializer, align 16
@InvLevelScale4x4Luma_Intra = common global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@InvLevelScale4x4Chroma_Intra = common global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@InvLevelScale4x4Luma_Inter = common global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@InvLevelScale4x4Chroma_Inter = common global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@InvLevelScale8x8Luma_Intra = common global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@InvLevelScale8x8Luma_Inter = common global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@qmatrix = common global [8 x i32*] zeroinitializer, align 16
@errortext = common global [300 x i8] zeroinitializer, align 16
@tot_time = common global i64 0, align 8
@p_out = common global i32 0, align 4
@p_ref = common global i32 0, align 4
@p_log = common global %struct._IO_FILE* null, align 8
@previous_frame_num = common global i32 0, align 4
@ref_flag = common global [17 x i32] zeroinitializer, align 16
@Is_primary_correct = common global i32 0, align 4
@Is_redundant_correct = common global i32 0, align 4
@redundant_slice_ref_idx = common global i32 0, align 4
@last_out_fs = common global %struct.frame_store* null, align 8
@pocs_in_dpb = common global [100 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @Scaling_List(i32* %scalingList, i32 %sizeOfScalingList, i32* %UseDefaultScalingMatrix, %struct.Bitstream* %s) #0 {
entry:
  %scalingList.addr = alloca i32*, align 8
  %sizeOfScalingList.addr = alloca i32, align 4
  %UseDefaultScalingMatrix.addr = alloca i32*, align 8
  %s.addr = alloca %struct.Bitstream*, align 8
  %j = alloca i32, align 4
  %scanj = alloca i32, align 4
  %delta_scale = alloca i32, align 4
  %lastScale = alloca i32, align 4
  %nextScale = alloca i32, align 4
  store i32* %scalingList, i32** %scalingList.addr, align 8
  store i32 %sizeOfScalingList, i32* %sizeOfScalingList.addr, align 4
  store i32* %UseDefaultScalingMatrix, i32** %UseDefaultScalingMatrix.addr, align 8
  store %struct.Bitstream* %s, %struct.Bitstream** %s.addr, align 8
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
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %8 = load %struct.Bitstream*, %struct.Bitstream** %s.addr, align 8
  %call = call i32 @se_v(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), %struct.Bitstream* %8)
  store i32 %call, i32* %delta_scale, align 4
  %9 = load i32, i32* %lastScale, align 4
  %10 = load i32, i32* %delta_scale, align 4
  %add = add nsw i32 %9, %10
  %add7 = add nsw i32 %add, 256
  %rem = srem i32 %add7, 256
  store i32 %rem, i32* %nextScale, align 4
  %11 = load i32, i32* %scanj, align 4
  %cmp8 = icmp eq i32 %11, 0
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %12 = load i32, i32* %nextScale, align 4
  %cmp10 = icmp eq i32 %12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %13 = phi i1 [ false, %if.then ], [ %cmp10, %land.rhs ]
  %land.ext = zext i1 %13 to i32
  %14 = load i32*, i32** %UseDefaultScalingMatrix.addr, align 8
  store i32 %land.ext, i32* %14, align 4
  br label %if.end

if.end:                                           ; preds = %land.end, %cond.end
  %15 = load i32, i32* %nextScale, align 4
  %cmp12 = icmp eq i32 %15, 0
  br i1 %cmp12, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %if.end
  %16 = load i32, i32* %lastScale, align 4
  br label %cond.end.16

cond.false.15:                                    ; preds = %if.end
  %17 = load i32, i32* %nextScale, align 4
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.14
  %cond17 = phi i32 [ %16, %cond.true.14 ], [ %17, %cond.false.15 ]
  %18 = load i32, i32* %scanj, align 4
  %idxprom18 = sext i32 %18 to i64
  %19 = load i32*, i32** %scalingList.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %19, i64 %idxprom18
  store i32 %cond17, i32* %arrayidx19, align 4
  %20 = load i32, i32* %scanj, align 4
  %idxprom20 = sext i32 %20 to i64
  %21 = load i32*, i32** %scalingList.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %21, i64 %idxprom20
  %22 = load i32, i32* %arrayidx21, align 4
  store i32 %22, i32* %lastScale, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.16
  %23 = load i32, i32* %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @se_v(i8*, %struct.Bitstream*) #1

; Function Attrs: nounwind uwtable
define i32 @InterpretSPS(%struct.datapartition* %p, %struct.seq_parameter_set_rbsp_t* %sps) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.datapartition*, align 8
  %sps.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %i = alloca i32, align 4
  %reserved_zero = alloca i32, align 4
  %s = alloca %struct.Bitstream*, align 8
  store %struct.datapartition* %p, %struct.datapartition** %p.addr, align 8
  store %struct.seq_parameter_set_rbsp_t* %sps, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %0 = load %struct.datapartition*, %struct.datapartition** %p.addr, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %0, i32 0, i32 0
  %1 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %1, %struct.Bitstream** %s, align 8
  store i32 0, i32* @UsedBits, align 4
  %2 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call = call i32 @u_v(i32 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), %struct.Bitstream* %2)
  %3 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %profile_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %3, i32 0, i32 1
  store i32 %call, i32* %profile_idc, align 4
  %4 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %profile_idc1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %4, i32 0, i32 1
  %5 = load i32, i32* %profile_idc1, align 4
  %cmp = icmp ne i32 %5, 66
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %profile_idc2 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %6, i32 0, i32 1
  %7 = load i32, i32* %profile_idc2, align 4
  %cmp3 = icmp ne i32 %7, 77
  br i1 %cmp3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %8 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %profile_idc5 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %8, i32 0, i32 1
  %9 = load i32, i32* %profile_idc5, align 4
  %cmp6 = icmp ne i32 %9, 88
  br i1 %cmp6, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true.4
  %10 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %profile_idc8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %10, i32 0, i32 1
  %11 = load i32, i32* %profile_idc8, align 4
  %cmp9 = icmp ne i32 %11, 100
  br i1 %cmp9, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %land.lhs.true.7
  %12 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %profile_idc11 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %12, i32 0, i32 1
  %13 = load i32, i32* %profile_idc11, align 4
  %cmp12 = icmp ne i32 %13, 110
  br i1 %cmp12, label %land.lhs.true.13, label %if.end

land.lhs.true.13:                                 ; preds = %land.lhs.true.10
  %14 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %profile_idc14 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %14, i32 0, i32 1
  %15 = load i32, i32* %profile_idc14, align 4
  %cmp15 = icmp ne i32 %15, 122
  br i1 %cmp15, label %land.lhs.true.16, label %if.end

land.lhs.true.16:                                 ; preds = %land.lhs.true.13
  %16 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %profile_idc17 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %16, i32 0, i32 1
  %17 = load i32, i32* %profile_idc17, align 4
  %cmp18 = icmp ne i32 %17, 144
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.16
  %18 = load i32, i32* @UsedBits, align 4
  store i32 %18, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.16, %land.lhs.true.13, %land.lhs.true.10, %land.lhs.true.7, %land.lhs.true.4, %land.lhs.true, %entry
  %19 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call19 = call i32 @u_1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), %struct.Bitstream* %19)
  %20 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %constrained_set0_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %20, i32 0, i32 2
  store i32 %call19, i32* %constrained_set0_flag, align 4
  %21 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call20 = call i32 @u_1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), %struct.Bitstream* %21)
  %22 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %constrained_set1_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %22, i32 0, i32 3
  store i32 %call20, i32* %constrained_set1_flag, align 4
  %23 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call21 = call i32 @u_1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), %struct.Bitstream* %23)
  %24 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %constrained_set2_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %24, i32 0, i32 4
  store i32 %call21, i32* %constrained_set2_flag, align 4
  %25 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call22 = call i32 @u_1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), %struct.Bitstream* %25)
  %26 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %constrained_set3_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %26, i32 0, i32 5
  store i32 %call22, i32* %constrained_set3_flag, align 4
  %27 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call23 = call i32 @u_v(i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), %struct.Bitstream* %27)
  store i32 %call23, i32* %reserved_zero, align 4
  %28 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call24 = call i32 @u_v(i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), %struct.Bitstream* %28)
  %29 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %level_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %29, i32 0, i32 6
  store i32 %call24, i32* %level_idc, align 4
  %30 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call25 = call i32 @ue_v(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), %struct.Bitstream* %30)
  %31 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_parameter_set_id = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %31, i32 0, i32 7
  store i32 %call25, i32* %seq_parameter_set_id, align 4
  %32 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %32, i32 0, i32 8
  store i32 1, i32* %chroma_format_idc, align 4
  %33 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %bit_depth_luma_minus8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %33, i32 0, i32 15
  store i32 0, i32* %bit_depth_luma_minus8, align 4
  %34 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %bit_depth_chroma_minus8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %34, i32 0, i32 16
  store i32 0, i32* %bit_depth_chroma_minus8, align 4
  %35 = load %struct.img_par*, %struct.img_par** @img, align 8
  %lossless_qpprime_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %35, i32 0, i32 112
  store i32 0, i32* %lossless_qpprime_flag, align 4
  %36 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %profile_idc26 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %36, i32 0, i32 1
  %37 = load i32, i32* %profile_idc26, align 4
  %cmp27 = icmp eq i32 %37, 100
  br i1 %cmp27, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %38 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %profile_idc28 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %38, i32 0, i32 1
  %39 = load i32, i32* %profile_idc28, align 4
  %cmp29 = icmp eq i32 %39, 110
  br i1 %cmp29, label %if.then.36, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false
  %40 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %profile_idc31 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %40, i32 0, i32 1
  %41 = load i32, i32* %profile_idc31, align 4
  %cmp32 = icmp eq i32 %41, 122
  br i1 %cmp32, label %if.then.36, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false.30
  %42 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %profile_idc34 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %42, i32 0, i32 1
  %43 = load i32, i32* %profile_idc34, align 4
  %cmp35 = icmp eq i32 %43, 144
  br i1 %cmp35, label %if.then.36, label %if.end.78

if.then.36:                                       ; preds = %lor.lhs.false.33, %lor.lhs.false.30, %lor.lhs.false, %if.end
  %44 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call37 = call i32 @ue_v(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), %struct.Bitstream* %44)
  %45 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %chroma_format_idc38 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %45, i32 0, i32 8
  store i32 %call37, i32* %chroma_format_idc38, align 4
  %46 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %chroma_format_idc39 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %46, i32 0, i32 8
  %47 = load i32, i32* %chroma_format_idc39, align 4
  %cmp40 = icmp eq i32 %47, 3
  br i1 %cmp40, label %if.then.41, label %if.end.46

if.then.41:                                       ; preds = %if.then.36
  %48 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call42 = call i32 @u_1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0), %struct.Bitstream* %48)
  store i32 %call42, i32* %i, align 4
  %49 = load i32, i32* %i, align 4
  %cmp43 = icmp eq i32 %49, 1
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.then.41
  call void @error(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.11, i32 0, i32 0), i32 1000)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.then.41
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.36
  %50 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call47 = call i32 @ue_v(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0), %struct.Bitstream* %50)
  %51 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %bit_depth_luma_minus848 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %51, i32 0, i32 15
  store i32 %call47, i32* %bit_depth_luma_minus848, align 4
  %52 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call49 = call i32 @ue_v(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0), %struct.Bitstream* %52)
  %53 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %bit_depth_chroma_minus850 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %53, i32 0, i32 16
  store i32 %call49, i32* %bit_depth_chroma_minus850, align 4
  %54 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call51 = call i32 @u_1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i32 0, i32 0), %struct.Bitstream* %54)
  %55 = load %struct.img_par*, %struct.img_par** @img, align 8
  %lossless_qpprime_flag52 = getelementptr inbounds %struct.img_par, %struct.img_par* %55, i32 0, i32 112
  store i32 %call51, i32* %lossless_qpprime_flag52, align 4
  %56 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call53 = call i32 @u_1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i32 0, i32 0), %struct.Bitstream* %56)
  %57 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_matrix_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %57, i32 0, i32 9
  store i32 %call53, i32* %seq_scaling_matrix_present_flag, align 4
  %58 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_matrix_present_flag54 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %58, i32 0, i32 9
  %59 = load i32, i32* %seq_scaling_matrix_present_flag54, align 4
  %tobool = icmp ne i32 %59, 0
  br i1 %tobool, label %if.then.55, label %if.end.77

if.then.55:                                       ; preds = %if.end.46
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.55
  %60 = load i32, i32* %i, align 4
  %cmp56 = icmp ult i32 %60, 8
  br i1 %cmp56, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %61 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call57 = call i32 @u_1(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i32 0, i32 0), %struct.Bitstream* %61)
  %62 = load i32, i32* %i, align 4
  %idxprom = zext i32 %62 to i64
  %63 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_list_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %63, i32 0, i32 10
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %seq_scaling_list_present_flag, i32 0, i64 %idxprom
  store i32 %call57, i32* %arrayidx, align 4
  %64 = load i32, i32* %i, align 4
  %idxprom58 = zext i32 %64 to i64
  %65 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_list_present_flag59 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %65, i32 0, i32 10
  %arrayidx60 = getelementptr inbounds [8 x i32], [8 x i32]* %seq_scaling_list_present_flag59, i32 0, i64 %idxprom58
  %66 = load i32, i32* %arrayidx60, align 4
  %tobool61 = icmp ne i32 %66, 0
  br i1 %tobool61, label %if.then.62, label %if.end.76

if.then.62:                                       ; preds = %for.body
  %67 = load i32, i32* %i, align 4
  %cmp63 = icmp ult i32 %67, 6
  br i1 %cmp63, label %if.then.64, label %if.else

if.then.64:                                       ; preds = %if.then.62
  %68 = load i32, i32* %i, align 4
  %idxprom65 = zext i32 %68 to i64
  %69 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %ScalingList4x4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %69, i32 0, i32 11
  %arrayidx66 = getelementptr inbounds [6 x [16 x i32]], [6 x [16 x i32]]* %ScalingList4x4, i32 0, i64 %idxprom65
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx66, i32 0, i32 0
  %70 = load i32, i32* %i, align 4
  %idxprom67 = zext i32 %70 to i64
  %71 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %UseDefaultScalingMatrix4x4Flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %71, i32 0, i32 13
  %arrayidx68 = getelementptr inbounds [6 x i32], [6 x i32]* %UseDefaultScalingMatrix4x4Flag, i32 0, i64 %idxprom67
  %72 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  call void @Scaling_List(i32* %arraydecay, i32 16, i32* %arrayidx68, %struct.Bitstream* %72)
  br label %if.end.75

if.else:                                          ; preds = %if.then.62
  %73 = load i32, i32* %i, align 4
  %sub = sub i32 %73, 6
  %idxprom69 = zext i32 %sub to i64
  %74 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %ScalingList8x8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %74, i32 0, i32 12
  %arrayidx70 = getelementptr inbounds [2 x [64 x i32]], [2 x [64 x i32]]* %ScalingList8x8, i32 0, i64 %idxprom69
  %arraydecay71 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx70, i32 0, i32 0
  %75 = load i32, i32* %i, align 4
  %sub72 = sub i32 %75, 6
  %idxprom73 = zext i32 %sub72 to i64
  %76 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %UseDefaultScalingMatrix8x8Flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %76, i32 0, i32 14
  %arrayidx74 = getelementptr inbounds [2 x i32], [2 x i32]* %UseDefaultScalingMatrix8x8Flag, i32 0, i64 %idxprom73
  %77 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  call void @Scaling_List(i32* %arraydecay71, i32 64, i32* %arrayidx74, %struct.Bitstream* %77)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else, %if.then.64
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.76
  %78 = load i32, i32* %i, align 4
  %inc = add i32 %78, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.77

if.end.77:                                        ; preds = %for.end, %if.end.46
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %lor.lhs.false.33
  %79 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call79 = call i32 @ue_v(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i32 0, i32 0), %struct.Bitstream* %79)
  %80 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %log2_max_frame_num_minus4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %80, i32 0, i32 17
  store i32 %call79, i32* %log2_max_frame_num_minus4, align 4
  %81 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call80 = call i32 @ue_v(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0), %struct.Bitstream* %81)
  %82 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_order_cnt_type = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %82, i32 0, i32 18
  store i32 %call80, i32* %pic_order_cnt_type, align 4
  %83 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_order_cnt_type81 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %83, i32 0, i32 18
  %84 = load i32, i32* %pic_order_cnt_type81, align 4
  %cmp82 = icmp eq i32 %84, 0
  br i1 %cmp82, label %if.then.83, label %if.else.85

if.then.83:                                       ; preds = %if.end.78
  %85 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call84 = call i32 @ue_v(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i32 0, i32 0), %struct.Bitstream* %85)
  %86 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %log2_max_pic_order_cnt_lsb_minus4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %86, i32 0, i32 19
  store i32 %call84, i32* %log2_max_pic_order_cnt_lsb_minus4, align 4
  br label %if.end.104

if.else.85:                                       ; preds = %if.end.78
  %87 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_order_cnt_type86 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %87, i32 0, i32 18
  %88 = load i32, i32* %pic_order_cnt_type86, align 4
  %cmp87 = icmp eq i32 %88, 1
  br i1 %cmp87, label %if.then.88, label %if.end.103

if.then.88:                                       ; preds = %if.else.85
  %89 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call89 = call i32 @u_1(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i32 0, i32 0), %struct.Bitstream* %89)
  %90 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %delta_pic_order_always_zero_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %90, i32 0, i32 20
  store i32 %call89, i32* %delta_pic_order_always_zero_flag, align 4
  %91 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call90 = call i32 @se_v(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0), %struct.Bitstream* %91)
  %92 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %offset_for_non_ref_pic = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %92, i32 0, i32 21
  store i32 %call90, i32* %offset_for_non_ref_pic, align 4
  %93 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call91 = call i32 @se_v(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i32 0, i32 0), %struct.Bitstream* %93)
  %94 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %offset_for_top_to_bottom_field = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %94, i32 0, i32 22
  store i32 %call91, i32* %offset_for_top_to_bottom_field, align 4
  %95 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call92 = call i32 @ue_v(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i32 0, i32 0), %struct.Bitstream* %95)
  %96 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %num_ref_frames_in_pic_order_cnt_cycle = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %96, i32 0, i32 23
  store i32 %call92, i32* %num_ref_frames_in_pic_order_cnt_cycle, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.100, %if.then.88
  %97 = load i32, i32* %i, align 4
  %98 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %num_ref_frames_in_pic_order_cnt_cycle94 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %98, i32 0, i32 23
  %99 = load i32, i32* %num_ref_frames_in_pic_order_cnt_cycle94, align 4
  %cmp95 = icmp ult i32 %97, %99
  br i1 %cmp95, label %for.body.96, label %for.end.102

for.body.96:                                      ; preds = %for.cond.93
  %100 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call97 = call i32 @se_v(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i32 0, i32 0), %struct.Bitstream* %100)
  %101 = load i32, i32* %i, align 4
  %idxprom98 = zext i32 %101 to i64
  %102 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %offset_for_ref_frame = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %102, i32 0, i32 24
  %arrayidx99 = getelementptr inbounds [256 x i32], [256 x i32]* %offset_for_ref_frame, i32 0, i64 %idxprom98
  store i32 %call97, i32* %arrayidx99, align 4
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.body.96
  %103 = load i32, i32* %i, align 4
  %inc101 = add i32 %103, 1
  store i32 %inc101, i32* %i, align 4
  br label %for.cond.93

for.end.102:                                      ; preds = %for.cond.93
  br label %if.end.103

if.end.103:                                       ; preds = %for.end.102, %if.else.85
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.then.83
  %104 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call105 = call i32 @ue_v(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0), %struct.Bitstream* %104)
  %105 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %num_ref_frames = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %105, i32 0, i32 25
  store i32 %call105, i32* %num_ref_frames, align 4
  %106 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call106 = call i32 @u_1(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i32 0, i32 0), %struct.Bitstream* %106)
  %107 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %gaps_in_frame_num_value_allowed_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %107, i32 0, i32 26
  store i32 %call106, i32* %gaps_in_frame_num_value_allowed_flag, align 4
  %108 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call107 = call i32 @ue_v(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i32 0, i32 0), %struct.Bitstream* %108)
  %109 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_width_in_mbs_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %109, i32 0, i32 27
  store i32 %call107, i32* %pic_width_in_mbs_minus1, align 4
  %110 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call108 = call i32 @ue_v(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i32 0, i32 0), %struct.Bitstream* %110)
  %111 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_height_in_map_units_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %111, i32 0, i32 28
  store i32 %call108, i32* %pic_height_in_map_units_minus1, align 4
  %112 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call109 = call i32 @u_1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0), %struct.Bitstream* %112)
  %113 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %113, i32 0, i32 29
  store i32 %call109, i32* %frame_mbs_only_flag, align 4
  %114 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_mbs_only_flag110 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %114, i32 0, i32 29
  %115 = load i32, i32* %frame_mbs_only_flag110, align 4
  %tobool111 = icmp ne i32 %115, 0
  br i1 %tobool111, label %if.end.114, label %if.then.112

if.then.112:                                      ; preds = %if.end.104
  %116 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call113 = call i32 @u_1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i32 0, i32 0), %struct.Bitstream* %116)
  %117 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %mb_adaptive_frame_field_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %117, i32 0, i32 30
  store i32 %call113, i32* %mb_adaptive_frame_field_flag, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %if.end.104
  %118 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call115 = call i32 @u_1(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i32 0, i32 0), %struct.Bitstream* %118)
  %119 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %direct_8x8_inference_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %119, i32 0, i32 31
  store i32 %call115, i32* %direct_8x8_inference_flag, align 4
  %120 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call116 = call i32 @u_1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0), %struct.Bitstream* %120)
  %121 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %121, i32 0, i32 32
  store i32 %call116, i32* %frame_cropping_flag, align 4
  %122 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_flag117 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %122, i32 0, i32 32
  %123 = load i32, i32* %frame_cropping_flag117, align 4
  %tobool118 = icmp ne i32 %123, 0
  br i1 %tobool118, label %if.then.119, label %if.end.124

if.then.119:                                      ; preds = %if.end.114
  %124 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call120 = call i32 @ue_v(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i32 0, i32 0), %struct.Bitstream* %124)
  %125 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_rect_left_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %125, i32 0, i32 33
  store i32 %call120, i32* %frame_cropping_rect_left_offset, align 4
  %126 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call121 = call i32 @ue_v(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.34, i32 0, i32 0), %struct.Bitstream* %126)
  %127 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_rect_right_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %127, i32 0, i32 34
  store i32 %call121, i32* %frame_cropping_rect_right_offset, align 4
  %128 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call122 = call i32 @ue_v(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i32 0, i32 0), %struct.Bitstream* %128)
  %129 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_rect_top_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %129, i32 0, i32 35
  store i32 %call122, i32* %frame_cropping_rect_top_offset, align 4
  %130 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call123 = call i32 @ue_v(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.36, i32 0, i32 0), %struct.Bitstream* %130)
  %131 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_rect_bottom_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %131, i32 0, i32 36
  store i32 %call123, i32* %frame_cropping_rect_bottom_offset, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.119, %if.end.114
  %132 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call125 = call i32 @u_1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.37, i32 0, i32 0), %struct.Bitstream* %132)
  %133 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_parameters_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %133, i32 0, i32 37
  store i32 %call125, i32* %vui_parameters_present_flag, align 4
  %134 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  call void @InitVUI(%struct.seq_parameter_set_rbsp_t* %134)
  %135 = load %struct.datapartition*, %struct.datapartition** %p.addr, align 8
  %136 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %call126 = call i32 @ReadVUI(%struct.datapartition* %135, %struct.seq_parameter_set_rbsp_t* %136)
  %137 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %Valid = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %137, i32 0, i32 0
  store i32 1, i32* %Valid, align 4
  %138 = load i32, i32* @UsedBits, align 4
  store i32 %138, i32* %retval
  br label %return

return:                                           ; preds = %if.end.124, %if.then
  %139 = load i32, i32* %retval
  ret i32 %139
}

declare i32 @u_v(i32, i8*, %struct.Bitstream*) #1

declare i32 @u_1(i8*, %struct.Bitstream*) #1

declare i32 @ue_v(i8*, %struct.Bitstream*) #1

declare void @error(i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @InitVUI(%struct.seq_parameter_set_rbsp_t* %sps) #0 {
entry:
  %sps.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  store %struct.seq_parameter_set_rbsp_t* %sps, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %0 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %0, i32 0, i32 38
  %matrix_coefficients = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters, i32 0, i32 12
  store i32 2, i32* %matrix_coefficients, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ReadVUI(%struct.datapartition* %p, %struct.seq_parameter_set_rbsp_t* %sps) #0 {
entry:
  %p.addr = alloca %struct.datapartition*, align 8
  %sps.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %s = alloca %struct.Bitstream*, align 8
  store %struct.datapartition* %p, %struct.datapartition** %p.addr, align 8
  store %struct.seq_parameter_set_rbsp_t* %sps, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %0 = load %struct.datapartition*, %struct.datapartition** %p.addr, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %0, i32 0, i32 0
  %1 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %1, %struct.Bitstream** %s, align 8
  %2 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_parameters_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %2, i32 0, i32 37
  %3 = load i32, i32* %vui_parameters_present_flag, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.123

if.then:                                          ; preds = %entry
  %4 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call = call i32 @u_1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.38, i32 0, i32 0), %struct.Bitstream* %4)
  %5 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %5, i32 0, i32 38
  %aspect_ratio_info_present_flag = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters, i32 0, i32 0
  store i32 %call, i32* %aspect_ratio_info_present_flag, align 4
  %6 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %6, i32 0, i32 38
  %aspect_ratio_info_present_flag2 = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters1, i32 0, i32 0
  %7 = load i32, i32* %aspect_ratio_info_present_flag2, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %if.then.4, label %if.end.14

if.then.4:                                        ; preds = %if.then
  %8 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call5 = call i32 @u_v(i32 8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0), %struct.Bitstream* %8)
  %9 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters6 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %9, i32 0, i32 38
  %aspect_ratio_idc = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters6, i32 0, i32 1
  store i32 %call5, i32* %aspect_ratio_idc, align 4
  %10 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters7 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %10, i32 0, i32 38
  %aspect_ratio_idc8 = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters7, i32 0, i32 1
  %11 = load i32, i32* %aspect_ratio_idc8, align 4
  %cmp = icmp eq i32 255, %11
  br i1 %cmp, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.4
  %12 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call10 = call i32 @u_v(i32 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), %struct.Bitstream* %12)
  %13 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters11 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %13, i32 0, i32 38
  %sar_width = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters11, i32 0, i32 2
  store i32 %call10, i32* %sar_width, align 4
  %14 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call12 = call i32 @u_v(i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0), %struct.Bitstream* %14)
  %15 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters13 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %15, i32 0, i32 38
  %sar_height = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters13, i32 0, i32 3
  store i32 %call12, i32* %sar_height, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then.4
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  %16 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call15 = call i32 @u_1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.42, i32 0, i32 0), %struct.Bitstream* %16)
  %17 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters16 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %17, i32 0, i32 38
  %overscan_info_present_flag = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters16, i32 0, i32 4
  store i32 %call15, i32* %overscan_info_present_flag, align 4
  %18 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters17 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %18, i32 0, i32 38
  %overscan_info_present_flag18 = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters17, i32 0, i32 4
  %19 = load i32, i32* %overscan_info_present_flag18, align 4
  %tobool19 = icmp ne i32 %19, 0
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.14
  %20 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call21 = call i32 @u_1(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i32 0, i32 0), %struct.Bitstream* %20)
  %21 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters22 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %21, i32 0, i32 38
  %overscan_appropriate_flag = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters22, i32 0, i32 5
  store i32 %call21, i32* %overscan_appropriate_flag, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.14
  %22 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call24 = call i32 @u_1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.44, i32 0, i32 0), %struct.Bitstream* %22)
  %23 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters25 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %23, i32 0, i32 38
  %video_signal_type_present_flag = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters25, i32 0, i32 6
  store i32 %call24, i32* %video_signal_type_present_flag, align 4
  %24 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters26 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %24, i32 0, i32 38
  %video_signal_type_present_flag27 = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters26, i32 0, i32 6
  %25 = load i32, i32* %video_signal_type_present_flag27, align 4
  %tobool28 = icmp ne i32 %25, 0
  br i1 %tobool28, label %if.then.29, label %if.end.47

if.then.29:                                       ; preds = %if.end.23
  %26 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call30 = call i32 @u_v(i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i32 0, i32 0), %struct.Bitstream* %26)
  %27 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters31 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %27, i32 0, i32 38
  %video_format = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters31, i32 0, i32 7
  store i32 %call30, i32* %video_format, align 4
  %28 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call32 = call i32 @u_1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.46, i32 0, i32 0), %struct.Bitstream* %28)
  %29 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters33 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %29, i32 0, i32 38
  %video_full_range_flag = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters33, i32 0, i32 8
  store i32 %call32, i32* %video_full_range_flag, align 4
  %30 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call34 = call i32 @u_1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.47, i32 0, i32 0), %struct.Bitstream* %30)
  %31 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters35 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %31, i32 0, i32 38
  %colour_description_present_flag = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters35, i32 0, i32 9
  store i32 %call34, i32* %colour_description_present_flag, align 4
  %32 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters36 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %32, i32 0, i32 38
  %colour_description_present_flag37 = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters36, i32 0, i32 9
  %33 = load i32, i32* %colour_description_present_flag37, align 4
  %tobool38 = icmp ne i32 %33, 0
  br i1 %tobool38, label %if.then.39, label %if.end.46

if.then.39:                                       ; preds = %if.then.29
  %34 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call40 = call i32 @u_v(i32 8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.48, i32 0, i32 0), %struct.Bitstream* %34)
  %35 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters41 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %35, i32 0, i32 38
  %colour_primaries = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters41, i32 0, i32 10
  store i32 %call40, i32* %colour_primaries, align 4
  %36 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call42 = call i32 @u_v(i32 8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.49, i32 0, i32 0), %struct.Bitstream* %36)
  %37 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters43 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %37, i32 0, i32 38
  %transfer_characteristics = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters43, i32 0, i32 11
  store i32 %call42, i32* %transfer_characteristics, align 4
  %38 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call44 = call i32 @u_v(i32 8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.50, i32 0, i32 0), %struct.Bitstream* %38)
  %39 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters45 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %39, i32 0, i32 38
  %matrix_coefficients = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters45, i32 0, i32 12
  store i32 %call44, i32* %matrix_coefficients, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.39, %if.then.29
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.23
  %40 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call48 = call i32 @u_1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.51, i32 0, i32 0), %struct.Bitstream* %40)
  %41 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters49 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %41, i32 0, i32 38
  %chroma_location_info_present_flag = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters49, i32 0, i32 13
  store i32 %call48, i32* %chroma_location_info_present_flag, align 4
  %42 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters50 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %42, i32 0, i32 38
  %chroma_location_info_present_flag51 = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters50, i32 0, i32 13
  %43 = load i32, i32* %chroma_location_info_present_flag51, align 4
  %tobool52 = icmp ne i32 %43, 0
  br i1 %tobool52, label %if.then.53, label %if.end.58

if.then.53:                                       ; preds = %if.end.47
  %44 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call54 = call i32 @ue_v(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.52, i32 0, i32 0), %struct.Bitstream* %44)
  %45 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters55 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %45, i32 0, i32 38
  %chroma_sample_loc_type_top_field = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters55, i32 0, i32 14
  store i32 %call54, i32* %chroma_sample_loc_type_top_field, align 4
  %46 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call56 = call i32 @ue_v(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.53, i32 0, i32 0), %struct.Bitstream* %46)
  %47 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters57 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %47, i32 0, i32 38
  %chroma_sample_loc_type_bottom_field = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters57, i32 0, i32 15
  store i32 %call56, i32* %chroma_sample_loc_type_bottom_field, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.53, %if.end.47
  %48 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call59 = call i32 @u_1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.54, i32 0, i32 0), %struct.Bitstream* %48)
  %49 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters60 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %49, i32 0, i32 38
  %timing_info_present_flag = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters60, i32 0, i32 16
  store i32 %call59, i32* %timing_info_present_flag, align 4
  %50 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters61 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %50, i32 0, i32 38
  %timing_info_present_flag62 = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters61, i32 0, i32 16
  %51 = load i32, i32* %timing_info_present_flag62, align 4
  %tobool63 = icmp ne i32 %51, 0
  br i1 %tobool63, label %if.then.64, label %if.end.71

if.then.64:                                       ; preds = %if.end.58
  %52 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call65 = call i32 @u_v(i32 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.55, i32 0, i32 0), %struct.Bitstream* %52)
  %53 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters66 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %53, i32 0, i32 38
  %num_units_in_tick = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters66, i32 0, i32 17
  store i32 %call65, i32* %num_units_in_tick, align 4
  %54 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call67 = call i32 @u_v(i32 32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0), %struct.Bitstream* %54)
  %55 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters68 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %55, i32 0, i32 38
  %time_scale = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters68, i32 0, i32 18
  store i32 %call67, i32* %time_scale, align 4
  %56 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call69 = call i32 @u_1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i32 0, i32 0), %struct.Bitstream* %56)
  %57 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters70 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %57, i32 0, i32 38
  %fixed_frame_rate_flag = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters70, i32 0, i32 19
  store i32 %call69, i32* %fixed_frame_rate_flag, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.64, %if.end.58
  %58 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call72 = call i32 @u_1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.58, i32 0, i32 0), %struct.Bitstream* %58)
  %59 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters73 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %59, i32 0, i32 38
  %nal_hrd_parameters_present_flag = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters73, i32 0, i32 20
  store i32 %call72, i32* %nal_hrd_parameters_present_flag, align 4
  %60 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters74 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %60, i32 0, i32 38
  %nal_hrd_parameters_present_flag75 = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters74, i32 0, i32 20
  %61 = load i32, i32* %nal_hrd_parameters_present_flag75, align 4
  %tobool76 = icmp ne i32 %61, 0
  br i1 %tobool76, label %if.then.77, label %if.end.80

if.then.77:                                       ; preds = %if.end.71
  %62 = load %struct.datapartition*, %struct.datapartition** %p.addr, align 8
  %63 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters78 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %63, i32 0, i32 38
  %nal_hrd_parameters = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters78, i32 0, i32 21
  %call79 = call i32 @ReadHRDParameters(%struct.datapartition* %62, %struct.hrd_parameters_t* %nal_hrd_parameters)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.77, %if.end.71
  %64 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call81 = call i32 @u_1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.59, i32 0, i32 0), %struct.Bitstream* %64)
  %65 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters82 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %65, i32 0, i32 38
  %vcl_hrd_parameters_present_flag = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters82, i32 0, i32 22
  store i32 %call81, i32* %vcl_hrd_parameters_present_flag, align 4
  %66 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters83 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %66, i32 0, i32 38
  %vcl_hrd_parameters_present_flag84 = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters83, i32 0, i32 22
  %67 = load i32, i32* %vcl_hrd_parameters_present_flag84, align 4
  %tobool85 = icmp ne i32 %67, 0
  br i1 %tobool85, label %if.then.86, label %if.end.89

if.then.86:                                       ; preds = %if.end.80
  %68 = load %struct.datapartition*, %struct.datapartition** %p.addr, align 8
  %69 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters87 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %69, i32 0, i32 38
  %vcl_hrd_parameters = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters87, i32 0, i32 23
  %call88 = call i32 @ReadHRDParameters(%struct.datapartition* %68, %struct.hrd_parameters_t* %vcl_hrd_parameters)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.86, %if.end.80
  %70 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters90 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %70, i32 0, i32 38
  %nal_hrd_parameters_present_flag91 = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters90, i32 0, i32 20
  %71 = load i32, i32* %nal_hrd_parameters_present_flag91, align 4
  %tobool92 = icmp ne i32 %71, 0
  br i1 %tobool92, label %if.then.96, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.89
  %72 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters93 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %72, i32 0, i32 38
  %vcl_hrd_parameters_present_flag94 = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters93, i32 0, i32 22
  %73 = load i32, i32* %vcl_hrd_parameters_present_flag94, align 4
  %tobool95 = icmp ne i32 %73, 0
  br i1 %tobool95, label %if.then.96, label %if.end.99

if.then.96:                                       ; preds = %lor.lhs.false, %if.end.89
  %74 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call97 = call i32 @u_1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.60, i32 0, i32 0), %struct.Bitstream* %74)
  %75 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters98 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %75, i32 0, i32 38
  %low_delay_hrd_flag = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters98, i32 0, i32 24
  store i32 %call97, i32* %low_delay_hrd_flag, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.96, %lor.lhs.false
  %76 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call100 = call i32 @u_1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.61, i32 0, i32 0), %struct.Bitstream* %76)
  %77 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters101 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %77, i32 0, i32 38
  %pic_struct_present_flag = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters101, i32 0, i32 25
  store i32 %call100, i32* %pic_struct_present_flag, align 4
  %78 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call102 = call i32 @u_1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.62, i32 0, i32 0), %struct.Bitstream* %78)
  %79 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters103 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %79, i32 0, i32 38
  %bitstream_restriction_flag = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters103, i32 0, i32 26
  store i32 %call102, i32* %bitstream_restriction_flag, align 4
  %80 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters104 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %80, i32 0, i32 38
  %bitstream_restriction_flag105 = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters104, i32 0, i32 26
  %81 = load i32, i32* %bitstream_restriction_flag105, align 4
  %tobool106 = icmp ne i32 %81, 0
  br i1 %tobool106, label %if.then.107, label %if.end.122

if.then.107:                                      ; preds = %if.end.99
  %82 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call108 = call i32 @u_1(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.63, i32 0, i32 0), %struct.Bitstream* %82)
  %83 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters109 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %83, i32 0, i32 38
  %motion_vectors_over_pic_boundaries_flag = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters109, i32 0, i32 27
  store i32 %call108, i32* %motion_vectors_over_pic_boundaries_flag, align 4
  %84 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call110 = call i32 @ue_v(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.64, i32 0, i32 0), %struct.Bitstream* %84)
  %85 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters111 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %85, i32 0, i32 38
  %max_bytes_per_pic_denom = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters111, i32 0, i32 28
  store i32 %call110, i32* %max_bytes_per_pic_denom, align 4
  %86 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call112 = call i32 @ue_v(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0), %struct.Bitstream* %86)
  %87 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters113 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %87, i32 0, i32 38
  %max_bits_per_mb_denom = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters113, i32 0, i32 29
  store i32 %call112, i32* %max_bits_per_mb_denom, align 4
  %88 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call114 = call i32 @ue_v(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0), %struct.Bitstream* %88)
  %89 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters115 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %89, i32 0, i32 38
  %log2_max_mv_length_horizontal = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters115, i32 0, i32 31
  store i32 %call114, i32* %log2_max_mv_length_horizontal, align 4
  %90 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call116 = call i32 @ue_v(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.67, i32 0, i32 0), %struct.Bitstream* %90)
  %91 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters117 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %91, i32 0, i32 38
  %log2_max_mv_length_vertical = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters117, i32 0, i32 30
  store i32 %call116, i32* %log2_max_mv_length_vertical, align 4
  %92 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call118 = call i32 @ue_v(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.68, i32 0, i32 0), %struct.Bitstream* %92)
  %93 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters119 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %93, i32 0, i32 38
  %num_reorder_frames = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters119, i32 0, i32 32
  store i32 %call118, i32* %num_reorder_frames, align 4
  %94 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call120 = call i32 @ue_v(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.69, i32 0, i32 0), %struct.Bitstream* %94)
  %95 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_seq_parameters121 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %95, i32 0, i32 38
  %max_dec_frame_buffering = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters121, i32 0, i32 33
  store i32 %call120, i32* %max_dec_frame_buffering, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.107, %if.end.99
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @ReadHRDParameters(%struct.datapartition* %p, %struct.hrd_parameters_t* %hrd) #0 {
entry:
  %p.addr = alloca %struct.datapartition*, align 8
  %hrd.addr = alloca %struct.hrd_parameters_t*, align 8
  %s = alloca %struct.Bitstream*, align 8
  %SchedSelIdx = alloca i32, align 4
  store %struct.datapartition* %p, %struct.datapartition** %p.addr, align 8
  store %struct.hrd_parameters_t* %hrd, %struct.hrd_parameters_t** %hrd.addr, align 8
  %0 = load %struct.datapartition*, %struct.datapartition** %p.addr, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %0, i32 0, i32 0
  %1 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %1, %struct.Bitstream** %s, align 8
  %2 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call = call i32 @ue_v(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.70, i32 0, i32 0), %struct.Bitstream* %2)
  %3 = load %struct.hrd_parameters_t*, %struct.hrd_parameters_t** %hrd.addr, align 8
  %cpb_cnt_minus1 = getelementptr inbounds %struct.hrd_parameters_t, %struct.hrd_parameters_t* %3, i32 0, i32 0
  store i32 %call, i32* %cpb_cnt_minus1, align 4
  %4 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call1 = call i32 @u_v(i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.71, i32 0, i32 0), %struct.Bitstream* %4)
  %5 = load %struct.hrd_parameters_t*, %struct.hrd_parameters_t** %hrd.addr, align 8
  %bit_rate_scale = getelementptr inbounds %struct.hrd_parameters_t, %struct.hrd_parameters_t* %5, i32 0, i32 1
  store i32 %call1, i32* %bit_rate_scale, align 4
  %6 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call2 = call i32 @u_v(i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.72, i32 0, i32 0), %struct.Bitstream* %6)
  %7 = load %struct.hrd_parameters_t*, %struct.hrd_parameters_t** %hrd.addr, align 8
  %cpb_size_scale = getelementptr inbounds %struct.hrd_parameters_t, %struct.hrd_parameters_t* %7, i32 0, i32 2
  store i32 %call2, i32* %cpb_size_scale, align 4
  store i32 0, i32* %SchedSelIdx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %SchedSelIdx, align 4
  %9 = load %struct.hrd_parameters_t*, %struct.hrd_parameters_t** %hrd.addr, align 8
  %cpb_cnt_minus13 = getelementptr inbounds %struct.hrd_parameters_t, %struct.hrd_parameters_t* %9, i32 0, i32 0
  %10 = load i32, i32* %cpb_cnt_minus13, align 4
  %cmp = icmp ule i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call4 = call i32 @ue_v(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.73, i32 0, i32 0), %struct.Bitstream* %11)
  %12 = load i32, i32* %SchedSelIdx, align 4
  %idxprom = zext i32 %12 to i64
  %13 = load %struct.hrd_parameters_t*, %struct.hrd_parameters_t** %hrd.addr, align 8
  %bit_rate_value_minus1 = getelementptr inbounds %struct.hrd_parameters_t, %struct.hrd_parameters_t* %13, i32 0, i32 3
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* %bit_rate_value_minus1, i32 0, i64 %idxprom
  store i32 %call4, i32* %arrayidx, align 4
  %14 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call5 = call i32 @ue_v(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.74, i32 0, i32 0), %struct.Bitstream* %14)
  %15 = load i32, i32* %SchedSelIdx, align 4
  %idxprom6 = zext i32 %15 to i64
  %16 = load %struct.hrd_parameters_t*, %struct.hrd_parameters_t** %hrd.addr, align 8
  %cpb_size_value_minus1 = getelementptr inbounds %struct.hrd_parameters_t, %struct.hrd_parameters_t* %16, i32 0, i32 4
  %arrayidx7 = getelementptr inbounds [32 x i32], [32 x i32]* %cpb_size_value_minus1, i32 0, i64 %idxprom6
  store i32 %call5, i32* %arrayidx7, align 4
  %17 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call8 = call i32 @u_1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i32 0, i32 0), %struct.Bitstream* %17)
  %18 = load i32, i32* %SchedSelIdx, align 4
  %idxprom9 = zext i32 %18 to i64
  %19 = load %struct.hrd_parameters_t*, %struct.hrd_parameters_t** %hrd.addr, align 8
  %cbr_flag = getelementptr inbounds %struct.hrd_parameters_t, %struct.hrd_parameters_t* %19, i32 0, i32 5
  %arrayidx10 = getelementptr inbounds [32 x i32], [32 x i32]* %cbr_flag, i32 0, i64 %idxprom9
  store i32 %call8, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %SchedSelIdx, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %SchedSelIdx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call11 = call i32 @u_v(i32 5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.76, i32 0, i32 0), %struct.Bitstream* %21)
  %22 = load %struct.hrd_parameters_t*, %struct.hrd_parameters_t** %hrd.addr, align 8
  %initial_cpb_removal_delay_length_minus1 = getelementptr inbounds %struct.hrd_parameters_t, %struct.hrd_parameters_t* %22, i32 0, i32 6
  store i32 %call11, i32* %initial_cpb_removal_delay_length_minus1, align 4
  %23 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call12 = call i32 @u_v(i32 5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.77, i32 0, i32 0), %struct.Bitstream* %23)
  %24 = load %struct.hrd_parameters_t*, %struct.hrd_parameters_t** %hrd.addr, align 8
  %cpb_removal_delay_length_minus1 = getelementptr inbounds %struct.hrd_parameters_t, %struct.hrd_parameters_t* %24, i32 0, i32 7
  store i32 %call12, i32* %cpb_removal_delay_length_minus1, align 4
  %25 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call13 = call i32 @u_v(i32 5, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.78, i32 0, i32 0), %struct.Bitstream* %25)
  %26 = load %struct.hrd_parameters_t*, %struct.hrd_parameters_t** %hrd.addr, align 8
  %dpb_output_delay_length_minus1 = getelementptr inbounds %struct.hrd_parameters_t, %struct.hrd_parameters_t* %26, i32 0, i32 8
  store i32 %call13, i32* %dpb_output_delay_length_minus1, align 4
  %27 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call14 = call i32 @u_v(i32 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.79, i32 0, i32 0), %struct.Bitstream* %27)
  %28 = load %struct.hrd_parameters_t*, %struct.hrd_parameters_t** %hrd.addr, align 8
  %time_offset_length = getelementptr inbounds %struct.hrd_parameters_t, %struct.hrd_parameters_t* %28, i32 0, i32 9
  store i32 %call14, i32* %time_offset_length, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @InterpretPPS(%struct.datapartition* %p, %struct.pic_parameter_set_rbsp_t* %pps) #0 {
entry:
  %p.addr = alloca %struct.datapartition*, align 8
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %i = alloca i32, align 4
  %NumberBitsPerSliceGroupId = alloca i32, align 4
  %s = alloca %struct.Bitstream*, align 8
  store %struct.datapartition* %p, %struct.datapartition** %p.addr, align 8
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %0 = load %struct.datapartition*, %struct.datapartition** %p.addr, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %0, i32 0, i32 0
  %1 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %1, %struct.Bitstream** %s, align 8
  store i32 0, i32* @UsedBits, align 4
  %2 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call = call i32 @ue_v(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.80, i32 0, i32 0), %struct.Bitstream* %2)
  %3 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_parameter_set_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %3, i32 0, i32 1
  store i32 %call, i32* %pic_parameter_set_id, align 4
  %4 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call1 = call i32 @ue_v(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.81, i32 0, i32 0), %struct.Bitstream* %4)
  %5 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %seq_parameter_set_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %5, i32 0, i32 2
  store i32 %call1, i32* %seq_parameter_set_id, align 4
  %6 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call2 = call i32 @u_1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.82, i32 0, i32 0), %struct.Bitstream* %6)
  %7 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %entropy_coding_mode_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %7, i32 0, i32 3
  store i32 %call2, i32* %entropy_coding_mode_flag, align 4
  %8 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call3 = call i32 @u_1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.83, i32 0, i32 0), %struct.Bitstream* %8)
  %9 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_order_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %9, i32 0, i32 11
  store i32 %call3, i32* %pic_order_present_flag, align 4
  %10 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call4 = call i32 @ue_v(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.84, i32 0, i32 0), %struct.Bitstream* %10)
  %11 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %11, i32 0, i32 12
  store i32 %call4, i32* %num_slice_groups_minus1, align 4
  %12 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus15 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %12, i32 0, i32 12
  %13 = load i32, i32* %num_slice_groups_minus15, align 4
  %cmp = icmp ugt i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end.69

if.then:                                          ; preds = %entry
  %14 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call6 = call i32 @ue_v(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.85, i32 0, i32 0), %struct.Bitstream* %14)
  %15 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %15, i32 0, i32 13
  store i32 %call6, i32* %slice_group_map_type, align 4
  %16 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type7 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %16, i32 0, i32 13
  %17 = load i32, i32* %slice_group_map_type7, align 4
  %cmp8 = icmp eq i32 %17, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.9
  %18 = load i32, i32* %i, align 4
  %19 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus110 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %19, i32 0, i32 12
  %20 = load i32, i32* %num_slice_groups_minus110, align 4
  %cmp11 = icmp ule i32 %18, %20
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call12 = call i32 @ue_v(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.86, i32 0, i32 0), %struct.Bitstream* %21)
  %22 = load i32, i32* %i, align 4
  %idxprom = zext i32 %22 to i64
  %23 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %run_length_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %23, i32 0, i32 14
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %run_length_minus1, i32 0, i64 %idxprom
  store i32 %call12, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %inc = add i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.68

if.else:                                          ; preds = %if.then
  %25 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type13 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %25, i32 0, i32 13
  %26 = load i32, i32* %slice_group_map_type13, align 4
  %cmp14 = icmp eq i32 %26, 2
  br i1 %cmp14, label %if.then.15, label %if.else.29

if.then.15:                                       ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.26, %if.then.15
  %27 = load i32, i32* %i, align 4
  %28 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus117 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %28, i32 0, i32 12
  %29 = load i32, i32* %num_slice_groups_minus117, align 4
  %cmp18 = icmp ult i32 %27, %29
  br i1 %cmp18, label %for.body.19, label %for.end.28

for.body.19:                                      ; preds = %for.cond.16
  %30 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call20 = call i32 @ue_v(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.87, i32 0, i32 0), %struct.Bitstream* %30)
  %31 = load i32, i32* %i, align 4
  %idxprom21 = zext i32 %31 to i64
  %32 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %top_left = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %32, i32 0, i32 15
  %arrayidx22 = getelementptr inbounds [8 x i32], [8 x i32]* %top_left, i32 0, i64 %idxprom21
  store i32 %call20, i32* %arrayidx22, align 4
  %33 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call23 = call i32 @ue_v(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.88, i32 0, i32 0), %struct.Bitstream* %33)
  %34 = load i32, i32* %i, align 4
  %idxprom24 = zext i32 %34 to i64
  %35 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %bottom_right = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %35, i32 0, i32 16
  %arrayidx25 = getelementptr inbounds [8 x i32], [8 x i32]* %bottom_right, i32 0, i64 %idxprom24
  store i32 %call23, i32* %arrayidx25, align 4
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.19
  %36 = load i32, i32* %i, align 4
  %inc27 = add i32 %36, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.16

for.end.28:                                       ; preds = %for.cond.16
  br label %if.end.67

if.else.29:                                       ; preds = %if.else
  %37 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type30 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %37, i32 0, i32 13
  %38 = load i32, i32* %slice_group_map_type30, align 4
  %cmp31 = icmp eq i32 %38, 3
  br i1 %cmp31, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.29
  %39 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type32 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %39, i32 0, i32 13
  %40 = load i32, i32* %slice_group_map_type32, align 4
  %cmp33 = icmp eq i32 %40, 4
  br i1 %cmp33, label %if.then.37, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %lor.lhs.false
  %41 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type35 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %41, i32 0, i32 13
  %42 = load i32, i32* %slice_group_map_type35, align 4
  %cmp36 = icmp eq i32 %42, 5
  br i1 %cmp36, label %if.then.37, label %if.else.40

if.then.37:                                       ; preds = %lor.lhs.false.34, %lor.lhs.false, %if.else.29
  %43 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call38 = call i32 @u_1(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.89, i32 0, i32 0), %struct.Bitstream* %43)
  %44 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %44, i32 0, i32 17
  store i32 %call38, i32* %slice_group_change_direction_flag, align 4
  %45 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call39 = call i32 @ue_v(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.90, i32 0, i32 0), %struct.Bitstream* %45)
  %46 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_rate_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %46, i32 0, i32 18
  store i32 %call39, i32* %slice_group_change_rate_minus1, align 4
  br label %if.end.66

if.else.40:                                       ; preds = %lor.lhs.false.34
  %47 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type41 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %47, i32 0, i32 13
  %48 = load i32, i32* %slice_group_map_type41, align 4
  %cmp42 = icmp eq i32 %48, 6
  br i1 %cmp42, label %if.then.43, label %if.end.65

if.then.43:                                       ; preds = %if.else.40
  %49 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus144 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %49, i32 0, i32 12
  %50 = load i32, i32* %num_slice_groups_minus144, align 4
  %add = add i32 %50, 1
  %cmp45 = icmp ugt i32 %add, 4
  br i1 %cmp45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %if.then.43
  store i32 3, i32* %NumberBitsPerSliceGroupId, align 4
  br label %if.end.53

if.else.47:                                       ; preds = %if.then.43
  %51 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus148 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %51, i32 0, i32 12
  %52 = load i32, i32* %num_slice_groups_minus148, align 4
  %add49 = add i32 %52, 1
  %cmp50 = icmp ugt i32 %add49, 2
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %if.else.47
  store i32 2, i32* %NumberBitsPerSliceGroupId, align 4
  br label %if.end

if.else.52:                                       ; preds = %if.else.47
  store i32 1, i32* %NumberBitsPerSliceGroupId, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.52, %if.then.51
  br label %if.end.53

if.end.53:                                        ; preds = %if.end, %if.then.46
  %53 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call54 = call i32 @ue_v(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.91, i32 0, i32 0), %struct.Bitstream* %53)
  %54 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_group_map_units_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %54, i32 0, i32 19
  store i32 %call54, i32* %num_slice_group_map_units_minus1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.62, %if.end.53
  %55 = load i32, i32* %i, align 4
  %56 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_group_map_units_minus156 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %56, i32 0, i32 19
  %57 = load i32, i32* %num_slice_group_map_units_minus156, align 4
  %cmp57 = icmp ule i32 %55, %57
  br i1 %cmp57, label %for.body.58, label %for.end.64

for.body.58:                                      ; preds = %for.cond.55
  %58 = load i32, i32* %NumberBitsPerSliceGroupId, align 4
  %59 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call59 = call i32 @u_v(i32 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.92, i32 0, i32 0), %struct.Bitstream* %59)
  %60 = load i32, i32* %i, align 4
  %idxprom60 = zext i32 %60 to i64
  %61 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %61, i32 0, i32 20
  %62 = load i32*, i32** %slice_group_id, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %62, i64 %idxprom60
  store i32 %call59, i32* %arrayidx61, align 4
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.58
  %63 = load i32, i32* %i, align 4
  %inc63 = add i32 %63, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond.55

for.end.64:                                       ; preds = %for.cond.55
  br label %if.end.65

if.end.65:                                        ; preds = %for.end.64, %if.else.40
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.37
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %for.end.28
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %for.end
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %entry
  %64 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call70 = call i32 @ue_v(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.93, i32 0, i32 0), %struct.Bitstream* %64)
  %65 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_ref_idx_l0_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %65, i32 0, i32 21
  store i32 %call70, i32* %num_ref_idx_l0_active_minus1, align 4
  %66 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call71 = call i32 @ue_v(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.94, i32 0, i32 0), %struct.Bitstream* %66)
  %67 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_ref_idx_l1_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %67, i32 0, i32 22
  store i32 %call71, i32* %num_ref_idx_l1_active_minus1, align 4
  %68 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call72 = call i32 @u_1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.95, i32 0, i32 0), %struct.Bitstream* %68)
  %69 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %69, i32 0, i32 23
  store i32 %call72, i32* %weighted_pred_flag, align 4
  %70 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call73 = call i32 @u_v(i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.96, i32 0, i32 0), %struct.Bitstream* %70)
  %71 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %71, i32 0, i32 24
  store i32 %call73, i32* %weighted_bipred_idc, align 4
  %72 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call74 = call i32 @se_v(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.97, i32 0, i32 0), %struct.Bitstream* %72)
  %73 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_init_qp_minus26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %73, i32 0, i32 25
  store i32 %call74, i32* %pic_init_qp_minus26, align 4
  %74 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call75 = call i32 @se_v(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.98, i32 0, i32 0), %struct.Bitstream* %74)
  %75 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_init_qs_minus26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %75, i32 0, i32 26
  store i32 %call75, i32* %pic_init_qs_minus26, align 4
  %76 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call76 = call i32 @se_v(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.99, i32 0, i32 0), %struct.Bitstream* %76)
  %77 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %chroma_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %77, i32 0, i32 27
  store i32 %call76, i32* %chroma_qp_index_offset, align 4
  %78 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call77 = call i32 @u_1(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.100, i32 0, i32 0), %struct.Bitstream* %78)
  %79 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %deblocking_filter_control_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %79, i32 0, i32 29
  store i32 %call77, i32* %deblocking_filter_control_present_flag, align 4
  %80 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call78 = call i32 @u_1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.101, i32 0, i32 0), %struct.Bitstream* %80)
  %81 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %constrained_intra_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %81, i32 0, i32 30
  store i32 %call78, i32* %constrained_intra_pred_flag, align 4
  %82 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call79 = call i32 @u_1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.102, i32 0, i32 0), %struct.Bitstream* %82)
  %83 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %redundant_pic_cnt_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %83, i32 0, i32 31
  store i32 %call79, i32* %redundant_pic_cnt_present_flag, align 4
  %84 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %84, i32 0, i32 4
  %85 = load i8*, i8** %streamBuffer, align 8
  %86 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %frame_bitoffset = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %86, i32 0, i32 2
  %87 = load i32, i32* %frame_bitoffset, align 4
  %88 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %88, i32 0, i32 3
  %89 = load i32, i32* %bitstream_length, align 4
  %call80 = call i32 @more_rbsp_data(i8* %85, i32 %87, i32 %89)
  %tobool = icmp ne i32 %call80, 0
  br i1 %tobool, label %if.then.81, label %if.else.120

if.then.81:                                       ; preds = %if.end.69
  %90 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call82 = call i32 @u_1(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.103, i32 0, i32 0), %struct.Bitstream* %90)
  %91 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %transform_8x8_mode_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %91, i32 0, i32 4
  store i32 %call82, i32* %transform_8x8_mode_flag, align 4
  %92 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call83 = call i32 @u_1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.104, i32 0, i32 0), %struct.Bitstream* %92)
  %93 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_scaling_matrix_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %93, i32 0, i32 5
  store i32 %call83, i32* %pic_scaling_matrix_present_flag, align 4
  %94 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_scaling_matrix_present_flag84 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %94, i32 0, i32 5
  %95 = load i32, i32* %pic_scaling_matrix_present_flag84, align 4
  %tobool85 = icmp ne i32 %95, 0
  br i1 %tobool85, label %if.then.86, label %if.end.118

if.then.86:                                       ; preds = %if.then.81
  store i32 0, i32* %i, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.115, %if.then.86
  %96 = load i32, i32* %i, align 4
  %97 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %transform_8x8_mode_flag88 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %97, i32 0, i32 4
  %98 = load i32, i32* %transform_8x8_mode_flag88, align 4
  %shl = shl i32 %98, 1
  %add89 = add i32 6, %shl
  %cmp90 = icmp ult i32 %96, %add89
  br i1 %cmp90, label %for.body.91, label %for.end.117

for.body.91:                                      ; preds = %for.cond.87
  %99 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call92 = call i32 @u_1(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.105, i32 0, i32 0), %struct.Bitstream* %99)
  %100 = load i32, i32* %i, align 4
  %idxprom93 = zext i32 %100 to i64
  %101 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_scaling_list_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %101, i32 0, i32 6
  %arrayidx94 = getelementptr inbounds [8 x i32], [8 x i32]* %pic_scaling_list_present_flag, i32 0, i64 %idxprom93
  store i32 %call92, i32* %arrayidx94, align 4
  %102 = load i32, i32* %i, align 4
  %idxprom95 = zext i32 %102 to i64
  %103 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_scaling_list_present_flag96 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %103, i32 0, i32 6
  %arrayidx97 = getelementptr inbounds [8 x i32], [8 x i32]* %pic_scaling_list_present_flag96, i32 0, i64 %idxprom95
  %104 = load i32, i32* %arrayidx97, align 4
  %tobool98 = icmp ne i32 %104, 0
  br i1 %tobool98, label %if.then.99, label %if.end.114

if.then.99:                                       ; preds = %for.body.91
  %105 = load i32, i32* %i, align 4
  %cmp100 = icmp ult i32 %105, 6
  br i1 %cmp100, label %if.then.101, label %if.else.106

if.then.101:                                      ; preds = %if.then.99
  %106 = load i32, i32* %i, align 4
  %idxprom102 = zext i32 %106 to i64
  %107 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %ScalingList4x4 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %107, i32 0, i32 7
  %arrayidx103 = getelementptr inbounds [6 x [16 x i32]], [6 x [16 x i32]]* %ScalingList4x4, i32 0, i64 %idxprom102
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx103, i32 0, i32 0
  %108 = load i32, i32* %i, align 4
  %idxprom104 = zext i32 %108 to i64
  %109 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %UseDefaultScalingMatrix4x4Flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %109, i32 0, i32 9
  %arrayidx105 = getelementptr inbounds [6 x i32], [6 x i32]* %UseDefaultScalingMatrix4x4Flag, i32 0, i64 %idxprom104
  %110 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  call void @Scaling_List(i32* %arraydecay, i32 16, i32* %arrayidx105, %struct.Bitstream* %110)
  br label %if.end.113

if.else.106:                                      ; preds = %if.then.99
  %111 = load i32, i32* %i, align 4
  %sub = sub i32 %111, 6
  %idxprom107 = zext i32 %sub to i64
  %112 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %ScalingList8x8 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %112, i32 0, i32 8
  %arrayidx108 = getelementptr inbounds [2 x [64 x i32]], [2 x [64 x i32]]* %ScalingList8x8, i32 0, i64 %idxprom107
  %arraydecay109 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx108, i32 0, i32 0
  %113 = load i32, i32* %i, align 4
  %sub110 = sub i32 %113, 6
  %idxprom111 = zext i32 %sub110 to i64
  %114 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %UseDefaultScalingMatrix8x8Flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %114, i32 0, i32 10
  %arrayidx112 = getelementptr inbounds [2 x i32], [2 x i32]* %UseDefaultScalingMatrix8x8Flag, i32 0, i64 %idxprom111
  %115 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  call void @Scaling_List(i32* %arraydecay109, i32 64, i32* %arrayidx112, %struct.Bitstream* %115)
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.106, %if.then.101
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %for.body.91
  br label %for.inc.115

for.inc.115:                                      ; preds = %if.end.114
  %116 = load i32, i32* %i, align 4
  %inc116 = add i32 %116, 1
  store i32 %inc116, i32* %i, align 4
  br label %for.cond.87

for.end.117:                                      ; preds = %for.cond.87
  br label %if.end.118

if.end.118:                                       ; preds = %for.end.117, %if.then.81
  %117 = load %struct.Bitstream*, %struct.Bitstream** %s, align 8
  %call119 = call i32 @se_v(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.106, i32 0, i32 0), %struct.Bitstream* %117)
  %118 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %second_chroma_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %118, i32 0, i32 28
  store i32 %call119, i32* %second_chroma_qp_index_offset, align 4
  br label %if.end.123

if.else.120:                                      ; preds = %if.end.69
  %119 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %chroma_qp_index_offset121 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %119, i32 0, i32 27
  %120 = load i32, i32* %chroma_qp_index_offset121, align 4
  %121 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %second_chroma_qp_index_offset122 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %121, i32 0, i32 28
  store i32 %120, i32* %second_chroma_qp_index_offset122, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.120, %if.end.118
  %122 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %Valid = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %122, i32 0, i32 0
  store i32 1, i32* %Valid, align 4
  %123 = load i32, i32* @UsedBits, align 4
  ret i32 %123
}

declare i32 @more_rbsp_data(i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @PPSConsistencyCheck(%struct.pic_parameter_set_rbsp_t* %pps) #0 {
entry:
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.107, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @SPSConsistencyCheck(%struct.seq_parameter_set_rbsp_t* %sps) #0 {
entry:
  %sps.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  store %struct.seq_parameter_set_rbsp_t* %sps, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.108, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @MakePPSavailable(i32 %id, %struct.pic_parameter_set_rbsp_t* %pps) #0 {
entry:
  %id.addr = alloca i32, align 4
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  store i32 %id, i32* %id.addr, align 4
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %0 = load i32, i32* %id.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 %idxprom
  %Valid = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %arrayidx, i32 0, i32 0
  %1 = load i32, i32* %Valid, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %id.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 %idxprom1
  %slice_group_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %arrayidx2, i32 0, i32 20
  %3 = load i32*, i32** %slice_group_id, align 8
  %cmp3 = icmp ne i32* %3, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %id.addr, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 %idxprom4
  %slice_group_id6 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %arrayidx5, i32 0, i32 20
  %5 = load i32*, i32** %slice_group_id6, align 8
  %6 = bitcast i32* %5 to i8*
  call void @free(i8* %6) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i32, i32* %id.addr, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 %idxprom7
  %8 = bitcast %struct.pic_parameter_set_rbsp_t* %arrayidx8 to i8*
  %9 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %10 = bitcast %struct.pic_parameter_set_rbsp_t* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %10, i64 1160, i32 8, i1 false)
  %11 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_id9 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %11, i32 0, i32 20
  %12 = load i32*, i32** %slice_group_id9, align 8
  %13 = load i32, i32* %id.addr, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 %idxprom10
  %slice_group_id12 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %arrayidx11, i32 0, i32 20
  store i32* %12, i32** %slice_group_id12, align 8
  %14 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_id13 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %14, i32 0, i32 20
  store i32* null, i32** %slice_group_id13, align 8
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @CleanUpPPS() #0 {
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
  %arrayidx = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 %idxprom
  %Valid = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %Valid, align 4
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 %idxprom2
  %slice_group_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %arrayidx3, i32 0, i32 20
  %4 = load i32*, i32** %slice_group_id, align 8
  %cmp4 = icmp ne i32* %4, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 %idxprom5
  %slice_group_id7 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %arrayidx6, i32 0, i32 20
  %6 = load i32*, i32** %slice_group_id7, align 8
  %7 = bitcast i32* %6 to i8*
  call void @free(i8* %7) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 %idxprom8
  %Valid10 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %arrayidx9, i32 0, i32 0
  store i32 0, i32* %Valid10, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @MakeSPSavailable(i32 %id, %struct.seq_parameter_set_rbsp_t* %sps) #0 {
entry:
  %id.addr = alloca i32, align 4
  %sps.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  store i32 %id, i32* %id.addr, align 4
  store %struct.seq_parameter_set_rbsp_t* %sps, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %0 = load i32, i32* %id.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [32 x %struct.seq_parameter_set_rbsp_t], [32 x %struct.seq_parameter_set_rbsp_t]* @SeqParSet, i32 0, i64 %idxprom
  %1 = bitcast %struct.seq_parameter_set_rbsp_t* %arrayidx to i8*
  %2 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %3 = bitcast %struct.seq_parameter_set_rbsp_t* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %3, i64 3064, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ProcessSPS(%struct.NALU_t* %nalu) #0 {
entry:
  %nalu.addr = alloca %struct.NALU_t*, align 8
  %dp = alloca %struct.datapartition*, align 8
  %sps = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %dummy = alloca i32, align 4
  store %struct.NALU_t* %nalu, %struct.NALU_t** %nalu.addr, align 8
  %call = call %struct.datapartition* (i32, ...) bitcast (%struct.datapartition* (...)* @AllocPartition to %struct.datapartition* (i32, ...)*)(i32 1)
  store %struct.datapartition* %call, %struct.datapartition** %dp, align 8
  %call1 = call %struct.seq_parameter_set_rbsp_t* (...) @AllocSPS()
  store %struct.seq_parameter_set_rbsp_t* %call1, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %0 = load %struct.datapartition*, %struct.datapartition** %dp, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %0, i32 0, i32 0
  %1 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %1, i32 0, i32 4
  %2 = load i8*, i8** %streamBuffer, align 8
  %3 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %buf = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %3, i32 0, i32 6
  %4 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %len = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %5, i32 0, i32 1
  %6 = load i32, i32* %len, align 4
  %sub = sub i32 %6, 1
  %conv = zext i32 %sub to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %arrayidx, i64 %conv, i32 1, i1 false)
  %7 = load %struct.datapartition*, %struct.datapartition** %dp, align 8
  %bitstream2 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %7, i32 0, i32 0
  %8 = load %struct.Bitstream*, %struct.Bitstream** %bitstream2, align 8
  %streamBuffer3 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %8, i32 0, i32 4
  %9 = load i8*, i8** %streamBuffer3, align 8
  %10 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %len4 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %10, i32 0, i32 1
  %11 = load i32, i32* %len4, align 4
  %sub5 = sub i32 %11, 1
  %call6 = call i32 @RBSPtoSODB(i8* %9, i32 %sub5)
  %12 = load %struct.datapartition*, %struct.datapartition** %dp, align 8
  %bitstream7 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %12, i32 0, i32 0
  %13 = load %struct.Bitstream*, %struct.Bitstream** %bitstream7, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %13, i32 0, i32 3
  store i32 %call6, i32* %bitstream_length, align 4
  %14 = load %struct.datapartition*, %struct.datapartition** %dp, align 8
  %bitstream8 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %14, i32 0, i32 0
  %15 = load %struct.Bitstream*, %struct.Bitstream** %bitstream8, align 8
  %code_len = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %15, i32 0, i32 1
  store i32 %call6, i32* %code_len, align 4
  %16 = load %struct.datapartition*, %struct.datapartition** %dp, align 8
  %bitstream9 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %16, i32 0, i32 0
  %17 = load %struct.Bitstream*, %struct.Bitstream** %bitstream9, align 8
  %ei_flag = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %17, i32 0, i32 5
  store i32 0, i32* %ei_flag, align 4
  %18 = load %struct.datapartition*, %struct.datapartition** %dp, align 8
  %bitstream10 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %18, i32 0, i32 0
  %19 = load %struct.Bitstream*, %struct.Bitstream** %bitstream10, align 8
  %frame_bitoffset = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %19, i32 0, i32 2
  store i32 0, i32* %frame_bitoffset, align 4
  %20 = load %struct.datapartition*, %struct.datapartition** %dp, align 8
  %bitstream11 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %20, i32 0, i32 0
  %21 = load %struct.Bitstream*, %struct.Bitstream** %bitstream11, align 8
  %read_len = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %21, i32 0, i32 0
  store i32 0, i32* %read_len, align 4
  %22 = load %struct.datapartition*, %struct.datapartition** %dp, align 8
  %23 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %call12 = call i32 @InterpretSPS(%struct.datapartition* %22, %struct.seq_parameter_set_rbsp_t* %23)
  store i32 %call12, i32* %dummy, align 4
  %24 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %Valid = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %24, i32 0, i32 0
  %25 = load i32, i32* %Valid, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
  %26 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %tobool13 = icmp ne %struct.seq_parameter_set_rbsp_t* %26, null
  br i1 %tobool13, label %if.then.14, label %if.end.25

if.then.14:                                       ; preds = %if.then
  %27 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %seq_parameter_set_id = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %27, i32 0, i32 7
  %28 = load i32, i32* %seq_parameter_set_id, align 4
  %29 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %seq_parameter_set_id15 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %29, i32 0, i32 7
  %30 = load i32, i32* %seq_parameter_set_id15, align 4
  %cmp = icmp eq i32 %28, %30
  br i1 %cmp, label %if.then.17, label %if.end.24

if.then.17:                                       ; preds = %if.then.14
  %31 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %32 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %call18 = call i32 @sps_is_equal(%struct.seq_parameter_set_rbsp_t* %31, %struct.seq_parameter_set_rbsp_t* %32)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.23, label %if.then.20

if.then.20:                                       ; preds = %if.then.17
  %33 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %tobool21 = icmp ne %struct.storable_picture* %33, null
  br i1 %tobool21, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.then.20
  call void (...) @exit_picture()
  br label %if.end

if.end:                                           ; preds = %if.then.22, %if.then.20
  store %struct.seq_parameter_set_rbsp_t* null, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %if.then.17
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.14
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then
  %34 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %seq_parameter_set_id26 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %34, i32 0, i32 7
  %35 = load i32, i32* %seq_parameter_set_id26, align 4
  %36 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  call void @MakeSPSavailable(i32 %35, %struct.seq_parameter_set_rbsp_t* %36)
  %37 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %profile_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %37, i32 0, i32 1
  %38 = load i32, i32* %profile_idc, align 4
  %39 = load %struct.img_par*, %struct.img_par** @img, align 8
  %profile_idc27 = getelementptr inbounds %struct.img_par, %struct.img_par* %39, i32 0, i32 110
  store i32 %38, i32* %profile_idc27, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.25, %entry
  %40 = load %struct.datapartition*, %struct.datapartition** %dp, align 8
  call void @FreePartition(%struct.datapartition* %40, i32 1)
  %41 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  call void @FreeSPS(%struct.seq_parameter_set_rbsp_t* %41)
  ret void
}

declare %struct.datapartition* @AllocPartition(...) #1

declare %struct.seq_parameter_set_rbsp_t* @AllocSPS(...) #1

declare i32 @RBSPtoSODB(i8*, i32) #1

declare i32 @sps_is_equal(%struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t*) #1

declare void @exit_picture(...) #1

declare void @FreePartition(%struct.datapartition*, i32) #1

declare void @FreeSPS(%struct.seq_parameter_set_rbsp_t*) #1

; Function Attrs: nounwind uwtable
define void @ProcessPPS(%struct.NALU_t* %nalu) #0 {
entry:
  %nalu.addr = alloca %struct.NALU_t*, align 8
  %dp = alloca %struct.datapartition*, align 8
  %pps = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %dummy = alloca i32, align 4
  store %struct.NALU_t* %nalu, %struct.NALU_t** %nalu.addr, align 8
  %call = call %struct.datapartition* (i32, ...) bitcast (%struct.datapartition* (...)* @AllocPartition to %struct.datapartition* (i32, ...)*)(i32 1)
  store %struct.datapartition* %call, %struct.datapartition** %dp, align 8
  %call1 = call %struct.pic_parameter_set_rbsp_t* (...) @AllocPPS()
  store %struct.pic_parameter_set_rbsp_t* %call1, %struct.pic_parameter_set_rbsp_t** %pps, align 8
  %0 = load %struct.datapartition*, %struct.datapartition** %dp, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %0, i32 0, i32 0
  %1 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %1, i32 0, i32 4
  %2 = load i8*, i8** %streamBuffer, align 8
  %3 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %buf = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %3, i32 0, i32 6
  %4 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %len = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %5, i32 0, i32 1
  %6 = load i32, i32* %len, align 4
  %sub = sub i32 %6, 1
  %conv = zext i32 %sub to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %arrayidx, i64 %conv, i32 1, i1 false)
  %7 = load %struct.datapartition*, %struct.datapartition** %dp, align 8
  %bitstream2 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %7, i32 0, i32 0
  %8 = load %struct.Bitstream*, %struct.Bitstream** %bitstream2, align 8
  %streamBuffer3 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %8, i32 0, i32 4
  %9 = load i8*, i8** %streamBuffer3, align 8
  %10 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %len4 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %10, i32 0, i32 1
  %11 = load i32, i32* %len4, align 4
  %sub5 = sub i32 %11, 1
  %call6 = call i32 @RBSPtoSODB(i8* %9, i32 %sub5)
  %12 = load %struct.datapartition*, %struct.datapartition** %dp, align 8
  %bitstream7 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %12, i32 0, i32 0
  %13 = load %struct.Bitstream*, %struct.Bitstream** %bitstream7, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %13, i32 0, i32 3
  store i32 %call6, i32* %bitstream_length, align 4
  %14 = load %struct.datapartition*, %struct.datapartition** %dp, align 8
  %bitstream8 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %14, i32 0, i32 0
  %15 = load %struct.Bitstream*, %struct.Bitstream** %bitstream8, align 8
  %code_len = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %15, i32 0, i32 1
  store i32 %call6, i32* %code_len, align 4
  %16 = load %struct.datapartition*, %struct.datapartition** %dp, align 8
  %bitstream9 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %16, i32 0, i32 0
  %17 = load %struct.Bitstream*, %struct.Bitstream** %bitstream9, align 8
  %ei_flag = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %17, i32 0, i32 5
  store i32 0, i32* %ei_flag, align 4
  %18 = load %struct.datapartition*, %struct.datapartition** %dp, align 8
  %bitstream10 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %18, i32 0, i32 0
  %19 = load %struct.Bitstream*, %struct.Bitstream** %bitstream10, align 8
  %frame_bitoffset = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %19, i32 0, i32 2
  store i32 0, i32* %frame_bitoffset, align 4
  %20 = load %struct.datapartition*, %struct.datapartition** %dp, align 8
  %bitstream11 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %20, i32 0, i32 0
  %21 = load %struct.Bitstream*, %struct.Bitstream** %bitstream11, align 8
  %read_len = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %21, i32 0, i32 0
  store i32 0, i32* %read_len, align 4
  %22 = load %struct.datapartition*, %struct.datapartition** %dp, align 8
  %23 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps, align 8
  %call12 = call i32 @InterpretPPS(%struct.datapartition* %22, %struct.pic_parameter_set_rbsp_t* %23)
  store i32 %call12, i32* %dummy, align 4
  %24 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %tobool = icmp ne %struct.pic_parameter_set_rbsp_t* %24, null
  br i1 %tobool, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  %25 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps, align 8
  %pic_parameter_set_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %25, i32 0, i32 1
  %26 = load i32, i32* %pic_parameter_set_id, align 4
  %27 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %pic_parameter_set_id13 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %27, i32 0, i32 1
  %28 = load i32, i32* %pic_parameter_set_id13, align 4
  %cmp = icmp eq i32 %26, %28
  br i1 %cmp, label %if.then.15, label %if.end.22

if.then.15:                                       ; preds = %if.then
  %29 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps, align 8
  %30 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %call16 = call i32 @pps_is_equal(%struct.pic_parameter_set_rbsp_t* %29, %struct.pic_parameter_set_rbsp_t* %30)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.21, label %if.then.18

if.then.18:                                       ; preds = %if.then.15
  %31 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %tobool19 = icmp ne %struct.storable_picture* %31, null
  br i1 %tobool19, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %if.then.18
  call void (...) @exit_picture()
  br label %if.end

if.end:                                           ; preds = %if.then.20, %if.then.18
  store %struct.pic_parameter_set_rbsp_t* null, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %if.then.15
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %entry
  %32 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps, align 8
  %pic_parameter_set_id24 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %32, i32 0, i32 1
  %33 = load i32, i32* %pic_parameter_set_id24, align 4
  %34 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps, align 8
  call void @MakePPSavailable(i32 %33, %struct.pic_parameter_set_rbsp_t* %34)
  %35 = load %struct.datapartition*, %struct.datapartition** %dp, align 8
  call void @FreePartition(%struct.datapartition* %35, i32 1)
  %36 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps, align 8
  call void @FreePPS(%struct.pic_parameter_set_rbsp_t* %36)
  ret void
}

declare %struct.pic_parameter_set_rbsp_t* @AllocPPS(...) #1

declare i32 @pps_is_equal(%struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t*) #1

declare void @FreePPS(%struct.pic_parameter_set_rbsp_t*) #1

; Function Attrs: nounwind uwtable
define void @activate_sps(%struct.seq_parameter_set_rbsp_t* %sps) #0 {
entry:
  %sps.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  store %struct.seq_parameter_set_rbsp_t* %sps, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %0 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %1 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %cmp = icmp ne %struct.seq_parameter_set_rbsp_t* %0, %1
  br i1 %cmp, label %if.then, label %if.end.59

if.then:                                          ; preds = %entry
  %2 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %tobool = icmp ne %struct.storable_picture* %2, null
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  call void (...) @exit_picture()
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %3 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  store %struct.seq_parameter_set_rbsp_t* %3, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %4 = load %struct.img_par*, %struct.img_par** @img, align 8
  %bitdepth_chroma = getelementptr inbounds %struct.img_par, %struct.img_par* %4, i32 0, i32 102
  store i32 0, i32* %bitdepth_chroma, align 4
  %5 = load %struct.img_par*, %struct.img_par** @img, align 8
  %width_cr = getelementptr inbounds %struct.img_par, %struct.img_par* %5, i32 0, i32 13
  store i32 0, i32* %width_cr, align 4
  %6 = load %struct.img_par*, %struct.img_par** @img, align 8
  %height_cr = getelementptr inbounds %struct.img_par, %struct.img_par* %6, i32 0, i32 15
  store i32 0, i32* %height_cr, align 4
  %7 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %bit_depth_luma_minus8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %7, i32 0, i32 15
  %8 = load i32, i32* %bit_depth_luma_minus8, align 4
  %add = add i32 %8, 8
  %9 = load %struct.img_par*, %struct.img_par** @img, align 8
  %bitdepth_luma = getelementptr inbounds %struct.img_par, %struct.img_par* %9, i32 0, i32 101
  store i32 %add, i32* %bitdepth_luma, align 4
  %10 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %10, i32 0, i32 8
  %11 = load i32, i32* %chroma_format_idc, align 4
  %cmp2 = icmp ne i32 %11, 0
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %12 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %bit_depth_chroma_minus8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %12, i32 0, i32 16
  %13 = load i32, i32* %bit_depth_chroma_minus8, align 4
  %add4 = add i32 %13, 8
  %14 = load %struct.img_par*, %struct.img_par** @img, align 8
  %bitdepth_chroma5 = getelementptr inbounds %struct.img_par, %struct.img_par* %14, i32 0, i32 102
  store i32 %add4, i32* %bitdepth_chroma5, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  %15 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %log2_max_frame_num_minus4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %15, i32 0, i32 17
  %16 = load i32, i32* %log2_max_frame_num_minus4, align 4
  %add7 = add i32 %16, 4
  %shl = shl i32 1, %add7
  %17 = load %struct.img_par*, %struct.img_par** @img, align 8
  %MaxFrameNum = getelementptr inbounds %struct.img_par, %struct.img_par* %17, i32 0, i32 86
  store i32 %shl, i32* %MaxFrameNum, align 4
  %18 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_width_in_mbs_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %18, i32 0, i32 27
  %19 = load i32, i32* %pic_width_in_mbs_minus1, align 4
  %add8 = add i32 %19, 1
  %20 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.img_par, %struct.img_par* %20, i32 0, i32 87
  store i32 %add8, i32* %PicWidthInMbs, align 4
  %21 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_height_in_map_units_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %21, i32 0, i32 28
  %22 = load i32, i32* %pic_height_in_map_units_minus1, align 4
  %add9 = add i32 %22, 1
  %23 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicHeightInMapUnits = getelementptr inbounds %struct.img_par, %struct.img_par* %23, i32 0, i32 88
  store i32 %add9, i32* %PicHeightInMapUnits, align 4
  %24 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %24, i32 0, i32 29
  %25 = load i32, i32* %frame_mbs_only_flag, align 4
  %sub = sub i32 2, %25
  %26 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicHeightInMapUnits10 = getelementptr inbounds %struct.img_par, %struct.img_par* %26, i32 0, i32 88
  %27 = load i32, i32* %PicHeightInMapUnits10, align 4
  %mul = mul i32 %sub, %27
  %28 = load %struct.img_par*, %struct.img_par** @img, align 8
  %FrameHeightInMbs = getelementptr inbounds %struct.img_par, %struct.img_par* %28, i32 0, i32 89
  store i32 %mul, i32* %FrameHeightInMbs, align 4
  %29 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicWidthInMbs11 = getelementptr inbounds %struct.img_par, %struct.img_par* %29, i32 0, i32 87
  %30 = load i32, i32* %PicWidthInMbs11, align 4
  %31 = load %struct.img_par*, %struct.img_par** @img, align 8
  %FrameHeightInMbs12 = getelementptr inbounds %struct.img_par, %struct.img_par* %31, i32 0, i32 89
  %32 = load i32, i32* %FrameHeightInMbs12, align 4
  %mul13 = mul i32 %30, %32
  %33 = load %struct.img_par*, %struct.img_par** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.img_par, %struct.img_par* %33, i32 0, i32 92
  store i32 %mul13, i32* %FrameSizeInMbs, align 4
  %34 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %chroma_format_idc14 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %34, i32 0, i32 8
  %35 = load i32, i32* %chroma_format_idc14, align 4
  %36 = load %struct.img_par*, %struct.img_par** @img, align 8
  %yuv_format = getelementptr inbounds %struct.img_par, %struct.img_par* %36, i32 0, i32 111
  store i32 %35, i32* %yuv_format, align 4
  %37 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicWidthInMbs15 = getelementptr inbounds %struct.img_par, %struct.img_par* %37, i32 0, i32 87
  %38 = load i32, i32* %PicWidthInMbs15, align 4
  %mul16 = mul i32 %38, 16
  %39 = load %struct.img_par*, %struct.img_par** @img, align 8
  %width = getelementptr inbounds %struct.img_par, %struct.img_par* %39, i32 0, i32 11
  store i32 %mul16, i32* %width, align 4
  %40 = load %struct.img_par*, %struct.img_par** @img, align 8
  %FrameHeightInMbs17 = getelementptr inbounds %struct.img_par, %struct.img_par* %40, i32 0, i32 89
  %41 = load i32, i32* %FrameHeightInMbs17, align 4
  %mul18 = mul i32 %41, 16
  %42 = load %struct.img_par*, %struct.img_par** @img, align 8
  %height = getelementptr inbounds %struct.img_par, %struct.img_par* %42, i32 0, i32 12
  store i32 %mul18, i32* %height, align 4
  %43 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %chroma_format_idc19 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %43, i32 0, i32 8
  %44 = load i32, i32* %chroma_format_idc19, align 4
  %cmp20 = icmp eq i32 %44, 1
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.6
  %45 = load %struct.img_par*, %struct.img_par** @img, align 8
  %width22 = getelementptr inbounds %struct.img_par, %struct.img_par* %45, i32 0, i32 11
  %46 = load i32, i32* %width22, align 4
  %shr = ashr i32 %46, 1
  %47 = load %struct.img_par*, %struct.img_par** @img, align 8
  %width_cr23 = getelementptr inbounds %struct.img_par, %struct.img_par* %47, i32 0, i32 13
  store i32 %shr, i32* %width_cr23, align 4
  %48 = load %struct.img_par*, %struct.img_par** @img, align 8
  %height24 = getelementptr inbounds %struct.img_par, %struct.img_par* %48, i32 0, i32 12
  %49 = load i32, i32* %height24, align 4
  %shr25 = ashr i32 %49, 1
  %50 = load %struct.img_par*, %struct.img_par** @img, align 8
  %height_cr26 = getelementptr inbounds %struct.img_par, %struct.img_par* %50, i32 0, i32 15
  store i32 %shr25, i32* %height_cr26, align 4
  br label %if.end.45

if.else:                                          ; preds = %if.end.6
  %51 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %chroma_format_idc27 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %51, i32 0, i32 8
  %52 = load i32, i32* %chroma_format_idc27, align 4
  %cmp28 = icmp eq i32 %52, 2
  br i1 %cmp28, label %if.then.29, label %if.else.35

if.then.29:                                       ; preds = %if.else
  %53 = load %struct.img_par*, %struct.img_par** @img, align 8
  %width30 = getelementptr inbounds %struct.img_par, %struct.img_par* %53, i32 0, i32 11
  %54 = load i32, i32* %width30, align 4
  %shr31 = ashr i32 %54, 1
  %55 = load %struct.img_par*, %struct.img_par** @img, align 8
  %width_cr32 = getelementptr inbounds %struct.img_par, %struct.img_par* %55, i32 0, i32 13
  store i32 %shr31, i32* %width_cr32, align 4
  %56 = load %struct.img_par*, %struct.img_par** @img, align 8
  %height33 = getelementptr inbounds %struct.img_par, %struct.img_par* %56, i32 0, i32 12
  %57 = load i32, i32* %height33, align 4
  %58 = load %struct.img_par*, %struct.img_par** @img, align 8
  %height_cr34 = getelementptr inbounds %struct.img_par, %struct.img_par* %58, i32 0, i32 15
  store i32 %57, i32* %height_cr34, align 4
  br label %if.end.44

if.else.35:                                       ; preds = %if.else
  %59 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %chroma_format_idc36 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %59, i32 0, i32 8
  %60 = load i32, i32* %chroma_format_idc36, align 4
  %cmp37 = icmp eq i32 %60, 3
  br i1 %cmp37, label %if.then.38, label %if.end.43

if.then.38:                                       ; preds = %if.else.35
  %61 = load %struct.img_par*, %struct.img_par** @img, align 8
  %width39 = getelementptr inbounds %struct.img_par, %struct.img_par* %61, i32 0, i32 11
  %62 = load i32, i32* %width39, align 4
  %63 = load %struct.img_par*, %struct.img_par** @img, align 8
  %width_cr40 = getelementptr inbounds %struct.img_par, %struct.img_par* %63, i32 0, i32 13
  store i32 %62, i32* %width_cr40, align 4
  %64 = load %struct.img_par*, %struct.img_par** @img, align 8
  %height41 = getelementptr inbounds %struct.img_par, %struct.img_par* %64, i32 0, i32 12
  %65 = load i32, i32* %height41, align 4
  %66 = load %struct.img_par*, %struct.img_par** @img, align 8
  %height_cr42 = getelementptr inbounds %struct.img_par, %struct.img_par* %66, i32 0, i32 15
  store i32 %65, i32* %height_cr42, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.38, %if.else.35
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.29
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.21
  %67 = load %struct.img_par*, %struct.img_par** @img, align 8
  %width_cr46 = getelementptr inbounds %struct.img_par, %struct.img_par* %67, i32 0, i32 13
  %68 = load i32, i32* %width_cr46, align 4
  %sub47 = sub nsw i32 %68, 1
  %69 = load %struct.img_par*, %struct.img_par** @img, align 8
  %width_cr_m1 = getelementptr inbounds %struct.img_par, %struct.img_par* %69, i32 0, i32 14
  store i32 %sub47, i32* %width_cr_m1, align 4
  %70 = load %struct.img_par*, %struct.img_par** @img, align 8
  call void @init_frext(%struct.img_par* %70)
  %call = call i32 (...) @init_global_buffers()
  %71 = load %struct.img_par*, %struct.img_par** @img, align 8
  %no_output_of_prior_pics_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %71, i32 0, i32 94
  %72 = load i32, i32* %no_output_of_prior_pics_flag, align 4
  %tobool48 = icmp ne i32 %72, 0
  br i1 %tobool48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %if.end.45
  call void @flush_dpb()
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.end.45
  call void @init_dpb()
  %73 = load %struct.colocated_params*, %struct.colocated_params** @Co_located, align 8
  %cmp51 = icmp ne %struct.colocated_params* null, %73
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.50
  %74 = load %struct.colocated_params*, %struct.colocated_params** @Co_located, align 8
  call void @free_colocated(%struct.colocated_params* %74)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.end.50
  %75 = load %struct.img_par*, %struct.img_par** @img, align 8
  %width54 = getelementptr inbounds %struct.img_par, %struct.img_par* %75, i32 0, i32 11
  %76 = load i32, i32* %width54, align 4
  %77 = load %struct.img_par*, %struct.img_par** @img, align 8
  %height55 = getelementptr inbounds %struct.img_par, %struct.img_par* %77, i32 0, i32 12
  %78 = load i32, i32* %height55, align 4
  %79 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %mb_adaptive_frame_field_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %79, i32 0, i32 30
  %80 = load i32, i32* %mb_adaptive_frame_field_flag, align 4
  %call56 = call %struct.colocated_params* @alloc_colocated(i32 %76, i32 %78, i32 %80)
  store %struct.colocated_params* %call56, %struct.colocated_params** @Co_located, align 8
  %81 = load %struct.img_par*, %struct.img_par** @img, align 8
  %width57 = getelementptr inbounds %struct.img_par, %struct.img_par* %81, i32 0, i32 11
  %82 = load i32, i32* %width57, align 4
  %83 = load %struct.img_par*, %struct.img_par** @img, align 8
  %height58 = getelementptr inbounds %struct.img_par, %struct.img_par* %83, i32 0, i32 12
  %84 = load i32, i32* %height58, align 4
  call void @ercInit(i32 %82, i32 %84, i32 1)
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.53, %entry
  ret void
}

declare void @init_frext(%struct.img_par*) #1

declare i32 @init_global_buffers(...) #1

declare void @flush_dpb() #1

declare void @init_dpb() #1

declare void @free_colocated(%struct.colocated_params*) #1

declare %struct.colocated_params* @alloc_colocated(i32, i32, i32) #1

declare void @ercInit(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @activate_pps(%struct.pic_parameter_set_rbsp_t* %pps) #0 {
entry:
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %0 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %1 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %cmp = icmp ne %struct.pic_parameter_set_rbsp_t* %0, %1
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %tobool = icmp ne %struct.storable_picture* %2, null
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  call void (...) @exit_picture()
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %3 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  store %struct.pic_parameter_set_rbsp_t* %3, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %4 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %transform_8x8_mode_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %4, i32 0, i32 4
  %5 = load i32, i32* %transform_8x8_mode_flag, align 4
  %6 = load %struct.img_par*, %struct.img_par** @img, align 8
  %Transform8x8Mode = getelementptr inbounds %struct.img_par, %struct.img_par* %6, i32 0, i32 109
  store i32 %5, i32* %Transform8x8Mode, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @UseParameterSet(i32 %PicParsetId) #0 {
entry:
  %PicParsetId.addr = alloca i32, align 4
  %sps = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %pps = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %i = alloca i32, align 4
  store i32 %PicParsetId, i32* %PicParsetId.addr, align 4
  %0 = load i32, i32* %PicParsetId.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 %idxprom
  %seq_parameter_set_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %arrayidx, i32 0, i32 2
  %1 = load i32, i32* %seq_parameter_set_id, align 4
  %idxprom1 = zext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds [32 x %struct.seq_parameter_set_rbsp_t], [32 x %struct.seq_parameter_set_rbsp_t]* @SeqParSet, i32 0, i64 %idxprom1
  store %struct.seq_parameter_set_rbsp_t* %arrayidx2, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %2 = load i32, i32* %PicParsetId.addr, align 4
  %idxprom3 = sext i32 %2 to i64
  %arrayidx4 = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 %idxprom3
  store %struct.pic_parameter_set_rbsp_t* %arrayidx4, %struct.pic_parameter_set_rbsp_t** %pps, align 8
  %3 = load i32, i32* %PicParsetId.addr, align 4
  %idxprom5 = sext i32 %3 to i64
  %arrayidx6 = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 %idxprom5
  %Valid = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %arrayidx6, i32 0, i32 0
  %4 = load i32, i32* %Valid, align 4
  %cmp = icmp ne i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %PicParsetId.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.109, i32 0, i32 0), i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %PicParsetId.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 %idxprom7
  %seq_parameter_set_id9 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %arrayidx8, i32 0, i32 2
  %7 = load i32, i32* %seq_parameter_set_id9, align 4
  %idxprom10 = zext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [32 x %struct.seq_parameter_set_rbsp_t], [32 x %struct.seq_parameter_set_rbsp_t]* @SeqParSet, i32 0, i64 %idxprom10
  %Valid12 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %arrayidx11, i32 0, i32 0
  %8 = load i32, i32* %Valid12, align 4
  %cmp13 = icmp ne i32 %8, 1
  br i1 %cmp13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %if.end
  %9 = load i32, i32* %PicParsetId.addr, align 4
  %10 = load i32, i32* %PicParsetId.addr, align 4
  %idxprom15 = sext i32 %10 to i64
  %arrayidx16 = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 %idxprom15
  %seq_parameter_set_id17 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %arrayidx16, i32 0, i32 2
  %11 = load i32, i32* %seq_parameter_set_id17, align 4
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.110, i32 0, i32 0), i32 %9, i32 %11)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %if.end
  %12 = load i32, i32* %PicParsetId.addr, align 4
  %idxprom20 = sext i32 %12 to i64
  %arrayidx21 = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 %idxprom20
  %seq_parameter_set_id22 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %arrayidx21, i32 0, i32 2
  %13 = load i32, i32* %seq_parameter_set_id22, align 4
  %idxprom23 = zext i32 %13 to i64
  %arrayidx24 = getelementptr inbounds [32 x %struct.seq_parameter_set_rbsp_t], [32 x %struct.seq_parameter_set_rbsp_t]* @SeqParSet, i32 0, i64 %idxprom23
  store %struct.seq_parameter_set_rbsp_t* %arrayidx24, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %14 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %pic_order_cnt_type = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %14, i32 0, i32 18
  %15 = load i32, i32* %pic_order_cnt_type, align 4
  %cmp25 = icmp slt i32 %15, 0
  br i1 %cmp25, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.19
  %16 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %pic_order_cnt_type26 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %16, i32 0, i32 18
  %17 = load i32, i32* %pic_order_cnt_type26, align 4
  %cmp27 = icmp ugt i32 %17, 2
  br i1 %cmp27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %lor.lhs.false, %if.end.19
  %18 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %pic_order_cnt_type29 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %18, i32 0, i32 18
  %19 = load i32, i32* %pic_order_cnt_type29, align 4
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.111, i32 0, i32 0), i32 %19)
  call void @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.112, i32 0, i32 0), i32 -1000)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %lor.lhs.false
  %20 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %pic_order_cnt_type32 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %20, i32 0, i32 18
  %21 = load i32, i32* %pic_order_cnt_type32, align 4
  %cmp33 = icmp eq i32 %21, 1
  br i1 %cmp33, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %if.end.31
  %22 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %num_ref_frames_in_pic_order_cnt_cycle = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %22, i32 0, i32 23
  %23 = load i32, i32* %num_ref_frames_in_pic_order_cnt_cycle, align 4
  %cmp35 = icmp uge i32 %23, 256
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.34
  call void @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.113, i32 0, i32 0), i32 -1011)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.then.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.31
  %24 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  call void @activate_sps(%struct.seq_parameter_set_rbsp_t* %24)
  %25 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps, align 8
  call void @activate_pps(%struct.pic_parameter_set_rbsp_t* %25)
  %26 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps, align 8
  %entropy_coding_mode_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %26, i32 0, i32 3
  %27 = load i32, i32* %entropy_coding_mode_flag, align 4
  %cmp39 = icmp eq i32 %27, 0
  br i1 %cmp39, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %if.end.38
  store i32 (%struct.img_par*, i32)* @uvlc_startcode_follows, i32 (%struct.img_par*, i32)** @nal_startcode_follows, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.40
  %28 = load i32, i32* %i, align 4
  %cmp41 = icmp slt i32 %28, 3
  br i1 %cmp41, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %29 to i64
  %30 = load %struct.img_par*, %struct.img_par** @img, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %30, i32 0, i32 38
  %31 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %31, i32 0, i32 9
  %32 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx43 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %32, i64 %idxprom42
  %readSyntaxElement = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx43, i32 0, i32 2
  store i32 (%struct.syntaxelement*, %struct.img_par*, %struct.datapartition*)* @readSyntaxElement_UVLC, i32 (%struct.syntaxelement*, %struct.img_par*, %struct.datapartition*)** %readSyntaxElement, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.55

if.else:                                          ; preds = %if.end.38
  store i32 (%struct.img_par*, i32)* @cabac_startcode_follows, i32 (%struct.img_par*, i32)** @nal_startcode_follows, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.52, %if.else
  %34 = load i32, i32* %i, align 4
  %cmp45 = icmp slt i32 %34, 3
  br i1 %cmp45, label %for.body.46, label %for.end.54

for.body.46:                                      ; preds = %for.cond.44
  %35 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %35 to i64
  %36 = load %struct.img_par*, %struct.img_par** @img, align 8
  %currentSlice48 = getelementptr inbounds %struct.img_par, %struct.img_par* %36, i32 0, i32 38
  %37 = load %struct.Slice*, %struct.Slice** %currentSlice48, align 8
  %partArr49 = getelementptr inbounds %struct.Slice, %struct.Slice* %37, i32 0, i32 9
  %38 = load %struct.datapartition*, %struct.datapartition** %partArr49, align 8
  %arrayidx50 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %38, i64 %idxprom47
  %readSyntaxElement51 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx50, i32 0, i32 2
  store i32 (%struct.syntaxelement*, %struct.img_par*, %struct.datapartition*)* @readSyntaxElement_CABAC, i32 (%struct.syntaxelement*, %struct.img_par*, %struct.datapartition*)** %readSyntaxElement51, align 8
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.46
  %39 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %39, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.44

for.end.54:                                       ; preds = %for.cond.44
  br label %if.end.55

if.end.55:                                        ; preds = %for.end.54, %for.end
  ret void
}

declare i32 @uvlc_startcode_follows(%struct.img_par*, i32) #1

declare i32 @readSyntaxElement_UVLC(%struct.syntaxelement*, %struct.img_par*, %struct.datapartition*) #1

declare i32 @cabac_startcode_follows(%struct.img_par*, i32) #1

declare i32 @readSyntaxElement_CABAC(%struct.syntaxelement*, %struct.img_par*, %struct.datapartition*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
