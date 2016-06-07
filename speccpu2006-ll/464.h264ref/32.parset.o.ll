; ModuleID = 'parset.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32**, i32, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], i32****, i32***, %struct.Picture*, %struct.Slice*, %struct.macroblock*, [1200 x %struct.syntaxelement], i32*, i32*, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i16******, i16******, i16******, i16******, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [15 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, %struct.RMPNIbuffer_s*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, i32 (%struct.syntaxelement*, %struct.datapartition*)* }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)*, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.RMPNIbuffer_s = type { i32, i32, %struct.RMPNIbuffer_s* }
%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i32], [16 x i32], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.colocated_params = type { i32, i32, i32, [6 x [33 x i64]], i16***, i64***, i16****, i8**, [6 x [33 x i64]], i16***, i64***, i16****, i8**, [6 x [33 x i64]], i16***, i64***, i16****, i8**, i32, i8** }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }

@input = external global %struct.InputParameters*, align 8
@PicParSet = common global [256 x %struct.pic_parameter_set_rbsp_t] zeroinitializer, align 16
@active_sps = external global %struct.seq_parameter_set_rbsp_t*, align 8
@active_pps = external global %struct.pic_parameter_set_rbsp_t*, align 8
@GenerateSequenceParameterSet.SubWidthC = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 2, i32 1], align 16
@GenerateSequenceParameterSet.SubHeightC = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 1, i32 1], align 16
@img = external global %struct.ImageParameters*, align 8
@log2_max_frame_num_minus4 = external global i32, align 4
@log2_max_pic_order_cnt_lsb_minus4 = external global i32, align 4
@Co_located = external global %struct.colocated_params*, align 8
@.str = private unnamed_addr constant [46 x i8] c"automatic frame cropping (width) not possible\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"automatic frame cropping (height) not possible\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Parset.c: slice_group_map_type invalid, default\0A\00", align 1
@ZZ_SCAN = internal constant [16 x i8] c"\00\01\04\08\05\02\03\06\09\0C\0D\0A\07\0B\0E\0F", align 16
@ZZ_SCAN8 = internal constant [64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", align 16
@.str.3 = private unnamed_addr constant [17 x i8] c"   : delta_sl   \00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"SeqParameterSet:partition\00", align 1
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
@.str.42 = private unnamed_addr constant [26 x i8] c"PicParameterSet:partition\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"PicParameterSet:bitstream\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"PPS: pic_parameter_set_id\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"PPS: seq_parameter_set_id\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"PPS: entropy_coding_mode_flag\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"PPS: pic_order_present_flag\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c"PPS: num_slice_groups_minus1\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"PPS: slice_group_map_type\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"PPS: run_length_minus1[i]\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"PPS: top_left[i]\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"PPS: bottom_right[i]\00", align 1
@.str.53 = private unnamed_addr constant [39 x i8] c"PPS: slice_group_change_direction_flag\00", align 1
@.str.54 = private unnamed_addr constant [36 x i8] c"PPS: slice_group_change_rate_minus1\00", align 1
@.str.55 = private unnamed_addr constant [34 x i8] c"PPS: pic_size_in_map_units_minus1\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"PPS: >slice_group_id[i]\00", align 1
@.str.57 = private unnamed_addr constant [34 x i8] c"PPS: num_ref_idx_l0_active_minus1\00", align 1
@.str.58 = private unnamed_addr constant [34 x i8] c"PPS: num_ref_idx_l1_active_minus1\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"PPS: weighted_pred_flag\00", align 1
@.str.60 = private unnamed_addr constant [25 x i8] c"PPS: weighted_bipred_idc\00", align 1
@.str.61 = private unnamed_addr constant [25 x i8] c"PPS: pic_init_qp_minus26\00", align 1
@.str.62 = private unnamed_addr constant [25 x i8] c"PPS: pic_init_qs_minus26\00", align 1
@.str.63 = private unnamed_addr constant [28 x i8] c"PPS: chroma_qp_index_offset\00", align 1
@.str.64 = private unnamed_addr constant [44 x i8] c"PPS: deblocking_filter_control_present_flag\00", align 1
@.str.65 = private unnamed_addr constant [33 x i8] c"PPS: constrained_intra_pred_flag\00", align 1
@.str.66 = private unnamed_addr constant [36 x i8] c"PPS: redundant_pic_cnt_present_flag\00", align 1
@.str.67 = private unnamed_addr constant [29 x i8] c"PPS: transform_8x8_mode_flag\00", align 1
@.str.68 = private unnamed_addr constant [37 x i8] c"PPS: pic_scaling_matrix_present_flag\00", align 1
@.str.69 = private unnamed_addr constant [35 x i8] c"PPS: pic_scaling_list_present_flag\00", align 1
@.str.70 = private unnamed_addr constant [35 x i8] c"PPS: second_chroma_qp_index_offset\00", align 1
@SeqParSet = common global [32 x %struct.seq_parameter_set_rbsp_t] zeroinitializer, align 16
@.str.71 = private unnamed_addr constant [59 x i8] c"test: writing Sequence Parameter VUI to signal RGB format\0A\00", align 1
@.str.72 = private unnamed_addr constant [36 x i8] c"VUI: aspect_ratio_info_present_flag\00", align 1
@.str.73 = private unnamed_addr constant [32 x i8] c"VUI: overscan_info_present_flag\00", align 1
@.str.74 = private unnamed_addr constant [36 x i8] c"VUI: video_signal_type_present_flag\00", align 1
@.str.75 = private unnamed_addr constant [18 x i8] c"VUI: video format\00", align 1
@.str.76 = private unnamed_addr constant [27 x i8] c"VUI: video_full_range_flag\00", align 1
@.str.77 = private unnamed_addr constant [36 x i8] c"VUI: color_description_present_flag\00", align 1
@.str.78 = private unnamed_addr constant [22 x i8] c"VUI: colour primaries\00", align 1
@.str.79 = private unnamed_addr constant [30 x i8] c"VUI: transfer characteristics\00", align 1
@.str.80 = private unnamed_addr constant [25 x i8] c"VUI: matrix coefficients\00", align 1
@.str.81 = private unnamed_addr constant [34 x i8] c"VUI: chroma_loc_info_present_flag\00", align 1
@.str.82 = private unnamed_addr constant [30 x i8] c"VUI: timing_info_present_flag\00", align 1
@.str.83 = private unnamed_addr constant [37 x i8] c"VUI: nal_hrd_parameters_present_flag\00", align 1
@.str.84 = private unnamed_addr constant [37 x i8] c"VUI: vcl_hrd_parameters_present_flag\00", align 1
@.str.85 = private unnamed_addr constant [28 x i8] c"VUI: pic_struc_present_flag\00", align 1
@.str.86 = private unnamed_addr constant [32 x i8] c"VUI: bitstream_restriction_flag\00", align 1
@.str.87 = private unnamed_addr constant [76 x i8] c"Sequence Parameter VUI not yet implemented, this should never happen, exit\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @GenerateParameterSets() #0 {
entry:
  %sps = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %pps = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  store %struct.seq_parameter_set_rbsp_t* null, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  store %struct.pic_parameter_set_rbsp_t* null, %struct.pic_parameter_set_rbsp_t** %pps, align 8
  %call = call %struct.seq_parameter_set_rbsp_t* (...) @AllocSPS()
  store %struct.seq_parameter_set_rbsp_t* %call, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %call1 = call %struct.pic_parameter_set_rbsp_t* (...) @AllocPPS()
  store %struct.pic_parameter_set_rbsp_t* %call1, %struct.pic_parameter_set_rbsp_t** %pps, align 8
  %0 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  call void @GenerateSequenceParameterSet(%struct.seq_parameter_set_rbsp_t* %0, i32 0)
  %1 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1, i32 0, i32 15
  %2 = load i32, i32* %GenerateMultiplePPS, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else.9

if.then:                                          ; preds = %entry
  %3 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %profile_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %3, i32 0, i32 1
  %4 = load i32, i32* %profile_idc, align 4
  %cmp = icmp uge i32 %4, 100
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps, align 8
  %6 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %cb_qp_index_offset = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 140
  %8 = load i32, i32* %cb_qp_index_offset, align 4
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %cr_qp_index_offset = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 141
  %10 = load i32, i32* %cr_qp_index_offset, align 4
  call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %5, %struct.seq_parameter_set_rbsp_t* %6, i32 0, i32 0, i32 0, i32 %8, i32 %10)
  %11 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps, align 8
  %12 = bitcast %struct.pic_parameter_set_rbsp_t* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet to i8*), i8* %12, i64 240, i32 8, i1 false)
  %13 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps, align 8
  %14 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %cb_qp_index_offset3 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 140
  %16 = load i32, i32* %cb_qp_index_offset3, align 4
  %17 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %cr_qp_index_offset4 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %17, i32 0, i32 141
  %18 = load i32, i32* %cr_qp_index_offset4, align 4
  call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %13, %struct.seq_parameter_set_rbsp_t* %14, i32 1, i32 1, i32 1, i32 %16, i32 %18)
  %19 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps, align 8
  %20 = bitcast %struct.pic_parameter_set_rbsp_t* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 1) to i8*), i8* %20, i64 240, i32 8, i1 false)
  %21 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps, align 8
  %22 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %23 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %cb_qp_index_offset5 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %23, i32 0, i32 140
  %24 = load i32, i32* %cb_qp_index_offset5, align 4
  %25 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %cr_qp_index_offset6 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %25, i32 0, i32 141
  %26 = load i32, i32* %cr_qp_index_offset6, align 4
  call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %21, %struct.seq_parameter_set_rbsp_t* %22, i32 2, i32 1, i32 2, i32 %24, i32 %26)
  %27 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps, align 8
  %28 = bitcast %struct.pic_parameter_set_rbsp_t* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 2) to i8*), i8* %28, i64 240, i32 8, i1 false)
  br label %if.end

if.else:                                          ; preds = %if.then
  %29 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps, align 8
  %30 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %31 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %chroma_qp_index_offset = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %31, i32 0, i32 77
  %32 = load i32, i32* %chroma_qp_index_offset, align 4
  call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %29, %struct.seq_parameter_set_rbsp_t* %30, i32 0, i32 0, i32 0, i32 %32, i32 0)
  %33 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps, align 8
  %34 = bitcast %struct.pic_parameter_set_rbsp_t* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet to i8*), i8* %34, i64 240, i32 8, i1 false)
  %35 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps, align 8
  %36 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %37 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %chroma_qp_index_offset7 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %37, i32 0, i32 77
  %38 = load i32, i32* %chroma_qp_index_offset7, align 4
  call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %35, %struct.seq_parameter_set_rbsp_t* %36, i32 1, i32 1, i32 1, i32 %38, i32 0)
  %39 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps, align 8
  %40 = bitcast %struct.pic_parameter_set_rbsp_t* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 1) to i8*), i8* %40, i64 240, i32 8, i1 false)
  %41 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps, align 8
  %42 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %43 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %chroma_qp_index_offset8 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %43, i32 0, i32 77
  %44 = load i32, i32* %chroma_qp_index_offset8, align 4
  call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %41, %struct.seq_parameter_set_rbsp_t* %42, i32 2, i32 1, i32 2, i32 %44, i32 0)
  %45 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps, align 8
  %46 = bitcast %struct.pic_parameter_set_rbsp_t* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 2) to i8*), i8* %46, i64 240, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.20

if.else.9:                                        ; preds = %entry
  %47 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %profile_idc10 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %47, i32 0, i32 1
  %48 = load i32, i32* %profile_idc10, align 4
  %cmp11 = icmp uge i32 %48, 100
  br i1 %cmp11, label %if.then.12, label %if.else.15

if.then.12:                                       ; preds = %if.else.9
  %49 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps, align 8
  %50 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %51 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %WeightedPrediction = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %51, i32 0, i32 46
  %52 = load i32, i32* %WeightedPrediction, align 4
  %53 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %WeightedBiprediction = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %53, i32 0, i32 47
  %54 = load i32, i32* %WeightedBiprediction, align 4
  %55 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %cb_qp_index_offset13 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %55, i32 0, i32 140
  %56 = load i32, i32* %cb_qp_index_offset13, align 4
  %57 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %cr_qp_index_offset14 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %57, i32 0, i32 141
  %58 = load i32, i32* %cr_qp_index_offset14, align 4
  call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %49, %struct.seq_parameter_set_rbsp_t* %50, i32 0, i32 %52, i32 %54, i32 %56, i32 %58)
  br label %if.end.19

if.else.15:                                       ; preds = %if.else.9
  %59 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps, align 8
  %60 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %61 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %WeightedPrediction16 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %61, i32 0, i32 46
  %62 = load i32, i32* %WeightedPrediction16, align 4
  %63 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %WeightedBiprediction17 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %63, i32 0, i32 47
  %64 = load i32, i32* %WeightedBiprediction17, align 4
  %65 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %chroma_qp_index_offset18 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %65, i32 0, i32 77
  %66 = load i32, i32* %chroma_qp_index_offset18, align 4
  call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %59, %struct.seq_parameter_set_rbsp_t* %60, i32 0, i32 %62, i32 %64, i32 %66, i32 0)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.15, %if.then.12
  %67 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps, align 8
  %68 = bitcast %struct.pic_parameter_set_rbsp_t* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet to i8*), i8* %68, i64 240, i32 8, i1 false)
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end
  %69 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  store %struct.seq_parameter_set_rbsp_t* %69, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 0), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  ret void
}

declare %struct.seq_parameter_set_rbsp_t* @AllocSPS(...) #1

