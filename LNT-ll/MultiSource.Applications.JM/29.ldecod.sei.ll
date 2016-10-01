; ModuleID = './MultiSource.Applications.JM/29.ldecod.sei.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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

@UsedBits = external global i32, align 4
@.str = private unnamed_addr constant [22 x i8] c"SEI: target_frame_num\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"SEI: num_spare_pics_minus1\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"SEI: delta_spare_frame_num\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"SEI: ref_area_indicator\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"SEI: ref_mb_indicator\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"SEI: zero_run_length\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Wrong ref_area_indicator %d!\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"SEI: sub_seq_layer_num\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"SEI: sub_seq_id\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"SEI: first_ref_pic_flag\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"SEI: leading_non_ref_pic_flag\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"SEI: last_pic_flag\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"SEI: sub_seq_frame_num_flag\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"SEI: sub_seq_frame_num\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"SEI: num_sub_layers_minus1\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"SEI: accurate_statistics_flag\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"SEI: average_bit_rate\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"SEI: average_frame_rate\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"SEI: duration_flag\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"SEI: average_rate_flag\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"SEI: num_referenced_subseqs\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"SEI: ref_sub_seq_layer_num\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"SEI: ref_sub_seq_id\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"SEI: ref_sub_seq_direction\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"SEI: scene_id\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"SEI: scene_transition_type\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"SEI: pan_scan_rect_id\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"SEI: pan_scan_rect_cancel_flag\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"SEI: pan_scan_cnt_minus1\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"SEI: pan_scan_rect_left_offset\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"SEI: pan_scan_rect_right_offset\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"SEI: pan_scan_rect_top_offset\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"SEI: pan_scan_rect_bottom_offset\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"SEI: pan_scan_rect_repetition_period\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"SEI: recovery_frame_cnt\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"SEI: exact_match_flag\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"SEI: broken_link_flag\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"SEI: changing_slice_group_idc\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"SEI: original_idr_flag\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"SEI: original_frame_num\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"SEI: snapshot_id\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"SEI: progressive_refinement_id\00", align 1
@.str.42 = private unnamed_addr constant [33 x i8] c"SEI: num_refinement_steps_minus1\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"SEI: num_slice_groups_minus1\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"SEI: slice_group_id\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"SEI: pan_scan_rect_flag\00", align 1
@.str.46 = private unnamed_addr constant [44 x i8] c"SEI: film_grain_characteristics_cancel_flag\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"SEI: model_id\00", align 1
@.str.48 = private unnamed_addr constant [46 x i8] c"SEI: separate_colour_description_present_flag\00", align 1
@.str.49 = private unnamed_addr constant [38 x i8] c"SEI: film_grain_bit_depth_luma_minus8\00", align 1
@.str.50 = private unnamed_addr constant [40 x i8] c"SEI: film_grain_bit_depth_chroma_minus8\00", align 1
@.str.51 = private unnamed_addr constant [32 x i8] c"SEI: film_grain_full_range_flag\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"SEI: film_grain_colour_primaries\00", align 1
@.str.53 = private unnamed_addr constant [41 x i8] c"SEI: film_grain_transfer_characteristics\00", align 1
@.str.54 = private unnamed_addr constant [36 x i8] c"SEI: film_grain_matrix_coefficients\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"SEI: blending_mode_id\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"SEI: log2_scale_factor\00", align 1
@.str.57 = private unnamed_addr constant [29 x i8] c"SEI: comp_model_present_flag\00", align 1
@.str.58 = private unnamed_addr constant [36 x i8] c"SEI: num_intensity_intervals_minus1\00", align 1
@.str.59 = private unnamed_addr constant [29 x i8] c"SEI: num_model_values_minus1\00", align 1
@.str.60 = private unnamed_addr constant [36 x i8] c"SEI: intensity_interval_lower_bound\00", align 1
@.str.61 = private unnamed_addr constant [36 x i8] c"SEI: intensity_interval_upper_bound\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"SEI: comp_model_value\00", align 1
@.str.63 = private unnamed_addr constant [50 x i8] c"SEI: film_grain_characteristics_repetition_period\00", align 1
@.str.64 = private unnamed_addr constant [47 x i8] c"SEI: deblocking_display_preference_cancel_flag\00", align 1
@.str.65 = private unnamed_addr constant [48 x i8] c"SEI: display_prior_to_deblocking_preferred_flag\00", align 1
@.str.66 = private unnamed_addr constant [41 x i8] c"SEI: dec_frame_buffering_constraint_flag\00", align 1
@.str.67 = private unnamed_addr constant [53 x i8] c"SEI: deblocking_display_preference_repetition_period\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"SEI: field_views_flags\00", align 1
@.str.69 = private unnamed_addr constant [33 x i8] c"SEI: top_field_is_left_view_flag\00", align 1
@.str.70 = private unnamed_addr constant [37 x i8] c"SEI: current_frame_is_left_view_flag\00", align 1
@.str.71 = private unnamed_addr constant [36 x i8] c"SEI: next_frame_is_second_view_flag\00", align 1
@.str.72 = private unnamed_addr constant [35 x i8] c"SEI: left_view_self_contained_flag\00", align 1
@.str.73 = private unnamed_addr constant [36 x i8] c"SEI: right_view_self_contained_flag\00", align 1
@.str.74 = private unnamed_addr constant [26 x i8] c"SEI: seq_parameter_set_id\00", align 1
@SeqParSet = external global [32 x %struct.seq_parameter_set_rbsp_t], align 16
@.str.75 = private unnamed_addr constant [31 x i8] c"SEI: initial_cpb_removal_delay\00", align 1
@.str.76 = private unnamed_addr constant [38 x i8] c"SEI: initial_cpb_removal_delay_offset\00", align 1
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.77 = private unnamed_addr constant [53 x i8] c"Warning: no active SPS, timing SEI cannot be parsed\0A\00", align 1
@.str.78 = private unnamed_addr constant [23 x i8] c"SEI: cpb_removal_delay\00", align 1
@.str.79 = private unnamed_addr constant [22 x i8] c"SEI: dpb_output_delay\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"SEI: pic_struct\00", align 1
@.str.81 = private unnamed_addr constant [61 x i8] c"reserved picture_structure used (can't determine NumClockTs)\00", align 1
@.str.82 = private unnamed_addr constant [27 x i8] c"SEI: clock_time_stamp_flag\00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"SEI: ct_type\00", align 1
@.str.84 = private unnamed_addr constant [27 x i8] c"SEI: nuit_field_based_flag\00", align 1
@.str.85 = private unnamed_addr constant [19 x i8] c"SEI: counting_type\00", align 1
@.str.86 = private unnamed_addr constant [25 x i8] c"SEI: full_timestamp_flag\00", align 1
@.str.87 = private unnamed_addr constant [24 x i8] c"SEI: discontinuity_flag\00", align 1
@.str.88 = private unnamed_addr constant [22 x i8] c"SEI: cnt_dropped_flag\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"SEI: nframes\00", align 1
@.str.90 = private unnamed_addr constant [19 x i8] c"SEI: seconds_value\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c"SEI: minutes_value\00", align 1
@.str.92 = private unnamed_addr constant [17 x i8] c"SEI: hours_value\00", align 1
@.str.93 = private unnamed_addr constant [18 x i8] c"SEI: seconds_flag\00", align 1
@.str.94 = private unnamed_addr constant [18 x i8] c"SEI: minutes_flag\00", align 1
@.str.95 = private unnamed_addr constant [16 x i8] c"SEI: hours_flag\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"SEI: time_offset\00", align 1
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
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
@nal_startcode_follows = common global i32 (%struct.img_par*, i32)* null, align 8

; Function Attrs: nounwind uwtable
define void @InterpretSEIMessage(i8* %msg, i32 %size, %struct.img_par* %img) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  %payload_type = alloca i32, align 4
  %payload_size = alloca i32, align 4
  %offset = alloca i32, align 4
  %tmp_byte = alloca i8, align 1
  store i8* %msg, i8** %msg.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store i32 0, i32* %payload_type, align 4
  store i32 0, i32* %payload_size, align 4
  store i32 1, i32* %offset, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  store i32 0, i32* %payload_type, align 4
  %0 = load i32, i32* %offset, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %offset, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** %msg.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  store i8 %2, i8* %tmp_byte, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %3 = load i8, i8* %tmp_byte, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 255
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %payload_type, align 4
  %add = add nsw i32 %4, 255
  store i32 %add, i32* %payload_type, align 4
  %5 = load i32, i32* %offset, align 4
  %inc2 = add nsw i32 %5, 1
  store i32 %inc2, i32* %offset, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load i8*, i8** %msg.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 %idxprom3
  %7 = load i8, i8* %arrayidx4, align 1
  store i8 %7, i8* %tmp_byte, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i8, i8* %tmp_byte, align 1
  %conv5 = zext i8 %8 to i32
  %9 = load i32, i32* %payload_type, align 4
  %add6 = add nsw i32 %9, %conv5
  store i32 %add6, i32* %payload_type, align 4
  store i32 0, i32* %payload_size, align 4
  %10 = load i32, i32* %offset, align 4
  %inc7 = add nsw i32 %10, 1
  store i32 %inc7, i32* %offset, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load i8*, i8** %msg.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %11, i64 %idxprom8
  %12 = load i8, i8* %arrayidx9, align 1
  store i8 %12, i8* %tmp_byte, align 1
  br label %while.cond.10

while.cond.10:                                    ; preds = %while.body.14, %while.end
  %13 = load i8, i8* %tmp_byte, align 1
  %conv11 = zext i8 %13 to i32
  %cmp12 = icmp eq i32 %conv11, 255
  br i1 %cmp12, label %while.body.14, label %while.end.19

while.body.14:                                    ; preds = %while.cond.10
  %14 = load i32, i32* %payload_size, align 4
  %add15 = add nsw i32 %14, 255
  store i32 %add15, i32* %payload_size, align 4
  %15 = load i32, i32* %offset, align 4
  %inc16 = add nsw i32 %15, 1
  store i32 %inc16, i32* %offset, align 4
  %idxprom17 = sext i32 %15 to i64
  %16 = load i8*, i8** %msg.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %16, i64 %idxprom17
  %17 = load i8, i8* %arrayidx18, align 1
  store i8 %17, i8* %tmp_byte, align 1
  br label %while.cond.10

while.end.19:                                     ; preds = %while.cond.10
  %18 = load i8, i8* %tmp_byte, align 1
  %conv20 = zext i8 %18 to i32
  %19 = load i32, i32* %payload_size, align 4
  %add21 = add nsw i32 %19, %conv20
  store i32 %add21, i32* %payload_size, align 4
  %20 = load i32, i32* %payload_type, align 4
  switch i32 %20, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.22
    i32 2, label %sw.bb.25
    i32 3, label %sw.bb.28
    i32 4, label %sw.bb.31
    i32 5, label %sw.bb.34
    i32 6, label %sw.bb.37
    i32 7, label %sw.bb.40
    i32 8, label %sw.bb.43
    i32 9, label %sw.bb.46
    i32 10, label %sw.bb.49
    i32 11, label %sw.bb.52
    i32 12, label %sw.bb.55
    i32 13, label %sw.bb.58
    i32 14, label %sw.bb.61
    i32 15, label %sw.bb.64
    i32 16, label %sw.bb.67
    i32 17, label %sw.bb.70
    i32 18, label %sw.bb.73
    i32 19, label %sw.bb.76
    i32 20, label %sw.bb.79
    i32 21, label %sw.bb.82
  ]

sw.bb:                                            ; preds = %while.end.19
  %21 = load i8*, i8** %msg.addr, align 8
  %22 = load i32, i32* %offset, align 4
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.ext
  %23 = load i32, i32* %payload_size, align 4
  %24 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @interpret_buffering_period_info(i8* %add.ptr, i32 %23, %struct.img_par* %24)
  br label %sw.epilog

sw.bb.22:                                         ; preds = %while.end.19
  %25 = load i8*, i8** %msg.addr, align 8
  %26 = load i32, i32* %offset, align 4
  %idx.ext23 = sext i32 %26 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %25, i64 %idx.ext23
  %27 = load i32, i32* %payload_size, align 4
  %28 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @interpret_picture_timing_info(i8* %add.ptr24, i32 %27, %struct.img_par* %28)
  br label %sw.epilog

sw.bb.25:                                         ; preds = %while.end.19
  %29 = load i8*, i8** %msg.addr, align 8
  %30 = load i32, i32* %offset, align 4
  %idx.ext26 = sext i32 %30 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %29, i64 %idx.ext26
  %31 = load i32, i32* %payload_size, align 4
  %32 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @interpret_pan_scan_rect_info(i8* %add.ptr27, i32 %31, %struct.img_par* %32)
  br label %sw.epilog

sw.bb.28:                                         ; preds = %while.end.19
  %33 = load i8*, i8** %msg.addr, align 8
  %34 = load i32, i32* %offset, align 4
  %idx.ext29 = sext i32 %34 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %33, i64 %idx.ext29
  %35 = load i32, i32* %payload_size, align 4
  %36 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @interpret_filler_payload_info(i8* %add.ptr30, i32 %35, %struct.img_par* %36)
  br label %sw.epilog

sw.bb.31:                                         ; preds = %while.end.19
  %37 = load i8*, i8** %msg.addr, align 8
  %38 = load i32, i32* %offset, align 4
  %idx.ext32 = sext i32 %38 to i64
  %add.ptr33 = getelementptr inbounds i8, i8* %37, i64 %idx.ext32
  %39 = load i32, i32* %payload_size, align 4
  %40 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @interpret_user_data_registered_itu_t_t35_info(i8* %add.ptr33, i32 %39, %struct.img_par* %40)
  br label %sw.epilog

sw.bb.34:                                         ; preds = %while.end.19
  %41 = load i8*, i8** %msg.addr, align 8
  %42 = load i32, i32* %offset, align 4
  %idx.ext35 = sext i32 %42 to i64
  %add.ptr36 = getelementptr inbounds i8, i8* %41, i64 %idx.ext35
  %43 = load i32, i32* %payload_size, align 4
  %44 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @interpret_user_data_unregistered_info(i8* %add.ptr36, i32 %43, %struct.img_par* %44)
  br label %sw.epilog

