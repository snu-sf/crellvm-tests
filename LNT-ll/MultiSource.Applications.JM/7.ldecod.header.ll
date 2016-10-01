; ModuleID = './MultiSource.Applications.JM/7.ldecod.header.bc'
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
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@img = external global %struct.img_par*, align 8
@assignSE2partition = external global [0 x [20 x i32]], align 4
@UsedBits = external global i32, align 4
@.str = private unnamed_addr constant [22 x i8] c"SH: first_mb_in_slice\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"SH: slice_type\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"SH: pic_parameter_set_id\00", align 1
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"SH: frame_num\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"SH: field_pic_flag\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"SH: bottom_field_flag\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"SH: idr_pic_id\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"SH: pic_order_cnt_lsb\00", align 1
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@.str.8 = private unnamed_addr constant [31 x i8] c"SH: delta_pic_order_cnt_bottom\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"SH: delta_pic_order_cnt[0]\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"SH: delta_pic_order_cnt[1]\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"SH: redundant_pic_cnt\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"SH: direct_spatial_mv_pred_flag\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"SH: num_ref_idx_override_flag\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"SH: num_ref_idx_l0_active_minus1\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"SH: num_ref_idx_l1_active_minus1\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"SH: cabac_init_idc\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"SH: slice_qp_delta\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"slice_qp_delta makes slice_qp_y out of range\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"SH: sp_for_switch_flag\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"SH: slice_qs_delta\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"slice_qs_delta makes slice_qs_y out of range\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"SH: disable_deblocking_filter_idc\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"SH: slice_alpha_c0_offset_div2\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"SH: slice_beta_offset_div2\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"SH: slice_group_change_cycle\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"SH: no_output_of_prior_pics_flag\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"SH: long_term_reference_flag\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"SH: adaptive_ref_pic_buffering_flag\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"SH: memory_management_control_operation\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"SH: difference_of_pic_nums_minus1\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"SH: long_term_pic_num\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"SH: long_term_frame_idx\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"SH: max_long_term_pic_idx_plus1\00", align 1
@.str.34 = private unnamed_addr constant [43 x i8] c"frame_num not equal to zero in IDR picture\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"\0APOC locals...\0A\00", align 1
@.str.36 = private unnamed_addr constant [42 x i8] c"toppoc                                %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"bottompoc                             %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [42 x i8] c"frame_num                             %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [42 x i8] c"field_pic_flag                        %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [42 x i8] c"bottom_field_flag                     %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"POC SPS\0A\00", align 1
@.str.42 = private unnamed_addr constant [42 x i8] c"log2_max_frame_num_minus4             %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [42 x i8] c"log2_max_pic_order_cnt_lsb_minus4     %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [42 x i8] c"pic_order_cnt_type                    %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [42 x i8] c"num_ref_frames_in_pic_order_cnt_cycle %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [42 x i8] c"delta_pic_order_always_zero_flag      %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [42 x i8] c"offset_for_non_ref_pic                %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [42 x i8] c"offset_for_top_to_bottom_field        %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [42 x i8] c"offset_for_ref_frame[0]               %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [42 x i8] c"offset_for_ref_frame[1]               %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"POC in SLice Header\0A\00", align 1
@.str.52 = private unnamed_addr constant [42 x i8] c"pic_order_present_flag                %d\0A\00", align 1
@.str.53 = private unnamed_addr constant [42 x i8] c"delta_pic_order_cnt[0]                %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [42 x i8] c"delta_pic_order_cnt[1]                %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [42 x i8] c"delta_pic_order_cnt[2]                %d\0A\00", align 1
@.str.56 = private unnamed_addr constant [42 x i8] c"idr_flag                              %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [42 x i8] c"MaxFrameNum                           %d\0A\00", align 1
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
@.str.58 = private unnamed_addr constant [36 x i8] c"SH: ref_pic_list_reordering_flag_l0\00", align 1
@.str.59 = private unnamed_addr constant [34 x i8] c"SH: reordering_of_pic_nums_idc_l0\00", align 1
@.str.60 = private unnamed_addr constant [31 x i8] c"SH: abs_diff_pic_num_minus1_l0\00", align 1
@.str.61 = private unnamed_addr constant [25 x i8] c"SH: long_term_pic_idx_l0\00", align 1
@.str.62 = private unnamed_addr constant [36 x i8] c"SH: ref_pic_list_reordering_flag_l1\00", align 1
@.str.63 = private unnamed_addr constant [34 x i8] c"SH: reordering_of_pic_nums_idc_l1\00", align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"SH: abs_diff_pic_num_minus1_l1\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"SH: long_term_pic_idx_l1\00", align 1
@.str.66 = private unnamed_addr constant [27 x i8] c"SH: luma_log2_weight_denom\00", align 1
@.str.67 = private unnamed_addr constant [29 x i8] c"SH: chroma_log2_weight_denom\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"SH: luma_weight_flag_l0\00", align 1
@.str.69 = private unnamed_addr constant [19 x i8] c"SH: luma_weight_l0\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"SH: luma_offset_l0\00", align 1
@.str.71 = private unnamed_addr constant [26 x i8] c"SH: chroma_weight_flag_l0\00", align 1
@.str.72 = private unnamed_addr constant [21 x i8] c"SH: chroma_weight_l0\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"SH: chroma_offset_l0\00", align 1
@.str.74 = private unnamed_addr constant [24 x i8] c"SH: luma_weight_flag_l1\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"SH: luma_weight_l1\00", align 1
@.str.76 = private unnamed_addr constant [19 x i8] c"SH: luma_offset_l1\00", align 1
@.str.77 = private unnamed_addr constant [26 x i8] c"SH: chroma_weight_flag_l1\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"SH: chroma_weight_l1\00", align 1
@.str.79 = private unnamed_addr constant [21 x i8] c"SH: chroma_offset_l1\00", align 1

; Function Attrs: nounwind uwtable
define i32 @CeilLog2(i32 %uiVal) #0 {
entry:
  %uiVal.addr = alloca i32, align 4
  %uiTmp = alloca i32, align 4
  %uiRet = alloca i32, align 4
  store i32 %uiVal, i32* %uiVal.addr, align 4
  %0 = load i32, i32* %uiVal.addr, align 4
  %sub = sub i32 %0, 1
  store i32 %sub, i32* %uiTmp, align 4
  store i32 0, i32* %uiRet, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %uiTmp, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %uiTmp, align 4
  %shr = lshr i32 %2, 1
  store i32 %shr, i32* %uiTmp, align 4
  %3 = load i32, i32* %uiRet, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %uiRet, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %uiRet, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @FirstPartOfSliceHeader() #0 {
entry:
  %currSlice = alloca %struct.Slice*, align 8
  %dP_nr = alloca i32, align 4
  %partition = alloca %struct.datapartition*, align 8
  %currStream = alloca %struct.Bitstream*, align 8
  %tmp = alloca i32, align 4
  %0 = load %struct.img_par*, %struct.img_par** @img, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 38
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %1, %struct.Slice** %currSlice, align 8
  %2 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %dp_mode = getelementptr inbounds %struct.Slice, %struct.Slice* %2, i32 0, i32 7
  %3 = load i32, i32* %dp_mode, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [0 x [20 x i32]], [0 x [20 x i32]]* @assignSE2partition, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx, i32 0, i64 0
  %4 = load i32, i32* %arrayidx1, align 4
  store i32 %4, i32* %dP_nr, align 4
  %5 = load i32, i32* %dP_nr, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %6, i32 0, i32 9
  %7 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx3 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %7, i64 %idxprom2
  store %struct.datapartition* %arrayidx3, %struct.datapartition** %partition, align 8
  %8 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %8, i32 0, i32 0
  %9 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %9, %struct.Bitstream** %currStream, align 8
  %10 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %bitstream4 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %10, i32 0, i32 0
  %11 = load %struct.Bitstream*, %struct.Bitstream** %bitstream4, align 8
  %frame_bitoffset = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %11, i32 0, i32 2
  %12 = load i32, i32* %frame_bitoffset, align 4
  store i32 %12, i32* @UsedBits, align 4
  %13 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call = call i32 @ue_v(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), %struct.Bitstream* %13)
  %14 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %start_mb_nr = getelementptr inbounds %struct.Slice, %struct.Slice* %14, i32 0, i32 5
  store i32 %call, i32* %start_mb_nr, align 4
  %15 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call5 = call i32 @ue_v(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), %struct.Bitstream* %15)
  store i32 %call5, i32* %tmp, align 4
  %16 = load i32, i32* %tmp, align 4
  %cmp = icmp sgt i32 %16, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %tmp, align 4
  %sub = sub nsw i32 %17, 5
  store i32 %sub, i32* %tmp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load i32, i32* %tmp, align 4
  %19 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %picture_type = getelementptr inbounds %struct.Slice, %struct.Slice* %19, i32 0, i32 3
  store i32 %18, i32* %picture_type, align 4
  %20 = load %struct.img_par*, %struct.img_par** @img, align 8
  %type = getelementptr inbounds %struct.img_par, %struct.img_par* %20, i32 0, i32 10
  store i32 %18, i32* %type, align 4
  %21 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call6 = call i32 @ue_v(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), %struct.Bitstream* %21)
  %22 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %pic_parameter_set_id = getelementptr inbounds %struct.Slice, %struct.Slice* %22, i32 0, i32 24
  store i32 %call6, i32* %pic_parameter_set_id, align 4
  %23 = load i32, i32* @UsedBits, align 4
  ret i32 %23
}

declare i32 @ue_v(i8*, %struct.Bitstream*) #1

; Function Attrs: nounwind uwtable
define i32 @RestOfSliceHeader() #0 {
entry:
  %currSlice = alloca %struct.Slice*, align 8
  %dP_nr = alloca i32, align 4
  %partition = alloca %struct.datapartition*, align 8
  %currStream = alloca %struct.Bitstream*, align 8
  %val = alloca i32, align 4
  %len = alloca i32, align 4
  %0 = load %struct.img_par*, %struct.img_par** @img, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 38
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %1, %struct.Slice** %currSlice, align 8
  %2 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %dp_mode = getelementptr inbounds %struct.Slice, %struct.Slice* %2, i32 0, i32 7
  %3 = load i32, i32* %dp_mode, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [0 x [20 x i32]], [0 x [20 x i32]]* @assignSE2partition, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx, i32 0, i64 0
  %4 = load i32, i32* %arrayidx1, align 4
  store i32 %4, i32* %dP_nr, align 4
  %5 = load i32, i32* %dP_nr, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %6, i32 0, i32 9
  %7 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx3 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %7, i64 %idxprom2
  store %struct.datapartition* %arrayidx3, %struct.datapartition** %partition, align 8
  %8 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %8, i32 0, i32 0
  %9 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %9, %struct.Bitstream** %currStream, align 8
  %10 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %log2_max_frame_num_minus4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %10, i32 0, i32 17
  %11 = load i32, i32* %log2_max_frame_num_minus4, align 4
  %add = add i32 %11, 4
  %12 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call = call i32 @u_v(i32 %add, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), %struct.Bitstream* %12)
  %13 = load %struct.img_par*, %struct.img_par** @img, align 8
  %frame_num = getelementptr inbounds %struct.img_par, %struct.img_par* %13, i32 0, i32 56
  store i32 %call, i32* %frame_num, align 4
  %14 = load %struct.img_par*, %struct.img_par** @img, align 8
  %idr_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %14, i32 0, i32 83
  %15 = load i32, i32* %idr_flag, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load %struct.img_par*, %struct.img_par** @img, align 8
  %frame_num4 = getelementptr inbounds %struct.img_par, %struct.img_par* %16, i32 0, i32 56
  %17 = load i32, i32* %frame_num4, align 4
  %18 = load %struct.img_par*, %struct.img_par** @img, align 8
  %pre_frame_num = getelementptr inbounds %struct.img_par, %struct.img_par* %18, i32 0, i32 52
  store i32 %17, i32* %pre_frame_num, align 4
  %19 = load %struct.img_par*, %struct.img_par** @img, align 8
  %last_ref_pic_poc = getelementptr inbounds %struct.img_par, %struct.img_par* %19, i32 0, i32 127
  store i32 0, i32* %last_ref_pic_poc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %20, i32 0, i32 29
  %21 = load i32, i32* %frame_mbs_only_flag, align 4
  %tobool5 = icmp ne i32 %21, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %22 = load %struct.img_par*, %struct.img_par** @img, align 8
  %structure = getelementptr inbounds %struct.img_par, %struct.img_par* %22, i32 0, i32 36
  store i32 0, i32* %structure, align 4
  %23 = load %struct.img_par*, %struct.img_par** @img, align 8
  %field_pic_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %23, i32 0, i32 57
  store i32 0, i32* %field_pic_flag, align 4
  br label %if.end.20

if.else:                                          ; preds = %if.end
  %24 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call7 = call i32 @u_1(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), %struct.Bitstream* %24)
  %25 = load %struct.img_par*, %struct.img_par** @img, align 8
  %field_pic_flag8 = getelementptr inbounds %struct.img_par, %struct.img_par* %25, i32 0, i32 57
  store i32 %call7, i32* %field_pic_flag8, align 4
  %26 = load %struct.img_par*, %struct.img_par** @img, align 8
  %field_pic_flag9 = getelementptr inbounds %struct.img_par, %struct.img_par* %26, i32 0, i32 57
  %27 = load i32, i32* %field_pic_flag9, align 4
  %tobool10 = icmp ne i32 %27, 0
  br i1 %tobool10, label %if.then.11, label %if.else.16

if.then.11:                                       ; preds = %if.else
  %28 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call12 = call i32 @u_1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), %struct.Bitstream* %28)
  %29 = load %struct.img_par*, %struct.img_par** @img, align 8
  %bottom_field_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %29, i32 0, i32 58
  store i32 %call12, i32* %bottom_field_flag, align 4
  %30 = load %struct.img_par*, %struct.img_par** @img, align 8
  %bottom_field_flag13 = getelementptr inbounds %struct.img_par, %struct.img_par* %30, i32 0, i32 58
  %31 = load i32, i32* %bottom_field_flag13, align 4
  %tobool14 = icmp ne i32 %31, 0
  %cond = select i1 %tobool14, i32 2, i32 1
  %32 = load %struct.img_par*, %struct.img_par** @img, align 8
  %structure15 = getelementptr inbounds %struct.img_par, %struct.img_par* %32, i32 0, i32 36
  store i32 %cond, i32* %structure15, align 4
  br label %if.end.19

if.else.16:                                       ; preds = %if.else
  %33 = load %struct.img_par*, %struct.img_par** @img, align 8
  %structure17 = getelementptr inbounds %struct.img_par, %struct.img_par* %33, i32 0, i32 36
  store i32 0, i32* %structure17, align 4
  %34 = load %struct.img_par*, %struct.img_par** @img, align 8
  %bottom_field_flag18 = getelementptr inbounds %struct.img_par, %struct.img_par* %34, i32 0, i32 58
  store i32 0, i32* %bottom_field_flag18, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.11
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.6
  %35 = load %struct.img_par*, %struct.img_par** @img, align 8
  %structure21 = getelementptr inbounds %struct.img_par, %struct.img_par* %35, i32 0, i32 36
  %36 = load i32, i32* %structure21, align 4
  %37 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %structure22 = getelementptr inbounds %struct.Slice, %struct.Slice* %37, i32 0, i32 4
  store i32 %36, i32* %structure22, align 4
  %38 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %mb_adaptive_frame_field_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %38, i32 0, i32 30
  %39 = load i32, i32* %mb_adaptive_frame_field_flag, align 4
  %tobool23 = icmp ne i32 %39, 0
  br i1 %tobool23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.20
  %40 = load %struct.img_par*, %struct.img_par** @img, align 8
  %field_pic_flag24 = getelementptr inbounds %struct.img_par, %struct.img_par* %40, i32 0, i32 57
  %41 = load i32, i32* %field_pic_flag24, align 4
  %cmp = icmp eq i32 %41, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.20
  %42 = phi i1 [ false, %if.end.20 ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %42 to i32
  %43 = load %struct.img_par*, %struct.img_par** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.img_par, %struct.img_par* %43, i32 0, i32 44
  store i32 %land.ext, i32* %MbaffFrameFlag, align 4
  %44 = load %struct.img_par*, %struct.img_par** @img, align 8
  %structure25 = getelementptr inbounds %struct.img_par, %struct.img_par* %44, i32 0, i32 36
  %45 = load i32, i32* %structure25, align 4
  %cmp26 = icmp eq i32 %45, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.end
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %land.end
  %46 = load %struct.img_par*, %struct.img_par** @img, align 8
  %structure29 = getelementptr inbounds %struct.img_par, %struct.img_par* %46, i32 0, i32 36
  %47 = load i32, i32* %structure29, align 4
  %cmp30 = icmp eq i32 %47, 1
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.28
  %48 = load %struct.img_par*, %struct.img_par** @img, align 8
  %structure33 = getelementptr inbounds %struct.img_par, %struct.img_par* %48, i32 0, i32 36
  %49 = load i32, i32* %structure33, align 4
  %cmp34 = icmp eq i32 %49, 2
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.32
  %50 = load %struct.img_par*, %struct.img_par** @img, align 8
  %idr_flag37 = getelementptr inbounds %struct.img_par, %struct.img_par* %50, i32 0, i32 83
  %51 = load i32, i32* %idr_flag37, align 4
  %tobool38 = icmp ne i32 %51, 0
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.36
  %52 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call40 = call i32 @ue_v(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), %struct.Bitstream* %52)
  %53 = load %struct.img_par*, %struct.img_par** @img, align 8
  %idr_pic_id = getelementptr inbounds %struct.img_par, %struct.img_par* %53, i32 0, i32 85
  store i32 %call40, i32* %idr_pic_id, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.36
  %54 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %pic_order_cnt_type = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %54, i32 0, i32 18
  %55 = load i32, i32* %pic_order_cnt_type, align 4
  %cmp42 = icmp eq i32 %55, 0
  br i1 %cmp42, label %if.then.43, label %if.end.54

