; ModuleID = 'header.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
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
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }

@assignSE2partition_NoDP = global [21 x i32] zeroinitializer, align 16
@assignSE2partition_DP = global [21 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@input = external global %struct.InputParameters*, align 8
@assignSE2partition = common global [2 x i32*] zeroinitializer, align 16
@img = external global %struct.ImageParameters*, align 8
@.str = private unnamed_addr constant [22 x i8] c"SH: first_mb_in_slice\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"SH: slice_type\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"SH: pic_parameter_set_id\00", align 1
@active_pps = external global %struct.pic_parameter_set_rbsp_t*, align 8
@log2_max_frame_num_minus4 = external global i32, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"SH: frame_num\00", align 1
@active_sps = external global %struct.seq_parameter_set_rbsp_t*, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"SH: field_pic_flag\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"SH: bottom_field_flag\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"SH: idr_pic_id\00", align 1
@log2_max_pic_order_cnt_lsb_minus4 = external global i32, align 4
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
@.str.19 = private unnamed_addr constant [19 x i8] c"SH: slice_qs_delta\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"SH: disable_deblocking_filter_idc\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"SH: slice_alpha_c0_offset_div2\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"SH: slice_beta_offset_div2\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"SH: slice_group_change_cycle\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"DPA: slice_id\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"Picture Type not supported!\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"SH: ref_pic_list_reordering_flag_l0\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"SH: remapping_of_pic_num_idc\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"SH: abs_diff_pic_num_minus1_l0\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"SH: long_term_pic_idx_l0\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"SH: ref_pic_list_reordering_flag_l1\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"SH: abs_diff_pic_num_minus1_l1\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"SH: long_term_pic_idx_l1\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"SH: no_output_of_prior_pics_flag\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"SH: long_term_reference_flag\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"SH: adaptive_ref_pic_buffering_flag\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"Error encoding MMCO commands\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"SH: memory_management_control_operation\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"SH: difference_of_pic_nums_minus1\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"SH: long_term_pic_num\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"SH: long_term_frame_idx\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"SH: max_long_term_pic_idx_plus1\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"SH: luma_log_weight_denom\00", align 1
@luma_log_weight_denom = external global i32, align 4
@.str.43 = private unnamed_addr constant [28 x i8] c"SH: chroma_log_weight_denom\00", align 1
@chroma_log_weight_denom = external global i32, align 4
@wp_weight = external global i32***, align 8
@wp_offset = external global i32***, align 8
@.str.44 = private unnamed_addr constant [24 x i8] c"SH: luma_weight_flag_l0\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"SH: luma_weight_l0\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"SH: luma_offset_l0\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"chroma_weight_flag_l0\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"chroma_weight_l0\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"chroma_offset_l0\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"SH: luma_weight_flag_l1\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"SH: luma_weight_l1\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"SH: luma_offset_l1\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"chroma_weight_flag_l1\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"chroma_weight_l1\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"chroma_offset_l1\00", align 1

; Function Attrs: nounwind uwtable
define i32 @SliceHeader() #0 {
entry:
  %dP_nr = alloca i32, align 4
  %partition = alloca %struct.datapartition*, align 8
  %currSlice = alloca %struct.Slice*, align 8
  %len = alloca i32, align 4
  %field_pic_flag = alloca i32, align 4
  %bottom_field_flag = alloca i32, align 4
  %num_bits_slice_group_change_cycle = alloca i32, align 4
  %numtmp = alloca float, align 4
  %override_flag = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 61
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
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 50
  %6 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %6, i32 0, i32 6
  %7 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx3 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %7, i64 %idxprom2
  store %struct.datapartition* %arrayidx3, %struct.datapartition** %partition, align 8
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 50
  %9 = load %struct.Slice*, %struct.Slice** %currentSlice4, align 8
  store %struct.Slice* %9, %struct.Slice** %currSlice, align 8
  store i32 0, i32* %len, align 4
  store i32 0, i32* %field_pic_flag, align 4
  store i32 0, i32* %bottom_field_flag, align 4
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 90
  %11 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 3
  %13 = load i32, i32* %current_mb_nr, align 4
  %shr = ashr i32 %13, 1
  %14 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call = call i32 @ue_v(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 %shr, %struct.datapartition* %14)
  store i32 %call, i32* %len, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 3
  %16 = load i32, i32* %current_mb_nr5, align 4
  %17 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call6 = call i32 @ue_v(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 %16, %struct.datapartition* %17)
  store i32 %call6, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call7 = call i32 @get_picture_type()
  %18 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call8 = call i32 @ue_v(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 %call7, %struct.datapartition* %18)
  %19 = load i32, i32* %len, align 4
  %add = add nsw i32 %19, %call8
  store i32 %add, i32* %len, align 4
  %20 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %pic_parameter_set_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %20, i32 0, i32 1
  %21 = load i32, i32* %pic_parameter_set_id, align 4
  %22 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call9 = call i32 @ue_v(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i32 %21, %struct.datapartition* %22)
  %23 = load i32, i32* %len, align 4
  %add10 = add nsw i32 %23, %call9
  store i32 %add10, i32* %len, align 4
  %24 = load i32, i32* @log2_max_frame_num_minus4, align 4
  %add11 = add i32 %24, 4
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 105
  %26 = load i32, i32* %frame_num, align 4
  %27 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call12 = call i32 @u_v(i32 %add11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %26, %struct.datapartition* %27)
  %28 = load i32, i32* %len, align 4
  %add13 = add nsw i32 %28, %call12
  store i32 %add13, i32* %len, align 4
  %29 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %29, i32 0, i32 25
  %30 = load i32, i32* %frame_mbs_only_flag, align 4
  %tobool14 = icmp ne i32 %30, 0
  br i1 %tobool14, label %if.end.28, label %if.then.15

if.then.15:                                       ; preds = %if.end
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 7
  %32 = load i32, i32* %structure, align 4
  %cmp = icmp eq i32 %32, 1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.15
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure16 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 7
  %34 = load i32, i32* %structure16, align 4
  %cmp17 = icmp eq i32 %34, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.15
  %35 = phi i1 [ true, %if.then.15 ], [ %cmp17, %lor.rhs ]
  %cond = select i1 %35, i32 1, i32 0
  store i32 %cond, i32* %field_pic_flag, align 4
  %36 = load i32, i32* %field_pic_flag, align 4
  %37 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call18 = call i32 @u_1(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i32 %36, %struct.datapartition* %37)
  %38 = load i32, i32* %len, align 4
  %add19 = add nsw i32 %38, %call18
  store i32 %add19, i32* %len, align 4
  %39 = load i32, i32* %field_pic_flag, align 4
  %tobool20 = icmp ne i32 %39, 0
  br i1 %tobool20, label %if.then.21, label %if.end.27

if.then.21:                                       ; preds = %lor.end
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure22 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 7
  %41 = load i32, i32* %structure22, align 4
  %cmp23 = icmp eq i32 %41, 2
  %cond24 = select i1 %cmp23, i32 1, i32 0
  store i32 %cond24, i32* %bottom_field_flag, align 4
  %42 = load i32, i32* %bottom_field_flag, align 4
  %43 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call25 = call i32 @u_1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32 %42, %struct.datapartition* %43)
  %44 = load i32, i32* %len, align 4
  %add26 = add nsw i32 %44, %call25
  store i32 %add26, i32* %len, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.21, %lor.end
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end
  %45 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %45, i32 0, i32 49
  %46 = load %struct.Picture*, %struct.Picture** %currentPicture, align 8
  %idr_flag = getelementptr inbounds %struct.Picture, %struct.Picture* %46, i32 0, i32 1
  %47 = load i32, i32* %idr_flag, align 4
  %tobool29 = icmp ne i32 %47, 0
  br i1 %tobool29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.end.28
  %48 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %48, i32 0, i32 0
  %49 = load i32, i32* %number, align 4
  %rem = srem i32 %49, 2
  %50 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call31 = call i32 @ue_v(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32 %rem, %struct.datapartition* %50)
  %51 = load i32, i32* %len, align 4
  %add32 = add nsw i32 %51, %call31
  store i32 %add32, i32* %len, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %if.end.28
  %52 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_order_cnt_type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %52, i32 0, i32 91
  %53 = load i32, i32* %pic_order_cnt_type, align 4
  %cmp34 = icmp eq i32 %53, 0
  br i1 %cmp34, label %if.then.35, label %if.end.73

if.then.35:                                       ; preds = %if.end.33
  %54 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag36 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %54, i32 0, i32 25
  %55 = load i32, i32* %frame_mbs_only_flag36, align 4
  %tobool37 = icmp ne i32 %55, 0
  br i1 %tobool37, label %if.then.38, label %if.else.40

if.then.38:                                       ; preds = %if.then.35
  %56 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %56, i32 0, i32 101
  %57 = load i32, i32* %toppoc, align 4
  %58 = load i32, i32* @log2_max_pic_order_cnt_lsb_minus4, align 4
  %add39 = add i32 %58, 4
  %shl = shl i32 -1, %add39
  %neg = xor i32 %shl, -1
  %and = and i32 %57, %neg
  %59 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_order_cnt_lsb = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %59, i32 0, i32 97
  store i32 %and, i32* %pic_order_cnt_lsb, align 4
  br label %if.end.62

