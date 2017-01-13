; ModuleID = './MultiSource.Applications.JM/45.lencod.explicit_gop.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
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
%struct.decoded_picture_buffer = type { %struct.frame_store**, %struct.frame_store**, %struct.frame_store**, i32, i32, i32, i32, i32, i32, i32, %struct.frame_store* }
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture* }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16****, i16****, i16*****, i16***, i8*, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@input = external global %struct.InputParameters*, align 8
@gop_structure = common global %struct.GOP_DATA* null, align 8
@img = external global %struct.ImageParameters*, align 8
@.str = private unnamed_addr constant [32 x i8] c"create_hierarchy:curGOPLevelfrm\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"create_hierarchy:curGOPLeveldist\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"init_gop_structure: gop_structure\00", align 1
@errortext = common global [300 x i8] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [86 x i8] c"Slice Type invalid in ExplicitHierarchyFormat param. Please check configuration file.\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"Invalid Frame Order value. Frame position needs to be in [0,%d] range.\00", align 1
@.str.6 = private unnamed_addr constant [72 x i8] c"Frame Order value %d in frame %d already used for enhancement frame %d.\00", align 1
@.str.7 = private unnamed_addr constant [83 x i8] c"Slice Type needs to be followed by Display Order. Please check configuration file.\00", align 1
@.str.8 = private unnamed_addr constant [89 x i8] c"Reference_IDC invalid in ExplicitHierarchyFormat param. Please check configuration file.\00", align 1
@.str.9 = private unnamed_addr constant [75 x i8] c"Reference_IDC needs to be followed by QP. Please check configuration file.\00", align 1
@.str.10 = private unnamed_addr constant [92 x i8] c"Total number of frames in Enhancement GOP need to be fewer or equal to FrameSkip parameter.\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"ExplicitHierarchyFormat is empty. Please check configuration file.\00", align 1
@start_frame_no_in_this_IGOP = external global i32, align 4
@log2_max_frame_num_minus4 = common global i32 0, align 4
@start_tr_in_this_IGOP = external global i32, align 4
@dpb = external global %struct.decoded_picture_buffer, align 8
@.str.12 = private unnamed_addr constant [35 x i8] c"poc_based_ref_management: tmp_drpm\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"poc_based_ref_management: tmp_drpm2\00", align 1
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

; Function Attrs: nounwind uwtable
define void @create_hierarchy() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %centerB = alloca i32, align 4
  %tmp = alloca %struct.GOP_DATA, align 4
  %GOPlevels = alloca i32, align 4
  %Bframes = alloca i32, align 4
  %curGOPLevelfrm = alloca i32*, align 8
  %curGOPLeveldist = alloca i32*, align 8
  %curlevel = alloca i32, align 4
  %i39 = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 40
  %1 = load i32, i32* %successive_Bframe, align 4
  %div = sdiv i32 %1, 2
  store i32 %div, i32* %centerB, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 69
  %3 = load i32, i32* %HierarchicalCoding, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else.31

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 40
  %6 = load i32, i32* %successive_Bframe1, align 4
  %cmp2 = icmp slt i32 %4, %6
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %centerB, align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %10, i64 %idxprom
  %slice_type = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx, i32 0, i32 0
  store i32 1, i32* %slice_type, align 4
  %11 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %11, 2
  %add = add nsw i32 %mul, 1
  %12 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx6 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %13, i64 %idxprom5
  %display_no = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx6, i32 0, i32 1
  store i32 %add, i32* %display_no, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx8 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %15, i64 %idxprom7
  %hierarchy_layer = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx8, i32 0, i32 4
  store i32 1, i32* %hierarchy_layer, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx10 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %17, i64 %idxprom9
  %reference_idc = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx10, i32 0, i32 2
  store i32 2, i32* %reference_idc, align 4
  %18 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %18, i32 0, i32 42
  %19 = load i32, i32* %qpB, align 4
  %20 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchyLevelQPEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %20, i32 0, i32 70
  %21 = load i32, i32* %HierarchyLevelQPEnable, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.4
  br label %cond.end

cond.false:                                       ; preds = %if.then.4
  %22 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpBRSOffset = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %22, i32 0, i32 43
  %23 = load i32, i32* %qpBRSOffset, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %23, %cond.false ]
  %add11 = add nsw i32 %19, %cond
  %call = call i32 @imax(i32 0, i32 %add11)
  %24 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %24 to i64
  %25 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx13 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %25, i64 %idxprom12
  %slice_qp = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx13, i32 0, i32 3
  store i32 %call, i32* %slice_qp, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %26 to i64
  %27 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx15 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %27, i64 %idxprom14
  %slice_type16 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx15, i32 0, i32 0
  store i32 1, i32* %slice_type16, align 4
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %centerB, align 4
  %sub = sub nsw i32 %28, %29
  %mul17 = mul nsw i32 %sub, 2
  %30 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %30 to i64
  %31 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx19 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %31, i64 %idxprom18
  %display_no20 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx19, i32 0, i32 1
  store i32 %mul17, i32* %display_no20, align 4
  %32 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %32 to i64
  %33 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx22 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %33, i64 %idxprom21
  %hierarchy_layer23 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx22, i32 0, i32 4
  store i32 0, i32* %hierarchy_layer23, align 4
  %34 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %34 to i64
  %35 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx25 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %35, i64 %idxprom24
  %reference_idc26 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx25, i32 0, i32 2
  store i32 0, i32* %reference_idc26, align 4
  %36 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB27 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %36, i32 0, i32 42
  %37 = load i32, i32* %qpB27, align 4
  %38 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %38 to i64
  %39 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx29 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %39, i64 %idxprom28
  %slice_qp30 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx29, i32 0, i32 3
  store i32 %37, i32* %slice_qp30, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %40 = load i32, i32* %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %GopLevels = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 173
  store i32 2, i32* %GopLevels, align 4
  br label %if.end.151

if.else.31:                                       ; preds = %entry
  store i32 1, i32* %GOPlevels, align 4
  %42 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe34 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %42, i32 0, i32 40
  %43 = load i32, i32* %successive_Bframe34, align 4
  store i32 %43, i32* %Bframes, align 4
  %44 = load i32, i32* %GOPlevels, align 4
  store i32 %44, i32* %curlevel, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.31
  %45 = load i32, i32* %Bframes, align 4
  %add40 = add nsw i32 %45, 1
  %46 = load i32, i32* %GOPlevels, align 4
  %shr = ashr i32 %add40, %46
  %cmp41 = icmp sgt i32 %shr, 1
  br i1 %cmp41, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %47 = load i32, i32* %GOPlevels, align 4
  %inc42 = add nsw i32 %47, 1
  store i32 %inc42, i32* %GOPlevels, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %48 = load i32, i32* %GOPlevels, align 4
  store i32 %48, i32* %curlevel, align 4
  %49 = load i32, i32* %GOPlevels, align 4
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %GopLevels43 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 173
  store i32 %49, i32* %GopLevels43, align 4
  %51 = load i32, i32* %GOPlevels, align 4
  %conv = sext i32 %51 to i64
  %mul44 = mul i64 %conv, 4
  %call45 = call noalias i8* @malloc(i64 %mul44) #4
  %52 = bitcast i8* %call45 to i32*
  store i32* %52, i32** %curGOPLevelfrm, align 8
  %cmp46 = icmp eq i32* null, %52
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %while.end
  call void @no_mem_exit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0))
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %while.end
  %53 = load i32, i32* %GOPlevels, align 4
  %conv50 = sext i32 %53 to i64
  %mul51 = mul i64 %conv50, 4
  %call52 = call noalias i8* @malloc(i64 %mul51) #4
  %54 = bitcast i8* %call52 to i32*
  store i32* %54, i32** %curGOPLeveldist, align 8
  %cmp53 = icmp eq i32* null, %54
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.49
  call void @no_mem_exit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.end.49
  store i32 0, i32* %i39, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.78, %if.end.56
  %55 = load i32, i32* %i39, align 4
  %56 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe58 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %56, i32 0, i32 40
  %57 = load i32, i32* %successive_Bframe58, align 4
  %cmp59 = icmp slt i32 %55, %57
  br i1 %cmp59, label %for.body.61, label %for.end.80