sw.bb.37:                                         ; preds = %while.end.19
  %45 = load i8*, i8** %msg.addr, align 8
  %46 = load i32, i32* %offset, align 4
  %idx.ext38 = sext i32 %46 to i64
  %add.ptr39 = getelementptr inbounds i8, i8* %45, i64 %idx.ext38
  %47 = load i32, i32* %payload_size, align 4
  %48 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @interpret_recovery_point_info(i8* %add.ptr39, i32 %47, %struct.img_par* %48)
  br label %sw.epilog

sw.bb.40:                                         ; preds = %while.end.19
  %49 = load i8*, i8** %msg.addr, align 8
  %50 = load i32, i32* %offset, align 4
  %idx.ext41 = sext i32 %50 to i64
  %add.ptr42 = getelementptr inbounds i8, i8* %49, i64 %idx.ext41
  %51 = load i32, i32* %payload_size, align 4
  %52 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @interpret_dec_ref_pic_marking_repetition_info(i8* %add.ptr42, i32 %51, %struct.img_par* %52)
  br label %sw.epilog

sw.bb.43:                                         ; preds = %while.end.19
  %53 = load i8*, i8** %msg.addr, align 8
  %54 = load i32, i32* %offset, align 4
  %idx.ext44 = sext i32 %54 to i64
  %add.ptr45 = getelementptr inbounds i8, i8* %53, i64 %idx.ext44
  %55 = load i32, i32* %payload_size, align 4
  %56 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @interpret_spare_pic(i8* %add.ptr45, i32 %55, %struct.img_par* %56)
  br label %sw.epilog

sw.bb.46:                                         ; preds = %while.end.19
  %57 = load i8*, i8** %msg.addr, align 8
  %58 = load i32, i32* %offset, align 4
  %idx.ext47 = sext i32 %58 to i64
  %add.ptr48 = getelementptr inbounds i8, i8* %57, i64 %idx.ext47
  %59 = load i32, i32* %payload_size, align 4
  %60 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @interpret_scene_information(i8* %add.ptr48, i32 %59, %struct.img_par* %60)
  br label %sw.epilog

sw.bb.49:                                         ; preds = %while.end.19
  %61 = load i8*, i8** %msg.addr, align 8
  %62 = load i32, i32* %offset, align 4
  %idx.ext50 = sext i32 %62 to i64
  %add.ptr51 = getelementptr inbounds i8, i8* %61, i64 %idx.ext50
  %63 = load i32, i32* %payload_size, align 4
  %64 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @interpret_subsequence_info(i8* %add.ptr51, i32 %63, %struct.img_par* %64)
  br label %sw.epilog

sw.bb.52:                                         ; preds = %while.end.19
  %65 = load i8*, i8** %msg.addr, align 8
  %66 = load i32, i32* %offset, align 4
  %idx.ext53 = sext i32 %66 to i64
  %add.ptr54 = getelementptr inbounds i8, i8* %65, i64 %idx.ext53
  %67 = load i32, i32* %payload_size, align 4
  %68 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @interpret_subsequence_layer_characteristics_info(i8* %add.ptr54, i32 %67, %struct.img_par* %68)
  br label %sw.epilog

sw.bb.55:                                         ; preds = %while.end.19
  %69 = load i8*, i8** %msg.addr, align 8
  %70 = load i32, i32* %offset, align 4
  %idx.ext56 = sext i32 %70 to i64
  %add.ptr57 = getelementptr inbounds i8, i8* %69, i64 %idx.ext56
  %71 = load i32, i32* %payload_size, align 4
  %72 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @interpret_subsequence_characteristics_info(i8* %add.ptr57, i32 %71, %struct.img_par* %72)
  br label %sw.epilog

sw.bb.58:                                         ; preds = %while.end.19
  %73 = load i8*, i8** %msg.addr, align 8
  %74 = load i32, i32* %offset, align 4
  %idx.ext59 = sext i32 %74 to i64
  %add.ptr60 = getelementptr inbounds i8, i8* %73, i64 %idx.ext59
  %75 = load i32, i32* %payload_size, align 4
  %76 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @interpret_full_frame_freeze_info(i8* %add.ptr60, i32 %75, %struct.img_par* %76)
  br label %sw.epilog

sw.bb.61:                                         ; preds = %while.end.19
  %77 = load i8*, i8** %msg.addr, align 8
  %78 = load i32, i32* %offset, align 4
  %idx.ext62 = sext i32 %78 to i64
  %add.ptr63 = getelementptr inbounds i8, i8* %77, i64 %idx.ext62
  %79 = load i32, i32* %payload_size, align 4
  %80 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @interpret_full_frame_freeze_release_info(i8* %add.ptr63, i32 %79, %struct.img_par* %80)
  br label %sw.epilog

sw.bb.64:                                         ; preds = %while.end.19
  %81 = load i8*, i8** %msg.addr, align 8
  %82 = load i32, i32* %offset, align 4
  %idx.ext65 = sext i32 %82 to i64
  %add.ptr66 = getelementptr inbounds i8, i8* %81, i64 %idx.ext65
  %83 = load i32, i32* %payload_size, align 4
  %84 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @interpret_full_frame_snapshot_info(i8* %add.ptr66, i32 %83, %struct.img_par* %84)
  br label %sw.epilog

sw.bb.67:                                         ; preds = %while.end.19
  %85 = load i8*, i8** %msg.addr, align 8
  %86 = load i32, i32* %offset, align 4
  %idx.ext68 = sext i32 %86 to i64
  %add.ptr69 = getelementptr inbounds i8, i8* %85, i64 %idx.ext68
  %87 = load i32, i32* %payload_size, align 4
  %88 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @interpret_progressive_refinement_end_info(i8* %add.ptr69, i32 %87, %struct.img_par* %88)
  br label %sw.epilog

sw.bb.70:                                         ; preds = %while.end.19
  %89 = load i8*, i8** %msg.addr, align 8
  %90 = load i32, i32* %offset, align 4
  %idx.ext71 = sext i32 %90 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %89, i64 %idx.ext71
  %91 = load i32, i32* %payload_size, align 4
  %92 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @interpret_progressive_refinement_end_info(i8* %add.ptr72, i32 %91, %struct.img_par* %92)
  br label %sw.epilog

sw.bb.73:                                         ; preds = %while.end.19
  %93 = load i8*, i8** %msg.addr, align 8
  %94 = load i32, i32* %offset, align 4
  %idx.ext74 = sext i32 %94 to i64
  %add.ptr75 = getelementptr inbounds i8, i8* %93, i64 %idx.ext74
  %95 = load i32, i32* %payload_size, align 4
  %96 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @interpret_motion_constrained_slice_group_set_info(i8* %add.ptr75, i32 %95, %struct.img_par* %96)
  br label %sw.bb.76

sw.bb.76:                                         ; preds = %while.end.19, %sw.bb.73
  %97 = load i8*, i8** %msg.addr, align 8
  %98 = load i32, i32* %offset, align 4
  %idx.ext77 = sext i32 %98 to i64
  %add.ptr78 = getelementptr inbounds i8, i8* %97, i64 %idx.ext77
  %99 = load i32, i32* %payload_size, align 4
  %100 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @interpret_film_grain_characteristics_info(i8* %add.ptr78, i32 %99, %struct.img_par* %100)
  br label %sw.epilog

sw.bb.79:                                         ; preds = %while.end.19
  %101 = load i8*, i8** %msg.addr, align 8
  %102 = load i32, i32* %offset, align 4
  %idx.ext80 = sext i32 %102 to i64
  %add.ptr81 = getelementptr inbounds i8, i8* %101, i64 %idx.ext80
  %103 = load i32, i32* %payload_size, align 4
  %104 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @interpret_deblocking_filter_display_preference_info(i8* %add.ptr81, i32 %103, %struct.img_par* %104)
  br label %sw.epilog

sw.bb.82:                                         ; preds = %while.end.19
  %105 = load i8*, i8** %msg.addr, align 8
  %106 = load i32, i32* %offset, align 4
  %idx.ext83 = sext i32 %106 to i64
  %add.ptr84 = getelementptr inbounds i8, i8* %105, i64 %idx.ext83
  %107 = load i32, i32* %payload_size, align 4
  %108 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @interpret_stereo_video_info_info(i8* %add.ptr84, i32 %107, %struct.img_par* %108)
  br label %sw.epilog

sw.default:                                       ; preds = %while.end.19
  %109 = load i8*, i8** %msg.addr, align 8
  %110 = load i32, i32* %offset, align 4
  %idx.ext85 = sext i32 %110 to i64
  %add.ptr86 = getelementptr inbounds i8, i8* %109, i64 %idx.ext85
  %111 = load i32, i32* %payload_size, align 4
  %112 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  call void @interpret_reserved_info(i8* %add.ptr86, i32 %111, %struct.img_par* %112)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.82, %sw.bb.79, %sw.bb.76, %sw.bb.70, %sw.bb.67, %sw.bb.64, %sw.bb.61, %sw.bb.58, %sw.bb.55, %sw.bb.52, %sw.bb.49, %sw.bb.46, %sw.bb.43, %sw.bb.40, %sw.bb.37, %sw.bb.34, %sw.bb.31, %sw.bb.28, %sw.bb.25, %sw.bb.22, %sw.bb
  %113 = load i32, i32* %payload_size, align 4
  %114 = load i32, i32* %offset, align 4
  %add87 = add nsw i32 %114, %113
  store i32 %add87, i32* %offset, align 4
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  %115 = load i32, i32* %offset, align 4
  %idxprom88 = sext i32 %115 to i64
  %116 = load i8*, i8** %msg.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %116, i64 %idxprom88
  %117 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %117 to i32
  %cmp91 = icmp ne i32 %conv90, 128
  br i1 %cmp91, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @interpret_buffering_period_info(i8* %payload, i32 %size, %struct.img_par* %img) #0 {
entry:
  %payload.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  %seq_parameter_set_id = alloca i32, align 4
  %initial_cpb_removal_delay = alloca i32, align 4
  %initial_cpb_removal_delay_offset = alloca i32, align 4
  %k = alloca i32, align 4
  %buf = alloca %struct.Bitstream*, align 8
  %sps = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  store i8* %payload, i8** %payload.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  %call = call noalias i8* @malloc(i64 32) #4
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** %buf, align 8
  %1 = load i32, i32* %size.addr, align 4
  %2 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 3
  store i32 %1, i32* %bitstream_length, align 4
  %3 = load i8*, i8** %payload.addr, align 8
  %4 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 4
  store i8* %3, i8** %streamBuffer, align 8
  %5 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %frame_bitoffset = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %5, i32 0, i32 2
  store i32 0, i32* %frame_bitoffset, align 4
  store i32 0, i32* @UsedBits, align 4
  %6 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call1 = call i32 @ue_v(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.74, i32 0, i32 0), %struct.Bitstream* %6)
  store i32 %call1, i32* %seq_parameter_set_id, align 4
  %7 = load i32, i32* %seq_parameter_set_id, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [32 x %struct.seq_parameter_set_rbsp_t], [32 x %struct.seq_parameter_set_rbsp_t]* @SeqParSet, i32 0, i64 %idxprom
  store %struct.seq_parameter_set_rbsp_t* %arrayidx, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %8 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  call void @activate_sps(%struct.seq_parameter_set_rbsp_t* %8)
  %9 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %vui_parameters_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %9, i32 0, i32 37
  %10 = load i32, i32* %vui_parameters_present_flag, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end.37

if.then:                                          ; preds = %entry
  %11 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %vui_seq_parameters = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %11, i32 0, i32 38
  %nal_hrd_parameters_present_flag = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters, i32 0, i32 20
  %12 = load i32, i32* %nal_hrd_parameters_present_flag, align 4
  %tobool2 = icmp ne i32 %12, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %13 = load i32, i32* %k, align 4
  %14 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %vui_seq_parameters4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %14, i32 0, i32 38
  %nal_hrd_parameters = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters4, i32 0, i32 21
  %cpb_cnt_minus1 = getelementptr inbounds %struct.hrd_parameters_t, %struct.hrd_parameters_t* %nal_hrd_parameters, i32 0, i32 0
  %15 = load i32, i32* %cpb_cnt_minus1, align 4
  %add = add i32 %15, 1
  %cmp = icmp ult i32 %13, %add
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %vui_seq_parameters5 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %16, i32 0, i32 38
  %nal_hrd_parameters6 = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters5, i32 0, i32 21
  %initial_cpb_removal_delay_length_minus1 = getelementptr inbounds %struct.hrd_parameters_t, %struct.hrd_parameters_t* %nal_hrd_parameters6, i32 0, i32 6
  %17 = load i32, i32* %initial_cpb_removal_delay_length_minus1, align 4
  %add7 = add i32 %17, 1
  %18 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call8 = call i32 @u_v(i32 %add7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.75, i32 0, i32 0), %struct.Bitstream* %18)
  store i32 %call8, i32* %initial_cpb_removal_delay, align 4
  %19 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %vui_seq_parameters9 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %19, i32 0, i32 38
  %nal_hrd_parameters10 = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters9, i32 0, i32 21
  %initial_cpb_removal_delay_length_minus111 = getelementptr inbounds %struct.hrd_parameters_t, %struct.hrd_parameters_t* %nal_hrd_parameters10, i32 0, i32 6
  %20 = load i32, i32* %initial_cpb_removal_delay_length_minus111, align 4
  %add12 = add i32 %20, 1
  %21 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call13 = call i32 @u_v(i32 %add12, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.76, i32 0, i32 0), %struct.Bitstream* %21)
  store i32 %call13, i32* %initial_cpb_removal_delay_offset, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %k, align 4
  %inc = add i32 %22, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %23 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %vui_seq_parameters14 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %23, i32 0, i32 38
  %vcl_hrd_parameters_present_flag = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters14, i32 0, i32 22
  %24 = load i32, i32* %vcl_hrd_parameters_present_flag, align 4
  %tobool15 = icmp ne i32 %24, 0
  br i1 %tobool15, label %if.then.16, label %if.end.36

if.then.16:                                       ; preds = %if.end
  store i32 0, i32* %k, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.33, %if.then.16
  %25 = load i32, i32* %k, align 4
  %26 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %vui_seq_parameters18 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %26, i32 0, i32 38
  %vcl_hrd_parameters = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters18, i32 0, i32 23
  %cpb_cnt_minus119 = getelementptr inbounds %struct.hrd_parameters_t, %struct.hrd_parameters_t* %vcl_hrd_parameters, i32 0, i32 0
  %27 = load i32, i32* %cpb_cnt_minus119, align 4
  %add20 = add i32 %27, 1
  %cmp21 = icmp ult i32 %25, %add20
  br i1 %cmp21, label %for.body.22, label %for.end.35

