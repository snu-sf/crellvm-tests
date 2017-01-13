; ModuleID = './MultiSource.Applications.JM/58.lencod.ratectl.bc'
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
%struct.rc_generic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32*, i64, i32, i32, i32, [5 x i32], i32, [5 x i32], i32, i32 }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@img = external global %struct.ImageParameters*, align 8
@generic_RC = common global %struct.rc_generic* null, align 8
@input = external global %struct.InputParameters*, align 8
@rdopt = common global %struct.RD_DATA* null, align 8
@delta_qp_mbaff = common global [2 x [2 x i32]] zeroinitializer, align 16
@qp_mbaff = common global [2 x [2 x i32]] zeroinitializer, align 16
@QP2Qstep.QP2QSTEP = internal constant [6 x double] [double 6.250000e-01, double 6.875000e-01, double 8.125000e-01, double 8.750000e-01, double 1.000000e+00, double 1.125000e+00], align 16
@diffy = common global [16 x [16 x i32]] zeroinitializer, align 16
@.str = private unnamed_addr constant [35 x i8] c"init_global_buffers: generic_alloc\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"init_global_buffers: (*prc)->MADofMB\00", align 1
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
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
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
@generic_RC_init = common global %struct.rc_generic* null, align 8
@generic_RC_best = common global %struct.rc_generic* null, align 8

; Function Attrs: nounwind uwtable
define void @update_rc(%struct.macroblock* %currMB, i16 signext %best_mode) #0 {
entry:
  %currMB.addr = alloca %struct.macroblock*, align 8
  %best_mode.addr = alloca i16, align 2
  store %struct.macroblock* %currMB, %struct.macroblock** %currMB.addr, align 8
  store i16 %best_mode, i16* %best_mode.addr, align 2
  %call = call i32 @calc_MAD()
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 3
  %1 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %MADofMB = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %2, i32 0, i32 14
  %3 = load i32*, i32** %MADofMB, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  store i32 %call, i32* %arrayidx, align 4
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 160
  %5 = load i32, i32* %basicunit, align 4
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 120
  %7 = load i32, i32* %FrameSizeInMbs, align 4
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %if.then, label %if.end.37

if.then:                                          ; preds = %entry
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 3
  %9 = load i32, i32* %current_mb_nr1, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %MADofMB3 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %10, i32 0, i32 14
  %11 = load i32*, i32** %MADofMB3, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %11, i64 %idxprom2
  %12 = load i32, i32* %arrayidx4, align 4
  %conv = sext i32 %12 to i64
  %13 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %TotalMADBasicUnit = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %13, i32 0, i32 13
  %14 = load i64, i64* %TotalMADBasicUnit, align 8
  %add = add nsw i64 %14, %conv
  store i64 %add, i64* %TotalMADBasicUnit, align 8
  %15 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %cbp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %15, i32 0, i32 12
  %16 = load i32, i32* %cbp, align 4
  %cmp5 = icmp ne i32 %16, 0
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %17 = load i16, i16* %best_mode.addr, align 2
  %conv7 = sext i16 %17 to i32
  %cmp8 = icmp eq i32 %conv7, 10
  br i1 %cmp8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %18 = load i16, i16* %best_mode.addr, align 2
  %conv10 = sext i16 %18 to i32
  %cmp11 = icmp ne i32 %conv10, 14
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %land.lhs.true
  %19 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %prev_cbp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %19, i32 0, i32 37
  store i32 1, i32* %prev_cbp, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %20 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %delta_qp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %20, i32 0, i32 1
  store i32 0, i32* %delta_qp, align 4
  %21 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %prev_qp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %21, i32 0, i32 35
  %22 = load i32, i32* %prev_qp, align 4
  %23 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %qp = getelementptr inbounds %struct.macroblock, %struct.macroblock* %23, i32 0, i32 2
  store i32 %22, i32* %qp, align 4
  %24 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %qp14 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %24, i32 0, i32 2
  %25 = load i32, i32* %qp14, align 4
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp15 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 9
  store i32 %25, i32* %qp15, align 4
  %27 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %prev_cbp16 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %27, i32 0, i32 37
  store i32 0, i32* %prev_cbp16, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.13
  %28 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %28, i32 0, i32 122
  %29 = load i32, i32* %MbInterlace, align 4
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then.17, label %if.end.36