declare %struct.pic_parameter_set_rbsp_t* @AllocPPS(...) #1

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
  %constrained_set3_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %8, i32 0, i32 5
  store i32 0, i32* %constrained_set3_flag, align 4
  %9 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_parameter_set_id = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %9, i32 0, i32 7
  store i32 0, i32* %seq_parameter_set_id, align 4
  %10 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BitDepthLuma = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %10, i32 0, i32 135
  %11 = load i32, i32* %BitDepthLuma, align 4
  %sub = sub nsw i32 %11, 8
  %12 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %bit_depth_luma_minus8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %12, i32 0, i32 11
  store i32 %sub, i32* %bit_depth_luma_minus8, align 4
  %13 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BitDepthChroma = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %13, i32 0, i32 136
  %14 = load i32, i32* %BitDepthChroma, align 4
  %sub10 = sub nsw i32 %14, 8
  %15 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %bit_depth_chroma_minus8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %15, i32 0, i32 12
  store i32 %sub10, i32* %bit_depth_chroma_minus8, align 4
  %16 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %lossless_qpprime_y_zero_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %16, i32 0, i32 142
  %17 = load i32, i32* %lossless_qpprime_y_zero_flag, align 4
  %18 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %profile_idc11 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %18, i32 0, i32 1
  %19 = load i32, i32* %profile_idc11, align 4
  %cmp12 = icmp eq i32 %19, 144
  %conv = zext i1 %cmp12 to i32
  %and = and i32 %17, %conv
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lossless_qpprime_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 160
  store i32 %and, i32* %lossless_qpprime_flag, align 4
  %21 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %residue_transform_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %21, i32 0, i32 143
  %22 = load i32, i32* %residue_transform_flag, align 4
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %residue_transform_flag13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 164
  store i32 %22, i32* %residue_transform_flag13, align 4
  %24 = load i32, i32* @log2_max_frame_num_minus4, align 4
  %25 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %log2_max_frame_num_minus4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %25, i32 0, i32 13
  store i32 %24, i32* %log2_max_frame_num_minus4, align 4
  %26 = load i32, i32* @log2_max_pic_order_cnt_lsb_minus4, align 4
  %27 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %log2_max_pic_order_cnt_lsb_minus4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %27, i32 0, i32 15
  store i32 %26, i32* %log2_max_pic_order_cnt_lsb_minus4, align 4
  %28 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %pic_order_cnt_type = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %28, i32 0, i32 120
  %29 = load i32, i32* %pic_order_cnt_type, align 4
  %30 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_order_cnt_type14 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %30, i32 0, i32 14
  store i32 %29, i32* %pic_order_cnt_type14, align 4
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_frames_in_pic_order_cnt_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 95
  %32 = load i32, i32* %num_ref_frames_in_pic_order_cnt_cycle, align 4
  %33 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %num_ref_frames_in_pic_order_cnt_cycle15 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %33, i32 0, i32 19
  store i32 %32, i32* %num_ref_frames_in_pic_order_cnt_cycle15, align 4
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_always_zero_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 92
  %35 = load i32, i32* %delta_pic_order_always_zero_flag, align 4
  %36 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %delta_pic_order_always_zero_flag16 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %36, i32 0, i32 16
  store i32 %35, i32* %delta_pic_order_always_zero_flag16, align 4
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %offset_for_non_ref_pic = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 93
  %38 = load i32, i32* %offset_for_non_ref_pic, align 4
  %39 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %offset_for_non_ref_pic17 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %39, i32 0, i32 17
  store i32 %38, i32* %offset_for_non_ref_pic17, align 4
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %offset_for_top_to_bottom_field = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 94
  %41 = load i32, i32* %offset_for_top_to_bottom_field, align 4
  %42 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %offset_for_top_to_bottom_field18 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %42, i32 0, i32 18
  store i32 %41, i32* %offset_for_top_to_bottom_field18, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %lor.end
  %43 = load i32, i32* %i, align 4
  %44 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_frames_in_pic_order_cnt_cycle19 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %44, i32 0, i32 95
  %45 = load i32, i32* %num_ref_frames_in_pic_order_cnt_cycle19, align 4
  %cmp20 = icmp ult i32 %43, %45
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load i32, i32* %i, align 4
  %idxprom = zext i32 %46 to i64
  %47 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %offset_for_ref_frame = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %47, i32 0, i32 96
  %arrayidx = getelementptr inbounds [1 x i32], [1 x i32]* %offset_for_ref_frame, i32 0, i64 %idxprom
  %48 = load i32, i32* %arrayidx, align 4
  %49 = load i32, i32* %i, align 4
  %idxprom22 = zext i32 %49 to i64
  %50 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %offset_for_ref_frame23 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %50, i32 0, i32 20
  %arrayidx24 = getelementptr inbounds [256 x i32], [256 x i32]* %offset_for_ref_frame23, i32 0, i64 %idxprom22
  store i32 %48, i32* %arrayidx24, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i32, i32* %i, align 4
  %inc = add i32 %51, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %52 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %52, i32 0, i32 9
  %53 = load i32, i32* %num_ref_frames, align 4
  %54 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %num_ref_frames25 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %54, i32 0, i32 21
  store i32 %53, i32* %num_ref_frames25, align 4
  %55 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %gaps_in_frame_num_value_allowed_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %55, i32 0, i32 22
  store i32 0, i32* %gaps_in_frame_num_value_allowed_flag, align 4
  %56 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %56, i32 0, i32 91
  %57 = load i32, i32* %PicInterlace, align 4
  %tobool = icmp ne i32 %57, 0
  br i1 %tobool, label %lor.end.28, label %lor.rhs.26

lor.rhs.26:                                       ; preds = %for.end
  %58 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %58, i32 0, i32 92
  %59 = load i32, i32* %MbInterlace, align 4
  %tobool27 = icmp ne i32 %59, 0
  br label %lor.end.28

lor.end.28:                                       ; preds = %lor.rhs.26, %for.end
  %60 = phi i1 [ true, %for.end ], [ %tobool27, %lor.rhs.26 ]
  %lnot = xor i1 %60, true
  %lnot.ext = zext i1 %lnot to i32
  %61 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %61, i32 0, i32 25
  store i32 %lnot.ext, i32* %frame_mbs_only_flag, align 4
  %62 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %62, i32 0, i32 16
  %63 = load i32, i32* %img_width, align 4
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_right = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 165
  %65 = load i32, i32* %auto_crop_right, align 4
  %add = add nsw i32 %63, %65
  %div = sdiv i32 %add, 16
  %sub30 = sub nsw i32 %div, 1
  %66 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_width_in_mbs_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %66, i32 0, i32 23
  store i32 %sub30, i32* %pic_width_in_mbs_minus1, align 4
  %67 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %67, i32 0, i32 17
  %68 = load i32, i32* %img_height, align 4
  %69 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_bottom = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %69, i32 0, i32 166
  %70 = load i32, i32* %auto_crop_bottom, align 4
  %add31 = add nsw i32 %68, %70
  %div32 = sdiv i32 %add31, 16
  %71 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_mbs_only_flag33 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %71, i32 0, i32 25
  %72 = load i32, i32* %frame_mbs_only_flag33, align 4
  %sub34 = sub i32 2, %72
  %div35 = udiv i32 %div32, %sub34
  %sub36 = sub i32 %div35, 1
  %73 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_height_in_map_units_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %73, i32 0, i32 24
  store i32 %sub36, i32* %pic_height_in_map_units_minus1, align 4
  %74 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace37 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %74, i32 0, i32 92
  %75 = load i32, i32* %MbInterlace37, align 4
  %cmp38 = icmp ne i32 0, %75
  %conv39 = zext i1 %cmp38 to i32
  %76 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %mb_adaptive_frame_field_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %76, i32 0, i32 26
  store i32 %conv39, i32* %mb_adaptive_frame_field_flag, align 4
  %77 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %directInferenceFlag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %77, i32 0, i32 38
  %78 = load i32, i32* %directInferenceFlag, align 4
  %79 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %direct_8x8_inference_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %79, i32 0, i32 27
  store i32 %78, i32* %direct_8x8_inference_flag, align 4
  %80 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rgb_input_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %80, i32 0, i32 139
  %81 = load i32, i32* %rgb_input_flag, align 4
  %tobool40 = icmp ne i32 %81, 0
  br i1 %tobool40, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.end.28
  %82 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %yuv_format = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %82, i32 0, i32 18
  %83 = load i32, i32* %yuv_format, align 4
  %cmp41 = icmp eq i32 %83, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end.28
  %84 = phi i1 [ false, %lor.end.28 ], [ %cmp41, %land.rhs ]
  %land.ext = zext i1 %84 to i32
  %85 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_parameters_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %85, i32 0, i32 33
  store i32 %land.ext, i32* %vui_parameters_present_flag, align 4
  %86 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %yuv_format43 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %86, i32 0, i32 18
  %87 = load i32, i32* %yuv_format43, align 4
  %88 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %88, i32 0, i32 8
  store i32 %87, i32* %chroma_format_idc, align 4
  %89 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_width_in_mbs_minus144 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %89, i32 0, i32 23
  %90 = load i32, i32* %pic_width_in_mbs_minus144, align 4
  %add45 = add i32 %90, 1
  store i32 %add45, i32* %PicWidthInMbs, align 4
  %91 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_height_in_map_units_minus146 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %91, i32 0, i32 24
  %92 = load i32, i32* %pic_height_in_map_units_minus146, align 4
  %add47 = add i32 %92, 1
  store i32 %add47, i32* %PicHeightInMapUnits, align 4
  %93 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_mbs_only_flag48 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %93, i32 0, i32 25
  %94 = load i32, i32* %frame_mbs_only_flag48, align 4
  %sub49 = sub i32 2, %94
  %95 = load i32, i32* %PicHeightInMapUnits, align 4
  %mul = mul i32 %sub49, %95
  store i32 %mul, i32* %FrameHeightInMbs, align 4
  %96 = load i32, i32* %PicWidthInMbs, align 4
  %mul50 = mul nsw i32 %96, 16
  store i32 %mul50, i32* %width, align 4
  %97 = load i32, i32* %FrameHeightInMbs, align 4
  %mul51 = mul nsw i32 %97, 16
  store i32 %mul51, i32* %height, align 4
  %98 = load i32, i32* %width, align 4
  %99 = load i32, i32* %height, align 4
  %100 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %mb_adaptive_frame_field_flag52 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %100, i32 0, i32 26
  %101 = load i32, i32* %mb_adaptive_frame_field_flag52, align 4
  %call53 = call %struct.colocated_params* @alloc_colocated(i32 %98, i32 %99, i32 %101)
  store %struct.colocated_params* %call53, %struct.colocated_params** @Co_located, align 8
  %102 = load i32, i32* %frext_profile, align 4
  %tobool54 = icmp ne i32 %102, 0
  br i1 %tobool54, label %if.then, label %if.else.85

if.then:                                          ; preds = %land.end
  %103 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ScalingMatrixPresentFlag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %103, i32 0, i32 132
  %104 = load i32, i32* %ScalingMatrixPresentFlag, align 4
  %and55 = and i32 %104, 1
  %105 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_matrix_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %105, i32 0, i32 9
  store i32 %and55, i32* %seq_scaling_matrix_present_flag, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.82, %if.then
  %106 = load i32, i32* %i, align 4
  %cmp57 = icmp ult i32 %106, 8
  br i1 %cmp57, label %for.body.59, label %for.end.84

for.body.59:                                      ; preds = %for.cond.56
  %107 = load i32, i32* %i, align 4
  %cmp60 = icmp ult i32 %107, 6
  br i1 %cmp60, label %if.then.62, label %if.else

if.then.62:                                       ; preds = %for.body.59
  %108 = load i32, i32* %i, align 4
  %idxprom63 = zext i32 %108 to i64
  %109 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ScalingListPresentFlag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %109, i32 0, i32 133
  %arrayidx64 = getelementptr inbounds [8 x i32], [8 x i32]* %ScalingListPresentFlag, i32 0, i64 %idxprom63
  %110 = load i32, i32* %arrayidx64, align 4
  %and65 = and i32 %110, 1
  %111 = load i32, i32* %i, align 4
  %idxprom66 = zext i32 %111 to i64
  %112 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_list_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %112, i32 0, i32 10
  %arrayidx67 = getelementptr inbounds [8 x i32], [8 x i32]* %seq_scaling_list_present_flag, i32 0, i64 %idxprom66
  store i32 %and65, i32* %arrayidx67, align 4
  br label %if.end.81

if.else:                                          ; preds = %for.body.59
  %113 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %113, i32 0, i32 123
  %114 = load i32, i32* %AllowTransform8x8, align 4
  %tobool68 = icmp ne i32 %114, 0
  br i1 %tobool68, label %if.then.69, label %if.else.77

if.then.69:                                       ; preds = %if.else
  %115 = load i32, i32* %i, align 4
  %idxprom70 = zext i32 %115 to i64
  %116 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ScalingListPresentFlag71 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %116, i32 0, i32 133
  %arrayidx72 = getelementptr inbounds [8 x i32], [8 x i32]* %ScalingListPresentFlag71, i32 0, i64 %idxprom70
  %117 = load i32, i32* %arrayidx72, align 4
  %and73 = and i32 %117, 1
  %118 = load i32, i32* %i, align 4
  %idxprom74 = zext i32 %118 to i64
  %119 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_list_present_flag75 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %119, i32 0, i32 10
  %arrayidx76 = getelementptr inbounds [8 x i32], [8 x i32]* %seq_scaling_list_present_flag75, i32 0, i64 %idxprom74
  store i32 %and73, i32* %arrayidx76, align 4
  br label %if.end