for.body.22:                                      ; preds = %for.cond.17
  %28 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %vui_seq_parameters23 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %28, i32 0, i32 38
  %vcl_hrd_parameters24 = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters23, i32 0, i32 23
  %initial_cpb_removal_delay_length_minus125 = getelementptr inbounds %struct.hrd_parameters_t, %struct.hrd_parameters_t* %vcl_hrd_parameters24, i32 0, i32 6
  %29 = load i32, i32* %initial_cpb_removal_delay_length_minus125, align 4
  %add26 = add i32 %29, 1
  %30 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call27 = call i32 @u_v(i32 %add26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.75, i32 0, i32 0), %struct.Bitstream* %30)
  store i32 %call27, i32* %initial_cpb_removal_delay, align 4
  %31 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps, align 8
  %vui_seq_parameters28 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %31, i32 0, i32 38
  %vcl_hrd_parameters29 = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters28, i32 0, i32 23
  %initial_cpb_removal_delay_length_minus130 = getelementptr inbounds %struct.hrd_parameters_t, %struct.hrd_parameters_t* %vcl_hrd_parameters29, i32 0, i32 6
  %32 = load i32, i32* %initial_cpb_removal_delay_length_minus130, align 4
  %add31 = add i32 %32, 1
  %33 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call32 = call i32 @u_v(i32 %add31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.76, i32 0, i32 0), %struct.Bitstream* %33)
  store i32 %call32, i32* %initial_cpb_removal_delay_offset, align 4
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.22
  %34 = load i32, i32* %k, align 4
  %inc34 = add i32 %34, 1
  store i32 %inc34, i32* %k, align 4
  br label %for.cond.17

for.end.35:                                       ; preds = %for.cond.17
  br label %if.end.36

if.end.36:                                        ; preds = %for.end.35, %if.end
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %entry
  %35 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %36 = bitcast %struct.Bitstream* %35 to i8*
  call void @free(i8* %36) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @interpret_picture_timing_info(i8* %payload, i32 %size, %struct.img_par* %img) #0 {
entry:
  %payload.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  %cpb_removal_delay = alloca i32, align 4
  %dpb_output_delay = alloca i32, align 4
  %picture_structure_present_flag = alloca i32, align 4
  %picture_structure = alloca i32, align 4
  %clock_time_stamp_flag = alloca i32, align 4
  %ct_type = alloca i32, align 4
  %nuit_field_based_flag = alloca i32, align 4
  %counting_type = alloca i32, align 4
  %full_timestamp_flag = alloca i32, align 4
  %discontinuity_flag = alloca i32, align 4
  %cnt_dropped_flag = alloca i32, align 4
  %nframes = alloca i32, align 4
  %seconds_value = alloca i32, align 4
  %minutes_value = alloca i32, align 4
  %hours_value = alloca i32, align 4
  %seconds_flag = alloca i32, align 4
  %minutes_flag = alloca i32, align 4
  %hours_flag = alloca i32, align 4
  %time_offset = alloca i32, align 4
  %NumClockTs = alloca i32, align 4
  %i = alloca i32, align 4
  %cpb_removal_len = alloca i32, align 4
  %dpb_output_len = alloca i32, align 4
  %CpbDpbDelaysPresentFlag = alloca i32, align 4
  %buf = alloca %struct.Bitstream*, align 8
  %time_offset_length = alloca i32, align 4
  store i8* %payload, i8** %payload.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store i32 0, i32* %NumClockTs, align 4
  store i32 24, i32* %cpb_removal_len, align 4
  store i32 24, i32* %dpb_output_len, align 4
  %0 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %cmp = icmp eq %struct.seq_parameter_set_rbsp_t* null, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.77, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call noalias i8* @malloc(i64 32) #4
  %2 = bitcast i8* %call1 to %struct.Bitstream*
  store %struct.Bitstream* %2, %struct.Bitstream** %buf, align 8
  %3 = load i32, i32* %size.addr, align 4
  %4 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 3
  store i32 %3, i32* %bitstream_length, align 4
  %5 = load i8*, i8** %payload.addr, align 8
  %6 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %6, i32 0, i32 4
  store i8* %5, i8** %streamBuffer, align 8
  %7 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %frame_bitoffset = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %7, i32 0, i32 2
  store i32 0, i32* %frame_bitoffset, align 4
  store i32 0, i32* @UsedBits, align 4
  %8 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %vui_parameters_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %8, i32 0, i32 37
  %9 = load i32, i32* %vui_parameters_present_flag, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %10 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %vui_seq_parameters = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %10, i32 0, i32 38
  %nal_hrd_parameters_present_flag = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters, i32 0, i32 20
  %11 = load i32, i32* %nal_hrd_parameters_present_flag, align 4
  %cmp2 = icmp ne i32 %11, 0
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %12 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %vui_seq_parameters3 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %12, i32 0, i32 38
  %vcl_hrd_parameters_present_flag = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters3, i32 0, i32 22
  %13 = load i32, i32* %vcl_hrd_parameters_present_flag, align 4
  %cmp4 = icmp ne i32 %13, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %14 = phi i1 [ true, %land.rhs ], [ %cmp4, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %if.end
  %15 = phi i1 [ false, %if.end ], [ %14, %lor.end ]
  %land.ext = zext i1 %15 to i32
  store i32 %land.ext, i32* %CpbDpbDelaysPresentFlag, align 4
  %16 = load i32, i32* %CpbDpbDelaysPresentFlag, align 4
  %tobool5 = icmp ne i32 %16, 0
  br i1 %tobool5, label %if.then.6, label %if.end.42

if.then.6:                                        ; preds = %land.end
  %17 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %vui_parameters_present_flag7 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %17, i32 0, i32 37
  %18 = load i32, i32* %vui_parameters_present_flag7, align 4
  %tobool8 = icmp ne i32 %18, 0
  br i1 %tobool8, label %if.then.9, label %if.end.31

if.then.9:                                        ; preds = %if.then.6
  %19 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %vui_seq_parameters10 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %19, i32 0, i32 38
  %nal_hrd_parameters_present_flag11 = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters10, i32 0, i32 20
  %20 = load i32, i32* %nal_hrd_parameters_present_flag11, align 4
  %tobool12 = icmp ne i32 %20, 0
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.9
  %21 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %vui_seq_parameters14 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %21, i32 0, i32 38
  %nal_hrd_parameters = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters14, i32 0, i32 21
  %cpb_removal_delay_length_minus1 = getelementptr inbounds %struct.hrd_parameters_t, %struct.hrd_parameters_t* %nal_hrd_parameters, i32 0, i32 7
  %22 = load i32, i32* %cpb_removal_delay_length_minus1, align 4
  %add = add i32 %22, 1
  store i32 %add, i32* %cpb_removal_len, align 4
  %23 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %vui_seq_parameters15 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %23, i32 0, i32 38
  %nal_hrd_parameters16 = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters15, i32 0, i32 21
  %dpb_output_delay_length_minus1 = getelementptr inbounds %struct.hrd_parameters_t, %struct.hrd_parameters_t* %nal_hrd_parameters16, i32 0, i32 8
  %24 = load i32, i32* %dpb_output_delay_length_minus1, align 4
  %add17 = add i32 %24, 1
  store i32 %add17, i32* %dpb_output_len, align 4
  br label %if.end.30

if.else:                                          ; preds = %if.then.9
  %25 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %vui_seq_parameters18 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %25, i32 0, i32 38
  %vcl_hrd_parameters_present_flag19 = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters18, i32 0, i32 22
  %26 = load i32, i32* %vcl_hrd_parameters_present_flag19, align 4
  %tobool20 = icmp ne i32 %26, 0
  br i1 %tobool20, label %if.then.21, label %if.end.29

if.then.21:                                       ; preds = %if.else
  %27 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %vui_seq_parameters22 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %27, i32 0, i32 38
  %vcl_hrd_parameters = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters22, i32 0, i32 23
  %cpb_removal_delay_length_minus123 = getelementptr inbounds %struct.hrd_parameters_t, %struct.hrd_parameters_t* %vcl_hrd_parameters, i32 0, i32 7
  %28 = load i32, i32* %cpb_removal_delay_length_minus123, align 4
  %add24 = add i32 %28, 1
  store i32 %add24, i32* %cpb_removal_len, align 4
  %29 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %vui_seq_parameters25 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %29, i32 0, i32 38
  %vcl_hrd_parameters26 = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters25, i32 0, i32 23
  %dpb_output_delay_length_minus127 = getelementptr inbounds %struct.hrd_parameters_t, %struct.hrd_parameters_t* %vcl_hrd_parameters26, i32 0, i32 8
  %30 = load i32, i32* %dpb_output_delay_length_minus127, align 4
  %add28 = add i32 %30, 1
  store i32 %add28, i32* %dpb_output_len, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.21, %if.else
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.13
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.6
  %31 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %vui_seq_parameters32 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %31, i32 0, i32 38
  %nal_hrd_parameters_present_flag33 = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters32, i32 0, i32 20
  %32 = load i32, i32* %nal_hrd_parameters_present_flag33, align 4
  %tobool34 = icmp ne i32 %32, 0
  br i1 %tobool34, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.31
  %33 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %vui_seq_parameters35 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %33, i32 0, i32 38
  %vcl_hrd_parameters_present_flag36 = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters35, i32 0, i32 22
  %34 = load i32, i32* %vcl_hrd_parameters_present_flag36, align 4
  %tobool37 = icmp ne i32 %34, 0
  br i1 %tobool37, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %lor.lhs.false, %if.end.31
  %35 = load i32, i32* %cpb_removal_len, align 4
  %36 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call39 = call i32 @u_v(i32 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.78, i32 0, i32 0), %struct.Bitstream* %36)
  store i32 %call39, i32* %cpb_removal_delay, align 4
  %37 = load i32, i32* %dpb_output_len, align 4
  %38 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call40 = call i32 @u_v(i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.79, i32 0, i32 0), %struct.Bitstream* %38)
  store i32 %call40, i32* %dpb_output_delay, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %lor.lhs.false
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %land.end
  %39 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %vui_parameters_present_flag43 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %39, i32 0, i32 37
  %40 = load i32, i32* %vui_parameters_present_flag43, align 4
  %tobool44 = icmp ne i32 %40, 0
  br i1 %tobool44, label %if.else.46, label %if.then.45

if.then.45:                                       ; preds = %if.end.42
  store i32 0, i32* %picture_structure_present_flag, align 4
  br label %if.end.48

if.else.46:                                       ; preds = %if.end.42
  %41 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %vui_seq_parameters47 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %41, i32 0, i32 38
  %pic_struct_present_flag = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters47, i32 0, i32 25
  %42 = load i32, i32* %pic_struct_present_flag, align 4
  store i32 %42, i32* %picture_structure_present_flag, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.46, %if.then.45
  %43 = load i32, i32* %picture_structure_present_flag, align 4
  %tobool49 = icmp ne i32 %43, 0
  br i1 %tobool49, label %if.then.50, label %if.end.111

if.then.50:                                       ; preds = %if.end.48
  %44 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call51 = call i32 @u_v(i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.80, i32 0, i32 0), %struct.Bitstream* %44)
  store i32 %call51, i32* %picture_structure, align 4
  %45 = load i32, i32* %picture_structure, align 4
  switch i32 %45, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb.52
    i32 4, label %sw.bb.52
    i32 7, label %sw.bb.52
    i32 5, label %sw.bb.53
    i32 6, label %sw.bb.53
    i32 8, label %sw.bb.53
  ]

sw.bb:                                            ; preds = %if.then.50, %if.then.50, %if.then.50
  store i32 1, i32* %NumClockTs, align 4
  br label %sw.epilog

sw.bb.52:                                         ; preds = %if.then.50, %if.then.50, %if.then.50
  store i32 2, i32* %NumClockTs, align 4
  br label %sw.epilog

sw.bb.53:                                         ; preds = %if.then.50, %if.then.50, %if.then.50
  store i32 3, i32* %NumClockTs, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.50
  call void @error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.81, i32 0, i32 0), i32 500)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.53, %sw.bb.52, %sw.bb
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* %NumClockTs, align 4
  %cmp54 = icmp slt i32 %46, %47
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call55 = call i32 @u_1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i32 0, i32 0), %struct.Bitstream* %48)
  store i32 %call55, i32* %clock_time_stamp_flag, align 4
  %49 = load i32, i32* %clock_time_stamp_flag, align 4
  %tobool56 = icmp ne i32 %49, 0
  br i1 %tobool56, label %if.then.57, label %if.end.110

if.then.57:                                       ; preds = %for.body
  %50 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call58 = call i32 @u_v(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i32 0, i32 0), %struct.Bitstream* %50)
  store i32 %call58, i32* %ct_type, align 4
  %51 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call59 = call i32 @u_1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.84, i32 0, i32 0), %struct.Bitstream* %51)
  store i32 %call59, i32* %nuit_field_based_flag, align 4
  %52 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call60 = call i32 @u_v(i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.85, i32 0, i32 0), %struct.Bitstream* %52)
  store i32 %call60, i32* %counting_type, align 4
  %53 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call61 = call i32 @u_1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.86, i32 0, i32 0), %struct.Bitstream* %53)
  store i32 %call61, i32* %full_timestamp_flag, align 4
  %54 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call62 = call i32 @u_1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.87, i32 0, i32 0), %struct.Bitstream* %54)
  store i32 %call62, i32* %discontinuity_flag, align 4
  %55 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call63 = call i32 @u_1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.88, i32 0, i32 0), %struct.Bitstream* %55)
  store i32 %call63, i32* %cnt_dropped_flag, align 4
  %56 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call64 = call i32 @u_v(i32 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.89, i32 0, i32 0), %struct.Bitstream* %56)
  store i32 %call64, i32* %nframes, align 4
  %57 = load i32, i32* %full_timestamp_flag, align 4
  %tobool65 = icmp ne i32 %57, 0
  br i1 %tobool65, label %if.then.66, label %if.else.70

if.then.66:                                       ; preds = %if.then.57
  %58 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call67 = call i32 @u_v(i32 6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.90, i32 0, i32 0), %struct.Bitstream* %58)
  store i32 %call67, i32* %seconds_value, align 4
  %59 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call68 = call i32 @u_v(i32 6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.91, i32 0, i32 0), %struct.Bitstream* %59)
  store i32 %call68, i32* %minutes_value, align 4
  %60 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call69 = call i32 @u_v(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.92, i32 0, i32 0), %struct.Bitstream* %60)
  store i32 %call69, i32* %hours_value, align 4
  br label %if.end.86