if.then.17:                                       ; preds = %if.end
  %30 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %delta_qp18 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %30, i32 0, i32 1
  %31 = load i32, i32* %delta_qp18, align 4
  %32 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %delta_qp19 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %32, i32 0, i32 26
  store i32 %31, i32* %delta_qp19, align 4
  %33 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %qp20 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %33, i32 0, i32 2
  %34 = load i32, i32* %qp20, align 4
  %35 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %qp21 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %35, i32 0, i32 23
  store i32 %34, i32* %qp21, align 4
  %36 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %prev_cbp22 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %36, i32 0, i32 37
  %37 = load i32, i32* %prev_cbp22, align 4
  %38 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %prev_cbp23 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %38, i32 0, i32 27
  store i32 %37, i32* %prev_cbp23, align 4
  %39 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %delta_qp24 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %39, i32 0, i32 1
  %40 = load i32, i32* %delta_qp24, align 4
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 134
  %42 = load i32, i32* %bot_MB, align 4
  %idxprom25 = sext i32 %42 to i64
  %43 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %43, i32 0, i32 19
  %44 = load i32, i32* %mb_field, align 4
  %idxprom26 = sext i32 %44 to i64
  %arrayidx27 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @delta_qp_mbaff, i32 0, i64 %idxprom26
  %arrayidx28 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx27, i32 0, i64 %idxprom25
  store i32 %40, i32* %arrayidx28, align 4
  %45 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %qp29 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %45, i32 0, i32 2
  %46 = load i32, i32* %qp29, align 4
  %47 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB30 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %47, i32 0, i32 134
  %48 = load i32, i32* %bot_MB30, align 4
  %idxprom31 = sext i32 %48 to i64
  %49 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  %mb_field32 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %49, i32 0, i32 19
  %50 = load i32, i32* %mb_field32, align 4
  %idxprom33 = sext i32 %50 to i64
  %arrayidx34 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @qp_mbaff, i32 0, i64 %idxprom33
  %arrayidx35 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx34, i32 0, i64 %idxprom31
  store i32 %46, i32* %arrayidx35, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.17, %if.end
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %entry
  %51 = load %struct.macroblock*, %struct.macroblock** %currMB.addr, align 8
  call void @set_chroma_qp(%struct.macroblock* %51)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @calc_MAD() #0 {
entry:
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %l, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %l, align 4
  %cmp2 = icmp slt i32 %1, 16
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %l, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @diffy, i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx5, align 4
  %call = call i32 @iabs(i32 %4)
  %5 = load i32, i32* %sum, align 4
  %add = add nsw i32 %5, %call
  store i32 %add, i32* %sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %6 = load i32, i32* %l, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %7 = load i32, i32* %k, align 4
  %inc7 = add nsw i32 %7, 1
  store i32 %inc7, i32* %k, align 4
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  %8 = load i32, i32* %sum, align 4
  ret i32 %8
}

declare void @set_chroma_qp(%struct.macroblock*) #1

; Function Attrs: nounwind uwtable
define double @QP2Qstep(i32 %QP) #0 {
entry:
  %QP.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %Qstep = alloca double, align 8
  store i32 %QP, i32* %QP.addr, align 4
  %0 = load i32, i32* %QP.addr, align 4
  %rem = srem i32 %0, 6
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds [6 x double], [6 x double]* @QP2Qstep.QP2QSTEP, i32 0, i64 %idxprom
  %1 = load double, double* %arrayidx, align 8
  store double %1, double* %Qstep, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %QP.addr, align 4
  %div = sdiv i32 %3, 6
  %cmp = icmp slt i32 %2, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load double, double* %Qstep, align 8
  %mul = fmul double %4, 2.000000e+00
  store double %mul, double* %Qstep, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load double, double* %Qstep, align 8
  ret double %6
}

; Function Attrs: nounwind uwtable
define i32 @Qstep2QP(double %Qstep) #0 {
entry:
  %retval = alloca i32, align 4
  %Qstep.addr = alloca double, align 8
  %q_per = alloca i32, align 4
  %q_rem = alloca i32, align 4
  store double %Qstep, double* %Qstep.addr, align 8
  store i32 0, i32* %q_per, align 4
  store i32 0, i32* %q_rem, align 4
  %0 = load double, double* %Qstep.addr, align 8
  %call = call double @QP2Qstep(i32 0)
  %cmp = fcmp olt double %0, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load double, double* %Qstep.addr, align 8
  %call1 = call double @QP2Qstep(i32 51)
  %cmp2 = fcmp ogt double %1, %call1
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  store i32 51, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.4
  %2 = load double, double* %Qstep.addr, align 8
  %call5 = call double @QP2Qstep(i32 5)
  %cmp6 = fcmp ogt double %2, %call5
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load double, double* %Qstep.addr, align 8
  %div = fdiv double %3, 2.000000e+00
  store double %div, double* %Qstep.addr, align 8
  %4 = load i32, i32* %q_per, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, i32* %q_per, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load double, double* %Qstep.addr, align 8
  %cmp7 = fcmp ole double %5, 6.562500e-01
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %while.end
  store double 6.250000e-01, double* %Qstep.addr, align 8
  store i32 0, i32* %q_rem, align 4
  br label %if.end.26