if.else.40:                                       ; preds = %if.then.35
  %60 = load i32, i32* %field_pic_flag, align 4
  %tobool41 = icmp ne i32 %60, 0
  br i1 %tobool41, label %lor.lhs.false, label %if.then.44

lor.lhs.false:                                    ; preds = %if.else.40
  %61 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure42 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %61, i32 0, i32 7
  %62 = load i32, i32* %structure42, align 4
  %cmp43 = icmp eq i32 %62, 1
  br i1 %cmp43, label %if.then.44, label %if.else.51

if.then.44:                                       ; preds = %lor.lhs.false, %if.else.40
  %63 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc45 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %63, i32 0, i32 101
  %64 = load i32, i32* %toppoc45, align 4
  %65 = load i32, i32* @log2_max_pic_order_cnt_lsb_minus4, align 4
  %add46 = add i32 %65, 4
  %shl47 = shl i32 -1, %add46
  %neg48 = xor i32 %shl47, -1
  %and49 = and i32 %64, %neg48
  %66 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_order_cnt_lsb50 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %66, i32 0, i32 97
  store i32 %and49, i32* %pic_order_cnt_lsb50, align 4
  br label %if.end.61

if.else.51:                                       ; preds = %lor.lhs.false
  %67 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure52 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %67, i32 0, i32 7
  %68 = load i32, i32* %structure52, align 4
  %cmp53 = icmp eq i32 %68, 2
  br i1 %cmp53, label %if.then.54, label %if.end.60

if.then.54:                                       ; preds = %if.else.51
  %69 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %69, i32 0, i32 102
  %70 = load i32, i32* %bottompoc, align 4
  %71 = load i32, i32* @log2_max_pic_order_cnt_lsb_minus4, align 4
  %add55 = add i32 %71, 4
  %shl56 = shl i32 -1, %add55
  %neg57 = xor i32 %shl56, -1
  %and58 = and i32 %70, %neg57
  %72 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_order_cnt_lsb59 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %72, i32 0, i32 97
  store i32 %and58, i32* %pic_order_cnt_lsb59, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.54, %if.else.51
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.44
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.38
  %73 = load i32, i32* @log2_max_pic_order_cnt_lsb_minus4, align 4
  %add63 = add i32 %73, 4
  %74 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_order_cnt_lsb64 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %74, i32 0, i32 97
  %75 = load i32, i32* %pic_order_cnt_lsb64, align 4
  %76 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call65 = call i32 @u_v(i32 %add63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i32 %75, %struct.datapartition* %76)
  %77 = load i32, i32* %len, align 4
  %add66 = add nsw i32 %77, %call65
  store i32 %add66, i32* %len, align 4
  %78 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_order_present_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %78, i32 0, i32 112
  %79 = load i32, i32* %pic_order_present_flag, align 4
  %tobool67 = icmp ne i32 %79, 0
  br i1 %tobool67, label %land.lhs.true, label %if.end.72

land.lhs.true:                                    ; preds = %if.end.62
  %80 = load i32, i32* %field_pic_flag, align 4
  %tobool68 = icmp ne i32 %80, 0
  br i1 %tobool68, label %if.end.72, label %if.then.69

if.then.69:                                       ; preds = %land.lhs.true
  %81 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt_bottom = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %81, i32 0, i32 98
  %82 = load i32, i32* %delta_pic_order_cnt_bottom, align 4
  %83 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call70 = call i32 @se_v(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), i32 %82, %struct.datapartition* %83)
  %84 = load i32, i32* %len, align 4
  %add71 = add nsw i32 %84, %call70
  store i32 %add71, i32* %len, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.69, %land.lhs.true, %if.end.62
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end.33
  %85 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_order_cnt_type74 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %85, i32 0, i32 91
  %86 = load i32, i32* %pic_order_cnt_type74, align 4
  %cmp75 = icmp eq i32 %86, 1
  br i1 %cmp75, label %land.lhs.true.76, label %if.end.92

land.lhs.true.76:                                 ; preds = %if.end.73
  %87 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_always_zero_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %87, i32 0, i32 92
  %88 = load i32, i32* %delta_pic_order_always_zero_flag, align 4
  %tobool77 = icmp ne i32 %88, 0
  br i1 %tobool77, label %if.end.92, label %if.then.78

if.then.78:                                       ; preds = %land.lhs.true.76
  %89 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %89, i32 0, i32 99
  %arrayidx79 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt, i32 0, i64 0
  %90 = load i32, i32* %arrayidx79, align 4
  %91 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call80 = call i32 @se_v(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i32 %90, %struct.datapartition* %91)
  %92 = load i32, i32* %len, align 4
  %add81 = add nsw i32 %92, %call80
  store i32 %add81, i32* %len, align 4
  %93 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pic_order_present_flag82 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %93, i32 0, i32 112
  %94 = load i32, i32* %pic_order_present_flag82, align 4
  %tobool83 = icmp ne i32 %94, 0
  br i1 %tobool83, label %land.lhs.true.84, label %if.end.91

land.lhs.true.84:                                 ; preds = %if.then.78
  %95 = load i32, i32* %field_pic_flag, align 4
  %tobool85 = icmp ne i32 %95, 0
  br i1 %tobool85, label %if.end.91, label %if.then.86

if.then.86:                                       ; preds = %land.lhs.true.84
  %96 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt87 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %96, i32 0, i32 99
  %arrayidx88 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt87, i32 0, i64 1
  %97 = load i32, i32* %arrayidx88, align 4
  %98 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call89 = call i32 @se_v(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), i32 %97, %struct.datapartition* %98)
  %99 = load i32, i32* %len, align 4
  %add90 = add nsw i32 %99, %call89
  store i32 %add90, i32* %len, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.86, %land.lhs.true.84, %if.then.78
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %land.lhs.true.76, %if.end.73
  %100 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %redundant_slice_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %100, i32 0, i32 119
  %101 = load i32, i32* %redundant_slice_flag, align 4
  %tobool93 = icmp ne i32 %101, 0
  br i1 %tobool93, label %if.then.94, label %if.end.97

if.then.94:                                       ; preds = %if.end.92
  %102 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %redundant_pic_cnt = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %102, i32 0, i32 89
  %103 = load i32, i32* %redundant_pic_cnt, align 4
  %104 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call95 = call i32 @ue_v(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 %103, %struct.datapartition* %104)
  %105 = load i32, i32* %len, align 4
  %add96 = add nsw i32 %105, %call95
  store i32 %add96, i32* %len, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.94, %if.end.92
  %106 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %106, i32 0, i32 6
  %107 = load i32, i32* %type, align 4
  %cmp98 = icmp eq i32 %107, 1
  br i1 %cmp98, label %if.then.99, label %if.end.102

if.then.99:                                       ; preds = %if.end.97
  %108 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %direct_spatial_mv_pred_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %108, i32 0, i32 78
  %109 = load i32, i32* %direct_spatial_mv_pred_flag, align 4
  %110 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call100 = call i32 @u_1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0), i32 %109, %struct.datapartition* %110)
  %111 = load i32, i32* %len, align 4
  %add101 = add nsw i32 %111, %call100
  store i32 %add101, i32* %len, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.99, %if.end.97
  %112 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type103 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %112, i32 0, i32 6
  %113 = load i32, i32* %type103, align 4
  %cmp104 = icmp eq i32 %113, 0
  br i1 %cmp104, label %if.then.111, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %if.end.102
  %114 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type106 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %114, i32 0, i32 6
  %115 = load i32, i32* %type106, align 4
  %cmp107 = icmp eq i32 %115, 1
  br i1 %cmp107, label %if.then.111, label %lor.lhs.false.108

lor.lhs.false.108:                                ; preds = %lor.lhs.false.105
  %116 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type109 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %116, i32 0, i32 6
  %117 = load i32, i32* %type109, align 4
  %cmp110 = icmp eq i32 %117, 3
  br i1 %cmp110, label %if.then.111, label %if.end.148

if.then.111:                                      ; preds = %lor.lhs.false.108, %lor.lhs.false.105, %if.end.102
  %118 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type112 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %118, i32 0, i32 6
  %119 = load i32, i32* %type112, align 4
  %cmp113 = icmp eq i32 %119, 0
  br i1 %cmp113, label %if.then.117, label %lor.lhs.false.114

lor.lhs.false.114:                                ; preds = %if.then.111
  %120 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type115 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %120, i32 0, i32 6
  %121 = load i32, i32* %type115, align 4
  %cmp116 = icmp eq i32 %121, 3
  br i1 %cmp116, label %if.then.117, label %if.else.121

if.then.117:                                      ; preds = %lor.lhs.false.114, %if.then.111
  %122 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %122, i32 0, i32 79
  %123 = load i32, i32* %num_ref_idx_l0_active, align 4
  %124 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %num_ref_idx_l0_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %124, i32 0, i32 17
  %125 = load i32, i32* %num_ref_idx_l0_active_minus1, align 4
  %add118 = add nsw i32 %125, 1
  %cmp119 = icmp ne i32 %123, %add118
  %cond120 = select i1 %cmp119, i32 1, i32 0
  store i32 %cond120, i32* %override_flag, align 4
  br label %if.end.131

if.else.121:                                      ; preds = %lor.lhs.false.114
  %126 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active122 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %126, i32 0, i32 79
  %127 = load i32, i32* %num_ref_idx_l0_active122, align 4
  %128 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %num_ref_idx_l0_active_minus1123 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %128, i32 0, i32 17
  %129 = load i32, i32* %num_ref_idx_l0_active_minus1123, align 4
  %add124 = add nsw i32 %129, 1
  %cmp125 = icmp ne i32 %127, %add124
  br i1 %cmp125, label %lor.end.129, label %lor.rhs.126