if.then.43:                                       ; preds = %if.end.41
  %56 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %log2_max_pic_order_cnt_lsb_minus4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %56, i32 0, i32 19
  %57 = load i32, i32* %log2_max_pic_order_cnt_lsb_minus4, align 4
  %add44 = add i32 %57, 4
  %58 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call45 = call i32 @u_v(i32 %add44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), %struct.Bitstream* %58)
  %59 = load %struct.img_par*, %struct.img_par** @img, align 8
  %pic_order_cnt_lsb = getelementptr inbounds %struct.img_par, %struct.img_par* %59, i32 0, i32 59
  store i32 %call45, i32* %pic_order_cnt_lsb, align 4
  %60 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %pic_order_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %60, i32 0, i32 11
  %61 = load i32, i32* %pic_order_present_flag, align 4
  %cmp46 = icmp eq i32 %61, 1
  br i1 %cmp46, label %land.lhs.true, label %if.else.51

land.lhs.true:                                    ; preds = %if.then.43
  %62 = load %struct.img_par*, %struct.img_par** @img, align 8
  %field_pic_flag47 = getelementptr inbounds %struct.img_par, %struct.img_par* %62, i32 0, i32 57
  %63 = load i32, i32* %field_pic_flag47, align 4
  %tobool48 = icmp ne i32 %63, 0
  br i1 %tobool48, label %if.else.51, label %if.then.49

if.then.49:                                       ; preds = %land.lhs.true
  %64 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call50 = call i32 @se_v(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), %struct.Bitstream* %64)
  %65 = load %struct.img_par*, %struct.img_par** @img, align 8
  %delta_pic_order_cnt_bottom = getelementptr inbounds %struct.img_par, %struct.img_par* %65, i32 0, i32 60
  store i32 %call50, i32* %delta_pic_order_cnt_bottom, align 4
  br label %if.end.53

if.else.51:                                       ; preds = %land.lhs.true, %if.then.43
  %66 = load %struct.img_par*, %struct.img_par** @img, align 8
  %delta_pic_order_cnt_bottom52 = getelementptr inbounds %struct.img_par, %struct.img_par* %66, i32 0, i32 60
  store i32 0, i32* %delta_pic_order_cnt_bottom52, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.51, %if.then.49
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.41
  %67 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %pic_order_cnt_type55 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %67, i32 0, i32 18
  %68 = load i32, i32* %pic_order_cnt_type55, align 4
  %cmp56 = icmp eq i32 %68, 1
  br i1 %cmp56, label %land.lhs.true.57, label %if.else.72

land.lhs.true.57:                                 ; preds = %if.end.54
  %69 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %delta_pic_order_always_zero_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %69, i32 0, i32 20
  %70 = load i32, i32* %delta_pic_order_always_zero_flag, align 4
  %tobool58 = icmp ne i32 %70, 0
  br i1 %tobool58, label %if.else.72, label %if.then.59

if.then.59:                                       ; preds = %land.lhs.true.57
  %71 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call60 = call i32 @se_v(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), %struct.Bitstream* %71)
  %72 = load %struct.img_par*, %struct.img_par** @img, align 8
  %delta_pic_order_cnt = getelementptr inbounds %struct.img_par, %struct.img_par* %72, i32 0, i32 61
  %arrayidx61 = getelementptr inbounds [3 x i32], [3 x i32]* %delta_pic_order_cnt, i32 0, i64 0
  store i32 %call60, i32* %arrayidx61, align 4
  %73 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %pic_order_present_flag62 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %73, i32 0, i32 11
  %74 = load i32, i32* %pic_order_present_flag62, align 4
  %cmp63 = icmp eq i32 %74, 1
  br i1 %cmp63, label %land.lhs.true.64, label %if.end.71

land.lhs.true.64:                                 ; preds = %if.then.59
  %75 = load %struct.img_par*, %struct.img_par** @img, align 8
  %field_pic_flag65 = getelementptr inbounds %struct.img_par, %struct.img_par* %75, i32 0, i32 57
  %76 = load i32, i32* %field_pic_flag65, align 4
  %tobool66 = icmp ne i32 %76, 0
  br i1 %tobool66, label %if.end.71, label %if.then.67

if.then.67:                                       ; preds = %land.lhs.true.64
  %77 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call68 = call i32 @se_v(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), %struct.Bitstream* %77)
  %78 = load %struct.img_par*, %struct.img_par** @img, align 8
  %delta_pic_order_cnt69 = getelementptr inbounds %struct.img_par, %struct.img_par* %78, i32 0, i32 61
  %arrayidx70 = getelementptr inbounds [3 x i32], [3 x i32]* %delta_pic_order_cnt69, i32 0, i64 1
  store i32 %call68, i32* %arrayidx70, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.67, %land.lhs.true.64, %if.then.59
  br label %if.end.81

if.else.72:                                       ; preds = %land.lhs.true.57, %if.end.54
  %79 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %pic_order_cnt_type73 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %79, i32 0, i32 18
  %80 = load i32, i32* %pic_order_cnt_type73, align 4
  %cmp74 = icmp eq i32 %80, 1
  br i1 %cmp74, label %if.then.75, label %if.end.80

if.then.75:                                       ; preds = %if.else.72
  %81 = load %struct.img_par*, %struct.img_par** @img, align 8
  %delta_pic_order_cnt76 = getelementptr inbounds %struct.img_par, %struct.img_par* %81, i32 0, i32 61
  %arrayidx77 = getelementptr inbounds [3 x i32], [3 x i32]* %delta_pic_order_cnt76, i32 0, i64 0
  store i32 0, i32* %arrayidx77, align 4
  %82 = load %struct.img_par*, %struct.img_par** @img, align 8
  %delta_pic_order_cnt78 = getelementptr inbounds %struct.img_par, %struct.img_par* %82, i32 0, i32 61
  %arrayidx79 = getelementptr inbounds [3 x i32], [3 x i32]* %delta_pic_order_cnt78, i32 0, i64 1
  store i32 0, i32* %arrayidx79, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.75, %if.else.72
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.71
  %83 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %redundant_pic_cnt_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %83, i32 0, i32 31
  %84 = load i32, i32* %redundant_pic_cnt_present_flag, align 4
  %tobool82 = icmp ne i32 %84, 0
  br i1 %tobool82, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %if.end.81
  %85 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call84 = call i32 @ue_v(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), %struct.Bitstream* %85)
  %86 = load %struct.img_par*, %struct.img_par** @img, align 8
  %redundant_pic_cnt = getelementptr inbounds %struct.img_par, %struct.img_par* %86, i32 0, i32 50
  store i32 %call84, i32* %redundant_pic_cnt, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %if.end.81
  %87 = load %struct.img_par*, %struct.img_par** @img, align 8
  %type = getelementptr inbounds %struct.img_par, %struct.img_par* %87, i32 0, i32 10
  %88 = load i32, i32* %type, align 4
  %cmp86 = icmp eq i32 %88, 1
  br i1 %cmp86, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %if.end.85
  %89 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call88 = call i32 @u_1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0), %struct.Bitstream* %89)
  %90 = load %struct.img_par*, %struct.img_par** @img, align 8
  %direct_spatial_mv_pred_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %90, i32 0, i32 9
  store i32 %call88, i32* %direct_spatial_mv_pred_flag, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %if.end.85
  %91 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %num_ref_idx_l0_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %91, i32 0, i32 21
  %92 = load i32, i32* %num_ref_idx_l0_active_minus1, align 4
  %add90 = add i32 %92, 1
  %93 = load %struct.img_par*, %struct.img_par** @img, align 8
  %num_ref_idx_l0_active = getelementptr inbounds %struct.img_par, %struct.img_par* %93, i32 0, i32 47
  store i32 %add90, i32* %num_ref_idx_l0_active, align 4
  %94 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %num_ref_idx_l1_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %94, i32 0, i32 22
  %95 = load i32, i32* %num_ref_idx_l1_active_minus1, align 4
  %add91 = add i32 %95, 1
  %96 = load %struct.img_par*, %struct.img_par** @img, align 8
  %num_ref_idx_l1_active = getelementptr inbounds %struct.img_par, %struct.img_par* %96, i32 0, i32 48
  store i32 %add91, i32* %num_ref_idx_l1_active, align 4
  %97 = load %struct.img_par*, %struct.img_par** @img, align 8
  %type92 = getelementptr inbounds %struct.img_par, %struct.img_par* %97, i32 0, i32 10
  %98 = load i32, i32* %type92, align 4
  %cmp93 = icmp eq i32 %98, 0
  br i1 %cmp93, label %if.then.99, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.89
  %99 = load %struct.img_par*, %struct.img_par** @img, align 8
  %type94 = getelementptr inbounds %struct.img_par, %struct.img_par* %99, i32 0, i32 10
  %100 = load i32, i32* %type94, align 4
  %cmp95 = icmp eq i32 %100, 3
  br i1 %cmp95, label %if.then.99, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %lor.lhs.false
  %101 = load %struct.img_par*, %struct.img_par** @img, align 8
  %type97 = getelementptr inbounds %struct.img_par, %struct.img_par* %101, i32 0, i32 10
  %102 = load i32, i32* %type97, align 4
  %cmp98 = icmp eq i32 %102, 1
  br i1 %cmp98, label %if.then.99, label %if.end.114

if.then.99:                                       ; preds = %lor.lhs.false.96, %lor.lhs.false, %if.end.89
  %103 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call100 = call i32 @u_1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0), %struct.Bitstream* %103)
  store i32 %call100, i32* %val, align 4
  %104 = load i32, i32* %val, align 4
  %tobool101 = icmp ne i32 %104, 0
  br i1 %tobool101, label %if.then.102, label %if.end.113

if.then.102:                                      ; preds = %if.then.99
  %105 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call103 = call i32 @ue_v(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0), %struct.Bitstream* %105)
  %add104 = add nsw i32 1, %call103
  %106 = load %struct.img_par*, %struct.img_par** @img, align 8
  %num_ref_idx_l0_active105 = getelementptr inbounds %struct.img_par, %struct.img_par* %106, i32 0, i32 47
  store i32 %add104, i32* %num_ref_idx_l0_active105, align 4
  %107 = load %struct.img_par*, %struct.img_par** @img, align 8
  %type106 = getelementptr inbounds %struct.img_par, %struct.img_par* %107, i32 0, i32 10
  %108 = load i32, i32* %type106, align 4
  %cmp107 = icmp eq i32 %108, 1
  br i1 %cmp107, label %if.then.108, label %if.end.112

if.then.108:                                      ; preds = %if.then.102
  %109 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call109 = call i32 @ue_v(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0), %struct.Bitstream* %109)
  %add110 = add nsw i32 1, %call109
  %110 = load %struct.img_par*, %struct.img_par** @img, align 8
  %num_ref_idx_l1_active111 = getelementptr inbounds %struct.img_par, %struct.img_par* %110, i32 0, i32 48
  store i32 %add110, i32* %num_ref_idx_l1_active111, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.108, %if.then.102
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.then.99
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %lor.lhs.false.96
  %111 = load %struct.img_par*, %struct.img_par** @img, align 8
  %type115 = getelementptr inbounds %struct.img_par, %struct.img_par* %111, i32 0, i32 10
  %112 = load i32, i32* %type115, align 4
  %cmp116 = icmp ne i32 %112, 1
  br i1 %cmp116, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %if.end.114
  %113 = load %struct.img_par*, %struct.img_par** @img, align 8
  %num_ref_idx_l1_active118 = getelementptr inbounds %struct.img_par, %struct.img_par* %113, i32 0, i32 48
  store i32 0, i32* %num_ref_idx_l1_active118, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.117, %if.end.114
  call void @ref_pic_list_reordering()
  %114 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %114, i32 0, i32 23
  %115 = load i32, i32* %weighted_pred_flag, align 4
  %tobool120 = icmp ne i32 %115, 0
  br i1 %tobool120, label %land.lhs.true.121, label %lor.rhs

land.lhs.true.121:                                ; preds = %if.end.119
  %116 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %picture_type = getelementptr inbounds %struct.Slice, %struct.Slice* %116, i32 0, i32 3
  %117 = load i32, i32* %picture_type, align 4
  %cmp122 = icmp eq i32 %117, 0
  br i1 %cmp122, label %lor.end, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %land.lhs.true.121
  %118 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %picture_type124 = getelementptr inbounds %struct.Slice, %struct.Slice* %118, i32 0, i32 3
  %119 = load i32, i32* %picture_type124, align 4
  %cmp125 = icmp eq i32 %119, 3
  br i1 %cmp125, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.123, %if.end.119
  %120 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %120, i32 0, i32 24
  %121 = load i32, i32* %weighted_bipred_idc, align 4
  %cmp126 = icmp ugt i32 %121, 0
  br i1 %cmp126, label %land.rhs.127, label %land.end.130

land.rhs.127:                                     ; preds = %lor.rhs
  %122 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %picture_type128 = getelementptr inbounds %struct.Slice, %struct.Slice* %122, i32 0, i32 3
  %123 = load i32, i32* %picture_type128, align 4
  %cmp129 = icmp eq i32 %123, 1
  br label %land.end.130

land.end.130:                                     ; preds = %land.rhs.127, %lor.rhs
  %124 = phi i1 [ false, %lor.rhs ], [ %cmp129, %land.rhs.127 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.130, %lor.lhs.false.123, %land.lhs.true.121
  %125 = phi i1 [ true, %lor.lhs.false.123 ], [ true, %land.lhs.true.121 ], [ %124, %land.end.130 ]
  %lor.ext = zext i1 %125 to i32
  %126 = load %struct.img_par*, %struct.img_par** @img, align 8
  %apply_weights = getelementptr inbounds %struct.img_par, %struct.img_par* %126, i32 0, i32 82
  store i32 %lor.ext, i32* %apply_weights, align 4
  %127 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_pred_flag132 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %127, i32 0, i32 23
  %128 = load i32, i32* %weighted_pred_flag132, align 4
  %tobool133 = icmp ne i32 %128, 0
  br i1 %tobool133, label %land.lhs.true.134, label %lor.lhs.false.140

land.lhs.true.134:                                ; preds = %lor.end
  %129 = load %struct.img_par*, %struct.img_par** @img, align 8
  %type135 = getelementptr inbounds %struct.img_par, %struct.img_par* %129, i32 0, i32 10
  %130 = load i32, i32* %type135, align 4
  %cmp136 = icmp eq i32 %130, 0
  br i1 %cmp136, label %if.then.146, label %lor.lhs.false.137

lor.lhs.false.137:                                ; preds = %land.lhs.true.134
  %131 = load %struct.img_par*, %struct.img_par** @img, align 8
  %type138 = getelementptr inbounds %struct.img_par, %struct.img_par* %131, i32 0, i32 10
  %132 = load i32, i32* %type138, align 4
  %cmp139 = icmp eq i32 %132, 3
  br i1 %cmp139, label %if.then.146, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %lor.lhs.false.137, %lor.end
  %133 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc141 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %133, i32 0, i32 24
  %134 = load i32, i32* %weighted_bipred_idc141, align 4
  %cmp142 = icmp eq i32 %134, 1
  br i1 %cmp142, label %land.lhs.true.143, label %if.end.147

land.lhs.true.143:                                ; preds = %lor.lhs.false.140
  %135 = load %struct.img_par*, %struct.img_par** @img, align 8
  %type144 = getelementptr inbounds %struct.img_par, %struct.img_par* %135, i32 0, i32 10
  %136 = load i32, i32* %type144, align 4
  %cmp145 = icmp eq i32 %136, 1
  br i1 %cmp145, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %land.lhs.true.143, %lor.lhs.false.137, %land.lhs.true.134
  call void @pred_weight_table()
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.146, %land.lhs.true.143, %lor.lhs.false.140
  %137 = load %struct.img_par*, %struct.img_par** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.img_par, %struct.img_par* %137, i32 0, i32 84
  %138 = load i32, i32* %nal_reference_idc, align 4
  %tobool148 = icmp ne i32 %138, 0
  br i1 %tobool148, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %if.end.147
  %139 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  call void @dec_ref_pic_marking(%struct.Bitstream* %139)
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.149, %if.end.147
  %140 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %entropy_coding_mode_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %140, i32 0, i32 3
  %141 = load i32, i32* %entropy_coding_mode_flag, align 4
  %tobool151 = icmp ne i32 %141, 0
  br i1 %tobool151, label %land.lhs.true.152, label %if.else.160

land.lhs.true.152:                                ; preds = %if.end.150
  %142 = load %struct.img_par*, %struct.img_par** @img, align 8
  %type153 = getelementptr inbounds %struct.img_par, %struct.img_par* %142, i32 0, i32 10
  %143 = load i32, i32* %type153, align 4
  %cmp154 = icmp ne i32 %143, 2
  br i1 %cmp154, label %land.lhs.true.155, label %if.else.160

land.lhs.true.155:                                ; preds = %land.lhs.true.152
  %144 = load %struct.img_par*, %struct.img_par** @img, align 8
  %type156 = getelementptr inbounds %struct.img_par, %struct.img_par* %144, i32 0, i32 10
  %145 = load i32, i32* %type156, align 4
  %cmp157 = icmp ne i32 %145, 4
  br i1 %cmp157, label %if.then.158, label %if.else.160

if.then.158:                                      ; preds = %land.lhs.true.155
  %146 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call159 = call i32 @ue_v(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), %struct.Bitstream* %146)
  %147 = load %struct.img_par*, %struct.img_par** @img, align 8
  %model_number = getelementptr inbounds %struct.img_par, %struct.img_par* %147, i32 0, i32 99
  store i32 %call159, i32* %model_number, align 4
  br label %if.end.162

if.else.160:                                      ; preds = %land.lhs.true.155, %land.lhs.true.152, %if.end.150
  %148 = load %struct.img_par*, %struct.img_par** @img, align 8
  %model_number161 = getelementptr inbounds %struct.img_par, %struct.img_par* %148, i32 0, i32 99
  store i32 0, i32* %model_number161, align 4
  br label %if.end.162