if.else.9:                                        ; preds = %while.end
  %6 = load double, double* %Qstep.addr, align 8
  %cmp10 = fcmp ole double %6, 7.500000e-01
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.9
  store double 6.875000e-01, double* %Qstep.addr, align 8
  store i32 1, i32* %q_rem, align 4
  br label %if.end.25

if.else.12:                                       ; preds = %if.else.9
  %7 = load double, double* %Qstep.addr, align 8
  %cmp13 = fcmp ole double %7, 8.437500e-01
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else.12
  store double 8.125000e-01, double* %Qstep.addr, align 8
  store i32 2, i32* %q_rem, align 4
  br label %if.end.24

if.else.15:                                       ; preds = %if.else.12
  %8 = load double, double* %Qstep.addr, align 8
  %cmp16 = fcmp ole double %8, 9.375000e-01
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.else.15
  store double 8.750000e-01, double* %Qstep.addr, align 8
  store i32 3, i32* %q_rem, align 4
  br label %if.end.23

if.else.18:                                       ; preds = %if.else.15
  %9 = load double, double* %Qstep.addr, align 8
  %cmp19 = fcmp ole double %9, 1.062500e+00
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.else.18
  store double 1.000000e+00, double* %Qstep.addr, align 8
  store i32 4, i32* %q_rem, align 4
  br label %if.end.22

if.else.21:                                       ; preds = %if.else.18
  store double 1.125000e+00, double* %Qstep.addr, align 8
  store i32 5, i32* %q_rem, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.20
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.17
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.14
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.11
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.8
  %10 = load i32, i32* %q_per, align 4
  %mul = mul nsw i32 %10, 6
  %11 = load i32, i32* %q_rem, align 4
  %add27 = add nsw i32 %mul, %11
  store i32 %add27, i32* %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.3, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iabs(i32 %x) #2 {
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
define double @ComputeFrameMAD() #0 {
entry:
  %TotalMAD = alloca i64, align 8
  %i = alloca i32, align 4
  store i64 0, i64* %TotalMAD, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 120
  %2 = load i32, i32* %FrameSizeInMbs, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.rc_generic*, %struct.rc_generic** @generic_RC, align 8
  %MADofMB = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %4, i32 0, i32 14
  %5 = load i32*, i32** %MADofMB, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %conv = sext i32 %6 to i64
  %7 = load i64, i64* %TotalMAD, align 8
  %add = add nsw i64 %7, %conv
  store i64 %add, i64* %TotalMAD, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i64, i64* %TotalMAD, align 8
  %conv1 = sitofp i64 %9 to double
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 120
  %11 = load i32, i32* %FrameSizeInMbs2, align 4
  %conv3 = uitofp i32 %11 to double
  %mul = fmul double 2.560000e+02, %conv3
  %div = fdiv double %conv1, %mul
  ret double %div
}

; Function Attrs: nounwind uwtable
define void @copy_rc_generic(%struct.rc_generic* %dst, %struct.rc_generic* %src) #0 {
entry:
  %dst.addr = alloca %struct.rc_generic*, align 8
  %src.addr = alloca %struct.rc_generic*, align 8
  %tmpMADofMB = alloca i32*, align 8
  store %struct.rc_generic* %dst, %struct.rc_generic** %dst.addr, align 8
  store %struct.rc_generic* %src, %struct.rc_generic** %src.addr, align 8
  %0 = load %struct.rc_generic*, %struct.rc_generic** %dst.addr, align 8
  %MADofMB = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %0, i32 0, i32 14
  %1 = load i32*, i32** %MADofMB, align 8
  store i32* %1, i32** %tmpMADofMB, align 8
  %2 = load %struct.rc_generic*, %struct.rc_generic** %dst.addr, align 8
  %3 = bitcast %struct.rc_generic* %2 to i8*
  %4 = load %struct.rc_generic*, %struct.rc_generic** %src.addr, align 8
  %5 = bitcast %struct.rc_generic* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %5, i64 144, i32 1, i1 false)
  %6 = load i32*, i32** %tmpMADofMB, align 8
  %7 = load %struct.rc_generic*, %struct.rc_generic** %dst.addr, align 8
  %MADofMB1 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %7, i32 0, i32 14
  store i32* %6, i32** %MADofMB1, align 8
  %8 = load %struct.rc_generic*, %struct.rc_generic** %dst.addr, align 8
  %MADofMB2 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %8, i32 0, i32 14
  %9 = load i32*, i32** %MADofMB2, align 8
  %10 = bitcast i32* %9 to i8*
  %11 = load %struct.rc_generic*, %struct.rc_generic** %src.addr, align 8
  %MADofMB3 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %11, i32 0, i32 14
  %12 = load i32*, i32** %MADofMB3, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 120
  %15 = load i32, i32* %FrameSizeInMbs, align 4
  %conv = zext i32 %15 to i64
  %mul = mul i64 %conv, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %13, i64 %mul, i32 1, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @generic_alloc(%struct.rc_generic** %prc) #0 {