lor.rhs.126:                                      ; preds = %if.else.121
  %130 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l1_active = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %130, i32 0, i32 80
  %131 = load i32, i32* %num_ref_idx_l1_active, align 4
  %132 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %num_ref_idx_l1_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %132, i32 0, i32 18
  %133 = load i32, i32* %num_ref_idx_l1_active_minus1, align 4
  %add127 = add nsw i32 %133, 1
  %cmp128 = icmp ne i32 %131, %add127
  br label %lor.end.129

lor.end.129:                                      ; preds = %lor.rhs.126, %if.else.121
  %134 = phi i1 [ true, %if.else.121 ], [ %cmp128, %lor.rhs.126 ]
  %cond130 = select i1 %134, i32 1, i32 0
  store i32 %cond130, i32* %override_flag, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %lor.end.129, %if.then.117
  %135 = load i32, i32* %override_flag, align 4
  %136 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call132 = call i32 @u_1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i32 0, i32 0), i32 %135, %struct.datapartition* %136)
  %137 = load i32, i32* %len, align 4
  %add133 = add nsw i32 %137, %call132
  store i32 %add133, i32* %len, align 4
  %138 = load i32, i32* %override_flag, align 4
  %tobool134 = icmp ne i32 %138, 0
  br i1 %tobool134, label %if.then.135, label %if.end.147

if.then.135:                                      ; preds = %if.end.131
  %139 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active136 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %139, i32 0, i32 79
  %140 = load i32, i32* %num_ref_idx_l0_active136, align 4
  %sub = sub nsw i32 %140, 1
  %141 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call137 = call i32 @ue_v(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0), i32 %sub, %struct.datapartition* %141)
  %142 = load i32, i32* %len, align 4
  %add138 = add nsw i32 %142, %call137
  store i32 %add138, i32* %len, align 4
  %143 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type139 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %143, i32 0, i32 6
  %144 = load i32, i32* %type139, align 4
  %cmp140 = icmp eq i32 %144, 1
  br i1 %cmp140, label %if.then.141, label %if.end.146

if.then.141:                                      ; preds = %if.then.135
  %145 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l1_active142 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %145, i32 0, i32 80
  %146 = load i32, i32* %num_ref_idx_l1_active142, align 4
  %sub143 = sub nsw i32 %146, 1
  %147 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call144 = call i32 @ue_v(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0), i32 %sub143, %struct.datapartition* %147)
  %148 = load i32, i32* %len, align 4
  %add145 = add nsw i32 %148, %call144
  store i32 %add145, i32* %len, align 4
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.141, %if.then.135
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.end.131
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %lor.lhs.false.108
  %call149 = call i32 @ref_pic_list_reordering()
  %149 = load i32, i32* %len, align 4
  %add150 = add nsw i32 %149, %call149
  store i32 %add150, i32* %len, align 4
  %150 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type151 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %150, i32 0, i32 6
  %151 = load i32, i32* %type151, align 4
  %cmp152 = icmp eq i32 %151, 0
  br i1 %cmp152, label %land.lhs.true.156, label %lor.lhs.false.153

lor.lhs.false.153:                                ; preds = %if.end.148
  %152 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type154 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %152, i32 0, i32 6
  %153 = load i32, i32* %type154, align 4
  %cmp155 = icmp eq i32 %153, 3
  br i1 %cmp155, label %land.lhs.true.156, label %lor.lhs.false.158

land.lhs.true.156:                                ; preds = %lor.lhs.false.153, %if.end.148
  %154 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %154, i32 0, i32 19
  %155 = load i32, i32* %weighted_pred_flag, align 4
  %tobool157 = icmp ne i32 %155, 0
  br i1 %tobool157, label %if.then.163, label %lor.lhs.false.158

lor.lhs.false.158:                                ; preds = %land.lhs.true.156, %lor.lhs.false.153
  %156 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type159 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %156, i32 0, i32 6
  %157 = load i32, i32* %type159, align 4
  %cmp160 = icmp eq i32 %157, 1
  br i1 %cmp160, label %land.lhs.true.161, label %if.end.166

land.lhs.true.161:                                ; preds = %lor.lhs.false.158
  %158 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %158, i32 0, i32 20
  %159 = load i32, i32* %weighted_bipred_idc, align 4
  %cmp162 = icmp eq i32 %159, 1
  br i1 %cmp162, label %if.then.163, label %if.end.166

if.then.163:                                      ; preds = %land.lhs.true.161, %land.lhs.true.156
  %call164 = call i32 @pred_weight_table()
  %160 = load i32, i32* %len, align 4
  %add165 = add nsw i32 %160, %call164
  store i32 %add165, i32* %len, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.163, %land.lhs.true.161, %lor.lhs.false.158
  %161 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %161, i32 0, i32 113
  %162 = load i32, i32* %nal_reference_idc, align 4
  %tobool167 = icmp ne i32 %162, 0
  br i1 %tobool167, label %if.then.168, label %if.end.171

if.then.168:                                      ; preds = %if.end.166
  %call169 = call i32 @dec_ref_pic_marking()
  %163 = load i32, i32* %len, align 4
  %add170 = add nsw i32 %163, %call169
  store i32 %add170, i32* %len, align 4
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.168, %if.end.166
  %164 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %164, i32 0, i32 59
  %165 = load i32, i32* %symbol_mode, align 4
  %cmp172 = icmp eq i32 %165, 1
  br i1 %cmp172, label %land.lhs.true.173, label %if.end.179

land.lhs.true.173:                                ; preds = %if.end.171
  %166 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type174 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %166, i32 0, i32 6
  %167 = load i32, i32* %type174, align 4
  %cmp175 = icmp ne i32 %167, 2
  br i1 %cmp175, label %if.then.176, label %if.end.179

if.then.176:                                      ; preds = %land.lhs.true.173
  %168 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %model_number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %168, i32 0, i32 118
  %169 = load i32, i32* %model_number, align 4
  %170 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call177 = call i32 @ue_v(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i32 %169, %struct.datapartition* %170)
  %171 = load i32, i32* %len, align 4
  %add178 = add nsw i32 %171, %call177
  store i32 %add178, i32* %len, align 4
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.176, %land.lhs.true.173, %if.end.171
  %172 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %qp = getelementptr inbounds %struct.Slice, %struct.Slice* %172, i32 0, i32 1
  %173 = load i32, i32* %qp, align 4
  %sub180 = sub nsw i32 %173, 26
  %174 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %pic_init_qp_minus26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %174, i32 0, i32 21
  %175 = load i32, i32* %pic_init_qp_minus26, align 4
  %sub181 = sub nsw i32 %sub180, %175
  %176 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call182 = call i32 @se_v(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i32 %sub181, %struct.datapartition* %176)
  %177 = load i32, i32* %len, align 4
  %add183 = add nsw i32 %177, %call182
  store i32 %add183, i32* %len, align 4
  %178 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type184 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %178, i32 0, i32 6
  %179 = load i32, i32* %type184, align 4
  %cmp185 = icmp eq i32 %179, 3
  br i1 %cmp185, label %if.then.186, label %if.end.196

if.then.186:                                      ; preds = %if.end.179
  %180 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type187 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %180, i32 0, i32 6
  %181 = load i32, i32* %type187, align 4
  %cmp188 = icmp eq i32 %181, 3
  br i1 %cmp188, label %if.then.189, label %if.end.192

if.then.189:                                      ; preds = %if.then.186
  %182 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call190 = call i32 @u_1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i32 0, %struct.datapartition* %182)
  %183 = load i32, i32* %len, align 4
  %add191 = add nsw i32 %183, %call190
  store i32 %add191, i32* %len, align 4
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.189, %if.then.186
  %184 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qpsp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %184, i32 0, i32 11
  %185 = load i32, i32* %qpsp, align 4
  %sub193 = sub nsw i32 %185, 26
  %186 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call194 = call i32 @se_v(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), i32 %sub193, %struct.datapartition* %186)
  %187 = load i32, i32* %len, align 4
  %add195 = add nsw i32 %187, %call194
  store i32 %add195, i32* %len, align 4
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.192, %if.end.179
  %188 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %deblocking_filter_control_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %188, i32 0, i32 26
  %189 = load i32, i32* %deblocking_filter_control_present_flag, align 4
  %tobool197 = icmp ne i32 %189, 0
  br i1 %tobool197, label %if.then.198, label %if.end.210

if.then.198:                                      ; preds = %if.end.196
  %190 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LFDisableIdc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %190, i32 0, i32 75
  %191 = load i32, i32* %LFDisableIdc, align 4
  %192 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call199 = call i32 @ue_v(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i32 0, i32 0), i32 %191, %struct.datapartition* %192)
  %193 = load i32, i32* %len, align 4
  %add200 = add nsw i32 %193, %call199
  store i32 %add200, i32* %len, align 4
  %194 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LFDisableIdc201 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %194, i32 0, i32 75
  %195 = load i32, i32* %LFDisableIdc201, align 4
  %cmp202 = icmp ne i32 %195, 1
  br i1 %cmp202, label %if.then.203, label %if.end.209