if.else.77:                                       ; preds = %if.else
  %120 = load i32, i32* %i, align 4
  %idxprom78 = zext i32 %120 to i64
  %121 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_list_present_flag79 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %121, i32 0, i32 10
  %arrayidx80 = getelementptr inbounds [8 x i32], [8 x i32]* %seq_scaling_list_present_flag79, i32 0, i64 %idxprom78
  store i32 0, i32* %arrayidx80, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.77, %if.then.69
  br label %if.end.81

if.end.81:                                        ; preds = %if.end, %if.then.62
  br label %for.inc.82

for.inc.82:                                       ; preds = %if.end.81
  %122 = load i32, i32* %i, align 4
  %inc83 = add i32 %122, 1
  store i32 %inc83, i32* %i, align 4
  br label %for.cond.56

for.end.84:                                       ; preds = %for.cond.56
  br label %if.end.97

if.else.85:                                       ; preds = %land.end
  %123 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_matrix_present_flag86 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %123, i32 0, i32 9
  store i32 0, i32* %seq_scaling_matrix_present_flag86, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.94, %if.else.85
  %124 = load i32, i32* %i, align 4
  %cmp88 = icmp ult i32 %124, 8
  br i1 %cmp88, label %for.body.90, label %for.end.96

for.body.90:                                      ; preds = %for.cond.87
  %125 = load i32, i32* %i, align 4
  %idxprom91 = zext i32 %125 to i64
  %126 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_list_present_flag92 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %126, i32 0, i32 10
  %arrayidx93 = getelementptr inbounds [8 x i32], [8 x i32]* %seq_scaling_list_present_flag92, i32 0, i64 %idxprom91
  store i32 0, i32* %arrayidx93, align 4
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.body.90
  %127 = load i32, i32* %i, align 4
  %inc95 = add i32 %127, 1
  store i32 %inc95, i32* %i, align 4
  br label %for.cond.87

for.end.96:                                       ; preds = %for.cond.87
  br label %if.end.97

if.end.97:                                        ; preds = %for.end.96, %for.end.84
  %128 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_right98 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %128, i32 0, i32 165
  %129 = load i32, i32* %auto_crop_right98, align 4
  %tobool99 = icmp ne i32 %129, 0
  br i1 %tobool99, label %if.then.103, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %if.end.97
  %130 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_bottom101 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %130, i32 0, i32 166
  %131 = load i32, i32* %auto_crop_bottom101, align 4
  %tobool102 = icmp ne i32 %131, 0
  br i1 %tobool102, label %if.then.103, label %if.else.135

if.then.103:                                      ; preds = %lor.lhs.false.100, %if.end.97
  %132 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %132, i32 0, i32 28
  store i32 1, i32* %frame_cropping_flag, align 4
  %133 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_rect_left_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %133, i32 0, i32 29
  store i32 0, i32* %frame_cropping_rect_left_offset, align 4
  %134 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_rect_top_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %134, i32 0, i32 31
  store i32 0, i32* %frame_cropping_rect_top_offset, align 4
  %135 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_right104 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %135, i32 0, i32 165
  %136 = load i32, i32* %auto_crop_right104, align 4
  %137 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %chroma_format_idc105 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %137, i32 0, i32 8
  %138 = load i32, i32* %chroma_format_idc105, align 4
  %idxprom106 = zext i32 %138 to i64
  %arrayidx107 = getelementptr inbounds [4 x i32], [4 x i32]* %SubWidthC, i32 0, i64 %idxprom106
  %139 = load i32, i32* %arrayidx107, align 4
  %div108 = sdiv i32 %136, %139
  %140 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_rect_right_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %140, i32 0, i32 30
  store i32 %div108, i32* %frame_cropping_rect_right_offset, align 4
  %141 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_bottom109 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %141, i32 0, i32 166
  %142 = load i32, i32* %auto_crop_bottom109, align 4
  %143 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %chroma_format_idc110 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %143, i32 0, i32 8
  %144 = load i32, i32* %chroma_format_idc110, align 4
  %idxprom111 = zext i32 %144 to i64
  %arrayidx112 = getelementptr inbounds [4 x i32], [4 x i32]* %SubHeightC, i32 0, i64 %idxprom111
  %145 = load i32, i32* %arrayidx112, align 4
  %146 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_mbs_only_flag113 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %146, i32 0, i32 25
  %147 = load i32, i32* %frame_mbs_only_flag113, align 4
  %sub114 = sub i32 2, %147
  %mul115 = mul i32 %145, %sub114
  %div116 = udiv i32 %142, %mul115
  %148 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_rect_bottom_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %148, i32 0, i32 32
  store i32 %div116, i32* %frame_cropping_rect_bottom_offset, align 4
  %149 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_right117 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %149, i32 0, i32 165
  %150 = load i32, i32* %auto_crop_right117, align 4
  %151 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %chroma_format_idc118 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %151, i32 0, i32 8
  %152 = load i32, i32* %chroma_format_idc118, align 4
  %idxprom119 = zext i32 %152 to i64
  %arrayidx120 = getelementptr inbounds [4 x i32], [4 x i32]* %SubWidthC, i32 0, i64 %idxprom119
  %153 = load i32, i32* %arrayidx120, align 4
  %rem = srem i32 %150, %153
  %tobool121 = icmp ne i32 %rem, 0
  br i1 %tobool121, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.then.103
  call void @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i32 0, i32 0), i32 500)
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.122, %if.then.103
  %154 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_bottom124 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %154, i32 0, i32 166
  %155 = load i32, i32* %auto_crop_bottom124, align 4
  %156 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %chroma_format_idc125 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %156, i32 0, i32 8
  %157 = load i32, i32* %chroma_format_idc125, align 4
  %idxprom126 = zext i32 %157 to i64
  %arrayidx127 = getelementptr inbounds [4 x i32], [4 x i32]* %SubHeightC, i32 0, i64 %idxprom126
  %158 = load i32, i32* %arrayidx127, align 4
  %159 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_mbs_only_flag128 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %159, i32 0, i32 25
  %160 = load i32, i32* %frame_mbs_only_flag128, align 4
  %sub129 = sub i32 2, %160
  %mul130 = mul i32 %158, %sub129
  %rem131 = urem i32 %155, %mul130
  %tobool132 = icmp ne i32 %rem131, 0
  br i1 %tobool132, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %if.end.123
  call void @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i32 0, i32 0), i32 500)
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.133, %if.end.123
  br label %if.end.137

if.else.135:                                      ; preds = %lor.lhs.false.100
  %161 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_flag136 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %161, i32 0, i32 28
  store i32 0, i32* %frame_cropping_flag136, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.135, %if.end.134
  ret void
}

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
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 59
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
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %10, i32 0, i32 123
  %11 = load i32, i32* %AllowTransform8x8, align 4
  %tobool10 = icmp ne i32 %11, 0
  %cond11 = select i1 %tobool10, i32 1, i32 0
  %12 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %transform_8x8_mode_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %12, i32 0, i32 4
  store i32 %cond11, i32* %transform_8x8_mode_flag, align 4
  %13 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ScalingMatrixPresentFlag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %13, i32 0, i32 132
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
  %ScalingListPresentFlag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %19, i32 0, i32 133
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
  %ScalingListPresentFlag23 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %26, i32 0, i32 133
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
  %38 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %AllowTransform8x846 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %38, i32 0, i32 123
  store i32 0, i32* %AllowTransform8x846, align 4
  %39 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %transform_8x8_mode_flag47 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %39, i32 0, i32 4
  store i32 0, i32* %transform_8x8_mode_flag47, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %for.end.45, %for.end
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_order_present_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 112
  %41 = load i32, i32* %pic_order_present_flag, align 4
  %42 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_order_present_flag49 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %42, i32 0, i32 7
  store i32 %41, i32* %pic_order_present_flag49, align 4
  %43 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_slice_groups_minus1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %43, i32 0, i32 110
  %44 = load i32, i32* %num_slice_groups_minus1, align 4
  %45 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus150 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %45, i32 0, i32 8
  store i32 %44, i32* %num_slice_groups_minus150, align 4
  %46 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus151 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %46, i32 0, i32 8
  %47 = load i32, i32* %num_slice_groups_minus151, align 4
  %cmp52 = icmp ugt i32 %47, 0
  br i1 %cmp52, label %if.then.53, label %if.end.112

if.then.53:                                       ; preds = %if.end.48
  %48 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_group_map_type = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %48, i32 0, i32 111
  %49 = load i32, i32* %slice_group_map_type, align 4
  switch i32 %49, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.67
    i32 2, label %sw.bb.69
    i32 3, label %sw.bb.88
    i32 4, label %sw.bb.88
    i32 5, label %sw.bb.88
    i32 6, label %sw.bb.93
  ]

sw.bb:                                            ; preds = %if.then.53
  %50 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type54 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %50, i32 0, i32 9
  store i32 0, i32* %slice_group_map_type54, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.64, %sw.bb
  %51 = load i32, i32* %i, align 4
  %52 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus156 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %52, i32 0, i32 8
  %53 = load i32, i32* %num_slice_groups_minus156, align 4
  %cmp57 = icmp ule i32 %51, %53
  br i1 %cmp57, label %for.body.58, label %for.end.66

for.body.58:                                      ; preds = %for.cond.55
  %54 = load i32, i32* %i, align 4
  %idxprom59 = zext i32 %54 to i64
  %55 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %run_length_minus1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %55, i32 0, i32 115
  %56 = load i32*, i32** %run_length_minus1, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %56, i64 %idxprom59
  %57 = load i32, i32* %arrayidx60, align 4
  %58 = load i32, i32* %i, align 4
  %idxprom61 = zext i32 %58 to i64
  %59 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %run_length_minus162 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %59, i32 0, i32 10
  %arrayidx63 = getelementptr inbounds [8 x i32], [8 x i32]* %run_length_minus162, i32 0, i64 %idxprom61
  store i32 %57, i32* %arrayidx63, align 4
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.body.58
  %60 = load i32, i32* %i, align 4
  %inc65 = add i32 %60, 1
  store i32 %inc65, i32* %i, align 4
  br label %for.cond.55

for.end.66:                                       ; preds = %for.cond.55
  br label %sw.epilog

sw.bb.67:                                         ; preds = %if.then.53
  %61 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type68 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %61, i32 0, i32 9
  store i32 1, i32* %slice_group_map_type68, align 4
  br label %sw.epilog

sw.bb.69:                                         ; preds = %if.then.53
  %62 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type70 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %62, i32 0, i32 9
  store i32 2, i32* %slice_group_map_type70, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.85, %sw.bb.69
  %63 = load i32, i32* %i, align 4
  %64 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus172 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %64, i32 0, i32 8
  %65 = load i32, i32* %num_slice_groups_minus172, align 4
  %cmp73 = icmp ult i32 %63, %65
  br i1 %cmp73, label %for.body.74, label %for.end.87

for.body.74:                                      ; preds = %for.cond.71
  %66 = load i32, i32* %i, align 4
  %idxprom75 = zext i32 %66 to i64
  %67 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %top_left = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %67, i32 0, i32 112
  %68 = load i32*, i32** %top_left, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %68, i64 %idxprom75
  %69 = load i32, i32* %arrayidx76, align 4
  %70 = load i32, i32* %i, align 4
  %idxprom77 = zext i32 %70 to i64
  %71 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %top_left78 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %71, i32 0, i32 11
  %arrayidx79 = getelementptr inbounds [8 x i32], [8 x i32]* %top_left78, i32 0, i64 %idxprom77
  store i32 %69, i32* %arrayidx79, align 4
  %72 = load i32, i32* %i, align 4
  %idxprom80 = zext i32 %72 to i64
  %73 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %bottom_right = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %73, i32 0, i32 113
  %74 = load i32*, i32** %bottom_right, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %74, i64 %idxprom80
  %75 = load i32, i32* %arrayidx81, align 4
  %76 = load i32, i32* %i, align 4
  %idxprom82 = zext i32 %76 to i64
  %77 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %bottom_right83 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %77, i32 0, i32 12
  %arrayidx84 = getelementptr inbounds [8 x i32], [8 x i32]* %bottom_right83, i32 0, i64 %idxprom82
  store i32 %75, i32* %arrayidx84, align 4
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.body.74
  %78 = load i32, i32* %i, align 4
  %inc86 = add i32 %78, 1
  store i32 %inc86, i32* %i, align 4
  br label %for.cond.71

for.end.87:                                       ; preds = %for.cond.71
  br label %sw.epilog

sw.bb.88:                                         ; preds = %if.then.53, %if.then.53, %if.then.53
  %79 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_group_map_type89 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %79, i32 0, i32 111
  %80 = load i32, i32* %slice_group_map_type89, align 4
  %81 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type90 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %81, i32 0, i32 9
  store i32 %80, i32* %slice_group_map_type90, align 4
  %82 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_group_change_direction_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %82, i32 0, i32 116
  %83 = load i32, i32* %slice_group_change_direction_flag, align 4
  %84 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag91 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %84, i32 0, i32 13
  store i32 %83, i32* %slice_group_change_direction_flag91, align 4
  %85 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_group_change_rate_minus1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %85, i32 0, i32 117
  %86 = load i32, i32* %slice_group_change_rate_minus1, align 4
  %87 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_rate_minus192 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %87, i32 0, i32 14
  store i32 %86, i32* %slice_group_change_rate_minus192, align 4
  br label %sw.epilog