if.end.162:                                       ; preds = %if.else.160, %if.then.158
  %149 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call163 = call i32 @se_v(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), %struct.Bitstream* %149)
  store i32 %call163, i32* %val, align 4
  %150 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %pic_init_qp_minus26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %150, i32 0, i32 25
  %151 = load i32, i32* %pic_init_qp_minus26, align 4
  %add164 = add nsw i32 26, %151
  %152 = load i32, i32* %val, align 4
  %add165 = add nsw i32 %add164, %152
  %153 = load %struct.img_par*, %struct.img_par** @img, align 8
  %qp = getelementptr inbounds %struct.img_par, %struct.img_par* %153, i32 0, i32 6
  store i32 %add165, i32* %qp, align 4
  %154 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %qp166 = getelementptr inbounds %struct.Slice, %struct.Slice* %154, i32 0, i32 1
  store i32 %add165, i32* %qp166, align 4
  %155 = load %struct.img_par*, %struct.img_par** @img, align 8
  %qp167 = getelementptr inbounds %struct.img_par, %struct.img_par* %155, i32 0, i32 6
  %156 = load i32, i32* %qp167, align 4
  %157 = load %struct.img_par*, %struct.img_par** @img, align 8
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.img_par, %struct.img_par* %157, i32 0, i32 103
  %158 = load i32, i32* %bitdepth_luma_qp_scale, align 4
  %sub = sub nsw i32 0, %158
  %cmp168 = icmp slt i32 %156, %sub
  br i1 %cmp168, label %if.then.172, label %lor.lhs.false.169

lor.lhs.false.169:                                ; preds = %if.end.162
  %159 = load %struct.img_par*, %struct.img_par** @img, align 8
  %qp170 = getelementptr inbounds %struct.img_par, %struct.img_par* %159, i32 0, i32 6
  %160 = load i32, i32* %qp170, align 4
  %cmp171 = icmp sgt i32 %160, 51
  br i1 %cmp171, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %lor.lhs.false.169, %if.end.162
  call void @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i32 0, i32 0), i32 500)
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.172, %lor.lhs.false.169
  %161 = load i32, i32* %val, align 4
  %162 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %slice_qp_delta = getelementptr inbounds %struct.Slice, %struct.Slice* %162, i32 0, i32 2
  store i32 %161, i32* %slice_qp_delta, align 4
  %163 = load %struct.img_par*, %struct.img_par** @img, align 8
  %type174 = getelementptr inbounds %struct.img_par, %struct.img_par* %163, i32 0, i32 10
  %164 = load i32, i32* %type174, align 4
  %cmp175 = icmp eq i32 %164, 3
  br i1 %cmp175, label %if.then.179, label %lor.lhs.false.176

lor.lhs.false.176:                                ; preds = %if.end.173
  %165 = load %struct.img_par*, %struct.img_par** @img, align 8
  %type177 = getelementptr inbounds %struct.img_par, %struct.img_par* %165, i32 0, i32 10
  %166 = load i32, i32* %type177, align 4
  %cmp178 = icmp eq i32 %166, 4
  br i1 %cmp178, label %if.then.179, label %if.end.195

if.then.179:                                      ; preds = %lor.lhs.false.176, %if.end.173
  %167 = load %struct.img_par*, %struct.img_par** @img, align 8
  %type180 = getelementptr inbounds %struct.img_par, %struct.img_par* %167, i32 0, i32 10
  %168 = load i32, i32* %type180, align 4
  %cmp181 = icmp eq i32 %168, 3
  br i1 %cmp181, label %if.then.182, label %if.end.184

if.then.182:                                      ; preds = %if.then.179
  %169 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call183 = call i32 @u_1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i32 0, i32 0), %struct.Bitstream* %169)
  %170 = load %struct.img_par*, %struct.img_par** @img, align 8
  %sp_switch = getelementptr inbounds %struct.img_par, %struct.img_par* %170, i32 0, i32 8
  store i32 %call183, i32* %sp_switch, align 4
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.182, %if.then.179
  %171 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call185 = call i32 @se_v(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), %struct.Bitstream* %171)
  store i32 %call185, i32* %val, align 4
  %172 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %pic_init_qs_minus26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %172, i32 0, i32 26
  %173 = load i32, i32* %pic_init_qs_minus26, align 4
  %add186 = add nsw i32 26, %173
  %174 = load i32, i32* %val, align 4
  %add187 = add nsw i32 %add186, %174
  %175 = load %struct.img_par*, %struct.img_par** @img, align 8
  %qpsp = getelementptr inbounds %struct.img_par, %struct.img_par* %175, i32 0, i32 7
  store i32 %add187, i32* %qpsp, align 4
  %176 = load %struct.img_par*, %struct.img_par** @img, align 8
  %qpsp188 = getelementptr inbounds %struct.img_par, %struct.img_par* %176, i32 0, i32 7
  %177 = load i32, i32* %qpsp188, align 4
  %cmp189 = icmp slt i32 %177, 0
  br i1 %cmp189, label %if.then.193, label %lor.lhs.false.190

lor.lhs.false.190:                                ; preds = %if.end.184
  %178 = load %struct.img_par*, %struct.img_par** @img, align 8
  %qpsp191 = getelementptr inbounds %struct.img_par, %struct.img_par* %178, i32 0, i32 7
  %179 = load i32, i32* %qpsp191, align 4
  %cmp192 = icmp sgt i32 %179, 51
  br i1 %cmp192, label %if.then.193, label %if.end.194

if.then.193:                                      ; preds = %lor.lhs.false.190, %if.end.184
  call void @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i32 0, i32 0), i32 500)
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.193, %lor.lhs.false.190
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %lor.lhs.false.176
  %180 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %deblocking_filter_control_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %180, i32 0, i32 29
  %181 = load i32, i32* %deblocking_filter_control_present_flag, align 4
  %tobool196 = icmp ne i32 %181, 0
  br i1 %tobool196, label %if.then.197, label %if.else.209

if.then.197:                                      ; preds = %if.end.195
  %182 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call198 = call i32 @ue_v(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i32 0, i32 0), %struct.Bitstream* %182)
  %183 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %LFDisableIdc = getelementptr inbounds %struct.Slice, %struct.Slice* %183, i32 0, i32 21
  store i32 %call198, i32* %LFDisableIdc, align 4
  %184 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %LFDisableIdc199 = getelementptr inbounds %struct.Slice, %struct.Slice* %184, i32 0, i32 21
  %185 = load i32, i32* %LFDisableIdc199, align 4
  %cmp200 = icmp ne i32 %185, 1
  br i1 %cmp200, label %if.then.201, label %if.else.205

if.then.201:                                      ; preds = %if.then.197
  %186 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call202 = call i32 @se_v(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i32 0, i32 0), %struct.Bitstream* %186)
  %mul = mul nsw i32 2, %call202
  %187 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %LFAlphaC0Offset = getelementptr inbounds %struct.Slice, %struct.Slice* %187, i32 0, i32 22
  store i32 %mul, i32* %LFAlphaC0Offset, align 4
  %188 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call203 = call i32 @se_v(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i32 0, i32 0), %struct.Bitstream* %188)
  %mul204 = mul nsw i32 2, %call203
  %189 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %LFBetaOffset = getelementptr inbounds %struct.Slice, %struct.Slice* %189, i32 0, i32 23
  store i32 %mul204, i32* %LFBetaOffset, align 4
  br label %if.end.208

if.else.205:                                      ; preds = %if.then.197
  %190 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %LFBetaOffset206 = getelementptr inbounds %struct.Slice, %struct.Slice* %190, i32 0, i32 23
  store i32 0, i32* %LFBetaOffset206, align 4
  %191 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %LFAlphaC0Offset207 = getelementptr inbounds %struct.Slice, %struct.Slice* %191, i32 0, i32 22
  store i32 0, i32* %LFAlphaC0Offset207, align 4
  br label %if.end.208

if.end.208:                                       ; preds = %if.else.205, %if.then.201
  br label %if.end.213

if.else.209:                                      ; preds = %if.end.195
  %192 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %LFBetaOffset210 = getelementptr inbounds %struct.Slice, %struct.Slice* %192, i32 0, i32 23
  store i32 0, i32* %LFBetaOffset210, align 4
  %193 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %LFAlphaC0Offset211 = getelementptr inbounds %struct.Slice, %struct.Slice* %193, i32 0, i32 22
  store i32 0, i32* %LFAlphaC0Offset211, align 4
  %194 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %LFDisableIdc212 = getelementptr inbounds %struct.Slice, %struct.Slice* %194, i32 0, i32 21
  store i32 0, i32* %LFDisableIdc212, align 4
  br label %if.end.213

if.end.213:                                       ; preds = %if.else.209, %if.end.208
  %195 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %num_slice_groups_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %195, i32 0, i32 12
  %196 = load i32, i32* %num_slice_groups_minus1, align 4
  %cmp214 = icmp ugt i32 %196, 0
  br i1 %cmp214, label %land.lhs.true.215, label %if.end.239

land.lhs.true.215:                                ; preds = %if.end.213
  %197 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %slice_group_map_type = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %197, i32 0, i32 13
  %198 = load i32, i32* %slice_group_map_type, align 4
  %cmp216 = icmp uge i32 %198, 3
  br i1 %cmp216, label %land.lhs.true.217, label %if.end.239

land.lhs.true.217:                                ; preds = %land.lhs.true.215
  %199 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %slice_group_map_type218 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %199, i32 0, i32 13
  %200 = load i32, i32* %slice_group_map_type218, align 4
  %cmp219 = icmp ule i32 %200, 5
  br i1 %cmp219, label %if.then.220, label %if.end.239

if.then.220:                                      ; preds = %land.lhs.true.217
  %201 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %pic_height_in_map_units_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %201, i32 0, i32 28
  %202 = load i32, i32* %pic_height_in_map_units_minus1, align 4
  %add221 = add i32 %202, 1
  %203 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %pic_width_in_mbs_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %203, i32 0, i32 27
  %204 = load i32, i32* %pic_width_in_mbs_minus1, align 4
  %add222 = add i32 %204, 1
  %mul223 = mul i32 %add221, %add222
  %205 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %slice_group_change_rate_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %205, i32 0, i32 18
  %206 = load i32, i32* %slice_group_change_rate_minus1, align 4
  %add224 = add i32 %206, 1
  %div = udiv i32 %mul223, %add224
  store i32 %div, i32* %len, align 4
  %207 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %pic_height_in_map_units_minus1225 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %207, i32 0, i32 28
  %208 = load i32, i32* %pic_height_in_map_units_minus1225, align 4
  %add226 = add i32 %208, 1
  %209 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %pic_width_in_mbs_minus1227 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %209, i32 0, i32 27
  %210 = load i32, i32* %pic_width_in_mbs_minus1227, align 4
  %add228 = add i32 %210, 1
  %mul229 = mul i32 %add226, %add228
  %211 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %slice_group_change_rate_minus1230 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %211, i32 0, i32 18
  %212 = load i32, i32* %slice_group_change_rate_minus1230, align 4
  %add231 = add i32 %212, 1
  %rem = urem i32 %mul229, %add231
  %tobool232 = icmp ne i32 %rem, 0
  br i1 %tobool232, label %if.then.233, label %if.end.235

if.then.233:                                      ; preds = %if.then.220
  %213 = load i32, i32* %len, align 4
  %add234 = add nsw i32 %213, 1
  store i32 %add234, i32* %len, align 4
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.233, %if.then.220
  %214 = load i32, i32* %len, align 4
  %add236 = add nsw i32 %214, 1
  %call237 = call i32 @CeilLog2(i32 %add236)
  store i32 %call237, i32* %len, align 4
  %215 = load i32, i32* %len, align 4
  %216 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call238 = call i32 @u_v(i32 %215, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0), %struct.Bitstream* %216)
  %217 = load %struct.img_par*, %struct.img_par** @img, align 8
  %slice_group_change_cycle = getelementptr inbounds %struct.img_par, %struct.img_par* %217, i32 0, i32 49
  store i32 %call238, i32* %slice_group_change_cycle, align 4
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.235, %land.lhs.true.217, %land.lhs.true.215, %if.end.213
  %218 = load %struct.img_par*, %struct.img_par** @img, align 8
  %FrameHeightInMbs = getelementptr inbounds %struct.img_par, %struct.img_par* %218, i32 0, i32 89
  %219 = load i32, i32* %FrameHeightInMbs, align 4
  %220 = load %struct.img_par*, %struct.img_par** @img, align 8
  %field_pic_flag240 = getelementptr inbounds %struct.img_par, %struct.img_par* %220, i32 0, i32 57
  %221 = load i32, i32* %field_pic_flag240, align 4
  %add241 = add i32 1, %221
  %div242 = udiv i32 %219, %add241
  %222 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicHeightInMbs = getelementptr inbounds %struct.img_par, %struct.img_par* %222, i32 0, i32 90
  store i32 %div242, i32* %PicHeightInMbs, align 4
  %223 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.img_par, %struct.img_par* %223, i32 0, i32 87
  %224 = load i32, i32* %PicWidthInMbs, align 4
  %225 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicHeightInMbs243 = getelementptr inbounds %struct.img_par, %struct.img_par* %225, i32 0, i32 90
  %226 = load i32, i32* %PicHeightInMbs243, align 4
  %mul244 = mul i32 %224, %226
  %227 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicSizeInMbs = getelementptr inbounds %struct.img_par, %struct.img_par* %227, i32 0, i32 91
  store i32 %mul244, i32* %PicSizeInMbs, align 4
  %228 = load %struct.img_par*, %struct.img_par** @img, align 8
  %PicWidthInMbs245 = getelementptr inbounds %struct.img_par, %struct.img_par* %228, i32 0, i32 87
  %229 = load i32, i32* %PicWidthInMbs245, align 4
  %230 = load %struct.img_par*, %struct.img_par** @img, align 8
  %FrameHeightInMbs246 = getelementptr inbounds %struct.img_par, %struct.img_par* %230, i32 0, i32 89
  %231 = load i32, i32* %FrameHeightInMbs246, align 4
  %mul247 = mul i32 %229, %231
  %232 = load %struct.img_par*, %struct.img_par** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.img_par, %struct.img_par* %232, i32 0, i32 92
  store i32 %mul247, i32* %FrameSizeInMbs, align 4
  %233 = load i32, i32* @UsedBits, align 4
  ret i32 %233
}

declare i32 @u_v(i32, i8*, %struct.Bitstream*) #1

declare i32 @u_1(i8*, %struct.Bitstream*) #1

declare i32 @se_v(i8*, %struct.Bitstream*) #1

; Function Attrs: nounwind uwtable
define void @dec_ref_pic_marking(%struct.Bitstream* %currStream) #0 {
entry:
  %currStream.addr = alloca %struct.Bitstream*, align 8
  %val = alloca i32, align 4
  %tmp_drpm = alloca %struct.DecRefPicMarking_s*, align 8
  %tmp_drpm2 = alloca %struct.DecRefPicMarking_s*, align 8
  store %struct.Bitstream* %currStream, %struct.Bitstream** %currStream.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.img_par*, %struct.img_par** @img, align 8
  %dec_ref_pic_marking_buffer = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 46
  %1 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer, align 8
  %tobool = icmp ne %struct.DecRefPicMarking_s* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.img_par*, %struct.img_par** @img, align 8
  %dec_ref_pic_marking_buffer1 = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 46
  %3 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer1, align 8
  store %struct.DecRefPicMarking_s* %3, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %4 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %Next = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %4, i32 0, i32 5
  %5 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %Next, align 8
  %6 = load %struct.img_par*, %struct.img_par** @img, align 8
  %dec_ref_pic_marking_buffer2 = getelementptr inbounds %struct.img_par, %struct.img_par* %6, i32 0, i32 46
  store %struct.DecRefPicMarking_s* %5, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer2, align 8
  %7 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %8 = bitcast %struct.DecRefPicMarking_s* %7 to i8*
  call void @free(i8* %8) #3
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load %struct.img_par*, %struct.img_par** @img, align 8
  %idr_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %9, i32 0, i32 83
  %10 = load i32, i32* %idr_flag, align 4
  %tobool3 = icmp ne i32 %10, 0
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %11 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %call = call i32 @u_1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i32 0, i32 0), %struct.Bitstream* %11)
  %12 = load %struct.img_par*, %struct.img_par** @img, align 8
  %no_output_of_prior_pics_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %12, i32 0, i32 94
  store i32 %call, i32* %no_output_of_prior_pics_flag, align 4
  %13 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %call4 = call i32 @u_1(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i32 0, i32 0), %struct.Bitstream* %13)
  %14 = load %struct.img_par*, %struct.img_par** @img, align 8
  %long_term_reference_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %14, i32 0, i32 95
  store i32 %call4, i32* %long_term_reference_flag, align 4
  br label %if.end.45

if.else:                                          ; preds = %while.end
  %15 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %call5 = call i32 @u_1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i32 0, i32 0), %struct.Bitstream* %15)
  %16 = load %struct.img_par*, %struct.img_par** @img, align 8
  %adaptive_ref_pic_buffering_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %16, i32 0, i32 96
  store i32 %call5, i32* %adaptive_ref_pic_buffering_flag, align 4
  %17 = load %struct.img_par*, %struct.img_par** @img, align 8
  %adaptive_ref_pic_buffering_flag6 = getelementptr inbounds %struct.img_par, %struct.img_par* %17, i32 0, i32 96
  %18 = load i32, i32* %adaptive_ref_pic_buffering_flag6, align 4
  %tobool7 = icmp ne i32 %18, 0
  br i1 %tobool7, label %if.then.8, label %if.end.44