if.then.203:                                      ; preds = %if.then.198
  %196 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LFAlphaC0Offset = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %196, i32 0, i32 76
  %197 = load i32, i32* %LFAlphaC0Offset, align 4
  %div = sdiv i32 %197, 2
  %198 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call204 = call i32 @se_v(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i32 0, i32 0), i32 %div, %struct.datapartition* %198)
  %199 = load i32, i32* %len, align 4
  %add205 = add nsw i32 %199, %call204
  store i32 %add205, i32* %len, align 4
  %200 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %LFBetaOffset = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %200, i32 0, i32 77
  %201 = load i32, i32* %LFBetaOffset, align 4
  %div206 = sdiv i32 %201, 2
  %202 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call207 = call i32 @se_v(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i32 0, i32 0), i32 %div206, %struct.datapartition* %202)
  %203 = load i32, i32* %len, align 4
  %add208 = add nsw i32 %203, %call207
  store i32 %add208, i32* %len, align 4
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.203, %if.then.198
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %if.end.196
  %204 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %num_slice_groups_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %204, i32 0, i32 8
  %205 = load i32, i32* %num_slice_groups_minus1, align 4
  %cmp211 = icmp ugt i32 %205, 0
  br i1 %cmp211, label %land.lhs.true.212, label %if.end.230

land.lhs.true.212:                                ; preds = %if.end.210
  %206 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %slice_group_map_type = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %206, i32 0, i32 9
  %207 = load i32, i32* %slice_group_map_type, align 4
  %cmp213 = icmp uge i32 %207, 3
  br i1 %cmp213, label %land.lhs.true.214, label %if.end.230

land.lhs.true.214:                                ; preds = %land.lhs.true.212
  %208 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %slice_group_map_type215 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %208, i32 0, i32 9
  %209 = load i32, i32* %slice_group_map_type215, align 4
  %cmp216 = icmp ule i32 %209, 5
  br i1 %cmp216, label %if.then.217, label %if.end.230

if.then.217:                                      ; preds = %land.lhs.true.214
  %210 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicHeightInMapUnits = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %210, i32 0, i32 107
  %211 = load i32, i32* %PicHeightInMapUnits, align 4
  %212 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %212, i32 0, i32 106
  %213 = load i32, i32* %PicWidthInMbs, align 4
  %mul = mul i32 %211, %213
  %conv = uitofp i32 %mul to float
  %214 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %slice_group_change_rate_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %214, i32 0, i32 14
  %215 = load i32, i32* %slice_group_change_rate_minus1, align 4
  %add218 = add i32 %215, 1
  %conv219 = uitofp i32 %add218 to float
  %div220 = fdiv float %conv, %conv219
  %add221 = fadd float %div220, 1.000000e+00
  store float %add221, float* %numtmp, align 4
  %216 = load float, float* %numtmp, align 4
  %conv222 = fpext float %216 to double
  %call223 = call double @log(double %conv222) #4
  %call224 = call double @log(double 2.000000e+00) #4
  %div225 = fdiv double %call223, %call224
  %call226 = call double @ceil(double %div225) #5
  %conv227 = fptosi double %call226 to i32
  store i32 %conv227, i32* %num_bits_slice_group_change_cycle, align 4
  %217 = load i32, i32* %num_bits_slice_group_change_cycle, align 4
  %218 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %slice_group_change_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %218, i32 0, i32 147
  %219 = load i32, i32* %slice_group_change_cycle, align 4
  %220 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call228 = call i32 @u_v(i32 %217, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i32 0, i32 0), i32 %219, %struct.datapartition* %220)
  %221 = load i32, i32* %len, align 4
  %add229 = add nsw i32 %221, %call228
  store i32 %add229, i32* %len, align 4
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.217, %land.lhs.true.214, %land.lhs.true.212, %if.end.210
  %222 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode231 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %222, i32 0, i32 61
  %223 = load i32, i32* %partition_mode231, align 4
  %tobool232 = icmp ne i32 %223, 0
  br i1 %tobool232, label %land.lhs.true.233, label %if.end.240

land.lhs.true.233:                                ; preds = %if.end.230
  %224 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture234 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %224, i32 0, i32 49
  %225 = load %struct.Picture*, %struct.Picture** %currentPicture234, align 8
  %idr_flag235 = getelementptr inbounds %struct.Picture, %struct.Picture* %225, i32 0, i32 1
  %226 = load i32, i32* %idr_flag235, align 4
  %tobool236 = icmp ne i32 %226, 0
  br i1 %tobool236, label %if.end.240, label %if.then.237

if.then.237:                                      ; preds = %land.lhs.true.233
  %227 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_slice_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %227, i32 0, i32 5
  %228 = load i32, i32* %current_slice_nr, align 4
  %229 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call238 = call i32 @ue_v(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i32 %228, %struct.datapartition* %229)
  %230 = load i32, i32* %len, align 4
  %add239 = add nsw i32 %230, %call238
  store i32 %add239, i32* %len, align 4
  br label %if.end.240

if.end.240:                                       ; preds = %if.then.237, %land.lhs.true.233, %if.end.230
  %231 = load i32, i32* %len, align 4
  ret i32 %231
}

declare i32 @ue_v(i8*, i32, %struct.datapartition*) #1

declare i32 @u_v(i32, i8*, i32, %struct.datapartition*) #1

declare i32 @u_1(i8*, i32, %struct.datapartition*) #1

declare i32 @se_v(i8*, i32, %struct.datapartition*) #1

; Function Attrs: nounwind readnone
declare double @ceil(double) #2

; Function Attrs: nounwind
declare double @log(double) #3

; Function Attrs: nounwind uwtable
define i32 @get_picture_type() #0 {
entry:
  %retval = alloca i32, align 4
  %same_slicetype_for_whole_frame = alloca i32, align 4
  store i32 5, i32* %same_slicetype_for_whole_frame, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 6
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

declare void @error(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @Partition_BC_Header(i32 %PartNo) #0 {
entry:
  %PartNo.addr = alloca i32, align 4
  %partition = alloca %struct.datapartition*, align 8
  %symbol = alloca %struct.syntaxelement, align 8
  %sym = alloca %struct.syntaxelement*, align 8
  %len = alloca i32, align 4
  store i32 %PartNo, i32* %PartNo.addr, align 4
  %0 = load i32, i32* %PartNo.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 50
  %2 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %2, i32 0, i32 6
  %3 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx = getelementptr inbounds %struct.datapartition, %struct.datapartition* %3, i64 %idxprom
  store %struct.datapartition* %arrayidx, %struct.datapartition** %partition, align 8
  store %struct.syntaxelement* %symbol, %struct.syntaxelement** %sym, align 8
  store i32 0, i32* %len, align 4
  %4 = load %struct.syntaxelement*, %struct.syntaxelement** %sym, align 8
  %type = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %4, i32 0, i32 0
  store i32 0, i32* %type, align 4
  %5 = load %struct.syntaxelement*, %struct.syntaxelement** %sym, align 8
  %mapping = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %5, i32 0, i32 8
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8
  %6 = load %struct.syntaxelement*, %struct.syntaxelement** %sym, align 8
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %6, i32 0, i32 2
  store i32 0, i32* %value2, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_slice_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 5
  %8 = load i32, i32* %current_slice_nr, align 4
  %9 = load %struct.syntaxelement*, %struct.syntaxelement** %sym, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %9, i32 0, i32 1
  store i32 %8, i32* %value1, align 4
  %10 = load %struct.syntaxelement*, %struct.syntaxelement** %sym, align 8
  %11 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call = call i32 @writeSyntaxElement_UVLC(%struct.syntaxelement* %10, %struct.datapartition* %11)
  %12 = load i32, i32* %len, align 4
  %add = add nsw i32 %12, %call
  store i32 %add, i32* %len, align 4
  %13 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %redundant_pic_cnt_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %13, i32 0, i32 28
  %14 = load i32, i32* %redundant_pic_cnt_present_flag, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 50
  %16 = load %struct.Slice*, %struct.Slice** %currentSlice1, align 8
  %picture_id = getelementptr inbounds %struct.Slice, %struct.Slice* %16, i32 0, i32 0
  %17 = load i32, i32* %picture_id, align 4
  %18 = load %struct.syntaxelement*, %struct.syntaxelement** %sym, align 8
  %value12 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %18, i32 0, i32 1
  store i32 %17, i32* %value12, align 4
  %19 = load %struct.syntaxelement*, %struct.syntaxelement** %sym, align 8
  %20 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call3 = call i32 @writeSyntaxElement_UVLC(%struct.syntaxelement* %19, %struct.datapartition* %20)
  %21 = load i32, i32* %len, align 4
  %add4 = add nsw i32 %21, %call3
  store i32 %add4, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load i32, i32* %len, align 4
  ret i32 %22
}

declare void @ue_linfo(i32, i32, i32*, i32*) #1