sw.bb.93:                                         ; preds = %if.then.53
  %88 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type94 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %88, i32 0, i32 9
  store i32 6, i32* %slice_group_map_type94, align 4
  %89 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %89, i32 0, i32 17
  %90 = load i32, i32* %img_height, align 4
  %91 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_bottom = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %91, i32 0, i32 166
  %92 = load i32, i32* %auto_crop_bottom, align 4
  %add = add nsw i32 %90, %92
  %div = sdiv i32 %add, 16
  %93 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %93, i32 0, i32 25
  %94 = load i32, i32* %frame_mbs_only_flag, align 4
  %sub = sub i32 2, %94
  %div95 = udiv i32 %div, %sub
  %95 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %95, i32 0, i32 16
  %96 = load i32, i32* %img_width, align 4
  %97 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_right = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %97, i32 0, i32 165
  %98 = load i32, i32* %auto_crop_right, align 4
  %add96 = add nsw i32 %96, %98
  %div97 = sdiv i32 %add96, 16
  %mul = mul i32 %div95, %div97
  %sub98 = sub i32 %mul, 1
  %99 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_size_in_map_units_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %99, i32 0, i32 15
  store i32 %sub98, i32* %pic_size_in_map_units_minus1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.108, %sw.bb.93
  %100 = load i32, i32* %i, align 4
  %101 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_size_in_map_units_minus1100 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %101, i32 0, i32 15
  %102 = load i32, i32* %pic_size_in_map_units_minus1100, align 4
  %cmp101 = icmp ule i32 %100, %102
  br i1 %cmp101, label %for.body.102, label %for.end.110

for.body.102:                                     ; preds = %for.cond.99
  %103 = load i32, i32* %i, align 4
  %idxprom103 = zext i32 %103 to i64
  %104 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_group_id = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %104, i32 0, i32 114
  %105 = load i8*, i8** %slice_group_id, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %105, i64 %idxprom103
  %106 = load i8, i8* %arrayidx104, align 1
  %107 = load i32, i32* %i, align 4
  %idxprom105 = zext i32 %107 to i64
  %108 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_id106 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %108, i32 0, i32 16
  %109 = load i8*, i8** %slice_group_id106, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %109, i64 %idxprom105
  store i8 %106, i8* %arrayidx107, align 1
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.body.102
  %110 = load i32, i32* %i, align 4
  %inc109 = add i32 %110, 1
  store i32 %inc109, i32* %i, align 4
  br label %for.cond.99

for.end.110:                                      ; preds = %for.cond.99
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.53
  %call111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.110, %sw.bb.88, %for.end.87, %sw.bb.67, %for.end.66
  br label %if.end.112

if.end.112:                                       ; preds = %sw.epilog, %if.end.48
  %111 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_mbs_only_flag113 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %111, i32 0, i32 25
  %112 = load i32, i32* %frame_mbs_only_flag113, align 4
  %tobool114 = icmp ne i32 %112, 0
  br i1 %tobool114, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.112
  %113 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %num_ref_frames = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %113, i32 0, i32 21
  %114 = load i32, i32* %num_ref_frames, align 4
  %sub115 = sub i32 %114, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end.112
  %115 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %num_ref_frames116 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %115, i32 0, i32 21
  %116 = load i32, i32* %num_ref_frames116, align 4
  %mul117 = mul i32 2, %116
  %sub118 = sub i32 %mul117, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond119 = phi i32 [ %sub115, %cond.true ], [ %sub118, %cond.false ]
  %117 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_ref_idx_l0_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %117, i32 0, i32 17
  store i32 %cond119, i32* %num_ref_idx_l0_active_minus1, align 4
  %118 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_mbs_only_flag120 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %118, i32 0, i32 25
  %119 = load i32, i32* %frame_mbs_only_flag120, align 4
  %tobool121 = icmp ne i32 %119, 0
  br i1 %tobool121, label %cond.true.122, label %cond.false.125

cond.true.122:                                    ; preds = %cond.end
  %120 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %num_ref_frames123 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %120, i32 0, i32 21
  %121 = load i32, i32* %num_ref_frames123, align 4
  %sub124 = sub i32 %121, 1
  br label %cond.end.129

cond.false.125:                                   ; preds = %cond.end
  %122 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %num_ref_frames126 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %122, i32 0, i32 21
  %123 = load i32, i32* %num_ref_frames126, align 4
  %mul127 = mul i32 2, %123
  %sub128 = sub i32 %mul127, 1
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.125, %cond.true.122
  %cond130 = phi i32 [ %sub124, %cond.true.122 ], [ %sub128, %cond.false.125 ]
  %124 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_ref_idx_l1_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %124, i32 0, i32 18
  store i32 %cond130, i32* %num_ref_idx_l1_active_minus1, align 4
  %125 = load i32, i32* %WeightedPrediction.addr, align 4
  %126 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %126, i32 0, i32 19
  store i32 %125, i32* %weighted_pred_flag, align 4
  %127 = load i32, i32* %WeightedBiprediction.addr, align 4
  %128 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %128, i32 0, i32 20
  store i32 %127, i32* %weighted_bipred_idc, align 4
  %129 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_init_qp_minus26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %129, i32 0, i32 21
  store i32 0, i32* %pic_init_qp_minus26, align 4
  %130 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_init_qs_minus26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %130, i32 0, i32 22
  store i32 0, i32* %pic_init_qs_minus26, align 4
  %131 = load i32, i32* %cb_qp_index_offset.addr, align 4
  %132 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %chroma_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %132, i32 0, i32 23
  store i32 %131, i32* %chroma_qp_index_offset, align 4
  %133 = load i32, i32* %frext_profile, align 4
  %tobool131 = icmp ne i32 %133, 0
  br i1 %tobool131, label %if.then.132, label %if.else.135

if.then.132:                                      ; preds = %cond.end.129
  %134 = load i32, i32* %cb_qp_index_offset.addr, align 4
  %135 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %cb_qp_index_offset133 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %135, i32 0, i32 24
  store i32 %134, i32* %cb_qp_index_offset133, align 4
  %136 = load i32, i32* %cr_qp_index_offset.addr, align 4
  %137 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %cr_qp_index_offset134 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %137, i32 0, i32 25
  store i32 %136, i32* %cr_qp_index_offset134, align 4
  br label %if.end.139

if.else.135:                                      ; preds = %cond.end.129
  %138 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %chroma_qp_index_offset136 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %138, i32 0, i32 23
  %139 = load i32, i32* %chroma_qp_index_offset136, align 4
  %140 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %cr_qp_index_offset137 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %140, i32 0, i32 25
  store i32 %139, i32* %cr_qp_index_offset137, align 4
  %141 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %cb_qp_index_offset138 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %141, i32 0, i32 24
  store i32 %139, i32* %cb_qp_index_offset138, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.135, %if.then.132
  %142 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LFSendParameters = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %142, i32 0, i32 102
  %143 = load i32, i32* %LFSendParameters, align 4
  %144 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %deblocking_filter_control_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %144, i32 0, i32 26
  store i32 %143, i32* %deblocking_filter_control_present_flag, align 4
  %145 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %145, i32 0, i32 24
  %146 = load i32, i32* %UseConstrainedIntraPred, align 4
  %147 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %constrained_intra_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %147, i32 0, i32 27
  store i32 %146, i32* %constrained_intra_pred_flag, align 4
  %148 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %redundant_pic_cnt_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %148, i32 0, i32 28
  store i32 0, i32* %redundant_pic_cnt_present_flag, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @FreeParameterSets() #0 {
entry:
  %0 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  call void @FreeSPS(%struct.seq_parameter_set_rbsp_t* %0)
  ret void
}

declare void @FreeSPS(%struct.seq_parameter_set_rbsp_t*) #1

; Function Attrs: nounwind uwtable
define %struct.NALU_t* @GenerateSeq_parameter_set_NALU() #0 {
entry:
  %n = alloca %struct.NALU_t*, align 8
  %RBSPlen = alloca i32, align 4
  %NALUlen = alloca i32, align 4
  %rbsp = alloca [64000 x i8], align 16
  %call = call %struct.NALU_t* (i32, ...) bitcast (%struct.NALU_t* (...)* @AllocNALU to %struct.NALU_t* (i32, ...)*)(i32 64000)
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

declare %struct.NALU_t* @AllocNALU(...) #1

; Function Attrs: nounwind uwtable
define i32 @GenerateSeq_parameter_set_rbsp(%struct.seq_parameter_set_rbsp_t* %sps, i8* %rbsp) #0 {
entry:
  %sps.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %rbsp.addr = alloca i8*, align 8
  %partition = alloca %struct.datapartition*, align 8
  %len = alloca i32, align 4
  %LenInBytes = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.seq_parameter_set_rbsp_t* %sps, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  store i8* %rbsp, i8** %rbsp.addr, align 8
  store i32 0, i32* %len, align 4
  %call = call noalias i8* @calloc(i64 1, i64 120) #2
  %0 = bitcast i8* %call to %struct.datapartition*
  store %struct.datapartition* %0, %struct.datapartition** %partition, align 8
  %cmp = icmp eq %struct.datapartition* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call noalias i8* @calloc(i64 1, i64 48) #2
  %1 = bitcast i8* %call1 to %struct.Bitstream*
  %2 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %2, i32 0, i32 0
  store %struct.Bitstream* %1, %struct.Bitstream** %bitstream, align 8
  %cmp2 = icmp eq %struct.Bitstream* %1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %3 = load i8*, i8** %rbsp.addr, align 8
  %4 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %bitstream5 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %4, i32 0, i32 0
  %5 = load %struct.Bitstream*, %struct.Bitstream** %bitstream5, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %5, i32 0, i32 9
  store i8* %3, i8** %streamBuffer, align 8
  %6 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %bitstream6 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %6, i32 0, i32 0
  %7 = load %struct.Bitstream*, %struct.Bitstream** %bitstream6, align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %7, i32 0, i32 1
  store i32 8, i32* %bits_to_go, align 4
  %8 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %profile_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %8, i32 0, i32 1
  %9 = load i32, i32* %profile_idc, align 4
  %10 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call7 = call i32 @u_v(i32 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 %9, %struct.datapartition* %10)
  %11 = load i32, i32* %len, align 4
  %add = add nsw i32 %11, %call7
  store i32 %add, i32* %len, align 4
  %12 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %constrained_set0_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %12, i32 0, i32 2
  %13 = load i32, i32* %constrained_set0_flag, align 4
  %14 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call8 = call i32 @u_1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i32 %13, %struct.datapartition* %14)
  %15 = load i32, i32* %len, align 4
  %add9 = add nsw i32 %15, %call8
  store i32 %add9, i32* %len, align 4
  %16 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %constrained_set1_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %16, i32 0, i32 3
  %17 = load i32, i32* %constrained_set1_flag, align 4
  %18 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call10 = call i32 @u_1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i32 %17, %struct.datapartition* %18)
  %19 = load i32, i32* %len, align 4
  %add11 = add nsw i32 %19, %call10
  store i32 %add11, i32* %len, align 4
  %20 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %constrained_set2_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %20, i32 0, i32 4
  %21 = load i32, i32* %constrained_set2_flag, align 4
  %22 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call12 = call i32 @u_1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i32 %21, %struct.datapartition* %22)
  %23 = load i32, i32* %len, align 4
  %add13 = add nsw i32 %23, %call12
  store i32 %add13, i32* %len, align 4
  %24 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %constrained_set3_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %24, i32 0, i32 5
  %25 = load i32, i32* %constrained_set3_flag, align 4
  %26 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call14 = call i32 @u_1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), i32 %25, %struct.datapartition* %26)
  %27 = load i32, i32* %len, align 4
  %add15 = add nsw i32 %27, %call14
  store i32 %add15, i32* %len, align 4
  %28 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call16 = call i32 @u_v(i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0), i32 0, %struct.datapartition* %28)
  %29 = load i32, i32* %len, align 4
  %add17 = add nsw i32 %29, %call16
  store i32 %add17, i32* %len, align 4
  %30 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %level_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %30, i32 0, i32 6
  %31 = load i32, i32* %level_idc, align 4
  %32 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call18 = call i32 @u_v(i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i32 %31, %struct.datapartition* %32)
  %33 = load i32, i32* %len, align 4
  %add19 = add nsw i32 %33, %call18
  store i32 %add19, i32* %len, align 4
  %34 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_parameter_set_id = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %34, i32 0, i32 7
  %35 = load i32, i32* %seq_parameter_set_id, align 4
  %36 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call20 = call i32 @ue_v(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0), i32 %35, %struct.datapartition* %36)
  %37 = load i32, i32* %len, align 4
  %add21 = add nsw i32 %37, %call20
  store i32 %add21, i32* %len, align 4
  %38 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %profile_idc22 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %38, i32 0, i32 1
  %39 = load i32, i32* %profile_idc22, align 4
  %cmp23 = icmp eq i32 %39, 100
  br i1 %cmp23, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %40 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %profile_idc24 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %40, i32 0, i32 1
  %41 = load i32, i32* %profile_idc24, align 4
  %cmp25 = icmp eq i32 %41, 110
  br i1 %cmp25, label %if.then.32, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false
  %42 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %profile_idc27 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %42, i32 0, i32 1
  %43 = load i32, i32* %profile_idc27, align 4
  %cmp28 = icmp eq i32 %43, 122
  br i1 %cmp28, label %if.then.32, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false.26
  %44 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %profile_idc30 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %44, i32 0, i32 1
  %45 = load i32, i32* %profile_idc30, align 4
  %cmp31 = icmp eq i32 %45, 144
  br i1 %cmp31, label %if.then.32, label %if.end.84