if.then.8:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.8
  %call9 = call noalias i8* @calloc(i64 1, i64 32) #3
  %19 = bitcast i8* %call9 to %struct.DecRefPicMarking_s*
  store %struct.DecRefPicMarking_s* %19, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %20 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %Next10 = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %20, i32 0, i32 5
  store %struct.DecRefPicMarking_s* null, %struct.DecRefPicMarking_s** %Next10, align 8
  %21 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %call11 = call i32 @ue_v(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0), %struct.Bitstream* %21)
  %22 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %memory_management_control_operation = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %22, i32 0, i32 0
  store i32 %call11, i32* %memory_management_control_operation, align 4
  store i32 %call11, i32* %val, align 4
  %23 = load i32, i32* %val, align 4
  %cmp = icmp eq i32 %23, 1
  br i1 %cmp, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %24 = load i32, i32* %val, align 4
  %cmp12 = icmp eq i32 %24, 3
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %lor.lhs.false, %do.body
  %25 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %call14 = call i32 @ue_v(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i32 0, i32 0), %struct.Bitstream* %25)
  %26 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %difference_of_pic_nums_minus1 = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %26, i32 0, i32 1
  store i32 %call14, i32* %difference_of_pic_nums_minus1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.13, %lor.lhs.false
  %27 = load i32, i32* %val, align 4
  %cmp15 = icmp eq i32 %27, 2
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end
  %28 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %call17 = call i32 @ue_v(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0), %struct.Bitstream* %28)
  %29 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %long_term_pic_num = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %29, i32 0, i32 2
  store i32 %call17, i32* %long_term_pic_num, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end
  %30 = load i32, i32* %val, align 4
  %cmp19 = icmp eq i32 %30, 3
  br i1 %cmp19, label %if.then.22, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %if.end.18
  %31 = load i32, i32* %val, align 4
  %cmp21 = icmp eq i32 %31, 6
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %lor.lhs.false.20, %if.end.18
  %32 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %call23 = call i32 @ue_v(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), %struct.Bitstream* %32)
  %33 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %long_term_frame_idx = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %33, i32 0, i32 3
  store i32 %call23, i32* %long_term_frame_idx, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %lor.lhs.false.20
  %34 = load i32, i32* %val, align 4
  %cmp25 = icmp eq i32 %34, 4
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.24
  %35 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %call27 = call i32 @ue_v(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i32 0, i32 0), %struct.Bitstream* %35)
  %36 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %max_long_term_frame_idx_plus1 = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %36, i32 0, i32 4
  store i32 %call27, i32* %max_long_term_frame_idx_plus1, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.24
  %37 = load %struct.img_par*, %struct.img_par** @img, align 8
  %dec_ref_pic_marking_buffer29 = getelementptr inbounds %struct.img_par, %struct.img_par* %37, i32 0, i32 46
  %38 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer29, align 8
  %cmp30 = icmp eq %struct.DecRefPicMarking_s* %38, null
  br i1 %cmp30, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %if.end.28
  %39 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %40 = load %struct.img_par*, %struct.img_par** @img, align 8
  %dec_ref_pic_marking_buffer32 = getelementptr inbounds %struct.img_par, %struct.img_par* %40, i32 0, i32 46
  store %struct.DecRefPicMarking_s* %39, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer32, align 8
  br label %if.end.42

if.else.33:                                       ; preds = %if.end.28
  %41 = load %struct.img_par*, %struct.img_par** @img, align 8
  %dec_ref_pic_marking_buffer34 = getelementptr inbounds %struct.img_par, %struct.img_par* %41, i32 0, i32 46
  %42 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer34, align 8
  store %struct.DecRefPicMarking_s* %42, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  br label %while.cond.35

while.cond.35:                                    ; preds = %while.body.38, %if.else.33
  %43 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %Next36 = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %43, i32 0, i32 5
  %44 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %Next36, align 8
  %cmp37 = icmp ne %struct.DecRefPicMarking_s* %44, null
  br i1 %cmp37, label %while.body.38, label %while.end.40

while.body.38:                                    ; preds = %while.cond.35
  %45 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %Next39 = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %45, i32 0, i32 5
  %46 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %Next39, align 8
  store %struct.DecRefPicMarking_s* %46, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  br label %while.cond.35

while.end.40:                                     ; preds = %while.cond.35
  %47 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %48 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %Next41 = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %48, i32 0, i32 5
  store %struct.DecRefPicMarking_s* %47, %struct.DecRefPicMarking_s** %Next41, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %while.end.40, %if.then.31
  br label %do.cond

do.cond:                                          ; preds = %if.end.42
  %49 = load i32, i32* %val, align 4
  %cmp43 = icmp ne i32 %49, 0
  br i1 %cmp43, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.44

if.end.44:                                        ; preds = %do.end, %if.else
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then
  ret void
}

declare void @error(i8*, i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define void @decode_poc(%struct.img_par* %img) #0 {
entry:
  %img.addr = alloca %struct.img_par*, align 8
  %i = alloca i32, align 4
  %MaxPicOrderCntLsb = alloca i32, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  %0 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %log2_max_pic_order_cnt_lsb_minus4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %0, i32 0, i32 19
  %1 = load i32, i32* %log2_max_pic_order_cnt_lsb_minus4, align 4
  %add = add i32 %1, 4
  %shl = shl i32 1, %add
  store i32 %shl, i32* %MaxPicOrderCntLsb, align 4
  %2 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %pic_order_cnt_type = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %2, i32 0, i32 18
  %3 = load i32, i32* %pic_order_cnt_type, align 4
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.81
    i32 2, label %sw.bb.217
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %idr_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %4, i32 0, i32 83
  %5 = load i32, i32* %idr_flag, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %6 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PrevPicOrderCntMsb = getelementptr inbounds %struct.img_par, %struct.img_par* %6, i32 0, i32 62
  store i32 0, i32* %PrevPicOrderCntMsb, align 4
  %7 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PrevPicOrderCntLsb = getelementptr inbounds %struct.img_par, %struct.img_par* %7, i32 0, i32 63
  store i32 0, i32* %PrevPicOrderCntLsb, align 4
  br label %if.end.11

if.else:                                          ; preds = %sw.bb
  %8 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %last_has_mmco_5 = getelementptr inbounds %struct.img_par, %struct.img_par* %8, i32 0, i32 97
  %9 = load i32, i32* %last_has_mmco_5, align 4
  %tobool1 = icmp ne i32 %9, 0
  br i1 %tobool1, label %if.then.2, label %if.end.10

if.then.2:                                        ; preds = %if.else
  %10 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %last_pic_bottom_field = getelementptr inbounds %struct.img_par, %struct.img_par* %10, i32 0, i32 98
  %11 = load i32, i32* %last_pic_bottom_field, align 4
  %tobool3 = icmp ne i32 %11, 0
  br i1 %tobool3, label %if.then.4, label %if.else.7

if.then.4:                                        ; preds = %if.then.2
  %12 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PrevPicOrderCntMsb5 = getelementptr inbounds %struct.img_par, %struct.img_par* %12, i32 0, i32 62
  store i32 0, i32* %PrevPicOrderCntMsb5, align 4
  %13 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PrevPicOrderCntLsb6 = getelementptr inbounds %struct.img_par, %struct.img_par* %13, i32 0, i32 63
  store i32 0, i32* %PrevPicOrderCntLsb6, align 4
  br label %if.end

if.else.7:                                        ; preds = %if.then.2
  %14 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PrevPicOrderCntMsb8 = getelementptr inbounds %struct.img_par, %struct.img_par* %14, i32 0, i32 62
  store i32 0, i32* %PrevPicOrderCntMsb8, align 4
  %15 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %toppoc = getelementptr inbounds %struct.img_par, %struct.img_par* %15, i32 0, i32 53
  %16 = load i32, i32* %toppoc, align 4
  %17 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PrevPicOrderCntLsb9 = getelementptr inbounds %struct.img_par, %struct.img_par* %17, i32 0, i32 63
  store i32 %16, i32* %PrevPicOrderCntLsb9, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then
  %18 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pic_order_cnt_lsb = getelementptr inbounds %struct.img_par, %struct.img_par* %18, i32 0, i32 59
  %19 = load i32, i32* %pic_order_cnt_lsb, align 4
  %20 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PrevPicOrderCntLsb12 = getelementptr inbounds %struct.img_par, %struct.img_par* %20, i32 0, i32 63
  %21 = load i32, i32* %PrevPicOrderCntLsb12, align 4
  %cmp = icmp ult i32 %19, %21
  br i1 %cmp, label %land.lhs.true, label %if.else.19

land.lhs.true:                                    ; preds = %if.end.11
  %22 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PrevPicOrderCntLsb13 = getelementptr inbounds %struct.img_par, %struct.img_par* %22, i32 0, i32 63
  %23 = load i32, i32* %PrevPicOrderCntLsb13, align 4
  %24 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pic_order_cnt_lsb14 = getelementptr inbounds %struct.img_par, %struct.img_par* %24, i32 0, i32 59
  %25 = load i32, i32* %pic_order_cnt_lsb14, align 4
  %sub = sub i32 %23, %25
  %26 = load i32, i32* %MaxPicOrderCntLsb, align 4
  %div = udiv i32 %26, 2
  %cmp15 = icmp uge i32 %sub, %div
  br i1 %cmp15, label %if.then.16, label %if.else.19

if.then.16:                                       ; preds = %land.lhs.true
  %27 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PrevPicOrderCntMsb17 = getelementptr inbounds %struct.img_par, %struct.img_par* %27, i32 0, i32 62
  %28 = load i32, i32* %PrevPicOrderCntMsb17, align 4
  %29 = load i32, i32* %MaxPicOrderCntLsb, align 4
  %add18 = add i32 %28, %29
  %30 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PicOrderCntMsb = getelementptr inbounds %struct.img_par, %struct.img_par* %30, i32 0, i32 64
  store i32 %add18, i32* %PicOrderCntMsb, align 4
  br label %if.end.37

if.else.19:                                       ; preds = %land.lhs.true, %if.end.11
  %31 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pic_order_cnt_lsb20 = getelementptr inbounds %struct.img_par, %struct.img_par* %31, i32 0, i32 59
  %32 = load i32, i32* %pic_order_cnt_lsb20, align 4
  %33 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PrevPicOrderCntLsb21 = getelementptr inbounds %struct.img_par, %struct.img_par* %33, i32 0, i32 63
  %34 = load i32, i32* %PrevPicOrderCntLsb21, align 4
  %cmp22 = icmp ugt i32 %32, %34
  br i1 %cmp22, label %land.lhs.true.23, label %if.else.33

land.lhs.true.23:                                 ; preds = %if.else.19
  %35 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pic_order_cnt_lsb24 = getelementptr inbounds %struct.img_par, %struct.img_par* %35, i32 0, i32 59
  %36 = load i32, i32* %pic_order_cnt_lsb24, align 4
  %37 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PrevPicOrderCntLsb25 = getelementptr inbounds %struct.img_par, %struct.img_par* %37, i32 0, i32 63
  %38 = load i32, i32* %PrevPicOrderCntLsb25, align 4
  %sub26 = sub i32 %36, %38
  %39 = load i32, i32* %MaxPicOrderCntLsb, align 4
  %div27 = udiv i32 %39, 2
  %cmp28 = icmp ugt i32 %sub26, %div27
  br i1 %cmp28, label %if.then.29, label %if.else.33

if.then.29:                                       ; preds = %land.lhs.true.23
  %40 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PrevPicOrderCntMsb30 = getelementptr inbounds %struct.img_par, %struct.img_par* %40, i32 0, i32 62
  %41 = load i32, i32* %PrevPicOrderCntMsb30, align 4
  %42 = load i32, i32* %MaxPicOrderCntLsb, align 4
  %sub31 = sub i32 %41, %42
  %43 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PicOrderCntMsb32 = getelementptr inbounds %struct.img_par, %struct.img_par* %43, i32 0, i32 64
  store i32 %sub31, i32* %PicOrderCntMsb32, align 4
  br label %if.end.36

if.else.33:                                       ; preds = %land.lhs.true.23, %if.else.19
  %44 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PrevPicOrderCntMsb34 = getelementptr inbounds %struct.img_par, %struct.img_par* %44, i32 0, i32 62
  %45 = load i32, i32* %PrevPicOrderCntMsb34, align 4
  %46 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PicOrderCntMsb35 = getelementptr inbounds %struct.img_par, %struct.img_par* %46, i32 0, i32 64
  store i32 %45, i32* %PicOrderCntMsb35, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.29
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.16
  %47 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %field_pic_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %47, i32 0, i32 57
  %48 = load i32, i32* %field_pic_flag, align 4
  %cmp38 = icmp eq i32 %48, 0
  br i1 %cmp38, label %if.then.39, label %if.else.51

if.then.39:                                       ; preds = %if.end.37
  %49 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PicOrderCntMsb40 = getelementptr inbounds %struct.img_par, %struct.img_par* %49, i32 0, i32 64
  %50 = load i32, i32* %PicOrderCntMsb40, align 4
  %51 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pic_order_cnt_lsb41 = getelementptr inbounds %struct.img_par, %struct.img_par* %51, i32 0, i32 59
  %52 = load i32, i32* %pic_order_cnt_lsb41, align 4
  %add42 = add i32 %50, %52
  %53 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %toppoc43 = getelementptr inbounds %struct.img_par, %struct.img_par* %53, i32 0, i32 53
  store i32 %add42, i32* %toppoc43, align 4
  %54 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %toppoc44 = getelementptr inbounds %struct.img_par, %struct.img_par* %54, i32 0, i32 53
  %55 = load i32, i32* %toppoc44, align 4
  %56 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %delta_pic_order_cnt_bottom = getelementptr inbounds %struct.img_par, %struct.img_par* %56, i32 0, i32 60
  %57 = load i32, i32* %delta_pic_order_cnt_bottom, align 4
  %add45 = add nsw i32 %55, %57
  %58 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bottompoc = getelementptr inbounds %struct.img_par, %struct.img_par* %58, i32 0, i32 54
  store i32 %add45, i32* %bottompoc, align 4
  %59 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %toppoc46 = getelementptr inbounds %struct.img_par, %struct.img_par* %59, i32 0, i32 53
  %60 = load i32, i32* %toppoc46, align 4
  %61 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bottompoc47 = getelementptr inbounds %struct.img_par, %struct.img_par* %61, i32 0, i32 54
  %62 = load i32, i32* %bottompoc47, align 4
  %cmp48 = icmp slt i32 %60, %62
  br i1 %cmp48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.39
  %63 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %toppoc49 = getelementptr inbounds %struct.img_par, %struct.img_par* %63, i32 0, i32 53
  %64 = load i32, i32* %toppoc49, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.39
  %65 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bottompoc50 = getelementptr inbounds %struct.img_par, %struct.img_par* %65, i32 0, i32 54
  %66 = load i32, i32* %bottompoc50, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %64, %cond.true ], [ %66, %cond.false ]
  %67 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %framepoc = getelementptr inbounds %struct.img_par, %struct.img_par* %67, i32 0, i32 55
  store i32 %cond, i32* %framepoc, align 4
  %68 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %ThisPOC = getelementptr inbounds %struct.img_par, %struct.img_par* %68, i32 0, i32 73
  store i32 %cond, i32* %ThisPOC, align 4
  br label %if.end.66

if.else.51:                                       ; preds = %if.end.37
  %69 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bottom_field_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %69, i32 0, i32 58
  %70 = load i32, i32* %bottom_field_flag, align 4
  %cmp52 = icmp eq i32 %70, 0
  br i1 %cmp52, label %if.then.53, label %if.else.59

if.then.53:                                       ; preds = %if.else.51
  %71 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PicOrderCntMsb54 = getelementptr inbounds %struct.img_par, %struct.img_par* %71, i32 0, i32 64
  %72 = load i32, i32* %PicOrderCntMsb54, align 4
  %73 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pic_order_cnt_lsb55 = getelementptr inbounds %struct.img_par, %struct.img_par* %73, i32 0, i32 59
  %74 = load i32, i32* %pic_order_cnt_lsb55, align 4
  %add56 = add i32 %72, %74
  %75 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %toppoc57 = getelementptr inbounds %struct.img_par, %struct.img_par* %75, i32 0, i32 53
  store i32 %add56, i32* %toppoc57, align 4
  %76 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %ThisPOC58 = getelementptr inbounds %struct.img_par, %struct.img_par* %76, i32 0, i32 73
  store i32 %add56, i32* %ThisPOC58, align 4
  br label %if.end.65

if.else.59:                                       ; preds = %if.else.51
  %77 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PicOrderCntMsb60 = getelementptr inbounds %struct.img_par, %struct.img_par* %77, i32 0, i32 64
  %78 = load i32, i32* %PicOrderCntMsb60, align 4
  %79 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pic_order_cnt_lsb61 = getelementptr inbounds %struct.img_par, %struct.img_par* %79, i32 0, i32 59
  %80 = load i32, i32* %pic_order_cnt_lsb61, align 4
  %add62 = add i32 %78, %80
  %81 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bottompoc63 = getelementptr inbounds %struct.img_par, %struct.img_par* %81, i32 0, i32 54
  store i32 %add62, i32* %bottompoc63, align 4
  %82 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %ThisPOC64 = getelementptr inbounds %struct.img_par, %struct.img_par* %82, i32 0, i32 73
  store i32 %add62, i32* %ThisPOC64, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.59, %if.then.53
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %cond.end
  %83 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %ThisPOC67 = getelementptr inbounds %struct.img_par, %struct.img_par* %83, i32 0, i32 73
  %84 = load i32, i32* %ThisPOC67, align 4
  %85 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %framepoc68 = getelementptr inbounds %struct.img_par, %struct.img_par* %85, i32 0, i32 55
  store i32 %84, i32* %framepoc68, align 4
  %86 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %frame_num = getelementptr inbounds %struct.img_par, %struct.img_par* %86, i32 0, i32 56
  %87 = load i32, i32* %frame_num, align 4
  %88 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PreviousFrameNum = getelementptr inbounds %struct.img_par, %struct.img_par* %88, i32 0, i32 69
  %89 = load i32, i32* %PreviousFrameNum, align 4
  %cmp69 = icmp ne i32 %87, %89
  br i1 %cmp69, label %if.then.70, label %if.end.73