if.else.70:                                       ; preds = %if.then.57
  %61 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call71 = call i32 @u_1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.93, i32 0, i32 0), %struct.Bitstream* %61)
  store i32 %call71, i32* %seconds_flag, align 4
  %62 = load i32, i32* %seconds_flag, align 4
  %tobool72 = icmp ne i32 %62, 0
  br i1 %tobool72, label %if.then.73, label %if.end.85

if.then.73:                                       ; preds = %if.else.70
  %63 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call74 = call i32 @u_v(i32 6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.90, i32 0, i32 0), %struct.Bitstream* %63)
  store i32 %call74, i32* %seconds_value, align 4
  %64 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call75 = call i32 @u_1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.94, i32 0, i32 0), %struct.Bitstream* %64)
  store i32 %call75, i32* %minutes_flag, align 4
  %65 = load i32, i32* %minutes_flag, align 4
  %tobool76 = icmp ne i32 %65, 0
  br i1 %tobool76, label %if.then.77, label %if.end.84

if.then.77:                                       ; preds = %if.then.73
  %66 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call78 = call i32 @u_v(i32 6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.91, i32 0, i32 0), %struct.Bitstream* %66)
  store i32 %call78, i32* %minutes_value, align 4
  %67 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call79 = call i32 @u_1(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.95, i32 0, i32 0), %struct.Bitstream* %67)
  store i32 %call79, i32* %hours_flag, align 4
  %68 = load i32, i32* %hours_flag, align 4
  %tobool80 = icmp ne i32 %68, 0
  br i1 %tobool80, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.then.77
  %69 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call82 = call i32 @u_v(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.92, i32 0, i32 0), %struct.Bitstream* %69)
  store i32 %call82, i32* %hours_value, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %if.then.77
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.73
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.else.70
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.66
  %70 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %vui_seq_parameters87 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %70, i32 0, i32 38
  %vcl_hrd_parameters_present_flag88 = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters87, i32 0, i32 22
  %71 = load i32, i32* %vcl_hrd_parameters_present_flag88, align 4
  %tobool89 = icmp ne i32 %71, 0
  br i1 %tobool89, label %if.then.90, label %if.else.94

if.then.90:                                       ; preds = %if.end.86
  %72 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %vui_seq_parameters91 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %72, i32 0, i32 38
  %vcl_hrd_parameters92 = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters91, i32 0, i32 23
  %time_offset_length93 = getelementptr inbounds %struct.hrd_parameters_t, %struct.hrd_parameters_t* %vcl_hrd_parameters92, i32 0, i32 9
  %73 = load i32, i32* %time_offset_length93, align 4
  store i32 %73, i32* %time_offset_length, align 4
  br label %if.end.104

if.else.94:                                       ; preds = %if.end.86
  %74 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %vui_seq_parameters95 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %74, i32 0, i32 38
  %nal_hrd_parameters_present_flag96 = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters95, i32 0, i32 20
  %75 = load i32, i32* %nal_hrd_parameters_present_flag96, align 4
  %tobool97 = icmp ne i32 %75, 0
  br i1 %tobool97, label %if.then.98, label %if.else.102

if.then.98:                                       ; preds = %if.else.94
  %76 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %vui_seq_parameters99 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %76, i32 0, i32 38
  %nal_hrd_parameters100 = getelementptr inbounds %struct.vui_seq_parameters_t, %struct.vui_seq_parameters_t* %vui_seq_parameters99, i32 0, i32 21
  %time_offset_length101 = getelementptr inbounds %struct.hrd_parameters_t, %struct.hrd_parameters_t* %nal_hrd_parameters100, i32 0, i32 9
  %77 = load i32, i32* %time_offset_length101, align 4
  store i32 %77, i32* %time_offset_length, align 4
  br label %if.end.103

if.else.102:                                      ; preds = %if.else.94
  store i32 24, i32* %time_offset_length, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.102, %if.then.98
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.then.90
  %78 = load i32, i32* %time_offset_length, align 4
  %tobool105 = icmp ne i32 %78, 0
  br i1 %tobool105, label %if.then.106, label %if.else.108

if.then.106:                                      ; preds = %if.end.104
  %79 = load i32, i32* %time_offset_length, align 4
  %80 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call107 = call i32 @u_v(i32 %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.96, i32 0, i32 0), %struct.Bitstream* %80)
  store i32 %call107, i32* %time_offset, align 4
  br label %if.end.109

if.else.108:                                      ; preds = %if.end.104
  store i32 0, i32* %time_offset, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.108, %if.then.106
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.110
  %81 = load i32, i32* %i, align 4
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.111

if.end.111:                                       ; preds = %for.end, %if.end.48
  %82 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %83 = bitcast %struct.Bitstream* %82 to i8*
  call void @free(i8* %83) #4
  br label %return

return:                                           ; preds = %if.end.111, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @interpret_pan_scan_rect_info(i8* %payload, i32 %size, %struct.img_par* %img) #0 {
entry:
  %payload.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  %pan_scan_rect_cancel_flag = alloca i32, align 4
  %pan_scan_cnt_minus1 = alloca i32, align 4
  %i = alloca i32, align 4
  %pan_scan_rect_repetition_period = alloca i32, align 4
  %pan_scan_rect_id = alloca i32, align 4
  %pan_scan_rect_left_offset = alloca i32, align 4
  %pan_scan_rect_right_offset = alloca i32, align 4
  %pan_scan_rect_top_offset = alloca i32, align 4
  %pan_scan_rect_bottom_offset = alloca i32, align 4
  %buf = alloca %struct.Bitstream*, align 8
  store i8* %payload, i8** %payload.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  %call = call noalias i8* @malloc(i64 32) #4
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** %buf, align 8
  %1 = load i32, i32* %size.addr, align 4
  %2 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 3
  store i32 %1, i32* %bitstream_length, align 4
  %3 = load i8*, i8** %payload.addr, align 8
  %4 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 4
  store i8* %3, i8** %streamBuffer, align 8
  %5 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %frame_bitoffset = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %5, i32 0, i32 2
  store i32 0, i32* %frame_bitoffset, align 4
  store i32 0, i32* @UsedBits, align 4
  %6 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call1 = call i32 @ue_v(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0), %struct.Bitstream* %6)
  store i32 %call1, i32* %pan_scan_rect_id, align 4
  %7 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call2 = call i32 @u_1(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i32 0, i32 0), %struct.Bitstream* %7)
  store i32 %call2, i32* %pan_scan_rect_cancel_flag, align 4
  %8 = load i32, i32* %pan_scan_rect_cancel_flag, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call3 = call i32 @ue_v(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0), %struct.Bitstream* %9)
  store i32 %call3, i32* %pan_scan_cnt_minus1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %pan_scan_cnt_minus1, align 4
  %cmp = icmp sle i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call4 = call i32 @se_v(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i32 0, i32 0), %struct.Bitstream* %12)
  store i32 %call4, i32* %pan_scan_rect_left_offset, align 4
  %13 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call5 = call i32 @se_v(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i32 0, i32 0), %struct.Bitstream* %13)
  store i32 %call5, i32* %pan_scan_rect_right_offset, align 4
  %14 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call6 = call i32 @se_v(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i32 0, i32 0), %struct.Bitstream* %14)
  store i32 %call6, i32* %pan_scan_rect_top_offset, align 4
  %15 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call7 = call i32 @se_v(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i32 0, i32 0), %struct.Bitstream* %15)
  store i32 %call7, i32* %pan_scan_rect_bottom_offset, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call8 = call i32 @ue_v(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i32 0, i32 0), %struct.Bitstream* %17)
  store i32 %call8, i32* %pan_scan_rect_repetition_period, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %18 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %19 = bitcast %struct.Bitstream* %18 to i8*
  call void @free(i8* %19) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @interpret_filler_payload_info(i8* %payload, i32 %size, %struct.img_par* %img) #0 {
entry:
  %payload.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  %payload_cnt = alloca i32, align 4
  store i8* %payload, i8** %payload.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store i32 0, i32* %payload_cnt, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %payload_cnt, align 4
  %1 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %payload_cnt, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %payload.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 255
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load i32, i32* %payload_cnt, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %payload_cnt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @interpret_user_data_registered_itu_t_t35_info(i8* %payload, i32 %size, %struct.img_par* %img) #0 {
entry:
  %payload.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  %offset = alloca i32, align 4
  %itu_t_t35_country_code = alloca i8, align 1
  %itu_t_t35_country_code_extension_byte = alloca i8, align 1
  %payload_byte = alloca i8, align 1
  store i8* %payload, i8** %payload.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store i32 0, i32* %offset, align 4
  %0 = load i32, i32* %offset, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** %payload.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  store i8 %2, i8* %itu_t_t35_country_code, align 1
  %3 = load i32, i32* %offset, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %offset, align 4
  %4 = load i8, i8* %itu_t_t35_country_code, align 1
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %offset, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load i8*, i8** %payload.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 %idxprom2
  %7 = load i8, i8* %arrayidx3, align 1
  store i8 %7, i8* %itu_t_t35_country_code_extension_byte, align 1
  %8 = load i32, i32* %offset, align 4
  %inc4 = add nsw i32 %8, 1
  store i32 %inc4, i32* %offset, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %9 = load i32, i32* %offset, align 4
  %10 = load i32, i32* %size.addr, align 4
  %cmp5 = icmp slt i32 %9, %10
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %offset, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load i8*, i8** %payload.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %idxprom7
  %13 = load i8, i8* %arrayidx8, align 1
  store i8 %13, i8* %payload_byte, align 1
  %14 = load i32, i32* %offset, align 4
  %inc9 = add nsw i32 %14, 1
  store i32 %inc9, i32* %offset, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @interpret_user_data_unregistered_info(i8* %payload, i32 %size, %struct.img_par* %img) #0 {
entry:
  %payload.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  %offset = alloca i32, align 4
  %payload_byte = alloca i8, align 1
  store i8* %payload, i8** %payload.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store i32 0, i32* %offset, align 4
  store i32 0, i32* %offset, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %offset, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, i32* %offset, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %offset, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %2 = load i32, i32* %offset, align 4
  %3 = load i32, i32* %size.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %offset, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** %payload.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  store i8 %6, i8* %payload_byte, align 1
  %7 = load i32, i32* %offset, align 4
  %inc2 = add nsw i32 %7, 1
  store i32 %inc2, i32* %offset, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @interpret_recovery_point_info(i8* %payload, i32 %size, %struct.img_par* %img) #0 {
entry:
  %payload.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  %recovery_frame_cnt = alloca i32, align 4
  %exact_match_flag = alloca i32, align 4
  %broken_link_flag = alloca i32, align 4
  %changing_slice_group_idc = alloca i32, align 4
  %buf = alloca %struct.Bitstream*, align 8
  store i8* %payload, i8** %payload.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  %call = call noalias i8* @malloc(i64 32) #4
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** %buf, align 8
  %1 = load i32, i32* %size.addr, align 4
  %2 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 3
  store i32 %1, i32* %bitstream_length, align 4
  %3 = load i8*, i8** %payload.addr, align 8
  %4 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 4
  store i8* %3, i8** %streamBuffer, align 8
  %5 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %frame_bitoffset = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %5, i32 0, i32 2
  store i32 0, i32* %frame_bitoffset, align 4
  store i32 0, i32* @UsedBits, align 4
  %6 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call1 = call i32 @ue_v(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i32 0, i32 0), %struct.Bitstream* %6)
  store i32 %call1, i32* %recovery_frame_cnt, align 4
  %7 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call2 = call i32 @u_1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0), %struct.Bitstream* %7)
  store i32 %call2, i32* %exact_match_flag, align 4
  %8 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call3 = call i32 @u_1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), %struct.Bitstream* %8)
  store i32 %call3, i32* %broken_link_flag, align 4
  %9 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call4 = call i32 @u_v(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i32 0, i32 0), %struct.Bitstream* %9)
  store i32 %call4, i32* %changing_slice_group_idc, align 4
  %10 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %recovery_point = getelementptr inbounds %struct.img_par, %struct.img_par* %10, i32 0, i32 135
  store i32 1, i32* %recovery_point, align 4
  %11 = load i32, i32* %recovery_frame_cnt, align 4
  %12 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %recovery_frame_cnt5 = getelementptr inbounds %struct.img_par, %struct.img_par* %12, i32 0, i32 137
  store i32 %11, i32* %recovery_frame_cnt5, align 4
  %13 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %14 = bitcast %struct.Bitstream* %13 to i8*
  call void @free(i8* %14) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @interpret_dec_ref_pic_marking_repetition_info(i8* %payload, i32 %size, %struct.img_par* %img) #0 {