if.then.32:                                       ; preds = %lor.lhs.false.29, %lor.lhs.false.26, %lor.lhs.false, %if.end.4
  %46 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %46, i32 0, i32 8
  %47 = load i32, i32* %chroma_format_idc, align 4
  %48 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call33 = call i32 @ue_v(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0), i32 %47, %struct.datapartition* %48)
  %49 = load i32, i32* %len, align 4
  %add34 = add nsw i32 %49, %call33
  store i32 %add34, i32* %len, align 4
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %yuv_format = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 159
  %51 = load i32, i32* %yuv_format, align 4
  %cmp35 = icmp eq i32 %51, 3
  br i1 %cmp35, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %if.then.32
  %52 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %52, i32 0, i32 164
  %53 = load i32, i32* %residue_transform_flag, align 4
  %54 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call37 = call i32 @u_1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0), i32 %53, %struct.datapartition* %54)
  %55 = load i32, i32* %len, align 4
  %add38 = add nsw i32 %55, %call37
  store i32 %add38, i32* %len, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %if.then.32
  %56 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %bit_depth_luma_minus8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %56, i32 0, i32 11
  %57 = load i32, i32* %bit_depth_luma_minus8, align 4
  %58 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call40 = call i32 @ue_v(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 %57, %struct.datapartition* %58)
  %59 = load i32, i32* %len, align 4
  %add41 = add nsw i32 %59, %call40
  store i32 %add41, i32* %len, align 4
  %60 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %bit_depth_chroma_minus8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %60, i32 0, i32 12
  %61 = load i32, i32* %bit_depth_chroma_minus8, align 4
  %62 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call42 = call i32 @ue_v(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0), i32 %61, %struct.datapartition* %62)
  %63 = load i32, i32* %len, align 4
  %add43 = add nsw i32 %63, %call42
  store i32 %add43, i32* %len, align 4
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lossless_qpprime_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 160
  %65 = load i32, i32* %lossless_qpprime_flag, align 4
  %66 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call44 = call i32 @u_1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i32 0, i32 0), i32 %65, %struct.datapartition* %66)
  %67 = load i32, i32* %len, align 4
  %add45 = add nsw i32 %67, %call44
  store i32 %add45, i32* %len, align 4
  %68 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_matrix_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %68, i32 0, i32 9
  %69 = load i32, i32* %seq_scaling_matrix_present_flag, align 4
  %70 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call46 = call i32 @u_1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i32 0, i32 0), i32 %69, %struct.datapartition* %70)
  %71 = load i32, i32* %len, align 4
  %add47 = add nsw i32 %71, %call46
  store i32 %add47, i32* %len, align 4
  %72 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_matrix_present_flag48 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %72, i32 0, i32 9
  %73 = load i32, i32* %seq_scaling_matrix_present_flag48, align 4
  %tobool = icmp ne i32 %73, 0
  br i1 %tobool, label %if.then.49, label %if.end.83

if.then.49:                                       ; preds = %if.end.39
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.49
  %74 = load i32, i32* %i, align 4
  %cmp50 = icmp ult i32 %74, 8
  br i1 %cmp50, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %75 = load i32, i32* %i, align 4
  %idxprom = zext i32 %75 to i64
  %76 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_list_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %76, i32 0, i32 10
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %seq_scaling_list_present_flag, i32 0, i64 %idxprom
  %77 = load i32, i32* %arrayidx, align 4
  %78 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call51 = call i32 @u_1(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i32 0, i32 0), i32 %77, %struct.datapartition* %78)
  %79 = load i32, i32* %len, align 4
  %add52 = add nsw i32 %79, %call51
  store i32 %add52, i32* %len, align 4
  %80 = load i32, i32* %i, align 4
  %idxprom53 = zext i32 %80 to i64
  %81 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_list_present_flag54 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %81, i32 0, i32 10
  %arrayidx55 = getelementptr inbounds [8 x i32], [8 x i32]* %seq_scaling_list_present_flag54, i32 0, i64 %idxprom53
  %82 = load i32, i32* %arrayidx55, align 4
  %tobool56 = icmp ne i32 %82, 0
  br i1 %tobool56, label %if.then.57, label %if.end.82

if.then.57:                                       ; preds = %for.body
  %83 = load i32, i32* %i, align 4
  %cmp58 = icmp ult i32 %83, 6
  br i1 %cmp58, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %if.then.57
  %84 = load i32, i32* %i, align 4
  %idxprom60 = zext i32 %84 to i64
  %arrayidx61 = getelementptr inbounds [6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4input, i32 0, i64 %idxprom60
  %arraydecay = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx61, i32 0, i32 0
  %85 = load i32, i32* %i, align 4
  %idxprom62 = zext i32 %85 to i64
  %arrayidx63 = getelementptr inbounds [6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i32 0, i64 %idxprom62
  %arraydecay64 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx63, i32 0, i32 0
  %86 = load i32, i32* %i, align 4
  %idxprom65 = zext i32 %86 to i64
  %arrayidx66 = getelementptr inbounds [6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i32 0, i64 %idxprom65
  %87 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call67 = call i32 @Scaling_List(i16* %arraydecay, i16* %arraydecay64, i32 16, i16* %arrayidx66, %struct.datapartition* %87)
  %88 = load i32, i32* %len, align 4
  %add68 = add nsw i32 %88, %call67
  store i32 %add68, i32* %len, align 4
  br label %if.end.81

if.else:                                          ; preds = %if.then.57
  %89 = load i32, i32* %i, align 4
  %sub = sub i32 %89, 6
  %idxprom69 = zext i32 %sub to i64
  %arrayidx70 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* @ScalingList8x8input, i32 0, i64 %idxprom69
  %arraydecay71 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx70, i32 0, i32 0
  %90 = load i32, i32* %i, align 4
  %sub72 = sub i32 %90, 6
  %idxprom73 = zext i32 %sub72 to i64
  %arrayidx74 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* @ScalingList8x8, i32 0, i64 %idxprom73
  %arraydecay75 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx74, i32 0, i32 0
  %91 = load i32, i32* %i, align 4
  %sub76 = sub i32 %91, 6
  %idxprom77 = zext i32 %sub76 to i64
  %arrayidx78 = getelementptr inbounds [2 x i16], [2 x i16]* @UseDefaultScalingMatrix8x8Flag, i32 0, i64 %idxprom77
  %92 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call79 = call i32 @Scaling_List(i16* %arraydecay71, i16* %arraydecay75, i32 64, i16* %arrayidx78, %struct.datapartition* %92)
  %93 = load i32, i32* %len, align 4
  %add80 = add nsw i32 %93, %call79
  store i32 %add80, i32* %len, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.else, %if.then.59
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.82
  %94 = load i32, i32* %i, align 4
  %inc = add i32 %94, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.83

if.end.83:                                        ; preds = %for.end, %if.end.39
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %lor.lhs.false.29
  %95 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %log2_max_frame_num_minus4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %95, i32 0, i32 13
  %96 = load i32, i32* %log2_max_frame_num_minus4, align 4
  %97 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call85 = call i32 @ue_v(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i32 0, i32 0), i32 %96, %struct.datapartition* %97)
  %98 = load i32, i32* %len, align 4
  %add86 = add nsw i32 %98, %call85
  store i32 %add86, i32* %len, align 4
  %99 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_order_cnt_type = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %99, i32 0, i32 14
  %100 = load i32, i32* %pic_order_cnt_type, align 4
  %101 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call87 = call i32 @ue_v(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0), i32 %100, %struct.datapartition* %101)
  %102 = load i32, i32* %len, align 4
  %add88 = add nsw i32 %102, %call87
  store i32 %add88, i32* %len, align 4
  %103 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_order_cnt_type89 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %103, i32 0, i32 14
  %104 = load i32, i32* %pic_order_cnt_type89, align 4
  %cmp90 = icmp eq i32 %104, 0
  br i1 %cmp90, label %if.then.91, label %if.else.94

if.then.91:                                       ; preds = %if.end.84
  %105 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %log2_max_pic_order_cnt_lsb_minus4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %105, i32 0, i32 15
  %106 = load i32, i32* %log2_max_pic_order_cnt_lsb_minus4, align 4
  %107 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call92 = call i32 @ue_v(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i32 0, i32 0), i32 %106, %struct.datapartition* %107)
  %108 = load i32, i32* %len, align 4
  %add93 = add nsw i32 %108, %call92
  store i32 %add93, i32* %len, align 4
  br label %if.end.118

if.else.94:                                       ; preds = %if.end.84
  %109 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_order_cnt_type95 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %109, i32 0, i32 14
  %110 = load i32, i32* %pic_order_cnt_type95, align 4
  %cmp96 = icmp eq i32 %110, 1
  br i1 %cmp96, label %if.then.97, label %if.end.117

if.then.97:                                       ; preds = %if.else.94
  %111 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %delta_pic_order_always_zero_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %111, i32 0, i32 16
  %112 = load i32, i32* %delta_pic_order_always_zero_flag, align 4
  %113 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call98 = call i32 @u_1(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i32 0, i32 0), i32 %112, %struct.datapartition* %113)
  %114 = load i32, i32* %len, align 4
  %add99 = add nsw i32 %114, %call98
  store i32 %add99, i32* %len, align 4
  %115 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %offset_for_non_ref_pic = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %115, i32 0, i32 17
  %116 = load i32, i32* %offset_for_non_ref_pic, align 4
  %117 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call100 = call i32 @se_v(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i32 0, i32 0), i32 %116, %struct.datapartition* %117)
  %118 = load i32, i32* %len, align 4
  %add101 = add nsw i32 %118, %call100
  store i32 %add101, i32* %len, align 4
  %119 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %offset_for_top_to_bottom_field = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %119, i32 0, i32 18
  %120 = load i32, i32* %offset_for_top_to_bottom_field, align 4
  %121 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call102 = call i32 @se_v(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i32 0, i32 0), i32 %120, %struct.datapartition* %121)
  %122 = load i32, i32* %len, align 4
  %add103 = add nsw i32 %122, %call102
  store i32 %add103, i32* %len, align 4
  %123 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %num_ref_frames_in_pic_order_cnt_cycle = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %123, i32 0, i32 19
  %124 = load i32, i32* %num_ref_frames_in_pic_order_cnt_cycle, align 4
  %125 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call104 = call i32 @ue_v(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i32 0, i32 0), i32 %124, %struct.datapartition* %125)
  %126 = load i32, i32* %len, align 4
  %add105 = add nsw i32 %126, %call104
  store i32 %add105, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.114, %if.then.97
  %127 = load i32, i32* %i, align 4
  %128 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %num_ref_frames_in_pic_order_cnt_cycle107 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %128, i32 0, i32 19
  %129 = load i32, i32* %num_ref_frames_in_pic_order_cnt_cycle107, align 4
  %cmp108 = icmp ult i32 %127, %129
  br i1 %cmp108, label %for.body.109, label %for.end.116

for.body.109:                                     ; preds = %for.cond.106
  %130 = load i32, i32* %i, align 4
  %idxprom110 = zext i32 %130 to i64
  %131 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %offset_for_ref_frame = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %131, i32 0, i32 20
  %arrayidx111 = getelementptr inbounds [256 x i32], [256 x i32]* %offset_for_ref_frame, i32 0, i64 %idxprom110
  %132 = load i32, i32* %arrayidx111, align 4
  %133 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call112 = call i32 @se_v(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0), i32 %132, %struct.datapartition* %133)
  %134 = load i32, i32* %len, align 4
  %add113 = add nsw i32 %134, %call112
  store i32 %add113, i32* %len, align 4
  br label %for.inc.114

for.inc.114:                                      ; preds = %for.body.109
  %135 = load i32, i32* %i, align 4
  %inc115 = add i32 %135, 1
  store i32 %inc115, i32* %i, align 4
  br label %for.cond.106

for.end.116:                                      ; preds = %for.cond.106
  br label %if.end.117

if.end.117:                                       ; preds = %for.end.116, %if.else.94
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.then.91
  %136 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %num_ref_frames = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %136, i32 0, i32 21
  %137 = load i32, i32* %num_ref_frames, align 4
  %138 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call119 = call i32 @ue_v(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0), i32 %137, %struct.datapartition* %138)
  %139 = load i32, i32* %len, align 4
  %add120 = add nsw i32 %139, %call119
  store i32 %add120, i32* %len, align 4
  %140 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %gaps_in_frame_num_value_allowed_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %140, i32 0, i32 22
  %141 = load i32, i32* %gaps_in_frame_num_value_allowed_flag, align 4
  %142 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call121 = call i32 @u_1(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i32 0, i32 0), i32 %141, %struct.datapartition* %142)
  %143 = load i32, i32* %len, align 4
  %add122 = add nsw i32 %143, %call121
  store i32 %add122, i32* %len, align 4
  %144 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_width_in_mbs_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %144, i32 0, i32 23
  %145 = load i32, i32* %pic_width_in_mbs_minus1, align 4
  %146 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call123 = call i32 @ue_v(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i32 0, i32 0), i32 %145, %struct.datapartition* %146)
  %147 = load i32, i32* %len, align 4
  %add124 = add nsw i32 %147, %call123
  store i32 %add124, i32* %len, align 4
  %148 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %pic_height_in_map_units_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %148, i32 0, i32 24
  %149 = load i32, i32* %pic_height_in_map_units_minus1, align 4
  %150 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call125 = call i32 @ue_v(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0), i32 %149, %struct.datapartition* %150)
  %151 = load i32, i32* %len, align 4
  %add126 = add nsw i32 %151, %call125
  store i32 %add126, i32* %len, align 4
  %152 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %152, i32 0, i32 25
  %153 = load i32, i32* %frame_mbs_only_flag, align 4
  %154 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call127 = call i32 @u_1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i32 0, i32 0), i32 %153, %struct.datapartition* %154)
  %155 = load i32, i32* %len, align 4
  %add128 = add nsw i32 %155, %call127
  store i32 %add128, i32* %len, align 4
  %156 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_mbs_only_flag129 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %156, i32 0, i32 25
  %157 = load i32, i32* %frame_mbs_only_flag129, align 4
  %tobool130 = icmp ne i32 %157, 0
  br i1 %tobool130, label %if.end.134, label %if.then.131