for.body.61:                                      ; preds = %for.cond.57
  %58 = load i32, i32* %i39, align 4
  %59 = load i32, i32* %i39, align 4
  %idxprom62 = sext i32 %59 to i64
  %60 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx63 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %60, i64 %idxprom62
  %display_no64 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx63, i32 0, i32 1
  store i32 %58, i32* %display_no64, align 4
  %61 = load i32, i32* %i39, align 4
  %idxprom65 = sext i32 %61 to i64
  %62 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx66 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %62, i64 %idxprom65
  %slice_type67 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx66, i32 0, i32 0
  store i32 1, i32* %slice_type67, align 4
  %63 = load i32, i32* %i39, align 4
  %idxprom68 = sext i32 %63 to i64
  %64 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx69 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %64, i64 %idxprom68
  %hierarchy_layer70 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx69, i32 0, i32 4
  store i32 0, i32* %hierarchy_layer70, align 4
  %65 = load i32, i32* %i39, align 4
  %idxprom71 = sext i32 %65 to i64
  %66 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx72 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %66, i64 %idxprom71
  %reference_idc73 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx72, i32 0, i32 2
  store i32 0, i32* %reference_idc73, align 4
  %67 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB74 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %67, i32 0, i32 42
  %68 = load i32, i32* %qpB74, align 4
  %69 = load i32, i32* %i39, align 4
  %idxprom75 = sext i32 %69 to i64
  %70 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx76 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %70, i64 %idxprom75
  %slice_qp77 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx76, i32 0, i32 3
  store i32 %68, i32* %slice_qp77, align 4
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.body.61
  %71 = load i32, i32* %i39, align 4
  %inc79 = add nsw i32 %71, 1
  store i32 %inc79, i32* %i39, align 4
  br label %for.cond.57

for.end.80:                                       ; preds = %for.cond.57
  store i32 1, i32* %j, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.117, %for.end.80
  %72 = load i32, i32* %j, align 4
  %73 = load i32, i32* %GOPlevels, align 4
  %cmp82 = icmp slt i32 %72, %73
  br i1 %cmp82, label %for.body.84, label %for.end.119

for.body.84:                                      ; preds = %for.cond.81
  %74 = load i32, i32* %j, align 4
  %shl = shl i32 1, %74
  %sub85 = sub nsw i32 %shl, 1
  store i32 %sub85, i32* %i39, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.113, %for.body.84
  %75 = load i32, i32* %i39, align 4
  %76 = load i32, i32* %Bframes, align 4
  %add87 = add nsw i32 %76, 1
  %77 = load i32, i32* %j, align 4
  %shl88 = shl i32 1, %77
  %sub89 = sub nsw i32 %add87, %shl88
  %cmp90 = icmp slt i32 %75, %sub89
  br i1 %cmp90, label %for.body.92, label %for.end.116

for.body.92:                                      ; preds = %for.cond.86
  %78 = load i32, i32* %j, align 4
  %79 = load i32, i32* %i39, align 4
  %idxprom93 = sext i32 %79 to i64
  %80 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx94 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %80, i64 %idxprom93
  %hierarchy_layer95 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx94, i32 0, i32 4
  store i32 %78, i32* %hierarchy_layer95, align 4
  %81 = load i32, i32* %i39, align 4
  %idxprom96 = sext i32 %81 to i64
  %82 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx97 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %82, i64 %idxprom96
  %reference_idc98 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx97, i32 0, i32 2
  store i32 2, i32* %reference_idc98, align 4
  %83 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB99 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %83, i32 0, i32 42
  %84 = load i32, i32* %qpB99, align 4
  %85 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchyLevelQPEnable100 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %85, i32 0, i32 70
  %86 = load i32, i32* %HierarchyLevelQPEnable100, align 4
  %tobool101 = icmp ne i32 %86, 0
  br i1 %tobool101, label %cond.true.102, label %cond.false.104

cond.true.102:                                    ; preds = %for.body.92
  %87 = load i32, i32* %j, align 4
  %sub103 = sub nsw i32 0, %87
  br label %cond.end.106

cond.false.104:                                   ; preds = %for.body.92
  %88 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpBRSOffset105 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %88, i32 0, i32 43
  %89 = load i32, i32* %qpBRSOffset105, align 4
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.104, %cond.true.102
  %cond107 = phi i32 [ %sub103, %cond.true.102 ], [ %89, %cond.false.104 ]
  %add108 = add nsw i32 %84, %cond107
  %call109 = call i32 @imax(i32 0, i32 %add108)
  %90 = load i32, i32* %i39, align 4
  %idxprom110 = sext i32 %90 to i64
  %91 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx111 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %91, i64 %idxprom110
  %slice_qp112 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx111, i32 0, i32 3
  store i32 %call109, i32* %slice_qp112, align 4
  br label %for.inc.113

for.inc.113:                                      ; preds = %cond.end.106
  %92 = load i32, i32* %j, align 4
  %shl114 = shl i32 1, %92
  %93 = load i32, i32* %i39, align 4
  %add115 = add nsw i32 %93, %shl114
  store i32 %add115, i32* %i39, align 4
  br label %for.cond.86

for.end.116:                                      ; preds = %for.cond.86
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.end.116
  %94 = load i32, i32* %j, align 4
  %inc118 = add nsw i32 %94, 1
  store i32 %inc118, i32* %j, align 4
  br label %for.cond.81

for.end.119:                                      ; preds = %for.cond.81
  store i32 1, i32* %i39, align 4
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.148, %for.end.119
  %95 = load i32, i32* %i39, align 4
  %96 = load i32, i32* %Bframes, align 4
  %cmp121 = icmp slt i32 %95, %96
  br i1 %cmp121, label %for.body.123, label %for.end.150

for.body.123:                                     ; preds = %for.cond.120
  %97 = load i32, i32* %i39, align 4
  store i32 %97, i32* %j, align 4
  br label %while.cond.124

while.cond.124:                                   ; preds = %while.body.136, %for.body.123
  %98 = load i32, i32* %j, align 4
  %cmp125 = icmp sgt i32 %98, 0
  br i1 %cmp125, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.124
  %99 = load i32, i32* %j, align 4
  %idxprom127 = sext i32 %99 to i64
  %100 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx128 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %100, i64 %idxprom127
  %hierarchy_layer129 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx128, i32 0, i32 4
  %101 = load i32, i32* %hierarchy_layer129, align 4
  %102 = load i32, i32* %j, align 4
  %sub130 = sub nsw i32 %102, 1
  %idxprom131 = sext i32 %sub130 to i64
  %103 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx132 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %103, i64 %idxprom131
  %hierarchy_layer133 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx132, i32 0, i32 4
  %104 = load i32, i32* %hierarchy_layer133, align 4
  %cmp134 = icmp sgt i32 %101, %104
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.124
  %105 = phi i1 [ false, %while.cond.124 ], [ %cmp134, %land.rhs ]
  br i1 %105, label %while.body.136, label %while.end.147

while.body.136:                                   ; preds = %land.end
  %106 = load i32, i32* %j, align 4
  %sub137 = sub nsw i32 %106, 1
  %idxprom138 = sext i32 %sub137 to i64
  %107 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx139 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %107, i64 %idxprom138
  %108 = bitcast %struct.GOP_DATA* %tmp to i8*
  %109 = bitcast %struct.GOP_DATA* %arrayidx139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %108, i8* %109, i64 24, i32 4, i1 false)
  %110 = load i32, i32* %j, align 4
  %sub140 = sub nsw i32 %110, 1
  %idxprom141 = sext i32 %sub140 to i64
  %111 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx142 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %111, i64 %idxprom141
  %112 = load i32, i32* %j, align 4
  %idxprom143 = sext i32 %112 to i64
  %113 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx144 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %113, i64 %idxprom143
  %114 = bitcast %struct.GOP_DATA* %arrayidx142 to i8*
  %115 = bitcast %struct.GOP_DATA* %arrayidx144 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %115, i64 24, i32 4, i1 false)
  %116 = load i32, i32* %j, align 4
  %idxprom145 = sext i32 %116 to i64
  %117 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx146 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %117, i64 %idxprom145
  %118 = bitcast %struct.GOP_DATA* %arrayidx146 to i8*
  %119 = bitcast %struct.GOP_DATA* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %118, i8* %119, i64 24, i32 4, i1 false)
  %120 = load i32, i32* %j, align 4
  %dec = add nsw i32 %120, -1
  store i32 %dec, i32* %j, align 4
  br label %while.cond.124

while.end.147:                                    ; preds = %land.end
  br label %for.inc.148

for.inc.148:                                      ; preds = %while.end.147
  %121 = load i32, i32* %i39, align 4
  %inc149 = add nsw i32 %121, 1
  store i32 %inc149, i32* %i39, align 4
  br label %for.cond.120

for.end.150:                                      ; preds = %for.cond.120
  br label %if.end.151