entry:
  %payload.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  %original_idr_flag = alloca i32, align 4
  %original_frame_num = alloca i32, align 4
  %tmp_drpm = alloca %struct.DecRefPicMarking_s*, align 8
  %old_drpm = alloca %struct.DecRefPicMarking_s*, align 8
  %old_idr_flag = alloca i32, align 4
  %old_no_output_of_prior_pics_flag = alloca i32, align 4
  %old_long_term_reference_flag = alloca i32, align 4
  %old_adaptive_ref_pic_buffering_flag = alloca i32, align 4
  %buf = alloca %struct.Bitstream*, align 8
  store i8* %payload, i8** %payload.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  %call = call noalias i8* @malloc(i64 32) #4
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** %buf, align 8
  %1 = load i32, i32* %size.addr, align 4
  %2 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 3
  store i32 %1, i32* %bitstream_length, align 4
  %3 = load i8*, i8** %payload.addr, align 8
  %4 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 4
  store i8* %3, i8** %streamBuffer, align 8
  %5 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %frame_bitoffset = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %5, i32 0, i32 2
  store i32 0, i32* %frame_bitoffset, align 4
  store i32 0, i32* @UsedBits, align 4
  %6 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call1 = call i32 @u_1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i32 0, i32 0), %struct.Bitstream* %6)
  store i32 %call1, i32* %original_idr_flag, align 4
  %7 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call2 = call i32 @ue_v(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i32 0, i32 0), %struct.Bitstream* %7)
  store i32 %call2, i32* %original_frame_num, align 4
  %8 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %dec_ref_pic_marking_buffer = getelementptr inbounds %struct.img_par, %struct.img_par* %8, i32 0, i32 46
  %9 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer, align 8
  store %struct.DecRefPicMarking_s* %9, %struct.DecRefPicMarking_s** %old_drpm, align 8
  %10 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %idr_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %10, i32 0, i32 83
  %11 = load i32, i32* %idr_flag, align 4
  store i32 %11, i32* %old_idr_flag, align 4
  %12 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %no_output_of_prior_pics_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %12, i32 0, i32 94
  %13 = load i32, i32* %no_output_of_prior_pics_flag, align 4
  store i32 %13, i32* %old_no_output_of_prior_pics_flag, align 4
  %14 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %long_term_reference_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %14, i32 0, i32 95
  %15 = load i32, i32* %long_term_reference_flag, align 4
  store i32 %15, i32* %old_long_term_reference_flag, align 4
  %16 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %adaptive_ref_pic_buffering_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %16, i32 0, i32 96
  %17 = load i32, i32* %adaptive_ref_pic_buffering_flag, align 4
  store i32 %17, i32* %old_adaptive_ref_pic_buffering_flag, align 4
  %18 = load i32, i32* %original_idr_flag, align 4
  %19 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %idr_flag3 = getelementptr inbounds %struct.img_par, %struct.img_par* %19, i32 0, i32 83
  store i32 %18, i32* %idr_flag3, align 4
  %20 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %dec_ref_pic_marking_buffer4 = getelementptr inbounds %struct.img_par, %struct.img_par* %20, i32 0, i32 46
  store %struct.DecRefPicMarking_s* null, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer4, align 8
  %21 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  call void @dec_ref_pic_marking(%struct.Bitstream* %21)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %22 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %dec_ref_pic_marking_buffer5 = getelementptr inbounds %struct.img_par, %struct.img_par* %22, i32 0, i32 46
  %23 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer5, align 8
  %tobool = icmp ne %struct.DecRefPicMarking_s* %23, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %dec_ref_pic_marking_buffer6 = getelementptr inbounds %struct.img_par, %struct.img_par* %24, i32 0, i32 46
  %25 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer6, align 8
  store %struct.DecRefPicMarking_s* %25, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %26 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %Next = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %26, i32 0, i32 5
  %27 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %Next, align 8
  %28 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %dec_ref_pic_marking_buffer7 = getelementptr inbounds %struct.img_par, %struct.img_par* %28, i32 0, i32 46
  store %struct.DecRefPicMarking_s* %27, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer7, align 8
  %29 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %30 = bitcast %struct.DecRefPicMarking_s* %29 to i8*
  call void @free(i8* %30) #4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %31 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %old_drpm, align 8
  %32 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %dec_ref_pic_marking_buffer8 = getelementptr inbounds %struct.img_par, %struct.img_par* %32, i32 0, i32 46
  store %struct.DecRefPicMarking_s* %31, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer8, align 8
  %33 = load i32, i32* %old_idr_flag, align 4
  %34 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %idr_flag9 = getelementptr inbounds %struct.img_par, %struct.img_par* %34, i32 0, i32 83
  store i32 %33, i32* %idr_flag9, align 4
  %35 = load i32, i32* %old_no_output_of_prior_pics_flag, align 4
  %36 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %no_output_of_prior_pics_flag10 = getelementptr inbounds %struct.img_par, %struct.img_par* %36, i32 0, i32 94
  store i32 %35, i32* %no_output_of_prior_pics_flag10, align 4
  %37 = load i32, i32* %old_long_term_reference_flag, align 4
  %38 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %long_term_reference_flag11 = getelementptr inbounds %struct.img_par, %struct.img_par* %38, i32 0, i32 95
  store i32 %37, i32* %long_term_reference_flag11, align 4
  %39 = load i32, i32* %old_adaptive_ref_pic_buffering_flag, align 4
  %40 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %adaptive_ref_pic_buffering_flag12 = getelementptr inbounds %struct.img_par, %struct.img_par* %40, i32 0, i32 96
  store i32 %39, i32* %adaptive_ref_pic_buffering_flag12, align 4
  %41 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %42 = bitcast %struct.Bitstream* %41 to i8*
  call void @free(i8* %42) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @interpret_spare_pic(i8* %payload, i32 %size, %struct.img_par* %img) #0 {
entry:
  %payload.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %buf = alloca %struct.Bitstream*, align 8
  %bit0 = alloca i32, align 4
  %bit1 = alloca i32, align 4
  %bitc = alloca i32, align 4
  %no_bit0 = alloca i32, align 4
  %target_frame_num = alloca i32, align 4
  %num_spare_pics = alloca i32, align 4
  %delta_spare_frame_num = alloca i32, align 4
  %CandidateSpareFrameNum = alloca i32, align 4
  %SpareFrameNum = alloca i32, align 4
  %ref_area_indicator = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %top = alloca i32, align 4
  %bottom = alloca i32, align 4
  %directx = alloca i32, align 4
  %directy = alloca i32, align 4
  %map = alloca i8***, align 8
  store i8* %payload, i8** %payload.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store i32 0, i32* %target_frame_num, align 4
  store i32 0, i32* %SpareFrameNum, align 4
  store i32 0, i32* @UsedBits, align 4
  %call = call noalias i8* @malloc(i64 32) #4
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** %buf, align 8
  %1 = load i32, i32* %size.addr, align 4
  %2 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 3
  store i32 %1, i32* %bitstream_length, align 4
  %3 = load i8*, i8** %payload.addr, align 8
  %4 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 4
  store i8* %3, i8** %streamBuffer, align 8
  %5 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %frame_bitoffset = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %5, i32 0, i32 2
  store i32 0, i32* %frame_bitoffset, align 4
  %6 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call1 = call i32 @ue_v(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), %struct.Bitstream* %6)
  store i32 %call1, i32* %target_frame_num, align 4
  %7 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call2 = call i32 @ue_v(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), %struct.Bitstream* %7)
  %add = add nsw i32 1, %call2
  store i32 %add, i32* %num_spare_pics, align 4
  %8 = load i32, i32* %num_spare_pics, align 4
  %9 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %height = getelementptr inbounds %struct.img_par, %struct.img_par* %9, i32 0, i32 12
  %10 = load i32, i32* %height, align 4
  %div = sdiv i32 %10, 16
  %11 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %width = getelementptr inbounds %struct.img_par, %struct.img_par* %11, i32 0, i32 11
  %12 = load i32, i32* %width, align 4
  %div3 = sdiv i32 %12, 16
  %call4 = call i32 @get_mem3D(i8**** %map, i32 %8, i32 %div, i32 %div3)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.221, %entry
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %num_spare_pics, align 4
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end.223

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %cmp5 = icmp eq i32 %15, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %16 = load i32, i32* %target_frame_num, align 4
  %sub = sub nsw i32 %16, 1
  store i32 %sub, i32* %CandidateSpareFrameNum, align 4
  %17 = load i32, i32* %CandidateSpareFrameNum, align 4
  %cmp6 = icmp slt i32 %17, 0
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  store i32 255, i32* %CandidateSpareFrameNum, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.8

if.else:                                          ; preds = %for.body
  %18 = load i32, i32* %SpareFrameNum, align 4
  store i32 %18, i32* %CandidateSpareFrameNum, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.end
  %19 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call9 = call i32 @ue_v(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), %struct.Bitstream* %19)
  store i32 %call9, i32* %delta_spare_frame_num, align 4
  %20 = load i32, i32* %CandidateSpareFrameNum, align 4
  %21 = load i32, i32* %delta_spare_frame_num, align 4
  %sub10 = sub nsw i32 %20, %21
  store i32 %sub10, i32* %SpareFrameNum, align 4
  %22 = load i32, i32* %SpareFrameNum, align 4
  %cmp11 = icmp slt i32 %22, 0
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.8
  %23 = load i32, i32* %SpareFrameNum, align 4
  %add13 = add nsw i32 256, %23
  store i32 %add13, i32* %SpareFrameNum, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.8
  %24 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call15 = call i32 @ue_v(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), %struct.Bitstream* %24)
  store i32 %call15, i32* %ref_area_indicator, align 4
  %25 = load i32, i32* %ref_area_indicator, align 4
  switch i32 %25, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.33
    i32 2, label %sw.bb.57
  ]

sw.bb:                                            ; preds = %if.end.14
  store i32 0, i32* %y, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.30, %sw.bb
  %26 = load i32, i32* %y, align 4
  %27 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %height17 = getelementptr inbounds %struct.img_par, %struct.img_par* %27, i32 0, i32 12
  %28 = load i32, i32* %height17, align 4
  %div18 = sdiv i32 %28, 16
  %cmp19 = icmp slt i32 %26, %div18
  br i1 %cmp19, label %for.body.20, label %for.end.32

for.body.20:                                      ; preds = %for.cond.16
  store i32 0, i32* %x, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc, %for.body.20
  %29 = load i32, i32* %x, align 4
  %30 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %width22 = getelementptr inbounds %struct.img_par, %struct.img_par* %30, i32 0, i32 11
  %31 = load i32, i32* %width22, align 4
  %div23 = sdiv i32 %31, 16
  %cmp24 = icmp slt i32 %29, %div23
  br i1 %cmp24, label %for.body.25, label %for.end

for.body.25:                                      ; preds = %for.cond.21
  %32 = load i32, i32* %x, align 4
  %idxprom = sext i32 %32 to i64
  %33 = load i32, i32* %y, align 4
  %idxprom26 = sext i32 %33 to i64
  %34 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %34 to i64
  %35 = load i8***, i8**** %map, align 8
  %arrayidx = getelementptr inbounds i8**, i8*** %35, i64 %idxprom27
  %36 = load i8**, i8*** %arrayidx, align 8
  %arrayidx28 = getelementptr inbounds i8*, i8** %36, i64 %idxprom26
  %37 = load i8*, i8** %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %37, i64 %idxprom
  store i8 0, i8* %arrayidx29, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.25
  %38 = load i32, i32* %x, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.21

for.end:                                          ; preds = %for.cond.21
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end
  %39 = load i32, i32* %y, align 4
  %inc31 = add nsw i32 %39, 1
  store i32 %inc31, i32* %y, align 4
  br label %for.cond.16

for.end.32:                                       ; preds = %for.cond.16
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.end.14
  store i32 0, i32* %y, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.54, %sw.bb.33
  %40 = load i32, i32* %y, align 4
  %41 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %height35 = getelementptr inbounds %struct.img_par, %struct.img_par* %41, i32 0, i32 12
  %42 = load i32, i32* %height35, align 4
  %div36 = sdiv i32 %42, 16
  %cmp37 = icmp slt i32 %40, %div36
  br i1 %cmp37, label %for.body.38, label %for.end.56

for.body.38:                                      ; preds = %for.cond.34
  store i32 0, i32* %x, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.51, %for.body.38
  %43 = load i32, i32* %x, align 4
  %44 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %width40 = getelementptr inbounds %struct.img_par, %struct.img_par* %44, i32 0, i32 11
  %45 = load i32, i32* %width40, align 4
  %div41 = sdiv i32 %45, 16
  %cmp42 = icmp slt i32 %43, %div41
  br i1 %cmp42, label %for.body.43, label %for.end.53

for.body.43:                                      ; preds = %for.cond.39
  %46 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call44 = call i32 @u_1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), %struct.Bitstream* %46)
  %conv = trunc i32 %call44 to i8
  %47 = load i32, i32* %x, align 4
  %idxprom45 = sext i32 %47 to i64
  %48 = load i32, i32* %y, align 4
  %idxprom46 = sext i32 %48 to i64
  %49 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %49 to i64
  %50 = load i8***, i8**** %map, align 8
  %arrayidx48 = getelementptr inbounds i8**, i8*** %50, i64 %idxprom47
  %51 = load i8**, i8*** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds i8*, i8** %51, i64 %idxprom46
  %52 = load i8*, i8** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %52, i64 %idxprom45
  store i8 %conv, i8* %arrayidx50, align 1
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.43
  %53 = load i32, i32* %x, align 4
  %inc52 = add nsw i32 %53, 1
  store i32 %inc52, i32* %x, align 4
  br label %for.cond.39

for.end.53:                                       ; preds = %for.cond.39
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.end.53
  %54 = load i32, i32* %y, align 4
  %inc55 = add nsw i32 %54, 1
  store i32 %inc55, i32* %y, align 4
  br label %for.cond.34

for.end.56:                                       ; preds = %for.cond.34
  br label %sw.epilog

sw.bb.57:                                         ; preds = %if.end.14
  store i32 0, i32* %bit0, align 4
  store i32 1, i32* %bit1, align 4
  %55 = load i32, i32* %bit0, align 4
  store i32 %55, i32* %bitc, align 4
  store i32 -1, i32* %no_bit0, align 4
  %56 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %width58 = getelementptr inbounds %struct.img_par, %struct.img_par* %56, i32 0, i32 11
  %57 = load i32, i32* %width58, align 4
  %div59 = sdiv i32 %57, 16
  %sub60 = sub nsw i32 %div59, 1
  %div61 = sdiv i32 %sub60, 2
  store i32 %div61, i32* %x, align 4
  %58 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %height62 = getelementptr inbounds %struct.img_par, %struct.img_par* %58, i32 0, i32 12
  %59 = load i32, i32* %height62, align 4
  %div63 = sdiv i32 %59, 16
  %sub64 = sub nsw i32 %div63, 1
  %div65 = sdiv i32 %sub64, 2
  store i32 %div65, i32* %y, align 4
  %60 = load i32, i32* %x, align 4
  store i32 %60, i32* %right, align 4
  store i32 %60, i32* %left, align 4
  %61 = load i32, i32* %y, align 4
  store i32 %61, i32* %bottom, align 4
  store i32 %61, i32* %top, align 4
  store i32 0, i32* %directx, align 4
  store i32 1, i32* %directy, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.217, %sw.bb.57
  %62 = load i32, i32* %m, align 4
  %63 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %height67 = getelementptr inbounds %struct.img_par, %struct.img_par* %63, i32 0, i32 12
  %64 = load i32, i32* %height67, align 4
  %div68 = sdiv i32 %64, 16
  %cmp69 = icmp slt i32 %62, %div68
  br i1 %cmp69, label %for.body.71, label %for.end.219