declare i32 @writeSyntaxElement_UVLC(%struct.syntaxelement*, %struct.datapartition*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ref_pic_list_reordering() #0 {
entry:
  %dP_nr = alloca i32, align 4
  %partition = alloca %struct.datapartition*, align 8
  %currSlice = alloca %struct.Slice*, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 61
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
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 50
  %6 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %6, i32 0, i32 6
  %7 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx3 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %7, i64 %idxprom2
  store %struct.datapartition* %arrayidx3, %struct.datapartition** %partition, align 8
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 50
  %9 = load %struct.Slice*, %struct.Slice** %currentSlice4, align 8
  store %struct.Slice* %9, %struct.Slice** %currSlice, align 8
  store i32 0, i32* %len, align 4
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 6
  %11 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %11, 2
  br i1 %cmp, label %if.then, label %if.end.39

if.then:                                          ; preds = %entry
  %12 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %ref_pic_list_reordering_flag_l0 = getelementptr inbounds %struct.Slice, %struct.Slice* %12, i32 0, i32 10
  %13 = load i32, i32* %ref_pic_list_reordering_flag_l0, align 4
  %14 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call = call i32 @u_1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i32 0, i32 0), i32 %13, %struct.datapartition* %14)
  %15 = load i32, i32* %len, align 4
  %add = add nsw i32 %15, %call
  store i32 %add, i32* %len, align 4
  %16 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %ref_pic_list_reordering_flag_l05 = getelementptr inbounds %struct.Slice, %struct.Slice* %16, i32 0, i32 10
  %17 = load i32, i32* %ref_pic_list_reordering_flag_l05, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.6, label %if.end.38

if.then.6:                                        ; preds = %if.then
  store i32 -1, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.6
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %19 to i64
  %20 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %remapping_of_pic_nums_idc_l0 = getelementptr inbounds %struct.Slice, %struct.Slice* %20, i32 0, i32 11
  %21 = load i32*, i32** %remapping_of_pic_nums_idc_l0, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %21, i64 %idxprom7
  %22 = load i32, i32* %arrayidx8, align 4
  %23 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call9 = call i32 @ue_v(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i32 0, i32 0), i32 %22, %struct.datapartition* %23)
  %24 = load i32, i32* %len, align 4
  %add10 = add nsw i32 %24, %call9
  store i32 %add10, i32* %len, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %25 to i64
  %26 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %remapping_of_pic_nums_idc_l012 = getelementptr inbounds %struct.Slice, %struct.Slice* %26, i32 0, i32 11
  %27 = load i32*, i32** %remapping_of_pic_nums_idc_l012, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %27, i64 %idxprom11
  %28 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp eq i32 %28, 0
  br i1 %cmp14, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %29 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %29 to i64
  %30 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %remapping_of_pic_nums_idc_l016 = getelementptr inbounds %struct.Slice, %struct.Slice* %30, i32 0, i32 11
  %31 = load i32*, i32** %remapping_of_pic_nums_idc_l016, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %31, i64 %idxprom15
  %32 = load i32, i32* %arrayidx17, align 4
  %cmp18 = icmp eq i32 %32, 1
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %lor.lhs.false, %do.body
  %33 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %33 to i64
  %34 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %abs_diff_pic_num_minus1_l0 = getelementptr inbounds %struct.Slice, %struct.Slice* %34, i32 0, i32 12
  %35 = load i32*, i32** %abs_diff_pic_num_minus1_l0, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %35, i64 %idxprom20
  %36 = load i32, i32* %arrayidx21, align 4
  %37 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call22 = call i32 @ue_v(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i32 0, i32 0), i32 %36, %struct.datapartition* %37)
  %38 = load i32, i32* %len, align 4
  %add23 = add nsw i32 %38, %call22
  store i32 %add23, i32* %len, align 4
  br label %if.end.33

if.else:                                          ; preds = %lor.lhs.false
  %39 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %39 to i64
  %40 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %remapping_of_pic_nums_idc_l025 = getelementptr inbounds %struct.Slice, %struct.Slice* %40, i32 0, i32 11
  %41 = load i32*, i32** %remapping_of_pic_nums_idc_l025, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %41, i64 %idxprom24
  %42 = load i32, i32* %arrayidx26, align 4
  %cmp27 = icmp eq i32 %42, 2
  br i1 %cmp27, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %if.else
  %43 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %43 to i64
  %44 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %long_term_pic_idx_l0 = getelementptr inbounds %struct.Slice, %struct.Slice* %44, i32 0, i32 13
  %45 = load i32*, i32** %long_term_pic_idx_l0, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %45, i64 %idxprom29
  %46 = load i32, i32* %arrayidx30, align 4
  %47 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call31 = call i32 @ue_v(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0), i32 %46, %struct.datapartition* %47)
  %48 = load i32, i32* %len, align 4
  %add32 = add nsw i32 %48, %call31
  store i32 %add32, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.28, %if.else
  br label %if.end.33

if.end.33:                                        ; preds = %if.end, %if.then.19
  br label %do.cond

do.cond:                                          ; preds = %if.end.33
  %49 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %49 to i64
  %50 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %remapping_of_pic_nums_idc_l035 = getelementptr inbounds %struct.Slice, %struct.Slice* %50, i32 0, i32 11
  %51 = load i32*, i32** %remapping_of_pic_nums_idc_l035, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %51, i64 %idxprom34
  %52 = load i32, i32* %arrayidx36, align 4
  %cmp37 = icmp ne i32 %52, 3
  br i1 %cmp37, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.38

if.end.38:                                        ; preds = %do.end, %if.then
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %entry
  %53 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type40 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %53, i32 0, i32 6
  %54 = load i32, i32* %type40, align 4
  %cmp41 = icmp eq i32 %54, 1
  br i1 %cmp41, label %if.then.42, label %if.end.87

if.then.42:                                       ; preds = %if.end.39
  %55 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %ref_pic_list_reordering_flag_l1 = getelementptr inbounds %struct.Slice, %struct.Slice* %55, i32 0, i32 14
  %56 = load i32, i32* %ref_pic_list_reordering_flag_l1, align 4
  %57 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call43 = call i32 @u_1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i32 0, i32 0), i32 %56, %struct.datapartition* %57)
  %58 = load i32, i32* %len, align 4
  %add44 = add nsw i32 %58, %call43
  store i32 %add44, i32* %len, align 4
  %59 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %ref_pic_list_reordering_flag_l145 = getelementptr inbounds %struct.Slice, %struct.Slice* %59, i32 0, i32 14
  %60 = load i32, i32* %ref_pic_list_reordering_flag_l145, align 4
  %tobool46 = icmp ne i32 %60, 0
  br i1 %tobool46, label %if.then.47, label %if.end.86

if.then.47:                                       ; preds = %if.then.42
  store i32 -1, i32* %i, align 4
  br label %do.body.48

do.body.48:                                       ; preds = %do.cond.80, %if.then.47
  %61 = load i32, i32* %i, align 4
  %inc49 = add nsw i32 %61, 1
  store i32 %inc49, i32* %i, align 4
  %62 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %62 to i64
  %63 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %remapping_of_pic_nums_idc_l1 = getelementptr inbounds %struct.Slice, %struct.Slice* %63, i32 0, i32 15
  %64 = load i32*, i32** %remapping_of_pic_nums_idc_l1, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %64, i64 %idxprom50
  %65 = load i32, i32* %arrayidx51, align 4
  %66 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call52 = call i32 @ue_v(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i32 0, i32 0), i32 %65, %struct.datapartition* %66)
  %67 = load i32, i32* %len, align 4
  %add53 = add nsw i32 %67, %call52
  store i32 %add53, i32* %len, align 4
  %68 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %68 to i64
  %69 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %remapping_of_pic_nums_idc_l155 = getelementptr inbounds %struct.Slice, %struct.Slice* %69, i32 0, i32 15
  %70 = load i32*, i32** %remapping_of_pic_nums_idc_l155, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %70, i64 %idxprom54
  %71 = load i32, i32* %arrayidx56, align 4
  %cmp57 = icmp eq i32 %71, 0
  br i1 %cmp57, label %if.then.63, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %do.body.48
  %72 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %72 to i64
  %73 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %remapping_of_pic_nums_idc_l160 = getelementptr inbounds %struct.Slice, %struct.Slice* %73, i32 0, i32 15
  %74 = load i32*, i32** %remapping_of_pic_nums_idc_l160, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %74, i64 %idxprom59
  %75 = load i32, i32* %arrayidx61, align 4
  %cmp62 = icmp eq i32 %75, 1
  br i1 %cmp62, label %if.then.63, label %if.else.68

if.then.63:                                       ; preds = %lor.lhs.false.58, %do.body.48
  %76 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %76 to i64
  %77 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %abs_diff_pic_num_minus1_l1 = getelementptr inbounds %struct.Slice, %struct.Slice* %77, i32 0, i32 16
  %78 = load i32*, i32** %abs_diff_pic_num_minus1_l1, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %78, i64 %idxprom64
  %79 = load i32, i32* %arrayidx65, align 4
  %80 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call66 = call i32 @ue_v(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i32 0, i32 0), i32 %79, %struct.datapartition* %80)
  %81 = load i32, i32* %len, align 4
  %add67 = add nsw i32 %81, %call66
  store i32 %add67, i32* %len, align 4
  br label %if.end.79

if.else.68:                                       ; preds = %lor.lhs.false.58
  %82 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %82 to i64
  %83 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %remapping_of_pic_nums_idc_l170 = getelementptr inbounds %struct.Slice, %struct.Slice* %83, i32 0, i32 15
  %84 = load i32*, i32** %remapping_of_pic_nums_idc_l170, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %84, i64 %idxprom69
  %85 = load i32, i32* %arrayidx71, align 4
  %cmp72 = icmp eq i32 %85, 2
  br i1 %cmp72, label %if.then.73, label %if.end.78