if.end.151:                                       ; preds = %for.end.150, %for.end
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imax(i32 %a, i32 %b) #1 {
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

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare void @no_mem_exit(i8*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @init_gop_structure() #0 {
entry:
  %max_gopsize = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 69
  %1 = load i32, i32* %HierarchicalCoding, align 4
  %cmp = icmp ne i32 %1, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 40
  %3 = load i32, i32* %successive_Bframe, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 5
  %5 = load i32, i32* %jumpd, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %5, %cond.false ]
  store i32 %cond, i32* %max_gopsize, align 4
  %6 = load i32, i32* %max_gopsize, align 4
  %call = call i32 @imax(i32 10, i32 %6)
  %conv = sext i32 %call to i64
  %call1 = call noalias i8* @calloc(i64 %conv, i64 24) #4
  %7 = bitcast i8* %call1 to %struct.GOP_DATA*
  store %struct.GOP_DATA* %7, %struct.GOP_DATA** @gop_structure, align 8
  %8 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %cmp2 = icmp eq %struct.GOP_DATA* null, %8
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @no_mem_exit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define void @clear_gop_structure() #0 {
entry:
  %0 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %tobool = icmp ne %struct.GOP_DATA* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %2 = bitcast %struct.GOP_DATA* %1 to i8*
  call void @free(i8* %2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @interpret_gop_structure() #0 {
entry:
  %nLength = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %dqp = alloca i32, align 4
  %display_no = alloca i32, align 4
  %slice_read = alloca i32, align 4
  %order_read = alloca i32, align 4
  %stored_read = alloca i32, align 4
  %qp_read = alloca i32, align 4
  %coded_frame = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitHierarchyFormat = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 71
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitHierarchyFormat, i32 0, i32 0
  %call = call i64 @strlen(i8* %arraydecay) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %nLength, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %slice_read, align 4
  store i32 0, i32* %order_read, align 4
  store i32 0, i32* %stored_read, align 4
  store i32 0, i32* %qp_read, align 4
  store i32 0, i32* %coded_frame, align 4
  %1 = load i32, i32* %nLength, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else.196

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.193, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %nLength, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body, label %for.end.195

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %slice_read, align 4
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitHierarchyFormat7 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 71
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitHierarchyFormat7, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv8 = sext i8 %7 to i32
  switch i32 %conv8, label %sw.default [
    i32 80, label %sw.bb
    i32 112, label %sw.bb
    i32 66, label %sw.bb.11
    i32 98, label %sw.bb.11
    i32 73, label %sw.bb.15
    i32 105, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %if.then.6, %if.then.6
  %8 = load i32, i32* %coded_frame, align 4
  %idxprom9 = sext i32 %8 to i64
  %9 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx10 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %9, i64 %idxprom9
  %slice_type = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx10, i32 0, i32 0
  store i32 0, i32* %slice_type, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.then.6, %if.then.6
  %10 = load i32, i32* %coded_frame, align 4
  %idxprom12 = sext i32 %10 to i64
  %11 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx13 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %11, i64 %idxprom12
  %slice_type14 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx13, i32 0, i32 0
  store i32 1, i32* %slice_type14, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.then.6, %if.then.6
  %12 = load i32, i32* %coded_frame, align 4
  %idxprom16 = sext i32 %12 to i64
  %13 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx17 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %13, i64 %idxprom16
  %slice_type18 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx17, i32 0, i32 0
  store i32 2, i32* %slice_type18, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.6
  %call19 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.3, i32 0, i32 0)) #4
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.15, %sw.bb.11, %sw.bb
  store i32 1, i32* %slice_read, align 4
  br label %if.end.192

if.else:                                          ; preds = %for.body
  %14 = load i32, i32* %order_read, align 4
  %cmp20 = icmp eq i32 %14, 0
  br i1 %cmp20, label %if.then.22, label %if.else.61

if.then.22:                                       ; preds = %if.else
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitHierarchyFormat23 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 71
  %arraydecay24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitHierarchyFormat23, i32 0, i32 0
  %16 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay24, i64 %idx.ext
  %17 = load i8, i8* %add.ptr, align 1
  %conv25 = sext i8 %17 to i32
  %idxprom26 = sext i32 %conv25 to i64
  %call27 = call i16** @__ctype_b_loc() #8
  %18 = load i16*, i16** %call27, align 8
  %arrayidx28 = getelementptr inbounds i16, i16* %18, i64 %idxprom26
  %19 = load i16, i16* %arrayidx28, align 2
  %conv29 = zext i16 %19 to i32
  %and = and i32 %conv29, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.30, label %if.else.58

if.then.30:                                       ; preds = %if.then.22
  %20 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitHierarchyFormat31 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %20, i32 0, i32 71
  %arraydecay32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitHierarchyFormat31, i32 0, i32 0
  %21 = load i32, i32* %i, align 4
  %idx.ext33 = sext i32 %21 to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %arraydecay32, i64 %idx.ext33
  %call35 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32* %display_no) #4
  %22 = load i32, i32* %display_no, align 4
  %23 = load i32, i32* %coded_frame, align 4
  %idxprom36 = sext i32 %23 to i64
  %24 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx37 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %24, i64 %idxprom36
  %display_no38 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx37, i32 0, i32 1
  store i32 %22, i32* %display_no38, align 4
  store i32 1, i32* %order_read, align 4
  %25 = load i32, i32* %display_no, align 4
  %cmp39 = icmp slt i32 %25, 0
  br i1 %cmp39, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.30
  %26 = load i32, i32* %display_no, align 4
  %27 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %27, i32 0, i32 5
  %28 = load i32, i32* %jumpd, align 4
  %cmp41 = icmp sge i32 %26, %28
  br i1 %cmp41, label %if.then.43, label %if.end

if.then.43:                                       ; preds = %lor.lhs.false, %if.then.30
  %29 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd44 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %29, i32 0, i32 5
  %30 = load i32, i32* %jumpd44, align 4
  %sub = sub nsw i32 %30, 1
  %call45 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i32 0, i32 0), i32 %sub) #4
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %if.end

if.end:                                           ; preds = %if.then.43, %lor.lhs.false
  store i32 0, i32* %k, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc, %if.end
  %31 = load i32, i32* %k, align 4
  %32 = load i32, i32* %coded_frame, align 4
  %cmp47 = icmp slt i32 %31, %32
  br i1 %cmp47, label %for.body.49, label %for.end

for.body.49:                                      ; preds = %for.cond.46
  %33 = load i32, i32* %k, align 4
  %idxprom50 = sext i32 %33 to i64
  %34 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx51 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %34, i64 %idxprom50
  %display_no52 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx51, i32 0, i32 1
  %35 = load i32, i32* %display_no52, align 4
  %36 = load i32, i32* %display_no, align 4
  %cmp53 = icmp eq i32 %35, %36
  br i1 %cmp53, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %for.body.49
  %37 = load i32, i32* %display_no, align 4
  %38 = load i32, i32* %coded_frame, align 4
  %39 = load i32, i32* %k, align 4
  %call56 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i32 0, i32 0), i32 %37, i32 %38, i32 %39) #4
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %for.body.49
  br label %for.inc

for.inc:                                          ; preds = %if.end.57
  %40 = load i32, i32* %k, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.46

for.end:                                          ; preds = %for.cond.46
  br label %if.end.60

if.else.58:                                       ; preds = %if.then.22
  %call59 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.7, i32 0, i32 0)) #4
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %for.end
  br label %if.end.191

if.else.61:                                       ; preds = %if.else
  %41 = load i32, i32* %order_read, align 4
  %cmp62 = icmp eq i32 %41, 1
  br i1 %cmp62, label %if.then.64, label %if.end.190

if.then.64:                                       ; preds = %if.else.61
  %42 = load i32, i32* %stored_read, align 4
  %cmp65 = icmp eq i32 %42, 0
  br i1 %cmp65, label %land.lhs.true, label %if.else.98

land.lhs.true:                                    ; preds = %if.then.64
  %43 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitHierarchyFormat67 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %43, i32 0, i32 71
  %arraydecay68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitHierarchyFormat67, i32 0, i32 0
  %44 = load i32, i32* %i, align 4
  %idx.ext69 = sext i32 %44 to i64
  %add.ptr70 = getelementptr inbounds i8, i8* %arraydecay68, i64 %idx.ext69
  %45 = load i8, i8* %add.ptr70, align 1
  %conv71 = sext i8 %45 to i32
  %idxprom72 = sext i32 %conv71 to i64
  %call73 = call i16** @__ctype_b_loc() #8
  %46 = load i16*, i16** %call73, align 8
  %arrayidx74 = getelementptr inbounds i16, i16* %46, i64 %idxprom72
  %47 = load i16, i16* %arrayidx74, align 2
  %conv75 = zext i16 %47 to i32
  %and76 = and i32 %conv75, 2048
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.else.98, label %if.then.78

if.then.78:                                       ; preds = %land.lhs.true
  %48 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %48 to i64
  %49 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitHierarchyFormat80 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %49, i32 0, i32 71
  %arrayidx81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitHierarchyFormat80, i32 0, i64 %idxprom79
  %50 = load i8, i8* %arrayidx81, align 1
  %conv82 = sext i8 %50 to i32
  switch i32 %conv82, label %sw.default.95 [
    i32 69, label %sw.bb.83
    i32 101, label %sw.bb.83
    i32 82, label %sw.bb.88
    i32 114, label %sw.bb.88
  ]