if.then.131:                                      ; preds = %if.end.118
  %158 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %mb_adaptive_frame_field_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %158, i32 0, i32 26
  %159 = load i32, i32* %mb_adaptive_frame_field_flag, align 4
  %160 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call132 = call i32 @u_1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i32 0, i32 0), i32 %159, %struct.datapartition* %160)
  %161 = load i32, i32* %len, align 4
  %add133 = add nsw i32 %161, %call132
  store i32 %add133, i32* %len, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.131, %if.end.118
  %162 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %direct_8x8_inference_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %162, i32 0, i32 27
  %163 = load i32, i32* %direct_8x8_inference_flag, align 4
  %164 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call135 = call i32 @u_1(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i32 0, i32 0), i32 %163, %struct.datapartition* %164)
  %165 = load i32, i32* %len, align 4
  %add136 = add nsw i32 %165, %call135
  store i32 %add136, i32* %len, align 4
  %166 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %166, i32 0, i32 28
  %167 = load i32, i32* %frame_cropping_flag, align 4
  %168 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call137 = call i32 @u_1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i32 0, i32 0), i32 %167, %struct.datapartition* %168)
  %169 = load i32, i32* %len, align 4
  %add138 = add nsw i32 %169, %call137
  store i32 %add138, i32* %len, align 4
  %170 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_flag139 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %170, i32 0, i32 28
  %171 = load i32, i32* %frame_cropping_flag139, align 4
  %tobool140 = icmp ne i32 %171, 0
  br i1 %tobool140, label %if.then.141, label %if.end.150

if.then.141:                                      ; preds = %if.end.134
  %172 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_rect_left_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %172, i32 0, i32 29
  %173 = load i32, i32* %frame_cropping_rect_left_offset, align 4
  %174 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call142 = call i32 @ue_v(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.37, i32 0, i32 0), i32 %173, %struct.datapartition* %174)
  %175 = load i32, i32* %len, align 4
  %add143 = add nsw i32 %175, %call142
  store i32 %add143, i32* %len, align 4
  %176 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_rect_right_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %176, i32 0, i32 30
  %177 = load i32, i32* %frame_cropping_rect_right_offset, align 4
  %178 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call144 = call i32 @ue_v(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.38, i32 0, i32 0), i32 %177, %struct.datapartition* %178)
  %179 = load i32, i32* %len, align 4
  %add145 = add nsw i32 %179, %call144
  store i32 %add145, i32* %len, align 4
  %180 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_rect_top_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %180, i32 0, i32 31
  %181 = load i32, i32* %frame_cropping_rect_top_offset, align 4
  %182 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call146 = call i32 @ue_v(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i32 0, i32 0), i32 %181, %struct.datapartition* %182)
  %183 = load i32, i32* %len, align 4
  %add147 = add nsw i32 %183, %call146
  store i32 %add147, i32* %len, align 4
  %184 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %frame_cropping_rect_bottom_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %184, i32 0, i32 32
  %185 = load i32, i32* %frame_cropping_rect_bottom_offset, align 4
  %186 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call148 = call i32 @ue_v(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i32 0, i32 0), i32 %185, %struct.datapartition* %186)
  %187 = load i32, i32* %len, align 4
  %add149 = add nsw i32 %187, %call148
  store i32 %add149, i32* %len, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.141, %if.end.134
  %188 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_parameters_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %188, i32 0, i32 33
  %189 = load i32, i32* %vui_parameters_present_flag, align 4
  %190 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call151 = call i32 @u_1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.41, i32 0, i32 0), i32 %189, %struct.datapartition* %190)
  %191 = load i32, i32* %len, align 4
  %add152 = add nsw i32 %191, %call151
  store i32 %add152, i32* %len, align 4
  %192 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %vui_parameters_present_flag153 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %192, i32 0, i32 33
  %193 = load i32, i32* %vui_parameters_present_flag153, align 4
  %tobool154 = icmp ne i32 %193, 0
  br i1 %tobool154, label %if.then.155, label %if.end.158

if.then.155:                                      ; preds = %if.end.150
  %194 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call156 = call i32 @GenerateVUISequenceParameters(%struct.datapartition* %194)
  %195 = load i32, i32* %len, align 4
  %add157 = add nsw i32 %195, %call156
  store i32 %add157, i32* %len, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.155, %if.end.150
  %196 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %bitstream159 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %196, i32 0, i32 0
  %197 = load %struct.Bitstream*, %struct.Bitstream** %bitstream159, align 8
  call void @SODBtoRBSP(%struct.Bitstream* %197)
  %198 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %bitstream160 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %198, i32 0, i32 0
  %199 = load %struct.Bitstream*, %struct.Bitstream** %bitstream160, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %199, i32 0, i32 0
  %200 = load i32, i32* %byte_pos, align 4
  store i32 %200, i32* %LenInBytes, align 4
  %201 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %bitstream161 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %201, i32 0, i32 0
  %202 = load %struct.Bitstream*, %struct.Bitstream** %bitstream161, align 8
  %203 = bitcast %struct.Bitstream* %202 to i8*
  call void @free(i8* %203) #2
  %204 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %205 = bitcast %struct.datapartition* %204 to i8*
  call void @free(i8* %205) #2
  %206 = load i32, i32* %LenInBytes, align 4
  ret i32 %206
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
  %call = call %struct.NALU_t* (i32, ...) bitcast (%struct.NALU_t* (...)* @AllocNALU to %struct.NALU_t* (i32, ...)*)(i32 64000)
  store %struct.NALU_t* %call, %struct.NALU_t** %n, align 8
  store i32 0, i32* %RBSPlen, align 4
  %0 = load i32, i32* %PPS_id.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [64000 x i8], [64000 x i8]* %rbsp, i32 0, i32 0
  %call1 = call i32 @GeneratePic_parameter_set_rbsp(%struct.pic_parameter_set_rbsp_t* %arrayidx, i8* %arraydecay)
  store i32 %call1, i32* %RBSPlen, align 4
  %arraydecay2 = getelementptr inbounds [64000 x i8], [64000 x i8]* %rbsp, i32 0, i32 0
  %1 = load %struct.NALU_t*, %struct.NALU_t** %n, align 8
  %2 = load i32, i32* %RBSPlen, align 4
  %call3 = call i32 @RBSPtoNALU(i8* %arraydecay2, %struct.NALU_t* %1, i32 %2, i32 8, i32 3, i32 0, i32 1)
  store i32 %call3, i32* %NALUlen, align 4
  %3 = load %struct.NALU_t*, %struct.NALU_t** %n, align 8
  %startcodeprefix_len = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %3, i32 0, i32 0
  store i32 4, i32* %startcodeprefix_len, align 4
  %4 = load %struct.NALU_t*, %struct.NALU_t** %n, align 8
  ret %struct.NALU_t* %4
}

; Function Attrs: nounwind uwtable
define i32 @GeneratePic_parameter_set_rbsp(%struct.pic_parameter_set_rbsp_t* %pps, i8* %rbsp) #0 {
entry:
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %rbsp.addr = alloca i8*, align 8
  %partition = alloca %struct.datapartition*, align 8
  %len = alloca i32, align 4
  %LenInBytes = alloca i32, align 4
  %i = alloca i32, align 4
  %NumberBitsPerSliceGroupId = alloca i32, align 4
  %profile_idc = alloca i32, align 4
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  store i8* %rbsp, i8** %rbsp.addr, align 8
  store i32 0, i32* %len, align 4
  %call = call noalias i8* @calloc(i64 1, i64 120) #2
  %0 = bitcast i8* %call to %struct.datapartition*
  store %struct.datapartition* %0, %struct.datapartition** %partition, align 8
  %cmp = icmp eq %struct.datapartition* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call noalias i8* @calloc(i64 1, i64 48) #2
  %1 = bitcast i8* %call1 to %struct.Bitstream*
  %2 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %2, i32 0, i32 0
  store %struct.Bitstream* %1, %struct.Bitstream** %bitstream, align 8
  %cmp2 = icmp eq %struct.Bitstream* %1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %3 = load i8*, i8** %rbsp.addr, align 8
  %4 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %bitstream5 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %4, i32 0, i32 0
  %5 = load %struct.Bitstream*, %struct.Bitstream** %bitstream5, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %5, i32 0, i32 9
  store i8* %3, i8** %streamBuffer, align 8
  %6 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %bitstream6 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %6, i32 0, i32 0
  %7 = load %struct.Bitstream*, %struct.Bitstream** %bitstream6, align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %7, i32 0, i32 1
  store i32 8, i32* %bits_to_go, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_order_present_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 112
  %9 = load i32, i32* %pic_order_present_flag, align 4
  %10 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_order_present_flag7 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %10, i32 0, i32 7
  store i32 %9, i32* %pic_order_present_flag7, align 4
  %11 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_parameter_set_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %11, i32 0, i32 1
  %12 = load i32, i32* %pic_parameter_set_id, align 4
  %13 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call8 = call i32 @ue_v(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.44, i32 0, i32 0), i32 %12, %struct.datapartition* %13)
  %14 = load i32, i32* %len, align 4
  %add = add nsw i32 %14, %call8
  store i32 %add, i32* %len, align 4
  %15 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %seq_parameter_set_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %15, i32 0, i32 2
  %16 = load i32, i32* %seq_parameter_set_id, align 4
  %17 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call9 = call i32 @ue_v(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i32 0, i32 0), i32 %16, %struct.datapartition* %17)
  %18 = load i32, i32* %len, align 4
  %add10 = add nsw i32 %18, %call9
  store i32 %add10, i32* %len, align 4
  %19 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %entropy_coding_mode_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %19, i32 0, i32 3
  %20 = load i32, i32* %entropy_coding_mode_flag, align 4
  %21 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call11 = call i32 @u_1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.46, i32 0, i32 0), i32 %20, %struct.datapartition* %21)
  %22 = load i32, i32* %len, align 4
  %add12 = add nsw i32 %22, %call11
  store i32 %add12, i32* %len, align 4
  %23 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_order_present_flag13 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %23, i32 0, i32 7
  %24 = load i32, i32* %pic_order_present_flag13, align 4
  %25 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call14 = call i32 @u_1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i32 0, i32 0), i32 %24, %struct.datapartition* %25)
  %26 = load i32, i32* %len, align 4
  %add15 = add nsw i32 %26, %call14
  store i32 %add15, i32* %len, align 4
  %27 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %27, i32 0, i32 8
  %28 = load i32, i32* %num_slice_groups_minus1, align 4
  %29 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call16 = call i32 @ue_v(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.48, i32 0, i32 0), i32 %28, %struct.datapartition* %29)
  %30 = load i32, i32* %len, align 4
  %add17 = add nsw i32 %30, %call16
  store i32 %add17, i32* %len, align 4
  %31 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus118 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %31, i32 0, i32 8
  %32 = load i32, i32* %num_slice_groups_minus118, align 4
  %cmp19 = icmp ugt i32 %32, 0
  br i1 %cmp19, label %if.then.20, label %if.end.97

if.then.20:                                       ; preds = %if.end.4
  %33 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %33, i32 0, i32 9
  %34 = load i32, i32* %slice_group_map_type, align 4
  %35 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call21 = call i32 @ue_v(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i32 0, i32 0), i32 %34, %struct.datapartition* %35)
  %36 = load i32, i32* %len, align 4
  %add22 = add nsw i32 %36, %call21
  store i32 %add22, i32* %len, align 4
  %37 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type23 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %37, i32 0, i32 9
  %38 = load i32, i32* %slice_group_map_type23, align 4
  %cmp24 = icmp eq i32 %38, 0
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.then.20
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.25
  %39 = load i32, i32* %i, align 4
  %40 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus126 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %40, i32 0, i32 8
  %41 = load i32, i32* %num_slice_groups_minus126, align 4
  %cmp27 = icmp ule i32 %39, %41
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i32, i32* %i, align 4
  %idxprom = zext i32 %42 to i64
  %43 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %run_length_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %43, i32 0, i32 10
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %run_length_minus1, i32 0, i64 %idxprom
  %44 = load i32, i32* %arrayidx, align 4
  %45 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call28 = call i32 @ue_v(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.50, i32 0, i32 0), i32 %44, %struct.datapartition* %45)
  %46 = load i32, i32* %len, align 4
  %add29 = add nsw i32 %46, %call28
  store i32 %add29, i32* %len, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i32, i32* %i, align 4
  %inc = add i32 %47, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.96

if.else:                                          ; preds = %if.then.20
  %48 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type30 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %48, i32 0, i32 9
  %49 = load i32, i32* %slice_group_map_type30, align 4
  %cmp31 = icmp eq i32 %49, 2
  br i1 %cmp31, label %if.then.32, label %if.else.48

if.then.32:                                       ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.45, %if.then.32
  %50 = load i32, i32* %i, align 4
  %51 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus134 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %51, i32 0, i32 8
  %52 = load i32, i32* %num_slice_groups_minus134, align 4
  %cmp35 = icmp ult i32 %50, %52
  br i1 %cmp35, label %for.body.36, label %for.end.47