if.then.73:                                       ; preds = %if.else.68
  %86 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %86 to i64
  %87 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %long_term_pic_idx_l1 = getelementptr inbounds %struct.Slice, %struct.Slice* %87, i32 0, i32 17
  %88 = load i32*, i32** %long_term_pic_idx_l1, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %88, i64 %idxprom74
  %89 = load i32, i32* %arrayidx75, align 4
  %90 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call76 = call i32 @ue_v(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0), i32 %89, %struct.datapartition* %90)
  %91 = load i32, i32* %len, align 4
  %add77 = add nsw i32 %91, %call76
  store i32 %add77, i32* %len, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.73, %if.else.68
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.63
  br label %do.cond.80

do.cond.80:                                       ; preds = %if.end.79
  %92 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %92 to i64
  %93 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %remapping_of_pic_nums_idc_l182 = getelementptr inbounds %struct.Slice, %struct.Slice* %93, i32 0, i32 15
  %94 = load i32*, i32** %remapping_of_pic_nums_idc_l182, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %94, i64 %idxprom81
  %95 = load i32, i32* %arrayidx83, align 4
  %cmp84 = icmp ne i32 %95, 3
  br i1 %cmp84, label %do.body.48, label %do.end.85

do.end.85:                                        ; preds = %do.cond.80
  br label %if.end.86

if.end.86:                                        ; preds = %do.end.85, %if.then.42
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.end.39
  %96 = load i32, i32* %len, align 4
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define internal i32 @dec_ref_pic_marking() #0 {
entry:
  %dP_nr = alloca i32, align 4
  %partition = alloca %struct.datapartition*, align 8
  %tmp_drpm = alloca %struct.DecRefPicMarking_s*, align 8
  %val = alloca i32, align 4
  %len = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 61
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
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 50
  %6 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %6, i32 0, i32 6
  %7 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx3 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %7, i64 %idxprom2
  store %struct.datapartition* %arrayidx3, %struct.datapartition** %partition, align 8
  store i32 0, i32* %len, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 49
  %9 = load %struct.Picture*, %struct.Picture** %currentPicture, align 8
  %idr_flag = getelementptr inbounds %struct.Picture, %struct.Picture* %9, i32 0, i32 1
  %10 = load i32, i32* %idr_flag, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %no_output_of_prior_pics_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 115
  %12 = load i32, i32* %no_output_of_prior_pics_flag, align 4
  %13 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call = call i32 @u_1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i32 0, i32 0), i32 %12, %struct.datapartition* %13)
  %14 = load i32, i32* %len, align 4
  %add = add nsw i32 %14, %call
  store i32 %add, i32* %len, align 4
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %long_term_reference_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 116
  %16 = load i32, i32* %long_term_reference_flag, align 4
  %17 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call4 = call i32 @u_1(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i32 0, i32 0), i32 %16, %struct.datapartition* %17)
  %18 = load i32, i32* %len, align 4
  %add5 = add nsw i32 %18, %call4
  store i32 %add5, i32* %len, align 4
  br label %if.end.51

if.else:                                          ; preds = %entry
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dec_ref_pic_marking_buffer = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 117
  %20 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer, align 8
  %cmp = icmp ne %struct.DecRefPicMarking_s* %20, null
  %conv = zext i1 %cmp to i32
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %adaptive_ref_pic_buffering_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 114
  store i32 %conv, i32* %adaptive_ref_pic_buffering_flag, align 4
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %adaptive_ref_pic_buffering_flag6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 114
  %23 = load i32, i32* %adaptive_ref_pic_buffering_flag6, align 4
  %24 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call7 = call i32 @u_1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i32 0, i32 0), i32 %23, %struct.datapartition* %24)
  %25 = load i32, i32* %len, align 4
  %add8 = add nsw i32 %25, %call7
  store i32 %add8, i32* %len, align 4
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %adaptive_ref_pic_buffering_flag9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 114
  %27 = load i32, i32* %adaptive_ref_pic_buffering_flag9, align 4
  %tobool10 = icmp ne i32 %27, 0
  br i1 %tobool10, label %if.then.11, label %if.end.50

if.then.11:                                       ; preds = %if.else
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dec_ref_pic_marking_buffer12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 117
  %29 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer12, align 8
  store %struct.DecRefPicMarking_s* %29, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.11
  %30 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %cmp13 = icmp eq %struct.DecRefPicMarking_s* %30, null
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %do.body
  call void @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i32 0, i32 0), i32 500)
  br label %if.end

if.end:                                           ; preds = %if.then.15, %do.body
  %31 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %memory_management_control_operation = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %31, i32 0, i32 0
  %32 = load i32, i32* %memory_management_control_operation, align 4
  store i32 %32, i32* %val, align 4
  %33 = load i32, i32* %val, align 4
  %34 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call16 = call i32 @ue_v(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i32 0, i32 0), i32 %33, %struct.datapartition* %34)
  %35 = load i32, i32* %len, align 4
  %add17 = add nsw i32 %35, %call16
  store i32 %add17, i32* %len, align 4
  %36 = load i32, i32* %val, align 4
  %cmp18 = icmp eq i32 %36, 1
  br i1 %cmp18, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %37 = load i32, i32* %val, align 4
  %cmp20 = icmp eq i32 %37, 3
  br i1 %cmp20, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %lor.lhs.false, %if.end
  %38 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %difference_of_pic_nums_minus1 = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %38, i32 0, i32 1
  %39 = load i32, i32* %difference_of_pic_nums_minus1, align 4
  %40 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call23 = call i32 @ue_v(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i32 0, i32 0), i32 %39, %struct.datapartition* %40)
  %add24 = add nsw i32 1, %call23
  %41 = load i32, i32* %len, align 4
  %add25 = add nsw i32 %41, %add24
  store i32 %add25, i32* %len, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %lor.lhs.false
  %42 = load i32, i32* %val, align 4
  %cmp27 = icmp eq i32 %42, 2
  br i1 %cmp27, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.26
  %43 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %long_term_pic_num = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %43, i32 0, i32 2
  %44 = load i32, i32* %long_term_pic_num, align 4
  %45 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call30 = call i32 @ue_v(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0), i32 %44, %struct.datapartition* %45)
  %46 = load i32, i32* %len, align 4
  %add31 = add nsw i32 %46, %call30
  store i32 %add31, i32* %len, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.26
  %47 = load i32, i32* %val, align 4
  %cmp33 = icmp eq i32 %47, 3
  br i1 %cmp33, label %if.then.38, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %if.end.32
  %48 = load i32, i32* %val, align 4
  %cmp36 = icmp eq i32 %48, 6
  br i1 %cmp36, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %lor.lhs.false.35, %if.end.32
  %49 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %long_term_frame_idx = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %49, i32 0, i32 3
  %50 = load i32, i32* %long_term_frame_idx, align 4
  %51 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call39 = call i32 @ue_v(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i32 0, i32 0), i32 %50, %struct.datapartition* %51)
  %52 = load i32, i32* %len, align 4
  %add40 = add nsw i32 %52, %call39
  store i32 %add40, i32* %len, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %lor.lhs.false.35
  %53 = load i32, i32* %val, align 4
  %cmp42 = icmp eq i32 %53, 4
  br i1 %cmp42, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.end.41
  %54 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %max_long_term_frame_idx_plus1 = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %54, i32 0, i32 4
  %55 = load i32, i32* %max_long_term_frame_idx_plus1, align 4
  %56 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call45 = call i32 @ue_v(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i32 0, i32 0), i32 %55, %struct.datapartition* %56)
  %57 = load i32, i32* %len, align 4
  %add46 = add nsw i32 %57, %call45
  store i32 %add46, i32* %len, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %if.end.41
  %58 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %Next = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %58, i32 0, i32 5
  %59 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %Next, align 8
  store %struct.DecRefPicMarking_s* %59, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.47
  %60 = load i32, i32* %val, align 4
  %cmp48 = icmp ne i32 %60, 0
  br i1 %cmp48, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.50