if.then.70:                                       ; preds = %if.end.66
  %90 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %frame_num71 = getelementptr inbounds %struct.img_par, %struct.img_par* %90, i32 0, i32 56
  %91 = load i32, i32* %frame_num71, align 4
  %92 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PreviousFrameNum72 = getelementptr inbounds %struct.img_par, %struct.img_par* %92, i32 0, i32 69
  store i32 %91, i32* %PreviousFrameNum72, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.70, %if.end.66
  %93 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %nal_reference_idc = getelementptr inbounds %struct.img_par, %struct.img_par* %93, i32 0, i32 84
  %94 = load i32, i32* %nal_reference_idc, align 4
  %tobool74 = icmp ne i32 %94, 0
  br i1 %tobool74, label %if.then.75, label %if.end.80

if.then.75:                                       ; preds = %if.end.73
  %95 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pic_order_cnt_lsb76 = getelementptr inbounds %struct.img_par, %struct.img_par* %95, i32 0, i32 59
  %96 = load i32, i32* %pic_order_cnt_lsb76, align 4
  %97 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PrevPicOrderCntLsb77 = getelementptr inbounds %struct.img_par, %struct.img_par* %97, i32 0, i32 63
  store i32 %96, i32* %PrevPicOrderCntLsb77, align 4
  %98 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PicOrderCntMsb78 = getelementptr inbounds %struct.img_par, %struct.img_par* %98, i32 0, i32 64
  %99 = load i32, i32* %PicOrderCntMsb78, align 4
  %100 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PrevPicOrderCntMsb79 = getelementptr inbounds %struct.img_par, %struct.img_par* %100, i32 0, i32 62
  store i32 %99, i32* %PrevPicOrderCntMsb79, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.75, %if.end.73
  br label %sw.epilog

sw.bb.81:                                         ; preds = %entry
  %101 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %idr_flag82 = getelementptr inbounds %struct.img_par, %struct.img_par* %101, i32 0, i32 83
  %102 = load i32, i32* %idr_flag82, align 4
  %tobool83 = icmp ne i32 %102, 0
  br i1 %tobool83, label %if.then.84, label %if.else.89

if.then.84:                                       ; preds = %sw.bb.81
  %103 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %FrameNumOffset = getelementptr inbounds %struct.img_par, %struct.img_par* %103, i32 0, i32 70
  store i32 0, i32* %FrameNumOffset, align 4
  %104 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %delta_pic_order_cnt = getelementptr inbounds %struct.img_par, %struct.img_par* %104, i32 0, i32 61
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %delta_pic_order_cnt, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %105 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %frame_num85 = getelementptr inbounds %struct.img_par, %struct.img_par* %105, i32 0, i32 56
  %106 = load i32, i32* %frame_num85, align 4
  %tobool86 = icmp ne i32 %106, 0
  br i1 %tobool86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.then.84
  call void @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.34, i32 0, i32 0), i32 -1020)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %if.then.84
  br label %if.end.106

if.else.89:                                       ; preds = %sw.bb.81
  %107 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %last_has_mmco_590 = getelementptr inbounds %struct.img_par, %struct.img_par* %107, i32 0, i32 97
  %108 = load i32, i32* %last_has_mmco_590, align 4
  %tobool91 = icmp ne i32 %108, 0
  br i1 %tobool91, label %if.then.92, label %if.end.94

if.then.92:                                       ; preds = %if.else.89
  %109 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PreviousFrameNumOffset = getelementptr inbounds %struct.img_par, %struct.img_par* %109, i32 0, i32 74
  store i32 0, i32* %PreviousFrameNumOffset, align 4
  %110 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PreviousFrameNum93 = getelementptr inbounds %struct.img_par, %struct.img_par* %110, i32 0, i32 69
  store i32 0, i32* %PreviousFrameNum93, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.92, %if.else.89
  %111 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %frame_num95 = getelementptr inbounds %struct.img_par, %struct.img_par* %111, i32 0, i32 56
  %112 = load i32, i32* %frame_num95, align 4
  %113 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PreviousFrameNum96 = getelementptr inbounds %struct.img_par, %struct.img_par* %113, i32 0, i32 69
  %114 = load i32, i32* %PreviousFrameNum96, align 4
  %cmp97 = icmp ult i32 %112, %114
  br i1 %cmp97, label %if.then.98, label %if.else.102

if.then.98:                                       ; preds = %if.end.94
  %115 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PreviousFrameNumOffset99 = getelementptr inbounds %struct.img_par, %struct.img_par* %115, i32 0, i32 74
  %116 = load i32, i32* %PreviousFrameNumOffset99, align 4
  %117 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %MaxFrameNum = getelementptr inbounds %struct.img_par, %struct.img_par* %117, i32 0, i32 86
  %118 = load i32, i32* %MaxFrameNum, align 4
  %add100 = add nsw i32 %116, %118
  %119 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %FrameNumOffset101 = getelementptr inbounds %struct.img_par, %struct.img_par* %119, i32 0, i32 70
  store i32 %add100, i32* %FrameNumOffset101, align 4
  br label %if.end.105

if.else.102:                                      ; preds = %if.end.94
  %120 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PreviousFrameNumOffset103 = getelementptr inbounds %struct.img_par, %struct.img_par* %120, i32 0, i32 74
  %121 = load i32, i32* %PreviousFrameNumOffset103, align 4
  %122 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %FrameNumOffset104 = getelementptr inbounds %struct.img_par, %struct.img_par* %122, i32 0, i32 70
  store i32 %121, i32* %FrameNumOffset104, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.102, %if.then.98
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.end.88
  %123 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %num_ref_frames_in_pic_order_cnt_cycle = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %123, i32 0, i32 23
  %124 = load i32, i32* %num_ref_frames_in_pic_order_cnt_cycle, align 4
  %tobool107 = icmp ne i32 %124, 0
  br i1 %tobool107, label %if.then.108, label %if.else.112

if.then.108:                                      ; preds = %if.end.106
  %125 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %FrameNumOffset109 = getelementptr inbounds %struct.img_par, %struct.img_par* %125, i32 0, i32 70
  %126 = load i32, i32* %FrameNumOffset109, align 4
  %127 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %frame_num110 = getelementptr inbounds %struct.img_par, %struct.img_par* %127, i32 0, i32 56
  %128 = load i32, i32* %frame_num110, align 4
  %add111 = add i32 %126, %128
  %129 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %AbsFrameNum = getelementptr inbounds %struct.img_par, %struct.img_par* %129, i32 0, i32 65
  store i32 %add111, i32* %AbsFrameNum, align 4
  br label %if.end.114

if.else.112:                                      ; preds = %if.end.106
  %130 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %AbsFrameNum113 = getelementptr inbounds %struct.img_par, %struct.img_par* %130, i32 0, i32 65
  store i32 0, i32* %AbsFrameNum113, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.112, %if.then.108
  %131 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %nal_reference_idc115 = getelementptr inbounds %struct.img_par, %struct.img_par* %131, i32 0, i32 84
  %132 = load i32, i32* %nal_reference_idc115, align 4
  %tobool116 = icmp ne i32 %132, 0
  br i1 %tobool116, label %if.end.122, label %land.lhs.true.117

land.lhs.true.117:                                ; preds = %if.end.114
  %133 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %AbsFrameNum118 = getelementptr inbounds %struct.img_par, %struct.img_par* %133, i32 0, i32 65
  %134 = load i32, i32* %AbsFrameNum118, align 4
  %cmp119 = icmp ugt i32 %134, 0
  br i1 %cmp119, label %if.then.120, label %if.end.122

if.then.120:                                      ; preds = %land.lhs.true.117
  %135 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %AbsFrameNum121 = getelementptr inbounds %struct.img_par, %struct.img_par* %135, i32 0, i32 65
  %136 = load i32, i32* %AbsFrameNum121, align 4
  %dec = add i32 %136, -1
  store i32 %dec, i32* %AbsFrameNum121, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.120, %land.lhs.true.117, %if.end.114
  %137 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %ExpectedDeltaPerPicOrderCntCycle = getelementptr inbounds %struct.img_par, %struct.img_par* %137, i32 0, i32 71
  store i32 0, i32* %ExpectedDeltaPerPicOrderCntCycle, align 4
  %138 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %num_ref_frames_in_pic_order_cnt_cycle123 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %138, i32 0, i32 23
  %139 = load i32, i32* %num_ref_frames_in_pic_order_cnt_cycle123, align 4
  %tobool124 = icmp ne i32 %139, 0
  br i1 %tobool124, label %if.then.125, label %if.end.131

if.then.125:                                      ; preds = %if.end.122
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.125
  %140 = load i32, i32* %i, align 4
  %141 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %num_ref_frames_in_pic_order_cnt_cycle126 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %141, i32 0, i32 23
  %142 = load i32, i32* %num_ref_frames_in_pic_order_cnt_cycle126, align 4
  %cmp127 = icmp slt i32 %140, %142
  br i1 %cmp127, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %143 = load i32, i32* %i, align 4
  %idxprom = sext i32 %143 to i64
  %144 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %offset_for_ref_frame = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %144, i32 0, i32 24
  %arrayidx128 = getelementptr inbounds [256 x i32], [256 x i32]* %offset_for_ref_frame, i32 0, i64 %idxprom
  %145 = load i32, i32* %arrayidx128, align 4
  %146 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %ExpectedDeltaPerPicOrderCntCycle129 = getelementptr inbounds %struct.img_par, %struct.img_par* %146, i32 0, i32 71
  %147 = load i32, i32* %ExpectedDeltaPerPicOrderCntCycle129, align 4
  %add130 = add nsw i32 %147, %145
  store i32 %add130, i32* %ExpectedDeltaPerPicOrderCntCycle129, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %148 = load i32, i32* %i, align 4
  %inc = add nsw i32 %148, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.131

if.end.131:                                       ; preds = %for.end, %if.end.122
  %149 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %AbsFrameNum132 = getelementptr inbounds %struct.img_par, %struct.img_par* %149, i32 0, i32 65
  %150 = load i32, i32* %AbsFrameNum132, align 4
  %tobool133 = icmp ne i32 %150, 0
  br i1 %tobool133, label %if.then.134, label %if.else.156

if.then.134:                                      ; preds = %if.end.131
  %151 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %AbsFrameNum135 = getelementptr inbounds %struct.img_par, %struct.img_par* %151, i32 0, i32 65
  %152 = load i32, i32* %AbsFrameNum135, align 4
  %sub136 = sub i32 %152, 1
  %153 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %num_ref_frames_in_pic_order_cnt_cycle137 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %153, i32 0, i32 23
  %154 = load i32, i32* %num_ref_frames_in_pic_order_cnt_cycle137, align 4
  %div138 = udiv i32 %sub136, %154
  %155 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PicOrderCntCycleCnt = getelementptr inbounds %struct.img_par, %struct.img_par* %155, i32 0, i32 67
  store i32 %div138, i32* %PicOrderCntCycleCnt, align 4
  %156 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %AbsFrameNum139 = getelementptr inbounds %struct.img_par, %struct.img_par* %156, i32 0, i32 65
  %157 = load i32, i32* %AbsFrameNum139, align 4
  %sub140 = sub i32 %157, 1
  %158 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %num_ref_frames_in_pic_order_cnt_cycle141 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %158, i32 0, i32 23
  %159 = load i32, i32* %num_ref_frames_in_pic_order_cnt_cycle141, align 4
  %rem = urem i32 %sub140, %159
  %160 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %FrameNumInPicOrderCntCycle = getelementptr inbounds %struct.img_par, %struct.img_par* %160, i32 0, i32 68
  store i32 %rem, i32* %FrameNumInPicOrderCntCycle, align 4
  %161 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PicOrderCntCycleCnt142 = getelementptr inbounds %struct.img_par, %struct.img_par* %161, i32 0, i32 67
  %162 = load i32, i32* %PicOrderCntCycleCnt142, align 4
  %163 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %ExpectedDeltaPerPicOrderCntCycle143 = getelementptr inbounds %struct.img_par, %struct.img_par* %163, i32 0, i32 71
  %164 = load i32, i32* %ExpectedDeltaPerPicOrderCntCycle143, align 4
  %mul = mul nsw i32 %162, %164
  %165 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %ExpectedPicOrderCnt = getelementptr inbounds %struct.img_par, %struct.img_par* %165, i32 0, i32 66
  store i32 %mul, i32* %ExpectedPicOrderCnt, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.153, %if.then.134
  %166 = load i32, i32* %i, align 4
  %167 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %FrameNumInPicOrderCntCycle145 = getelementptr inbounds %struct.img_par, %struct.img_par* %167, i32 0, i32 68
  %168 = load i32, i32* %FrameNumInPicOrderCntCycle145, align 4
  %cmp146 = icmp sle i32 %166, %168
  br i1 %cmp146, label %for.body.147, label %for.end.155

for.body.147:                                     ; preds = %for.cond.144
  %169 = load i32, i32* %i, align 4
  %idxprom148 = sext i32 %169 to i64
  %170 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %offset_for_ref_frame149 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %170, i32 0, i32 24
  %arrayidx150 = getelementptr inbounds [256 x i32], [256 x i32]* %offset_for_ref_frame149, i32 0, i64 %idxprom148
  %171 = load i32, i32* %arrayidx150, align 4
  %172 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %ExpectedPicOrderCnt151 = getelementptr inbounds %struct.img_par, %struct.img_par* %172, i32 0, i32 66
  %173 = load i32, i32* %ExpectedPicOrderCnt151, align 4
  %add152 = add nsw i32 %173, %171
  store i32 %add152, i32* %ExpectedPicOrderCnt151, align 4
  br label %for.inc.153

for.inc.153:                                      ; preds = %for.body.147
  %174 = load i32, i32* %i, align 4
  %inc154 = add nsw i32 %174, 1
  store i32 %inc154, i32* %i, align 4
  br label %for.cond.144

for.end.155:                                      ; preds = %for.cond.144
  br label %if.end.158

if.else.156:                                      ; preds = %if.end.131
  %175 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %ExpectedPicOrderCnt157 = getelementptr inbounds %struct.img_par, %struct.img_par* %175, i32 0, i32 66
  store i32 0, i32* %ExpectedPicOrderCnt157, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.156, %for.end.155
  %176 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %nal_reference_idc159 = getelementptr inbounds %struct.img_par, %struct.img_par* %176, i32 0, i32 84
  %177 = load i32, i32* %nal_reference_idc159, align 4
  %tobool160 = icmp ne i32 %177, 0
  br i1 %tobool160, label %if.end.164, label %if.then.161

if.then.161:                                      ; preds = %if.end.158
  %178 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %offset_for_non_ref_pic = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %178, i32 0, i32 21
  %179 = load i32, i32* %offset_for_non_ref_pic, align 4
  %180 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %ExpectedPicOrderCnt162 = getelementptr inbounds %struct.img_par, %struct.img_par* %180, i32 0, i32 66
  %181 = load i32, i32* %ExpectedPicOrderCnt162, align 4
  %add163 = add nsw i32 %181, %179
  store i32 %add163, i32* %ExpectedPicOrderCnt162, align 4
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.161, %if.end.158
  %182 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %field_pic_flag165 = getelementptr inbounds %struct.img_par, %struct.img_par* %182, i32 0, i32 57
  %183 = load i32, i32* %field_pic_flag165, align 4
  %cmp166 = icmp eq i32 %183, 0
  br i1 %cmp166, label %if.then.167, label %if.else.190

if.then.167:                                      ; preds = %if.end.164
  %184 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %ExpectedPicOrderCnt168 = getelementptr inbounds %struct.img_par, %struct.img_par* %184, i32 0, i32 66
  %185 = load i32, i32* %ExpectedPicOrderCnt168, align 4
  %186 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %delta_pic_order_cnt169 = getelementptr inbounds %struct.img_par, %struct.img_par* %186, i32 0, i32 61
  %arrayidx170 = getelementptr inbounds [3 x i32], [3 x i32]* %delta_pic_order_cnt169, i32 0, i64 0
  %187 = load i32, i32* %arrayidx170, align 4
  %add171 = add nsw i32 %185, %187
  %188 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %toppoc172 = getelementptr inbounds %struct.img_par, %struct.img_par* %188, i32 0, i32 53
  store i32 %add171, i32* %toppoc172, align 4
  %189 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %toppoc173 = getelementptr inbounds %struct.img_par, %struct.img_par* %189, i32 0, i32 53
  %190 = load i32, i32* %toppoc173, align 4
  %191 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %offset_for_top_to_bottom_field = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %191, i32 0, i32 22
  %192 = load i32, i32* %offset_for_top_to_bottom_field, align 4
  %add174 = add nsw i32 %190, %192
  %193 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %delta_pic_order_cnt175 = getelementptr inbounds %struct.img_par, %struct.img_par* %193, i32 0, i32 61
  %arrayidx176 = getelementptr inbounds [3 x i32], [3 x i32]* %delta_pic_order_cnt175, i32 0, i64 1
  %194 = load i32, i32* %arrayidx176, align 4
  %add177 = add nsw i32 %add174, %194
  %195 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bottompoc178 = getelementptr inbounds %struct.img_par, %struct.img_par* %195, i32 0, i32 54
  store i32 %add177, i32* %bottompoc178, align 4
  %196 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %toppoc179 = getelementptr inbounds %struct.img_par, %struct.img_par* %196, i32 0, i32 53
  %197 = load i32, i32* %toppoc179, align 4
  %198 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bottompoc180 = getelementptr inbounds %struct.img_par, %struct.img_par* %198, i32 0, i32 54
  %199 = load i32, i32* %bottompoc180, align 4
  %cmp181 = icmp slt i32 %197, %199
  br i1 %cmp181, label %cond.true.182, label %cond.false.184

cond.true.182:                                    ; preds = %if.then.167
  %200 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %toppoc183 = getelementptr inbounds %struct.img_par, %struct.img_par* %200, i32 0, i32 53
  %201 = load i32, i32* %toppoc183, align 4
  br label %cond.end.186

cond.false.184:                                   ; preds = %if.then.167
  %202 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bottompoc185 = getelementptr inbounds %struct.img_par, %struct.img_par* %202, i32 0, i32 54
  %203 = load i32, i32* %bottompoc185, align 4
  br label %cond.end.186