sw.bb.83:                                         ; preds = %if.then.78, %if.then.78
  %51 = load i32, i32* %coded_frame, align 4
  %idxprom84 = sext i32 %51 to i64
  %52 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx85 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %52, i64 %idxprom84
  %reference_idc = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx85, i32 0, i32 2
  store i32 0, i32* %reference_idc, align 4
  %53 = load i32, i32* %coded_frame, align 4
  %idxprom86 = sext i32 %53 to i64
  %54 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx87 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %54, i64 %idxprom86
  %hierarchy_layer = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx87, i32 0, i32 4
  store i32 0, i32* %hierarchy_layer, align 4
  br label %sw.epilog.97

sw.bb.88:                                         ; preds = %if.then.78, %if.then.78
  %55 = load i32, i32* %coded_frame, align 4
  %idxprom89 = sext i32 %55 to i64
  %56 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx90 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %56, i64 %idxprom89
  %reference_idc91 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx90, i32 0, i32 2
  store i32 2, i32* %reference_idc91, align 4
  %57 = load i32, i32* %coded_frame, align 4
  %idxprom92 = sext i32 %57 to i64
  %58 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx93 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %58, i64 %idxprom92
  %hierarchy_layer94 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx93, i32 0, i32 4
  store i32 1, i32* %hierarchy_layer94, align 4
  %59 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %GopLevels = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %59, i32 0, i32 173
  store i32 2, i32* %GopLevels, align 4
  br label %sw.epilog.97

sw.default.95:                                    ; preds = %if.then.78
  %call96 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.8, i32 0, i32 0)) #4
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %sw.epilog.97

sw.epilog.97:                                     ; preds = %sw.default.95, %sw.bb.88, %sw.bb.83
  store i32 1, i32* %stored_read, align 4
  br label %if.end.189

if.else.98:                                       ; preds = %land.lhs.true, %if.then.64
  %60 = load i32, i32* %stored_read, align 4
  %cmp99 = icmp eq i32 %60, 1
  br i1 %cmp99, label %land.lhs.true.101, label %if.else.157

land.lhs.true.101:                                ; preds = %if.else.98
  %61 = load i32, i32* %qp_read, align 4
  %cmp102 = icmp eq i32 %61, 0
  br i1 %cmp102, label %if.then.104, label %if.else.157

if.then.104:                                      ; preds = %land.lhs.true.101
  %62 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitHierarchyFormat105 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %62, i32 0, i32 71
  %arraydecay106 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitHierarchyFormat105, i32 0, i32 0
  %63 = load i32, i32* %i, align 4
  %idx.ext107 = sext i32 %63 to i64
  %add.ptr108 = getelementptr inbounds i8, i8* %arraydecay106, i64 %idx.ext107
  %64 = load i8, i8* %add.ptr108, align 1
  %conv109 = sext i8 %64 to i32
  %idxprom110 = sext i32 %conv109 to i64
  %call111 = call i16** @__ctype_b_loc() #8
  %65 = load i16*, i16** %call111, align 8
  %arrayidx112 = getelementptr inbounds i16, i16* %65, i64 %idxprom110
  %66 = load i16, i16* %arrayidx112, align 2
  %conv113 = zext i16 %66 to i32
  %and114 = and i32 %conv113, 2048
  %tobool115 = icmp ne i32 %and114, 0
  br i1 %tobool115, label %if.then.116, label %if.else.154

if.then.116:                                      ; preds = %if.then.104
  %67 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitHierarchyFormat117 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %67, i32 0, i32 71
  %arraydecay118 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitHierarchyFormat117, i32 0, i32 0
  %68 = load i32, i32* %i, align 4
  %idx.ext119 = sext i32 %68 to i64
  %add.ptr120 = getelementptr inbounds i8, i8* %arraydecay118, i64 %idx.ext119
  %call121 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32* %dqp) #4
  %69 = load i32, i32* %coded_frame, align 4
  %idxprom122 = sext i32 %69 to i64
  %70 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx123 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %70, i64 %idxprom122
  %slice_type124 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx123, i32 0, i32 0
  %71 = load i32, i32* %slice_type124, align 4
  %cmp125 = icmp eq i32 %71, 2
  br i1 %cmp125, label %if.then.127, label %if.else.130

if.then.127:                                      ; preds = %if.then.116
  %72 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qp0 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %72, i32 0, i32 3
  %73 = load i32, i32* %qp0, align 4
  %74 = load i32, i32* %coded_frame, align 4
  %idxprom128 = sext i32 %74 to i64
  %75 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx129 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %75, i64 %idxprom128
  %slice_qp = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx129, i32 0, i32 3
  store i32 %73, i32* %slice_qp, align 4
  br label %if.end.145

if.else.130:                                      ; preds = %if.then.116
  %76 = load i32, i32* %coded_frame, align 4
  %idxprom131 = sext i32 %76 to i64
  %77 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx132 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %77, i64 %idxprom131
  %slice_type133 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx132, i32 0, i32 0
  %78 = load i32, i32* %slice_type133, align 4
  %cmp134 = icmp eq i32 %78, 0
  br i1 %cmp134, label %if.then.136, label %if.else.140

if.then.136:                                      ; preds = %if.else.130
  %79 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpN = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %79, i32 0, i32 4
  %80 = load i32, i32* %qpN, align 4
  %81 = load i32, i32* %coded_frame, align 4
  %idxprom137 = sext i32 %81 to i64
  %82 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx138 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %82, i64 %idxprom137
  %slice_qp139 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx138, i32 0, i32 3
  store i32 %80, i32* %slice_qp139, align 4
  br label %if.end.144

if.else.140:                                      ; preds = %if.else.130
  %83 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %qpB = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %83, i32 0, i32 42
  %84 = load i32, i32* %qpB, align 4
  %85 = load i32, i32* %coded_frame, align 4
  %idxprom141 = sext i32 %85 to i64
  %86 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx142 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %86, i64 %idxprom141
  %slice_qp143 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx142, i32 0, i32 3
  store i32 %84, i32* %slice_qp143, align 4
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.140, %if.then.136
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.then.127
  %87 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %87, i32 0, i32 144
  %88 = load i32, i32* %bitdepth_luma_qp_scale, align 4
  %sub146 = sub nsw i32 0, %88
  %89 = load i32, i32* %coded_frame, align 4
  %idxprom147 = sext i32 %89 to i64
  %90 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx148 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %90, i64 %idxprom147
  %slice_qp149 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx148, i32 0, i32 3
  %91 = load i32, i32* %slice_qp149, align 4
  %92 = load i32, i32* %dqp, align 4
  %add = add nsw i32 %91, %92
  %call150 = call i32 @iClip3(i32 %sub146, i32 51, i32 %add)
  %93 = load i32, i32* %coded_frame, align 4
  %idxprom151 = sext i32 %93 to i64
  %94 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx152 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %94, i64 %idxprom151
  %slice_qp153 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx152, i32 0, i32 3
  store i32 %call150, i32* %slice_qp153, align 4
  store i32 1, i32* %qp_read, align 4
  br label %if.end.156

if.else.154:                                      ; preds = %if.then.104
  %call155 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.9, i32 0, i32 0)) #4
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %if.end.156

if.end.156:                                       ; preds = %if.else.154, %if.end.145
  br label %if.end.188

if.else.157:                                      ; preds = %land.lhs.true.101, %if.else.98
  %95 = load i32, i32* %stored_read, align 4
  %cmp158 = icmp eq i32 %95, 1
  br i1 %cmp158, label %land.lhs.true.160, label %if.end.187

land.lhs.true.160:                                ; preds = %if.else.157
  %96 = load i32, i32* %qp_read, align 4
  %cmp161 = icmp eq i32 %96, 1
  br i1 %cmp161, label %land.lhs.true.163, label %if.end.187

land.lhs.true.163:                                ; preds = %land.lhs.true.160
  %97 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitHierarchyFormat164 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %97, i32 0, i32 71
  %arraydecay165 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitHierarchyFormat164, i32 0, i32 0
  %98 = load i32, i32* %i, align 4
  %idx.ext166 = sext i32 %98 to i64
  %add.ptr167 = getelementptr inbounds i8, i8* %arraydecay165, i64 %idx.ext166
  %99 = load i8, i8* %add.ptr167, align 1
  %conv168 = sext i8 %99 to i32
  %idxprom169 = sext i32 %conv168 to i64
  %call170 = call i16** @__ctype_b_loc() #8
  %100 = load i16*, i16** %call170, align 8
  %arrayidx171 = getelementptr inbounds i16, i16* %100, i64 %idxprom169
  %101 = load i16, i16* %arrayidx171, align 2
  %conv172 = zext i16 %101 to i32
  %and173 = and i32 %conv172, 2048
  %tobool174 = icmp ne i32 %and173, 0
  br i1 %tobool174, label %if.end.187, label %land.lhs.true.175

land.lhs.true.175:                                ; preds = %land.lhs.true.163
  %102 = load i32, i32* %i, align 4
  %103 = load i32, i32* %nLength, align 4
  %sub176 = sub nsw i32 %103, 2
  %cmp177 = icmp slt i32 %102, %sub176
  br i1 %cmp177, label %if.then.179, label %if.end.187