for.body.36:                                      ; preds = %for.cond.33
  %53 = load i32, i32* %i, align 4
  %idxprom37 = zext i32 %53 to i64
  %54 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %top_left = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %54, i32 0, i32 11
  %arrayidx38 = getelementptr inbounds [8 x i32], [8 x i32]* %top_left, i32 0, i64 %idxprom37
  %55 = load i32, i32* %arrayidx38, align 4
  %56 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call39 = call i32 @ue_v(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i32 0, i32 0), i32 %55, %struct.datapartition* %56)
  %57 = load i32, i32* %len, align 4
  %add40 = add nsw i32 %57, %call39
  store i32 %add40, i32* %len, align 4
  %58 = load i32, i32* %i, align 4
  %idxprom41 = zext i32 %58 to i64
  %59 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %bottom_right = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %59, i32 0, i32 12
  %arrayidx42 = getelementptr inbounds [8 x i32], [8 x i32]* %bottom_right, i32 0, i64 %idxprom41
  %60 = load i32, i32* %arrayidx42, align 4
  %61 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call43 = call i32 @ue_v(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i32 0, i32 0), i32 %60, %struct.datapartition* %61)
  %62 = load i32, i32* %len, align 4
  %add44 = add nsw i32 %62, %call43
  store i32 %add44, i32* %len, align 4
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.36
  %63 = load i32, i32* %i, align 4
  %inc46 = add i32 %63, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond.33

for.end.47:                                       ; preds = %for.cond.33
  br label %if.end.95

if.else.48:                                       ; preds = %if.else
  %64 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type49 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %64, i32 0, i32 9
  %65 = load i32, i32* %slice_group_map_type49, align 4
  %cmp50 = icmp eq i32 %65, 3
  br i1 %cmp50, label %if.then.56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.48
  %66 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type51 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %66, i32 0, i32 9
  %67 = load i32, i32* %slice_group_map_type51, align 4
  %cmp52 = icmp eq i32 %67, 4
  br i1 %cmp52, label %if.then.56, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %lor.lhs.false
  %68 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type54 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %68, i32 0, i32 9
  %69 = load i32, i32* %slice_group_map_type54, align 4
  %cmp55 = icmp eq i32 %69, 5
  br i1 %cmp55, label %if.then.56, label %if.else.61

if.then.56:                                       ; preds = %lor.lhs.false.53, %lor.lhs.false, %if.else.48
  %70 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_direction_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %70, i32 0, i32 13
  %71 = load i32, i32* %slice_group_change_direction_flag, align 4
  %72 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call57 = call i32 @u_1(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.53, i32 0, i32 0), i32 %71, %struct.datapartition* %72)
  %73 = load i32, i32* %len, align 4
  %add58 = add nsw i32 %73, %call57
  store i32 %add58, i32* %len, align 4
  %74 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_change_rate_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %74, i32 0, i32 14
  %75 = load i32, i32* %slice_group_change_rate_minus1, align 4
  %76 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call59 = call i32 @ue_v(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.54, i32 0, i32 0), i32 %75, %struct.datapartition* %76)
  %77 = load i32, i32* %len, align 4
  %add60 = add nsw i32 %77, %call59
  store i32 %add60, i32* %len, align 4
  br label %if.end.94

if.else.61:                                       ; preds = %lor.lhs.false.53
  %78 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_map_type62 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %78, i32 0, i32 9
  %79 = load i32, i32* %slice_group_map_type62, align 4
  %cmp63 = icmp eq i32 %79, 6
  br i1 %cmp63, label %if.then.64, label %if.end.93

if.then.64:                                       ; preds = %if.else.61
  %80 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus165 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %80, i32 0, i32 8
  %81 = load i32, i32* %num_slice_groups_minus165, align 4
  %cmp66 = icmp uge i32 %81, 4
  br i1 %cmp66, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %if.then.64
  store i32 3, i32* %NumberBitsPerSliceGroupId, align 4
  br label %if.end.79

if.else.68:                                       ; preds = %if.then.64
  %82 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus169 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %82, i32 0, i32 8
  %83 = load i32, i32* %num_slice_groups_minus169, align 4
  %cmp70 = icmp uge i32 %83, 2
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %if.else.68
  store i32 2, i32* %NumberBitsPerSliceGroupId, align 4
  br label %if.end.78

if.else.72:                                       ; preds = %if.else.68
  %84 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_slice_groups_minus173 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %84, i32 0, i32 8
  %85 = load i32, i32* %num_slice_groups_minus173, align 4
  %cmp74 = icmp uge i32 %85, 1
  br i1 %cmp74, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %if.else.72
  store i32 1, i32* %NumberBitsPerSliceGroupId, align 4
  br label %if.end.77

if.else.76:                                       ; preds = %if.else.72
  store i32 0, i32* %NumberBitsPerSliceGroupId, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.76, %if.then.75
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.71
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.67
  %86 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_size_in_map_units_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %86, i32 0, i32 15
  %87 = load i32, i32* %pic_size_in_map_units_minus1, align 4
  %88 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call80 = call i32 @ue_v(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.55, i32 0, i32 0), i32 %87, %struct.datapartition* %88)
  %89 = load i32, i32* %len, align 4
  %add81 = add nsw i32 %89, %call80
  store i32 %add81, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.90, %if.end.79
  %90 = load i32, i32* %i, align 4
  %91 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_size_in_map_units_minus183 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %91, i32 0, i32 15
  %92 = load i32, i32* %pic_size_in_map_units_minus183, align 4
  %cmp84 = icmp ule i32 %90, %92
  br i1 %cmp84, label %for.body.85, label %for.end.92

for.body.85:                                      ; preds = %for.cond.82
  %93 = load i32, i32* %NumberBitsPerSliceGroupId, align 4
  %94 = load i32, i32* %i, align 4
  %idxprom86 = zext i32 %94 to i64
  %95 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %95, i32 0, i32 16
  %96 = load i8*, i8** %slice_group_id, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %96, i64 %idxprom86
  %97 = load i8, i8* %arrayidx87, align 1
  %conv = zext i8 %97 to i32
  %98 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call88 = call i32 @u_v(i32 %93, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.56, i32 0, i32 0), i32 %conv, %struct.datapartition* %98)
  %99 = load i32, i32* %len, align 4
  %add89 = add nsw i32 %99, %call88
  store i32 %add89, i32* %len, align 4
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.body.85
  %100 = load i32, i32* %i, align 4
  %inc91 = add i32 %100, 1
  store i32 %inc91, i32* %i, align 4
  br label %for.cond.82

for.end.92:                                       ; preds = %for.cond.82
  br label %if.end.93

if.end.93:                                        ; preds = %for.end.92, %if.else.61
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.56
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %for.end.47
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %for.end
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.4
  %101 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_ref_idx_l0_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %101, i32 0, i32 17
  %102 = load i32, i32* %num_ref_idx_l0_active_minus1, align 4
  %103 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call98 = call i32 @ue_v(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.57, i32 0, i32 0), i32 %102, %struct.datapartition* %103)
  %104 = load i32, i32* %len, align 4
  %add99 = add nsw i32 %104, %call98
  store i32 %add99, i32* %len, align 4
  %105 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %num_ref_idx_l1_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %105, i32 0, i32 18
  %106 = load i32, i32* %num_ref_idx_l1_active_minus1, align 4
  %107 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call100 = call i32 @ue_v(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.58, i32 0, i32 0), i32 %106, %struct.datapartition* %107)
  %108 = load i32, i32* %len, align 4
  %add101 = add nsw i32 %108, %call100
  store i32 %add101, i32* %len, align 4
  %109 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %109, i32 0, i32 19
  %110 = load i32, i32* %weighted_pred_flag, align 4
  %111 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call102 = call i32 @u_1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.59, i32 0, i32 0), i32 %110, %struct.datapartition* %111)
  %112 = load i32, i32* %len, align 4
  %add103 = add nsw i32 %112, %call102
  store i32 %add103, i32* %len, align 4
  %113 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %113, i32 0, i32 20
  %114 = load i32, i32* %weighted_bipred_idc, align 4
  %115 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call104 = call i32 @u_v(i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.60, i32 0, i32 0), i32 %114, %struct.datapartition* %115)
  %116 = load i32, i32* %len, align 4
  %add105 = add nsw i32 %116, %call104
  store i32 %add105, i32* %len, align 4
  %117 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_init_qp_minus26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %117, i32 0, i32 21
  %118 = load i32, i32* %pic_init_qp_minus26, align 4
  %119 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call106 = call i32 @se_v(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.61, i32 0, i32 0), i32 %118, %struct.datapartition* %119)
  %120 = load i32, i32* %len, align 4
  %add107 = add nsw i32 %120, %call106
  store i32 %add107, i32* %len, align 4
  %121 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_init_qs_minus26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %121, i32 0, i32 22
  %122 = load i32, i32* %pic_init_qs_minus26, align 4
  %123 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call108 = call i32 @se_v(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.62, i32 0, i32 0), i32 %122, %struct.datapartition* %123)
  %124 = load i32, i32* %len, align 4
  %add109 = add nsw i32 %124, %call108
  store i32 %add109, i32* %len, align 4
  %call110 = call i32 @IdentifyProfile()
  store i32 %call110, i32* %profile_idc, align 4
  %125 = load i32, i32* %profile_idc, align 4
  %cmp111 = icmp eq i32 %125, 100
  br i1 %cmp111, label %if.then.122, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %if.end.97
  %126 = load i32, i32* %profile_idc, align 4
  %cmp114 = icmp eq i32 %126, 110
  br i1 %cmp114, label %if.then.122, label %lor.lhs.false.116

lor.lhs.false.116:                                ; preds = %lor.lhs.false.113
  %127 = load i32, i32* %profile_idc, align 4
  %cmp117 = icmp eq i32 %127, 122
  br i1 %cmp117, label %if.then.122, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %lor.lhs.false.116
  %128 = load i32, i32* %profile_idc, align 4
  %cmp120 = icmp eq i32 %128, 144
  br i1 %cmp120, label %if.then.122, label %if.else.125

if.then.122:                                      ; preds = %lor.lhs.false.119, %lor.lhs.false.116, %lor.lhs.false.113, %if.end.97
  %129 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %cb_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %129, i32 0, i32 24
  %130 = load i32, i32* %cb_qp_index_offset, align 4
  %131 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call123 = call i32 @se_v(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.63, i32 0, i32 0), i32 %130, %struct.datapartition* %131)
  %132 = load i32, i32* %len, align 4
  %add124 = add nsw i32 %132, %call123
  store i32 %add124, i32* %len, align 4
  br label %if.end.128

if.else.125:                                      ; preds = %lor.lhs.false.119
  %133 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %chroma_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %133, i32 0, i32 23
  %134 = load i32, i32* %chroma_qp_index_offset, align 4
  %135 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call126 = call i32 @se_v(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.63, i32 0, i32 0), i32 %134, %struct.datapartition* %135)
  %136 = load i32, i32* %len, align 4
  %add127 = add nsw i32 %136, %call126
  store i32 %add127, i32* %len, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.125, %if.then.122
  %137 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %deblocking_filter_control_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %137, i32 0, i32 26
  %138 = load i32, i32* %deblocking_filter_control_present_flag, align 4
  %139 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call129 = call i32 @u_1(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.64, i32 0, i32 0), i32 %138, %struct.datapartition* %139)
  %140 = load i32, i32* %len, align 4
  %add130 = add nsw i32 %140, %call129
  store i32 %add130, i32* %len, align 4
  %141 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %constrained_intra_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %141, i32 0, i32 27
  %142 = load i32, i32* %constrained_intra_pred_flag, align 4
  %143 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call131 = call i32 @u_1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.65, i32 0, i32 0), i32 %142, %struct.datapartition* %143)
  %144 = load i32, i32* %len, align 4
  %add132 = add nsw i32 %144, %call131
  store i32 %add132, i32* %len, align 4
  %145 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %redundant_pic_cnt_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %145, i32 0, i32 28
  %146 = load i32, i32* %redundant_pic_cnt_present_flag, align 4
  %147 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call133 = call i32 @u_1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.66, i32 0, i32 0), i32 %146, %struct.datapartition* %147)
  %148 = load i32, i32* %len, align 4
  %add134 = add nsw i32 %148, %call133
  store i32 %add134, i32* %len, align 4
  %149 = load i32, i32* %profile_idc, align 4
  %cmp135 = icmp eq i32 %149, 100
  br i1 %cmp135, label %if.then.146, label %lor.lhs.false.137

lor.lhs.false.137:                                ; preds = %if.end.128
  %150 = load i32, i32* %profile_idc, align 4
  %cmp138 = icmp eq i32 %150, 110
  br i1 %cmp138, label %if.then.146, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %lor.lhs.false.137
  %151 = load i32, i32* %profile_idc, align 4
  %cmp141 = icmp eq i32 %151, 122
  br i1 %cmp141, label %if.then.146, label %lor.lhs.false.143

lor.lhs.false.143:                                ; preds = %lor.lhs.false.140
  %152 = load i32, i32* %profile_idc, align 4
  %cmp144 = icmp eq i32 %152, 144
  br i1 %cmp144, label %if.then.146, label %if.end.201

if.then.146:                                      ; preds = %lor.lhs.false.143, %lor.lhs.false.140, %lor.lhs.false.137, %if.end.128
  %153 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %transform_8x8_mode_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %153, i32 0, i32 4
  %154 = load i32, i32* %transform_8x8_mode_flag, align 4
  %155 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call147 = call i32 @u_1(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.67, i32 0, i32 0), i32 %154, %struct.datapartition* %155)
  %156 = load i32, i32* %len, align 4
  %add148 = add nsw i32 %156, %call147
  store i32 %add148, i32* %len, align 4
  %157 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_scaling_matrix_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %157, i32 0, i32 5
  %158 = load i32, i32* %pic_scaling_matrix_present_flag, align 4
  %159 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call149 = call i32 @u_1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.68, i32 0, i32 0), i32 %158, %struct.datapartition* %159)
  %160 = load i32, i32* %len, align 4
  %add150 = add nsw i32 %160, %call149
  store i32 %add150, i32* %len, align 4
  %161 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_scaling_matrix_present_flag151 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %161, i32 0, i32 5
  %162 = load i32, i32* %pic_scaling_matrix_present_flag151, align 4
  %tobool = icmp ne i32 %162, 0
  br i1 %tobool, label %if.then.152, label %if.end.198