cond.end.186:                                     ; preds = %cond.false.184, %cond.true.182
  %cond187 = phi i32 [ %201, %cond.true.182 ], [ %203, %cond.false.184 ]
  %204 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %framepoc188 = getelementptr inbounds %struct.img_par, %struct.img_par* %204, i32 0, i32 55
  store i32 %cond187, i32* %framepoc188, align 4
  %205 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %ThisPOC189 = getelementptr inbounds %struct.img_par, %struct.img_par* %205, i32 0, i32 73
  store i32 %cond187, i32* %ThisPOC189, align 4
  br label %if.end.210

if.else.190:                                      ; preds = %if.end.164
  %206 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bottom_field_flag191 = getelementptr inbounds %struct.img_par, %struct.img_par* %206, i32 0, i32 58
  %207 = load i32, i32* %bottom_field_flag191, align 4
  %cmp192 = icmp eq i32 %207, 0
  br i1 %cmp192, label %if.then.193, label %if.else.200

if.then.193:                                      ; preds = %if.else.190
  %208 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %ExpectedPicOrderCnt194 = getelementptr inbounds %struct.img_par, %struct.img_par* %208, i32 0, i32 66
  %209 = load i32, i32* %ExpectedPicOrderCnt194, align 4
  %210 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %delta_pic_order_cnt195 = getelementptr inbounds %struct.img_par, %struct.img_par* %210, i32 0, i32 61
  %arrayidx196 = getelementptr inbounds [3 x i32], [3 x i32]* %delta_pic_order_cnt195, i32 0, i64 0
  %211 = load i32, i32* %arrayidx196, align 4
  %add197 = add nsw i32 %209, %211
  %212 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %toppoc198 = getelementptr inbounds %struct.img_par, %struct.img_par* %212, i32 0, i32 53
  store i32 %add197, i32* %toppoc198, align 4
  %213 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %ThisPOC199 = getelementptr inbounds %struct.img_par, %struct.img_par* %213, i32 0, i32 73
  store i32 %add197, i32* %ThisPOC199, align 4
  br label %if.end.209

if.else.200:                                      ; preds = %if.else.190
  %214 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %ExpectedPicOrderCnt201 = getelementptr inbounds %struct.img_par, %struct.img_par* %214, i32 0, i32 66
  %215 = load i32, i32* %ExpectedPicOrderCnt201, align 4
  %216 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %offset_for_top_to_bottom_field202 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %216, i32 0, i32 22
  %217 = load i32, i32* %offset_for_top_to_bottom_field202, align 4
  %add203 = add nsw i32 %215, %217
  %218 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %delta_pic_order_cnt204 = getelementptr inbounds %struct.img_par, %struct.img_par* %218, i32 0, i32 61
  %arrayidx205 = getelementptr inbounds [3 x i32], [3 x i32]* %delta_pic_order_cnt204, i32 0, i64 0
  %219 = load i32, i32* %arrayidx205, align 4
  %add206 = add nsw i32 %add203, %219
  %220 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bottompoc207 = getelementptr inbounds %struct.img_par, %struct.img_par* %220, i32 0, i32 54
  store i32 %add206, i32* %bottompoc207, align 4
  %221 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %ThisPOC208 = getelementptr inbounds %struct.img_par, %struct.img_par* %221, i32 0, i32 73
  store i32 %add206, i32* %ThisPOC208, align 4
  br label %if.end.209

if.end.209:                                       ; preds = %if.else.200, %if.then.193
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %cond.end.186
  %222 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %ThisPOC211 = getelementptr inbounds %struct.img_par, %struct.img_par* %222, i32 0, i32 73
  %223 = load i32, i32* %ThisPOC211, align 4
  %224 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %framepoc212 = getelementptr inbounds %struct.img_par, %struct.img_par* %224, i32 0, i32 55
  store i32 %223, i32* %framepoc212, align 4
  %225 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %frame_num213 = getelementptr inbounds %struct.img_par, %struct.img_par* %225, i32 0, i32 56
  %226 = load i32, i32* %frame_num213, align 4
  %227 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PreviousFrameNum214 = getelementptr inbounds %struct.img_par, %struct.img_par* %227, i32 0, i32 69
  store i32 %226, i32* %PreviousFrameNum214, align 4
  %228 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %FrameNumOffset215 = getelementptr inbounds %struct.img_par, %struct.img_par* %228, i32 0, i32 70
  %229 = load i32, i32* %FrameNumOffset215, align 4
  %230 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PreviousFrameNumOffset216 = getelementptr inbounds %struct.img_par, %struct.img_par* %230, i32 0, i32 74
  store i32 %229, i32* %PreviousFrameNumOffset216, align 4
  br label %sw.epilog

sw.bb.217:                                        ; preds = %entry
  %231 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %idr_flag218 = getelementptr inbounds %struct.img_par, %struct.img_par* %231, i32 0, i32 83
  %232 = load i32, i32* %idr_flag218, align 4
  %tobool219 = icmp ne i32 %232, 0
  br i1 %tobool219, label %if.then.220, label %if.else.230

if.then.220:                                      ; preds = %sw.bb.217
  %233 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %FrameNumOffset221 = getelementptr inbounds %struct.img_par, %struct.img_par* %233, i32 0, i32 70
  store i32 0, i32* %FrameNumOffset221, align 4
  %234 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bottompoc222 = getelementptr inbounds %struct.img_par, %struct.img_par* %234, i32 0, i32 54
  store i32 0, i32* %bottompoc222, align 4
  %235 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %toppoc223 = getelementptr inbounds %struct.img_par, %struct.img_par* %235, i32 0, i32 53
  store i32 0, i32* %toppoc223, align 4
  %236 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %framepoc224 = getelementptr inbounds %struct.img_par, %struct.img_par* %236, i32 0, i32 55
  store i32 0, i32* %framepoc224, align 4
  %237 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %ThisPOC225 = getelementptr inbounds %struct.img_par, %struct.img_par* %237, i32 0, i32 73
  store i32 0, i32* %ThisPOC225, align 4
  %238 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %frame_num226 = getelementptr inbounds %struct.img_par, %struct.img_par* %238, i32 0, i32 56
  %239 = load i32, i32* %frame_num226, align 4
  %tobool227 = icmp ne i32 %239, 0
  br i1 %tobool227, label %if.then.228, label %if.end.229

if.then.228:                                      ; preds = %if.then.220
  call void @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.34, i32 0, i32 0), i32 -1020)
  br label %if.end.229

if.end.229:                                       ; preds = %if.then.228, %if.then.220
  br label %if.end.285

if.else.230:                                      ; preds = %sw.bb.217
  %240 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %last_has_mmco_5231 = getelementptr inbounds %struct.img_par, %struct.img_par* %240, i32 0, i32 97
  %241 = load i32, i32* %last_has_mmco_5231, align 4
  %tobool232 = icmp ne i32 %241, 0
  br i1 %tobool232, label %if.then.233, label %if.end.236

if.then.233:                                      ; preds = %if.else.230
  %242 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PreviousFrameNum234 = getelementptr inbounds %struct.img_par, %struct.img_par* %242, i32 0, i32 69
  store i32 0, i32* %PreviousFrameNum234, align 4
  %243 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PreviousFrameNumOffset235 = getelementptr inbounds %struct.img_par, %struct.img_par* %243, i32 0, i32 74
  store i32 0, i32* %PreviousFrameNumOffset235, align 4
  br label %if.end.236

if.end.236:                                       ; preds = %if.then.233, %if.else.230
  %244 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %frame_num237 = getelementptr inbounds %struct.img_par, %struct.img_par* %244, i32 0, i32 56
  %245 = load i32, i32* %frame_num237, align 4
  %246 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PreviousFrameNum238 = getelementptr inbounds %struct.img_par, %struct.img_par* %246, i32 0, i32 69
  %247 = load i32, i32* %PreviousFrameNum238, align 4
  %cmp239 = icmp ult i32 %245, %247
  br i1 %cmp239, label %if.then.240, label %if.else.245

if.then.240:                                      ; preds = %if.end.236
  %248 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PreviousFrameNumOffset241 = getelementptr inbounds %struct.img_par, %struct.img_par* %248, i32 0, i32 74
  %249 = load i32, i32* %PreviousFrameNumOffset241, align 4
  %250 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %MaxFrameNum242 = getelementptr inbounds %struct.img_par, %struct.img_par* %250, i32 0, i32 86
  %251 = load i32, i32* %MaxFrameNum242, align 4
  %add243 = add nsw i32 %249, %251
  %252 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %FrameNumOffset244 = getelementptr inbounds %struct.img_par, %struct.img_par* %252, i32 0, i32 70
  store i32 %add243, i32* %FrameNumOffset244, align 4
  br label %if.end.248

if.else.245:                                      ; preds = %if.end.236
  %253 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PreviousFrameNumOffset246 = getelementptr inbounds %struct.img_par, %struct.img_par* %253, i32 0, i32 74
  %254 = load i32, i32* %PreviousFrameNumOffset246, align 4
  %255 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %FrameNumOffset247 = getelementptr inbounds %struct.img_par, %struct.img_par* %255, i32 0, i32 70
  store i32 %254, i32* %FrameNumOffset247, align 4
  br label %if.end.248

if.end.248:                                       ; preds = %if.else.245, %if.then.240
  %256 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %FrameNumOffset249 = getelementptr inbounds %struct.img_par, %struct.img_par* %256, i32 0, i32 70
  %257 = load i32, i32* %FrameNumOffset249, align 4
  %258 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %frame_num250 = getelementptr inbounds %struct.img_par, %struct.img_par* %258, i32 0, i32 56
  %259 = load i32, i32* %frame_num250, align 4
  %add251 = add i32 %257, %259
  %260 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %AbsFrameNum252 = getelementptr inbounds %struct.img_par, %struct.img_par* %260, i32 0, i32 65
  store i32 %add251, i32* %AbsFrameNum252, align 4
  %261 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %nal_reference_idc253 = getelementptr inbounds %struct.img_par, %struct.img_par* %261, i32 0, i32 84
  %262 = load i32, i32* %nal_reference_idc253, align 4
  %tobool254 = icmp ne i32 %262, 0
  br i1 %tobool254, label %if.else.260, label %if.then.255

if.then.255:                                      ; preds = %if.end.248
  %263 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %AbsFrameNum256 = getelementptr inbounds %struct.img_par, %struct.img_par* %263, i32 0, i32 65
  %264 = load i32, i32* %AbsFrameNum256, align 4
  %mul257 = mul i32 2, %264
  %sub258 = sub i32 %mul257, 1
  %265 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %ThisPOC259 = getelementptr inbounds %struct.img_par, %struct.img_par* %265, i32 0, i32 73
  store i32 %sub258, i32* %ThisPOC259, align 4
  br label %if.end.264

if.else.260:                                      ; preds = %if.end.248
  %266 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %AbsFrameNum261 = getelementptr inbounds %struct.img_par, %struct.img_par* %266, i32 0, i32 65
  %267 = load i32, i32* %AbsFrameNum261, align 4
  %mul262 = mul i32 2, %267
  %268 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %ThisPOC263 = getelementptr inbounds %struct.img_par, %struct.img_par* %268, i32 0, i32 73
  store i32 %mul262, i32* %ThisPOC263, align 4
  br label %if.end.264

if.end.264:                                       ; preds = %if.else.260, %if.then.255
  %269 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %field_pic_flag265 = getelementptr inbounds %struct.img_par, %struct.img_par* %269, i32 0, i32 57
  %270 = load i32, i32* %field_pic_flag265, align 4
  %cmp266 = icmp eq i32 %270, 0
  br i1 %cmp266, label %if.then.267, label %if.else.272

if.then.267:                                      ; preds = %if.end.264
  %271 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %ThisPOC268 = getelementptr inbounds %struct.img_par, %struct.img_par* %271, i32 0, i32 73
  %272 = load i32, i32* %ThisPOC268, align 4
  %273 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %framepoc269 = getelementptr inbounds %struct.img_par, %struct.img_par* %273, i32 0, i32 55
  store i32 %272, i32* %framepoc269, align 4
  %274 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bottompoc270 = getelementptr inbounds %struct.img_par, %struct.img_par* %274, i32 0, i32 54
  store i32 %272, i32* %bottompoc270, align 4
  %275 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %toppoc271 = getelementptr inbounds %struct.img_par, %struct.img_par* %275, i32 0, i32 53
  store i32 %272, i32* %toppoc271, align 4
  br label %if.end.284

if.else.272:                                      ; preds = %if.end.264
  %276 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bottom_field_flag273 = getelementptr inbounds %struct.img_par, %struct.img_par* %276, i32 0, i32 58
  %277 = load i32, i32* %bottom_field_flag273, align 4
  %cmp274 = icmp eq i32 %277, 0
  br i1 %cmp274, label %if.then.275, label %if.else.279

if.then.275:                                      ; preds = %if.else.272
  %278 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %ThisPOC276 = getelementptr inbounds %struct.img_par, %struct.img_par* %278, i32 0, i32 73
  %279 = load i32, i32* %ThisPOC276, align 4
  %280 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %framepoc277 = getelementptr inbounds %struct.img_par, %struct.img_par* %280, i32 0, i32 55
  store i32 %279, i32* %framepoc277, align 4
  %281 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %toppoc278 = getelementptr inbounds %struct.img_par, %struct.img_par* %281, i32 0, i32 53
  store i32 %279, i32* %toppoc278, align 4
  br label %if.end.283

if.else.279:                                      ; preds = %if.else.272
  %282 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %ThisPOC280 = getelementptr inbounds %struct.img_par, %struct.img_par* %282, i32 0, i32 73
  %283 = load i32, i32* %ThisPOC280, align 4
  %284 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %framepoc281 = getelementptr inbounds %struct.img_par, %struct.img_par* %284, i32 0, i32 55
  store i32 %283, i32* %framepoc281, align 4
  %285 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bottompoc282 = getelementptr inbounds %struct.img_par, %struct.img_par* %285, i32 0, i32 54
  store i32 %283, i32* %bottompoc282, align 4
  br label %if.end.283

if.end.283:                                       ; preds = %if.else.279, %if.then.275
  br label %if.end.284

if.end.284:                                       ; preds = %if.end.283, %if.then.267
  br label %if.end.285

if.end.285:                                       ; preds = %if.end.284, %if.end.229
  %286 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %frame_num286 = getelementptr inbounds %struct.img_par, %struct.img_par* %286, i32 0, i32 56
  %287 = load i32, i32* %frame_num286, align 4
  %288 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PreviousFrameNum287 = getelementptr inbounds %struct.img_par, %struct.img_par* %288, i32 0, i32 69
  store i32 %287, i32* %PreviousFrameNum287, align 4
  %289 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %FrameNumOffset288 = getelementptr inbounds %struct.img_par, %struct.img_par* %289, i32 0, i32 70
  %290 = load i32, i32* %FrameNumOffset288, align 4
  %291 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %PreviousFrameNumOffset289 = getelementptr inbounds %struct.img_par, %struct.img_par* %291, i32 0, i32 74
  store i32 %290, i32* %PreviousFrameNumOffset289, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.285, %if.end.210, %if.end.80
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @dumppoc(%struct.img_par* %img) #0 {
entry:
  %img.addr = alloca %struct.img_par*, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0))
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %toppoc = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 53
  %1 = load i32, i32* %toppoc, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.36, i32 0, i32 0), i32 %1)
  %2 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bottompoc = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 54
  %3 = load i32, i32* %bottompoc, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.37, i32 0, i32 0), i32 %3)
  %4 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %frame_num = getelementptr inbounds %struct.img_par, %struct.img_par* %4, i32 0, i32 56
  %5 = load i32, i32* %frame_num, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.38, i32 0, i32 0), i32 %5)
  %6 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %field_pic_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %6, i32 0, i32 57
  %7 = load i32, i32* %field_pic_flag, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.39, i32 0, i32 0), i32 %7)
  %8 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bottom_field_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %8, i32 0, i32 58
  %9 = load i32, i32* %bottom_field_flag, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.40, i32 0, i32 0), i32 %9)
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0))
  %10 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %log2_max_frame_num_minus4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %10, i32 0, i32 17
  %11 = load i32, i32* %log2_max_frame_num_minus4, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.42, i32 0, i32 0), i32 %11)
  %12 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %log2_max_pic_order_cnt_lsb_minus4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %12, i32 0, i32 19
  %13 = load i32, i32* %log2_max_pic_order_cnt_lsb_minus4, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.43, i32 0, i32 0), i32 %13)
  %14 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %pic_order_cnt_type = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %14, i32 0, i32 18
  %15 = load i32, i32* %pic_order_cnt_type, align 4
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.44, i32 0, i32 0), i32 %15)
  %16 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %num_ref_frames_in_pic_order_cnt_cycle = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %16, i32 0, i32 23
  %17 = load i32, i32* %num_ref_frames_in_pic_order_cnt_cycle, align 4
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.45, i32 0, i32 0), i32 %17)
  %18 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %delta_pic_order_always_zero_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %18, i32 0, i32 20
  %19 = load i32, i32* %delta_pic_order_always_zero_flag, align 4
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.46, i32 0, i32 0), i32 %19)
  %20 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %offset_for_non_ref_pic = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %20, i32 0, i32 21
  %21 = load i32, i32* %offset_for_non_ref_pic, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.47, i32 0, i32 0), i32 %21)
  %22 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %offset_for_top_to_bottom_field = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %22, i32 0, i32 22
  %23 = load i32, i32* %offset_for_top_to_bottom_field, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.48, i32 0, i32 0), i32 %23)
  %24 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %offset_for_ref_frame = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %24, i32 0, i32 24
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %offset_for_ref_frame, i32 0, i64 0
  %25 = load i32, i32* %arrayidx, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.49, i32 0, i32 0), i32 %25)
  %26 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %offset_for_ref_frame15 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %26, i32 0, i32 24
  %arrayidx16 = getelementptr inbounds [256 x i32], [256 x i32]* %offset_for_ref_frame15, i32 0, i64 1
  %27 = load i32, i32* %arrayidx16, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.50, i32 0, i32 0), i32 %27)
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i32 0, i32 0))
  %28 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %pic_order_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %28, i32 0, i32 11
  %29 = load i32, i32* %pic_order_present_flag, align 4
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.52, i32 0, i32 0), i32 %29)
  %30 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %delta_pic_order_cnt = getelementptr inbounds %struct.img_par, %struct.img_par* %30, i32 0, i32 61
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %delta_pic_order_cnt, i32 0, i64 0
  %31 = load i32, i32* %arrayidx20, align 4
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.53, i32 0, i32 0), i32 %31)
  %32 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %delta_pic_order_cnt22 = getelementptr inbounds %struct.img_par, %struct.img_par* %32, i32 0, i32 61
  %arrayidx23 = getelementptr inbounds [3 x i32], [3 x i32]* %delta_pic_order_cnt22, i32 0, i64 1
  %33 = load i32, i32* %arrayidx23, align 4
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.54, i32 0, i32 0), i32 %33)
  %34 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %delta_pic_order_cnt25 = getelementptr inbounds %struct.img_par, %struct.img_par* %34, i32 0, i32 61
  %arrayidx26 = getelementptr inbounds [3 x i32], [3 x i32]* %delta_pic_order_cnt25, i32 0, i64 2
  %35 = load i32, i32* %arrayidx26, align 4
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.55, i32 0, i32 0), i32 %35)
  %36 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %idr_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %36, i32 0, i32 83
  %37 = load i32, i32* %idr_flag, align 4
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.56, i32 0, i32 0), i32 %37)
  %38 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %MaxFrameNum = getelementptr inbounds %struct.img_par, %struct.img_par* %38, i32 0, i32 86
  %39 = load i32, i32* %MaxFrameNum, align 4
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.57, i32 0, i32 0), i32 %39)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @picture_order(%struct.img_par* %img) #0 {
entry:
  %retval = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %field_pic_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 57
  %1 = load i32, i32* %field_pic_flag, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %framepoc = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 55
  %3 = load i32, i32* %framepoc, align 4
  store i32 %3, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bottom_field_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %4, i32 0, i32 58
  %5 = load i32, i32* %bottom_field_flag, align 4
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %6 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %toppoc = getelementptr inbounds %struct.img_par, %struct.img_par* %6, i32 0, i32 53
  %7 = load i32, i32* %toppoc, align 4
  store i32 %7, i32* %retval
  br label %return