if.then.179:                                      ; preds = %land.lhs.true.175
  store i32 0, i32* %stored_read, align 4
  store i32 0, i32* %qp_read, align 4
  store i32 0, i32* %order_read, align 4
  store i32 0, i32* %slice_read, align 4
  %104 = load i32, i32* %i, align 4
  %dec = add nsw i32 %104, -1
  store i32 %dec, i32* %i, align 4
  %105 = load i32, i32* %coded_frame, align 4
  %inc180 = add nsw i32 %105, 1
  store i32 %inc180, i32* %coded_frame, align 4
  %106 = load i32, i32* %coded_frame, align 4
  %107 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd181 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %107, i32 0, i32 5
  %108 = load i32, i32* %jumpd181, align 4
  %cmp182 = icmp sge i32 %106, %108
  br i1 %cmp182, label %if.then.184, label %if.end.186

if.then.184:                                      ; preds = %if.then.179
  %call185 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.10, i32 0, i32 0)) #4
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.184, %if.then.179
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %land.lhs.true.175, %land.lhs.true.163, %land.lhs.true.160, %if.else.157
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187, %if.end.156
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %sw.epilog.97
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.else.61
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %if.end.60
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %sw.epilog
  br label %for.inc.193

for.inc.193:                                      ; preds = %if.end.192
  %109 = load i32, i32* %i, align 4
  %inc194 = add nsw i32 %109, 1
  store i32 %inc194, i32* %i, align 4
  br label %for.cond

for.end.195:                                      ; preds = %for.cond
  br label %if.end.198

if.else.196:                                      ; preds = %entry
  %call197 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.11, i32 0, i32 0)) #4
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %if.end.198

if.end.198:                                       ; preds = %if.else.196, %for.end.195
  %110 = load i32, i32* %coded_frame, align 4
  %add199 = add nsw i32 %110, 1
  %111 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %111, i32 0, i32 40
  store i32 %add199, i32* %successive_Bframe, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

declare void @error(i8*, i32) #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iClip3(i32 %low, i32 %high, i32 %x) #1 {
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
define void @encode_enhancement_layer() #0 {
entry:
  %previous_ref_idc = alloca i32, align 4
  store i32 1, i32* %previous_ref_idc, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 40
  %1 = load i32, i32* %successive_Bframe, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.312

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 0
  %3 = load i32, i32* %number, align 4
  %4 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub = sub nsw i32 %3, %4
  %cmp1 = icmp sgt i32 %sub, 0
  br i1 %cmp1, label %if.then, label %if.end.312

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PReplaceBSlice = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 41
  %6 = load i32, i32* %PReplaceBSlice, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 5
  store i32 0, i32* %type, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 5
  store i32 1, i32* %type3, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumFramesInELSubSeq = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 129
  %10 = load i32, i32* %NumFramesInELSubSeq, align 4
  %cmp4 = icmp eq i32 %10, 0
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.end
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %layer = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 95
  store i32 0, i32* %layer, align 4
  br label %if.end.8

if.else.6:                                        ; preds = %if.end
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %layer7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 95
  store i32 1, i32* %layer7, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.6, %if.then.5
  %13 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %13, i32 0, i32 68
  %14 = load i32, i32* %BRefPictures, align 4
  %cmp9 = icmp ne i32 %14, 1
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.14

land.lhs.true.10:                                 ; preds = %if.end.8
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 69
  %16 = load i32, i32* %HierarchicalCoding, align 4
  %cmp11 = icmp eq i32 %16, 0
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %land.lhs.true.10
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 115
  %18 = load i32, i32* %frame_num, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %frame_num, align 4
  %19 = load i32, i32* @log2_max_frame_num_minus4, align 4
  %add = add i32 %19, 4
  %shl = shl i32 1, %add
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 115
  %21 = load i32, i32* %frame_num13, align 4
  %rem = urem i32 %21, %shl
  store i32 %rem, i32* %frame_num13, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %land.lhs.true.10, %if.end.8
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 122
  store i32 0, i32* %nal_reference_idc, align 4
  %23 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding15 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %23, i32 0, i32 69
  %24 = load i32, i32* %HierarchicalCoding15, align 4
  %tobool16 = icmp ne i32 %24, 0
  br i1 %tobool16, label %if.then.17, label %if.else.179

if.then.17:                                       ; preds = %if.end.14
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 76
  store i32 1, i32* %b_frame_to_code, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.17
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code18 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 76
  %27 = load i32, i32* %b_frame_to_code18, align 4
  %28 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe19 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %28, i32 0, i32 40
  %29 = load i32, i32* %successive_Bframe19, align 4
  %cmp20 = icmp sle i32 %27, %29
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc21 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %30, i32 0, i32 122
  store i32 0, i32* %nal_reference_idc21, align 4
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code22 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 76
  %32 = load i32, i32* %b_frame_to_code22, align 4
  %sub23 = sub nsw i32 %32, 1
  %idxprom = sext i32 %sub23 to i64
  %33 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %33, i64 %idxprom
  %slice_type = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx, i32 0, i32 0
  %34 = load i32, i32* %slice_type, align 4
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type24 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 5
  store i32 %34, i32* %type24, align 4
  %36 = load i32, i32* %previous_ref_idc, align 4
  %cmp25 = icmp eq i32 %36, 1
  br i1 %cmp25, label %if.then.26, label %if.end.33

if.then.26:                                       ; preds = %for.body
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num27 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 115
  %38 = load i32, i32* %frame_num27, align 4
  %inc28 = add i32 %38, 1
  store i32 %inc28, i32* %frame_num27, align 4
  %39 = load i32, i32* @log2_max_frame_num_minus4, align 4
  %add29 = add i32 %39, 4
  %shl30 = shl i32 1, %add29
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 115
  %41 = load i32, i32* %frame_num31, align 4
  %rem32 = urem i32 %41, %shl30
  store i32 %rem32, i32* %frame_num31, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.26, %for.body
  %42 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code34 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %42, i32 0, i32 76
  %43 = load i32, i32* %b_frame_to_code34, align 4
  %sub35 = sub nsw i32 %43, 1
  %idxprom36 = sext i32 %sub35 to i64
  %44 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx37 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %44, i64 %idxprom36
  %reference_idc = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx37, i32 0, i32 2
  %45 = load i32, i32* %reference_idc, align 4
  %cmp38 = icmp eq i32 %45, 2
  br i1 %cmp38, label %if.then.39, label %if.else.41

if.then.39:                                       ; preds = %if.end.33
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc40 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 122
  store i32 1, i32* %nal_reference_idc40, align 4
  store i32 1, i32* %previous_ref_idc, align 4
  br label %if.end.42

if.else.41:                                       ; preds = %if.end.33
  store i32 0, i32* %previous_ref_idc, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.41, %if.then.39
  %47 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %47, i32 0, i32 5
  %48 = load i32, i32* %jumpd, align 4
  %add43 = add nsw i32 %48, 1
  %conv = sitofp i32 %add43 to double
  %49 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe44 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %49, i32 0, i32 40
  %50 = load i32, i32* %successive_Bframe44, align 4
  %conv45 = sitofp i32 %50 to double
  %add46 = fadd double %conv45, 1.000000e+00
  %div = fdiv double %conv, %add46
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %51, i32 0, i32 74
  store double %div, double* %b_interval, align 8
  %52 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding47 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %52, i32 0, i32 69
  %53 = load i32, i32* %HierarchicalCoding47, align 4
  %cmp48 = icmp eq i32 %53, 3
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.42
  %54 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval51 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %54, i32 0, i32 74
  store double 1.000000e+00, double* %b_interval51, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end.42
  %55 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %55, i32 0, i32 30
  %56 = load i32, i32* %intra_period, align 4
  %tobool53 = icmp ne i32 %56, 0
  br i1 %tobool53, label %land.lhs.true.54, label %if.else.75

land.lhs.true.54:                                 ; preds = %if.end.52
  %57 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %idr_enable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %57, i32 0, i32 32
  %58 = load i32, i32* %idr_enable, align 4
  %tobool55 = icmp ne i32 %58, 0
  br i1 %tobool55, label %if.then.56, label %if.else.75