if.then.152:                                      ; preds = %if.then.146
  store i32 0, i32* %i, align 4
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc.195, %if.then.152
  %163 = load i32, i32* %i, align 4
  %164 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %transform_8x8_mode_flag154 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %164, i32 0, i32 4
  %165 = load i32, i32* %transform_8x8_mode_flag154, align 4
  %shl = shl i32 %165, 1
  %add155 = add i32 6, %shl
  %cmp156 = icmp ult i32 %163, %add155
  br i1 %cmp156, label %for.body.158, label %for.end.197

for.body.158:                                     ; preds = %for.cond.153
  %166 = load i32, i32* %i, align 4
  %idxprom159 = zext i32 %166 to i64
  %167 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_scaling_list_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %167, i32 0, i32 6
  %arrayidx160 = getelementptr inbounds [8 x i32], [8 x i32]* %pic_scaling_list_present_flag, i32 0, i64 %idxprom159
  %168 = load i32, i32* %arrayidx160, align 4
  %169 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call161 = call i32 @u_1(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.69, i32 0, i32 0), i32 %168, %struct.datapartition* %169)
  %170 = load i32, i32* %len, align 4
  %add162 = add nsw i32 %170, %call161
  store i32 %add162, i32* %len, align 4
  %171 = load i32, i32* %i, align 4
  %idxprom163 = zext i32 %171 to i64
  %172 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_scaling_list_present_flag164 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %172, i32 0, i32 6
  %arrayidx165 = getelementptr inbounds [8 x i32], [8 x i32]* %pic_scaling_list_present_flag164, i32 0, i64 %idxprom163
  %173 = load i32, i32* %arrayidx165, align 4
  %tobool166 = icmp ne i32 %173, 0
  br i1 %tobool166, label %if.then.167, label %if.end.194

if.then.167:                                      ; preds = %for.body.158
  %174 = load i32, i32* %i, align 4
  %cmp168 = icmp ult i32 %174, 6
  br i1 %cmp168, label %if.then.170, label %if.else.180

if.then.170:                                      ; preds = %if.then.167
  %175 = load i32, i32* %i, align 4
  %idxprom171 = zext i32 %175 to i64
  %arrayidx172 = getelementptr inbounds [6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4input, i32 0, i64 %idxprom171
  %arraydecay = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx172, i32 0, i32 0
  %176 = load i32, i32* %i, align 4
  %idxprom173 = zext i32 %176 to i64
  %arrayidx174 = getelementptr inbounds [6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i32 0, i64 %idxprom173
  %arraydecay175 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx174, i32 0, i32 0
  %177 = load i32, i32* %i, align 4
  %idxprom176 = zext i32 %177 to i64
  %arrayidx177 = getelementptr inbounds [6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i32 0, i64 %idxprom176
  %178 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call178 = call i32 @Scaling_List(i16* %arraydecay, i16* %arraydecay175, i32 16, i16* %arrayidx177, %struct.datapartition* %178)
  %179 = load i32, i32* %len, align 4
  %add179 = add nsw i32 %179, %call178
  store i32 %add179, i32* %len, align 4
  br label %if.end.193

if.else.180:                                      ; preds = %if.then.167
  %180 = load i32, i32* %i, align 4
  %sub = sub i32 %180, 6
  %idxprom181 = zext i32 %sub to i64
  %arrayidx182 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* @ScalingList8x8input, i32 0, i64 %idxprom181
  %arraydecay183 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx182, i32 0, i32 0
  %181 = load i32, i32* %i, align 4
  %sub184 = sub i32 %181, 6
  %idxprom185 = zext i32 %sub184 to i64
  %arrayidx186 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* @ScalingList8x8, i32 0, i64 %idxprom185
  %arraydecay187 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx186, i32 0, i32 0
  %182 = load i32, i32* %i, align 4
  %sub188 = sub i32 %182, 6
  %idxprom189 = zext i32 %sub188 to i64
  %arrayidx190 = getelementptr inbounds [2 x i16], [2 x i16]* @UseDefaultScalingMatrix8x8Flag, i32 0, i64 %idxprom189
  %183 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call191 = call i32 @Scaling_List(i16* %arraydecay183, i16* %arraydecay187, i32 64, i16* %arrayidx190, %struct.datapartition* %183)
  %184 = load i32, i32* %len, align 4
  %add192 = add nsw i32 %184, %call191
  store i32 %add192, i32* %len, align 4
  br label %if.end.193

if.end.193:                                       ; preds = %if.else.180, %if.then.170
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %for.body.158
  br label %for.inc.195

for.inc.195:                                      ; preds = %if.end.194
  %185 = load i32, i32* %i, align 4
  %inc196 = add i32 %185, 1
  store i32 %inc196, i32* %i, align 4
  br label %for.cond.153

for.end.197:                                      ; preds = %for.cond.153
  br label %if.end.198

if.end.198:                                       ; preds = %for.end.197, %if.then.146
  %186 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %cr_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %186, i32 0, i32 25
  %187 = load i32, i32* %cr_qp_index_offset, align 4
  %188 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call199 = call i32 @se_v(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.70, i32 0, i32 0), i32 %187, %struct.datapartition* %188)
  %189 = load i32, i32* %len, align 4
  %add200 = add nsw i32 %189, %call199
  store i32 %add200, i32* %len, align 4
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.198, %lor.lhs.false.143
  %190 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %bitstream202 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %190, i32 0, i32 0
  %191 = load %struct.Bitstream*, %struct.Bitstream** %bitstream202, align 8
  call void @SODBtoRBSP(%struct.Bitstream* %191)
  %192 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %bitstream203 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %192, i32 0, i32 0
  %193 = load %struct.Bitstream*, %struct.Bitstream** %bitstream203, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %193, i32 0, i32 0
  %194 = load i32, i32* %byte_pos, align 4
  store i32 %194, i32* %LenInBytes, align 4
  %195 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %bitstream204 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %195, i32 0, i32 0
  %196 = load %struct.Bitstream*, %struct.Bitstream** %bitstream204, align 8
  %197 = bitcast %struct.Bitstream* %196 to i8*
  call void @free(i8* %197) #2
  %198 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %199 = bitcast %struct.datapartition* %198 to i8*
  call void @free(i8* %199) #2
  %200 = load i32, i32* %LenInBytes, align 4
  ret i32 %200
}

declare %struct.colocated_params* @alloc_colocated(i32, i32, i32) #1

declare void @error(i8*, i32) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @Scaling_List(i16* %scalingListinput, i16* %scalingList, i32 %sizeOfScalingList, i16* %UseDefaultScalingMatrix, %struct.datapartition* %partition) #0 {
entry:
  %scalingListinput.addr = alloca i16*, align 8
  %scalingList.addr = alloca i16*, align 8
  %sizeOfScalingList.addr = alloca i32, align 4
  %UseDefaultScalingMatrix.addr = alloca i16*, align 8
  %partition.addr = alloca %struct.datapartition*, align 8
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
  store %struct.datapartition* %partition, %struct.datapartition** %partition.addr, align 8
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
  %17 = load %struct.datapartition*, %struct.datapartition** %partition.addr, align 8
  %call = call i32 @se_v(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 %16, %struct.datapartition* %17)
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

declare i32 @se_v(i8*, i32, %struct.datapartition*) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #3

declare void @no_mem_exit(i8*) #1

declare i32 @u_v(i32, i8*, i32, %struct.datapartition*) #1

declare i32 @u_1(i8*, i32, %struct.datapartition*) #1

declare i32 @ue_v(i8*, i32, %struct.datapartition*) #1

declare void @SODBtoRBSP(%struct.Bitstream*) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

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

; Function Attrs: nounwind uwtable
define internal i32 @GenerateVUISequenceParameters(%struct.datapartition* %partition) #0 {
entry:
  %partition.addr = alloca %struct.datapartition*, align 8
  %len = alloca i32, align 4
  store %struct.datapartition* %partition, %struct.datapartition** %partition.addr, align 8
  store i32 0, i32* %len, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rgb_input_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 139
  %1 = load i32, i32* %rgb_input_flag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %yuv_format = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 18
  %3 = load i32, i32* %yuv_format, align 4
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.71, i32 0, i32 0))
  %4 = load %struct.datapartition*, %struct.datapartition** %partition.addr, align 8
  %call1 = call i32 @u_1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.72, i32 0, i32 0), i32 0, %struct.datapartition* %4)
  %5 = load i32, i32* %len, align 4
  %add = add nsw i32 %5, %call1
  store i32 %add, i32* %len, align 4
  %6 = load %struct.datapartition*, %struct.datapartition** %partition.addr, align 8
  %call2 = call i32 @u_1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.73, i32 0, i32 0), i32 0, %struct.datapartition* %6)
  %7 = load i32, i32* %len, align 4
  %add3 = add nsw i32 %7, %call2
  store i32 %add3, i32* %len, align 4
  %8 = load %struct.datapartition*, %struct.datapartition** %partition.addr, align 8
  %call4 = call i32 @u_1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.74, i32 0, i32 0), i32 1, %struct.datapartition* %8)
  %9 = load i32, i32* %len, align 4
  %add5 = add nsw i32 %9, %call4
  store i32 %add5, i32* %len, align 4
  %10 = load %struct.datapartition*, %struct.datapartition** %partition.addr, align 8
  %call6 = call i32 @u_v(i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.75, i32 0, i32 0), i32 2, %struct.datapartition* %10)
  %11 = load i32, i32* %len, align 4
  %add7 = add nsw i32 %11, %call6
  store i32 %add7, i32* %len, align 4
  %12 = load %struct.datapartition*, %struct.datapartition** %partition.addr, align 8
  %call8 = call i32 @u_1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.76, i32 0, i32 0), i32 1, %struct.datapartition* %12)
  %13 = load i32, i32* %len, align 4
  %add9 = add nsw i32 %13, %call8
  store i32 %add9, i32* %len, align 4
  %14 = load %struct.datapartition*, %struct.datapartition** %partition.addr, align 8
  %call10 = call i32 @u_1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.77, i32 0, i32 0), i32 1, %struct.datapartition* %14)
  %15 = load i32, i32* %len, align 4
  %add11 = add nsw i32 %15, %call10
  store i32 %add11, i32* %len, align 4
  %16 = load %struct.datapartition*, %struct.datapartition** %partition.addr, align 8
  %call12 = call i32 @u_v(i32 8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.78, i32 0, i32 0), i32 2, %struct.datapartition* %16)
  %17 = load i32, i32* %len, align 4
  %add13 = add nsw i32 %17, %call12
  store i32 %add13, i32* %len, align 4
  %18 = load %struct.datapartition*, %struct.datapartition** %partition.addr, align 8
  %call14 = call i32 @u_v(i32 8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.79, i32 0, i32 0), i32 2, %struct.datapartition* %18)
  %19 = load i32, i32* %len, align 4
  %add15 = add nsw i32 %19, %call14
  store i32 %add15, i32* %len, align 4
  %20 = load %struct.datapartition*, %struct.datapartition** %partition.addr, align 8
  %call16 = call i32 @u_v(i32 8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.80, i32 0, i32 0), i32 0, %struct.datapartition* %20)
  %21 = load i32, i32* %len, align 4
  %add17 = add nsw i32 %21, %call16
  store i32 %add17, i32* %len, align 4
  %22 = load %struct.datapartition*, %struct.datapartition** %partition.addr, align 8
  %call18 = call i32 @u_1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.81, i32 0, i32 0), i32 0, %struct.datapartition* %22)
  %23 = load i32, i32* %len, align 4
  %add19 = add nsw i32 %23, %call18
  store i32 %add19, i32* %len, align 4
  %24 = load %struct.datapartition*, %struct.datapartition** %partition.addr, align 8
  %call20 = call i32 @u_1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.82, i32 0, i32 0), i32 0, %struct.datapartition* %24)
  %25 = load i32, i32* %len, align 4
  %add21 = add nsw i32 %25, %call20
  store i32 %add21, i32* %len, align 4
  %26 = load %struct.datapartition*, %struct.datapartition** %partition.addr, align 8
  %call22 = call i32 @u_1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.83, i32 0, i32 0), i32 0, %struct.datapartition* %26)
  %27 = load i32, i32* %len, align 4
  %add23 = add nsw i32 %27, %call22
  store i32 %add23, i32* %len, align 4
  %28 = load %struct.datapartition*, %struct.datapartition** %partition.addr, align 8
  %call24 = call i32 @u_1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.84, i32 0, i32 0), i32 0, %struct.datapartition* %28)
  %29 = load i32, i32* %len, align 4
  %add25 = add nsw i32 %29, %call24
  store i32 %add25, i32* %len, align 4
  %30 = load %struct.datapartition*, %struct.datapartition** %partition.addr, align 8
  %call26 = call i32 @u_1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.85, i32 0, i32 0), i32 0, %struct.datapartition* %30)
  %31 = load i32, i32* %len, align 4
  %add27 = add nsw i32 %31, %call26
  store i32 %add27, i32* %len, align 4
  %32 = load %struct.datapartition*, %struct.datapartition** %partition.addr, align 8
  %call28 = call i32 @u_1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.86, i32 0, i32 0), i32 0, %struct.datapartition* %32)
  %33 = load i32, i32* %len, align 4
  %add29 = add nsw i32 %33, %call28
  store i32 %add29, i32* %len, align 4
  %34 = load i32, i32* %len, align 4
  ret i32 %34

if.else:                                          ; preds = %land.lhs.true, %entry
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.87, i32 0, i32 0))
  call void @exit(i32 -1) #5
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