if.else.3:                                        ; preds = %if.else
  %8 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bottompoc = getelementptr inbounds %struct.img_par, %struct.img_par* %8, i32 0, i32 54
  %9 = load i32, i32* %bottompoc, align 4
  store i32 %9, i32* %retval
  br label %return

return:                                           ; preds = %if.else.3, %if.then.2, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal void @ref_pic_list_reordering() #0 {
entry:
  %currSlice = alloca %struct.Slice*, align 8
  %dP_nr = alloca i32, align 4
  %partition = alloca %struct.datapartition*, align 8
  %currStream = alloca %struct.Bitstream*, align 8
  %i = alloca i32, align 4
  %val = alloca i32, align 4
  %0 = load %struct.img_par*, %struct.img_par** @img, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 38
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %1, %struct.Slice** %currSlice, align 8
  %2 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %dp_mode = getelementptr inbounds %struct.Slice, %struct.Slice* %2, i32 0, i32 7
  %3 = load i32, i32* %dp_mode, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [0 x [20 x i32]], [0 x [20 x i32]]* @assignSE2partition, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx, i32 0, i64 0
  %4 = load i32, i32* %arrayidx1, align 4
  store i32 %4, i32* %dP_nr, align 4
  %5 = load i32, i32* %dP_nr, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %6, i32 0, i32 9
  %7 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx3 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %7, i64 %idxprom2
  store %struct.datapartition* %arrayidx3, %struct.datapartition** %partition, align 8
  %8 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %8, i32 0, i32 0
  %9 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %9, %struct.Bitstream** %currStream, align 8
  %10 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  call void @alloc_ref_pic_list_reordering_buffer(%struct.Slice* %10)
  %11 = load %struct.img_par*, %struct.img_par** @img, align 8
  %type = getelementptr inbounds %struct.img_par, %struct.img_par* %11, i32 0, i32 10
  %12 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %12, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %entry
  %13 = load %struct.img_par*, %struct.img_par** @img, align 8
  %type4 = getelementptr inbounds %struct.img_par, %struct.img_par* %13, i32 0, i32 10
  %14 = load i32, i32* %type4, align 4
  %cmp5 = icmp ne i32 %14, 4
  br i1 %cmp5, label %if.then, label %if.end.24

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call = call i32 @u_1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.58, i32 0, i32 0), %struct.Bitstream* %15)
  %16 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %ref_pic_list_reordering_flag_l0 = getelementptr inbounds %struct.Slice, %struct.Slice* %16, i32 0, i32 12
  store i32 %call, i32* %ref_pic_list_reordering_flag_l0, align 4
  store i32 %call, i32* %val, align 4
  %17 = load i32, i32* %val, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.6, label %if.end.23

if.then.6:                                        ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.6
  %18 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call7 = call i32 @ue_v(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.59, i32 0, i32 0), %struct.Bitstream* %18)
  %19 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %19 to i64
  %20 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %reordering_of_pic_nums_idc_l0 = getelementptr inbounds %struct.Slice, %struct.Slice* %20, i32 0, i32 13
  %21 = load i32*, i32** %reordering_of_pic_nums_idc_l0, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %21, i64 %idxprom8
  store i32 %call7, i32* %arrayidx9, align 4
  store i32 %call7, i32* %val, align 4
  %22 = load i32, i32* %val, align 4
  %cmp10 = icmp eq i32 %22, 0
  br i1 %cmp10, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %23 = load i32, i32* %val, align 4
  %cmp11 = icmp eq i32 %23, 1
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %lor.lhs.false, %do.body
  %24 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call13 = call i32 @ue_v(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.60, i32 0, i32 0), %struct.Bitstream* %24)
  %25 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %25 to i64
  %26 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %abs_diff_pic_num_minus1_l0 = getelementptr inbounds %struct.Slice, %struct.Slice* %26, i32 0, i32 14
  %27 = load i32*, i32** %abs_diff_pic_num_minus1_l0, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %27, i64 %idxprom14
  store i32 %call13, i32* %arrayidx15, align 4
  br label %if.end.21

if.else:                                          ; preds = %lor.lhs.false
  %28 = load i32, i32* %val, align 4
  %cmp16 = icmp eq i32 %28, 2
  br i1 %cmp16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.else
  %29 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call18 = call i32 @ue_v(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.61, i32 0, i32 0), %struct.Bitstream* %29)
  %30 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %30 to i64
  %31 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %long_term_pic_idx_l0 = getelementptr inbounds %struct.Slice, %struct.Slice* %31, i32 0, i32 15
  %32 = load i32*, i32** %long_term_pic_idx_l0, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %32, i64 %idxprom19
  store i32 %call18, i32* %arrayidx20, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.else
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %if.then.12
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.21
  %34 = load i32, i32* %val, align 4
  %cmp22 = icmp ne i32 %34, 3
  br i1 %cmp22, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.23

if.end.23:                                        ; preds = %do.end, %if.then
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %land.lhs.true, %entry
  %35 = load %struct.img_par*, %struct.img_par** @img, align 8
  %type25 = getelementptr inbounds %struct.img_par, %struct.img_par* %35, i32 0, i32 10
  %36 = load i32, i32* %type25, align 4
  %cmp26 = icmp eq i32 %36, 1
  br i1 %cmp26, label %if.then.27, label %if.end.55

if.then.27:                                       ; preds = %if.end.24
  %37 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call28 = call i32 @u_1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.62, i32 0, i32 0), %struct.Bitstream* %37)
  %38 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %ref_pic_list_reordering_flag_l1 = getelementptr inbounds %struct.Slice, %struct.Slice* %38, i32 0, i32 16
  store i32 %call28, i32* %ref_pic_list_reordering_flag_l1, align 4
  store i32 %call28, i32* %val, align 4
  %39 = load i32, i32* %val, align 4
  %tobool29 = icmp ne i32 %39, 0
  br i1 %tobool29, label %if.then.30, label %if.end.54

if.then.30:                                       ; preds = %if.then.27
  store i32 0, i32* %i, align 4
  br label %do.body.31

do.body.31:                                       ; preds = %do.cond.51, %if.then.30
  %40 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call32 = call i32 @ue_v(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i32 0, i32 0), %struct.Bitstream* %40)
  %41 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %41 to i64
  %42 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %reordering_of_pic_nums_idc_l1 = getelementptr inbounds %struct.Slice, %struct.Slice* %42, i32 0, i32 17
  %43 = load i32*, i32** %reordering_of_pic_nums_idc_l1, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %43, i64 %idxprom33
  store i32 %call32, i32* %arrayidx34, align 4
  store i32 %call32, i32* %val, align 4
  %44 = load i32, i32* %val, align 4
  %cmp35 = icmp eq i32 %44, 0
  br i1 %cmp35, label %if.then.38, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %do.body.31
  %45 = load i32, i32* %val, align 4
  %cmp37 = icmp eq i32 %45, 1
  br i1 %cmp37, label %if.then.38, label %if.else.42

if.then.38:                                       ; preds = %lor.lhs.false.36, %do.body.31
  %46 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call39 = call i32 @ue_v(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.64, i32 0, i32 0), %struct.Bitstream* %46)
  %47 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %47 to i64
  %48 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %abs_diff_pic_num_minus1_l1 = getelementptr inbounds %struct.Slice, %struct.Slice* %48, i32 0, i32 18
  %49 = load i32*, i32** %abs_diff_pic_num_minus1_l1, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %49, i64 %idxprom40
  store i32 %call39, i32* %arrayidx41, align 4
  br label %if.end.49

if.else.42:                                       ; preds = %lor.lhs.false.36
  %50 = load i32, i32* %val, align 4
  %cmp43 = icmp eq i32 %50, 2
  br i1 %cmp43, label %if.then.44, label %if.end.48

if.then.44:                                       ; preds = %if.else.42
  %51 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call45 = call i32 @ue_v(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.65, i32 0, i32 0), %struct.Bitstream* %51)
  %52 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %52 to i64
  %53 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %long_term_pic_idx_l1 = getelementptr inbounds %struct.Slice, %struct.Slice* %53, i32 0, i32 19
  %54 = load i32*, i32** %long_term_pic_idx_l1, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %54, i64 %idxprom46
  store i32 %call45, i32* %arrayidx47, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.44, %if.else.42
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.38
  %55 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %55, 1
  store i32 %inc50, i32* %i, align 4
  br label %do.cond.51

do.cond.51:                                       ; preds = %if.end.49
  %56 = load i32, i32* %val, align 4
  %cmp52 = icmp ne i32 %56, 3
  br i1 %cmp52, label %do.body.31, label %do.end.53

do.end.53:                                        ; preds = %do.cond.51
  br label %if.end.54

if.end.54:                                        ; preds = %do.end.53, %if.then.27
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.24
  %57 = load %struct.img_par*, %struct.img_par** @img, align 8
  %redundant_pic_cnt = getelementptr inbounds %struct.img_par, %struct.img_par* %57, i32 0, i32 50
  %58 = load i32, i32* %redundant_pic_cnt, align 4
  %tobool56 = icmp ne i32 %58, 0
  br i1 %tobool56, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %if.end.55
  %59 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %abs_diff_pic_num_minus1_l058 = getelementptr inbounds %struct.Slice, %struct.Slice* %59, i32 0, i32 14
  %60 = load i32*, i32** %abs_diff_pic_num_minus1_l058, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %60, i64 0
  %61 = load i32, i32* %arrayidx59, align 4
  %add = add nsw i32 %61, 1
  store i32 %add, i32* @redundant_slice_ref_idx, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.57, %if.end.55
  ret void
}

declare void @alloc_ref_pic_list_reordering_buffer(%struct.Slice*) #1

; Function Attrs: nounwind uwtable
define internal void @pred_weight_table() #0 {
entry:
  %currSlice = alloca %struct.Slice*, align 8
  %dP_nr = alloca i32, align 4
  %partition = alloca %struct.datapartition*, align 8
  %currStream = alloca %struct.Bitstream*, align 8
  %luma_weight_flag_l0 = alloca i32, align 4
  %luma_weight_flag_l1 = alloca i32, align 4
  %chroma_weight_flag_l0 = alloca i32, align 4
  %chroma_weight_flag_l1 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %0 = load %struct.img_par*, %struct.img_par** @img, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 38
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %1, %struct.Slice** %currSlice, align 8
  %2 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %dp_mode = getelementptr inbounds %struct.Slice, %struct.Slice* %2, i32 0, i32 7
  %3 = load i32, i32* %dp_mode, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [0 x [20 x i32]], [0 x [20 x i32]]* @assignSE2partition, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx, i32 0, i64 0
  %4 = load i32, i32* %arrayidx1, align 4
  store i32 %4, i32* %dP_nr, align 4
  %5 = load i32, i32* %dP_nr, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %6, i32 0, i32 9
  %7 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx3 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %7, i64 %idxprom2
  store %struct.datapartition* %arrayidx3, %struct.datapartition** %partition, align 8
  %8 = load %struct.datapartition*, %struct.datapartition** %partition, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %8, i32 0, i32 0
  %9 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %9, %struct.Bitstream** %currStream, align 8
  %10 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call = call i32 @ue_v(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.66, i32 0, i32 0), %struct.Bitstream* %10)
  %11 = load %struct.img_par*, %struct.img_par** @img, align 8
  %luma_log2_weight_denom = getelementptr inbounds %struct.img_par, %struct.img_par* %11, i32 0, i32 75
  store i32 %call, i32* %luma_log2_weight_denom, align 4
  %12 = load %struct.img_par*, %struct.img_par** @img, align 8
  %luma_log2_weight_denom4 = getelementptr inbounds %struct.img_par, %struct.img_par* %12, i32 0, i32 75
  %13 = load i32, i32* %luma_log2_weight_denom4, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %14 = load %struct.img_par*, %struct.img_par** @img, align 8
  %luma_log2_weight_denom5 = getelementptr inbounds %struct.img_par, %struct.img_par* %14, i32 0, i32 75
  %15 = load i32, i32* %luma_log2_weight_denom5, align 4
  %sub = sub i32 %15, 1
  %shl = shl i32 1, %sub
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl, %cond.true ], [ 0, %cond.false ]
  %16 = load %struct.img_par*, %struct.img_par** @img, align 8
  %wp_round_luma = getelementptr inbounds %struct.img_par, %struct.img_par* %16, i32 0, i32 80
  store i32 %cond, i32* %wp_round_luma, align 4
  %17 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %17, i32 0, i32 8
  %18 = load i32, i32* %chroma_format_idc, align 4
  %cmp = icmp ne i32 0, %18
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %19 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call6 = call i32 @ue_v(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.67, i32 0, i32 0), %struct.Bitstream* %19)
  %20 = load %struct.img_par*, %struct.img_par** @img, align 8
  %chroma_log2_weight_denom = getelementptr inbounds %struct.img_par, %struct.img_par* %20, i32 0, i32 76
  store i32 %call6, i32* %chroma_log2_weight_denom, align 4
  %21 = load %struct.img_par*, %struct.img_par** @img, align 8
  %chroma_log2_weight_denom7 = getelementptr inbounds %struct.img_par, %struct.img_par* %21, i32 0, i32 76
  %22 = load i32, i32* %chroma_log2_weight_denom7, align 4
  %tobool8 = icmp ne i32 %22, 0
  br i1 %tobool8, label %cond.true.9, label %cond.false.13

cond.true.9:                                      ; preds = %if.then
  %23 = load %struct.img_par*, %struct.img_par** @img, align 8
  %chroma_log2_weight_denom10 = getelementptr inbounds %struct.img_par, %struct.img_par* %23, i32 0, i32 76
  %24 = load i32, i32* %chroma_log2_weight_denom10, align 4
  %sub11 = sub i32 %24, 1
  %shl12 = shl i32 1, %sub11
  br label %cond.end.14

cond.false.13:                                    ; preds = %if.then
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.9
  %cond15 = phi i32 [ %shl12, %cond.true.9 ], [ 0, %cond.false.13 ]
  %25 = load %struct.img_par*, %struct.img_par** @img, align 8
  %wp_round_chroma = getelementptr inbounds %struct.img_par, %struct.img_par* %25, i32 0, i32 81
  store i32 %cond15, i32* %wp_round_chroma, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.14, %cond.end
  %26 = load %struct.img_par*, %struct.img_par** @img, align 8
  call void @reset_wp_params(%struct.img_par* %26)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.83, %if.end
  %27 = load i32, i32* %i, align 4
  %28 = load %struct.img_par*, %struct.img_par** @img, align 8
  %num_ref_idx_l0_active = getelementptr inbounds %struct.img_par, %struct.img_par* %28, i32 0, i32 47
  %29 = load i32, i32* %num_ref_idx_l0_active, align 4
  %cmp16 = icmp slt i32 %27, %29
  br i1 %cmp16, label %for.body, label %for.end.85

for.body:                                         ; preds = %for.cond
  %30 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call17 = call i32 @u_1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.68, i32 0, i32 0), %struct.Bitstream* %30)
  store i32 %call17, i32* %luma_weight_flag_l0, align 4
  %31 = load i32, i32* %luma_weight_flag_l0, align 4
  %tobool18 = icmp ne i32 %31, 0
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %for.body
  %32 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call20 = call i32 @se_v(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i32 0, i32 0), %struct.Bitstream* %32)
  %33 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %33 to i64
  %34 = load %struct.img_par*, %struct.img_par** @img, align 8
  %wp_weight = getelementptr inbounds %struct.img_par, %struct.img_par* %34, i32 0, i32 77
  %35 = load i32***, i32**** %wp_weight, align 8
  %arrayidx22 = getelementptr inbounds i32**, i32*** %35, i64 0
  %36 = load i32**, i32*** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i32*, i32** %36, i64 %idxprom21
  %37 = load i32*, i32** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %call20, i32* %arrayidx24, align 4
  %38 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call25 = call i32 @se_v(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.70, i32 0, i32 0), %struct.Bitstream* %38)
  %39 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %39 to i64
  %40 = load %struct.img_par*, %struct.img_par** @img, align 8
  %wp_offset = getelementptr inbounds %struct.img_par, %struct.img_par* %40, i32 0, i32 78
  %41 = load i32***, i32**** %wp_offset, align 8
  %arrayidx27 = getelementptr inbounds i32**, i32*** %41, i64 0
  %42 = load i32**, i32*** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i32*, i32** %42, i64 %idxprom26
  %43 = load i32*, i32** %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %call25, i32* %arrayidx29, align 4
  br label %if.end.42