for.body.71:                                      ; preds = %for.cond.66
  store i32 0, i32* %n, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.214, %for.body.71
  %65 = load i32, i32* %n, align 4
  %66 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %width73 = getelementptr inbounds %struct.img_par, %struct.img_par* %66, i32 0, i32 11
  %67 = load i32, i32* %width73, align 4
  %div74 = sdiv i32 %67, 16
  %cmp75 = icmp slt i32 %65, %div74
  br i1 %cmp75, label %for.body.77, label %for.end.216

for.body.77:                                      ; preds = %for.cond.72
  %68 = load i32, i32* %no_bit0, align 4
  %cmp78 = icmp slt i32 %68, 0
  br i1 %cmp78, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %for.body.77
  %69 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call81 = call i32 @ue_v(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), %struct.Bitstream* %69)
  store i32 %call81, i32* %no_bit0, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %for.body.77
  %70 = load i32, i32* %no_bit0, align 4
  %cmp83 = icmp sgt i32 %70, 0
  br i1 %cmp83, label %if.then.85, label %if.else.93

if.then.85:                                       ; preds = %if.end.82
  %71 = load i32, i32* %bit0, align 4
  %conv86 = trunc i32 %71 to i8
  %72 = load i32, i32* %x, align 4
  %idxprom87 = sext i32 %72 to i64
  %73 = load i32, i32* %y, align 4
  %idxprom88 = sext i32 %73 to i64
  %74 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %74 to i64
  %75 = load i8***, i8**** %map, align 8
  %arrayidx90 = getelementptr inbounds i8**, i8*** %75, i64 %idxprom89
  %76 = load i8**, i8*** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds i8*, i8** %76, i64 %idxprom88
  %77 = load i8*, i8** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %77, i64 %idxprom87
  store i8 %conv86, i8* %arrayidx92, align 1
  br label %if.end.101

if.else.93:                                       ; preds = %if.end.82
  %78 = load i32, i32* %bit1, align 4
  %conv94 = trunc i32 %78 to i8
  %79 = load i32, i32* %x, align 4
  %idxprom95 = sext i32 %79 to i64
  %80 = load i32, i32* %y, align 4
  %idxprom96 = sext i32 %80 to i64
  %81 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %81 to i64
  %82 = load i8***, i8**** %map, align 8
  %arrayidx98 = getelementptr inbounds i8**, i8*** %82, i64 %idxprom97
  %83 = load i8**, i8*** %arrayidx98, align 8
  %arrayidx99 = getelementptr inbounds i8*, i8** %83, i64 %idxprom96
  %84 = load i8*, i8** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %84, i64 %idxprom95
  store i8 %conv94, i8* %arrayidx100, align 1
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.93, %if.then.85
  %85 = load i32, i32* %no_bit0, align 4
  %dec = add nsw i32 %85, -1
  store i32 %dec, i32* %no_bit0, align 4
  %86 = load i32, i32* %directx, align 4
  %cmp102 = icmp eq i32 %86, -1
  br i1 %cmp102, label %land.lhs.true, label %if.else.126

land.lhs.true:                                    ; preds = %if.end.101
  %87 = load i32, i32* %directy, align 4
  %cmp104 = icmp eq i32 %87, 0
  br i1 %cmp104, label %if.then.106, label %if.else.126

if.then.106:                                      ; preds = %land.lhs.true
  %88 = load i32, i32* %x, align 4
  %89 = load i32, i32* %left, align 4
  %cmp107 = icmp sgt i32 %88, %89
  br i1 %cmp107, label %if.then.109, label %if.else.111

if.then.109:                                      ; preds = %if.then.106
  %90 = load i32, i32* %x, align 4
  %dec110 = add nsw i32 %90, -1
  store i32 %dec110, i32* %x, align 4
  br label %if.end.125

if.else.111:                                      ; preds = %if.then.106
  %91 = load i32, i32* %x, align 4
  %cmp112 = icmp eq i32 %91, 0
  br i1 %cmp112, label %if.then.114, label %if.else.117

if.then.114:                                      ; preds = %if.else.111
  %92 = load i32, i32* %bottom, align 4
  %add115 = add nsw i32 %92, 1
  store i32 %add115, i32* %y, align 4
  %93 = load i32, i32* %bottom, align 4
  %inc116 = add nsw i32 %93, 1
  store i32 %inc116, i32* %bottom, align 4
  store i32 1, i32* %directx, align 4
  store i32 0, i32* %directy, align 4
  br label %if.end.124

if.else.117:                                      ; preds = %if.else.111
  %94 = load i32, i32* %x, align 4
  %95 = load i32, i32* %left, align 4
  %cmp118 = icmp eq i32 %94, %95
  br i1 %cmp118, label %if.then.120, label %if.end.123

if.then.120:                                      ; preds = %if.else.117
  %96 = load i32, i32* %x, align 4
  %dec121 = add nsw i32 %96, -1
  store i32 %dec121, i32* %x, align 4
  %97 = load i32, i32* %left, align 4
  %dec122 = add nsw i32 %97, -1
  store i32 %dec122, i32* %left, align 4
  store i32 0, i32* %directx, align 4
  store i32 1, i32* %directy, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.120, %if.else.117
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.then.114
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.then.109
  br label %if.end.213

if.else.126:                                      ; preds = %land.lhs.true, %if.end.101
  %98 = load i32, i32* %directx, align 4
  %cmp127 = icmp eq i32 %98, 1
  br i1 %cmp127, label %land.lhs.true.129, label %if.else.155

land.lhs.true.129:                                ; preds = %if.else.126
  %99 = load i32, i32* %directy, align 4
  %cmp130 = icmp eq i32 %99, 0
  br i1 %cmp130, label %if.then.132, label %if.else.155

if.then.132:                                      ; preds = %land.lhs.true.129
  %100 = load i32, i32* %x, align 4
  %101 = load i32, i32* %right, align 4
  %cmp133 = icmp slt i32 %100, %101
  br i1 %cmp133, label %if.then.135, label %if.else.137

if.then.135:                                      ; preds = %if.then.132
  %102 = load i32, i32* %x, align 4
  %inc136 = add nsw i32 %102, 1
  store i32 %inc136, i32* %x, align 4
  br label %if.end.154

if.else.137:                                      ; preds = %if.then.132
  %103 = load i32, i32* %x, align 4
  %104 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %width138 = getelementptr inbounds %struct.img_par, %struct.img_par* %104, i32 0, i32 11
  %105 = load i32, i32* %width138, align 4
  %div139 = sdiv i32 %105, 16
  %sub140 = sub nsw i32 %div139, 1
  %cmp141 = icmp eq i32 %103, %sub140
  br i1 %cmp141, label %if.then.143, label %if.else.146

if.then.143:                                      ; preds = %if.else.137
  %106 = load i32, i32* %top, align 4
  %sub144 = sub nsw i32 %106, 1
  store i32 %sub144, i32* %y, align 4
  %107 = load i32, i32* %top, align 4
  %dec145 = add nsw i32 %107, -1
  store i32 %dec145, i32* %top, align 4
  store i32 -1, i32* %directx, align 4
  store i32 0, i32* %directy, align 4
  br label %if.end.153

if.else.146:                                      ; preds = %if.else.137
  %108 = load i32, i32* %x, align 4
  %109 = load i32, i32* %right, align 4
  %cmp147 = icmp eq i32 %108, %109
  br i1 %cmp147, label %if.then.149, label %if.end.152

if.then.149:                                      ; preds = %if.else.146
  %110 = load i32, i32* %x, align 4
  %inc150 = add nsw i32 %110, 1
  store i32 %inc150, i32* %x, align 4
  %111 = load i32, i32* %right, align 4
  %inc151 = add nsw i32 %111, 1
  store i32 %inc151, i32* %right, align 4
  store i32 0, i32* %directx, align 4
  store i32 -1, i32* %directy, align 4
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.149, %if.else.146
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.then.143
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.then.135
  br label %if.end.212

if.else.155:                                      ; preds = %land.lhs.true.129, %if.else.126
  %112 = load i32, i32* %directx, align 4
  %cmp156 = icmp eq i32 %112, 0
  br i1 %cmp156, label %land.lhs.true.158, label %if.else.181

land.lhs.true.158:                                ; preds = %if.else.155
  %113 = load i32, i32* %directy, align 4
  %cmp159 = icmp eq i32 %113, -1
  br i1 %cmp159, label %if.then.161, label %if.else.181

if.then.161:                                      ; preds = %land.lhs.true.158
  %114 = load i32, i32* %y, align 4
  %115 = load i32, i32* %top, align 4
  %cmp162 = icmp sgt i32 %114, %115
  br i1 %cmp162, label %if.then.164, label %if.else.166

if.then.164:                                      ; preds = %if.then.161
  %116 = load i32, i32* %y, align 4
  %dec165 = add nsw i32 %116, -1
  store i32 %dec165, i32* %y, align 4
  br label %if.end.180

if.else.166:                                      ; preds = %if.then.161
  %117 = load i32, i32* %y, align 4
  %cmp167 = icmp eq i32 %117, 0
  br i1 %cmp167, label %if.then.169, label %if.else.172

if.then.169:                                      ; preds = %if.else.166
  %118 = load i32, i32* %left, align 4
  %sub170 = sub nsw i32 %118, 1
  store i32 %sub170, i32* %x, align 4
  %119 = load i32, i32* %left, align 4
  %dec171 = add nsw i32 %119, -1
  store i32 %dec171, i32* %left, align 4
  store i32 0, i32* %directx, align 4
  store i32 1, i32* %directy, align 4
  br label %if.end.179

if.else.172:                                      ; preds = %if.else.166
  %120 = load i32, i32* %y, align 4
  %121 = load i32, i32* %top, align 4
  %cmp173 = icmp eq i32 %120, %121
  br i1 %cmp173, label %if.then.175, label %if.end.178

if.then.175:                                      ; preds = %if.else.172
  %122 = load i32, i32* %y, align 4
  %dec176 = add nsw i32 %122, -1
  store i32 %dec176, i32* %y, align 4
  %123 = load i32, i32* %top, align 4
  %dec177 = add nsw i32 %123, -1
  store i32 %dec177, i32* %top, align 4
  store i32 -1, i32* %directx, align 4
  store i32 0, i32* %directy, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.175, %if.else.172
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %if.then.169
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.179, %if.then.164
  br label %if.end.211

if.else.181:                                      ; preds = %land.lhs.true.158, %if.else.155
  %124 = load i32, i32* %directx, align 4
  %cmp182 = icmp eq i32 %124, 0
  br i1 %cmp182, label %land.lhs.true.184, label %if.end.210

land.lhs.true.184:                                ; preds = %if.else.181
  %125 = load i32, i32* %directy, align 4
  %cmp185 = icmp eq i32 %125, 1
  br i1 %cmp185, label %if.then.187, label %if.end.210

if.then.187:                                      ; preds = %land.lhs.true.184
  %126 = load i32, i32* %y, align 4
  %127 = load i32, i32* %bottom, align 4
  %cmp188 = icmp slt i32 %126, %127
  br i1 %cmp188, label %if.then.190, label %if.else.192

if.then.190:                                      ; preds = %if.then.187
  %128 = load i32, i32* %y, align 4
  %inc191 = add nsw i32 %128, 1
  store i32 %inc191, i32* %y, align 4
  br label %if.end.209

if.else.192:                                      ; preds = %if.then.187
  %129 = load i32, i32* %y, align 4
  %130 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %height193 = getelementptr inbounds %struct.img_par, %struct.img_par* %130, i32 0, i32 12
  %131 = load i32, i32* %height193, align 4
  %div194 = sdiv i32 %131, 16
  %sub195 = sub nsw i32 %div194, 1
  %cmp196 = icmp eq i32 %129, %sub195
  br i1 %cmp196, label %if.then.198, label %if.else.201

if.then.198:                                      ; preds = %if.else.192
  %132 = load i32, i32* %right, align 4
  %add199 = add nsw i32 %132, 1
  store i32 %add199, i32* %x, align 4
  %133 = load i32, i32* %right, align 4
  %inc200 = add nsw i32 %133, 1
  store i32 %inc200, i32* %right, align 4
  store i32 0, i32* %directx, align 4
  store i32 -1, i32* %directy, align 4
  br label %if.end.208

if.else.201:                                      ; preds = %if.else.192
  %134 = load i32, i32* %y, align 4
  %135 = load i32, i32* %bottom, align 4
  %cmp202 = icmp eq i32 %134, %135
  br i1 %cmp202, label %if.then.204, label %if.end.207

if.then.204:                                      ; preds = %if.else.201
  %136 = load i32, i32* %y, align 4
  %inc205 = add nsw i32 %136, 1
  store i32 %inc205, i32* %y, align 4
  %137 = load i32, i32* %bottom, align 4
  %inc206 = add nsw i32 %137, 1
  store i32 %inc206, i32* %bottom, align 4
  store i32 1, i32* %directx, align 4
  store i32 0, i32* %directy, align 4
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.204, %if.else.201
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.207, %if.then.198
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.then.190
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %land.lhs.true.184, %if.else.181
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %if.end.180
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %if.end.154
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %if.end.125
  br label %for.inc.214

for.inc.214:                                      ; preds = %if.end.213
  %138 = load i32, i32* %n, align 4
  %inc215 = add nsw i32 %138, 1
  store i32 %inc215, i32* %n, align 4
  br label %for.cond.72

for.end.216:                                      ; preds = %for.cond.72
  br label %for.inc.217

for.inc.217:                                      ; preds = %for.end.216
  %139 = load i32, i32* %m, align 4
  %inc218 = add nsw i32 %139, 1
  store i32 %inc218, i32* %m, align 4
  br label %for.cond.66

for.end.219:                                      ; preds = %for.cond.66
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.14
  %140 = load i32, i32* %ref_area_indicator, align 4
  %call220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i32 %140)
  call void @exit(i32 0) #5
  unreachable

sw.epilog:                                        ; preds = %for.end.219, %for.end.56, %for.end.32
  br label %for.inc.221

for.inc.221:                                      ; preds = %sw.epilog
  %141 = load i32, i32* %i, align 4
  %inc222 = add nsw i32 %141, 1
  store i32 %inc222, i32* %i, align 4
  br label %for.cond

for.end.223:                                      ; preds = %for.cond
  %142 = load i8***, i8**** %map, align 8
  %143 = load i32, i32* %num_spare_pics, align 4
  call void @free_mem3D(i8*** %142, i32 %143)
  %144 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %145 = bitcast %struct.Bitstream* %144 to i8*
  call void @free(i8* %145) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @interpret_scene_information(i8* %payload, i32 %size, %struct.img_par* %img) #0 {