if.end.50:                                        ; preds = %do.end, %if.else
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then
  %61 = load i32, i32* %len, align 4
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define internal i32 @pred_weight_table() #0 {
entry:
  %dP_nr = alloca i32, align 4
  %partition = alloca %struct.datapartition*, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 61
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
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 50
  %6 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %6, i32 0, i32 6
  %7 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx3 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %7, i64 %idxprom2
  store %struct.datapartition* %arrayidx3, %struct.datapartition** %partition, align 8
  store i32 0, i32* %len, align 4
  %8 = load i32, i32* @luma_log_weight_denom, align 4
  %9 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call = call i32 @ue_v(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i32 0, i32 0), i32 %8, %struct.datapartition* %9)
  %10 = load i32, i32* %len, align 4
  %add = add nsw i32 %10, %call
  store i32 %add, i32* %len, align 4
  %11 = load i32, i32* @chroma_log_weight_denom, align 4
  %12 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call4 = call i32 @ue_v(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i32 0, i32 0), i32 %11, %struct.datapartition* %12)
  %13 = load i32, i32* %len, align 4
  %add5 = add nsw i32 %13, %call4
  store i32 %add5, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.81, %entry
  %14 = load i32, i32* %i, align 4
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 79
  %16 = load i32, i32* %num_ref_idx_l0_active, align 4
  %cmp = icmp slt i32 %14, %16
  br i1 %cmp, label %for.body, label %for.end.83

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %17 to i64
  %18 = load i32***, i32**** @wp_weight, align 8
  %arrayidx7 = getelementptr inbounds i32**, i32*** %18, i64 0
  %19 = load i32**, i32*** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i32*, i32** %19, i64 %idxprom6
  %20 = load i32*, i32** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %20, i64 0
  %21 = load i32, i32* %arrayidx9, align 4
  %22 = load i32, i32* @luma_log_weight_denom, align 4
  %shl = shl i32 1, %22
  %cmp10 = icmp ne i32 %21, %shl
  br i1 %cmp10, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %23 to i64
  %24 = load i32***, i32**** @wp_offset, align 8
  %arrayidx12 = getelementptr inbounds i32**, i32*** %24, i64 0
  %25 = load i32**, i32*** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i32*, i32** %25, i64 %idxprom11
  %26 = load i32*, i32** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %26, i64 0
  %27 = load i32, i32* %arrayidx14, align 4
  %cmp15 = icmp ne i32 %27, 0
  br i1 %cmp15, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %28 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call16 = call i32 @u_1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.44, i32 0, i32 0), i32 1, %struct.datapartition* %28)
  %29 = load i32, i32* %len, align 4
  %add17 = add nsw i32 %29, %call16
  store i32 %add17, i32* %len, align 4
  %30 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %30 to i64
  %31 = load i32***, i32**** @wp_weight, align 8
  %arrayidx19 = getelementptr inbounds i32**, i32*** %31, i64 0
  %32 = load i32**, i32*** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds i32*, i32** %32, i64 %idxprom18
  %33 = load i32*, i32** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %33, i64 0
  %34 = load i32, i32* %arrayidx21, align 4
  %35 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call22 = call i32 @se_v(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i32 0, i32 0), i32 %34, %struct.datapartition* %35)
  %36 = load i32, i32* %len, align 4
  %add23 = add nsw i32 %36, %call22
  store i32 %add23, i32* %len, align 4
  %37 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %37 to i64
  %38 = load i32***, i32**** @wp_offset, align 8
  %arrayidx25 = getelementptr inbounds i32**, i32*** %38, i64 0
  %39 = load i32**, i32*** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i32*, i32** %39, i64 %idxprom24
  %40 = load i32*, i32** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %40, i64 0
  %41 = load i32, i32* %arrayidx27, align 4
  %42 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call28 = call i32 @se_v(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i32 0, i32 0), i32 %41, %struct.datapartition* %42)
  %43 = load i32, i32* %len, align 4
  %add29 = add nsw i32 %43, %call28
  store i32 %add29, i32* %len, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %44 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call30 = call i32 @u_1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.44, i32 0, i32 0), i32 0, %struct.datapartition* %44)
  %45 = load i32, i32* %len, align 4
  %add31 = add nsw i32 %45, %call30
  store i32 %add31, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %46 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %46 to i64
  %47 = load i32***, i32**** @wp_weight, align 8
  %arrayidx33 = getelementptr inbounds i32**, i32*** %47, i64 0
  %48 = load i32**, i32*** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i32*, i32** %48, i64 %idxprom32
  %49 = load i32*, i32** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %49, i64 1
  %50 = load i32, i32* %arrayidx35, align 4
  %51 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl36 = shl i32 1, %51
  %cmp37 = icmp ne i32 %50, %shl36
  br i1 %cmp37, label %if.then.57, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %if.end
  %52 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %52 to i64
  %53 = load i32***, i32**** @wp_offset, align 8
  %arrayidx40 = getelementptr inbounds i32**, i32*** %53, i64 0
  %54 = load i32**, i32*** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i32*, i32** %54, i64 %idxprom39
  %55 = load i32*, i32** %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %55, i64 1
  %56 = load i32, i32* %arrayidx42, align 4
  %cmp43 = icmp ne i32 %56, 0
  br i1 %cmp43, label %if.then.57, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %lor.lhs.false.38
  %57 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %57 to i64
  %58 = load i32***, i32**** @wp_weight, align 8
  %arrayidx46 = getelementptr inbounds i32**, i32*** %58, i64 0
  %59 = load i32**, i32*** %arrayidx46, align 8
  %arrayidx47 = getelementptr inbounds i32*, i32** %59, i64 %idxprom45
  %60 = load i32*, i32** %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %60, i64 2
  %61 = load i32, i32* %arrayidx48, align 4
  %62 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl49 = shl i32 1, %62
  %cmp50 = icmp ne i32 %61, %shl49
  br i1 %cmp50, label %if.then.57, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false.44
  %63 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %63 to i64
  %64 = load i32***, i32**** @wp_offset, align 8
  %arrayidx53 = getelementptr inbounds i32**, i32*** %64, i64 0
  %65 = load i32**, i32*** %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds i32*, i32** %65, i64 %idxprom52
  %66 = load i32*, i32** %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %66, i64 2
  %67 = load i32, i32* %arrayidx55, align 4
  %cmp56 = icmp ne i32 %67, 0
  br i1 %cmp56, label %if.then.57, label %if.else.77

if.then.57:                                       ; preds = %lor.lhs.false.51, %lor.lhs.false.44, %lor.lhs.false.38, %if.end
  %68 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call58 = call i32 @u_1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i32 0, i32 0), i32 1, %struct.datapartition* %68)
  %69 = load i32, i32* %len, align 4
  %add59 = add nsw i32 %69, %call58
  store i32 %add59, i32* %len, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc, %if.then.57
  %70 = load i32, i32* %j, align 4
  %cmp61 = icmp slt i32 %70, 3
  br i1 %cmp61, label %for.body.62, label %for.end

for.body.62:                                      ; preds = %for.cond.60
  %71 = load i32, i32* %j, align 4
  %idxprom63 = sext i32 %71 to i64
  %72 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %72 to i64
  %73 = load i32***, i32**** @wp_weight, align 8
  %arrayidx65 = getelementptr inbounds i32**, i32*** %73, i64 0
  %74 = load i32**, i32*** %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds i32*, i32** %74, i64 %idxprom64
  %75 = load i32*, i32** %arrayidx66, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %75, i64 %idxprom63
  %76 = load i32, i32* %arrayidx67, align 4
  %77 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call68 = call i32 @se_v(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0), i32 %76, %struct.datapartition* %77)
  %78 = load i32, i32* %len, align 4
  %add69 = add nsw i32 %78, %call68
  store i32 %add69, i32* %len, align 4
  %79 = load i32, i32* %j, align 4
  %idxprom70 = sext i32 %79 to i64
  %80 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %80 to i64
  %81 = load i32***, i32**** @wp_offset, align 8
  %arrayidx72 = getelementptr inbounds i32**, i32*** %81, i64 0
  %82 = load i32**, i32*** %arrayidx72, align 8
  %arrayidx73 = getelementptr inbounds i32*, i32** %82, i64 %idxprom71
  %83 = load i32*, i32** %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %83, i64 %idxprom70
  %84 = load i32, i32* %arrayidx74, align 4
  %85 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call75 = call i32 @se_v(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), i32 %84, %struct.datapartition* %85)
  %86 = load i32, i32* %len, align 4
  %add76 = add nsw i32 %86, %call75
  store i32 %add76, i32* %len, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.62
  %87 = load i32, i32* %j, align 4
  %inc = add nsw i32 %87, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.60

for.end:                                          ; preds = %for.cond.60
  br label %if.end.80

if.else.77:                                       ; preds = %lor.lhs.false.51
  %88 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call78 = call i32 @u_1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i32 0, i32 0), i32 0, %struct.datapartition* %88)
  %89 = load i32, i32* %len, align 4
  %add79 = add nsw i32 %89, %call78
  store i32 %add79, i32* %len, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.77, %for.end
  br label %for.inc.81

for.inc.81:                                       ; preds = %if.end.80
  %90 = load i32, i32* %i, align 4
  %inc82 = add nsw i32 %90, 1
  store i32 %inc82, i32* %i, align 4
  br label %for.cond

for.end.83:                                       ; preds = %for.cond
  %91 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %91, i32 0, i32 6
  %92 = load i32, i32* %type, align 4
  %cmp84 = icmp eq i32 %92, 1
  br i1 %cmp84, label %if.then.85, label %if.end.175

if.then.85:                                       ; preds = %for.end.83
  store i32 0, i32* %i, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.172, %if.then.85
  %93 = load i32, i32* %i, align 4
  %94 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l1_active = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %94, i32 0, i32 80
  %95 = load i32, i32* %num_ref_idx_l1_active, align 4
  %cmp87 = icmp slt i32 %93, %95
  br i1 %cmp87, label %for.body.88, label %for.end.174

for.body.88:                                      ; preds = %for.cond.86
  %96 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %96 to i64
  %97 = load i32***, i32**** @wp_weight, align 8
  %arrayidx90 = getelementptr inbounds i32**, i32*** %97, i64 1
  %98 = load i32**, i32*** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds i32*, i32** %98, i64 %idxprom89
  %99 = load i32*, i32** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %99, i64 0
  %100 = load i32, i32* %arrayidx92, align 4
  %101 = load i32, i32* @luma_log_weight_denom, align 4
  %shl93 = shl i32 1, %101
  %cmp94 = icmp ne i32 %100, %shl93
  br i1 %cmp94, label %if.then.101, label %lor.lhs.false.95