if.else:                                          ; preds = %for.body
  %44 = load %struct.img_par*, %struct.img_par** @img, align 8
  %luma_log2_weight_denom30 = getelementptr inbounds %struct.img_par, %struct.img_par* %44, i32 0, i32 75
  %45 = load i32, i32* %luma_log2_weight_denom30, align 4
  %shl31 = shl i32 1, %45
  %46 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %46 to i64
  %47 = load %struct.img_par*, %struct.img_par** @img, align 8
  %wp_weight33 = getelementptr inbounds %struct.img_par, %struct.img_par* %47, i32 0, i32 77
  %48 = load i32***, i32**** %wp_weight33, align 8
  %arrayidx34 = getelementptr inbounds i32**, i32*** %48, i64 0
  %49 = load i32**, i32*** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i32*, i32** %49, i64 %idxprom32
  %50 = load i32*, i32** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %shl31, i32* %arrayidx36, align 4
  %51 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %51 to i64
  %52 = load %struct.img_par*, %struct.img_par** @img, align 8
  %wp_offset38 = getelementptr inbounds %struct.img_par, %struct.img_par* %52, i32 0, i32 78
  %53 = load i32***, i32**** %wp_offset38, align 8
  %arrayidx39 = getelementptr inbounds i32**, i32*** %53, i64 0
  %54 = load i32**, i32*** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds i32*, i32** %54, i64 %idxprom37
  %55 = load i32*, i32** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 0, i32* %arrayidx41, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.19
  %56 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc43 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %56, i32 0, i32 8
  %57 = load i32, i32* %chroma_format_idc43, align 4
  %cmp44 = icmp ne i32 %57, 0
  br i1 %cmp44, label %if.then.45, label %if.end.82

if.then.45:                                       ; preds = %if.end.42
  %58 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call46 = call i32 @u_1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.71, i32 0, i32 0), %struct.Bitstream* %58)
  store i32 %call46, i32* %chroma_weight_flag_l0, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc, %if.then.45
  %59 = load i32, i32* %j, align 4
  %cmp48 = icmp slt i32 %59, 3
  br i1 %cmp48, label %for.body.49, label %for.end

for.body.49:                                      ; preds = %for.cond.47
  %60 = load i32, i32* %chroma_weight_flag_l0, align 4
  %tobool50 = icmp ne i32 %60, 0
  br i1 %tobool50, label %if.then.51, label %if.else.66

if.then.51:                                       ; preds = %for.body.49
  %61 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call52 = call i32 @se_v(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.72, i32 0, i32 0), %struct.Bitstream* %61)
  %62 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %62 to i64
  %63 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %63 to i64
  %64 = load %struct.img_par*, %struct.img_par** @img, align 8
  %wp_weight55 = getelementptr inbounds %struct.img_par, %struct.img_par* %64, i32 0, i32 77
  %65 = load i32***, i32**** %wp_weight55, align 8
  %arrayidx56 = getelementptr inbounds i32**, i32*** %65, i64 0
  %66 = load i32**, i32*** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i32*, i32** %66, i64 %idxprom54
  %67 = load i32*, i32** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %67, i64 %idxprom53
  store i32 %call52, i32* %arrayidx58, align 4
  %68 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call59 = call i32 @se_v(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.73, i32 0, i32 0), %struct.Bitstream* %68)
  %69 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %69 to i64
  %70 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %70 to i64
  %71 = load %struct.img_par*, %struct.img_par** @img, align 8
  %wp_offset62 = getelementptr inbounds %struct.img_par, %struct.img_par* %71, i32 0, i32 78
  %72 = load i32***, i32**** %wp_offset62, align 8
  %arrayidx63 = getelementptr inbounds i32**, i32*** %72, i64 0
  %73 = load i32**, i32*** %arrayidx63, align 8
  %arrayidx64 = getelementptr inbounds i32*, i32** %73, i64 %idxprom61
  %74 = load i32*, i32** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %74, i64 %idxprom60
  store i32 %call59, i32* %arrayidx65, align 4
  br label %if.end.81

if.else.66:                                       ; preds = %for.body.49
  %75 = load %struct.img_par*, %struct.img_par** @img, align 8
  %chroma_log2_weight_denom67 = getelementptr inbounds %struct.img_par, %struct.img_par* %75, i32 0, i32 76
  %76 = load i32, i32* %chroma_log2_weight_denom67, align 4
  %shl68 = shl i32 1, %76
  %77 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %77 to i64
  %78 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %78 to i64
  %79 = load %struct.img_par*, %struct.img_par** @img, align 8
  %wp_weight71 = getelementptr inbounds %struct.img_par, %struct.img_par* %79, i32 0, i32 77
  %80 = load i32***, i32**** %wp_weight71, align 8
  %arrayidx72 = getelementptr inbounds i32**, i32*** %80, i64 0
  %81 = load i32**, i32*** %arrayidx72, align 8
  %arrayidx73 = getelementptr inbounds i32*, i32** %81, i64 %idxprom70
  %82 = load i32*, i32** %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %82, i64 %idxprom69
  store i32 %shl68, i32* %arrayidx74, align 4
  %83 = load i32, i32* %j, align 4
  %idxprom75 = sext i32 %83 to i64
  %84 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %84 to i64
  %85 = load %struct.img_par*, %struct.img_par** @img, align 8
  %wp_offset77 = getelementptr inbounds %struct.img_par, %struct.img_par* %85, i32 0, i32 78
  %86 = load i32***, i32**** %wp_offset77, align 8
  %arrayidx78 = getelementptr inbounds i32**, i32*** %86, i64 0
  %87 = load i32**, i32*** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds i32*, i32** %87, i64 %idxprom76
  %88 = load i32*, i32** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %88, i64 %idxprom75
  store i32 0, i32* %arrayidx80, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.66, %if.then.51
  br label %for.inc

for.inc:                                          ; preds = %if.end.81
  %89 = load i32, i32* %j, align 4
  %inc = add nsw i32 %89, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.47

for.end:                                          ; preds = %for.cond.47
  br label %if.end.82

if.end.82:                                        ; preds = %for.end, %if.end.42
  br label %for.inc.83

for.inc.83:                                       ; preds = %if.end.82
  %90 = load i32, i32* %i, align 4
  %inc84 = add nsw i32 %90, 1
  store i32 %inc84, i32* %i, align 4
  br label %for.cond

for.end.85:                                       ; preds = %for.cond
  %91 = load %struct.img_par*, %struct.img_par** @img, align 8
  %type = getelementptr inbounds %struct.img_par, %struct.img_par* %91, i32 0, i32 10
  %92 = load i32, i32* %type, align 4
  %cmp86 = icmp eq i32 %92, 1
  br i1 %cmp86, label %land.lhs.true, label %if.end.167

land.lhs.true:                                    ; preds = %for.end.85
  %93 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %93, i32 0, i32 24
  %94 = load i32, i32* %weighted_bipred_idc, align 4
  %cmp87 = icmp eq i32 %94, 1
  br i1 %cmp87, label %if.then.88, label %if.end.167

if.then.88:                                       ; preds = %land.lhs.true
  store i32 0, i32* %i, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.164, %if.then.88
  %95 = load i32, i32* %i, align 4
  %96 = load %struct.img_par*, %struct.img_par** @img, align 8
  %num_ref_idx_l1_active = getelementptr inbounds %struct.img_par, %struct.img_par* %96, i32 0, i32 48
  %97 = load i32, i32* %num_ref_idx_l1_active, align 4
  %cmp90 = icmp slt i32 %95, %97
  br i1 %cmp90, label %for.body.91, label %for.end.166

for.body.91:                                      ; preds = %for.cond.89
  %98 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call92 = call i32 @u_1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.74, i32 0, i32 0), %struct.Bitstream* %98)
  store i32 %call92, i32* %luma_weight_flag_l1, align 4
  %99 = load i32, i32* %luma_weight_flag_l1, align 4
  %tobool93 = icmp ne i32 %99, 0
  br i1 %tobool93, label %if.then.94, label %if.else.107

if.then.94:                                       ; preds = %for.body.91
  %100 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call95 = call i32 @se_v(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.75, i32 0, i32 0), %struct.Bitstream* %100)
  %101 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %101 to i64
  %102 = load %struct.img_par*, %struct.img_par** @img, align 8
  %wp_weight97 = getelementptr inbounds %struct.img_par, %struct.img_par* %102, i32 0, i32 77
  %103 = load i32***, i32**** %wp_weight97, align 8
  %arrayidx98 = getelementptr inbounds i32**, i32*** %103, i64 1
  %104 = load i32**, i32*** %arrayidx98, align 8
  %arrayidx99 = getelementptr inbounds i32*, i32** %104, i64 %idxprom96
  %105 = load i32*, i32** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %105, i64 0
  store i32 %call95, i32* %arrayidx100, align 4
  %106 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call101 = call i32 @se_v(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.76, i32 0, i32 0), %struct.Bitstream* %106)
  %107 = load i32, i32* %i, align 4
  %idxprom102 = sext i32 %107 to i64
  %108 = load %struct.img_par*, %struct.img_par** @img, align 8
  %wp_offset103 = getelementptr inbounds %struct.img_par, %struct.img_par* %108, i32 0, i32 78
  %109 = load i32***, i32**** %wp_offset103, align 8
  %arrayidx104 = getelementptr inbounds i32**, i32*** %109, i64 1
  %110 = load i32**, i32*** %arrayidx104, align 8
  %arrayidx105 = getelementptr inbounds i32*, i32** %110, i64 %idxprom102
  %111 = load i32*, i32** %arrayidx105, align 8
  %arrayidx106 = getelementptr inbounds i32, i32* %111, i64 0
  store i32 %call101, i32* %arrayidx106, align 4
  br label %if.end.120

if.else.107:                                      ; preds = %for.body.91
  %112 = load %struct.img_par*, %struct.img_par** @img, align 8
  %luma_log2_weight_denom108 = getelementptr inbounds %struct.img_par, %struct.img_par* %112, i32 0, i32 75
  %113 = load i32, i32* %luma_log2_weight_denom108, align 4
  %shl109 = shl i32 1, %113
  %114 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %114 to i64
  %115 = load %struct.img_par*, %struct.img_par** @img, align 8
  %wp_weight111 = getelementptr inbounds %struct.img_par, %struct.img_par* %115, i32 0, i32 77
  %116 = load i32***, i32**** %wp_weight111, align 8
  %arrayidx112 = getelementptr inbounds i32**, i32*** %116, i64 1
  %117 = load i32**, i32*** %arrayidx112, align 8
  %arrayidx113 = getelementptr inbounds i32*, i32** %117, i64 %idxprom110
  %118 = load i32*, i32** %arrayidx113, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %118, i64 0
  store i32 %shl109, i32* %arrayidx114, align 4
  %119 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %119 to i64
  %120 = load %struct.img_par*, %struct.img_par** @img, align 8
  %wp_offset116 = getelementptr inbounds %struct.img_par, %struct.img_par* %120, i32 0, i32 78
  %121 = load i32***, i32**** %wp_offset116, align 8
  %arrayidx117 = getelementptr inbounds i32**, i32*** %121, i64 1
  %122 = load i32**, i32*** %arrayidx117, align 8
  %arrayidx118 = getelementptr inbounds i32*, i32** %122, i64 %idxprom115
  %123 = load i32*, i32** %arrayidx118, align 8
  %arrayidx119 = getelementptr inbounds i32, i32* %123, i64 0
  store i32 0, i32* %arrayidx119, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.107, %if.then.94
  %124 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc121 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %124, i32 0, i32 8
  %125 = load i32, i32* %chroma_format_idc121, align 4
  %cmp122 = icmp ne i32 %125, 0
  br i1 %cmp122, label %if.then.123, label %if.end.163

if.then.123:                                      ; preds = %if.end.120
  %126 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call124 = call i32 @u_1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.77, i32 0, i32 0), %struct.Bitstream* %126)
  store i32 %call124, i32* %chroma_weight_flag_l1, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.160, %if.then.123
  %127 = load i32, i32* %j, align 4
  %cmp126 = icmp slt i32 %127, 3
  br i1 %cmp126, label %for.body.127, label %for.end.162

for.body.127:                                     ; preds = %for.cond.125
  %128 = load i32, i32* %chroma_weight_flag_l1, align 4
  %tobool128 = icmp ne i32 %128, 0
  br i1 %tobool128, label %if.then.129, label %if.else.144

if.then.129:                                      ; preds = %for.body.127
  %129 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call130 = call i32 @se_v(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i32 0, i32 0), %struct.Bitstream* %129)
  %130 = load i32, i32* %j, align 4
  %idxprom131 = sext i32 %130 to i64
  %131 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %131 to i64
  %132 = load %struct.img_par*, %struct.img_par** @img, align 8
  %wp_weight133 = getelementptr inbounds %struct.img_par, %struct.img_par* %132, i32 0, i32 77
  %133 = load i32***, i32**** %wp_weight133, align 8
  %arrayidx134 = getelementptr inbounds i32**, i32*** %133, i64 1
  %134 = load i32**, i32*** %arrayidx134, align 8
  %arrayidx135 = getelementptr inbounds i32*, i32** %134, i64 %idxprom132
  %135 = load i32*, i32** %arrayidx135, align 8
  %arrayidx136 = getelementptr inbounds i32, i32* %135, i64 %idxprom131
  store i32 %call130, i32* %arrayidx136, align 4
  %136 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call137 = call i32 @se_v(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.79, i32 0, i32 0), %struct.Bitstream* %136)
  %137 = load i32, i32* %j, align 4
  %idxprom138 = sext i32 %137 to i64
  %138 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %138 to i64
  %139 = load %struct.img_par*, %struct.img_par** @img, align 8
  %wp_offset140 = getelementptr inbounds %struct.img_par, %struct.img_par* %139, i32 0, i32 78
  %140 = load i32***, i32**** %wp_offset140, align 8
  %arrayidx141 = getelementptr inbounds i32**, i32*** %140, i64 1
  %141 = load i32**, i32*** %arrayidx141, align 8
  %arrayidx142 = getelementptr inbounds i32*, i32** %141, i64 %idxprom139
  %142 = load i32*, i32** %arrayidx142, align 8
  %arrayidx143 = getelementptr inbounds i32, i32* %142, i64 %idxprom138
  store i32 %call137, i32* %arrayidx143, align 4
  br label %if.end.159

if.else.144:                                      ; preds = %for.body.127
  %143 = load %struct.img_par*, %struct.img_par** @img, align 8
  %chroma_log2_weight_denom145 = getelementptr inbounds %struct.img_par, %struct.img_par* %143, i32 0, i32 76
  %144 = load i32, i32* %chroma_log2_weight_denom145, align 4
  %shl146 = shl i32 1, %144
  %145 = load i32, i32* %j, align 4
  %idxprom147 = sext i32 %145 to i64
  %146 = load i32, i32* %i, align 4
  %idxprom148 = sext i32 %146 to i64
  %147 = load %struct.img_par*, %struct.img_par** @img, align 8
  %wp_weight149 = getelementptr inbounds %struct.img_par, %struct.img_par* %147, i32 0, i32 77
  %148 = load i32***, i32**** %wp_weight149, align 8
  %arrayidx150 = getelementptr inbounds i32**, i32*** %148, i64 1
  %149 = load i32**, i32*** %arrayidx150, align 8
  %arrayidx151 = getelementptr inbounds i32*, i32** %149, i64 %idxprom148
  %150 = load i32*, i32** %arrayidx151, align 8
  %arrayidx152 = getelementptr inbounds i32, i32* %150, i64 %idxprom147
  store i32 %shl146, i32* %arrayidx152, align 4
  %151 = load i32, i32* %j, align 4
  %idxprom153 = sext i32 %151 to i64
  %152 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %152 to i64
  %153 = load %struct.img_par*, %struct.img_par** @img, align 8
  %wp_offset155 = getelementptr inbounds %struct.img_par, %struct.img_par* %153, i32 0, i32 78
  %154 = load i32***, i32**** %wp_offset155, align 8
  %arrayidx156 = getelementptr inbounds i32**, i32*** %154, i64 1
  %155 = load i32**, i32*** %arrayidx156, align 8
  %arrayidx157 = getelementptr inbounds i32*, i32** %155, i64 %idxprom154
  %156 = load i32*, i32** %arrayidx157, align 8
  %arrayidx158 = getelementptr inbounds i32, i32* %156, i64 %idxprom153
  store i32 0, i32* %arrayidx158, align 4
  br label %if.end.159

if.end.159:                                       ; preds = %if.else.144, %if.then.129
  br label %for.inc.160

for.inc.160:                                      ; preds = %if.end.159
  %157 = load i32, i32* %j, align 4
  %inc161 = add nsw i32 %157, 1
  store i32 %inc161, i32* %j, align 4
  br label %for.cond.125

for.end.162:                                      ; preds = %for.cond.125
  br label %if.end.163

if.end.163:                                       ; preds = %for.end.162, %if.end.120
  br label %for.inc.164

for.inc.164:                                      ; preds = %if.end.163
  %158 = load i32, i32* %i, align 4
  %inc165 = add nsw i32 %158, 1
  store i32 %inc165, i32* %i, align 4
  br label %for.cond.89

for.end.166:                                      ; preds = %for.cond.89
  br label %if.end.167

if.end.167:                                       ; preds = %for.end.166, %land.lhs.true, %for.end.85
  ret void
}

declare void @reset_wp_params(%struct.img_par*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