entry:
  %payload.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  %buf = alloca %struct.Bitstream*, align 8
  %scene_id = alloca i32, align 4
  %scene_transition_type = alloca i32, align 4
  %second_scene_id = alloca i32, align 4
  store i8* %payload, i8** %payload.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  %call = call noalias i8* @malloc(i64 32) #4
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** %buf, align 8
  %1 = load i32, i32* %size.addr, align 4
  %2 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 3
  store i32 %1, i32* %bitstream_length, align 4
  %3 = load i8*, i8** %payload.addr, align 8
  %4 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 4
  store i8* %3, i8** %streamBuffer, align 8
  %5 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %frame_bitoffset = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %5, i32 0, i32 2
  store i32 0, i32* %frame_bitoffset, align 4
  store i32 0, i32* @UsedBits, align 4
  %6 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call1 = call i32 @ue_v(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), %struct.Bitstream* %6)
  store i32 %call1, i32* %scene_id, align 4
  %7 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call2 = call i32 @ue_v(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0), %struct.Bitstream* %7)
  store i32 %call2, i32* %scene_transition_type, align 4
  %8 = load i32, i32* %scene_transition_type, align 4
  %cmp = icmp sgt i32 %8, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call3 = call i32 @ue_v(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0), %struct.Bitstream* %9)
  store i32 %call3, i32* %second_scene_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %11 = bitcast %struct.Bitstream* %10 to i8*
  call void @free(i8* %11) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @interpret_subsequence_info(i8* %payload, i32 %size, %struct.img_par* %img) #0 {
entry:
  %payload.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  %buf = alloca %struct.Bitstream*, align 8
  %sub_seq_layer_num = alloca i32, align 4
  %sub_seq_id = alloca i32, align 4
  %first_ref_pic_flag = alloca i32, align 4
  %leading_non_ref_pic_flag = alloca i32, align 4
  %last_pic_flag = alloca i32, align 4
  %sub_seq_frame_num_flag = alloca i32, align 4
  %sub_seq_frame_num = alloca i32, align 4
  store i8* %payload, i8** %payload.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  %call = call noalias i8* @malloc(i64 32) #4
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** %buf, align 8
  %1 = load i32, i32* %size.addr, align 4
  %2 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 3
  store i32 %1, i32* %bitstream_length, align 4
  %3 = load i8*, i8** %payload.addr, align 8
  %4 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 4
  store i8* %3, i8** %streamBuffer, align 8
  %5 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %frame_bitoffset = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %5, i32 0, i32 2
  store i32 0, i32* %frame_bitoffset, align 4
  store i32 0, i32* @UsedBits, align 4
  %6 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call1 = call i32 @ue_v(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), %struct.Bitstream* %6)
  store i32 %call1, i32* %sub_seq_layer_num, align 4
  %7 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call2 = call i32 @ue_v(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), %struct.Bitstream* %7)
  store i32 %call2, i32* %sub_seq_id, align 4
  %8 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call3 = call i32 @u_1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0), %struct.Bitstream* %8)
  store i32 %call3, i32* %first_ref_pic_flag, align 4
  %9 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call4 = call i32 @u_1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0), %struct.Bitstream* %9)
  store i32 %call4, i32* %leading_non_ref_pic_flag, align 4
  %10 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call5 = call i32 @u_1(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), %struct.Bitstream* %10)
  store i32 %call5, i32* %last_pic_flag, align 4
  %11 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call6 = call i32 @u_1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0), %struct.Bitstream* %11)
  store i32 %call6, i32* %sub_seq_frame_num_flag, align 4
  %12 = load i32, i32* %sub_seq_frame_num_flag, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call7 = call i32 @ue_v(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0), %struct.Bitstream* %13)
  store i32 %call7, i32* %sub_seq_frame_num, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %15 = bitcast %struct.Bitstream* %14 to i8*
  call void @free(i8* %15) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @interpret_subsequence_layer_characteristics_info(i8* %payload, i32 %size, %struct.img_par* %img) #0 {
entry:
  %payload.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  %buf = alloca %struct.Bitstream*, align 8
  %num_sub_layers = alloca i64, align 8
  %accurate_statistics_flag = alloca i64, align 8
  %average_bit_rate = alloca i64, align 8
  %average_frame_rate = alloca i64, align 8
  %i = alloca i32, align 4
  store i8* %payload, i8** %payload.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  %call = call noalias i8* @malloc(i64 32) #4
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** %buf, align 8
  %1 = load i32, i32* %size.addr, align 4
  %2 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 3
  store i32 %1, i32* %bitstream_length, align 4
  %3 = load i8*, i8** %payload.addr, align 8
  %4 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 4
  store i8* %3, i8** %streamBuffer, align 8
  %5 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %frame_bitoffset = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %5, i32 0, i32 2
  store i32 0, i32* %frame_bitoffset, align 4
  store i32 0, i32* @UsedBits, align 4
  %6 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call1 = call i32 @ue_v(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0), %struct.Bitstream* %6)
  %add = add nsw i32 1, %call1
  %conv = sext i32 %add to i64
  store i64 %conv, i64* %num_sub_layers, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %conv2 = sext i32 %7 to i64
  %8 = load i64, i64* %num_sub_layers, align 8
  %cmp = icmp slt i64 %conv2, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call4 = call i32 @u_1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), %struct.Bitstream* %9)
  %conv5 = zext i32 %call4 to i64
  store i64 %conv5, i64* %accurate_statistics_flag, align 8
  %10 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call6 = call i32 @u_v(i32 16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), %struct.Bitstream* %10)
  %conv7 = sext i32 %call6 to i64
  store i64 %conv7, i64* %average_bit_rate, align 8
  %11 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call8 = call i32 @u_v(i32 16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0), %struct.Bitstream* %11)
  %conv9 = sext i32 %call8 to i64
  store i64 %conv9, i64* %average_frame_rate, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %14 = bitcast %struct.Bitstream* %13 to i8*
  call void @free(i8* %14) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @interpret_subsequence_characteristics_info(i8* %payload, i32 %size, %struct.img_par* %img) #0 {
entry:
  %payload.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  %buf = alloca %struct.Bitstream*, align 8
  %i = alloca i32, align 4
  %sub_seq_layer_num = alloca i32, align 4
  %sub_seq_id = alloca i32, align 4
  %duration_flag = alloca i32, align 4
  %average_rate_flag = alloca i32, align 4
  %accurate_statistics_flag = alloca i32, align 4
  %sub_seq_duration = alloca i64, align 8
  %average_bit_rate = alloca i64, align 8
  %average_frame_rate = alloca i64, align 8
  %num_referenced_subseqs = alloca i32, align 4
  %ref_sub_seq_layer_num = alloca i32, align 4
  %ref_sub_seq_id = alloca i32, align 4
  %ref_sub_seq_direction = alloca i32, align 4
  store i8* %payload, i8** %payload.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  %call = call noalias i8* @malloc(i64 32) #4
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** %buf, align 8
  %1 = load i32, i32* %size.addr, align 4
  %2 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 3
  store i32 %1, i32* %bitstream_length, align 4
  %3 = load i8*, i8** %payload.addr, align 8
  %4 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 4
  store i8* %3, i8** %streamBuffer, align 8
  %5 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %frame_bitoffset = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %5, i32 0, i32 2
  store i32 0, i32* %frame_bitoffset, align 4
  store i32 0, i32* @UsedBits, align 4
  %6 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call1 = call i32 @ue_v(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), %struct.Bitstream* %6)
  store i32 %call1, i32* %sub_seq_layer_num, align 4
  %7 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call2 = call i32 @ue_v(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), %struct.Bitstream* %7)
  store i32 %call2, i32* %sub_seq_id, align 4
  %8 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call3 = call i32 @u_1(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), %struct.Bitstream* %8)
  store i32 %call3, i32* %duration_flag, align 4
  %9 = load i32, i32* %duration_flag, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call4 = call i32 @u_v(i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), %struct.Bitstream* %10)
  %conv = sext i32 %call4 to i64
  store i64 %conv, i64* %sub_seq_duration, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call5 = call i32 @u_1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i32 0, i32 0), %struct.Bitstream* %11)
  store i32 %call5, i32* %average_rate_flag, align 4
  %12 = load i32, i32* %average_rate_flag, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %if.end
  %13 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call8 = call i32 @u_1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), %struct.Bitstream* %13)
  store i32 %call8, i32* %accurate_statistics_flag, align 4
  %14 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call9 = call i32 @u_v(i32 16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), %struct.Bitstream* %14)
  %conv10 = sext i32 %call9 to i64
  store i64 %conv10, i64* %average_bit_rate, align 8
  %15 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call11 = call i32 @u_v(i32 16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0), %struct.Bitstream* %15)
  %conv12 = sext i32 %call11 to i64
  store i64 %conv12, i64* %average_frame_rate, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.7, %if.end
  %16 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call14 = call i32 @ue_v(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0), %struct.Bitstream* %16)
  store i32 %call14, i32* %num_referenced_subseqs, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %num_referenced_subseqs, align 4
  %cmp = icmp slt i32 %17, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call16 = call i32 @ue_v(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i32 0, i32 0), %struct.Bitstream* %19)
  store i32 %call16, i32* %ref_sub_seq_layer_num, align 4
  %20 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call17 = call i32 @ue_v(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), %struct.Bitstream* %20)
  store i32 %call17, i32* %ref_sub_seq_id, align 4
  %21 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call18 = call i32 @u_1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0), %struct.Bitstream* %21)
  store i32 %call18, i32* %ref_sub_seq_direction, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %24 = bitcast %struct.Bitstream* %23 to i8*
  call void @free(i8* %24) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @interpret_full_frame_freeze_info(i8* %payload, i32 %size, %struct.img_par* %img) #0 {
entry:
  %payload.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  store i8* %payload, i8** %payload.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @interpret_full_frame_freeze_release_info(i8* %payload, i32 %size, %struct.img_par* %img) #0 {
entry:
  %payload.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  store i8* %payload, i8** %payload.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @interpret_full_frame_snapshot_info(i8* %payload, i32 %size, %struct.img_par* %img) #0 {
entry:
  %payload.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  %snapshot_id = alloca i32, align 4
  %buf = alloca %struct.Bitstream*, align 8
  store i8* %payload, i8** %payload.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  %call = call noalias i8* @malloc(i64 32) #4
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** %buf, align 8
  %1 = load i32, i32* %size.addr, align 4
  %2 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 3
  store i32 %1, i32* %bitstream_length, align 4
  %3 = load i8*, i8** %payload.addr, align 8
  %4 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 4
  store i8* %3, i8** %streamBuffer, align 8
  %5 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %frame_bitoffset = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %5, i32 0, i32 2
  store i32 0, i32* %frame_bitoffset, align 4
  store i32 0, i32* @UsedBits, align 4
  %6 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call1 = call i32 @ue_v(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0), %struct.Bitstream* %6)
  store i32 %call1, i32* %snapshot_id, align 4
  %7 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %8 = bitcast %struct.Bitstream* %7 to i8*
  call void @free(i8* %8) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @interpret_progressive_refinement_end_info(i8* %payload, i32 %size, %struct.img_par* %img) #0 {
entry:
  %payload.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  %progressive_refinement_id = alloca i32, align 4
  %buf = alloca %struct.Bitstream*, align 8
  store i8* %payload, i8** %payload.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  %call = call noalias i8* @malloc(i64 32) #4
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** %buf, align 8
  %1 = load i32, i32* %size.addr, align 4
  %2 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 3
  store i32 %1, i32* %bitstream_length, align 4
  %3 = load i8*, i8** %payload.addr, align 8
  %4 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 4
  store i8* %3, i8** %streamBuffer, align 8
  %5 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %frame_bitoffset = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %5, i32 0, i32 2
  store i32 0, i32* %frame_bitoffset, align 4
  store i32 0, i32* @UsedBits, align 4
  %6 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call1 = call i32 @ue_v(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i32 0, i32 0), %struct.Bitstream* %6)
  store i32 %call1, i32* %progressive_refinement_id, align 4
  %7 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %8 = bitcast %struct.Bitstream* %7 to i8*
  call void @free(i8* %8) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @interpret_motion_constrained_slice_group_set_info(i8* %payload, i32 %size, %struct.img_par* %img) #0 {
entry:
  %payload.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  %num_slice_groups_minus1 = alloca i32, align 4
  %slice_group_id = alloca i32, align 4
  %exact_match_flag = alloca i32, align 4
  %pan_scan_rect_flag = alloca i32, align 4
  %pan_scan_rect_id = alloca i32, align 4
  %i = alloca i32, align 4
  %sliceGroupSize = alloca i32, align 4
  %buf = alloca %struct.Bitstream*, align 8
  store i8* %payload, i8** %payload.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  %call = call noalias i8* @malloc(i64 32) #4
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** %buf, align 8
  %1 = load i32, i32* %size.addr, align 4
  %2 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 3
  store i32 %1, i32* %bitstream_length, align 4
  %3 = load i8*, i8** %payload.addr, align 8
  %4 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 4
  store i8* %3, i8** %streamBuffer, align 8
  %5 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %frame_bitoffset = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %5, i32 0, i32 2
  store i32 0, i32* %frame_bitoffset, align 4
  store i32 0, i32* @UsedBits, align 4
  %6 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call1 = call i32 @ue_v(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.43, i32 0, i32 0), %struct.Bitstream* %6)
  store i32 %call1, i32* %num_slice_groups_minus1, align 4
  %7 = load i32, i32* %num_slice_groups_minus1, align 4
  %add = add nsw i32 %7, 1
  %call2 = call i32 @CeilLog2(i32 %add)
  store i32 %call2, i32* %sliceGroupSize, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %num_slice_groups_minus1, align 4
  %cmp = icmp sle i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %sliceGroupSize, align 4
  %11 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call3 = call i32 @u_v(i32 %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0), %struct.Bitstream* %11)
  store i32 %call3, i32* %slice_group_id, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call4 = call i32 @u_1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0), %struct.Bitstream* %13)
  store i32 %call4, i32* %exact_match_flag, align 4
  %14 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call5 = call i32 @u_1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45, i32 0, i32 0), %struct.Bitstream* %14)
  store i32 %call5, i32* %pan_scan_rect_flag, align 4
  %15 = load i32, i32* %pan_scan_rect_flag, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %16 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call6 = call i32 @ue_v(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0), %struct.Bitstream* %16)
  store i32 %call6, i32* %pan_scan_rect_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %17 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %18 = bitcast %struct.Bitstream* %17 to i8*
  call void @free(i8* %18) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @interpret_film_grain_characteristics_info(i8* %payload, i32 %size, %struct.img_par* %img) #0 {