entry:
  %prc.addr = alloca %struct.rc_generic**, align 8
  store %struct.rc_generic** %prc, %struct.rc_generic*** %prc.addr, align 8
  %call = call noalias i8* @malloc(i64 144) #3
  %0 = bitcast i8* %call to %struct.rc_generic*
  %1 = load %struct.rc_generic**, %struct.rc_generic*** %prc.addr, align 8
  store %struct.rc_generic* %0, %struct.rc_generic** %1, align 8
  %2 = load %struct.rc_generic**, %struct.rc_generic*** %prc.addr, align 8
  %3 = load %struct.rc_generic*, %struct.rc_generic** %2, align 8
  %cmp = icmp eq %struct.rc_generic* null, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 120
  %5 = load i32, i32* %FrameSizeInMbs, align 4
  %conv = zext i32 %5 to i64
  %call1 = call noalias i8* @calloc(i64 %conv, i64 4) #3
  %6 = bitcast i8* %call1 to i32*
  %7 = load %struct.rc_generic**, %struct.rc_generic*** %prc.addr, align 8
  %8 = load %struct.rc_generic*, %struct.rc_generic** %7, align 8
  %MADofMB = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %8, i32 0, i32 14
  store i32* %6, i32** %MADofMB, align 8
  %9 = load %struct.rc_generic**, %struct.rc_generic*** %prc.addr, align 8
  %10 = load %struct.rc_generic*, %struct.rc_generic** %9, align 8
  %MADofMB2 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %10, i32 0, i32 14
  %11 = load i32*, i32** %MADofMB2, align 8
  %cmp3 = icmp eq i32* null, %11
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %12 = load %struct.rc_generic**, %struct.rc_generic*** %prc.addr, align 8
  %13 = load %struct.rc_generic*, %struct.rc_generic** %12, align 8
  %FieldFrame = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %13, i32 0, i32 2
  store i32 1, i32* %FieldFrame, align 4
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

declare void @no_mem_exit(i8*) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #4

; Function Attrs: nounwind uwtable
define void @generic_free(%struct.rc_generic** %prc) #0 {
entry:
  %prc.addr = alloca %struct.rc_generic**, align 8
  store %struct.rc_generic** %prc, %struct.rc_generic*** %prc.addr, align 8
  %0 = load %struct.rc_generic**, %struct.rc_generic*** %prc.addr, align 8
  %1 = load %struct.rc_generic*, %struct.rc_generic** %0, align 8
  %MADofMB = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %1, i32 0, i32 14
  %2 = load i32*, i32** %MADofMB, align 8
  %cmp = icmp ne i32* null, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.rc_generic**, %struct.rc_generic*** %prc.addr, align 8
  %4 = load %struct.rc_generic*, %struct.rc_generic** %3, align 8
  %MADofMB1 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %4, i32 0, i32 14
  %5 = load i32*, i32** %MADofMB1, align 8
  %6 = bitcast i32* %5 to i8*
  call void @free(i8* %6) #3
  %7 = load %struct.rc_generic**, %struct.rc_generic*** %prc.addr, align 8
  %8 = load %struct.rc_generic*, %struct.rc_generic** %7, align 8
  %MADofMB2 = getelementptr inbounds %struct.rc_generic, %struct.rc_generic* %8, i32 0, i32 14
  store i32* null, i32** %MADofMB2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.rc_generic**, %struct.rc_generic*** %prc.addr, align 8
  %10 = load %struct.rc_generic*, %struct.rc_generic** %9, align 8
  %cmp3 = icmp ne %struct.rc_generic* null, %10
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %11 = load %struct.rc_generic**, %struct.rc_generic*** %prc.addr, align 8
  %12 = load %struct.rc_generic*, %struct.rc_generic** %11, align 8
  %13 = bitcast %struct.rc_generic* %12 to i8*
  call void @free(i8* %13) #3
  %14 = load %struct.rc_generic**, %struct.rc_generic*** %prc.addr, align 8
  store %struct.rc_generic* null, %struct.rc_generic** %14, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