lor.lhs.false.95:                                 ; preds = %for.body.88
  %102 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %102 to i64
  %103 = load i32***, i32**** @wp_offset, align 8
  %arrayidx97 = getelementptr inbounds i32**, i32*** %103, i64 1
  %104 = load i32**, i32*** %arrayidx97, align 8
  %arrayidx98 = getelementptr inbounds i32*, i32** %104, i64 %idxprom96
  %105 = load i32*, i32** %arrayidx98, align 8
  %arrayidx99 = getelementptr inbounds i32, i32* %105, i64 0
  %106 = load i32, i32* %arrayidx99, align 4
  %cmp100 = icmp ne i32 %106, 0
  br i1 %cmp100, label %if.then.101, label %if.else.116

if.then.101:                                      ; preds = %lor.lhs.false.95, %for.body.88
  %107 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call102 = call i32 @u_1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.50, i32 0, i32 0), i32 1, %struct.datapartition* %107)
  %108 = load i32, i32* %len, align 4
  %add103 = add nsw i32 %108, %call102
  store i32 %add103, i32* %len, align 4
  %109 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %109 to i64
  %110 = load i32***, i32**** @wp_weight, align 8
  %arrayidx105 = getelementptr inbounds i32**, i32*** %110, i64 1
  %111 = load i32**, i32*** %arrayidx105, align 8
  %arrayidx106 = getelementptr inbounds i32*, i32** %111, i64 %idxprom104
  %112 = load i32*, i32** %arrayidx106, align 8
  %arrayidx107 = getelementptr inbounds i32, i32* %112, i64 0
  %113 = load i32, i32* %arrayidx107, align 4
  %114 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call108 = call i32 @se_v(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i32 0, i32 0), i32 %113, %struct.datapartition* %114)
  %115 = load i32, i32* %len, align 4
  %add109 = add nsw i32 %115, %call108
  store i32 %add109, i32* %len, align 4
  %116 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %116 to i64
  %117 = load i32***, i32**** @wp_offset, align 8
  %arrayidx111 = getelementptr inbounds i32**, i32*** %117, i64 1
  %118 = load i32**, i32*** %arrayidx111, align 8
  %arrayidx112 = getelementptr inbounds i32*, i32** %118, i64 %idxprom110
  %119 = load i32*, i32** %arrayidx112, align 8
  %arrayidx113 = getelementptr inbounds i32, i32* %119, i64 0
  %120 = load i32, i32* %arrayidx113, align 4
  %121 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call114 = call i32 @se_v(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0), i32 %120, %struct.datapartition* %121)
  %122 = load i32, i32* %len, align 4
  %add115 = add nsw i32 %122, %call114
  store i32 %add115, i32* %len, align 4
  br label %if.end.119

if.else.116:                                      ; preds = %lor.lhs.false.95
  %123 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call117 = call i32 @u_1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.50, i32 0, i32 0), i32 0, %struct.datapartition* %123)
  %124 = load i32, i32* %len, align 4
  %add118 = add nsw i32 %124, %call117
  store i32 %add118, i32* %len, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.116, %if.then.101
  %125 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %125 to i64
  %126 = load i32***, i32**** @wp_weight, align 8
  %arrayidx121 = getelementptr inbounds i32**, i32*** %126, i64 1
  %127 = load i32**, i32*** %arrayidx121, align 8
  %arrayidx122 = getelementptr inbounds i32*, i32** %127, i64 %idxprom120
  %128 = load i32*, i32** %arrayidx122, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %128, i64 1
  %129 = load i32, i32* %arrayidx123, align 4
  %130 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl124 = shl i32 1, %130
  %cmp125 = icmp ne i32 %129, %shl124
  br i1 %cmp125, label %if.then.145, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %if.end.119
  %131 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %131 to i64
  %132 = load i32***, i32**** @wp_offset, align 8
  %arrayidx128 = getelementptr inbounds i32**, i32*** %132, i64 1
  %133 = load i32**, i32*** %arrayidx128, align 8
  %arrayidx129 = getelementptr inbounds i32*, i32** %133, i64 %idxprom127
  %134 = load i32*, i32** %arrayidx129, align 8
  %arrayidx130 = getelementptr inbounds i32, i32* %134, i64 1
  %135 = load i32, i32* %arrayidx130, align 4
  %cmp131 = icmp ne i32 %135, 0
  br i1 %cmp131, label %if.then.145, label %lor.lhs.false.132

lor.lhs.false.132:                                ; preds = %lor.lhs.false.126
  %136 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %136 to i64
  %137 = load i32***, i32**** @wp_weight, align 8
  %arrayidx134 = getelementptr inbounds i32**, i32*** %137, i64 1
  %138 = load i32**, i32*** %arrayidx134, align 8
  %arrayidx135 = getelementptr inbounds i32*, i32** %138, i64 %idxprom133
  %139 = load i32*, i32** %arrayidx135, align 8
  %arrayidx136 = getelementptr inbounds i32, i32* %139, i64 2
  %140 = load i32, i32* %arrayidx136, align 4
  %141 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl137 = shl i32 1, %141
  %cmp138 = icmp ne i32 %140, %shl137
  br i1 %cmp138, label %if.then.145, label %lor.lhs.false.139

lor.lhs.false.139:                                ; preds = %lor.lhs.false.132
  %142 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %142 to i64
  %143 = load i32***, i32**** @wp_offset, align 8
  %arrayidx141 = getelementptr inbounds i32**, i32*** %143, i64 1
  %144 = load i32**, i32*** %arrayidx141, align 8
  %arrayidx142 = getelementptr inbounds i32*, i32** %144, i64 %idxprom140
  %145 = load i32*, i32** %arrayidx142, align 8
  %arrayidx143 = getelementptr inbounds i32, i32* %145, i64 2
  %146 = load i32, i32* %arrayidx143, align 4
  %cmp144 = icmp ne i32 %146, 0
  br i1 %cmp144, label %if.then.145, label %if.else.168

if.then.145:                                      ; preds = %lor.lhs.false.139, %lor.lhs.false.132, %lor.lhs.false.126, %if.end.119
  %147 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call146 = call i32 @u_1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i32 0, i32 0), i32 1, %struct.datapartition* %147)
  %148 = load i32, i32* %len, align 4
  %add147 = add nsw i32 %148, %call146
  store i32 %add147, i32* %len, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.148

for.cond.148:                                     ; preds = %for.inc.165, %if.then.145
  %149 = load i32, i32* %j, align 4
  %cmp149 = icmp slt i32 %149, 3
  br i1 %cmp149, label %for.body.150, label %for.end.167

for.body.150:                                     ; preds = %for.cond.148
  %150 = load i32, i32* %j, align 4
  %idxprom151 = sext i32 %150 to i64
  %151 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %151 to i64
  %152 = load i32***, i32**** @wp_weight, align 8
  %arrayidx153 = getelementptr inbounds i32**, i32*** %152, i64 1
  %153 = load i32**, i32*** %arrayidx153, align 8
  %arrayidx154 = getelementptr inbounds i32*, i32** %153, i64 %idxprom152
  %154 = load i32*, i32** %arrayidx154, align 8
  %arrayidx155 = getelementptr inbounds i32, i32* %154, i64 %idxprom151
  %155 = load i32, i32* %arrayidx155, align 4
  %156 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call156 = call i32 @se_v(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i32 0, i32 0), i32 %155, %struct.datapartition* %156)
  %157 = load i32, i32* %len, align 4
  %add157 = add nsw i32 %157, %call156
  store i32 %add157, i32* %len, align 4
  %158 = load i32, i32* %j, align 4
  %idxprom158 = sext i32 %158 to i64
  %159 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %159 to i64
  %160 = load i32***, i32**** @wp_offset, align 8
  %arrayidx160 = getelementptr inbounds i32**, i32*** %160, i64 1
  %161 = load i32**, i32*** %arrayidx160, align 8
  %arrayidx161 = getelementptr inbounds i32*, i32** %161, i64 %idxprom159
  %162 = load i32*, i32** %arrayidx161, align 8
  %arrayidx162 = getelementptr inbounds i32, i32* %162, i64 %idxprom158
  %163 = load i32, i32* %arrayidx162, align 4
  %164 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call163 = call i32 @se_v(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0), i32 %163, %struct.datapartition* %164)
  %165 = load i32, i32* %len, align 4
  %add164 = add nsw i32 %165, %call163
  store i32 %add164, i32* %len, align 4
  br label %for.inc.165

for.inc.165:                                      ; preds = %for.body.150
  %166 = load i32, i32* %j, align 4
  %inc166 = add nsw i32 %166, 1
  store i32 %inc166, i32* %j, align 4
  br label %for.cond.148

for.end.167:                                      ; preds = %for.cond.148
  br label %if.end.171

if.else.168:                                      ; preds = %lor.lhs.false.139
  %167 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %call169 = call i32 @u_1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i32 0, i32 0), i32 0, %struct.datapartition* %167)
  %168 = load i32, i32* %len, align 4
  %add170 = add nsw i32 %168, %call169
  store i32 %add170, i32* %len, align 4
  br label %if.end.171

if.end.171:                                       ; preds = %if.else.168, %for.end.167
  br label %for.inc.172

for.inc.172:                                      ; preds = %if.end.171
  %169 = load i32, i32* %i, align 4
  %inc173 = add nsw i32 %169, 1
  store i32 %inc173, i32* %i, align 4
  br label %for.cond.86

for.end.174:                                      ; preds = %for.cond.86
  br label %if.end.175

if.end.175:                                       ; preds = %for.end.174, %for.end.83
  %170 = load i32, i32* %len, align 4
  ret i32 %170
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