entry:
  %payload.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  %film_grain_characteristics_cancel_flag = alloca i32, align 4
  %model_id = alloca i32, align 4
  %separate_colour_description_present_flag = alloca i32, align 4
  %film_grain_bit_depth_luma_minus8 = alloca i32, align 4
  %film_grain_bit_depth_chroma_minus8 = alloca i32, align 4
  %film_grain_full_range_flag = alloca i32, align 4
  %film_grain_colour_primaries = alloca i32, align 4
  %film_grain_transfer_characteristics = alloca i32, align 4
  %film_grain_matrix_coefficients = alloca i32, align 4
  %blending_mode_id = alloca i32, align 4
  %log2_scale_factor = alloca i32, align 4
  %comp_model_present_flag = alloca [3 x i32], align 4
  %num_intensity_intervals_minus1 = alloca i32, align 4
  %num_model_values_minus1 = alloca i32, align 4
  %intensity_interval_lower_bound = alloca i32, align 4
  %intensity_interval_upper_bound = alloca i32, align 4
  %comp_model_value = alloca i32, align 4
  %film_grain_characteristics_repetition_period = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %buf = alloca %struct.Bitstream*, align 8
  store i8* %payload, i8** %payload.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  %call = call noalias i8* @malloc(i64 32) #4
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** %buf, align 8
  %1 = load i32, i32* %size.addr, align 4
  %2 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 3
  store i32 %1, i32* %bitstream_length, align 4
  %3 = load i8*, i8** %payload.addr, align 8
  %4 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 4
  store i8* %3, i8** %streamBuffer, align 8
  %5 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %frame_bitoffset = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %5, i32 0, i32 2
  store i32 0, i32* %frame_bitoffset, align 4
  %6 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call1 = call i32 @u_1(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.46, i32 0, i32 0), %struct.Bitstream* %6)
  store i32 %call1, i32* %film_grain_characteristics_cancel_flag, align 4
  %7 = load i32, i32* %film_grain_characteristics_cancel_flag, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end.44, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call2 = call i32 @u_v(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), %struct.Bitstream* %8)
  store i32 %call2, i32* %model_id, align 4
  %9 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call3 = call i32 @u_1(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.48, i32 0, i32 0), %struct.Bitstream* %9)
  store i32 %call3, i32* %separate_colour_description_present_flag, align 4
  %10 = load i32, i32* %separate_colour_description_present_flag, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %11 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call6 = call i32 @u_v(i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.49, i32 0, i32 0), %struct.Bitstream* %11)
  store i32 %call6, i32* %film_grain_bit_depth_luma_minus8, align 4
  %12 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call7 = call i32 @u_v(i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.50, i32 0, i32 0), %struct.Bitstream* %12)
  store i32 %call7, i32* %film_grain_bit_depth_chroma_minus8, align 4
  %13 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call8 = call i32 @u_v(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.51, i32 0, i32 0), %struct.Bitstream* %13)
  store i32 %call8, i32* %film_grain_full_range_flag, align 4
  %14 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call9 = call i32 @u_v(i32 8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.52, i32 0, i32 0), %struct.Bitstream* %14)
  store i32 %call9, i32* %film_grain_colour_primaries, align 4
  %15 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call10 = call i32 @u_v(i32 8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.53, i32 0, i32 0), %struct.Bitstream* %15)
  store i32 %call10, i32* %film_grain_transfer_characteristics, align 4
  %16 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call11 = call i32 @u_v(i32 8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.54, i32 0, i32 0), %struct.Bitstream* %16)
  store i32 %call11, i32* %film_grain_matrix_coefficients, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %17 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call12 = call i32 @u_v(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i32 0, i32 0), %struct.Bitstream* %17)
  store i32 %call12, i32* %blending_mode_id, align 4
  %18 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call13 = call i32 @u_v(i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i32 0, i32 0), %struct.Bitstream* %18)
  store i32 %call13, i32* %log2_scale_factor, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %19 = load i32, i32* %c, align 4
  %cmp = icmp slt i32 %19, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call14 = call i32 @u_1(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.57, i32 0, i32 0), %struct.Bitstream* %20)
  %21 = load i32, i32* %c, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %comp_model_present_flag, i32 0, i64 %idxprom
  store i32 %call14, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %c, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %c, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.40, %for.end
  %23 = load i32, i32* %c, align 4
  %cmp16 = icmp slt i32 %23, 3
  br i1 %cmp16, label %for.body.17, label %for.end.42

for.body.17:                                      ; preds = %for.cond.15
  %24 = load i32, i32* %c, align 4
  %idxprom18 = sext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %comp_model_present_flag, i32 0, i64 %idxprom18
  %25 = load i32, i32* %arrayidx19, align 4
  %tobool20 = icmp ne i32 %25, 0
  br i1 %tobool20, label %if.then.21, label %if.end.39

if.then.21:                                       ; preds = %for.body.17
  %26 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call22 = call i32 @u_v(i32 8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.58, i32 0, i32 0), %struct.Bitstream* %26)
  store i32 %call22, i32* %num_intensity_intervals_minus1, align 4
  %27 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call23 = call i32 @u_v(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.59, i32 0, i32 0), %struct.Bitstream* %27)
  store i32 %call23, i32* %num_model_values_minus1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.36, %if.then.21
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %num_intensity_intervals_minus1, align 4
  %cmp25 = icmp sle i32 %28, %29
  br i1 %cmp25, label %for.body.26, label %for.end.38

for.body.26:                                      ; preds = %for.cond.24
  %30 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call27 = call i32 @u_v(i32 8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.60, i32 0, i32 0), %struct.Bitstream* %30)
  store i32 %call27, i32* %intensity_interval_lower_bound, align 4
  %31 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call28 = call i32 @u_v(i32 8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.61, i32 0, i32 0), %struct.Bitstream* %31)
  store i32 %call28, i32* %intensity_interval_upper_bound, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.33, %for.body.26
  %32 = load i32, i32* %j, align 4
  %33 = load i32, i32* %num_model_values_minus1, align 4
  %cmp30 = icmp sle i32 %32, %33
  br i1 %cmp30, label %for.body.31, label %for.end.35

for.body.31:                                      ; preds = %for.cond.29
  %34 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call32 = call i32 @se_v(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.62, i32 0, i32 0), %struct.Bitstream* %34)
  store i32 %call32, i32* %comp_model_value, align 4
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.31
  %35 = load i32, i32* %j, align 4
  %inc34 = add nsw i32 %35, 1
  store i32 %inc34, i32* %j, align 4
  br label %for.cond.29

for.end.35:                                       ; preds = %for.cond.29
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.end.35
  %36 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %36, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.24

for.end.38:                                       ; preds = %for.cond.24
  br label %if.end.39

if.end.39:                                        ; preds = %for.end.38, %for.body.17
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end.39
  %37 = load i32, i32* %c, align 4
  %inc41 = add nsw i32 %37, 1
  store i32 %inc41, i32* %c, align 4
  br label %for.cond.15

for.end.42:                                       ; preds = %for.cond.15
  %38 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call43 = call i32 @ue_v(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.63, i32 0, i32 0), %struct.Bitstream* %38)
  store i32 %call43, i32* %film_grain_characteristics_repetition_period, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %for.end.42, %entry
  %39 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %40 = bitcast %struct.Bitstream* %39 to i8*
  call void @free(i8* %40) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @interpret_deblocking_filter_display_preference_info(i8* %payload, i32 %size, %struct.img_par* %img) #0 {
entry:
  %payload.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  %deblocking_display_preference_cancel_flag = alloca i32, align 4
  %display_prior_to_deblocking_preferred_flag = alloca i32, align 4
  %dec_frame_buffering_constraint_flag = alloca i32, align 4
  %deblocking_display_preference_repetition_period = alloca i32, align 4
  %buf = alloca %struct.Bitstream*, align 8
  store i8* %payload, i8** %payload.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  %call = call noalias i8* @malloc(i64 32) #4
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** %buf, align 8
  %1 = load i32, i32* %size.addr, align 4
  %2 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 3
  store i32 %1, i32* %bitstream_length, align 4
  %3 = load i8*, i8** %payload.addr, align 8
  %4 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 4
  store i8* %3, i8** %streamBuffer, align 8
  %5 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %frame_bitoffset = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %5, i32 0, i32 2
  store i32 0, i32* %frame_bitoffset, align 4
  %6 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call1 = call i32 @u_1(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.64, i32 0, i32 0), %struct.Bitstream* %6)
  store i32 %call1, i32* %deblocking_display_preference_cancel_flag, align 4
  %7 = load i32, i32* %deblocking_display_preference_cancel_flag, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call2 = call i32 @u_1(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.65, i32 0, i32 0), %struct.Bitstream* %8)
  store i32 %call2, i32* %display_prior_to_deblocking_preferred_flag, align 4
  %9 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call3 = call i32 @u_1(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.66, i32 0, i32 0), %struct.Bitstream* %9)
  store i32 %call3, i32* %dec_frame_buffering_constraint_flag, align 4
  %10 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call4 = call i32 @ue_v(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.67, i32 0, i32 0), %struct.Bitstream* %10)
  store i32 %call4, i32* %deblocking_display_preference_repetition_period, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %12 = bitcast %struct.Bitstream* %11 to i8*
  call void @free(i8* %12) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @interpret_stereo_video_info_info(i8* %payload, i32 %size, %struct.img_par* %img) #0 {
entry:
  %payload.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  %field_views_flags = alloca i32, align 4
  %top_field_is_left_view_flag = alloca i32, align 4
  %current_frame_is_left_view_flag = alloca i32, align 4
  %next_frame_is_second_view_flag = alloca i32, align 4
  %left_view_self_contained_flag = alloca i32, align 4
  %right_view_self_contained_flag = alloca i32, align 4
  %buf = alloca %struct.Bitstream*, align 8
  store i8* %payload, i8** %payload.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  %call = call noalias i8* @malloc(i64 32) #4
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** %buf, align 8
  %1 = load i32, i32* %size.addr, align 4
  %2 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 3
  store i32 %1, i32* %bitstream_length, align 4
  %3 = load i8*, i8** %payload.addr, align 8
  %4 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 4
  store i8* %3, i8** %streamBuffer, align 8
  %5 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %frame_bitoffset = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %5, i32 0, i32 2
  store i32 0, i32* %frame_bitoffset, align 4
  %6 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call1 = call i32 @u_1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.68, i32 0, i32 0), %struct.Bitstream* %6)
  store i32 %call1, i32* %field_views_flags, align 4
  %7 = load i32, i32* %field_views_flags, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call2 = call i32 @u_1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.69, i32 0, i32 0), %struct.Bitstream* %8)
  store i32 %call2, i32* %top_field_is_left_view_flag, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call3 = call i32 @u_1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.70, i32 0, i32 0), %struct.Bitstream* %9)
  store i32 %call3, i32* %current_frame_is_left_view_flag, align 4
  %10 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call4 = call i32 @u_1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.71, i32 0, i32 0), %struct.Bitstream* %10)
  store i32 %call4, i32* %next_frame_is_second_view_flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call5 = call i32 @u_1(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.72, i32 0, i32 0), %struct.Bitstream* %11)
  store i32 %call5, i32* %left_view_self_contained_flag, align 4
  %12 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call6 = call i32 @u_1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.73, i32 0, i32 0), %struct.Bitstream* %12)
  store i32 %call6, i32* %right_view_self_contained_flag, align 4
  %13 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %14 = bitcast %struct.Bitstream* %13 to i8*
  call void @free(i8* %14) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @interpret_reserved_info(i8* %payload, i32 %size, %struct.img_par* %img) #0 {
entry:
  %payload.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  %offset = alloca i32, align 4
  %payload_byte = alloca i8, align 1
  store i8* %payload, i8** %payload.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store i32 0, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %offset, align 4
  %1 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %offset, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %payload.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  store i8 %4, i8* %payload_byte, align 1
  %5 = load i32, i32* %offset, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %offset, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @ue_v(i8*, %struct.Bitstream*) #2

declare i32 @get_mem3D(i8****, i32, i32, i32) #2

declare i32 @u_1(i8*, %struct.Bitstream*) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare void @free_mem3D(i8***, i32) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

declare i32 @u_v(i32, i8*, %struct.Bitstream*) #2

declare i32 @se_v(i8*, %struct.Bitstream*) #2

declare void @dec_ref_pic_marking(%struct.Bitstream*) #2

; Function Attrs: nounwind uwtable
define void @interpret_progressive_refinement_start_info(i8* %payload, i32 %size, %struct.img_par* %img) #0 {
entry:
  %payload.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  %progressive_refinement_id = alloca i32, align 4
  %num_refinement_steps_minus1 = alloca i32, align 4
  %buf = alloca %struct.Bitstream*, align 8
  store i8* %payload, i8** %payload.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  %call = call noalias i8* @malloc(i64 32) #4
  %0 = bitcast i8* %call to %struct.Bitstream*
  store %struct.Bitstream* %0, %struct.Bitstream** %buf, align 8
  %1 = load i32, i32* %size.addr, align 4
  %2 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 3
  store i32 %1, i32* %bitstream_length, align 4
  %3 = load i8*, i8** %payload.addr, align 8
  %4 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 4
  store i8* %3, i8** %streamBuffer, align 8
  %5 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %frame_bitoffset = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %5, i32 0, i32 2
  store i32 0, i32* %frame_bitoffset, align 4
  store i32 0, i32* @UsedBits, align 4
  %6 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call1 = call i32 @ue_v(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i32 0, i32 0), %struct.Bitstream* %6)
  store i32 %call1, i32* %progressive_refinement_id, align 4
  %7 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %call2 = call i32 @ue_v(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.42, i32 0, i32 0), %struct.Bitstream* %7)
  store i32 %call2, i32* %num_refinement_steps_minus1, align 4
  %8 = load %struct.Bitstream*, %struct.Bitstream** %buf, align 8
  %9 = bitcast %struct.Bitstream* %8 to i8*
  call void @free(i8* %9) #4
  ret void
}

declare i32 @CeilLog2(i32) #2

declare void @activate_sps(%struct.seq_parameter_set_rbsp_t*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare void @error(i8*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