if.then.56:                                       ; preds = %land.lhs.true.54
  %59 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number57 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %59, i32 0, i32 0
  %60 = load i32, i32* %number57, align 4
  %61 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub58 = sub nsw i32 %60, %61
  %62 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period59 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %62, i32 0, i32 30
  %63 = load i32, i32* %intra_period59, align 4
  %rem60 = srem i32 %sub58, %63
  %sub61 = sub nsw i32 %rem60, 1
  %64 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd62 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %64, i32 0, i32 5
  %65 = load i32, i32* %jumpd62, align 4
  %add63 = add nsw i32 %65, 1
  %mul = mul nsw i32 %sub61, %add63
  %66 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval64 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %66, i32 0, i32 74
  %67 = load double, double* %b_interval64, align 8
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code65 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 76
  %69 = load i32, i32* %b_frame_to_code65, align 4
  %sub66 = sub nsw i32 %69, 1
  %idxprom67 = sext i32 %sub66 to i64
  %70 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx68 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %70, i64 %idxprom67
  %display_no = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx68, i32 0, i32 1
  %71 = load i32, i32* %display_no, align 4
  %add69 = add nsw i32 1, %71
  %conv70 = sitofp i32 %add69 to double
  %mul71 = fmul double %67, %conv70
  %conv72 = fptosi double %mul71 to i32
  %add73 = add nsw i32 %mul, %conv72
  %mul74 = mul nsw i32 2, %add73
  %72 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %72, i32 0, i32 111
  store i32 %mul74, i32* %toppoc, align 4
  br label %if.end.95

if.else.75:                                       ; preds = %land.lhs.true.54, %if.end.52
  %73 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number76 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %73, i32 0, i32 0
  %74 = load i32, i32* %number76, align 4
  %75 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub77 = sub nsw i32 %74, %75
  %sub78 = sub nsw i32 %sub77, 1
  %76 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd79 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %76, i32 0, i32 5
  %77 = load i32, i32* %jumpd79, align 4
  %add80 = add nsw i32 %77, 1
  %mul81 = mul nsw i32 %sub78, %add80
  %78 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval82 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %78, i32 0, i32 74
  %79 = load double, double* %b_interval82, align 8
  %80 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code83 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %80, i32 0, i32 76
  %81 = load i32, i32* %b_frame_to_code83, align 4
  %sub84 = sub nsw i32 %81, 1
  %idxprom85 = sext i32 %sub84 to i64
  %82 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx86 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %82, i64 %idxprom85
  %display_no87 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx86, i32 0, i32 1
  %83 = load i32, i32* %display_no87, align 4
  %add88 = add nsw i32 1, %83
  %conv89 = sitofp i32 %add88 to double
  %mul90 = fmul double %79, %conv89
  %conv91 = fptosi double %mul90 to i32
  %add92 = add nsw i32 %mul81, %conv91
  %mul93 = mul nsw i32 2, %add92
  %84 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc94 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %84, i32 0, i32 111
  store i32 %mul93, i32* %toppoc94, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.75, %if.then.56
  %85 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code96 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %85, i32 0, i32 76
  %86 = load i32, i32* %b_frame_to_code96, align 4
  %cmp97 = icmp eq i32 %86, 1
  br i1 %cmp97, label %if.then.99, label %if.else.110

if.then.99:                                       ; preds = %if.end.95
  %87 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc100 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %87, i32 0, i32 111
  %88 = load i32, i32* %toppoc100, align 4
  %89 = load i32, i32* @start_tr_in_this_IGOP, align 4
  %90 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number101 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %90, i32 0, i32 0
  %91 = load i32, i32* %number101, align 4
  %92 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub102 = sub nsw i32 %91, %92
  %93 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd103 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %93, i32 0, i32 5
  %94 = load i32, i32* %jumpd103, align 4
  %add104 = add nsw i32 %94, 1
  %mul105 = mul nsw i32 %sub102, %add104
  %add106 = add nsw i32 %89, %mul105
  %mul107 = mul nsw i32 2, %add106
  %sub108 = sub nsw i32 %88, %mul107
  %95 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %95, i32 0, i32 109
  %arrayidx109 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt, i32 0, i64 0
  store i32 %sub108, i32* %arrayidx109, align 4
  br label %if.end.135

if.else.110:                                      ; preds = %if.end.95
  %96 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc111 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %96, i32 0, i32 111
  %97 = load i32, i32* %toppoc111, align 4
  %98 = load i32, i32* @start_tr_in_this_IGOP, align 4
  %99 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number112 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %99, i32 0, i32 0
  %100 = load i32, i32* %number112, align 4
  %101 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub113 = sub nsw i32 %100, %101
  %sub114 = sub nsw i32 %sub113, 1
  %102 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd115 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %102, i32 0, i32 5
  %103 = load i32, i32* %jumpd115, align 4
  %add116 = add nsw i32 %103, 1
  %mul117 = mul nsw i32 %sub114, %add116
  %add118 = add nsw i32 %98, %mul117
  %104 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval119 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %104, i32 0, i32 74
  %105 = load double, double* %b_interval119, align 8
  %mul120 = fmul double 2.000000e+00, %105
  %106 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code121 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %106, i32 0, i32 76
  %107 = load i32, i32* %b_frame_to_code121, align 4
  %sub122 = sub nsw i32 %107, 2
  %idxprom123 = sext i32 %sub122 to i64
  %108 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx124 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %108, i64 %idxprom123
  %display_no125 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx124, i32 0, i32 1
  %109 = load i32, i32* %display_no125, align 4
  %add126 = add nsw i32 1, %109
  %conv127 = sitofp i32 %add126 to double
  %mul128 = fmul double %mul120, %conv127
  %conv129 = fptosi double %mul128 to i32
  %add130 = add nsw i32 %add118, %conv129
  %mul131 = mul nsw i32 2, %add130
  %sub132 = sub nsw i32 %97, %mul131
  %110 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt133 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %110, i32 0, i32 109
  %arrayidx134 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt133, i32 0, i64 0
  store i32 %sub132, i32* %arrayidx134, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.110, %if.then.99
  %111 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %111, i32 0, i32 121
  %112 = load i32, i32* %PicInterlace, align 4
  %cmp136 = icmp eq i32 %112, 0
  br i1 %cmp136, label %land.lhs.true.138, label %if.else.143

land.lhs.true.138:                                ; preds = %if.end.135
  %113 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %113, i32 0, i32 122
  %114 = load i32, i32* %MbInterlace, align 4
  %cmp139 = icmp eq i32 %114, 0
  br i1 %cmp139, label %if.then.141, label %if.else.143

if.then.141:                                      ; preds = %land.lhs.true.138
  %115 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc142 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %115, i32 0, i32 111
  %116 = load i32, i32* %toppoc142, align 4
  %117 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %117, i32 0, i32 112
  store i32 %116, i32* %bottompoc, align 4
  br label %if.end.147

if.else.143:                                      ; preds = %land.lhs.true.138, %if.end.135
  %118 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc144 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %118, i32 0, i32 111
  %119 = load i32, i32* %toppoc144, align 4
  %add145 = add nsw i32 %119, 1
  %120 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc146 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %120, i32 0, i32 112
  store i32 %add145, i32* %bottompoc146, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.143, %if.then.141
  %121 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc148 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %121, i32 0, i32 111
  %122 = load i32, i32* %toppoc148, align 4
  %123 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc149 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %123, i32 0, i32 112
  %124 = load i32, i32* %bottompoc149, align 4
  %call = call i32 @imin(i32 %122, i32 %124)
  %125 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framepoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %125, i32 0, i32 113
  store i32 %call, i32* %framepoc, align 4
  %126 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt150 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %126, i32 0, i32 109
  %arrayidx151 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt150, i32 0, i64 1
  store i32 0, i32* %arrayidx151, align 4
  %call152 = call i32 @encode_one_frame()
  %127 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ReportFrameStats = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %127, i32 0, i32 154
  %128 = load i32, i32* %ReportFrameStats, align 4
  %tobool153 = icmp ne i32 %128, 0
  br i1 %tobool153, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %if.end.147
  call void @report_frame_statistic()
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.154, %if.end.147
  %129 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code156 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %129, i32 0, i32 76
  %130 = load i32, i32* %b_frame_to_code156, align 4
  %sub157 = sub nsw i32 %130, 1
  %idxprom158 = sext i32 %sub157 to i64
  %131 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx159 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %131, i64 %idxprom158
  %reference_idc160 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx159, i32 0, i32 2
  %132 = load i32, i32* %reference_idc160, align 4
  %cmp161 = icmp eq i32 %132, 2
  br i1 %cmp161, label %land.lhs.true.163, label %if.end.175

land.lhs.true.163:                                ; preds = %if.end.155
  %133 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code164 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %133, i32 0, i32 76
  %134 = load i32, i32* %b_frame_to_code164, align 4
  %135 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe165 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %135, i32 0, i32 40
  %136 = load i32, i32* %successive_Bframe165, align 4
  %cmp166 = icmp eq i32 %134, %136
  br i1 %cmp166, label %if.then.168, label %if.end.175

if.then.168:                                      ; preds = %land.lhs.true.163
  %137 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num169 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %137, i32 0, i32 115
  %138 = load i32, i32* %frame_num169, align 4
  %inc170 = add i32 %138, 1
  store i32 %inc170, i32* %frame_num169, align 4
  %139 = load i32, i32* @log2_max_frame_num_minus4, align 4
  %add171 = add i32 %139, 4
  %shl172 = shl i32 1, %add171
  %140 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num173 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %140, i32 0, i32 115
  %141 = load i32, i32* %frame_num173, align 4
  %rem174 = urem i32 %141, %shl172
  store i32 %rem174, i32* %frame_num173, align 4
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.168, %land.lhs.true.163, %if.end.155
  br label %for.inc

