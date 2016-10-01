; ModuleID = './MultiSource.Applications.JM/72.lencod.rc_quadratic.bc'
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
%struct.rc_quadratic = type { float, float, float, double, double, double, double, double, double, i32, i32, i32, i32, double, double, double, double, double, [21 x double], [21 x double], [21 x double], [21 x double], [21 x double], [21 x double], [21 x double], double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, double*, double*, double*, double*, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, i32, i32 }
%struct.rc_generic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32*, i64, i32, i32, i32, [5 x i32], i32, [5 x i32], i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@img = external global %struct.ImageParameters*, align 8
@input = external global %struct.InputParameters*, align 8
@.str = private unnamed_addr constant [28 x i8] c"init_global_buffers: (*prc)\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"rc_alloc: lprc->BUPFMAD\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"rc_alloc: lprc->BUCFMAD\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"rc_alloc: lprc->FCBUCFMAD\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"rc_alloc: lprc->FCBUPFMAD\00", align 1
@updateQP = common global i32 (%struct.rc_quadratic*, i32)* null, align 8
@generic_RC = common global %struct.rc_generic* null, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [73 x i8] c"\0A RCUpdateMode=3 and HierarchicalCoding == 3 are currently not supported\00", align 1
@start_frame_no_in_this_IGOP = external global i32, align 4
@gop_structure = common global %struct.GOP_DATA* null, align 8
@updateRCModel.m_rgRejected = internal global [21 x i32] zeroinitializer, align 16
@updateRCModel.error = internal global [21 x double] zeroinitializer, align 16
@updateMADModel.PictureRejected = internal global [21 x i32] zeroinitializer, align 16
@updateMADModel.error = internal global [21 x double] zeroinitializer, align 16
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
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
@diffy = common global [16 x [16 x i32]] zeroinitializer, align 16
@qp_mbaff = common global [2 x [2 x i32]] zeroinitializer, align 16
@delta_qp_mbaff = common global [2 x [2 x i32]] zeroinitializer, align 16
@generic_RC_init = common global %struct.rc_generic* null, align 8
@generic_RC_best = common global %struct.rc_generic* null, align 8
@quadratic_RC = common global %struct.rc_quadratic* null, align 8
@quadratic_RC_init = common global %struct.rc_quadratic* null, align 8
@quadratic_RC_best = common global %struct.rc_quadratic* null, align 8

; Function Attrs: nounwind uwtable
define void @rc_alloc(%struct.rc_quadratic** %prc) #0 {
entry:
  %prc.addr = alloca %struct.rc_quadratic**, align 8
  %rcBufSize = alloca i32, align 4
  %lprc = alloca %struct.rc_quadratic*, align 8
  store %struct.rc_quadratic** %prc, %struct.rc_quadratic*** %prc.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 120
  %1 = load i32, i32* %FrameSizeInMbs, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 160
  %3 = load i32, i32* %basicunit, align 4
  %div = udiv i32 %1, %3
  store i32 %div, i32* %rcBufSize, align 4
  %call = call noalias i8* @malloc(i64 1600) #3
  %4 = bitcast i8* %call to %struct.rc_quadratic*
  %5 = load %struct.rc_quadratic**, %struct.rc_quadratic*** %prc.addr, align 8
  store %struct.rc_quadratic* %4, %struct.rc_quadratic** %5, align 8
  %6 = load %struct.rc_quadratic**, %struct.rc_quadratic*** %prc.addr, align 8
  %7 = load %struct.rc_quadratic*, %struct.rc_quadratic** %6, align 8
  %cmp = icmp eq %struct.rc_quadratic* null, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.rc_quadratic**, %struct.rc_quadratic*** %prc.addr, align 8
  %9 = load %struct.rc_quadratic*, %struct.rc_quadratic** %8, align 8
  store %struct.rc_quadratic* %9, %struct.rc_quadratic** %lprc, align 8
  %10 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %PreviousFrameMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %10, i32 0, i32 49
  store double 1.000000e+00, double* %PreviousFrameMAD, align 8
  %11 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %CurrentFrameMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %11, i32 0, i32 46
  store double 1.000000e+00, double* %CurrentFrameMAD, align 8
  %12 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %Pprev_bits = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %12, i32 0, i32 65
  store i64 0, i64* %Pprev_bits, align 8
  %13 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %Iprev_bits = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %13, i32 0, i32 64
  store i64 0, i64* %Iprev_bits, align 8
  %14 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %Target = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %14, i32 0, i32 68
  store i32 0, i32* %Target, align 4
  %15 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %TargetField = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %15, i32 0, i32 69
  store i32 0, i32* %TargetField, align 4
  %16 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %LowerBound = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %16, i32 0, i32 75
  store i32 0, i32* %LowerBound, align 4
  %17 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %UpperBound1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %17, i32 0, i32 73
  store i32 2147483647, i32* %UpperBound1, align 4
  %18 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %UpperBound2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %18, i32 0, i32 74
  store i32 2147483647, i32* %UpperBound2, align 4
  %19 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %Wp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %19, i32 0, i32 76
  store double 0.000000e+00, double* %Wp, align 8
  %20 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %Wb = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %20, i32 0, i32 77
  store double 0.000000e+00, double* %Wb, align 8
  %21 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp0 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %21, i32 0, i32 3
  %22 = load i32, i32* %qp0, align 4
  %23 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %PAveFrameQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %23, i32 0, i32 43
  store i32 %22, i32* %PAveFrameQP, align 4
  %24 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %PAveFrameQP1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %24, i32 0, i32 43
  %25 = load i32, i32* %PAveFrameQP1, align 4
  %26 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %m_Qc = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %26, i32 0, i32 33
  store i32 %25, i32* %m_Qc, align 4
  %27 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %PAveFrameQP2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %27, i32 0, i32 43
  %28 = load i32, i32* %PAveFrameQP2, align 4
  %29 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %FieldQPBuffer = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %29, i32 0, i32 55
  store i32 %28, i32* %FieldQPBuffer, align 4
  %30 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %PAveFrameQP3 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %30, i32 0, i32 43
  %31 = load i32, i32* %PAveFrameQP3, align 4
  %32 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %FrameQPBuffer = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %32, i32 0, i32 56
  store i32 %31, i32* %FrameQPBuffer, align 4
  %33 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %PAveFrameQP4 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %33, i32 0, i32 43
  %34 = load i32, i32* %PAveFrameQP4, align 4
  %35 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %PAverageQp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %35, i32 0, i32 12
  store i32 %34, i32* %PAverageQp, align 4
  %36 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %PAveFrameQP5 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %36, i32 0, i32 43
  %37 = load i32, i32* %PAveFrameQP5, align 4
  %38 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %MyInitialQp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %38, i32 0, i32 11
  store i32 %37, i32* %MyInitialQp, align 4
  %39 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %RC_MAX_QUANT = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %39, i32 0, i32 9
  store i32 51, i32* %RC_MAX_QUANT, align 4
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 144
  %41 = load i32, i32* %bitdepth_luma_qp_scale, align 4
  %sub = sub nsw i32 0, %41
  %42 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %RC_MIN_QUANT = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %42, i32 0, i32 10
  store i32 %sub, i32* %RC_MIN_QUANT, align 4
  %43 = load i32, i32* %rcBufSize, align 4
  %conv = sext i32 %43 to i64
  %call6 = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %44 = bitcast i8* %call6 to double*
  %45 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %BUPFMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %45, i32 0, i32 59
  store double* %44, double** %BUPFMAD, align 8
  %46 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %BUPFMAD7 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %46, i32 0, i32 59
  %47 = load double*, double** %BUPFMAD7, align 8
  %cmp8 = icmp eq double* null, %47
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %48 = load i32, i32* %rcBufSize, align 4
  %conv12 = sext i32 %48 to i64
  %call13 = call noalias i8* @calloc(i64 %conv12, i64 8) #3
  %49 = bitcast i8* %call13 to double*
  %50 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %BUCFMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %50, i32 0, i32 60
  store double* %49, double** %BUCFMAD, align 8
  %51 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %BUCFMAD14 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %51, i32 0, i32 60
  %52 = load double*, double** %BUCFMAD14, align 8
  %cmp15 = icmp eq double* null, %52
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.11
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.11
  %53 = load i32, i32* %rcBufSize, align 4
  %conv19 = sext i32 %53 to i64
  %call20 = call noalias i8* @calloc(i64 %conv19, i64 8) #3
  %54 = bitcast i8* %call20 to double*
  %55 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %FCBUCFMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %55, i32 0, i32 61
  store double* %54, double** %FCBUCFMAD, align 8
  %56 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %FCBUCFMAD21 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %56, i32 0, i32 61
  %57 = load double*, double** %FCBUCFMAD21, align 8
  %cmp22 = icmp eq double* null, %57
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.18
  call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.18
  %58 = load i32, i32* %rcBufSize, align 4
  %conv26 = sext i32 %58 to i64
  %call27 = call noalias i8* @calloc(i64 %conv26, i64 8) #3
  %59 = bitcast i8* %call27 to double*
  %60 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %FCBUPFMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %60, i32 0, i32 62
  store double* %59, double** %FCBUPFMAD, align 8
  %61 = load %struct.rc_quadratic*, %struct.rc_quadratic** %lprc, align 8
  %FCBUPFMAD28 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %61, i32 0, i32 62
  %62 = load double*, double** %FCBUPFMAD28, align 8
  %cmp29 = icmp eq double* null, %62
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.25
  call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.25
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @copy_rc_jvt(%struct.rc_quadratic* %dst, %struct.rc_quadratic* %src) #0 {
entry:
  %dst.addr = alloca %struct.rc_quadratic*, align 8
  %src.addr = alloca %struct.rc_quadratic*, align 8
  %rcBufSize = alloca i32, align 4
  %tmpBUPFMAD = alloca double*, align 8
  %tmpBUCFMAD = alloca double*, align 8
  %tmpFCBUPFMAD = alloca double*, align 8
  %tmpFCBUCFMAD = alloca double*, align 8
  store %struct.rc_quadratic* %dst, %struct.rc_quadratic** %dst.addr, align 8
  store %struct.rc_quadratic* %src, %struct.rc_quadratic** %src.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 120
  %1 = load i32, i32* %FrameSizeInMbs, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 160
  %3 = load i32, i32* %basicunit, align 4
  %div = udiv i32 %1, %3
  store i32 %div, i32* %rcBufSize, align 4
  %4 = load %struct.rc_quadratic*, %struct.rc_quadratic** %dst.addr, align 8
  %BUPFMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %4, i32 0, i32 59
  %5 = load double*, double** %BUPFMAD, align 8
  store double* %5, double** %tmpBUPFMAD, align 8
  %6 = load %struct.rc_quadratic*, %struct.rc_quadratic** %dst.addr, align 8
  %BUCFMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %6, i32 0, i32 60
  %7 = load double*, double** %BUCFMAD, align 8
  store double* %7, double** %tmpBUCFMAD, align 8
  %8 = load %struct.rc_quadratic*, %struct.rc_quadratic** %dst.addr, align 8
  %FCBUPFMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %8, i32 0, i32 62
  %9 = load double*, double** %FCBUPFMAD, align 8
  store double* %9, double** %tmpFCBUPFMAD, align 8
  %10 = load %struct.rc_quadratic*, %struct.rc_quadratic** %dst.addr, align 8
  %FCBUCFMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %10, i32 0, i32 61
  %11 = load double*, double** %FCBUCFMAD, align 8
  store double* %11, double** %tmpFCBUCFMAD, align 8
  %12 = load %struct.rc_quadratic*, %struct.rc_quadratic** %dst.addr, align 8
  %13 = bitcast %struct.rc_quadratic* %12 to i8*
  %14 = load %struct.rc_quadratic*, %struct.rc_quadratic** %src.addr, align 8
  %15 = bitcast %struct.rc_quadratic* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %15, i64 1600, i32 1, i1 false)
  %16 = load double*, double** %tmpBUPFMAD, align 8
  %17 = load %struct.rc_quadratic*, %struct.rc_quadratic** %dst.addr, align 8
  %BUPFMAD1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %17, i32 0, i32 59
  store double* %16, double** %BUPFMAD1, align 8
  %18 = load double*, double** %tmpBUCFMAD, align 8
  %19 = load %struct.rc_quadratic*, %struct.rc_quadratic** %dst.addr, align 8
  %BUCFMAD2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %19, i32 0, i32 60
  store double* %18, double** %BUCFMAD2, align 8
  %20 = load double*, double** %tmpFCBUPFMAD, align 8
  %21 = load %struct.rc_quadratic*, %struct.rc_quadratic** %dst.addr, align 8
  %FCBUPFMAD3 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %21, i32 0, i32 62
  store double* %20, double** %FCBUPFMAD3, align 8
  %22 = load double*, double** %tmpFCBUCFMAD, align 8
  %23 = load %struct.rc_quadratic*, %struct.rc_quadratic** %dst.addr, align 8
  %FCBUCFMAD4 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %23, i32 0, i32 61
  store double* %22, double** %FCBUCFMAD4, align 8
  %24 = load %struct.rc_quadratic*, %struct.rc_quadratic** %dst.addr, align 8
  %BUPFMAD5 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %24, i32 0, i32 59
  %25 = load double*, double** %BUPFMAD5, align 8
  %26 = bitcast double* %25 to i8*
  %27 = load %struct.rc_quadratic*, %struct.rc_quadratic** %src.addr, align 8
  %BUPFMAD6 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %27, i32 0, i32 59
  %28 = load double*, double** %BUPFMAD6, align 8
  %29 = bitcast double* %28 to i8*
  %30 = load i32, i32* %rcBufSize, align 4
  %conv = sext i32 %30 to i64
  %mul = mul i64 %conv, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %29, i64 %mul, i32 1, i1 false)
  %31 = load %struct.rc_quadratic*, %struct.rc_quadratic** %dst.addr, align 8
  %BUCFMAD7 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %31, i32 0, i32 60
  %32 = load double*, double** %BUCFMAD7, align 8
  %33 = bitcast double* %32 to i8*
  %34 = load %struct.rc_quadratic*, %struct.rc_quadratic** %src.addr, align 8
  %BUCFMAD8 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %34, i32 0, i32 60
  %35 = load double*, double** %BUCFMAD8, align 8
  %36 = bitcast double* %35 to i8*
  %37 = load i32, i32* %rcBufSize, align 4
  %conv9 = sext i32 %37 to i64
  %mul10 = mul i64 %conv9, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %36, i64 %mul10, i32 1, i1 false)
  %38 = load %struct.rc_quadratic*, %struct.rc_quadratic** %dst.addr, align 8
  %FCBUPFMAD11 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %38, i32 0, i32 62
  %39 = load double*, double** %FCBUPFMAD11, align 8
  %40 = bitcast double* %39 to i8*
  %41 = load %struct.rc_quadratic*, %struct.rc_quadratic** %src.addr, align 8
  %FCBUPFMAD12 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %41, i32 0, i32 62
  %42 = load double*, double** %FCBUPFMAD12, align 8
  %43 = bitcast double* %42 to i8*
  %44 = load i32, i32* %rcBufSize, align 4
  %conv13 = sext i32 %44 to i64
  %mul14 = mul i64 %conv13, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %43, i64 %mul14, i32 1, i1 false)
  %45 = load %struct.rc_quadratic*, %struct.rc_quadratic** %dst.addr, align 8
  %FCBUCFMAD15 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %45, i32 0, i32 61
  %46 = load double*, double** %FCBUCFMAD15, align 8
  %47 = bitcast double* %46 to i8*
  %48 = load %struct.rc_quadratic*, %struct.rc_quadratic** %src.addr, align 8
  %FCBUCFMAD16 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %48, i32 0, i32 61
  %49 = load double*, double** %FCBUCFMAD16, align 8
  %50 = bitcast double* %49 to i8*
  %51 = load i32, i32* %rcBufSize, align 4
  %conv17 = sext i32 %51 to i64
  %mul18 = mul i64 %conv17, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %50, i64 %mul18, i32 1, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @rc_free(%struct.rc_quadratic** %prc) #0 {
entry:
  %prc.addr = alloca %struct.rc_quadratic**, align 8
  store %struct.rc_quadratic** %prc, %struct.rc_quadratic*** %prc.addr, align 8
  %0 = load %struct.rc_quadratic**, %struct.rc_quadratic*** %prc.addr, align 8
  %1 = load %struct.rc_quadratic*, %struct.rc_quadratic** %0, align 8
  %BUPFMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %1, i32 0, i32 59
  %2 = load double*, double** %BUPFMAD, align 8
  %cmp = icmp ne double* null, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.rc_quadratic**, %struct.rc_quadratic*** %prc.addr, align 8
  %4 = load %struct.rc_quadratic*, %struct.rc_quadratic** %3, align 8
  %BUPFMAD1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %4, i32 0, i32 59
  %5 = load double*, double** %BUPFMAD1, align 8
  %6 = bitcast double* %5 to i8*
  call void @free(i8* %6) #3
  %7 = load %struct.rc_quadratic**, %struct.rc_quadratic*** %prc.addr, align 8
  %8 = load %struct.rc_quadratic*, %struct.rc_quadratic** %7, align 8
  %BUPFMAD2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %8, i32 0, i32 59
  store double* null, double** %BUPFMAD2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.rc_quadratic**, %struct.rc_quadratic*** %prc.addr, align 8
  %10 = load %struct.rc_quadratic*, %struct.rc_quadratic** %9, align 8
  %BUCFMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %10, i32 0, i32 60
  %11 = load double*, double** %BUCFMAD, align 8
  %cmp3 = icmp ne double* null, %11
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %12 = load %struct.rc_quadratic**, %struct.rc_quadratic*** %prc.addr, align 8
  %13 = load %struct.rc_quadratic*, %struct.rc_quadratic** %12, align 8
  %BUCFMAD5 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %13, i32 0, i32 60
  %14 = load double*, double** %BUCFMAD5, align 8
  %15 = bitcast double* %14 to i8*
  call void @free(i8* %15) #3
  %16 = load %struct.rc_quadratic**, %struct.rc_quadratic*** %prc.addr, align 8
  %17 = load %struct.rc_quadratic*, %struct.rc_quadratic** %16, align 8
  %BUCFMAD6 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %17, i32 0, i32 60
  store double* null, double** %BUCFMAD6, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  %18 = load %struct.rc_quadratic**, %struct.rc_quadratic*** %prc.addr, align 8
  %19 = load %struct.rc_quadratic*, %struct.rc_quadratic** %18, align 8
  %FCBUCFMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %19, i32 0, i32 61
  %20 = load double*, double** %FCBUCFMAD, align 8
  %cmp8 = icmp ne double* null, %20
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end.7
  %21 = load %struct.rc_quadratic**, %struct.rc_quadratic*** %prc.addr, align 8
  %22 = load %struct.rc_quadratic*, %struct.rc_quadratic** %21, align 8
  %FCBUCFMAD10 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %22, i32 0, i32 61
  %23 = load double*, double** %FCBUCFMAD10, align 8
  %24 = bitcast double* %23 to i8*
  call void @free(i8* %24) #3
  %25 = load %struct.rc_quadratic**, %struct.rc_quadratic*** %prc.addr, align 8
  %26 = load %struct.rc_quadratic*, %struct.rc_quadratic** %25, align 8
  %FCBUCFMAD11 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %26, i32 0, i32 61
  store double* null, double** %FCBUCFMAD11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end.7
  %27 = load %struct.rc_quadratic**, %struct.rc_quadratic*** %prc.addr, align 8
  %28 = load %struct.rc_quadratic*, %struct.rc_quadratic** %27, align 8
  %FCBUPFMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %28, i32 0, i32 62
  %29 = load double*, double** %FCBUPFMAD, align 8
  %cmp13 = icmp ne double* null, %29
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end.12
  %30 = load %struct.rc_quadratic**, %struct.rc_quadratic*** %prc.addr, align 8
  %31 = load %struct.rc_quadratic*, %struct.rc_quadratic** %30, align 8
  %FCBUPFMAD15 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %31, i32 0, i32 62
  %32 = load double*, double** %FCBUPFMAD15, align 8
  %33 = bitcast double* %32 to i8*
  call void @free(i8* %33) #3
  %34 = load %struct.rc_quadratic**, %struct.rc_quadratic*** %prc.addr, align 8
  %35 = load %struct.rc_quadratic*, %struct.rc_quadratic** %34, align 8
  %FCBUPFMAD16 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %35, i32 0, i32 62
  store double* null, double** %FCBUPFMAD16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.end.12
  %36 = load %struct.rc_quadratic**, %struct.rc_quadratic*** %prc.addr, align 8
  %37 = load %struct.rc_quadratic*, %struct.rc_quadratic** %36, align 8
  %cmp18 = icmp ne %struct.rc_quadratic* null, %37
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  %38 = load %struct.rc_quadratic**, %struct.rc_quadratic*** %prc.addr, align 8
  %39 = load %struct.rc_quadratic*, %struct.rc_quadratic** %38, align 8
  %40 = bitcast %struct.rc_quadratic* %39 to i8*
  call void @free(i8* %40) #3
  %41 = load %struct.rc_quadratic**, %struct.rc_quadratic*** %prc.addr, align 8
  store %struct.rc_quadratic* null, %struct.rc_quadratic** %41, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.17
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @rc_init_seq(%struct.rc_quadratic* %prc) #0 {
entry:
  %prc.addr = alloca %struct.rc_quadratic*, align 8
  %L1 = alloca double, align 8
  %L2 = alloca double, align 8
  %L3 = alloca double, align 8
  %bpp = alloca double, align 8
  %qp = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.rc_quadratic* %prc, %struct.rc_quadratic** %prc.addr, align 8
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCUpdateMode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 162
  %1 = load i32, i32* %RCUpdateMode, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  store i32 (%struct.rc_quadratic*, i32)* @updateQPRC0, i32 (%struct.rc_quadratic*, i32)** @updateQP, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 (%struct.rc_quadratic*, i32)* @updateQPRC1, i32 (%struct.rc_quadratic*, i32)** @updateQP, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 (%struct.rc_quadratic*, i32)* @updateQPRC2, i32 (%struct.rc_quadratic*, i32)** @updateQP, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  store i32 (%struct.rc_quadratic*, i32)* @updateQPRC3, i32 (%struct.rc_quadratic*, i32)** @updateQP, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 (%struct.rc_quadratic*, i32)* @updateQPRC0, i32 (%struct.rc_quadratic*, i32)** @updateQP, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %2 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Xp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %2, i32 0, i32 66
  store i32 0, i32* %Xp, align 4
  %3 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Xb = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %3, i32 0, i32 67
  store i32 0, i32* %Xb, align 4
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %bit_rate = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 158
  %5 = load i32, i32* %bit_rate, align 4
  %conv = sitofp i32 %5 to float
  %6 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %bit_rate4 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %6, i32 0, i32 0
  store float %conv, float* %bit_rate4, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framerate = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 12
  %8 = load float, float* %framerate, align 4
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 40
  %10 = load i32, i32* %successive_Bframe, align 4
  %add = add nsw i32 %10, 1
  %conv5 = sitofp i32 %add to float
  %mul = fmul float %8, %conv5
  %11 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %11, i32 0, i32 5
  %12 = load i32, i32* %jumpd, align 4
  %add6 = add nsw i32 %12, 1
  %conv7 = sitofp i32 %add6 to float
  %div = fdiv float %mul, %conv7
  %13 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %frame_rate = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %13, i32 0, i32 1
  store float %div, float* %frame_rate, align 4
  %14 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %bit_rate8 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %14, i32 0, i32 0
  %15 = load float, float* %bit_rate8, align 4
  %16 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevBitRate = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %16, i32 0, i32 2
  store float %15, float* %PrevBitRate, align 4
  %17 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %17, i32 0, i32 160
  %18 = load i32, i32* %basicunit, align 4
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 120
  %20 = load i32, i32* %FrameSizeInMbs, align 4
  %cmp = icmp ugt i32 %18, %20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 120
  %22 = load i32, i32* %FrameSizeInMbs10, align 4
  %23 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit11 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %23, i32 0, i32 160
  store i32 %22, i32* %basicunit11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %24 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit12 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %24, i32 0, i32 160
  %25 = load i32, i32* %basicunit12, align 4
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 120
  %27 = load i32, i32* %FrameSizeInMbs13, align 4
  %cmp14 = icmp ult i32 %25, %27
  br i1 %cmp14, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.end
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs17 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 120
  %29 = load i32, i32* %FrameSizeInMbs17, align 4
  %30 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit18 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %30, i32 0, i32 160
  %31 = load i32, i32* %basicunit18, align 4
  %div19 = udiv i32 %29, %31
  %32 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %32, i32 0, i32 44
  store i32 %div19, i32* %TotalNumberofBasicUnit, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.end
  %33 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %CurrentBufferFullness = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %33, i32 0, i32 15
  store i64 0, i64* %CurrentBufferFullness, align 8
  %34 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %CurrentBufferFullness21 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %34, i32 0, i32 15
  %35 = load i64, i64* %CurrentBufferFullness21, align 8
  %conv22 = sitofp i64 %35 to double
  %36 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %GOPTargetBufferLevel = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %36, i32 0, i32 5
  store double %conv22, double* %GOPTargetBufferLevel, align 8
  %37 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_windowSize = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %37, i32 0, i32 32
  store i32 0, i32* %m_windowSize, align 4
  %38 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADm_windowSize = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %38, i32 0, i32 31
  store i32 0, i32* %MADm_windowSize, align 4
  %39 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedBFrame = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %39, i32 0, i32 8
  store i32 0, i32* %NumberofCodedBFrame, align 4
  %40 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedPFrame = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %40, i32 0, i32 9
  store i32 0, i32* %NumberofCodedPFrame, align 4
  %41 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofGOP = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %41, i32 0, i32 10
  store i32 0, i32* %NumberofGOP, align 4
  %42 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %RemainingBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %42, i32 0, i32 16
  store i32 0, i32* %RemainingBits, align 4
  %43 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe23 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %43, i32 0, i32 40
  %44 = load i32, i32* %successive_Bframe23, align 4
  %cmp24 = icmp sgt i32 %44, 0
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.20
  %45 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %GAMMAP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %45, i32 0, i32 3
  store double 2.500000e-01, double* %GAMMAP, align 8
  %46 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %BETAP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %46, i32 0, i32 4
  store double 9.000000e-01, double* %BETAP, align 8
  br label %if.end.29

if.else:                                          ; preds = %if.end.20
  %47 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %GAMMAP27 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %47, i32 0, i32 3
  store double 5.000000e-01, double* %GAMMAP27, align 8
  %48 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %BETAP28 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %48, i32 0, i32 4
  store double 5.000000e-01, double* %BETAP28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.26
  %49 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PPreHeader = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %49, i32 0, i32 34
  store i32 0, i32* %PPreHeader, align 4
  %50 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %bit_rate30 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %50, i32 0, i32 0
  %51 = load float, float* %bit_rate30, align 4
  %conv31 = fpext float %51 to double
  %mul32 = fmul double %conv31, 1.000000e+00
  %52 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_X1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %52, i32 0, i32 27
  store double %mul32, double* %Pm_X1, align 8
  %53 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_X2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %53, i32 0, i32 28
  store double 0.000000e+00, double* %Pm_X2, align 8
  %54 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PMADPictureC1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %54, i32 0, i32 16
  store double 1.000000e+00, double* %PMADPictureC1, align 8
  %55 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PMADPictureC2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %55, i32 0, i32 17
  store double 0.000000e+00, double* %PMADPictureC2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.29
  %56 = load i32, i32* %i, align 4
  %cmp33 = icmp slt i32 %56, 21
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load i32, i32* %i, align 4
  %idxprom = sext i32 %57 to i64
  %58 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_rgQp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %58, i32 0, i32 23
  %arrayidx = getelementptr inbounds [21 x double], [21 x double]* %Pm_rgQp, i32 0, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx, align 8
  %59 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %59 to i64
  %60 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_rgRp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %60, i32 0, i32 24
  %arrayidx36 = getelementptr inbounds [21 x double], [21 x double]* %Pm_rgRp, i32 0, i64 %idxprom35
  store double 0.000000e+00, double* %arrayidx36, align 8
  %61 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %61 to i64
  %62 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PPictureMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %62, i32 0, i32 18
  %arrayidx38 = getelementptr inbounds [21 x double], [21 x double]* %PPictureMAD, i32 0, i64 %idxprom37
  store double 0.000000e+00, double* %arrayidx38, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %63 = load i32, i32* %i, align 4
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %64 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PDuantQp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %64, i32 0, i32 80
  store i32 2, i32* %PDuantQp, align 4
  %65 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveHeaderBits1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %65, i32 0, i32 40
  store i32 0, i32* %PAveHeaderBits1, align 4
  %66 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveHeaderBits3 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %66, i32 0, i32 42
  store i32 0, i32* %PAveHeaderBits3, align 4
  %67 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit39 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %67, i32 0, i32 44
  %68 = load i32, i32* %TotalNumberofBasicUnit39, align 4
  %cmp40 = icmp sge i32 %68, 9
  %cond = select i1 %cmp40, i32 1, i32 2
  %69 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %DDquant = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %69, i32 0, i32 51
  store i32 %cond, i32* %DDquant, align 4
  %70 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %70, i32 0, i32 116
  %71 = load i32, i32* %PicWidthInMbs, align 4
  %72 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MBPerRow = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %72, i32 0, i32 52
  store i32 %71, i32* %MBPerRow, align 4
  %73 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %73, i32 0, i32 1
  store i32 0, i32* %FieldControl, align 4
  %74 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %bit_rate42 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %74, i32 0, i32 0
  %75 = load float, float* %bit_rate42, align 4
  %conv43 = fpext float %75 to double
  %mul44 = fmul double 1.000000e+00, %conv43
  %76 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %frame_rate45 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %76, i32 0, i32 1
  %77 = load float, float* %frame_rate45, align 4
  %78 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %size = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %78, i32 0, i32 22
  %79 = load i32, i32* %size, align 4
  %conv46 = sitofp i32 %79 to float
  %mul47 = fmul float %77, %conv46
  %conv48 = fpext float %mul47 to double
  %div49 = fdiv double %mul44, %conv48
  store double %div49, double* %bpp, align 8
  %80 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %80, i32 0, i32 13
  %81 = load i32, i32* %width, align 4
  %cmp50 = icmp eq i32 %81, 176
  br i1 %cmp50, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %for.end
  store double 1.000000e-01, double* %L1, align 8
  store double 3.000000e-01, double* %L2, align 8
  store double 6.000000e-01, double* %L3, align 8
  br label %if.end.60

if.else.53:                                       ; preds = %for.end
  %82 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width54 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %82, i32 0, i32 13
  %83 = load i32, i32* %width54, align 4
  %cmp55 = icmp eq i32 %83, 352
  br i1 %cmp55, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %if.else.53
  store double 2.000000e-01, double* %L1, align 8
  store double 6.000000e-01, double* %L2, align 8
  store double 1.200000e+00, double* %L3, align 8
  br label %if.end.59

if.else.58:                                       ; preds = %if.else.53
  store double 6.000000e-01, double* %L1, align 8
  store double 1.400000e+00, double* %L2, align 8
  store double 2.400000e+00, double* %L3, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.52
  %84 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SeinitialQP = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %84, i32 0, i32 159
  %85 = load i32, i32* %SeinitialQP, align 4
  %cmp61 = icmp eq i32 %85, 0
  br i1 %cmp61, label %if.then.63, label %if.end.80

if.then.63:                                       ; preds = %if.end.60
  %86 = load double, double* %bpp, align 8
  %87 = load double, double* %L1, align 8
  %cmp64 = fcmp ole double %86, %87
  br i1 %cmp64, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %if.then.63
  store i32 35, i32* %qp, align 4
  br label %if.end.78

if.else.67:                                       ; preds = %if.then.63
  %88 = load double, double* %bpp, align 8
  %89 = load double, double* %L2, align 8
  %cmp68 = fcmp ole double %88, %89
  br i1 %cmp68, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %if.else.67
  store i32 25, i32* %qp, align 4
  br label %if.end.77

if.else.71:                                       ; preds = %if.else.67
  %90 = load double, double* %bpp, align 8
  %91 = load double, double* %L3, align 8
  %cmp72 = fcmp ole double %90, %91
  br i1 %cmp72, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %if.else.71
  store i32 20, i32* %qp, align 4
  br label %if.end.76

if.else.75:                                       ; preds = %if.else.71
  store i32 10, i32* %qp, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.75, %if.then.74
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.70
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.66
  %92 = load i32, i32* %qp, align 4
  %93 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SeinitialQP79 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %93, i32 0, i32 159
  store i32 %92, i32* %SeinitialQP79, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.78, %if.end.60
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @updateQPRC0(%struct.rc_quadratic* %prc, i32 %topfield) #0 {
entry:
  %retval = alloca i32, align 4
  %prc.addr = alloca %struct.rc_quadratic*, align 8
  %topfield.addr = alloca i32, align 4
  %m_Bits = alloca i32, align 4
  %BFrameNumber = alloca i32, align 4
  %StepSize = alloca i32, align 4
  %SumofBasicUnit = alloca i32, align 4
  %DuantQp = alloca i32, align 4
  %m_Qp = alloca i32, align 4
  %m_Hp = alloca i32, align 4
  store %struct.rc_quadratic* %prc, %struct.rc_quadratic** %prc.addr, align 8
  store i32 %topfield, i32* %topfield.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 132
  %1 = load i32, i32* %BasicUnit, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 120
  %3 = load i32, i32* %FrameSizeInMbs, align 4
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else.195

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %topfield.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %5, i32 0, i32 1
  %6 = load i32, i32* %FieldControl, align 4
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %if.then.2, label %if.else.181

if.then.2:                                        ; preds = %lor.lhs.false, %if.then
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 5
  %8 = load i32, i32* %type, align 4
  %cmp3 = icmp eq i32 %8, 2
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.2
  %9 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MyInitialQp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %9, i32 0, i32 11
  %10 = load i32, i32* %MyInitialQp, align 4
  %11 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %11, i32 0, i32 33
  store i32 %10, i32* %m_Qc, align 4
  %12 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc5 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %12, i32 0, i32 33
  %13 = load i32, i32* %m_Qc5, align 4
  store i32 %13, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.2
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 5
  %15 = load i32, i32* %type6, align 4
  %cmp7 = icmp eq i32 %15, 1
  br i1 %cmp7, label %if.then.8, label %if.else.118

if.then.8:                                        ; preds = %if.else
  %16 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %16, i32 0, i32 40
  %17 = load i32, i32* %successive_Bframe, align 4
  %cmp9 = icmp eq i32 %17, 1
  br i1 %cmp9, label %if.then.10, label %if.else.30

if.then.10:                                       ; preds = %if.then.8
  %18 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %18, i32 0, i32 121
  %19 = load i32, i32* %PicInterlace, align 4
  %cmp11 = icmp eq i32 %19, 2
  br i1 %cmp11, label %if.then.14, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %if.then.10
  %20 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %20, i32 0, i32 122
  %21 = load i32, i32* %MbInterlace, align 4
  %tobool13 = icmp ne i32 %21, 0
  br i1 %tobool13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %lor.lhs.false.12, %if.then.10
  %22 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @updateQPInterlace(%struct.rc_quadratic* %22)
  br label %if.end

if.end:                                           ; preds = %if.then.14, %lor.lhs.false.12
  %23 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %23, i32 0, i32 35
  %24 = load i32, i32* %PrevLastQP, align 4
  %25 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %25, i32 0, i32 36
  %26 = load i32, i32* %CurrLastQP, align 4
  %call = call i32 @imin(i32 %24, i32 %26)
  %add = add nsw i32 %call, 2
  %27 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc15 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %27, i32 0, i32 33
  store i32 %add, i32* %m_Qc15, align 4
  %28 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc16 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %28, i32 0, i32 33
  %29 = load i32, i32* %m_Qc16, align 4
  %30 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP17 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %30, i32 0, i32 35
  %31 = load i32, i32* %PrevLastQP17, align 4
  %32 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP18 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %32, i32 0, i32 36
  %33 = load i32, i32* %CurrLastQP18, align 4
  %call19 = call i32 @imax(i32 %31, i32 %33)
  %call20 = call i32 @imax(i32 %29, i32 %call19)
  %34 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc21 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %34, i32 0, i32 33
  store i32 %call20, i32* %m_Qc21, align 4
  %35 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc22 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %35, i32 0, i32 33
  %36 = load i32, i32* %m_Qc22, align 4
  %37 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP23 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %37, i32 0, i32 36
  %38 = load i32, i32* %CurrLastQP23, align 4
  %add24 = add nsw i32 %38, 1
  %call25 = call i32 @imax(i32 %36, i32 %add24)
  %39 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc26 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %39, i32 0, i32 33
  store i32 %call25, i32* %m_Qc26, align 4
  %40 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MIN_QUANT = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %40, i32 0, i32 10
  %41 = load i32, i32* %RC_MIN_QUANT, align 4
  %42 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MAX_QUANT = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %42, i32 0, i32 9
  %43 = load i32, i32* %RC_MAX_QUANT, align 4
  %44 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc27 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %44, i32 0, i32 33
  %45 = load i32, i32* %m_Qc27, align 4
  %call28 = call i32 @iClip3(i32 %41, i32 %43, i32 %45)
  %46 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc29 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %46, i32 0, i32 33
  store i32 %call28, i32* %m_Qc29, align 4
  br label %if.end.116

if.else.30:                                       ; preds = %if.then.8
  %47 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBFrames = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %47, i32 0, i32 37
  %48 = load i32, i32* %NumberofBFrames, align 4
  %add31 = add nsw i32 %48, 1
  %49 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe32 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %49, i32 0, i32 40
  %50 = load i32, i32* %successive_Bframe32, align 4
  %rem = srem i32 %add31, %50
  store i32 %rem, i32* %BFrameNumber, align 4
  %51 = load i32, i32* %BFrameNumber, align 4
  %cmp33 = icmp eq i32 %51, 0
  br i1 %cmp33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.else.30
  %52 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe35 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %52, i32 0, i32 40
  %53 = load i32, i32* %successive_Bframe35, align 4
  store i32 %53, i32* %BFrameNumber, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.else.30
  %54 = load i32, i32* %BFrameNumber, align 4
  %cmp37 = icmp eq i32 %54, 1
  br i1 %cmp37, label %if.then.38, label %if.end.46

if.then.38:                                       ; preds = %if.end.36
  %55 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace39 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %55, i32 0, i32 121
  %56 = load i32, i32* %PicInterlace39, align 4
  %cmp40 = icmp eq i32 %56, 2
  br i1 %cmp40, label %if.then.44, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %if.then.38
  %57 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace42 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %57, i32 0, i32 122
  %58 = load i32, i32* %MbInterlace42, align 4
  %tobool43 = icmp ne i32 %58, 0
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %lor.lhs.false.41, %if.then.38
  %59 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @updateQPInterlace(%struct.rc_quadratic* %59)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %lor.lhs.false.41
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.36
  %60 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP47 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %60, i32 0, i32 36
  %61 = load i32, i32* %CurrLastQP47, align 4
  %62 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP48 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %62, i32 0, i32 35
  %63 = load i32, i32* %PrevLastQP48, align 4
  %sub = sub nsw i32 %61, %63
  %64 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe49 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %64, i32 0, i32 40
  %65 = load i32, i32* %successive_Bframe49, align 4
  %mul = mul nsw i32 -2, %65
  %sub50 = sub nsw i32 %mul, 3
  %cmp51 = icmp sle i32 %sub, %sub50
  br i1 %cmp51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %if.end.46
  store i32 -3, i32* %StepSize, align 4
  br label %if.end.93

if.else.53:                                       ; preds = %if.end.46
  %66 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP54 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %66, i32 0, i32 36
  %67 = load i32, i32* %CurrLastQP54, align 4
  %68 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP55 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %68, i32 0, i32 35
  %69 = load i32, i32* %PrevLastQP55, align 4
  %sub56 = sub nsw i32 %67, %69
  %70 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe57 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %70, i32 0, i32 40
  %71 = load i32, i32* %successive_Bframe57, align 4
  %mul58 = mul nsw i32 -2, %71
  %sub59 = sub nsw i32 %mul58, 2
  %cmp60 = icmp eq i32 %sub56, %sub59
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %if.else.53
  store i32 -2, i32* %StepSize, align 4
  br label %if.end.92

if.else.62:                                       ; preds = %if.else.53
  %72 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP63 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %72, i32 0, i32 36
  %73 = load i32, i32* %CurrLastQP63, align 4
  %74 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP64 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %74, i32 0, i32 35
  %75 = load i32, i32* %PrevLastQP64, align 4
  %sub65 = sub nsw i32 %73, %75
  %76 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe66 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %76, i32 0, i32 40
  %77 = load i32, i32* %successive_Bframe66, align 4
  %mul67 = mul nsw i32 -2, %77
  %sub68 = sub nsw i32 %mul67, 1
  %cmp69 = icmp eq i32 %sub65, %sub68
  br i1 %cmp69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %if.else.62
  store i32 -1, i32* %StepSize, align 4
  br label %if.end.91

if.else.71:                                       ; preds = %if.else.62
  %78 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP72 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %78, i32 0, i32 36
  %79 = load i32, i32* %CurrLastQP72, align 4
  %80 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP73 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %80, i32 0, i32 35
  %81 = load i32, i32* %PrevLastQP73, align 4
  %sub74 = sub nsw i32 %79, %81
  %82 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe75 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %82, i32 0, i32 40
  %83 = load i32, i32* %successive_Bframe75, align 4
  %mul76 = mul nsw i32 -2, %83
  %cmp77 = icmp eq i32 %sub74, %mul76
  br i1 %cmp77, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %if.else.71
  store i32 0, i32* %StepSize, align 4
  br label %if.end.90

if.else.79:                                       ; preds = %if.else.71
  %84 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP80 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %84, i32 0, i32 36
  %85 = load i32, i32* %CurrLastQP80, align 4
  %86 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP81 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %86, i32 0, i32 35
  %87 = load i32, i32* %PrevLastQP81, align 4
  %sub82 = sub nsw i32 %85, %87
  %88 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe83 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %88, i32 0, i32 40
  %89 = load i32, i32* %successive_Bframe83, align 4
  %mul84 = mul nsw i32 -2, %89
  %add85 = add nsw i32 %mul84, 1
  %cmp86 = icmp eq i32 %sub82, %add85
  br i1 %cmp86, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %if.else.79
  store i32 1, i32* %StepSize, align 4
  br label %if.end.89

if.else.88:                                       ; preds = %if.else.79
  store i32 2, i32* %StepSize, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.88, %if.then.87
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.78
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.70
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.61
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.52
  %90 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP94 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %90, i32 0, i32 35
  %91 = load i32, i32* %PrevLastQP94, align 4
  %92 = load i32, i32* %StepSize, align 4
  %add95 = add nsw i32 %91, %92
  %93 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc96 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %93, i32 0, i32 33
  store i32 %add95, i32* %m_Qc96, align 4
  %94 = load i32, i32* %BFrameNumber, align 4
  %sub97 = sub nsw i32 %94, 1
  %mul98 = mul nsw i32 -2, %sub97
  %95 = load i32, i32* %BFrameNumber, align 4
  %sub99 = sub nsw i32 %95, 1
  %mul100 = mul nsw i32 2, %sub99
  %96 = load i32, i32* %BFrameNumber, align 4
  %sub101 = sub nsw i32 %96, 1
  %97 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP102 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %97, i32 0, i32 36
  %98 = load i32, i32* %CurrLastQP102, align 4
  %99 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP103 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %99, i32 0, i32 35
  %100 = load i32, i32* %PrevLastQP103, align 4
  %sub104 = sub nsw i32 %98, %100
  %mul105 = mul nsw i32 %sub101, %sub104
  %101 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe106 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %101, i32 0, i32 40
  %102 = load i32, i32* %successive_Bframe106, align 4
  %sub107 = sub nsw i32 %102, 1
  %div = sdiv i32 %mul105, %sub107
  %call108 = call i32 @iClip3(i32 %mul98, i32 %mul100, i32 %div)
  %103 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc109 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %103, i32 0, i32 33
  %104 = load i32, i32* %m_Qc109, align 4
  %add110 = add nsw i32 %104, %call108
  store i32 %add110, i32* %m_Qc109, align 4
  %105 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MIN_QUANT111 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %105, i32 0, i32 10
  %106 = load i32, i32* %RC_MIN_QUANT111, align 4
  %107 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MAX_QUANT112 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %107, i32 0, i32 9
  %108 = load i32, i32* %RC_MAX_QUANT112, align 4
  %109 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc113 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %109, i32 0, i32 33
  %110 = load i32, i32* %m_Qc113, align 4
  %call114 = call i32 @iClip3(i32 %106, i32 %108, i32 %110)
  %111 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc115 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %111, i32 0, i32 33
  store i32 %call114, i32* %m_Qc115, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.93, %if.end
  %112 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc117 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %112, i32 0, i32 33
  %113 = load i32, i32* %m_Qc117, align 4
  store i32 %113, i32* %retval
  br label %return

if.else.118:                                      ; preds = %if.else
  %114 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type119 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %114, i32 0, i32 5
  %115 = load i32, i32* %type119, align 4
  %cmp120 = icmp eq i32 %115, 0
  br i1 %cmp120, label %land.lhs.true, label %if.else.133

land.lhs.true:                                    ; preds = %if.else.118
  %116 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofPPicture = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %116, i32 0, i32 12
  %117 = load i32, i32* %NumberofPPicture, align 4
  %cmp121 = icmp eq i32 %117, 0
  br i1 %cmp121, label %land.lhs.true.122, label %if.else.133

land.lhs.true.122:                                ; preds = %land.lhs.true
  %118 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %118, i32 0, i32 0
  %119 = load i32, i32* %number, align 4
  %120 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub123 = sub nsw i32 %119, %120
  %tobool124 = icmp ne i32 %sub123, 0
  br i1 %tobool124, label %if.then.125, label %if.else.133

if.then.125:                                      ; preds = %land.lhs.true.122
  %121 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MyInitialQp126 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %121, i32 0, i32 11
  %122 = load i32, i32* %MyInitialQp126, align 4
  %123 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc127 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %123, i32 0, i32 33
  store i32 %122, i32* %m_Qc127, align 4
  %124 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl128 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %124, i32 0, i32 1
  %125 = load i32, i32* %FieldControl128, align 4
  %cmp129 = icmp eq i32 %125, 0
  br i1 %cmp129, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %if.then.125
  %126 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @updateQPNonPicAFF(%struct.rc_quadratic* %126)
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.130, %if.then.125
  %127 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc132 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %127, i32 0, i32 33
  %128 = load i32, i32* %m_Qc132, align 4
  store i32 %128, i32* %retval
  br label %return

if.else.133:                                      ; preds = %land.lhs.true.122, %land.lhs.true, %if.else.118
  %129 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace134 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %129, i32 0, i32 121
  %130 = load i32, i32* %PicInterlace134, align 4
  %cmp135 = icmp eq i32 %130, 2
  br i1 %cmp135, label %land.lhs.true.139, label %lor.lhs.false.136

lor.lhs.false.136:                                ; preds = %if.else.133
  %131 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace137 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %131, i32 0, i32 122
  %132 = load i32, i32* %MbInterlace137, align 4
  %tobool138 = icmp ne i32 %132, 0
  br i1 %tobool138, label %land.lhs.true.139, label %if.end.143

land.lhs.true.139:                                ; preds = %lor.lhs.false.136, %if.else.133
  %133 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl140 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %133, i32 0, i32 1
  %134 = load i32, i32* %FieldControl140, align 4
  %cmp141 = icmp eq i32 %134, 0
  br i1 %cmp141, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %land.lhs.true.139
  %135 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @updateQPInterlaceBU(%struct.rc_quadratic* %135)
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %land.lhs.true.139, %lor.lhs.false.136
  %136 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_X1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %136, i32 0, i32 27
  %137 = load double, double* %Pm_X1, align 8
  %138 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %138, i32 0, i32 25
  store double %137, double* %m_X1, align 8
  %139 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_X2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %139, i32 0, i32 28
  %140 = load double, double* %Pm_X2, align 8
  %141 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %141, i32 0, i32 26
  store double %140, double* %m_X2, align 8
  %142 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PMADPictureC1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %142, i32 0, i32 16
  %143 = load double, double* %PMADPictureC1, align 8
  %144 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %144, i32 0, i32 14
  store double %143, double* %MADPictureC1, align 8
  %145 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PMADPictureC2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %145, i32 0, i32 17
  %146 = load double, double* %PMADPictureC2, align 8
  %147 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %147, i32 0, i32 15
  store double %146, double* %MADPictureC2, align 8
  %148 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PPictureMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %148, i32 0, i32 18
  %arrayidx = getelementptr inbounds [21 x double], [21 x double]* %PPictureMAD, i32 0, i64 0
  %149 = load double, double* %arrayidx, align 8
  %150 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PreviousPictureMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %150, i32 0, i32 13
  store double %149, double* %PreviousPictureMAD, align 8
  %151 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PDuantQp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %151, i32 0, i32 80
  %152 = load i32, i32* %PDuantQp, align 4
  store i32 %152, i32* %DuantQp, align 4
  %153 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_Qp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %153, i32 0, i32 29
  %154 = load i32, i32* %Pm_Qp, align 4
  store i32 %154, i32* %m_Qp, align 4
  %155 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PPreHeader = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %155, i32 0, i32 34
  %156 = load i32, i32* %PPreHeader, align 4
  store i32 %156, i32* %m_Hp, align 4
  %157 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC1144 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %157, i32 0, i32 14
  %158 = load double, double* %MADPictureC1144, align 8
  %159 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PreviousPictureMAD145 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %159, i32 0, i32 13
  %160 = load double, double* %PreviousPictureMAD145, align 8
  %mul146 = fmul double %158, %160
  %161 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC2147 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %161, i32 0, i32 15
  %162 = load double, double* %MADPictureC2147, align 8
  %add148 = fadd double %mul146, %162
  %163 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %163, i32 0, i32 46
  store double %add148, double* %CurrentFrameMAD, align 8
  %164 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %164, i32 0, i32 68
  %165 = load i32, i32* %Target, align 4
  %cmp149 = icmp slt i32 %165, 0
  br i1 %cmp149, label %if.then.150, label %if.else.158

if.then.150:                                      ; preds = %if.end.143
  %166 = load i32, i32* %m_Qp, align 4
  %167 = load i32, i32* %DuantQp, align 4
  %add151 = add nsw i32 %166, %167
  %168 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc152 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %168, i32 0, i32 33
  store i32 %add151, i32* %m_Qc152, align 4
  %169 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MIN_QUANT153 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %169, i32 0, i32 10
  %170 = load i32, i32* %RC_MIN_QUANT153, align 4
  %171 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MAX_QUANT154 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %171, i32 0, i32 9
  %172 = load i32, i32* %RC_MAX_QUANT154, align 4
  %173 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc155 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %173, i32 0, i32 33
  %174 = load i32, i32* %m_Qc155, align 4
  %call156 = call i32 @iClip3(i32 %170, i32 %172, i32 %174)
  %175 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc157 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %175, i32 0, i32 33
  store i32 %call156, i32* %m_Qc157, align 4
  br label %if.end.174

if.else.158:                                      ; preds = %if.end.143
  %176 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target159 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %176, i32 0, i32 68
  %177 = load i32, i32* %Target159, align 4
  %178 = load i32, i32* %m_Hp, align 4
  %sub160 = sub nsw i32 %177, %178
  store i32 %sub160, i32* %m_Bits, align 4
  %179 = load i32, i32* %m_Bits, align 4
  %180 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %bit_rate = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %180, i32 0, i32 0
  %181 = load float, float* %bit_rate, align 4
  %182 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %frame_rate = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %182, i32 0, i32 1
  %183 = load float, float* %frame_rate, align 4
  %mul161 = fmul float 4.000000e+00, %183
  %div162 = fdiv float %181, %mul161
  %conv = fptosi float %div162 to i32
  %call163 = call i32 @imax(i32 %179, i32 %conv)
  store i32 %call163, i32* %m_Bits, align 4
  %184 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %185 = load i32, i32* %m_Bits, align 4
  call void @updateModelQPFrame(%struct.rc_quadratic* %184, i32 %185)
  %186 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MIN_QUANT164 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %186, i32 0, i32 10
  %187 = load i32, i32* %RC_MIN_QUANT164, align 4
  %188 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MAX_QUANT165 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %188, i32 0, i32 9
  %189 = load i32, i32* %RC_MAX_QUANT165, align 4
  %190 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc166 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %190, i32 0, i32 33
  %191 = load i32, i32* %m_Qc166, align 4
  %call167 = call i32 @iClip3(i32 %187, i32 %189, i32 %191)
  %192 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc168 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %192, i32 0, i32 33
  store i32 %call167, i32* %m_Qc168, align 4
  %193 = load i32, i32* %m_Qp, align 4
  %194 = load i32, i32* %DuantQp, align 4
  %sub169 = sub nsw i32 %193, %194
  %195 = load i32, i32* %m_Qp, align 4
  %196 = load i32, i32* %DuantQp, align 4
  %add170 = add nsw i32 %195, %196
  %197 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc171 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %197, i32 0, i32 33
  %198 = load i32, i32* %m_Qc171, align 4
  %call172 = call i32 @iClip3(i32 %sub169, i32 %add170, i32 %198)
  %199 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc173 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %199, i32 0, i32 33
  store i32 %call172, i32* %m_Qc173, align 4
  br label %if.end.174

if.end.174:                                       ; preds = %if.else.158, %if.then.150
  %200 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl175 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %200, i32 0, i32 1
  %201 = load i32, i32* %FieldControl175, align 4
  %cmp176 = icmp eq i32 %201, 0
  br i1 %cmp176, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %if.end.174
  %202 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @updateQPNonPicAFF(%struct.rc_quadratic* %202)
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.178, %if.end.174
  %203 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc180 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %203, i32 0, i32 33
  %204 = load i32, i32* %m_Qc180, align 4
  store i32 %204, i32* %retval
  br label %return

if.else.181:                                      ; preds = %lor.lhs.false
  %205 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type182 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %205, i32 0, i32 5
  %206 = load i32, i32* %type182, align 4
  %cmp183 = icmp eq i32 %206, 0
  br i1 %cmp183, label %land.lhs.true.185, label %if.end.193

land.lhs.true.185:                                ; preds = %if.else.181
  %207 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NoGranularFieldRC = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %207, i32 0, i32 3
  %208 = load i32, i32* %NoGranularFieldRC, align 4
  %cmp186 = icmp eq i32 %208, 0
  br i1 %cmp186, label %land.lhs.true.188, label %if.end.193

land.lhs.true.188:                                ; preds = %land.lhs.true.185
  %209 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number189 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %209, i32 0, i32 0
  %210 = load i32, i32* %number189, align 4
  %211 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub190 = sub nsw i32 %210, %211
  %tobool191 = icmp ne i32 %sub190, 0
  br i1 %tobool191, label %if.then.192, label %if.end.193

if.then.192:                                      ; preds = %land.lhs.true.188
  %212 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @updateBottomField(%struct.rc_quadratic* %212)
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.192, %land.lhs.true.188, %land.lhs.true.185, %if.else.181
  %213 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc194 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %213, i32 0, i32 33
  %214 = load i32, i32* %m_Qc194, align 4
  store i32 %214, i32* %retval
  br label %return

if.else.195:                                      ; preds = %entry
  %215 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type196 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %215, i32 0, i32 5
  %216 = load i32, i32* %type196, align 4
  %cmp197 = icmp eq i32 %216, 2
  br i1 %cmp197, label %if.then.203, label %lor.lhs.false.199

lor.lhs.false.199:                                ; preds = %if.else.195
  %217 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number200 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %217, i32 0, i32 0
  %218 = load i32, i32* %number200, align 4
  %219 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub201 = sub nsw i32 %218, %219
  %tobool202 = icmp ne i32 %sub201, 0
  br i1 %tobool202, label %if.else.207, label %if.then.203

if.then.203:                                      ; preds = %lor.lhs.false.199, %if.else.195
  %220 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MyInitialQp204 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %220, i32 0, i32 11
  %221 = load i32, i32* %MyInitialQp204, align 4
  %222 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc205 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %222, i32 0, i32 33
  store i32 %221, i32* %m_Qc205, align 4
  %223 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc206 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %223, i32 0, i32 33
  %224 = load i32, i32* %m_Qc206, align 4
  store i32 %224, i32* %retval
  br label %return

if.else.207:                                      ; preds = %lor.lhs.false.199
  %225 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type208 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %225, i32 0, i32 5
  %226 = load i32, i32* %type208, align 4
  %cmp209 = icmp eq i32 %226, 1
  br i1 %cmp209, label %if.then.211, label %if.else.354

if.then.211:                                      ; preds = %if.else.207
  %227 = load i32, i32* %topfield.addr, align 4
  %tobool212 = icmp ne i32 %227, 0
  br i1 %tobool212, label %if.then.217, label %lor.lhs.false.213

lor.lhs.false.213:                                ; preds = %if.then.211
  %228 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl214 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %228, i32 0, i32 1
  %229 = load i32, i32* %FieldControl214, align 4
  %cmp215 = icmp eq i32 %229, 0
  br i1 %cmp215, label %if.then.217, label %if.else.352

if.then.217:                                      ; preds = %lor.lhs.false.213, %if.then.211
  %230 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe218 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %230, i32 0, i32 40
  %231 = load i32, i32* %successive_Bframe218, align 4
  %cmp219 = icmp eq i32 %231, 1
  br i1 %cmp219, label %if.then.221, label %if.else.251

if.then.221:                                      ; preds = %if.then.217
  %232 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace222 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %232, i32 0, i32 121
  %233 = load i32, i32* %PicInterlace222, align 4
  %cmp223 = icmp eq i32 %233, 2
  br i1 %cmp223, label %if.then.228, label %lor.lhs.false.225

lor.lhs.false.225:                                ; preds = %if.then.221
  %234 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace226 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %234, i32 0, i32 122
  %235 = load i32, i32* %MbInterlace226, align 4
  %tobool227 = icmp ne i32 %235, 0
  br i1 %tobool227, label %if.then.228, label %if.end.229

if.then.228:                                      ; preds = %lor.lhs.false.225, %if.then.221
  %236 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @updateQPInterlace(%struct.rc_quadratic* %236)
  br label %if.end.229

if.end.229:                                       ; preds = %if.then.228, %lor.lhs.false.225
  %237 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP230 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %237, i32 0, i32 35
  %238 = load i32, i32* %PrevLastQP230, align 4
  %239 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP231 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %239, i32 0, i32 36
  %240 = load i32, i32* %CurrLastQP231, align 4
  %cmp232 = icmp eq i32 %238, %240
  br i1 %cmp232, label %if.then.234, label %if.else.238

if.then.234:                                      ; preds = %if.end.229
  %241 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP235 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %241, i32 0, i32 35
  %242 = load i32, i32* %PrevLastQP235, align 4
  %add236 = add nsw i32 %242, 2
  %243 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc237 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %243, i32 0, i32 33
  store i32 %add236, i32* %m_Qc237, align 4
  br label %if.end.245

if.else.238:                                      ; preds = %if.end.229
  %244 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP239 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %244, i32 0, i32 35
  %245 = load i32, i32* %PrevLastQP239, align 4
  %246 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP240 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %246, i32 0, i32 36
  %247 = load i32, i32* %CurrLastQP240, align 4
  %add241 = add nsw i32 %245, %247
  %div242 = sdiv i32 %add241, 2
  %add243 = add nsw i32 %div242, 1
  %248 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc244 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %248, i32 0, i32 33
  store i32 %add243, i32* %m_Qc244, align 4
  br label %if.end.245

if.end.245:                                       ; preds = %if.else.238, %if.then.234
  %249 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MIN_QUANT246 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %249, i32 0, i32 10
  %250 = load i32, i32* %RC_MIN_QUANT246, align 4
  %251 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MAX_QUANT247 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %251, i32 0, i32 9
  %252 = load i32, i32* %RC_MAX_QUANT247, align 4
  %253 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc248 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %253, i32 0, i32 33
  %254 = load i32, i32* %m_Qc248, align 4
  %call249 = call i32 @iClip3(i32 %250, i32 %252, i32 %254)
  %255 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc250 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %255, i32 0, i32 33
  store i32 %call249, i32* %m_Qc250, align 4
  br label %if.end.350

if.else.251:                                      ; preds = %if.then.217
  %256 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBFrames252 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %256, i32 0, i32 37
  %257 = load i32, i32* %NumberofBFrames252, align 4
  %add253 = add nsw i32 %257, 1
  %258 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe254 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %258, i32 0, i32 40
  %259 = load i32, i32* %successive_Bframe254, align 4
  %rem255 = srem i32 %add253, %259
  store i32 %rem255, i32* %BFrameNumber, align 4
  %260 = load i32, i32* %BFrameNumber, align 4
  %cmp256 = icmp eq i32 %260, 0
  br i1 %cmp256, label %if.then.258, label %if.end.260

if.then.258:                                      ; preds = %if.else.251
  %261 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe259 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %261, i32 0, i32 40
  %262 = load i32, i32* %successive_Bframe259, align 4
  store i32 %262, i32* %BFrameNumber, align 4
  br label %if.end.260

if.end.260:                                       ; preds = %if.then.258, %if.else.251
  %263 = load i32, i32* %BFrameNumber, align 4
  %cmp261 = icmp eq i32 %263, 1
  br i1 %cmp261, label %if.then.263, label %if.end.272

if.then.263:                                      ; preds = %if.end.260
  %264 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace264 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %264, i32 0, i32 121
  %265 = load i32, i32* %PicInterlace264, align 4
  %cmp265 = icmp eq i32 %265, 2
  br i1 %cmp265, label %if.then.270, label %lor.lhs.false.267

lor.lhs.false.267:                                ; preds = %if.then.263
  %266 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace268 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %266, i32 0, i32 122
  %267 = load i32, i32* %MbInterlace268, align 4
  %tobool269 = icmp ne i32 %267, 0
  br i1 %tobool269, label %if.then.270, label %if.end.271

if.then.270:                                      ; preds = %lor.lhs.false.267, %if.then.263
  %268 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @updateQPInterlace(%struct.rc_quadratic* %268)
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.270, %lor.lhs.false.267
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271, %if.end.260
  %269 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP273 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %269, i32 0, i32 36
  %270 = load i32, i32* %CurrLastQP273, align 4
  %271 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP274 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %271, i32 0, i32 35
  %272 = load i32, i32* %PrevLastQP274, align 4
  %sub275 = sub nsw i32 %270, %272
  %273 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe276 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %273, i32 0, i32 40
  %274 = load i32, i32* %successive_Bframe276, align 4
  %mul277 = mul nsw i32 -2, %274
  %sub278 = sub nsw i32 %mul277, 3
  %cmp279 = icmp sle i32 %sub275, %sub278
  br i1 %cmp279, label %if.then.281, label %if.else.282

if.then.281:                                      ; preds = %if.end.272
  store i32 -3, i32* %StepSize, align 4
  br label %if.end.326

if.else.282:                                      ; preds = %if.end.272
  %275 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP283 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %275, i32 0, i32 36
  %276 = load i32, i32* %CurrLastQP283, align 4
  %277 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP284 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %277, i32 0, i32 35
  %278 = load i32, i32* %PrevLastQP284, align 4
  %sub285 = sub nsw i32 %276, %278
  %279 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe286 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %279, i32 0, i32 40
  %280 = load i32, i32* %successive_Bframe286, align 4
  %mul287 = mul nsw i32 -2, %280
  %sub288 = sub nsw i32 %mul287, 2
  %cmp289 = icmp eq i32 %sub285, %sub288
  br i1 %cmp289, label %if.then.291, label %if.else.292

if.then.291:                                      ; preds = %if.else.282
  store i32 -2, i32* %StepSize, align 4
  br label %if.end.325

if.else.292:                                      ; preds = %if.else.282
  %281 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP293 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %281, i32 0, i32 36
  %282 = load i32, i32* %CurrLastQP293, align 4
  %283 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP294 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %283, i32 0, i32 35
  %284 = load i32, i32* %PrevLastQP294, align 4
  %sub295 = sub nsw i32 %282, %284
  %285 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe296 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %285, i32 0, i32 40
  %286 = load i32, i32* %successive_Bframe296, align 4
  %mul297 = mul nsw i32 -2, %286
  %sub298 = sub nsw i32 %mul297, 1
  %cmp299 = icmp eq i32 %sub295, %sub298
  br i1 %cmp299, label %if.then.301, label %if.else.302

if.then.301:                                      ; preds = %if.else.292
  store i32 -1, i32* %StepSize, align 4
  br label %if.end.324

if.else.302:                                      ; preds = %if.else.292
  %287 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP303 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %287, i32 0, i32 36
  %288 = load i32, i32* %CurrLastQP303, align 4
  %289 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP304 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %289, i32 0, i32 35
  %290 = load i32, i32* %PrevLastQP304, align 4
  %sub305 = sub nsw i32 %288, %290
  %291 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe306 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %291, i32 0, i32 40
  %292 = load i32, i32* %successive_Bframe306, align 4
  %mul307 = mul nsw i32 -2, %292
  %cmp308 = icmp eq i32 %sub305, %mul307
  br i1 %cmp308, label %if.then.310, label %if.else.311

if.then.310:                                      ; preds = %if.else.302
  store i32 0, i32* %StepSize, align 4
  br label %if.end.323

if.else.311:                                      ; preds = %if.else.302
  %293 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP312 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %293, i32 0, i32 36
  %294 = load i32, i32* %CurrLastQP312, align 4
  %295 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP313 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %295, i32 0, i32 35
  %296 = load i32, i32* %PrevLastQP313, align 4
  %sub314 = sub nsw i32 %294, %296
  %297 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe315 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %297, i32 0, i32 40
  %298 = load i32, i32* %successive_Bframe315, align 4
  %mul316 = mul nsw i32 -2, %298
  %add317 = add nsw i32 %mul316, 1
  %cmp318 = icmp eq i32 %sub314, %add317
  br i1 %cmp318, label %if.then.320, label %if.else.321

if.then.320:                                      ; preds = %if.else.311
  store i32 1, i32* %StepSize, align 4
  br label %if.end.322

if.else.321:                                      ; preds = %if.else.311
  store i32 2, i32* %StepSize, align 4
  br label %if.end.322

if.end.322:                                       ; preds = %if.else.321, %if.then.320
  br label %if.end.323

if.end.323:                                       ; preds = %if.end.322, %if.then.310
  br label %if.end.324

if.end.324:                                       ; preds = %if.end.323, %if.then.301
  br label %if.end.325

if.end.325:                                       ; preds = %if.end.324, %if.then.291
  br label %if.end.326

if.end.326:                                       ; preds = %if.end.325, %if.then.281
  %299 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP327 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %299, i32 0, i32 35
  %300 = load i32, i32* %PrevLastQP327, align 4
  %301 = load i32, i32* %StepSize, align 4
  %add328 = add nsw i32 %300, %301
  %302 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc329 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %302, i32 0, i32 33
  store i32 %add328, i32* %m_Qc329, align 4
  %303 = load i32, i32* %BFrameNumber, align 4
  %sub330 = sub nsw i32 %303, 1
  %mul331 = mul nsw i32 -2, %sub330
  %304 = load i32, i32* %BFrameNumber, align 4
  %sub332 = sub nsw i32 %304, 1
  %mul333 = mul nsw i32 2, %sub332
  %305 = load i32, i32* %BFrameNumber, align 4
  %sub334 = sub nsw i32 %305, 1
  %306 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP335 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %306, i32 0, i32 36
  %307 = load i32, i32* %CurrLastQP335, align 4
  %308 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP336 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %308, i32 0, i32 35
  %309 = load i32, i32* %PrevLastQP336, align 4
  %sub337 = sub nsw i32 %307, %309
  %mul338 = mul nsw i32 %sub334, %sub337
  %310 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe339 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %310, i32 0, i32 40
  %311 = load i32, i32* %successive_Bframe339, align 4
  %sub340 = sub nsw i32 %311, 1
  %div341 = sdiv i32 %mul338, %sub340
  %call342 = call i32 @iClip3(i32 %mul331, i32 %mul333, i32 %div341)
  %312 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc343 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %312, i32 0, i32 33
  %313 = load i32, i32* %m_Qc343, align 4
  %add344 = add nsw i32 %313, %call342
  store i32 %add344, i32* %m_Qc343, align 4
  %314 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MIN_QUANT345 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %314, i32 0, i32 10
  %315 = load i32, i32* %RC_MIN_QUANT345, align 4
  %316 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MAX_QUANT346 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %316, i32 0, i32 9
  %317 = load i32, i32* %RC_MAX_QUANT346, align 4
  %318 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc347 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %318, i32 0, i32 33
  %319 = load i32, i32* %m_Qc347, align 4
  %call348 = call i32 @iClip3(i32 %315, i32 %317, i32 %319)
  %320 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc349 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %320, i32 0, i32 33
  store i32 %call348, i32* %m_Qc349, align 4
  br label %if.end.350

if.end.350:                                       ; preds = %if.end.326, %if.end.245
  %321 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc351 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %321, i32 0, i32 33
  %322 = load i32, i32* %m_Qc351, align 4
  store i32 %322, i32* %retval
  br label %return

if.else.352:                                      ; preds = %lor.lhs.false.213
  %323 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc353 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %323, i32 0, i32 33
  %324 = load i32, i32* %m_Qc353, align 4
  store i32 %324, i32* %retval
  br label %return

if.else.354:                                      ; preds = %if.else.207
  %325 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type355 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %325, i32 0, i32 5
  %326 = load i32, i32* %type355, align 4
  %cmp356 = icmp eq i32 %326, 0
  br i1 %cmp356, label %if.then.358, label %if.end.433

if.then.358:                                      ; preds = %if.else.354
  %327 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofGOP = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %327, i32 0, i32 10
  %328 = load i32, i32* %NumberofGOP, align 4
  %cmp359 = icmp eq i32 %328, 1
  br i1 %cmp359, label %land.lhs.true.361, label %if.else.380

land.lhs.true.361:                                ; preds = %if.then.358
  %329 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofPPicture362 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %329, i32 0, i32 12
  %330 = load i32, i32* %NumberofPPicture362, align 4
  %cmp363 = icmp eq i32 %330, 0
  br i1 %cmp363, label %if.then.365, label %if.else.380

if.then.365:                                      ; preds = %land.lhs.true.361
  %331 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl366 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %331, i32 0, i32 1
  %332 = load i32, i32* %FieldControl366, align 4
  %cmp367 = icmp eq i32 %332, 0
  br i1 %cmp367, label %if.then.377, label %lor.lhs.false.369

lor.lhs.false.369:                                ; preds = %if.then.365
  %333 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl370 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %333, i32 0, i32 1
  %334 = load i32, i32* %FieldControl370, align 4
  %cmp371 = icmp eq i32 %334, 1
  br i1 %cmp371, label %land.lhs.true.373, label %if.end.379

land.lhs.true.373:                                ; preds = %lor.lhs.false.369
  %335 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NoGranularFieldRC374 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %335, i32 0, i32 3
  %336 = load i32, i32* %NoGranularFieldRC374, align 4
  %cmp375 = icmp eq i32 %336, 0
  br i1 %cmp375, label %if.then.377, label %if.end.379

if.then.377:                                      ; preds = %land.lhs.true.373, %if.then.365
  %337 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %338 = load i32, i32* %topfield.addr, align 4
  %call378 = call i32 @updateFirstP(%struct.rc_quadratic* %337, i32 %338)
  store i32 %call378, i32* %retval
  br label %return

if.end.379:                                       ; preds = %land.lhs.true.373, %lor.lhs.false.369
  br label %if.end.432

if.else.380:                                      ; preds = %land.lhs.true.361, %if.then.358
  %339 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_X1381 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %339, i32 0, i32 27
  %340 = load double, double* %Pm_X1381, align 8
  %341 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X1382 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %341, i32 0, i32 25
  store double %340, double* %m_X1382, align 8
  %342 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_X2383 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %342, i32 0, i32 28
  %343 = load double, double* %Pm_X2383, align 8
  %344 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X2384 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %344, i32 0, i32 26
  store double %343, double* %m_X2384, align 8
  %345 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PMADPictureC1385 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %345, i32 0, i32 16
  %346 = load double, double* %PMADPictureC1385, align 8
  %347 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC1386 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %347, i32 0, i32 14
  store double %346, double* %MADPictureC1386, align 8
  %348 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PMADPictureC2387 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %348, i32 0, i32 17
  %349 = load double, double* %PMADPictureC2387, align 8
  %350 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC2388 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %350, i32 0, i32 15
  store double %349, double* %MADPictureC2388, align 8
  %351 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_Qp389 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %351, i32 0, i32 29
  %352 = load i32, i32* %Pm_Qp389, align 4
  store i32 %352, i32* %m_Qp, align 4
  %353 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl390 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %353, i32 0, i32 1
  %354 = load i32, i32* %FieldControl390, align 4
  %cmp391 = icmp eq i32 %354, 0
  br i1 %cmp391, label %if.then.393, label %if.else.394

if.then.393:                                      ; preds = %if.else.380
  %355 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %355, i32 0, i32 44
  %356 = load i32, i32* %TotalNumberofBasicUnit, align 4
  store i32 %356, i32* %SumofBasicUnit, align 4
  br label %if.end.396

if.else.394:                                      ; preds = %if.else.380
  %357 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit395 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %357, i32 0, i32 44
  %358 = load i32, i32* %TotalNumberofBasicUnit395, align 4
  %shr = ashr i32 %358, 1
  store i32 %shr, i32* %SumofBasicUnit, align 4
  br label %if.end.396

if.end.396:                                       ; preds = %if.else.394, %if.then.393
  %359 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %359, i32 0, i32 39
  %360 = load i32, i32* %NumberofBasicUnit, align 4
  %361 = load i32, i32* %SumofBasicUnit, align 4
  %cmp397 = icmp eq i32 %360, %361
  br i1 %cmp397, label %if.then.399, label %if.else.401

if.then.399:                                      ; preds = %if.end.396
  %362 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %363 = load i32, i32* %topfield.addr, align 4
  %call400 = call i32 @updateFirstBU(%struct.rc_quadratic* %362, i32 %363)
  store i32 %call400, i32* %retval
  br label %return

if.else.401:                                      ; preds = %if.end.396
  %364 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofBasicUnitHeaderBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %364, i32 0, i32 6
  %365 = load i32, i32* %NumberofBasicUnitHeaderBits, align 4
  %366 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofBasicUnitTextureBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %366, i32 0, i32 7
  %367 = load i32, i32* %NumberofBasicUnitTextureBits, align 4
  %add402 = add nsw i32 %365, %367
  %368 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target403 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %368, i32 0, i32 68
  %369 = load i32, i32* %Target403, align 4
  %sub404 = sub nsw i32 %369, %add402
  store i32 %sub404, i32* %Target403, align 4
  %370 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofBasicUnitHeaderBits405 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %370, i32 0, i32 6
  store i32 0, i32* %NumberofBasicUnitHeaderBits405, align 4
  %371 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofBasicUnitTextureBits406 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %371, i32 0, i32 7
  store i32 0, i32* %NumberofBasicUnitTextureBits406, align 4
  %372 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target407 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %372, i32 0, i32 68
  %373 = load i32, i32* %Target407, align 4
  %cmp408 = icmp slt i32 %373, 0
  br i1 %cmp408, label %if.then.410, label %if.else.412

if.then.410:                                      ; preds = %if.else.401
  %374 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %375 = load i32, i32* %topfield.addr, align 4
  %376 = load i32, i32* %m_Qp, align 4
  %call411 = call i32 @updateNegativeTarget(%struct.rc_quadratic* %374, i32 %375, i32 %376)
  store i32 %call411, i32* %retval
  br label %return

if.else.412:                                      ; preds = %if.else.401
  %377 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @predictCurrPicMAD(%struct.rc_quadratic* %377)
  %378 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %379 = load i32, i32* %topfield.addr, align 4
  %380 = load i32, i32* %m_Qp, align 4
  call void @updateModelQPBU(%struct.rc_quadratic* %378, i32 %379, i32 %380)
  %381 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc413 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %381, i32 0, i32 33
  %382 = load i32, i32* %m_Qc413, align 4
  %383 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalFrameQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %383, i32 0, i32 38
  %384 = load i32, i32* %TotalFrameQP, align 4
  %add414 = add nsw i32 %384, %382
  store i32 %add414, i32* %TotalFrameQP, align 4
  %385 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc415 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %385, i32 0, i32 33
  %386 = load i32, i32* %m_Qc415, align 4
  %387 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_Qp416 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %387, i32 0, i32 29
  store i32 %386, i32* %Pm_Qp416, align 4
  %388 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit417 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %388, i32 0, i32 39
  %389 = load i32, i32* %NumberofBasicUnit417, align 4
  %dec = add nsw i32 %389, -1
  store i32 %dec, i32* %NumberofBasicUnit417, align 4
  %390 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit418 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %390, i32 0, i32 39
  %391 = load i32, i32* %NumberofBasicUnit418, align 4
  %cmp419 = icmp eq i32 %391, 0
  br i1 %cmp419, label %land.lhs.true.421, label %if.end.430

land.lhs.true.421:                                ; preds = %if.else.412
  %392 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type422 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %392, i32 0, i32 5
  %393 = load i32, i32* %type422, align 4
  %cmp423 = icmp eq i32 %393, 0
  br i1 %cmp423, label %land.lhs.true.425, label %if.end.430

land.lhs.true.425:                                ; preds = %land.lhs.true.421
  %394 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number426 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %394, i32 0, i32 0
  %395 = load i32, i32* %number426, align 4
  %396 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub427 = sub nsw i32 %395, %396
  %tobool428 = icmp ne i32 %sub427, 0
  br i1 %tobool428, label %if.then.429, label %if.end.430

if.then.429:                                      ; preds = %land.lhs.true.425
  %397 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %398 = load i32, i32* %topfield.addr, align 4
  call void @updateLastBU(%struct.rc_quadratic* %397, i32 %398)
  br label %if.end.430

if.end.430:                                       ; preds = %if.then.429, %land.lhs.true.425, %land.lhs.true.421, %if.else.412
  %399 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc431 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %399, i32 0, i32 33
  %400 = load i32, i32* %m_Qc431, align 4
  store i32 %400, i32* %retval
  br label %return

if.end.432:                                       ; preds = %if.end.379
  br label %if.end.433

if.end.433:                                       ; preds = %if.end.432, %if.else.354
  br label %if.end.434

if.end.434:                                       ; preds = %if.end.433
  br label %if.end.435

if.end.435:                                       ; preds = %if.end.434
  br label %if.end.436

if.end.436:                                       ; preds = %if.end.435
  %401 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc437 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %401, i32 0, i32 33
  %402 = load i32, i32* %m_Qc437, align 4
  store i32 %402, i32* %retval
  br label %return

return:                                           ; preds = %if.end.436, %if.end.430, %if.then.410, %if.then.399, %if.then.377, %if.else.352, %if.end.350, %if.then.203, %if.end.193, %if.end.179, %if.end.131, %if.end.116, %if.then.4
  %403 = load i32, i32* %retval
  ret i32 %403
}

; Function Attrs: nounwind uwtable
define i32 @updateQPRC1(%struct.rc_quadratic* %prc, i32 %topfield) #0 {
entry:
  %retval = alloca i32, align 4
  %prc.addr = alloca %struct.rc_quadratic*, align 8
  %topfield.addr = alloca i32, align 4
  %m_Bits = alloca i32, align 4
  %SumofBasicUnit = alloca i32, align 4
  %DuantQp = alloca i32, align 4
  %m_Qp = alloca i32, align 4
  %m_Hp = alloca i32, align 4
  store %struct.rc_quadratic* %prc, %struct.rc_quadratic** %prc.addr, align 8
  store i32 %topfield, i32* %topfield.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 132
  %1 = load i32, i32* %BasicUnit, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 120
  %3 = load i32, i32* %FrameSizeInMbs, align 4
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else.67

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %topfield.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %5, i32 0, i32 1
  %6 = load i32, i32* %FieldControl, align 4
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %if.then.2, label %if.else.57

if.then.2:                                        ; preds = %lor.lhs.false, %if.then
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 0
  %8 = load i32, i32* %number, align 4
  %9 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub = sub nsw i32 %8, %9
  %tobool3 = icmp ne i32 %sub, 0
  br i1 %tobool3, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %if.then.2
  %10 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MyInitialQp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %10, i32 0, i32 11
  %11 = load i32, i32* %MyInitialQp, align 4
  %12 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %12, i32 0, i32 33
  store i32 %11, i32* %m_Qc, align 4
  %13 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc5 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %13, i32 0, i32 33
  %14 = load i32, i32* %m_Qc5, align 4
  store i32 %14, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.2
  %15 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofPPicture = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %15, i32 0, i32 12
  %16 = load i32, i32* %NumberofPPicture, align 4
  %cmp6 = icmp eq i32 %16, 0
  br i1 %cmp6, label %land.lhs.true, label %if.else.17

land.lhs.true:                                    ; preds = %if.else
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 0
  %18 = load i32, i32* %number7, align 4
  %19 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub8 = sub nsw i32 %18, %19
  %tobool9 = icmp ne i32 %sub8, 0
  br i1 %tobool9, label %if.then.10, label %if.else.17

if.then.10:                                       ; preds = %land.lhs.true
  %20 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MyInitialQp11 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %20, i32 0, i32 11
  %21 = load i32, i32* %MyInitialQp11, align 4
  %22 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc12 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %22, i32 0, i32 33
  store i32 %21, i32* %m_Qc12, align 4
  %23 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl13 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %23, i32 0, i32 1
  %24 = load i32, i32* %FieldControl13, align 4
  %cmp14 = icmp eq i32 %24, 0
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then.10
  %25 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @updateQPNonPicAFF(%struct.rc_quadratic* %25)
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.then.10
  %26 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc16 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %26, i32 0, i32 33
  %27 = load i32, i32* %m_Qc16, align 4
  store i32 %27, i32* %retval
  br label %return

if.else.17:                                       ; preds = %land.lhs.true, %if.else
  %28 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %28, i32 0, i32 121
  %29 = load i32, i32* %PicInterlace, align 4
  %cmp18 = icmp eq i32 %29, 2
  br i1 %cmp18, label %land.lhs.true.21, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %if.else.17
  %30 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %30, i32 0, i32 122
  %31 = load i32, i32* %MbInterlace, align 4
  %tobool20 = icmp ne i32 %31, 0
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.25

land.lhs.true.21:                                 ; preds = %lor.lhs.false.19, %if.else.17
  %32 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl22 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %32, i32 0, i32 1
  %33 = load i32, i32* %FieldControl22, align 4
  %cmp23 = icmp eq i32 %33, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %land.lhs.true.21
  %34 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @updateQPInterlaceBU(%struct.rc_quadratic* %34)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %land.lhs.true.21, %lor.lhs.false.19
  %35 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_X1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %35, i32 0, i32 27
  %36 = load double, double* %Pm_X1, align 8
  %37 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %37, i32 0, i32 25
  store double %36, double* %m_X1, align 8
  %38 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_X2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %38, i32 0, i32 28
  %39 = load double, double* %Pm_X2, align 8
  %40 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %40, i32 0, i32 26
  store double %39, double* %m_X2, align 8
  %41 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PMADPictureC1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %41, i32 0, i32 16
  %42 = load double, double* %PMADPictureC1, align 8
  %43 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %43, i32 0, i32 14
  store double %42, double* %MADPictureC1, align 8
  %44 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PMADPictureC2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %44, i32 0, i32 17
  %45 = load double, double* %PMADPictureC2, align 8
  %46 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %46, i32 0, i32 15
  store double %45, double* %MADPictureC2, align 8
  %47 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PPictureMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %47, i32 0, i32 18
  %arrayidx = getelementptr inbounds [21 x double], [21 x double]* %PPictureMAD, i32 0, i64 0
  %48 = load double, double* %arrayidx, align 8
  %49 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PreviousPictureMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %49, i32 0, i32 13
  store double %48, double* %PreviousPictureMAD, align 8
  %50 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PDuantQp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %50, i32 0, i32 80
  %51 = load i32, i32* %PDuantQp, align 4
  store i32 %51, i32* %DuantQp, align 4
  %52 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_Qp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %52, i32 0, i32 29
  %53 = load i32, i32* %Pm_Qp, align 4
  store i32 %53, i32* %m_Qp, align 4
  %54 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PPreHeader = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %54, i32 0, i32 34
  %55 = load i32, i32* %PPreHeader, align 4
  store i32 %55, i32* %m_Hp, align 4
  %56 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC126 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %56, i32 0, i32 14
  %57 = load double, double* %MADPictureC126, align 8
  %58 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PreviousPictureMAD27 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %58, i32 0, i32 13
  %59 = load double, double* %PreviousPictureMAD27, align 8
  %mul = fmul double %57, %59
  %60 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC228 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %60, i32 0, i32 15
  %61 = load double, double* %MADPictureC228, align 8
  %add = fadd double %mul, %61
  %62 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %62, i32 0, i32 46
  store double %add, double* %CurrentFrameMAD, align 8
  %63 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %63, i32 0, i32 68
  %64 = load i32, i32* %Target, align 4
  %cmp29 = icmp slt i32 %64, 0
  br i1 %cmp29, label %if.then.30, label %if.else.35

if.then.30:                                       ; preds = %if.end.25
  %65 = load i32, i32* %m_Qp, align 4
  %66 = load i32, i32* %DuantQp, align 4
  %add31 = add nsw i32 %65, %66
  %67 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc32 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %67, i32 0, i32 33
  store i32 %add31, i32* %m_Qc32, align 4
  %68 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MIN_QUANT = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %68, i32 0, i32 10
  %69 = load i32, i32* %RC_MIN_QUANT, align 4
  %70 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MAX_QUANT = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %70, i32 0, i32 9
  %71 = load i32, i32* %RC_MAX_QUANT, align 4
  %72 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc33 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %72, i32 0, i32 33
  %73 = load i32, i32* %m_Qc33, align 4
  %call = call i32 @iClip3(i32 %69, i32 %71, i32 %73)
  %74 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc34 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %74, i32 0, i32 33
  store i32 %call, i32* %m_Qc34, align 4
  br label %if.end.50

if.else.35:                                       ; preds = %if.end.25
  %75 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target36 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %75, i32 0, i32 68
  %76 = load i32, i32* %Target36, align 4
  %77 = load i32, i32* %m_Hp, align 4
  %sub37 = sub nsw i32 %76, %77
  store i32 %sub37, i32* %m_Bits, align 4
  %78 = load i32, i32* %m_Bits, align 4
  %79 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %bit_rate = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %79, i32 0, i32 0
  %80 = load float, float* %bit_rate, align 4
  %81 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %frame_rate = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %81, i32 0, i32 1
  %82 = load float, float* %frame_rate, align 4
  %mul38 = fmul float 4.000000e+00, %82
  %div = fdiv float %80, %mul38
  %conv = fptosi float %div to i32
  %call39 = call i32 @imax(i32 %78, i32 %conv)
  store i32 %call39, i32* %m_Bits, align 4
  %83 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %84 = load i32, i32* %m_Bits, align 4
  call void @updateModelQPFrame(%struct.rc_quadratic* %83, i32 %84)
  %85 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MIN_QUANT40 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %85, i32 0, i32 10
  %86 = load i32, i32* %RC_MIN_QUANT40, align 4
  %87 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MAX_QUANT41 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %87, i32 0, i32 9
  %88 = load i32, i32* %RC_MAX_QUANT41, align 4
  %89 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc42 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %89, i32 0, i32 33
  %90 = load i32, i32* %m_Qc42, align 4
  %call43 = call i32 @iClip3(i32 %86, i32 %88, i32 %90)
  %91 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc44 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %91, i32 0, i32 33
  store i32 %call43, i32* %m_Qc44, align 4
  %92 = load i32, i32* %m_Qp, align 4
  %93 = load i32, i32* %DuantQp, align 4
  %sub45 = sub nsw i32 %92, %93
  %94 = load i32, i32* %m_Qp, align 4
  %95 = load i32, i32* %DuantQp, align 4
  %add46 = add nsw i32 %94, %95
  %96 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc47 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %96, i32 0, i32 33
  %97 = load i32, i32* %m_Qc47, align 4
  %call48 = call i32 @iClip3(i32 %sub45, i32 %add46, i32 %97)
  %98 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc49 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %98, i32 0, i32 33
  store i32 %call48, i32* %m_Qc49, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.35, %if.then.30
  %99 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl51 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %99, i32 0, i32 1
  %100 = load i32, i32* %FieldControl51, align 4
  %cmp52 = icmp eq i32 %100, 0
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.50
  %101 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @updateQPNonPicAFF(%struct.rc_quadratic* %101)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.end.50
  %102 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc56 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %102, i32 0, i32 33
  %103 = load i32, i32* %m_Qc56, align 4
  store i32 %103, i32* %retval
  br label %return

if.else.57:                                       ; preds = %lor.lhs.false
  %104 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NoGranularFieldRC = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %104, i32 0, i32 3
  %105 = load i32, i32* %NoGranularFieldRC, align 4
  %cmp58 = icmp eq i32 %105, 0
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.65

land.lhs.true.60:                                 ; preds = %if.else.57
  %106 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number61 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %106, i32 0, i32 0
  %107 = load i32, i32* %number61, align 4
  %108 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub62 = sub nsw i32 %107, %108
  %tobool63 = icmp ne i32 %sub62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %land.lhs.true.60
  %109 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @updateBottomField(%struct.rc_quadratic* %109)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %land.lhs.true.60, %if.else.57
  %110 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc66 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %110, i32 0, i32 33
  %111 = load i32, i32* %m_Qc66, align 4
  store i32 %111, i32* %retval
  br label %return

if.else.67:                                       ; preds = %entry
  %112 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number68 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %112, i32 0, i32 0
  %113 = load i32, i32* %number68, align 4
  %114 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub69 = sub nsw i32 %113, %114
  %tobool70 = icmp ne i32 %sub69, 0
  br i1 %tobool70, label %if.else.75, label %if.then.71

if.then.71:                                       ; preds = %if.else.67
  %115 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MyInitialQp72 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %115, i32 0, i32 11
  %116 = load i32, i32* %MyInitialQp72, align 4
  %117 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc73 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %117, i32 0, i32 33
  store i32 %116, i32* %m_Qc73, align 4
  %118 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc74 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %118, i32 0, i32 33
  %119 = load i32, i32* %m_Qc74, align 4
  store i32 %119, i32* %retval
  br label %return

if.else.75:                                       ; preds = %if.else.67
  %120 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofGOP = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %120, i32 0, i32 10
  %121 = load i32, i32* %NumberofGOP, align 4
  %cmp76 = icmp eq i32 %121, 1
  br i1 %cmp76, label %land.lhs.true.78, label %if.else.97

land.lhs.true.78:                                 ; preds = %if.else.75
  %122 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofPPicture79 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %122, i32 0, i32 12
  %123 = load i32, i32* %NumberofPPicture79, align 4
  %cmp80 = icmp eq i32 %123, 0
  br i1 %cmp80, label %if.then.82, label %if.else.97

if.then.82:                                       ; preds = %land.lhs.true.78
  %124 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl83 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %124, i32 0, i32 1
  %125 = load i32, i32* %FieldControl83, align 4
  %cmp84 = icmp eq i32 %125, 0
  br i1 %cmp84, label %if.then.94, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %if.then.82
  %126 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl87 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %126, i32 0, i32 1
  %127 = load i32, i32* %FieldControl87, align 4
  %cmp88 = icmp eq i32 %127, 1
  br i1 %cmp88, label %land.lhs.true.90, label %if.end.96

land.lhs.true.90:                                 ; preds = %lor.lhs.false.86
  %128 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NoGranularFieldRC91 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %128, i32 0, i32 3
  %129 = load i32, i32* %NoGranularFieldRC91, align 4
  %cmp92 = icmp eq i32 %129, 0
  br i1 %cmp92, label %if.then.94, label %if.end.96

if.then.94:                                       ; preds = %land.lhs.true.90, %if.then.82
  %130 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %131 = load i32, i32* %topfield.addr, align 4
  %call95 = call i32 @updateFirstP(%struct.rc_quadratic* %130, i32 %131)
  store i32 %call95, i32* %retval
  br label %return

if.end.96:                                        ; preds = %land.lhs.true.90, %lor.lhs.false.86
  br label %if.end.145

if.else.97:                                       ; preds = %land.lhs.true.78, %if.else.75
  %132 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_X198 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %132, i32 0, i32 27
  %133 = load double, double* %Pm_X198, align 8
  %134 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X199 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %134, i32 0, i32 25
  store double %133, double* %m_X199, align 8
  %135 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_X2100 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %135, i32 0, i32 28
  %136 = load double, double* %Pm_X2100, align 8
  %137 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X2101 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %137, i32 0, i32 26
  store double %136, double* %m_X2101, align 8
  %138 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PMADPictureC1102 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %138, i32 0, i32 16
  %139 = load double, double* %PMADPictureC1102, align 8
  %140 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC1103 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %140, i32 0, i32 14
  store double %139, double* %MADPictureC1103, align 8
  %141 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PMADPictureC2104 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %141, i32 0, i32 17
  %142 = load double, double* %PMADPictureC2104, align 8
  %143 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC2105 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %143, i32 0, i32 15
  store double %142, double* %MADPictureC2105, align 8
  %144 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_Qp106 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %144, i32 0, i32 29
  %145 = load i32, i32* %Pm_Qp106, align 4
  store i32 %145, i32* %m_Qp, align 4
  %146 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl107 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %146, i32 0, i32 1
  %147 = load i32, i32* %FieldControl107, align 4
  %cmp108 = icmp eq i32 %147, 0
  br i1 %cmp108, label %if.then.110, label %if.else.111

if.then.110:                                      ; preds = %if.else.97
  %148 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %148, i32 0, i32 44
  %149 = load i32, i32* %TotalNumberofBasicUnit, align 4
  store i32 %149, i32* %SumofBasicUnit, align 4
  br label %if.end.113

if.else.111:                                      ; preds = %if.else.97
  %150 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit112 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %150, i32 0, i32 44
  %151 = load i32, i32* %TotalNumberofBasicUnit112, align 4
  %shr = ashr i32 %151, 1
  store i32 %shr, i32* %SumofBasicUnit, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.111, %if.then.110
  %152 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %152, i32 0, i32 39
  %153 = load i32, i32* %NumberofBasicUnit, align 4
  %154 = load i32, i32* %SumofBasicUnit, align 4
  %cmp114 = icmp eq i32 %153, %154
  br i1 %cmp114, label %if.then.116, label %if.else.118

if.then.116:                                      ; preds = %if.end.113
  %155 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %156 = load i32, i32* %topfield.addr, align 4
  %call117 = call i32 @updateFirstBU(%struct.rc_quadratic* %155, i32 %156)
  store i32 %call117, i32* %retval
  br label %return

if.else.118:                                      ; preds = %if.end.113
  %157 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofBasicUnitHeaderBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %157, i32 0, i32 6
  %158 = load i32, i32* %NumberofBasicUnitHeaderBits, align 4
  %159 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofBasicUnitTextureBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %159, i32 0, i32 7
  %160 = load i32, i32* %NumberofBasicUnitTextureBits, align 4
  %add119 = add nsw i32 %158, %160
  %161 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target120 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %161, i32 0, i32 68
  %162 = load i32, i32* %Target120, align 4
  %sub121 = sub nsw i32 %162, %add119
  store i32 %sub121, i32* %Target120, align 4
  %163 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofBasicUnitHeaderBits122 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %163, i32 0, i32 6
  store i32 0, i32* %NumberofBasicUnitHeaderBits122, align 4
  %164 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofBasicUnitTextureBits123 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %164, i32 0, i32 7
  store i32 0, i32* %NumberofBasicUnitTextureBits123, align 4
  %165 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target124 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %165, i32 0, i32 68
  %166 = load i32, i32* %Target124, align 4
  %cmp125 = icmp slt i32 %166, 0
  br i1 %cmp125, label %if.then.127, label %if.else.129

if.then.127:                                      ; preds = %if.else.118
  %167 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %168 = load i32, i32* %topfield.addr, align 4
  %169 = load i32, i32* %m_Qp, align 4
  %call128 = call i32 @updateNegativeTarget(%struct.rc_quadratic* %167, i32 %168, i32 %169)
  store i32 %call128, i32* %retval
  br label %return

if.else.129:                                      ; preds = %if.else.118
  %170 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @predictCurrPicMAD(%struct.rc_quadratic* %170)
  %171 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %172 = load i32, i32* %topfield.addr, align 4
  %173 = load i32, i32* %m_Qp, align 4
  call void @updateModelQPBU(%struct.rc_quadratic* %171, i32 %172, i32 %173)
  %174 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc130 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %174, i32 0, i32 33
  %175 = load i32, i32* %m_Qc130, align 4
  %176 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalFrameQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %176, i32 0, i32 38
  %177 = load i32, i32* %TotalFrameQP, align 4
  %add131 = add nsw i32 %177, %175
  store i32 %add131, i32* %TotalFrameQP, align 4
  %178 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc132 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %178, i32 0, i32 33
  %179 = load i32, i32* %m_Qc132, align 4
  %180 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_Qp133 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %180, i32 0, i32 29
  store i32 %179, i32* %Pm_Qp133, align 4
  %181 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit134 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %181, i32 0, i32 39
  %182 = load i32, i32* %NumberofBasicUnit134, align 4
  %dec = add nsw i32 %182, -1
  store i32 %dec, i32* %NumberofBasicUnit134, align 4
  %183 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit135 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %183, i32 0, i32 39
  %184 = load i32, i32* %NumberofBasicUnit135, align 4
  %cmp136 = icmp eq i32 %184, 0
  br i1 %cmp136, label %land.lhs.true.138, label %if.end.143

land.lhs.true.138:                                ; preds = %if.else.129
  %185 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number139 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %185, i32 0, i32 0
  %186 = load i32, i32* %number139, align 4
  %187 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub140 = sub nsw i32 %186, %187
  %tobool141 = icmp ne i32 %sub140, 0
  br i1 %tobool141, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %land.lhs.true.138
  %188 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %189 = load i32, i32* %topfield.addr, align 4
  call void @updateLastBU(%struct.rc_quadratic* %188, i32 %189)
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %land.lhs.true.138, %if.else.129
  %190 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc144 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %190, i32 0, i32 33
  %191 = load i32, i32* %m_Qc144, align 4
  store i32 %191, i32* %retval
  br label %return

if.end.145:                                       ; preds = %if.end.96
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146
  %192 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc148 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %192, i32 0, i32 33
  %193 = load i32, i32* %m_Qc148, align 4
  store i32 %193, i32* %retval
  br label %return

return:                                           ; preds = %if.end.147, %if.end.143, %if.then.127, %if.then.116, %if.then.94, %if.then.71, %if.end.65, %if.end.55, %if.end, %if.then.4
  %194 = load i32, i32* %retval
  ret i32 %194
}

; Function Attrs: nounwind uwtable
define i32 @updateQPRC2(%struct.rc_quadratic* %prc, i32 %topfield) #0 {
entry:
  %retval = alloca i32, align 4
  %prc.addr = alloca %struct.rc_quadratic*, align 8
  %topfield.addr = alloca i32, align 4
  %m_Bits = alloca i32, align 4
  %SumofBasicUnit = alloca i32, align 4
  %DuantQp = alloca i32, align 4
  %m_Qp = alloca i32, align 4
  %m_Hp = alloca i32, align 4
  %prevQP = alloca i32, align 4
  %prevQP157 = alloca i32, align 4
  store %struct.rc_quadratic* %prc, %struct.rc_quadratic** %prc.addr, align 8
  store i32 %topfield, i32* %topfield.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 132
  %1 = load i32, i32* %BasicUnit, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 120
  %3 = load i32, i32* %FrameSizeInMbs, align 4
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else.123

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %topfield.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %5, i32 0, i32 1
  %6 = load i32, i32* %FieldControl, align 4
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %if.then.2, label %if.else.109

if.then.2:                                        ; preds = %lor.lhs.false, %if.then
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 0
  %8 = load i32, i32* %number, align 4
  %9 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub = sub nsw i32 %8, %9
  %tobool3 = icmp ne i32 %sub, 0
  br i1 %tobool3, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %if.then.2
  %10 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MyInitialQp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %10, i32 0, i32 11
  %11 = load i32, i32* %MyInitialQp, align 4
  %12 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %12, i32 0, i32 33
  store i32 %11, i32* %m_Qc, align 4
  %13 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc5 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %13, i32 0, i32 33
  %14 = load i32, i32* %m_Qc5, align 4
  store i32 %14, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.2
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 5
  %16 = load i32, i32* %type, align 4
  %cmp6 = icmp eq i32 %16, 2
  br i1 %cmp6, label %if.then.7, label %if.else.14

if.then.7:                                        ; preds = %if.else
  %17 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %17, i32 0, i32 121
  %18 = load i32, i32* %PicInterlace, align 4
  %cmp8 = icmp eq i32 %18, 2
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.then.7
  %19 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %19, i32 0, i32 122
  %20 = load i32, i32* %MbInterlace, align 4
  %tobool10 = icmp ne i32 %20, 0
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %lor.lhs.false.9, %if.then.7
  %21 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @updateQPInterlace(%struct.rc_quadratic* %21)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %lor.lhs.false.9
  %22 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %22, i32 0, i32 36
  %23 = load i32, i32* %CurrLastQP, align 4
  %24 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc12 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %24, i32 0, i32 33
  store i32 %23, i32* %m_Qc12, align 4
  %25 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc13 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %25, i32 0, i32 33
  %26 = load i32, i32* %m_Qc13, align 4
  store i32 %26, i32* %retval
  br label %return

if.else.14:                                       ; preds = %if.else
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type15 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 5
  %28 = load i32, i32* %type15, align 4
  %cmp16 = icmp eq i32 %28, 1
  br i1 %cmp16, label %if.then.17, label %if.else.46

if.then.17:                                       ; preds = %if.else.14
  %29 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %29, i32 0, i32 35
  %30 = load i32, i32* %PrevLastQP, align 4
  %31 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP18 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %31, i32 0, i32 36
  %32 = load i32, i32* %CurrLastQP18, align 4
  %call = call i32 @imax(i32 %30, i32 %32)
  store i32 %call, i32* %prevQP, align 4
  %33 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace19 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %33, i32 0, i32 121
  %34 = load i32, i32* %PicInterlace19, align 4
  %cmp20 = icmp eq i32 %34, 2
  br i1 %cmp20, label %if.then.24, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %if.then.17
  %35 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace22 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %35, i32 0, i32 122
  %36 = load i32, i32* %MbInterlace22, align 4
  %tobool23 = icmp ne i32 %36, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %lor.lhs.false.21, %if.then.17
  %37 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @updateQPInterlace(%struct.rc_quadratic* %37)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %lor.lhs.false.21
  %38 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %38, i32 0, i32 69
  %39 = load i32, i32* %HierarchicalCoding, align 4
  %tobool26 = icmp ne i32 %39, 0
  br i1 %tobool26, label %if.then.27, label %if.else.37

if.then.27:                                       ; preds = %if.end.25
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 76
  %41 = load i32, i32* %b_frame_to_code, align 4
  %cmp28 = icmp eq i32 %41, 0
  br i1 %cmp28, label %if.then.29, label %if.else.31

if.then.29:                                       ; preds = %if.then.27
  %42 = load i32, i32* %prevQP, align 4
  %43 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc30 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %43, i32 0, i32 33
  store i32 %42, i32* %m_Qc30, align 4
  br label %if.end.36

if.else.31:                                       ; preds = %if.then.27
  %44 = load i32, i32* %prevQP, align 4
  %45 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %GopLevels = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %45, i32 0, i32 173
  %46 = load i32, i32* %GopLevels, align 4
  %add = add nsw i32 %44, %46
  %47 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code32 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %47, i32 0, i32 76
  %48 = load i32, i32* %b_frame_to_code32, align 4
  %sub33 = sub nsw i32 %48, 1
  %idxprom = sext i32 %sub33 to i64
  %49 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %49, i64 %idxprom
  %hierarchy_layer = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx, i32 0, i32 4
  %50 = load i32, i32* %hierarchy_layer, align 4
  %sub34 = sub nsw i32 %add, %50
  %51 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc35 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %51, i32 0, i32 33
  store i32 %sub34, i32* %m_Qc35, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.31, %if.then.29
  br label %if.end.41

if.else.37:                                       ; preds = %if.end.25
  %52 = load i32, i32* %prevQP, align 4
  %add38 = add nsw i32 %52, 2
  %53 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %53, i32 0, i32 122
  %54 = load i32, i32* %nal_reference_idc, align 4
  %sub39 = sub nsw i32 %add38, %54
  %55 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc40 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %55, i32 0, i32 33
  store i32 %sub39, i32* %m_Qc40, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.37, %if.end.36
  %56 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MIN_QUANT = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %56, i32 0, i32 10
  %57 = load i32, i32* %RC_MIN_QUANT, align 4
  %58 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MAX_QUANT = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %58, i32 0, i32 9
  %59 = load i32, i32* %RC_MAX_QUANT, align 4
  %60 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc42 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %60, i32 0, i32 33
  %61 = load i32, i32* %m_Qc42, align 4
  %call43 = call i32 @iClip3(i32 %57, i32 %59, i32 %61)
  %62 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc44 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %62, i32 0, i32 33
  store i32 %call43, i32* %m_Qc44, align 4
  %63 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc45 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %63, i32 0, i32 33
  %64 = load i32, i32* %m_Qc45, align 4
  store i32 %64, i32* %retval
  br label %return

if.else.46:                                       ; preds = %if.else.14
  %65 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type47 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %65, i32 0, i32 5
  %66 = load i32, i32* %type47, align 4
  %cmp48 = icmp eq i32 %66, 0
  br i1 %cmp48, label %land.lhs.true, label %if.else.62

land.lhs.true:                                    ; preds = %if.else.46
  %67 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofPPicture = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %67, i32 0, i32 12
  %68 = load i32, i32* %NumberofPPicture, align 4
  %cmp49 = icmp eq i32 %68, 0
  br i1 %cmp49, label %land.lhs.true.50, label %if.else.62

land.lhs.true.50:                                 ; preds = %land.lhs.true
  %69 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number51 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %69, i32 0, i32 0
  %70 = load i32, i32* %number51, align 4
  %71 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub52 = sub nsw i32 %70, %71
  %tobool53 = icmp ne i32 %sub52, 0
  br i1 %tobool53, label %if.then.54, label %if.else.62

if.then.54:                                       ; preds = %land.lhs.true.50
  %72 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MyInitialQp55 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %72, i32 0, i32 11
  %73 = load i32, i32* %MyInitialQp55, align 4
  %74 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc56 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %74, i32 0, i32 33
  store i32 %73, i32* %m_Qc56, align 4
  %75 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl57 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %75, i32 0, i32 1
  %76 = load i32, i32* %FieldControl57, align 4
  %cmp58 = icmp eq i32 %76, 0
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.then.54
  %77 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @updateQPNonPicAFF(%struct.rc_quadratic* %77)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.then.54
  %78 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc61 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %78, i32 0, i32 33
  %79 = load i32, i32* %m_Qc61, align 4
  store i32 %79, i32* %retval
  br label %return

if.else.62:                                       ; preds = %land.lhs.true.50, %land.lhs.true, %if.else.46
  %80 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace63 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %80, i32 0, i32 121
  %81 = load i32, i32* %PicInterlace63, align 4
  %cmp64 = icmp eq i32 %81, 2
  br i1 %cmp64, label %land.lhs.true.68, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %if.else.62
  %82 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace66 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %82, i32 0, i32 122
  %83 = load i32, i32* %MbInterlace66, align 4
  %tobool67 = icmp ne i32 %83, 0
  br i1 %tobool67, label %land.lhs.true.68, label %if.end.72

land.lhs.true.68:                                 ; preds = %lor.lhs.false.65, %if.else.62
  %84 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl69 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %84, i32 0, i32 1
  %85 = load i32, i32* %FieldControl69, align 4
  %cmp70 = icmp eq i32 %85, 0
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %land.lhs.true.68
  %86 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @updateQPInterlaceBU(%struct.rc_quadratic* %86)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %land.lhs.true.68, %lor.lhs.false.65
  %87 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_X1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %87, i32 0, i32 27
  %88 = load double, double* %Pm_X1, align 8
  %89 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %89, i32 0, i32 25
  store double %88, double* %m_X1, align 8
  %90 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_X2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %90, i32 0, i32 28
  %91 = load double, double* %Pm_X2, align 8
  %92 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %92, i32 0, i32 26
  store double %91, double* %m_X2, align 8
  %93 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PMADPictureC1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %93, i32 0, i32 16
  %94 = load double, double* %PMADPictureC1, align 8
  %95 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %95, i32 0, i32 14
  store double %94, double* %MADPictureC1, align 8
  %96 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PMADPictureC2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %96, i32 0, i32 17
  %97 = load double, double* %PMADPictureC2, align 8
  %98 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %98, i32 0, i32 15
  store double %97, double* %MADPictureC2, align 8
  %99 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PPictureMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %99, i32 0, i32 18
  %arrayidx73 = getelementptr inbounds [21 x double], [21 x double]* %PPictureMAD, i32 0, i64 0
  %100 = load double, double* %arrayidx73, align 8
  %101 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PreviousPictureMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %101, i32 0, i32 13
  store double %100, double* %PreviousPictureMAD, align 8
  %102 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PDuantQp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %102, i32 0, i32 80
  %103 = load i32, i32* %PDuantQp, align 4
  store i32 %103, i32* %DuantQp, align 4
  %104 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_Qp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %104, i32 0, i32 29
  %105 = load i32, i32* %Pm_Qp, align 4
  store i32 %105, i32* %m_Qp, align 4
  %106 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PPreHeader = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %106, i32 0, i32 34
  %107 = load i32, i32* %PPreHeader, align 4
  store i32 %107, i32* %m_Hp, align 4
  %108 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC174 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %108, i32 0, i32 14
  %109 = load double, double* %MADPictureC174, align 8
  %110 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PreviousPictureMAD75 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %110, i32 0, i32 13
  %111 = load double, double* %PreviousPictureMAD75, align 8
  %mul = fmul double %109, %111
  %112 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC276 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %112, i32 0, i32 15
  %113 = load double, double* %MADPictureC276, align 8
  %add77 = fadd double %mul, %113
  %114 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %114, i32 0, i32 46
  store double %add77, double* %CurrentFrameMAD, align 8
  %115 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %115, i32 0, i32 68
  %116 = load i32, i32* %Target, align 4
  %cmp78 = icmp slt i32 %116, 0
  br i1 %cmp78, label %if.then.79, label %if.else.87

if.then.79:                                       ; preds = %if.end.72
  %117 = load i32, i32* %m_Qp, align 4
  %118 = load i32, i32* %DuantQp, align 4
  %add80 = add nsw i32 %117, %118
  %119 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc81 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %119, i32 0, i32 33
  store i32 %add80, i32* %m_Qc81, align 4
  %120 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MIN_QUANT82 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %120, i32 0, i32 10
  %121 = load i32, i32* %RC_MIN_QUANT82, align 4
  %122 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MAX_QUANT83 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %122, i32 0, i32 9
  %123 = load i32, i32* %RC_MAX_QUANT83, align 4
  %124 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc84 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %124, i32 0, i32 33
  %125 = load i32, i32* %m_Qc84, align 4
  %call85 = call i32 @iClip3(i32 %121, i32 %123, i32 %125)
  %126 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc86 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %126, i32 0, i32 33
  store i32 %call85, i32* %m_Qc86, align 4
  br label %if.end.102

if.else.87:                                       ; preds = %if.end.72
  %127 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target88 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %127, i32 0, i32 68
  %128 = load i32, i32* %Target88, align 4
  %129 = load i32, i32* %m_Hp, align 4
  %sub89 = sub nsw i32 %128, %129
  store i32 %sub89, i32* %m_Bits, align 4
  %130 = load i32, i32* %m_Bits, align 4
  %131 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %bit_rate = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %131, i32 0, i32 0
  %132 = load float, float* %bit_rate, align 4
  %133 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %frame_rate = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %133, i32 0, i32 1
  %134 = load float, float* %frame_rate, align 4
  %mul90 = fmul float 4.000000e+00, %134
  %div = fdiv float %132, %mul90
  %conv = fptosi float %div to i32
  %call91 = call i32 @imax(i32 %130, i32 %conv)
  store i32 %call91, i32* %m_Bits, align 4
  %135 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %136 = load i32, i32* %m_Bits, align 4
  call void @updateModelQPFrame(%struct.rc_quadratic* %135, i32 %136)
  %137 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MIN_QUANT92 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %137, i32 0, i32 10
  %138 = load i32, i32* %RC_MIN_QUANT92, align 4
  %139 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MAX_QUANT93 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %139, i32 0, i32 9
  %140 = load i32, i32* %RC_MAX_QUANT93, align 4
  %141 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc94 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %141, i32 0, i32 33
  %142 = load i32, i32* %m_Qc94, align 4
  %call95 = call i32 @iClip3(i32 %138, i32 %140, i32 %142)
  %143 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc96 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %143, i32 0, i32 33
  store i32 %call95, i32* %m_Qc96, align 4
  %144 = load i32, i32* %m_Qp, align 4
  %145 = load i32, i32* %DuantQp, align 4
  %sub97 = sub nsw i32 %144, %145
  %146 = load i32, i32* %m_Qp, align 4
  %147 = load i32, i32* %DuantQp, align 4
  %add98 = add nsw i32 %146, %147
  %148 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc99 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %148, i32 0, i32 33
  %149 = load i32, i32* %m_Qc99, align 4
  %call100 = call i32 @iClip3(i32 %sub97, i32 %add98, i32 %149)
  %150 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc101 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %150, i32 0, i32 33
  store i32 %call100, i32* %m_Qc101, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.87, %if.then.79
  %151 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl103 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %151, i32 0, i32 1
  %152 = load i32, i32* %FieldControl103, align 4
  %cmp104 = icmp eq i32 %152, 0
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.102
  %153 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @updateQPNonPicAFF(%struct.rc_quadratic* %153)
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %if.end.102
  %154 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc108 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %154, i32 0, i32 33
  %155 = load i32, i32* %m_Qc108, align 4
  store i32 %155, i32* %retval
  br label %return

if.else.109:                                      ; preds = %lor.lhs.false
  %156 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type110 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %156, i32 0, i32 5
  %157 = load i32, i32* %type110, align 4
  %cmp111 = icmp eq i32 %157, 0
  br i1 %cmp111, label %land.lhs.true.113, label %if.end.121

land.lhs.true.113:                                ; preds = %if.else.109
  %158 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NoGranularFieldRC = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %158, i32 0, i32 3
  %159 = load i32, i32* %NoGranularFieldRC, align 4
  %cmp114 = icmp eq i32 %159, 0
  br i1 %cmp114, label %land.lhs.true.116, label %if.end.121

land.lhs.true.116:                                ; preds = %land.lhs.true.113
  %160 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number117 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %160, i32 0, i32 0
  %161 = load i32, i32* %number117, align 4
  %162 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub118 = sub nsw i32 %161, %162
  %tobool119 = icmp ne i32 %sub118, 0
  br i1 %tobool119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %land.lhs.true.116
  %163 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @updateBottomField(%struct.rc_quadratic* %163)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.120, %land.lhs.true.116, %land.lhs.true.113, %if.else.109
  %164 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc122 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %164, i32 0, i32 33
  %165 = load i32, i32* %m_Qc122, align 4
  store i32 %165, i32* %retval
  br label %return

if.else.123:                                      ; preds = %entry
  %166 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number124 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %166, i32 0, i32 0
  %167 = load i32, i32* %number124, align 4
  %168 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub125 = sub nsw i32 %167, %168
  %tobool126 = icmp ne i32 %sub125, 0
  br i1 %tobool126, label %if.else.131, label %if.then.127

if.then.127:                                      ; preds = %if.else.123
  %169 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MyInitialQp128 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %169, i32 0, i32 11
  %170 = load i32, i32* %MyInitialQp128, align 4
  %171 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc129 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %171, i32 0, i32 33
  store i32 %170, i32* %m_Qc129, align 4
  %172 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc130 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %172, i32 0, i32 33
  %173 = load i32, i32* %m_Qc130, align 4
  store i32 %173, i32* %retval
  br label %return

if.else.131:                                      ; preds = %if.else.123
  %174 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type132 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %174, i32 0, i32 5
  %175 = load i32, i32* %type132, align 4
  %cmp133 = icmp eq i32 %175, 2
  br i1 %cmp133, label %if.then.135, label %if.else.152

if.then.135:                                      ; preds = %if.else.131
  %176 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace136 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %176, i32 0, i32 121
  %177 = load i32, i32* %PicInterlace136, align 4
  %cmp137 = icmp eq i32 %177, 2
  br i1 %cmp137, label %if.then.142, label %lor.lhs.false.139

lor.lhs.false.139:                                ; preds = %if.then.135
  %178 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace140 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %178, i32 0, i32 122
  %179 = load i32, i32* %MbInterlace140, align 4
  %tobool141 = icmp ne i32 %179, 0
  br i1 %tobool141, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %lor.lhs.false.139, %if.then.135
  %180 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @updateQPInterlace(%struct.rc_quadratic* %180)
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %lor.lhs.false.139
  %181 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP144 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %181, i32 0, i32 35
  %182 = load i32, i32* %PrevLastQP144, align 4
  %183 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc145 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %183, i32 0, i32 33
  store i32 %182, i32* %m_Qc145, align 4
  %184 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP146 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %184, i32 0, i32 36
  %185 = load i32, i32* %CurrLastQP146, align 4
  %186 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP147 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %186, i32 0, i32 35
  store i32 %185, i32* %PrevLastQP147, align 4
  %187 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP148 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %187, i32 0, i32 35
  %188 = load i32, i32* %PrevLastQP148, align 4
  %189 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP149 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %189, i32 0, i32 36
  store i32 %188, i32* %CurrLastQP149, align 4
  %190 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP150 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %190, i32 0, i32 36
  %191 = load i32, i32* %CurrLastQP150, align 4
  %192 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveFrameQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %192, i32 0, i32 43
  store i32 %191, i32* %PAveFrameQP, align 4
  %193 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc151 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %193, i32 0, i32 33
  %194 = load i32, i32* %m_Qc151, align 4
  store i32 %194, i32* %retval
  br label %return

if.else.152:                                      ; preds = %if.else.131
  %195 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type153 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %195, i32 0, i32 5
  %196 = load i32, i32* %type153, align 4
  %cmp154 = icmp eq i32 %196, 1
  br i1 %cmp154, label %if.then.156, label %if.else.200

if.then.156:                                      ; preds = %if.else.152
  %197 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP158 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %197, i32 0, i32 35
  %198 = load i32, i32* %PrevLastQP158, align 4
  %199 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP159 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %199, i32 0, i32 36
  %200 = load i32, i32* %CurrLastQP159, align 4
  %call160 = call i32 @imax(i32 %198, i32 %200)
  store i32 %call160, i32* %prevQP157, align 4
  %201 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace161 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %201, i32 0, i32 121
  %202 = load i32, i32* %PicInterlace161, align 4
  %cmp162 = icmp eq i32 %202, 2
  br i1 %cmp162, label %if.then.167, label %lor.lhs.false.164

lor.lhs.false.164:                                ; preds = %if.then.156
  %203 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace165 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %203, i32 0, i32 122
  %204 = load i32, i32* %MbInterlace165, align 4
  %tobool166 = icmp ne i32 %204, 0
  br i1 %tobool166, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %lor.lhs.false.164, %if.then.156
  %205 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @updateQPInterlace(%struct.rc_quadratic* %205)
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.167, %lor.lhs.false.164
  %206 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding169 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %206, i32 0, i32 69
  %207 = load i32, i32* %HierarchicalCoding169, align 4
  %tobool170 = icmp ne i32 %207, 0
  br i1 %tobool170, label %if.then.171, label %if.else.188

if.then.171:                                      ; preds = %if.end.168
  %208 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code172 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %208, i32 0, i32 76
  %209 = load i32, i32* %b_frame_to_code172, align 4
  %cmp173 = icmp eq i32 %209, 0
  br i1 %cmp173, label %if.then.175, label %if.else.177

if.then.175:                                      ; preds = %if.then.171
  %210 = load i32, i32* %prevQP157, align 4
  %211 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc176 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %211, i32 0, i32 33
  store i32 %210, i32* %m_Qc176, align 4
  br label %if.end.187

if.else.177:                                      ; preds = %if.then.171
  %212 = load i32, i32* %prevQP157, align 4
  %213 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %GopLevels178 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %213, i32 0, i32 173
  %214 = load i32, i32* %GopLevels178, align 4
  %add179 = add nsw i32 %212, %214
  %215 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code180 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %215, i32 0, i32 76
  %216 = load i32, i32* %b_frame_to_code180, align 4
  %sub181 = sub nsw i32 %216, 1
  %idxprom182 = sext i32 %sub181 to i64
  %217 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx183 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %217, i64 %idxprom182
  %hierarchy_layer184 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx183, i32 0, i32 4
  %218 = load i32, i32* %hierarchy_layer184, align 4
  %sub185 = sub nsw i32 %add179, %218
  %219 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc186 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %219, i32 0, i32 33
  store i32 %sub185, i32* %m_Qc186, align 4
  br label %if.end.187

if.end.187:                                       ; preds = %if.else.177, %if.then.175
  br label %if.end.193

if.else.188:                                      ; preds = %if.end.168
  %220 = load i32, i32* %prevQP157, align 4
  %add189 = add nsw i32 %220, 2
  %221 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc190 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %221, i32 0, i32 122
  %222 = load i32, i32* %nal_reference_idc190, align 4
  %sub191 = sub nsw i32 %add189, %222
  %223 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc192 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %223, i32 0, i32 33
  store i32 %sub191, i32* %m_Qc192, align 4
  br label %if.end.193

if.end.193:                                       ; preds = %if.else.188, %if.end.187
  %224 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MIN_QUANT194 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %224, i32 0, i32 10
  %225 = load i32, i32* %RC_MIN_QUANT194, align 4
  %226 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MAX_QUANT195 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %226, i32 0, i32 9
  %227 = load i32, i32* %RC_MAX_QUANT195, align 4
  %228 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc196 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %228, i32 0, i32 33
  %229 = load i32, i32* %m_Qc196, align 4
  %call197 = call i32 @iClip3(i32 %225, i32 %227, i32 %229)
  %230 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc198 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %230, i32 0, i32 33
  store i32 %call197, i32* %m_Qc198, align 4
  %231 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc199 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %231, i32 0, i32 33
  %232 = load i32, i32* %m_Qc199, align 4
  store i32 %232, i32* %retval
  br label %return

if.else.200:                                      ; preds = %if.else.152
  %233 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type201 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %233, i32 0, i32 5
  %234 = load i32, i32* %type201, align 4
  %cmp202 = icmp eq i32 %234, 0
  br i1 %cmp202, label %if.then.204, label %if.end.279

if.then.204:                                      ; preds = %if.else.200
  %235 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofGOP = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %235, i32 0, i32 10
  %236 = load i32, i32* %NumberofGOP, align 4
  %cmp205 = icmp eq i32 %236, 1
  br i1 %cmp205, label %land.lhs.true.207, label %if.else.226

land.lhs.true.207:                                ; preds = %if.then.204
  %237 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofPPicture208 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %237, i32 0, i32 12
  %238 = load i32, i32* %NumberofPPicture208, align 4
  %cmp209 = icmp eq i32 %238, 0
  br i1 %cmp209, label %if.then.211, label %if.else.226

if.then.211:                                      ; preds = %land.lhs.true.207
  %239 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl212 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %239, i32 0, i32 1
  %240 = load i32, i32* %FieldControl212, align 4
  %cmp213 = icmp eq i32 %240, 0
  br i1 %cmp213, label %if.then.223, label %lor.lhs.false.215

lor.lhs.false.215:                                ; preds = %if.then.211
  %241 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl216 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %241, i32 0, i32 1
  %242 = load i32, i32* %FieldControl216, align 4
  %cmp217 = icmp eq i32 %242, 1
  br i1 %cmp217, label %land.lhs.true.219, label %if.end.225

land.lhs.true.219:                                ; preds = %lor.lhs.false.215
  %243 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NoGranularFieldRC220 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %243, i32 0, i32 3
  %244 = load i32, i32* %NoGranularFieldRC220, align 4
  %cmp221 = icmp eq i32 %244, 0
  br i1 %cmp221, label %if.then.223, label %if.end.225

if.then.223:                                      ; preds = %land.lhs.true.219, %if.then.211
  %245 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %246 = load i32, i32* %topfield.addr, align 4
  %call224 = call i32 @updateFirstP(%struct.rc_quadratic* %245, i32 %246)
  store i32 %call224, i32* %retval
  br label %return

if.end.225:                                       ; preds = %land.lhs.true.219, %lor.lhs.false.215
  br label %if.end.278

if.else.226:                                      ; preds = %land.lhs.true.207, %if.then.204
  %247 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_X1227 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %247, i32 0, i32 27
  %248 = load double, double* %Pm_X1227, align 8
  %249 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X1228 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %249, i32 0, i32 25
  store double %248, double* %m_X1228, align 8
  %250 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_X2229 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %250, i32 0, i32 28
  %251 = load double, double* %Pm_X2229, align 8
  %252 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X2230 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %252, i32 0, i32 26
  store double %251, double* %m_X2230, align 8
  %253 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PMADPictureC1231 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %253, i32 0, i32 16
  %254 = load double, double* %PMADPictureC1231, align 8
  %255 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC1232 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %255, i32 0, i32 14
  store double %254, double* %MADPictureC1232, align 8
  %256 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PMADPictureC2233 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %256, i32 0, i32 17
  %257 = load double, double* %PMADPictureC2233, align 8
  %258 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC2234 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %258, i32 0, i32 15
  store double %257, double* %MADPictureC2234, align 8
  %259 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_Qp235 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %259, i32 0, i32 29
  %260 = load i32, i32* %Pm_Qp235, align 4
  store i32 %260, i32* %m_Qp, align 4
  %261 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl236 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %261, i32 0, i32 1
  %262 = load i32, i32* %FieldControl236, align 4
  %cmp237 = icmp eq i32 %262, 0
  br i1 %cmp237, label %if.then.239, label %if.else.240

if.then.239:                                      ; preds = %if.else.226
  %263 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %263, i32 0, i32 44
  %264 = load i32, i32* %TotalNumberofBasicUnit, align 4
  store i32 %264, i32* %SumofBasicUnit, align 4
  br label %if.end.242

if.else.240:                                      ; preds = %if.else.226
  %265 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit241 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %265, i32 0, i32 44
  %266 = load i32, i32* %TotalNumberofBasicUnit241, align 4
  %shr = ashr i32 %266, 1
  store i32 %shr, i32* %SumofBasicUnit, align 4
  br label %if.end.242

if.end.242:                                       ; preds = %if.else.240, %if.then.239
  %267 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %267, i32 0, i32 39
  %268 = load i32, i32* %NumberofBasicUnit, align 4
  %269 = load i32, i32* %SumofBasicUnit, align 4
  %cmp243 = icmp eq i32 %268, %269
  br i1 %cmp243, label %if.then.245, label %if.else.247

if.then.245:                                      ; preds = %if.end.242
  %270 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %271 = load i32, i32* %topfield.addr, align 4
  %call246 = call i32 @updateFirstBU(%struct.rc_quadratic* %270, i32 %271)
  store i32 %call246, i32* %retval
  br label %return

if.else.247:                                      ; preds = %if.end.242
  %272 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofBasicUnitHeaderBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %272, i32 0, i32 6
  %273 = load i32, i32* %NumberofBasicUnitHeaderBits, align 4
  %274 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofBasicUnitTextureBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %274, i32 0, i32 7
  %275 = load i32, i32* %NumberofBasicUnitTextureBits, align 4
  %add248 = add nsw i32 %273, %275
  %276 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target249 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %276, i32 0, i32 68
  %277 = load i32, i32* %Target249, align 4
  %sub250 = sub nsw i32 %277, %add248
  store i32 %sub250, i32* %Target249, align 4
  %278 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofBasicUnitHeaderBits251 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %278, i32 0, i32 6
  store i32 0, i32* %NumberofBasicUnitHeaderBits251, align 4
  %279 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofBasicUnitTextureBits252 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %279, i32 0, i32 7
  store i32 0, i32* %NumberofBasicUnitTextureBits252, align 4
  %280 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target253 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %280, i32 0, i32 68
  %281 = load i32, i32* %Target253, align 4
  %cmp254 = icmp slt i32 %281, 0
  br i1 %cmp254, label %if.then.256, label %if.else.258

if.then.256:                                      ; preds = %if.else.247
  %282 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %283 = load i32, i32* %topfield.addr, align 4
  %284 = load i32, i32* %m_Qp, align 4
  %call257 = call i32 @updateNegativeTarget(%struct.rc_quadratic* %282, i32 %283, i32 %284)
  store i32 %call257, i32* %retval
  br label %return

if.else.258:                                      ; preds = %if.else.247
  %285 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @predictCurrPicMAD(%struct.rc_quadratic* %285)
  %286 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %287 = load i32, i32* %topfield.addr, align 4
  %288 = load i32, i32* %m_Qp, align 4
  call void @updateModelQPBU(%struct.rc_quadratic* %286, i32 %287, i32 %288)
  %289 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc259 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %289, i32 0, i32 33
  %290 = load i32, i32* %m_Qc259, align 4
  %291 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalFrameQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %291, i32 0, i32 38
  %292 = load i32, i32* %TotalFrameQP, align 4
  %add260 = add nsw i32 %292, %290
  store i32 %add260, i32* %TotalFrameQP, align 4
  %293 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc261 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %293, i32 0, i32 33
  %294 = load i32, i32* %m_Qc261, align 4
  %295 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_Qp262 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %295, i32 0, i32 29
  store i32 %294, i32* %Pm_Qp262, align 4
  %296 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit263 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %296, i32 0, i32 39
  %297 = load i32, i32* %NumberofBasicUnit263, align 4
  %dec = add nsw i32 %297, -1
  store i32 %dec, i32* %NumberofBasicUnit263, align 4
  %298 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit264 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %298, i32 0, i32 39
  %299 = load i32, i32* %NumberofBasicUnit264, align 4
  %cmp265 = icmp eq i32 %299, 0
  br i1 %cmp265, label %land.lhs.true.267, label %if.end.276

land.lhs.true.267:                                ; preds = %if.else.258
  %300 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type268 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %300, i32 0, i32 5
  %301 = load i32, i32* %type268, align 4
  %cmp269 = icmp eq i32 %301, 0
  br i1 %cmp269, label %land.lhs.true.271, label %if.end.276

land.lhs.true.271:                                ; preds = %land.lhs.true.267
  %302 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number272 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %302, i32 0, i32 0
  %303 = load i32, i32* %number272, align 4
  %304 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub273 = sub nsw i32 %303, %304
  %tobool274 = icmp ne i32 %sub273, 0
  br i1 %tobool274, label %if.then.275, label %if.end.276

if.then.275:                                      ; preds = %land.lhs.true.271
  %305 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %306 = load i32, i32* %topfield.addr, align 4
  call void @updateLastBU(%struct.rc_quadratic* %305, i32 %306)
  br label %if.end.276

if.end.276:                                       ; preds = %if.then.275, %land.lhs.true.271, %land.lhs.true.267, %if.else.258
  %307 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc277 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %307, i32 0, i32 33
  %308 = load i32, i32* %m_Qc277, align 4
  store i32 %308, i32* %retval
  br label %return

if.end.278:                                       ; preds = %if.end.225
  br label %if.end.279

if.end.279:                                       ; preds = %if.end.278, %if.else.200
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.280
  br label %if.end.282

if.end.282:                                       ; preds = %if.end.281
  br label %if.end.283

if.end.283:                                       ; preds = %if.end.282
  %309 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc284 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %309, i32 0, i32 33
  %310 = load i32, i32* %m_Qc284, align 4
  store i32 %310, i32* %retval
  br label %return

return:                                           ; preds = %if.end.283, %if.end.276, %if.then.256, %if.then.245, %if.then.223, %if.end.193, %if.end.143, %if.then.127, %if.end.121, %if.end.107, %if.end.60, %if.end.41, %if.end, %if.then.4
  %311 = load i32, i32* %retval
  ret i32 %311
}

; Function Attrs: nounwind uwtable
define i32 @updateQPRC3(%struct.rc_quadratic* %prc, i32 %topfield) #0 {
entry:
  %retval = alloca i32, align 4
  %prc.addr = alloca %struct.rc_quadratic*, align 8
  %topfield.addr = alloca i32, align 4
  %m_Bits = alloca i32, align 4
  %SumofBasicUnit = alloca i32, align 4
  %DuantQp = alloca i32, align 4
  %m_Qp = alloca i32, align 4
  %m_Hp = alloca i32, align 4
  %prevqp = alloca i32, align 4
  store %struct.rc_quadratic* %prc, %struct.rc_quadratic** %prc.addr, align 8
  store i32 %topfield, i32* %topfield.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 132
  %1 = load i32, i32* %BasicUnit, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 120
  %3 = load i32, i32* %FrameSizeInMbs, align 4
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 5
  %5 = load i32, i32* %type, align 4
  %cmp1 = icmp ne i32 %5, 0
  br i1 %cmp1, label %if.then, label %if.else.146

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i32, i32* %topfield.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.4, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %if.then
  %7 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %7, i32 0, i32 1
  %8 = load i32, i32* %FieldControl, align 4
  %cmp3 = icmp eq i32 %8, 0
  br i1 %cmp3, label %if.then.4, label %if.else.132

if.then.4:                                        ; preds = %lor.lhs.false.2, %if.then
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 0
  %10 = load i32, i32* %number, align 4
  %11 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub = sub nsw i32 %10, %11
  %tobool5 = icmp ne i32 %sub, 0
  br i1 %tobool5, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %if.then.4
  %12 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MyInitialQp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %12, i32 0, i32 11
  %13 = load i32, i32* %MyInitialQp, align 4
  %14 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %14, i32 0, i32 33
  store i32 %13, i32* %m_Qc, align 4
  %15 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc7 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %15, i32 0, i32 33
  %16 = load i32, i32* %m_Qc7, align 4
  store i32 %16, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.4
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 5
  %18 = load i32, i32* %type8, align 4
  %cmp9 = icmp eq i32 %18, 0
  br i1 %cmp9, label %land.lhs.true, label %if.else.22

land.lhs.true:                                    ; preds = %if.else
  %19 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofPPicture = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %19, i32 0, i32 12
  %20 = load i32, i32* %NumberofPPicture, align 4
  %cmp10 = icmp eq i32 %20, 0
  br i1 %cmp10, label %land.lhs.true.11, label %if.else.22

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 0
  %22 = load i32, i32* %number12, align 4
  %23 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub13 = sub nsw i32 %22, %23
  %tobool14 = icmp ne i32 %sub13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.22

if.then.15:                                       ; preds = %land.lhs.true.11
  %24 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MyInitialQp16 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %24, i32 0, i32 11
  %25 = load i32, i32* %MyInitialQp16, align 4
  %26 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc17 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %26, i32 0, i32 33
  store i32 %25, i32* %m_Qc17, align 4
  %27 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl18 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %27, i32 0, i32 1
  %28 = load i32, i32* %FieldControl18, align 4
  %cmp19 = icmp eq i32 %28, 0
  br i1 %cmp19, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %if.then.15
  %29 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @updateQPNonPicAFF(%struct.rc_quadratic* %29)
  br label %if.end

if.end:                                           ; preds = %if.then.20, %if.then.15
  %30 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc21 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %30, i32 0, i32 33
  %31 = load i32, i32* %m_Qc21, align 4
  store i32 %31, i32* %retval
  br label %return

if.else.22:                                       ; preds = %land.lhs.true.11, %land.lhs.true, %if.else
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type23 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 5
  %33 = load i32, i32* %type23, align 4
  %cmp24 = icmp eq i32 %33, 0
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.33

land.lhs.true.25:                                 ; preds = %if.else.22
  %34 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %34, i32 0, i32 121
  %35 = load i32, i32* %PicInterlace, align 4
  %cmp26 = icmp eq i32 %35, 2
  br i1 %cmp26, label %land.lhs.true.29, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %land.lhs.true.25
  %36 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %36, i32 0, i32 122
  %37 = load i32, i32* %MbInterlace, align 4
  %tobool28 = icmp ne i32 %37, 0
  br i1 %tobool28, label %land.lhs.true.29, label %if.end.33

land.lhs.true.29:                                 ; preds = %lor.lhs.false.27, %land.lhs.true.25
  %38 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl30 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %38, i32 0, i32 1
  %39 = load i32, i32* %FieldControl30, align 4
  %cmp31 = icmp eq i32 %39, 0
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %land.lhs.true.29
  %40 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @updateQPInterlaceBU(%struct.rc_quadratic* %40)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %land.lhs.true.29, %lor.lhs.false.27, %if.else.22
  %41 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_X1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %41, i32 0, i32 27
  %42 = load double, double* %Pm_X1, align 8
  %43 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %43, i32 0, i32 25
  store double %42, double* %m_X1, align 8
  %44 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_X2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %44, i32 0, i32 28
  %45 = load double, double* %Pm_X2, align 8
  %46 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %46, i32 0, i32 26
  store double %45, double* %m_X2, align 8
  %47 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PMADPictureC1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %47, i32 0, i32 16
  %48 = load double, double* %PMADPictureC1, align 8
  %49 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %49, i32 0, i32 14
  store double %48, double* %MADPictureC1, align 8
  %50 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PMADPictureC2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %50, i32 0, i32 17
  %51 = load double, double* %PMADPictureC2, align 8
  %52 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %52, i32 0, i32 15
  store double %51, double* %MADPictureC2, align 8
  %53 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PPictureMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %53, i32 0, i32 18
  %arrayidx = getelementptr inbounds [21 x double], [21 x double]* %PPictureMAD, i32 0, i64 0
  %54 = load double, double* %arrayidx, align 8
  %55 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PreviousPictureMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %55, i32 0, i32 13
  store double %54, double* %PreviousPictureMAD, align 8
  %56 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PDuantQp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %56, i32 0, i32 80
  %57 = load i32, i32* %PDuantQp, align 4
  store i32 %57, i32* %DuantQp, align 4
  %58 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_Qp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %58, i32 0, i32 29
  %59 = load i32, i32* %Pm_Qp, align 4
  store i32 %59, i32* %m_Qp, align 4
  %60 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PPreHeader = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %60, i32 0, i32 34
  %61 = load i32, i32* %PPreHeader, align 4
  store i32 %61, i32* %m_Hp, align 4
  %62 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit34 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %62, i32 0, i32 132
  %63 = load i32, i32* %BasicUnit34, align 4
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs35 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 120
  %65 = load i32, i32* %FrameSizeInMbs35, align 4
  %cmp36 = icmp ult i32 %63, %65
  br i1 %cmp36, label %land.lhs.true.37, label %if.end.42

land.lhs.true.37:                                 ; preds = %if.end.33
  %66 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type38 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %66, i32 0, i32 5
  %67 = load i32, i32* %type38, align 4
  %cmp39 = icmp ne i32 %67, 0
  br i1 %cmp39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %land.lhs.true.37
  %68 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PreviousWholeFrameMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %68, i32 0, i32 50
  %69 = load double, double* %PreviousWholeFrameMAD, align 8
  %70 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PreviousPictureMAD41 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %70, i32 0, i32 13
  store double %69, double* %PreviousPictureMAD41, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %land.lhs.true.37, %if.end.33
  %71 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type43 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %71, i32 0, i32 5
  %72 = load i32, i32* %type43, align 4
  %cmp44 = icmp eq i32 %72, 2
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  store i32 0, i32* %m_Hp, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.42
  %73 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC147 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %73, i32 0, i32 14
  %74 = load double, double* %MADPictureC147, align 8
  %75 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PreviousPictureMAD48 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %75, i32 0, i32 13
  %76 = load double, double* %PreviousPictureMAD48, align 8
  %mul = fmul double %74, %76
  %77 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC249 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %77, i32 0, i32 15
  %78 = load double, double* %MADPictureC249, align 8
  %add = fadd double %mul, %78
  %79 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %79, i32 0, i32 46
  store double %add, double* %CurrentFrameMAD, align 8
  %80 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %80, i32 0, i32 68
  %81 = load i32, i32* %Target, align 4
  %cmp50 = icmp slt i32 %81, 0
  br i1 %cmp50, label %if.then.51, label %if.else.56

if.then.51:                                       ; preds = %if.end.46
  %82 = load i32, i32* %m_Qp, align 4
  %83 = load i32, i32* %DuantQp, align 4
  %add52 = add nsw i32 %82, %83
  %84 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc53 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %84, i32 0, i32 33
  store i32 %add52, i32* %m_Qc53, align 4
  %85 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MIN_QUANT = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %85, i32 0, i32 10
  %86 = load i32, i32* %RC_MIN_QUANT, align 4
  %87 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MAX_QUANT = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %87, i32 0, i32 9
  %88 = load i32, i32* %RC_MAX_QUANT, align 4
  %89 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc54 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %89, i32 0, i32 33
  %90 = load i32, i32* %m_Qc54, align 4
  %call = call i32 @iClip3(i32 %86, i32 %88, i32 %90)
  %91 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc55 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %91, i32 0, i32 33
  store i32 %call, i32* %m_Qc55, align 4
  br label %if.end.92

if.else.56:                                       ; preds = %if.end.46
  %92 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type57 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %92, i32 0, i32 5
  %93 = load i32, i32* %type57, align 4
  %cmp58 = icmp ne i32 %93, 0
  br i1 %cmp58, label %if.then.59, label %if.else.70

if.then.59:                                       ; preds = %if.else.56
  %94 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit60 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %94, i32 0, i32 132
  %95 = load i32, i32* %BasicUnit60, align 4
  %96 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs61 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %96, i32 0, i32 120
  %97 = load i32, i32* %FrameSizeInMbs61, align 4
  %cmp62 = icmp ult i32 %95, %97
  br i1 %cmp62, label %if.then.63, label %if.else.66

if.then.63:                                       ; preds = %if.then.59
  %98 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target64 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %98, i32 0, i32 68
  %99 = load i32, i32* %Target64, align 4
  %100 = load i32, i32* %m_Hp, align 4
  %sub65 = sub nsw i32 %99, %100
  %101 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %101, i32 0, i32 44
  %102 = load i32, i32* %TotalNumberofBasicUnit, align 4
  %div = sdiv i32 %sub65, %102
  store i32 %div, i32* %m_Bits, align 4
  br label %if.end.69

if.else.66:                                       ; preds = %if.then.59
  %103 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target67 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %103, i32 0, i32 68
  %104 = load i32, i32* %Target67, align 4
  %105 = load i32, i32* %m_Hp, align 4
  %sub68 = sub nsw i32 %104, %105
  store i32 %sub68, i32* %m_Bits, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.66, %if.then.63
  br label %if.end.76

if.else.70:                                       ; preds = %if.else.56
  %106 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target71 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %106, i32 0, i32 68
  %107 = load i32, i32* %Target71, align 4
  %108 = load i32, i32* %m_Hp, align 4
  %sub72 = sub nsw i32 %107, %108
  store i32 %sub72, i32* %m_Bits, align 4
  %109 = load i32, i32* %m_Bits, align 4
  %110 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %bit_rate = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %110, i32 0, i32 0
  %111 = load float, float* %bit_rate, align 4
  %112 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %frame_rate = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %112, i32 0, i32 1
  %113 = load float, float* %frame_rate, align 4
  %mul73 = fmul float 4.000000e+00, %113
  %div74 = fdiv float %111, %mul73
  %conv = fptosi float %div74 to i32
  %call75 = call i32 @imax(i32 %109, i32 %conv)
  store i32 %call75, i32* %m_Bits, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.70, %if.end.69
  %114 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %115 = load i32, i32* %m_Bits, align 4
  call void @updateModelQPFrame(%struct.rc_quadratic* %114, i32 %115)
  %116 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MIN_QUANT77 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %116, i32 0, i32 10
  %117 = load i32, i32* %RC_MIN_QUANT77, align 4
  %118 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MAX_QUANT78 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %118, i32 0, i32 9
  %119 = load i32, i32* %RC_MAX_QUANT78, align 4
  %120 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc79 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %120, i32 0, i32 33
  %121 = load i32, i32* %m_Qc79, align 4
  %call80 = call i32 @iClip3(i32 %117, i32 %119, i32 %121)
  %122 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc81 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %122, i32 0, i32 33
  store i32 %call80, i32* %m_Qc81, align 4
  %123 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type82 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %123, i32 0, i32 5
  %124 = load i32, i32* %type82, align 4
  %cmp83 = icmp eq i32 %124, 0
  br i1 %cmp83, label %if.then.85, label %if.end.91

if.then.85:                                       ; preds = %if.end.76
  %125 = load i32, i32* %m_Qp, align 4
  %126 = load i32, i32* %DuantQp, align 4
  %sub86 = sub nsw i32 %125, %126
  %127 = load i32, i32* %m_Qp, align 4
  %128 = load i32, i32* %DuantQp, align 4
  %add87 = add nsw i32 %127, %128
  %129 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc88 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %129, i32 0, i32 33
  %130 = load i32, i32* %m_Qc88, align 4
  %call89 = call i32 @iClip3(i32 %sub86, i32 %add87, i32 %130)
  %131 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc90 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %131, i32 0, i32 33
  store i32 %call89, i32* %m_Qc90, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.85, %if.end.76
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.51
  %132 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type93 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %132, i32 0, i32 5
  %133 = load i32, i32* %type93, align 4
  %cmp94 = icmp eq i32 %133, 0
  br i1 %cmp94, label %land.lhs.true.96, label %if.end.101

land.lhs.true.96:                                 ; preds = %if.end.92
  %134 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl97 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %134, i32 0, i32 1
  %135 = load i32, i32* %FieldControl97, align 4
  %cmp98 = icmp eq i32 %135, 0
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %land.lhs.true.96
  %136 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @updateQPNonPicAFF(%struct.rc_quadratic* %136)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %land.lhs.true.96, %if.end.92
  %137 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type102 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %137, i32 0, i32 5
  %138 = load i32, i32* %type102, align 4
  %cmp103 = icmp eq i32 %138, 1
  br i1 %cmp103, label %if.then.105, label %if.end.130

if.then.105:                                      ; preds = %if.end.101
  %139 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %139, i32 0, i32 35
  %140 = load i32, i32* %PrevLastQP, align 4
  %141 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %141, i32 0, i32 36
  %142 = load i32, i32* %CurrLastQP, align 4
  %add106 = add nsw i32 %140, %142
  %shr = ashr i32 %add106, 1
  %add107 = add nsw i32 %shr, 1
  store i32 %add107, i32* %prevqp, align 4
  %143 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %143, i32 0, i32 69
  %144 = load i32, i32* %HierarchicalCoding, align 4
  %tobool108 = icmp ne i32 %144, 0
  br i1 %tobool108, label %land.lhs.true.109, label %if.end.117

land.lhs.true.109:                                ; preds = %if.then.105
  %145 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %145, i32 0, i32 76
  %146 = load i32, i32* %b_frame_to_code, align 4
  %tobool110 = icmp ne i32 %146, 0
  br i1 %tobool110, label %if.then.111, label %if.end.117

if.then.111:                                      ; preds = %land.lhs.true.109
  %147 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code112 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %147, i32 0, i32 76
  %148 = load i32, i32* %b_frame_to_code112, align 4
  %sub113 = sub nsw i32 %148, 1
  %idxprom = sext i32 %sub113 to i64
  %149 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx114 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %149, i64 %idxprom
  %hierarchy_layer = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx114, i32 0, i32 4
  %150 = load i32, i32* %hierarchy_layer, align 4
  %151 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc115 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %151, i32 0, i32 33
  %152 = load i32, i32* %m_Qc115, align 4
  %sub116 = sub nsw i32 %152, %150
  store i32 %sub116, i32* %m_Qc115, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.111, %land.lhs.true.109, %if.then.105
  %153 = load i32, i32* %prevqp, align 4
  %154 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding118 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %154, i32 0, i32 69
  %155 = load i32, i32* %HierarchicalCoding118, align 4
  %tobool119 = icmp ne i32 %155, 0
  %cond = select i1 %tobool119, i32 0, i32 5
  %sub120 = sub nsw i32 %153, %cond
  %156 = load i32, i32* %prevqp, align 4
  %add121 = add nsw i32 %156, 5
  %157 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc122 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %157, i32 0, i32 33
  %158 = load i32, i32* %m_Qc122, align 4
  %call123 = call i32 @iClip3(i32 %sub120, i32 %add121, i32 %158)
  %159 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc124 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %159, i32 0, i32 33
  store i32 %call123, i32* %m_Qc124, align 4
  %160 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MIN_QUANT125 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %160, i32 0, i32 10
  %161 = load i32, i32* %RC_MIN_QUANT125, align 4
  %162 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MAX_QUANT126 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %162, i32 0, i32 9
  %163 = load i32, i32* %RC_MAX_QUANT126, align 4
  %164 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc127 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %164, i32 0, i32 33
  %165 = load i32, i32* %m_Qc127, align 4
  %call128 = call i32 @iClip3(i32 %161, i32 %163, i32 %165)
  %166 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc129 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %166, i32 0, i32 33
  store i32 %call128, i32* %m_Qc129, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.117, %if.end.101
  %167 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc131 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %167, i32 0, i32 33
  %168 = load i32, i32* %m_Qc131, align 4
  store i32 %168, i32* %retval
  br label %return

if.else.132:                                      ; preds = %lor.lhs.false.2
  %169 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type133 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %169, i32 0, i32 5
  %170 = load i32, i32* %type133, align 4
  %cmp134 = icmp eq i32 %170, 0
  br i1 %cmp134, label %land.lhs.true.136, label %if.end.144

land.lhs.true.136:                                ; preds = %if.else.132
  %171 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NoGranularFieldRC = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %171, i32 0, i32 3
  %172 = load i32, i32* %NoGranularFieldRC, align 4
  %cmp137 = icmp eq i32 %172, 0
  br i1 %cmp137, label %land.lhs.true.139, label %if.end.144

land.lhs.true.139:                                ; preds = %land.lhs.true.136
  %173 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number140 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %173, i32 0, i32 0
  %174 = load i32, i32* %number140, align 4
  %175 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub141 = sub nsw i32 %174, %175
  %tobool142 = icmp ne i32 %sub141, 0
  br i1 %tobool142, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %land.lhs.true.139
  %176 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @updateBottomField(%struct.rc_quadratic* %176)
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.143, %land.lhs.true.139, %land.lhs.true.136, %if.else.132
  %177 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc145 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %177, i32 0, i32 33
  %178 = load i32, i32* %m_Qc145, align 4
  store i32 %178, i32* %retval
  br label %return

if.else.146:                                      ; preds = %lor.lhs.false
  %179 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number147 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %179, i32 0, i32 0
  %180 = load i32, i32* %number147, align 4
  %181 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub148 = sub nsw i32 %180, %181
  %tobool149 = icmp ne i32 %sub148, 0
  br i1 %tobool149, label %if.else.154, label %if.then.150

if.then.150:                                      ; preds = %if.else.146
  %182 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MyInitialQp151 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %182, i32 0, i32 11
  %183 = load i32, i32* %MyInitialQp151, align 4
  %184 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc152 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %184, i32 0, i32 33
  store i32 %183, i32* %m_Qc152, align 4
  %185 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc153 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %185, i32 0, i32 33
  %186 = load i32, i32* %m_Qc153, align 4
  store i32 %186, i32* %retval
  br label %return

if.else.154:                                      ; preds = %if.else.146
  %187 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type155 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %187, i32 0, i32 5
  %188 = load i32, i32* %type155, align 4
  %cmp156 = icmp eq i32 %188, 0
  br i1 %cmp156, label %if.then.158, label %if.end.235

if.then.158:                                      ; preds = %if.else.154
  %189 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofGOP = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %189, i32 0, i32 10
  %190 = load i32, i32* %NumberofGOP, align 4
  %cmp159 = icmp eq i32 %190, 1
  br i1 %cmp159, label %land.lhs.true.161, label %if.else.180

land.lhs.true.161:                                ; preds = %if.then.158
  %191 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofPPicture162 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %191, i32 0, i32 12
  %192 = load i32, i32* %NumberofPPicture162, align 4
  %cmp163 = icmp eq i32 %192, 0
  br i1 %cmp163, label %if.then.165, label %if.else.180

if.then.165:                                      ; preds = %land.lhs.true.161
  %193 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl166 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %193, i32 0, i32 1
  %194 = load i32, i32* %FieldControl166, align 4
  %cmp167 = icmp eq i32 %194, 0
  br i1 %cmp167, label %if.then.177, label %lor.lhs.false.169

lor.lhs.false.169:                                ; preds = %if.then.165
  %195 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl170 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %195, i32 0, i32 1
  %196 = load i32, i32* %FieldControl170, align 4
  %cmp171 = icmp eq i32 %196, 1
  br i1 %cmp171, label %land.lhs.true.173, label %if.end.179

land.lhs.true.173:                                ; preds = %lor.lhs.false.169
  %197 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NoGranularFieldRC174 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %197, i32 0, i32 3
  %198 = load i32, i32* %NoGranularFieldRC174, align 4
  %cmp175 = icmp eq i32 %198, 0
  br i1 %cmp175, label %if.then.177, label %if.end.179

if.then.177:                                      ; preds = %land.lhs.true.173, %if.then.165
  %199 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %200 = load i32, i32* %topfield.addr, align 4
  %call178 = call i32 @updateFirstP(%struct.rc_quadratic* %199, i32 %200)
  store i32 %call178, i32* %retval
  br label %return

if.end.179:                                       ; preds = %land.lhs.true.173, %lor.lhs.false.169
  br label %if.end.234

if.else.180:                                      ; preds = %land.lhs.true.161, %if.then.158
  %201 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_X1181 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %201, i32 0, i32 27
  %202 = load double, double* %Pm_X1181, align 8
  %203 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X1182 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %203, i32 0, i32 25
  store double %202, double* %m_X1182, align 8
  %204 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_X2183 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %204, i32 0, i32 28
  %205 = load double, double* %Pm_X2183, align 8
  %206 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X2184 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %206, i32 0, i32 26
  store double %205, double* %m_X2184, align 8
  %207 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PMADPictureC1185 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %207, i32 0, i32 16
  %208 = load double, double* %PMADPictureC1185, align 8
  %209 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC1186 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %209, i32 0, i32 14
  store double %208, double* %MADPictureC1186, align 8
  %210 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PMADPictureC2187 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %210, i32 0, i32 17
  %211 = load double, double* %PMADPictureC2187, align 8
  %212 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC2188 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %212, i32 0, i32 15
  store double %211, double* %MADPictureC2188, align 8
  %213 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_Qp189 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %213, i32 0, i32 29
  %214 = load i32, i32* %Pm_Qp189, align 4
  store i32 %214, i32* %m_Qp, align 4
  %215 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl190 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %215, i32 0, i32 1
  %216 = load i32, i32* %FieldControl190, align 4
  %cmp191 = icmp eq i32 %216, 0
  br i1 %cmp191, label %if.then.193, label %if.else.195

if.then.193:                                      ; preds = %if.else.180
  %217 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit194 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %217, i32 0, i32 44
  %218 = load i32, i32* %TotalNumberofBasicUnit194, align 4
  store i32 %218, i32* %SumofBasicUnit, align 4
  br label %if.end.198

if.else.195:                                      ; preds = %if.else.180
  %219 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit196 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %219, i32 0, i32 44
  %220 = load i32, i32* %TotalNumberofBasicUnit196, align 4
  %shr197 = ashr i32 %220, 1
  store i32 %shr197, i32* %SumofBasicUnit, align 4
  br label %if.end.198

if.end.198:                                       ; preds = %if.else.195, %if.then.193
  %221 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %221, i32 0, i32 39
  %222 = load i32, i32* %NumberofBasicUnit, align 4
  %223 = load i32, i32* %SumofBasicUnit, align 4
  %cmp199 = icmp eq i32 %222, %223
  br i1 %cmp199, label %if.then.201, label %if.else.203

if.then.201:                                      ; preds = %if.end.198
  %224 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %225 = load i32, i32* %topfield.addr, align 4
  %call202 = call i32 @updateFirstBU(%struct.rc_quadratic* %224, i32 %225)
  store i32 %call202, i32* %retval
  br label %return

if.else.203:                                      ; preds = %if.end.198
  %226 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofBasicUnitHeaderBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %226, i32 0, i32 6
  %227 = load i32, i32* %NumberofBasicUnitHeaderBits, align 4
  %228 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofBasicUnitTextureBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %228, i32 0, i32 7
  %229 = load i32, i32* %NumberofBasicUnitTextureBits, align 4
  %add204 = add nsw i32 %227, %229
  %230 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target205 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %230, i32 0, i32 68
  %231 = load i32, i32* %Target205, align 4
  %sub206 = sub nsw i32 %231, %add204
  store i32 %sub206, i32* %Target205, align 4
  %232 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofBasicUnitHeaderBits207 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %232, i32 0, i32 6
  store i32 0, i32* %NumberofBasicUnitHeaderBits207, align 4
  %233 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofBasicUnitTextureBits208 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %233, i32 0, i32 7
  store i32 0, i32* %NumberofBasicUnitTextureBits208, align 4
  %234 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target209 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %234, i32 0, i32 68
  %235 = load i32, i32* %Target209, align 4
  %cmp210 = icmp slt i32 %235, 0
  br i1 %cmp210, label %if.then.212, label %if.else.214

if.then.212:                                      ; preds = %if.else.203
  %236 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %237 = load i32, i32* %topfield.addr, align 4
  %238 = load i32, i32* %m_Qp, align 4
  %call213 = call i32 @updateNegativeTarget(%struct.rc_quadratic* %236, i32 %237, i32 %238)
  store i32 %call213, i32* %retval
  br label %return

if.else.214:                                      ; preds = %if.else.203
  %239 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @predictCurrPicMAD(%struct.rc_quadratic* %239)
  %240 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %241 = load i32, i32* %topfield.addr, align 4
  %242 = load i32, i32* %m_Qp, align 4
  call void @updateModelQPBU(%struct.rc_quadratic* %240, i32 %241, i32 %242)
  %243 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc215 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %243, i32 0, i32 33
  %244 = load i32, i32* %m_Qc215, align 4
  %245 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalFrameQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %245, i32 0, i32 38
  %246 = load i32, i32* %TotalFrameQP, align 4
  %add216 = add nsw i32 %246, %244
  store i32 %add216, i32* %TotalFrameQP, align 4
  %247 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc217 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %247, i32 0, i32 33
  %248 = load i32, i32* %m_Qc217, align 4
  %249 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_Qp218 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %249, i32 0, i32 29
  store i32 %248, i32* %Pm_Qp218, align 4
  %250 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit219 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %250, i32 0, i32 39
  %251 = load i32, i32* %NumberofBasicUnit219, align 4
  %dec = add nsw i32 %251, -1
  store i32 %dec, i32* %NumberofBasicUnit219, align 4
  %252 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit220 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %252, i32 0, i32 39
  %253 = load i32, i32* %NumberofBasicUnit220, align 4
  %cmp221 = icmp eq i32 %253, 0
  br i1 %cmp221, label %land.lhs.true.223, label %if.end.232

land.lhs.true.223:                                ; preds = %if.else.214
  %254 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type224 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %254, i32 0, i32 5
  %255 = load i32, i32* %type224, align 4
  %cmp225 = icmp eq i32 %255, 0
  br i1 %cmp225, label %land.lhs.true.227, label %if.end.232

land.lhs.true.227:                                ; preds = %land.lhs.true.223
  %256 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number228 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %256, i32 0, i32 0
  %257 = load i32, i32* %number228, align 4
  %258 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub229 = sub nsw i32 %257, %258
  %tobool230 = icmp ne i32 %sub229, 0
  br i1 %tobool230, label %if.then.231, label %if.end.232

if.then.231:                                      ; preds = %land.lhs.true.227
  %259 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %260 = load i32, i32* %topfield.addr, align 4
  call void @updateLastBU(%struct.rc_quadratic* %259, i32 %260)
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.231, %land.lhs.true.227, %land.lhs.true.223, %if.else.214
  %261 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc233 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %261, i32 0, i32 33
  %262 = load i32, i32* %m_Qc233, align 4
  store i32 %262, i32* %retval
  br label %return

if.end.234:                                       ; preds = %if.end.179
  br label %if.end.235

if.end.235:                                       ; preds = %if.end.234, %if.else.154
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236
  %263 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc238 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %263, i32 0, i32 33
  %264 = load i32, i32* %m_Qc238, align 4
  store i32 %264, i32* %retval
  br label %return

return:                                           ; preds = %if.end.237, %if.end.232, %if.then.212, %if.then.201, %if.then.177, %if.then.150, %if.end.144, %if.end.130, %if.end, %if.then.6
  %265 = load i32, i32* %retval
  ret i32 %265
}

; Function Attrs: nounwind uwtable
define void @rc_init_GOP(%struct.rc_quadratic* %prc, i32 %np, i32 %nb) #0 {
entry:
  %prc.addr = alloca %struct.rc_quadratic*, align 8
  %np.addr = alloca i32, align 4
  %nb.addr = alloca i32, align 4
  %Overum = alloca i32, align 4
  %OverBits = alloca i32, align 4
  %OverDuantQp = alloca i32, align 4
  %AllocatedBits = alloca i32, align 4
  %GOPDquant = alloca i32, align 4
  %sum = alloca i32, align 4
  %tmp = alloca i32, align 4
  %level = alloca i32, align 4
  %levels = alloca i32, align 4
  %num_frames = alloca [5 x i32], align 16
  %numer = alloca float, align 4
  %denom = alloca float, align 4
  %gop = alloca i32, align 4
  store %struct.rc_quadratic* %prc, %struct.rc_quadratic** %prc.addr, align 8
  store i32 %np, i32* %np.addr, align 4
  store i32 %nb, i32* %nb.addr, align 4
  store i32 0, i32* %Overum, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCUpdateMode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 162
  %1 = load i32, i32* %RCUpdateMode, align 4
  switch i32 %1, label %sw.default [
    i32 3, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %levels, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 40
  %3 = load i32, i32* %successive_Bframe, align 4
  %add = add nsw i32 %3, 1
  store i32 %add, i32* %gop, align 4
  %4 = bitcast [5 x i32]* %num_frames to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 20, i32 16, i1 false)
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe7 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 40
  %6 = load i32, i32* %successive_Bframe7, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else.38

if.then:                                          ; preds = %sw.bb
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 69
  %8 = load i32, i32* %HierarchicalCoding, align 4
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  store i32 2, i32* %levels, align 4
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe9 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 40
  %10 = load i32, i32* %successive_Bframe9, align 4
  %shr = ashr i32 %10, 1
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %num_frames, i32 0, i64 0
  store i32 %shr, i32* %arrayidx, align 4
  %11 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe10 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %11, i32 0, i32 40
  %12 = load i32, i32* %successive_Bframe10, align 4
  %arrayidx11 = getelementptr inbounds [5 x i32], [5 x i32]* %num_frames, i32 0, i64 0
  %13 = load i32, i32* %arrayidx11, align 4
  %sub = sub nsw i32 %12, %13
  %cmp12 = icmp sge i32 %sub, 0
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.8
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe13 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 40
  %15 = load i32, i32* %successive_Bframe13, align 4
  %arrayidx14 = getelementptr inbounds [5 x i32], [5 x i32]* %num_frames, i32 0, i64 0
  %16 = load i32, i32* %arrayidx14, align 4
  %sub15 = sub nsw i32 %15, %16
  br label %cond.end

cond.false:                                       ; preds = %if.then.8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub15, %cond.true ], [ 0, %cond.false ]
  %arrayidx16 = getelementptr inbounds [5 x i32], [5 x i32]* %num_frames, i32 0, i64 1
  store i32 %cond, i32* %arrayidx16, align 4
  br label %if.end.37

if.else:                                          ; preds = %if.then
  %17 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding17 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %17, i32 0, i32 69
  %18 = load i32, i32* %HierarchicalCoding17, align 4
  %cmp18 = icmp eq i32 %18, 2
  br i1 %cmp18, label %if.then.19, label %if.else.29

if.then.19:                                       ; preds = %if.else
  %19 = load i32, i32* %gop, align 4
  store i32 %19, i32* %tmp, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.19
  %20 = load i32, i32* %tmp, align 4
  %tobool20 = icmp ne i32 %20, 0
  br i1 %tobool20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32, i32* %tmp, align 4
  %and = and i32 %21, 1
  %22 = load i32, i32* %sum, align 4
  %add21 = add nsw i32 %22, %and
  store i32 %add21, i32* %sum, align 4
  %23 = load i32, i32* %tmp, align 4
  %shr22 = ashr i32 %23, 1
  store i32 %shr22, i32* %tmp, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %levels, align 4
  %24 = load i32, i32* %gop, align 4
  store i32 %24, i32* %tmp, align 4
  br label %while.cond.23

while.cond.23:                                    ; preds = %while.body.25, %while.end
  %25 = load i32, i32* %tmp, align 4
  %cmp24 = icmp sgt i32 %25, 1
  br i1 %cmp24, label %while.body.25, label %while.end.28

while.body.25:                                    ; preds = %while.cond.23
  %26 = load i32, i32* %tmp, align 4
  %shr26 = ashr i32 %26, 1
  store i32 %shr26, i32* %tmp, align 4
  %27 = load i32, i32* %levels, align 4
  %shl = shl i32 1, %27
  %28 = load i32, i32* %levels, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx27 = getelementptr inbounds [5 x i32], [5 x i32]* %num_frames, i32 0, i64 %idxprom
  store i32 %shl, i32* %arrayidx27, align 4
  %29 = load i32, i32* %levels, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %levels, align 4
  br label %while.cond.23

while.end.28:                                     ; preds = %while.cond.23
  br label %if.end.36

if.else.29:                                       ; preds = %if.else
  %30 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding30 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %30, i32 0, i32 69
  %31 = load i32, i32* %HierarchicalCoding30, align 4
  %cmp31 = icmp eq i32 %31, 3
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.else.29
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.else.33:                                       ; preds = %if.else.29
  store i32 1, i32* %levels, align 4
  %33 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe34 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %33, i32 0, i32 40
  %34 = load i32, i32* %successive_Bframe34, align 4
  %arrayidx35 = getelementptr inbounds [5 x i32], [5 x i32]* %num_frames, i32 0, i64 0
  store i32 %34, i32* %arrayidx35, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.33
  br label %if.end.36

if.end.36:                                        ; preds = %if.end, %while.end.28
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %cond.end
  %35 = load i32, i32* %levels, align 4
  %36 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %temporal_levels = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %36, i32 0, i32 20
  store i32 %35, i32* %temporal_levels, align 4
  br label %if.end.44

if.else.38:                                       ; preds = %sw.bb
  store i32 0, i32* %level, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.38
  %37 = load i32, i32* %level, align 4
  %cmp39 = icmp slt i32 %37, 5
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i32, i32* %level, align 4
  %idxprom40 = sext i32 %38 to i64
  %39 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCBSliceBitRatio = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %39, i32 0, i32 166
  %arrayidx41 = getelementptr inbounds [5 x double], [5 x double]* %RCBSliceBitRatio, i32 0, i64 %idxprom40
  store double 0.000000e+00, double* %arrayidx41, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %level, align 4
  %inc42 = add nsw i32 %40, 1
  store i32 %inc42, i32* %level, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %temporal_levels43 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %41, i32 0, i32 20
  store i32 0, i32* %temporal_levels43, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %for.end, %if.end.37
  %42 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %42, i32 0, i32 30
  %43 = load i32, i32* %intra_period, align 4
  %tobool45 = icmp ne i32 %43, 0
  br i1 %tobool45, label %cond.false.47, label %cond.true.46

cond.true.46:                                     ; preds = %if.end.44
  br label %cond.end.49

cond.false.47:                                    ; preds = %if.end.44
  %44 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period48 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %44, i32 0, i32 30
  %45 = load i32, i32* %intra_period48, align 4
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.47, %cond.true.46
  %cond50 = phi i32 [ 1, %cond.true.46 ], [ %45, %cond.false.47 ]
  %46 = load i32, i32* %gop, align 4
  %mul = mul nsw i32 %cond50, %46
  %conv = sitofp i32 %mul to double
  %47 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %bit_rate = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %47, i32 0, i32 158
  %48 = load i32, i32* %bit_rate, align 4
  %conv51 = sitofp i32 %48 to double
  %49 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %FrameRate = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %49, i32 0, i32 92
  %50 = load double, double* %FrameRate, align 8
  %div = fdiv double %conv51, %50
  %mul52 = fmul double %conv, %div
  %conv53 = fptrunc double %mul52 to float
  store float %conv53, float* %numer, align 4
  store float 0.000000e+00, float* %denom, align 4
  store i32 0, i32* %level, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.72, %cond.end.49
  %51 = load i32, i32* %level, align 4
  %52 = load i32, i32* %levels, align 4
  %cmp55 = icmp slt i32 %51, %52
  br i1 %cmp55, label %for.body.57, label %for.end.74

for.body.57:                                      ; preds = %for.cond.54
  %53 = load i32, i32* %level, align 4
  %idxprom58 = sext i32 %53 to i64
  %arrayidx59 = getelementptr inbounds [5 x i32], [5 x i32]* %num_frames, i32 0, i64 %idxprom58
  %54 = load i32, i32* %arrayidx59, align 4
  %conv60 = sitofp i32 %54 to double
  %55 = load i32, i32* %level, align 4
  %idxprom61 = sext i32 %55 to i64
  %56 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCBSliceBitRatio62 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %56, i32 0, i32 166
  %arrayidx63 = getelementptr inbounds [5 x double], [5 x double]* %RCBSliceBitRatio62, i32 0, i64 %idxprom61
  %57 = load double, double* %arrayidx63, align 8
  %mul64 = fmul double %conv60, %57
  %conv65 = fptrunc double %mul64 to float
  %58 = load float, float* %denom, align 4
  %add66 = fadd float %58, %conv65
  store float %add66, float* %denom, align 4
  %59 = load i32, i32* %level, align 4
  %idxprom67 = sext i32 %59 to i64
  %arrayidx68 = getelementptr inbounds [5 x i32], [5 x i32]* %num_frames, i32 0, i64 %idxprom67
  %60 = load i32, i32* %arrayidx68, align 4
  %61 = load i32, i32* %np.addr, align 4
  %mul69 = mul nsw i32 %60, %61
  %62 = load i32, i32* %level, align 4
  %idxprom70 = sext i32 %62 to i64
  %63 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %hierNb = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %63, i32 0, i32 21
  %arrayidx71 = getelementptr inbounds [5 x i32], [5 x i32]* %hierNb, i32 0, i64 %idxprom70
  store i32 %mul69, i32* %arrayidx71, align 4
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.body.57
  %64 = load i32, i32* %level, align 4
  %inc73 = add nsw i32 %64, 1
  store i32 %inc73, i32* %level, align 4
  br label %for.cond.54

for.end.74:                                       ; preds = %for.cond.54
  %65 = load float, float* %denom, align 4
  %add75 = fadd float %65, 1.000000e+00
  store float %add75, float* %denom, align 4
  %66 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period76 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %66, i32 0, i32 30
  %67 = load i32, i32* %intra_period76, align 4
  %cmp77 = icmp sge i32 %67, 1
  br i1 %cmp77, label %if.then.79, label %if.end.86

if.then.79:                                       ; preds = %for.end.74
  %68 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period80 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %68, i32 0, i32 30
  %69 = load i32, i32* %intra_period80, align 4
  %conv81 = sitofp i32 %69 to float
  %70 = load float, float* %denom, align 4
  %mul82 = fmul float %70, %conv81
  store float %mul82, float* %denom, align 4
  %71 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCISliceBitRatio = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %71, i32 0, i32 165
  %72 = load double, double* %RCISliceBitRatio, align 8
  %conv83 = fptrunc double %72 to float
  %sub84 = fsub float %conv83, 1.000000e+00
  %73 = load float, float* %denom, align 4
  %add85 = fadd float %73, %sub84
  store float %add85, float* %denom, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.79, %for.end.74
  %74 = load float, float* %numer, align 4
  %75 = load float, float* %denom, align 4
  %div87 = fdiv float %74, %75
  %add88 = fadd float %div87, 5.000000e-01
  %conv89 = fpext float %add88 to double
  %call90 = call double @floor(double %conv89) #8
  %conv91 = fptosi double %call90 to i32
  %76 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %RCPSliceBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %76, i32 0, i32 17
  store i32 %conv91, i32* %RCPSliceBits, align 4
  %77 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period92 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %77, i32 0, i32 30
  %78 = load i32, i32* %intra_period92, align 4
  %tobool93 = icmp ne i32 %78, 0
  br i1 %tobool93, label %cond.true.94, label %cond.false.101

cond.true.94:                                     ; preds = %if.end.86
  %79 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCISliceBitRatio95 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %79, i32 0, i32 165
  %80 = load double, double* %RCISliceBitRatio95, align 8
  %81 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %RCPSliceBits96 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %81, i32 0, i32 17
  %82 = load i32, i32* %RCPSliceBits96, align 4
  %conv97 = sitofp i32 %82 to double
  %mul98 = fmul double %80, %conv97
  %add99 = fadd double %mul98, 5.000000e-01
  %conv100 = fptosi double %add99 to i32
  br label %cond.end.102

cond.false.101:                                   ; preds = %if.end.86
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.101, %cond.true.94
  %cond103 = phi i32 [ %conv100, %cond.true.94 ], [ 0, %cond.false.101 ]
  %83 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %RCISliceBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %83, i32 0, i32 18
  store i32 %cond103, i32* %RCISliceBits, align 4
  store i32 0, i32* %level, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.119, %cond.end.102
  %84 = load i32, i32* %level, align 4
  %85 = load i32, i32* %levels, align 4
  %cmp105 = icmp slt i32 %84, %85
  br i1 %cmp105, label %for.body.107, label %for.end.121

for.body.107:                                     ; preds = %for.cond.104
  %86 = load i32, i32* %level, align 4
  %idxprom108 = sext i32 %86 to i64
  %87 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCBSliceBitRatio109 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %87, i32 0, i32 166
  %arrayidx110 = getelementptr inbounds [5 x double], [5 x double]* %RCBSliceBitRatio109, i32 0, i64 %idxprom108
  %88 = load double, double* %arrayidx110, align 8
  %89 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %RCPSliceBits111 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %89, i32 0, i32 17
  %90 = load i32, i32* %RCPSliceBits111, align 4
  %conv112 = sitofp i32 %90 to double
  %mul113 = fmul double %88, %conv112
  %add114 = fadd double %mul113, 5.000000e-01
  %call115 = call double @floor(double %add114) #8
  %conv116 = fptosi double %call115 to i32
  %91 = load i32, i32* %level, align 4
  %idxprom117 = sext i32 %91 to i64
  %92 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %RCBSliceBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %92, i32 0, i32 19
  %arrayidx118 = getelementptr inbounds [5 x i32], [5 x i32]* %RCBSliceBits, i32 0, i64 %idxprom117
  store i32 %conv116, i32* %arrayidx118, align 4
  br label %for.inc.119

for.inc.119:                                      ; preds = %for.body.107
  %93 = load i32, i32* %level, align 4
  %inc120 = add nsw i32 %93, 1
  store i32 %inc120, i32* %level, align 4
  br label %for.cond.104

for.end.121:                                      ; preds = %for.cond.104
  %94 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period122 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %94, i32 0, i32 30
  %95 = load i32, i32* %intra_period122, align 4
  %tobool123 = icmp ne i32 %95, 0
  br i1 %tobool123, label %cond.true.124, label %cond.false.128

cond.true.124:                                    ; preds = %for.end.121
  %96 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %96, i32 0, i32 2
  %97 = load i32, i32* %no_frames, align 4
  %sub125 = sub nsw i32 %97, 1
  %98 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period126 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %98, i32 0, i32 30
  %99 = load i32, i32* %intra_period126, align 4
  %div127 = sdiv i32 %sub125, %99
  br label %cond.end.129

cond.false.128:                                   ; preds = %for.end.121
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.128, %cond.true.124
  %cond130 = phi i32 [ %div127, %cond.true.124 ], [ 0, %cond.false.128 ]
  %100 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NIslice = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %100, i32 0, i32 23
  store i32 %cond130, i32* %NIslice, align 4
  %101 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames131 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %101, i32 0, i32 2
  %102 = load i32, i32* %no_frames131, align 4
  %sub132 = sub nsw i32 %102, 1
  %103 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NIslice133 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %103, i32 0, i32 23
  %104 = load i32, i32* %NIslice133, align 4
  %sub134 = sub nsw i32 %sub132, %104
  %105 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NPslice = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %105, i32 0, i32 22
  store i32 %sub134, i32* %NPslice, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end.129
  %106 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %RemainingBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %106, i32 0, i32 16
  %107 = load i32, i32* %RemainingBits, align 4
  %cmp135 = icmp slt i32 %107, 0
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %sw.epilog
  store i32 1, i32* %Overum, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %sw.epilog
  %108 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %RemainingBits139 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %108, i32 0, i32 16
  %109 = load i32, i32* %RemainingBits139, align 4
  %sub140 = sub nsw i32 0, %109
  store i32 %sub140, i32* %OverBits, align 4
  %110 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %RemainingBits141 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %110, i32 0, i32 16
  %111 = load i32, i32* %RemainingBits141, align 4
  %conv142 = sitofp i32 %111 to float
  %112 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %bit_rate143 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %112, i32 0, i32 0
  %113 = load float, float* %bit_rate143, align 4
  %114 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %frame_rate = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %114, i32 0, i32 1
  %115 = load float, float* %frame_rate, align 4
  %div144 = fdiv float %113, %115
  %add145 = fadd float %conv142, %div144
  %conv146 = fptosi float %add145 to i32
  %116 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %LowerBound = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %116, i32 0, i32 75
  store i32 %conv146, i32* %LowerBound, align 4
  %117 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %RemainingBits147 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %117, i32 0, i32 16
  %118 = load i32, i32* %RemainingBits147, align 4
  %conv148 = sitofp i32 %118 to double
  %119 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %bit_rate149 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %119, i32 0, i32 0
  %120 = load float, float* %bit_rate149, align 4
  %conv150 = fpext float %120 to double
  %mul151 = fmul double %conv150, 2.048000e+00
  %add152 = fadd double %conv148, %mul151
  %conv153 = fptosi double %add152 to i32
  %121 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %UpperBound1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %121, i32 0, i32 73
  store i32 %conv153, i32* %UpperBound1, align 4
  %122 = load i32, i32* %np.addr, align 4
  %add154 = add nsw i32 1, %122
  %123 = load i32, i32* %nb.addr, align 4
  %add155 = add nsw i32 %add154, %123
  %conv156 = sitofp i32 %add155 to float
  %124 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %bit_rate157 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %124, i32 0, i32 0
  %125 = load float, float* %bit_rate157, align 4
  %mul158 = fmul float %conv156, %125
  %126 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %frame_rate159 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %126, i32 0, i32 1
  %127 = load float, float* %frame_rate159, align 4
  %div160 = fdiv float %mul158, %127
  %conv161 = fpext float %div160 to double
  %add162 = fadd double %conv161, 5.000000e-01
  %call163 = call double @floor(double %add162) #8
  %conv164 = fptosi double %call163 to i32
  store i32 %conv164, i32* %AllocatedBits, align 4
  %128 = load i32, i32* %AllocatedBits, align 4
  %129 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %RemainingBits165 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %129, i32 0, i32 16
  %130 = load i32, i32* %RemainingBits165, align 4
  %add166 = add nsw i32 %130, %128
  store i32 %add166, i32* %RemainingBits165, align 4
  %131 = load i32, i32* %np.addr, align 4
  %132 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Np = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %132, i32 0, i32 70
  store i32 %131, i32* %Np, align 4
  %133 = load i32, i32* %nb.addr, align 4
  %134 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Nb = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %134, i32 0, i32 71
  store i32 %133, i32* %Nb, align 4
  %135 = load i32, i32* %OverBits, align 4
  %mul167 = mul nsw i32 8, %135
  %136 = load i32, i32* %AllocatedBits, align 4
  %div168 = sdiv i32 %mul167, %136
  %conv169 = sitofp i32 %div168 to double
  %add170 = fadd double %conv169, 5.000000e-01
  %conv171 = fptosi double %add170 to i32
  store i32 %conv171, i32* %OverDuantQp, align 4
  %137 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %GOPOverdue = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %137, i32 0, i32 63
  store i32 0, i32* %GOPOverdue, align 4
  %138 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %138, i32 0, i32 121
  %139 = load i32, i32* %PicInterlace, align 4
  %tobool172 = icmp ne i32 %139, 0
  br i1 %tobool172, label %if.else.178, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.138
  %140 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %140, i32 0, i32 122
  %141 = load i32, i32* %MbInterlace, align 4
  %tobool173 = icmp ne i32 %141, 0
  br i1 %tobool173, label %land.lhs.true.174, label %if.else.178

land.lhs.true.174:                                ; preds = %land.lhs.true
  %142 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %142, i32 0, i32 160
  %143 = load i32, i32* %basicunit, align 4
  %144 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %144, i32 0, i32 120
  %145 = load i32, i32* %FrameSizeInMbs, align 4
  %cmp175 = icmp eq i32 %143, %145
  br i1 %cmp175, label %if.then.177, label %if.else.178

if.then.177:                                      ; preds = %land.lhs.true.174
  %146 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NoGranularFieldRC = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %146, i32 0, i32 3
  store i32 0, i32* %NoGranularFieldRC, align 4
  br label %if.end.180

if.else.178:                                      ; preds = %land.lhs.true.174, %land.lhs.true, %if.end.138
  %147 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NoGranularFieldRC179 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %147, i32 0, i32 3
  store i32 1, i32* %NoGranularFieldRC179, align 4
  br label %if.end.180

if.end.180:                                       ; preds = %if.else.178, %if.then.177
  %148 = load i32, i32* %np.addr, align 4
  %149 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalPFrame = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %149, i32 0, i32 79
  store i32 %148, i32* %TotalPFrame, align 4
  %150 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofGOP = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %150, i32 0, i32 10
  %151 = load i32, i32* %NumberofGOP, align 4
  %inc181 = add nsw i32 %151, 1
  store i32 %inc181, i32* %NumberofGOP, align 4
  %152 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofGOP182 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %152, i32 0, i32 10
  %153 = load i32, i32* %NumberofGOP182, align 4
  %cmp183 = icmp eq i32 %153, 1
  br i1 %cmp183, label %if.then.185, label %if.else.194

if.then.185:                                      ; preds = %if.end.180
  %154 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SeinitialQP = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %154, i32 0, i32 159
  %155 = load i32, i32* %SeinitialQP, align 4
  %156 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MyInitialQp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %156, i32 0, i32 11
  store i32 %155, i32* %MyInitialQp, align 4
  %157 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MyInitialQp186 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %157, i32 0, i32 11
  %158 = load i32, i32* %MyInitialQp186, align 4
  %sub187 = sub nsw i32 %158, 1
  %159 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %159, i32 0, i32 36
  store i32 %sub187, i32* %CurrLastQP, align 4
  %160 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MyInitialQp188 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %160, i32 0, i32 11
  %161 = load i32, i32* %MyInitialQp188, align 4
  %162 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %QPLastGOP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %162, i32 0, i32 54
  store i32 %161, i32* %QPLastGOP, align 4
  %163 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MyInitialQp189 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %163, i32 0, i32 11
  %164 = load i32, i32* %MyInitialQp189, align 4
  %165 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveFrameQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %165, i32 0, i32 43
  store i32 %164, i32* %PAveFrameQP, align 4
  %166 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveFrameQP190 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %166, i32 0, i32 43
  %167 = load i32, i32* %PAveFrameQP190, align 4
  %168 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %168, i32 0, i32 33
  store i32 %167, i32* %m_Qc, align 4
  %169 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveFrameQP191 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %169, i32 0, i32 43
  %170 = load i32, i32* %PAveFrameQP191, align 4
  %171 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FieldQPBuffer = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %171, i32 0, i32 55
  store i32 %170, i32* %FieldQPBuffer, align 4
  %172 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveFrameQP192 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %172, i32 0, i32 43
  %173 = load i32, i32* %PAveFrameQP192, align 4
  %174 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FrameQPBuffer = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %174, i32 0, i32 56
  store i32 %173, i32* %FrameQPBuffer, align 4
  %175 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveFrameQP193 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %175, i32 0, i32 43
  %176 = load i32, i32* %PAveFrameQP193, align 4
  %177 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAverageQp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %177, i32 0, i32 12
  store i32 %176, i32* %PAverageQp, align 4
  br label %if.end.265

if.else.194:                                      ; preds = %if.end.180
  %178 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace195 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %178, i32 0, i32 121
  %179 = load i32, i32* %PicInterlace195, align 4
  %cmp196 = icmp eq i32 %179, 2
  br i1 %cmp196, label %if.then.200, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.194
  %180 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace198 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %180, i32 0, i32 122
  %181 = load i32, i32* %MbInterlace198, align 4
  %tobool199 = icmp ne i32 %181, 0
  br i1 %tobool199, label %if.then.200, label %if.end.214

if.then.200:                                      ; preds = %lor.lhs.false, %if.else.194
  %182 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldFrame = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %182, i32 0, i32 2
  %183 = load i32, i32* %FieldFrame, align 4
  %cmp201 = icmp eq i32 %183, 1
  br i1 %cmp201, label %if.then.203, label %if.else.207

if.then.203:                                      ; preds = %if.then.200
  %184 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FrameQPBuffer204 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %184, i32 0, i32 56
  %185 = load i32, i32* %FrameQPBuffer204, align 4
  %186 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %TotalQpforPPicture = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %186, i32 0, i32 11
  %187 = load i32, i32* %TotalQpforPPicture, align 4
  %add205 = add nsw i32 %187, %185
  store i32 %add205, i32* %TotalQpforPPicture, align 4
  %188 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FrameQPBuffer206 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %188, i32 0, i32 56
  %189 = load i32, i32* %FrameQPBuffer206, align 4
  %190 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %QPLastPFrame = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %190, i32 0, i32 53
  store i32 %189, i32* %QPLastPFrame, align 4
  br label %if.end.213

if.else.207:                                      ; preds = %if.then.200
  %191 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FieldQPBuffer208 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %191, i32 0, i32 55
  %192 = load i32, i32* %FieldQPBuffer208, align 4
  %193 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %TotalQpforPPicture209 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %193, i32 0, i32 11
  %194 = load i32, i32* %TotalQpforPPicture209, align 4
  %add210 = add nsw i32 %194, %192
  store i32 %add210, i32* %TotalQpforPPicture209, align 4
  %195 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FieldQPBuffer211 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %195, i32 0, i32 55
  %196 = load i32, i32* %FieldQPBuffer211, align 4
  %197 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %QPLastPFrame212 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %197, i32 0, i32 53
  store i32 %196, i32* %QPLastPFrame212, align 4
  br label %if.end.213

if.end.213:                                       ; preds = %if.else.207, %if.then.203
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %lor.lhs.false
  %198 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %TotalQpforPPicture215 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %198, i32 0, i32 11
  %199 = load i32, i32* %TotalQpforPPicture215, align 4
  %conv216 = sitofp i32 %199 to double
  %mul217 = fmul double 1.000000e+00, %conv216
  %200 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofPPicture = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %200, i32 0, i32 12
  %201 = load i32, i32* %NumberofPPicture, align 4
  %conv218 = sitofp i32 %201 to double
  %div219 = fdiv double %mul217, %conv218
  %add220 = fadd double %div219, 5.000000e-01
  %conv221 = fptosi double %add220 to i32
  %202 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAverageQp222 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %202, i32 0, i32 12
  store i32 %conv221, i32* %PAverageQp222, align 4
  %203 = load i32, i32* %np.addr, align 4
  %204 = load i32, i32* %nb.addr, align 4
  %add223 = add nsw i32 %203, %204
  %add224 = add nsw i32 %add223, 1
  %conv225 = sitofp i32 %add224 to double
  %mul226 = fmul double 1.000000e+00, %conv225
  %div227 = fdiv double %mul226, 1.500000e+01
  %add228 = fadd double %div227, 5.000000e-01
  %conv229 = fptosi double %add228 to i32
  store i32 %conv229, i32* %GOPDquant, align 4
  %205 = load i32, i32* %GOPDquant, align 4
  %cmp230 = icmp sgt i32 %205, 2
  br i1 %cmp230, label %if.then.232, label %if.end.233

if.then.232:                                      ; preds = %if.end.214
  store i32 2, i32* %GOPDquant, align 4
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.232, %if.end.214
  %206 = load i32, i32* %GOPDquant, align 4
  %207 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAverageQp234 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %207, i32 0, i32 12
  %208 = load i32, i32* %PAverageQp234, align 4
  %sub235 = sub nsw i32 %208, %206
  store i32 %sub235, i32* %PAverageQp234, align 4
  %209 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAverageQp236 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %209, i32 0, i32 12
  %210 = load i32, i32* %PAverageQp236, align 4
  %211 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %QPLastPFrame237 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %211, i32 0, i32 53
  %212 = load i32, i32* %QPLastPFrame237, align 4
  %sub238 = sub nsw i32 %212, 2
  %cmp239 = icmp sgt i32 %210, %sub238
  br i1 %cmp239, label %if.then.241, label %if.end.243

if.then.241:                                      ; preds = %if.end.233
  %213 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAverageQp242 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %213, i32 0, i32 12
  %214 = load i32, i32* %PAverageQp242, align 4
  %dec = add nsw i32 %214, -1
  store i32 %dec, i32* %PAverageQp242, align 4
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.241, %if.end.233
  %215 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %QPLastGOP244 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %215, i32 0, i32 54
  %216 = load i32, i32* %QPLastGOP244, align 4
  %sub245 = sub nsw i32 %216, 2
  %217 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %QPLastGOP246 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %217, i32 0, i32 54
  %218 = load i32, i32* %QPLastGOP246, align 4
  %add247 = add nsw i32 %218, 2
  %219 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAverageQp248 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %219, i32 0, i32 12
  %220 = load i32, i32* %PAverageQp248, align 4
  %call249 = call i32 @iClip3(i32 %sub245, i32 %add247, i32 %220)
  %221 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAverageQp250 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %221, i32 0, i32 12
  store i32 %call249, i32* %PAverageQp250, align 4
  %222 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MIN_QUANT = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %222, i32 0, i32 10
  %223 = load i32, i32* %RC_MIN_QUANT, align 4
  %224 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MAX_QUANT = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %224, i32 0, i32 9
  %225 = load i32, i32* %RC_MAX_QUANT, align 4
  %226 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAverageQp251 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %226, i32 0, i32 12
  %227 = load i32, i32* %PAverageQp251, align 4
  %call252 = call i32 @iClip3(i32 %223, i32 %225, i32 %227)
  %228 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAverageQp253 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %228, i32 0, i32 12
  store i32 %call252, i32* %PAverageQp253, align 4
  %229 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAverageQp254 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %229, i32 0, i32 12
  %230 = load i32, i32* %PAverageQp254, align 4
  %231 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MyInitialQp255 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %231, i32 0, i32 11
  store i32 %230, i32* %MyInitialQp255, align 4
  %232 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAverageQp256 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %232, i32 0, i32 12
  %233 = load i32, i32* %PAverageQp256, align 4
  %234 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_Qp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %234, i32 0, i32 29
  store i32 %233, i32* %Pm_Qp, align 4
  %235 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAverageQp257 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %235, i32 0, i32 12
  %236 = load i32, i32* %PAverageQp257, align 4
  %237 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveFrameQP258 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %237, i32 0, i32 43
  store i32 %236, i32* %PAveFrameQP258, align 4
  %238 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MyInitialQp259 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %238, i32 0, i32 11
  %239 = load i32, i32* %MyInitialQp259, align 4
  %240 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %QPLastGOP260 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %240, i32 0, i32 54
  store i32 %239, i32* %QPLastGOP260, align 4
  %241 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP261 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %241, i32 0, i32 36
  %242 = load i32, i32* %CurrLastQP261, align 4
  %243 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %243, i32 0, i32 35
  store i32 %242, i32* %PrevLastQP, align 4
  %244 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MyInitialQp262 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %244, i32 0, i32 11
  %245 = load i32, i32* %MyInitialQp262, align 4
  %sub263 = sub nsw i32 %245, 1
  %246 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP264 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %246, i32 0, i32 36
  store i32 %sub263, i32* %CurrLastQP264, align 4
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.243, %if.then.185
  %247 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %TotalQpforPPicture266 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %247, i32 0, i32 11
  store i32 0, i32* %TotalQpforPPicture266, align 4
  %248 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofPPicture267 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %248, i32 0, i32 12
  store i32 0, i32* %NumberofPPicture267, align 4
  %249 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBFrames = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %249, i32 0, i32 37
  store i32 0, i32* %NumberofBFrames, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind readnone
declare double @floor(double) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iClip3(i32 %low, i32 %high, i32 %x) #6 {
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

; Function Attrs: nounwind uwtable
define void @rc_init_pict(%struct.rc_quadratic* %prc, i32 %fieldpic, i32 %topfield, i32 %targetcomputation, float %mult) #0 {
entry:
  %prc.addr = alloca %struct.rc_quadratic*, align 8
  %fieldpic.addr = alloca i32, align 4
  %topfield.addr = alloca i32, align 4
  %targetcomputation.addr = alloca i32, align 4
  %mult.addr = alloca float, align 4
  %tmp_T = alloca i32, align 4
  %level_idx = alloca i32, align 4
  %bitrate = alloca i32, align 4
  %level = alloca i32, align 4
  %denom = alloca i32, align 4
  store %struct.rc_quadratic* %prc, %struct.rc_quadratic** %prc.addr, align 8
  store i32 %fieldpic, i32* %fieldpic.addr, align 4
  store i32 %topfield, i32* %topfield.addr, align 4
  store i32 %targetcomputation, i32* %targetcomputation.addr, align 4
  store float %mult, float* %mult.addr, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 122
  %1 = load i32, i32* %MbInterlace, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 120
  %3 = load i32, i32* %FrameSizeInMbs, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 132
  %5 = load i32, i32* %BasicUnit, align 4
  %div = udiv i32 %3, %5
  %6 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %6, i32 0, i32 44
  store i32 %div, i32* %TotalNumberofBasicUnit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedMacroBlocks = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 128
  store i32 0, i32* %NumberofCodedMacroBlocks, align 4
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %channel_type = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 161
  %9 = load i32, i32* %channel_type, align 4
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then.1, label %if.end.12

if.then.1:                                        ; preds = %if.end
  %10 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedPFrame = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %10, i32 0, i32 9
  %11 = load i32, i32* %NumberofCodedPFrame, align 4
  %cmp2 = icmp eq i32 %11, 58
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then.1
  %12 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %bit_rate = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %12, i32 0, i32 0
  %13 = load float, float* %bit_rate, align 4
  %conv = fpext float %13 to double
  %mul = fmul double %conv, 1.500000e+00
  %conv4 = fptrunc double %mul to float
  store float %conv4, float* %bit_rate, align 4
  br label %if.end.11

if.else:                                          ; preds = %if.then.1
  %14 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedPFrame5 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %14, i32 0, i32 9
  %15 = load i32, i32* %NumberofCodedPFrame5, align 4
  %cmp6 = icmp eq i32 %15, 59
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.else
  %16 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %bit_rate9 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %16, i32 0, i32 0
  %17 = load float, float* %bit_rate9, align 4
  %18 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevBitRate = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %18, i32 0, i32 2
  store float %17, float* %PrevBitRate, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.3
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  %19 = load i32, i32* %fieldpic.addr, align 4
  %tobool13 = icmp ne i32 %19, 0
  br i1 %tobool13, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.12
  %20 = load i32, i32* %topfield.addr, align 4
  %tobool14 = icmp ne i32 %20, 0
  br i1 %tobool14, label %land.lhs.true, label %if.end.565

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end.12
  %21 = load i32, i32* %targetcomputation.addr, align 4
  %tobool15 = icmp ne i32 %21, 0
  br i1 %tobool15, label %if.then.16, label %if.end.565

if.then.16:                                       ; preds = %land.lhs.true
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 5
  %23 = load i32, i32* %type, align 4
  %cmp17 = icmp eq i32 %23, 0
  br i1 %cmp17, label %land.lhs.true.22, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %if.then.16
  %24 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCUpdateMode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %24, i32 0, i32 162
  %25 = load i32, i32* %RCUpdateMode, align 4
  %cmp20 = icmp eq i32 %25, 1
  br i1 %cmp20, label %land.lhs.true.22, label %if.else.225

land.lhs.true.22:                                 ; preds = %lor.lhs.false.19, %if.then.16
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 0
  %27 = load i32, i32* %number, align 4
  %28 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub = sub nsw i32 %27, %28
  %tobool23 = icmp ne i32 %sub, 0
  br i1 %tobool23, label %if.then.24, label %if.else.225

if.then.24:                                       ; preds = %land.lhs.true.22
  %29 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevBitRate25 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %29, i32 0, i32 2
  %30 = load float, float* %PrevBitRate25, align 4
  %31 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %bit_rate26 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %31, i32 0, i32 0
  %32 = load float, float* %bit_rate26, align 4
  %cmp27 = fcmp une float %30, %32
  br i1 %cmp27, label %if.then.29, label %if.end.40

if.then.29:                                       ; preds = %if.then.24
  %33 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %bit_rate30 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %33, i32 0, i32 0
  %34 = load float, float* %bit_rate30, align 4
  %35 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevBitRate31 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %35, i32 0, i32 2
  %36 = load float, float* %PrevBitRate31, align 4
  %sub32 = fsub float %34, %36
  %37 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Np = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %37, i32 0, i32 70
  %38 = load i32, i32* %Np, align 4
  %39 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Nb = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %39, i32 0, i32 71
  %40 = load i32, i32* %Nb, align 4
  %add = add nsw i32 %38, %40
  %conv33 = sitofp i32 %add to float
  %mul34 = fmul float %sub32, %conv33
  %41 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %frame_rate = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %41, i32 0, i32 1
  %42 = load float, float* %frame_rate, align 4
  %div35 = fdiv float %mul34, %42
  %conv36 = fpext float %div35 to double
  %add37 = fadd double %conv36, 5.000000e-01
  %call = call double @floor(double %add37) #8
  %conv38 = fptosi double %call to i32
  %43 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %RemainingBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %43, i32 0, i32 16
  %44 = load i32, i32* %RemainingBits, align 4
  %add39 = add nsw i32 %44, %conv38
  store i32 %add39, i32* %RemainingBits, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.29, %if.then.24
  %45 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit41 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %45, i32 0, i32 132
  %46 = load i32, i32* %BasicUnit41, align 4
  %47 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs42 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %47, i32 0, i32 120
  %48 = load i32, i32* %FrameSizeInMbs42, align 4
  %cmp43 = icmp eq i32 %46, %48
  br i1 %cmp43, label %if.then.45, label %if.else.69

if.then.45:                                       ; preds = %if.end.40
  %49 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofPPicture = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %49, i32 0, i32 12
  %50 = load i32, i32* %NumberofPPicture, align 4
  %cmp46 = icmp eq i32 %50, 1
  br i1 %cmp46, label %if.then.48, label %if.else.59

if.then.48:                                       ; preds = %if.then.45
  %51 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %CurrentBufferFullness = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %51, i32 0, i32 15
  %52 = load i64, i64* %CurrentBufferFullness, align 8
  %conv49 = sitofp i64 %52 to double
  %53 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TargetBufferLevel = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %53, i32 0, i32 6
  store double %conv49, double* %TargetBufferLevel, align 8
  %54 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %CurrentBufferFullness50 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %54, i32 0, i32 15
  %55 = load i64, i64* %CurrentBufferFullness50, align 8
  %conv51 = sitofp i64 %55 to double
  %56 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %GOPTargetBufferLevel = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %56, i32 0, i32 5
  %57 = load double, double* %GOPTargetBufferLevel, align 8
  %sub52 = fsub double %conv51, %57
  %58 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalPFrame = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %58, i32 0, i32 79
  %59 = load i32, i32* %TotalPFrame, align 4
  %sub53 = sub nsw i32 %59, 1
  %conv54 = sitofp i32 %sub53 to double
  %div55 = fdiv double %sub52, %conv54
  %60 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %DeltaP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %60, i32 0, i32 78
  store double %div55, double* %DeltaP, align 8
  %61 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %DeltaP56 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %61, i32 0, i32 78
  %62 = load double, double* %DeltaP56, align 8
  %63 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TargetBufferLevel57 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %63, i32 0, i32 6
  %64 = load double, double* %TargetBufferLevel57, align 8
  %sub58 = fsub double %64, %62
  store double %sub58, double* %TargetBufferLevel57, align 8
  br label %if.end.68

if.else.59:                                       ; preds = %if.then.45
  %65 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofPPicture60 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %65, i32 0, i32 12
  %66 = load i32, i32* %NumberofPPicture60, align 4
  %cmp61 = icmp sgt i32 %66, 1
  br i1 %cmp61, label %if.then.63, label %if.end.67

if.then.63:                                       ; preds = %if.else.59
  %67 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %DeltaP64 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %67, i32 0, i32 78
  %68 = load double, double* %DeltaP64, align 8
  %69 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TargetBufferLevel65 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %69, i32 0, i32 6
  %70 = load double, double* %TargetBufferLevel65, align 8
  %sub66 = fsub double %70, %68
  store double %sub66, double* %TargetBufferLevel65, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.63, %if.else.59
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.48
  br label %if.end.159

if.else.69:                                       ; preds = %if.end.40
  %71 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedPFrame70 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %71, i32 0, i32 9
  %72 = load i32, i32* %NumberofCodedPFrame70, align 4
  %cmp71 = icmp sgt i32 %72, 0
  br i1 %cmp71, label %if.then.73, label %if.end.91

if.then.73:                                       ; preds = %if.else.69
  %73 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %73, i32 0, i32 121
  %74 = load i32, i32* %PicInterlace, align 4
  %cmp74 = icmp eq i32 %74, 2
  br i1 %cmp74, label %land.lhs.true.79, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %if.then.73
  %75 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace77 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %75, i32 0, i32 122
  %76 = load i32, i32* %MbInterlace77, align 4
  %tobool78 = icmp ne i32 %76, 0
  br i1 %tobool78, label %land.lhs.true.79, label %if.else.86

land.lhs.true.79:                                 ; preds = %lor.lhs.false.76, %if.then.73
  %77 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %77, i32 0, i32 1
  %78 = load i32, i32* %FieldControl, align 4
  %cmp80 = icmp eq i32 %78, 1
  br i1 %cmp80, label %if.then.82, label %if.else.86

if.then.82:                                       ; preds = %land.lhs.true.79
  %79 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FCBUPFMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %79, i32 0, i32 62
  %80 = load double*, double** %FCBUPFMAD, align 8
  %81 = bitcast double* %80 to i8*
  %82 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FCBUCFMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %82, i32 0, i32 61
  %83 = load double*, double** %FCBUCFMAD, align 8
  %84 = bitcast double* %83 to i8*
  %85 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit83 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %85, i32 0, i32 44
  %86 = load i32, i32* %TotalNumberofBasicUnit83, align 4
  %conv84 = sext i32 %86 to i64
  %mul85 = mul i64 %conv84, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %84, i64 %mul85, i32 1, i1 false)
  br label %if.end.90

if.else.86:                                       ; preds = %land.lhs.true.79, %lor.lhs.false.76
  %87 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %BUPFMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %87, i32 0, i32 59
  %88 = load double*, double** %BUPFMAD, align 8
  %89 = bitcast double* %88 to i8*
  %90 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %BUCFMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %90, i32 0, i32 60
  %91 = load double*, double** %BUCFMAD, align 8
  %92 = bitcast double* %91 to i8*
  %93 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit87 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %93, i32 0, i32 44
  %94 = load i32, i32* %TotalNumberofBasicUnit87, align 4
  %conv88 = sext i32 %94 to i64
  %mul89 = mul i64 %conv88, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %92, i64 %mul89, i32 1, i1 false)
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.86, %if.then.82
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.else.69
  %95 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofGOP = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %95, i32 0, i32 10
  %96 = load i32, i32* %NumberofGOP, align 4
  %cmp92 = icmp eq i32 %96, 1
  br i1 %cmp92, label %if.then.94, label %if.else.124

if.then.94:                                       ; preds = %if.end.91
  %97 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofPPicture95 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %97, i32 0, i32 12
  %98 = load i32, i32* %NumberofPPicture95, align 4
  %cmp96 = icmp eq i32 %98, 1
  br i1 %cmp96, label %if.then.98, label %if.else.114

if.then.98:                                       ; preds = %if.then.94
  %99 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %CurrentBufferFullness99 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %99, i32 0, i32 15
  %100 = load i64, i64* %CurrentBufferFullness99, align 8
  %conv100 = sitofp i64 %100 to double
  %101 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TargetBufferLevel101 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %101, i32 0, i32 6
  store double %conv100, double* %TargetBufferLevel101, align 8
  %102 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %CurrentBufferFullness102 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %102, i32 0, i32 15
  %103 = load i64, i64* %CurrentBufferFullness102, align 8
  %conv103 = sitofp i64 %103 to double
  %104 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %GOPTargetBufferLevel104 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %104, i32 0, i32 5
  %105 = load double, double* %GOPTargetBufferLevel104, align 8
  %sub105 = fsub double %conv103, %105
  %106 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalPFrame106 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %106, i32 0, i32 79
  %107 = load i32, i32* %TotalPFrame106, align 4
  %sub107 = sub nsw i32 %107, 1
  %conv108 = sitofp i32 %sub107 to double
  %div109 = fdiv double %sub105, %conv108
  %108 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %DeltaP110 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %108, i32 0, i32 78
  store double %div109, double* %DeltaP110, align 8
  %109 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %DeltaP111 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %109, i32 0, i32 78
  %110 = load double, double* %DeltaP111, align 8
  %111 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TargetBufferLevel112 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %111, i32 0, i32 6
  %112 = load double, double* %TargetBufferLevel112, align 8
  %sub113 = fsub double %112, %110
  store double %sub113, double* %TargetBufferLevel112, align 8
  br label %if.end.123

if.else.114:                                      ; preds = %if.then.94
  %113 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofPPicture115 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %113, i32 0, i32 12
  %114 = load i32, i32* %NumberofPPicture115, align 4
  %cmp116 = icmp sgt i32 %114, 1
  br i1 %cmp116, label %if.then.118, label %if.end.122

if.then.118:                                      ; preds = %if.else.114
  %115 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %DeltaP119 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %115, i32 0, i32 78
  %116 = load double, double* %DeltaP119, align 8
  %117 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TargetBufferLevel120 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %117, i32 0, i32 6
  %118 = load double, double* %TargetBufferLevel120, align 8
  %sub121 = fsub double %118, %116
  store double %sub121, double* %TargetBufferLevel120, align 8
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.118, %if.else.114
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.98
  br label %if.end.158

if.else.124:                                      ; preds = %if.end.91
  %119 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofGOP125 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %119, i32 0, i32 10
  %120 = load i32, i32* %NumberofGOP125, align 4
  %cmp126 = icmp sgt i32 %120, 1
  br i1 %cmp126, label %if.then.128, label %if.end.157

if.then.128:                                      ; preds = %if.else.124
  %121 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofPPicture129 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %121, i32 0, i32 12
  %122 = load i32, i32* %NumberofPPicture129, align 4
  %cmp130 = icmp eq i32 %122, 0
  br i1 %cmp130, label %if.then.132, label %if.else.147

if.then.132:                                      ; preds = %if.then.128
  %123 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %CurrentBufferFullness133 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %123, i32 0, i32 15
  %124 = load i64, i64* %CurrentBufferFullness133, align 8
  %conv134 = sitofp i64 %124 to double
  %125 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TargetBufferLevel135 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %125, i32 0, i32 6
  store double %conv134, double* %TargetBufferLevel135, align 8
  %126 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %CurrentBufferFullness136 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %126, i32 0, i32 15
  %127 = load i64, i64* %CurrentBufferFullness136, align 8
  %conv137 = sitofp i64 %127 to double
  %128 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %GOPTargetBufferLevel138 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %128, i32 0, i32 5
  %129 = load double, double* %GOPTargetBufferLevel138, align 8
  %sub139 = fsub double %conv137, %129
  %130 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalPFrame140 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %130, i32 0, i32 79
  %131 = load i32, i32* %TotalPFrame140, align 4
  %conv141 = sitofp i32 %131 to double
  %div142 = fdiv double %sub139, %conv141
  %132 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %DeltaP143 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %132, i32 0, i32 78
  store double %div142, double* %DeltaP143, align 8
  %133 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %DeltaP144 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %133, i32 0, i32 78
  %134 = load double, double* %DeltaP144, align 8
  %135 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TargetBufferLevel145 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %135, i32 0, i32 6
  %136 = load double, double* %TargetBufferLevel145, align 8
  %sub146 = fsub double %136, %134
  store double %sub146, double* %TargetBufferLevel145, align 8
  br label %if.end.156

if.else.147:                                      ; preds = %if.then.128
  %137 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofPPicture148 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %137, i32 0, i32 12
  %138 = load i32, i32* %NumberofPPicture148, align 4
  %cmp149 = icmp sgt i32 %138, 0
  br i1 %cmp149, label %if.then.151, label %if.end.155

if.then.151:                                      ; preds = %if.else.147
  %139 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %DeltaP152 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %139, i32 0, i32 78
  %140 = load double, double* %DeltaP152, align 8
  %141 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TargetBufferLevel153 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %141, i32 0, i32 6
  %142 = load double, double* %TargetBufferLevel153, align 8
  %sub154 = fsub double %142, %140
  store double %sub154, double* %TargetBufferLevel153, align 8
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.151, %if.else.147
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.then.132
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %if.else.124
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %if.end.123
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.end.68
  %143 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedPFrame160 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %143, i32 0, i32 9
  %144 = load i32, i32* %NumberofCodedPFrame160, align 4
  %cmp161 = icmp eq i32 %144, 1
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %if.end.159
  %145 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Wp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %145, i32 0, i32 76
  %146 = load double, double* %Wp, align 8
  %147 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %AveWp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %147, i32 0, i32 7
  store double %146, double* %AveWp, align 8
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.163, %if.end.159
  %148 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedPFrame165 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %148, i32 0, i32 9
  %149 = load i32, i32* %NumberofCodedPFrame165, align 4
  %cmp166 = icmp slt i32 %149, 8
  br i1 %cmp166, label %land.lhs.true.168, label %if.else.184

land.lhs.true.168:                                ; preds = %if.end.164
  %150 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedPFrame169 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %150, i32 0, i32 9
  %151 = load i32, i32* %NumberofCodedPFrame169, align 4
  %cmp170 = icmp sgt i32 %151, 1
  br i1 %cmp170, label %if.then.172, label %if.else.184

if.then.172:                                      ; preds = %land.lhs.true.168
  %152 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %AveWp173 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %152, i32 0, i32 7
  %153 = load double, double* %AveWp173, align 8
  %154 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Wp174 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %154, i32 0, i32 76
  %155 = load double, double* %Wp174, align 8
  %156 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedPFrame175 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %156, i32 0, i32 9
  %157 = load i32, i32* %NumberofCodedPFrame175, align 4
  %sub176 = sub nsw i32 %157, 1
  %conv177 = sitofp i32 %sub176 to double
  %mul178 = fmul double %155, %conv177
  %add179 = fadd double %153, %mul178
  %158 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedPFrame180 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %158, i32 0, i32 9
  %159 = load i32, i32* %NumberofCodedPFrame180, align 4
  %conv181 = sitofp i32 %159 to double
  %div182 = fdiv double %add179, %conv181
  %160 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %AveWp183 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %160, i32 0, i32 7
  store double %div182, double* %AveWp183, align 8
  br label %if.end.196

if.else.184:                                      ; preds = %land.lhs.true.168, %if.end.164
  %161 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedPFrame185 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %161, i32 0, i32 9
  %162 = load i32, i32* %NumberofCodedPFrame185, align 4
  %cmp186 = icmp sgt i32 %162, 1
  br i1 %cmp186, label %if.then.188, label %if.end.195

if.then.188:                                      ; preds = %if.else.184
  %163 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Wp189 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %163, i32 0, i32 76
  %164 = load double, double* %Wp189, align 8
  %165 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %AveWp190 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %165, i32 0, i32 7
  %166 = load double, double* %AveWp190, align 8
  %mul191 = fmul double 7.000000e+00, %166
  %add192 = fadd double %164, %mul191
  %div193 = fdiv double %add192, 8.000000e+00
  %167 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %AveWp194 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %167, i32 0, i32 7
  store double %div193, double* %AveWp194, align 8
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.188, %if.else.184
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %if.then.172
  %168 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %168, i32 0, i32 40
  %169 = load i32, i32* %successive_Bframe, align 4
  %cmp197 = icmp sgt i32 %169, 0
  br i1 %cmp197, label %if.then.199, label %if.end.224

if.then.199:                                      ; preds = %if.end.196
  %170 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %AveWp200 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %170, i32 0, i32 7
  %171 = load double, double* %AveWp200, align 8
  %172 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe201 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %172, i32 0, i32 40
  %173 = load i32, i32* %successive_Bframe201, align 4
  %add202 = add nsw i32 %173, 1
  %conv203 = sitofp i32 %add202 to double
  %mul204 = fmul double %171, %conv203
  %174 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %bit_rate205 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %174, i32 0, i32 0
  %175 = load float, float* %bit_rate205, align 4
  %conv206 = fpext float %175 to double
  %mul207 = fmul double %mul204, %conv206
  %176 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %frame_rate208 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %176, i32 0, i32 1
  %177 = load float, float* %frame_rate208, align 4
  %conv209 = fpext float %177 to double
  %178 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %AveWp210 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %178, i32 0, i32 7
  %179 = load double, double* %AveWp210, align 8
  %180 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %AveWb = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %180, i32 0, i32 8
  %181 = load double, double* %AveWb, align 8
  %182 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe211 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %182, i32 0, i32 40
  %183 = load i32, i32* %successive_Bframe211, align 4
  %conv212 = sitofp i32 %183 to double
  %mul213 = fmul double %181, %conv212
  %add214 = fadd double %179, %mul213
  %mul215 = fmul double %conv209, %add214
  %div216 = fdiv double %mul207, %mul215
  %184 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %bit_rate217 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %184, i32 0, i32 0
  %185 = load float, float* %bit_rate217, align 4
  %186 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %frame_rate218 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %186, i32 0, i32 1
  %187 = load float, float* %frame_rate218, align 4
  %div219 = fdiv float %185, %187
  %conv220 = fpext float %div219 to double
  %sub221 = fsub double %div216, %conv220
  %188 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TargetBufferLevel222 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %188, i32 0, i32 6
  %189 = load double, double* %TargetBufferLevel222, align 8
  %add223 = fadd double %189, %sub221
  store double %add223, double* %TargetBufferLevel222, align 8
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.199, %if.end.196
  br label %if.end.293

if.else.225:                                      ; preds = %land.lhs.true.22, %lor.lhs.false.19
  %190 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type226 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %190, i32 0, i32 5
  %191 = load i32, i32* %type226, align 4
  %cmp227 = icmp eq i32 %191, 1
  br i1 %cmp227, label %if.then.229, label %if.end.292

if.then.229:                                      ; preds = %if.else.225
  %192 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevBitRate230 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %192, i32 0, i32 2
  %193 = load float, float* %PrevBitRate230, align 4
  %194 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %bit_rate231 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %194, i32 0, i32 0
  %195 = load float, float* %bit_rate231, align 4
  %cmp232 = fcmp une float %193, %195
  br i1 %cmp232, label %if.then.234, label %if.end.251

if.then.234:                                      ; preds = %if.then.229
  %196 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %bit_rate235 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %196, i32 0, i32 0
  %197 = load float, float* %bit_rate235, align 4
  %198 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevBitRate236 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %198, i32 0, i32 2
  %199 = load float, float* %PrevBitRate236, align 4
  %sub237 = fsub float %197, %199
  %200 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Np238 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %200, i32 0, i32 70
  %201 = load i32, i32* %Np238, align 4
  %202 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Nb239 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %202, i32 0, i32 71
  %203 = load i32, i32* %Nb239, align 4
  %add240 = add nsw i32 %201, %203
  %conv241 = sitofp i32 %add240 to float
  %mul242 = fmul float %sub237, %conv241
  %204 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %frame_rate243 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %204, i32 0, i32 1
  %205 = load float, float* %frame_rate243, align 4
  %div244 = fdiv float %mul242, %205
  %conv245 = fpext float %div244 to double
  %add246 = fadd double %conv245, 5.000000e-01
  %call247 = call double @floor(double %add246) #8
  %conv248 = fptosi double %call247 to i32
  %206 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %RemainingBits249 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %206, i32 0, i32 16
  %207 = load i32, i32* %RemainingBits249, align 4
  %add250 = add nsw i32 %207, %conv248
  store i32 %add250, i32* %RemainingBits249, align 4
  br label %if.end.251

if.end.251:                                       ; preds = %if.then.234, %if.then.229
  %208 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedPFrame252 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %208, i32 0, i32 9
  %209 = load i32, i32* %NumberofCodedPFrame252, align 4
  %cmp253 = icmp eq i32 %209, 1
  br i1 %cmp253, label %land.lhs.true.255, label %if.else.262

land.lhs.true.255:                                ; preds = %if.end.251
  %210 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedBFrame = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %210, i32 0, i32 8
  %211 = load i32, i32* %NumberofCodedBFrame, align 4
  %cmp256 = icmp eq i32 %211, 1
  br i1 %cmp256, label %if.then.258, label %if.else.262

if.then.258:                                      ; preds = %land.lhs.true.255
  %212 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Wp259 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %212, i32 0, i32 76
  %213 = load double, double* %Wp259, align 8
  %214 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %AveWp260 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %214, i32 0, i32 7
  store double %213, double* %AveWp260, align 8
  %215 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Wb = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %215, i32 0, i32 77
  %216 = load double, double* %Wb, align 8
  %217 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %AveWb261 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %217, i32 0, i32 8
  store double %216, double* %AveWb261, align 8
  br label %if.end.291

if.else.262:                                      ; preds = %land.lhs.true.255, %if.end.251
  %218 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedBFrame263 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %218, i32 0, i32 8
  %219 = load i32, i32* %NumberofCodedBFrame263, align 4
  %cmp264 = icmp sgt i32 %219, 1
  br i1 %cmp264, label %if.then.266, label %if.end.290

if.then.266:                                      ; preds = %if.else.262
  %220 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedBFrame267 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %220, i32 0, i32 8
  %221 = load i32, i32* %NumberofCodedBFrame267, align 4
  %cmp268 = icmp slt i32 %221, 8
  br i1 %cmp268, label %if.then.270, label %if.else.282

if.then.270:                                      ; preds = %if.then.266
  %222 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %AveWb271 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %222, i32 0, i32 8
  %223 = load double, double* %AveWb271, align 8
  %224 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Wb272 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %224, i32 0, i32 77
  %225 = load double, double* %Wb272, align 8
  %226 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedBFrame273 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %226, i32 0, i32 8
  %227 = load i32, i32* %NumberofCodedBFrame273, align 4
  %sub274 = sub nsw i32 %227, 1
  %conv275 = sitofp i32 %sub274 to double
  %mul276 = fmul double %225, %conv275
  %add277 = fadd double %223, %mul276
  %228 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedBFrame278 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %228, i32 0, i32 8
  %229 = load i32, i32* %NumberofCodedBFrame278, align 4
  %conv279 = sitofp i32 %229 to double
  %div280 = fdiv double %add277, %conv279
  %230 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %AveWb281 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %230, i32 0, i32 8
  store double %div280, double* %AveWb281, align 8
  br label %if.end.289

if.else.282:                                      ; preds = %if.then.266
  %231 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Wb283 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %231, i32 0, i32 77
  %232 = load double, double* %Wb283, align 8
  %233 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %AveWb284 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %233, i32 0, i32 8
  %234 = load double, double* %AveWb284, align 8
  %mul285 = fmul double 7.000000e+00, %234
  %add286 = fadd double %232, %mul285
  %div287 = fdiv double %add286, 8.000000e+00
  %235 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %AveWb288 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %235, i32 0, i32 8
  store double %div287, double* %AveWb288, align 8
  br label %if.end.289

if.end.289:                                       ; preds = %if.else.282, %if.then.270
  br label %if.end.290

if.end.290:                                       ; preds = %if.end.289, %if.else.262
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.290, %if.then.258
  br label %if.end.292

if.end.292:                                       ; preds = %if.end.291, %if.else.225
  br label %if.end.293

if.end.293:                                       ; preds = %if.end.292, %if.end.224
  %236 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type294 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %236, i32 0, i32 5
  %237 = load i32, i32* %type294, align 4
  %cmp295 = icmp eq i32 %237, 0
  br i1 %cmp295, label %land.lhs.true.305, label %lor.lhs.false.297

lor.lhs.false.297:                                ; preds = %if.end.293
  %238 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCUpdateMode298 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %238, i32 0, i32 162
  %239 = load i32, i32* %RCUpdateMode298, align 4
  %cmp299 = icmp eq i32 %239, 1
  br i1 %cmp299, label %land.lhs.true.305, label %lor.lhs.false.301

lor.lhs.false.301:                                ; preds = %lor.lhs.false.297
  %240 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCUpdateMode302 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %240, i32 0, i32 162
  %241 = load i32, i32* %RCUpdateMode302, align 4
  %cmp303 = icmp eq i32 %241, 3
  br i1 %cmp303, label %land.lhs.true.305, label %if.end.564

land.lhs.true.305:                                ; preds = %lor.lhs.false.301, %lor.lhs.false.297, %if.end.293
  %242 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number306 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %242, i32 0, i32 0
  %243 = load i32, i32* %number306, align 4
  %244 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub307 = sub nsw i32 %243, %244
  %tobool308 = icmp ne i32 %sub307, 0
  br i1 %tobool308, label %if.then.309, label %if.end.564

if.then.309:                                      ; preds = %land.lhs.true.305
  %245 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit310 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %245, i32 0, i32 132
  %246 = load i32, i32* %BasicUnit310, align 4
  %247 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs311 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %247, i32 0, i32 120
  %248 = load i32, i32* %FrameSizeInMbs311, align 4
  %cmp312 = icmp eq i32 %246, %248
  br i1 %cmp312, label %if.then.318, label %lor.lhs.false.314

lor.lhs.false.314:                                ; preds = %if.then.309
  %249 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCUpdateMode315 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %249, i32 0, i32 162
  %250 = load i32, i32* %RCUpdateMode315, align 4
  %cmp316 = icmp eq i32 %250, 3
  br i1 %cmp316, label %if.then.318, label %if.else.466

if.then.318:                                      ; preds = %lor.lhs.false.314, %if.then.309
  %251 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedPFrame319 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %251, i32 0, i32 9
  %252 = load i32, i32* %NumberofCodedPFrame319, align 4
  %cmp320 = icmp sgt i32 %252, 0
  br i1 %cmp320, label %if.then.322, label %if.end.465

if.then.322:                                      ; preds = %if.then.318
  %253 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCUpdateMode323 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %253, i32 0, i32 162
  %254 = load i32, i32* %RCUpdateMode323, align 4
  %cmp324 = icmp eq i32 %254, 3
  br i1 %cmp324, label %if.then.326, label %if.else.420

if.then.326:                                      ; preds = %if.then.322
  %255 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type327 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %255, i32 0, i32 5
  %256 = load i32, i32* %type327, align 4
  %cmp328 = icmp eq i32 %256, 1
  br i1 %cmp328, label %land.lhs.true.330, label %cond.false

land.lhs.true.330:                                ; preds = %if.then.326
  %257 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %257, i32 0, i32 69
  %258 = load i32, i32* %HierarchicalCoding, align 4
  %tobool331 = icmp ne i32 %258, 0
  br i1 %tobool331, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.330
  %259 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %temporal_levels = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %259, i32 0, i32 20
  %260 = load i32, i32* %temporal_levels, align 4
  %sub332 = sub nsw i32 %260, 1
  %261 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %261, i32 0, i32 76
  %262 = load i32, i32* %b_frame_to_code, align 4
  %sub333 = sub nsw i32 %262, 1
  %idxprom = sext i32 %sub333 to i64
  %263 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %263, i64 %idxprom
  %hierarchy_layer = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx, i32 0, i32 4
  %264 = load i32, i32* %hierarchy_layer, align 4
  %sub334 = sub nsw i32 %sub332, %264
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.330, %if.then.326
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub334, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %level_idx, align 4
  %265 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type335 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %265, i32 0, i32 5
  %266 = load i32, i32* %type335, align 4
  %cmp336 = icmp eq i32 %266, 1
  br i1 %cmp336, label %cond.true.338, label %cond.false.341

cond.true.338:                                    ; preds = %cond.end
  %267 = load i32, i32* %level_idx, align 4
  %idxprom339 = sext i32 %267 to i64
  %268 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %RCBSliceBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %268, i32 0, i32 19
  %arrayidx340 = getelementptr inbounds [5 x i32], [5 x i32]* %RCBSliceBits, i32 0, i64 %idxprom339
  %269 = load i32, i32* %arrayidx340, align 4
  br label %cond.end.349

cond.false.341:                                   ; preds = %cond.end
  %270 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type342 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %270, i32 0, i32 5
  %271 = load i32, i32* %type342, align 4
  %cmp343 = icmp eq i32 %271, 0
  br i1 %cmp343, label %cond.true.345, label %cond.false.346

cond.true.345:                                    ; preds = %cond.false.341
  %272 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %RCPSliceBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %272, i32 0, i32 17
  %273 = load i32, i32* %RCPSliceBits, align 4
  br label %cond.end.347

cond.false.346:                                   ; preds = %cond.false.341
  %274 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %RCISliceBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %274, i32 0, i32 18
  %275 = load i32, i32* %RCISliceBits, align 4
  br label %cond.end.347

cond.end.347:                                     ; preds = %cond.false.346, %cond.true.345
  %cond348 = phi i32 [ %273, %cond.true.345 ], [ %275, %cond.false.346 ]
  br label %cond.end.349

cond.end.349:                                     ; preds = %cond.end.347, %cond.true.338
  %cond350 = phi i32 [ %269, %cond.true.338 ], [ %cond348, %cond.end.347 ]
  store i32 %cond350, i32* %bitrate, align 4
  %276 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NIslice = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %276, i32 0, i32 23
  %277 = load i32, i32* %NIslice, align 4
  %278 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %RCISliceBits351 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %278, i32 0, i32 18
  %279 = load i32, i32* %RCISliceBits351, align 4
  %mul352 = mul nsw i32 %277, %279
  %280 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NPslice = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %280, i32 0, i32 22
  %281 = load i32, i32* %NPslice, align 4
  %282 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %RCPSliceBits353 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %282, i32 0, i32 17
  %283 = load i32, i32* %RCPSliceBits353, align 4
  %mul354 = mul nsw i32 %281, %283
  %add355 = add nsw i32 %mul352, %mul354
  store i32 %add355, i32* %denom, align 4
  %284 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding356 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %284, i32 0, i32 69
  %285 = load i32, i32* %HierarchicalCoding356, align 4
  %tobool357 = icmp ne i32 %285, 0
  br i1 %tobool357, label %if.then.358, label %if.else.369

if.then.358:                                      ; preds = %cond.end.349
  store i32 0, i32* %level, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.358
  %286 = load i32, i32* %level, align 4
  %287 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %temporal_levels359 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %287, i32 0, i32 20
  %288 = load i32, i32* %temporal_levels359, align 4
  %cmp360 = icmp slt i32 %286, %288
  br i1 %cmp360, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %289 = load i32, i32* %level, align 4
  %idxprom362 = sext i32 %289 to i64
  %290 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %hierNb = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %290, i32 0, i32 21
  %arrayidx363 = getelementptr inbounds [5 x i32], [5 x i32]* %hierNb, i32 0, i64 %idxprom362
  %291 = load i32, i32* %arrayidx363, align 4
  %292 = load i32, i32* %level, align 4
  %idxprom364 = sext i32 %292 to i64
  %293 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %RCBSliceBits365 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %293, i32 0, i32 19
  %arrayidx366 = getelementptr inbounds [5 x i32], [5 x i32]* %RCBSliceBits365, i32 0, i64 %idxprom364
  %294 = load i32, i32* %arrayidx366, align 4
  %mul367 = mul nsw i32 %291, %294
  %295 = load i32, i32* %denom, align 4
  %add368 = add nsw i32 %295, %mul367
  store i32 %add368, i32* %denom, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %296 = load i32, i32* %level, align 4
  %inc = add nsw i32 %296, 1
  store i32 %inc, i32* %level, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.376

if.else.369:                                      ; preds = %cond.end.349
  %297 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %hierNb370 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %297, i32 0, i32 21
  %arrayidx371 = getelementptr inbounds [5 x i32], [5 x i32]* %hierNb370, i32 0, i64 0
  %298 = load i32, i32* %arrayidx371, align 4
  %299 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %RCBSliceBits372 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %299, i32 0, i32 19
  %arrayidx373 = getelementptr inbounds [5 x i32], [5 x i32]* %RCBSliceBits372, i32 0, i64 0
  %300 = load i32, i32* %arrayidx373, align 4
  %mul374 = mul nsw i32 %298, %300
  %301 = load i32, i32* %denom, align 4
  %add375 = add nsw i32 %301, %mul374
  store i32 %add375, i32* %denom, align 4
  br label %if.end.376

if.end.376:                                       ; preds = %if.else.369, %for.end
  %302 = load i32, i32* %bitrate, align 4
  %conv377 = sitofp i32 %302 to double
  %mul378 = fmul double 1.000000e+00, %conv377
  %303 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %RemainingBits379 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %303, i32 0, i32 16
  %304 = load i32, i32* %RemainingBits379, align 4
  %conv380 = sitofp i32 %304 to double
  %mul381 = fmul double %mul378, %conv380
  %conv382 = fptrunc double %mul381 to float
  %305 = load i32, i32* %denom, align 4
  %conv383 = sitofp i32 %305 to float
  %div384 = fdiv float %conv382, %conv383
  %add385 = fadd float %div384, 5.000000e-01
  %conv386 = fpext float %add385 to double
  %call387 = call double @floor(double %conv386) #8
  %conv388 = fptosi double %call387 to i32
  %306 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %306, i32 0, i32 68
  store i32 %conv388, i32* %Target, align 4
  %307 = load i32, i32* %bitrate, align 4
  %conv389 = sitofp i32 %307 to double
  %308 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %GAMMAP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %308, i32 0, i32 3
  %309 = load double, double* %GAMMAP, align 8
  %310 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %CurrentBufferFullness390 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %310, i32 0, i32 15
  %311 = load i64, i64* %CurrentBufferFullness390, align 8
  %conv391 = sitofp i64 %311 to double
  %312 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TargetBufferLevel392 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %312, i32 0, i32 6
  %313 = load double, double* %TargetBufferLevel392, align 8
  %sub393 = fsub double %conv391, %313
  %mul394 = fmul double %309, %sub393
  %sub395 = fsub double %conv389, %mul394
  %add396 = fadd double %sub395, 5.000000e-01
  %call397 = call double @floor(double %add396) #8
  %conv398 = fptosi double %call397 to i32
  %call399 = call i32 @imax(i32 0, i32 %conv398)
  store i32 %call399, i32* %tmp_T, align 4
  %314 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type400 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %314, i32 0, i32 5
  %315 = load i32, i32* %type400, align 4
  switch i32 %315, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.409
    i32 0, label %sw.bb.419
  ]

sw.bb:                                            ; preds = %if.end.376
  %316 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target401 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %316, i32 0, i32 68
  %317 = load i32, i32* %Target401, align 4
  %conv402 = sitofp i32 %317 to float
  %conv403 = fpext float %conv402 to double
  %318 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCBoverPRatio = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %318, i32 0, i32 164
  %319 = load double, double* %RCBoverPRatio, align 8
  %div404 = fdiv double %conv403, %319
  %add405 = fadd double %div404, 5.000000e-01
  %call406 = call double @floor(double %add405) #8
  %conv407 = fptosi double %call406 to i32
  %320 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target408 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %320, i32 0, i32 68
  store i32 %conv407, i32* %Target408, align 4
  br label %sw.epilog

sw.bb.409:                                        ; preds = %if.end.376
  %321 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target410 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %321, i32 0, i32 68
  %322 = load i32, i32* %Target410, align 4
  %conv411 = sitofp i32 %322 to float
  %conv412 = fpext float %conv411 to double
  %323 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCIoverPRatio = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %323, i32 0, i32 163
  %324 = load double, double* %RCIoverPRatio, align 8
  %mul413 = fmul double %324, 4.000000e+00
  %div414 = fdiv double %conv412, %mul413
  %add415 = fadd double %div414, 5.000000e-01
  %call416 = call double @floor(double %add415) #8
  %conv417 = fptosi double %call416 to i32
  %325 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target418 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %325, i32 0, i32 68
  store i32 %conv417, i32* %Target418, align 4
  br label %sw.epilog

sw.bb.419:                                        ; preds = %if.end.376
  br label %sw.default

sw.default:                                       ; preds = %if.end.376, %sw.bb.419
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.409, %sw.bb
  br label %if.end.464

if.else.420:                                      ; preds = %if.then.322
  %326 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Wp421 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %326, i32 0, i32 76
  %327 = load double, double* %Wp421, align 8
  %328 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %RemainingBits422 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %328, i32 0, i32 16
  %329 = load i32, i32* %RemainingBits422, align 4
  %conv423 = sitofp i32 %329 to double
  %mul424 = fmul double %327, %conv423
  %330 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Np425 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %330, i32 0, i32 70
  %331 = load i32, i32* %Np425, align 4
  %conv426 = sitofp i32 %331 to double
  %332 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Wp427 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %332, i32 0, i32 76
  %333 = load double, double* %Wp427, align 8
  %mul428 = fmul double %conv426, %333
  %334 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Nb429 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %334, i32 0, i32 71
  %335 = load i32, i32* %Nb429, align 4
  %conv430 = sitofp i32 %335 to double
  %336 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Wb431 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %336, i32 0, i32 77
  %337 = load double, double* %Wb431, align 8
  %mul432 = fmul double %conv430, %337
  %add433 = fadd double %mul428, %mul432
  %div434 = fdiv double %mul424, %add433
  %add435 = fadd double %div434, 5.000000e-01
  %call436 = call double @floor(double %add435) #8
  %conv437 = fptosi double %call436 to i32
  %338 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target438 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %338, i32 0, i32 68
  store i32 %conv437, i32* %Target438, align 4
  %339 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %bit_rate439 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %339, i32 0, i32 0
  %340 = load float, float* %bit_rate439, align 4
  %341 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %frame_rate440 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %341, i32 0, i32 1
  %342 = load float, float* %frame_rate440, align 4
  %div441 = fdiv float %340, %342
  %conv442 = fpext float %div441 to double
  %343 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %GAMMAP443 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %343, i32 0, i32 3
  %344 = load double, double* %GAMMAP443, align 8
  %345 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %CurrentBufferFullness444 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %345, i32 0, i32 15
  %346 = load i64, i64* %CurrentBufferFullness444, align 8
  %conv445 = sitofp i64 %346 to double
  %347 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TargetBufferLevel446 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %347, i32 0, i32 6
  %348 = load double, double* %TargetBufferLevel446, align 8
  %sub447 = fsub double %conv445, %348
  %mul448 = fmul double %344, %sub447
  %sub449 = fsub double %conv442, %mul448
  %add450 = fadd double %sub449, 5.000000e-01
  %call451 = call double @floor(double %add450) #8
  %conv452 = fptosi double %call451 to i32
  %call453 = call i32 @imax(i32 0, i32 %conv452)
  store i32 %call453, i32* %tmp_T, align 4
  %349 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %BETAP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %349, i32 0, i32 4
  %350 = load double, double* %BETAP, align 8
  %351 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target454 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %351, i32 0, i32 68
  %352 = load i32, i32* %Target454, align 4
  %353 = load i32, i32* %tmp_T, align 4
  %sub455 = sub nsw i32 %352, %353
  %conv456 = sitofp i32 %sub455 to double
  %mul457 = fmul double %350, %conv456
  %354 = load i32, i32* %tmp_T, align 4
  %conv458 = sitofp i32 %354 to double
  %add459 = fadd double %mul457, %conv458
  %add460 = fadd double %add459, 5.000000e-01
  %call461 = call double @floor(double %add460) #8
  %conv462 = fptosi double %call461 to i32
  %355 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target463 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %355, i32 0, i32 68
  store i32 %conv462, i32* %Target463, align 4
  br label %if.end.464

if.end.464:                                       ; preds = %if.else.420, %sw.epilog
  br label %if.end.465

if.end.465:                                       ; preds = %if.end.464, %if.then.318
  br label %if.end.524

if.else.466:                                      ; preds = %lor.lhs.false.314
  %356 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofGOP467 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %356, i32 0, i32 10
  %357 = load i32, i32* %NumberofGOP467, align 4
  %cmp468 = icmp eq i32 %357, 1
  br i1 %cmp468, label %land.lhs.true.470, label %lor.lhs.false.474

land.lhs.true.470:                                ; preds = %if.else.466
  %358 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedPFrame471 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %358, i32 0, i32 9
  %359 = load i32, i32* %NumberofCodedPFrame471, align 4
  %cmp472 = icmp sgt i32 %359, 0
  br i1 %cmp472, label %if.then.478, label %lor.lhs.false.474

lor.lhs.false.474:                                ; preds = %land.lhs.true.470, %if.else.466
  %360 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofGOP475 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %360, i32 0, i32 10
  %361 = load i32, i32* %NumberofGOP475, align 4
  %cmp476 = icmp sgt i32 %361, 1
  br i1 %cmp476, label %if.then.478, label %if.end.523

if.then.478:                                      ; preds = %lor.lhs.false.474, %land.lhs.true.470
  %362 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Wp479 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %362, i32 0, i32 76
  %363 = load double, double* %Wp479, align 8
  %364 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %RemainingBits480 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %364, i32 0, i32 16
  %365 = load i32, i32* %RemainingBits480, align 4
  %conv481 = sitofp i32 %365 to double
  %mul482 = fmul double %363, %conv481
  %366 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Np483 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %366, i32 0, i32 70
  %367 = load i32, i32* %Np483, align 4
  %conv484 = sitofp i32 %367 to double
  %368 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Wp485 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %368, i32 0, i32 76
  %369 = load double, double* %Wp485, align 8
  %mul486 = fmul double %conv484, %369
  %370 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Nb487 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %370, i32 0, i32 71
  %371 = load i32, i32* %Nb487, align 4
  %conv488 = sitofp i32 %371 to double
  %372 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Wb489 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %372, i32 0, i32 77
  %373 = load double, double* %Wb489, align 8
  %mul490 = fmul double %conv488, %373
  %add491 = fadd double %mul486, %mul490
  %div492 = fdiv double %mul482, %add491
  %add493 = fadd double %div492, 5.000000e-01
  %call494 = call double @floor(double %add493) #8
  %conv495 = fptosi double %call494 to i32
  %374 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target496 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %374, i32 0, i32 68
  store i32 %conv495, i32* %Target496, align 4
  %375 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %bit_rate497 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %375, i32 0, i32 0
  %376 = load float, float* %bit_rate497, align 4
  %377 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %frame_rate498 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %377, i32 0, i32 1
  %378 = load float, float* %frame_rate498, align 4
  %div499 = fdiv float %376, %378
  %conv500 = fpext float %div499 to double
  %379 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %GAMMAP501 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %379, i32 0, i32 3
  %380 = load double, double* %GAMMAP501, align 8
  %381 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %CurrentBufferFullness502 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %381, i32 0, i32 15
  %382 = load i64, i64* %CurrentBufferFullness502, align 8
  %conv503 = sitofp i64 %382 to double
  %383 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TargetBufferLevel504 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %383, i32 0, i32 6
  %384 = load double, double* %TargetBufferLevel504, align 8
  %sub505 = fsub double %conv503, %384
  %mul506 = fmul double %380, %sub505
  %sub507 = fsub double %conv500, %mul506
  %add508 = fadd double %sub507, 5.000000e-01
  %call509 = call double @floor(double %add508) #8
  %conv510 = fptosi double %call509 to i32
  %call511 = call i32 @imax(i32 0, i32 %conv510)
  store i32 %call511, i32* %tmp_T, align 4
  %385 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %BETAP512 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %385, i32 0, i32 4
  %386 = load double, double* %BETAP512, align 8
  %387 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target513 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %387, i32 0, i32 68
  %388 = load i32, i32* %Target513, align 4
  %389 = load i32, i32* %tmp_T, align 4
  %sub514 = sub nsw i32 %388, %389
  %conv515 = sitofp i32 %sub514 to double
  %mul516 = fmul double %386, %conv515
  %390 = load i32, i32* %tmp_T, align 4
  %conv517 = sitofp i32 %390 to double
  %add518 = fadd double %mul516, %conv517
  %add519 = fadd double %add518, 5.000000e-01
  %call520 = call double @floor(double %add519) #8
  %conv521 = fptosi double %call520 to i32
  %391 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target522 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %391, i32 0, i32 68
  store i32 %conv521, i32* %Target522, align 4
  br label %if.end.523

if.end.523:                                       ; preds = %if.then.478, %lor.lhs.false.474
  br label %if.end.524

if.end.524:                                       ; preds = %if.end.523, %if.end.465
  %392 = load float, float* %mult.addr, align 4
  %393 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target525 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %393, i32 0, i32 68
  %394 = load i32, i32* %Target525, align 4
  %conv526 = sitofp i32 %394 to float
  %mul527 = fmul float %392, %conv526
  %conv528 = fptosi float %mul527 to i32
  %395 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target529 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %395, i32 0, i32 68
  store i32 %conv528, i32* %Target529, align 4
  %396 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe530 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %396, i32 0, i32 40
  %397 = load i32, i32* %successive_Bframe530, align 4
  %conv531 = sitofp i32 %397 to double
  %mul532 = fmul double 0.000000e+00, %conv531
  %sub533 = fsub double 1.000000e+00, %mul532
  %398 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target534 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %398, i32 0, i32 68
  %399 = load i32, i32* %Target534, align 4
  %conv535 = sitofp i32 %399 to double
  %mul536 = fmul double %sub533, %conv535
  %conv537 = fptosi double %mul536 to i32
  %400 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target538 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %400, i32 0, i32 68
  store i32 %conv537, i32* %Target538, align 4
  %401 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCUpdateMode539 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %401, i32 0, i32 162
  %402 = load i32, i32* %RCUpdateMode539, align 4
  %cmp540 = icmp ne i32 %402, 3
  br i1 %cmp540, label %if.then.546, label %lor.lhs.false.542

lor.lhs.false.542:                                ; preds = %if.end.524
  %403 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type543 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %403, i32 0, i32 5
  %404 = load i32, i32* %type543, align 4
  %cmp544 = icmp eq i32 %404, 0
  br i1 %cmp544, label %if.then.546, label %if.end.550

if.then.546:                                      ; preds = %lor.lhs.false.542, %if.end.524
  %405 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %LowerBound = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %405, i32 0, i32 75
  %406 = load i32, i32* %LowerBound, align 4
  %407 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %UpperBound2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %407, i32 0, i32 74
  %408 = load i32, i32* %UpperBound2, align 4
  %409 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target547 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %409, i32 0, i32 68
  %410 = load i32, i32* %Target547, align 4
  %call548 = call i32 @iClip3(i32 %406, i32 %408, i32 %410)
  %411 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target549 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %411, i32 0, i32 68
  store i32 %call548, i32* %Target549, align 4
  br label %if.end.550

if.end.550:                                       ; preds = %if.then.546, %lor.lhs.false.542
  %412 = load i32, i32* %topfield.addr, align 4
  %tobool551 = icmp ne i32 %412, 0
  br i1 %tobool551, label %if.then.561, label %lor.lhs.false.552

lor.lhs.false.552:                                ; preds = %if.end.550
  %413 = load i32, i32* %fieldpic.addr, align 4
  %tobool553 = icmp ne i32 %413, 0
  br i1 %tobool553, label %land.lhs.true.554, label %if.end.563

land.lhs.true.554:                                ; preds = %lor.lhs.false.552
  %414 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace555 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %414, i32 0, i32 121
  %415 = load i32, i32* %PicInterlace555, align 4
  %cmp556 = icmp eq i32 %415, 2
  br i1 %cmp556, label %if.then.561, label %lor.lhs.false.558

lor.lhs.false.558:                                ; preds = %land.lhs.true.554
  %416 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace559 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %416, i32 0, i32 122
  %417 = load i32, i32* %MbInterlace559, align 4
  %tobool560 = icmp ne i32 %417, 0
  br i1 %tobool560, label %if.then.561, label %if.end.563

if.then.561:                                      ; preds = %lor.lhs.false.558, %land.lhs.true.554, %if.end.550
  %418 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target562 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %418, i32 0, i32 68
  %419 = load i32, i32* %Target562, align 4
  %420 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TargetField = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %420, i32 0, i32 69
  store i32 %419, i32* %TargetField, align 4
  br label %if.end.563

if.end.563:                                       ; preds = %if.then.561, %lor.lhs.false.558, %lor.lhs.false.552
  br label %if.end.564

if.end.564:                                       ; preds = %if.end.563, %land.lhs.true.305, %lor.lhs.false.301
  br label %if.end.565

if.end.565:                                       ; preds = %if.end.564, %land.lhs.true, %lor.lhs.false
  %421 = load i32, i32* %fieldpic.addr, align 4
  %tobool566 = icmp ne i32 %421, 0
  br i1 %tobool566, label %if.then.569, label %lor.lhs.false.567

lor.lhs.false.567:                                ; preds = %if.end.565
  %422 = load i32, i32* %topfield.addr, align 4
  %tobool568 = icmp ne i32 %422, 0
  br i1 %tobool568, label %if.then.569, label %if.end.585

if.then.569:                                      ; preds = %lor.lhs.false.567, %if.end.565
  %423 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofHeaderBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %423, i32 0, i32 4
  store i32 0, i32* %NumberofHeaderBits, align 4
  %424 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofTextureBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %424, i32 0, i32 5
  store i32 0, i32* %NumberofTextureBits, align 4
  %425 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit570 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %425, i32 0, i32 132
  %426 = load i32, i32* %BasicUnit570, align 4
  %427 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs571 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %427, i32 0, i32 120
  %428 = load i32, i32* %FrameSizeInMbs571, align 4
  %cmp572 = icmp ult i32 %426, %428
  br i1 %cmp572, label %if.then.574, label %if.end.584

if.then.574:                                      ; preds = %if.then.569
  %429 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalFrameQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %429, i32 0, i32 38
  store i32 0, i32* %TotalFrameQP, align 4
  %430 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofBasicUnitHeaderBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %430, i32 0, i32 6
  store i32 0, i32* %NumberofBasicUnitHeaderBits, align 4
  %431 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofBasicUnitTextureBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %431, i32 0, i32 7
  store i32 0, i32* %NumberofBasicUnitTextureBits, align 4
  %432 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %TotalMADBasicUnit = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %432, i32 0, i32 13
  store i64 0, i64* %TotalMADBasicUnit, align 8
  %433 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl575 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %433, i32 0, i32 1
  %434 = load i32, i32* %FieldControl575, align 4
  %cmp576 = icmp eq i32 %434, 0
  br i1 %cmp576, label %if.then.578, label %if.else.580

if.then.578:                                      ; preds = %if.then.574
  %435 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit579 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %435, i32 0, i32 44
  %436 = load i32, i32* %TotalNumberofBasicUnit579, align 4
  %437 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %437, i32 0, i32 39
  store i32 %436, i32* %NumberofBasicUnit, align 4
  br label %if.end.583

if.else.580:                                      ; preds = %if.then.574
  %438 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit581 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %438, i32 0, i32 44
  %439 = load i32, i32* %TotalNumberofBasicUnit581, align 4
  %shr = ashr i32 %439, 1
  %440 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit582 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %440, i32 0, i32 39
  store i32 %shr, i32* %NumberofBasicUnit582, align 4
  br label %if.end.583

if.end.583:                                       ; preds = %if.else.580, %if.then.578
  br label %if.end.584

if.end.584:                                       ; preds = %if.end.583, %if.then.569
  br label %if.end.585

if.end.585:                                       ; preds = %if.end.584, %lor.lhs.false.567
  %441 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type586 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %441, i32 0, i32 5
  %442 = load i32, i32* %type586, align 4
  %cmp587 = icmp eq i32 %442, 0
  br i1 %cmp587, label %land.lhs.true.593, label %lor.lhs.false.589

lor.lhs.false.589:                                ; preds = %if.end.585
  %443 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCUpdateMode590 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %443, i32 0, i32 162
  %444 = load i32, i32* %RCUpdateMode590, align 4
  %cmp591 = icmp eq i32 %444, 1
  br i1 %cmp591, label %land.lhs.true.593, label %if.end.626

land.lhs.true.593:                                ; preds = %lor.lhs.false.589, %if.end.585
  %445 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit594 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %445, i32 0, i32 132
  %446 = load i32, i32* %BasicUnit594, align 4
  %447 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs595 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %447, i32 0, i32 120
  %448 = load i32, i32* %FrameSizeInMbs595, align 4
  %cmp596 = icmp ult i32 %446, %448
  br i1 %cmp596, label %land.lhs.true.598, label %if.end.626

land.lhs.true.598:                                ; preds = %land.lhs.true.593
  %449 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl599 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %449, i32 0, i32 1
  %450 = load i32, i32* %FieldControl599, align 4
  %cmp600 = icmp eq i32 %450, 1
  br i1 %cmp600, label %land.lhs.true.602, label %if.end.626

land.lhs.true.602:                                ; preds = %land.lhs.true.598
  %451 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number603 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %451, i32 0, i32 0
  %452 = load i32, i32* %number603, align 4
  %453 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub604 = sub nsw i32 %452, %453
  %tobool605 = icmp ne i32 %sub604, 0
  br i1 %tobool605, label %if.then.606, label %if.end.626

if.then.606:                                      ; preds = %land.lhs.true.602
  %454 = load i32, i32* %topfield.addr, align 4
  %tobool607 = icmp ne i32 %454, 0
  br i1 %tobool607, label %if.then.608, label %if.else.614

if.then.608:                                      ; preds = %if.then.606
  %455 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %bits_topfield = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %455, i32 0, i32 72
  store i32 0, i32* %bits_topfield, align 4
  %456 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TargetField609 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %456, i32 0, i32 69
  %457 = load i32, i32* %TargetField609, align 4
  %conv610 = sitofp i32 %457 to double
  %mul611 = fmul double %conv610, 6.000000e-01
  %conv612 = fptosi double %mul611 to i32
  %458 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target613 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %458, i32 0, i32 68
  store i32 %conv612, i32* %Target613, align 4
  br label %if.end.625

if.else.614:                                      ; preds = %if.then.606
  %459 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TargetField615 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %459, i32 0, i32 69
  %460 = load i32, i32* %TargetField615, align 4
  %461 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %bits_topfield616 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %461, i32 0, i32 72
  %462 = load i32, i32* %bits_topfield616, align 4
  %sub617 = sub nsw i32 %460, %462
  %463 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target618 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %463, i32 0, i32 68
  store i32 %sub617, i32* %Target618, align 4
  %464 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofBasicUnitHeaderBits619 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %464, i32 0, i32 6
  store i32 0, i32* %NumberofBasicUnitHeaderBits619, align 4
  %465 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofBasicUnitTextureBits620 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %465, i32 0, i32 7
  store i32 0, i32* %NumberofBasicUnitTextureBits620, align 4
  %466 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %TotalMADBasicUnit621 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %466, i32 0, i32 13
  store i64 0, i64* %TotalMADBasicUnit621, align 8
  %467 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit622 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %467, i32 0, i32 44
  %468 = load i32, i32* %TotalNumberofBasicUnit622, align 4
  %shr623 = ashr i32 %468, 1
  %469 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit624 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %469, i32 0, i32 39
  store i32 %shr623, i32* %NumberofBasicUnit624, align 4
  br label %if.end.625

if.end.625:                                       ; preds = %if.else.614, %if.then.608
  br label %if.end.626

if.end.626:                                       ; preds = %if.end.625, %land.lhs.true.602, %land.lhs.true.598, %land.lhs.true.593, %lor.lhs.false.589
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imax(i32 %a, i32 %b) #6 {
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
define void @rc_update_pict(%struct.rc_quadratic* %prc, i32 %nbits) #0 {
entry:
  %prc.addr = alloca %struct.rc_quadratic*, align 8
  %nbits.addr = alloca i32, align 4
  %delta_bits = alloca i32, align 4
  store %struct.rc_quadratic* %prc, %struct.rc_quadratic** %prc.addr, align 8
  store i32 %nbits, i32* %nbits.addr, align 4
  %0 = load i32, i32* %nbits.addr, align 4
  %1 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %bit_rate = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %1, i32 0, i32 0
  %2 = load float, float* %bit_rate, align 4
  %3 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %frame_rate = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %3, i32 0, i32 1
  %4 = load float, float* %frame_rate, align 4
  %div = fdiv float %2, %4
  %add = fadd float %div, 5.000000e-01
  %conv = fpext float %add to double
  %call = call double @floor(double %conv) #8
  %conv1 = fptosi double %call to i32
  %sub = sub nsw i32 %0, %conv1
  store i32 %sub, i32* %delta_bits, align 4
  %5 = load i32, i32* %nbits.addr, align 4
  %6 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %RemainingBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %6, i32 0, i32 16
  %7 = load i32, i32* %RemainingBits, align 4
  %sub2 = sub nsw i32 %7, %5
  store i32 %sub2, i32* %RemainingBits, align 4
  %8 = load i32, i32* %delta_bits, align 4
  %conv3 = sext i32 %8 to i64
  %9 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %CurrentBufferFullness = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %9, i32 0, i32 15
  %10 = load i64, i64* %CurrentBufferFullness, align 8
  %add4 = add nsw i64 %10, %conv3
  store i64 %add4, i64* %CurrentBufferFullness, align 8
  %11 = load i32, i32* %delta_bits, align 4
  %12 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %LowerBound = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %12, i32 0, i32 75
  %13 = load i32, i32* %LowerBound, align 4
  %sub5 = sub nsw i32 %13, %11
  store i32 %sub5, i32* %LowerBound, align 4
  %14 = load i32, i32* %delta_bits, align 4
  %15 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %UpperBound1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %15, i32 0, i32 73
  %16 = load i32, i32* %UpperBound1, align 4
  %sub6 = sub nsw i32 %16, %14
  store i32 %sub6, i32* %UpperBound1, align 4
  %17 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %UpperBound17 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %17, i32 0, i32 73
  %18 = load i32, i32* %UpperBound17, align 4
  %conv8 = sitofp i32 %18 to float
  %mul = fmul float 0x3FECCCCCC0000000, %conv8
  %conv9 = fptosi float %mul to i32
  %19 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %UpperBound2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %19, i32 0, i32 74
  store i32 %conv9, i32* %UpperBound2, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @updateComplexity(%struct.rc_quadratic* %prc, i32 %is_updated, i32 %nbits) #0 {
entry:
  %retval = alloca i32, align 4
  %prc.addr = alloca %struct.rc_quadratic*, align 8
  %is_updated.addr = alloca i32, align 4
  %nbits.addr = alloca i32, align 4
  %Avem_Qc = alloca double, align 8
  store %struct.rc_quadratic* %prc, %struct.rc_quadratic** %prc.addr, align 8
  store i32 %is_updated, i32* %is_updated.addr, align 4
  store i32 %nbits, i32* %nbits.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 132
  %1 = load i32, i32* %BasicUnit, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 120
  %3 = load i32, i32* %FrameSizeInMbs, align 4
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %nbits.addr, align 4
  %5 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %5, i32 0, i32 33
  %6 = load i32, i32* %m_Qc, align 4
  %mul = mul nsw i32 %4, %6
  %conv = sitofp i32 %mul to double
  %add = fadd double %conv, 5.000000e-01
  %call = call double @floor(double %add) #8
  %conv1 = fptosi double %call to i32
  store i32 %conv1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %is_updated.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.2, label %if.else.18

if.then.2:                                        ; preds = %if.else
  %8 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NoGranularFieldRC = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %8, i32 0, i32 3
  %9 = load i32, i32* %NoGranularFieldRC, align 4
  %cmp3 = icmp eq i32 %9, 0
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then.2
  %10 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %10, i32 0, i32 1
  %11 = load i32, i32* %FieldControl, align 4
  %cmp5 = icmp eq i32 %11, 1
  br i1 %cmp5, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then.2
  %12 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl7 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %12, i32 0, i32 1
  %13 = load i32, i32* %FieldControl7, align 4
  %cmp8 = icmp eq i32 %13, 0
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %14 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalFrameQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %14, i32 0, i32 38
  %15 = load i32, i32* %TotalFrameQP, align 4
  %conv11 = sitofp i32 %15 to double
  %16 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %16, i32 0, i32 44
  %17 = load i32, i32* %TotalNumberofBasicUnit, align 4
  %conv12 = sitofp i32 %17 to double
  %div = fdiv double %conv11, %conv12
  store double %div, double* %Avem_Qc, align 8
  %18 = load i32, i32* %nbits.addr, align 4
  %conv13 = sitofp i32 %18 to double
  %19 = load double, double* %Avem_Qc, align 8
  %mul14 = fmul double %conv13, %19
  %add15 = fadd double %mul14, 5.000000e-01
  %call16 = call double @floor(double %add15) #8
  %conv17 = fptosi double %call16 to i32
  store i32 %conv17, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end.29

if.else.18:                                       ; preds = %if.else
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 5
  %21 = load i32, i32* %type, align 4
  %cmp19 = icmp eq i32 %21, 1
  br i1 %cmp19, label %if.then.21, label %if.end.28

if.then.21:                                       ; preds = %if.else.18
  %22 = load i32, i32* %nbits.addr, align 4
  %23 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc22 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %23, i32 0, i32 33
  %24 = load i32, i32* %m_Qc22, align 4
  %mul23 = mul nsw i32 %22, %24
  %conv24 = sitofp i32 %mul23 to double
  %add25 = fadd double %conv24, 5.000000e-01
  %call26 = call double @floor(double %add25) #8
  %conv27 = fptosi double %call26 to i32
  store i32 %conv27, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.else.18
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.21, %if.then.10, %if.then
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define void @updatePparams(%struct.rc_quadratic* %prc, i32 %complexity) #0 {
entry:
  %prc.addr = alloca %struct.rc_quadratic*, align 8
  %complexity.addr = alloca i32, align 4
  store %struct.rc_quadratic* %prc, %struct.rc_quadratic** %prc.addr, align 8
  store i32 %complexity, i32* %complexity.addr, align 4
  %0 = load i32, i32* %complexity.addr, align 4
  %1 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Xp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %1, i32 0, i32 66
  store i32 %0, i32* %Xp, align 4
  %2 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Np = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %2, i32 0, i32 70
  %3 = load i32, i32* %Np, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %Np, align 4
  %4 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Xp1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %4, i32 0, i32 66
  %5 = load i32, i32* %Xp1, align 4
  %conv = sitofp i32 %5 to double
  %6 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Wp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %6, i32 0, i32 76
  store double %conv, double* %Wp, align 8
  %7 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofHeaderBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %7, i32 0, i32 4
  %8 = load i32, i32* %NumberofHeaderBits, align 4
  %9 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_Hp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %9, i32 0, i32 30
  store i32 %8, i32* %Pm_Hp, align 4
  %10 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedPFrame = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %10, i32 0, i32 9
  %11 = load i32, i32* %NumberofCodedPFrame, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %NumberofCodedPFrame, align 4
  %12 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofPPicture = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %12, i32 0, i32 12
  %13 = load i32, i32* %NumberofPPicture, align 4
  %inc2 = add nsw i32 %13, 1
  store i32 %inc2, i32* %NumberofPPicture, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @updateBparams(%struct.rc_quadratic* %prc, i32 %complexity) #0 {
entry:
  %prc.addr = alloca %struct.rc_quadratic*, align 8
  %complexity.addr = alloca i32, align 4
  store %struct.rc_quadratic* %prc, %struct.rc_quadratic** %prc.addr, align 8
  store i32 %complexity, i32* %complexity.addr, align 4
  %0 = load i32, i32* %complexity.addr, align 4
  %1 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Xb = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %1, i32 0, i32 67
  store i32 %0, i32* %Xb, align 4
  %2 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Nb = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %2, i32 0, i32 71
  %3 = load i32, i32* %Nb, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %Nb, align 4
  %4 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Xb1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %4, i32 0, i32 67
  %5 = load i32, i32* %Xb1, align 4
  %conv = sitofp i32 %5 to float
  %div = fdiv float %conv, 0x3FF5D14E40000000
  %conv2 = fpext float %div to double
  %6 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Wb = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %6, i32 0, i32 77
  store double %conv2, double* %Wb, align 8
  %7 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBFrames = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %7, i32 0, i32 37
  %8 = load i32, i32* %NumberofBFrames, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %NumberofBFrames, align 4
  %9 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedBFrame = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %9, i32 0, i32 8
  %10 = load i32, i32* %NumberofCodedBFrame, align 4
  %inc3 = add nsw i32 %10, 1
  store i32 %inc3, i32* %NumberofCodedBFrame, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @rc_update_pict_frame(%struct.rc_quadratic* %prc, i32 %nbits) #0 {
entry:
  %prc.addr = alloca %struct.rc_quadratic*, align 8
  %nbits.addr = alloca i32, align 4
  %complexity = alloca i32, align 4
  store %struct.rc_quadratic* %prc, %struct.rc_quadratic** %prc.addr, align 8
  store i32 %nbits, i32* %nbits.addr, align 4
  store i32 0, i32* %complexity, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCUpdateMode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 162
  %1 = load i32, i32* %RCUpdateMode, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb.16
    i32 3, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb
  %2 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 5
  %4 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.default
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 0
  %6 = load i32, i32* %number, align 4
  %7 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub = sub nsw i32 %6, %7
  %tobool = icmp ne i32 %sub, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.default
  %8 = phi i1 [ false, %sw.default ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  %9 = load i32, i32* %nbits.addr, align 4
  %call = call i32 @updateComplexity(%struct.rc_quadratic* %2, i32 %land.ext, i32 %9)
  store i32 %call, i32* %complexity, align 4
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 5
  %11 = load i32, i32* %type1, align 4
  %cmp2 = icmp eq i32 %11, 0
  br i1 %cmp2, label %land.lhs.true, label %if.else.10

land.lhs.true:                                    ; preds = %land.end
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 0
  %13 = load i32, i32* %number3, align 4
  %14 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub4 = sub nsw i32 %13, %14
  %tobool5 = icmp ne i32 %sub4, 0
  br i1 %tobool5, label %if.then, label %if.else.10

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NoGranularFieldRC = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %15, i32 0, i32 3
  %16 = load i32, i32* %NoGranularFieldRC, align 4
  %cmp6 = icmp eq i32 %16, 0
  br i1 %cmp6, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %17 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %17, i32 0, i32 1
  %18 = load i32, i32* %FieldControl, align 4
  %cmp7 = icmp eq i32 %18, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %lor.lhs.false, %if.then
  %19 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %20 = load i32, i32* %complexity, align 4
  call void @updatePparams(%struct.rc_quadratic* %19, i32 %20)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %21 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NoGranularFieldRC9 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %21, i32 0, i32 3
  store i32 0, i32* %NoGranularFieldRC9, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %if.end.15

if.else.10:                                       ; preds = %land.lhs.true, %land.end
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type11 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 5
  %23 = load i32, i32* %type11, align 4
  %cmp12 = icmp eq i32 %23, 1
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.else.10
  %24 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %25 = load i32, i32* %complexity, align 4
  call void @updateBparams(%struct.rc_quadratic* %24, i32 %25)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.else.10
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %26 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number17 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 0
  %28 = load i32, i32* %number17, align 4
  %29 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub18 = sub nsw i32 %28, %29
  %30 = load i32, i32* %nbits.addr, align 4
  %call19 = call i32 @updateComplexity(%struct.rc_quadratic* %26, i32 %sub18, i32 %30)
  store i32 %call19, i32* %complexity, align 4
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 0
  %32 = load i32, i32* %number20, align 4
  %33 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub21 = sub nsw i32 %32, %33
  %tobool22 = icmp ne i32 %sub21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.33

if.then.23:                                       ; preds = %sw.bb.16
  %34 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NoGranularFieldRC24 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %34, i32 0, i32 3
  %35 = load i32, i32* %NoGranularFieldRC24, align 4
  %cmp25 = icmp eq i32 %35, 0
  br i1 %cmp25, label %if.then.29, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %if.then.23
  %36 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl27 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %36, i32 0, i32 1
  %37 = load i32, i32* %FieldControl27, align 4
  %cmp28 = icmp eq i32 %37, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %lor.lhs.false.26, %if.then.23
  %38 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %39 = load i32, i32* %complexity, align 4
  call void @updatePparams(%struct.rc_quadratic* %38, i32 %39)
  br label %if.end.32

if.else.30:                                       ; preds = %lor.lhs.false.26
  %40 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NoGranularFieldRC31 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %40, i32 0, i32 3
  store i32 0, i32* %NoGranularFieldRC31, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %sw.bb.16
  br label %sw.epilog

sw.bb.34:                                         ; preds = %entry
  %41 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %42 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type35 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %42, i32 0, i32 5
  %43 = load i32, i32* %type35, align 4
  %cmp36 = icmp eq i32 %43, 0
  br i1 %cmp36, label %land.rhs.37, label %land.end.41

land.rhs.37:                                      ; preds = %sw.bb.34
  %44 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number38 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %44, i32 0, i32 0
  %45 = load i32, i32* %number38, align 4
  %46 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub39 = sub nsw i32 %45, %46
  %tobool40 = icmp ne i32 %sub39, 0
  br label %land.end.41

land.end.41:                                      ; preds = %land.rhs.37, %sw.bb.34
  %47 = phi i1 [ false, %sw.bb.34 ], [ %tobool40, %land.rhs.37 ]
  %land.ext42 = zext i1 %47 to i32
  %48 = load i32, i32* %nbits.addr, align 4
  %call43 = call i32 @updateComplexity(%struct.rc_quadratic* %41, i32 %land.ext42, i32 %48)
  store i32 %call43, i32* %complexity, align 4
  %49 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type44 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %49, i32 0, i32 5
  %50 = load i32, i32* %type44, align 4
  %cmp45 = icmp eq i32 %50, 2
  br i1 %cmp45, label %land.lhs.true.46, label %if.end.51

land.lhs.true.46:                                 ; preds = %land.end.41
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number47 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %51, i32 0, i32 0
  %52 = load i32, i32* %number47, align 4
  %53 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub48 = sub nsw i32 %52, %53
  %tobool49 = icmp ne i32 %sub48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %land.lhs.true.46
  %54 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NIslice = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %54, i32 0, i32 23
  %55 = load i32, i32* %NIslice, align 4
  %dec = add nsw i32 %55, -1
  store i32 %dec, i32* %NIslice, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %land.lhs.true.46, %land.end.41
  %56 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type52 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %56, i32 0, i32 5
  %57 = load i32, i32* %type52, align 4
  %cmp53 = icmp eq i32 %57, 0
  br i1 %cmp53, label %land.lhs.true.54, label %if.else.69

land.lhs.true.54:                                 ; preds = %if.end.51
  %58 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number55 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %58, i32 0, i32 0
  %59 = load i32, i32* %number55, align 4
  %60 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub56 = sub nsw i32 %59, %60
  %tobool57 = icmp ne i32 %sub56, 0
  br i1 %tobool57, label %if.then.58, label %if.else.69

if.then.58:                                       ; preds = %land.lhs.true.54
  %61 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NoGranularFieldRC59 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %61, i32 0, i32 3
  %62 = load i32, i32* %NoGranularFieldRC59, align 4
  %cmp60 = icmp eq i32 %62, 0
  br i1 %cmp60, label %if.then.64, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %if.then.58
  %63 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl62 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %63, i32 0, i32 1
  %64 = load i32, i32* %FieldControl62, align 4
  %cmp63 = icmp eq i32 %64, 0
  br i1 %cmp63, label %if.then.64, label %if.else.66

if.then.64:                                       ; preds = %lor.lhs.false.61, %if.then.58
  %65 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %66 = load i32, i32* %complexity, align 4
  call void @updatePparams(%struct.rc_quadratic* %65, i32 %66)
  %67 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NPslice = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %67, i32 0, i32 22
  %68 = load i32, i32* %NPslice, align 4
  %dec65 = add nsw i32 %68, -1
  store i32 %dec65, i32* %NPslice, align 4
  br label %if.end.68

if.else.66:                                       ; preds = %lor.lhs.false.61
  %69 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NoGranularFieldRC67 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %69, i32 0, i32 3
  store i32 0, i32* %NoGranularFieldRC67, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.66, %if.then.64
  br label %if.end.81

if.else.69:                                       ; preds = %land.lhs.true.54, %if.end.51
  %70 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type70 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %70, i32 0, i32 5
  %71 = load i32, i32* %type70, align 4
  %cmp71 = icmp eq i32 %71, 1
  br i1 %cmp71, label %if.then.72, label %if.end.80

if.then.72:                                       ; preds = %if.else.69
  %72 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %73 = load i32, i32* %complexity, align 4
  call void @updateBparams(%struct.rc_quadratic* %72, i32 %73)
  %74 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %74, i32 0, i32 69
  %75 = load i32, i32* %HierarchicalCoding, align 4
  %tobool73 = icmp ne i32 %75, 0
  br i1 %tobool73, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.72
  %76 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %temporal_levels = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %76, i32 0, i32 20
  %77 = load i32, i32* %temporal_levels, align 4
  %sub74 = sub nsw i32 %77, 1
  %78 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %78, i32 0, i32 76
  %79 = load i32, i32* %b_frame_to_code, align 4
  %sub75 = sub nsw i32 %79, 1
  %idxprom = sext i32 %sub75 to i64
  %80 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %80, i64 %idxprom
  %hierarchy_layer = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx, i32 0, i32 4
  %81 = load i32, i32* %hierarchy_layer, align 4
  %sub76 = sub nsw i32 %sub74, %81
  br label %cond.end

cond.false:                                       ; preds = %if.then.72
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub76, %cond.true ], [ 0, %cond.false ]
  %idxprom77 = sext i32 %cond to i64
  %82 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %hierNb = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %82, i32 0, i32 21
  %arrayidx78 = getelementptr inbounds [5 x i32], [5 x i32]* %hierNb, i32 0, i64 %idxprom77
  %83 = load i32, i32* %arrayidx78, align 4
  %dec79 = add nsw i32 %83, -1
  store i32 %dec79, i32* %arrayidx78, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %cond.end, %if.else.69
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.68
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.81, %if.end.33, %if.end.15
  ret void
}

; Function Attrs: nounwind uwtable
define void @updateRCModel(%struct.rc_quadratic* %prc) #0 {
entry:
  %prc.addr = alloca %struct.rc_quadratic*, align 8
  %n_windowSize = alloca i32, align 4
  %i = alloca i32, align 4
  %std = alloca double, align 8
  %threshold = alloca double, align 8
  %m_Nc = alloca i32, align 4
  %MADModelFlag = alloca i32, align 4
  store %struct.rc_quadratic* %prc, %struct.rc_quadratic** %prc.addr, align 8
  store double 0.000000e+00, double* %std, align 8
  %0 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedPFrame = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %0, i32 0, i32 9
  %1 = load i32, i32* %NumberofCodedPFrame, align 4
  store i32 %1, i32* %m_Nc, align 4
  store i32 0, i32* %MADModelFlag, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 5
  %3 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCUpdateMode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 162
  %5 = load i32, i32* %RCUpdateMode, align 4
  %cmp1 = icmp eq i32 %5, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end.246

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 0
  %7 = load i32, i32* %number, align 4
  %8 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub = sub nsw i32 %7, %8
  %tobool = icmp ne i32 %sub, 0
  br i1 %tobool, label %if.then, label %if.end.246

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 132
  %10 = load i32, i32* %BasicUnit, align 4
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 120
  %12 = load i32, i32* %FrameSizeInMbs, align 4
  %cmp2 = icmp eq i32 %10, %12
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %call = call double @ComputeFrameMAD()
  %13 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %13, i32 0, i32 46
  store double %call, double* %CurrentFrameMAD, align 8
  %14 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedPFrame4 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %14, i32 0, i32 9
  %15 = load i32, i32* %NumberofCodedPFrame4, align 4
  store i32 %15, i32* %m_Nc, align 4
  br label %if.end.82

if.else:                                          ; preds = %if.then
  %16 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %TotalMADBasicUnit = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %16, i32 0, i32 13
  %17 = load i64, i64* %TotalMADBasicUnit, align 8
  %shr = ashr i64 %17, 8
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 132
  %19 = load i32, i32* %BasicUnit5, align 4
  %conv = zext i32 %19 to i64
  %div = sdiv i64 %shr, %conv
  %conv6 = sitofp i64 %div to double
  %20 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD7 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %20, i32 0, i32 46
  store double %conv6, double* %CurrentFrameMAD7, align 8
  %21 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %TotalMADBasicUnit8 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %21, i32 0, i32 13
  store i64 0, i64* %TotalMADBasicUnit8, align 8
  %22 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %22, i32 0, i32 44
  %23 = load i32, i32* %TotalNumberofBasicUnit, align 4
  %24 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %24, i32 0, i32 39
  %25 = load i32, i32* %NumberofBasicUnit, align 4
  %sub9 = sub nsw i32 %23, %25
  %26 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CodedBasicUnit = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %26, i32 0, i32 45
  store i32 %sub9, i32* %CodedBasicUnit, align 4
  %27 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CodedBasicUnit10 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %27, i32 0, i32 45
  %28 = load i32, i32* %CodedBasicUnit10, align 4
  %cmp11 = icmp sgt i32 %28, 0
  br i1 %cmp11, label %if.then.13, label %if.end.42

if.then.13:                                       ; preds = %if.else
  %29 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveHeaderBits1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %29, i32 0, i32 40
  %30 = load i32, i32* %PAveHeaderBits1, align 4
  %31 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CodedBasicUnit14 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %31, i32 0, i32 45
  %32 = load i32, i32* %CodedBasicUnit14, align 4
  %sub15 = sub nsw i32 %32, 1
  %mul = mul nsw i32 %30, %sub15
  %33 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofBasicUnitHeaderBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %33, i32 0, i32 6
  %34 = load i32, i32* %NumberofBasicUnitHeaderBits, align 4
  %add = add nsw i32 %mul, %34
  %conv16 = sitofp i32 %add to double
  %35 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CodedBasicUnit17 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %35, i32 0, i32 45
  %36 = load i32, i32* %CodedBasicUnit17, align 4
  %conv18 = sitofp i32 %36 to double
  %div19 = fdiv double %conv16, %conv18
  %add20 = fadd double %div19, 5.000000e-01
  %conv21 = fptosi double %add20 to i32
  %37 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveHeaderBits122 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %37, i32 0, i32 40
  store i32 %conv21, i32* %PAveHeaderBits122, align 4
  %38 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveHeaderBits3 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %38, i32 0, i32 42
  %39 = load i32, i32* %PAveHeaderBits3, align 4
  %cmp23 = icmp eq i32 %39, 0
  br i1 %cmp23, label %if.then.25, label %if.else.27

if.then.25:                                       ; preds = %if.then.13
  %40 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveHeaderBits126 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %40, i32 0, i32 40
  %41 = load i32, i32* %PAveHeaderBits126, align 4
  %42 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveHeaderBits2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %42, i32 0, i32 41
  store i32 %41, i32* %PAveHeaderBits2, align 4
  br label %if.end

if.else.27:                                       ; preds = %if.then.13
  %43 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveHeaderBits128 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %43, i32 0, i32 40
  %44 = load i32, i32* %PAveHeaderBits128, align 4
  %45 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CodedBasicUnit29 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %45, i32 0, i32 45
  %46 = load i32, i32* %CodedBasicUnit29, align 4
  %mul30 = mul nsw i32 %44, %46
  %47 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveHeaderBits331 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %47, i32 0, i32 42
  %48 = load i32, i32* %PAveHeaderBits331, align 4
  %49 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit32 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %49, i32 0, i32 39
  %50 = load i32, i32* %NumberofBasicUnit32, align 4
  %mul33 = mul nsw i32 %48, %50
  %add34 = add nsw i32 %mul30, %mul33
  %conv35 = sitofp i32 %add34 to double
  %51 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit36 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %51, i32 0, i32 44
  %52 = load i32, i32* %TotalNumberofBasicUnit36, align 4
  %conv37 = sitofp i32 %52 to double
  %div38 = fdiv double %conv35, %conv37
  %add39 = fadd double %div38, 5.000000e-01
  %conv40 = fptosi double %add39 to i32
  %53 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveHeaderBits241 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %53, i32 0, i32 41
  store i32 %conv40, i32* %PAveHeaderBits241, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.27, %if.then.25
  br label %if.end.42

if.end.42:                                        ; preds = %if.end, %if.else
  %54 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %54, i32 0, i32 121
  %55 = load i32, i32* %PicInterlace, align 4
  %cmp43 = icmp eq i32 %55, 2
  br i1 %cmp43, label %land.lhs.true.47, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %if.end.42
  %56 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %56, i32 0, i32 122
  %57 = load i32, i32* %MbInterlace, align 4
  %tobool46 = icmp ne i32 %57, 0
  br i1 %tobool46, label %land.lhs.true.47, label %if.else.56

land.lhs.true.47:                                 ; preds = %lor.lhs.false.45, %if.end.42
  %58 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %58, i32 0, i32 1
  %59 = load i32, i32* %FieldControl, align 4
  %cmp48 = icmp eq i32 %59, 1
  br i1 %cmp48, label %if.then.50, label %if.else.56

if.then.50:                                       ; preds = %land.lhs.true.47
  %60 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD51 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %60, i32 0, i32 46
  %61 = load double, double* %CurrentFrameMAD51, align 8
  %62 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit52 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %62, i32 0, i32 44
  %63 = load i32, i32* %TotalNumberofBasicUnit52, align 4
  %sub53 = sub nsw i32 %63, 1
  %64 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit54 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %64, i32 0, i32 39
  %65 = load i32, i32* %NumberofBasicUnit54, align 4
  %sub55 = sub nsw i32 %sub53, %65
  %idxprom = sext i32 %sub55 to i64
  %66 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FCBUCFMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %66, i32 0, i32 61
  %67 = load double*, double** %FCBUCFMAD, align 8
  %arrayidx = getelementptr inbounds double, double* %67, i64 %idxprom
  store double %61, double* %arrayidx, align 8
  br label %if.end.64

if.else.56:                                       ; preds = %land.lhs.true.47, %lor.lhs.false.45
  %68 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD57 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %68, i32 0, i32 46
  %69 = load double, double* %CurrentFrameMAD57, align 8
  %70 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit58 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %70, i32 0, i32 44
  %71 = load i32, i32* %TotalNumberofBasicUnit58, align 4
  %sub59 = sub nsw i32 %71, 1
  %72 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit60 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %72, i32 0, i32 39
  %73 = load i32, i32* %NumberofBasicUnit60, align 4
  %sub61 = sub nsw i32 %sub59, %73
  %idxprom62 = sext i32 %sub61 to i64
  %74 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %BUCFMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %74, i32 0, i32 60
  %75 = load double*, double** %BUCFMAD, align 8
  %arrayidx63 = getelementptr inbounds double, double* %75, i64 %idxprom62
  store double %69, double* %arrayidx63, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.56, %if.then.50
  %76 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit65 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %76, i32 0, i32 39
  %77 = load i32, i32* %NumberofBasicUnit65, align 4
  %cmp66 = icmp ne i32 %77, 0
  br i1 %cmp66, label %if.then.68, label %if.else.74

if.then.68:                                       ; preds = %if.end.64
  %78 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedPFrame69 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %78, i32 0, i32 9
  %79 = load i32, i32* %NumberofCodedPFrame69, align 4
  %80 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit70 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %80, i32 0, i32 44
  %81 = load i32, i32* %TotalNumberofBasicUnit70, align 4
  %mul71 = mul nsw i32 %79, %81
  %82 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CodedBasicUnit72 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %82, i32 0, i32 45
  %83 = load i32, i32* %CodedBasicUnit72, align 4
  %add73 = add nsw i32 %mul71, %83
  store i32 %add73, i32* %m_Nc, align 4
  br label %if.end.81

if.else.74:                                       ; preds = %if.end.64
  %84 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedPFrame75 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %84, i32 0, i32 9
  %85 = load i32, i32* %NumberofCodedPFrame75, align 4
  %sub76 = sub nsw i32 %85, 1
  %86 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit77 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %86, i32 0, i32 44
  %87 = load i32, i32* %TotalNumberofBasicUnit77, align 4
  %mul78 = mul nsw i32 %sub76, %87
  %88 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CodedBasicUnit79 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %88, i32 0, i32 45
  %89 = load i32, i32* %CodedBasicUnit79, align 4
  %add80 = add nsw i32 %mul78, %89
  store i32 %add80, i32* %m_Nc, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.74, %if.then.68
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.3
  %90 = load i32, i32* %m_Nc, align 4
  %cmp83 = icmp sgt i32 %90, 1
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.end.82
  store i32 1, i32* %MADModelFlag, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %if.end.82
  %91 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofHeaderBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %91, i32 0, i32 4
  %92 = load i32, i32* %NumberofHeaderBits, align 4
  %93 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PPreHeader = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %93, i32 0, i32 34
  store i32 %92, i32* %PPreHeader, align 4
  store i32 19, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.86
  %94 = load i32, i32* %i, align 4
  %cmp87 = icmp sgt i32 %94, 0
  br i1 %cmp87, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %95 = load i32, i32* %i, align 4
  %sub89 = sub nsw i32 %95, 1
  %idxprom90 = sext i32 %sub89 to i64
  %96 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_rgQp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %96, i32 0, i32 23
  %arrayidx91 = getelementptr inbounds [21 x double], [21 x double]* %Pm_rgQp, i32 0, i64 %idxprom90
  %97 = load double, double* %arrayidx91, align 8
  %98 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %98 to i64
  %99 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_rgQp93 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %99, i32 0, i32 23
  %arrayidx94 = getelementptr inbounds [21 x double], [21 x double]* %Pm_rgQp93, i32 0, i64 %idxprom92
  store double %97, double* %arrayidx94, align 8
  %100 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %100 to i64
  %101 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_rgQp96 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %101, i32 0, i32 23
  %arrayidx97 = getelementptr inbounds [21 x double], [21 x double]* %Pm_rgQp96, i32 0, i64 %idxprom95
  %102 = load double, double* %arrayidx97, align 8
  %103 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %103 to i64
  %104 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_rgQp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %104, i32 0, i32 21
  %arrayidx99 = getelementptr inbounds [21 x double], [21 x double]* %m_rgQp, i32 0, i64 %idxprom98
  store double %102, double* %arrayidx99, align 8
  %105 = load i32, i32* %i, align 4
  %sub100 = sub nsw i32 %105, 1
  %idxprom101 = sext i32 %sub100 to i64
  %106 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_rgRp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %106, i32 0, i32 24
  %arrayidx102 = getelementptr inbounds [21 x double], [21 x double]* %Pm_rgRp, i32 0, i64 %idxprom101
  %107 = load double, double* %arrayidx102, align 8
  %108 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %108 to i64
  %109 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_rgRp104 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %109, i32 0, i32 24
  %arrayidx105 = getelementptr inbounds [21 x double], [21 x double]* %Pm_rgRp104, i32 0, i64 %idxprom103
  store double %107, double* %arrayidx105, align 8
  %110 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %110 to i64
  %111 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_rgRp107 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %111, i32 0, i32 24
  %arrayidx108 = getelementptr inbounds [21 x double], [21 x double]* %Pm_rgRp107, i32 0, i64 %idxprom106
  %112 = load double, double* %arrayidx108, align 8
  %113 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %113 to i64
  %114 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_rgRp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %114, i32 0, i32 22
  %arrayidx110 = getelementptr inbounds [21 x double], [21 x double]* %m_rgRp, i32 0, i64 %idxprom109
  store double %112, double* %arrayidx110, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %115 = load i32, i32* %i, align 4
  %dec = add nsw i32 %115, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %116 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %116, i32 0, i32 33
  %117 = load i32, i32* %m_Qc, align 4
  %call111 = call double @QP2Qstep(i32 %117)
  %118 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_rgQp112 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %118, i32 0, i32 23
  %arrayidx113 = getelementptr inbounds [21 x double], [21 x double]* %Pm_rgQp112, i32 0, i64 0
  store double %call111, double* %arrayidx113, align 8
  %119 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit114 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %119, i32 0, i32 132
  %120 = load i32, i32* %BasicUnit114, align 4
  %121 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs115 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %121, i32 0, i32 120
  %122 = load i32, i32* %FrameSizeInMbs115, align 4
  %cmp116 = icmp eq i32 %120, %122
  br i1 %cmp116, label %if.then.118, label %if.else.125

if.then.118:                                      ; preds = %for.end
  %123 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofTextureBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %123, i32 0, i32 5
  %124 = load i32, i32* %NumberofTextureBits, align 4
  %conv119 = sitofp i32 %124 to double
  %mul120 = fmul double %conv119, 1.000000e+00
  %125 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD121 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %125, i32 0, i32 46
  %126 = load double, double* %CurrentFrameMAD121, align 8
  %div122 = fdiv double %mul120, %126
  %127 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_rgRp123 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %127, i32 0, i32 24
  %arrayidx124 = getelementptr inbounds [21 x double], [21 x double]* %Pm_rgRp123, i32 0, i64 0
  store double %div122, double* %arrayidx124, align 8
  br label %if.end.132

if.else.125:                                      ; preds = %for.end
  %128 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofBasicUnitTextureBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %128, i32 0, i32 7
  %129 = load i32, i32* %NumberofBasicUnitTextureBits, align 4
  %conv126 = sitofp i32 %129 to double
  %mul127 = fmul double %conv126, 1.000000e+00
  %130 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD128 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %130, i32 0, i32 46
  %131 = load double, double* %CurrentFrameMAD128, align 8
  %div129 = fdiv double %mul127, %131
  %132 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_rgRp130 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %132, i32 0, i32 24
  %arrayidx131 = getelementptr inbounds [21 x double], [21 x double]* %Pm_rgRp130, i32 0, i64 0
  store double %div129, double* %arrayidx131, align 8
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.125, %if.then.118
  %133 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_rgQp133 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %133, i32 0, i32 23
  %arrayidx134 = getelementptr inbounds [21 x double], [21 x double]* %Pm_rgQp133, i32 0, i64 0
  %134 = load double, double* %arrayidx134, align 8
  %135 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_rgQp135 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %135, i32 0, i32 21
  %arrayidx136 = getelementptr inbounds [21 x double], [21 x double]* %m_rgQp135, i32 0, i64 0
  store double %134, double* %arrayidx136, align 8
  %136 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_rgRp137 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %136, i32 0, i32 24
  %arrayidx138 = getelementptr inbounds [21 x double], [21 x double]* %Pm_rgRp137, i32 0, i64 0
  %137 = load double, double* %arrayidx138, align 8
  %138 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_rgRp139 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %138, i32 0, i32 22
  %arrayidx140 = getelementptr inbounds [21 x double], [21 x double]* %m_rgRp139, i32 0, i64 0
  store double %137, double* %arrayidx140, align 8
  %139 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_X1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %139, i32 0, i32 27
  %140 = load double, double* %Pm_X1, align 8
  %141 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %141, i32 0, i32 25
  store double %140, double* %m_X1, align 8
  %142 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_X2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %142, i32 0, i32 28
  %143 = load double, double* %Pm_X2, align 8
  %144 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %144, i32 0, i32 26
  store double %143, double* %m_X2, align 8
  %145 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD141 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %145, i32 0, i32 46
  %146 = load double, double* %CurrentFrameMAD141, align 8
  %147 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PreviousFrameMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %147, i32 0, i32 49
  %148 = load double, double* %PreviousFrameMAD, align 8
  %cmp142 = fcmp ogt double %146, %148
  br i1 %cmp142, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.132
  %149 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PreviousFrameMAD144 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %149, i32 0, i32 49
  %150 = load double, double* %PreviousFrameMAD144, align 8
  %151 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD145 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %151, i32 0, i32 46
  %152 = load double, double* %CurrentFrameMAD145, align 8
  %div146 = fdiv double %150, %152
  %mul147 = fmul double %div146, 2.000000e+01
  %conv148 = fptosi double %mul147 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.132
  %153 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD149 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %153, i32 0, i32 46
  %154 = load double, double* %CurrentFrameMAD149, align 8
  %155 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PreviousFrameMAD150 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %155, i32 0, i32 49
  %156 = load double, double* %PreviousFrameMAD150, align 8
  %div151 = fdiv double %154, %156
  %mul152 = fmul double %div151, 2.000000e+01
  %conv153 = fptosi double %mul152 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv148, %cond.true ], [ %conv153, %cond.false ]
  store i32 %cond, i32* %n_windowSize, align 4
  %157 = load i32, i32* %m_Nc, align 4
  %158 = load i32, i32* %n_windowSize, align 4
  %call154 = call i32 @iClip3(i32 1, i32 %157, i32 %158)
  store i32 %call154, i32* %n_windowSize, align 4
  %159 = load i32, i32* %n_windowSize, align 4
  %160 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_windowSize = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %160, i32 0, i32 32
  %161 = load i32, i32* %m_windowSize, align 4
  %add155 = add nsw i32 %161, 1
  %call156 = call i32 @imin(i32 %159, i32 %add155)
  store i32 %call156, i32* %n_windowSize, align 4
  %162 = load i32, i32* %n_windowSize, align 4
  %call157 = call i32 @imin(i32 %162, i32 20)
  store i32 %call157, i32* %n_windowSize, align 4
  %163 = load i32, i32* %n_windowSize, align 4
  %164 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_windowSize158 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %164, i32 0, i32 32
  store i32 %163, i32* %m_windowSize158, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.159

for.cond.159:                                     ; preds = %for.inc.165, %cond.end
  %165 = load i32, i32* %i, align 4
  %cmp160 = icmp slt i32 %165, 20
  br i1 %cmp160, label %for.body.162, label %for.end.166

for.body.162:                                     ; preds = %for.cond.159
  %166 = load i32, i32* %i, align 4
  %idxprom163 = sext i32 %166 to i64
  %arrayidx164 = getelementptr inbounds [21 x i32], [21 x i32]* @updateRCModel.m_rgRejected, i32 0, i64 %idxprom163
  store i32 0, i32* %arrayidx164, align 4
  br label %for.inc.165

for.inc.165:                                      ; preds = %for.body.162
  %167 = load i32, i32* %i, align 4
  %inc = add nsw i32 %167, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.159

for.end.166:                                      ; preds = %for.cond.159
  %168 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %169 = load i32, i32* %n_windowSize, align 4
  call void @RCModelEstimator(%struct.rc_quadratic* %168, i32 %169, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @updateRCModel.m_rgRejected, i32 0, i32 0))
  %170 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_windowSize167 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %170, i32 0, i32 32
  %171 = load i32, i32* %m_windowSize167, align 4
  store i32 %171, i32* %n_windowSize, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.168

for.cond.168:                                     ; preds = %for.inc.199, %for.end.166
  %172 = load i32, i32* %i, align 4
  %173 = load i32, i32* %n_windowSize, align 4
  %cmp169 = icmp slt i32 %172, %173
  br i1 %cmp169, label %for.body.171, label %for.end.201

for.body.171:                                     ; preds = %for.cond.168
  %174 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X1172 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %174, i32 0, i32 25
  %175 = load double, double* %m_X1172, align 8
  %176 = load i32, i32* %i, align 4
  %idxprom173 = sext i32 %176 to i64
  %177 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_rgQp174 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %177, i32 0, i32 21
  %arrayidx175 = getelementptr inbounds [21 x double], [21 x double]* %m_rgQp174, i32 0, i64 %idxprom173
  %178 = load double, double* %arrayidx175, align 8
  %div176 = fdiv double %175, %178
  %179 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X2177 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %179, i32 0, i32 26
  %180 = load double, double* %m_X2177, align 8
  %181 = load i32, i32* %i, align 4
  %idxprom178 = sext i32 %181 to i64
  %182 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_rgQp179 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %182, i32 0, i32 21
  %arrayidx180 = getelementptr inbounds [21 x double], [21 x double]* %m_rgQp179, i32 0, i64 %idxprom178
  %183 = load double, double* %arrayidx180, align 8
  %184 = load i32, i32* %i, align 4
  %idxprom181 = sext i32 %184 to i64
  %185 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_rgQp182 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %185, i32 0, i32 21
  %arrayidx183 = getelementptr inbounds [21 x double], [21 x double]* %m_rgQp182, i32 0, i64 %idxprom181
  %186 = load double, double* %arrayidx183, align 8
  %mul184 = fmul double %183, %186
  %div185 = fdiv double %180, %mul184
  %add186 = fadd double %div176, %div185
  %187 = load i32, i32* %i, align 4
  %idxprom187 = sext i32 %187 to i64
  %188 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_rgRp188 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %188, i32 0, i32 22
  %arrayidx189 = getelementptr inbounds [21 x double], [21 x double]* %m_rgRp188, i32 0, i64 %idxprom187
  %189 = load double, double* %arrayidx189, align 8
  %sub190 = fsub double %add186, %189
  %190 = load i32, i32* %i, align 4
  %idxprom191 = sext i32 %190 to i64
  %arrayidx192 = getelementptr inbounds [21 x double], [21 x double]* @updateRCModel.error, i32 0, i64 %idxprom191
  store double %sub190, double* %arrayidx192, align 8
  %191 = load i32, i32* %i, align 4
  %idxprom193 = sext i32 %191 to i64
  %arrayidx194 = getelementptr inbounds [21 x double], [21 x double]* @updateRCModel.error, i32 0, i64 %idxprom193
  %192 = load double, double* %arrayidx194, align 8
  %193 = load i32, i32* %i, align 4
  %idxprom195 = sext i32 %193 to i64
  %arrayidx196 = getelementptr inbounds [21 x double], [21 x double]* @updateRCModel.error, i32 0, i64 %idxprom195
  %194 = load double, double* %arrayidx196, align 8
  %mul197 = fmul double %192, %194
  %195 = load double, double* %std, align 8
  %add198 = fadd double %195, %mul197
  store double %add198, double* %std, align 8
  br label %for.inc.199

for.inc.199:                                      ; preds = %for.body.171
  %196 = load i32, i32* %i, align 4
  %inc200 = add nsw i32 %196, 1
  store i32 %inc200, i32* %i, align 4
  br label %for.cond.168

for.end.201:                                      ; preds = %for.cond.168
  %197 = load i32, i32* %n_windowSize, align 4
  %cmp202 = icmp eq i32 %197, 2
  br i1 %cmp202, label %cond.true.204, label %cond.false.205

cond.true.204:                                    ; preds = %for.end.201
  br label %cond.end.209

cond.false.205:                                   ; preds = %for.end.201
  %198 = load double, double* %std, align 8
  %199 = load i32, i32* %n_windowSize, align 4
  %conv206 = sitofp i32 %199 to double
  %div207 = fdiv double %198, %conv206
  %call208 = call double @sqrt(double %div207) #3
  br label %cond.end.209

cond.end.209:                                     ; preds = %cond.false.205, %cond.true.204
  %cond210 = phi double [ 0.000000e+00, %cond.true.204 ], [ %call208, %cond.false.205 ]
  store double %cond210, double* %threshold, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.211

for.cond.211:                                     ; preds = %for.inc.224, %cond.end.209
  %200 = load i32, i32* %i, align 4
  %201 = load i32, i32* %n_windowSize, align 4
  %cmp212 = icmp slt i32 %200, %201
  br i1 %cmp212, label %for.body.214, label %for.end.226

for.body.214:                                     ; preds = %for.cond.211
  %202 = load i32, i32* %i, align 4
  %idxprom215 = sext i32 %202 to i64
  %arrayidx216 = getelementptr inbounds [21 x double], [21 x double]* @updateRCModel.error, i32 0, i64 %idxprom215
  %203 = load double, double* %arrayidx216, align 8
  %call217 = call double @fabs(double %203) #8
  %204 = load double, double* %threshold, align 8
  %cmp218 = fcmp ogt double %call217, %204
  br i1 %cmp218, label %if.then.220, label %if.end.223

if.then.220:                                      ; preds = %for.body.214
  %205 = load i32, i32* %i, align 4
  %idxprom221 = sext i32 %205 to i64
  %arrayidx222 = getelementptr inbounds [21 x i32], [21 x i32]* @updateRCModel.m_rgRejected, i32 0, i64 %idxprom221
  store i32 1, i32* %arrayidx222, align 4
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.220, %for.body.214
  br label %for.inc.224

for.inc.224:                                      ; preds = %if.end.223
  %206 = load i32, i32* %i, align 4
  %inc225 = add nsw i32 %206, 1
  store i32 %inc225, i32* %i, align 4
  br label %for.cond.211

for.end.226:                                      ; preds = %for.cond.211
  store i32 0, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @updateRCModel.m_rgRejected, i32 0, i64 0), align 4
  %207 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %208 = load i32, i32* %n_windowSize, align 4
  call void @RCModelEstimator(%struct.rc_quadratic* %207, i32 %208, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @updateRCModel.m_rgRejected, i32 0, i32 0))
  %209 = load i32, i32* %MADModelFlag, align 4
  %tobool227 = icmp ne i32 %209, 0
  br i1 %tobool227, label %if.then.228, label %if.else.229

if.then.228:                                      ; preds = %for.end.226
  %210 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  call void @updateMADModel(%struct.rc_quadratic* %210)
  br label %if.end.245

if.else.229:                                      ; preds = %for.end.226
  %211 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type230 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %211, i32 0, i32 5
  %212 = load i32, i32* %type230, align 4
  %cmp231 = icmp eq i32 %212, 0
  br i1 %cmp231, label %land.lhs.true.237, label %lor.lhs.false.233

lor.lhs.false.233:                                ; preds = %if.else.229
  %213 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCUpdateMode234 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %213, i32 0, i32 162
  %214 = load i32, i32* %RCUpdateMode234, align 4
  %cmp235 = icmp eq i32 %214, 1
  br i1 %cmp235, label %land.lhs.true.237, label %if.end.244

land.lhs.true.237:                                ; preds = %lor.lhs.false.233, %if.else.229
  %215 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number238 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %215, i32 0, i32 0
  %216 = load i32, i32* %number238, align 4
  %217 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub239 = sub nsw i32 %216, %217
  %tobool240 = icmp ne i32 %sub239, 0
  br i1 %tobool240, label %if.then.241, label %if.end.244

if.then.241:                                      ; preds = %land.lhs.true.237
  %218 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD242 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %218, i32 0, i32 46
  %219 = load double, double* %CurrentFrameMAD242, align 8
  %220 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PPictureMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %220, i32 0, i32 18
  %arrayidx243 = getelementptr inbounds [21 x double], [21 x double]* %PPictureMAD, i32 0, i64 0
  store double %219, double* %arrayidx243, align 8
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.241, %land.lhs.true.237, %lor.lhs.false.233
  br label %if.end.245

if.end.245:                                       ; preds = %if.end.244, %if.then.228
  br label %if.end.246

if.end.246:                                       ; preds = %if.end.245, %land.lhs.true, %lor.lhs.false
  ret void
}

declare double @ComputeFrameMAD() #2

declare double @QP2Qstep(i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imin(i32 %a, i32 %b) #6 {
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
define void @RCModelEstimator(%struct.rc_quadratic* %prc, i32 %n_windowSize, i32* %m_rgRejected) #0 {
entry:
  %prc.addr = alloca %struct.rc_quadratic*, align 8
  %n_windowSize.addr = alloca i32, align 4
  %m_rgRejected.addr = alloca i32*, align 8
  %n_realSize = alloca i32, align 4
  %i = alloca i32, align 4
  %oneSampleQ = alloca double, align 8
  %a00 = alloca double, align 8
  %a01 = alloca double, align 8
  %a10 = alloca double, align 8
  %a11 = alloca double, align 8
  %b0 = alloca double, align 8
  %b1 = alloca double, align 8
  %MatrixValue = alloca double, align 8
  %estimateX2 = alloca i32, align 4
  store %struct.rc_quadratic* %prc, %struct.rc_quadratic** %prc.addr, align 8
  store i32 %n_windowSize, i32* %n_windowSize.addr, align 4
  store i32* %m_rgRejected, i32** %m_rgRejected.addr, align 8
  %0 = load i32, i32* %n_windowSize.addr, align 4
  store i32 %0, i32* %n_realSize, align 4
  store double 0.000000e+00, double* %oneSampleQ, align 8
  store double 0.000000e+00, double* %a00, align 8
  store double 0.000000e+00, double* %a01, align 8
  store double 0.000000e+00, double* %a10, align 8
  store double 0.000000e+00, double* %a11, align 8
  store double 0.000000e+00, double* %b0, align 8
  store double 0.000000e+00, double* %b1, align 8
  store i32 0, i32* %estimateX2, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n_windowSize.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %m_rgRejected.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %n_realSize, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %n_realSize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %8, i32 0, i32 26
  store double 0.000000e+00, double* %m_X2, align 8
  %9 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %9, i32 0, i32 25
  store double 0.000000e+00, double* %m_X1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.11, %for.end
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %n_windowSize.addr, align 4
  %cmp2 = icmp slt i32 %10, %11
  br i1 %cmp2, label %for.body.3, label %for.end.13

for.body.3:                                       ; preds = %for.cond.1
  %12 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %12 to i64
  %13 = load i32*, i32** %m_rgRejected.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %13, i64 %idxprom4
  %14 = load i32, i32* %arrayidx5, align 4
  %tobool6 = icmp ne i32 %14, 0
  br i1 %tobool6, label %if.end.10, label %if.then.7

if.then.7:                                        ; preds = %for.body.3
  %15 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_rgQp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %16, i32 0, i32 21
  %arrayidx9 = getelementptr inbounds [21 x double], [21 x double]* %m_rgQp, i32 0, i64 %idxprom8
  %17 = load double, double* %arrayidx9, align 8
  store double %17, double* %oneSampleQ, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %for.body.3
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.end.10
  %18 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %18, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond.1

for.end.13:                                       ; preds = %for.cond.1
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.37, %for.end.13
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %n_windowSize.addr, align 4
  %cmp15 = icmp slt i32 %19, %20
  br i1 %cmp15, label %for.body.16, label %for.end.39

for.body.16:                                      ; preds = %for.cond.14
  %21 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %21 to i64
  %22 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_rgQp18 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %22, i32 0, i32 21
  %arrayidx19 = getelementptr inbounds [21 x double], [21 x double]* %m_rgQp18, i32 0, i64 %idxprom17
  %23 = load double, double* %arrayidx19, align 8
  %24 = load double, double* %oneSampleQ, align 8
  %cmp20 = fcmp une double %23, %24
  br i1 %cmp20, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %for.body.16
  %25 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %25 to i64
  %26 = load i32*, i32** %m_rgRejected.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %26, i64 %idxprom21
  %27 = load i32, i32* %arrayidx22, align 4
  %tobool23 = icmp ne i32 %27, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true
  store i32 1, i32* %estimateX2, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %land.lhs.true, %for.body.16
  %28 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %28 to i64
  %29 = load i32*, i32** %m_rgRejected.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %29, i64 %idxprom26
  %30 = load i32, i32* %arrayidx27, align 4
  %tobool28 = icmp ne i32 %30, 0
  br i1 %tobool28, label %if.end.36, label %if.then.29

if.then.29:                                       ; preds = %if.end.25
  %31 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %31 to i64
  %32 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_rgQp31 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %32, i32 0, i32 21
  %arrayidx32 = getelementptr inbounds [21 x double], [21 x double]* %m_rgQp31, i32 0, i64 %idxprom30
  %33 = load double, double* %arrayidx32, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %34 to i64
  %35 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_rgRp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %35, i32 0, i32 22
  %arrayidx34 = getelementptr inbounds [21 x double], [21 x double]* %m_rgRp, i32 0, i64 %idxprom33
  %36 = load double, double* %arrayidx34, align 8
  %mul = fmul double %33, %36
  %37 = load i32, i32* %n_realSize, align 4
  %conv = sitofp i32 %37 to double
  %div = fdiv double %mul, %conv
  %38 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X135 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %38, i32 0, i32 25
  %39 = load double, double* %m_X135, align 8
  %add = fadd double %39, %div
  store double %add, double* %m_X135, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.29, %if.end.25
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %40 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %40, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond.14

for.end.39:                                       ; preds = %for.cond.14
  %41 = load i32, i32* %n_realSize, align 4
  %cmp40 = icmp sge i32 %41, 1
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.103

land.lhs.true.42:                                 ; preds = %for.end.39
  %42 = load i32, i32* %estimateX2, align 4
  %tobool43 = icmp ne i32 %42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.103

if.then.44:                                       ; preds = %land.lhs.true.42
  store i32 0, i32* %i, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.81, %if.then.44
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %n_windowSize.addr, align 4
  %cmp46 = icmp slt i32 %43, %44
  br i1 %cmp46, label %for.body.48, label %for.end.83

for.body.48:                                      ; preds = %for.cond.45
  %45 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %45 to i64
  %46 = load i32*, i32** %m_rgRejected.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %46, i64 %idxprom49
  %47 = load i32, i32* %arrayidx50, align 4
  %tobool51 = icmp ne i32 %47, 0
  br i1 %tobool51, label %if.end.80, label %if.then.52

if.then.52:                                       ; preds = %for.body.48
  %48 = load double, double* %a00, align 8
  %add53 = fadd double %48, 1.000000e+00
  store double %add53, double* %a00, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %49 to i64
  %50 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_rgQp55 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %50, i32 0, i32 21
  %arrayidx56 = getelementptr inbounds [21 x double], [21 x double]* %m_rgQp55, i32 0, i64 %idxprom54
  %51 = load double, double* %arrayidx56, align 8
  %div57 = fdiv double 1.000000e+00, %51
  %52 = load double, double* %a01, align 8
  %add58 = fadd double %52, %div57
  store double %add58, double* %a01, align 8
  %53 = load double, double* %a01, align 8
  store double %53, double* %a10, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %54 to i64
  %55 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_rgQp60 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %55, i32 0, i32 21
  %arrayidx61 = getelementptr inbounds [21 x double], [21 x double]* %m_rgQp60, i32 0, i64 %idxprom59
  %56 = load double, double* %arrayidx61, align 8
  %57 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %57 to i64
  %58 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_rgQp63 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %58, i32 0, i32 21
  %arrayidx64 = getelementptr inbounds [21 x double], [21 x double]* %m_rgQp63, i32 0, i64 %idxprom62
  %59 = load double, double* %arrayidx64, align 8
  %mul65 = fmul double %56, %59
  %div66 = fdiv double 1.000000e+00, %mul65
  %60 = load double, double* %a11, align 8
  %add67 = fadd double %60, %div66
  store double %add67, double* %a11, align 8
  %61 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %61 to i64
  %62 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_rgQp69 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %62, i32 0, i32 21
  %arrayidx70 = getelementptr inbounds [21 x double], [21 x double]* %m_rgQp69, i32 0, i64 %idxprom68
  %63 = load double, double* %arrayidx70, align 8
  %64 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %64 to i64
  %65 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_rgRp72 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %65, i32 0, i32 22
  %arrayidx73 = getelementptr inbounds [21 x double], [21 x double]* %m_rgRp72, i32 0, i64 %idxprom71
  %66 = load double, double* %arrayidx73, align 8
  %mul74 = fmul double %63, %66
  %67 = load double, double* %b0, align 8
  %add75 = fadd double %67, %mul74
  store double %add75, double* %b0, align 8
  %68 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %68 to i64
  %69 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_rgRp77 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %69, i32 0, i32 22
  %arrayidx78 = getelementptr inbounds [21 x double], [21 x double]* %m_rgRp77, i32 0, i64 %idxprom76
  %70 = load double, double* %arrayidx78, align 8
  %71 = load double, double* %b1, align 8
  %add79 = fadd double %71, %70
  store double %add79, double* %b1, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.52, %for.body.48
  br label %for.inc.81

for.inc.81:                                       ; preds = %if.end.80
  %72 = load i32, i32* %i, align 4
  %inc82 = add nsw i32 %72, 1
  store i32 %inc82, i32* %i, align 4
  br label %for.cond.45

for.end.83:                                       ; preds = %for.cond.45
  %73 = load double, double* %a00, align 8
  %74 = load double, double* %a11, align 8
  %mul84 = fmul double %73, %74
  %75 = load double, double* %a01, align 8
  %76 = load double, double* %a10, align 8
  %mul85 = fmul double %75, %76
  %sub = fsub double %mul84, %mul85
  store double %sub, double* %MatrixValue, align 8
  %77 = load double, double* %MatrixValue, align 8
  %call = call double @fabs(double %77) #8
  %cmp86 = fcmp ogt double %call, 1.000000e-06
  br i1 %cmp86, label %if.then.88, label %if.else

if.then.88:                                       ; preds = %for.end.83
  %78 = load double, double* %b0, align 8
  %79 = load double, double* %a11, align 8
  %mul89 = fmul double %78, %79
  %80 = load double, double* %b1, align 8
  %81 = load double, double* %a01, align 8
  %mul90 = fmul double %80, %81
  %sub91 = fsub double %mul89, %mul90
  %82 = load double, double* %MatrixValue, align 8
  %div92 = fdiv double %sub91, %82
  %83 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X193 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %83, i32 0, i32 25
  store double %div92, double* %m_X193, align 8
  %84 = load double, double* %b1, align 8
  %85 = load double, double* %a00, align 8
  %mul94 = fmul double %84, %85
  %86 = load double, double* %b0, align 8
  %87 = load double, double* %a10, align 8
  %mul95 = fmul double %86, %87
  %sub96 = fsub double %mul94, %mul95
  %88 = load double, double* %MatrixValue, align 8
  %div97 = fdiv double %sub96, %88
  %89 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X298 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %89, i32 0, i32 26
  store double %div97, double* %m_X298, align 8
  br label %if.end.102

if.else:                                          ; preds = %for.end.83
  %90 = load double, double* %b0, align 8
  %91 = load double, double* %a00, align 8
  %div99 = fdiv double %90, %91
  %92 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X1100 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %92, i32 0, i32 25
  store double %div99, double* %m_X1100, align 8
  %93 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X2101 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %93, i32 0, i32 26
  store double 0.000000e+00, double* %m_X2101, align 8
  br label %if.end.102

if.end.102:                                       ; preds = %if.else, %if.then.88
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %land.lhs.true.42, %for.end.39
  %94 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %94, i32 0, i32 5
  %95 = load i32, i32* %type, align 4
  %cmp104 = icmp eq i32 %95, 0
  br i1 %cmp104, label %land.lhs.true.108, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.103
  %96 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCUpdateMode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %96, i32 0, i32 162
  %97 = load i32, i32* %RCUpdateMode, align 4
  %cmp106 = icmp eq i32 %97, 1
  br i1 %cmp106, label %land.lhs.true.108, label %if.end.114

land.lhs.true.108:                                ; preds = %lor.lhs.false, %if.end.103
  %98 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %98, i32 0, i32 0
  %99 = load i32, i32* %number, align 4
  %100 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub109 = sub nsw i32 %99, %100
  %tobool110 = icmp ne i32 %sub109, 0
  br i1 %tobool110, label %if.then.111, label %if.end.114

if.then.111:                                      ; preds = %land.lhs.true.108
  %101 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X1112 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %101, i32 0, i32 25
  %102 = load double, double* %m_X1112, align 8
  %103 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_X1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %103, i32 0, i32 27
  store double %102, double* %Pm_X1, align 8
  %104 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X2113 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %104, i32 0, i32 26
  %105 = load double, double* %m_X2113, align 8
  %106 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_X2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %106, i32 0, i32 28
  store double %105, double* %Pm_X2, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.111, %land.lhs.true.108, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

; Function Attrs: nounwind uwtable
define void @updateMADModel(%struct.rc_quadratic* %prc) #0 {
entry:
  %prc.addr = alloca %struct.rc_quadratic*, align 8
  %n_windowSize = alloca i32, align 4
  %i = alloca i32, align 4
  %std = alloca double, align 8
  %threshold = alloca double, align 8
  %m_Nc = alloca i32, align 4
  store %struct.rc_quadratic* %prc, %struct.rc_quadratic** %prc.addr, align 8
  store double 0.000000e+00, double* %std, align 8
  %0 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedPFrame = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %0, i32 0, i32 9
  %1 = load i32, i32* %NumberofCodedPFrame, align 4
  store i32 %1, i32* %m_Nc, align 4
  %2 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedPFrame1 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %2, i32 0, i32 9
  %3 = load i32, i32* %NumberofCodedPFrame1, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end.143

if.then:                                          ; preds = %entry
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 132
  %5 = load i32, i32* %BasicUnit, align 4
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 120
  %7 = load i32, i32* %FrameSizeInMbs, align 4
  %cmp2 = icmp eq i32 %5, %7
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %8 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedPFrame4 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %8, i32 0, i32 9
  %9 = load i32, i32* %NumberofCodedPFrame4, align 4
  store i32 %9, i32* %m_Nc, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofCodedPFrame5 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %10, i32 0, i32 9
  %11 = load i32, i32* %NumberofCodedPFrame5, align 4
  %12 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %12, i32 0, i32 44
  %13 = load i32, i32* %TotalNumberofBasicUnit, align 4
  %mul = mul nsw i32 %11, %13
  %14 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CodedBasicUnit = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %14, i32 0, i32 45
  %15 = load i32, i32* %CodedBasicUnit, align 4
  %add = add nsw i32 %mul, %15
  store i32 %add, i32* %m_Nc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  store i32 19, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load i32, i32* %i, align 4
  %cmp6 = icmp sgt i32 %16, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %17, 1
  %idxprom = sext i32 %sub to i64
  %18 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PPictureMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %18, i32 0, i32 18
  %arrayidx = getelementptr inbounds [21 x double], [21 x double]* %PPictureMAD, i32 0, i64 %idxprom
  %19 = load double, double* %arrayidx, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %20 to i64
  %21 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PPictureMAD8 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %21, i32 0, i32 18
  %arrayidx9 = getelementptr inbounds [21 x double], [21 x double]* %PPictureMAD8, i32 0, i64 %idxprom7
  store double %19, double* %arrayidx9, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %22 to i64
  %23 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PPictureMAD11 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %23, i32 0, i32 18
  %arrayidx12 = getelementptr inbounds [21 x double], [21 x double]* %PPictureMAD11, i32 0, i64 %idxprom10
  %24 = load double, double* %arrayidx12, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %25 to i64
  %26 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PictureMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %26, i32 0, i32 19
  %arrayidx14 = getelementptr inbounds [21 x double], [21 x double]* %PictureMAD, i32 0, i64 %idxprom13
  store double %24, double* %arrayidx14, align 8
  %27 = load i32, i32* %i, align 4
  %sub15 = sub nsw i32 %27, 1
  %idxprom16 = sext i32 %sub15 to i64
  %28 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %ReferenceMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %28, i32 0, i32 20
  %arrayidx17 = getelementptr inbounds [21 x double], [21 x double]* %ReferenceMAD, i32 0, i64 %idxprom16
  %29 = load double, double* %arrayidx17, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %30 to i64
  %31 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %ReferenceMAD19 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %31, i32 0, i32 20
  %arrayidx20 = getelementptr inbounds [21 x double], [21 x double]* %ReferenceMAD19, i32 0, i64 %idxprom18
  store double %29, double* %arrayidx20, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %33, i32 0, i32 46
  %34 = load double, double* %CurrentFrameMAD, align 8
  %35 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PPictureMAD21 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %35, i32 0, i32 18
  %arrayidx22 = getelementptr inbounds [21 x double], [21 x double]* %PPictureMAD21, i32 0, i64 0
  store double %34, double* %arrayidx22, align 8
  %36 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PPictureMAD23 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %36, i32 0, i32 18
  %arrayidx24 = getelementptr inbounds [21 x double], [21 x double]* %PPictureMAD23, i32 0, i64 0
  %37 = load double, double* %arrayidx24, align 8
  %38 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PictureMAD25 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %38, i32 0, i32 19
  %arrayidx26 = getelementptr inbounds [21 x double], [21 x double]* %PictureMAD25, i32 0, i64 0
  store double %37, double* %arrayidx26, align 8
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit27 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i32 0, i32 132
  %40 = load i32, i32* %BasicUnit27, align 4
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs28 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 120
  %42 = load i32, i32* %FrameSizeInMbs28, align 4
  %cmp29 = icmp eq i32 %40, %42
  br i1 %cmp29, label %if.then.30, label %if.else.35

if.then.30:                                       ; preds = %for.end
  %43 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PictureMAD31 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %43, i32 0, i32 19
  %arrayidx32 = getelementptr inbounds [21 x double], [21 x double]* %PictureMAD31, i32 0, i64 1
  %44 = load double, double* %arrayidx32, align 8
  %45 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %ReferenceMAD33 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %45, i32 0, i32 20
  %arrayidx34 = getelementptr inbounds [21 x double], [21 x double]* %ReferenceMAD33, i32 0, i64 0
  store double %44, double* %arrayidx34, align 8
  br label %if.end.56

if.else.35:                                       ; preds = %for.end
  %46 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %46, i32 0, i32 121
  %47 = load i32, i32* %PicInterlace, align 4
  %cmp36 = icmp eq i32 %47, 2
  br i1 %cmp36, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.35
  %48 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %48, i32 0, i32 122
  %49 = load i32, i32* %MbInterlace, align 4
  %tobool = icmp ne i32 %49, 0
  br i1 %tobool, label %land.lhs.true, label %if.else.46

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.else.35
  %50 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %50, i32 0, i32 1
  %51 = load i32, i32* %FieldControl, align 4
  %cmp37 = icmp eq i32 %51, 1
  br i1 %cmp37, label %if.then.38, label %if.else.46

if.then.38:                                       ; preds = %land.lhs.true
  %52 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit39 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %52, i32 0, i32 44
  %53 = load i32, i32* %TotalNumberofBasicUnit39, align 4
  %sub40 = sub nsw i32 %53, 1
  %54 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %54, i32 0, i32 39
  %55 = load i32, i32* %NumberofBasicUnit, align 4
  %sub41 = sub nsw i32 %sub40, %55
  %idxprom42 = sext i32 %sub41 to i64
  %56 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FCBUPFMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %56, i32 0, i32 62
  %57 = load double*, double** %FCBUPFMAD, align 8
  %arrayidx43 = getelementptr inbounds double, double* %57, i64 %idxprom42
  %58 = load double, double* %arrayidx43, align 8
  %59 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %ReferenceMAD44 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %59, i32 0, i32 20
  %arrayidx45 = getelementptr inbounds [21 x double], [21 x double]* %ReferenceMAD44, i32 0, i64 0
  store double %58, double* %arrayidx45, align 8
  br label %if.end.55

if.else.46:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %60 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit47 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %60, i32 0, i32 44
  %61 = load i32, i32* %TotalNumberofBasicUnit47, align 4
  %sub48 = sub nsw i32 %61, 1
  %62 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit49 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %62, i32 0, i32 39
  %63 = load i32, i32* %NumberofBasicUnit49, align 4
  %sub50 = sub nsw i32 %sub48, %63
  %idxprom51 = sext i32 %sub50 to i64
  %64 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %BUPFMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %64, i32 0, i32 59
  %65 = load double*, double** %BUPFMAD, align 8
  %arrayidx52 = getelementptr inbounds double, double* %65, i64 %idxprom51
  %66 = load double, double* %arrayidx52, align 8
  %67 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %ReferenceMAD53 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %67, i32 0, i32 20
  %arrayidx54 = getelementptr inbounds [21 x double], [21 x double]* %ReferenceMAD53, i32 0, i64 0
  store double %66, double* %arrayidx54, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.46, %if.then.38
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.30
  %68 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PMADPictureC1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %68, i32 0, i32 16
  %69 = load double, double* %PMADPictureC1, align 8
  %70 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %70, i32 0, i32 14
  store double %69, double* %MADPictureC1, align 8
  %71 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PMADPictureC2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %71, i32 0, i32 17
  %72 = load double, double* %PMADPictureC2, align 8
  %73 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %73, i32 0, i32 15
  store double %72, double* %MADPictureC2, align 8
  %74 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD57 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %74, i32 0, i32 46
  %75 = load double, double* %CurrentFrameMAD57, align 8
  %76 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PreviousFrameMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %76, i32 0, i32 49
  %77 = load double, double* %PreviousFrameMAD, align 8
  %cmp58 = fcmp ogt double %75, %77
  br i1 %cmp58, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.56
  %78 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PreviousFrameMAD59 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %78, i32 0, i32 49
  %79 = load double, double* %PreviousFrameMAD59, align 8
  %mul60 = fmul double 2.000000e+01, %79
  %80 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD61 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %80, i32 0, i32 46
  %81 = load double, double* %CurrentFrameMAD61, align 8
  %div = fdiv double %mul60, %81
  %conv = fptosi double %div to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.56
  %82 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD62 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %82, i32 0, i32 46
  %83 = load double, double* %CurrentFrameMAD62, align 8
  %mul63 = fmul double 2.000000e+01, %83
  %84 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PreviousFrameMAD64 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %84, i32 0, i32 49
  %85 = load double, double* %PreviousFrameMAD64, align 8
  %div65 = fdiv double %mul63, %85
  %conv66 = fptosi double %div65 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv66, %cond.false ]
  store i32 %cond, i32* %n_windowSize, align 4
  %86 = load i32, i32* %m_Nc, align 4
  %sub67 = sub nsw i32 %86, 1
  %87 = load i32, i32* %n_windowSize, align 4
  %call = call i32 @iClip3(i32 1, i32 %sub67, i32 %87)
  store i32 %call, i32* %n_windowSize, align 4
  %88 = load i32, i32* %n_windowSize, align 4
  %89 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADm_windowSize = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %89, i32 0, i32 31
  %90 = load i32, i32* %MADm_windowSize, align 4
  %add68 = add nsw i32 %90, 1
  %call69 = call i32 @imin(i32 20, i32 %add68)
  %call70 = call i32 @imin(i32 %88, i32 %call69)
  store i32 %call70, i32* %n_windowSize, align 4
  %91 = load i32, i32* %n_windowSize, align 4
  %92 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADm_windowSize71 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %92, i32 0, i32 31
  store i32 %91, i32* %MADm_windowSize71, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.78, %cond.end
  %93 = load i32, i32* %i, align 4
  %cmp73 = icmp slt i32 %93, 20
  br i1 %cmp73, label %for.body.75, label %for.end.79

for.body.75:                                      ; preds = %for.cond.72
  %94 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %94 to i64
  %arrayidx77 = getelementptr inbounds [21 x i32], [21 x i32]* @updateMADModel.PictureRejected, i32 0, i64 %idxprom76
  store i32 0, i32* %arrayidx77, align 4
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.body.75
  %95 = load i32, i32* %i, align 4
  %inc = add nsw i32 %95, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.72

for.end.79:                                       ; preds = %for.cond.72
  %96 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %96, i32 0, i32 5
  %97 = load i32, i32* %type, align 4
  %cmp80 = icmp eq i32 %97, 0
  br i1 %cmp80, label %land.lhs.true.85, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %for.end.79
  %98 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCUpdateMode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %98, i32 0, i32 162
  %99 = load i32, i32* %RCUpdateMode, align 4
  %cmp83 = icmp eq i32 %99, 1
  br i1 %cmp83, label %land.lhs.true.85, label %if.end.91

land.lhs.true.85:                                 ; preds = %lor.lhs.false.82, %for.end.79
  %100 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %100, i32 0, i32 0
  %101 = load i32, i32* %number, align 4
  %102 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub86 = sub nsw i32 %101, %102
  %tobool87 = icmp ne i32 %sub86, 0
  br i1 %tobool87, label %if.then.88, label %if.end.91

if.then.88:                                       ; preds = %land.lhs.true.85
  %103 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD89 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %103, i32 0, i32 46
  %104 = load double, double* %CurrentFrameMAD89, align 8
  %105 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PreviousFrameMAD90 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %105, i32 0, i32 49
  store double %104, double* %PreviousFrameMAD90, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.88, %land.lhs.true.85, %lor.lhs.false.82
  %106 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %107 = load i32, i32* %n_windowSize, align 4
  call void @MADModelEstimator(%struct.rc_quadratic* %106, i32 %107, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @updateMADModel.PictureRejected, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.115, %if.end.91
  %108 = load i32, i32* %i, align 4
  %109 = load i32, i32* %n_windowSize, align 4
  %cmp93 = icmp slt i32 %108, %109
  br i1 %cmp93, label %for.body.95, label %for.end.117

for.body.95:                                      ; preds = %for.cond.92
  %110 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC196 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %110, i32 0, i32 14
  %111 = load double, double* %MADPictureC196, align 8
  %112 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %112 to i64
  %113 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %ReferenceMAD98 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %113, i32 0, i32 20
  %arrayidx99 = getelementptr inbounds [21 x double], [21 x double]* %ReferenceMAD98, i32 0, i64 %idxprom97
  %114 = load double, double* %arrayidx99, align 8
  %mul100 = fmul double %111, %114
  %115 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC2101 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %115, i32 0, i32 15
  %116 = load double, double* %MADPictureC2101, align 8
  %add102 = fadd double %mul100, %116
  %117 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %117 to i64
  %118 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PictureMAD104 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %118, i32 0, i32 19
  %arrayidx105 = getelementptr inbounds [21 x double], [21 x double]* %PictureMAD104, i32 0, i64 %idxprom103
  %119 = load double, double* %arrayidx105, align 8
  %sub106 = fsub double %add102, %119
  %120 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %120 to i64
  %arrayidx108 = getelementptr inbounds [21 x double], [21 x double]* @updateMADModel.error, i32 0, i64 %idxprom107
  store double %sub106, double* %arrayidx108, align 8
  %121 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %121 to i64
  %arrayidx110 = getelementptr inbounds [21 x double], [21 x double]* @updateMADModel.error, i32 0, i64 %idxprom109
  %122 = load double, double* %arrayidx110, align 8
  %123 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %123 to i64
  %arrayidx112 = getelementptr inbounds [21 x double], [21 x double]* @updateMADModel.error, i32 0, i64 %idxprom111
  %124 = load double, double* %arrayidx112, align 8
  %mul113 = fmul double %122, %124
  %125 = load double, double* %std, align 8
  %add114 = fadd double %125, %mul113
  store double %add114, double* %std, align 8
  br label %for.inc.115

for.inc.115:                                      ; preds = %for.body.95
  %126 = load i32, i32* %i, align 4
  %inc116 = add nsw i32 %126, 1
  store i32 %inc116, i32* %i, align 4
  br label %for.cond.92

for.end.117:                                      ; preds = %for.cond.92
  %127 = load i32, i32* %n_windowSize, align 4
  %cmp118 = icmp eq i32 %127, 2
  br i1 %cmp118, label %cond.true.120, label %cond.false.121

cond.true.120:                                    ; preds = %for.end.117
  br label %cond.end.125

cond.false.121:                                   ; preds = %for.end.117
  %128 = load double, double* %std, align 8
  %129 = load i32, i32* %n_windowSize, align 4
  %conv122 = sitofp i32 %129 to double
  %div123 = fdiv double %128, %conv122
  %call124 = call double @sqrt(double %div123) #3
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.121, %cond.true.120
  %cond126 = phi double [ 0.000000e+00, %cond.true.120 ], [ %call124, %cond.false.121 ]
  store double %cond126, double* %threshold, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc.140, %cond.end.125
  %130 = load i32, i32* %i, align 4
  %131 = load i32, i32* %n_windowSize, align 4
  %cmp128 = icmp slt i32 %130, %131
  br i1 %cmp128, label %for.body.130, label %for.end.142

for.body.130:                                     ; preds = %for.cond.127
  %132 = load i32, i32* %i, align 4
  %idxprom131 = sext i32 %132 to i64
  %arrayidx132 = getelementptr inbounds [21 x double], [21 x double]* @updateMADModel.error, i32 0, i64 %idxprom131
  %133 = load double, double* %arrayidx132, align 8
  %call133 = call double @fabs(double %133) #8
  %134 = load double, double* %threshold, align 8
  %cmp134 = fcmp ogt double %call133, %134
  br i1 %cmp134, label %if.then.136, label %if.end.139

if.then.136:                                      ; preds = %for.body.130
  %135 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %135 to i64
  %arrayidx138 = getelementptr inbounds [21 x i32], [21 x i32]* @updateMADModel.PictureRejected, i32 0, i64 %idxprom137
  store i32 1, i32* %arrayidx138, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.136, %for.body.130
  br label %for.inc.140

for.inc.140:                                      ; preds = %if.end.139
  %136 = load i32, i32* %i, align 4
  %inc141 = add nsw i32 %136, 1
  store i32 %inc141, i32* %i, align 4
  br label %for.cond.127

for.end.142:                                      ; preds = %for.cond.127
  store i32 0, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @updateMADModel.PictureRejected, i32 0, i64 0), align 4
  %137 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %138 = load i32, i32* %n_windowSize, align 4
  call void @MADModelEstimator(%struct.rc_quadratic* %137, i32 %138, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @updateMADModel.PictureRejected, i32 0, i32 0))
  br label %if.end.143

if.end.143:                                       ; preds = %for.end.142, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @MADModelEstimator(%struct.rc_quadratic* %prc, i32 %n_windowSize, i32* %PictureRejected) #0 {
entry:
  %prc.addr = alloca %struct.rc_quadratic*, align 8
  %n_windowSize.addr = alloca i32, align 4
  %PictureRejected.addr = alloca i32*, align 8
  %n_realSize = alloca i32, align 4
  %i = alloca i32, align 4
  %oneSampleQ = alloca double, align 8
  %a00 = alloca double, align 8
  %a01 = alloca double, align 8
  %a10 = alloca double, align 8
  %a11 = alloca double, align 8
  %b0 = alloca double, align 8
  %b1 = alloca double, align 8
  %MatrixValue = alloca double, align 8
  %estimateX2 = alloca i32, align 4
  store %struct.rc_quadratic* %prc, %struct.rc_quadratic** %prc.addr, align 8
  store i32 %n_windowSize, i32* %n_windowSize.addr, align 4
  store i32* %PictureRejected, i32** %PictureRejected.addr, align 8
  %0 = load i32, i32* %n_windowSize.addr, align 4
  store i32 %0, i32* %n_realSize, align 4
  store double 0.000000e+00, double* %oneSampleQ, align 8
  store double 0.000000e+00, double* %a00, align 8
  store double 0.000000e+00, double* %a01, align 8
  store double 0.000000e+00, double* %a10, align 8
  store double 0.000000e+00, double* %a11, align 8
  store double 0.000000e+00, double* %b0, align 8
  store double 0.000000e+00, double* %b1, align 8
  store i32 0, i32* %estimateX2, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n_windowSize.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %PictureRejected.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %n_realSize, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %n_realSize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %8, i32 0, i32 15
  store double 0.000000e+00, double* %MADPictureC2, align 8
  %9 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %9, i32 0, i32 14
  store double 0.000000e+00, double* %MADPictureC1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.11, %for.end
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %n_windowSize.addr, align 4
  %cmp2 = icmp slt i32 %10, %11
  br i1 %cmp2, label %for.body.3, label %for.end.13

for.body.3:                                       ; preds = %for.cond.1
  %12 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %12 to i64
  %13 = load i32*, i32** %PictureRejected.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %13, i64 %idxprom4
  %14 = load i32, i32* %arrayidx5, align 4
  %tobool6 = icmp ne i32 %14, 0
  br i1 %tobool6, label %if.end.10, label %if.then.7

if.then.7:                                        ; preds = %for.body.3
  %15 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PictureMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %16, i32 0, i32 19
  %arrayidx9 = getelementptr inbounds [21 x double], [21 x double]* %PictureMAD, i32 0, i64 %idxprom8
  %17 = load double, double* %arrayidx9, align 8
  store double %17, double* %oneSampleQ, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %for.body.3
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.end.10
  %18 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %18, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond.1

for.end.13:                                       ; preds = %for.cond.1
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.37, %for.end.13
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %n_windowSize.addr, align 4
  %cmp15 = icmp slt i32 %19, %20
  br i1 %cmp15, label %for.body.16, label %for.end.39

for.body.16:                                      ; preds = %for.cond.14
  %21 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %21 to i64
  %22 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PictureMAD18 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %22, i32 0, i32 19
  %arrayidx19 = getelementptr inbounds [21 x double], [21 x double]* %PictureMAD18, i32 0, i64 %idxprom17
  %23 = load double, double* %arrayidx19, align 8
  %24 = load double, double* %oneSampleQ, align 8
  %cmp20 = fcmp une double %23, %24
  br i1 %cmp20, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %for.body.16
  %25 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %25 to i64
  %26 = load i32*, i32** %PictureRejected.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %26, i64 %idxprom21
  %27 = load i32, i32* %arrayidx22, align 4
  %tobool23 = icmp ne i32 %27, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true
  store i32 1, i32* %estimateX2, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %land.lhs.true, %for.body.16
  %28 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %28 to i64
  %29 = load i32*, i32** %PictureRejected.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %29, i64 %idxprom26
  %30 = load i32, i32* %arrayidx27, align 4
  %tobool28 = icmp ne i32 %30, 0
  br i1 %tobool28, label %if.end.36, label %if.then.29

if.then.29:                                       ; preds = %if.end.25
  %31 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %31 to i64
  %32 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PictureMAD31 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %32, i32 0, i32 19
  %arrayidx32 = getelementptr inbounds [21 x double], [21 x double]* %PictureMAD31, i32 0, i64 %idxprom30
  %33 = load double, double* %arrayidx32, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %34 to i64
  %35 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %ReferenceMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %35, i32 0, i32 20
  %arrayidx34 = getelementptr inbounds [21 x double], [21 x double]* %ReferenceMAD, i32 0, i64 %idxprom33
  %36 = load double, double* %arrayidx34, align 8
  %37 = load i32, i32* %n_realSize, align 4
  %conv = sitofp i32 %37 to double
  %mul = fmul double %36, %conv
  %div = fdiv double %33, %mul
  %38 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC135 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %38, i32 0, i32 14
  %39 = load double, double* %MADPictureC135, align 8
  %add = fadd double %39, %div
  store double %add, double* %MADPictureC135, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.29, %if.end.25
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %40 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %40, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond.14

for.end.39:                                       ; preds = %for.cond.14
  %41 = load i32, i32* %n_realSize, align 4
  %cmp40 = icmp sge i32 %41, 1
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.101

land.lhs.true.42:                                 ; preds = %for.end.39
  %42 = load i32, i32* %estimateX2, align 4
  %tobool43 = icmp ne i32 %42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.101

if.then.44:                                       ; preds = %land.lhs.true.42
  store i32 0, i32* %i, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.79, %if.then.44
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %n_windowSize.addr, align 4
  %cmp46 = icmp slt i32 %43, %44
  br i1 %cmp46, label %for.body.48, label %for.end.81

for.body.48:                                      ; preds = %for.cond.45
  %45 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %45 to i64
  %46 = load i32*, i32** %PictureRejected.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %46, i64 %idxprom49
  %47 = load i32, i32* %arrayidx50, align 4
  %tobool51 = icmp ne i32 %47, 0
  br i1 %tobool51, label %if.end.78, label %if.then.52

if.then.52:                                       ; preds = %for.body.48
  %48 = load double, double* %a00, align 8
  %add53 = fadd double %48, 1.000000e+00
  store double %add53, double* %a00, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %49 to i64
  %50 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %ReferenceMAD55 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %50, i32 0, i32 20
  %arrayidx56 = getelementptr inbounds [21 x double], [21 x double]* %ReferenceMAD55, i32 0, i64 %idxprom54
  %51 = load double, double* %arrayidx56, align 8
  %52 = load double, double* %a01, align 8
  %add57 = fadd double %52, %51
  store double %add57, double* %a01, align 8
  %53 = load double, double* %a01, align 8
  store double %53, double* %a10, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %54 to i64
  %55 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %ReferenceMAD59 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %55, i32 0, i32 20
  %arrayidx60 = getelementptr inbounds [21 x double], [21 x double]* %ReferenceMAD59, i32 0, i64 %idxprom58
  %56 = load double, double* %arrayidx60, align 8
  %57 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %57 to i64
  %58 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %ReferenceMAD62 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %58, i32 0, i32 20
  %arrayidx63 = getelementptr inbounds [21 x double], [21 x double]* %ReferenceMAD62, i32 0, i64 %idxprom61
  %59 = load double, double* %arrayidx63, align 8
  %mul64 = fmul double %56, %59
  %60 = load double, double* %a11, align 8
  %add65 = fadd double %60, %mul64
  store double %add65, double* %a11, align 8
  %61 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %61 to i64
  %62 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PictureMAD67 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %62, i32 0, i32 19
  %arrayidx68 = getelementptr inbounds [21 x double], [21 x double]* %PictureMAD67, i32 0, i64 %idxprom66
  %63 = load double, double* %arrayidx68, align 8
  %64 = load double, double* %b0, align 8
  %add69 = fadd double %64, %63
  store double %add69, double* %b0, align 8
  %65 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %65 to i64
  %66 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PictureMAD71 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %66, i32 0, i32 19
  %arrayidx72 = getelementptr inbounds [21 x double], [21 x double]* %PictureMAD71, i32 0, i64 %idxprom70
  %67 = load double, double* %arrayidx72, align 8
  %68 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %68 to i64
  %69 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %ReferenceMAD74 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %69, i32 0, i32 20
  %arrayidx75 = getelementptr inbounds [21 x double], [21 x double]* %ReferenceMAD74, i32 0, i64 %idxprom73
  %70 = load double, double* %arrayidx75, align 8
  %mul76 = fmul double %67, %70
  %71 = load double, double* %b1, align 8
  %add77 = fadd double %71, %mul76
  store double %add77, double* %b1, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.52, %for.body.48
  br label %for.inc.79

for.inc.79:                                       ; preds = %if.end.78
  %72 = load i32, i32* %i, align 4
  %inc80 = add nsw i32 %72, 1
  store i32 %inc80, i32* %i, align 4
  br label %for.cond.45

for.end.81:                                       ; preds = %for.cond.45
  %73 = load double, double* %a00, align 8
  %74 = load double, double* %a11, align 8
  %mul82 = fmul double %73, %74
  %75 = load double, double* %a01, align 8
  %76 = load double, double* %a10, align 8
  %mul83 = fmul double %75, %76
  %sub = fsub double %mul82, %mul83
  store double %sub, double* %MatrixValue, align 8
  %77 = load double, double* %MatrixValue, align 8
  %call = call double @fabs(double %77) #8
  %cmp84 = fcmp ogt double %call, 1.000000e-06
  br i1 %cmp84, label %if.then.86, label %if.else

if.then.86:                                       ; preds = %for.end.81
  %78 = load double, double* %b0, align 8
  %79 = load double, double* %a11, align 8
  %mul87 = fmul double %78, %79
  %80 = load double, double* %b1, align 8
  %81 = load double, double* %a01, align 8
  %mul88 = fmul double %80, %81
  %sub89 = fsub double %mul87, %mul88
  %82 = load double, double* %MatrixValue, align 8
  %div90 = fdiv double %sub89, %82
  %83 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC291 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %83, i32 0, i32 15
  store double %div90, double* %MADPictureC291, align 8
  %84 = load double, double* %b1, align 8
  %85 = load double, double* %a00, align 8
  %mul92 = fmul double %84, %85
  %86 = load double, double* %b0, align 8
  %87 = load double, double* %a10, align 8
  %mul93 = fmul double %86, %87
  %sub94 = fsub double %mul92, %mul93
  %88 = load double, double* %MatrixValue, align 8
  %div95 = fdiv double %sub94, %88
  %89 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC196 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %89, i32 0, i32 14
  store double %div95, double* %MADPictureC196, align 8
  br label %if.end.100

if.else:                                          ; preds = %for.end.81
  %90 = load double, double* %b0, align 8
  %91 = load double, double* %a01, align 8
  %div97 = fdiv double %90, %91
  %92 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC198 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %92, i32 0, i32 14
  store double %div97, double* %MADPictureC198, align 8
  %93 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC299 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %93, i32 0, i32 15
  store double 0.000000e+00, double* %MADPictureC299, align 8
  br label %if.end.100

if.end.100:                                       ; preds = %if.else, %if.then.86
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %land.lhs.true.42, %for.end.39
  %94 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %94, i32 0, i32 5
  %95 = load i32, i32* %type, align 4
  %cmp102 = icmp eq i32 %95, 0
  br i1 %cmp102, label %land.lhs.true.106, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.101
  %96 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCUpdateMode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %96, i32 0, i32 162
  %97 = load i32, i32* %RCUpdateMode, align 4
  %cmp104 = icmp eq i32 %97, 1
  br i1 %cmp104, label %land.lhs.true.106, label %if.end.112

land.lhs.true.106:                                ; preds = %lor.lhs.false, %if.end.101
  %98 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %98, i32 0, i32 0
  %99 = load i32, i32* %number, align 4
  %100 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub107 = sub nsw i32 %99, %100
  %tobool108 = icmp ne i32 %sub107, 0
  br i1 %tobool108, label %if.then.109, label %if.end.112

if.then.109:                                      ; preds = %land.lhs.true.106
  %101 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC1110 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %101, i32 0, i32 14
  %102 = load double, double* %MADPictureC1110, align 8
  %103 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PMADPictureC1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %103, i32 0, i32 16
  store double %102, double* %PMADPictureC1, align 8
  %104 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC2111 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %104, i32 0, i32 15
  %105 = load double, double* %MADPictureC2111, align 8
  %106 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PMADPictureC2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %106, i32 0, i32 17
  store double %105, double* %PMADPictureC2, align 8
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.109, %land.lhs.true.106, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define void @updateQPInterlace(%struct.rc_quadratic* %prc) #0 {
entry:
  %prc.addr = alloca %struct.rc_quadratic*, align 8
  store %struct.rc_quadratic* %prc, %struct.rc_quadratic** %prc.addr, align 8
  %0 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %0, i32 0, i32 1
  %1 = load i32, i32* %FieldControl, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %2 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldFrame = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %2, i32 0, i32 2
  %3 = load i32, i32* %FieldFrame, align 4
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %4 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %4, i32 0, i32 36
  %5 = load i32, i32* %CurrLastQP, align 4
  %6 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %6, i32 0, i32 35
  store i32 %5, i32* %PrevLastQP, align 4
  %7 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FrameQPBuffer = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %7, i32 0, i32 56
  %8 = load i32, i32* %FrameQPBuffer, align 4
  %9 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP3 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %9, i32 0, i32 36
  store i32 %8, i32* %CurrLastQP3, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP4 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %10, i32 0, i32 36
  %11 = load i32, i32* %CurrLastQP4, align 4
  %12 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP5 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %12, i32 0, i32 35
  store i32 %11, i32* %PrevLastQP5, align 4
  %13 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FieldQPBuffer = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %13, i32 0, i32 55
  %14 = load i32, i32* %FieldQPBuffer, align 4
  %15 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP6 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %15, i32 0, i32 36
  store i32 %14, i32* %CurrLastQP6, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @updateQPNonPicAFF(%struct.rc_quadratic* %prc) #0 {
entry:
  %prc.addr = alloca %struct.rc_quadratic*, align 8
  store %struct.rc_quadratic* %prc, %struct.rc_quadratic** %prc.addr, align 8
  %0 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %0, i32 0, i32 25
  %1 = load i32, i32* %frame_mbs_only_flag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %2, i32 0, i32 33
  %3 = load i32, i32* %m_Qc, align 4
  %4 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %TotalQpforPPicture = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %4, i32 0, i32 11
  %5 = load i32, i32* %TotalQpforPPicture, align 4
  %add = add nsw i32 %5, %3
  store i32 %add, i32* %TotalQpforPPicture, align 4
  %6 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %6, i32 0, i32 36
  %7 = load i32, i32* %CurrLastQP, align 4
  %8 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %8, i32 0, i32 35
  store i32 %7, i32* %PrevLastQP, align 4
  %9 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %9, i32 0, i32 33
  %10 = load i32, i32* %m_Qc1, align 4
  %11 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %11, i32 0, i32 36
  store i32 %10, i32* %CurrLastQP2, align 4
  %12 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc3 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %12, i32 0, i32 33
  %13 = load i32, i32* %m_Qc3, align 4
  %14 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_Qp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %14, i32 0, i32 29
  store i32 %13, i32* %Pm_Qp, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc4 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %15, i32 0, i32 33
  %16 = load i32, i32* %m_Qc4, align 4
  %17 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FrameQPBuffer = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %17, i32 0, i32 56
  store i32 %16, i32* %FrameQPBuffer, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @updateQPInterlaceBU(%struct.rc_quadratic* %prc) #0 {
entry:
  %prc.addr = alloca %struct.rc_quadratic*, align 8
  store %struct.rc_quadratic* %prc, %struct.rc_quadratic** %prc.addr, align 8
  %0 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldFrame = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %0, i32 0, i32 2
  %1 = load i32, i32* %FieldFrame, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FrameQPBuffer = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %2, i32 0, i32 56
  %3 = load i32, i32* %FrameQPBuffer, align 4
  %4 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %TotalQpforPPicture = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %4, i32 0, i32 11
  %5 = load i32, i32* %TotalQpforPPicture, align 4
  %add = add nsw i32 %5, %3
  store i32 %add, i32* %TotalQpforPPicture, align 4
  %6 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FrameQPBuffer1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %6, i32 0, i32 56
  %7 = load i32, i32* %FrameQPBuffer1, align 4
  %8 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_Qp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %8, i32 0, i32 29
  store i32 %7, i32* %Pm_Qp, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FieldQPBuffer = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %9, i32 0, i32 55
  %10 = load i32, i32* %FieldQPBuffer, align 4
  %11 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %TotalQpforPPicture2 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %11, i32 0, i32 11
  %12 = load i32, i32* %TotalQpforPPicture2, align 4
  %add3 = add nsw i32 %12, %10
  store i32 %add3, i32* %TotalQpforPPicture2, align 4
  %13 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FieldQPBuffer4 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %13, i32 0, i32 55
  %14 = load i32, i32* %FieldQPBuffer4, align 4
  %15 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_Qp5 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %15, i32 0, i32 29
  store i32 %14, i32* %Pm_Qp5, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @updateModelQPFrame(%struct.rc_quadratic* %prc, i32 %m_Bits) #0 {
entry:
  %prc.addr = alloca %struct.rc_quadratic*, align 8
  %m_Bits.addr = alloca i32, align 4
  %dtmp = alloca double, align 8
  %m_Qstep = alloca double, align 8
  store %struct.rc_quadratic* %prc, %struct.rc_quadratic** %prc.addr, align 8
  store i32 %m_Bits, i32* %m_Bits.addr, align 4
  %0 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %0, i32 0, i32 46
  %1 = load double, double* %CurrentFrameMAD, align 8
  %2 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %2, i32 0, i32 25
  %3 = load double, double* %m_X1, align 8
  %mul = fmul double %1, %3
  %4 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %4, i32 0, i32 46
  %5 = load double, double* %CurrentFrameMAD1, align 8
  %mul2 = fmul double %mul, %5
  %6 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X13 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %6, i32 0, i32 25
  %7 = load double, double* %m_X13, align 8
  %mul4 = fmul double %mul2, %7
  %8 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %8, i32 0, i32 26
  %9 = load double, double* %m_X2, align 8
  %mul5 = fmul double 4.000000e+00, %9
  %10 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD6 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %10, i32 0, i32 46
  %11 = load double, double* %CurrentFrameMAD6, align 8
  %mul7 = fmul double %mul5, %11
  %12 = load i32, i32* %m_Bits.addr, align 4
  %conv = sitofp i32 %12 to double
  %mul8 = fmul double %mul7, %conv
  %add = fadd double %mul4, %mul8
  store double %add, double* %dtmp, align 8
  %13 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X29 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %13, i32 0, i32 26
  %14 = load double, double* %m_X29, align 8
  %cmp = fcmp oeq double %14, 0.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %15 = load double, double* %dtmp, align 8
  %cmp11 = fcmp olt double %15, 0.000000e+00
  br i1 %cmp11, label %if.then, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false
  %16 = load double, double* %dtmp, align 8
  %call = call double @sqrt(double %16) #3
  %17 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X114 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %17, i32 0, i32 25
  %18 = load double, double* %m_X114, align 8
  %19 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD15 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %19, i32 0, i32 46
  %20 = load double, double* %CurrentFrameMAD15, align 8
  %mul16 = fmul double %18, %20
  %sub = fsub double %call, %mul16
  %cmp17 = fcmp ole double %sub, 0.000000e+00
  br i1 %cmp17, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.13, %lor.lhs.false, %entry
  %21 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X119 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %21, i32 0, i32 25
  %22 = load double, double* %m_X119, align 8
  %23 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD20 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %23, i32 0, i32 46
  %24 = load double, double* %CurrentFrameMAD20, align 8
  %mul21 = fmul double %22, %24
  %25 = load i32, i32* %m_Bits.addr, align 4
  %conv22 = sitofp i32 %25 to double
  %div = fdiv double %mul21, %conv22
  %conv23 = fptrunc double %div to float
  %conv24 = fpext float %conv23 to double
  store double %conv24, double* %m_Qstep, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.13
  %26 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X225 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %26, i32 0, i32 26
  %27 = load double, double* %m_X225, align 8
  %mul26 = fmul double 2.000000e+00, %27
  %28 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD27 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %28, i32 0, i32 46
  %29 = load double, double* %CurrentFrameMAD27, align 8
  %mul28 = fmul double %mul26, %29
  %30 = load double, double* %dtmp, align 8
  %call29 = call double @sqrt(double %30) #3
  %31 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X130 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %31, i32 0, i32 25
  %32 = load double, double* %m_X130, align 8
  %33 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD31 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %33, i32 0, i32 46
  %34 = load double, double* %CurrentFrameMAD31, align 8
  %mul32 = fmul double %32, %34
  %sub33 = fsub double %call29, %mul32
  %div34 = fdiv double %mul28, %sub33
  %conv35 = fptrunc double %div34 to float
  %conv36 = fpext float %conv35 to double
  store double %conv36, double* %m_Qstep, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %35 = load double, double* %m_Qstep, align 8
  %call37 = call i32 @Qstep2QP(double %35)
  %36 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %36, i32 0, i32 33
  store i32 %call37, i32* %m_Qc, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @updateBottomField(%struct.rc_quadratic* %prc) #0 {
entry:
  %prc.addr = alloca %struct.rc_quadratic*, align 8
  store %struct.rc_quadratic* %prc, %struct.rc_quadratic** %prc.addr, align 8
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 121
  %1 = load i32, i32* %PicInterlace, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %2, i32 0, i32 33
  %3 = load i32, i32* %m_Qc, align 4
  %4 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %TotalQpforPPicture = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %4, i32 0, i32 11
  %5 = load i32, i32* %TotalQpforPPicture, align 4
  %add = add nsw i32 %5, %3
  store i32 %add, i32* %TotalQpforPPicture, align 4
  %6 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %6, i32 0, i32 36
  %7 = load i32, i32* %CurrLastQP, align 4
  %add1 = add nsw i32 %7, 1
  %8 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %8, i32 0, i32 35
  store i32 %add1, i32* %PrevLastQP, align 4
  %9 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %9, i32 0, i32 33
  %10 = load i32, i32* %m_Qc2, align 4
  %11 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP3 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %11, i32 0, i32 36
  store i32 %10, i32* %CurrLastQP3, align 4
  %12 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc4 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %12, i32 0, i32 33
  %13 = load i32, i32* %m_Qc4, align 4
  %14 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_Qp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %14, i32 0, i32 29
  store i32 %13, i32* %Pm_Qp, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc5 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %15, i32 0, i32 33
  %16 = load i32, i32* %m_Qc5, align 4
  %17 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FieldQPBuffer = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %17, i32 0, i32 55
  store i32 %16, i32* %FieldQPBuffer, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @updateFirstP(%struct.rc_quadratic* %prc, i32 %topfield) #0 {
entry:
  %prc.addr = alloca %struct.rc_quadratic*, align 8
  %topfield.addr = alloca i32, align 4
  store %struct.rc_quadratic* %prc, %struct.rc_quadratic** %prc.addr, align 8
  store i32 %topfield, i32* %topfield.addr, align 4
  %0 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MyInitialQp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %0, i32 0, i32 11
  %1 = load i32, i32* %MyInitialQp, align 4
  %2 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %2, i32 0, i32 33
  store i32 %1, i32* %m_Qc, align 4
  %3 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofBasicUnitHeaderBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %3, i32 0, i32 6
  store i32 0, i32* %NumberofBasicUnitHeaderBits, align 4
  %4 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofBasicUnitTextureBits = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %4, i32 0, i32 7
  store i32 0, i32* %NumberofBasicUnitTextureBits, align 4
  %5 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %5, i32 0, i32 39
  %6 = load i32, i32* %NumberofBasicUnit, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %NumberofBasicUnit, align 4
  %7 = load i32, i32* %topfield.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end.23, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %8, i32 0, i32 39
  %9 = load i32, i32* %NumberofBasicUnit1, align 4
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end.23

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %10, i32 0, i32 25
  %11 = load i32, i32* %frame_mbs_only_flag, align 4
  %tobool2 = icmp ne i32 %11, 0
  br i1 %tobool2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 121
  %13 = load i32, i32* %PicInterlace, align 4
  %cmp3 = icmp eq i32 %13, 1
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %lor.lhs.false, %if.then
  %14 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc5 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %14, i32 0, i32 33
  %15 = load i32, i32* %m_Qc5, align 4
  %16 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %TotalQpforPPicture = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %16, i32 0, i32 11
  %17 = load i32, i32* %TotalQpforPPicture, align 4
  %add = add nsw i32 %17, %15
  store i32 %add, i32* %TotalQpforPPicture, align 4
  %18 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %18, i32 0, i32 36
  %19 = load i32, i32* %CurrLastQP, align 4
  %20 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %20, i32 0, i32 35
  store i32 %19, i32* %PrevLastQP, align 4
  %21 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc6 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %21, i32 0, i32 33
  %22 = load i32, i32* %m_Qc6, align 4
  %23 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP7 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %23, i32 0, i32 36
  store i32 %22, i32* %CurrLastQP7, align 4
  %24 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc8 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %24, i32 0, i32 33
  %25 = load i32, i32* %m_Qc8, align 4
  %26 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveFrameQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %26, i32 0, i32 43
  store i32 %25, i32* %PAveFrameQP, align 4
  %27 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveHeaderBits2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %27, i32 0, i32 41
  %28 = load i32, i32* %PAveHeaderBits2, align 4
  %29 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveHeaderBits3 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %29, i32 0, i32 42
  store i32 %28, i32* %PAveHeaderBits3, align 4
  br label %if.end.22

if.else:                                          ; preds = %lor.lhs.false
  %30 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace9 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %30, i32 0, i32 121
  %31 = load i32, i32* %PicInterlace9, align 4
  %cmp10 = icmp eq i32 %31, 2
  br i1 %cmp10, label %if.then.13, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.else
  %32 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %32, i32 0, i32 122
  %33 = load i32, i32* %MbInterlace, align 4
  %tobool12 = icmp ne i32 %33, 0
  br i1 %tobool12, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %lor.lhs.false.11, %if.else
  %34 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %34, i32 0, i32 1
  %35 = load i32, i32* %FieldControl, align 4
  %cmp14 = icmp eq i32 %35, 0
  br i1 %cmp14, label %if.then.15, label %if.else.18

if.then.15:                                       ; preds = %if.then.13
  %36 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc16 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %36, i32 0, i32 33
  %37 = load i32, i32* %m_Qc16, align 4
  %38 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FrameQPBuffer = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %38, i32 0, i32 56
  store i32 %37, i32* %FrameQPBuffer, align 4
  %39 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveHeaderBits217 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %39, i32 0, i32 41
  %40 = load i32, i32* %PAveHeaderBits217, align 4
  %41 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FrameAveHeaderBits = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %41, i32 0, i32 57
  store i32 %40, i32* %FrameAveHeaderBits, align 4
  br label %if.end

if.else.18:                                       ; preds = %if.then.13
  %42 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc19 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %42, i32 0, i32 33
  %43 = load i32, i32* %m_Qc19, align 4
  %44 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FieldQPBuffer = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %44, i32 0, i32 55
  store i32 %43, i32* %FieldQPBuffer, align 4
  %45 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveHeaderBits220 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %45, i32 0, i32 41
  %46 = load i32, i32* %PAveHeaderBits220, align 4
  %47 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FieldAveHeaderBits = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %47, i32 0, i32 58
  store i32 %46, i32* %FieldAveHeaderBits, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.18, %if.then.15
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %lor.lhs.false.11
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.4
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %land.lhs.true, %entry
  %48 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc24 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %48, i32 0, i32 33
  %49 = load i32, i32* %m_Qc24, align 4
  %50 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_Qp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %50, i32 0, i32 29
  store i32 %49, i32* %Pm_Qp, align 4
  %51 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc25 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %51, i32 0, i32 33
  %52 = load i32, i32* %m_Qc25, align 4
  %53 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalFrameQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %53, i32 0, i32 38
  %54 = load i32, i32* %TotalFrameQP, align 4
  %add26 = add nsw i32 %54, %52
  store i32 %add26, i32* %TotalFrameQP, align 4
  %55 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc27 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %55, i32 0, i32 33
  %56 = load i32, i32* %m_Qc27, align 4
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define i32 @updateFirstBU(%struct.rc_quadratic* %prc, i32 %topfield) #0 {
entry:
  %prc.addr = alloca %struct.rc_quadratic*, align 8
  %topfield.addr = alloca i32, align 4
  store %struct.rc_quadratic* %prc, %struct.rc_quadratic** %prc.addr, align 8
  store i32 %topfield, i32* %topfield.addr, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 121
  %1 = load i32, i32* %PicInterlace, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 122
  %3 = load i32, i32* %MbInterlace, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %4 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %4, i32 0, i32 1
  %5 = load i32, i32* %FieldControl, align 4
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %if.then, label %if.end.17

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldFrame = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %6, i32 0, i32 2
  %7 = load i32, i32* %FieldFrame, align 4
  %cmp2 = icmp eq i32 %7, 1
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %8 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofPPicture = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %8, i32 0, i32 12
  %9 = load i32, i32* %NumberofPPicture, align 4
  %cmp4 = icmp sgt i32 %9, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.3
  %10 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FrameQPBuffer = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %10, i32 0, i32 56
  %11 = load i32, i32* %FrameQPBuffer, align 4
  %12 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %TotalQpforPPicture = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %12, i32 0, i32 11
  %13 = load i32, i32* %TotalQpforPPicture, align 4
  %add = add nsw i32 %13, %11
  store i32 %add, i32* %TotalQpforPPicture, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then.3
  %14 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FrameQPBuffer6 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %14, i32 0, i32 56
  %15 = load i32, i32* %FrameQPBuffer6, align 4
  %16 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveFrameQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %16, i32 0, i32 43
  store i32 %15, i32* %PAveFrameQP, align 4
  %17 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FrameAveHeaderBits = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %17, i32 0, i32 57
  %18 = load i32, i32* %FrameAveHeaderBits, align 4
  %19 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveHeaderBits3 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %19, i32 0, i32 42
  store i32 %18, i32* %PAveHeaderBits3, align 4
  br label %if.end.16

if.else:                                          ; preds = %if.then
  %20 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofPPicture7 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %20, i32 0, i32 12
  %21 = load i32, i32* %NumberofPPicture7, align 4
  %cmp8 = icmp sgt i32 %21, 0
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.else
  %22 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FieldQPBuffer = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %22, i32 0, i32 55
  %23 = load i32, i32* %FieldQPBuffer, align 4
  %24 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %TotalQpforPPicture10 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %24, i32 0, i32 11
  %25 = load i32, i32* %TotalQpforPPicture10, align 4
  %add11 = add nsw i32 %25, %23
  store i32 %add11, i32* %TotalQpforPPicture10, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.else
  %26 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FieldQPBuffer13 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %26, i32 0, i32 55
  %27 = load i32, i32* %FieldQPBuffer13, align 4
  %28 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveFrameQP14 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %28, i32 0, i32 43
  store i32 %27, i32* %PAveFrameQP14, align 4
  %29 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FieldAveHeaderBits = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %29, i32 0, i32 58
  %30 = load i32, i32* %FieldAveHeaderBits, align 4
  %31 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveHeaderBits315 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %31, i32 0, i32 42
  store i32 %30, i32* %PAveHeaderBits315, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.12, %if.end
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %land.lhs.true, %lor.lhs.false
  %32 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %32, i32 0, i32 68
  %33 = load i32, i32* %Target, align 4
  %cmp18 = icmp sle i32 %33, 0
  br i1 %cmp18, label %if.then.19, label %if.else.34

if.then.19:                                       ; preds = %if.end.17
  %34 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveFrameQP20 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %34, i32 0, i32 43
  %35 = load i32, i32* %PAveFrameQP20, align 4
  %add21 = add nsw i32 %35, 2
  %36 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %36, i32 0, i32 33
  store i32 %add21, i32* %m_Qc, align 4
  %37 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc22 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %37, i32 0, i32 33
  %38 = load i32, i32* %m_Qc22, align 4
  %39 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MAX_QUANT = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %39, i32 0, i32 9
  %40 = load i32, i32* %RC_MAX_QUANT, align 4
  %cmp23 = icmp sgt i32 %38, %40
  br i1 %cmp23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.then.19
  %41 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MAX_QUANT25 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %41, i32 0, i32 9
  %42 = load i32, i32* %RC_MAX_QUANT25, align 4
  %43 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc26 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %43, i32 0, i32 33
  store i32 %42, i32* %m_Qc26, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %if.then.19
  %44 = load i32, i32* %topfield.addr, align 4
  %tobool28 = icmp ne i32 %44, 0
  br i1 %tobool28, label %if.then.32, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %if.end.27
  %45 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl30 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %45, i32 0, i32 1
  %46 = load i32, i32* %FieldControl30, align 4
  %cmp31 = icmp eq i32 %46, 0
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %lor.lhs.false.29, %if.end.27
  %47 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %GOPOverdue = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %47, i32 0, i32 63
  store i32 1, i32* %GOPOverdue, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %lor.lhs.false.29
  br label %if.end.37

if.else.34:                                       ; preds = %if.end.17
  %48 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveFrameQP35 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %48, i32 0, i32 43
  %49 = load i32, i32* %PAveFrameQP35, align 4
  %50 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc36 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %50, i32 0, i32 33
  store i32 %49, i32* %m_Qc36, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.end.33
  %51 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc38 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %51, i32 0, i32 33
  %52 = load i32, i32* %m_Qc38, align 4
  %53 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalFrameQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %53, i32 0, i32 38
  %54 = load i32, i32* %TotalFrameQP, align 4
  %add39 = add nsw i32 %54, %52
  store i32 %add39, i32* %TotalFrameQP, align 4
  %55 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %55, i32 0, i32 39
  %56 = load i32, i32* %NumberofBasicUnit, align 4
  %dec = add nsw i32 %56, -1
  store i32 %dec, i32* %NumberofBasicUnit, align 4
  %57 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveFrameQP40 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %57, i32 0, i32 43
  %58 = load i32, i32* %PAveFrameQP40, align 4
  %59 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_Qp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %59, i32 0, i32 29
  store i32 %58, i32* %Pm_Qp, align 4
  %60 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc41 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %60, i32 0, i32 33
  %61 = load i32, i32* %m_Qc41, align 4
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define i32 @updateNegativeTarget(%struct.rc_quadratic* %prc, i32 %topfield, i32 %m_Qp) #0 {
entry:
  %prc.addr = alloca %struct.rc_quadratic*, align 8
  %topfield.addr = alloca i32, align 4
  %m_Qp.addr = alloca i32, align 4
  %PAverageQP = alloca i32, align 4
  store %struct.rc_quadratic* %prc, %struct.rc_quadratic** %prc.addr, align 8
  store i32 %topfield, i32* %topfield.addr, align 4
  store i32 %m_Qp, i32* %m_Qp.addr, align 4
  %0 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %GOPOverdue = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %0, i32 0, i32 63
  %1 = load i32, i32* %GOPOverdue, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %m_Qp.addr, align 4
  %add = add nsw i32 %2, 2
  %3 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %3, i32 0, i32 33
  store i32 %add, i32* %m_Qc, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %m_Qp.addr, align 4
  %5 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %DDquant = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %5, i32 0, i32 51
  %6 = load i32, i32* %DDquant, align 4
  %add1 = add nsw i32 %4, %6
  %7 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %7, i32 0, i32 33
  store i32 %add1, i32* %m_Qc2, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc3 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %8, i32 0, i32 33
  %9 = load i32, i32* %m_Qc3, align 4
  %10 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MAX_QUANT = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %10, i32 0, i32 9
  %11 = load i32, i32* %RC_MAX_QUANT, align 4
  %call = call i32 @imin(i32 %9, i32 %11)
  %12 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc4 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %12, i32 0, i32 33
  store i32 %call, i32* %m_Qc4, align 4
  %13 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %13, i32 0, i32 160
  %14 = load i32, i32* %basicunit, align 4
  %15 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MBPerRow = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %15, i32 0, i32 52
  %16 = load i32, i32* %MBPerRow, align 4
  %cmp5 = icmp uge i32 %14, %16
  br i1 %cmp5, label %if.then.6, label %if.else.11

if.then.6:                                        ; preds = %if.end
  %17 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc7 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %17, i32 0, i32 33
  %18 = load i32, i32* %m_Qc7, align 4
  %19 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveFrameQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %19, i32 0, i32 43
  %20 = load i32, i32* %PAveFrameQP, align 4
  %add8 = add nsw i32 %20, 6
  %call9 = call i32 @imin(i32 %18, i32 %add8)
  %21 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc10 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %21, i32 0, i32 33
  store i32 %call9, i32* %m_Qc10, align 4
  br label %if.end.17

if.else.11:                                       ; preds = %if.end
  %22 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc12 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %22, i32 0, i32 33
  %23 = load i32, i32* %m_Qc12, align 4
  %24 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveFrameQP13 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %24, i32 0, i32 43
  %25 = load i32, i32* %PAveFrameQP13, align 4
  %add14 = add nsw i32 %25, 3
  %call15 = call i32 @imin(i32 %23, i32 %add14)
  %26 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc16 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %26, i32 0, i32 33
  store i32 %call15, i32* %m_Qc16, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.11, %if.then.6
  %27 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc18 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %27, i32 0, i32 33
  %28 = load i32, i32* %m_Qc18, align 4
  %29 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalFrameQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %29, i32 0, i32 38
  %30 = load i32, i32* %TotalFrameQP, align 4
  %add19 = add nsw i32 %30, %28
  store i32 %add19, i32* %TotalFrameQP, align 4
  %31 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %31, i32 0, i32 39
  %32 = load i32, i32* %NumberofBasicUnit, align 4
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* %NumberofBasicUnit, align 4
  %33 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit20 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %33, i32 0, i32 39
  %34 = load i32, i32* %NumberofBasicUnit20, align 4
  %cmp21 = icmp eq i32 %34, 0
  br i1 %cmp21, label %if.then.22, label %if.end.99

if.then.22:                                       ; preds = %if.end.17
  %35 = load i32, i32* %topfield.addr, align 4
  %tobool = icmp ne i32 %35, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.24

lor.lhs.false:                                    ; preds = %if.then.22
  %36 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %36, i32 0, i32 1
  %37 = load i32, i32* %FieldControl, align 4
  %cmp23 = icmp eq i32 %37, 0
  br i1 %cmp23, label %if.then.24, label %if.end.98

if.then.24:                                       ; preds = %lor.lhs.false, %if.then.22
  %38 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %38, i32 0, i32 25
  %39 = load i32, i32* %frame_mbs_only_flag, align 4
  %tobool25 = icmp ne i32 %39, 0
  br i1 %tobool25, label %if.then.28, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %if.then.24
  %40 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %40, i32 0, i32 121
  %41 = load i32, i32* %PicInterlace, align 4
  %cmp27 = icmp eq i32 %41, 1
  br i1 %cmp27, label %if.then.28, label %if.else.67

if.then.28:                                       ; preds = %lor.lhs.false.26, %if.then.24
  %42 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalFrameQP29 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %42, i32 0, i32 38
  %43 = load i32, i32* %TotalFrameQP29, align 4
  %conv = sitofp i32 %43 to double
  %44 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %44, i32 0, i32 44
  %45 = load i32, i32* %TotalNumberofBasicUnit, align 4
  %conv30 = sitofp i32 %45 to double
  %div = fdiv double %conv, %conv30
  %add31 = fadd double %div, 5.000000e-01
  %conv32 = fptosi double %add31 to i32
  store i32 %conv32, i32* %PAverageQP, align 4
  %46 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofPPicture = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %46, i32 0, i32 12
  %47 = load i32, i32* %NumberofPPicture, align 4
  %48 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %48, i32 0, i32 30
  %49 = load i32, i32* %intra_period, align 4
  %sub = sub nsw i32 %49, 2
  %cmp33 = icmp eq i32 %47, %sub
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.28
  %50 = load i32, i32* %PAverageQP, align 4
  %51 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %QPLastPFrame = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %51, i32 0, i32 53
  store i32 %50, i32* %QPLastPFrame, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.then.28
  %52 = load i32, i32* %PAverageQP, align 4
  %53 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %TotalQpforPPicture = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %53, i32 0, i32 11
  %54 = load i32, i32* %TotalQpforPPicture, align 4
  %add37 = add nsw i32 %54, %52
  store i32 %add37, i32* %TotalQpforPPicture, align 4
  %55 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %GOPOverdue38 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %55, i32 0, i32 63
  %56 = load i32, i32* %GOPOverdue38, align 4
  %cmp39 = icmp eq i32 %56, 1
  br i1 %cmp39, label %if.then.41, label %if.else.44

if.then.41:                                       ; preds = %if.end.36
  %57 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %57, i32 0, i32 36
  %58 = load i32, i32* %CurrLastQP, align 4
  %add42 = add nsw i32 %58, 1
  %59 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %59, i32 0, i32 35
  store i32 %add42, i32* %PrevLastQP, align 4
  %60 = load i32, i32* %PAverageQP, align 4
  %61 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP43 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %61, i32 0, i32 36
  store i32 %60, i32* %CurrLastQP43, align 4
  br label %if.end.65

if.else.44:                                       ; preds = %if.end.36
  %62 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofPPicture45 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %62, i32 0, i32 12
  %63 = load i32, i32* %NumberofPPicture45, align 4
  %cmp46 = icmp eq i32 %63, 0
  br i1 %cmp46, label %land.lhs.true, label %if.else.54

land.lhs.true:                                    ; preds = %if.else.44
  %64 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofGOP = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %64, i32 0, i32 10
  %65 = load i32, i32* %NumberofGOP, align 4
  %cmp48 = icmp sgt i32 %65, 1
  br i1 %cmp48, label %if.then.50, label %if.else.54

if.then.50:                                       ; preds = %land.lhs.true
  %66 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP51 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %66, i32 0, i32 36
  %67 = load i32, i32* %CurrLastQP51, align 4
  %68 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP52 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %68, i32 0, i32 35
  store i32 %67, i32* %PrevLastQP52, align 4
  %69 = load i32, i32* %PAverageQP, align 4
  %70 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP53 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %70, i32 0, i32 36
  store i32 %69, i32* %CurrLastQP53, align 4
  br label %if.end.64

if.else.54:                                       ; preds = %land.lhs.true, %if.else.44
  %71 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofPPicture55 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %71, i32 0, i32 12
  %72 = load i32, i32* %NumberofPPicture55, align 4
  %cmp56 = icmp sgt i32 %72, 0
  br i1 %cmp56, label %if.then.58, label %if.end.63

if.then.58:                                       ; preds = %if.else.54
  %73 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP59 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %73, i32 0, i32 36
  %74 = load i32, i32* %CurrLastQP59, align 4
  %add60 = add nsw i32 %74, 1
  %75 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP61 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %75, i32 0, i32 35
  store i32 %add60, i32* %PrevLastQP61, align 4
  %76 = load i32, i32* %PAverageQP, align 4
  %77 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP62 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %77, i32 0, i32 36
  store i32 %76, i32* %CurrLastQP62, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.58, %if.else.54
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.50
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.41
  %78 = load i32, i32* %PAverageQP, align 4
  %79 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveFrameQP66 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %79, i32 0, i32 43
  store i32 %78, i32* %PAveFrameQP66, align 4
  %80 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveHeaderBits2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %80, i32 0, i32 41
  %81 = load i32, i32* %PAveHeaderBits2, align 4
  %82 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveHeaderBits3 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %82, i32 0, i32 42
  store i32 %81, i32* %PAveHeaderBits3, align 4
  br label %if.end.97

if.else.67:                                       ; preds = %lor.lhs.false.26
  %83 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace68 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %83, i32 0, i32 121
  %84 = load i32, i32* %PicInterlace68, align 4
  %cmp69 = icmp eq i32 %84, 2
  br i1 %cmp69, label %if.then.73, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %if.else.67
  %85 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %85, i32 0, i32 122
  %86 = load i32, i32* %MbInterlace, align 4
  %tobool72 = icmp ne i32 %86, 0
  br i1 %tobool72, label %if.then.73, label %if.end.96

if.then.73:                                       ; preds = %lor.lhs.false.71, %if.else.67
  %87 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl74 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %87, i32 0, i32 1
  %88 = load i32, i32* %FieldControl74, align 4
  %cmp75 = icmp eq i32 %88, 0
  br i1 %cmp75, label %if.then.77, label %if.else.86

if.then.77:                                       ; preds = %if.then.73
  %89 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalFrameQP78 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %89, i32 0, i32 38
  %90 = load i32, i32* %TotalFrameQP78, align 4
  %conv79 = sitofp i32 %90 to double
  %91 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit80 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %91, i32 0, i32 44
  %92 = load i32, i32* %TotalNumberofBasicUnit80, align 4
  %conv81 = sitofp i32 %92 to double
  %div82 = fdiv double %conv79, %conv81
  %add83 = fadd double %div82, 5.000000e-01
  %conv84 = fptosi double %add83 to i32
  store i32 %conv84, i32* %PAverageQP, align 4
  %93 = load i32, i32* %PAverageQP, align 4
  %94 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FrameQPBuffer = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %94, i32 0, i32 56
  store i32 %93, i32* %FrameQPBuffer, align 4
  %95 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveHeaderBits285 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %95, i32 0, i32 41
  %96 = load i32, i32* %PAveHeaderBits285, align 4
  %97 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FrameAveHeaderBits = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %97, i32 0, i32 57
  store i32 %96, i32* %FrameAveHeaderBits, align 4
  br label %if.end.95

if.else.86:                                       ; preds = %if.then.73
  %98 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalFrameQP87 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %98, i32 0, i32 38
  %99 = load i32, i32* %TotalFrameQP87, align 4
  %conv88 = sitofp i32 %99 to double
  %100 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit89 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %100, i32 0, i32 44
  %101 = load i32, i32* %TotalNumberofBasicUnit89, align 4
  %conv90 = sitofp i32 %101 to double
  %div91 = fdiv double %conv88, %conv90
  %add92 = fadd double %div91, 5.000000e-01
  %conv93 = fptosi double %add92 to i32
  store i32 %conv93, i32* %PAverageQP, align 4
  %102 = load i32, i32* %PAverageQP, align 4
  %103 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FieldQPBuffer = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %103, i32 0, i32 55
  store i32 %102, i32* %FieldQPBuffer, align 4
  %104 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveHeaderBits294 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %104, i32 0, i32 41
  %105 = load i32, i32* %PAveHeaderBits294, align 4
  %106 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FieldAveHeaderBits = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %106, i32 0, i32 58
  store i32 %105, i32* %FieldAveHeaderBits, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.86, %if.then.77
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %lor.lhs.false.71
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.65
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %lor.lhs.false
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.end.17
  %107 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %GOPOverdue100 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %107, i32 0, i32 63
  %108 = load i32, i32* %GOPOverdue100, align 4
  %cmp101 = icmp eq i32 %108, 1
  br i1 %cmp101, label %if.then.103, label %if.else.105

if.then.103:                                      ; preds = %if.end.99
  %109 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveFrameQP104 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %109, i32 0, i32 43
  %110 = load i32, i32* %PAveFrameQP104, align 4
  %111 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_Qp = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %111, i32 0, i32 29
  store i32 %110, i32* %Pm_Qp, align 4
  br label %if.end.108

if.else.105:                                      ; preds = %if.end.99
  %112 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc106 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %112, i32 0, i32 33
  %113 = load i32, i32* %m_Qc106, align 4
  %114 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Pm_Qp107 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %114, i32 0, i32 29
  store i32 %113, i32* %Pm_Qp107, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.105, %if.then.103
  %115 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc109 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %115, i32 0, i32 33
  %116 = load i32, i32* %m_Qc109, align 4
  ret i32 %116
}

; Function Attrs: nounwind uwtable
define void @predictCurrPicMAD(%struct.rc_quadratic* %prc) #0 {
entry:
  %prc.addr = alloca %struct.rc_quadratic*, align 8
  %i = alloca i32, align 4
  store %struct.rc_quadratic* %prc, %struct.rc_quadratic** %prc.addr, align 8
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 121
  %1 = load i32, i32* %PicInterlace, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 122
  %3 = load i32, i32* %MbInterlace, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %4 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %4, i32 0, i32 1
  %5 = load i32, i32* %FieldControl, align 4
  %cmp1 = icmp eq i32 %5, 1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %6, i32 0, i32 14
  %7 = load double, double* %MADPictureC1, align 8
  %8 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %8, i32 0, i32 44
  %9 = load i32, i32* %TotalNumberofBasicUnit, align 4
  %10 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %10, i32 0, i32 39
  %11 = load i32, i32* %NumberofBasicUnit, align 4
  %sub = sub nsw i32 %9, %11
  %idxprom = sext i32 %sub to i64
  %12 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FCBUPFMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %12, i32 0, i32 62
  %13 = load double*, double** %FCBUPFMAD, align 8
  %arrayidx = getelementptr inbounds double, double* %13, i64 %idxprom
  %14 = load double, double* %arrayidx, align 8
  %mul = fmul double %7, %14
  %15 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %15, i32 0, i32 15
  %16 = load double, double* %MADPictureC2, align 8
  %add = fadd double %mul, %16
  %17 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %17, i32 0, i32 46
  store double %add, double* %CurrentFrameMAD, align 8
  %18 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalBUMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %18, i32 0, i32 48
  store double 0.000000e+00, double* %TotalBUMAD, align 8
  %19 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %19, i32 0, i32 44
  %20 = load i32, i32* %TotalNumberofBasicUnit2, align 4
  %sub3 = sub nsw i32 %20, 1
  store i32 %sub3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %21 = load i32, i32* %i, align 4
  %22 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit4 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %22, i32 0, i32 44
  %23 = load i32, i32* %TotalNumberofBasicUnit4, align 4
  %24 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit5 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %24, i32 0, i32 39
  %25 = load i32, i32* %NumberofBasicUnit5, align 4
  %sub6 = sub nsw i32 %23, %25
  %cmp7 = icmp sge i32 %21, %sub6
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC18 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %26, i32 0, i32 14
  %27 = load double, double* %MADPictureC18, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %28 to i64
  %29 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FCBUPFMAD10 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %29, i32 0, i32 62
  %30 = load double*, double** %FCBUPFMAD10, align 8
  %arrayidx11 = getelementptr inbounds double, double* %30, i64 %idxprom9
  %31 = load double, double* %arrayidx11, align 8
  %mul12 = fmul double %27, %31
  %32 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC213 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %32, i32 0, i32 15
  %33 = load double, double* %MADPictureC213, align 8
  %add14 = fadd double %mul12, %33
  %34 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentBUMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %34, i32 0, i32 47
  store double %add14, double* %CurrentBUMAD, align 8
  %35 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentBUMAD15 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %35, i32 0, i32 47
  %36 = load double, double* %CurrentBUMAD15, align 8
  %37 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentBUMAD16 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %37, i32 0, i32 47
  %38 = load double, double* %CurrentBUMAD16, align 8
  %mul17 = fmul double %36, %38
  %39 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalBUMAD18 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %39, i32 0, i32 48
  %40 = load double, double* %TotalBUMAD18, align 8
  %add19 = fadd double %40, %mul17
  store double %add19, double* %TotalBUMAD18, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %i, align 4
  %dec = add nsw i32 %41, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %42 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC120 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %42, i32 0, i32 14
  %43 = load double, double* %MADPictureC120, align 8
  %44 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit21 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %44, i32 0, i32 44
  %45 = load i32, i32* %TotalNumberofBasicUnit21, align 4
  %46 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit22 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %46, i32 0, i32 39
  %47 = load i32, i32* %NumberofBasicUnit22, align 4
  %sub23 = sub nsw i32 %45, %47
  %idxprom24 = sext i32 %sub23 to i64
  %48 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %BUPFMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %48, i32 0, i32 59
  %49 = load double*, double** %BUPFMAD, align 8
  %arrayidx25 = getelementptr inbounds double, double* %49, i64 %idxprom24
  %50 = load double, double* %arrayidx25, align 8
  %mul26 = fmul double %43, %50
  %51 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC227 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %51, i32 0, i32 15
  %52 = load double, double* %MADPictureC227, align 8
  %add28 = fadd double %mul26, %52
  %53 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD29 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %53, i32 0, i32 46
  store double %add28, double* %CurrentFrameMAD29, align 8
  %54 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalBUMAD30 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %54, i32 0, i32 48
  store double 0.000000e+00, double* %TotalBUMAD30, align 8
  %55 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit31 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %55, i32 0, i32 44
  %56 = load i32, i32* %TotalNumberofBasicUnit31, align 4
  %sub32 = sub nsw i32 %56, 1
  store i32 %sub32, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.52, %if.else
  %57 = load i32, i32* %i, align 4
  %58 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit34 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %58, i32 0, i32 44
  %59 = load i32, i32* %TotalNumberofBasicUnit34, align 4
  %60 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %NumberofBasicUnit35 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %60, i32 0, i32 39
  %61 = load i32, i32* %NumberofBasicUnit35, align 4
  %sub36 = sub nsw i32 %59, %61
  %cmp37 = icmp sge i32 %57, %sub36
  br i1 %cmp37, label %for.body.38, label %for.end.54

for.body.38:                                      ; preds = %for.cond.33
  %62 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC139 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %62, i32 0, i32 14
  %63 = load double, double* %MADPictureC139, align 8
  %64 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %64 to i64
  %65 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %BUPFMAD41 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %65, i32 0, i32 59
  %66 = load double*, double** %BUPFMAD41, align 8
  %arrayidx42 = getelementptr inbounds double, double* %66, i64 %idxprom40
  %67 = load double, double* %arrayidx42, align 8
  %mul43 = fmul double %63, %67
  %68 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MADPictureC244 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %68, i32 0, i32 15
  %69 = load double, double* %MADPictureC244, align 8
  %add45 = fadd double %mul43, %69
  %70 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentBUMAD46 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %70, i32 0, i32 47
  store double %add45, double* %CurrentBUMAD46, align 8
  %71 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentBUMAD47 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %71, i32 0, i32 47
  %72 = load double, double* %CurrentBUMAD47, align 8
  %73 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentBUMAD48 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %73, i32 0, i32 47
  %74 = load double, double* %CurrentBUMAD48, align 8
  %mul49 = fmul double %72, %74
  %75 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalBUMAD50 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %75, i32 0, i32 48
  %76 = load double, double* %TotalBUMAD50, align 8
  %add51 = fadd double %76, %mul49
  store double %add51, double* %TotalBUMAD50, align 8
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.38
  %77 = load i32, i32* %i, align 4
  %dec53 = add nsw i32 %77, -1
  store i32 %dec53, i32* %i, align 4
  br label %for.cond.33

for.end.54:                                       ; preds = %for.cond.33
  br label %if.end

if.end:                                           ; preds = %for.end.54, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @updateModelQPBU(%struct.rc_quadratic* %prc, i32 %topfield, i32 %m_Qp) #0 {
entry:
  %prc.addr = alloca %struct.rc_quadratic*, align 8
  %topfield.addr = alloca i32, align 4
  %m_Qp.addr = alloca i32, align 4
  %dtmp = alloca double, align 8
  %m_Qstep = alloca double, align 8
  %m_Bits = alloca i32, align 4
  store %struct.rc_quadratic* %prc, %struct.rc_quadratic** %prc.addr, align 8
  store i32 %topfield, i32* %topfield.addr, align 4
  store i32 %m_Qp, i32* %m_Qp.addr, align 4
  %0 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %Target = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %0, i32 0, i32 68
  %1 = load i32, i32* %Target, align 4
  %conv = sitofp i32 %1 to double
  %2 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %2, i32 0, i32 46
  %3 = load double, double* %CurrentFrameMAD, align 8
  %mul = fmul double %conv, %3
  %4 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %4, i32 0, i32 46
  %5 = load double, double* %CurrentFrameMAD1, align 8
  %mul2 = fmul double %mul, %5
  %6 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalBUMAD = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %6, i32 0, i32 48
  %7 = load double, double* %TotalBUMAD, align 8
  %div = fdiv double %mul2, %7
  %conv3 = fptosi double %div to i32
  store i32 %conv3, i32* %m_Bits, align 4
  %8 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveHeaderBits2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %8, i32 0, i32 41
  %9 = load i32, i32* %PAveHeaderBits2, align 4
  %10 = load i32, i32* %m_Bits, align 4
  %sub = sub nsw i32 %10, %9
  store i32 %sub, i32* %m_Bits, align 4
  %11 = load i32, i32* %m_Bits, align 4
  %12 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %bit_rate = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %12, i32 0, i32 0
  %13 = load float, float* %bit_rate, align 4
  %14 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %frame_rate = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %14, i32 0, i32 1
  %15 = load float, float* %frame_rate, align 4
  %mul4 = fmul float 4.000000e+00, %15
  %16 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %16, i32 0, i32 44
  %17 = load i32, i32* %TotalNumberofBasicUnit, align 4
  %conv5 = sitofp i32 %17 to float
  %mul6 = fmul float %mul4, %conv5
  %div7 = fdiv float %13, %mul6
  %conv8 = fptosi float %div7 to i32
  %call = call i32 @imax(i32 %11, i32 %conv8)
  store i32 %call, i32* %m_Bits, align 4
  %18 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD9 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %18, i32 0, i32 46
  %19 = load double, double* %CurrentFrameMAD9, align 8
  %20 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD10 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %20, i32 0, i32 46
  %21 = load double, double* %CurrentFrameMAD10, align 8
  %mul11 = fmul double %19, %21
  %22 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X1 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %22, i32 0, i32 25
  %23 = load double, double* %m_X1, align 8
  %mul12 = fmul double %mul11, %23
  %24 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X113 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %24, i32 0, i32 25
  %25 = load double, double* %m_X113, align 8
  %mul14 = fmul double %mul12, %25
  %26 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %26, i32 0, i32 26
  %27 = load double, double* %m_X2, align 8
  %mul15 = fmul double 4.000000e+00, %27
  %28 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD16 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %28, i32 0, i32 46
  %29 = load double, double* %CurrentFrameMAD16, align 8
  %mul17 = fmul double %mul15, %29
  %30 = load i32, i32* %m_Bits, align 4
  %conv18 = sitofp i32 %30 to double
  %mul19 = fmul double %mul17, %conv18
  %add = fadd double %mul14, %mul19
  store double %add, double* %dtmp, align 8
  %31 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X220 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %31, i32 0, i32 26
  %32 = load double, double* %m_X220, align 8
  %cmp = fcmp oeq double %32, 0.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %33 = load double, double* %dtmp, align 8
  %cmp22 = fcmp olt double %33, 0.000000e+00
  br i1 %cmp22, label %if.then, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false
  %34 = load double, double* %dtmp, align 8
  %call25 = call double @sqrt(double %34) #3
  %35 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X126 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %35, i32 0, i32 25
  %36 = load double, double* %m_X126, align 8
  %37 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD27 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %37, i32 0, i32 46
  %38 = load double, double* %CurrentFrameMAD27, align 8
  %mul28 = fmul double %36, %38
  %sub29 = fsub double %call25, %mul28
  %cmp30 = fcmp ole double %sub29, 0.000000e+00
  br i1 %cmp30, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.24, %lor.lhs.false, %entry
  %39 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X132 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %39, i32 0, i32 25
  %40 = load double, double* %m_X132, align 8
  %41 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD33 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %41, i32 0, i32 46
  %42 = load double, double* %CurrentFrameMAD33, align 8
  %mul34 = fmul double %40, %42
  %43 = load i32, i32* %m_Bits, align 4
  %conv35 = sitofp i32 %43 to double
  %div36 = fdiv double %mul34, %conv35
  %conv37 = fptrunc double %div36 to float
  %conv38 = fpext float %conv37 to double
  store double %conv38, double* %m_Qstep, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.24
  %44 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X239 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %44, i32 0, i32 26
  %45 = load double, double* %m_X239, align 8
  %mul40 = fmul double 2.000000e+00, %45
  %46 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD41 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %46, i32 0, i32 46
  %47 = load double, double* %CurrentFrameMAD41, align 8
  %mul42 = fmul double %mul40, %47
  %48 = load double, double* %dtmp, align 8
  %call43 = call double @sqrt(double %48) #3
  %49 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_X144 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %49, i32 0, i32 25
  %50 = load double, double* %m_X144, align 8
  %51 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrentFrameMAD45 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %51, i32 0, i32 46
  %52 = load double, double* %CurrentFrameMAD45, align 8
  %mul46 = fmul double %50, %52
  %sub47 = fsub double %call43, %mul46
  %div48 = fdiv double %mul42, %sub47
  %conv49 = fptrunc double %div48 to float
  %conv50 = fpext float %conv49 to double
  store double %conv50, double* %m_Qstep, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %53 = load double, double* %m_Qstep, align 8
  %call51 = call i32 @Qstep2QP(double %53)
  %54 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %54, i32 0, i32 33
  store i32 %call51, i32* %m_Qc, align 4
  %55 = load i32, i32* %m_Qp.addr, align 4
  %56 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %DDquant = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %56, i32 0, i32 51
  %57 = load i32, i32* %DDquant, align 4
  %add52 = add nsw i32 %55, %57
  %58 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc53 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %58, i32 0, i32 33
  %59 = load i32, i32* %m_Qc53, align 4
  %call54 = call i32 @imin(i32 %add52, i32 %59)
  %60 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc55 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %60, i32 0, i32 33
  store i32 %call54, i32* %m_Qc55, align 4
  %61 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %61, i32 0, i32 160
  %62 = load i32, i32* %basicunit, align 4
  %63 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MBPerRow = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %63, i32 0, i32 52
  %64 = load i32, i32* %MBPerRow, align 4
  %cmp56 = icmp uge i32 %62, %64
  br i1 %cmp56, label %if.then.58, label %if.else.63

if.then.58:                                       ; preds = %if.end
  %65 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveFrameQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %65, i32 0, i32 43
  %66 = load i32, i32* %PAveFrameQP, align 4
  %add59 = add nsw i32 %66, 6
  %67 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc60 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %67, i32 0, i32 33
  %68 = load i32, i32* %m_Qc60, align 4
  %call61 = call i32 @imin(i32 %add59, i32 %68)
  %69 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc62 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %69, i32 0, i32 33
  store i32 %call61, i32* %m_Qc62, align 4
  br label %if.end.69

if.else.63:                                       ; preds = %if.end
  %70 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveFrameQP64 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %70, i32 0, i32 43
  %71 = load i32, i32* %PAveFrameQP64, align 4
  %add65 = add nsw i32 %71, 3
  %72 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc66 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %72, i32 0, i32 33
  %73 = load i32, i32* %m_Qc66, align 4
  %call67 = call i32 @imin(i32 %add65, i32 %73)
  %74 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc68 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %74, i32 0, i32 33
  store i32 %call67, i32* %m_Qc68, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.63, %if.then.58
  %75 = load i32, i32* %m_Qp.addr, align 4
  %76 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %DDquant70 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %76, i32 0, i32 51
  %77 = load i32, i32* %DDquant70, align 4
  %sub71 = sub nsw i32 %75, %77
  %78 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MAX_QUANT = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %78, i32 0, i32 9
  %79 = load i32, i32* %RC_MAX_QUANT, align 4
  %80 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc72 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %80, i32 0, i32 33
  %81 = load i32, i32* %m_Qc72, align 4
  %call73 = call i32 @iClip3(i32 %sub71, i32 %79, i32 %81)
  %82 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc74 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %82, i32 0, i32 33
  store i32 %call73, i32* %m_Qc74, align 4
  %83 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit75 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %83, i32 0, i32 160
  %84 = load i32, i32* %basicunit75, align 4
  %85 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %MBPerRow76 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %85, i32 0, i32 52
  %86 = load i32, i32* %MBPerRow76, align 4
  %cmp77 = icmp uge i32 %84, %86
  br i1 %cmp77, label %if.then.79, label %if.else.85

if.then.79:                                       ; preds = %if.end.69
  %87 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveFrameQP80 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %87, i32 0, i32 43
  %88 = load i32, i32* %PAveFrameQP80, align 4
  %sub81 = sub nsw i32 %88, 6
  %89 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc82 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %89, i32 0, i32 33
  %90 = load i32, i32* %m_Qc82, align 4
  %call83 = call i32 @imax(i32 %sub81, i32 %90)
  %91 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc84 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %91, i32 0, i32 33
  store i32 %call83, i32* %m_Qc84, align 4
  br label %if.end.91

if.else.85:                                       ; preds = %if.end.69
  %92 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveFrameQP86 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %92, i32 0, i32 43
  %93 = load i32, i32* %PAveFrameQP86, align 4
  %sub87 = sub nsw i32 %93, 3
  %94 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc88 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %94, i32 0, i32 33
  %95 = load i32, i32* %m_Qc88, align 4
  %call89 = call i32 @imax(i32 %sub87, i32 %95)
  %96 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc90 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %96, i32 0, i32 33
  store i32 %call89, i32* %m_Qc90, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.85, %if.then.79
  %97 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %RC_MIN_QUANT = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %97, i32 0, i32 10
  %98 = load i32, i32* %RC_MIN_QUANT, align 4
  %99 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc92 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %99, i32 0, i32 33
  %100 = load i32, i32* %m_Qc92, align 4
  %call93 = call i32 @imax(i32 %98, i32 %100)
  %101 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %m_Qc94 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %101, i32 0, i32 33
  store i32 %call93, i32* %m_Qc94, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @updateLastBU(%struct.rc_quadratic* %prc, i32 %topfield) #0 {
entry:
  %prc.addr = alloca %struct.rc_quadratic*, align 8
  %topfield.addr = alloca i32, align 4
  %PAverageQP = alloca i32, align 4
  store %struct.rc_quadratic* %prc, %struct.rc_quadratic** %prc.addr, align 8
  store i32 %topfield, i32* %topfield.addr, align 4
  %0 = load i32, i32* %topfield.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %1, i32 0, i32 1
  %2 = load i32, i32* %FieldControl, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end.42

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %3, i32 0, i32 25
  %4 = load i32, i32* %frame_mbs_only_flag, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then.4, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %if.then
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 121
  %6 = load i32, i32* %PicInterlace, align 4
  %cmp3 = icmp eq i32 %6, 1
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %lor.lhs.false.2, %if.then
  %7 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalFrameQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %7, i32 0, i32 38
  %8 = load i32, i32* %TotalFrameQP, align 4
  %conv = sitofp i32 %8 to double
  %9 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %9, i32 0, i32 44
  %10 = load i32, i32* %TotalNumberofBasicUnit, align 4
  %conv5 = sitofp i32 %10 to double
  %div = fdiv double %conv, %conv5
  %add = fadd double %div, 5.000000e-01
  %conv6 = fptosi double %add to i32
  store i32 %conv6, i32* %PAverageQP, align 4
  %11 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %NumberofPPicture = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %11, i32 0, i32 12
  %12 = load i32, i32* %NumberofPPicture, align 4
  %13 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %13, i32 0, i32 30
  %14 = load i32, i32* %intra_period, align 4
  %sub = sub nsw i32 %14, 2
  %cmp7 = icmp eq i32 %12, %sub
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.4
  %15 = load i32, i32* %PAverageQP, align 4
  %16 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %QPLastPFrame = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %16, i32 0, i32 53
  store i32 %15, i32* %QPLastPFrame, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then.4
  %17 = load i32, i32* %PAverageQP, align 4
  %18 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %TotalQpforPPicture = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %18, i32 0, i32 11
  %19 = load i32, i32* %TotalQpforPPicture, align 4
  %add10 = add nsw i32 %19, %17
  store i32 %add10, i32* %TotalQpforPPicture, align 4
  %20 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %20, i32 0, i32 36
  %21 = load i32, i32* %CurrLastQP, align 4
  %22 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PrevLastQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %22, i32 0, i32 35
  store i32 %21, i32* %PrevLastQP, align 4
  %23 = load i32, i32* %PAverageQP, align 4
  %24 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %CurrLastQP11 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %24, i32 0, i32 36
  store i32 %23, i32* %CurrLastQP11, align 4
  %25 = load i32, i32* %PAverageQP, align 4
  %26 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveFrameQP = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %26, i32 0, i32 43
  store i32 %25, i32* %PAveFrameQP, align 4
  %27 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveHeaderBits2 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %27, i32 0, i32 41
  %28 = load i32, i32* %PAveHeaderBits2, align 4
  %29 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveHeaderBits3 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %29, i32 0, i32 42
  store i32 %28, i32* %PAveHeaderBits3, align 4
  br label %if.end.41

if.else:                                          ; preds = %lor.lhs.false.2
  %30 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace12 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %30, i32 0, i32 121
  %31 = load i32, i32* %PicInterlace12, align 4
  %cmp13 = icmp eq i32 %31, 2
  br i1 %cmp13, label %if.then.17, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %if.else
  %32 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %32, i32 0, i32 122
  %33 = load i32, i32* %MbInterlace, align 4
  %tobool16 = icmp ne i32 %33, 0
  br i1 %tobool16, label %if.then.17, label %if.end.40

if.then.17:                                       ; preds = %lor.lhs.false.15, %if.else
  %34 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %FieldControl18 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %34, i32 0, i32 1
  %35 = load i32, i32* %FieldControl18, align 4
  %cmp19 = icmp eq i32 %35, 0
  br i1 %cmp19, label %if.then.21, label %if.else.30

if.then.21:                                       ; preds = %if.then.17
  %36 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalFrameQP22 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %36, i32 0, i32 38
  %37 = load i32, i32* %TotalFrameQP22, align 4
  %conv23 = sitofp i32 %37 to double
  %38 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit24 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %38, i32 0, i32 44
  %39 = load i32, i32* %TotalNumberofBasicUnit24, align 4
  %conv25 = sitofp i32 %39 to double
  %div26 = fdiv double %conv23, %conv25
  %add27 = fadd double %div26, 5.000000e-01
  %conv28 = fptosi double %add27 to i32
  store i32 %conv28, i32* %PAverageQP, align 4
  %40 = load i32, i32* %PAverageQP, align 4
  %41 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FrameQPBuffer = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %41, i32 0, i32 56
  store i32 %40, i32* %FrameQPBuffer, align 4
  %42 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveHeaderBits229 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %42, i32 0, i32 41
  %43 = load i32, i32* %PAveHeaderBits229, align 4
  %44 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FrameAveHeaderBits = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %44, i32 0, i32 57
  store i32 %43, i32* %FrameAveHeaderBits, align 4
  br label %if.end.39

if.else.30:                                       ; preds = %if.then.17
  %45 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalFrameQP31 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %45, i32 0, i32 38
  %46 = load i32, i32* %TotalFrameQP31, align 4
  %conv32 = sitofp i32 %46 to double
  %47 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %TotalNumberofBasicUnit33 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %47, i32 0, i32 44
  %48 = load i32, i32* %TotalNumberofBasicUnit33, align 4
  %conv34 = sitofp i32 %48 to double
  %div35 = fdiv double %conv32, %conv34
  %add36 = fadd double %div35, 5.000000e-01
  %conv37 = fptosi double %add36 to i32
  store i32 %conv37, i32* %PAverageQP, align 4
  %49 = load i32, i32* %PAverageQP, align 4
  %50 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FieldQPBuffer = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %50, i32 0, i32 55
  store i32 %49, i32* %FieldQPBuffer, align 4
  %51 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %PAveHeaderBits238 = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %51, i32 0, i32 41
  %52 = load i32, i32* %PAveHeaderBits238, align 4
  %53 = load %struct.rc_quadratic*, %struct.rc_quadratic** %prc.addr, align 8
  %FieldAveHeaderBits = getelementptr inbounds %struct.rc_quadratic, %struct.rc_quadratic* %53, i32 0, i32 58
  store i32 %52, i32* %FieldAveHeaderBits, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.30, %if.then.21
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %lor.lhs.false.15
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %lor.lhs.false
  ret void
}

declare i32 @Qstep2QP(double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