for.inc:                                          ; preds = %if.end.175
  %142 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code176 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %142, i32 0, i32 76
  %143 = load i32, i32* %b_frame_to_code176, align 4
  %inc177 = add nsw i32 %143, 1
  store i32 %inc177, i32* %b_frame_to_code176, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %144 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code178 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %144, i32 0, i32 76
  store i32 0, i32* %b_frame_to_code178, align 4
  br label %if.end.311

if.else.179:                                      ; preds = %if.end.14
  %145 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code180 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %145, i32 0, i32 76
  store i32 1, i32* %b_frame_to_code180, align 4
  br label %for.cond.181

for.cond.181:                                     ; preds = %for.inc.307, %if.else.179
  %146 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code182 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %146, i32 0, i32 76
  %147 = load i32, i32* %b_frame_to_code182, align 4
  %148 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe183 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %148, i32 0, i32 40
  %149 = load i32, i32* %successive_Bframe183, align 4
  %cmp184 = icmp sle i32 %147, %149
  br i1 %cmp184, label %for.body.186, label %for.end.310

for.body.186:                                     ; preds = %for.cond.181
  %150 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc187 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %150, i32 0, i32 122
  store i32 0, i32* %nal_reference_idc187, align 4
  %151 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures188 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %151, i32 0, i32 68
  %152 = load i32, i32* %BRefPictures188, align 4
  %cmp189 = icmp eq i32 %152, 1
  br i1 %cmp189, label %if.then.191, label %if.end.199

if.then.191:                                      ; preds = %for.body.186
  %153 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc192 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %153, i32 0, i32 122
  store i32 1, i32* %nal_reference_idc192, align 4
  %154 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num193 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %154, i32 0, i32 115
  %155 = load i32, i32* %frame_num193, align 4
  %inc194 = add i32 %155, 1
  store i32 %inc194, i32* %frame_num193, align 4
  %156 = load i32, i32* @log2_max_frame_num_minus4, align 4
  %add195 = add i32 %156, 4
  %shl196 = shl i32 1, %add195
  %157 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num197 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %157, i32 0, i32 115
  %158 = load i32, i32* %frame_num197, align 4
  %rem198 = urem i32 %158, %shl196
  store i32 %rem198, i32* %frame_num197, align 4
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.191, %for.body.186
  %159 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd200 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %159, i32 0, i32 5
  %160 = load i32, i32* %jumpd200, align 4
  %add201 = add nsw i32 %160, 1
  %conv202 = sitofp i32 %add201 to double
  %161 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe203 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %161, i32 0, i32 40
  %162 = load i32, i32* %successive_Bframe203, align 4
  %conv204 = sitofp i32 %162 to double
  %add205 = fadd double %conv204, 1.000000e+00
  %div206 = fdiv double %conv202, %add205
  %163 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval207 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %163, i32 0, i32 74
  store double %div206, double* %b_interval207, align 8
  %164 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding208 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %164, i32 0, i32 69
  %165 = load i32, i32* %HierarchicalCoding208, align 4
  %cmp209 = icmp eq i32 %165, 3
  br i1 %cmp209, label %if.then.211, label %if.end.213

if.then.211:                                      ; preds = %if.end.199
  %166 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval212 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %166, i32 0, i32 74
  store double 1.000000e+00, double* %b_interval212, align 8
  br label %if.end.213

if.end.213:                                       ; preds = %if.then.211, %if.end.199
  %167 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period214 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %167, i32 0, i32 30
  %168 = load i32, i32* %intra_period214, align 4
  %tobool215 = icmp ne i32 %168, 0
  br i1 %tobool215, label %land.lhs.true.216, label %if.else.236

land.lhs.true.216:                                ; preds = %if.end.213
  %169 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %idr_enable217 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %169, i32 0, i32 32
  %170 = load i32, i32* %idr_enable217, align 4
  %tobool218 = icmp ne i32 %170, 0
  br i1 %tobool218, label %if.then.219, label %if.else.236

if.then.219:                                      ; preds = %land.lhs.true.216
  %171 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number220 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %171, i32 0, i32 0
  %172 = load i32, i32* %number220, align 4
  %173 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub221 = sub nsw i32 %172, %173
  %174 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period222 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %174, i32 0, i32 30
  %175 = load i32, i32* %intra_period222, align 4
  %rem223 = srem i32 %sub221, %175
  %sub224 = sub nsw i32 %rem223, 1
  %176 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd225 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %176, i32 0, i32 5
  %177 = load i32, i32* %jumpd225, align 4
  %add226 = add nsw i32 %177, 1
  %mul227 = mul nsw i32 %sub224, %add226
  %178 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval228 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %178, i32 0, i32 74
  %179 = load double, double* %b_interval228, align 8
  %180 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code229 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %180, i32 0, i32 76
  %181 = load i32, i32* %b_frame_to_code229, align 4
  %conv230 = sitofp i32 %181 to double
  %mul231 = fmul double %179, %conv230
  %conv232 = fptosi double %mul231 to i32
  %add233 = add nsw i32 %mul227, %conv232
  %mul234 = mul nsw i32 2, %add233
  %182 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc235 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %182, i32 0, i32 111
  store i32 %mul234, i32* %toppoc235, align 4
  br label %if.end.251

if.else.236:                                      ; preds = %land.lhs.true.216, %if.end.213
  %183 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number237 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %183, i32 0, i32 0
  %184 = load i32, i32* %number237, align 4
  %185 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub238 = sub nsw i32 %184, %185
  %sub239 = sub nsw i32 %sub238, 1
  %186 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd240 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %186, i32 0, i32 5
  %187 = load i32, i32* %jumpd240, align 4
  %add241 = add nsw i32 %187, 1
  %mul242 = mul nsw i32 %sub239, %add241
  %188 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval243 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %188, i32 0, i32 74
  %189 = load double, double* %b_interval243, align 8
  %190 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code244 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %190, i32 0, i32 76
  %191 = load i32, i32* %b_frame_to_code244, align 4
  %conv245 = sitofp i32 %191 to double
  %mul246 = fmul double %189, %conv245
  %conv247 = fptosi double %mul246 to i32
  %add248 = add nsw i32 %mul242, %conv247
  %mul249 = mul nsw i32 2, %add248
  %192 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc250 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %192, i32 0, i32 111
  store i32 %mul249, i32* %toppoc250, align 4
  br label %if.end.251

if.end.251:                                       ; preds = %if.else.236, %if.then.219
  %193 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace252 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %193, i32 0, i32 121
  %194 = load i32, i32* %PicInterlace252, align 4
  %cmp253 = icmp eq i32 %194, 0
  br i1 %cmp253, label %land.lhs.true.255, label %if.else.262

land.lhs.true.255:                                ; preds = %if.end.251
  %195 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace256 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %195, i32 0, i32 122
  %196 = load i32, i32* %MbInterlace256, align 4
  %cmp257 = icmp eq i32 %196, 0
  br i1 %cmp257, label %if.then.259, label %if.else.262

if.then.259:                                      ; preds = %land.lhs.true.255
  %197 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc260 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %197, i32 0, i32 111
  %198 = load i32, i32* %toppoc260, align 4
  %199 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc261 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %199, i32 0, i32 112
  store i32 %198, i32* %bottompoc261, align 4
  br label %if.end.266

if.else.262:                                      ; preds = %land.lhs.true.255, %if.end.251
  %200 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc263 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %200, i32 0, i32 111
  %201 = load i32, i32* %toppoc263, align 4
  %add264 = add nsw i32 %201, 1
  %202 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc265 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %202, i32 0, i32 112
  store i32 %add264, i32* %bottompoc265, align 4
  br label %if.end.266

if.end.266:                                       ; preds = %if.else.262, %if.then.259
  %203 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc267 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %203, i32 0, i32 111
  %204 = load i32, i32* %toppoc267, align 4
  %205 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc268 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %205, i32 0, i32 112
  %206 = load i32, i32* %bottompoc268, align 4
  %call269 = call i32 @imin(i32 %204, i32 %206)
  %207 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framepoc270 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %207, i32 0, i32 113
  store i32 %call269, i32* %framepoc270, align 4
  %208 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures271 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %208, i32 0, i32 68
  %209 = load i32, i32* %BRefPictures271, align 4
  %cmp272 = icmp ne i32 %209, 1
  br i1 %cmp272, label %if.then.274, label %if.else.280

if.then.274:                                      ; preds = %if.end.266
  %210 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code275 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %210, i32 0, i32 76
  %211 = load i32, i32* %b_frame_to_code275, align 4
  %sub276 = sub nsw i32 %211, 1
  %mul277 = mul nsw i32 2, %sub276
  %212 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt278 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %212, i32 0, i32 109
  %arrayidx279 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt278, i32 0, i64 0
  store i32 %mul277, i32* %arrayidx279, align 4
  br label %if.end.283

if.else.280:                                      ; preds = %if.end.266
  %213 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt281 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %213, i32 0, i32 109
  %arrayidx282 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt281, i32 0, i64 0
  store i32 -2, i32* %arrayidx282, align 4
  br label %if.end.283

if.end.283:                                       ; preds = %if.else.280, %if.then.274
  %214 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt284 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %214, i32 0, i32 109
  %arrayidx285 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt284, i32 0, i64 1
  store i32 0, i32* %arrayidx285, align 4
  %call286 = call i32 @encode_one_frame()
  %215 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures287 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %215, i32 0, i32 68
  %216 = load i32, i32* %BRefPictures287, align 4
  %cmp288 = icmp eq i32 %216, 1
  br i1 %cmp288, label %land.lhs.true.290, label %if.end.302

land.lhs.true.290:                                ; preds = %if.end.283
  %217 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code291 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %217, i32 0, i32 76
  %218 = load i32, i32* %b_frame_to_code291, align 4
  %219 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe292 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %219, i32 0, i32 40
  %220 = load i32, i32* %successive_Bframe292, align 4
  %cmp293 = icmp eq i32 %218, %220
  br i1 %cmp293, label %if.then.295, label %if.end.302

if.then.295:                                      ; preds = %land.lhs.true.290
  %221 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num296 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %221, i32 0, i32 115
  %222 = load i32, i32* %frame_num296, align 4
  %inc297 = add i32 %222, 1
  store i32 %inc297, i32* %frame_num296, align 4
  %223 = load i32, i32* @log2_max_frame_num_minus4, align 4
  %add298 = add i32 %223, 4
  %shl299 = shl i32 1, %add298
  %224 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num300 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %224, i32 0, i32 115
  %225 = load i32, i32* %frame_num300, align 4
  %rem301 = urem i32 %225, %shl299
  store i32 %rem301, i32* %frame_num300, align 4
  br label %if.end.302

if.end.302:                                       ; preds = %if.then.295, %land.lhs.true.290, %if.end.283
  %226 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ReportFrameStats303 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %226, i32 0, i32 154
  %227 = load i32, i32* %ReportFrameStats303, align 4
  %tobool304 = icmp ne i32 %227, 0
  br i1 %tobool304, label %if.then.305, label %if.end.306

if.then.305:                                      ; preds = %if.end.302
  call void @report_frame_statistic()
  br label %if.end.306

if.end.306:                                       ; preds = %if.then.305, %if.end.302
  br label %for.inc.307

for.inc.307:                                      ; preds = %if.end.306
  %228 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code308 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %228, i32 0, i32 76
  %229 = load i32, i32* %b_frame_to_code308, align 4
  %inc309 = add nsw i32 %229, 1
  store i32 %inc309, i32* %b_frame_to_code308, align 4
  br label %for.cond.181

for.end.310:                                      ; preds = %for.cond.181
  br label %if.end.311

if.end.311:                                       ; preds = %for.end.310, %for.end
  br label %if.end.312

if.end.312:                                       ; preds = %if.end.311, %land.lhs.true, %entry
  %230 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code313 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %230, i32 0, i32 76
  store i32 0, i32* %b_frame_to_code313, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imin(i32 %a, i32 %b) #1 {
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

declare i32 @encode_one_frame() #3

declare void @report_frame_statistic() #3

; Function Attrs: nounwind uwtable
define void @poc_based_ref_management(i32 %current_pic_num) #0 {
entry:
  %current_pic_num.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %pic_num = alloca i32, align 4
  %min_poc = alloca i32, align 4
  %tmp_drpm = alloca %struct.DecRefPicMarking_s*, align 8
  %tmp_drpm2 = alloca %struct.DecRefPicMarking_s*, align 8
  store i32 %current_pic_num, i32* %current_pic_num.addr, align 4
  store i32 0, i32* %pic_num, align 4
  store i32 2147483647, i32* %min_poc, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dec_ref_pic_marking_buffer = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 126
  %1 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer, align 8
  %cmp = icmp ne %struct.DecRefPicMarking_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 5), align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 6), align 4
  %add = add i32 %2, %3
  %cmp1 = icmp eq i32 %add, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 4), align 4
  %cmp4 = icmp ult i32 %4, %5
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %7, i64 %idxprom
  %8 = load %struct.frame_store*, %struct.frame_store** %arrayidx, align 8
  %is_reference = getelementptr inbounds %struct.frame_store, %struct.frame_store* %8, i32 0, i32 1
  %9 = load i32, i32* %is_reference, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %10 to i64
  %11 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx6 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %11, i64 %idxprom5
  %12 = load %struct.frame_store*, %struct.frame_store** %arrayidx6, align 8
  %is_long_term = getelementptr inbounds %struct.frame_store, %struct.frame_store* %12, i32 0, i32 2
  %13 = load i32, i32* %is_long_term, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.end.20, label %land.lhs.true.8

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %14 = load i32, i32* %i, align 4
  %idxprom9 = zext i32 %14 to i64
  %15 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx10 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %15, i64 %idxprom9
  %16 = load %struct.frame_store*, %struct.frame_store** %arrayidx10, align 8
  %poc = getelementptr inbounds %struct.frame_store, %struct.frame_store* %16, i32 0, i32 9
  %17 = load i32, i32* %poc, align 4
  %18 = load i32, i32* %min_poc, align 4
  %cmp11 = icmp slt i32 %17, %18
  br i1 %cmp11, label %if.then.12, label %if.end.20

if.then.12:                                       ; preds = %land.lhs.true.8
  %19 = load i32, i32* %i, align 4
  %idxprom13 = zext i32 %19 to i64
  %20 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx14 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %20, i64 %idxprom13
  %21 = load %struct.frame_store*, %struct.frame_store** %arrayidx14, align 8
  %frame = getelementptr inbounds %struct.frame_store, %struct.frame_store* %21, i32 0, i32 10
  %22 = load %struct.storable_picture*, %struct.storable_picture** %frame, align 8
  %poc15 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %22, i32 0, i32 1
  %23 = load i32, i32* %poc15, align 4
  store i32 %23, i32* %min_poc, align 4
  %24 = load i32, i32* %i, align 4
  %idxprom16 = zext i32 %24 to i64
  %25 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx17 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %25, i64 %idxprom16
  %26 = load %struct.frame_store*, %struct.frame_store** %arrayidx17, align 8
  %frame18 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %26, i32 0, i32 10
  %27 = load %struct.storable_picture*, %struct.storable_picture** %frame18, align 8
  %pic_num19 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %27, i32 0, i32 11
  %28 = load i32, i32* %pic_num19, align 4
  store i32 %28, i32* %pic_num, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.12, %land.lhs.true.8, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %29 = load i32, i32* %i, align 4
  %inc = add i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call = call noalias i8* @calloc(i64 1, i64 32) #4
  %30 = bitcast i8* %call to %struct.DecRefPicMarking_s*
  store %struct.DecRefPicMarking_s* %30, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %cmp21 = icmp eq %struct.DecRefPicMarking_s* null, %30
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.end
  call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %for.end
  %31 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %Next = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %31, i32 0, i32 5
  store %struct.DecRefPicMarking_s* null, %struct.DecRefPicMarking_s** %Next, align 8
  %32 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %memory_management_control_operation = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %32, i32 0, i32 0
  store i32 0, i32* %memory_management_control_operation, align 4
  %call24 = call noalias i8* @calloc(i64 1, i64 32) #4
  %33 = bitcast i8* %call24 to %struct.DecRefPicMarking_s*
  store %struct.DecRefPicMarking_s* %33, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %cmp25 = icmp eq %struct.DecRefPicMarking_s* null, %33
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  call void @no_mem_exit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.23
  %34 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %35 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %Next28 = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %35, i32 0, i32 5
  store %struct.DecRefPicMarking_s* %34, %struct.DecRefPicMarking_s** %Next28, align 8
  %36 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %memory_management_control_operation29 = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %36, i32 0, i32 0
  store i32 1, i32* %memory_management_control_operation29, align 4
  %37 = load i32, i32* %current_pic_num.addr, align 4
  %38 = load i32, i32* %pic_num, align 4
  %sub = sub i32 %37, %38
  %sub30 = sub i32 %sub, 1
  %39 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %difference_of_pic_nums_minus1 = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %39, i32 0, i32 1
  store i32 %sub30, i32* %difference_of_pic_nums_minus1, align 4
  %40 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dec_ref_pic_marking_buffer31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 126
  store %struct.DecRefPicMarking_s* %40, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer31, align 8
  br label %return

return:                                           ; preds = %if.end.27, %if.then.2, %if.then
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
